import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 51. Do not edit manually.

def precomputedTable_chunk_51 : Array AnyBoundEntry := #[
  { key := { q := 5, n := 15, r := 10 }
    lowerValue := 7
    upperValue := 125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 10))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 15, r := 11 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 13 12)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 15, r := 12 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 14 13))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 15 12)) },
  { key := { q := 5, n := 15, r := 13 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 15 14)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 15 13)) },
  { key := { q := 5, n := 15, r := 14 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 15 14))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 15 14)) },
  { key := { q := 5, n := 15, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 15)) },
  { key := { q := 5, n := 15, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 16)) },
  { key := { q := 5, n := 15, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 17)) },
  { key := { q := 5, n := 15, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 18)) },
  { key := { q := 5, n := 15, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 19)) },
  { key := { q := 5, n := 15, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 20)) },
  { key := { q := 5, n := 15, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 21)) },
  { key := { q := 5, n := 15, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 22)) },
  { key := { q := 5, n := 15, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 23)) },
  { key := { q := 5, n := 15, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 24)) },
  { key := { q := 5, n := 15, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 25)) },
  { key := { q := 5, n := 15, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 26)) },
  { key := { q := 5, n := 15, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 27)) },
  { key := { q := 5, n := 15, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 28)) },
  { key := { q := 5, n := 15, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 29)) },
  { key := { q := 5, n := 15, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 30)) },
  { key := { q := 5, n := 15, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 31)) },
  { key := { q := 5, n := 15, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 32)) },
  { key := { q := 5, n := 15, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 33)) },
  { key := { q := 5, n := 15, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 34)) },
  { key := { q := 5, n := 15, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 35)) },
  { key := { q := 5, n := 15, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 36)) },
  { key := { q := 5, n := 15, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 37)) },
  { key := { q := 5, n := 15, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 38)) },
  { key := { q := 5, n := 15, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 39)) },
  { key := { q := 5, n := 15, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 40)) },
  { key := { q := 5, n := 15, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 41)) },
  { key := { q := 5, n := 15, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 42)) },
  { key := { q := 5, n := 15, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 43)) },
  { key := { q := 5, n := 15, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 44)) },
  { key := { q := 5, n := 15, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 45)) },
  { key := { q := 5, n := 15, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 46)) },
  { key := { q := 5, n := 15, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 47)) },
  { key := { q := 5, n := 15, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 15 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 15 48)) },
  { key := { q := 5, n := 16, r := 0 }
    lowerValue := 152587890625
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 16 0)) },
  { key := { q := 5, n := 16, r := 1 }
    lowerValue := 2347506010
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 1))
    upperTrace := (.lengthenFreeN 10 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))) },
  { key := { q := 5, n := 16, r := 2 }
    lowerValue := 76870474
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 2))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 16, r := 3 }
    lowerValue := 4034049
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 3))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 2 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 16, r := 4 }
    lowerValue := 302908
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 4))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 3 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 16, r := 5 }
    lowerValue := 30662
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 5))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 4 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 16, r := 6 }
    lowerValue := 4040
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 6))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 5 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 16, r := 7 }
    lowerValue := 678
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 7))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 6 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 16, r := 8 }
    lowerValue := 143
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 8))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 16, r := 9 }
    lowerValue := 38
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 9))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 16, r := 10 }
    lowerValue := 13
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 10))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 16, r := 11 }
    lowerValue := 5
    upperValue := 125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 11))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 16, r := 12 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 14 13)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12)) },
  { key := { q := 5, n := 16, r := 13 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 15 14))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 13)) },
  { key := { q := 5, n := 16, r := 14 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 16 15)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 14)) },
  { key := { q := 5, n := 16, r := 15 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 16 15))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 15)) },
  { key := { q := 5, n := 16, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 16)) },
  { key := { q := 5, n := 16, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 17)) },
  { key := { q := 5, n := 16, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 18)) },
  { key := { q := 5, n := 16, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 19)) },
  { key := { q := 5, n := 16, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 20)) },
  { key := { q := 5, n := 16, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 21)) },
  { key := { q := 5, n := 16, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 22)) },
  { key := { q := 5, n := 16, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 23)) },
  { key := { q := 5, n := 16, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 24)) },
  { key := { q := 5, n := 16, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 25)) },
  { key := { q := 5, n := 16, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 26)) },
  { key := { q := 5, n := 16, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 27)) },
  { key := { q := 5, n := 16, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 28)) },
  { key := { q := 5, n := 16, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 29)) },
  { key := { q := 5, n := 16, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 30)) },
  { key := { q := 5, n := 16, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 31)) },
  { key := { q := 5, n := 16, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 32)) },
  { key := { q := 5, n := 16, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 33)) },
  { key := { q := 5, n := 16, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 34)) },
  { key := { q := 5, n := 16, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 35)) },
  { key := { q := 5, n := 16, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 36)) },
  { key := { q := 5, n := 16, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 37)) },
  { key := { q := 5, n := 16, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 38)) },
  { key := { q := 5, n := 16, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 39)) },
  { key := { q := 5, n := 16, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 40)) },
  { key := { q := 5, n := 16, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 41)) },
  { key := { q := 5, n := 16, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 42)) },
  { key := { q := 5, n := 16, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 43)) },
  { key := { q := 5, n := 16, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 44)) },
  { key := { q := 5, n := 16, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 45)) },
  { key := { q := 5, n := 16, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 46)) },
  { key := { q := 5, n := 16, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 47)) },
  { key := { q := 5, n := 16, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 16 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 16 48)) },
  { key := { q := 5, n := 17, r := 0 }
    lowerValue := 762939453125
    upperValue := 762939453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 17 0)) },
  { key := { q := 5, n := 17, r := 1 }
    lowerValue := 11057093524
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 1))
    upperTrace := (.lengthenFreeN 11 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))) },
  { key := { q := 5, n := 17, r := 2 }
    lowerValue := 339839401
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 2))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 17, r := 3 }
    lowerValue := 16670807
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 3))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 2 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 17, r := 4 }
    lowerValue := 1164714
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 4))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 3 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 17, r := 5 }
    lowerValue := 109123
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 5))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 4 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 17, r := 6 }
    lowerValue := 13227
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 6))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 5 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 17, r := 7 }
    lowerValue := 2028
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 7))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 6 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 17, r := 8 }
    lowerValue := 388
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 8))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 17, r := 9 }
    lowerValue := 92
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 9))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 17, r := 10 }
    lowerValue := 27
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 10))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 17, r := 11 }
    lowerValue := 10
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 11))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 17, r := 12 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 12))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 17, r := 13 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 15 14)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13)) },
  { key := { q := 5, n := 17, r := 14 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 16 15))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 14)) },
  { key := { q := 5, n := 17, r := 15 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 17 16)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 15)) },
  { key := { q := 5, n := 17, r := 16 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 17 16))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 16)) },
  { key := { q := 5, n := 17, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 17)) },
  { key := { q := 5, n := 17, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 18)) },
  { key := { q := 5, n := 17, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 19)) },
  { key := { q := 5, n := 17, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 20)) },
  { key := { q := 5, n := 17, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 21)) },
  { key := { q := 5, n := 17, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 22)) },
  { key := { q := 5, n := 17, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 23)) },
  { key := { q := 5, n := 17, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 24)) },
  { key := { q := 5, n := 17, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 25)) },
  { key := { q := 5, n := 17, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 26)) },
  { key := { q := 5, n := 17, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 27)) },
  { key := { q := 5, n := 17, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 28)) },
  { key := { q := 5, n := 17, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 29)) },
  { key := { q := 5, n := 17, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 30)) },
  { key := { q := 5, n := 17, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 31)) },
  { key := { q := 5, n := 17, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 32)) },
  { key := { q := 5, n := 17, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 33)) },
  { key := { q := 5, n := 17, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 34)) },
  { key := { q := 5, n := 17, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 35)) },
  { key := { q := 5, n := 17, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 36)) },
  { key := { q := 5, n := 17, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 37)) },
  { key := { q := 5, n := 17, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 38)) },
  { key := { q := 5, n := 17, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 39)) },
  { key := { q := 5, n := 17, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 40)) },
  { key := { q := 5, n := 17, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 41)) },
  { key := { q := 5, n := 17, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 42)) },
  { key := { q := 5, n := 17, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 43)) },
  { key := { q := 5, n := 17, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 44)) },
  { key := { q := 5, n := 17, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 45)) },
  { key := { q := 5, n := 17, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 46)) },
  { key := { q := 5, n := 17, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 47)) },
  { key := { q := 5, n := 17, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 17 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 17 48)) },
  { key := { q := 5, n := 18, r := 0 }
    lowerValue := 3814697265625
    upperValue := 3814697265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 18 0)) },
  { key := { q := 5, n := 18, r := 1 }
    lowerValue := 52256126927
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 1))
    upperTrace := (.lengthenFreeN 12 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))) },
  { key := { q := 5, n := 18, r := 2 }
    lowerValue := 1513168293
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 2))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 18, r := 3 }
    lowerValue := 69681200
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 3))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 2 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 18, r := 4 }
    lowerValue := 4551575
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 4))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 3 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 18, r := 5 }
    lowerValue := 396880
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 5))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 4 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 18, r := 6 }
    lowerValue := 44539
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 6))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 5 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 18, r := 7 }
    lowerValue := 6284
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 7))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 6 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 18, r := 8 }
    lowerValue := 1098
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 8))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 18, r := 9 }
    lowerValue := 236
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 9))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 18, r := 10 }
    lowerValue := 62
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 10))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 18, r := 11 }
    lowerValue := 20
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 11))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 18, r := 12 }
    lowerValue := 8
    upperValue := 125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 12))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 18, r := 13 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 15 14))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 18, r := 14 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 16 15)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14)) },
  { key := { q := 5, n := 18, r := 15 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 17 16))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 15)) },
  { key := { q := 5, n := 18, r := 16 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 18 17)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 16)) },
  { key := { q := 5, n := 18, r := 17 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 18 17))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 17)) },
  { key := { q := 5, n := 18, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 18)) },
  { key := { q := 5, n := 18, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 19)) },
  { key := { q := 5, n := 18, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 20)) },
  { key := { q := 5, n := 18, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 21)) },
  { key := { q := 5, n := 18, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 22)) },
  { key := { q := 5, n := 18, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 23)) },
  { key := { q := 5, n := 18, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 24)) },
  { key := { q := 5, n := 18, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 25)) },
  { key := { q := 5, n := 18, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 26)) },
  { key := { q := 5, n := 18, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 27)) },
  { key := { q := 5, n := 18, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 28)) },
  { key := { q := 5, n := 18, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 29)) },
  { key := { q := 5, n := 18, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 30)) },
  { key := { q := 5, n := 18, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 31)) },
  { key := { q := 5, n := 18, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 32)) },
  { key := { q := 5, n := 18, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 33)) },
  { key := { q := 5, n := 18, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 34)) },
  { key := { q := 5, n := 18, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 35)) },
  { key := { q := 5, n := 18, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 36)) },
  { key := { q := 5, n := 18, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 37)) },
  { key := { q := 5, n := 18, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 38)) },
  { key := { q := 5, n := 18, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 39)) },
  { key := { q := 5, n := 18, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 40)) },
  { key := { q := 5, n := 18, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 41)) },
  { key := { q := 5, n := 18, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 42)) },
  { key := { q := 5, n := 18, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 43)) },
  { key := { q := 5, n := 18, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 44)) },
  { key := { q := 5, n := 18, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 45)) },
  { key := { q := 5, n := 18, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 46)) },
  { key := { q := 5, n := 18, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 47)) },
  { key := { q := 5, n := 18, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 18 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 18 48)) },
  { key := { q := 5, n := 19, r := 0 }
    lowerValue := 19073486328125
    upperValue := 19073486328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 19 0)) },
  { key := { q := 5, n := 19, r := 1 }
    lowerValue := 247707614651
    upperValue := 762939453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 1))
    upperTrace := (.lengthenFreeN 13 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))) },
  { key := { q := 5, n := 19, r := 2 }
    lowerValue := 6780478610
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 2))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 19, r := 3 }
    lowerValue := 294212256
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 3))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 2 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 19, r := 4 }
    lowerValue := 18043475
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 4))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 3 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 19, r := 5 }
    lowerValue := 1471248
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 5))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 4 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 19, r := 6 }
    lowerValue := 153699
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 6))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 5 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 19, r := 7 }
    lowerValue := 20085
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 7))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 6 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 19, r := 8 }
    lowerValue := 3232
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 8))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 19, r := 9 }
    lowerValue := 634
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 9))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 19, r := 10 }
    lowerValue := 151
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 10))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 19, r := 11 }
    lowerValue := 43
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 11))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 19, r := 12 }
    lowerValue := 15
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 12))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 19, r := 13 }
    lowerValue := 7
    upperValue := 125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 13))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 19, r := 14 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 16 15))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 19, r := 15 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 17 16)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15)) },
  { key := { q := 5, n := 19, r := 16 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 18 17))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 16)) },
  { key := { q := 5, n := 19, r := 17 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 19 18)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 17)) },
  { key := { q := 5, n := 19, r := 18 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 19 18))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 18)) },
  { key := { q := 5, n := 19, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 19)) },
  { key := { q := 5, n := 19, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 20)) },
  { key := { q := 5, n := 19, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 21)) },
  { key := { q := 5, n := 19, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 22)) },
  { key := { q := 5, n := 19, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 23)) },
  { key := { q := 5, n := 19, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 24)) },
  { key := { q := 5, n := 19, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 25)) },
  { key := { q := 5, n := 19, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 26)) },
  { key := { q := 5, n := 19, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 27)) },
  { key := { q := 5, n := 19, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 28)) },
  { key := { q := 5, n := 19, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 29)) },
  { key := { q := 5, n := 19, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 30)) },
  { key := { q := 5, n := 19, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 31)) },
  { key := { q := 5, n := 19, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 32)) },
  { key := { q := 5, n := 19, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 33)) },
  { key := { q := 5, n := 19, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 34)) },
  { key := { q := 5, n := 19, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 35)) },
  { key := { q := 5, n := 19, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 36)) },
  { key := { q := 5, n := 19, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 37)) },
  { key := { q := 5, n := 19, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 38)) },
  { key := { q := 5, n := 19, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 39)) },
  { key := { q := 5, n := 19, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 40)) },
  { key := { q := 5, n := 19, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 41)) },
  { key := { q := 5, n := 19, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 42)) },
  { key := { q := 5, n := 19, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 43)) },
  { key := { q := 5, n := 19, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 44)) },
  { key := { q := 5, n := 19, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 45)) },
  { key := { q := 5, n := 19, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 46)) },
  { key := { q := 5, n := 19, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 47)) },
  { key := { q := 5, n := 19, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 19 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 19 48)) },
  { key := { q := 5, n := 20, r := 0 }
    lowerValue := 95367431640625
    upperValue := 95367431640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 20 0)) },
  { key := { q := 5, n := 20, r := 1 }
    lowerValue := 1177375699267
    upperValue := 3814697265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 1))
    upperTrace := (.lengthenFreeN 14 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))) },
  { key := { q := 5, n := 20, r := 2 }
    lowerValue := 30556690690
    upperValue := 762939453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 2))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 20, r := 3 }
    lowerValue := 1253498662
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 3))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 2 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 20, r := 4 }
    lowerValue := 72445579
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 4))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 3 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 20, r := 5 }
    lowerValue := 5547038
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 5))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 4 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 20, r := 6 }
    lowerValue := 542004
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 6))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 5 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 20, r := 7 }
    lowerValue := 65951
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 7))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 6 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 20, r := 8 }
    lowerValue := 9831
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 8))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 20, r := 9 }
    lowerValue := 1775
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 9))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 20, r := 10 }
    lowerValue := 386
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 10))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 20, r := 11 }
    lowerValue := 101
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 11))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 20, r := 12 }
    lowerValue := 32
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 12))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 20, r := 13 }
    lowerValue := 12
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 13))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 20, r := 14 }
    lowerValue := 6
    upperValue := 125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 20 14))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) }]

end CoveringCodes.Database
