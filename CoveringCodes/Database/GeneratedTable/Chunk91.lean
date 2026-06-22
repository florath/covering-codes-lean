import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 91. Do not edit manually.

def precomputedTable_chunk_91 : Array AnyBoundEntry := #[
  { key := { q := 9, n := 23, r := 14 }
    lowerValue := 2048
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 14))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 10 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 23, r := 15 }
    lowerValue := 411
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 15))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 11 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 23, r := 16 }
    lowerValue := 98
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 16))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 23, r := 17 }
    lowerValue := 28
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 17))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 23, r := 18 }
    lowerValue := 10
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 18))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) },
  { key := { q := 9, n := 23, r := 19 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 21 20)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19))) },
  { key := { q := 9, n := 23, r := 20 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 22 21))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 20)) },
  { key := { q := 9, n := 23, r := 21 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 23 22)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 21)) },
  { key := { q := 9, n := 23, r := 22 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 23 22))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 22)) },
  { key := { q := 9, n := 23, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 23 23)) },
  { key := { q := 9, n := 23, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 23 24)) },
  { key := { q := 9, n := 23, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 23 25)) },
  { key := { q := 9, n := 23, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 23 26)) },
  { key := { q := 9, n := 23, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 23 27)) },
  { key := { q := 9, n := 23, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 23 28)) },
  { key := { q := 9, n := 23, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 23 29)) },
  { key := { q := 9, n := 23, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 23 30)) },
  { key := { q := 9, n := 23, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 23 31)) },
  { key := { q := 9, n := 23, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 23 32)) },
  { key := { q := 9, n := 23, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 23 33)) },
  { key := { q := 9, n := 23, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 23 34)) },
  { key := { q := 9, n := 23, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 23 35)) },
  { key := { q := 9, n := 23, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 23 36)) },
  { key := { q := 9, n := 23, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 23 37)) },
  { key := { q := 9, n := 23, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 23 38)) },
  { key := { q := 9, n := 23, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 23 39)) },
  { key := { q := 9, n := 23, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 23 40)) },
  { key := { q := 9, n := 23, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 23 41)) },
  { key := { q := 9, n := 23, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 23 42)) },
  { key := { q := 9, n := 23, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 23 43)) },
  { key := { q := 9, n := 23, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 23 44)) },
  { key := { q := 9, n := 23, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 23 45)) },
  { key := { q := 9, n := 23, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 23 46)) },
  { key := { q := 9, n := 23, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 23 47)) },
  { key := { q := 9, n := 23, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 23 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 23 48)) },
  { key := { q := 9, n := 24, r := 0 }
    lowerValue := 79766443076872509863361
    upperValue := 79766443076872509863361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 24 0)) },
  { key := { q := 9, n := 24, r := 1 }
    lowerValue := 413297632522655491521
    upperValue := 4486178554392006727569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 1))
    upperTrace := (.lengthenFreeN 21 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 24, r := 2 }
    lowerValue := 4466956547957244211
    upperValue := 498464283821334080841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 2))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 24, r := 3 }
    lowerValue := 75669327347634823
    upperValue := 55384920424592675649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 3))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 24, r := 4 }
    lowerValue := 1789358244908599
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 4))
    upperTrace := (.lengthenFreeN 16 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))) },
  { key := { q := 9, n := 24, r := 5 }
    lowerValue := 55495516890314
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 5))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 24, r := 6 }
    lowerValue := 2172236511287
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 6))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 24, r := 7 }
    lowerValue := 104604378341
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 7))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 24, r := 8 }
    lowerValue := 6088247007
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 8))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 24, r := 9 }
    lowerValue := 422957891
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 9))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 24, r := 10 }
    lowerValue := 34764581
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 10))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 24, r := 11 }
    lowerValue := 3360542
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 11))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 24, r := 12 }
    lowerValue := 380630
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 12))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 24, r := 13 }
    lowerValue := 50427
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 13))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 9 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 24, r := 14 }
    lowerValue := 7815
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 14))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 10 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 24, r := 15 }
    lowerValue := 1420
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 15))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 11 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 24, r := 16 }
    lowerValue := 304
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 16))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 24, r := 17 }
    lowerValue := 77
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 17))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 24, r := 18 }
    lowerValue := 24
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 18))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) },
  { key := { q := 9, n := 24, r := 19 }
    lowerValue := 9
    upperValue := 729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 19))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19))) },
  { key := { q := 9, n := 24, r := 20 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 22 21)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 20))) },
  { key := { q := 9, n := 24, r := 21 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 23 22))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 21)) },
  { key := { q := 9, n := 24, r := 22 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 24 23)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 22)) },
  { key := { q := 9, n := 24, r := 23 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 24 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 23)) },
  { key := { q := 9, n := 24, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 24 24)) },
  { key := { q := 9, n := 24, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 24 25)) },
  { key := { q := 9, n := 24, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 24 26)) },
  { key := { q := 9, n := 24, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 24 27)) },
  { key := { q := 9, n := 24, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 24 28)) },
  { key := { q := 9, n := 24, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 24 29)) },
  { key := { q := 9, n := 24, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 24 30)) },
  { key := { q := 9, n := 24, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 24 31)) },
  { key := { q := 9, n := 24, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 24 32)) },
  { key := { q := 9, n := 24, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 24 33)) },
  { key := { q := 9, n := 24, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 24 34)) },
  { key := { q := 9, n := 24, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 24 35)) },
  { key := { q := 9, n := 24, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 24 36)) },
  { key := { q := 9, n := 24, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 24 37)) },
  { key := { q := 9, n := 24, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 24 38)) },
  { key := { q := 9, n := 24, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 24 39)) },
  { key := { q := 9, n := 24, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 24 40)) },
  { key := { q := 9, n := 24, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 24 41)) },
  { key := { q := 9, n := 24, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 24 42)) },
  { key := { q := 9, n := 24, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 24 43)) },
  { key := { q := 9, n := 24, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 24 44)) },
  { key := { q := 9, n := 24, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 24 45)) },
  { key := { q := 9, n := 24, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 24 46)) },
  { key := { q := 9, n := 24, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 24 47)) },
  { key := { q := 9, n := 24, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 24 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 24 48)) },
  { key := { q := 9, n := 25, r := 0 }
    lowerValue := 717897987691852588770249
    upperValue := 717897987691852588770249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 25 0)) },
  { key := { q := 9, n := 25, r := 1 }
    lowerValue := 3571631779561455665524
    upperValue := 40375606989528060548121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 1))
    upperTrace := (.lengthenFreeN 22 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 25, r := 2 }
    lowerValue := 37003143533418513931
    upperValue := 4486178554392006727569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 2))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 25, r := 3 }
    lowerValue := 599747191265381223
    upperValue := 498464283821334080841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 3))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 25, r := 4 }
    lowerValue := 13542331916333481
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 4))
    upperTrace := (.lengthenFreeN 17 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))) },
  { key := { q := 9, n := 25, r := 5 }
    lowerValue := 400171625162275
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 5))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 25, r := 6 }
    lowerValue := 14888071070004
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 6))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 25, r := 7 }
    lowerValue := 679621279526
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 7))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 25, r := 8 }
    lowerValue := 37386356990
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 8))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 25, r := 9 }
    lowerValue := 2446776700
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 9))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 25, r := 10 }
    lowerValue := 188761074
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 10))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 25, r := 11 }
    lowerValue := 17055457
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 11))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 25, r := 12 }
    lowerValue := 1797199
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 12))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 25, r := 13 }
    lowerValue := 220326
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 13))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 9 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 25, r := 14 }
    lowerValue := 31402
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 14))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 10 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 25, r := 15 }
    lowerValue := 5208
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 15))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 11 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 25, r := 16 }
    lowerValue := 1007
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 16))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 25, r := 17 }
    lowerValue := 229
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 17))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 25, r := 18 }
    lowerValue := 61
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 18))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) },
  { key := { q := 9, n := 25, r := 19 }
    lowerValue := 20
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 19))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19))) },
  { key := { q := 9, n := 25, r := 20 }
    lowerValue := 9
    upperValue := 729
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 22 21))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 20))) },
  { key := { q := 9, n := 25, r := 21 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 23 22)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 21))) },
  { key := { q := 9, n := 25, r := 22 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 24 23))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 25 22)) },
  { key := { q := 9, n := 25, r := 23 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 25 24)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 25 23)) },
  { key := { q := 9, n := 25, r := 24 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 25 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 25 24)) },
  { key := { q := 9, n := 25, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 25 25)) },
  { key := { q := 9, n := 25, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 25 26)) },
  { key := { q := 9, n := 25, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 25 27)) },
  { key := { q := 9, n := 25, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 25 28)) },
  { key := { q := 9, n := 25, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 25 29)) },
  { key := { q := 9, n := 25, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 25 30)) },
  { key := { q := 9, n := 25, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 25 31)) },
  { key := { q := 9, n := 25, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 25 32)) },
  { key := { q := 9, n := 25, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 25 33)) },
  { key := { q := 9, n := 25, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 25 34)) },
  { key := { q := 9, n := 25, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 25 35)) },
  { key := { q := 9, n := 25, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 25 36)) },
  { key := { q := 9, n := 25, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 25 37)) },
  { key := { q := 9, n := 25, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 25 38)) },
  { key := { q := 9, n := 25, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 25 39)) },
  { key := { q := 9, n := 25, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 25 40)) },
  { key := { q := 9, n := 25, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 25 41)) },
  { key := { q := 9, n := 25, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 25 42)) },
  { key := { q := 9, n := 25, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 25 43)) },
  { key := { q := 9, n := 25, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 25 44)) },
  { key := { q := 9, n := 25, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 25 45)) },
  { key := { q := 9, n := 25, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 25 46)) },
  { key := { q := 9, n := 25, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 25 47)) },
  { key := { q := 9, n := 25, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 25 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 25 48)) },
  { key := { q := 9, n := 26, r := 0 }
    lowerValue := 6461081889226673298932241
    upperValue := 6461081889226673298932241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 26 0)) },
  { key := { q := 9, n := 26, r := 1 }
    lowerValue := 30914267412567814827427
    upperValue := 363380462905752544933089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 1))
    upperTrace := (.lengthenFreeN 23 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 26, r := 2 }
    lowerValue := 307538763826296982195
    upperValue := 40375606989528060548121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 2))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 26, r := 3 }
    lowerValue := 4778168085870359759
    upperValue := 4486178554392006727569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 3))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 26, r := 4 }
    lowerValue := 103232934426582083
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 4))
    upperTrace := (.lengthenFreeN 18 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))) },
  { key := { q := 9, n := 26, r := 5 }
    lowerValue := 2912934322657290
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 5))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 26, r := 6 }
    lowerValue := 103259215440188
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 6))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 26, r := 7 }
    lowerValue := 4480396758875
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 7))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 26, r := 8 }
    lowerValue := 233651004912
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 8))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 26, r := 9 }
    lowerValue := 14453587735
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 9))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 26, r := 10 }
    lowerValue := 1050504747
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 10))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 26, r := 11 }
    lowerValue := 89096664
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 11))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 26, r := 12 }
    lowerValue := 8776382
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 12))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 26, r := 13 }
    lowerValue := 1001101
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 13))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 9 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 26, r := 14 }
    lowerValue := 132051
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 14))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 10 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 26, r := 15 }
    lowerValue := 20143
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 15))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 11 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 26, r := 16 }
    lowerValue := 3559
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 16))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 26, r := 17 }
    lowerValue := 730
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 17))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 26, r := 18 }
    lowerValue := 175
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 18))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) },
  { key := { q := 9, n := 26, r := 19 }
    lowerValue := 50
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 19))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19))) },
  { key := { q := 9, n := 26, r := 20 }
    lowerValue := 17
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 20))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 20))) },
  { key := { q := 9, n := 26, r := 21 }
    lowerValue := 9
    upperValue := 729
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 23 22))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 21))) },
  { key := { q := 9, n := 26, r := 22 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 24 23)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 25 22))) },
  { key := { q := 9, n := 26, r := 23 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 25 24))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 26 23)) },
  { key := { q := 9, n := 26, r := 24 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 26 25)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 26 24)) },
  { key := { q := 9, n := 26, r := 25 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 26 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 26 25)) },
  { key := { q := 9, n := 26, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 26 26)) },
  { key := { q := 9, n := 26, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 26 27)) },
  { key := { q := 9, n := 26, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 26 28)) },
  { key := { q := 9, n := 26, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 26 29)) },
  { key := { q := 9, n := 26, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 26 30)) },
  { key := { q := 9, n := 26, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 26 31)) },
  { key := { q := 9, n := 26, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 26 32)) },
  { key := { q := 9, n := 26, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 26 33)) },
  { key := { q := 9, n := 26, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 26 34)) },
  { key := { q := 9, n := 26, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 26 35)) },
  { key := { q := 9, n := 26, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 26 36)) },
  { key := { q := 9, n := 26, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 26 37)) },
  { key := { q := 9, n := 26, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 26 38)) },
  { key := { q := 9, n := 26, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 26 39)) },
  { key := { q := 9, n := 26, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 26 40)) },
  { key := { q := 9, n := 26, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 26 41)) },
  { key := { q := 9, n := 26, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 26 42)) },
  { key := { q := 9, n := 26, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 26 43)) },
  { key := { q := 9, n := 26, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 26 44)) },
  { key := { q := 9, n := 26, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 26 45)) },
  { key := { q := 9, n := 26, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 26 46)) },
  { key := { q := 9, n := 26, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 26 47)) },
  { key := { q := 9, n := 26, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 26 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 26 48)) },
  { key := { q := 9, n := 27, r := 0 }
    lowerValue := 58149737003040059690390169
    upperValue := 58149737003040059690390169
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 27 0)) },
  { key := { q := 9, n := 27, r := 1 }
    lowerValue := 267971138262857417928066
    upperValue := 3270424166151772904397801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 1))
    upperTrace := (.lengthenFreeN 24 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 27, r := 2 }
    lowerValue := 2563808341917907486019
    upperValue := 363380462905752544933089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 2))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 27, r := 3 }
    lowerValue := 38249334828916535621
    upperValue := 40375606989528060548121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 3))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 27, r := 4 }
    lowerValue := 792175912223842648
    upperValue := 984770902183611232881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 4))
    upperTrace := (.lengthenFreeN 19 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))) },
  { key := { q := 9, n := 27, r := 5 }
    lowerValue := 21388285336204613
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 5))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 27, r := 6 }
    lowerValue := 724011765057333
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 6))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 27, r := 7 }
    lowerValue := 29933204614751
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 7))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 27, r := 8 }
    lowerValue := 1483815630343
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 8))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 27, r := 9 }
    lowerValue := 87018676146
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 9))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 27, r := 10 }
    lowerValue := 5978401450
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 10))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 27, r := 11 }
    lowerValue := 477728518
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 11))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 27, r := 12 }
    lowerValue := 44175618
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 12))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 27, r := 13 }
    lowerValue := 4710961
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 13))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 9 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 27, r := 14 }
    lowerValue := 578255
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 14))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 10 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 27, r := 15 }
    lowerValue := 81648
    upperValue := 31381059609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 15))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 11 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 27, r := 16 }
    lowerValue := 13271
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 16))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 27, r := 17 }
    lowerValue := 2488
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 17))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 27, r := 18 }
    lowerValue := 540
    upperValue := 4782969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 18))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) },
  { key := { q := 9, n := 27, r := 19 }
    lowerValue := 136
    upperValue := 531441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 19))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 22 19))) },
  { key := { q := 9, n := 27, r := 20 }
    lowerValue := 41
    upperValue := 59049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 20))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 23 20))) },
  { key := { q := 9, n := 27, r := 21 }
    lowerValue := 14
    upperValue := 6561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 21))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 24 21))) },
  { key := { q := 9, n := 27, r := 22 }
    lowerValue := 9
    upperValue := 729
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 24 23))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 25 22))) },
  { key := { q := 9, n := 27, r := 23 }
    lowerValue := 9
    upperValue := 81
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 25 24)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 26 23))) },
  { key := { q := 9, n := 27, r := 24 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.lengthBack (by decide : 0 < 9) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 26 25))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 27 24)) },
  { key := { q := 9, n := 27, r := 25 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 27 26)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 27 25)) },
  { key := { q := 9, n := 27, r := 26 }
    lowerValue := 9
    upperValue := 9
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 9 27 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 27 26)) },
  { key := { q := 9, n := 27, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 27 27)) },
  { key := { q := 9, n := 27, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 27 28)) },
  { key := { q := 9, n := 27, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 27 29)) },
  { key := { q := 9, n := 27, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 27 30)) },
  { key := { q := 9, n := 27, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 27 31)) },
  { key := { q := 9, n := 27, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 27 32)) },
  { key := { q := 9, n := 27, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 27 33)) },
  { key := { q := 9, n := 27, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 27 34)) },
  { key := { q := 9, n := 27, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 27 35)) },
  { key := { q := 9, n := 27, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 27 36)) },
  { key := { q := 9, n := 27, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 27 37)) },
  { key := { q := 9, n := 27, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 27 38)) },
  { key := { q := 9, n := 27, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 27 39)) },
  { key := { q := 9, n := 27, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 27 40)) },
  { key := { q := 9, n := 27, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 27 41)) },
  { key := { q := 9, n := 27, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 27 42)) },
  { key := { q := 9, n := 27, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 27 43)) },
  { key := { q := 9, n := 27, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 27 44)) },
  { key := { q := 9, n := 27, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 27 45)) },
  { key := { q := 9, n := 27, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 27 46)) },
  { key := { q := 9, n := 27, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 27 47)) },
  { key := { q := 9, n := 27, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 27 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 9 27 48)) },
  { key := { q := 9, n := 28, r := 0 }
    lowerValue := 523347633027360537213511521
    upperValue := 523347633027360537213511521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 9 28 0)) },
  { key := { q := 9, n := 28, r := 1 }
    lowerValue := 2325989480121602387615607
    upperValue := 29433817495365956139580209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 1))
    upperTrace := (.lengthenFreeN 25 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))) },
  { key := { q := 9, n := 28, r := 2 }
    lowerValue := 21433740141186899996458
    upperValue := 3270424166151772904397801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 2))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 28, r := 3 }
    lowerValue := 307538763826296982195
    upperValue := 363380462905752544933089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 3))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 9 3 1))))) },
  { key := { q := 9, n := 28, r := 4 }
    lowerValue := 6116208594373216175
    upperValue := 8862938119652501095929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 4))
    upperTrace := (.lengthenFreeN 20 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))) },
  { key := { q := 9, n := 28, r := 5 }
    lowerValue := 158302064368273617
    upperValue := 984770902183611232881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 5))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 1 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 28, r := 6 }
    lowerValue := 5127534447506478
    upperValue := 109418989131512359209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 6))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 2 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 28, r := 7 }
    lowerValue := 202441624850403
    upperValue := 12157665459056928801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 7))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 3 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 28, r := 8 }
    lowerValue := 9562261911500
    upperValue := 1350851717672992089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 8))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 4 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 28, r := 9 }
    lowerValue := 533071414039
    upperValue := 150094635296999121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 9))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 5 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 28, r := 10 }
    lowerValue := 34721809431
    upperValue := 16677181699666569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 10))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 6 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 28, r := 11 }
    lowerValue := 2622844244
    upperValue := 1853020188851841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 11))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 7 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 28, r := 12 }
    lowerValue := 228525958
    upperValue := 205891132094649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 12))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 8 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 28, r := 13 }
    lowerValue := 22879439
    upperValue := 22876792454961
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 13))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 9 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 28, r := 14 }
    lowerValue := 2625813
    upperValue := 2541865828329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 14))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 10 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 28, r := 15 }
    lowerValue := 345060
    upperValue := 282429536481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 15))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 11 (by decide : 0 < 9) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4))))) },
  { key := { q := 9, n := 28, r := 16 }
    lowerValue := 51922
    upperValue := 3486784401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 16))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 19 16))) },
  { key := { q := 9, n := 28, r := 17 }
    lowerValue := 8957
    upperValue := 387420489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 17))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 20 17))) },
  { key := { q := 9, n := 28, r := 18 }
    lowerValue := 1776
    upperValue := 43046721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 9 28 18))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 9 21 18))) }]

end CoveringCodes.Database
