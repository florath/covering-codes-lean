import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 102. Do not edit manually.

def precomputedTable_chunk_102 : Array AnyBoundEntry := #[
  { key := { q := 10, n := 30, r := 20 }
    lowerValue := 2201
    upperValue := 100000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 30 20))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 23 20))) },
  { key := { q := 10, n := 30, r := 21 }
    lowerValue := 496
    upperValue := 10000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 30 21))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 24 21))) },
  { key := { q := 10, n := 30, r := 22 }
    lowerValue := 129
    upperValue := 1000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 30 22))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 25 22))) },
  { key := { q := 10, n := 30, r := 23 }
    lowerValue := 39
    upperValue := 100000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 30 23))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 26 23))) },
  { key := { q := 10, n := 30, r := 24 }
    lowerValue := 14
    upperValue := 10000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 30 24))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 27 24))) },
  { key := { q := 10, n := 30, r := 25 }
    lowerValue := 10
    upperValue := 1000
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 27 26))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 28 25))) },
  { key := { q := 10, n := 30, r := 26 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 28 27)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 29 26))) },
  { key := { q := 10, n := 30, r := 27 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 29 28))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 30 27)) },
  { key := { q := 10, n := 30, r := 28 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 30 29)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 30 28)) },
  { key := { q := 10, n := 30, r := 29 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 30 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 30 29)) },
  { key := { q := 10, n := 30, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 30 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 30 30)) },
  { key := { q := 10, n := 30, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 30 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 30 31)) },
  { key := { q := 10, n := 30, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 30 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 30 32)) },
  { key := { q := 10, n := 30, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 30 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 30 33)) },
  { key := { q := 10, n := 30, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 30 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 30 34)) },
  { key := { q := 10, n := 30, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 30 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 30 35)) },
  { key := { q := 10, n := 30, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 30 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 30 36)) },
  { key := { q := 10, n := 30, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 30 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 30 37)) },
  { key := { q := 10, n := 30, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 30 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 30 38)) },
  { key := { q := 10, n := 30, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 30 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 30 39)) },
  { key := { q := 10, n := 30, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 30 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 30 40)) },
  { key := { q := 10, n := 30, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 30 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 30 41)) },
  { key := { q := 10, n := 30, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 30 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 30 42)) },
  { key := { q := 10, n := 30, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 30 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 30 43)) },
  { key := { q := 10, n := 30, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 30 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 30 44)) },
  { key := { q := 10, n := 30, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 30 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 30 45)) },
  { key := { q := 10, n := 30, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 30 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 30 46)) },
  { key := { q := 10, n := 30, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 30 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 30 47)) },
  { key := { q := 10, n := 30, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 30 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 30 48)) },
  { key := { q := 10, n := 31, r := 0 }
    lowerValue := 10000000000000000000000000000000
    upperValue := 10000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 31 0)) },
  { key := { q := 10, n := 31, r := 1 }
    lowerValue := 35714285714285714285714285715
    upperValue := 400000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 1))
    upperTrace := (.lengthenFreeN 24 (@UpperTrace.alphabetExpand 5 10 2 7 1 3125 (by decide : 0 < 5) (by decide : 0 < 2) (by decide : 10 ≤ 2 * 5) (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 10, n := 31, r := 2 }
    lowerValue := 263539333245486888918171038
    upperValue := 40000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 2))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 5 10 2 7 1 3125 (by decide : 0 < 5) (by decide : 0 < 2) (by decide : 10 ≤ 2 * 5) (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))))) },
  { key := { q := 10, n := 31, r := 3 }
    lowerValue := 3016773259321829371304453
    upperValue := 4000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 3))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 5 10 2 7 1 3125 (by decide : 0 < 5) (by decide : 0 < 2) (by decide : 10 ≤ 2 * 5) (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))))) },
  { key := { q := 10, n := 31, r := 4 }
    lowerValue := 47674289634610657067799
    upperValue := 115600000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 4))
    upperTrace := (.lengthenFreeN 23 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) },
  { key := { q := 10, n := 31, r := 5 }
    lowerValue := 976292560446136583175
    upperValue := 11560000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 5))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 31, r := 6 }
    lowerValue := 24904569287643476682
    upperValue := 1156000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 6))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 31, r := 7 }
    lowerValue := 770492691026725616
    upperValue := 115600000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 7))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 31, r := 8 }
    lowerValue := 28363769105510823
    upperValue := 11560000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 8))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 31, r := 9 }
    lowerValue := 1225041529520243
    upperValue := 1000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 9))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 31, r := 10 }
    lowerValue := 61421505301028
    upperValue := 100000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 10))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 31, r := 11 }
    lowerValue := 3546204432112
    upperValue := 10000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 11))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 31, r := 12 }
    lowerValue := 234320881834
    upperValue := 1000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 12))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 31, r := 13 }
    lowerValue := 17638421263
    upperValue := 100000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 13))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 31, r := 14 }
    lowerValue := 1507506686
    upperValue := 10000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 14))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) },
  { key := { q := 10, n := 31, r := 15 }
    lowerValue := 145959767
    upperValue := 1000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 15))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 15))) },
  { key := { q := 10, n := 31, r := 16 }
    lowerValue := 15989279
    upperValue := 100000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 16))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 18 16))) },
  { key := { q := 10, n := 31, r := 17 }
    lowerValue := 1981016
    upperValue := 10000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 17))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 19 17))) },
  { key := { q := 10, n := 31, r := 18 }
    lowerValue := 277737
    upperValue := 100000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 18))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 21 18))) },
  { key := { q := 10, n := 31, r := 19 }
    lowerValue := 44124
    upperValue := 10000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 19))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 22 19))) },
  { key := { q := 10, n := 31, r := 20 }
    lowerValue := 7962
    upperValue := 1000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 20))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 23 20))) },
  { key := { q := 10, n := 31, r := 21 }
    lowerValue := 1637
    upperValue := 100000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 21))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 24 21))) },
  { key := { q := 10, n := 31, r := 22 }
    lowerValue := 386
    upperValue := 10000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 22))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 25 22))) },
  { key := { q := 10, n := 31, r := 23 }
    lowerValue := 105
    upperValue := 1000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 23))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 26 23))) },
  { key := { q := 10, n := 31, r := 24 }
    lowerValue := 33
    upperValue := 100000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 24))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 27 24))) },
  { key := { q := 10, n := 31, r := 25 }
    lowerValue := 12
    upperValue := 10000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 25))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 28 25))) },
  { key := { q := 10, n := 31, r := 26 }
    lowerValue := 10
    upperValue := 1000
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 28 27))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 29 26))) },
  { key := { q := 10, n := 31, r := 27 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 29 28)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 31 27)) },
  { key := { q := 10, n := 31, r := 28 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 30 29))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 31 28)) },
  { key := { q := 10, n := 31, r := 29 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 31 30)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 31 29)) },
  { key := { q := 10, n := 31, r := 30 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 31 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 31 30)) },
  { key := { q := 10, n := 31, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 31 31)) },
  { key := { q := 10, n := 31, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 31 32)) },
  { key := { q := 10, n := 31, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 31 33)) },
  { key := { q := 10, n := 31, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 31 34)) },
  { key := { q := 10, n := 31, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 31 35)) },
  { key := { q := 10, n := 31, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 31 36)) },
  { key := { q := 10, n := 31, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 31 37)) },
  { key := { q := 10, n := 31, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 31 38)) },
  { key := { q := 10, n := 31, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 31 39)) },
  { key := { q := 10, n := 31, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 31 40)) },
  { key := { q := 10, n := 31, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 31 41)) },
  { key := { q := 10, n := 31, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 31 42)) },
  { key := { q := 10, n := 31, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 31 43)) },
  { key := { q := 10, n := 31, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 31 44)) },
  { key := { q := 10, n := 31, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 31 45)) },
  { key := { q := 10, n := 31, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 31 46)) },
  { key := { q := 10, n := 31, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 31 47)) },
  { key := { q := 10, n := 31, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 31 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 31 48)) },
  { key := { q := 10, n := 32, r := 0 }
    lowerValue := 100000000000000000000000000000000
    upperValue := 100000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 32 0)) },
  { key := { q := 10, n := 32, r := 1 }
    lowerValue := 346020761245674740484429065744
    upperValue := 4000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 1))
    upperTrace := (.lengthenFreeN 25 (@UpperTrace.alphabetExpand 5 10 2 7 1 3125 (by decide : 0 < 5) (by decide : 0 < 2) (by decide : 10 ≤ 2 * 5) (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 10, n := 32, r := 2 }
    lowerValue := 2471271469170888422093166935
    upperValue := 400000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 2))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 5 10 2 7 1 3125 (by decide : 0 < 5) (by decide : 0 < 2) (by decide : 10 ≤ 2 * 5) (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))))) },
  { key := { q := 10, n := 32, r := 3 }
    lowerValue := 27350015931384280031343119
    upperValue := 40000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 3))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 5 10 2 7 1 3125 (by decide : 0 < 5) (by decide : 0 < 2) (by decide : 10 ≤ 2 * 5) (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))))) },
  { key := { q := 10, n := 32, r := 4 }
    lowerValue := 417379925482240244177274
    upperValue := 1156000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 4))
    upperTrace := (.lengthenFreeN 24 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) },
  { key := { q := 10, n := 32, r := 5 }
    lowerValue := 8243587261184572317132
    upperValue := 115600000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 5))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 32, r := 6 }
    lowerValue := 202544680643385046579
    upperValue := 11560000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 6))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 32, r := 7 }
    lowerValue := 6026818209040084856
    upperValue := 1156000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 7))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 32, r := 8 }
    lowerValue := 213051161046807991
    upperValue := 115600000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 8))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 32, r := 9 }
    lowerValue := 8821414368319708
    upperValue := 10000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 9))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 32, r := 10 }
    lowerValue := 423233267039955
    upperValue := 1000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 10))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 32, r := 11 }
    lowerValue := 23336127022040
    upperValue := 100000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 11))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 32, r := 12 }
    lowerValue := 1469383160400
    upperValue := 10000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 12))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 32, r := 13 }
    lowerValue := 105148838764
    upperValue := 1000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 13))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 32, r := 14 }
    lowerValue := 8520814523
    upperValue := 100000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 14))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) },
  { key := { q := 10, n := 32, r := 15 }
    lowerValue := 779950539
    upperValue := 10000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 15))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 15))) },
  { key := { q := 10, n := 32, r := 16 }
    lowerValue := 80513525
    upperValue := 1000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 16))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 18 16))) },
  { key := { q := 10, n := 32, r := 17 }
    lowerValue := 9366201
    upperValue := 100000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 17))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 19 17))) },
  { key := { q := 10, n := 32, r := 18 }
    lowerValue := 1227949
    upperValue := 1000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 18))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 21 18))) },
  { key := { q := 10, n := 32, r := 19 }
    lowerValue := 181592
    upperValue := 100000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 19))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 22 19))) },
  { key := { q := 10, n := 32, r := 20 }
    lowerValue := 30342
    upperValue := 10000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 20))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 23 20))) },
  { key := { q := 10, n := 32, r := 21 }
    lowerValue := 5743
    upperValue := 1000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 21))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 24 21))) },
  { key := { q := 10, n := 32, r := 22 }
    lowerValue := 1236
    upperValue := 100000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 22))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 25 22))) },
  { key := { q := 10, n := 32, r := 23 }
    lowerValue := 304
    upperValue := 10000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 23))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 26 23))) },
  { key := { q := 10, n := 32, r := 24 }
    lowerValue := 86
    upperValue := 1000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 24))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 27 24))) },
  { key := { q := 10, n := 32, r := 25 }
    lowerValue := 28
    upperValue := 100000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 25))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 28 25))) },
  { key := { q := 10, n := 32, r := 26 }
    lowerValue := 11
    upperValue := 10000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 26))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 29 26))) },
  { key := { q := 10, n := 32, r := 27 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 29 28))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 31 27))) },
  { key := { q := 10, n := 32, r := 28 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 30 29)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 32 28)) },
  { key := { q := 10, n := 32, r := 29 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 31 30))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 32 29)) },
  { key := { q := 10, n := 32, r := 30 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 32 31)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 32 30)) },
  { key := { q := 10, n := 32, r := 31 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 32 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 32 31)) },
  { key := { q := 10, n := 32, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 32 32)) },
  { key := { q := 10, n := 32, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 32 33)) },
  { key := { q := 10, n := 32, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 32 34)) },
  { key := { q := 10, n := 32, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 32 35)) },
  { key := { q := 10, n := 32, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 32 36)) },
  { key := { q := 10, n := 32, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 32 37)) },
  { key := { q := 10, n := 32, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 32 38)) },
  { key := { q := 10, n := 32, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 32 39)) },
  { key := { q := 10, n := 32, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 32 40)) },
  { key := { q := 10, n := 32, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 32 41)) },
  { key := { q := 10, n := 32, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 32 42)) },
  { key := { q := 10, n := 32, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 32 43)) },
  { key := { q := 10, n := 32, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 32 44)) },
  { key := { q := 10, n := 32, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 32 45)) },
  { key := { q := 10, n := 32, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 32 46)) },
  { key := { q := 10, n := 32, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 32 47)) },
  { key := { q := 10, n := 32, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 32 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 32 48)) },
  { key := { q := 10, n := 33, r := 0 }
    lowerValue := 1000000000000000000000000000000000
    upperValue := 1000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 33 0)) },
  { key := { q := 10, n := 33, r := 1 }
    lowerValue := 3355704697986577181208053691276
    upperValue := 40000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 1))
    upperTrace := (.lengthenFreeN 26 (@UpperTrace.alphabetExpand 5 10 2 7 1 3125 (by decide : 0 < 5) (by decide : 0 < 2) (by decide : 10 ≤ 2 * 5) (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 10, n := 33, r := 2 }
    lowerValue := 23220173686899178005851483770
    upperValue := 4000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 2))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 5 10 2 7 1 3125 (by decide : 0 < 5) (by decide : 0 < 2) (by decide : 10 ≤ 2 * 5) (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))))) },
  { key := { q := 10, n := 33, r := 3 }
    lowerValue := 248725901569211713000156698
    upperValue := 400000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 3))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 5 10 2 7 1 3125 (by decide : 0 < 5) (by decide : 0 < 2) (by decide : 10 ≤ 2 * 5) (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))))) },
  { key := { q := 10, n := 33, r := 4 }
    lowerValue := 3669770423932980303865065
    upperValue := 11560000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 4))
    upperTrace := (.lengthenFreeN 25 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) },
  { key := { q := 10, n := 33, r := 5 }
    lowerValue := 69993945161174922434324
    upperValue := 1156000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 5))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 33, r := 6 }
    lowerValue := 1658666378104876455944
    upperValue := 115600000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 6))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 33, r := 7 }
    lowerValue := 47537628912233433067
    upperValue := 11560000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 7))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 33, r := 8 }
    lowerValue := 1616283456379565599
    upperValue := 1156000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 8))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 33, r := 9 }
    lowerValue := 64265749266333103
    upperValue := 100000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 9))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 33, r := 10 }
    lowerValue := 2955949449490013
    upperValue := 10000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 10))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 33, r := 11 }
    lowerValue := 155965165561407
    upperValue := 1000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 11))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 33, r := 12 }
    lowerValue := 9378876464173
    upperValue := 100000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 12))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 33, r := 13 }
    lowerValue := 639576439887
    upperValue := 10000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 13))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 33, r := 14 }
    lowerValue := 49272581742
    upperValue := 1000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 14))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) },
  { key := { q := 10, n := 33, r := 15 }
    lowerValue := 4276483858
    upperValue := 100000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 15))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 15))) },
  { key := { q := 10, n := 33, r := 16 }
    lowerValue := 417371559
    upperValue := 10000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 16))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 18 16))) },
  { key := { q := 10, n := 33, r := 17 }
    lowerValue := 45756258
    upperValue := 1000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 17))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 19 17))) },
  { key := { q := 10, n := 33, r := 18 }
    lowerValue := 5632952
    upperValue := 10000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 18))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 21 18))) },
  { key := { q := 10, n := 33, r := 19 }
    lowerValue := 779049
    upperValue := 1000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 19))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 22 19))) },
  { key := { q := 10, n := 33, r := 20 }
    lowerValue := 121184
    upperValue := 100000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 20))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 23 20))) },
  { key := { q := 10, n := 33, r := 21 }
    lowerValue := 21243
    upperValue := 10000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 21))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 24 21))) },
  { key := { q := 10, n := 33, r := 22 }
    lowerValue := 4208
    upperValue := 1000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 22))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 25 22))) },
  { key := { q := 10, n := 33, r := 23 }
    lowerValue := 946
    upperValue := 100000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 23))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 26 23))) },
  { key := { q := 10, n := 33, r := 24 }
    lowerValue := 242
    upperValue := 10000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 24))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 27 24))) },
  { key := { q := 10, n := 33, r := 25 }
    lowerValue := 71
    upperValue := 1000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 25))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 28 25))) },
  { key := { q := 10, n := 33, r := 26 }
    lowerValue := 24
    upperValue := 100000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 26))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 29 26))) },
  { key := { q := 10, n := 33, r := 27 }
    lowerValue := 10
    upperValue := 1000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 27))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 31 27))) },
  { key := { q := 10, n := 33, r := 28 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 30 29))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 32 28))) },
  { key := { q := 10, n := 33, r := 29 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 31 30)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 33 29)) },
  { key := { q := 10, n := 33, r := 30 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 32 31))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 33 30)) },
  { key := { q := 10, n := 33, r := 31 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 33 32)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 33 31)) },
  { key := { q := 10, n := 33, r := 32 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 33 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 33 32)) },
  { key := { q := 10, n := 33, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 33 33)) },
  { key := { q := 10, n := 33, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 33 34)) },
  { key := { q := 10, n := 33, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 33 35)) },
  { key := { q := 10, n := 33, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 33 36)) },
  { key := { q := 10, n := 33, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 33 37)) },
  { key := { q := 10, n := 33, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 33 38)) },
  { key := { q := 10, n := 33, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 33 39)) },
  { key := { q := 10, n := 33, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 33 40)) },
  { key := { q := 10, n := 33, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 33 41)) },
  { key := { q := 10, n := 33, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 33 42)) },
  { key := { q := 10, n := 33, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 33 43)) },
  { key := { q := 10, n := 33, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 33 44)) },
  { key := { q := 10, n := 33, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 33 45)) },
  { key := { q := 10, n := 33, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 33 46)) },
  { key := { q := 10, n := 33, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 33 47)) },
  { key := { q := 10, n := 33, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 33 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 33 48)) },
  { key := { q := 10, n := 34, r := 0 }
    lowerValue := 10000000000000000000000000000000000
    upperValue := 10000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 34 0)) },
  { key := { q := 10, n := 34, r := 1 }
    lowerValue := 32573289902280130293159609120522
    upperValue := 400000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 1))
    upperTrace := (.lengthenFreeN 27 (@UpperTrace.alphabetExpand 5 10 2 7 1 3125 (by decide : 0 < 5) (by decide : 0 < 2) (by decide : 10 ≤ 2 * 5) (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 10, n := 34, r := 2 }
    lowerValue := 218588790766809478009967648859
    upperValue := 40000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 2))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 5 10 2 7 1 3125 (by decide : 0 < 5) (by decide : 0 < 2) (by decide : 10 ≤ 2 * 5) (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))))) },
  { key := { q := 10, n := 34, r := 3 }
    lowerValue := 2268559310575751278786883372
    upperValue := 4000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 3))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 5 10 2 7 1 3125 (by decide : 0 < 5) (by decide : 0 < 2) (by decide : 10 ≤ 2 * 5) (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))))) },
  { key := { q := 10, n := 34, r := 4 }
    lowerValue := 32395901762926661315295641
    upperValue := 115600000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 4))
    upperTrace := (.lengthenFreeN 26 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) },
  { key := { q := 10, n := 34, r := 5 }
    lowerValue := 597392278852136667789660
    upperValue := 11560000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 5))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 34, r := 6 }
    lowerValue := 13670978313066810134772
    upperValue := 1156000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 6))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 34, r := 7 }
    lowerValue := 377900198291516830369
    upperValue := 115600000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 7))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 34, r := 8 }
    lowerValue := 12375823139169418000
    upperValue := 11560000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 8))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 34, r := 9 }
    lowerValue := 473289475187883898
    upperValue := 1000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 9))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 34, r := 10 }
    lowerValue := 20905445299615451
    upperValue := 100000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 10))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 34, r := 11 }
    lowerValue := 1057485422347492
    upperValue := 10000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 11))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 34, r := 12 }
    lowerValue := 60853986208702
    upperValue := 1000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 12))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 34, r := 13 }
    lowerValue := 3963318722263
    upperValue := 100000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 13))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 34, r := 14 }
    lowerValue := 290976167371
    upperValue := 10000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 14))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) },
  { key := { q := 10, n := 34, r := 15 }
    lowerValue := 24009930722
    upperValue := 1000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 15))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 15))) },
  { key := { q := 10, n := 34, r := 16 }
    lowerValue := 2221985529
    upperValue := 100000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 16))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 18 16))) },
  { key := { q := 10, n := 34, r := 17 }
    lowerValue := 230316813
    upperValue := 10000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 17))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 19 17))) },
  { key := { q := 10, n := 34, r := 18 }
    lowerValue := 26722161
    upperValue := 100000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 18))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 21 18))) },
  { key := { q := 10, n := 34, r := 19 }
    lowerValue := 3470586
    upperValue := 10000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 19))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 22 19))) },
  { key := { q := 10, n := 34, r := 20 }
    lowerValue := 504935
    upperValue := 1000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 20))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 23 20))) },
  { key := { q := 10, n := 34, r := 21 }
    lowerValue := 82411
    upperValue := 100000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 21))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 24 21))) },
  { key := { q := 10, n := 34, r := 22 }
    lowerValue := 15121
    upperValue := 10000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 22))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 25 22))) },
  { key := { q := 10, n := 34, r := 23 }
    lowerValue := 3128
    upperValue := 1000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 23))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 26 23))) },
  { key := { q := 10, n := 34, r := 24 }
    lowerValue := 733
    upperValue := 100000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 24))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 27 24))) },
  { key := { q := 10, n := 34, r := 25 }
    lowerValue := 195
    upperValue := 10000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 25))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 28 25))) },
  { key := { q := 10, n := 34, r := 26 }
    lowerValue := 60
    upperValue := 1000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 26))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 29 26))) },
  { key := { q := 10, n := 34, r := 27 }
    lowerValue := 21
    upperValue := 10000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 27))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 31 27))) },
  { key := { q := 10, n := 34, r := 28 }
    lowerValue := 10
    upperValue := 1000
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 30 29)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 32 28))) },
  { key := { q := 10, n := 34, r := 29 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 31 30))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 33 29))) },
  { key := { q := 10, n := 34, r := 30 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 32 31)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 34 30)) },
  { key := { q := 10, n := 34, r := 31 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 33 32))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 34 31)) },
  { key := { q := 10, n := 34, r := 32 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 34 33)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 34 32)) },
  { key := { q := 10, n := 34, r := 33 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 34 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 34 33)) },
  { key := { q := 10, n := 34, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 34 34)) },
  { key := { q := 10, n := 34, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 34 35)) },
  { key := { q := 10, n := 34, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 34 36)) },
  { key := { q := 10, n := 34, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 34 37)) },
  { key := { q := 10, n := 34, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 34 38)) },
  { key := { q := 10, n := 34, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 34 39)) },
  { key := { q := 10, n := 34, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 34 40)) },
  { key := { q := 10, n := 34, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 34 41)) },
  { key := { q := 10, n := 34, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 34 42)) },
  { key := { q := 10, n := 34, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 34 43)) },
  { key := { q := 10, n := 34, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 34 44)) },
  { key := { q := 10, n := 34, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 34 45)) },
  { key := { q := 10, n := 34, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 34 46)) },
  { key := { q := 10, n := 34, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 34 47)) },
  { key := { q := 10, n := 34, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 34 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 34 48)) },
  { key := { q := 10, n := 35, r := 0 }
    lowerValue := 100000000000000000000000000000000000
    upperValue := 100000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 35 0)) },
  { key := { q := 10, n := 35, r := 1 }
    lowerValue := 316455696202531645569620253164557
    upperValue := 4000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 1))
    upperTrace := (.lengthenFreeN 28 (@UpperTrace.alphabetExpand 5 10 2 7 1 3125 (by decide : 0 < 5) (by decide : 0 < 2) (by decide : 10 ≤ 2 * 5) (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 10, n := 35, r := 2 }
    lowerValue := 2061388138772649502174764486406
    upperValue := 400000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 2))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 5 10 2 7 1 3125 (by decide : 0 < 5) (by decide : 0 < 2) (by decide : 10 ≤ 2 * 5) (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))))) },
  { key := { q := 10, n := 35, r := 3 }
    lowerValue := 20747679994423023617499091252
    upperValue := 40000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 3))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 5 10 2 7 1 3125 (by decide : 0 < 5) (by decide : 0 < 2) (by decide : 10 ≤ 2 * 5) (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))))) },
  { key := { q := 10, n := 35, r := 4 }
    lowerValue := 287064492735683737787300460
    upperValue := 1156000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 4))
    upperTrace := (.lengthenFreeN 27 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) },
  { key := { q := 10, n := 35, r := 5 }
    lowerValue := 5123594223416071413194059
    upperValue := 115600000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 5))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 35, r := 6 }
    lowerValue := 113361806197760213887838
    upperValue := 11560000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 6))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 35, r := 7 }
    lowerValue := 3026148767920714288901
    upperValue := 1156000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 7))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 35, r := 8 }
    lowerValue := 95585372456764251468
    upperValue := 115600000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 8))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 35, r := 9 }
    lowerValue := 3521007510074771740
    upperValue := 10000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 9))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 35, r := 10 }
    lowerValue := 149588018998781254
    upperValue := 1000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 10))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 35, r := 11 }
    lowerValue := 7266653104088225
    upperValue := 100000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 11))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 35, r := 12 }
    lowerValue := 400905519420673
    upperValue := 10000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 12))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 35, r := 13 }
    lowerValue := 24986957223397
    upperValue := 1000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 13))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 35, r := 14 }
    lowerValue := 1752070845160
    upperValue := 100000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 14))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) },
  { key := { q := 10, n := 35, r := 15 }
    lowerValue := 137779379898
    upperValue := 10000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 15))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 15))) },
  { key := { q := 10, n := 35, r := 16 }
    lowerValue := 12122786877
    upperValue := 1000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 16))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 18 16))) },
  { key := { q := 10, n := 35, r := 17 }
    lowerValue := 1191571749
    upperValue := 100000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 17))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 19 17))) },
  { key := { q := 10, n := 35, r := 18 }
    lowerValue := 130721120
    upperValue := 1000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 18))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 21 18))) },
  { key := { q := 10, n := 35, r := 19 }
    lowerValue := 16001666
    upperValue := 100000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 19))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 22 19))) },
  { key := { q := 10, n := 35, r := 20 }
    lowerValue := 2186426
    upperValue := 10000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 20))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 23 20))) },
  { key := { q := 10, n := 35, r := 21 }
    lowerValue := 333796
    upperValue := 1000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 21))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 24 21))) },
  { key := { q := 10, n := 35, r := 22 }
    lowerValue := 57031
    upperValue := 100000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 22))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 25 22))) },
  { key := { q := 10, n := 35, r := 23 }
    lowerValue := 10930
    upperValue := 10000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 23))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 26 23))) },
  { key := { q := 10, n := 35, r := 24 }
    lowerValue := 2357
    upperValue := 1000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 35 24))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 27 24))) }]

end CoveringCodes.Database
