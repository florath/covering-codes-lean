import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 164. Do not edit manually.

def precomputedTable_chunk_164 : Array AnyBoundEntry := #[
  { key := { q := 17, n := 3, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 36)) },
  { key := { q := 17, n := 3, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 37)) },
  { key := { q := 17, n := 3, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 38)) },
  { key := { q := 17, n := 3, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 39)) },
  { key := { q := 17, n := 3, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 40)) },
  { key := { q := 17, n := 3, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 41)) },
  { key := { q := 17, n := 3, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 42)) },
  { key := { q := 17, n := 3, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 43)) },
  { key := { q := 17, n := 3, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 44)) },
  { key := { q := 17, n := 3, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 45)) },
  { key := { q := 17, n := 3, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 46)) },
  { key := { q := 17, n := 3, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 47)) },
  { key := { q := 17, n := 3, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 3 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 3 48)) },
  { key := { q := 17, n := 4, r := 0 }
    lowerValue := 83521
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 4 0)) },
  { key := { q := 17, n := 4, r := 1 }
    lowerValue := 1285
    upperValue := 2465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 1))
    upperTrace := (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 4, r := 2 }
    lowerValue := 53
    upperValue := 145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 2))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 17) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 4, r := 3 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 4 3))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 4 3)) },
  { key := { q := 17, n := 4, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 4)) },
  { key := { q := 17, n := 4, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 5)) },
  { key := { q := 17, n := 4, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 6)) },
  { key := { q := 17, n := 4, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 7)) },
  { key := { q := 17, n := 4, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 8)) },
  { key := { q := 17, n := 4, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 9)) },
  { key := { q := 17, n := 4, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 10)) },
  { key := { q := 17, n := 4, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 11)) },
  { key := { q := 17, n := 4, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 12)) },
  { key := { q := 17, n := 4, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 13)) },
  { key := { q := 17, n := 4, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 14)) },
  { key := { q := 17, n := 4, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 15)) },
  { key := { q := 17, n := 4, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 16)) },
  { key := { q := 17, n := 4, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 17)) },
  { key := { q := 17, n := 4, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 18)) },
  { key := { q := 17, n := 4, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 19)) },
  { key := { q := 17, n := 4, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 20)) },
  { key := { q := 17, n := 4, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 21)) },
  { key := { q := 17, n := 4, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 22)) },
  { key := { q := 17, n := 4, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 23)) },
  { key := { q := 17, n := 4, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 24)) },
  { key := { q := 17, n := 4, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 25)) },
  { key := { q := 17, n := 4, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 26)) },
  { key := { q := 17, n := 4, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 27)) },
  { key := { q := 17, n := 4, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 28)) },
  { key := { q := 17, n := 4, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 29)) },
  { key := { q := 17, n := 4, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 30)) },
  { key := { q := 17, n := 4, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 31)) },
  { key := { q := 17, n := 4, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 32)) },
  { key := { q := 17, n := 4, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 33)) },
  { key := { q := 17, n := 4, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 34)) },
  { key := { q := 17, n := 4, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 35)) },
  { key := { q := 17, n := 4, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 36)) },
  { key := { q := 17, n := 4, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 37)) },
  { key := { q := 17, n := 4, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 38)) },
  { key := { q := 17, n := 4, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 39)) },
  { key := { q := 17, n := 4, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 40)) },
  { key := { q := 17, n := 4, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 41)) },
  { key := { q := 17, n := 4, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 42)) },
  { key := { q := 17, n := 4, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 43)) },
  { key := { q := 17, n := 4, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 44)) },
  { key := { q := 17, n := 4, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 45)) },
  { key := { q := 17, n := 4, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 46)) },
  { key := { q := 17, n := 4, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 47)) },
  { key := { q := 17, n := 4, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 4 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 4 48)) },
  { key := { q := 17, n := 5, r := 0 }
    lowerValue := 1419857
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 5 0)) },
  { key := { q := 17, n := 5, r := 1 }
    lowerValue := 17530
    upperValue := 41905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 1))
    upperTrace := (.lengthenFreeN 2 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 5, r := 2 }
    lowerValue := 538
    upperValue := 2465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 2))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1)))) },
  { key := { q := 17, n := 5, r := 3 }
    lowerValue := 33
    upperValue := 145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 3))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 17) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 5, r := 4 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 5 4))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 5 4)) },
  { key := { q := 17, n := 5, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 5)) },
  { key := { q := 17, n := 5, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 6)) },
  { key := { q := 17, n := 5, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 7)) },
  { key := { q := 17, n := 5, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 8)) },
  { key := { q := 17, n := 5, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 9)) },
  { key := { q := 17, n := 5, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 10)) },
  { key := { q := 17, n := 5, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 11)) },
  { key := { q := 17, n := 5, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 12)) },
  { key := { q := 17, n := 5, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 13)) },
  { key := { q := 17, n := 5, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 14)) },
  { key := { q := 17, n := 5, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 15)) },
  { key := { q := 17, n := 5, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 16)) },
  { key := { q := 17, n := 5, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 17)) },
  { key := { q := 17, n := 5, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 18)) },
  { key := { q := 17, n := 5, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 19)) },
  { key := { q := 17, n := 5, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 20)) },
  { key := { q := 17, n := 5, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 21)) },
  { key := { q := 17, n := 5, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 22)) },
  { key := { q := 17, n := 5, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 23)) },
  { key := { q := 17, n := 5, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 24)) },
  { key := { q := 17, n := 5, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 25)) },
  { key := { q := 17, n := 5, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 26)) },
  { key := { q := 17, n := 5, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 27)) },
  { key := { q := 17, n := 5, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 28)) },
  { key := { q := 17, n := 5, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 29)) },
  { key := { q := 17, n := 5, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 30)) },
  { key := { q := 17, n := 5, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 31)) },
  { key := { q := 17, n := 5, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 32)) },
  { key := { q := 17, n := 5, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 33)) },
  { key := { q := 17, n := 5, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 34)) },
  { key := { q := 17, n := 5, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 35)) },
  { key := { q := 17, n := 5, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 36)) },
  { key := { q := 17, n := 5, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 37)) },
  { key := { q := 17, n := 5, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 38)) },
  { key := { q := 17, n := 5, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 39)) },
  { key := { q := 17, n := 5, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 40)) },
  { key := { q := 17, n := 5, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 41)) },
  { key := { q := 17, n := 5, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 42)) },
  { key := { q := 17, n := 5, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 43)) },
  { key := { q := 17, n := 5, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 44)) },
  { key := { q := 17, n := 5, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 45)) },
  { key := { q := 17, n := 5, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 46)) },
  { key := { q := 17, n := 5, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 47)) },
  { key := { q := 17, n := 5, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 5 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 5 48)) },
  { key := { q := 17, n := 6, r := 0 }
    lowerValue := 24137569
    upperValue := 24137569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 6 0)) },
  { key := { q := 17, n := 6, r := 1 }
    lowerValue := 248841
    upperValue := 712385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 1))
    upperTrace := (.lengthenFreeN 3 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 6, r := 2 }
    lowerValue := 6131
    upperValue := 41905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 2))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 6, r := 3 }
    lowerValue := 282
    upperValue := 2465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 3))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1)))) },
  { key := { q := 17, n := 6, r := 4 }
    lowerValue := 23
    upperValue := 145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 4))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 17) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 6, r := 5 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 6 5))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 6 5)) },
  { key := { q := 17, n := 6, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 6)) },
  { key := { q := 17, n := 6, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 7)) },
  { key := { q := 17, n := 6, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 8)) },
  { key := { q := 17, n := 6, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 9)) },
  { key := { q := 17, n := 6, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 10)) },
  { key := { q := 17, n := 6, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 11)) },
  { key := { q := 17, n := 6, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 12)) },
  { key := { q := 17, n := 6, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 13)) },
  { key := { q := 17, n := 6, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 14)) },
  { key := { q := 17, n := 6, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 15)) },
  { key := { q := 17, n := 6, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 16)) },
  { key := { q := 17, n := 6, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 17)) },
  { key := { q := 17, n := 6, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 18)) },
  { key := { q := 17, n := 6, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 19)) },
  { key := { q := 17, n := 6, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 20)) },
  { key := { q := 17, n := 6, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 21)) },
  { key := { q := 17, n := 6, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 22)) },
  { key := { q := 17, n := 6, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 23)) },
  { key := { q := 17, n := 6, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 24)) },
  { key := { q := 17, n := 6, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 25)) },
  { key := { q := 17, n := 6, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 26)) },
  { key := { q := 17, n := 6, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 27)) },
  { key := { q := 17, n := 6, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 28)) },
  { key := { q := 17, n := 6, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 29)) },
  { key := { q := 17, n := 6, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 30)) },
  { key := { q := 17, n := 6, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 31)) },
  { key := { q := 17, n := 6, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 32)) },
  { key := { q := 17, n := 6, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 33)) },
  { key := { q := 17, n := 6, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 34)) },
  { key := { q := 17, n := 6, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 35)) },
  { key := { q := 17, n := 6, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 36)) },
  { key := { q := 17, n := 6, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 37)) },
  { key := { q := 17, n := 6, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 38)) },
  { key := { q := 17, n := 6, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 39)) },
  { key := { q := 17, n := 6, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 40)) },
  { key := { q := 17, n := 6, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 41)) },
  { key := { q := 17, n := 6, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 42)) },
  { key := { q := 17, n := 6, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 43)) },
  { key := { q := 17, n := 6, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 44)) },
  { key := { q := 17, n := 6, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 45)) },
  { key := { q := 17, n := 6, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 46)) },
  { key := { q := 17, n := 6, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 47)) },
  { key := { q := 17, n := 6, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 6 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 6 48)) },
  { key := { q := 17, n := 7, r := 0 }
    lowerValue := 410338673
    upperValue := 410338673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 7 0)) },
  { key := { q := 17, n := 7, r := 1 }
    lowerValue := 3631316
    upperValue := 12110545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 1))
    upperTrace := (.lengthenFreeN 4 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 7, r := 2 }
    lowerValue := 74757
    upperValue := 712385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 2))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 7, r := 3 }
    lowerValue := 2757
    upperValue := 41905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 3))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 7, r := 4 }
    lowerValue := 168
    upperValue := 2465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 4))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1)))) },
  { key := { q := 17, n := 7, r := 5 }
    lowerValue := 17
    upperValue := 145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 5))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 17) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 7, r := 6 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 7 6))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 7 6)) },
  { key := { q := 17, n := 7, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 7)) },
  { key := { q := 17, n := 7, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 8)) },
  { key := { q := 17, n := 7, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 9)) },
  { key := { q := 17, n := 7, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 10)) },
  { key := { q := 17, n := 7, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 11)) },
  { key := { q := 17, n := 7, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 12)) },
  { key := { q := 17, n := 7, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 13)) },
  { key := { q := 17, n := 7, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 14)) },
  { key := { q := 17, n := 7, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 15)) },
  { key := { q := 17, n := 7, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 16)) },
  { key := { q := 17, n := 7, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 17)) },
  { key := { q := 17, n := 7, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 18)) },
  { key := { q := 17, n := 7, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 19)) },
  { key := { q := 17, n := 7, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 20)) },
  { key := { q := 17, n := 7, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 21)) },
  { key := { q := 17, n := 7, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 22)) },
  { key := { q := 17, n := 7, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 23)) },
  { key := { q := 17, n := 7, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 24)) },
  { key := { q := 17, n := 7, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 25)) },
  { key := { q := 17, n := 7, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 26)) },
  { key := { q := 17, n := 7, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 27)) },
  { key := { q := 17, n := 7, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 28)) },
  { key := { q := 17, n := 7, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 29)) },
  { key := { q := 17, n := 7, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 30)) },
  { key := { q := 17, n := 7, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 31)) },
  { key := { q := 17, n := 7, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 32)) },
  { key := { q := 17, n := 7, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 33)) },
  { key := { q := 17, n := 7, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 34)) },
  { key := { q := 17, n := 7, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 35)) },
  { key := { q := 17, n := 7, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 36)) },
  { key := { q := 17, n := 7, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 37)) },
  { key := { q := 17, n := 7, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 38)) },
  { key := { q := 17, n := 7, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 39)) },
  { key := { q := 17, n := 7, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 40)) },
  { key := { q := 17, n := 7, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 41)) },
  { key := { q := 17, n := 7, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 42)) },
  { key := { q := 17, n := 7, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 43)) },
  { key := { q := 17, n := 7, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 44)) },
  { key := { q := 17, n := 7, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 45)) },
  { key := { q := 17, n := 7, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 46)) },
  { key := { q := 17, n := 7, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 47)) },
  { key := { q := 17, n := 7, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 7 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 7 48)) },
  { key := { q := 17, n := 8, r := 0 }
    lowerValue := 6975757441
    upperValue := 6975757441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 8 0)) },
  { key := { q := 17, n := 8, r := 1 }
    lowerValue := 54075640
    upperValue := 205879265
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 1))
    upperTrace := (.lengthenFreeN 5 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 8, r := 2 }
    lowerValue := 955977
    upperValue := 12110545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 2))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 8, r := 3 }
    lowerValue := 29475
    upperValue := 712385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 3))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 8, r := 4 }
    lowerValue := 1446
    upperValue := 41905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 4))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 8, r := 5 }
    lowerValue := 110
    upperValue := 2465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 5))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1)))) },
  { key := { q := 17, n := 8, r := 6 }
    lowerValue := 17
    upperValue := 145
    lowerTrace := (.radiusBack (by decide : 6 ≤ 7) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 8 7)))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 17) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 8, r := 7 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 8 7))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 8 7)) },
  { key := { q := 17, n := 8, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 8)) },
  { key := { q := 17, n := 8, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 9)) },
  { key := { q := 17, n := 8, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 10)) },
  { key := { q := 17, n := 8, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 11)) },
  { key := { q := 17, n := 8, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 12)) },
  { key := { q := 17, n := 8, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 13)) },
  { key := { q := 17, n := 8, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 14)) },
  { key := { q := 17, n := 8, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 15)) },
  { key := { q := 17, n := 8, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 16)) },
  { key := { q := 17, n := 8, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 17)) },
  { key := { q := 17, n := 8, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 18)) },
  { key := { q := 17, n := 8, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 19)) },
  { key := { q := 17, n := 8, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 20)) },
  { key := { q := 17, n := 8, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 21)) },
  { key := { q := 17, n := 8, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 22)) },
  { key := { q := 17, n := 8, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 23)) },
  { key := { q := 17, n := 8, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 24)) },
  { key := { q := 17, n := 8, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 25)) },
  { key := { q := 17, n := 8, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 26)) },
  { key := { q := 17, n := 8, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 27)) },
  { key := { q := 17, n := 8, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 28)) },
  { key := { q := 17, n := 8, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 29)) },
  { key := { q := 17, n := 8, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 30)) },
  { key := { q := 17, n := 8, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 31)) },
  { key := { q := 17, n := 8, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 32)) },
  { key := { q := 17, n := 8, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 33)) },
  { key := { q := 17, n := 8, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 34)) },
  { key := { q := 17, n := 8, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 35)) },
  { key := { q := 17, n := 8, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 36)) },
  { key := { q := 17, n := 8, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 37)) },
  { key := { q := 17, n := 8, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 38)) },
  { key := { q := 17, n := 8, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 39)) },
  { key := { q := 17, n := 8, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 8 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 8 40)) }]

end CoveringCodes.Database
