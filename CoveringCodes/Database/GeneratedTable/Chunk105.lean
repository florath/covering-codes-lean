import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 105. Do not edit manually.

def precomputedTable_chunk_105 : Array AnyBoundEntry := #[
  { key := { q := 10, n := 45, r := 35 }
    lowerValue := 84
    upperValue := 10000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 35))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 39 35))) },
  { key := { q := 10, n := 45, r := 36 }
    lowerValue := 32
    upperValue := 100000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 36))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 41 36))) },
  { key := { q := 10, n := 45, r := 37 }
    lowerValue := 14
    upperValue := 10000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 37))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 42 37))) },
  { key := { q := 10, n := 45, r := 38 }
    lowerValue := 10
    upperValue := 1000
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 40 39))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 43 38))) },
  { key := { q := 10, n := 45, r := 39 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 41 40)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 44 39))) },
  { key := { q := 10, n := 45, r := 40 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 42 41))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 45 40)) },
  { key := { q := 10, n := 45, r := 41 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 43 42)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 45 41)) },
  { key := { q := 10, n := 45, r := 42 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 44 43))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 45 42)) },
  { key := { q := 10, n := 45, r := 43 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 45 44)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 45 43)) },
  { key := { q := 10, n := 45, r := 44 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 45 44))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 45 44)) },
  { key := { q := 10, n := 45, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 45 45)) },
  { key := { q := 10, n := 45, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 45 46)) },
  { key := { q := 10, n := 45, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 45 47)) },
  { key := { q := 10, n := 45, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 45 48)) },
  { key := { q := 10, n := 46, r := 0 }
    lowerValue := 10000000000000000000000000000000000000000000000
    upperValue := 10000000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 46 0)) },
  { key := { q := 10, n := 46, r := 1 }
    lowerValue := 24096385542168674698795180722891566265060241
    upperValue := 400000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 1))
    upperTrace := (.lengthenFreeN 39 (@UpperTrace.alphabetExpand 5 10 2 7 1 3125 (by decide : 0 < 5) (by decide : 0 < 2) (by decide : 10 ≤ 2 * 5) (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 10, n := 46, r := 2 }
    lowerValue := 118694362017804154302670623145400593471811
    upperValue := 40000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 2))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 5 10 2 7 1 3125 (by decide : 0 < 5) (by decide : 0 < 2) (by decide : 10 ≤ 2 * 5) (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))))) },
  { key := { q := 10, n := 46, r := 3 }
    lowerValue := 896823183238015976008186202016596609830
    upperValue := 4000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 3))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 5 10 2 7 1 3125 (by decide : 0 < 5) (by decide : 0 < 2) (by decide : 10 ≤ 2 * 5) (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))))) },
  { key := { q := 10, n := 46, r := 4 }
    lowerValue := 9243790845163078519010301885986150093
    upperValue := 115600000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 4))
    upperTrace := (.lengthenFreeN 38 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) },
  { key := { q := 10, n := 46, r := 5 }
    lowerValue := 121916339246050042409134429049493642
    upperValue := 11560000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 5))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 46, r := 6 }
    lowerValue := 1976309926905592800446470139248786
    upperValue := 1156000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 6))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 46, r := 7 }
    lowerValue := 38304369696777005623804887429915
    upperValue := 115600000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 7))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 46, r := 8 }
    lowerValue := 870066912549279850459102840297
    upperValue := 11560000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 8))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 46, r := 9 }
    lowerValue := 22814338037349651184027284346
    upperValue := 1000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 9))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 46, r := 10 }
    lowerValue := 682515779218323115125251425
    upperValue := 100000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 10))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 46, r := 11 }
    lowerValue := 23078720272956140618125729
    upperValue := 10000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 11))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 46, r := 12 }
    lowerValue := 875441539010704112149231
    upperValue := 1000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 12))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 46, r := 13 }
    lowerValue := 37023473854875954427885
    upperValue := 100000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 13))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 46, r := 14 }
    lowerValue := 1736796271020064330115
    upperValue := 10000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 14))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) },
  { key := { q := 10, n := 46, r := 15 }
    lowerValue := 89992638241168064835
    upperValue := 1000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 15))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 15))) },
  { key := { q := 10, n := 46, r := 16 }
    lowerValue := 5132473453844943705
    upperValue := 100000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 16))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 18 16))) },
  { key := { q := 10, n := 46, r := 17 }
    lowerValue := 321250458921231565
    upperValue := 10000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 17))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 19 17))) },
  { key := { q := 10, n := 46, r := 18 }
    lowerValue := 22014886147323906
    upperValue := 100000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 18))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 21 18))) },
  { key := { q := 10, n := 46, r := 19 }
    lowerValue := 1648530264809596
    upperValue := 10000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 19))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 22 19))) },
  { key := { q := 10, n := 46, r := 20 }
    lowerValue := 134681894038758
    upperValue := 1000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 20))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 23 20))) },
  { key := { q := 10, n := 46, r := 21 }
    lowerValue := 11990369007238
    upperValue := 100000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 21))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 24 21))) },
  { key := { q := 10, n := 46, r := 22 }
    lowerValue := 1162221672601
    upperValue := 10000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 22))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 25 22))) },
  { key := { q := 10, n := 46, r := 23 }
    lowerValue := 122584175997
    upperValue := 1000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 23))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 26 23))) },
  { key := { q := 10, n := 46, r := 24 }
    lowerValue := 14065420941
    upperValue := 100000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 24))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 27 24))) },
  { key := { q := 10, n := 46, r := 25 }
    lowerValue := 1755708231
    upperValue := 10000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 25))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 28 25))) },
  { key := { q := 10, n := 46, r := 26 }
    lowerValue := 238487267
    upperValue := 1000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 26))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 29 26))) },
  { key := { q := 10, n := 46, r := 27 }
    lowerValue := 35273455
    upperValue := 10000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 27))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 31 27))) },
  { key := { q := 10, n := 46, r := 28 }
    lowerValue := 5685722
    upperValue := 1000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 28))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 32 28))) },
  { key := { q := 10, n := 46, r := 29 }
    lowerValue := 999992
    upperValue := 100000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 29))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 33 29))) },
  { key := { q := 10, n := 46, r := 30 }
    lowerValue := 192195
    upperValue := 10000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 30))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 34 30))) },
  { key := { q := 10, n := 46, r := 31 }
    lowerValue := 40442
    upperValue := 1000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 31))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 35 31))) },
  { key := { q := 10, n := 46, r := 32 }
    lowerValue := 9338
    upperValue := 100000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 32))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 36 32))) },
  { key := { q := 10, n := 46, r := 33 }
    lowerValue := 2373
    upperValue := 10000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 33))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 37 33))) },
  { key := { q := 10, n := 46, r := 34 }
    lowerValue := 665
    upperValue := 1000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 34))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 38 34))) },
  { key := { q := 10, n := 46, r := 35 }
    lowerValue := 207
    upperValue := 100000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 35))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 39 35))) },
  { key := { q := 10, n := 46, r := 36 }
    lowerValue := 72
    upperValue := 1000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 36))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 41 36))) },
  { key := { q := 10, n := 46, r := 37 }
    lowerValue := 28
    upperValue := 100000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 37))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 42 37))) },
  { key := { q := 10, n := 46, r := 38 }
    lowerValue := 12
    upperValue := 10000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 38))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 43 38))) },
  { key := { q := 10, n := 46, r := 39 }
    lowerValue := 10
    upperValue := 1000
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 41 40))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 44 39))) },
  { key := { q := 10, n := 46, r := 40 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 42 41)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 45 40))) },
  { key := { q := 10, n := 46, r := 41 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 43 42))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 46 41)) },
  { key := { q := 10, n := 46, r := 42 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 44 43)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 46 42)) },
  { key := { q := 10, n := 46, r := 43 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 45 44))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 46 43)) },
  { key := { q := 10, n := 46, r := 44 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 46 45)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 46 44)) },
  { key := { q := 10, n := 46, r := 45 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 46 45))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 46 45)) },
  { key := { q := 10, n := 46, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 46 46)) },
  { key := { q := 10, n := 46, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 46 47)) },
  { key := { q := 10, n := 46, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 46 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 46 48)) },
  { key := { q := 10, n := 47, r := 0 }
    lowerValue := 100000000000000000000000000000000000000000000000
    upperValue := 100000000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 47 0)) },
  { key := { q := 10, n := 47, r := 1 }
    lowerValue := 235849056603773584905660377358490566037735850
    upperValue := 4000000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 1))
    upperTrace := (.lengthenFreeN 40 (@UpperTrace.alphabetExpand 5 10 2 7 1 3125 (by decide : 0 < 5) (by decide : 0 < 2) (by decide : 10 ≤ 2 * 5) (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 10, n := 47, r := 2 }
    lowerValue := 1136557367733136330056259589702790248337785
    upperValue := 400000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 2))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 5 10 2 7 1 3125 (by decide : 0 < 5) (by decide : 0 < 2) (by decide : 10 ≤ 2 * 5) (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))))) },
  { key := { q := 10, n := 47, r := 3 }
    lowerValue := 8397208096252158082480736804627197549359
    upperValue := 40000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 3))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 5 10 2 7 1 3125 (by decide : 0 < 5) (by decide : 0 < 2) (by decide : 10 ≤ 2 * 5) (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))))) },
  { key := { q := 10, n := 47, r := 4 }
    lowerValue := 84590812058134341942293949798237590189
    upperValue := 1156000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 4))
    upperTrace := (.lengthenFreeN 39 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) },
  { key := { q := 10, n := 47, r := 5 }
    lowerValue := 1089802737088170680592900016057388926
    upperValue := 115600000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 5))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 47, r := 6 }
    lowerValue := 17246891600701725087023041763109772
    upperValue := 11560000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 6))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 47, r := 7 }
    lowerValue := 326151226387730928597120183379387
    upperValue := 1156000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 7))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 47, r := 8 }
    lowerValue := 7223883162742095639651850559992
    upperValue := 115600000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 8))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 47, r := 9 }
    lowerValue := 184583181365297566807604637339
    upperValue := 10000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 9))
    upperTrace := (.lengthenFreeN 36 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 47, r := 10 }
    lowerValue := 5377337580043253340401679873
    upperValue := 1000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 10))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 47, r := 11 }
    lowerValue := 176939580604355339942951567
    upperValue := 100000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 11))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 47, r := 12 }
    lowerValue := 6526348607616991617252870
    upperValue := 10000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 12))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 47, r := 13 }
    lowerValue := 268165405579591965976772
    upperValue := 1000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 13))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 47, r := 14 }
    lowerValue := 12212073042803714461102
    upperValue := 100000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 14))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) },
  { key := { q := 10, n := 47, r := 15 }
    lowerValue := 613723785341345565475
    upperValue := 10000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 15))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 15))) },
  { key := { q := 10, n := 47, r := 16 }
    lowerValue := 33916008977572169499
    upperValue := 1000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 16))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 18 16))) },
  { key := { q := 10, n := 47, r := 17 }
    lowerValue := 2054917038445623772
    upperValue := 100000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 17))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 19 17))) },
  { key := { q := 10, n := 47, r := 18 }
    lowerValue := 136166812318467561
    upperValue := 1000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 18))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 21 18))) },
  { key := { q := 10, n := 47, r := 19 }
    lowerValue := 9848187988623473
    upperValue := 100000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 19))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 22 19))) },
  { key := { q := 10, n := 47, r := 20 }
    lowerValue := 776137712969015
    upperValue := 10000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 20))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 23 20))) },
  { key := { q := 10, n := 47, r := 21 }
    lowerValue := 66567084079824
    upperValue := 1000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 21))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 24 21))) },
  { key := { q := 10, n := 47, r := 22 }
    lowerValue := 6207234183396
    upperValue := 100000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 22))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 25 22))) },
  { key := { q := 10, n := 47, r := 23 }
    lowerValue := 628873496185
    upperValue := 10000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 23))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 26 23))) },
  { key := { q := 10, n := 47, r := 24 }
    lowerValue := 69196834408
    upperValue := 1000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 24))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 27 24))) },
  { key := { q := 10, n := 47, r := 25 }
    lowerValue := 8268304416
    upperValue := 100000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 25))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 28 25))) },
  { key := { q := 10, n := 47, r := 26 }
    lowerValue := 1073049743
    upperValue := 10000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 26))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 29 26))) },
  { key := { q := 10, n := 47, r := 27 }
    lowerValue := 151313870
    upperValue := 100000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 27))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 31 27))) },
  { key := { q := 10, n := 47, r := 28 }
    lowerValue := 23200320
    upperValue := 10000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 28))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 32 28))) },
  { key := { q := 10, n := 47, r := 29 }
    lowerValue := 3871587
    upperValue := 1000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 29))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 33 29))) },
  { key := { q := 10, n := 47, r := 30 }
    lowerValue := 704070
    upperValue := 100000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 30))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 34 30))) },
  { key := { q := 10, n := 47, r := 31 }
    lowerValue := 139754
    upperValue := 10000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 31))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 35 31))) },
  { key := { q := 10, n := 47, r := 32 }
    lowerValue := 30337
    upperValue := 1000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 32))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 36 32))) },
  { key := { q := 10, n := 47, r := 33 }
    lowerValue := 7219
    upperValue := 100000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 33))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 37 33))) },
  { key := { q := 10, n := 47, r := 34 }
    lowerValue := 1888
    upperValue := 10000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 34))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 38 34))) },
  { key := { q := 10, n := 47, r := 35 }
    lowerValue := 545
    upperValue := 1000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 35))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 39 35))) },
  { key := { q := 10, n := 47, r := 36 }
    lowerValue := 174
    upperValue := 10000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 36))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 41 36))) },
  { key := { q := 10, n := 47, r := 37 }
    lowerValue := 62
    upperValue := 1000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 37))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 42 37))) },
  { key := { q := 10, n := 47, r := 38 }
    lowerValue := 25
    upperValue := 100000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 38))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 43 38))) },
  { key := { q := 10, n := 47, r := 39 }
    lowerValue := 11
    upperValue := 10000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 39))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 44 39))) },
  { key := { q := 10, n := 47, r := 40 }
    lowerValue := 10
    upperValue := 1000
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 42 41))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 45 40))) },
  { key := { q := 10, n := 47, r := 41 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 43 42)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 46 41))) },
  { key := { q := 10, n := 47, r := 42 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 44 43))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 47 42)) },
  { key := { q := 10, n := 47, r := 43 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 45 44)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 47 43)) },
  { key := { q := 10, n := 47, r := 44 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 46 45))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 47 44)) },
  { key := { q := 10, n := 47, r := 45 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 47 46)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 47 45)) },
  { key := { q := 10, n := 47, r := 46 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 47 46))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 47 46)) },
  { key := { q := 10, n := 47, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 47 47)) },
  { key := { q := 10, n := 47, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 47 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 47 48)) },
  { key := { q := 10, n := 48, r := 0 }
    lowerValue := 1000000000000000000000000000000000000000000000000
    upperValue := 1000000000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 48 0)) },
  { key := { q := 10, n := 48, r := 1 }
    lowerValue := 2309468822170900692840646651270207852193995382
    upperValue := 40000000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 1))
    upperTrace := (.lengthenFreeN 41 (@UpperTrace.alphabetExpand 5 10 2 7 1 3125 (by decide : 0 < 5) (by decide : 0 < 2) (by decide : 10 ≤ 2 * 5) (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))) },
  { key := { q := 10, n := 48, r := 2 }
    lowerValue := 10893127525843945055064759643141142253352360
    upperValue := 4000000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 2))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 5 10 2 7 1 3125 (by decide : 0 < 5) (by decide : 0 < 2) (by decide : 10 ≤ 2 * 5) (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))))) },
  { key := { q := 10, n := 48, r := 3 }
    lowerValue := 78736530640124057277676579464646707218605
    upperValue := 400000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 3))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 5 10 2 7 1 3125 (by decide : 0 < 5) (by decide : 0 < 2) (by decide : 10 ≤ 2 * 5) (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 5 6 1))))))) },
  { key := { q := 10, n := 48, r := 4 }
    lowerValue := 775590633305157806071729111413993903463
    upperValue := 11560000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 4))
    upperTrace := (.lengthenFreeN 40 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))) },
  { key := { q := 10, n := 48, r := 5 }
    lowerValue := 9765703310545417167512768694017310906
    upperValue := 1156000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 5))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 48, r := 6 }
    lowerValue := 150966553067956481223589144899124780
    upperValue := 115600000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 6))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 48, r := 7 }
    lowerValue := 2787149159108551374077231463619616
    upperValue := 11560000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 7))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 48, r := 8 }
    lowerValue := 60232159738734635115094378148654
    upperValue := 1156000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 8))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n8_r4_block_product" (primitiveUpper_valid 10 8 4))))) },
  { key := { q := 10, n := 48, r := 9 }
    lowerValue := 1500717565873400125996886963860
    upperValue := 100000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 9))
    upperTrace := (.lengthenFreeN 37 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 48, r := 10 }
    lowerValue := 42603202103803972420977375619
    upperValue := 10000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 10))
    upperTrace := (.lengthenFreeN 36 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 48, r := 11 }
    lowerValue := 1365124826838448588345690024
    upperValue := 1000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 11))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 48, r := 12 }
    lowerValue := 48998025556021737719967962
    upperValue := 100000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 12))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 48, r := 13 }
    lowerValue := 1957687674663089191436496
    upperValue := 10000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 13))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 48, r := 14 }
    lowerValue := 86619417761956873996077
    upperValue := 1000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 14))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) },
  { key := { q := 10, n := 48, r := 15 }
    lowerValue := 4225876283564647671786
    upperValue := 100000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 15))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 15))) },
  { key := { q := 10, n := 48, r := 16 }
    lowerValue := 226504779768077557054
    upperValue := 10000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 16))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 18 16))) },
  { key := { q := 10, n := 48, r := 17 }
    lowerValue := 13297888931330089399
    upperValue := 1000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 17))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 19 17))) },
  { key := { q := 10, n := 48, r := 18 }
    lowerValue := 852975056558702247
    upperValue := 10000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 18))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 21 18))) },
  { key := { q := 10, n := 48, r := 19 }
    lowerValue := 59652729436714689
    upperValue := 1000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 19))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 22 19))) },
  { key := { q := 10, n := 48, r := 20 }
    lowerValue := 4540697457697961
    upperValue := 100000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 20))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 23 20))) },
  { key := { q := 10, n := 48, r := 21 }
    lowerValue := 375681111539438
    upperValue := 10000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 21))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 24 21))) },
  { key := { q := 10, n := 48, r := 22 }
    lowerValue := 33749087878717
    upperValue := 1000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 22))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 25 22))) },
  { key := { q := 10, n := 48, r := 23 }
    lowerValue := 3289402207572
    upperValue := 100000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 23))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 26 23))) },
  { key := { q := 10, n := 48, r := 24 }
    lowerValue := 347670904891
    upperValue := 10000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 24))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 27 24))) },
  { key := { q := 10, n := 48, r := 25 }
    lowerValue := 39839441554
    upperValue := 1000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 25))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 28 25))) },
  { key := { q := 10, n := 48, r := 26 }
    lowerValue := 4949472623
    upperValue := 100000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 26))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 29 26))) },
  { key := { q := 10, n := 48, r := 27 }
    lowerValue := 666840547
    upperValue := 1000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 27))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 31 27))) },
  { key := { q := 10, n := 48, r := 28 }
    lowerValue := 97483112
    upperValue := 100000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 28))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 32 28))) },
  { key := { q := 10, n := 48, r := 29 }
    lowerValue := 15474660
    upperValue := 10000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 29))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 33 29))) },
  { key := { q := 10, n := 48, r := 30 }
    lowerValue := 2670269
    upperValue := 1000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 30))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 34 30))) },
  { key := { q := 10, n := 48, r := 31 }
    lowerValue := 501548
    upperValue := 100000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 31))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 35 31))) },
  { key := { q := 10, n := 48, r := 32 }
    lowerValue := 102709
    upperValue := 10000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 32))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 36 32))) },
  { key := { q := 10, n := 48, r := 33 }
    lowerValue := 22978
    upperValue := 1000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 33))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 37 33))) },
  { key := { q := 10, n := 48, r := 34 }
    lowerValue := 5629
    upperValue := 100000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 34))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 38 34))) },
  { key := { q := 10, n := 48, r := 35 }
    lowerValue := 1514
    upperValue := 10000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 35))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 39 35))) },
  { key := { q := 10, n := 48, r := 36 }
    lowerValue := 449
    upperValue := 100000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 36))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 41 36))) },
  { key := { q := 10, n := 48, r := 37 }
    lowerValue := 147
    upperValue := 10000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 37))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 42 37))) },
  { key := { q := 10, n := 48, r := 38 }
    lowerValue := 54
    upperValue := 1000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 38))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 43 38))) },
  { key := { q := 10, n := 48, r := 39 }
    lowerValue := 22
    upperValue := 100000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 39))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 44 39))) },
  { key := { q := 10, n := 48, r := 40 }
    lowerValue := 10
    upperValue := 10000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 40))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 45 40))) },
  { key := { q := 10, n := 48, r := 41 }
    lowerValue := 10
    upperValue := 1000
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 43 42))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 46 41))) },
  { key := { q := 10, n := 48, r := 42 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 44 43)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 47 42))) },
  { key := { q := 10, n := 48, r := 43 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 45 44))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 48 43)) },
  { key := { q := 10, n := 48, r := 44 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 46 45)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 48 44)) },
  { key := { q := 10, n := 48, r := 45 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 47 46))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 48 45)) },
  { key := { q := 10, n := 48, r := 46 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 46 ≤ 47) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 48 47)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 48 46)) },
  { key := { q := 10, n := 48, r := 47 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 48 47))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 48 47)) },
  { key := { q := 10, n := 48, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 48 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 48 48)) },
  { key := { q := 11, n := 0, r := 0 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 0)) },
  { key := { q := 11, n := 0, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 1))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 1)) },
  { key := { q := 11, n := 0, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 2))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 2)) },
  { key := { q := 11, n := 0, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 3))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 3)) },
  { key := { q := 11, n := 0, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 4))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 4)) },
  { key := { q := 11, n := 0, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 5))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 5)) },
  { key := { q := 11, n := 0, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 6))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 6)) },
  { key := { q := 11, n := 0, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 7))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 7)) },
  { key := { q := 11, n := 0, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 8))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 8)) },
  { key := { q := 11, n := 0, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 9))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 9)) },
  { key := { q := 11, n := 0, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 10))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 10)) },
  { key := { q := 11, n := 0, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 11))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 11)) },
  { key := { q := 11, n := 0, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 12))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 12)) },
  { key := { q := 11, n := 0, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 13))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 13)) },
  { key := { q := 11, n := 0, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 14))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 14)) },
  { key := { q := 11, n := 0, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 15))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 15)) },
  { key := { q := 11, n := 0, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 16))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 16)) },
  { key := { q := 11, n := 0, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 17))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 17)) },
  { key := { q := 11, n := 0, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 18))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 18)) },
  { key := { q := 11, n := 0, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 19))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 19)) },
  { key := { q := 11, n := 0, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 20))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 20)) },
  { key := { q := 11, n := 0, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 21))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 21)) },
  { key := { q := 11, n := 0, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 22))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 22)) },
  { key := { q := 11, n := 0, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 23))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 23)) },
  { key := { q := 11, n := 0, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 24))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 24)) },
  { key := { q := 11, n := 0, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 25))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 25)) },
  { key := { q := 11, n := 0, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 26))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 26)) },
  { key := { q := 11, n := 0, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 27))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 27)) },
  { key := { q := 11, n := 0, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 28))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 28)) },
  { key := { q := 11, n := 0, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 29))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 29)) },
  { key := { q := 11, n := 0, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 30))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 30)) },
  { key := { q := 11, n := 0, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 31))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 31)) },
  { key := { q := 11, n := 0, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 32))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 32)) },
  { key := { q := 11, n := 0, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 33))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 33)) },
  { key := { q := 11, n := 0, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 34))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 34)) },
  { key := { q := 11, n := 0, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 35))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 35)) },
  { key := { q := 11, n := 0, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 36))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 36)) },
  { key := { q := 11, n := 0, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 37))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 37)) },
  { key := { q := 11, n := 0, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 38))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 38)) },
  { key := { q := 11, n := 0, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 39))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 39)) },
  { key := { q := 11, n := 0, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 40))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 40)) },
  { key := { q := 11, n := 0, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 41))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 41)) },
  { key := { q := 11, n := 0, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 42))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 42)) },
  { key := { q := 11, n := 0, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 43))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 43)) },
  { key := { q := 11, n := 0, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 44))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 44)) },
  { key := { q := 11, n := 0, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 45))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 45)) },
  { key := { q := 11, n := 0, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 46))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 46)) },
  { key := { q := 11, n := 0, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 47))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 47)) },
  { key := { q := 11, n := 0, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 0 48))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 0 48)) },
  { key := { q := 11, n := 1, r := 0 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 1 0)) },
  { key := { q := 11, n := 1, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 1))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 1)) },
  { key := { q := 11, n := 1, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 2))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 2)) },
  { key := { q := 11, n := 1, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 3)) },
  { key := { q := 11, n := 1, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 4)) },
  { key := { q := 11, n := 1, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 5)) },
  { key := { q := 11, n := 1, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 6)) },
  { key := { q := 11, n := 1, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 7)) },
  { key := { q := 11, n := 1, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 8)) },
  { key := { q := 11, n := 1, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 9)) },
  { key := { q := 11, n := 1, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 10)) },
  { key := { q := 11, n := 1, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 11)) },
  { key := { q := 11, n := 1, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 12)) },
  { key := { q := 11, n := 1, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 13)) },
  { key := { q := 11, n := 1, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 14)) },
  { key := { q := 11, n := 1, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 15)) },
  { key := { q := 11, n := 1, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 16)) },
  { key := { q := 11, n := 1, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 17)) },
  { key := { q := 11, n := 1, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 18)) },
  { key := { q := 11, n := 1, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 19)) },
  { key := { q := 11, n := 1, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 20)) },
  { key := { q := 11, n := 1, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 21)) },
  { key := { q := 11, n := 1, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 22)) },
  { key := { q := 11, n := 1, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 23)) },
  { key := { q := 11, n := 1, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 24)) },
  { key := { q := 11, n := 1, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 25)) },
  { key := { q := 11, n := 1, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 26)) },
  { key := { q := 11, n := 1, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 27)) },
  { key := { q := 11, n := 1, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 28)) },
  { key := { q := 11, n := 1, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 29)) },
  { key := { q := 11, n := 1, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 30)) },
  { key := { q := 11, n := 1, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 31)) },
  { key := { q := 11, n := 1, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 32)) },
  { key := { q := 11, n := 1, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 33)) },
  { key := { q := 11, n := 1, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 34)) },
  { key := { q := 11, n := 1, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 35)) },
  { key := { q := 11, n := 1, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 36)) },
  { key := { q := 11, n := 1, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 37)) },
  { key := { q := 11, n := 1, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 38)) },
  { key := { q := 11, n := 1, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 1 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 1 39)) }]

end CoveringCodes.Database
