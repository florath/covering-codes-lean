import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 31. Do not edit manually.

def precomputedTable_chunk_31 : Array AnyBoundEntry := #[
  { key := { q := 3, n := 11, r := 8 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 8 ≤ 9) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 10 9))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 8)) },
  { key := { q := 3, n := 11, r := 9 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 9 ≤ 10) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 11 10)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 9)) },
  { key := { q := 3, n := 11, r := 10 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 11 10))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 10)) },
  { key := { q := 3, n := 11, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 11)) },
  { key := { q := 3, n := 11, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 12)) },
  { key := { q := 3, n := 11, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 13)) },
  { key := { q := 3, n := 11, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 14)) },
  { key := { q := 3, n := 11, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 15)) },
  { key := { q := 3, n := 11, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 16)) },
  { key := { q := 3, n := 11, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 17)) },
  { key := { q := 3, n := 11, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 18)) },
  { key := { q := 3, n := 11, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 19)) },
  { key := { q := 3, n := 11, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 20)) },
  { key := { q := 3, n := 11, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 21)) },
  { key := { q := 3, n := 11, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 22)) },
  { key := { q := 3, n := 11, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 23)) },
  { key := { q := 3, n := 11, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 24)) },
  { key := { q := 3, n := 11, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 25)) },
  { key := { q := 3, n := 11, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 26)) },
  { key := { q := 3, n := 11, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 27)) },
  { key := { q := 3, n := 11, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 28)) },
  { key := { q := 3, n := 11, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 29)) },
  { key := { q := 3, n := 11, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 30)) },
  { key := { q := 3, n := 11, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 31)) },
  { key := { q := 3, n := 11, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 32)) },
  { key := { q := 3, n := 11, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 33)) },
  { key := { q := 3, n := 11, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 34)) },
  { key := { q := 3, n := 11, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 35)) },
  { key := { q := 3, n := 11, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 36)) },
  { key := { q := 3, n := 11, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 37)) },
  { key := { q := 3, n := 11, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 38)) },
  { key := { q := 3, n := 11, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 39)) },
  { key := { q := 3, n := 11, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 40)) },
  { key := { q := 3, n := 11, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 41)) },
  { key := { q := 3, n := 11, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 42)) },
  { key := { q := 3, n := 11, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 43)) },
  { key := { q := 3, n := 11, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 44)) },
  { key := { q := 3, n := 11, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 45)) },
  { key := { q := 3, n := 11, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 46)) },
  { key := { q := 3, n := 11, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 47)) },
  { key := { q := 3, n := 11, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 11 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 11 48)) },
  { key := { q := 3, n := 12, r := 0 }
    lowerValue := 531441
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 12 0)) },
  { key := { q := 3, n := 12, r := 1 }
    lowerValue := 21258
    upperValue := 39366
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 1))
    upperTrace := (.lengthenFreeN 4 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))) },
  { key := { q := 3, n := 12, r := 2 }
    lowerValue := 1839
    upperValue := 12393
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 2))
    upperTrace := (.lengthenFreeN 6 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))) },
  { key := { q := 3, n := 12, r := 3 }
    lowerValue := 260
    upperValue := 4131
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 3))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))))) },
  { key := { q := 3, n := 12, r := 4 }
    lowerValue := 54
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 4))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 7 4))) },
  { key := { q := 3, n := 12, r := 5 }
    lowerValue := 16
    upperValue := 243
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 5))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 8 5))) },
  { key := { q := 3, n := 12, r := 6 }
    lowerValue := 6
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 6))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 12, r := 7 }
    lowerValue := 3
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 7))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 12, r := 8 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 8 ≤ 9) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 10 9)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 12 8)) },
  { key := { q := 3, n := 12, r := 9 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 9 ≤ 10) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 11 10))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 12 9)) },
  { key := { q := 3, n := 12, r := 10 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 12 11)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 12 10)) },
  { key := { q := 3, n := 12, r := 11 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 12 11))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 12 11)) },
  { key := { q := 3, n := 12, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 12)) },
  { key := { q := 3, n := 12, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 13)) },
  { key := { q := 3, n := 12, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 14)) },
  { key := { q := 3, n := 12, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 15)) },
  { key := { q := 3, n := 12, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 16)) },
  { key := { q := 3, n := 12, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 17)) },
  { key := { q := 3, n := 12, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 18)) },
  { key := { q := 3, n := 12, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 19)) },
  { key := { q := 3, n := 12, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 20)) },
  { key := { q := 3, n := 12, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 21)) },
  { key := { q := 3, n := 12, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 22)) },
  { key := { q := 3, n := 12, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 23)) },
  { key := { q := 3, n := 12, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 24)) },
  { key := { q := 3, n := 12, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 25)) },
  { key := { q := 3, n := 12, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 26)) },
  { key := { q := 3, n := 12, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 27)) },
  { key := { q := 3, n := 12, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 28)) },
  { key := { q := 3, n := 12, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 29)) },
  { key := { q := 3, n := 12, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 30)) },
  { key := { q := 3, n := 12, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 31)) },
  { key := { q := 3, n := 12, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 32)) },
  { key := { q := 3, n := 12, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 33)) },
  { key := { q := 3, n := 12, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 34)) },
  { key := { q := 3, n := 12, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 35)) },
  { key := { q := 3, n := 12, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 36)) },
  { key := { q := 3, n := 12, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 37)) },
  { key := { q := 3, n := 12, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 38)) },
  { key := { q := 3, n := 12, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 39)) },
  { key := { q := 3, n := 12, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 40)) },
  { key := { q := 3, n := 12, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 41)) },
  { key := { q := 3, n := 12, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 42)) },
  { key := { q := 3, n := 12, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 43)) },
  { key := { q := 3, n := 12, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 44)) },
  { key := { q := 3, n := 12, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 45)) },
  { key := { q := 3, n := 12, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 46)) },
  { key := { q := 3, n := 12, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 47)) },
  { key := { q := 3, n := 12, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 12 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 12 48)) },
  { key := { q := 3, n := 13, r := 0 }
    lowerValue := 1594323
    upperValue := 1594323
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 13 0)) },
  { key := { q := 3, n := 13, r := 1 }
    lowerValue := 59049
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 1))
    upperTrace := (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1)) },
  { key := { q := 3, n := 13, r := 2 }
    lowerValue := 4704
    upperValue := 37179
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 2))
    upperTrace := (.lengthenFreeN 7 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))) },
  { key := { q := 3, n := 13, r := 3 }
    lowerValue := 607
    upperValue := 12393
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 3))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))))) },
  { key := { q := 3, n := 13, r := 4 }
    lowerValue := 114
    upperValue := 2187
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 4))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 7 4))) },
  { key := { q := 3, n := 13, r := 5 }
    lowerValue := 29
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 5))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 8 5))) },
  { key := { q := 3, n := 13, r := 6 }
    lowerValue := 10
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 6))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 13, r := 7 }
    lowerValue := 5
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 7))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 13, r := 8 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 8))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8)) },
  { key := { q := 3, n := 13, r := 9 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 9 ≤ 10) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 11 10)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 9)) },
  { key := { q := 3, n := 13, r := 10 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 12 11))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 10)) },
  { key := { q := 3, n := 13, r := 11 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 13 12)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 11)) },
  { key := { q := 3, n := 13, r := 12 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 13 12))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 12)) },
  { key := { q := 3, n := 13, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 13)) },
  { key := { q := 3, n := 13, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 14)) },
  { key := { q := 3, n := 13, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 15)) },
  { key := { q := 3, n := 13, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 16)) },
  { key := { q := 3, n := 13, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 17)) },
  { key := { q := 3, n := 13, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 18)) },
  { key := { q := 3, n := 13, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 19)) },
  { key := { q := 3, n := 13, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 20)) },
  { key := { q := 3, n := 13, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 21)) },
  { key := { q := 3, n := 13, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 22)) },
  { key := { q := 3, n := 13, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 23)) },
  { key := { q := 3, n := 13, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 24)) },
  { key := { q := 3, n := 13, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 25)) },
  { key := { q := 3, n := 13, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 26)) },
  { key := { q := 3, n := 13, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 27)) },
  { key := { q := 3, n := 13, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 28)) },
  { key := { q := 3, n := 13, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 29)) },
  { key := { q := 3, n := 13, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 30)) },
  { key := { q := 3, n := 13, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 31)) },
  { key := { q := 3, n := 13, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 32)) },
  { key := { q := 3, n := 13, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 33)) },
  { key := { q := 3, n := 13, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 34)) },
  { key := { q := 3, n := 13, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 35)) },
  { key := { q := 3, n := 13, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 36)) },
  { key := { q := 3, n := 13, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 37)) },
  { key := { q := 3, n := 13, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 38)) },
  { key := { q := 3, n := 13, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 39)) },
  { key := { q := 3, n := 13, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 40)) },
  { key := { q := 3, n := 13, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 41)) },
  { key := { q := 3, n := 13, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 42)) },
  { key := { q := 3, n := 13, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 43)) },
  { key := { q := 3, n := 13, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 44)) },
  { key := { q := 3, n := 13, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 45)) },
  { key := { q := 3, n := 13, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 46)) },
  { key := { q := 3, n := 13, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 47)) },
  { key := { q := 3, n := 13, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 13 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 13 48)) },
  { key := { q := 3, n := 14, r := 0 }
    lowerValue := 4782969
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 14 0)) },
  { key := { q := 3, n := 14, r := 1 }
    lowerValue := 164930
    upperValue := 177147
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 1))
    upperTrace := (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))) },
  { key := { q := 3, n := 14, r := 2 }
    lowerValue := 12171
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 2))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 3) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))) },
  { key := { q := 3, n := 14, r := 3 }
    lowerValue := 1448
    upperValue := 37179
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 3))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 3 6 2))))) },
  { key := { q := 3, n := 14, r := 4 }
    lowerValue := 248
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 4))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 7 4))) },
  { key := { q := 3, n := 14, r := 5 }
    lowerValue := 58
    upperValue := 2187
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 5))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 8 5))) },
  { key := { q := 3, n := 14, r := 6 }
    lowerValue := 18
    upperValue := 243
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 6))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 14, r := 7 }
    lowerValue := 7
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 7))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 14, r := 8 }
    lowerValue := 4
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 8))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 14, r := 9 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 9 ≤ 10) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 11 10))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9)) },
  { key := { q := 3, n := 14, r := 10 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 12 11)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 10)) },
  { key := { q := 3, n := 14, r := 11 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 13 12))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 11)) },
  { key := { q := 3, n := 14, r := 12 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 14 13)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 12)) },
  { key := { q := 3, n := 14, r := 13 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 14 13))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 13)) },
  { key := { q := 3, n := 14, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 14)) },
  { key := { q := 3, n := 14, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 15)) },
  { key := { q := 3, n := 14, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 16)) },
  { key := { q := 3, n := 14, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 17)) },
  { key := { q := 3, n := 14, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 18)) },
  { key := { q := 3, n := 14, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 19)) },
  { key := { q := 3, n := 14, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 20)) },
  { key := { q := 3, n := 14, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 21)) },
  { key := { q := 3, n := 14, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 22)) },
  { key := { q := 3, n := 14, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 23)) },
  { key := { q := 3, n := 14, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 24)) },
  { key := { q := 3, n := 14, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 25)) },
  { key := { q := 3, n := 14, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 26)) },
  { key := { q := 3, n := 14, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 27)) },
  { key := { q := 3, n := 14, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 28)) },
  { key := { q := 3, n := 14, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 29)) },
  { key := { q := 3, n := 14, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 30)) },
  { key := { q := 3, n := 14, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 31)) },
  { key := { q := 3, n := 14, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 32)) },
  { key := { q := 3, n := 14, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 33)) },
  { key := { q := 3, n := 14, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 34)) },
  { key := { q := 3, n := 14, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 35)) },
  { key := { q := 3, n := 14, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 36)) },
  { key := { q := 3, n := 14, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 37)) },
  { key := { q := 3, n := 14, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 38)) },
  { key := { q := 3, n := 14, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 39)) },
  { key := { q := 3, n := 14, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 40)) },
  { key := { q := 3, n := 14, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 41)) },
  { key := { q := 3, n := 14, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 42)) },
  { key := { q := 3, n := 14, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 43)) },
  { key := { q := 3, n := 14, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 44)) },
  { key := { q := 3, n := 14, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 45)) },
  { key := { q := 3, n := 14, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 46)) },
  { key := { q := 3, n := 14, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 47)) },
  { key := { q := 3, n := 14, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 14 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 14 48)) },
  { key := { q := 3, n := 15, r := 0 }
    lowerValue := 14348907
    upperValue := 14348907
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 15 0)) },
  { key := { q := 3, n := 15, r := 1 }
    lowerValue := 462868
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 1))
    upperTrace := (.lengthenFreeN 2 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))) },
  { key := { q := 3, n := 15, r := 2 }
    lowerValue := 31816
    upperValue := 177147
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 2))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1)))) },
  { key := { q := 3, n := 15, r := 3 }
    lowerValue := 3508
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 3))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 3) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))) },
  { key := { q := 3, n := 15, r := 4 }
    lowerValue := 554
    upperValue := 19683
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 4))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 7 4))) },
  { key := { q := 3, n := 15, r := 5 }
    lowerValue := 118
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 5))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 8 5))) },
  { key := { q := 3, n := 15, r := 6 }
    lowerValue := 33
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 6))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 15, r := 7 }
    lowerValue := 12
    upperValue := 243
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 7))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 15, r := 8 }
    lowerValue := 5
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 8))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 15, r := 9 }
    lowerValue := 3
    upperValue := 9
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 9))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 15, r := 10 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 12 11))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 15 10)) },
  { key := { q := 3, n := 15, r := 11 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 13 12)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 15 11)) },
  { key := { q := 3, n := 15, r := 12 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 14 13))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 15 12)) },
  { key := { q := 3, n := 15, r := 13 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 15 14)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 15 13)) },
  { key := { q := 3, n := 15, r := 14 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 15 14))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 15 14)) },
  { key := { q := 3, n := 15, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 15)) },
  { key := { q := 3, n := 15, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 16)) },
  { key := { q := 3, n := 15, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 17)) },
  { key := { q := 3, n := 15, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 18)) },
  { key := { q := 3, n := 15, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 19)) },
  { key := { q := 3, n := 15, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 20)) },
  { key := { q := 3, n := 15, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 21)) },
  { key := { q := 3, n := 15, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 22)) },
  { key := { q := 3, n := 15, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 23)) },
  { key := { q := 3, n := 15, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 24)) },
  { key := { q := 3, n := 15, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 25)) },
  { key := { q := 3, n := 15, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 26)) },
  { key := { q := 3, n := 15, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 27)) },
  { key := { q := 3, n := 15, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 28)) },
  { key := { q := 3, n := 15, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 29)) },
  { key := { q := 3, n := 15, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 30)) },
  { key := { q := 3, n := 15, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 31)) },
  { key := { q := 3, n := 15, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 32)) },
  { key := { q := 3, n := 15, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 33)) },
  { key := { q := 3, n := 15, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 34)) },
  { key := { q := 3, n := 15, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 35)) },
  { key := { q := 3, n := 15, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 36)) },
  { key := { q := 3, n := 15, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 37)) },
  { key := { q := 3, n := 15, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 38)) },
  { key := { q := 3, n := 15, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 39)) },
  { key := { q := 3, n := 15, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 40)) },
  { key := { q := 3, n := 15, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 41)) },
  { key := { q := 3, n := 15, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 42)) },
  { key := { q := 3, n := 15, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 43)) },
  { key := { q := 3, n := 15, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 44)) },
  { key := { q := 3, n := 15, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 45)) },
  { key := { q := 3, n := 15, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 46)) },
  { key := { q := 3, n := 15, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 47)) },
  { key := { q := 3, n := 15, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 15 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 3 15 48)) },
  { key := { q := 3, n := 16, r := 0 }
    lowerValue := 43046721
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 16 0)) },
  { key := { q := 3, n := 16, r := 1 }
    lowerValue := 1304447
    upperValue := 1594323
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 1))
    upperTrace := (.lengthenFreeN 3 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))) },
  { key := { q := 3, n := 16, r := 2 }
    lowerValue := 83912
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 2))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))))) },
  { key := { q := 3, n := 16, r := 3 }
    lowerValue := 8622
    upperValue := 177147
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 3))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 3) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1)))) },
  { key := { q := 3, n := 16, r := 4 }
    lowerValue := 1262
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 4))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 3) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 3 13 1))) },
  { key := { q := 3, n := 16, r := 5 }
    lowerValue := 248
    upperValue := 19683
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 5))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 8 5))) },
  { key := { q := 3, n := 16, r := 6 }
    lowerValue := 63
    upperValue := 2187
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 6))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 10 6))) },
  { key := { q := 3, n := 16, r := 7 }
    lowerValue := 21
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 7))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 11 7))) },
  { key := { q := 3, n := 16, r := 8 }
    lowerValue := 8
    upperValue := 81
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 8))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 13 8))) },
  { key := { q := 3, n := 16, r := 9 }
    lowerValue := 4
    upperValue := 27
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 9))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 14 9))) },
  { key := { q := 3, n := 16, r := 10 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 16 10))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 10)) },
  { key := { q := 3, n := 16, r := 11 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 13 12))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 11)) },
  { key := { q := 3, n := 16, r := 12 }
    lowerValue := 3
    upperValue := 3
    lowerTrace := (.lengthBack (by decide : 0 < 3) (.lengthBack (by decide : 0 < 3) (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 3 14 13)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 3 16 12)) }]

end CoveringCodes.Database
