import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 127. Do not edit manually.

def precomputedTable_chunk_127 : Array AnyBoundEntry := #[
  { key := { q := 13, n := 10, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 47)) },
  { key := { q := 13, n := 10, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 10 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 10 48)) },
  { key := { q := 13, n := 11, r := 0 }
    lowerValue := 1792160394037
    upperValue := 1792160394037
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 11 0)) },
  { key := { q := 13, n := 11, r := 1 }
    lowerValue := 13474890181
    upperValue := 69337111285
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 1))
    upperTrace := (.lengthenFreeN 8 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 11, r := 2 }
    lowerValue := 222545685
    upperValue := 5333623945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 2))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 1 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 11, r := 3 }
    lowerValue := 6112980
    upperValue := 410278765
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 3))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 2 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 11, r := 4 }
    lowerValue := 251142
    upperValue := 31559905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 4))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 3 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 11, r := 5 }
    lowerValue := 14679
    upperValue := 2427685
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 5))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 4 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 11, r := 6 }
    lowerValue := 1194
    upperValue := 186745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 6))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 5 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 11, r := 7 }
    lowerValue := 135
    upperValue := 14365
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 7))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 6 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 11, r := 8 }
    lowerValue := 22
    upperValue := 1105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 8))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1)))) },
  { key := { q := 13, n := 11, r := 9 }
    lowerValue := 13
    upperValue := 85
    lowerTrace := (.radiusBack (by decide : 9 ≤ 10) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 11 10)))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 13) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 11, r := 10 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 11 10))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 11 10)) },
  { key := { q := 13, n := 11, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 11)) },
  { key := { q := 13, n := 11, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 12)) },
  { key := { q := 13, n := 11, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 13)) },
  { key := { q := 13, n := 11, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 14)) },
  { key := { q := 13, n := 11, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 15)) },
  { key := { q := 13, n := 11, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 16)) },
  { key := { q := 13, n := 11, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 17)) },
  { key := { q := 13, n := 11, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 18)) },
  { key := { q := 13, n := 11, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 19)) },
  { key := { q := 13, n := 11, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 20)) },
  { key := { q := 13, n := 11, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 21)) },
  { key := { q := 13, n := 11, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 22)) },
  { key := { q := 13, n := 11, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 23)) },
  { key := { q := 13, n := 11, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 24)) },
  { key := { q := 13, n := 11, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 25)) },
  { key := { q := 13, n := 11, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 26)) },
  { key := { q := 13, n := 11, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 27)) },
  { key := { q := 13, n := 11, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 28)) },
  { key := { q := 13, n := 11, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 29)) },
  { key := { q := 13, n := 11, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 30)) },
  { key := { q := 13, n := 11, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 31)) },
  { key := { q := 13, n := 11, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 32)) },
  { key := { q := 13, n := 11, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 33)) },
  { key := { q := 13, n := 11, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 34)) },
  { key := { q := 13, n := 11, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 35)) },
  { key := { q := 13, n := 11, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 36)) },
  { key := { q := 13, n := 11, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 37)) },
  { key := { q := 13, n := 11, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 38)) },
  { key := { q := 13, n := 11, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 39)) },
  { key := { q := 13, n := 11, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 40)) },
  { key := { q := 13, n := 11, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 41)) },
  { key := { q := 13, n := 11, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 42)) },
  { key := { q := 13, n := 11, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 43)) },
  { key := { q := 13, n := 11, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 44)) },
  { key := { q := 13, n := 11, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 45)) },
  { key := { q := 13, n := 11, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 46)) },
  { key := { q := 13, n := 11, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 47)) },
  { key := { q := 13, n := 11, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 11 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 11 48)) },
  { key := { q := 13, n := 12, r := 0 }
    lowerValue := 23298085122481
    upperValue := 23298085122481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 12 0)) },
  { key := { q := 13, n := 12, r := 1 }
    lowerValue := 160676449121
    upperValue := 901382446705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 1))
    upperTrace := (.lengthenFreeN 9 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 12, r := 2 }
    lowerValue := 2414559553
    upperValue := 69337111285
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 2))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 1 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 12, r := 3 }
    lowerValue := 59767951
    upperValue := 5333623945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 3))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 2 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 12, r := 4 }
    lowerValue := 2186766
    upperValue := 410278765
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 4))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 3 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 12, r := 5 }
    lowerValue := 112157
    upperValue := 31559905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 5))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 4 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 12, r := 6 }
    lowerValue := 7853
    upperValue := 2427685
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 6))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 5 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 12, r := 7 }
    lowerValue := 744
    upperValue := 186745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 7))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 6 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 12, r := 8 }
    lowerValue := 96
    upperValue := 14365
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 8))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 7 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 12, r := 9 }
    lowerValue := 17
    upperValue := 1105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 9))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1)))) },
  { key := { q := 13, n := 12, r := 10 }
    lowerValue := 13
    upperValue := 85
    lowerTrace := (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 12 11)))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 13) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 12, r := 11 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 12 11))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 12 11)) },
  { key := { q := 13, n := 12, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 12)) },
  { key := { q := 13, n := 12, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 13)) },
  { key := { q := 13, n := 12, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 14)) },
  { key := { q := 13, n := 12, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 15)) },
  { key := { q := 13, n := 12, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 16)) },
  { key := { q := 13, n := 12, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 17)) },
  { key := { q := 13, n := 12, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 18)) },
  { key := { q := 13, n := 12, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 19)) },
  { key := { q := 13, n := 12, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 20)) },
  { key := { q := 13, n := 12, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 21)) },
  { key := { q := 13, n := 12, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 22)) },
  { key := { q := 13, n := 12, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 23)) },
  { key := { q := 13, n := 12, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 24)) },
  { key := { q := 13, n := 12, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 25)) },
  { key := { q := 13, n := 12, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 26)) },
  { key := { q := 13, n := 12, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 27)) },
  { key := { q := 13, n := 12, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 28)) },
  { key := { q := 13, n := 12, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 29)) },
  { key := { q := 13, n := 12, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 30)) },
  { key := { q := 13, n := 12, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 31)) },
  { key := { q := 13, n := 12, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 32)) },
  { key := { q := 13, n := 12, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 33)) },
  { key := { q := 13, n := 12, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 34)) },
  { key := { q := 13, n := 12, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 35)) },
  { key := { q := 13, n := 12, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 36)) },
  { key := { q := 13, n := 12, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 37)) },
  { key := { q := 13, n := 12, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 38)) },
  { key := { q := 13, n := 12, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 39)) },
  { key := { q := 13, n := 12, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 40)) },
  { key := { q := 13, n := 12, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 41)) },
  { key := { q := 13, n := 12, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 42)) },
  { key := { q := 13, n := 12, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 43)) },
  { key := { q := 13, n := 12, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 44)) },
  { key := { q := 13, n := 12, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 45)) },
  { key := { q := 13, n := 12, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 46)) },
  { key := { q := 13, n := 12, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 47)) },
  { key := { q := 13, n := 12, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 12 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 12 48)) },
  { key := { q := 13, n := 13, r := 0 }
    lowerValue := 302875106592253
    upperValue := 302875106592253
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 13 0)) },
  { key := { q := 13, n := 13, r := 1 }
    lowerValue := 1929140806321
    upperValue := 11717971807165
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 1))
    upperTrace := (.lengthenFreeN 10 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 13, r := 2 }
    lowerValue := 26593652349
    upperValue := 901382446705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 2))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 1 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 13, r := 3 }
    lowerValue := 599044509
    upperValue := 69337111285
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 3))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 2 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 13, r := 4 }
    lowerValue := 19754653
    upperValue := 5333623945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 4))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 3 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 13, r := 5 }
    lowerValue := 902546
    upperValue := 410278765
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 5))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 4 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 13, r := 6 }
    lowerValue := 55477
    upperValue := 31559905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 6))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 5 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 13, r := 7 }
    lowerValue := 4525
    upperValue := 2427685
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 7))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 6 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 13, r := 8 }
    lowerValue := 489
    upperValue := 186745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 8))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 7 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 13, r := 9 }
    lowerValue := 71
    upperValue := 14365
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 9))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 8 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 13, r := 10 }
    lowerValue := 14
    upperValue := 1105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 10))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1)))) },
  { key := { q := 13, n := 13, r := 11 }
    lowerValue := 13
    upperValue := 85
    lowerTrace := (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 13 12)))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 13) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 13, r := 12 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 13 12))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 13 12)) },
  { key := { q := 13, n := 13, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 13)) },
  { key := { q := 13, n := 13, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 14)) },
  { key := { q := 13, n := 13, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 15)) },
  { key := { q := 13, n := 13, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 16)) },
  { key := { q := 13, n := 13, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 17)) },
  { key := { q := 13, n := 13, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 18)) },
  { key := { q := 13, n := 13, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 19)) },
  { key := { q := 13, n := 13, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 20)) },
  { key := { q := 13, n := 13, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 21)) },
  { key := { q := 13, n := 13, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 22)) },
  { key := { q := 13, n := 13, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 23)) },
  { key := { q := 13, n := 13, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 24)) },
  { key := { q := 13, n := 13, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 25)) },
  { key := { q := 13, n := 13, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 26)) },
  { key := { q := 13, n := 13, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 27)) },
  { key := { q := 13, n := 13, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 28)) },
  { key := { q := 13, n := 13, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 29)) },
  { key := { q := 13, n := 13, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 30)) },
  { key := { q := 13, n := 13, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 31)) },
  { key := { q := 13, n := 13, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 32)) },
  { key := { q := 13, n := 13, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 33)) },
  { key := { q := 13, n := 13, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 34)) },
  { key := { q := 13, n := 13, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 35)) },
  { key := { q := 13, n := 13, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 36)) },
  { key := { q := 13, n := 13, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 37)) },
  { key := { q := 13, n := 13, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 38)) },
  { key := { q := 13, n := 13, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 39)) },
  { key := { q := 13, n := 13, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 40)) },
  { key := { q := 13, n := 13, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 41)) },
  { key := { q := 13, n := 13, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 42)) },
  { key := { q := 13, n := 13, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 43)) },
  { key := { q := 13, n := 13, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 44)) },
  { key := { q := 13, n := 13, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 45)) },
  { key := { q := 13, n := 13, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 46)) },
  { key := { q := 13, n := 13, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 47)) },
  { key := { q := 13, n := 13, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 13 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 13 48)) },
  { key := { q := 13, n := 14, r := 0 }
    lowerValue := 3937376385699289
    upperValue := 3937376385699289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 14 0)) },
  { key := { q := 13, n := 14, r := 1 }
    lowerValue := 23298085122481
    upperValue := 152333633493145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 1))
    upperTrace := (.lengthenFreeN 11 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 14, r := 2 }
    lowerValue := 296645550042
    upperValue := 11717971807165
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 2))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 1 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 14, r := 3 }
    lowerValue := 6130454541
    upperValue := 901382446705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 3))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 2 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 14, r := 4 }
    lowerValue := 183998141
    upperValue := 69337111285
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 4))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 3 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 14, r := 5 }
    lowerValue := 7578281
    upperValue := 5333623945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 5))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 4 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 14, r := 6 }
    lowerValue := 415052
    upperValue := 410278765
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 6))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 5 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 14, r := 7 }
    lowerValue := 29725
    upperValue := 31559905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 7))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 6 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 14, r := 8 }
    lowerValue := 2766
    upperValue := 2427685
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 8))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 7 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 14, r := 9 }
    lowerValue := 335
    upperValue := 186745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 9))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 8 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 14, r := 10 }
    lowerValue := 54
    upperValue := 14365
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 10))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 9 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 14, r := 11 }
    lowerValue := 13
    upperValue := 1105
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 13 12))))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1)))) },
  { key := { q := 13, n := 14, r := 12 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 14 13)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12)) },
  { key := { q := 13, n := 14, r := 13 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 14 13))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 13)) },
  { key := { q := 13, n := 14, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 14)) },
  { key := { q := 13, n := 14, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 15)) },
  { key := { q := 13, n := 14, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 16)) },
  { key := { q := 13, n := 14, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 17)) },
  { key := { q := 13, n := 14, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 18)) },
  { key := { q := 13, n := 14, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 19)) },
  { key := { q := 13, n := 14, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 20)) },
  { key := { q := 13, n := 14, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 21)) },
  { key := { q := 13, n := 14, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 22)) },
  { key := { q := 13, n := 14, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 23)) },
  { key := { q := 13, n := 14, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 24)) },
  { key := { q := 13, n := 14, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 25)) },
  { key := { q := 13, n := 14, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 26)) },
  { key := { q := 13, n := 14, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 27)) },
  { key := { q := 13, n := 14, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 28)) },
  { key := { q := 13, n := 14, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 29)) },
  { key := { q := 13, n := 14, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 30)) },
  { key := { q := 13, n := 14, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 31)) },
  { key := { q := 13, n := 14, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 32)) },
  { key := { q := 13, n := 14, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 33)) },
  { key := { q := 13, n := 14, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 34)) },
  { key := { q := 13, n := 14, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 35)) },
  { key := { q := 13, n := 14, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 36)) },
  { key := { q := 13, n := 14, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 37)) },
  { key := { q := 13, n := 14, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 38)) },
  { key := { q := 13, n := 14, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 39)) },
  { key := { q := 13, n := 14, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 40)) },
  { key := { q := 13, n := 14, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 41)) },
  { key := { q := 13, n := 14, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 42)) },
  { key := { q := 13, n := 14, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 43)) },
  { key := { q := 13, n := 14, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 44)) },
  { key := { q := 13, n := 14, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 45)) },
  { key := { q := 13, n := 14, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 46)) },
  { key := { q := 13, n := 14, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 47)) },
  { key := { q := 13, n := 14, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 14 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 14 48)) },
  { key := { q := 13, n := 15, r := 0 }
    lowerValue := 51185893014090757
    upperValue := 51185893014090757
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 15 0)) },
  { key := { q := 13, n := 15, r := 1 }
    lowerValue := 282794989028126
    upperValue := 1980337235410885
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 1))
    upperTrace := (.lengthenFreeN 12 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 15, r := 2 }
    lowerValue := 3345264558793
    upperValue := 152333633493145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 2))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 1 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 15, r := 3 }
    lowerValue := 63859357181
    upperValue := 11717971807165
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 3))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 2 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 15, r := 4 }
    lowerValue := 1758591862
    upperValue := 901382446705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 4))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 3 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 15, r := 5 }
    lowerValue := 65931578
    upperValue := 69337111285
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 5))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 4 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 15, r := 6 }
    lowerValue := 3255852
    upperValue := 5333623945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 6))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 5 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 15, r := 7 }
    lowerValue := 207821
    upperValue := 410278765
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 7))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 6 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 15, r := 8 }
    lowerValue := 16988
    upperValue := 31559905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 8))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 7 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 15, r := 9 }
    lowerValue := 1775
    upperValue := 2427685
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 9))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 8 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 15, r := 10 }
    lowerValue := 239
    upperValue := 186745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 10))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 9 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 15, r := 11 }
    lowerValue := 42
    upperValue := 14365
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 11))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 10 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 15, r := 12 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 14 13))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 15, r := 13 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 15 14)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13)) },
  { key := { q := 13, n := 15, r := 14 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 15 14))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 14)) },
  { key := { q := 13, n := 15, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 15)) },
  { key := { q := 13, n := 15, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 16)) },
  { key := { q := 13, n := 15, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 17)) },
  { key := { q := 13, n := 15, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 18)) },
  { key := { q := 13, n := 15, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 19)) },
  { key := { q := 13, n := 15, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 20)) },
  { key := { q := 13, n := 15, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 21)) },
  { key := { q := 13, n := 15, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 22)) },
  { key := { q := 13, n := 15, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 23)) },
  { key := { q := 13, n := 15, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 24)) },
  { key := { q := 13, n := 15, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 25)) },
  { key := { q := 13, n := 15, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 26)) },
  { key := { q := 13, n := 15, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 27)) },
  { key := { q := 13, n := 15, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 28)) },
  { key := { q := 13, n := 15, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 29)) },
  { key := { q := 13, n := 15, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 30)) },
  { key := { q := 13, n := 15, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 31)) },
  { key := { q := 13, n := 15, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 32)) },
  { key := { q := 13, n := 15, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 33)) },
  { key := { q := 13, n := 15, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 34)) },
  { key := { q := 13, n := 15, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 35)) },
  { key := { q := 13, n := 15, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 36)) },
  { key := { q := 13, n := 15, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 37)) },
  { key := { q := 13, n := 15, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 38)) },
  { key := { q := 13, n := 15, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 39)) },
  { key := { q := 13, n := 15, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 40)) },
  { key := { q := 13, n := 15, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 41)) },
  { key := { q := 13, n := 15, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 42)) },
  { key := { q := 13, n := 15, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 43)) },
  { key := { q := 13, n := 15, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 44)) },
  { key := { q := 13, n := 15, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 45)) },
  { key := { q := 13, n := 15, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 46)) },
  { key := { q := 13, n := 15, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 47)) },
  { key := { q := 13, n := 15, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 15 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 15 48)) },
  { key := { q := 13, n := 16, r := 0 }
    lowerValue := 665416609183179841
    upperValue := 665416609183179841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 16 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 16 0)) },
  { key := { q := 13, n := 16, r := 1 }
    lowerValue := 3447754451726321
    upperValue := 25744384060341505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 16 1))
    upperTrace := (.lengthenFreeN 13 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 16, r := 2 }
    lowerValue := 38082562192136
    upperValue := 1980337235410885
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 16 2))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 1 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) }]

end CoveringCodes.Database
