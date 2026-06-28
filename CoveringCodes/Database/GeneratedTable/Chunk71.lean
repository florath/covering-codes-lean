import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 71. Do not edit manually.

def precomputedTable_chunk_71 : Array AnyBoundEntry := #[
  { key := { q := 7, n := 19, r := 12 }
    lowerValue := 80
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 12))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 19, r := 13 }
    lowerValue := 23
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 13))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 19, r := 14 }
    lowerValue := 9
    upperValue := 343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 14))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 19, r := 15 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 17 16)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 19, r := 16 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 18 17))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16)) },
  { key := { q := 7, n := 19, r := 17 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 19 18)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 17)) },
  { key := { q := 7, n := 19, r := 18 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 19 18))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 18)) },
  { key := { q := 7, n := 19, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 19)) },
  { key := { q := 7, n := 19, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 20)) },
  { key := { q := 7, n := 19, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 21)) },
  { key := { q := 7, n := 19, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 22)) },
  { key := { q := 7, n := 19, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 23)) },
  { key := { q := 7, n := 19, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 24)) },
  { key := { q := 7, n := 19, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 25)) },
  { key := { q := 7, n := 19, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 26)) },
  { key := { q := 7, n := 19, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 27)) },
  { key := { q := 7, n := 19, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 28)) },
  { key := { q := 7, n := 19, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 29)) },
  { key := { q := 7, n := 19, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 30)) },
  { key := { q := 7, n := 19, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 31)) },
  { key := { q := 7, n := 19, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 32)) },
  { key := { q := 7, n := 19, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 33)) },
  { key := { q := 7, n := 19, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 34)) },
  { key := { q := 7, n := 19, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 35)) },
  { key := { q := 7, n := 19, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 36)) },
  { key := { q := 7, n := 19, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 37)) },
  { key := { q := 7, n := 19, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 38)) },
  { key := { q := 7, n := 19, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 39)) },
  { key := { q := 7, n := 19, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 40)) },
  { key := { q := 7, n := 19, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 41)) },
  { key := { q := 7, n := 19, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 42)) },
  { key := { q := 7, n := 19, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 43)) },
  { key := { q := 7, n := 19, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 44)) },
  { key := { q := 7, n := 19, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 45)) },
  { key := { q := 7, n := 19, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 46)) },
  { key := { q := 7, n := 19, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 47)) },
  { key := { q := 7, n := 19, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 19 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 19 48)) },
  { key := { q := 7, n := 20, r := 0 }
    lowerValue := 79792266297612001
    upperValue := 79792266297612001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 20 0)) },
  { key := { q := 7, n := 20, r := 1 }
    lowerValue := 659440217335637
    upperValue := 1628413597910449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 1))
    upperTrace := (.lengthenFreeN 12 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))) },
  { key := { q := 7, n := 20, r := 2 }
    lowerValue := 11462759129093
    upperValue := 232630513987207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 2))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 7, n := 20, r := 3 }
    lowerValue := 315134088324
    upperValue := 16955576821225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 3))
    upperTrace := (.lengthenFreeN 11 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))) },
  { key := { q := 7, n := 20, r := 4 }
    lowerValue := 12214994686
    upperValue := 2422225260175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 4))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 20, r := 5 }
    lowerValue := 627833596
    upperValue := 346032180025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 5))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 20, r := 6 }
    lowerValue := 41226130
    upperValue := 49433168575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 6))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 20, r := 7 }
    lowerValue := 3375862
    upperValue := 7061881225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 7))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 20, r := 8 }
    lowerValue := 339228
    upperValue := 1008840175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 8))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 5 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 20, r := 9 }
    lowerValue := 41389
    upperValue := 144120025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 9))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 6 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 20, r := 10 }
    lowerValue := 6092
    upperValue := 20588575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 10))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 7 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 20, r := 11 }
    lowerValue := 1078
    upperValue := 2941225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 11))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 8 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 20, r := 12 }
    lowerValue := 230
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 12))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 20, r := 13 }
    lowerValue := 59
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 13))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 20, r := 14 }
    lowerValue := 19
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 14))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 20, r := 15 }
    lowerValue := 7
    upperValue := 343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 15))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 20, r := 16 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 18 17)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 20, r := 17 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 19 18))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17)) },
  { key := { q := 7, n := 20, r := 18 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 20 19)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 18)) },
  { key := { q := 7, n := 20, r := 19 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 20 19))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 19)) },
  { key := { q := 7, n := 20, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 20)) },
  { key := { q := 7, n := 20, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 21)) },
  { key := { q := 7, n := 20, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 22)) },
  { key := { q := 7, n := 20, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 23)) },
  { key := { q := 7, n := 20, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 24)) },
  { key := { q := 7, n := 20, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 25)) },
  { key := { q := 7, n := 20, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 26)) },
  { key := { q := 7, n := 20, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 27)) },
  { key := { q := 7, n := 20, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 28)) },
  { key := { q := 7, n := 20, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 29)) },
  { key := { q := 7, n := 20, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 30)) },
  { key := { q := 7, n := 20, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 31)) },
  { key := { q := 7, n := 20, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 32)) },
  { key := { q := 7, n := 20, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 33)) },
  { key := { q := 7, n := 20, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 34)) },
  { key := { q := 7, n := 20, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 35)) },
  { key := { q := 7, n := 20, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 36)) },
  { key := { q := 7, n := 20, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 37)) },
  { key := { q := 7, n := 20, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 38)) },
  { key := { q := 7, n := 20, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 39)) },
  { key := { q := 7, n := 20, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 40)) },
  { key := { q := 7, n := 20, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 41)) },
  { key := { q := 7, n := 20, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 42)) },
  { key := { q := 7, n := 20, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 43)) },
  { key := { q := 7, n := 20, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 44)) },
  { key := { q := 7, n := 20, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 45)) },
  { key := { q := 7, n := 20, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 46)) },
  { key := { q := 7, n := 20, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 47)) },
  { key := { q := 7, n := 20, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 20 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 20 48)) },
  { key := { q := 7, n := 21, r := 0 }
    lowerValue := 558545864083284007
    upperValue := 558545864083284007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 21 0)) },
  { key := { q := 7, n := 21, r := 1 }
    lowerValue := 4397998929789638
    upperValue := 11398895185373143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 1))
    upperTrace := (.lengthenFreeN 13 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))) },
  { key := { q := 7, n := 21, r := 2 }
    lowerValue := 72661098488785
    upperValue := 1628413597910449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 2))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 7, n := 21, r := 3 }
    lowerValue := 1893587635510
    upperValue := 118689037748575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 3))
    upperTrace := (.lengthenFreeN 12 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))) },
  { key := { q := 7, n := 21, r := 4 }
    lowerValue := 69371420364
    upperValue := 16955576821225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 4))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 21, r := 5 }
    lowerValue := 3358960130
    upperValue := 2422225260175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 5))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 21, r := 6 }
    lowerValue := 207020153
    upperValue := 346032180025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 6))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 21, r := 7 }
    lowerValue := 15845730
    upperValue := 49433168575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 7))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 21, r := 8 }
    lowerValue := 1481421
    upperValue := 7061881225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 8))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 5 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 21, r := 9 }
    lowerValue := 167271
    upperValue := 1008840175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 9))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 6 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 21, r := 10 }
    lowerValue := 22644
    upperValue := 144120025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 10))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 7 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 21, r := 11 }
    lowerValue := 3660
    upperValue := 20588575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 11))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 8 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 21, r := 12 }
    lowerValue := 705
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 12))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 21, r := 13 }
    lowerValue := 162
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 13))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 21, r := 14 }
    lowerValue := 45
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 14))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 21, r := 15 }
    lowerValue := 15
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 15))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 21, r := 16 }
    lowerValue := 7
    upperValue := 343
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 18 17))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 21, r := 17 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 19 18)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 21, r := 18 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 20 19))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 21 18)) },
  { key := { q := 7, n := 21, r := 19 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 21 20)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 21 19)) },
  { key := { q := 7, n := 21, r := 20 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 21 20))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 21 20)) },
  { key := { q := 7, n := 21, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 21)) },
  { key := { q := 7, n := 21, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 22)) },
  { key := { q := 7, n := 21, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 23)) },
  { key := { q := 7, n := 21, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 24)) },
  { key := { q := 7, n := 21, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 25)) },
  { key := { q := 7, n := 21, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 26)) },
  { key := { q := 7, n := 21, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 27)) },
  { key := { q := 7, n := 21, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 28)) },
  { key := { q := 7, n := 21, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 29)) },
  { key := { q := 7, n := 21, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 30)) },
  { key := { q := 7, n := 21, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 31)) },
  { key := { q := 7, n := 21, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 32)) },
  { key := { q := 7, n := 21, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 33)) },
  { key := { q := 7, n := 21, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 34)) },
  { key := { q := 7, n := 21, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 35)) },
  { key := { q := 7, n := 21, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 36)) },
  { key := { q := 7, n := 21, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 37)) },
  { key := { q := 7, n := 21, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 38)) },
  { key := { q := 7, n := 21, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 39)) },
  { key := { q := 7, n := 21, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 40)) },
  { key := { q := 7, n := 21, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 41)) },
  { key := { q := 7, n := 21, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 42)) },
  { key := { q := 7, n := 21, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 43)) },
  { key := { q := 7, n := 21, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 44)) },
  { key := { q := 7, n := 21, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 45)) },
  { key := { q := 7, n := 21, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 46)) },
  { key := { q := 7, n := 21, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 47)) },
  { key := { q := 7, n := 21, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 21 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 21 48)) },
  { key := { q := 7, n := 22, r := 0 }
    lowerValue := 3909821048582988049
    upperValue := 3909821048582988049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 22 0)) },
  { key := { q := 7, n := 22, r := 1 }
    lowerValue := 29397150741225475
    upperValue := 79792266297612001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 1))
    upperTrace := (.lengthenFreeN 14 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))) },
  { key := { q := 7, n := 22, r := 2 }
    lowerValue := 462755479770741
    upperValue := 11398895185373143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 2))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 7, n := 22, r := 3 }
    lowerValue := 11462759129093
    upperValue := 830823264240025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 3))
    upperTrace := (.lengthenFreeN 13 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))) },
  { key := { q := 7, n := 22, r := 4 }
    lowerValue := 398094906360
    upperValue := 118689037748575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 4))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 22, r := 5 }
    lowerValue := 18219576046
    upperValue := 16955576821225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 5))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 22, r := 6 }
    lowerValue := 1057926826
    upperValue := 2422225260175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 6))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 22, r := 7 }
    lowerValue := 76011629
    upperValue := 346032180025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 7))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 22, r := 8 }
    lowerValue := 6643391
    upperValue := 49433168575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 8))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 5 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 22, r := 9 }
    lowerValue := 698011
    upperValue := 7061881225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 9))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 6 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 22, r := 10 }
    lowerValue := 87465
    upperValue := 1008840175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 10))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 7 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 22, r := 11 }
    lowerValue := 13006
    upperValue := 144120025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 11))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 8 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 22, r := 12 }
    lowerValue := 2289
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 12))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 22, r := 13 }
    lowerValue := 477
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 13))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 22, r := 14 }
    lowerValue := 118
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 14))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 22, r := 15 }
    lowerValue := 35
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 15))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 22, r := 16 }
    lowerValue := 13
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 16))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 22, r := 17 }
    lowerValue := 7
    upperValue := 343
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 19 18))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 22, r := 18 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 20 19)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18)) },
  { key := { q := 7, n := 22, r := 19 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 21 20))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 19)) },
  { key := { q := 7, n := 22, r := 20 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 22 21)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 20)) },
  { key := { q := 7, n := 22, r := 21 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 22 21))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 21)) },
  { key := { q := 7, n := 22, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 22)) },
  { key := { q := 7, n := 22, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 23)) },
  { key := { q := 7, n := 22, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 24)) },
  { key := { q := 7, n := 22, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 25)) },
  { key := { q := 7, n := 22, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 26)) },
  { key := { q := 7, n := 22, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 27)) },
  { key := { q := 7, n := 22, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 28)) },
  { key := { q := 7, n := 22, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 29)) },
  { key := { q := 7, n := 22, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 30)) },
  { key := { q := 7, n := 22, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 31)) },
  { key := { q := 7, n := 22, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 32)) },
  { key := { q := 7, n := 22, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 33)) },
  { key := { q := 7, n := 22, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 34)) },
  { key := { q := 7, n := 22, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 35)) },
  { key := { q := 7, n := 22, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 36)) },
  { key := { q := 7, n := 22, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 37)) },
  { key := { q := 7, n := 22, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 38)) },
  { key := { q := 7, n := 22, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 39)) },
  { key := { q := 7, n := 22, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 40)) },
  { key := { q := 7, n := 22, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 41)) },
  { key := { q := 7, n := 22, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 42)) },
  { key := { q := 7, n := 22, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 43)) },
  { key := { q := 7, n := 22, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 44)) },
  { key := { q := 7, n := 22, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 45)) },
  { key := { q := 7, n := 22, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 46)) },
  { key := { q := 7, n := 22, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 47)) },
  { key := { q := 7, n := 22, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 22 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 22 48)) },
  { key := { q := 7, n := 23, r := 0 }
    lowerValue := 27368747340080916343
    upperValue := 27368747340080916343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 23 0)) },
  { key := { q := 7, n := 23, r := 1 }
    lowerValue := 196897462878279974
    upperValue := 558545864083284007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 1))
    upperTrace := (.lengthenFreeN 15 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))) },
  { key := { q := 7, n := 23, r := 2 }
    lowerValue := 2959743413007561
    upperValue := 79792266297612001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 2))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 7, n := 23, r := 3 }
    lowerValue := 69856903796441
    upperValue := 5815762849680175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 3))
    upperTrace := (.lengthenFreeN 14 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))) },
  { key := { q := 7, n := 23, r := 4 }
    lowerValue := 2306122622083
    upperValue := 830823264240025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 4))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 23, r := 5 }
    lowerValue := 100060319136
    upperValue := 118689037748575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 5))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 23, r := 6 }
    lowerValue := 5492086756
    upperValue := 16955576821225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 6))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 23, r := 7 }
    lowerValue := 371799505
    upperValue := 2422225260175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 7))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 23, r := 8 }
    lowerValue := 30506295
    upperValue := 346032180025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 8))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 5 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 23, r := 9 }
    lowerValue := 2996838
    upperValue := 49433168575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 9))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 6 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 23, r := 10 }
    lowerValue := 349494
    upperValue := 7061881225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 10))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 7 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 23, r := 11 }
    lowerValue := 48114
    upperValue := 1008840175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 11))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 8 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 23, r := 12 }
    lowerValue := 7793
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 12))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 23, r := 13 }
    lowerValue := 1484
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 13))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 23, r := 14 }
    lowerValue := 332
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 14))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 23, r := 15 }
    lowerValue := 88
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 15))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 23, r := 16 }
    lowerValue := 28
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 16))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 23, r := 17 }
    lowerValue := 11
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 17))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 23, r := 18 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 20 19))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18))) },
  { key := { q := 7, n := 23, r := 19 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 21 20)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 19)) },
  { key := { q := 7, n := 23, r := 20 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 22 21))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 20)) },
  { key := { q := 7, n := 23, r := 21 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 23 22)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 21)) },
  { key := { q := 7, n := 23, r := 22 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 23 22))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 22)) },
  { key := { q := 7, n := 23, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 23 23)) },
  { key := { q := 7, n := 23, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 23 24)) },
  { key := { q := 7, n := 23, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 23 25)) },
  { key := { q := 7, n := 23, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 23 26)) },
  { key := { q := 7, n := 23, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 23 27)) },
  { key := { q := 7, n := 23, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 23 28)) },
  { key := { q := 7, n := 23, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 23 29)) },
  { key := { q := 7, n := 23, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 23 30)) },
  { key := { q := 7, n := 23, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 23 31)) },
  { key := { q := 7, n := 23, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 23 32)) },
  { key := { q := 7, n := 23, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 23 33)) },
  { key := { q := 7, n := 23, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 23 34)) },
  { key := { q := 7, n := 23, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 23 35)) },
  { key := { q := 7, n := 23, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 23 36)) },
  { key := { q := 7, n := 23, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 23 37)) },
  { key := { q := 7, n := 23, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 23 38)) },
  { key := { q := 7, n := 23, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 23 39)) },
  { key := { q := 7, n := 23, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 23 40)) },
  { key := { q := 7, n := 23, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 23 41)) },
  { key := { q := 7, n := 23, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 23 42)) },
  { key := { q := 7, n := 23, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 23 43)) },
  { key := { q := 7, n := 23, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 23 44)) },
  { key := { q := 7, n := 23, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 23 45)) },
  { key := { q := 7, n := 23, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 23 46)) },
  { key := { q := 7, n := 23, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 23 47)) },
  { key := { q := 7, n := 23, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 23 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 23 48)) },
  { key := { q := 7, n := 24, r := 0 }
    lowerValue := 191581231380566414401
    upperValue := 191581231380566414401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 24 0)) },
  { key := { q := 7, n := 24, r := 1 }
    lowerValue := 1321249871590113203
    upperValue := 3909821048582988049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 1))
    upperTrace := (.lengthenFreeN 16 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))) },
  { key := { q := 7, n := 24, r := 2 }
    lowerValue := 19004189205492155
    upperValue := 558545864083284007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 2))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 7, n := 24, r := 3 }
    lowerValue := 428339421552249
    upperValue := 40710339947761225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 3))
    upperTrace := (.lengthenFreeN 15 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))) },
  { key := { q := 7, n := 24, r := 4 }
    lowerValue := 13474023945220
    upperValue := 5815762849680175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 4))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 24, r := 5 }
    lowerValue := 555743386287
    upperValue := 830823264240025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 5))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 24, r := 6 }
    lowerValue := 28920363509
    upperValue := 118689037748575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 6))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 24, r := 7 }
    lowerValue := 1850822353
    upperValue := 16955576821225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 7))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 24, r := 8 }
    lowerValue := 143097051
    upperValue := 2422225260175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 8))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 5 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 24, r := 9 }
    lowerValue := 13198438
    upperValue := 346032180025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 9))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 6 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 24, r := 10 }
    lowerValue := 1439324
    upperValue := 49433168575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 10))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 7 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 24, r := 11 }
    lowerValue := 184444
    upperValue := 7061881225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 11))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 8 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 24, r := 12 }
    lowerValue := 27665
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 12))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 24, r := 13 }
    lowerValue := 4847
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 13))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 24, r := 14 }
    lowerValue := 992
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 14))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 24, r := 15 }
    lowerValue := 238
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 15))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 24, r := 16 }
    lowerValue := 67
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 16))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) }]

end CoveringCodes.Database
