import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 30. Do not edit manually.

def precomputedTable_chunk_30 : Array AnyBoundEntry := #[
  { key := { q := 3, n := 6, r := 3 }
    lowerValue := 4
    upperValue := 6
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 3))
    upperTrace := (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 3)) },
  { key := { q := 3, n := 6, r := 4 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 4 ≤ 5) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 6 5)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 6 4)) },
  { key := { q := 3, n := 6, r := 5 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 6 5))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 6 5)) },
  { key := { q := 3, n := 6, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 6)) },
  { key := { q := 3, n := 6, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 7)) },
  { key := { q := 3, n := 6, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 8)) },
  { key := { q := 3, n := 6, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 9)) },
  { key := { q := 3, n := 6, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 10)) },
  { key := { q := 3, n := 6, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 11)) },
  { key := { q := 3, n := 6, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 12)) },
  { key := { q := 3, n := 6, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 13)) },
  { key := { q := 3, n := 6, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 14)) },
  { key := { q := 3, n := 6, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 15)) },
  { key := { q := 3, n := 6, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 16)) },
  { key := { q := 3, n := 6, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 17)) },
  { key := { q := 3, n := 6, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 18)) },
  { key := { q := 3, n := 6, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 19)) },
  { key := { q := 3, n := 6, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 20)) },
  { key := { q := 3, n := 6, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 21)) },
  { key := { q := 3, n := 6, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 22)) },
  { key := { q := 3, n := 6, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 23)) },
  { key := { q := 3, n := 6, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 24)) },
  { key := { q := 3, n := 6, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 25)) },
  { key := { q := 3, n := 6, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 26)) },
  { key := { q := 3, n := 6, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 27)) },
  { key := { q := 3, n := 6, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 28)) },
  { key := { q := 3, n := 6, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 29)) },
  { key := { q := 3, n := 6, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 30)) },
  { key := { q := 3, n := 6, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 31)) },
  { key := { q := 3, n := 6, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 32)) },
  { key := { q := 3, n := 6, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 33)) },
  { key := { q := 3, n := 6, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 34)) },
  { key := { q := 3, n := 6, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 35)) },
  { key := { q := 3, n := 6, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 36)) },
  { key := { q := 3, n := 6, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 37)) },
  { key := { q := 3, n := 6, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 38)) },
  { key := { q := 3, n := 6, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 39)) },
  { key := { q := 3, n := 6, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 40)) },
  { key := { q := 3, n := 6, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 41)) },
  { key := { q := 3, n := 6, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 42)) },
  { key := { q := 3, n := 6, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 43)) },
  { key := { q := 3, n := 6, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 44)) },
  { key := { q := 3, n := 6, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 45)) },
  { key := { q := 3, n := 6, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 46)) },
  { key := { q := 3, n := 6, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 47)) },
  { key := { q := 3, n := 6, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 6 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 6 48)) },
  { key := { q := 3, n := 7, r := 0 }
    lowerValue := 2187
    upperValue := 2187
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 7 0)) },
  { key := { q := 3, n := 7, r := 1 }
    lowerValue := 146
    upperValue := 186
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 1))
    upperTrace := (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 7 1)) },
  { key := { q := 3, n := 7, r := 2 }
    lowerValue := 23
    upperValue := 51
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 2))
    upperTrace := (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))) },
  { key := { q := 3, n := 7, r := 3 }
    lowerValue := 6
    upperValue := 17
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 3))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 3) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))) },
  { key := { q := 3, n := 7, r := 4 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 4))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 7 4)) },
  { key := { q := 3, n := 7, r := 5 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 5 ≤ 6) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 7 6)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 7 5)) },
  { key := { q := 3, n := 7, r := 6 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 7 6))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 7 6)) },
  { key := { q := 3, n := 7, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 7)) },
  { key := { q := 3, n := 7, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 8)) },
  { key := { q := 3, n := 7, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 9)) },
  { key := { q := 3, n := 7, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 10)) },
  { key := { q := 3, n := 7, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 11)) },
  { key := { q := 3, n := 7, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 12)) },
  { key := { q := 3, n := 7, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 13)) },
  { key := { q := 3, n := 7, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 14)) },
  { key := { q := 3, n := 7, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 15)) },
  { key := { q := 3, n := 7, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 16)) },
  { key := { q := 3, n := 7, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 17)) },
  { key := { q := 3, n := 7, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 18)) },
  { key := { q := 3, n := 7, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 19)) },
  { key := { q := 3, n := 7, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 20)) },
  { key := { q := 3, n := 7, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 21)) },
  { key := { q := 3, n := 7, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 22)) },
  { key := { q := 3, n := 7, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 23)) },
  { key := { q := 3, n := 7, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 24)) },
  { key := { q := 3, n := 7, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 25)) },
  { key := { q := 3, n := 7, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 26)) },
  { key := { q := 3, n := 7, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 27)) },
  { key := { q := 3, n := 7, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 28)) },
  { key := { q := 3, n := 7, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 29)) },
  { key := { q := 3, n := 7, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 30)) },
  { key := { q := 3, n := 7, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 31)) },
  { key := { q := 3, n := 7, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 32)) },
  { key := { q := 3, n := 7, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 33)) },
  { key := { q := 3, n := 7, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 34)) },
  { key := { q := 3, n := 7, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 35)) },
  { key := { q := 3, n := 7, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 36)) },
  { key := { q := 3, n := 7, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 37)) },
  { key := { q := 3, n := 7, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 38)) },
  { key := { q := 3, n := 7, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 39)) },
  { key := { q := 3, n := 7, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 40)) },
  { key := { q := 3, n := 7, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 41)) },
  { key := { q := 3, n := 7, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 42)) },
  { key := { q := 3, n := 7, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 43)) },
  { key := { q := 3, n := 7, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 44)) },
  { key := { q := 3, n := 7, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 45)) },
  { key := { q := 3, n := 7, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 46)) },
  { key := { q := 3, n := 7, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 47)) },
  { key := { q := 3, n := 7, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 7 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 7 48)) },
  { key := { q := 3, n := 8, r := 0 }
    lowerValue := 6561
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 8 0)) },
  { key := { q := 3, n := 8, r := 1 }
    lowerValue := 386
    upperValue := 486
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 1))
    upperTrace := (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1)) },
  { key := { q := 3, n := 8, r := 2 }
    lowerValue := 51
    upperValue := 153
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 2))
    upperTrace := (.lengthenFreeN 2 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))) },
  { key := { q := 3, n := 8, r := 3 }
    lowerValue := 12
    upperValue := 51
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 3))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2)))) },
  { key := { q := 3, n := 8, r := 4 }
    lowerValue := 4
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 4))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 7 4))) },
  { key := { q := 3, n := 8, r := 5 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 5 ≤ 6) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 7 6))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 8 5)) },
  { key := { q := 3, n := 8, r := 6 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 6 ≤ 7) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 8 7)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 8 6)) },
  { key := { q := 3, n := 8, r := 7 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 8 7))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 8 7)) },
  { key := { q := 3, n := 8, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 8)) },
  { key := { q := 3, n := 8, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 9)) },
  { key := { q := 3, n := 8, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 10)) },
  { key := { q := 3, n := 8, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 11)) },
  { key := { q := 3, n := 8, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 12)) },
  { key := { q := 3, n := 8, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 13)) },
  { key := { q := 3, n := 8, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 14)) },
  { key := { q := 3, n := 8, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 15)) },
  { key := { q := 3, n := 8, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 16)) },
  { key := { q := 3, n := 8, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 17)) },
  { key := { q := 3, n := 8, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 18)) },
  { key := { q := 3, n := 8, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 19)) },
  { key := { q := 3, n := 8, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 20)) },
  { key := { q := 3, n := 8, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 21)) },
  { key := { q := 3, n := 8, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 22)) },
  { key := { q := 3, n := 8, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 23)) },
  { key := { q := 3, n := 8, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 24)) },
  { key := { q := 3, n := 8, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 25)) },
  { key := { q := 3, n := 8, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 26)) },
  { key := { q := 3, n := 8, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 27)) },
  { key := { q := 3, n := 8, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 28)) },
  { key := { q := 3, n := 8, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 29)) },
  { key := { q := 3, n := 8, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 30)) },
  { key := { q := 3, n := 8, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 31)) },
  { key := { q := 3, n := 8, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 32)) },
  { key := { q := 3, n := 8, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 33)) },
  { key := { q := 3, n := 8, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 34)) },
  { key := { q := 3, n := 8, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 35)) },
  { key := { q := 3, n := 8, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 36)) },
  { key := { q := 3, n := 8, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 37)) },
  { key := { q := 3, n := 8, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 38)) },
  { key := { q := 3, n := 8, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 39)) },
  { key := { q := 3, n := 8, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 40)) },
  { key := { q := 3, n := 8, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 41)) },
  { key := { q := 3, n := 8, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 42)) },
  { key := { q := 3, n := 8, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 43)) },
  { key := { q := 3, n := 8, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 44)) },
  { key := { q := 3, n := 8, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 45)) },
  { key := { q := 3, n := 8, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 46)) },
  { key := { q := 3, n := 8, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 47)) },
  { key := { q := 3, n := 8, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 8 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 8 48)) },
  { key := { q := 3, n := 9, r := 0 }
    lowerValue := 19683
    upperValue := 19683
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 9 0)) },
  { key := { q := 3, n := 9, r := 1 }
    lowerValue := 1036
    upperValue := 1458
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 1))
    upperTrace := (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))) },
  { key := { q := 3, n := 9, r := 2 }
    lowerValue := 121
    upperValue := 459
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 2))
    upperTrace := (.lengthenFreeN 3 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))) },
  { key := { q := 3, n := 9, r := 3 }
    lowerValue := 24
    upperValue := 153
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 3))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))))) },
  { key := { q := 3, n := 9, r := 4 }
    lowerValue := 7
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 4))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 7 4))) },
  { key := { q := 3, n := 9, r := 5 }
    lowerValue := 3
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 5))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 8 5))) },
  { key := { q := 3, n := 9, r := 6 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 6 ≤ 7) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 8 7))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 9 6)) },
  { key := { q := 3, n := 9, r := 7 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 7 ≤ 8) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 9 8)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 9 7)) },
  { key := { q := 3, n := 9, r := 8 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 9 8))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 9 8)) },
  { key := { q := 3, n := 9, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 9)) },
  { key := { q := 3, n := 9, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 10)) },
  { key := { q := 3, n := 9, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 11)) },
  { key := { q := 3, n := 9, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 12)) },
  { key := { q := 3, n := 9, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 13)) },
  { key := { q := 3, n := 9, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 14)) },
  { key := { q := 3, n := 9, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 15)) },
  { key := { q := 3, n := 9, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 16)) },
  { key := { q := 3, n := 9, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 17)) },
  { key := { q := 3, n := 9, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 18)) },
  { key := { q := 3, n := 9, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 19)) },
  { key := { q := 3, n := 9, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 20)) },
  { key := { q := 3, n := 9, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 21)) },
  { key := { q := 3, n := 9, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 22)) },
  { key := { q := 3, n := 9, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 23)) },
  { key := { q := 3, n := 9, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 24)) },
  { key := { q := 3, n := 9, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 25)) },
  { key := { q := 3, n := 9, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 26)) },
  { key := { q := 3, n := 9, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 27)) },
  { key := { q := 3, n := 9, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 28)) },
  { key := { q := 3, n := 9, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 29)) },
  { key := { q := 3, n := 9, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 30)) },
  { key := { q := 3, n := 9, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 31)) },
  { key := { q := 3, n := 9, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 32)) },
  { key := { q := 3, n := 9, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 33)) },
  { key := { q := 3, n := 9, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 34)) },
  { key := { q := 3, n := 9, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 35)) },
  { key := { q := 3, n := 9, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 36)) },
  { key := { q := 3, n := 9, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 37)) },
  { key := { q := 3, n := 9, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 38)) },
  { key := { q := 3, n := 9, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 39)) },
  { key := { q := 3, n := 9, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 40)) },
  { key := { q := 3, n := 9, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 41)) },
  { key := { q := 3, n := 9, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 42)) },
  { key := { q := 3, n := 9, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 43)) },
  { key := { q := 3, n := 9, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 44)) },
  { key := { q := 3, n := 9, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 45)) },
  { key := { q := 3, n := 9, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 46)) },
  { key := { q := 3, n := 9, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 47)) },
  { key := { q := 3, n := 9, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 9 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 9 48)) },
  { key := { q := 3, n := 10, r := 0 }
    lowerValue := 59049
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 10 0)) },
  { key := { q := 3, n := 10, r := 1 }
    lowerValue := 2812
    upperValue := 4374
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 1))
    upperTrace := (.lengthenFreeN 2 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))) },
  { key := { q := 3, n := 10, r := 2 }
    lowerValue := 294
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 2))
    upperTrace := (.puncture (by decide : 0 < 3) (.primitive "lean_ternary_golay_upper" (primitiveUpper_valid 3 11 2))) },
  { key := { q := 3, n := 10, r := 3 }
    lowerValue := 51
    upperValue := 459
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 3))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))))) },
  { key := { q := 3, n := 10, r := 4 }
    lowerValue := 14
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 4))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 7 4))) },
  { key := { q := 3, n := 10, r := 5 }
    lowerValue := 5
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 5))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 8 5))) },
  { key := { q := 3, n := 10, r := 6 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 6))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6)) },
  { key := { q := 3, n := 10, r := 7 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 7 ≤ 8) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 9 8))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 7)) },
  { key := { q := 3, n := 10, r := 8 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 8 ≤ 9) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 10 9)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 8)) },
  { key := { q := 3, n := 10, r := 9 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 10 9))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 9)) },
  { key := { q := 3, n := 10, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 10)) },
  { key := { q := 3, n := 10, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 11)) },
  { key := { q := 3, n := 10, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 12)) },
  { key := { q := 3, n := 10, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 13)) },
  { key := { q := 3, n := 10, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 14)) },
  { key := { q := 3, n := 10, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 15)) },
  { key := { q := 3, n := 10, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 16)) },
  { key := { q := 3, n := 10, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 17)) },
  { key := { q := 3, n := 10, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 18)) },
  { key := { q := 3, n := 10, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 19)) },
  { key := { q := 3, n := 10, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 20)) },
  { key := { q := 3, n := 10, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 21)) },
  { key := { q := 3, n := 10, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 22)) },
  { key := { q := 3, n := 10, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 23)) },
  { key := { q := 3, n := 10, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 24)) },
  { key := { q := 3, n := 10, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 25)) },
  { key := { q := 3, n := 10, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 26)) },
  { key := { q := 3, n := 10, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 27)) },
  { key := { q := 3, n := 10, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 28)) },
  { key := { q := 3, n := 10, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 29)) },
  { key := { q := 3, n := 10, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 30)) },
  { key := { q := 3, n := 10, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 31)) },
  { key := { q := 3, n := 10, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 32)) },
  { key := { q := 3, n := 10, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 33)) },
  { key := { q := 3, n := 10, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 34)) },
  { key := { q := 3, n := 10, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 35)) },
  { key := { q := 3, n := 10, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 36)) },
  { key := { q := 3, n := 10, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 37)) },
  { key := { q := 3, n := 10, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 38)) },
  { key := { q := 3, n := 10, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 39)) },
  { key := { q := 3, n := 10, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 40)) },
  { key := { q := 3, n := 10, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 41)) },
  { key := { q := 3, n := 10, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 42)) },
  { key := { q := 3, n := 10, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 43)) },
  { key := { q := 3, n := 10, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 44)) },
  { key := { q := 3, n := 10, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 45)) },
  { key := { q := 3, n := 10, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 46)) },
  { key := { q := 3, n := 10, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 47)) },
  { key := { q := 3, n := 10, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 10 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 10 48)) },
  { key := { q := 3, n := 11, r := 0 }
    lowerValue := 177147
    upperValue := 177147
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 11 0)) },
  { key := { q := 3, n := 11, r := 1 }
    lowerValue := 7703
    upperValue := 13122
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 1))
    upperTrace := (.lengthenFreeN 3 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))) },
  { key := { q := 3, n := 11, r := 2 }
    lowerValue := 729
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 2))
    upperTrace := (.primitive "lean_ternary_golay_upper" (primitiveUpper_valid 3 11 2)) },
  { key := { q := 3, n := 11, r := 3 }
    lowerValue := 114
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 3))
    upperTrace := (.radiusMono (by decide : 2 ≤ 3) (.primitive "lean_ternary_golay_upper" (primitiveUpper_valid 3 11 2))) },
  { key := { q := 3, n := 11, r := 4 }
    lowerValue := 26
    upperValue := 243
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 4))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 7 4))) },
  { key := { q := 3, n := 11, r := 5 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 5))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 8 5))) },
  { key := { q := 3, n := 11, r := 6 }
    lowerValue := 4
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 6))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 11, r := 7 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 7 ≤ 8) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 9 8)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7)) }]

end CoveringCodes.Database
