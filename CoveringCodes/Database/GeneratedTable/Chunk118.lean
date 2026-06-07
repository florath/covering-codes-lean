import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 118. Do not edit manually.

def precomputedTable_chunk_118 : Array AnyBoundEntry := #[
  { key := { q := 12, n := 14, r := 2 }
    lowerValue := 114984637700
    upperValue := 4458050224128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 2))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 14, r := 3 }
    lowerValue := 2590373176
    upperValue := 371504185344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 3))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 14, r := 4 }
    lowerValue := 84739873
    upperValue := 30958682112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 4))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 14, r := 5 }
    lowerValue := 3803354
    upperValue := 2579890176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 5))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 14, r := 6 }
    lowerValue := 226939
    upperValue := 214990848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 6))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 14, r := 7 }
    lowerValue := 17701
    upperValue := 17915904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 7))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 6 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 14, r := 8 }
    lowerValue := 1793
    upperValue := 1492992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 8))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 7 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 14, r := 9 }
    lowerValue := 237
    upperValue := 124416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 9))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 8 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 14, r := 10 }
    lowerValue := 41
    upperValue := 10368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 10))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 9 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 14, r := 11 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 13 12))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 14, r := 12 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 14 13)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12)) },
  { key := { q := 12, n := 14, r := 13 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 14 13))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 13)) },
  { key := { q := 12, n := 14, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 14)) },
  { key := { q := 12, n := 14, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 15)) },
  { key := { q := 12, n := 14, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 16)) },
  { key := { q := 12, n := 14, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 17)) },
  { key := { q := 12, n := 14, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 18)) },
  { key := { q := 12, n := 14, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 19)) },
  { key := { q := 12, n := 14, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 20)) },
  { key := { q := 12, n := 14, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 21)) },
  { key := { q := 12, n := 14, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 22)) },
  { key := { q := 12, n := 14, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 23)) },
  { key := { q := 12, n := 14, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 24)) },
  { key := { q := 12, n := 14, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 25)) },
  { key := { q := 12, n := 14, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 26)) },
  { key := { q := 12, n := 14, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 27)) },
  { key := { q := 12, n := 14, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 28)) },
  { key := { q := 12, n := 14, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 29)) },
  { key := { q := 12, n := 14, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 30)) },
  { key := { q := 12, n := 14, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 31)) },
  { key := { q := 12, n := 14, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 32)) },
  { key := { q := 12, n := 14, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 33)) },
  { key := { q := 12, n := 14, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 34)) },
  { key := { q := 12, n := 14, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 35)) },
  { key := { q := 12, n := 14, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 36)) },
  { key := { q := 12, n := 14, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 37)) },
  { key := { q := 12, n := 14, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 38)) },
  { key := { q := 12, n := 14, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 39)) },
  { key := { q := 12, n := 14, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 40)) },
  { key := { q := 12, n := 14, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 41)) },
  { key := { q := 12, n := 14, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 42)) },
  { key := { q := 12, n := 14, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 43)) },
  { key := { q := 12, n := 14, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 44)) },
  { key := { q := 12, n := 14, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 45)) },
  { key := { q := 12, n := 14, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 46)) },
  { key := { q := 12, n := 14, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 47)) },
  { key := { q := 12, n := 14, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 14 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 14 48)) },
  { key := { q := 12, n := 15, r := 0 }
    lowerValue := 15407021574586368
    upperValue := 15407021574586368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 15 0)) },
  { key := { q := 12, n := 15, r := 1 }
    lowerValue := 92813382979436
    upperValue := 641959232274432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 1))
    upperTrace := (.lengthenFreeN 12 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 15, r := 2 }
    lowerValue := 1197033763856
    upperValue := 53496602689536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 2))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 15, r := 3 }
    lowerValue := 24911268303
    upperValue := 4458050224128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 3))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 15, r := 4 }
    lowerValue := 747788759
    upperValue := 371504185344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 4))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 15, r := 5 }
    lowerValue := 30554962
    upperValue := 30958682112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 5))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 15, r := 6 }
    lowerValue := 1644135
    upperValue := 2579890176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 6))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 15, r := 7 }
    lowerValue := 114321
    upperValue := 214990848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 7))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 6 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 15, r := 8 }
    lowerValue := 10176
    upperValue := 17915904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 8))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 7 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 15, r := 9 }
    lowerValue := 1158
    upperValue := 1492992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 9))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 8 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 15, r := 10 }
    lowerValue := 169
    upperValue := 124416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 10))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 9 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 15, r := 11 }
    lowerValue := 33
    upperValue := 1728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 11))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 15, r := 12 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 14 13))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 15, r := 13 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 15 14)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13)) },
  { key := { q := 12, n := 15, r := 14 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 15 14))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 14)) },
  { key := { q := 12, n := 15, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 15)) },
  { key := { q := 12, n := 15, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 16)) },
  { key := { q := 12, n := 15, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 17)) },
  { key := { q := 12, n := 15, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 18)) },
  { key := { q := 12, n := 15, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 19)) },
  { key := { q := 12, n := 15, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 20)) },
  { key := { q := 12, n := 15, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 21)) },
  { key := { q := 12, n := 15, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 22)) },
  { key := { q := 12, n := 15, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 23)) },
  { key := { q := 12, n := 15, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 24)) },
  { key := { q := 12, n := 15, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 25)) },
  { key := { q := 12, n := 15, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 26)) },
  { key := { q := 12, n := 15, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 27)) },
  { key := { q := 12, n := 15, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 28)) },
  { key := { q := 12, n := 15, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 29)) },
  { key := { q := 12, n := 15, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 30)) },
  { key := { q := 12, n := 15, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 31)) },
  { key := { q := 12, n := 15, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 32)) },
  { key := { q := 12, n := 15, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 33)) },
  { key := { q := 12, n := 15, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 34)) },
  { key := { q := 12, n := 15, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 35)) },
  { key := { q := 12, n := 15, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 36)) },
  { key := { q := 12, n := 15, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 37)) },
  { key := { q := 12, n := 15, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 38)) },
  { key := { q := 12, n := 15, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 39)) },
  { key := { q := 12, n := 15, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 40)) },
  { key := { q := 12, n := 15, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 41)) },
  { key := { q := 12, n := 15, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 42)) },
  { key := { q := 12, n := 15, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 43)) },
  { key := { q := 12, n := 15, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 44)) },
  { key := { q := 12, n := 15, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 45)) },
  { key := { q := 12, n := 15, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 46)) },
  { key := { q := 12, n := 15, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 47)) },
  { key := { q := 12, n := 15, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 15 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 15 48)) },
  { key := { q := 12, n := 16, r := 0 }
    lowerValue := 184884258895036416
    upperValue := 184884258895036416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 16 0)) },
  { key := { q := 12, n := 16, r := 1 }
    lowerValue := 1044543835565178
    upperValue := 7703510787293184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 1))
    upperTrace := (.lengthenFreeN 13 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 16, r := 2 }
    lowerValue := 12579727760430
    upperValue := 641959232274432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 2))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 16, r := 3 }
    lowerValue := 243250517916
    upperValue := 53496602689536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 3))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 16, r := 4 }
    lowerValue := 6745956794
    upperValue := 4458050224128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 4))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 16, r := 5 }
    lowerValue := 252962053
    upperValue := 371504185344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 5))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 16, r := 6 }
    lowerValue := 12393752
    upperValue := 30958682112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 6))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 16, r := 7 }
    lowerValue := 777312
    upperValue := 2579890176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 7))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 6 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 16, r := 8 }
    lowerValue := 61697
    upperValue := 214990848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 8))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 7 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 16, r := 9 }
    lowerValue := 6169
    upperValue := 17915904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 9))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 8 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 16, r := 10 }
    lowerValue := 778
    upperValue := 1492992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 10))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 9 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 16, r := 11 }
    lowerValue := 125
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 11))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 16, r := 12 }
    lowerValue := 26
    upperValue := 1728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 12))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 16, r := 13 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 15 14))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 16, r := 14 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 16 15)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14)) },
  { key := { q := 12, n := 16, r := 15 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 16 15))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 15)) },
  { key := { q := 12, n := 16, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 16)) },
  { key := { q := 12, n := 16, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 17)) },
  { key := { q := 12, n := 16, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 18)) },
  { key := { q := 12, n := 16, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 19)) },
  { key := { q := 12, n := 16, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 20)) },
  { key := { q := 12, n := 16, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 21)) },
  { key := { q := 12, n := 16, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 22)) },
  { key := { q := 12, n := 16, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 23)) },
  { key := { q := 12, n := 16, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 24)) },
  { key := { q := 12, n := 16, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 25)) },
  { key := { q := 12, n := 16, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 26)) },
  { key := { q := 12, n := 16, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 27)) },
  { key := { q := 12, n := 16, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 28)) },
  { key := { q := 12, n := 16, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 29)) },
  { key := { q := 12, n := 16, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 30)) },
  { key := { q := 12, n := 16, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 31)) },
  { key := { q := 12, n := 16, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 32)) },
  { key := { q := 12, n := 16, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 33)) },
  { key := { q := 12, n := 16, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 34)) },
  { key := { q := 12, n := 16, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 35)) },
  { key := { q := 12, n := 16, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 36)) },
  { key := { q := 12, n := 16, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 37)) },
  { key := { q := 12, n := 16, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 38)) },
  { key := { q := 12, n := 16, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 39)) },
  { key := { q := 12, n := 16, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 40)) },
  { key := { q := 12, n := 16, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 41)) },
  { key := { q := 12, n := 16, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 42)) },
  { key := { q := 12, n := 16, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 43)) },
  { key := { q := 12, n := 16, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 44)) },
  { key := { q := 12, n := 16, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 45)) },
  { key := { q := 12, n := 16, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 46)) },
  { key := { q := 12, n := 16, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 47)) },
  { key := { q := 12, n := 16, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 16 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 16 48)) },
  { key := { q := 12, n := 17, r := 0 }
    lowerValue := 2218611106740436992
    upperValue := 2218611106740436992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 17 0)) },
  { key := { q := 12, n := 17, r := 1 }
    lowerValue := 11801122908193814
    upperValue := 92442129447518208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 1))
    upperTrace := (.lengthenFreeN 14 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 17, r := 2 }
    lowerValue := 133297951618628
    upperValue := 7703510787293184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 2))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 17, r := 3 }
    lowerValue := 2407023259393
    upperValue := 641959232274432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 3))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 17, r := 4 }
    lowerValue := 62029028153
    upperValue := 53496602689536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 4))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 17, r := 5 }
    lowerValue := 2149086250
    upperValue := 4458050224128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 5))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 17, r := 6 }
    lowerValue := 96641232
    upperValue := 371504185344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 6))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 17, r := 7 }
    lowerValue := 5519707
    upperValue := 30958682112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 7))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 6 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 17, r := 8 }
    lowerValue := 395263
    upperValue := 2579890176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 8))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 7 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 17, r := 9 }
    lowerValue := 35253
    upperValue := 214990848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 9))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 8 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 17, r := 10 }
    lowerValue := 3911
    upperValue := 17915904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 10))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 9 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 17, r := 11 }
    lowerValue := 542
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 11))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 17, r := 12 }
    lowerValue := 95
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 12))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 17, r := 13 }
    lowerValue := 21
    upperValue := 1728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 13))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 17, r := 14 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 16 15))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 17, r := 15 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 17 16)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15)) },
  { key := { q := 12, n := 17, r := 16 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 17 16))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 16)) },
  { key := { q := 12, n := 17, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 17)) },
  { key := { q := 12, n := 17, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 18)) },
  { key := { q := 12, n := 17, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 19)) },
  { key := { q := 12, n := 17, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 20)) },
  { key := { q := 12, n := 17, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 21)) },
  { key := { q := 12, n := 17, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 22)) },
  { key := { q := 12, n := 17, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 23)) },
  { key := { q := 12, n := 17, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 24)) },
  { key := { q := 12, n := 17, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 25)) },
  { key := { q := 12, n := 17, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 26)) },
  { key := { q := 12, n := 17, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 27)) },
  { key := { q := 12, n := 17, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 28)) },
  { key := { q := 12, n := 17, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 29)) },
  { key := { q := 12, n := 17, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 30)) },
  { key := { q := 12, n := 17, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 31)) },
  { key := { q := 12, n := 17, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 32)) },
  { key := { q := 12, n := 17, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 33)) },
  { key := { q := 12, n := 17, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 34)) },
  { key := { q := 12, n := 17, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 35)) },
  { key := { q := 12, n := 17, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 36)) },
  { key := { q := 12, n := 17, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 37)) },
  { key := { q := 12, n := 17, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 38)) },
  { key := { q := 12, n := 17, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 39)) },
  { key := { q := 12, n := 17, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 40)) },
  { key := { q := 12, n := 17, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 41)) },
  { key := { q := 12, n := 17, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 42)) },
  { key := { q := 12, n := 17, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 43)) },
  { key := { q := 12, n := 17, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 44)) },
  { key := { q := 12, n := 17, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 45)) },
  { key := { q := 12, n := 17, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 46)) },
  { key := { q := 12, n := 17, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 47)) },
  { key := { q := 12, n := 17, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 17 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 17 48)) },
  { key := { q := 12, n := 18, r := 0 }
    lowerValue := 26623333280885243904
    upperValue := 26623333280885243904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 18 0)) },
  { key := { q := 12, n := 18, r := 1 }
    lowerValue := 133785594376307759
    upperValue := 1109305553370218496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 1))
    upperTrace := (.lengthenFreeN 15 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 18, r := 2 }
    lowerValue := 1422794638781811
    upperValue := 92442129447518208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 2))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 18, r := 3 }
    lowerValue := 24097701393261
    upperValue := 7703510787293184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 3))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 18, r := 4 }
    lowerValue := 579949850877
    upperValue := 641959232274432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 4))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 18, r := 5 }
    lowerValue := 18672672836
    upperValue := 53496602689536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 5))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 18, r := 6 }
    lowerValue := 775895281
    upperValue := 4458050224128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 6))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 18, r := 7 }
    lowerValue := 40679054
    upperValue := 371504185344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 7))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 6 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 18, r := 8 }
    lowerValue := 2653210
    upperValue := 30958682112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 8))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 7 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 18, r := 9 }
    lowerValue := 213538
    upperValue := 2579890176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 9))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 8 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 18, r := 10 }
    lowerValue := 21136
    upperValue := 214990848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 10))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 9 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 18, r := 11 }
    lowerValue := 2575
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 11))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 18, r := 12 }
    lowerValue := 389
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 12))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 18, r := 13 }
    lowerValue := 74
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 13))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 18, r := 14 }
    lowerValue := 18
    upperValue := 1728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 14))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 18, r := 15 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 17 16))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 18, r := 16 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 18 17)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16)) },
  { key := { q := 12, n := 18, r := 17 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 18 17))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 17)) },
  { key := { q := 12, n := 18, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 18)) },
  { key := { q := 12, n := 18, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 19)) },
  { key := { q := 12, n := 18, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 20)) },
  { key := { q := 12, n := 18, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 21)) },
  { key := { q := 12, n := 18, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 22)) },
  { key := { q := 12, n := 18, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 23)) },
  { key := { q := 12, n := 18, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 24)) },
  { key := { q := 12, n := 18, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 25)) },
  { key := { q := 12, n := 18, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 26)) },
  { key := { q := 12, n := 18, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 27)) },
  { key := { q := 12, n := 18, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 28)) },
  { key := { q := 12, n := 18, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 29)) },
  { key := { q := 12, n := 18, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 30)) },
  { key := { q := 12, n := 18, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 31)) },
  { key := { q := 12, n := 18, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 32)) },
  { key := { q := 12, n := 18, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 33)) },
  { key := { q := 12, n := 18, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 34)) },
  { key := { q := 12, n := 18, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 35)) },
  { key := { q := 12, n := 18, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 36)) },
  { key := { q := 12, n := 18, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 37)) },
  { key := { q := 12, n := 18, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 38)) },
  { key := { q := 12, n := 18, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 39)) },
  { key := { q := 12, n := 18, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 40)) },
  { key := { q := 12, n := 18, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 41)) },
  { key := { q := 12, n := 18, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 42)) },
  { key := { q := 12, n := 18, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 43)) },
  { key := { q := 12, n := 18, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 44)) },
  { key := { q := 12, n := 18, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 45)) },
  { key := { q := 12, n := 18, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 46)) },
  { key := { q := 12, n := 18, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 47)) },
  { key := { q := 12, n := 18, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 18 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 18 48)) },
  { key := { q := 12, n := 19, r := 0 }
    lowerValue := 319479999370622926848
    upperValue := 319479999370622926848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 19 0)) },
  { key := { q := 12, n := 19, r := 1 }
    lowerValue := 1521333330336299652
    upperValue := 13311666640442621952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 1))
    upperTrace := (.lengthenFreeN 16 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 19, r := 2 }
    lowerValue := 15285393013282759
    upperValue := 1109305553370218496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 2))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 19, r := 3 }
    lowerValue := 243758773859049
    upperValue := 92442129447518208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 3))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 19, r := 4 }
    lowerValue := 5502663513928
    upperValue := 7703510787293184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 4))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 19, r := 5 }
    lowerValue := 165468504074
    upperValue := 641959232274432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 5))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) },
  { key := { q := 12, n := 19, r := 6 }
    lowerValue := 6390014925
    upperValue := 53496602689536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 6))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))))) }]

end CoveringCodes.Database
