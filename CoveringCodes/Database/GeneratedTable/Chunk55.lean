import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 55. Do not edit manually.

def precomputedTable_chunk_55 : Array AnyBoundEntry := #[
  { key := { q := 5, n := 35, r := 30 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 32 31))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 35 30)) },
  { key := { q := 5, n := 35, r := 31 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 33 32)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 35 31)) },
  { key := { q := 5, n := 35, r := 32 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 34 33))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 35 32)) },
  { key := { q := 5, n := 35, r := 33 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 35 34)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 35 33)) },
  { key := { q := 5, n := 35, r := 34 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 35 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 35 34)) },
  { key := { q := 5, n := 35, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 35 35)) },
  { key := { q := 5, n := 35, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 35 36)) },
  { key := { q := 5, n := 35, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 35 37)) },
  { key := { q := 5, n := 35, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 35 38)) },
  { key := { q := 5, n := 35, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 35 39)) },
  { key := { q := 5, n := 35, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 35 40)) },
  { key := { q := 5, n := 35, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 35 41)) },
  { key := { q := 5, n := 35, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 35 42)) },
  { key := { q := 5, n := 35, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 35 43)) },
  { key := { q := 5, n := 35, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 35 44)) },
  { key := { q := 5, n := 35, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 35 45)) },
  { key := { q := 5, n := 35, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 35 46)) },
  { key := { q := 5, n := 35, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 35 47)) },
  { key := { q := 5, n := 35, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 35 48)) },
  { key := { q := 5, n := 36, r := 0 }
    lowerValue := 14551915228366851806640625
    upperValue := 14551915228366851806640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 36 0)) },
  { key := { q := 5, n := 36, r := 1 }
    lowerValue := 100358036057702426252694
    upperValue := 582076609134674072265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 1))
    upperTrace := (.lengthenFreeN 30 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))) },
  { key := { q := 5, n := 36, r := 2 }
    lowerValue := 1423170193483310690137
    upperValue := 116415321826934814453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 2))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 36, r := 3 }
    lowerValue := 31148078873180542626
    upperValue := 23283064365386962890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 3))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 2 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 36, r := 4 }
    lowerValue := 936003189605547602
    upperValue := 4656612873077392578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 4))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 3 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 36, r := 5 }
    lowerValue := 36236051160908051
    upperValue := 931322574615478515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 5))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 4 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 36, r := 6 }
    lowerValue := 1736558715541954
    upperValue := 186264514923095703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 6))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 5 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 36, r := 7 }
    lowerValue := 100255615042374
    upperValue := 37252902984619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 7))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 6 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 36, r := 8 }
    lowerValue := 6837374969187
    upperValue := 1490116119384765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 8))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 36, r := 9 }
    lowerValue := 542832313273
    upperValue := 298023223876953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 9))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 36, r := 10 }
    lowerValue := 49607400086
    upperValue := 59604644775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 10))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 36, r := 11 }
    lowerValue := 5172539916
    upperValue := 11920928955078125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 11))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 36, r := 12 }
    lowerValue := 611092021
    upperValue := 476837158203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 12))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 36, r := 13 }
    lowerValue := 81346772
    upperValue := 95367431640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 13))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 36, r := 14 }
    lowerValue := 12147366
    upperValue := 19073486328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 14))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 36, r := 15 }
    lowerValue := 2027736
    upperValue := 3814697265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 15))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 36, r := 16 }
    lowerValue := 377350
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 16))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 36, r := 17 }
    lowerValue := 78124
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 17))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17))) },
  { key := { q := 5, n := 36, r := 18 }
    lowerValue := 17968
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 18))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 18))) },
  { key := { q := 5, n := 36, r := 19 }
    lowerValue := 4586
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 19))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 19))) },
  { key := { q := 5, n := 36, r := 20 }
    lowerValue := 1299
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 20))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 20))) },
  { key := { q := 5, n := 36, r := 21 }
    lowerValue := 408
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 21))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 21))) },
  { key := { q := 5, n := 36, r := 22 }
    lowerValue := 142
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 22))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 28 22))) },
  { key := { q := 5, n := 36, r := 23 }
    lowerValue := 55
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 23))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 29 23))) },
  { key := { q := 5, n := 36, r := 24 }
    lowerValue := 24
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 24))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 31 24))) },
  { key := { q := 5, n := 36, r := 25 }
    lowerValue := 12
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 25))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 32 25))) },
  { key := { q := 5, n := 36, r := 26 }
    lowerValue := 6
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 26))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 33 26))) },
  { key := { q := 5, n := 36, r := 27 }
    lowerValue := 5
    upperValue := 125
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 29 28))))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 34 27))) },
  { key := { q := 5, n := 36, r := 28 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 30 29)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 36 28)) },
  { key := { q := 5, n := 36, r := 29 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 31 30))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 36 29)) },
  { key := { q := 5, n := 36, r := 30 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 32 31)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 36 30)) },
  { key := { q := 5, n := 36, r := 31 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 33 32))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 36 31)) },
  { key := { q := 5, n := 36, r := 32 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 34 33)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 36 32)) },
  { key := { q := 5, n := 36, r := 33 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 35 34))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 36 33)) },
  { key := { q := 5, n := 36, r := 34 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 36 35)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 36 34)) },
  { key := { q := 5, n := 36, r := 35 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 36 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 36 35)) },
  { key := { q := 5, n := 36, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 36 36)) },
  { key := { q := 5, n := 36, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 36 37)) },
  { key := { q := 5, n := 36, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 36 38)) },
  { key := { q := 5, n := 36, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 36 39)) },
  { key := { q := 5, n := 36, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 36 40)) },
  { key := { q := 5, n := 36, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 36 41)) },
  { key := { q := 5, n := 36, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 36 42)) },
  { key := { q := 5, n := 36, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 36 43)) },
  { key := { q := 5, n := 36, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 36 44)) },
  { key := { q := 5, n := 36, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 36 45)) },
  { key := { q := 5, n := 36, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 36 46)) },
  { key := { q := 5, n := 36, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 36 47)) },
  { key := { q := 5, n := 36, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 36 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 36 48)) },
  { key := { q := 5, n := 37, r := 0 }
    lowerValue := 72759576141834259033203125
    upperValue := 72759576141834259033203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 37 0)) },
  { key := { q := 5, n := 37, r := 1 }
    lowerValue := 488319302965330597538277
    upperValue := 2910383045673370361328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 1))
    upperTrace := (.lengthenFreeN 31 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))) },
  { key := { q := 5, n := 37, r := 2 }
    lowerValue := 6733880253756062844351
    upperValue := 582076609134674072265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 2))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 37, r := 3 }
    lowerValue := 143203550866162667730
    upperValue := 116415321826934814453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 3))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 2 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 37, r := 4 }
    lowerValue := 4177837987358708414
    upperValue := 23283064365386962890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 4))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 3 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 37, r := 5 }
    lowerValue := 156885800575329326
    upperValue := 4656612873077392578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 5))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 4 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 37, r := 6 }
    lowerValue := 7286093008910229
    upperValue := 931322574615478515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 6))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 5 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 37, r := 7 }
    lowerValue := 407235439903019
    upperValue := 186264514923095703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 7))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 6 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 37, r := 8 }
    lowerValue := 26859629931198
    upperValue := 7450580596923828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 8))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 37, r := 9 }
    lowerValue := 2059978871357
    upperValue := 1490116119384765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 9))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 37, r := 10 }
    lowerValue := 181639574687
    upperValue := 298023223876953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 10))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 37, r := 11 }
    lowerValue := 18250722926
    upperValue := 59604644775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 11))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 37, r := 12 }
    lowerValue := 2074921917
    upperValue := 2384185791015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 12))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 37, r := 13 }
    lowerValue := 265410957
    upperValue := 476837158203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 13))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 37, r := 14 }
    lowerValue := 38024382
    upperValue := 95367431640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 14))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 37, r := 15 }
    lowerValue := 6079393
    upperValue := 19073486328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 15))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 37, r := 16 }
    lowerValue := 1081617
    upperValue := 762939453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 16))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 37, r := 17 }
    lowerValue := 213672
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 17))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17))) },
  { key := { q := 5, n := 37, r := 18 }
    lowerValue := 46792
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 18))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 18))) },
  { key := { q := 5, n := 37, r := 19 }
    lowerValue := 11347
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 19))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 19))) },
  { key := { q := 5, n := 37, r := 20 }
    lowerValue := 3045
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 20))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 20))) },
  { key := { q := 5, n := 37, r := 21 }
    lowerValue := 904
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 21))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 21))) },
  { key := { q := 5, n := 37, r := 22 }
    lowerValue := 297
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 22))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 28 22))) },
  { key := { q := 5, n := 37, r := 23 }
    lowerValue := 108
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 23))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 29 23))) },
  { key := { q := 5, n := 37, r := 24 }
    lowerValue := 44
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 24))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 31 24))) },
  { key := { q := 5, n := 37, r := 25 }
    lowerValue := 20
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 25))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 32 25))) },
  { key := { q := 5, n := 37, r := 26 }
    lowerValue := 10
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 26))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 33 26))) },
  { key := { q := 5, n := 37, r := 27 }
    lowerValue := 6
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 27))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 34 27))) },
  { key := { q := 5, n := 37, r := 28 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 30 29))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 36 28))) },
  { key := { q := 5, n := 37, r := 29 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 31 30)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 37 29)) },
  { key := { q := 5, n := 37, r := 30 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 32 31))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 37 30)) },
  { key := { q := 5, n := 37, r := 31 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 33 32)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 37 31)) },
  { key := { q := 5, n := 37, r := 32 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 34 33))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 37 32)) },
  { key := { q := 5, n := 37, r := 33 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 35 34)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 37 33)) },
  { key := { q := 5, n := 37, r := 34 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 36 35))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 37 34)) },
  { key := { q := 5, n := 37, r := 35 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 37 36)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 37 35)) },
  { key := { q := 5, n := 37, r := 36 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 37 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 37 36)) },
  { key := { q := 5, n := 37, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 37 37)) },
  { key := { q := 5, n := 37, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 37 38)) },
  { key := { q := 5, n := 37, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 37 39)) },
  { key := { q := 5, n := 37, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 37 40)) },
  { key := { q := 5, n := 37, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 37 41)) },
  { key := { q := 5, n := 37, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 37 42)) },
  { key := { q := 5, n := 37, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 37 43)) },
  { key := { q := 5, n := 37, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 37 44)) },
  { key := { q := 5, n := 37, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 37 45)) },
  { key := { q := 5, n := 37, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 37 46)) },
  { key := { q := 5, n := 37, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 37 47)) },
  { key := { q := 5, n := 37, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 37 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 37 48)) },
  { key := { q := 5, n := 38, r := 0 }
    lowerValue := 363797880709171295166015625
    upperValue := 363797880709171295166015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 38 0)) },
  { key := { q := 5, n := 38, r := 1 }
    lowerValue := 2377763926203733955333436
    upperValue := 14551915228366851806640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 1))
    upperTrace := (.lengthenFreeN 32 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))) },
  { key := { q := 5, n := 38, r := 2 }
    lowerValue := 31909295738020462693274
    upperValue := 2910383045673370361328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 2))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 38, r := 3 }
    lowerValue := 659884965144831436621
    upperValue := 582076609134674072265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 3))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 2 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 38, r := 4 }
    lowerValue := 18706237636376043596
    upperValue := 116415321826934814453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 4))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 3 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 38, r := 5 }
    lowerValue := 681989036302825868
    upperValue := 23283064365386962890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 5))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 4 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 38, r := 6 }
    lowerValue := 30723095042212076
    upperValue := 4656612873077392578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 6))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 5 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 38, r := 7 }
    lowerValue := 1664129960622509
    upperValue := 931322574615478515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 7))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 6 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 38, r := 8 }
    lowerValue := 106263324635402
    upperValue := 37252902984619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 8))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 38, r := 9 }
    lowerValue := 7881906944087
    upperValue := 7450580596923828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 9))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 38, r := 10 }
    lowerValue := 671395469026
    upperValue := 1490116119384765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 10))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 38, r := 11 }
    lowerValue := 65092315452
    upperValue := 298023223876953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 11))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 38, r := 12 }
    lowerValue := 7131495173
    upperValue := 11920928955078125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 12))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 38, r := 13 }
    lowerValue := 877882142
    upperValue := 2384185791015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 13))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 38, r := 14 }
    lowerValue := 120860868
    upperValue := 476837158203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 14))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 38, r := 15 }
    lowerValue := 18540096
    upperValue := 95367431640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 15))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 38, r := 16 }
    lowerValue := 3159554
    upperValue := 3814697265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 16))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 38, r := 17 }
    lowerValue := 596783
    upperValue := 762939453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 17))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17))) },
  { key := { q := 5, n := 38, r := 18 }
    lowerValue := 124714
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 18))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 18))) },
  { key := { q := 5, n := 38, r := 19 }
    lowerValue := 28799
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 19))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 19))) },
  { key := { q := 5, n := 38, r := 20 }
    lowerValue := 7342
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 20))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 20))) },
  { key := { q := 5, n := 38, r := 21 }
    lowerValue := 2066
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 21))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 21))) },
  { key := { q := 5, n := 38, r := 22 }
    lowerValue := 642
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 22))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 28 22))) },
  { key := { q := 5, n := 38, r := 23 }
    lowerValue := 220
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 23))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 29 23))) },
  { key := { q := 5, n := 38, r := 24 }
    lowerValue := 84
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 24))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 31 24))) },
  { key := { q := 5, n := 38, r := 25 }
    lowerValue := 35
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 25))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 32 25))) },
  { key := { q := 5, n := 38, r := 26 }
    lowerValue := 17
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 26))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 33 26))) },
  { key := { q := 5, n := 38, r := 27 }
    lowerValue := 9
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 27))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 34 27))) },
  { key := { q := 5, n := 38, r := 28 }
    lowerValue := 5
    upperValue := 125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 28))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 36 28))) },
  { key := { q := 5, n := 38, r := 29 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 31 30))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 37 29))) },
  { key := { q := 5, n := 38, r := 30 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 32 31)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 38 30)) },
  { key := { q := 5, n := 38, r := 31 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 33 32))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 38 31)) },
  { key := { q := 5, n := 38, r := 32 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 34 33)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 38 32)) },
  { key := { q := 5, n := 38, r := 33 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 35 34))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 38 33)) },
  { key := { q := 5, n := 38, r := 34 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 36 35)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 38 34)) },
  { key := { q := 5, n := 38, r := 35 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 37 36))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 38 35)) },
  { key := { q := 5, n := 38, r := 36 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 38 37)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 38 36)) },
  { key := { q := 5, n := 38, r := 37 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 38 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 38 37)) },
  { key := { q := 5, n := 38, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 38 38)) },
  { key := { q := 5, n := 38, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 38 39)) },
  { key := { q := 5, n := 38, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 38 40)) },
  { key := { q := 5, n := 38, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 38 41)) },
  { key := { q := 5, n := 38, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 38 42)) },
  { key := { q := 5, n := 38, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 38 43)) },
  { key := { q := 5, n := 38, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 38 44)) },
  { key := { q := 5, n := 38, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 38 45)) },
  { key := { q := 5, n := 38, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 38 46)) },
  { key := { q := 5, n := 38, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 38 47)) },
  { key := { q := 5, n := 38, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 38 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 38 48)) },
  { key := { q := 5, n := 39, r := 0 }
    lowerValue := 1818989403545856475830078125
    upperValue := 1818989403545856475830078125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 39 0)) },
  { key := { q := 5, n := 39, r := 1 }
    lowerValue := 11585919767808003030764829
    upperValue := 72759576141834259033203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 1))
    upperTrace := (.lengthenFreeN 33 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))) },
  { key := { q := 5, n := 39, r := 2 }
    lowerValue := 151418413680667316726054
    upperValue := 14551915228366851806640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 2))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 39, r := 3 }
    lowerValue := 3047347926645194620671
    upperValue := 2910383045673370361328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 3))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 2 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 39, r := 4 }
    lowerValue := 84005705565253692744
    upperValue := 582076609134674072265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 4))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 3 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 39, r := 5 }
    lowerValue := 2975957273803039618
    upperValue := 116415321826934814453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 5))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 4 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 39, r := 6 }
    lowerValue := 130160875573002647
    upperValue := 23283064365386962890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 6))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 5 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 39, r := 7 }
    lowerValue := 6838917830012498
    upperValue := 4656612873077392578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 7))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 6 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 39, r := 8 }
    lowerValue := 423217976368143
    upperValue := 186264514923095703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 8))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 39, r := 9 }
    lowerValue := 30392330616988
    upperValue := 37252902984619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 9))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 39, r := 10 }
    lowerValue := 2503847744524
    upperValue := 7450580596923828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 10))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 39, r := 11 }
    lowerValue := 234515668047
    upperValue := 1490116119384765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 11))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 39, r := 12 }
    lowerValue := 24792457915
    upperValue := 59604644775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 12))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 39, r := 13 }
    lowerValue := 2941181194
    upperValue := 11920928955078125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 13))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 39, r := 14 }
    lowerValue := 389699557
    upperValue := 2384185791015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 14))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 39, r := 15 }
    lowerValue := 57449433
    upperValue := 476837158203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 15))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 39, r := 16 }
    lowerValue := 9394099
    upperValue := 19073486328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 16))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 39, r := 17 }
    lowerValue := 1699725
    upperValue := 3814697265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 17))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17))) },
  { key := { q := 5, n := 39, r := 18 }
    lowerValue := 339652
    upperValue := 762939453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 18))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 18))) },
  { key := { q := 5, n := 39, r := 19 }
    lowerValue := 74853
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 19))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 19))) },
  { key := { q := 5, n := 39, r := 20 }
    lowerValue := 18175
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 20))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 20))) },
  { key := { q := 5, n := 39, r := 21 }
    lowerValue := 4860
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 21))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 21))) },
  { key := { q := 5, n := 39, r := 22 }
    lowerValue := 1431
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 22))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 28 22))) },
  { key := { q := 5, n := 39, r := 23 }
    lowerValue := 464
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 23))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 29 23))) },
  { key := { q := 5, n := 39, r := 24 }
    lowerValue := 166
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 24))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 31 24))) },
  { key := { q := 5, n := 39, r := 25 }
    lowerValue := 65
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 25))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 32 25))) },
  { key := { q := 5, n := 39, r := 26 }
    lowerValue := 29
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 26))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 33 26))) },
  { key := { q := 5, n := 39, r := 27 }
    lowerValue := 14
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 27))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 34 27))) },
  { key := { q := 5, n := 39, r := 28 }
    lowerValue := 8
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 28))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 36 28))) },
  { key := { q := 5, n := 39, r := 29 }
    lowerValue := 5
    upperValue := 125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 29))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 37 29))) },
  { key := { q := 5, n := 39, r := 30 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 32 31))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 38 30))) },
  { key := { q := 5, n := 39, r := 31 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 33 32)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 39 31)) },
  { key := { q := 5, n := 39, r := 32 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 34 33))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 39 32)) },
  { key := { q := 5, n := 39, r := 33 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 35 34)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 39 33)) },
  { key := { q := 5, n := 39, r := 34 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 36 35))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 39 34)) },
  { key := { q := 5, n := 39, r := 35 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 37 36)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 39 35)) },
  { key := { q := 5, n := 39, r := 36 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 38 37))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 39 36)) },
  { key := { q := 5, n := 39, r := 37 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 39 38)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 39 37)) },
  { key := { q := 5, n := 39, r := 38 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 39 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 39 38)) },
  { key := { q := 5, n := 39, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 39 39)) },
  { key := { q := 5, n := 39, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 39 40)) },
  { key := { q := 5, n := 39, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 39 41)) },
  { key := { q := 5, n := 39, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 39 42)) },
  { key := { q := 5, n := 39, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 39 43)) },
  { key := { q := 5, n := 39, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 39 44)) },
  { key := { q := 5, n := 39, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 39 45)) },
  { key := { q := 5, n := 39, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 39 46)) },
  { key := { q := 5, n := 39, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 39 47)) },
  { key := { q := 5, n := 39, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 39 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 39 48)) },
  { key := { q := 5, n := 40, r := 0 }
    lowerValue := 9094947017729282379150390625
    upperValue := 9094947017729282379150390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 40 0)) },
  { key := { q := 5, n := 40, r := 1 }
    lowerValue := 56490354147386847075468265
    upperValue := 363797880709171295166015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 1))
    upperTrace := (.lengthenFreeN 34 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))) },
  { key := { q := 5, n := 40, r := 2 }
    lowerValue := 719480026716975111079060
    upperValue := 72759576141834259033203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 2))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 40, r := 3 }
    lowerValue := 14101545702343680283228
    upperValue := 14551915228366851806640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 3))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 2 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 40, r := 4 }
    lowerValue := 378312977913226867073
    upperValue := 2910383045673370361328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 4))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 3 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 40, r := 5 }
    lowerValue := 13032979015219993503
    upperValue := 582076609134674072265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 5))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 4 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 40, r := 6 }
    lowerValue := 553899671752975600
    upperValue := 116415321826934814453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 6))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 5 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 40, r := 7 }
    lowerValue := 28256064213070524
    upperValue := 23283064365386962890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 7))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 6 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 5, n := 40, r := 8 }
    lowerValue := 1696216769459182
    upperValue := 931322574615478515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 8))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 40, r := 9 }
    lowerValue := 118051399952912
    upperValue := 186264514923095703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 9))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 40, r := 10 }
    lowerValue := 9416240938889
    upperValue := 37252902984619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 10))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 40, r := 11 }
    lowerValue := 853002337949
    upperValue := 7450580596923828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 11))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 40, r := 12 }
    lowerValue := 87121253927
    upperValue := 298023223876953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 12))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 40, r := 13 }
    lowerValue := 9973294659
    upperValue := 59604644775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 13))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 40, r := 14 }
    lowerValue := 1273535832
    upperValue := 11920928955078125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 14))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 40, r := 15 }
    lowerValue := 180695049
    upperValue := 2384185791015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 15))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 40, r := 16 }
    lowerValue := 28396787
    upperValue := 95367431640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 16))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 40, r := 17 }
    lowerValue := 4930335
    upperValue := 19073486328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 17))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17))) },
  { key := { q := 5, n := 40, r := 18 }
    lowerValue := 943839
    upperValue := 3814697265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 18))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 18))) },
  { key := { q := 5, n := 40, r := 19 }
    lowerValue := 198916
    upperValue := 762939453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 19))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 19))) },
  { key := { q := 5, n := 40, r := 20 }
    lowerValue := 46101
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 20))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 20))) },
  { key := { q := 5, n := 40, r := 21 }
    lowerValue := 11741
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 21))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 21))) },
  { key := { q := 5, n := 40, r := 22 }
    lowerValue := 3285
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 22))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 28 22))) },
  { key := { q := 5, n := 40, r := 23 }
    lowerValue := 1010
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 23))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 29 23))) },
  { key := { q := 5, n := 40, r := 24 }
    lowerValue := 341
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 24))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 31 24))) },
  { key := { q := 5, n := 40, r := 25 }
    lowerValue := 127
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 25))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 32 25))) },
  { key := { q := 5, n := 40, r := 26 }
    lowerValue := 52
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 26))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 33 26))) },
  { key := { q := 5, n := 40, r := 27 }
    lowerValue := 24
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 27))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 34 27))) },
  { key := { q := 5, n := 40, r := 28 }
    lowerValue := 12
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 28))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 36 28))) },
  { key := { q := 5, n := 40, r := 29 }
    lowerValue := 7
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 29))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 37 29))) },
  { key := { q := 5, n := 40, r := 30 }
    lowerValue := 5
    upperValue := 125
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 32 31)))))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 38 30))) },
  { key := { q := 5, n := 40, r := 31 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 33 32))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 39 31))) },
  { key := { q := 5, n := 40, r := 32 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 34 33)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 40 32)) },
  { key := { q := 5, n := 40, r := 33 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 35 34))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 40 33)) },
  { key := { q := 5, n := 40, r := 34 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 36 35)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 40 34)) }]

end CoveringCodes.Database
