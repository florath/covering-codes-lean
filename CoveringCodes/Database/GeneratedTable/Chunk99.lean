import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 99. Do not edit manually.

def precomputedTable_chunk_99 : Array AnyBoundEntry := #[
  { key := { q := 10, n := 15, r := 5 }
    lowerValue := 5358476
    upperValue := 5000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 5))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 15, r := 6 }
    lowerValue := 351311
    upperValue := 500000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 6))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 5 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 15, r := 7 }
    lowerValue := 29740
    upperValue := 50000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 7))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 6 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 15, r := 8 }
    lowerValue := 3220
    upperValue := 5000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 8))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 7 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 15, r := 9 }
    lowerValue := 445
    upperValue := 100000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 9))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 15, r := 10 }
    lowerValue := 79
    upperValue := 10000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 10))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 15, r := 11 }
    lowerValue := 18
    upperValue := 1000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 11))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 15, r := 12 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 14 13))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 15, r := 13 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 15 14)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13)) },
  { key := { q := 10, n := 15, r := 14 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 15 14))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 14)) },
  { key := { q := 10, n := 15, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 15)) },
  { key := { q := 10, n := 15, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 16)) },
  { key := { q := 10, n := 15, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 17)) },
  { key := { q := 10, n := 15, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 18)) },
  { key := { q := 10, n := 15, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 19)) },
  { key := { q := 10, n := 15, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 20)) },
  { key := { q := 10, n := 15, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 21)) },
  { key := { q := 10, n := 15, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 22)) },
  { key := { q := 10, n := 15, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 23)) },
  { key := { q := 10, n := 15, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 24)) },
  { key := { q := 10, n := 15, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 25)) },
  { key := { q := 10, n := 15, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 26)) },
  { key := { q := 10, n := 15, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 27)) },
  { key := { q := 10, n := 15, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 28)) },
  { key := { q := 10, n := 15, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 29)) },
  { key := { q := 10, n := 15, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 30)) },
  { key := { q := 10, n := 15, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 31)) },
  { key := { q := 10, n := 15, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 32)) },
  { key := { q := 10, n := 15, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 33)) },
  { key := { q := 10, n := 15, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 34)) },
  { key := { q := 10, n := 15, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 35)) },
  { key := { q := 10, n := 15, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 36)) },
  { key := { q := 10, n := 15, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 37)) },
  { key := { q := 10, n := 15, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 38)) },
  { key := { q := 10, n := 15, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 39)) },
  { key := { q := 10, n := 15, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 40)) },
  { key := { q := 10, n := 15, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 41)) },
  { key := { q := 10, n := 15, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 42)) },
  { key := { q := 10, n := 15, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 43)) },
  { key := { q := 10, n := 15, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 44)) },
  { key := { q := 10, n := 15, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 45)) },
  { key := { q := 10, n := 15, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 46)) },
  { key := { q := 10, n := 15, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 47)) },
  { key := { q := 10, n := 15, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 15 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 15 48)) },
  { key := { q := 10, n := 16, r := 0 }
    lowerValue := 10000000000000000
    upperValue := 10000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 16 0)) },
  { key := { q := 10, n := 16, r := 1 }
    lowerValue := 68965517241380
    upperValue := 500000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 1))
    upperTrace := (.lengthenFreeN 13 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))) },
  { key := { q := 10, n := 16, r := 2 }
    lowerValue := 1013684744045
    upperValue := 50000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 2))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 16, r := 3 }
    lowerValue := 23917437008
    upperValue := 5000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 3))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 16, r := 4 }
    lowerValue := 809118769
    upperValue := 500000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 4))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 16, r := 5 }
    lowerValue := 36997963
    upperValue := 50000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 5))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 16, r := 6 }
    lowerValue := 2209425
    upperValue := 5000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 6))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 5 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 16, r := 7 }
    lowerValue := 168796
    upperValue := 500000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 7))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 6 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 16, r := 8 }
    lowerValue := 16307
    upperValue := 50000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 8))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 7 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 16, r := 9 }
    lowerValue := 1983
    upperValue := 1000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 9))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 16, r := 10 }
    lowerValue := 304
    upperValue := 100000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 10))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 16, r := 11 }
    lowerValue := 59
    upperValue := 10000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 11))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 16, r := 12 }
    lowerValue := 15
    upperValue := 1000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 12))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 16, r := 13 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 15 14))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 16, r := 14 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 16 15)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14)) },
  { key := { q := 10, n := 16, r := 15 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 16 15))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 15)) },
  { key := { q := 10, n := 16, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 16)) },
  { key := { q := 10, n := 16, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 17)) },
  { key := { q := 10, n := 16, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 18)) },
  { key := { q := 10, n := 16, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 19)) },
  { key := { q := 10, n := 16, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 20)) },
  { key := { q := 10, n := 16, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 21)) },
  { key := { q := 10, n := 16, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 22)) },
  { key := { q := 10, n := 16, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 23)) },
  { key := { q := 10, n := 16, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 24)) },
  { key := { q := 10, n := 16, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 25)) },
  { key := { q := 10, n := 16, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 26)) },
  { key := { q := 10, n := 16, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 27)) },
  { key := { q := 10, n := 16, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 28)) },
  { key := { q := 10, n := 16, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 29)) },
  { key := { q := 10, n := 16, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 30)) },
  { key := { q := 10, n := 16, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 31)) },
  { key := { q := 10, n := 16, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 32)) },
  { key := { q := 10, n := 16, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 33)) },
  { key := { q := 10, n := 16, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 34)) },
  { key := { q := 10, n := 16, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 35)) },
  { key := { q := 10, n := 16, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 36)) },
  { key := { q := 10, n := 16, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 37)) },
  { key := { q := 10, n := 16, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 38)) },
  { key := { q := 10, n := 16, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 39)) },
  { key := { q := 10, n := 16, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 40)) },
  { key := { q := 10, n := 16, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 41)) },
  { key := { q := 10, n := 16, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 42)) },
  { key := { q := 10, n := 16, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 43)) },
  { key := { q := 10, n := 16, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 44)) },
  { key := { q := 10, n := 16, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 45)) },
  { key := { q := 10, n := 16, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 46)) },
  { key := { q := 10, n := 16, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 47)) },
  { key := { q := 10, n := 16, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 16 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 16 48)) },
  { key := { q := 10, n := 17, r := 0 }
    lowerValue := 100000000000000000
    upperValue := 100000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 17 0)) },
  { key := { q := 10, n := 17, r := 1 }
    lowerValue := 649350649350650
    upperValue := 5000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 1))
    upperTrace := (.lengthenFreeN 14 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))) },
  { key := { q := 10, n := 17, r := 2 }
    lowerValue := 8952551477171
    upperValue := 500000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 2))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 17, r := 3 }
    lowerValue := 197281461462
    upperValue := 50000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 3))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 17, r := 4 }
    lowerValue := 6202677448
    upperValue := 5000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 4))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 17, r := 5 }
    lowerValue := 262111325
    upperValue := 500000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 5))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 17, r := 6 }
    lowerValue := 14370643
    upperValue := 50000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 6))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 5 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 17, r := 7 }
    lowerValue := 1000222
    upperValue := 5000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 7))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 6 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 17, r := 8 }
    lowerValue := 87227
    upperValue := 500000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 8))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 7 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 17, r := 9 }
    lowerValue := 9466
    upperValue := 10000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 9))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 17, r := 10 }
    lowerValue := 1276
    upperValue := 1000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 10))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 17, r := 11 }
    lowerValue := 215
    upperValue := 100000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 11))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 17, r := 12 }
    lowerValue := 46
    upperValue := 10000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 12))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 17, r := 13 }
    lowerValue := 13
    upperValue := 1000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 13))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 17, r := 14 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 16 15))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) },
  { key := { q := 10, n := 17, r := 15 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 17 16)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 15)) },
  { key := { q := 10, n := 17, r := 16 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 17 16))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 16)) },
  { key := { q := 10, n := 17, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 17)) },
  { key := { q := 10, n := 17, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 18)) },
  { key := { q := 10, n := 17, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 19)) },
  { key := { q := 10, n := 17, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 20)) },
  { key := { q := 10, n := 17, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 21)) },
  { key := { q := 10, n := 17, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 22)) },
  { key := { q := 10, n := 17, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 23)) },
  { key := { q := 10, n := 17, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 24)) },
  { key := { q := 10, n := 17, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 25)) },
  { key := { q := 10, n := 17, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 26)) },
  { key := { q := 10, n := 17, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 27)) },
  { key := { q := 10, n := 17, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 28)) },
  { key := { q := 10, n := 17, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 29)) },
  { key := { q := 10, n := 17, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 30)) },
  { key := { q := 10, n := 17, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 31)) },
  { key := { q := 10, n := 17, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 32)) },
  { key := { q := 10, n := 17, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 33)) },
  { key := { q := 10, n := 17, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 34)) },
  { key := { q := 10, n := 17, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 35)) },
  { key := { q := 10, n := 17, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 36)) },
  { key := { q := 10, n := 17, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 37)) },
  { key := { q := 10, n := 17, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 38)) },
  { key := { q := 10, n := 17, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 39)) },
  { key := { q := 10, n := 17, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 40)) },
  { key := { q := 10, n := 17, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 41)) },
  { key := { q := 10, n := 17, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 42)) },
  { key := { q := 10, n := 17, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 43)) },
  { key := { q := 10, n := 17, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 44)) },
  { key := { q := 10, n := 17, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 45)) },
  { key := { q := 10, n := 17, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 46)) },
  { key := { q := 10, n := 17, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 47)) },
  { key := { q := 10, n := 17, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 17 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 17 48)) },
  { key := { q := 10, n := 18, r := 0 }
    lowerValue := 1000000000000000000
    upperValue := 1000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 18 0)) },
  { key := { q := 10, n := 18, r := 1 }
    lowerValue := 6134969325153375
    upperValue := 50000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 1))
    upperTrace := (.lengthenFreeN 15 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))) },
  { key := { q := 10, n := 18, r := 2 }
    lowerValue := 79643198470851
    upperValue := 5000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 2))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 18, r := 3 }
    lowerValue := 1646307332653
    upperValue := 500000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 3))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 18, r := 4 }
    lowerValue := 48346361067
    upperValue := 50000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 4))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 18, r := 5 }
    lowerValue := 1898917176
    upperValue := 5000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 5))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 18, r := 6 }
    lowerValue := 96225214
    upperValue := 500000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 6))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 5 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 18, r := 7 }
    lowerValue := 6149854
    upperValue := 50000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 7))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 6 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 18, r := 8 }
    lowerValue := 488701
    upperValue := 5000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 8))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 7 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 18, r := 9 }
    lowerValue := 47887
    upperValue := 100000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 9))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 18, r := 10 }
    lowerValue := 5766
    upperValue := 10000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 10))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 18, r := 11 }
    lowerValue := 854
    upperValue := 1000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 11))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 18, r := 12 }
    lowerValue := 156
    upperValue := 100000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 12))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 18, r := 13 }
    lowerValue := 36
    upperValue := 10000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 13))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 18, r := 14 }
    lowerValue := 11
    upperValue := 1000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 14))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) },
  { key := { q := 10, n := 18, r := 15 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 17 16))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 15))) },
  { key := { q := 10, n := 18, r := 16 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 18 17)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 18 16)) },
  { key := { q := 10, n := 18, r := 17 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 18 17))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 18 17)) },
  { key := { q := 10, n := 18, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 18)) },
  { key := { q := 10, n := 18, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 19)) },
  { key := { q := 10, n := 18, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 20)) },
  { key := { q := 10, n := 18, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 21)) },
  { key := { q := 10, n := 18, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 22)) },
  { key := { q := 10, n := 18, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 23)) },
  { key := { q := 10, n := 18, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 24)) },
  { key := { q := 10, n := 18, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 25)) },
  { key := { q := 10, n := 18, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 26)) },
  { key := { q := 10, n := 18, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 27)) },
  { key := { q := 10, n := 18, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 28)) },
  { key := { q := 10, n := 18, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 29)) },
  { key := { q := 10, n := 18, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 30)) },
  { key := { q := 10, n := 18, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 31)) },
  { key := { q := 10, n := 18, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 32)) },
  { key := { q := 10, n := 18, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 33)) },
  { key := { q := 10, n := 18, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 34)) },
  { key := { q := 10, n := 18, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 35)) },
  { key := { q := 10, n := 18, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 36)) },
  { key := { q := 10, n := 18, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 37)) },
  { key := { q := 10, n := 18, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 38)) },
  { key := { q := 10, n := 18, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 39)) },
  { key := { q := 10, n := 18, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 40)) },
  { key := { q := 10, n := 18, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 41)) },
  { key := { q := 10, n := 18, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 42)) },
  { key := { q := 10, n := 18, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 43)) },
  { key := { q := 10, n := 18, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 44)) },
  { key := { q := 10, n := 18, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 45)) },
  { key := { q := 10, n := 18, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 46)) },
  { key := { q := 10, n := 18, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 47)) },
  { key := { q := 10, n := 18, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 18 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 18 48)) },
  { key := { q := 10, n := 19, r := 0 }
    lowerValue := 10000000000000000000
    upperValue := 10000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 19 0)) },
  { key := { q := 10, n := 19, r := 1 }
    lowerValue := 58139534883720931
    upperValue := 500000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 1))
    upperTrace := (.lengthenFreeN 16 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))) },
  { key := { q := 10, n := 19, r := 2 }
    lowerValue := 713114169578550
    upperValue := 50000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 2))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 19, r := 3 }
    lowerValue := 13880714690238
    upperValue := 5000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 3))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 19, r := 4 }
    lowerValue := 382396601871
    upperValue := 500000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 4))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 19, r := 5 }
    lowerValue := 14029719368
    upperValue := 50000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 5))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 19, r := 6 }
    lowerValue := 660858608
    upperValue := 5000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 6))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 5 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 19, r := 7 }
    lowerValue := 39041749
    upperValue := 500000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 7))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 6 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 19, r := 8 }
    lowerValue := 2849252
    upperValue := 50000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 8))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 7 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 19, r := 9 }
    lowerValue := 254461
    upperValue := 1000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 9))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 19, r := 10 }
    lowerValue := 27671
    upperValue := 100000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 10))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 19, r := 11 }
    lowerValue := 3659
    upperValue := 10000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 11))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 19, r := 12 }
    lowerValue := 590
    upperValue := 1000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 12))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 19, r := 13 }
    lowerValue := 117
    upperValue := 100000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 13))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 19, r := 14 }
    lowerValue := 29
    upperValue := 10000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 14))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) },
  { key := { q := 10, n := 19, r := 15 }
    lowerValue := 10
    upperValue := 1000
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 17 16)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 15))) },
  { key := { q := 10, n := 19, r := 16 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 18 17))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 18 16))) },
  { key := { q := 10, n := 19, r := 17 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 19 18)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 19 17)) },
  { key := { q := 10, n := 19, r := 18 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 19 18))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 19 18)) },
  { key := { q := 10, n := 19, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 19)) },
  { key := { q := 10, n := 19, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 20)) },
  { key := { q := 10, n := 19, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 21)) },
  { key := { q := 10, n := 19, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 22)) },
  { key := { q := 10, n := 19, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 23)) },
  { key := { q := 10, n := 19, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 24)) },
  { key := { q := 10, n := 19, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 25)) },
  { key := { q := 10, n := 19, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 26)) },
  { key := { q := 10, n := 19, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 27)) },
  { key := { q := 10, n := 19, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 28)) },
  { key := { q := 10, n := 19, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 29)) },
  { key := { q := 10, n := 19, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 30)) },
  { key := { q := 10, n := 19, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 31)) },
  { key := { q := 10, n := 19, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 32)) },
  { key := { q := 10, n := 19, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 33)) },
  { key := { q := 10, n := 19, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 34)) },
  { key := { q := 10, n := 19, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 35)) },
  { key := { q := 10, n := 19, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 36)) },
  { key := { q := 10, n := 19, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 37)) },
  { key := { q := 10, n := 19, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 38)) },
  { key := { q := 10, n := 19, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 39)) },
  { key := { q := 10, n := 19, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 40)) },
  { key := { q := 10, n := 19, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 41)) },
  { key := { q := 10, n := 19, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 42)) },
  { key := { q := 10, n := 19, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 43)) },
  { key := { q := 10, n := 19, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 44)) },
  { key := { q := 10, n := 19, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 45)) },
  { key := { q := 10, n := 19, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 46)) },
  { key := { q := 10, n := 19, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 47)) },
  { key := { q := 10, n := 19, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 19 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 19 48)) },
  { key := { q := 10, n := 20, r := 0 }
    lowerValue := 100000000000000000000
    upperValue := 100000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 20 0)) },
  { key := { q := 10, n := 20, r := 1 }
    lowerValue := 552486187845303868
    upperValue := 5000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 1))
    upperTrace := (.lengthenFreeN 17 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))) },
  { key := { q := 10, n := 20, r := 2 }
    lowerValue := 6422195106287330
    upperValue := 500000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 2))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 20, r := 3 }
    lowerValue := 118115211940031
    upperValue := 50000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 3))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 20, r := 4 }
    lowerValue := 3064225304398
    upperValue := 5000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 4))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 20, r := 5 }
    lowerValue := 105470727395
    upperValue := 500000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 5))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 20, r := 6 }
    lowerValue := 4641063937
    upperValue := 50000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 6))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 5 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 20, r := 7 }
    lowerValue := 254892314
    upperValue := 5000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 7))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 6 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 20, r := 8 }
    lowerValue := 17197148
    upperValue := 500000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 8))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 7 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 20, r := 9 }
    lowerValue := 1410715
    upperValue := 10000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 20 9))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) }]

end CoveringCodes.Database
