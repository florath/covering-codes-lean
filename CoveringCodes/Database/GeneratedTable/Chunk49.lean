import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 49. Do not edit manually.

def precomputedTable_chunk_49 : Array AnyBoundEntry := #[
  { key := { q := 5, n := 5, r := 0 }
    lowerValue := 3125
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 5 0)) },
  { key := { q := 5, n := 5, r := 1 }
    lowerValue := 149
    upperValue := 325
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 1))
    upperTrace := (.lengthenFreeN 2 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 5, r := 2 }
    lowerValue := 18
    upperValue := 65
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 2))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1)))) },
  { key := { q := 5, n := 5, r := 3 }
    lowerValue := 5
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 3 ≤ 4) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 5 4)))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 5) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 5, r := 4 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 5 4))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 5 4)) },
  { key := { q := 5, n := 5, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 5)) },
  { key := { q := 5, n := 5, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 6)) },
  { key := { q := 5, n := 5, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 7)) },
  { key := { q := 5, n := 5, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 8)) },
  { key := { q := 5, n := 5, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 9)) },
  { key := { q := 5, n := 5, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 10)) },
  { key := { q := 5, n := 5, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 11)) },
  { key := { q := 5, n := 5, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 12)) },
  { key := { q := 5, n := 5, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 13)) },
  { key := { q := 5, n := 5, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 14)) },
  { key := { q := 5, n := 5, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 15)) },
  { key := { q := 5, n := 5, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 16)) },
  { key := { q := 5, n := 5, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 17)) },
  { key := { q := 5, n := 5, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 18)) },
  { key := { q := 5, n := 5, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 19)) },
  { key := { q := 5, n := 5, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 20)) },
  { key := { q := 5, n := 5, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 21)) },
  { key := { q := 5, n := 5, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 22)) },
  { key := { q := 5, n := 5, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 23)) },
  { key := { q := 5, n := 5, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 24)) },
  { key := { q := 5, n := 5, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 25)) },
  { key := { q := 5, n := 5, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 26)) },
  { key := { q := 5, n := 5, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 27)) },
  { key := { q := 5, n := 5, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 28)) },
  { key := { q := 5, n := 5, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 29)) },
  { key := { q := 5, n := 5, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 30)) },
  { key := { q := 5, n := 5, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 31)) },
  { key := { q := 5, n := 5, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 32)) },
  { key := { q := 5, n := 5, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 33)) },
  { key := { q := 5, n := 5, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 34)) },
  { key := { q := 5, n := 5, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 35)) },
  { key := { q := 5, n := 5, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 36)) },
  { key := { q := 5, n := 5, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 37)) },
  { key := { q := 5, n := 5, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 38)) },
  { key := { q := 5, n := 5, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 39)) },
  { key := { q := 5, n := 5, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 40)) },
  { key := { q := 5, n := 5, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 41)) },
  { key := { q := 5, n := 5, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 42)) },
  { key := { q := 5, n := 5, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 43)) },
  { key := { q := 5, n := 5, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 44)) },
  { key := { q := 5, n := 5, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 45)) },
  { key := { q := 5, n := 5, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 46)) },
  { key := { q := 5, n := 5, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 47)) },
  { key := { q := 5, n := 5, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 5 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 5 48)) },
  { key := { q := 5, n := 6, r := 0 }
    lowerValue := 15625
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 6 0)) },
  { key := { q := 5, n := 6, r := 1 }
    lowerValue := 625
    upperValue := 1625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 1))
    upperTrace := (.lengthenFreeN 3 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 6, r := 2 }
    lowerValue := 59
    upperValue := 325
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 2))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))))) },
  { key := { q := 5, n := 6, r := 3 }
    lowerValue := 11
    upperValue := 65
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 3))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1)))) },
  { key := { q := 5, n := 6, r := 4 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 4 ≤ 5) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 6 5)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4)) },
  { key := { q := 5, n := 6, r := 5 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 6 5))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 5)) },
  { key := { q := 5, n := 6, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 6)) },
  { key := { q := 5, n := 6, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 7)) },
  { key := { q := 5, n := 6, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 8)) },
  { key := { q := 5, n := 6, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 9)) },
  { key := { q := 5, n := 6, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 10)) },
  { key := { q := 5, n := 6, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 11)) },
  { key := { q := 5, n := 6, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 12)) },
  { key := { q := 5, n := 6, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 13)) },
  { key := { q := 5, n := 6, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 14)) },
  { key := { q := 5, n := 6, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 15)) },
  { key := { q := 5, n := 6, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 16)) },
  { key := { q := 5, n := 6, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 17)) },
  { key := { q := 5, n := 6, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 18)) },
  { key := { q := 5, n := 6, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 19)) },
  { key := { q := 5, n := 6, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 20)) },
  { key := { q := 5, n := 6, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 21)) },
  { key := { q := 5, n := 6, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 22)) },
  { key := { q := 5, n := 6, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 23)) },
  { key := { q := 5, n := 6, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 24)) },
  { key := { q := 5, n := 6, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 25)) },
  { key := { q := 5, n := 6, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 26)) },
  { key := { q := 5, n := 6, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 27)) },
  { key := { q := 5, n := 6, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 28)) },
  { key := { q := 5, n := 6, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 29)) },
  { key := { q := 5, n := 6, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 30)) },
  { key := { q := 5, n := 6, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 31)) },
  { key := { q := 5, n := 6, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 32)) },
  { key := { q := 5, n := 6, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 33)) },
  { key := { q := 5, n := 6, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 34)) },
  { key := { q := 5, n := 6, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 35)) },
  { key := { q := 5, n := 6, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 36)) },
  { key := { q := 5, n := 6, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 37)) },
  { key := { q := 5, n := 6, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 38)) },
  { key := { q := 5, n := 6, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 39)) },
  { key := { q := 5, n := 6, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 40)) },
  { key := { q := 5, n := 6, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 41)) },
  { key := { q := 5, n := 6, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 42)) },
  { key := { q := 5, n := 6, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 43)) },
  { key := { q := 5, n := 6, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 44)) },
  { key := { q := 5, n := 6, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 45)) },
  { key := { q := 5, n := 6, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 46)) },
  { key := { q := 5, n := 6, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 47)) },
  { key := { q := 5, n := 6, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 6 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 6 48)) },
  { key := { q := 5, n := 7, r := 0 }
    lowerValue := 78125
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 7 0)) },
  { key := { q := 5, n := 7, r := 1 }
    lowerValue := 2694
    upperValue := 8125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 1))
    upperTrace := (.lengthenFreeN 4 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 7, r := 2 }
    lowerValue := 215
    upperValue := 1625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 2))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))))) },
  { key := { q := 5, n := 7, r := 3 }
    lowerValue := 30
    upperValue := 325
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 3))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 2 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))))) },
  { key := { q := 5, n := 7, r := 4 }
    lowerValue := 7
    upperValue := 25
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 4))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 7, r := 5 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 5 ≤ 6) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 7 6)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5)) },
  { key := { q := 5, n := 7, r := 6 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 7 6))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 6)) },
  { key := { q := 5, n := 7, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 7)) },
  { key := { q := 5, n := 7, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 8)) },
  { key := { q := 5, n := 7, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 9)) },
  { key := { q := 5, n := 7, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 10)) },
  { key := { q := 5, n := 7, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 11)) },
  { key := { q := 5, n := 7, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 12)) },
  { key := { q := 5, n := 7, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 13)) },
  { key := { q := 5, n := 7, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 14)) },
  { key := { q := 5, n := 7, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 15)) },
  { key := { q := 5, n := 7, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 16)) },
  { key := { q := 5, n := 7, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 17)) },
  { key := { q := 5, n := 7, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 18)) },
  { key := { q := 5, n := 7, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 19)) },
  { key := { q := 5, n := 7, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 20)) },
  { key := { q := 5, n := 7, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 21)) },
  { key := { q := 5, n := 7, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 22)) },
  { key := { q := 5, n := 7, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 23)) },
  { key := { q := 5, n := 7, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 24)) },
  { key := { q := 5, n := 7, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 25)) },
  { key := { q := 5, n := 7, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 26)) },
  { key := { q := 5, n := 7, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 27)) },
  { key := { q := 5, n := 7, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 28)) },
  { key := { q := 5, n := 7, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 29)) },
  { key := { q := 5, n := 7, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 30)) },
  { key := { q := 5, n := 7, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 31)) },
  { key := { q := 5, n := 7, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 32)) },
  { key := { q := 5, n := 7, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 33)) },
  { key := { q := 5, n := 7, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 34)) },
  { key := { q := 5, n := 7, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 35)) },
  { key := { q := 5, n := 7, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 36)) },
  { key := { q := 5, n := 7, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 37)) },
  { key := { q := 5, n := 7, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 38)) },
  { key := { q := 5, n := 7, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 39)) },
  { key := { q := 5, n := 7, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 40)) },
  { key := { q := 5, n := 7, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 41)) },
  { key := { q := 5, n := 7, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 42)) },
  { key := { q := 5, n := 7, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 43)) },
  { key := { q := 5, n := 7, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 44)) },
  { key := { q := 5, n := 7, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 45)) },
  { key := { q := 5, n := 7, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 46)) },
  { key := { q := 5, n := 7, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 47)) },
  { key := { q := 5, n := 7, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 7 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 7 48)) },
  { key := { q := 5, n := 8, r := 0 }
    lowerValue := 390625
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 8 0)) },
  { key := { q := 5, n := 8, r := 1 }
    lowerValue := 11838
    upperValue := 40625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 1))
    upperTrace := (.lengthenFreeN 5 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 8, r := 2 }
    lowerValue := 813
    upperValue := 8125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 2))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))))) },
  { key := { q := 5, n := 8, r := 3 }
    lowerValue := 97
    upperValue := 1625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 3))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 2 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))))) },
  { key := { q := 5, n := 8, r := 4 }
    lowerValue := 18
    upperValue := 125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 4))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 8, r := 5 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 5))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 8, r := 6 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 6 ≤ 7) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 8 7)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6)) },
  { key := { q := 5, n := 8, r := 7 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 8 7))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 7)) },
  { key := { q := 5, n := 8, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 8)) },
  { key := { q := 5, n := 8, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 9)) },
  { key := { q := 5, n := 8, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 10)) },
  { key := { q := 5, n := 8, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 11)) },
  { key := { q := 5, n := 8, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 12)) },
  { key := { q := 5, n := 8, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 13)) },
  { key := { q := 5, n := 8, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 14)) },
  { key := { q := 5, n := 8, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 15)) },
  { key := { q := 5, n := 8, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 16)) },
  { key := { q := 5, n := 8, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 17)) },
  { key := { q := 5, n := 8, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 18)) },
  { key := { q := 5, n := 8, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 19)) },
  { key := { q := 5, n := 8, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 20)) },
  { key := { q := 5, n := 8, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 21)) },
  { key := { q := 5, n := 8, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 22)) },
  { key := { q := 5, n := 8, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 23)) },
  { key := { q := 5, n := 8, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 24)) },
  { key := { q := 5, n := 8, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 25)) },
  { key := { q := 5, n := 8, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 26)) },
  { key := { q := 5, n := 8, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 27)) },
  { key := { q := 5, n := 8, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 28)) },
  { key := { q := 5, n := 8, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 29)) },
  { key := { q := 5, n := 8, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 30)) },
  { key := { q := 5, n := 8, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 31)) },
  { key := { q := 5, n := 8, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 32)) },
  { key := { q := 5, n := 8, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 33)) },
  { key := { q := 5, n := 8, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 34)) },
  { key := { q := 5, n := 8, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 35)) },
  { key := { q := 5, n := 8, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 36)) },
  { key := { q := 5, n := 8, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 37)) },
  { key := { q := 5, n := 8, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 38)) },
  { key := { q := 5, n := 8, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 39)) },
  { key := { q := 5, n := 8, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 40)) },
  { key := { q := 5, n := 8, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 41)) },
  { key := { q := 5, n := 8, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 42)) },
  { key := { q := 5, n := 8, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 43)) },
  { key := { q := 5, n := 8, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 44)) },
  { key := { q := 5, n := 8, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 45)) },
  { key := { q := 5, n := 8, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 46)) },
  { key := { q := 5, n := 8, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 47)) },
  { key := { q := 5, n := 8, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 8 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 8 48)) },
  { key := { q := 5, n := 9, r := 0 }
    lowerValue := 1953125
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 9 0)) },
  { key := { q := 5, n := 9, r := 1 }
    lowerValue := 52788
    upperValue := 203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 1))
    upperTrace := (.lengthenFreeN 6 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 9, r := 2 }
    lowerValue := 3187
    upperValue := 40625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 2))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))))) },
  { key := { q := 5, n := 9, r := 3 }
    lowerValue := 327
    upperValue := 8125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 3))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 2 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))))) },
  { key := { q := 5, n := 9, r := 4 }
    lowerValue := 52
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 4))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 9, r := 5 }
    lowerValue := 12
    upperValue := 125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 5))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 9, r := 6 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 6 ≤ 7) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 8 7))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 9, r := 7 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 7 ≤ 8) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 9 8)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7)) },
  { key := { q := 5, n := 9, r := 8 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 9 8))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 8)) },
  { key := { q := 5, n := 9, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 9)) },
  { key := { q := 5, n := 9, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 10)) },
  { key := { q := 5, n := 9, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 11)) },
  { key := { q := 5, n := 9, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 12)) },
  { key := { q := 5, n := 9, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 13)) },
  { key := { q := 5, n := 9, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 14)) },
  { key := { q := 5, n := 9, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 15)) },
  { key := { q := 5, n := 9, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 16)) },
  { key := { q := 5, n := 9, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 17)) },
  { key := { q := 5, n := 9, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 18)) },
  { key := { q := 5, n := 9, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 19)) },
  { key := { q := 5, n := 9, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 20)) },
  { key := { q := 5, n := 9, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 21)) },
  { key := { q := 5, n := 9, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 22)) },
  { key := { q := 5, n := 9, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 23)) },
  { key := { q := 5, n := 9, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 24)) },
  { key := { q := 5, n := 9, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 25)) },
  { key := { q := 5, n := 9, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 26)) },
  { key := { q := 5, n := 9, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 27)) },
  { key := { q := 5, n := 9, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 28)) },
  { key := { q := 5, n := 9, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 29)) },
  { key := { q := 5, n := 9, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 30)) },
  { key := { q := 5, n := 9, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 31)) },
  { key := { q := 5, n := 9, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 32)) },
  { key := { q := 5, n := 9, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 33)) },
  { key := { q := 5, n := 9, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 34)) },
  { key := { q := 5, n := 9, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 35)) },
  { key := { q := 5, n := 9, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 36)) },
  { key := { q := 5, n := 9, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 37)) },
  { key := { q := 5, n := 9, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 38)) },
  { key := { q := 5, n := 9, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 39)) },
  { key := { q := 5, n := 9, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 40)) },
  { key := { q := 5, n := 9, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 41)) },
  { key := { q := 5, n := 9, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 42)) },
  { key := { q := 5, n := 9, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 43)) },
  { key := { q := 5, n := 9, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 44)) },
  { key := { q := 5, n := 9, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 45)) },
  { key := { q := 5, n := 9, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 46)) },
  { key := { q := 5, n := 9, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 47)) },
  { key := { q := 5, n := 9, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 9 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 9 48)) },
  { key := { q := 5, n := 10, r := 0 }
    lowerValue := 9765625
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 10 0)) },
  { key := { q := 5, n := 10, r := 1 }
    lowerValue := 238186
    upperValue := 1015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 1))
    upperTrace := (.lengthenFreeN 7 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 10, r := 2 }
    lowerValue := 12833
    upperValue := 203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 2))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))))) },
  { key := { q := 5, n := 10, r := 3 }
    lowerValue := 1157
    upperValue := 40625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 3))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 2 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))))) },
  { key := { q := 5, n := 10, r := 4 }
    lowerValue := 158
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 10 4))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) }]

end CoveringCodes.Database
