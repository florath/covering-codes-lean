import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 54. Do not edit manually.

def precomputedTable_chunk_54 : Array AnyBoundEntry := #[
  { key := { q := 5, n := 30, r := 25 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 27 26))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 30 25)) },
  { key := { q := 5, n := 30, r := 26 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 28 27)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 30 26)) },
  { key := { q := 5, n := 30, r := 27 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 29 28))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 30 27)) },
  { key := { q := 5, n := 30, r := 28 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 30 29)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 30 28)) },
  { key := { q := 5, n := 30, r := 29 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 30 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 30 29)) },
  { key := { q := 5, n := 30, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 30 30)) },
  { key := { q := 5, n := 30, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 30 31)) },
  { key := { q := 5, n := 30, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 30 32)) },
  { key := { q := 5, n := 30, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 30 33)) },
  { key := { q := 5, n := 30, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 30 34)) },
  { key := { q := 5, n := 30, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 30 35)) },
  { key := { q := 5, n := 30, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 30 36)) },
  { key := { q := 5, n := 30, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 30 37)) },
  { key := { q := 5, n := 30, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 30 38)) },
  { key := { q := 5, n := 30, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 30 39)) },
  { key := { q := 5, n := 30, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 30 40)) },
  { key := { q := 5, n := 30, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 30 41)) },
  { key := { q := 5, n := 30, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 30 42)) },
  { key := { q := 5, n := 30, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 30 43)) },
  { key := { q := 5, n := 30, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 30 44)) },
  { key := { q := 5, n := 30, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 30 45)) },
  { key := { q := 5, n := 30, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 30 46)) },
  { key := { q := 5, n := 30, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 30 47)) },
  { key := { q := 5, n := 30, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 30 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 30 48)) },
  { key := { q := 5, n := 31, r := 0 }
    lowerValue := 4656612873077392578125
    upperValue := 4656612873077392578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 31 0)) },
  { key := { q := 5, n := 31, r := 1 }
    lowerValue := 37252902984619140625
    upperValue := 484287738800048828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 1))
    upperTrace := (.lengthenFreeN 28 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 31, r := 2 }
    lowerValue := 615546975952067757
    upperValue := 96857547760009765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 2))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))))) },
  { key := { q := 5, n := 31, r := 3 }
    lowerValue := 15772029579086497
    upperValue := 19371509552001953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 3))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 2 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))))) },
  { key := { q := 5, n := 31, r := 4 }
    lowerValue := 557659154517169
    upperValue := 1490116119384765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 4))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 31, r := 5 }
    lowerValue := 25538195711758
    upperValue := 298023223876953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 5))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 31, r := 6 }
    lowerValue := 1456035056272
    upperValue := 59604644775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 6))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 31, r := 7 }
    lowerValue := 100615857851
    upperValue := 11920928955078125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 7))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 31, r := 8 }
    lowerValue := 8267009496
    upperValue := 476837158203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 8))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 31, r := 9 }
    lowerValue := 796258190
    upperValue := 95367431640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 9))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 31, r := 10 }
    lowerValue := 88943491
    upperValue := 19073486328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 10))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 31, r := 11 }
    lowerValue := 11427379
    upperValue := 3814697265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 11))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 31, r := 12 }
    lowerValue := 1677995
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 12))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 31, r := 13 }
    lowerValue := 280241
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 13))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 31, r := 14 }
    lowerValue := 53037
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 14))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 31, r := 15 }
    lowerValue := 11344
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 15))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 31, r := 16 }
    lowerValue := 2738
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 16))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 31, r := 17 }
    lowerValue := 745
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 17))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17))) },
  { key := { q := 5, n := 31, r := 18 }
    lowerValue := 228
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 18))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 18))) },
  { key := { q := 5, n := 31, r := 19 }
    lowerValue := 79
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 19))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 19))) },
  { key := { q := 5, n := 31, r := 20 }
    lowerValue := 31
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 20))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 20))) },
  { key := { q := 5, n := 31, r := 21 }
    lowerValue := 14
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 21))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 21))) },
  { key := { q := 5, n := 31, r := 22 }
    lowerValue := 7
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 22))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 28 22))) },
  { key := { q := 5, n := 31, r := 23 }
    lowerValue := 5
    upperValue := 125
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 25 24)))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 29 23))) },
  { key := { q := 5, n := 31, r := 24 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 26 25))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 31 24)) },
  { key := { q := 5, n := 31, r := 25 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 27 26)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 31 25)) },
  { key := { q := 5, n := 31, r := 26 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 28 27))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 31 26)) },
  { key := { q := 5, n := 31, r := 27 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 29 28)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 31 27)) },
  { key := { q := 5, n := 31, r := 28 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 30 29))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 31 28)) },
  { key := { q := 5, n := 31, r := 29 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 31 30)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 31 29)) },
  { key := { q := 5, n := 31, r := 30 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 31 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 31 30)) },
  { key := { q := 5, n := 31, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 31 31)) },
  { key := { q := 5, n := 31, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 31 32)) },
  { key := { q := 5, n := 31, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 31 33)) },
  { key := { q := 5, n := 31, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 31 34)) },
  { key := { q := 5, n := 31, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 31 35)) },
  { key := { q := 5, n := 31, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 31 36)) },
  { key := { q := 5, n := 31, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 31 37)) },
  { key := { q := 5, n := 31, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 31 38)) },
  { key := { q := 5, n := 31, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 31 39)) },
  { key := { q := 5, n := 31, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 31 40)) },
  { key := { q := 5, n := 31, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 31 41)) },
  { key := { q := 5, n := 31, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 31 42)) },
  { key := { q := 5, n := 31, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 31 43)) },
  { key := { q := 5, n := 31, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 31 44)) },
  { key := { q := 5, n := 31, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 31 45)) },
  { key := { q := 5, n := 31, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 31 46)) },
  { key := { q := 5, n := 31, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 31 47)) },
  { key := { q := 5, n := 31, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 31 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 31 48)) },
  { key := { q := 5, n := 32, r := 0 }
    lowerValue := 23283064365386962890625
    upperValue := 23283064365386962890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 32 0)) },
  { key := { q := 5, n := 32, r := 1 }
    lowerValue := 180488871049511340238
    upperValue := 2421438694000244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 1))
    upperTrace := (.lengthenFreeN 29 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 32, r := 2 }
    lowerValue := 2886926765702041276
    upperValue := 484287738800048828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 2))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))))) },
  { key := { q := 5, n := 32, r := 3 }
    lowerValue := 71529052903601982
    upperValue := 96857547760009765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 3))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 2 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))))) },
  { key := { q := 5, n := 32, r := 4 }
    lowerValue := 2442809466045375
    upperValue := 7450580596923828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 4))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 32, r := 5 }
    lowerValue := 107921726040643
    upperValue := 1490116119384765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 5))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 32, r := 6 }
    lowerValue := 5928210880898
    upperValue := 298023223876953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 6))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 32, r := 7 }
    lowerValue := 394135957654
    upperValue := 59604644775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 7))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 32, r := 8 }
    lowerValue := 31110413379
    upperValue := 2384185791015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 8))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 32, r := 9 }
    lowerValue := 2874017519
    upperValue := 476837158203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 9))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 32, r := 10 }
    lowerValue := 307378499
    upperValue := 95367431640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 10))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 32, r := 11 }
    lowerValue := 37741116
    upperValue := 19073486328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 11))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 32, r := 12 }
    lowerValue := 5285491
    upperValue := 762939453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 12))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 32, r := 13 }
    lowerValue := 840031
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 13))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 32, r := 14 }
    lowerValue := 150928
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 14))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 32, r := 15 }
    lowerValue := 30567
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 15))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 32, r := 16 }
    lowerValue := 6965
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 16))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 32, r := 17 }
    lowerValue := 1783
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 17))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17))) },
  { key := { q := 5, n := 32, r := 18 }
    lowerValue := 513
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 18))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 18))) },
  { key := { q := 5, n := 32, r := 19 }
    lowerValue := 166
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 19))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 19))) },
  { key := { q := 5, n := 32, r := 20 }
    lowerValue := 60
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 20))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 20))) },
  { key := { q := 5, n := 32, r := 21 }
    lowerValue := 25
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 21))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 21))) },
  { key := { q := 5, n := 32, r := 22 }
    lowerValue := 12
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 22))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 28 22))) },
  { key := { q := 5, n := 32, r := 23 }
    lowerValue := 6
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 23))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 29 23))) },
  { key := { q := 5, n := 32, r := 24 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 26 25)))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 31 24))) },
  { key := { q := 5, n := 32, r := 25 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 27 26))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 32 25)) },
  { key := { q := 5, n := 32, r := 26 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 28 27)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 32 26)) },
  { key := { q := 5, n := 32, r := 27 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 29 28))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 32 27)) },
  { key := { q := 5, n := 32, r := 28 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 30 29)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 32 28)) },
  { key := { q := 5, n := 32, r := 29 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 31 30))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 32 29)) },
  { key := { q := 5, n := 32, r := 30 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 32 31)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 32 30)) },
  { key := { q := 5, n := 32, r := 31 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 32 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 32 31)) },
  { key := { q := 5, n := 32, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 32 32)) },
  { key := { q := 5, n := 32, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 32 33)) },
  { key := { q := 5, n := 32, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 32 34)) },
  { key := { q := 5, n := 32, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 32 35)) },
  { key := { q := 5, n := 32, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 32 36)) },
  { key := { q := 5, n := 32, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 32 37)) },
  { key := { q := 5, n := 32, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 32 38)) },
  { key := { q := 5, n := 32, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 32 39)) },
  { key := { q := 5, n := 32, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 32 40)) },
  { key := { q := 5, n := 32, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 32 41)) },
  { key := { q := 5, n := 32, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 32 42)) },
  { key := { q := 5, n := 32, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 32 43)) },
  { key := { q := 5, n := 32, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 32 44)) },
  { key := { q := 5, n := 32, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 32 45)) },
  { key := { q := 5, n := 32, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 32 46)) },
  { key := { q := 5, n := 32, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 32 47)) },
  { key := { q := 5, n := 32, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 32 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 32 48)) },
  { key := { q := 5, n := 33, r := 0 }
    lowerValue := 116415321826934814453125
    upperValue := 116415321826934814453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 33 0)) },
  { key := { q := 5, n := 33, r := 1 }
    lowerValue := 875303171631088830475
    upperValue := 12107193470001220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 1))
    upperTrace := (.lengthenFreeN 30 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 33, r := 2 }
    lowerValue := 13566638133892881303
    upperValue := 2421438694000244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 2))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))))) },
  { key := { q := 5, n := 33, r := 3 }
    lowerValue := 325396061176847413
    upperValue := 484287738800048828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 3))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 2 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))))) },
  { key := { q := 5, n := 33, r := 4 }
    lowerValue := 10746077651140427
    upperValue := 37252902984619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 4))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 33, r := 5 }
    lowerValue := 458571137358864
    upperValue := 7450580596923828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 5))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 33, r := 6 }
    lowerValue := 24301471593570
    upperValue := 1490116119384765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 6))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 33, r := 7 }
    lowerValue := 1556693831134
    upperValue := 298023223876953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 7))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 33, r := 8 }
    lowerValue := 118224662094
    upperValue := 11920928955078125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 8))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 33, r := 9 }
    lowerValue := 10492754368
    upperValue := 2384185791015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 9))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 33, r := 10 }
    lowerValue := 1076403566
    upperValue := 476837158203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 10))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 33, r := 11 }
    lowerValue := 126551606
    upperValue := 95367431640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 11))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 33, r := 12 }
    lowerValue := 16938680
    upperValue := 3814697265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 12))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 33, r := 13 }
    lowerValue := 2567761
    upperValue := 762939453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 13))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 33, r := 14 }
    lowerValue := 439080
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 14))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 33, r := 15 }
    lowerValue := 84434
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 15))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 33, r := 16 }
    lowerValue := 18218
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 16))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 33, r := 17 }
    lowerValue := 4404
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 17))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17))) },
  { key := { q := 5, n := 33, r := 18 }
    lowerValue := 1192
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 18))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 18))) },
  { key := { q := 5, n := 33, r := 19 }
    lowerValue := 361
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 19))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 19))) },
  { key := { q := 5, n := 33, r := 20 }
    lowerValue := 123
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 20))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 20))) },
  { key := { q := 5, n := 33, r := 21 }
    lowerValue := 47
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 21))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 21))) },
  { key := { q := 5, n := 33, r := 22 }
    lowerValue := 20
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 22))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 28 22))) },
  { key := { q := 5, n := 33, r := 23 }
    lowerValue := 10
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 23))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 29 23))) },
  { key := { q := 5, n := 33, r := 24 }
    lowerValue := 5
    upperValue := 125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 24))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 31 24))) },
  { key := { q := 5, n := 33, r := 25 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 27 26)))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 32 25))) },
  { key := { q := 5, n := 33, r := 26 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 28 27))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 33 26)) },
  { key := { q := 5, n := 33, r := 27 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 29 28)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 33 27)) },
  { key := { q := 5, n := 33, r := 28 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 30 29))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 33 28)) },
  { key := { q := 5, n := 33, r := 29 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 31 30)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 33 29)) },
  { key := { q := 5, n := 33, r := 30 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 32 31))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 33 30)) },
  { key := { q := 5, n := 33, r := 31 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 33 32)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 33 31)) },
  { key := { q := 5, n := 33, r := 32 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 33 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 33 32)) },
  { key := { q := 5, n := 33, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 33 33)) },
  { key := { q := 5, n := 33, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 33 34)) },
  { key := { q := 5, n := 33, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 33 35)) },
  { key := { q := 5, n := 33, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 33 36)) },
  { key := { q := 5, n := 33, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 33 37)) },
  { key := { q := 5, n := 33, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 33 38)) },
  { key := { q := 5, n := 33, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 33 39)) },
  { key := { q := 5, n := 33, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 33 40)) },
  { key := { q := 5, n := 33, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 33 41)) },
  { key := { q := 5, n := 33, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 33 42)) },
  { key := { q := 5, n := 33, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 33 43)) },
  { key := { q := 5, n := 33, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 33 44)) },
  { key := { q := 5, n := 33, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 33 45)) },
  { key := { q := 5, n := 33, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 33 46)) },
  { key := { q := 5, n := 33, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 33 47)) },
  { key := { q := 5, n := 33, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 33 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 33 48)) },
  { key := { q := 5, n := 34, r := 0 }
    lowerValue := 582076609134674072265625
    upperValue := 582076609134674072265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 34 0)) },
  { key := { q := 5, n := 34, r := 1 }
    lowerValue := 4248734373245796147925
    upperValue := 60535967350006103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 1))
    upperTrace := (.lengthenFreeN 31 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 34, r := 2 }
    lowerValue := 63873215092140247149
    upperValue := 12107193470001220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 2))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))))) },
  { key := { q := 5, n := 34, r := 3 }
    lowerValue := 1484552255061157218
    upperValue := 2421438694000244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 3))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 2 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))))) },
  { key := { q := 5, n := 34, r := 4 }
    lowerValue := 47460880229207029
    upperValue := 186264514923095703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 4))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 34, r := 5 }
    lowerValue := 1958544981480960
    upperValue := 37252902984619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 5))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 34, r := 6 }
    lowerValue := 100255615042374
    upperValue := 7450580596923828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 6))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 34, r := 7 }
    lowerValue := 6195893104942
    upperValue := 1490116119384765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 7))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 34, r := 8 }
    lowerValue := 453390530432
    upperValue := 59604644775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 8))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 34, r := 9 }
    lowerValue := 38718345679
    upperValue := 11920928955078125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 9))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 34, r := 10 }
    lowerValue := 3816109226
    upperValue := 2384185791015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 10))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 34, r := 11 }
    lowerValue := 430366926
    upperValue := 476837158203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 11))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 34, r := 12 }
    lowerValue := 55160765
    upperValue := 19073486328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 12))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 34, r := 13 }
    lowerValue := 7992451
    upperValue := 3814697265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 13))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 34, r := 14 }
    lowerValue := 1303690
    upperValue := 762939453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 14))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 34, r := 15 }
    lowerValue := 238624
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 15))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 34, r := 16 }
    lowerValue := 48893
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 16))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 34, r := 17 }
    lowerValue := 11195
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 17))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17))) },
  { key := { q := 5, n := 34, r := 18 }
    lowerValue := 2862
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 18))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 18))) },
  { key := { q := 5, n := 34, r := 19 }
    lowerValue := 816
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 19))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 19))) },
  { key := { q := 5, n := 34, r := 20 }
    lowerValue := 260
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 20))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 20))) },
  { key := { q := 5, n := 34, r := 21 }
    lowerValue := 93
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 21))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 21))) },
  { key := { q := 5, n := 34, r := 22 }
    lowerValue := 37
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 22))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 28 22))) },
  { key := { q := 5, n := 34, r := 23 }
    lowerValue := 17
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 23))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 29 23))) },
  { key := { q := 5, n := 34, r := 24 }
    lowerValue := 8
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 24))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 31 24))) },
  { key := { q := 5, n := 34, r := 25 }
    lowerValue := 5
    upperValue := 125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 25))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 32 25))) },
  { key := { q := 5, n := 34, r := 26 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 28 27)))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 33 26))) },
  { key := { q := 5, n := 34, r := 27 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 29 28))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 34 27)) },
  { key := { q := 5, n := 34, r := 28 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 30 29)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 34 28)) },
  { key := { q := 5, n := 34, r := 29 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 31 30))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 34 29)) },
  { key := { q := 5, n := 34, r := 30 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 32 31)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 34 30)) },
  { key := { q := 5, n := 34, r := 31 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 33 32))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 34 31)) },
  { key := { q := 5, n := 34, r := 32 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 34 33)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 34 32)) },
  { key := { q := 5, n := 34, r := 33 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 34 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 34 33)) },
  { key := { q := 5, n := 34, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 34 34)) },
  { key := { q := 5, n := 34, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 34 35)) },
  { key := { q := 5, n := 34, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 34 36)) },
  { key := { q := 5, n := 34, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 34 37)) },
  { key := { q := 5, n := 34, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 34 38)) },
  { key := { q := 5, n := 34, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 34 39)) },
  { key := { q := 5, n := 34, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 34 40)) },
  { key := { q := 5, n := 34, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 34 41)) },
  { key := { q := 5, n := 34, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 34 42)) },
  { key := { q := 5, n := 34, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 34 43)) },
  { key := { q := 5, n := 34, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 34 44)) },
  { key := { q := 5, n := 34, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 34 45)) },
  { key := { q := 5, n := 34, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 34 46)) },
  { key := { q := 5, n := 34, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 34 47)) },
  { key := { q := 5, n := 34, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 34 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 34 48)) },
  { key := { q := 5, n := 35, r := 0 }
    lowerValue := 2910383045673370361328125
    upperValue := 2910383045673370361328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 35 0)) },
  { key := { q := 5, n := 35, r := 1 }
    lowerValue := 20641014508321775612257
    upperValue := 302679836750030517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 1))
    upperTrace := (.lengthenFreeN 32 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 35, r := 2 }
    lowerValue := 301250703413039060277
    upperValue := 60535967350006103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 2))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))))) },
  { key := { q := 5, n := 35, r := 3 }
    lowerValue := 6791375960931090284
    upperValue := 12107193470001220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 3))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 2 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))))) },
  { key := { q := 5, n := 35, r := 4 }
    lowerValue := 210398753336269639
    upperValue := 931322574615478515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 4))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 35, r := 5 }
    lowerValue := 8405295927773489
    upperValue := 186264514923095703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 5))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 35, r := 6 }
    lowerValue := 416082897739050
    upperValue := 37252902984619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 6))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 35, r := 7 }
    lowerValue := 24839135897329
    upperValue := 7450580596923828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 7))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 35, r := 8 }
    lowerValue := 1753651891327
    upperValue := 298023223876953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 8))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 35, r := 9 }
    lowerValue := 144300285660
    upperValue := 59604644775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 9))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 35, r := 10 }
    lowerValue := 13685237134
    upperValue := 11920928955078125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 10))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 35, r := 11 }
    lowerValue := 1482893347
    upperValue := 2384185791015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 11))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 35, r := 12 }
    lowerValue := 182327225
    upperValue := 95367431640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 12))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 35, r := 13 }
    lowerValue := 25299370
    upperValue := 19073486328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 13))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 35, r := 14 }
    lowerValue := 3944693
    upperValue := 3814697265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 14))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 35, r := 15 }
    lowerValue := 688808
    upperValue := 762939453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 15))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 35, r := 16 }
    lowerValue := 134352
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 16))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 35, r := 17 }
    lowerValue := 29216
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 17))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17))) },
  { key := { q := 5, n := 35, r := 18 }
    lowerValue := 7074
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 18))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 18))) },
  { key := { q := 5, n := 35, r := 19 }
    lowerValue := 1906
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 19))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 19))) },
  { key := { q := 5, n := 35, r := 20 }
    lowerValue := 571
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 20))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 20))) },
  { key := { q := 5, n := 35, r := 21 }
    lowerValue := 191
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 21))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 21))) },
  { key := { q := 5, n := 35, r := 22 }
    lowerValue := 71
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 22))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 28 22))) },
  { key := { q := 5, n := 35, r := 23 }
    lowerValue := 30
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 23))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 29 23))) },
  { key := { q := 5, n := 35, r := 24 }
    lowerValue := 14
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 24))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 31 24))) },
  { key := { q := 5, n := 35, r := 25 }
    lowerValue := 7
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 35 25))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 32 25))) },
  { key := { q := 5, n := 35, r := 26 }
    lowerValue := 5
    upperValue := 125
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 28 27))))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 33 26))) },
  { key := { q := 5, n := 35, r := 27 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 29 28)))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 34 27))) },
  { key := { q := 5, n := 35, r := 28 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 30 29))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 35 28)) },
  { key := { q := 5, n := 35, r := 29 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 31 30)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 35 29)) }]

end CoveringCodes.Database
