import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 73. Do not edit manually.

def precomputedTable_chunk_73 : Array AnyBoundEntry := #[
  { key := { q := 7, n := 29, r := 22 }
    lowerValue := 10
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 22))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 26 22))) },
  { key := { q := 7, n := 29, r := 23 }
    lowerValue := 7
    upperValue := 343
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 25 24)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 27 23))) },
  { key := { q := 7, n := 29, r := 24 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 26 25))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 29 24)) },
  { key := { q := 7, n := 29, r := 25 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 27 26)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 29 25)) },
  { key := { q := 7, n := 29, r := 26 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 28 27))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 29 26)) },
  { key := { q := 7, n := 29, r := 27 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 29 28)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 29 27)) },
  { key := { q := 7, n := 29, r := 28 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 29 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 29 28)) },
  { key := { q := 7, n := 29, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 29 29)) },
  { key := { q := 7, n := 29, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 29 30)) },
  { key := { q := 7, n := 29, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 29 31)) },
  { key := { q := 7, n := 29, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 29 32)) },
  { key := { q := 7, n := 29, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 29 33)) },
  { key := { q := 7, n := 29, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 29 34)) },
  { key := { q := 7, n := 29, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 29 35)) },
  { key := { q := 7, n := 29, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 29 36)) },
  { key := { q := 7, n := 29, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 29 37)) },
  { key := { q := 7, n := 29, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 29 38)) },
  { key := { q := 7, n := 29, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 29 39)) },
  { key := { q := 7, n := 29, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 29 40)) },
  { key := { q := 7, n := 29, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 29 41)) },
  { key := { q := 7, n := 29, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 29 42)) },
  { key := { q := 7, n := 29, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 29 43)) },
  { key := { q := 7, n := 29, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 29 44)) },
  { key := { q := 7, n := 29, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 29 45)) },
  { key := { q := 7, n := 29, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 29 46)) },
  { key := { q := 7, n := 29, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 29 47)) },
  { key := { q := 7, n := 29, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 29 48)) },
  { key := { q := 7, n := 30, r := 0 }
    lowerValue := 22539340290692258087863249
    upperValue := 22539340290692258087863249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 30 0)) },
  { key := { q := 7, n := 30, r := 1 }
    lowerValue := 124526741937526287778250
    upperValue := 1642809059088357003488575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 1))
    upperTrace := (.lengthenFreeN 27 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 30, r := 2 }
    lowerValue := 1422848323381873498382
    upperValue := 215912047765898349029927
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 2))
    upperTrace := (.lengthenFreeN 26 (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2)))) },
  { key := { q := 7, n := 30, r := 3 }
    lowerValue := 25245648571957533749
    upperValue := 30844578252271192718561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 3))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2)))))) },
  { key := { q := 7, n := 30, r := 4 }
    lowerValue := 619048002389591332
    upperValue := 4406368321753027531223
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 4))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2)))))) },
  { key := { q := 7, n := 30, r := 5 }
    lowerValue := 19692987948090161
    upperValue := 629481188821861075889
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 5))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2)))))) },
  { key := { q := 7, n := 30, r := 6 }
    lowerValue := 781321843759273
    upperValue := 27368747340080916343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 6))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 8 6))) },
  { key := { q := 7, n := 30, r := 7 }
    lowerValue := 37644532107497
    upperValue := 3909821048582988049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 7))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 9 7))) },
  { key := { q := 7, n := 30, r := 8 }
    lowerValue := 2161133262024
    upperValue := 558545864083284007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 8))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 10 8))) },
  { key := { q := 7, n := 30, r := 9 }
    lowerValue := 145779532231
    upperValue := 79792266297612001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 9))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 11 9))) },
  { key := { q := 7, n := 30, r := 10 }
    lowerValue := 11433630226
    upperValue := 11398895185373143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 10))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 12 10))) },
  { key := { q := 7, n := 30, r := 11 }
    lowerValue := 1034391875
    upperValue := 1628413597910449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 11))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 13 11))) },
  { key := { q := 7, n := 30, r := 12 }
    lowerValue := 107296027
    upperValue := 33232930569601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 12))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 30, r := 13 }
    lowerValue := 12703849
    upperValue := 4747561509943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 13))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 30, r := 14 }
    lowerValue := 1711398
    upperValue := 678223072849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 14))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 30, r := 15 }
    lowerValue := 261769
    upperValue := 96889010407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 15))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 30, r := 16 }
    lowerValue := 45410
    upperValue := 13841287201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 16))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 30, r := 17 }
    lowerValue := 8932
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 17))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 30, r := 18 }
    lowerValue := 1994
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 18))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18))) },
  { key := { q := 7, n := 30, r := 19 }
    lowerValue := 506
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 19))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 19))) },
  { key := { q := 7, n := 30, r := 20 }
    lowerValue := 146
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 20))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 20))) },
  { key := { q := 7, n := 30, r := 21 }
    lowerValue := 49
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 21))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 21))) },
  { key := { q := 7, n := 30, r := 22 }
    lowerValue := 19
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 22))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 26 22))) },
  { key := { q := 7, n := 30, r := 23 }
    lowerValue := 8
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 23))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 27 23))) },
  { key := { q := 7, n := 30, r := 24 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 26 25)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 29 24))) },
  { key := { q := 7, n := 30, r := 25 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 27 26))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 30 25)) },
  { key := { q := 7, n := 30, r := 26 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 28 27)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 30 26)) },
  { key := { q := 7, n := 30, r := 27 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 29 28))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 30 27)) },
  { key := { q := 7, n := 30, r := 28 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 30 29)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 30 28)) },
  { key := { q := 7, n := 30, r := 29 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 30 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 30 29)) },
  { key := { q := 7, n := 30, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 30 30)) },
  { key := { q := 7, n := 30, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 30 31)) },
  { key := { q := 7, n := 30, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 30 32)) },
  { key := { q := 7, n := 30, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 30 33)) },
  { key := { q := 7, n := 30, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 30 34)) },
  { key := { q := 7, n := 30, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 30 35)) },
  { key := { q := 7, n := 30, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 30 36)) },
  { key := { q := 7, n := 30, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 30 37)) },
  { key := { q := 7, n := 30, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 30 38)) },
  { key := { q := 7, n := 30, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 30 39)) },
  { key := { q := 7, n := 30, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 30 40)) },
  { key := { q := 7, n := 30, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 30 41)) },
  { key := { q := 7, n := 30, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 30 42)) },
  { key := { q := 7, n := 30, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 30 43)) },
  { key := { q := 7, n := 30, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 30 44)) },
  { key := { q := 7, n := 30, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 30 45)) },
  { key := { q := 7, n := 30, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 30 46)) },
  { key := { q := 7, n := 30, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 30 47)) },
  { key := { q := 7, n := 30, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 30 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 30 48)) },
  { key := { q := 7, n := 31, r := 0 }
    lowerValue := 157775382034845806615042743
    upperValue := 157775382034845806615042743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 31 0)) },
  { key := { q := 7, n := 31, r := 1 }
    lowerValue := 843718620507196826818411
    upperValue := 11499663413618499024420025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 1))
    upperTrace := (.lengthenFreeN 28 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 31, r := 2 }
    lowerValue := 9320929995560099640518
    upperValue := 1511384334361288443209489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 2))
    upperTrace := (.lengthenFreeN 27 (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2)))) },
  { key := { q := 7, n := 31, r := 3 }
    lowerValue := 159716415634046372177
    upperValue := 215912047765898349029927
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 3))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2)))))) },
  { key := { q := 7, n := 31, r := 4 }
    lowerValue := 3777559315315310254
    upperValue := 30844578252271192718561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 4))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2)))))) },
  { key := { q := 7, n := 31, r := 5 }
    lowerValue := 115756439918203398
    upperValue := 4406368321753027531223
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 5))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2)))))) },
  { key := { q := 7, n := 31, r := 6 }
    lowerValue := 4417632145945253
    upperValue := 191581231380566414401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 6))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 8 6))) },
  { key := { q := 7, n := 31, r := 7 }
    lowerValue := 204417898918782
    upperValue := 27368747340080916343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 7))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 9 7))) },
  { key := { q := 7, n := 31, r := 8 }
    lowerValue := 11252103716624
    upperValue := 3909821048582988049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 8))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 10 8))) },
  { key := { q := 7, n := 31, r := 9 }
    lowerValue := 726442906950
    upperValue := 558545864083284007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 9))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 11 9))) },
  { key := { q := 7, n := 31, r := 10 }
    lowerValue := 54424169099
    upperValue := 79792266297612001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 10))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 12 10))) },
  { key := { q := 7, n := 31, r := 11 }
    lowerValue := 4693201041
    upperValue := 11398895185373143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 11))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 13 11))) },
  { key := { q := 7, n := 31, r := 12 }
    lowerValue := 462947067
    upperValue := 232630513987207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 12))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 31, r := 13 }
    lowerValue := 51991898
    upperValue := 33232930569601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 13))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 31, r := 14 }
    lowerValue := 6624925
    upperValue := 4747561509943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 14))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 31, r := 15 }
    lowerValue := 955492
    upperValue := 678223072849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 15))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 31, r := 16 }
    lowerValue := 155754
    upperValue := 96889010407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 16))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 31, r := 17 }
    lowerValue := 28678
    upperValue := 13841287201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 17))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 31, r := 18 }
    lowerValue := 5966
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 18))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18))) },
  { key := { q := 7, n := 31, r := 19 }
    lowerValue := 1404
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 19))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 19))) },
  { key := { q := 7, n := 31, r := 20 }
    lowerValue := 374
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 20))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 20))) },
  { key := { q := 7, n := 31, r := 21 }
    lowerValue := 114
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 21))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 21))) },
  { key := { q := 7, n := 31, r := 22 }
    lowerValue := 39
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 22))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 26 22))) },
  { key := { q := 7, n := 31, r := 23 }
    lowerValue := 16
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 23))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 27 23))) },
  { key := { q := 7, n := 31, r := 24 }
    lowerValue := 7
    upperValue := 343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 24))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 29 24))) },
  { key := { q := 7, n := 31, r := 25 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 27 26)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 30 25))) },
  { key := { q := 7, n := 31, r := 26 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 28 27))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 31 26)) },
  { key := { q := 7, n := 31, r := 27 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 29 28)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 31 27)) },
  { key := { q := 7, n := 31, r := 28 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 30 29))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 31 28)) },
  { key := { q := 7, n := 31, r := 29 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 31 30)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 31 29)) },
  { key := { q := 7, n := 31, r := 30 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 31 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 31 30)) },
  { key := { q := 7, n := 31, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 31 31)) },
  { key := { q := 7, n := 31, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 31 32)) },
  { key := { q := 7, n := 31, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 31 33)) },
  { key := { q := 7, n := 31, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 31 34)) },
  { key := { q := 7, n := 31, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 31 35)) },
  { key := { q := 7, n := 31, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 31 36)) },
  { key := { q := 7, n := 31, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 31 37)) },
  { key := { q := 7, n := 31, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 31 38)) },
  { key := { q := 7, n := 31, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 31 39)) },
  { key := { q := 7, n := 31, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 31 40)) },
  { key := { q := 7, n := 31, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 31 41)) },
  { key := { q := 7, n := 31, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 31 42)) },
  { key := { q := 7, n := 31, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 31 43)) },
  { key := { q := 7, n := 31, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 31 44)) },
  { key := { q := 7, n := 31, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 31 45)) },
  { key := { q := 7, n := 31, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 31 46)) },
  { key := { q := 7, n := 31, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 31 47)) },
  { key := { q := 7, n := 31, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 31 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 31 48)) },
  { key := { q := 7, n := 32, r := 0 }
    lowerValue := 1104427674243920646305299201
    upperValue := 1104427674243920646305299201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 32 0)) },
  { key := { q := 7, n := 32, r := 1 }
    lowerValue := 5722423182610987804690670
    upperValue := 80497643895329493170940175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 1))
    upperTrace := (.lengthenFreeN 29 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 32, r := 2 }
    lowerValue := 61190518823420723935138
    upperValue := 10579690340529019102466423
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 2))
    upperTrace := (.lengthenFreeN 28 (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2)))) },
  { key := { q := 7, n := 32, r := 3 }
    lowerValue := 1013786075058972935147
    upperValue := 1511384334361288443209489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 3))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2)))))) },
  { key := { q := 7, n := 32, r := 4 }
    lowerValue := 23156742038825415777
    upperValue := 215912047765898349029927
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 4))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2)))))) },
  { key := { q := 7, n := 32, r := 5 }
    lowerValue := 684452298756797765
    upperValue := 30844578252271192718561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 5))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2)))))) },
  { key := { q := 7, n := 32, r := 6 }
    lowerValue := 25161882533970517
    upperValue := 1341068619663964900807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 6))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 8 6))) },
  { key := { q := 7, n := 32, r := 7 }
    lowerValue := 1119976132074593
    upperValue := 191581231380566414401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 7))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 9 7))) },
  { key := { q := 7, n := 32, r := 8 }
    lowerValue := 59209682418252
    upperValue := 27368747340080916343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 8))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 10 8))) },
  { key := { q := 7, n := 32, r := 9 }
    lowerValue := 3665297031460
    upperValue := 3909821048582988049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 9))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 11 9))) },
  { key := { q := 7, n := 32, r := 10 }
    lowerValue := 262825769978
    upperValue := 558545864083284007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 10))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 12 10))) },
  { key := { q := 7, n := 32, r := 11 }
    lowerValue := 21650422521
    upperValue := 79792266297612001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 11))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 13 11))) },
  { key := { q := 7, n := 32, r := 12 }
    lowerValue := 2035759988
    upperValue := 1628413597910449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 12))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 32, r := 13 }
    lowerValue := 217430393
    upperValue := 232630513987207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 13))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 32, r := 14 }
    lowerValue := 26281436
    upperValue := 33232930569601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 14))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 32, r := 15 }
    lowerValue := 3585602
    upperValue := 4747561509943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 15))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 32, r := 16 }
    lowerValue := 551186
    upperValue := 678223072849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 16))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 32, r := 17 }
    lowerValue := 95378
    upperValue := 96889010407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 17))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 32, r := 18 }
    lowerValue := 18575
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 18))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18))) },
  { key := { q := 7, n := 32, r := 19 }
    lowerValue := 4074
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 19))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 19))) },
  { key := { q := 7, n := 32, r := 20 }
    lowerValue := 1008
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 20))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 20))) },
  { key := { q := 7, n := 32, r := 21 }
    lowerValue := 282
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 21))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 21))) },
  { key := { q := 7, n := 32, r := 22 }
    lowerValue := 89
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 22))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 26 22))) },
  { key := { q := 7, n := 32, r := 23 }
    lowerValue := 32
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 23))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 27 23))) },
  { key := { q := 7, n := 32, r := 24 }
    lowerValue := 14
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 24))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 29 24))) },
  { key := { q := 7, n := 32, r := 25 }
    lowerValue := 7
    upperValue := 343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 25))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 30 25))) },
  { key := { q := 7, n := 32, r := 26 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 28 27)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 31 26))) },
  { key := { q := 7, n := 32, r := 27 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 29 28))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 32 27)) },
  { key := { q := 7, n := 32, r := 28 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 30 29)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 32 28)) },
  { key := { q := 7, n := 32, r := 29 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 31 30))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 32 29)) },
  { key := { q := 7, n := 32, r := 30 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 32 31)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 32 30)) },
  { key := { q := 7, n := 32, r := 31 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 32 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 32 31)) },
  { key := { q := 7, n := 32, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 32 32)) },
  { key := { q := 7, n := 32, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 32 33)) },
  { key := { q := 7, n := 32, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 32 34)) },
  { key := { q := 7, n := 32, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 32 35)) },
  { key := { q := 7, n := 32, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 32 36)) },
  { key := { q := 7, n := 32, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 32 37)) },
  { key := { q := 7, n := 32, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 32 38)) },
  { key := { q := 7, n := 32, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 32 39)) },
  { key := { q := 7, n := 32, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 32 40)) },
  { key := { q := 7, n := 32, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 32 41)) },
  { key := { q := 7, n := 32, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 32 42)) },
  { key := { q := 7, n := 32, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 32 43)) },
  { key := { q := 7, n := 32, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 32 44)) },
  { key := { q := 7, n := 32, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 32 45)) },
  { key := { q := 7, n := 32, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 32 46)) },
  { key := { q := 7, n := 32, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 32 47)) },
  { key := { q := 7, n := 32, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 32 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 32 48)) },
  { key := { q := 7, n := 33, r := 0 }
    lowerValue := 7730993719707444524137094407
    upperValue := 7730993719707444524137094407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 33 0)) },
  { key := { q := 7, n := 33, r := 1 }
    lowerValue := 38849214671896706151442686
    upperValue := 563483507267306452196581225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 1))
    upperTrace := (.lengthenFreeN 30 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 33, r := 2 }
    lowerValue := 402509174764796403609991
    upperValue := 74057832383703133717264961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 2))
    upperTrace := (.lengthenFreeN 29 (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2)))) },
  { key := { q := 7, n := 33, r := 3 }
    lowerValue := 6454850425946536431935
    upperValue := 10579690340529019102466423
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 3))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2)))))) },
  { key := { q := 7, n := 33, r := 4 }
    lowerValue := 142559292658006885303
    upperValue := 1511384334361288443209489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 4))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2)))))) },
  { key := { q := 7, n := 33, r := 5 }
    lowerValue := 4069469326544502961
    upperValue := 215912047765898349029927
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 5))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2)))))) },
  { key := { q := 7, n := 33, r := 6 }
    lowerValue := 144303751128741803
    upperValue := 9387480337647754305649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 6))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 8 6))) },
  { key := { q := 7, n := 33, r := 7 }
    lowerValue := 6187396274497538
    upperValue := 1341068619663964900807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 7))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 9 7))) },
  { key := { q := 7, n := 33, r := 8 }
    lowerValue := 314657841655389
    upperValue := 191581231380566414401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 8))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 10 8))) },
  { key := { q := 7, n := 33, r := 9 }
    lowerValue := 18708375763433
    upperValue := 27368747340080916343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 9))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 11 9))) },
  { key := { q := 7, n := 33, r := 10 }
    lowerValue := 1286344504222
    upperValue := 3909821048582988049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 10))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 12 10))) },
  { key := { q := 7, n := 33, r := 11 }
    lowerValue := 101423865476
    upperValue := 558545864083284007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 11))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 13 11))) },
  { key := { q := 7, n := 33, r := 12 }
    lowerValue := 9110456432
    upperValue := 11398895185373143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 12))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 33, r := 13 }
    lowerValue := 927585359
    upperValue := 1628413597910449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 13))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 33, r := 14 }
    lowerValue := 106634640
    upperValue := 232630513987207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 14))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 33, r := 15 }
    lowerValue := 13801499
    upperValue := 33232930569601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 15))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 33, r := 16 }
    lowerValue := 2007094
    upperValue := 4747561509943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 16))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 33, r := 17 }
    lowerValue := 327558
    upperValue := 678223072849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 17))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 33, r := 18 }
    lowerValue := 59961
    upperValue := 13841287201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 18))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18))) },
  { key := { q := 7, n := 33, r := 19 }
    lowerValue := 12313
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 19))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 19))) },
  { key := { q := 7, n := 33, r := 20 }
    lowerValue := 2839
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 20))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 20))) },
  { key := { q := 7, n := 33, r := 21 }
    lowerValue := 736
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 21))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 21))) },
  { key := { q := 7, n := 33, r := 22 }
    lowerValue := 215
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 22))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 26 22))) },
  { key := { q := 7, n := 33, r := 23 }
    lowerValue := 71
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 23))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 27 23))) },
  { key := { q := 7, n := 33, r := 24 }
    lowerValue := 27
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 24))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 29 24))) },
  { key := { q := 7, n := 33, r := 25 }
    lowerValue := 12
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 25))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 30 25))) },
  { key := { q := 7, n := 33, r := 26 }
    lowerValue := 7
    upperValue := 343
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 28 27))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 31 26))) },
  { key := { q := 7, n := 33, r := 27 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 29 28)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 32 27))) },
  { key := { q := 7, n := 33, r := 28 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 30 29))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 33 28)) },
  { key := { q := 7, n := 33, r := 29 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 31 30)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 33 29)) },
  { key := { q := 7, n := 33, r := 30 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 32 31))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 33 30)) },
  { key := { q := 7, n := 33, r := 31 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 33 32)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 33 31)) },
  { key := { q := 7, n := 33, r := 32 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 33 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 33 32)) },
  { key := { q := 7, n := 33, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 33 33)) },
  { key := { q := 7, n := 33, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 33 34)) },
  { key := { q := 7, n := 33, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 33 35)) },
  { key := { q := 7, n := 33, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 33 36)) },
  { key := { q := 7, n := 33, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 33 37)) },
  { key := { q := 7, n := 33, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 33 38)) },
  { key := { q := 7, n := 33, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 33 39)) },
  { key := { q := 7, n := 33, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 33 40)) },
  { key := { q := 7, n := 33, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 33 41)) },
  { key := { q := 7, n := 33, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 33 42)) },
  { key := { q := 7, n := 33, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 33 43)) },
  { key := { q := 7, n := 33, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 33 44)) },
  { key := { q := 7, n := 33, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 33 45)) },
  { key := { q := 7, n := 33, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 33 46)) },
  { key := { q := 7, n := 33, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 33 47)) },
  { key := { q := 7, n := 33, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 33 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 33 48)) },
  { key := { q := 7, n := 34, r := 0 }
    lowerValue := 54116956037952111668959660849
    upperValue := 54116956037952111668959660849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 34 0)) },
  { key := { q := 7, n := 34, r := 1 }
    lowerValue := 263985151404644447165656883
    upperValue := 3944384550871145165376068575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 1))
    upperTrace := (.lengthenFreeN 31 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 34, r := 2 }
    lowerValue := 2652661930197152672367025
    upperValue := 518404826685921936020854727
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 2))
    upperTrace := (.lengthenFreeN 30 (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2)))) },
  { key := { q := 7, n := 34, r := 3 }
    lowerValue := 41217991643177826694157
    upperValue := 74057832383703133717264961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 3))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2)))))) },
  { key := { q := 7, n := 34, r := 4 }
    lowerValue := 881150574453947965799
    upperValue := 10579690340529019102466423
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 4))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2)))))) },
  { key := { q := 7, n := 34, r := 5 }
    lowerValue := 24320752917458788868
    upperValue := 1511384334361288443209489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 5))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 7) (by decide : 7 ≤ 8) (.primitive "lean_octonary_four_two_explicit_upper" (primitiveUpper_valid 8 4 2)))))) },
  { key := { q := 7, n := 34, r := 6 }
    lowerValue := 832914842991836857
    upperValue := 65712362363534280139543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 6))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 8 6))) },
  { key := { q := 7, n := 34, r := 7 }
    lowerValue := 34449186502033537
    upperValue := 9387480337647754305649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 7))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 9 7))) },
  { key := { q := 7, n := 34, r := 8 }
    lowerValue := 1687654475218499
    upperValue := 1341068619663964900807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 8))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 10 8))) },
  { key := { q := 7, n := 34, r := 9 }
    lowerValue := 96524662646408
    upperValue := 191581231380566414401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 9))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 11 9))) },
  { key := { q := 7, n := 34, r := 10 }
    lowerValue := 6374596678411
    upperValue := 27368747340080916343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 10))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 12 10))) },
  { key := { q := 7, n := 34, r := 11 }
    lowerValue := 481961134198
    upperValue := 3909821048582988049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 11))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 13 11))) },
  { key := { q := 7, n := 34, r := 12 }
    lowerValue := 41439327810
    upperValue := 79792266297612001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 12))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 34, r := 13 }
    lowerValue := 4030744658
    upperValue := 11398895185373143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 13))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 34, r := 14 }
    lowerValue := 441745641
    upperValue := 1628413597910449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 14))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 34, r := 15 }
    lowerValue := 54380424
    upperValue := 232630513987207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 15))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 34, r := 16 }
    lowerValue := 7502934
    upperValue := 33232930569601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 16))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 34, r := 17 }
    lowerValue := 1158501
    upperValue := 4747561509943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 17))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 34, r := 18 }
    lowerValue := 200028
    upperValue := 96889010407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 18))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18))) },
  { key := { q := 7, n := 34, r := 19 }
    lowerValue := 38614
    upperValue := 13841287201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 19))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 19))) },
  { key := { q := 7, n := 34, r := 20 }
    lowerValue := 8338
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 20))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 20))) },
  { key := { q := 7, n := 34, r := 21 }
    lowerValue := 2016
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 21))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 21))) },
  { key := { q := 7, n := 34, r := 22 }
    lowerValue := 547
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 22))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 26 22))) },
  { key := { q := 7, n := 34, r := 23 }
    lowerValue := 167
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 23))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 27 23))) },
  { key := { q := 7, n := 34, r := 24 }
    lowerValue := 58
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 24))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 29 24))) },
  { key := { q := 7, n := 34, r := 25 }
    lowerValue := 23
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 25))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 30 25))) },
  { key := { q := 7, n := 34, r := 26 }
    lowerValue := 10
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 26))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 31 26))) }]

end CoveringCodes.Database
