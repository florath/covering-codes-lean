import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 39. Do not edit manually.

def precomputedTable_chunk_39 : Array AnyBoundEntry := #[
  { key := { q := 4, n := 2, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 2 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 2 48)) },
  { key := { q := 4, n := 3, r := 0 }
    lowerValue := 64
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 3 0)) },
  { key := { q := 4, n := 3, r := 1 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "lean_sparse_slicer" (primitiveLower_valid 4 3 1))
    upperTrace := (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 4 3 1)) },
  { key := { q := 4, n := 3, r := 2 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 3 2))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 3 2)) },
  { key := { q := 4, n := 3, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 3)) },
  { key := { q := 4, n := 3, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 4)) },
  { key := { q := 4, n := 3, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 5)) },
  { key := { q := 4, n := 3, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 6)) },
  { key := { q := 4, n := 3, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 7)) },
  { key := { q := 4, n := 3, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 8)) },
  { key := { q := 4, n := 3, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 9)) },
  { key := { q := 4, n := 3, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 10)) },
  { key := { q := 4, n := 3, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 11)) },
  { key := { q := 4, n := 3, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 12)) },
  { key := { q := 4, n := 3, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 13)) },
  { key := { q := 4, n := 3, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 14)) },
  { key := { q := 4, n := 3, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 15)) },
  { key := { q := 4, n := 3, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 16)) },
  { key := { q := 4, n := 3, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 17)) },
  { key := { q := 4, n := 3, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 18)) },
  { key := { q := 4, n := 3, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 19)) },
  { key := { q := 4, n := 3, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 20)) },
  { key := { q := 4, n := 3, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 21)) },
  { key := { q := 4, n := 3, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 22)) },
  { key := { q := 4, n := 3, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 23)) },
  { key := { q := 4, n := 3, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 24)) },
  { key := { q := 4, n := 3, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 25)) },
  { key := { q := 4, n := 3, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 26)) },
  { key := { q := 4, n := 3, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 27)) },
  { key := { q := 4, n := 3, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 28)) },
  { key := { q := 4, n := 3, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 29)) },
  { key := { q := 4, n := 3, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 30)) },
  { key := { q := 4, n := 3, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 31)) },
  { key := { q := 4, n := 3, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 32)) },
  { key := { q := 4, n := 3, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 33)) },
  { key := { q := 4, n := 3, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 34)) },
  { key := { q := 4, n := 3, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 35)) },
  { key := { q := 4, n := 3, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 36)) },
  { key := { q := 4, n := 3, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 37)) },
  { key := { q := 4, n := 3, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 38)) },
  { key := { q := 4, n := 3, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 39)) },
  { key := { q := 4, n := 3, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 40)) },
  { key := { q := 4, n := 3, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 41)) },
  { key := { q := 4, n := 3, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 42)) },
  { key := { q := 4, n := 3, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 43)) },
  { key := { q := 4, n := 3, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 44)) },
  { key := { q := 4, n := 3, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 45)) },
  { key := { q := 4, n := 3, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 46)) },
  { key := { q := 4, n := 3, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 47)) },
  { key := { q := 4, n := 3, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 3 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 3 48)) },
  { key := { q := 4, n := 4, r := 0 }
    lowerValue := 256
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 4 0)) },
  { key := { q := 4, n := 4, r := 1 }
    lowerValue := 20
    upperValue := 24
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 1))
    upperTrace := (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 4 4 1)) },
  { key := { q := 4, n := 4, r := 2 }
    lowerValue := 4
    upperValue := 7
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 2))
    upperTrace := (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 4 4 2)) },
  { key := { q := 4, n := 4, r := 3 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 4 3))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 4 3)) },
  { key := { q := 4, n := 4, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 4)) },
  { key := { q := 4, n := 4, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 5)) },
  { key := { q := 4, n := 4, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 6)) },
  { key := { q := 4, n := 4, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 7)) },
  { key := { q := 4, n := 4, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 8)) },
  { key := { q := 4, n := 4, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 9)) },
  { key := { q := 4, n := 4, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 10)) },
  { key := { q := 4, n := 4, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 11)) },
  { key := { q := 4, n := 4, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 12)) },
  { key := { q := 4, n := 4, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 13)) },
  { key := { q := 4, n := 4, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 14)) },
  { key := { q := 4, n := 4, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 15)) },
  { key := { q := 4, n := 4, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 16)) },
  { key := { q := 4, n := 4, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 17)) },
  { key := { q := 4, n := 4, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 18)) },
  { key := { q := 4, n := 4, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 19)) },
  { key := { q := 4, n := 4, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 20)) },
  { key := { q := 4, n := 4, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 21)) },
  { key := { q := 4, n := 4, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 22)) },
  { key := { q := 4, n := 4, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 23)) },
  { key := { q := 4, n := 4, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 24)) },
  { key := { q := 4, n := 4, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 25)) },
  { key := { q := 4, n := 4, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 26)) },
  { key := { q := 4, n := 4, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 27)) },
  { key := { q := 4, n := 4, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 28)) },
  { key := { q := 4, n := 4, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 29)) },
  { key := { q := 4, n := 4, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 30)) },
  { key := { q := 4, n := 4, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 31)) },
  { key := { q := 4, n := 4, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 32)) },
  { key := { q := 4, n := 4, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 33)) },
  { key := { q := 4, n := 4, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 34)) },
  { key := { q := 4, n := 4, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 35)) },
  { key := { q := 4, n := 4, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 36)) },
  { key := { q := 4, n := 4, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 37)) },
  { key := { q := 4, n := 4, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 38)) },
  { key := { q := 4, n := 4, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 39)) },
  { key := { q := 4, n := 4, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 40)) },
  { key := { q := 4, n := 4, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 41)) },
  { key := { q := 4, n := 4, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 42)) },
  { key := { q := 4, n := 4, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 43)) },
  { key := { q := 4, n := 4, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 44)) },
  { key := { q := 4, n := 4, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 45)) },
  { key := { q := 4, n := 4, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 46)) },
  { key := { q := 4, n := 4, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 47)) },
  { key := { q := 4, n := 4, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 4 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 4 48)) },
  { key := { q := 4, n := 5, r := 0 }
    lowerValue := 1024
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 5 0)) },
  { key := { q := 4, n := 5, r := 1 }
    lowerValue := 64
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 1))
    upperTrace := (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1)) },
  { key := { q := 4, n := 5, r := 2 }
    lowerValue := 10
    upperValue := 16
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 2))
    upperTrace := (.primitive "lean_quaternary_radius_two" (primitiveUpper_valid 4 5 2)) },
  { key := { q := 4, n := 5, r := 3 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 3 ≤ 4) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 5 4)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 5 3)) },
  { key := { q := 4, n := 5, r := 4 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 5 4))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 5 4)) },
  { key := { q := 4, n := 5, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 5)) },
  { key := { q := 4, n := 5, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 6)) },
  { key := { q := 4, n := 5, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 7)) },
  { key := { q := 4, n := 5, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 8)) },
  { key := { q := 4, n := 5, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 9)) },
  { key := { q := 4, n := 5, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 10)) },
  { key := { q := 4, n := 5, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 11)) },
  { key := { q := 4, n := 5, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 12)) },
  { key := { q := 4, n := 5, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 13)) },
  { key := { q := 4, n := 5, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 14)) },
  { key := { q := 4, n := 5, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 15)) },
  { key := { q := 4, n := 5, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 16)) },
  { key := { q := 4, n := 5, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 17)) },
  { key := { q := 4, n := 5, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 18)) },
  { key := { q := 4, n := 5, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 19)) },
  { key := { q := 4, n := 5, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 20)) },
  { key := { q := 4, n := 5, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 21)) },
  { key := { q := 4, n := 5, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 22)) },
  { key := { q := 4, n := 5, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 23)) },
  { key := { q := 4, n := 5, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 24)) },
  { key := { q := 4, n := 5, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 25)) },
  { key := { q := 4, n := 5, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 26)) },
  { key := { q := 4, n := 5, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 27)) },
  { key := { q := 4, n := 5, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 28)) },
  { key := { q := 4, n := 5, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 29)) },
  { key := { q := 4, n := 5, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 30)) },
  { key := { q := 4, n := 5, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 31)) },
  { key := { q := 4, n := 5, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 32)) },
  { key := { q := 4, n := 5, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 33)) },
  { key := { q := 4, n := 5, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 34)) },
  { key := { q := 4, n := 5, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 35)) },
  { key := { q := 4, n := 5, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 36)) },
  { key := { q := 4, n := 5, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 37)) },
  { key := { q := 4, n := 5, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 38)) },
  { key := { q := 4, n := 5, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 39)) },
  { key := { q := 4, n := 5, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 40)) },
  { key := { q := 4, n := 5, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 41)) },
  { key := { q := 4, n := 5, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 42)) },
  { key := { q := 4, n := 5, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 43)) },
  { key := { q := 4, n := 5, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 44)) },
  { key := { q := 4, n := 5, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 45)) },
  { key := { q := 4, n := 5, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 46)) },
  { key := { q := 4, n := 5, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 47)) },
  { key := { q := 4, n := 5, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 5 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 5 48)) },
  { key := { q := 4, n := 6, r := 0 }
    lowerValue := 4096
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 6 0)) },
  { key := { q := 4, n := 6, r := 1 }
    lowerValue := 216
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 1))
    upperTrace := (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 6, r := 2 }
    lowerValue := 27
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 2))
    upperTrace := (.lengthenFreeN 1 (.primitive "lean_quaternary_radius_two" (primitiveUpper_valid 4 5 2))) },
  { key := { q := 4, n := 6, r := 3 }
    lowerValue := 6
    upperValue := 16
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 3))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 5 3))) },
  { key := { q := 4, n := 6, r := 4 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 4 ≤ 5) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 6 5)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 6 4)) },
  { key := { q := 4, n := 6, r := 5 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 6 5))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 6 5)) },
  { key := { q := 4, n := 6, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 6)) },
  { key := { q := 4, n := 6, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 7)) },
  { key := { q := 4, n := 6, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 8)) },
  { key := { q := 4, n := 6, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 9)) },
  { key := { q := 4, n := 6, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 10)) },
  { key := { q := 4, n := 6, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 11)) },
  { key := { q := 4, n := 6, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 12)) },
  { key := { q := 4, n := 6, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 13)) },
  { key := { q := 4, n := 6, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 14)) },
  { key := { q := 4, n := 6, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 15)) },
  { key := { q := 4, n := 6, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 16)) },
  { key := { q := 4, n := 6, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 17)) },
  { key := { q := 4, n := 6, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 18)) },
  { key := { q := 4, n := 6, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 19)) },
  { key := { q := 4, n := 6, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 20)) },
  { key := { q := 4, n := 6, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 21)) },
  { key := { q := 4, n := 6, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 22)) },
  { key := { q := 4, n := 6, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 23)) },
  { key := { q := 4, n := 6, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 24)) },
  { key := { q := 4, n := 6, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 25)) },
  { key := { q := 4, n := 6, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 26)) },
  { key := { q := 4, n := 6, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 27)) },
  { key := { q := 4, n := 6, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 28)) },
  { key := { q := 4, n := 6, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 29)) },
  { key := { q := 4, n := 6, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 30)) },
  { key := { q := 4, n := 6, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 31)) },
  { key := { q := 4, n := 6, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 32)) },
  { key := { q := 4, n := 6, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 33)) },
  { key := { q := 4, n := 6, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 34)) },
  { key := { q := 4, n := 6, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 35)) },
  { key := { q := 4, n := 6, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 36)) },
  { key := { q := 4, n := 6, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 37)) },
  { key := { q := 4, n := 6, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 38)) },
  { key := { q := 4, n := 6, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 39)) },
  { key := { q := 4, n := 6, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 40)) },
  { key := { q := 4, n := 6, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 41)) },
  { key := { q := 4, n := 6, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 42)) },
  { key := { q := 4, n := 6, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 43)) },
  { key := { q := 4, n := 6, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 44)) },
  { key := { q := 4, n := 6, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 45)) },
  { key := { q := 4, n := 6, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 46)) },
  { key := { q := 4, n := 6, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 47)) },
  { key := { q := 4, n := 6, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 6 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 6 48)) },
  { key := { q := 4, n := 7, r := 0 }
    lowerValue := 16384
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 7 0)) },
  { key := { q := 4, n := 7, r := 1 }
    lowerValue := 745
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 1))
    upperTrace := (.lengthenFreeN 2 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 7, r := 2 }
    lowerValue := 78
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 2))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1)))) },
  { key := { q := 4, n := 7, r := 3 }
    lowerValue := 15
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 3))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_radius_two" (primitiveUpper_valid 4 5 2)))) },
  { key := { q := 4, n := 7, r := 4 }
    lowerValue := 5
    upperValue := 16
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 4))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 6 4))) },
  { key := { q := 4, n := 7, r := 5 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 5 ≤ 6) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 7 6)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 7 5)) },
  { key := { q := 4, n := 7, r := 6 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 7 6))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 7 6)) },
  { key := { q := 4, n := 7, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 7)) },
  { key := { q := 4, n := 7, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 8)) },
  { key := { q := 4, n := 7, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 9)) },
  { key := { q := 4, n := 7, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 10)) },
  { key := { q := 4, n := 7, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 11)) },
  { key := { q := 4, n := 7, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 12)) },
  { key := { q := 4, n := 7, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 13)) },
  { key := { q := 4, n := 7, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 14)) },
  { key := { q := 4, n := 7, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 15)) },
  { key := { q := 4, n := 7, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 16)) },
  { key := { q := 4, n := 7, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 17)) },
  { key := { q := 4, n := 7, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 18)) },
  { key := { q := 4, n := 7, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 19)) },
  { key := { q := 4, n := 7, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 20)) },
  { key := { q := 4, n := 7, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 21)) },
  { key := { q := 4, n := 7, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 22)) },
  { key := { q := 4, n := 7, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 23)) },
  { key := { q := 4, n := 7, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 24)) },
  { key := { q := 4, n := 7, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 25)) },
  { key := { q := 4, n := 7, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 26)) },
  { key := { q := 4, n := 7, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 27)) },
  { key := { q := 4, n := 7, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 28)) },
  { key := { q := 4, n := 7, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 29)) },
  { key := { q := 4, n := 7, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 30)) },
  { key := { q := 4, n := 7, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 31)) },
  { key := { q := 4, n := 7, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 32)) },
  { key := { q := 4, n := 7, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 33)) },
  { key := { q := 4, n := 7, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 34)) },
  { key := { q := 4, n := 7, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 35)) },
  { key := { q := 4, n := 7, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 36)) },
  { key := { q := 4, n := 7, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 37)) },
  { key := { q := 4, n := 7, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 38)) },
  { key := { q := 4, n := 7, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 39)) },
  { key := { q := 4, n := 7, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 40)) },
  { key := { q := 4, n := 7, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 41)) },
  { key := { q := 4, n := 7, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 42)) },
  { key := { q := 4, n := 7, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 43)) },
  { key := { q := 4, n := 7, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 44)) },
  { key := { q := 4, n := 7, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 45)) },
  { key := { q := 4, n := 7, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 46)) },
  { key := { q := 4, n := 7, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 47)) },
  { key := { q := 4, n := 7, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 7 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 7 48)) },
  { key := { q := 4, n := 8, r := 0 }
    lowerValue := 65536
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 8 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 8 0)) },
  { key := { q := 4, n := 8, r := 1 }
    lowerValue := 2622
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 8 1))
    upperTrace := (@UpperTrace.blockGroup 2 2 8 1 4096 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 15 1)))) },
  { key := { q := 4, n := 8, r := 2 }
    lowerValue := 237
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 8 2))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 8, r := 3 }
    lowerValue := 37
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 8 3))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1)))) }]

end CoveringCodes.Database
