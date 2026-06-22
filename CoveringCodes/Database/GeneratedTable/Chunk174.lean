import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 174. Do not edit manually.

def precomputedTable_chunk_174 : Array AnyBoundEntry := #[
  { key := { q := 18, n := 5, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 5 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 5 37)) },
  { key := { q := 18, n := 5, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 5 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 5 38)) },
  { key := { q := 18, n := 5, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 5 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 5 39)) },
  { key := { q := 18, n := 5, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 5 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 5 40)) },
  { key := { q := 18, n := 5, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 5 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 5 41)) },
  { key := { q := 18, n := 5, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 5 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 5 42)) },
  { key := { q := 18, n := 5, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 5 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 5 43)) },
  { key := { q := 18, n := 5, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 5 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 5 44)) },
  { key := { q := 18, n := 5, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 5 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 5 45)) },
  { key := { q := 18, n := 5, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 5 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 5 46)) },
  { key := { q := 18, n := 5, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 5 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 5 47)) },
  { key := { q := 18, n := 5, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 5 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 5 48)) },
  { key := { q := 18, n := 6, r := 0 }
    lowerValue := 34012224
    upperValue := 34012224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 6 0)) },
  { key := { q := 18, n := 6, r := 1 }
    lowerValue := 330216
    upperValue := 944784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 1))
    upperTrace := (.lengthenFreeN 3 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 6, r := 2 }
    lowerValue := 7664
    upperValue := 52488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 2))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 6, r := 3 }
    lowerValue := 332
    upperValue := 2916
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 3))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1)))) },
  { key := { q := 18, n := 6, r := 4 }
    lowerValue := 26
    upperValue := 162
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 4))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 18) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 6, r := 5 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 6 5))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 6 5)) },
  { key := { q := 18, n := 6, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 6)) },
  { key := { q := 18, n := 6, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 7)) },
  { key := { q := 18, n := 6, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 8)) },
  { key := { q := 18, n := 6, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 9)) },
  { key := { q := 18, n := 6, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 10)) },
  { key := { q := 18, n := 6, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 11)) },
  { key := { q := 18, n := 6, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 12)) },
  { key := { q := 18, n := 6, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 13)) },
  { key := { q := 18, n := 6, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 14)) },
  { key := { q := 18, n := 6, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 15)) },
  { key := { q := 18, n := 6, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 16)) },
  { key := { q := 18, n := 6, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 17)) },
  { key := { q := 18, n := 6, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 18)) },
  { key := { q := 18, n := 6, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 19)) },
  { key := { q := 18, n := 6, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 20)) },
  { key := { q := 18, n := 6, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 21)) },
  { key := { q := 18, n := 6, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 22)) },
  { key := { q := 18, n := 6, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 23)) },
  { key := { q := 18, n := 6, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 24)) },
  { key := { q := 18, n := 6, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 25)) },
  { key := { q := 18, n := 6, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 26)) },
  { key := { q := 18, n := 6, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 27)) },
  { key := { q := 18, n := 6, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 28)) },
  { key := { q := 18, n := 6, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 29)) },
  { key := { q := 18, n := 6, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 30)) },
  { key := { q := 18, n := 6, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 31)) },
  { key := { q := 18, n := 6, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 32)) },
  { key := { q := 18, n := 6, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 33)) },
  { key := { q := 18, n := 6, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 34)) },
  { key := { q := 18, n := 6, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 35)) },
  { key := { q := 18, n := 6, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 36)) },
  { key := { q := 18, n := 6, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 37)) },
  { key := { q := 18, n := 6, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 38)) },
  { key := { q := 18, n := 6, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 39)) },
  { key := { q := 18, n := 6, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 40)) },
  { key := { q := 18, n := 6, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 41)) },
  { key := { q := 18, n := 6, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 42)) },
  { key := { q := 18, n := 6, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 43)) },
  { key := { q := 18, n := 6, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 44)) },
  { key := { q := 18, n := 6, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 45)) },
  { key := { q := 18, n := 6, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 46)) },
  { key := { q := 18, n := 6, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 47)) },
  { key := { q := 18, n := 6, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 6 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 6 48)) },
  { key := { q := 18, n := 7, r := 0 }
    lowerValue := 612220032
    upperValue := 612220032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 7 0)) },
  { key := { q := 18, n := 7, r := 1 }
    lowerValue := 5101834
    upperValue := 17006112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 1))
    upperTrace := (.lengthenFreeN 4 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 7, r := 2 }
    lowerValue := 98921
    upperValue := 944784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 2))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 7, r := 3 }
    lowerValue := 3437
    upperValue := 52488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 3))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 7, r := 4 }
    lowerValue := 198
    upperValue := 2916
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 4))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1)))) },
  { key := { q := 18, n := 7, r := 5 }
    lowerValue := 19
    upperValue := 162
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 5))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 18) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 7, r := 6 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 7 6))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 7 6)) },
  { key := { q := 18, n := 7, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 7)) },
  { key := { q := 18, n := 7, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 8)) },
  { key := { q := 18, n := 7, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 9)) },
  { key := { q := 18, n := 7, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 10)) },
  { key := { q := 18, n := 7, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 11)) },
  { key := { q := 18, n := 7, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 12)) },
  { key := { q := 18, n := 7, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 13)) },
  { key := { q := 18, n := 7, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 14)) },
  { key := { q := 18, n := 7, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 15)) },
  { key := { q := 18, n := 7, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 16)) },
  { key := { q := 18, n := 7, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 17)) },
  { key := { q := 18, n := 7, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 18)) },
  { key := { q := 18, n := 7, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 19)) },
  { key := { q := 18, n := 7, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 20)) },
  { key := { q := 18, n := 7, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 21)) },
  { key := { q := 18, n := 7, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 22)) },
  { key := { q := 18, n := 7, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 23)) },
  { key := { q := 18, n := 7, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 24)) },
  { key := { q := 18, n := 7, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 25)) },
  { key := { q := 18, n := 7, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 26)) },
  { key := { q := 18, n := 7, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 27)) },
  { key := { q := 18, n := 7, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 28)) },
  { key := { q := 18, n := 7, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 29)) },
  { key := { q := 18, n := 7, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 30)) },
  { key := { q := 18, n := 7, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 31)) },
  { key := { q := 18, n := 7, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 32)) },
  { key := { q := 18, n := 7, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 33)) },
  { key := { q := 18, n := 7, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 34)) },
  { key := { q := 18, n := 7, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 35)) },
  { key := { q := 18, n := 7, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 36)) },
  { key := { q := 18, n := 7, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 37)) },
  { key := { q := 18, n := 7, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 38)) },
  { key := { q := 18, n := 7, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 39)) },
  { key := { q := 18, n := 7, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 40)) },
  { key := { q := 18, n := 7, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 41)) },
  { key := { q := 18, n := 7, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 42)) },
  { key := { q := 18, n := 7, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 43)) },
  { key := { q := 18, n := 7, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 44)) },
  { key := { q := 18, n := 7, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 45)) },
  { key := { q := 18, n := 7, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 46)) },
  { key := { q := 18, n := 7, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 47)) },
  { key := { q := 18, n := 7, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 7 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 7 48)) },
  { key := { q := 18, n := 8, r := 0 }
    lowerValue := 11019960576
    upperValue := 11019960576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 8 0)) },
  { key := { q := 18, n := 8, r := 1 }
    lowerValue := 80437669
    upperValue := 306110016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 1))
    upperTrace := (.lengthenFreeN 5 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 8, r := 2 }
    lowerValue := 1339162
    upperValue := 15116544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 2))
    upperTrace := (@UpperTrace.alphabetExpand 9 18 2 8 2 59049 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))) },
  { key := { q := 18, n := 8, r := 3 }
    lowerValue := 38891
    upperValue := 944784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 3))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 8, r := 4 }
    lowerValue := 1798
    upperValue := 52488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 4))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 8, r := 5 }
    lowerValue := 129
    upperValue := 2916
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 5))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1)))) },
  { key := { q := 18, n := 8, r := 6 }
    lowerValue := 18
    upperValue := 162
    lowerTrace := (.radiusBack (by decide : 6 ≤ 7) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 8 7)))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 18) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 8, r := 7 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 8 7))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 8 7)) },
  { key := { q := 18, n := 8, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 8)) },
  { key := { q := 18, n := 8, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 9)) },
  { key := { q := 18, n := 8, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 10)) },
  { key := { q := 18, n := 8, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 11)) },
  { key := { q := 18, n := 8, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 12)) },
  { key := { q := 18, n := 8, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 13)) },
  { key := { q := 18, n := 8, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 14)) },
  { key := { q := 18, n := 8, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 15)) },
  { key := { q := 18, n := 8, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 16)) },
  { key := { q := 18, n := 8, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 17)) },
  { key := { q := 18, n := 8, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 18)) },
  { key := { q := 18, n := 8, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 19)) },
  { key := { q := 18, n := 8, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 20)) },
  { key := { q := 18, n := 8, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 21)) },
  { key := { q := 18, n := 8, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 22)) },
  { key := { q := 18, n := 8, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 23)) },
  { key := { q := 18, n := 8, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 24)) },
  { key := { q := 18, n := 8, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 25)) },
  { key := { q := 18, n := 8, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 26)) },
  { key := { q := 18, n := 8, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 27)) },
  { key := { q := 18, n := 8, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 28)) },
  { key := { q := 18, n := 8, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 29)) },
  { key := { q := 18, n := 8, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 30)) },
  { key := { q := 18, n := 8, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 31)) },
  { key := { q := 18, n := 8, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 32)) },
  { key := { q := 18, n := 8, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 33)) },
  { key := { q := 18, n := 8, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 34)) },
  { key := { q := 18, n := 8, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 35)) },
  { key := { q := 18, n := 8, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 36)) },
  { key := { q := 18, n := 8, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 37)) },
  { key := { q := 18, n := 8, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 38)) },
  { key := { q := 18, n := 8, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 39)) },
  { key := { q := 18, n := 8, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 40)) },
  { key := { q := 18, n := 8, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 41)) },
  { key := { q := 18, n := 8, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 42)) },
  { key := { q := 18, n := 8, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 43)) },
  { key := { q := 18, n := 8, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 44)) },
  { key := { q := 18, n := 8, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 45)) },
  { key := { q := 18, n := 8, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 46)) },
  { key := { q := 18, n := 8, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 47)) },
  { key := { q := 18, n := 8, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 8 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 8 48)) },
  { key := { q := 18, n := 9, r := 0 }
    lowerValue := 198359290368
    upperValue := 198359290368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 9 0)) },
  { key := { q := 18, n := 9, r := 1 }
    lowerValue := 1288047341
    upperValue := 5509980288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 1))
    upperTrace := (.lengthenFreeN 6 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 9, r := 2 }
    lowerValue := 18787582
    upperValue := 272097792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 2))
    upperTrace := (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 18, n := 9, r := 3 }
    lowerValue := 468658
    upperValue := 15116544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 3))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 18) (@UpperTrace.alphabetExpand 9 18 2 8 2 59049 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 18, n := 9, r := 4 }
    lowerValue := 18121
    upperValue := 944784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 4))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 9, r := 5 }
    lowerValue := 1045
    upperValue := 52488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 5))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 9, r := 6 }
    lowerValue := 90
    upperValue := 2916
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 6))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1)))) },
  { key := { q := 18, n := 9, r := 7 }
    lowerValue := 18
    upperValue := 162
    lowerTrace := (.radiusBack (by decide : 7 ≤ 8) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 9 8)))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 18) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 9, r := 8 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 9 8))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 9 8)) },
  { key := { q := 18, n := 9, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 9)) },
  { key := { q := 18, n := 9, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 10)) },
  { key := { q := 18, n := 9, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 11)) },
  { key := { q := 18, n := 9, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 12)) },
  { key := { q := 18, n := 9, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 13)) },
  { key := { q := 18, n := 9, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 14)) },
  { key := { q := 18, n := 9, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 15)) },
  { key := { q := 18, n := 9, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 16)) },
  { key := { q := 18, n := 9, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 17)) },
  { key := { q := 18, n := 9, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 18)) },
  { key := { q := 18, n := 9, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 19)) },
  { key := { q := 18, n := 9, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 20)) },
  { key := { q := 18, n := 9, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 21)) },
  { key := { q := 18, n := 9, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 22)) },
  { key := { q := 18, n := 9, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 23)) },
  { key := { q := 18, n := 9, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 24)) },
  { key := { q := 18, n := 9, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 25)) },
  { key := { q := 18, n := 9, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 26)) },
  { key := { q := 18, n := 9, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 27)) },
  { key := { q := 18, n := 9, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 28)) },
  { key := { q := 18, n := 9, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 29)) },
  { key := { q := 18, n := 9, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 30)) },
  { key := { q := 18, n := 9, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 31)) },
  { key := { q := 18, n := 9, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 32)) },
  { key := { q := 18, n := 9, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 33)) },
  { key := { q := 18, n := 9, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 34)) },
  { key := { q := 18, n := 9, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 35)) },
  { key := { q := 18, n := 9, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 36)) },
  { key := { q := 18, n := 9, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 37)) },
  { key := { q := 18, n := 9, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 38)) },
  { key := { q := 18, n := 9, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 39)) },
  { key := { q := 18, n := 9, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 40)) },
  { key := { q := 18, n := 9, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 41)) },
  { key := { q := 18, n := 9, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 42)) },
  { key := { q := 18, n := 9, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 43)) },
  { key := { q := 18, n := 9, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 44)) },
  { key := { q := 18, n := 9, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 45)) },
  { key := { q := 18, n := 9, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 46)) },
  { key := { q := 18, n := 9, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 47)) },
  { key := { q := 18, n := 9, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 9 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 9 48)) },
  { key := { q := 18, n := 10, r := 0 }
    lowerValue := 3570467226624
    upperValue := 3570467226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 10 0)) },
  { key := { q := 18, n := 10, r := 1 }
    lowerValue := 20879925302
    upperValue := 99179645184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 1))
    upperTrace := (.lengthenFreeN 7 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 10, r := 2 }
    lowerValue := 270982638
    upperValue := 4897760256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 2))
    upperTrace := (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 18, n := 10, r := 3 }
    lowerValue := 5923767
    upperValue := 272097792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 3))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 18) (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 18, n := 10, r := 4 }
    lowerValue := 196806
    upperValue := 15116544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 4))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 18) (@UpperTrace.alphabetExpand 9 18 2 8 2 59049 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 18, n := 10, r := 5 }
    lowerValue := 9498
    upperValue := 944784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 5))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 10, r := 6 }
    lowerValue := 656
    upperValue := 52488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 6))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 10, r := 7 }
    lowerValue := 66
    upperValue := 2916
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 7))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1)))) },
  { key := { q := 18, n := 10, r := 8 }
    lowerValue := 18
    upperValue := 162
    lowerTrace := (.radiusBack (by decide : 8 ≤ 9) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 10 9)))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 18) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 10, r := 9 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 10 9))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 10 9)) },
  { key := { q := 18, n := 10, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 10)) },
  { key := { q := 18, n := 10, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 11)) },
  { key := { q := 18, n := 10, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 12)) },
  { key := { q := 18, n := 10, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 13)) },
  { key := { q := 18, n := 10, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 14)) },
  { key := { q := 18, n := 10, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 15)) },
  { key := { q := 18, n := 10, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 16)) },
  { key := { q := 18, n := 10, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 17)) },
  { key := { q := 18, n := 10, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 18)) },
  { key := { q := 18, n := 10, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 19)) },
  { key := { q := 18, n := 10, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 20)) },
  { key := { q := 18, n := 10, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 21)) },
  { key := { q := 18, n := 10, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 22)) },
  { key := { q := 18, n := 10, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 23)) },
  { key := { q := 18, n := 10, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 24)) },
  { key := { q := 18, n := 10, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 25)) },
  { key := { q := 18, n := 10, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 26)) },
  { key := { q := 18, n := 10, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 27)) },
  { key := { q := 18, n := 10, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 28)) },
  { key := { q := 18, n := 10, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 29)) },
  { key := { q := 18, n := 10, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 30)) },
  { key := { q := 18, n := 10, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 31)) },
  { key := { q := 18, n := 10, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 32)) },
  { key := { q := 18, n := 10, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 33)) },
  { key := { q := 18, n := 10, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 34)) },
  { key := { q := 18, n := 10, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 35)) },
  { key := { q := 18, n := 10, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 36)) },
  { key := { q := 18, n := 10, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 37)) },
  { key := { q := 18, n := 10, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 38)) },
  { key := { q := 18, n := 10, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 39)) },
  { key := { q := 18, n := 10, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 40)) },
  { key := { q := 18, n := 10, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 10 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 10 41)) }]

end CoveringCodes.Database
