import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 108. Do not edit manually.

def precomputedTable_chunk_108 : Array AnyBoundEntry := #[
  { key := { q := 11, n := 12, r := 1 }
    lowerValue := 25937424601
    upperValue := 143834809151
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 1))
    upperTrace := (.lengthenFreeN 9 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 12, r := 2 }
    lowerValue := 466958545
    upperValue := 13075891741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 2))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 12, r := 3 }
    lowerValue := 13842690
    upperValue := 1188717431
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 3))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 12, r := 4 }
    lowerValue := 606258
    upperValue := 108065221
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 4))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 12, r := 5 }
    lowerValue := 37196
    upperValue := 3865224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 5))
    upperTrace := (.lengthenFreeN 4 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))) },
  { key := { q := 11, n := 12, r := 6 }
    lowerValue := 3113
    upperValue := 351384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 6))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 12, r := 7 }
    lowerValue := 352
    upperValue := 31944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 7))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 12, r := 8 }
    lowerValue := 54
    upperValue := 2904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 8))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 11, n := 12, r := 9 }
    lowerValue := 12
    upperValue := 264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 9))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 11) (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))) },
  { key := { q := 11, n := 12, r := 10 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 12 11)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10)) },
  { key := { q := 11, n := 12, r := 11 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 12 11))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 11)) },
  { key := { q := 11, n := 12, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 12)) },
  { key := { q := 11, n := 12, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 13)) },
  { key := { q := 11, n := 12, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 14)) },
  { key := { q := 11, n := 12, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 15)) },
  { key := { q := 11, n := 12, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 16)) },
  { key := { q := 11, n := 12, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 17)) },
  { key := { q := 11, n := 12, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 18)) },
  { key := { q := 11, n := 12, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 19)) },
  { key := { q := 11, n := 12, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 20)) },
  { key := { q := 11, n := 12, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 21)) },
  { key := { q := 11, n := 12, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 22)) },
  { key := { q := 11, n := 12, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 23)) },
  { key := { q := 11, n := 12, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 24)) },
  { key := { q := 11, n := 12, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 25)) },
  { key := { q := 11, n := 12, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 26)) },
  { key := { q := 11, n := 12, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 27)) },
  { key := { q := 11, n := 12, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 28)) },
  { key := { q := 11, n := 12, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 29)) },
  { key := { q := 11, n := 12, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 30)) },
  { key := { q := 11, n := 12, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 31)) },
  { key := { q := 11, n := 12, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 32)) },
  { key := { q := 11, n := 12, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 33)) },
  { key := { q := 11, n := 12, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 34)) },
  { key := { q := 11, n := 12, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 35)) },
  { key := { q := 11, n := 12, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 36)) },
  { key := { q := 11, n := 12, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 37)) },
  { key := { q := 11, n := 12, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 38)) },
  { key := { q := 11, n := 12, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 39)) },
  { key := { q := 11, n := 12, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 40)) },
  { key := { q := 11, n := 12, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 41)) },
  { key := { q := 11, n := 12, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 42)) },
  { key := { q := 11, n := 12, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 43)) },
  { key := { q := 11, n := 12, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 44)) },
  { key := { q := 11, n := 12, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 45)) },
  { key := { q := 11, n := 12, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 46)) },
  { key := { q := 11, n := 12, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 47)) },
  { key := { q := 11, n := 12, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 12 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 12 48)) },
  { key := { q := 11, n := 13, r := 0 }
    lowerValue := 34522712143931
    upperValue := 34522712143931
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 13 0)) },
  { key := { q := 11, n := 13, r := 1 }
    lowerValue := 263532153771
    upperValue := 1582182900661
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 1))
    upperTrace := (.lengthenFreeN 10 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 13, r := 2 }
    lowerValue := 4352882631
    upperValue := 143834809151
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 2))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 13, r := 3 }
    lowerValue := 117451757
    upperValue := 13075891741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 3))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 13, r := 4 }
    lowerValue := 4637700
    upperValue := 1188717431
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 4))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 13, r := 5 }
    lowerValue := 253576
    upperValue := 42517464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 5))
    upperTrace := (.lengthenFreeN 5 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))) },
  { key := { q := 11, n := 13, r := 6 }
    lowerValue := 18640
    upperValue := 3865224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 6))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 13, r := 7 }
    lowerValue := 1816
    upperValue := 351384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 7))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 13, r := 8 }
    lowerValue := 234
    upperValue := 31944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 8))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 13, r := 9 }
    lowerValue := 41
    upperValue := 2904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 9))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 11, n := 13, r := 10 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 12 11))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 13, r := 11 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 13 12)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11)) },
  { key := { q := 11, n := 13, r := 12 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 13 12))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 12)) },
  { key := { q := 11, n := 13, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 13)) },
  { key := { q := 11, n := 13, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 14)) },
  { key := { q := 11, n := 13, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 15)) },
  { key := { q := 11, n := 13, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 16)) },
  { key := { q := 11, n := 13, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 17)) },
  { key := { q := 11, n := 13, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 18)) },
  { key := { q := 11, n := 13, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 19)) },
  { key := { q := 11, n := 13, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 20)) },
  { key := { q := 11, n := 13, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 21)) },
  { key := { q := 11, n := 13, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 22)) },
  { key := { q := 11, n := 13, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 23)) },
  { key := { q := 11, n := 13, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 24)) },
  { key := { q := 11, n := 13, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 25)) },
  { key := { q := 11, n := 13, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 26)) },
  { key := { q := 11, n := 13, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 27)) },
  { key := { q := 11, n := 13, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 28)) },
  { key := { q := 11, n := 13, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 29)) },
  { key := { q := 11, n := 13, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 30)) },
  { key := { q := 11, n := 13, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 31)) },
  { key := { q := 11, n := 13, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 32)) },
  { key := { q := 11, n := 13, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 33)) },
  { key := { q := 11, n := 13, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 34)) },
  { key := { q := 11, n := 13, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 35)) },
  { key := { q := 11, n := 13, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 36)) },
  { key := { q := 11, n := 13, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 37)) },
  { key := { q := 11, n := 13, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 38)) },
  { key := { q := 11, n := 13, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 39)) },
  { key := { q := 11, n := 13, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 40)) },
  { key := { q := 11, n := 13, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 41)) },
  { key := { q := 11, n := 13, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 42)) },
  { key := { q := 11, n := 13, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 43)) },
  { key := { q := 11, n := 13, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 44)) },
  { key := { q := 11, n := 13, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 45)) },
  { key := { q := 11, n := 13, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 46)) },
  { key := { q := 11, n := 13, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 47)) },
  { key := { q := 11, n := 13, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 13 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 13 48)) },
  { key := { q := 11, n := 14, r := 0 }
    lowerValue := 379749833583241
    upperValue := 379749833583241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 14 0)) },
  { key := { q := 11, n := 14, r := 1 }
    lowerValue := 2693261231087
    upperValue := 17404011907271
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 1))
    upperTrace := (.lengthenFreeN 11 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 14, r := 2 }
    lowerValue := 41094019434
    upperValue := 1582182900661
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 2))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 14, r := 3 }
    lowerValue := 1017438689
    upperValue := 143834809151
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 3))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 14, r := 4 }
    lowerValue := 36573343
    upperValue := 13075891741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 4))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 14, r := 5 }
    lowerValue := 1803325
    upperValue := 467692104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 5))
    upperTrace := (.lengthenFreeN 6 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))) },
  { key := { q := 11, n := 14, r := 6 }
    lowerValue := 118171
    upperValue := 42517464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 6))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 14, r := 7 }
    lowerValue := 10118
    upperValue := 3865224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 7))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 14, r := 8 }
    lowerValue := 1125
    upperValue := 351384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 8))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 14, r := 9 }
    lowerValue := 163
    upperValue := 31944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 9))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 14, r := 10 }
    lowerValue := 31
    upperValue := 1331
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 10))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 14, r := 11 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 13 12))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 14, r := 12 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 14 13)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12)) },
  { key := { q := 11, n := 14, r := 13 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 14 13))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 13)) },
  { key := { q := 11, n := 14, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 14)) },
  { key := { q := 11, n := 14, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 15)) },
  { key := { q := 11, n := 14, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 16)) },
  { key := { q := 11, n := 14, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 17)) },
  { key := { q := 11, n := 14, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 18)) },
  { key := { q := 11, n := 14, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 19)) },
  { key := { q := 11, n := 14, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 20)) },
  { key := { q := 11, n := 14, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 21)) },
  { key := { q := 11, n := 14, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 22)) },
  { key := { q := 11, n := 14, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 23)) },
  { key := { q := 11, n := 14, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 24)) },
  { key := { q := 11, n := 14, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 25)) },
  { key := { q := 11, n := 14, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 26)) },
  { key := { q := 11, n := 14, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 27)) },
  { key := { q := 11, n := 14, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 28)) },
  { key := { q := 11, n := 14, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 29)) },
  { key := { q := 11, n := 14, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 30)) },
  { key := { q := 11, n := 14, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 31)) },
  { key := { q := 11, n := 14, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 32)) },
  { key := { q := 11, n := 14, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 33)) },
  { key := { q := 11, n := 14, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 34)) },
  { key := { q := 11, n := 14, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 35)) },
  { key := { q := 11, n := 14, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 36)) },
  { key := { q := 11, n := 14, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 37)) },
  { key := { q := 11, n := 14, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 38)) },
  { key := { q := 11, n := 14, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 39)) },
  { key := { q := 11, n := 14, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 40)) },
  { key := { q := 11, n := 14, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 41)) },
  { key := { q := 11, n := 14, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 42)) },
  { key := { q := 11, n := 14, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 43)) },
  { key := { q := 11, n := 14, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 44)) },
  { key := { q := 11, n := 14, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 45)) },
  { key := { q := 11, n := 14, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 46)) },
  { key := { q := 11, n := 14, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 47)) },
  { key := { q := 11, n := 14, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 14 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 14 48)) },
  { key := { q := 11, n := 15, r := 0 }
    lowerValue := 4177248169415651
    upperValue := 4177248169415651
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 15 0)) },
  { key := { q := 11, n := 15, r := 1 }
    lowerValue := 27663895161694
    upperValue := 191444130979981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 1))
    upperTrace := (.lengthenFreeN 12 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 15, r := 2 }
    lowerValue := 392193049425
    upperValue := 17404011907271
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 2))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 15, r := 3 }
    lowerValue := 8970770319
    upperValue := 1582182900661
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 3))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 15, r := 4 }
    lowerValue := 295930253
    upperValue := 143834809151
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 4))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 15, r := 5 }
    lowerValue := 13285752
    upperValue := 5144613144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 5))
    upperTrace := (.lengthenFreeN 7 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))) },
  { key := { q := 11, n := 15, r := 6 }
    lowerValue := 785284
    upperValue := 467692104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 6))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 15, r := 7 }
    lowerValue := 59959
    upperValue := 42517464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 7))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 15, r := 8 }
    lowerValue := 5858
    upperValue := 3865224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 8))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 15, r := 9 }
    lowerValue := 731
    upperValue := 351384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 9))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 15, r := 10 }
    lowerValue := 117
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 10))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 15, r := 11 }
    lowerValue := 25
    upperValue := 1331
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 11))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 15, r := 12 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 14 13))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 15, r := 13 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 15 14)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13)) },
  { key := { q := 11, n := 15, r := 14 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 15 14))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 14)) },
  { key := { q := 11, n := 15, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 15)) },
  { key := { q := 11, n := 15, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 16)) },
  { key := { q := 11, n := 15, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 17)) },
  { key := { q := 11, n := 15, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 18)) },
  { key := { q := 11, n := 15, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 19)) },
  { key := { q := 11, n := 15, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 20)) },
  { key := { q := 11, n := 15, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 21)) },
  { key := { q := 11, n := 15, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 22)) },
  { key := { q := 11, n := 15, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 23)) },
  { key := { q := 11, n := 15, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 24)) },
  { key := { q := 11, n := 15, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 25)) },
  { key := { q := 11, n := 15, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 26)) },
  { key := { q := 11, n := 15, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 27)) },
  { key := { q := 11, n := 15, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 28)) },
  { key := { q := 11, n := 15, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 29)) },
  { key := { q := 11, n := 15, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 30)) },
  { key := { q := 11, n := 15, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 31)) },
  { key := { q := 11, n := 15, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 32)) },
  { key := { q := 11, n := 15, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 33)) },
  { key := { q := 11, n := 15, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 34)) },
  { key := { q := 11, n := 15, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 35)) },
  { key := { q := 11, n := 15, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 36)) },
  { key := { q := 11, n := 15, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 37)) },
  { key := { q := 11, n := 15, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 38)) },
  { key := { q := 11, n := 15, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 39)) },
  { key := { q := 11, n := 15, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 40)) },
  { key := { q := 11, n := 15, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 41)) },
  { key := { q := 11, n := 15, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 42)) },
  { key := { q := 11, n := 15, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 43)) },
  { key := { q := 11, n := 15, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 44)) },
  { key := { q := 11, n := 15, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 45)) },
  { key := { q := 11, n := 15, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 46)) },
  { key := { q := 11, n := 15, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 47)) },
  { key := { q := 11, n := 15, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 15 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 15 48)) },
  { key := { q := 11, n := 16, r := 0 }
    lowerValue := 45949729863572161
    upperValue := 45949729863572161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 16 0)) },
  { key := { q := 11, n := 16, r := 1 }
    lowerValue := 285402048842064
    upperValue := 2105885440779791
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 1))
    upperTrace := (.lengthenFreeN 13 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 16, r := 2 }
    lowerValue := 3778449951778
    upperValue := 191444130979981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 2))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 16, r := 3 }
    lowerValue := 80309091084
    upperValue := 17404011907271
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 3))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 16, r := 4 }
    lowerValue := 2447759204
    upperValue := 1582182900661
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 4))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 16, r := 5 }
    lowerValue := 100861585
    upperValue := 56590744584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 5))
    upperTrace := (.lengthenFreeN 8 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))) },
  { key := { q := 11, n := 16, r := 6 }
    lowerValue := 5429118
    upperValue := 5144613144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 6))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 16, r := 7 }
    lowerValue := 373990
    upperValue := 467692104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 7))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 16, r := 8 }
    lowerValue := 32592
    upperValue := 42517464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 8))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 16, r := 9 }
    lowerValue := 3576
    upperValue := 3865224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 9))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))))) },
  { key := { q := 11, n := 16, r := 10 }
    lowerValue := 495
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 10))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 16, r := 11 }
    lowerValue := 87
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 11))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 16, r := 12 }
    lowerValue := 20
    upperValue := 1331
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 12))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 16, r := 13 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 15 14))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 16, r := 14 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 16 15)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14)) },
  { key := { q := 11, n := 16, r := 15 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 16 15))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 15)) },
  { key := { q := 11, n := 16, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 16)) },
  { key := { q := 11, n := 16, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 17)) },
  { key := { q := 11, n := 16, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 18)) },
  { key := { q := 11, n := 16, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 19)) },
  { key := { q := 11, n := 16, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 20)) },
  { key := { q := 11, n := 16, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 21)) },
  { key := { q := 11, n := 16, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 22)) },
  { key := { q := 11, n := 16, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 23)) },
  { key := { q := 11, n := 16, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 24)) },
  { key := { q := 11, n := 16, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 25)) },
  { key := { q := 11, n := 16, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 26)) },
  { key := { q := 11, n := 16, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 27)) },
  { key := { q := 11, n := 16, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 28)) },
  { key := { q := 11, n := 16, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 29)) },
  { key := { q := 11, n := 16, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 30)) },
  { key := { q := 11, n := 16, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 31)) },
  { key := { q := 11, n := 16, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 32)) },
  { key := { q := 11, n := 16, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 33)) },
  { key := { q := 11, n := 16, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 34)) },
  { key := { q := 11, n := 16, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 35)) },
  { key := { q := 11, n := 16, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 36)) },
  { key := { q := 11, n := 16, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 37)) },
  { key := { q := 11, n := 16, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 38)) },
  { key := { q := 11, n := 16, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 39)) },
  { key := { q := 11, n := 16, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 40)) },
  { key := { q := 11, n := 16, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 41)) },
  { key := { q := 11, n := 16, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 42)) },
  { key := { q := 11, n := 16, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 43)) },
  { key := { q := 11, n := 16, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 44)) },
  { key := { q := 11, n := 16, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 45)) },
  { key := { q := 11, n := 16, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 46)) },
  { key := { q := 11, n := 16, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 47)) },
  { key := { q := 11, n := 16, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 16 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 16 48)) },
  { key := { q := 11, n := 17, r := 0 }
    lowerValue := 505447028499293771
    upperValue := 505447028499293771
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 17 0)) },
  { key := { q := 11, n := 17, r := 1 }
    lowerValue := 2955830576019262
    upperValue := 23164739848577701
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 1))
    upperTrace := (.lengthenFreeN 14 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 17, r := 2 }
    lowerValue := 36703727289180
    upperValue := 2105885440779791
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 2))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 17, r := 3 }
    lowerValue := 728550239920
    upperValue := 191444130979981
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 3))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 17, r := 4 }
    lowerValue := 20635737491
    upperValue := 17404011907271
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 4))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 17, r := 5 }
    lowerValue := 785717275
    upperValue := 622498190424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 17 5))
    upperTrace := (.lengthenFreeN 9 (.alphabetProject (by decide : 0 < 11) (by decide : 11 ≤ 12) (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5)))) }]

end CoveringCodes.Database
