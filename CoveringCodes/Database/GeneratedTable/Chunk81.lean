import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 81. Do not edit manually.

def precomputedTable_chunk_81 : Array AnyBoundEntry := #[
  { key := { q := 8, n := 21, r := 13 }
    lowerValue := 376
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 13))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 21, r := 14 }
    lowerValue := 90
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 14))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 21, r := 15 }
    lowerValue := 26
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 15))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 21, r := 16 }
    lowerValue := 9
    upperValue := 512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 16))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 21, r := 17 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 19 18)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 21, r := 18 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 20 19))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18)) },
  { key := { q := 8, n := 21, r := 19 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 21 20)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 19)) },
  { key := { q := 8, n := 21, r := 20 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 21 20))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 20)) },
  { key := { q := 8, n := 21, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 21)) },
  { key := { q := 8, n := 21, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 22)) },
  { key := { q := 8, n := 21, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 23)) },
  { key := { q := 8, n := 21, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 24)) },
  { key := { q := 8, n := 21, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 25)) },
  { key := { q := 8, n := 21, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 26)) },
  { key := { q := 8, n := 21, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 27)) },
  { key := { q := 8, n := 21, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 28)) },
  { key := { q := 8, n := 21, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 29)) },
  { key := { q := 8, n := 21, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 30)) },
  { key := { q := 8, n := 21, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 31)) },
  { key := { q := 8, n := 21, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 32)) },
  { key := { q := 8, n := 21, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 33)) },
  { key := { q := 8, n := 21, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 34)) },
  { key := { q := 8, n := 21, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 35)) },
  { key := { q := 8, n := 21, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 36)) },
  { key := { q := 8, n := 21, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 37)) },
  { key := { q := 8, n := 21, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 38)) },
  { key := { q := 8, n := 21, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 39)) },
  { key := { q := 8, n := 21, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 40)) },
  { key := { q := 8, n := 21, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 41)) },
  { key := { q := 8, n := 21, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 42)) },
  { key := { q := 8, n := 21, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 43)) },
  { key := { q := 8, n := 21, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 44)) },
  { key := { q := 8, n := 21, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 45)) },
  { key := { q := 8, n := 21, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 46)) },
  { key := { q := 8, n := 21, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 47)) },
  { key := { q := 8, n := 21, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 21 48)) },
  { key := { q := 8, n := 22, r := 0 }
    lowerValue := 73786976294838206464
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 22 0)) },
  { key := { q := 8, n := 22, r := 1 }
    lowerValue := 476045008353794881
    upperValue := 4611686018427387904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 1))
    upperTrace := (.lengthenFreeN 16 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 22, r := 2 }
    lowerValue := 6430798003733503
    upperValue := 414331165718085632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 2))
    upperTrace := (.lengthenFreeN 18 (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2))) },
  { key := { q := 8, n := 22, r := 3 }
    lowerValue := 136720023374057
    upperValue := 51791395714760704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 3))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2))))) },
  { key := { q := 8, n := 22, r := 4 }
    lowerValue := 4075950925885
    upperValue := 3206175906594816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 4))
    upperTrace := (.lengthenFreeN 14 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4)))) },
  { key := { q := 8, n := 22, r := 5 }
    lowerValue := 160163249430
    upperValue := 400771988324352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 5))
    upperTrace := (.lengthenFreeN 13 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 8, n := 22, r := 6 }
    lowerValue := 7986603218
    upperValue := 50096498540544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 6))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))))) },
  { key := { q := 8, n := 22, r := 7 }
    lowerValue := 492934665
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 7))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 22, r := 8 }
    lowerValue := 37021220
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 8))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 22, r := 9 }
    lowerValue := 3343954
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 9))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 22, r := 10 }
    lowerValue := 360416
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 10))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 22, r := 11 }
    lowerValue := 46129
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 11))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 22, r := 12 }
    lowerValue := 6995
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 12))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 22, r := 13 }
    lowerValue := 1257
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 13))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 22, r := 14 }
    lowerValue := 268
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 14))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 22, r := 15 }
    lowerValue := 68
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 15))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 22, r := 16 }
    lowerValue := 21
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 16))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 22, r := 17 }
    lowerValue := 8
    upperValue := 512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 17))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 22, r := 18 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 20 19)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 22, r := 19 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 21 20))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19)) },
  { key := { q := 8, n := 22, r := 20 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 22 21)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 20)) },
  { key := { q := 8, n := 22, r := 21 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 22 21))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 21)) },
  { key := { q := 8, n := 22, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 22)) },
  { key := { q := 8, n := 22, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 23)) },
  { key := { q := 8, n := 22, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 24)) },
  { key := { q := 8, n := 22, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 25)) },
  { key := { q := 8, n := 22, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 26)) },
  { key := { q := 8, n := 22, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 27)) },
  { key := { q := 8, n := 22, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 28)) },
  { key := { q := 8, n := 22, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 29)) },
  { key := { q := 8, n := 22, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 30)) },
  { key := { q := 8, n := 22, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 31)) },
  { key := { q := 8, n := 22, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 32)) },
  { key := { q := 8, n := 22, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 33)) },
  { key := { q := 8, n := 22, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 34)) },
  { key := { q := 8, n := 22, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 35)) },
  { key := { q := 8, n := 22, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 36)) },
  { key := { q := 8, n := 22, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 37)) },
  { key := { q := 8, n := 22, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 38)) },
  { key := { q := 8, n := 22, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 39)) },
  { key := { q := 8, n := 22, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 40)) },
  { key := { q := 8, n := 22, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 41)) },
  { key := { q := 8, n := 22, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 42)) },
  { key := { q := 8, n := 22, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 43)) },
  { key := { q := 8, n := 22, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 44)) },
  { key := { q := 8, n := 22, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 45)) },
  { key := { q := 8, n := 22, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 46)) },
  { key := { q := 8, n := 22, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 47)) },
  { key := { q := 8, n := 22, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 22 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 22 48)) },
  { key := { q := 8, n := 23, r := 0 }
    lowerValue := 590295810358705651712
    upperValue := 590295810358705651712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 23 0)) },
  { key := { q := 8, n := 23, r := 1 }
    lowerValue := 3643801298510528715
    upperValue := 36893488147419103232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 1))
    upperTrace := (.lengthenFreeN 17 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 23, r := 2 }
    lowerValue := 47001816255968282
    upperValue := 3314649325744685056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 2))
    upperTrace := (.lengthenFreeN 19 (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2))) },
  { key := { q := 8, n := 23, r := 3 }
    lowerValue := 952071589515535
    upperValue := 414331165718085632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 3))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2))))) },
  { key := { q := 8, n := 23, r := 4 }
    lowerValue := 26977715753161
    upperValue := 25649407252758528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 4))
    upperTrace := (.lengthenFreeN 15 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4)))) },
  { key := { q := 8, n := 23, r := 5 }
    lowerValue := 1004896330170
    upperValue := 3206175906594816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 5))
    upperTrace := (.lengthenFreeN 14 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 8, n := 23, r := 6 }
    lowerValue := 47361075552
    upperValue := 400771988324352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 6))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))))) },
  { key := { q := 8, n := 23, r := 7 }
    lowerValue := 2753745471
    upperValue := 35184372088832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 7))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 23, r := 8 }
    lowerValue := 194117272
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 8))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 23, r := 9 }
    lowerValue := 16389145
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 9))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 23, r := 10 }
    lowerValue := 1643419
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 10))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 23, r := 11 }
    lowerValue := 194645
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 11))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 23, r := 12 }
    lowerValue := 27144
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 12))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 23, r := 13 }
    lowerValue := 4452
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 13))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 23, r := 14 }
    lowerValue := 860
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 14))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 23, r := 15 }
    lowerValue := 196
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 15))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 23, r := 16 }
    lowerValue := 53
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 16))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 23, r := 17 }
    lowerValue := 18
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 17))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 23, r := 18 }
    lowerValue := 8
    upperValue := 512
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 20 19))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 23, r := 19 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 21 20)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19))) },
  { key := { q := 8, n := 23, r := 20 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 22 21))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 20)) },
  { key := { q := 8, n := 23, r := 21 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 23 22)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 21)) },
  { key := { q := 8, n := 23, r := 22 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 23 22))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 22)) },
  { key := { q := 8, n := 23, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 23 23)) },
  { key := { q := 8, n := 23, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 23 24)) },
  { key := { q := 8, n := 23, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 23 25)) },
  { key := { q := 8, n := 23, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 23 26)) },
  { key := { q := 8, n := 23, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 23 27)) },
  { key := { q := 8, n := 23, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 23 28)) },
  { key := { q := 8, n := 23, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 23 29)) },
  { key := { q := 8, n := 23, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 23 30)) },
  { key := { q := 8, n := 23, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 23 31)) },
  { key := { q := 8, n := 23, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 23 32)) },
  { key := { q := 8, n := 23, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 23 33)) },
  { key := { q := 8, n := 23, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 23 34)) },
  { key := { q := 8, n := 23, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 23 35)) },
  { key := { q := 8, n := 23, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 23 36)) },
  { key := { q := 8, n := 23, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 23 37)) },
  { key := { q := 8, n := 23, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 23 38)) },
  { key := { q := 8, n := 23, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 23 39)) },
  { key := { q := 8, n := 23, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 23 40)) },
  { key := { q := 8, n := 23, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 23 41)) },
  { key := { q := 8, n := 23, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 23 42)) },
  { key := { q := 8, n := 23, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 23 43)) },
  { key := { q := 8, n := 23, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 23 44)) },
  { key := { q := 8, n := 23, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 23 45)) },
  { key := { q := 8, n := 23, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 23 46)) },
  { key := { q := 8, n := 23, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 23 47)) },
  { key := { q := 8, n := 23, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 23 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 23 48)) },
  { key := { q := 8, n := 24, r := 0 }
    lowerValue := 4722366482869645213696
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 24 0)) },
  { key := { q := 8, n := 24, r := 1 }
    lowerValue := 27942996940057072271
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 1))
    upperTrace := (.lengthenFreeN 18 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 24, r := 2 }
    lowerValue := 344874496667614491
    upperValue := 26517194605957480448
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 2))
    upperTrace := (.lengthenFreeN 20 (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2))) },
  { key := { q := 8, n := 24, r := 3 }
    lowerValue := 6670715800218449
    upperValue := 3314649325744685056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 3))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2))))) },
  { key := { q := 8, n := 24, r := 4 }
    lowerValue := 180098978212867
    upperValue := 205195258022068224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 4))
    upperTrace := (.lengthenFreeN 16 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4)))) },
  { key := { q := 8, n := 24, r := 5 }
    lowerValue := 6376529572171
    upperValue := 25649407252758528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 5))
    upperTrace := (.lengthenFreeN 15 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 8, n := 24, r := 6 }
    lowerValue := 284897463890
    upperValue := 3206175906594816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 6))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))))) },
  { key := { q := 8, n := 24, r := 7 }
    lowerValue := 15657340179
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 7))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 24, r := 8 }
    lowerValue := 1039836459
    upperValue := 35184372088832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 8))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 24, r := 9 }
    lowerValue := 82409087
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 9))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 24, r := 10 }
    lowerValue := 7724992
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 10))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 24, r := 11 }
    lowerValue := 851337
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 11))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 24, r := 12 }
    lowerValue := 109884
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 12))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 24, r := 13 }
    lowerValue := 16580
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 13))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 24, r := 14 }
    lowerValue := 2925
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 14))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 24, r := 15 }
    lowerValue := 604
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 15))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 24, r := 16 }
    lowerValue := 147
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 16))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 24, r := 17 }
    lowerValue := 42
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 17))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 24, r := 18 }
    lowerValue := 15
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 18))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 24, r := 19 }
    lowerValue := 8
    upperValue := 512
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 21 20))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19))) },
  { key := { q := 8, n := 24, r := 20 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 22 21)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 20))) },
  { key := { q := 8, n := 24, r := 21 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 23 22))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 24 21)) },
  { key := { q := 8, n := 24, r := 22 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 24 23)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 24 22)) },
  { key := { q := 8, n := 24, r := 23 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 24 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 24 23)) },
  { key := { q := 8, n := 24, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 24 24)) },
  { key := { q := 8, n := 24, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 24 25)) },
  { key := { q := 8, n := 24, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 24 26)) },
  { key := { q := 8, n := 24, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 24 27)) },
  { key := { q := 8, n := 24, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 24 28)) },
  { key := { q := 8, n := 24, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 24 29)) },
  { key := { q := 8, n := 24, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 24 30)) },
  { key := { q := 8, n := 24, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 24 31)) },
  { key := { q := 8, n := 24, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 24 32)) },
  { key := { q := 8, n := 24, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 24 33)) },
  { key := { q := 8, n := 24, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 24 34)) },
  { key := { q := 8, n := 24, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 24 35)) },
  { key := { q := 8, n := 24, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 24 36)) },
  { key := { q := 8, n := 24, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 24 37)) },
  { key := { q := 8, n := 24, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 24 38)) },
  { key := { q := 8, n := 24, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 24 39)) },
  { key := { q := 8, n := 24, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 24 40)) },
  { key := { q := 8, n := 24, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 24 41)) },
  { key := { q := 8, n := 24, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 24 42)) },
  { key := { q := 8, n := 24, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 24 43)) },
  { key := { q := 8, n := 24, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 24 44)) },
  { key := { q := 8, n := 24, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 24 45)) },
  { key := { q := 8, n := 24, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 24 46)) },
  { key := { q := 8, n := 24, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 24 47)) },
  { key := { q := 8, n := 24, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 24 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 24 48)) },
  { key := { q := 8, n := 25, r := 0 }
    lowerValue := 37778931862957161709568
    upperValue := 37778931862957161709568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 25 0)) },
  { key := { q := 8, n := 25, r := 1 }
    lowerValue := 214653021948620236987
    upperValue := 2361183241434822606848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 1))
    upperTrace := (.lengthenFreeN 19 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 25, r := 2 }
    lowerValue := 2539589396541890409
    upperValue := 212137556847659843584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 2))
    upperTrace := (.lengthenFreeN 21 (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2))) },
  { key := { q := 8, n := 25, r := 3 }
    lowerValue := 47001816255968282
    upperValue := 26517194605957480448
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 3))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2))))) },
  { key := { q := 8, n := 25, r := 4 }
    lowerValue := 1211778792827541
    upperValue := 1641562064176545792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 4))
    upperTrace := (.lengthenFreeN 17 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4)))) },
  { key := { q := 8, n := 25, r := 5 }
    lowerValue := 40880434967225
    upperValue := 205195258022068224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 5))
    upperTrace := (.lengthenFreeN 16 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 8, n := 25, r := 6 }
    lowerValue := 1736182480478
    upperValue := 25649407252758528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 6))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))))) },
  { key := { q := 8, n := 25, r := 7 }
    lowerValue := 90458799827
    upperValue := 2251799813685248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 7))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 25, r := 8 }
    lowerValue := 5678735426
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 8))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 25, r := 9 }
    lowerValue := 424033992
    upperValue := 35184372088832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 9))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 25, r := 10 }
    lowerValue := 37314814
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 10))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 25, r := 11 }
    lowerValue := 3844725
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 11))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 25, r := 12 }
    lowerValue := 461817
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 12))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 25, r := 13 }
    lowerValue := 64507
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 13))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 25, r := 14 }
    lowerValue := 10469
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 14))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 25, r := 15 }
    lowerValue := 1976
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 15))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 25, r := 16 }
    lowerValue := 435
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 16))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 25, r := 17 }
    lowerValue := 112
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 17))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 25, r := 18 }
    lowerValue := 34
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 18))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 25, r := 19 }
    lowerValue := 13
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 19))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19))) },
  { key := { q := 8, n := 25, r := 20 }
    lowerValue := 8
    upperValue := 512
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 22 21))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 20))) },
  { key := { q := 8, n := 25, r := 21 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 23 22)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 21)) },
  { key := { q := 8, n := 25, r := 22 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 24 23))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 22)) },
  { key := { q := 8, n := 25, r := 23 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 25 24)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 23)) },
  { key := { q := 8, n := 25, r := 24 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 25 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 24)) },
  { key := { q := 8, n := 25, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 25 25)) },
  { key := { q := 8, n := 25, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 25 26)) },
  { key := { q := 8, n := 25, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 25 27)) },
  { key := { q := 8, n := 25, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 25 28)) },
  { key := { q := 8, n := 25, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 25 29)) },
  { key := { q := 8, n := 25, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 25 30)) },
  { key := { q := 8, n := 25, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 25 31)) },
  { key := { q := 8, n := 25, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 25 32)) },
  { key := { q := 8, n := 25, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 25 33)) },
  { key := { q := 8, n := 25, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 25 34)) },
  { key := { q := 8, n := 25, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 25 35)) },
  { key := { q := 8, n := 25, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 25 36)) },
  { key := { q := 8, n := 25, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 25 37)) },
  { key := { q := 8, n := 25, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 25 38)) },
  { key := { q := 8, n := 25, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 25 39)) },
  { key := { q := 8, n := 25, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 25 40)) },
  { key := { q := 8, n := 25, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 25 41)) },
  { key := { q := 8, n := 25, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 25 42)) },
  { key := { q := 8, n := 25, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 25 43)) },
  { key := { q := 8, n := 25, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 25 44)) },
  { key := { q := 8, n := 25, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 25 45)) },
  { key := { q := 8, n := 25, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 25 46)) },
  { key := { q := 8, n := 25, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 25 47)) },
  { key := { q := 8, n := 25, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 25 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 25 48)) },
  { key := { q := 8, n := 26, r := 0 }
    lowerValue := 302231454903657293676544
    upperValue := 302231454903657293676544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 26 0)) },
  { key := { q := 8, n := 26, r := 1 }
    lowerValue := 1651538004938017998233
    upperValue := 18889465931478580854784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 1))
    upperTrace := (.lengthenFreeN 20 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 26, r := 2 }
    lowerValue := 18762816917286894319
    upperValue := 1697100454781278748672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 2))
    upperTrace := (.lengthenFreeN 22 (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2))) },
  { key := { q := 8, n := 26, r := 3 }
    lowerValue := 332887753939449035
    upperValue := 212137556847659843584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 3))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2))))) },
  { key := { q := 8, n := 26, r := 4 }
    lowerValue := 8212173492168932
    upperValue := 13132496513412366336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 4))
    upperTrace := (.lengthenFreeN 18 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4)))) },
  { key := { q := 8, n := 26, r := 5 }
    lowerValue := 264565915132087
    upperValue := 1641562064176545792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 5))
    upperTrace := (.lengthenFreeN 17 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 8, n := 26, r := 6 }
    lowerValue := 10706532409723
    upperValue := 205195258022068224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 6))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))))) },
  { key := { q := 8, n := 26, r := 7 }
    lowerValue := 530272223901
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 7))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 26, r := 8 }
    lowerValue := 31560820031
    upperValue := 2251799813685248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 8))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 26, r := 9 }
    lowerValue := 2227810124
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 9))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 26, r := 10 }
    lowerValue := 184727136
    upperValue := 35184372088832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 10))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 26, r := 11 }
    lowerValue := 17869520
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 11))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 26, r := 12 }
    lowerValue := 2007006
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 12))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 26, r := 13 }
    lowerValue := 260929
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 13))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 26, r := 14 }
    lowerValue := 39209
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 14))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 26, r := 15 }
    lowerValue := 6809
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 15))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 26, r := 16 }
    lowerValue := 1369
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 16))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 26, r := 17 }
    lowerValue := 319
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 26 17))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) }]

end CoveringCodes.Database
