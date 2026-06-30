import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 48. Do not edit manually.

def precomputedTable_chunk_48 : Array AnyBoundEntry := #[
  { key := { q := 4, n := 48, r := 44 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 46 45)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 48 44)) },
  { key := { q := 4, n := 48, r := 45 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 47 46))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 48 45)) },
  { key := { q := 4, n := 48, r := 46 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 46 ≤ 47) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 48 47)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 48 46)) },
  { key := { q := 4, n := 48, r := 47 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 48 47))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 48 47)) },
  { key := { q := 4, n := 48, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 48 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 48 48)) },
  { key := { q := 5, n := 0, r := 0 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 0)) },
  { key := { q := 5, n := 0, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 1))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 1)) },
  { key := { q := 5, n := 0, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 2))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 2)) },
  { key := { q := 5, n := 0, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 3))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 3)) },
  { key := { q := 5, n := 0, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 4))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 4)) },
  { key := { q := 5, n := 0, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 5))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 5)) },
  { key := { q := 5, n := 0, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 6))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 6)) },
  { key := { q := 5, n := 0, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 7))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 7)) },
  { key := { q := 5, n := 0, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 8))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 8)) },
  { key := { q := 5, n := 0, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 9))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 9)) },
  { key := { q := 5, n := 0, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 10))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 10)) },
  { key := { q := 5, n := 0, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 11))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 11)) },
  { key := { q := 5, n := 0, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 12))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 12)) },
  { key := { q := 5, n := 0, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 13))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 13)) },
  { key := { q := 5, n := 0, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 14))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 14)) },
  { key := { q := 5, n := 0, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 15))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 15)) },
  { key := { q := 5, n := 0, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 16))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 16)) },
  { key := { q := 5, n := 0, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 17))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 17)) },
  { key := { q := 5, n := 0, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 18))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 18)) },
  { key := { q := 5, n := 0, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 19))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 19)) },
  { key := { q := 5, n := 0, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 20))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 20)) },
  { key := { q := 5, n := 0, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 21))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 21)) },
  { key := { q := 5, n := 0, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 22))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 22)) },
  { key := { q := 5, n := 0, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 23))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 23)) },
  { key := { q := 5, n := 0, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 24))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 24)) },
  { key := { q := 5, n := 0, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 25))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 25)) },
  { key := { q := 5, n := 0, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 26))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 26)) },
  { key := { q := 5, n := 0, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 27))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 27)) },
  { key := { q := 5, n := 0, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 28))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 28)) },
  { key := { q := 5, n := 0, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 29))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 29)) },
  { key := { q := 5, n := 0, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 30))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 30)) },
  { key := { q := 5, n := 0, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 31))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 31)) },
  { key := { q := 5, n := 0, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 32))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 32)) },
  { key := { q := 5, n := 0, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 33))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 33)) },
  { key := { q := 5, n := 0, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 34))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 34)) },
  { key := { q := 5, n := 0, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 35))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 35)) },
  { key := { q := 5, n := 0, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 36))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 36)) },
  { key := { q := 5, n := 0, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 37))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 37)) },
  { key := { q := 5, n := 0, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 38))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 38)) },
  { key := { q := 5, n := 0, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 39))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 39)) },
  { key := { q := 5, n := 0, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 40))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 40)) },
  { key := { q := 5, n := 0, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 41))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 41)) },
  { key := { q := 5, n := 0, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 42))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 42)) },
  { key := { q := 5, n := 0, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 43))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 43)) },
  { key := { q := 5, n := 0, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 44))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 44)) },
  { key := { q := 5, n := 0, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 45))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 45)) },
  { key := { q := 5, n := 0, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 46))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 46)) },
  { key := { q := 5, n := 0, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 47))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 47)) },
  { key := { q := 5, n := 0, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 0 48))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 0 48)) },
  { key := { q := 5, n := 1, r := 0 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 1 0)) },
  { key := { q := 5, n := 1, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 1))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 1)) },
  { key := { q := 5, n := 1, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 2))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 2)) },
  { key := { q := 5, n := 1, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 3)) },
  { key := { q := 5, n := 1, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 4)) },
  { key := { q := 5, n := 1, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 5)) },
  { key := { q := 5, n := 1, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 6)) },
  { key := { q := 5, n := 1, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 7)) },
  { key := { q := 5, n := 1, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 8)) },
  { key := { q := 5, n := 1, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 9)) },
  { key := { q := 5, n := 1, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 10)) },
  { key := { q := 5, n := 1, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 11)) },
  { key := { q := 5, n := 1, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 12)) },
  { key := { q := 5, n := 1, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 13)) },
  { key := { q := 5, n := 1, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 14)) },
  { key := { q := 5, n := 1, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 15)) },
  { key := { q := 5, n := 1, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 16)) },
  { key := { q := 5, n := 1, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 17)) },
  { key := { q := 5, n := 1, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 18)) },
  { key := { q := 5, n := 1, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 19)) },
  { key := { q := 5, n := 1, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 20)) },
  { key := { q := 5, n := 1, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 21)) },
  { key := { q := 5, n := 1, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 22)) },
  { key := { q := 5, n := 1, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 23)) },
  { key := { q := 5, n := 1, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 24)) },
  { key := { q := 5, n := 1, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 25)) },
  { key := { q := 5, n := 1, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 26)) },
  { key := { q := 5, n := 1, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 27)) },
  { key := { q := 5, n := 1, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 28)) },
  { key := { q := 5, n := 1, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 29)) },
  { key := { q := 5, n := 1, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 30)) },
  { key := { q := 5, n := 1, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 31)) },
  { key := { q := 5, n := 1, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 32)) },
  { key := { q := 5, n := 1, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 33)) },
  { key := { q := 5, n := 1, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 34)) },
  { key := { q := 5, n := 1, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 35)) },
  { key := { q := 5, n := 1, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 36)) },
  { key := { q := 5, n := 1, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 37)) },
  { key := { q := 5, n := 1, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 38)) },
  { key := { q := 5, n := 1, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 39)) },
  { key := { q := 5, n := 1, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 40)) },
  { key := { q := 5, n := 1, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 41)) },
  { key := { q := 5, n := 1, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 42)) },
  { key := { q := 5, n := 1, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 43)) },
  { key := { q := 5, n := 1, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 44)) },
  { key := { q := 5, n := 1, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 45)) },
  { key := { q := 5, n := 1, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 46)) },
  { key := { q := 5, n := 1, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 47)) },
  { key := { q := 5, n := 1, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 1 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 1 48)) },
  { key := { q := 5, n := 2, r := 0 }
    lowerValue := 25
    upperValue := 25
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 2 0)) },
  { key := { q := 5, n := 2, r := 1 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 2 1))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 2 1)) },
  { key := { q := 5, n := 2, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 2))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 2)) },
  { key := { q := 5, n := 2, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 3)) },
  { key := { q := 5, n := 2, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 4)) },
  { key := { q := 5, n := 2, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 5)) },
  { key := { q := 5, n := 2, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 6)) },
  { key := { q := 5, n := 2, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 7)) },
  { key := { q := 5, n := 2, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 8)) },
  { key := { q := 5, n := 2, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 9)) },
  { key := { q := 5, n := 2, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 10)) },
  { key := { q := 5, n := 2, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 11)) },
  { key := { q := 5, n := 2, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 12)) },
  { key := { q := 5, n := 2, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 13)) },
  { key := { q := 5, n := 2, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 14)) },
  { key := { q := 5, n := 2, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 15)) },
  { key := { q := 5, n := 2, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 16)) },
  { key := { q := 5, n := 2, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 17)) },
  { key := { q := 5, n := 2, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 18)) },
  { key := { q := 5, n := 2, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 19)) },
  { key := { q := 5, n := 2, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 20)) },
  { key := { q := 5, n := 2, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 21)) },
  { key := { q := 5, n := 2, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 22)) },
  { key := { q := 5, n := 2, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 23)) },
  { key := { q := 5, n := 2, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 24)) },
  { key := { q := 5, n := 2, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 25)) },
  { key := { q := 5, n := 2, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 26)) },
  { key := { q := 5, n := 2, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 27)) },
  { key := { q := 5, n := 2, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 28)) },
  { key := { q := 5, n := 2, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 29)) },
  { key := { q := 5, n := 2, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 30)) },
  { key := { q := 5, n := 2, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 31)) },
  { key := { q := 5, n := 2, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 32)) },
  { key := { q := 5, n := 2, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 33)) },
  { key := { q := 5, n := 2, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 34)) },
  { key := { q := 5, n := 2, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 35)) },
  { key := { q := 5, n := 2, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 36)) },
  { key := { q := 5, n := 2, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 37)) },
  { key := { q := 5, n := 2, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 38)) },
  { key := { q := 5, n := 2, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 39)) },
  { key := { q := 5, n := 2, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 40)) },
  { key := { q := 5, n := 2, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 41)) },
  { key := { q := 5, n := 2, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 42)) },
  { key := { q := 5, n := 2, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 43)) },
  { key := { q := 5, n := 2, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 44)) },
  { key := { q := 5, n := 2, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 45)) },
  { key := { q := 5, n := 2, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 46)) },
  { key := { q := 5, n := 2, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 47)) },
  { key := { q := 5, n := 2, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 2 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 2 48)) },
  { key := { q := 5, n := 3, r := 0 }
    lowerValue := 125
    upperValue := 125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 3 0)) },
  { key := { q := 5, n := 3, r := 1 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "lean_qary_three_one_half_square_lower" (primitiveLower_valid 5 3 1))
    upperTrace := (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1)) },
  { key := { q := 5, n := 3, r := 2 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 3 2))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 3 2)) },
  { key := { q := 5, n := 3, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 3)) },
  { key := { q := 5, n := 3, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 4)) },
  { key := { q := 5, n := 3, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 5)) },
  { key := { q := 5, n := 3, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 6)) },
  { key := { q := 5, n := 3, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 7)) },
  { key := { q := 5, n := 3, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 8)) },
  { key := { q := 5, n := 3, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 9)) },
  { key := { q := 5, n := 3, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 10)) },
  { key := { q := 5, n := 3, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 11)) },
  { key := { q := 5, n := 3, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 12)) },
  { key := { q := 5, n := 3, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 13)) },
  { key := { q := 5, n := 3, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 14)) },
  { key := { q := 5, n := 3, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 15)) },
  { key := { q := 5, n := 3, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 16)) },
  { key := { q := 5, n := 3, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 17)) },
  { key := { q := 5, n := 3, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 18)) },
  { key := { q := 5, n := 3, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 19)) },
  { key := { q := 5, n := 3, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 20)) },
  { key := { q := 5, n := 3, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 21)) },
  { key := { q := 5, n := 3, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 22)) },
  { key := { q := 5, n := 3, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 23)) },
  { key := { q := 5, n := 3, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 24)) },
  { key := { q := 5, n := 3, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 25)) },
  { key := { q := 5, n := 3, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 26)) },
  { key := { q := 5, n := 3, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 27)) },
  { key := { q := 5, n := 3, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 28)) },
  { key := { q := 5, n := 3, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 29)) },
  { key := { q := 5, n := 3, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 30)) },
  { key := { q := 5, n := 3, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 31)) },
  { key := { q := 5, n := 3, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 32)) },
  { key := { q := 5, n := 3, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 33)) },
  { key := { q := 5, n := 3, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 34)) },
  { key := { q := 5, n := 3, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 35)) },
  { key := { q := 5, n := 3, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 36)) },
  { key := { q := 5, n := 3, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 37)) },
  { key := { q := 5, n := 3, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 38)) },
  { key := { q := 5, n := 3, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 39)) },
  { key := { q := 5, n := 3, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 40)) },
  { key := { q := 5, n := 3, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 41)) },
  { key := { q := 5, n := 3, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 42)) },
  { key := { q := 5, n := 3, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 43)) },
  { key := { q := 5, n := 3, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 44)) },
  { key := { q := 5, n := 3, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 45)) },
  { key := { q := 5, n := 3, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 46)) },
  { key := { q := 5, n := 3, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 47)) },
  { key := { q := 5, n := 3, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 3 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 3 48)) },
  { key := { q := 5, n := 4, r := 0 }
    lowerValue := 625
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 4 0)) },
  { key := { q := 5, n := 4, r := 1 }
    lowerValue := 37
    upperValue := 65
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 1))
    upperTrace := (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 4, r := 2 }
    lowerValue := 6
    upperValue := 13
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 2))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 5) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 4, r := 3 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 4 3))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 4 3)) },
  { key := { q := 5, n := 4, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 4)) },
  { key := { q := 5, n := 4, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 5)) },
  { key := { q := 5, n := 4, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 6)) },
  { key := { q := 5, n := 4, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 7)) },
  { key := { q := 5, n := 4, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 8)) },
  { key := { q := 5, n := 4, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 9)) },
  { key := { q := 5, n := 4, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 10)) },
  { key := { q := 5, n := 4, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 11)) },
  { key := { q := 5, n := 4, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 12)) },
  { key := { q := 5, n := 4, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 13)) },
  { key := { q := 5, n := 4, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 14)) },
  { key := { q := 5, n := 4, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 15)) },
  { key := { q := 5, n := 4, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 16)) },
  { key := { q := 5, n := 4, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 17)) },
  { key := { q := 5, n := 4, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 18)) },
  { key := { q := 5, n := 4, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 19)) },
  { key := { q := 5, n := 4, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 20)) },
  { key := { q := 5, n := 4, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 21)) },
  { key := { q := 5, n := 4, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 22)) },
  { key := { q := 5, n := 4, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 23)) },
  { key := { q := 5, n := 4, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 24)) },
  { key := { q := 5, n := 4, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 25)) },
  { key := { q := 5, n := 4, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 26)) },
  { key := { q := 5, n := 4, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 27)) },
  { key := { q := 5, n := 4, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 28)) },
  { key := { q := 5, n := 4, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 29)) },
  { key := { q := 5, n := 4, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 30)) },
  { key := { q := 5, n := 4, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 31)) },
  { key := { q := 5, n := 4, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 32)) },
  { key := { q := 5, n := 4, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 33)) },
  { key := { q := 5, n := 4, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 34)) },
  { key := { q := 5, n := 4, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 35)) },
  { key := { q := 5, n := 4, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 36)) },
  { key := { q := 5, n := 4, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 37)) },
  { key := { q := 5, n := 4, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 38)) },
  { key := { q := 5, n := 4, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 39)) },
  { key := { q := 5, n := 4, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 40)) },
  { key := { q := 5, n := 4, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 41)) },
  { key := { q := 5, n := 4, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 42)) },
  { key := { q := 5, n := 4, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 43)) },
  { key := { q := 5, n := 4, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 44)) },
  { key := { q := 5, n := 4, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 45)) },
  { key := { q := 5, n := 4, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 46)) },
  { key := { q := 5, n := 4, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 47)) },
  { key := { q := 5, n := 4, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 4 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 4 48)) }]

end CoveringCodes.Database
