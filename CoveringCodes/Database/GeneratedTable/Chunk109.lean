import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 109. Do not edit manually.

def precomputedTable_chunk_109 : Array AnyBoundEntry := #[
  { key := { q := 11, n := 17, r := 6 }
    lowerValue := 38822923
    upperValue := 143834809151
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 6))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 5 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 17, r := 7 }
    lowerValue := 2435898
    upperValue := 13075891741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 7))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 6 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 17, r := 8 }
    lowerValue := 191567
    upperValue := 1188717431
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 8))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 7 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 17, r := 9 }
    lowerValue := 18757
    upperValue := 108065221
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 9))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 8 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 17, r := 10 }
    lowerValue := 2283
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 10))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 17, r := 11 }
    lowerValue := 347
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 11))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 17, r := 12 }
    lowerValue := 67
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 12))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 17, r := 13 }
    lowerValue := 17
    upperValue := 1331
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 13))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 17, r := 14 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 16 15))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 17, r := 15 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 17 16)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15)) },
  { key := { q := 11, n := 17, r := 16 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 17 16))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 16)) },
  { key := { q := 11, n := 17, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 17)) },
  { key := { q := 11, n := 17, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 18)) },
  { key := { q := 11, n := 17, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 19)) },
  { key := { q := 11, n := 17, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 20)) },
  { key := { q := 11, n := 17, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 21)) },
  { key := { q := 11, n := 17, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 22)) },
  { key := { q := 11, n := 17, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 23)) },
  { key := { q := 11, n := 17, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 24)) },
  { key := { q := 11, n := 17, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 25)) },
  { key := { q := 11, n := 17, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 26)) },
  { key := { q := 11, n := 17, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 27)) },
  { key := { q := 11, n := 17, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 28)) },
  { key := { q := 11, n := 17, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 29)) },
  { key := { q := 11, n := 17, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 30)) },
  { key := { q := 11, n := 17, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 31)) },
  { key := { q := 11, n := 17, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 32)) },
  { key := { q := 11, n := 17, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 33)) },
  { key := { q := 11, n := 17, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 34)) },
  { key := { q := 11, n := 17, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 35)) },
  { key := { q := 11, n := 17, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 36)) },
  { key := { q := 11, n := 17, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 37)) },
  { key := { q := 11, n := 17, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 38)) },
  { key := { q := 11, n := 17, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 39)) },
  { key := { q := 11, n := 17, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 40)) },
  { key := { q := 11, n := 17, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 41)) },
  { key := { q := 11, n := 17, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 42)) },
  { key := { q := 11, n := 17, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 43)) },
  { key := { q := 11, n := 17, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 44)) },
  { key := { q := 11, n := 17, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 45)) },
  { key := { q := 11, n := 17, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 46)) },
  { key := { q := 11, n := 17, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 47)) },
  { key := { q := 11, n := 17, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 17 48)) },
  { key := { q := 11, n := 18, r := 0 }
    lowerValue := 5559917313492231481
    upperValue := 5559917313492231481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 18 0)) },
  { key := { q := 11, n := 18, r := 1 }
    lowerValue := 30717775212664263
    upperValue := 254812138334354711
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 1))
    upperTrace := (.lengthenFreeN 15 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 18, r := 2 }
    lowerValue := 359144584554760
    upperValue := 23164739848577701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 2))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 18, r := 3 }
    lowerValue := 6686764115467
    upperValue := 2105885440779791
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 3))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 18, r := 4 }
    lowerValue := 176890083974
    upperValue := 191444130979981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 4))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 18, r := 5 }
    lowerValue := 6259536430
    upperValue := 17404011907271
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 5))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 18, r := 6 }
    lowerValue := 285824139
    upperValue := 1582182900661
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 6))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 5 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 18, r := 7 }
    lowerValue := 16464452
    upperValue := 143834809151
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 7))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 6 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 18, r := 8 }
    lowerValue := 1179575
    upperValue := 13075891741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 8))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 7 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 18, r := 9 }
    lowerValue := 104249
    upperValue := 1188717431
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 9))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 8 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 18, r := 10 }
    lowerValue := 11326
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 10))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 18, r := 11 }
    lowerValue := 1514
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 11))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 18, r := 12 }
    lowerValue := 251
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 12))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 18, r := 13 }
    lowerValue := 52
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 13))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 18, r := 14 }
    lowerValue := 14
    upperValue := 1331
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 14))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 18, r := 15 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 17 16))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 18, r := 16 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 18 17)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16)) },
  { key := { q := 11, n := 18, r := 17 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 18 17))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 17)) },
  { key := { q := 11, n := 18, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 18)) },
  { key := { q := 11, n := 18, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 19)) },
  { key := { q := 11, n := 18, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 20)) },
  { key := { q := 11, n := 18, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 21)) },
  { key := { q := 11, n := 18, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 22)) },
  { key := { q := 11, n := 18, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 23)) },
  { key := { q := 11, n := 18, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 24)) },
  { key := { q := 11, n := 18, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 25)) },
  { key := { q := 11, n := 18, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 26)) },
  { key := { q := 11, n := 18, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 27)) },
  { key := { q := 11, n := 18, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 28)) },
  { key := { q := 11, n := 18, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 29)) },
  { key := { q := 11, n := 18, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 30)) },
  { key := { q := 11, n := 18, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 31)) },
  { key := { q := 11, n := 18, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 32)) },
  { key := { q := 11, n := 18, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 33)) },
  { key := { q := 11, n := 18, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 34)) },
  { key := { q := 11, n := 18, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 35)) },
  { key := { q := 11, n := 18, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 36)) },
  { key := { q := 11, n := 18, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 37)) },
  { key := { q := 11, n := 18, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 38)) },
  { key := { q := 11, n := 18, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 39)) },
  { key := { q := 11, n := 18, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 40)) },
  { key := { q := 11, n := 18, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 41)) },
  { key := { q := 11, n := 18, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 42)) },
  { key := { q := 11, n := 18, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 43)) },
  { key := { q := 11, n := 18, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 44)) },
  { key := { q := 11, n := 18, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 45)) },
  { key := { q := 11, n := 18, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 46)) },
  { key := { q := 11, n := 18, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 47)) },
  { key := { q := 11, n := 18, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 18 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 18 48)) },
  { key := { q := 11, n := 19, r := 0 }
    lowerValue := 61159090448414546291
    upperValue := 61159090448414546291
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 19 0)) },
  { key := { q := 11, n := 19, r := 1 }
    lowerValue := 320204662033584012
    upperValue := 2802933521677901821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 1))
    upperTrace := (.lengthenFreeN 16 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 19, r := 2 }
    lowerValue := 3537047622949196
    upperValue := 254812138334354711
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 2))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 19, r := 3 }
    lowerValue := 62009174217766
    upperValue := 23164739848577701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 3))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 19, r := 4 }
    lowerValue := 1538737047148
    upperValue := 2105885440779791
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 4))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 19, r := 5 }
    lowerValue := 50857992667
    upperValue := 191444130979981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 5))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 19, r := 6 }
    lowerValue := 2158463730
    upperValue := 17404011907271
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 6))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 5 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 19, r := 7 }
    lowerValue := 114914354
    upperValue := 1582182900661
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 7))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 6 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 19, r := 8 }
    lowerValue := 7559451
    upperValue := 143834809151
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 8))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 7 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 19, r := 9 }
    lowerValue := 608740
    upperValue := 13075891741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 9))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 8 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 19, r := 10 }
    lowerValue := 59712
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 10))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 19, r := 11 }
    lowerValue := 7127
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 11))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 19, r := 12 }
    lowerValue := 1038
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 12))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 19, r := 13 }
    lowerValue := 186
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 13))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 19, r := 14 }
    lowerValue := 41
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 14))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 19, r := 15 }
    lowerValue := 12
    upperValue := 1331
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 15))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 19, r := 16 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 18 17))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 19, r := 17 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 19 18)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17)) },
  { key := { q := 11, n := 19, r := 18 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 19 18))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 18)) },
  { key := { q := 11, n := 19, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 19)) },
  { key := { q := 11, n := 19, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 20)) },
  { key := { q := 11, n := 19, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 21)) },
  { key := { q := 11, n := 19, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 22)) },
  { key := { q := 11, n := 19, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 23)) },
  { key := { q := 11, n := 19, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 24)) },
  { key := { q := 11, n := 19, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 25)) },
  { key := { q := 11, n := 19, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 26)) },
  { key := { q := 11, n := 19, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 27)) },
  { key := { q := 11, n := 19, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 28)) },
  { key := { q := 11, n := 19, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 29)) },
  { key := { q := 11, n := 19, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 30)) },
  { key := { q := 11, n := 19, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 31)) },
  { key := { q := 11, n := 19, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 32)) },
  { key := { q := 11, n := 19, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 33)) },
  { key := { q := 11, n := 19, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 34)) },
  { key := { q := 11, n := 19, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 35)) },
  { key := { q := 11, n := 19, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 36)) },
  { key := { q := 11, n := 19, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 37)) },
  { key := { q := 11, n := 19, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 38)) },
  { key := { q := 11, n := 19, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 39)) },
  { key := { q := 11, n := 19, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 40)) },
  { key := { q := 11, n := 19, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 41)) },
  { key := { q := 11, n := 19, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 42)) },
  { key := { q := 11, n := 19, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 43)) },
  { key := { q := 11, n := 19, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 44)) },
  { key := { q := 11, n := 19, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 45)) },
  { key := { q := 11, n := 19, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 46)) },
  { key := { q := 11, n := 19, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 47)) },
  { key := { q := 11, n := 19, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 19 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 19 48)) },
  { key := { q := 11, n := 20, r := 0 }
    lowerValue := 672749994932560009201
    upperValue := 672749994932560009201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 20 0)) },
  { key := { q := 11, n := 20, r := 1 }
    lowerValue := 3347014900161990096
    upperValue := 30832268738456920031
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 1))
    upperTrace := (.lengthenFreeN 17 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 20, r := 2 }
    lowerValue := 35037237379957295
    upperValue := 2802933521677901821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 2))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 20, r := 3 }
    lowerValue := 580356637832922
    upperValue := 254812138334354711
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 3))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 20, r := 4 }
    lowerValue := 13560992343589
    upperValue := 23164739848577701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 4))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 20, r := 5 }
    lowerValue := 420466328889
    upperValue := 2105885440779791
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 5))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 20, r := 6 }
    lowerValue := 16668727492
    upperValue := 191444130979981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 6))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 5 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 20, r := 7 }
    lowerValue := 824893310
    upperValue := 17404011907271
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 7))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 6 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 20, r := 8 }
    lowerValue := 50158210
    upperValue := 1582182900661
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 8))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 7 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 20, r := 9 }
    lowerValue := 3709216
    upperValue := 143834809151
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 9))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 8 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 20, r := 10 }
    lowerValue := 331579
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 10))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 20, r := 11 }
    lowerValue := 35738
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 11))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 20, r := 12 }
    lowerValue := 4647
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 12))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 20, r := 13 }
    lowerValue := 732
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 13))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 20, r := 14 }
    lowerValue := 141
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 14))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 20, r := 15 }
    lowerValue := 34
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 15))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 20, r := 16 }
    lowerValue := 11
    upperValue := 1331
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 18 17)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 20, r := 17 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 19 18))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 20, r := 18 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 20 19)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18)) },
  { key := { q := 11, n := 20, r := 19 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 20 19))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 19)) },
  { key := { q := 11, n := 20, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 20)) },
  { key := { q := 11, n := 20, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 21)) },
  { key := { q := 11, n := 20, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 22)) },
  { key := { q := 11, n := 20, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 23)) },
  { key := { q := 11, n := 20, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 24)) },
  { key := { q := 11, n := 20, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 25)) },
  { key := { q := 11, n := 20, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 26)) },
  { key := { q := 11, n := 20, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 27)) },
  { key := { q := 11, n := 20, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 28)) },
  { key := { q := 11, n := 20, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 29)) },
  { key := { q := 11, n := 20, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 30)) },
  { key := { q := 11, n := 20, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 31)) },
  { key := { q := 11, n := 20, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 32)) },
  { key := { q := 11, n := 20, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 33)) },
  { key := { q := 11, n := 20, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 34)) },
  { key := { q := 11, n := 20, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 35)) },
  { key := { q := 11, n := 20, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 36)) },
  { key := { q := 11, n := 20, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 37)) },
  { key := { q := 11, n := 20, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 38)) },
  { key := { q := 11, n := 20, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 39)) },
  { key := { q := 11, n := 20, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 40)) },
  { key := { q := 11, n := 20, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 41)) },
  { key := { q := 11, n := 20, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 42)) },
  { key := { q := 11, n := 20, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 43)) },
  { key := { q := 11, n := 20, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 44)) },
  { key := { q := 11, n := 20, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 45)) },
  { key := { q := 11, n := 20, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 46)) },
  { key := { q := 11, n := 20, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 47)) },
  { key := { q := 11, n := 20, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 20 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 20 48)) },
  { key := { q := 11, n := 21, r := 0 }
    lowerValue := 7400249944258160101211
    upperValue := 7400249944258160101211
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 21 0)) },
  { key := { q := 11, n := 21, r := 1 }
    lowerValue := 35072274617337251665
    upperValue := 339154956123026120341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 1))
    upperTrace := (.lengthenFreeN 18 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 21, r := 2 }
    lowerValue := 348887367133004578
    upperValue := 30832268738456920031
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 2))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 21, r := 3 }
    lowerValue := 5476753774398048
    upperValue := 2802933521677901821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 3))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 21, r := 4 }
    lowerValue := 120916724086688
    upperValue := 254812138334354711
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 4))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 21, r := 5 }
    lowerValue := 3530483120483
    upperValue := 23164739848577701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 5))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 21, r := 6 }
    lowerValue := 131302992459
    upperValue := 2105885440779791
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 6))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 5 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 21, r := 7 }
    lowerValue := 6069957455
    upperValue := 191444130979981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 7))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 6 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 21, r := 8 }
    lowerValue := 343109932
    upperValue := 17404011907271
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 8))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 7 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 21, r := 9 }
    lowerValue := 23455763
    upperValue := 1582182900661
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 9))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 8 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 21, r := 10 }
    lowerValue := 1925816
    upperValue := 25937424601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 10))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 21, r := 11 }
    lowerValue := 189196
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 11))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 21, r := 12 }
    lowerValue := 22221
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 12))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 21, r := 13 }
    lowerValue := 3126
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 13))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 21, r := 14 }
    lowerValue := 529
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 14))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 21, r := 15 }
    lowerValue := 109
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 15))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 21, r := 16 }
    lowerValue := 28
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 16))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 21, r := 17 }
    lowerValue := 11
    upperValue := 1331
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 19 18)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 21, r := 18 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 20 19))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 21, r := 19 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 21 20)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19)) },
  { key := { q := 11, n := 21, r := 20 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 21 20))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 20)) },
  { key := { q := 11, n := 21, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 21)) },
  { key := { q := 11, n := 21, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 22)) },
  { key := { q := 11, n := 21, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 23)) },
  { key := { q := 11, n := 21, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 24)) },
  { key := { q := 11, n := 21, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 25)) },
  { key := { q := 11, n := 21, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 26)) },
  { key := { q := 11, n := 21, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 27)) },
  { key := { q := 11, n := 21, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 28)) },
  { key := { q := 11, n := 21, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 29)) },
  { key := { q := 11, n := 21, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 30)) },
  { key := { q := 11, n := 21, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 31)) },
  { key := { q := 11, n := 21, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 32)) },
  { key := { q := 11, n := 21, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 33)) },
  { key := { q := 11, n := 21, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 34)) },
  { key := { q := 11, n := 21, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 35)) },
  { key := { q := 11, n := 21, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 36)) },
  { key := { q := 11, n := 21, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 37)) },
  { key := { q := 11, n := 21, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 38)) },
  { key := { q := 11, n := 21, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 39)) },
  { key := { q := 11, n := 21, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 40)) },
  { key := { q := 11, n := 21, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 41)) },
  { key := { q := 11, n := 21, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 42)) },
  { key := { q := 11, n := 21, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 43)) },
  { key := { q := 11, n := 21, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 44)) },
  { key := { q := 11, n := 21, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 45)) },
  { key := { q := 11, n := 21, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 46)) },
  { key := { q := 11, n := 21, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 47)) },
  { key := { q := 11, n := 21, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 21 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 21 48)) },
  { key := { q := 11, n := 22, r := 0 }
    lowerValue := 81402749386839761113321
    upperValue := 81402749386839761113321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 22 0)) },
  { key := { q := 11, n := 22, r := 1 }
    lowerValue := 368338232519636928115
    upperValue := 3730704517353287323751
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 1))
    upperTrace := (.lengthenFreeN 19 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 22, r := 2 }
    lowerValue := 3490534256114221565
    upperValue := 339154956123026120341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 2))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 22, r := 3 }
    lowerValue := 52070399736739775
    upperValue := 30832268738456920031
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 3))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 22, r := 4 }
    lowerValue := 1089534614407514
    upperValue := 2802933521677901821
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 4))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 22, r := 5 }
    lowerValue := 30058841613313
    upperValue := 254812138334354711
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 5))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 22, r := 6 }
    lowerValue := 1052788118155
    upperValue := 23164739848577701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 6))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 5 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 22, r := 7 }
    lowerValue := 45661052835
    upperValue := 2105885440779791
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 7))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 6 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 22, r := 8 }
    lowerValue := 2411235942
    upperValue := 191444130979981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 8))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 7 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 22, r := 9 }
    lowerValue := 153248967
    upperValue := 17404011907271
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 9))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 8 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 22, r := 10 }
    lowerValue := 11632887
    upperValue := 285311670611
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 22 10))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) }]

end CoveringCodes.Database
