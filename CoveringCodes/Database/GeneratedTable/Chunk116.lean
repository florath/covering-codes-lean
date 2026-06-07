import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 116. Do not edit manually.

def precomputedTable_chunk_116 : Array AnyBoundEntry := #[
  { key := { q := 12, n := 3, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 41)) },
  { key := { q := 12, n := 3, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 42)) },
  { key := { q := 12, n := 3, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 43)) },
  { key := { q := 12, n := 3, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 44)) },
  { key := { q := 12, n := 3, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 45)) },
  { key := { q := 12, n := 3, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 46)) },
  { key := { q := 12, n := 3, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 47)) },
  { key := { q := 12, n := 3, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 3 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 3 48)) },
  { key := { q := 12, n := 4, r := 0 }
    lowerValue := 20736
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 4 0)) },
  { key := { q := 12, n := 4, r := 1 }
    lowerValue := 461
    upperValue := 864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 1))
    upperTrace := (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 4, r := 2 }
    lowerValue := 27
    upperValue := 72
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 2))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 12) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 4, r := 3 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 4 3))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 4 3)) },
  { key := { q := 12, n := 4, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 4)) },
  { key := { q := 12, n := 4, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 5)) },
  { key := { q := 12, n := 4, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 6)) },
  { key := { q := 12, n := 4, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 7)) },
  { key := { q := 12, n := 4, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 8)) },
  { key := { q := 12, n := 4, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 9)) },
  { key := { q := 12, n := 4, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 10)) },
  { key := { q := 12, n := 4, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 11)) },
  { key := { q := 12, n := 4, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 12)) },
  { key := { q := 12, n := 4, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 13)) },
  { key := { q := 12, n := 4, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 14)) },
  { key := { q := 12, n := 4, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 15)) },
  { key := { q := 12, n := 4, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 16)) },
  { key := { q := 12, n := 4, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 17)) },
  { key := { q := 12, n := 4, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 18)) },
  { key := { q := 12, n := 4, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 19)) },
  { key := { q := 12, n := 4, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 20)) },
  { key := { q := 12, n := 4, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 21)) },
  { key := { q := 12, n := 4, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 22)) },
  { key := { q := 12, n := 4, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 23)) },
  { key := { q := 12, n := 4, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 24)) },
  { key := { q := 12, n := 4, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 25)) },
  { key := { q := 12, n := 4, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 26)) },
  { key := { q := 12, n := 4, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 27)) },
  { key := { q := 12, n := 4, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 28)) },
  { key := { q := 12, n := 4, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 29)) },
  { key := { q := 12, n := 4, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 30)) },
  { key := { q := 12, n := 4, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 31)) },
  { key := { q := 12, n := 4, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 32)) },
  { key := { q := 12, n := 4, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 33)) },
  { key := { q := 12, n := 4, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 34)) },
  { key := { q := 12, n := 4, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 35)) },
  { key := { q := 12, n := 4, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 36)) },
  { key := { q := 12, n := 4, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 37)) },
  { key := { q := 12, n := 4, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 38)) },
  { key := { q := 12, n := 4, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 39)) },
  { key := { q := 12, n := 4, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 40)) },
  { key := { q := 12, n := 4, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 41)) },
  { key := { q := 12, n := 4, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 42)) },
  { key := { q := 12, n := 4, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 43)) },
  { key := { q := 12, n := 4, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 44)) },
  { key := { q := 12, n := 4, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 45)) },
  { key := { q := 12, n := 4, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 46)) },
  { key := { q := 12, n := 4, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 47)) },
  { key := { q := 12, n := 4, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 4 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 4 48)) },
  { key := { q := 12, n := 5, r := 0 }
    lowerValue := 248832
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 5 0)) },
  { key := { q := 12, n := 5, r := 1 }
    lowerValue := 4444
    upperValue := 10368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 1))
    upperTrace := (.lengthenFreeN 2 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 5, r := 2 }
    lowerValue := 197
    upperValue := 864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 2))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1)))) },
  { key := { q := 12, n := 5, r := 3 }
    lowerValue := 18
    upperValue := 72
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 3))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 12) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 5, r := 4 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 5 4))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 5 4)) },
  { key := { q := 12, n := 5, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 5)) },
  { key := { q := 12, n := 5, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 6)) },
  { key := { q := 12, n := 5, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 7)) },
  { key := { q := 12, n := 5, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 8)) },
  { key := { q := 12, n := 5, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 9)) },
  { key := { q := 12, n := 5, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 10)) },
  { key := { q := 12, n := 5, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 11)) },
  { key := { q := 12, n := 5, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 12)) },
  { key := { q := 12, n := 5, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 13)) },
  { key := { q := 12, n := 5, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 14)) },
  { key := { q := 12, n := 5, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 15)) },
  { key := { q := 12, n := 5, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 16)) },
  { key := { q := 12, n := 5, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 17)) },
  { key := { q := 12, n := 5, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 18)) },
  { key := { q := 12, n := 5, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 19)) },
  { key := { q := 12, n := 5, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 20)) },
  { key := { q := 12, n := 5, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 21)) },
  { key := { q := 12, n := 5, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 22)) },
  { key := { q := 12, n := 5, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 23)) },
  { key := { q := 12, n := 5, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 24)) },
  { key := { q := 12, n := 5, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 25)) },
  { key := { q := 12, n := 5, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 26)) },
  { key := { q := 12, n := 5, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 27)) },
  { key := { q := 12, n := 5, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 28)) },
  { key := { q := 12, n := 5, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 29)) },
  { key := { q := 12, n := 5, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 30)) },
  { key := { q := 12, n := 5, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 31)) },
  { key := { q := 12, n := 5, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 32)) },
  { key := { q := 12, n := 5, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 33)) },
  { key := { q := 12, n := 5, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 34)) },
  { key := { q := 12, n := 5, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 35)) },
  { key := { q := 12, n := 5, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 36)) },
  { key := { q := 12, n := 5, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 37)) },
  { key := { q := 12, n := 5, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 38)) },
  { key := { q := 12, n := 5, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 39)) },
  { key := { q := 12, n := 5, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 40)) },
  { key := { q := 12, n := 5, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 41)) },
  { key := { q := 12, n := 5, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 42)) },
  { key := { q := 12, n := 5, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 43)) },
  { key := { q := 12, n := 5, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 44)) },
  { key := { q := 12, n := 5, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 45)) },
  { key := { q := 12, n := 5, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 46)) },
  { key := { q := 12, n := 5, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 47)) },
  { key := { q := 12, n := 5, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 5 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 5 48)) },
  { key := { q := 12, n := 6, r := 0 }
    lowerValue := 2985984
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 6 0)) },
  { key := { q := 12, n := 6, r := 1 }
    lowerValue := 44567
    upperValue := 124416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 1))
    upperTrace := (.lengthenFreeN 3 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 6, r := 2 }
    lowerValue := 1587
    upperValue := 10368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 2))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 6, r := 3 }
    lowerValue := 105
    upperValue := 864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 3))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1)))) },
  { key := { q := 12, n := 6, r := 4 }
    lowerValue := 13
    upperValue := 72
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 4))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 12) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 6, r := 5 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 6 5))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 6 5)) },
  { key := { q := 12, n := 6, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 6)) },
  { key := { q := 12, n := 6, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 7)) },
  { key := { q := 12, n := 6, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 8)) },
  { key := { q := 12, n := 6, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 9)) },
  { key := { q := 12, n := 6, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 10)) },
  { key := { q := 12, n := 6, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 11)) },
  { key := { q := 12, n := 6, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 12)) },
  { key := { q := 12, n := 6, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 13)) },
  { key := { q := 12, n := 6, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 14)) },
  { key := { q := 12, n := 6, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 15)) },
  { key := { q := 12, n := 6, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 16)) },
  { key := { q := 12, n := 6, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 17)) },
  { key := { q := 12, n := 6, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 18)) },
  { key := { q := 12, n := 6, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 19)) },
  { key := { q := 12, n := 6, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 20)) },
  { key := { q := 12, n := 6, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 21)) },
  { key := { q := 12, n := 6, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 22)) },
  { key := { q := 12, n := 6, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 23)) },
  { key := { q := 12, n := 6, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 24)) },
  { key := { q := 12, n := 6, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 25)) },
  { key := { q := 12, n := 6, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 26)) },
  { key := { q := 12, n := 6, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 27)) },
  { key := { q := 12, n := 6, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 28)) },
  { key := { q := 12, n := 6, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 29)) },
  { key := { q := 12, n := 6, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 30)) },
  { key := { q := 12, n := 6, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 31)) },
  { key := { q := 12, n := 6, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 32)) },
  { key := { q := 12, n := 6, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 33)) },
  { key := { q := 12, n := 6, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 34)) },
  { key := { q := 12, n := 6, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 35)) },
  { key := { q := 12, n := 6, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 36)) },
  { key := { q := 12, n := 6, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 37)) },
  { key := { q := 12, n := 6, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 38)) },
  { key := { q := 12, n := 6, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 39)) },
  { key := { q := 12, n := 6, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 40)) },
  { key := { q := 12, n := 6, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 41)) },
  { key := { q := 12, n := 6, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 42)) },
  { key := { q := 12, n := 6, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 43)) },
  { key := { q := 12, n := 6, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 44)) },
  { key := { q := 12, n := 6, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 45)) },
  { key := { q := 12, n := 6, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 46)) },
  { key := { q := 12, n := 6, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 47)) },
  { key := { q := 12, n := 6, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 6 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 6 48)) },
  { key := { q := 12, n := 7, r := 0 }
    lowerValue := 35831808
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 7 0)) },
  { key := { q := 12, n := 7, r := 1 }
    lowerValue := 459383
    upperValue := 1492992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 1))
    upperTrace := (.lengthenFreeN 4 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 7, r := 2 }
    lowerValue := 13682
    upperValue := 124416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 2))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 7, r := 3 }
    lowerValue := 729
    upperValue := 10368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 3))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 7, r := 4 }
    lowerValue := 64
    upperValue := 864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 4))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1)))) },
  { key := { q := 12, n := 7, r := 5 }
    lowerValue := 12
    upperValue := 72
    lowerTrace := (.radiusBack (by decide : 5 ≤ 6) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 7 6)))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 12) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 7, r := 6 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 7 6))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 7 6)) },
  { key := { q := 12, n := 7, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 7)) },
  { key := { q := 12, n := 7, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 8)) },
  { key := { q := 12, n := 7, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 9)) },
  { key := { q := 12, n := 7, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 10)) },
  { key := { q := 12, n := 7, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 11)) },
  { key := { q := 12, n := 7, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 12)) },
  { key := { q := 12, n := 7, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 13)) },
  { key := { q := 12, n := 7, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 14)) },
  { key := { q := 12, n := 7, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 15)) },
  { key := { q := 12, n := 7, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 16)) },
  { key := { q := 12, n := 7, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 17)) },
  { key := { q := 12, n := 7, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 18)) },
  { key := { q := 12, n := 7, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 19)) },
  { key := { q := 12, n := 7, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 20)) },
  { key := { q := 12, n := 7, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 21)) },
  { key := { q := 12, n := 7, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 22)) },
  { key := { q := 12, n := 7, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 23)) },
  { key := { q := 12, n := 7, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 24)) },
  { key := { q := 12, n := 7, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 25)) },
  { key := { q := 12, n := 7, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 26)) },
  { key := { q := 12, n := 7, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 27)) },
  { key := { q := 12, n := 7, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 28)) },
  { key := { q := 12, n := 7, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 29)) },
  { key := { q := 12, n := 7, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 30)) },
  { key := { q := 12, n := 7, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 31)) },
  { key := { q := 12, n := 7, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 32)) },
  { key := { q := 12, n := 7, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 33)) },
  { key := { q := 12, n := 7, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 34)) },
  { key := { q := 12, n := 7, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 35)) },
  { key := { q := 12, n := 7, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 36)) },
  { key := { q := 12, n := 7, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 37)) },
  { key := { q := 12, n := 7, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 38)) },
  { key := { q := 12, n := 7, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 39)) },
  { key := { q := 12, n := 7, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 40)) },
  { key := { q := 12, n := 7, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 41)) },
  { key := { q := 12, n := 7, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 42)) },
  { key := { q := 12, n := 7, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 43)) },
  { key := { q := 12, n := 7, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 44)) },
  { key := { q := 12, n := 7, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 45)) },
  { key := { q := 12, n := 7, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 46)) },
  { key := { q := 12, n := 7, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 47)) },
  { key := { q := 12, n := 7, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 7 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 7 48)) },
  { key := { q := 12, n := 8, r := 0 }
    lowerValue := 429981696
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 8 0)) },
  { key := { q := 12, n := 8, r := 1 }
    lowerValue := 4831256
    upperValue := 17915904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 1))
    upperTrace := (.lengthenFreeN 5 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 8, r := 2 }
    lowerValue := 123665
    upperValue := 1492992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 2))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 8, r := 3 }
    lowerValue := 5512
    upperValue := 124416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 3))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 8, r := 4 }
    lowerValue := 390
    upperValue := 10368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 4))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 8, r := 5 }
    lowerValue := 43
    upperValue := 864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 5))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1)))) },
  { key := { q := 12, n := 8, r := 6 }
    lowerValue := 12
    upperValue := 72
    lowerTrace := (.radiusBack (by decide : 6 ≤ 7) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 8 7)))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 12) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 8, r := 7 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 8 7))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 8 7)) },
  { key := { q := 12, n := 8, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 8)) },
  { key := { q := 12, n := 8, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 9)) },
  { key := { q := 12, n := 8, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 10)) },
  { key := { q := 12, n := 8, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 11)) },
  { key := { q := 12, n := 8, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 12)) },
  { key := { q := 12, n := 8, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 13)) },
  { key := { q := 12, n := 8, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 14)) },
  { key := { q := 12, n := 8, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 15)) },
  { key := { q := 12, n := 8, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 16)) },
  { key := { q := 12, n := 8, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 17)) },
  { key := { q := 12, n := 8, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 18)) },
  { key := { q := 12, n := 8, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 19)) },
  { key := { q := 12, n := 8, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 20)) },
  { key := { q := 12, n := 8, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 21)) },
  { key := { q := 12, n := 8, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 22)) },
  { key := { q := 12, n := 8, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 23)) },
  { key := { q := 12, n := 8, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 24)) },
  { key := { q := 12, n := 8, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 25)) },
  { key := { q := 12, n := 8, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 26)) },
  { key := { q := 12, n := 8, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 27)) },
  { key := { q := 12, n := 8, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 28)) },
  { key := { q := 12, n := 8, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 29)) },
  { key := { q := 12, n := 8, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 30)) },
  { key := { q := 12, n := 8, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 31)) },
  { key := { q := 12, n := 8, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 32)) },
  { key := { q := 12, n := 8, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 33)) },
  { key := { q := 12, n := 8, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 34)) },
  { key := { q := 12, n := 8, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 35)) },
  { key := { q := 12, n := 8, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 36)) },
  { key := { q := 12, n := 8, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 37)) },
  { key := { q := 12, n := 8, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 38)) },
  { key := { q := 12, n := 8, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 39)) },
  { key := { q := 12, n := 8, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 40)) },
  { key := { q := 12, n := 8, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 41)) },
  { key := { q := 12, n := 8, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 42)) },
  { key := { q := 12, n := 8, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 43)) },
  { key := { q := 12, n := 8, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 44)) },
  { key := { q := 12, n := 8, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 8 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 8 45)) }]

end CoveringCodes.Database
