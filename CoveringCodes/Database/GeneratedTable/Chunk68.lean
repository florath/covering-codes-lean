import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 68. Do not edit manually.

def precomputedTable_chunk_68 : Array AnyBoundEntry := #[
  { key := { q := 7, n := 3, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 46)) },
  { key := { q := 7, n := 3, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 47)) },
  { key := { q := 7, n := 3, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 48)) },
  { key := { q := 7, n := 4, r := 0 }
    lowerValue := 2401
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 4 0)) },
  { key := { q := 7, n := 4, r := 1 }
    lowerValue := 97
    upperValue := 175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 1))
    upperTrace := (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 4, r := 2 }
    lowerValue := 10
    upperValue := 23
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 2))
    upperTrace := (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2))) },
  { key := { q := 7, n := 4, r := 3 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 4 3))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 4 3)) },
  { key := { q := 7, n := 4, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 4)) },
  { key := { q := 7, n := 4, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 5)) },
  { key := { q := 7, n := 4, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 6)) },
  { key := { q := 7, n := 4, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 7)) },
  { key := { q := 7, n := 4, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 8)) },
  { key := { q := 7, n := 4, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 9)) },
  { key := { q := 7, n := 4, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 10)) },
  { key := { q := 7, n := 4, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 11)) },
  { key := { q := 7, n := 4, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 12)) },
  { key := { q := 7, n := 4, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 13)) },
  { key := { q := 7, n := 4, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 14)) },
  { key := { q := 7, n := 4, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 15)) },
  { key := { q := 7, n := 4, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 16)) },
  { key := { q := 7, n := 4, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 17)) },
  { key := { q := 7, n := 4, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 18)) },
  { key := { q := 7, n := 4, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 19)) },
  { key := { q := 7, n := 4, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 20)) },
  { key := { q := 7, n := 4, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 21)) },
  { key := { q := 7, n := 4, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 22)) },
  { key := { q := 7, n := 4, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 23)) },
  { key := { q := 7, n := 4, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 24)) },
  { key := { q := 7, n := 4, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 25)) },
  { key := { q := 7, n := 4, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 26)) },
  { key := { q := 7, n := 4, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 27)) },
  { key := { q := 7, n := 4, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 28)) },
  { key := { q := 7, n := 4, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 29)) },
  { key := { q := 7, n := 4, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 30)) },
  { key := { q := 7, n := 4, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 31)) },
  { key := { q := 7, n := 4, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 32)) },
  { key := { q := 7, n := 4, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 33)) },
  { key := { q := 7, n := 4, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 34)) },
  { key := { q := 7, n := 4, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 35)) },
  { key := { q := 7, n := 4, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 36)) },
  { key := { q := 7, n := 4, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 37)) },
  { key := { q := 7, n := 4, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 38)) },
  { key := { q := 7, n := 4, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 39)) },
  { key := { q := 7, n := 4, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 40)) },
  { key := { q := 7, n := 4, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 41)) },
  { key := { q := 7, n := 4, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 42)) },
  { key := { q := 7, n := 4, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 43)) },
  { key := { q := 7, n := 4, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 44)) },
  { key := { q := 7, n := 4, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 45)) },
  { key := { q := 7, n := 4, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 46)) },
  { key := { q := 7, n := 4, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 47)) },
  { key := { q := 7, n := 4, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 4 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 4 48)) },
  { key := { q := 7, n := 5, r := 0 }
    lowerValue := 16807
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 5 0)) },
  { key := { q := 7, n := 5, r := 1 }
    lowerValue := 543
    upperValue := 1225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 1))
    upperTrace := (.lengthenFreeN 2 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 5, r := 2 }
    lowerValue := 43
    upperValue := 161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 2))
    upperTrace := (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2)))) },
  { key := { q := 7, n := 5, r := 3 }
    lowerValue := 7
    upperValue := 23
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 3))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 7) (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2)))) },
  { key := { q := 7, n := 5, r := 4 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 5 4))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 5 4)) },
  { key := { q := 7, n := 5, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 5)) },
  { key := { q := 7, n := 5, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 6)) },
  { key := { q := 7, n := 5, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 7)) },
  { key := { q := 7, n := 5, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 8)) },
  { key := { q := 7, n := 5, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 9)) },
  { key := { q := 7, n := 5, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 10)) },
  { key := { q := 7, n := 5, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 11)) },
  { key := { q := 7, n := 5, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 12)) },
  { key := { q := 7, n := 5, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 13)) },
  { key := { q := 7, n := 5, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 14)) },
  { key := { q := 7, n := 5, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 15)) },
  { key := { q := 7, n := 5, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 16)) },
  { key := { q := 7, n := 5, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 17)) },
  { key := { q := 7, n := 5, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 18)) },
  { key := { q := 7, n := 5, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 19)) },
  { key := { q := 7, n := 5, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 20)) },
  { key := { q := 7, n := 5, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 21)) },
  { key := { q := 7, n := 5, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 22)) },
  { key := { q := 7, n := 5, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 23)) },
  { key := { q := 7, n := 5, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 24)) },
  { key := { q := 7, n := 5, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 25)) },
  { key := { q := 7, n := 5, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 26)) },
  { key := { q := 7, n := 5, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 27)) },
  { key := { q := 7, n := 5, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 28)) },
  { key := { q := 7, n := 5, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 29)) },
  { key := { q := 7, n := 5, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 30)) },
  { key := { q := 7, n := 5, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 31)) },
  { key := { q := 7, n := 5, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 32)) },
  { key := { q := 7, n := 5, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 33)) },
  { key := { q := 7, n := 5, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 34)) },
  { key := { q := 7, n := 5, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 35)) },
  { key := { q := 7, n := 5, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 36)) },
  { key := { q := 7, n := 5, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 37)) },
  { key := { q := 7, n := 5, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 38)) },
  { key := { q := 7, n := 5, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 39)) },
  { key := { q := 7, n := 5, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 40)) },
  { key := { q := 7, n := 5, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 41)) },
  { key := { q := 7, n := 5, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 42)) },
  { key := { q := 7, n := 5, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 43)) },
  { key := { q := 7, n := 5, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 44)) },
  { key := { q := 7, n := 5, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 45)) },
  { key := { q := 7, n := 5, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 46)) },
  { key := { q := 7, n := 5, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 47)) },
  { key := { q := 7, n := 5, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 5 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 5 48)) },
  { key := { q := 7, n := 6, r := 0 }
    lowerValue := 117649
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 6 0)) },
  { key := { q := 7, n := 6, r := 1 }
    lowerValue := 3180
    upperValue := 8575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 1))
    upperTrace := (.lengthenFreeN 3 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 6, r := 2 }
    lowerValue := 204
    upperValue := 1127
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 2))
    upperTrace := (.lengthenFreeN 2 (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2)))) },
  { key := { q := 7, n := 6, r := 3 }
    lowerValue := 25
    upperValue := 161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 3))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2))))) },
  { key := { q := 7, n := 6, r := 4 }
    lowerValue := 7
    upperValue := 23
    lowerTrace := (.radiusBack (by decide : 4 ≤ 5) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 6 5)))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 7) (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2)))) },
  { key := { q := 7, n := 6, r := 5 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 6 5))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 6 5)) },
  { key := { q := 7, n := 6, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 6)) },
  { key := { q := 7, n := 6, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 7)) },
  { key := { q := 7, n := 6, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 8)) },
  { key := { q := 7, n := 6, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 9)) },
  { key := { q := 7, n := 6, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 10)) },
  { key := { q := 7, n := 6, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 11)) },
  { key := { q := 7, n := 6, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 12)) },
  { key := { q := 7, n := 6, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 13)) },
  { key := { q := 7, n := 6, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 14)) },
  { key := { q := 7, n := 6, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 15)) },
  { key := { q := 7, n := 6, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 16)) },
  { key := { q := 7, n := 6, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 17)) },
  { key := { q := 7, n := 6, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 18)) },
  { key := { q := 7, n := 6, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 19)) },
  { key := { q := 7, n := 6, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 20)) },
  { key := { q := 7, n := 6, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 21)) },
  { key := { q := 7, n := 6, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 22)) },
  { key := { q := 7, n := 6, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 23)) },
  { key := { q := 7, n := 6, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 24)) },
  { key := { q := 7, n := 6, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 25)) },
  { key := { q := 7, n := 6, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 26)) },
  { key := { q := 7, n := 6, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 27)) },
  { key := { q := 7, n := 6, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 28)) },
  { key := { q := 7, n := 6, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 29)) },
  { key := { q := 7, n := 6, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 30)) },
  { key := { q := 7, n := 6, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 31)) },
  { key := { q := 7, n := 6, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 32)) },
  { key := { q := 7, n := 6, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 33)) },
  { key := { q := 7, n := 6, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 34)) },
  { key := { q := 7, n := 6, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 35)) },
  { key := { q := 7, n := 6, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 36)) },
  { key := { q := 7, n := 6, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 37)) },
  { key := { q := 7, n := 6, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 38)) },
  { key := { q := 7, n := 6, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 39)) },
  { key := { q := 7, n := 6, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 40)) },
  { key := { q := 7, n := 6, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 41)) },
  { key := { q := 7, n := 6, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 42)) },
  { key := { q := 7, n := 6, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 43)) },
  { key := { q := 7, n := 6, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 44)) },
  { key := { q := 7, n := 6, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 45)) },
  { key := { q := 7, n := 6, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 46)) },
  { key := { q := 7, n := 6, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 47)) },
  { key := { q := 7, n := 6, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 6 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 6 48)) },
  { key := { q := 7, n := 7, r := 0 }
    lowerValue := 823543
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 7 0)) },
  { key := { q := 7, n := 7, r := 1 }
    lowerValue := 19153
    upperValue := 60025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 1))
    upperTrace := (.lengthenFreeN 4 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 7, r := 2 }
    lowerValue := 1031
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 2))
    upperTrace := (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2)) },
  { key := { q := 7, n := 7, r := 3 }
    lowerValue := 99
    upperValue := 1127
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 3))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2)))))) },
  { key := { q := 7, n := 7, r := 4 }
    lowerValue := 16
    upperValue := 161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 4))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2))))) },
  { key := { q := 7, n := 7, r := 5 }
    lowerValue := 7
    upperValue := 23
    lowerTrace := (.radiusBack (by decide : 5 ≤ 6) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 7 6)))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 7) (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2)))) },
  { key := { q := 7, n := 7, r := 6 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 7 6))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 7 6)) },
  { key := { q := 7, n := 7, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 7)) },
  { key := { q := 7, n := 7, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 8)) },
  { key := { q := 7, n := 7, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 9)) },
  { key := { q := 7, n := 7, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 10)) },
  { key := { q := 7, n := 7, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 11)) },
  { key := { q := 7, n := 7, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 12)) },
  { key := { q := 7, n := 7, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 13)) },
  { key := { q := 7, n := 7, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 14)) },
  { key := { q := 7, n := 7, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 15)) },
  { key := { q := 7, n := 7, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 16)) },
  { key := { q := 7, n := 7, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 17)) },
  { key := { q := 7, n := 7, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 18)) },
  { key := { q := 7, n := 7, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 19)) },
  { key := { q := 7, n := 7, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 20)) },
  { key := { q := 7, n := 7, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 21)) },
  { key := { q := 7, n := 7, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 22)) },
  { key := { q := 7, n := 7, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 23)) },
  { key := { q := 7, n := 7, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 24)) },
  { key := { q := 7, n := 7, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 25)) },
  { key := { q := 7, n := 7, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 26)) },
  { key := { q := 7, n := 7, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 27)) },
  { key := { q := 7, n := 7, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 28)) },
  { key := { q := 7, n := 7, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 29)) },
  { key := { q := 7, n := 7, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 30)) },
  { key := { q := 7, n := 7, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 31)) },
  { key := { q := 7, n := 7, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 32)) },
  { key := { q := 7, n := 7, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 33)) },
  { key := { q := 7, n := 7, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 34)) },
  { key := { q := 7, n := 7, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 35)) },
  { key := { q := 7, n := 7, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 36)) },
  { key := { q := 7, n := 7, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 37)) },
  { key := { q := 7, n := 7, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 38)) },
  { key := { q := 7, n := 7, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 39)) },
  { key := { q := 7, n := 7, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 40)) },
  { key := { q := 7, n := 7, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 41)) },
  { key := { q := 7, n := 7, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 42)) },
  { key := { q := 7, n := 7, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 43)) },
  { key := { q := 7, n := 7, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 44)) },
  { key := { q := 7, n := 7, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 45)) },
  { key := { q := 7, n := 7, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 46)) },
  { key := { q := 7, n := 7, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 47)) },
  { key := { q := 7, n := 7, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 7 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 7 48)) },
  { key := { q := 7, n := 8, r := 0 }
    lowerValue := 5764801
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 8 0)) },
  { key := { q := 7, n := 8, r := 1 }
    lowerValue := 117649
    upperValue := 420175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 1))
    upperTrace := (.lengthenFreeN 5 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 8, r := 2 }
    lowerValue := 5454
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 2))
    upperTrace := (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))) },
  { key := { q := 7, n := 8, r := 3 }
    lowerValue := 439
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 3))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 7) (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))) },
  { key := { q := 7, n := 8, r := 4 }
    lowerValue := 56
    upperValue := 343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 4))
    upperTrace := (.primitive "lean_known_bounds_q7_n8_r4_vandermonde_syndrome" (primitiveUpper_valid 7 8 4)) },
  { key := { q := 7, n := 8, r := 5 }
    lowerValue := 11
    upperValue := 161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 5))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2))))) },
  { key := { q := 7, n := 8, r := 6 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 6 ≤ 7) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 8 7)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 8 6)) },
  { key := { q := 7, n := 8, r := 7 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 8 7))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 8 7)) },
  { key := { q := 7, n := 8, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 8)) },
  { key := { q := 7, n := 8, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 9)) },
  { key := { q := 7, n := 8, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 10)) },
  { key := { q := 7, n := 8, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 11)) },
  { key := { q := 7, n := 8, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 12)) },
  { key := { q := 7, n := 8, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 13)) },
  { key := { q := 7, n := 8, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 14)) },
  { key := { q := 7, n := 8, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 15)) },
  { key := { q := 7, n := 8, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 16)) },
  { key := { q := 7, n := 8, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 17)) },
  { key := { q := 7, n := 8, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 18)) },
  { key := { q := 7, n := 8, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 19)) },
  { key := { q := 7, n := 8, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 20)) },
  { key := { q := 7, n := 8, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 21)) },
  { key := { q := 7, n := 8, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 22)) },
  { key := { q := 7, n := 8, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 23)) },
  { key := { q := 7, n := 8, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 24)) },
  { key := { q := 7, n := 8, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 25)) },
  { key := { q := 7, n := 8, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 26)) },
  { key := { q := 7, n := 8, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 27)) },
  { key := { q := 7, n := 8, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 28)) },
  { key := { q := 7, n := 8, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 29)) },
  { key := { q := 7, n := 8, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 30)) },
  { key := { q := 7, n := 8, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 31)) },
  { key := { q := 7, n := 8, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 32)) },
  { key := { q := 7, n := 8, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 33)) },
  { key := { q := 7, n := 8, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 34)) },
  { key := { q := 7, n := 8, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 35)) },
  { key := { q := 7, n := 8, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 36)) },
  { key := { q := 7, n := 8, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 37)) },
  { key := { q := 7, n := 8, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 38)) },
  { key := { q := 7, n := 8, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 39)) },
  { key := { q := 7, n := 8, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 40)) },
  { key := { q := 7, n := 8, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 41)) },
  { key := { q := 7, n := 8, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 42)) },
  { key := { q := 7, n := 8, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 43)) },
  { key := { q := 7, n := 8, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 44)) },
  { key := { q := 7, n := 8, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 45)) },
  { key := { q := 7, n := 8, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 46)) },
  { key := { q := 7, n := 8, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 47)) },
  { key := { q := 7, n := 8, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 8 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 8 48)) },
  { key := { q := 7, n := 9, r := 0 }
    lowerValue := 40353607
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 9 0)) },
  { key := { q := 7, n := 9, r := 1 }
    lowerValue := 733702
    upperValue := 2941225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 9 1))
    upperTrace := (.lengthenFreeN 6 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) }]

end CoveringCodes.Database
