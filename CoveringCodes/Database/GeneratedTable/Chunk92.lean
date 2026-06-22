import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 92. Do not edit manually.

def precomputedTable_chunk_92 : Array AnyBoundEntry := #[
  { key := { q := 9, n := 28, r := 19 }
    lowerValue := 406
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 19))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19))) },
  { key := { q := 9, n := 28, r := 20 }
    lowerValue := 108
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 20))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 20))) },
  { key := { q := 9, n := 28, r := 21 }
    lowerValue := 34
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 21))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 21))) },
  { key := { q := 9, n := 28, r := 22 }
    lowerValue := 13
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 22))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 25 22))) },
  { key := { q := 9, n := 28, r := 23 }
    lowerValue := 9
    upperValue := 729
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 25 24))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 26 23))) },
  { key := { q := 9, n := 28, r := 24 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 26 25)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 28 24)) },
  { key := { q := 9, n := 28, r := 25 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 27 26))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 28 25)) },
  { key := { q := 9, n := 28, r := 26 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 28 27)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 28 26)) },
  { key := { q := 9, n := 28, r := 27 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 28 27))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 28 27)) },
  { key := { q := 9, n := 28, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 28 28)) },
  { key := { q := 9, n := 28, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 28 29)) },
  { key := { q := 9, n := 28, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 28 30)) },
  { key := { q := 9, n := 28, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 28 31)) },
  { key := { q := 9, n := 28, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 28 32)) },
  { key := { q := 9, n := 28, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 28 33)) },
  { key := { q := 9, n := 28, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 28 34)) },
  { key := { q := 9, n := 28, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 28 35)) },
  { key := { q := 9, n := 28, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 28 36)) },
  { key := { q := 9, n := 28, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 28 37)) },
  { key := { q := 9, n := 28, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 28 38)) },
  { key := { q := 9, n := 28, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 28 39)) },
  { key := { q := 9, n := 28, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 28 40)) },
  { key := { q := 9, n := 28, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 28 41)) },
  { key := { q := 9, n := 28, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 28 42)) },
  { key := { q := 9, n := 28, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 28 43)) },
  { key := { q := 9, n := 28, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 28 44)) },
  { key := { q := 9, n := 28, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 28 45)) },
  { key := { q := 9, n := 28, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 28 46)) },
  { key := { q := 9, n := 28, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 28 47)) },
  { key := { q := 9, n := 28, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 28 48)) },
  { key := { q := 9, n := 29, r := 0 }
    lowerValue := 4710128697246244834921603689
    upperValue := 4710128697246244834921603689
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 29 0)) },
  { key := { q := 9, n := 29, r := 1 }
    lowerValue := 20215144623374441351594866
    upperValue := 264904357458293605256221881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 1))
    upperTrace := (.lengthenFreeN 26 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 29, r := 2 }
    lowerValue := 179659331626282367735501
    upperValue := 29433817495365956139580209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 2))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 29, r := 3 }
    lowerValue := 2482850454384138042145
    upperValue := 3270424166151772904397801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 3))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 29, r := 4 }
    lowerValue := 47490154881794989625
    upperValue := 79766443076872509863361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 4))
    upperTrace := (.lengthenFreeN 21 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))) },
  { key := { q := 9, n := 29, r := 5 }
    lowerValue := 1180322160523417898
    upperValue := 8862938119652501095929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 5))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 29, r := 6 }
    lowerValue := 36650651378723044
    upperValue := 984770902183611232881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 6))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 29, r := 7 }
    lowerValue := 1384636765470060
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 7))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 29, r := 8 }
    lowerValue := 62458650702695
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 8))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 29, r := 9 }
    lowerValue := 3317919263547
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 9))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 29, r := 10 }
    lowerValue := 205443276731
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 10))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 29, r := 11 }
    lowerValue := 14713858832
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 11))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 29, r := 12 }
    lowerValue := 1211958892
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 12))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 29, r := 13 }
    lowerValue := 114337504
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 13))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 9 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 29, r := 14 }
    lowerValue := 12320440
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 14))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 10 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 29, r := 15 }
    lowerValue := 1513947
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 15))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 11 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 29, r := 16 }
    lowerValue := 212043
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 16))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 29, r := 17 }
    lowerValue := 33869
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 17))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 29, r := 18 }
    lowerValue := 6179
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 18))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) },
  { key := { q := 9, n := 29, r := 19 }
    lowerValue := 1291
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 19))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19))) },
  { key := { q := 9, n := 29, r := 20 }
    lowerValue := 310
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 20))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 20))) },
  { key := { q := 9, n := 29, r := 21 }
    lowerValue := 86
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 21))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 21))) },
  { key := { q := 9, n := 29, r := 22 }
    lowerValue := 28
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 22))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 25 22))) },
  { key := { q := 9, n := 29, r := 23 }
    lowerValue := 11
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 23))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 26 23))) },
  { key := { q := 9, n := 29, r := 24 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 26 25))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 28 24))) },
  { key := { q := 9, n := 29, r := 25 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 27 26)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 29 25)) },
  { key := { q := 9, n := 29, r := 26 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 28 27))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 29 26)) },
  { key := { q := 9, n := 29, r := 27 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 29 28)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 29 27)) },
  { key := { q := 9, n := 29, r := 28 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 29 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 29 28)) },
  { key := { q := 9, n := 29, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 29 29)) },
  { key := { q := 9, n := 29, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 29 30)) },
  { key := { q := 9, n := 29, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 29 31)) },
  { key := { q := 9, n := 29, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 29 32)) },
  { key := { q := 9, n := 29, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 29 33)) },
  { key := { q := 9, n := 29, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 29 34)) },
  { key := { q := 9, n := 29, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 29 35)) },
  { key := { q := 9, n := 29, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 29 36)) },
  { key := { q := 9, n := 29, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 29 37)) },
  { key := { q := 9, n := 29, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 29 38)) },
  { key := { q := 9, n := 29, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 29 39)) },
  { key := { q := 9, n := 29, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 29 40)) },
  { key := { q := 9, n := 29, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 29 41)) },
  { key := { q := 9, n := 29, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 29 42)) },
  { key := { q := 9, n := 29, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 29 43)) },
  { key := { q := 9, n := 29, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 29 44)) },
  { key := { q := 9, n := 29, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 29 45)) },
  { key := { q := 9, n := 29, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 29 46)) },
  { key := { q := 9, n := 29, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 29 47)) },
  { key := { q := 9, n := 29, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 29 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 29 48)) },
  { key := { q := 9, n := 30, r := 0 }
    lowerValue := 42391158275216203514294433201
    upperValue := 42391158275216203514294433201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 30 0)) },
  { key := { q := 9, n := 30, r := 1 }
    lowerValue := 175896922303801674333171922
    upperValue := 2384139217124642447305996929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 1))
    upperTrace := (.lengthenFreeN 27 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 30, r := 2 }
    lowerValue := 1509602872946697180096665
    upperValue := 264904357458293605256221881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 2))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 30, r := 3 }
    lowerValue := 20121102218584576101063
    upperValue := 29433817495365956139580209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 3))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 30, r := 4 }
    lowerValue := 370689208669911761453
    upperValue := 717897987691852588770249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 4))
    upperTrace := (.lengthenFreeN 22 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))) },
  { key := { q := 9, n := 30, r := 5 }
    lowerValue := 8861038645612021030
    upperValue := 79766443076872509863361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 5))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 30, r := 6 }
    lowerValue := 264220530745171556
    upperValue := 8862938119652501095929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 6))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 30, r := 7 }
    lowerValue := 9569497775102043
    upperValue := 984770902183611232881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 7))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 30, r := 8 }
    lowerValue := 413066088364893
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 8))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 30, r := 9 }
    lowerValue := 20955649786022
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 9))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 30, r := 10 }
    lowerValue := 1236489073001
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 10))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 30, r := 11 }
    lowerValue := 84188213475
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 11))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 30, r := 12 }
    lowerValue := 6575027400
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 12))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 30, r := 13 }
    lowerValue := 586436863
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 13))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 9 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 30, r := 14 }
    lowerValue := 59549715
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 14))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 10 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 30, r := 15 }
    lowerValue := 6871003
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 15))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 11 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 30, r := 16 }
    lowerValue := 899979
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 16))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 30, r := 17 }
    lowerValue := 133820
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 17))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 30, r := 18 }
    lowerValue := 22610
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 18))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) },
  { key := { q := 9, n := 30, r := 19 }
    lowerValue := 4349
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 19))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19))) },
  { key := { q := 9, n := 30, r := 20 }
    lowerValue := 956
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 20))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 20))) },
  { key := { q := 9, n := 30, r := 21 }
    lowerValue := 241
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 21))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 21))) },
  { key := { q := 9, n := 30, r := 22 }
    lowerValue := 70
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 22))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 25 22))) },
  { key := { q := 9, n := 30, r := 23 }
    lowerValue := 24
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 23))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 26 23))) },
  { key := { q := 9, n := 30, r := 24 }
    lowerValue := 10
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 24))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 28 24))) },
  { key := { q := 9, n := 30, r := 25 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 27 26))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 29 25))) },
  { key := { q := 9, n := 30, r := 26 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 28 27)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 30 26)) },
  { key := { q := 9, n := 30, r := 27 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 29 28))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 30 27)) },
  { key := { q := 9, n := 30, r := 28 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 30 29)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 30 28)) },
  { key := { q := 9, n := 30, r := 29 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 30 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 30 29)) },
  { key := { q := 9, n := 30, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 30 30)) },
  { key := { q := 9, n := 30, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 30 31)) },
  { key := { q := 9, n := 30, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 30 32)) },
  { key := { q := 9, n := 30, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 30 33)) },
  { key := { q := 9, n := 30, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 30 34)) },
  { key := { q := 9, n := 30, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 30 35)) },
  { key := { q := 9, n := 30, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 30 36)) },
  { key := { q := 9, n := 30, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 30 37)) },
  { key := { q := 9, n := 30, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 30 38)) },
  { key := { q := 9, n := 30, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 30 39)) },
  { key := { q := 9, n := 30, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 30 40)) },
  { key := { q := 9, n := 30, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 30 41)) },
  { key := { q := 9, n := 30, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 30 42)) },
  { key := { q := 9, n := 30, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 30 43)) },
  { key := { q := 9, n := 30, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 30 44)) },
  { key := { q := 9, n := 30, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 30 45)) },
  { key := { q := 9, n := 30, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 30 46)) },
  { key := { q := 9, n := 30, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 30 47)) },
  { key := { q := 9, n := 30, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 30 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 30 48)) },
  { key := { q := 9, n := 31, r := 0 }
    lowerValue := 381520424476945831628649898809
    upperValue := 381520424476945831628649898809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 31 0)) },
  { key := { q := 9, n := 31, r := 1 }
    lowerValue := 1532210540068055548709437345
    upperValue := 21457252954121782025753972361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 1))
    upperTrace := (.lengthenFreeN 28 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 31, r := 2 }
    lowerValue := 12713533422538099624401010
    upperValue := 2384139217124642447305996929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 2))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 31, r := 3 }
    lowerValue := 163640905066739967989285
    upperValue := 264904357458293605256221881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 3))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 31, r := 4 }
    lowerValue := 2907662147479001204140
    upperValue := 6461081889226673298932241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 4))
    upperTrace := (.lengthenFreeN 23 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))) },
  { key := { q := 9, n := 31, r := 5 }
    lowerValue := 66946847241615976290
    upperValue := 717897987691852588770249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 5))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 31, r := 6 }
    lowerValue := 1919981179912824208
    upperValue := 79766443076872509863361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 6))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 31, r := 7 }
    lowerValue := 66777254785533240
    upperValue := 8862938119652501095929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 7))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 31, r := 8 }
    lowerValue := 2763355751355908
    upperValue := 984770902183611232881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 8))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 31, r := 9 }
    lowerValue := 134153780659771
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 9))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 31, r := 10 }
    lowerValue := 7559848165799
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 10))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 31, r := 11 }
    lowerValue := 490514562528
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 11))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 31, r := 12 }
    lowerValue := 36420172347
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 12))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 31, r := 13 }
    lowerValue := 3080147098
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 13))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 9 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 31, r := 14 }
    lowerValue := 295718012
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 14))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 10 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 31, r := 15 }
    lowerValue := 32156557
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 15))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 11 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 31, r := 16 }
    lowerValue := 3955260
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 16))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 31, r := 17 }
    lowerValue := 550061
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 17))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 31, r := 18 }
    lowerValue := 86530
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 18))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) },
  { key := { q := 9, n := 31, r := 19 }
    lowerValue := 15418
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 19))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19))) },
  { key := { q := 9, n := 31, r := 20 }
    lowerValue := 3118
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 20))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 20))) },
  { key := { q := 9, n := 31, r := 21 }
    lowerValue := 718
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 21))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 21))) },
  { key := { q := 9, n := 31, r := 22 }
    lowerValue := 189
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 22))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 25 22))) },
  { key := { q := 9, n := 31, r := 23 }
    lowerValue := 58
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 23))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 26 23))) },
  { key := { q := 9, n := 31, r := 24 }
    lowerValue := 20
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 24))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 28 24))) },
  { key := { q := 9, n := 31, r := 25 }
    lowerValue := 9
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 25))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 29 25))) },
  { key := { q := 9, n := 31, r := 26 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 28 27))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 30 26))) },
  { key := { q := 9, n := 31, r := 27 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 29 28)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 31 27)) },
  { key := { q := 9, n := 31, r := 28 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 30 29))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 31 28)) },
  { key := { q := 9, n := 31, r := 29 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 31 30)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 31 29)) },
  { key := { q := 9, n := 31, r := 30 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 31 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 31 30)) },
  { key := { q := 9, n := 31, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 31 31)) },
  { key := { q := 9, n := 31, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 31 32)) },
  { key := { q := 9, n := 31, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 31 33)) },
  { key := { q := 9, n := 31, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 31 34)) },
  { key := { q := 9, n := 31, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 31 35)) },
  { key := { q := 9, n := 31, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 31 36)) },
  { key := { q := 9, n := 31, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 31 37)) },
  { key := { q := 9, n := 31, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 31 38)) },
  { key := { q := 9, n := 31, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 31 39)) },
  { key := { q := 9, n := 31, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 31 40)) },
  { key := { q := 9, n := 31, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 31 41)) },
  { key := { q := 9, n := 31, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 31 42)) },
  { key := { q := 9, n := 31, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 31 43)) },
  { key := { q := 9, n := 31, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 31 44)) },
  { key := { q := 9, n := 31, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 31 45)) },
  { key := { q := 9, n := 31, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 31 46)) },
  { key := { q := 9, n := 31, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 31 47)) },
  { key := { q := 9, n := 31, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 31 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 31 48)) },
  { key := { q := 9, n := 32, r := 0 }
    lowerValue := 3433683820292512484657849089281
    upperValue := 3433683820292512484657849089281
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 32 0)) },
  { key := { q := 9, n := 32, r := 1 }
    lowerValue := 13360637433044795660147272721
    upperValue := 193115276587096038231785751249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 1))
    upperTrace := (.lengthenFreeN 29 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 32, r := 2 }
    lowerValue := 107299266282069700467418178
    upperValue := 21457252954121782025753972361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 2))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 32, r := 3 }
    lowerValue := 1335273490005530767455467
    upperValue := 2384139217124642447305996929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 3))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 32, r := 4 }
    lowerValue := 22912047784896678766738
    upperValue := 58149737003040059690390169
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 4))
    upperTrace := (.lengthenFreeN 24 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))) },
  { key := { q := 9, n := 32, r := 5 }
    lowerValue := 508803013126365417489
    upperValue := 6461081889226673298932241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 5))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 32, r := 6 }
    lowerValue := 14055116138487971910
    upperValue := 717897987691852588770249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 6))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 32, r := 7 }
    lowerValue := 470173587928158157
    upperValue := 79766443076872509863361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 7))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 32, r := 8 }
    lowerValue := 18684599211357353
    upperValue := 8862938119652501095929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 8))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 32, r := 9 }
    lowerValue := 869635554917307
    upperValue := 984770902183611232881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 9))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 32, r := 10 }
    lowerValue := 46896776331616
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 10))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 32, r := 11 }
    lowerValue := 2906134032363
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 11))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 32, r := 12 }
    lowerValue := 205635722572
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 12))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 32, r := 13 }
    lowerValue := 16534442944
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 13))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 9 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 32, r := 14 }
    lowerValue := 1505299040
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 14))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 10 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 32, r := 15 }
    lowerValue := 154770396
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 15))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 11 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 32, r := 16 }
    lowerValue := 17942199
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 16))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 32, r := 17 }
    lowerValue := 2343382
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 17))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 32, r := 18 }
    lowerValue := 344821
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 18))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) },
  { key := { q := 9, n := 32, r := 19 }
    lowerValue := 57210
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 19))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19))) },
  { key := { q := 9, n := 32, r := 20 }
    lowerValue := 10719
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 20))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 20))) },
  { key := { q := 9, n := 32, r := 21 }
    lowerValue := 2274
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 21))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 21))) },
  { key := { q := 9, n := 32, r := 22 }
    lowerValue := 548
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 22))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 25 22))) },
  { key := { q := 9, n := 32, r := 23 }
    lowerValue := 151
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 23))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 26 23))) },
  { key := { q := 9, n := 32, r := 24 }
    lowerValue := 48
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 24))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 28 24))) },
  { key := { q := 9, n := 32, r := 25 }
    lowerValue := 18
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 25))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 29 25))) },
  { key := { q := 9, n := 32, r := 26 }
    lowerValue := 9
    upperValue := 729
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 28 27)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 30 26))) },
  { key := { q := 9, n := 32, r := 27 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 29 28))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 31 27))) },
  { key := { q := 9, n := 32, r := 28 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 30 29)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 32 28)) },
  { key := { q := 9, n := 32, r := 29 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 31 30))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 32 29)) },
  { key := { q := 9, n := 32, r := 30 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 32 31)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 32 30)) },
  { key := { q := 9, n := 32, r := 31 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 32 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 32 31)) },
  { key := { q := 9, n := 32, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 32 32)) },
  { key := { q := 9, n := 32, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 32 33)) },
  { key := { q := 9, n := 32, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 32 34)) },
  { key := { q := 9, n := 32, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 32 35)) },
  { key := { q := 9, n := 32, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 32 36)) },
  { key := { q := 9, n := 32, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 32 37)) },
  { key := { q := 9, n := 32, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 32 38)) },
  { key := { q := 9, n := 32, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 32 39)) },
  { key := { q := 9, n := 32, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 32 40)) },
  { key := { q := 9, n := 32, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 32 41)) },
  { key := { q := 9, n := 32, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 32 42)) },
  { key := { q := 9, n := 32, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 32 43)) },
  { key := { q := 9, n := 32, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 32 44)) },
  { key := { q := 9, n := 32, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 32 45)) },
  { key := { q := 9, n := 32, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 32 46)) },
  { key := { q := 9, n := 32, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 32 47)) },
  { key := { q := 9, n := 32, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 32 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 32 48)) },
  { key := { q := 9, n := 33, r := 0 }
    lowerValue := 30903154382632612361920641803529
    upperValue := 30903154382632612361920641803529
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 33 0)) },
  { key := { q := 9, n := 33, r := 1 }
    lowerValue := 116615676915594763629889214353
    upperValue := 1738037489283864344086071761241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 1))
    upperTrace := (.lengthenFreeN 30 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 33, r := 2 }
    lowerValue := 907395084200975199281223884
    upperValue := 193115276587096038231785751249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 2))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 33, r := 3 }
    lowerValue := 10929385474961569752925839
    upperValue := 21457252954121782025753972361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 3))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 33, r := 4 }
    lowerValue := 181318393776608654449926
    upperValue := 523347633027360537213511521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 4))
    upperTrace := (.lengthenFreeN 25 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))) },
  { key := { q := 9, n := 33, r := 5 }
    lowerValue := 3888430644039690746305
    upperValue := 58149737003040059690390169
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 5))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 33, r := 6 }
    lowerValue := 103601121225360170796
    upperValue := 6461081889226673298932241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 6))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 33, r := 7 }
    lowerValue := 3338202412871899170
    upperValue := 717897987691852588770249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 7))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 33, r := 8 }
    lowerValue := 127596218443779930
    upperValue := 79766443076872509863361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 8))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 33, r := 9 }
    lowerValue := 5703179565910356
    upperValue := 8862938119652501095929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 9))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 33, r := 10 }
    lowerValue := 294862674709700
    upperValue := 984770902183611232881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 10))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 33, r := 11 }
    lowerValue := 17486349997832
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 11))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 33, r := 12 }
    lowerValue := 1181758949419
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 12))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 33, r := 13 }
    lowerValue := 90558238706
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 13))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 9 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 33, r := 14 }
    lowerValue := 7838640203
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 14))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 10 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 33, r := 15 }
    lowerValue := 764283009
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 15))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 11 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 33, r := 16 }
    lowerValue := 83780160
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 16))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 33, r := 17 }
    lowerValue := 10313886
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 17))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 33, r := 18 }
    lowerValue := 1425419
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 18))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) },
  { key := { q := 9, n := 33, r := 19 }
    lowerValue := 221238
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 19))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19))) },
  { key := { q := 9, n := 33, r := 20 }
    lowerValue := 38605
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 20))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 20))) },
  { key := { q := 9, n := 33, r := 21 }
    lowerValue := 7588
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 21))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 21))) },
  { key := { q := 9, n := 33, r := 22 }
    lowerValue := 1684
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 22))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 25 22))) },
  { key := { q := 9, n := 33, r := 23 }
    lowerValue := 424
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 33 23))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 26 23))) }]

end CoveringCodes.Database
