import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 195. Do not edit manually.

def precomputedTable_chunk_195 : Array AnyBoundEntry := #[
  { key := { q := 20, n := 14, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 44)) },
  { key := { q := 20, n := 14, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 45)) },
  { key := { q := 20, n := 14, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 46)) },
  { key := { q := 20, n := 14, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 47)) },
  { key := { q := 20, n := 14, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 48)) },
  { key := { q := 20, n := 15, r := 0 }
    lowerValue := 32768000000000000000
    upperValue := 32768000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 15 0)) },
  { key := { q := 20, n := 15, r := 1 }
    lowerValue := 114573426573426574
    upperValue := 655360000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 1))
    upperTrace := (.lengthenFreeN 8 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 15, r := 2 }
    lowerValue := 858003194469902
    upperValue := 32768000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 2))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 15, r := 3 }
    lowerValue := 10372784608976
    upperValue := 1638400000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 3))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 15, r := 4 }
    lowerValue := 180991475257
    upperValue := 81920000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 4))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 15, r := 5 }
    lowerValue := 4302084644
    upperValue := 4096000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 5))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 15, r := 6 }
    lowerValue := 134802577
    upperValue := 204800000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 6))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 15, r := 7 }
    lowerValue := 5465756
    upperValue := 10240000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 7))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 15, r := 8 }
    lowerValue := 284237
    upperValue := 512000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 8))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1)))))) },
  { key := { q := 20, n := 15, r := 9 }
    lowerValue := 18938
    upperValue := 25600000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 9))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 20) (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 15, r := 10 }
    lowerValue := 1627
    upperValue := 1280000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 10))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 20) (@UpperTrace.alphabetExpand 10 20 2 6 1 20000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1)))) },
  { key := { q := 20, n := 15, r := 11 }
    lowerValue := 183
    upperValue := 80000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 11))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 15, r := 12 }
    lowerValue := 28
    upperValue := 4000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 12))
    upperTrace := (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1)))) },
  { key := { q := 20, n := 15, r := 13 }
    lowerValue := 20
    upperValue := 200
    lowerTrace := (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 15 14)))
    upperTrace := (.lengthenDummyN 12 (by decide : 0 < 20) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))) },
  { key := { q := 20, n := 15, r := 14 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 15 14))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 15 14)) },
  { key := { q := 20, n := 15, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 15)) },
  { key := { q := 20, n := 15, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 16)) },
  { key := { q := 20, n := 15, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 17)) },
  { key := { q := 20, n := 15, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 18)) },
  { key := { q := 20, n := 15, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 19)) },
  { key := { q := 20, n := 15, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 20)) },
  { key := { q := 20, n := 15, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 21)) },
  { key := { q := 20, n := 15, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 22)) },
  { key := { q := 20, n := 15, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 23)) },
  { key := { q := 20, n := 15, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 24)) },
  { key := { q := 20, n := 15, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 25)) },
  { key := { q := 20, n := 15, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 26)) },
  { key := { q := 20, n := 15, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 27)) },
  { key := { q := 20, n := 15, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 28)) },
  { key := { q := 20, n := 15, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 29)) },
  { key := { q := 20, n := 15, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 30)) },
  { key := { q := 20, n := 15, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 31)) },
  { key := { q := 20, n := 15, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 32)) },
  { key := { q := 20, n := 15, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 33)) },
  { key := { q := 20, n := 15, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 34)) },
  { key := { q := 20, n := 15, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 35)) },
  { key := { q := 20, n := 15, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 36)) },
  { key := { q := 20, n := 15, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 37)) },
  { key := { q := 20, n := 15, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 38)) },
  { key := { q := 20, n := 15, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 39)) },
  { key := { q := 20, n := 15, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 40)) },
  { key := { q := 20, n := 15, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 41)) },
  { key := { q := 20, n := 15, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 42)) },
  { key := { q := 20, n := 15, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 43)) },
  { key := { q := 20, n := 15, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 44)) },
  { key := { q := 20, n := 15, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 45)) },
  { key := { q := 20, n := 15, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 46)) },
  { key := { q := 20, n := 15, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 47)) },
  { key := { q := 20, n := 15, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 15 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 15 48)) },
  { key := { q := 20, n := 16, r := 0 }
    lowerValue := 655360000000000000000
    upperValue := 655360000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 16 0)) },
  { key := { q := 20, n := 16, r := 1 }
    lowerValue := 2148721311475409837
    upperValue := 13107200000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 1))
    upperTrace := (.lengthenFreeN 9 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 16, r := 2 }
    lowerValue := 15022578796561605
    upperValue := 655360000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 2))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 16, r := 3 }
    lowerValue := 168704379914356
    upperValue := 32768000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 3))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 16, r := 4 }
    lowerValue := 2718559054190
    upperValue := 1638400000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 4))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 16, r := 5 }
    lowerValue := 59272822693
    upperValue := 81920000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 5))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 16, r := 6 }
    lowerValue := 1689942903
    upperValue := 4096000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 6))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 16, r := 7 }
    lowerValue := 61746653
    upperValue := 204800000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 7))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 16, r := 8 }
    lowerValue := 2859435
    upperValue := 10240000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 8))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 16, r := 9 }
    lowerValue := 167153
    upperValue := 512000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 9))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1)))))) },
  { key := { q := 20, n := 16, r := 10 }
    lowerValue := 12362
    upperValue := 25600000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 10))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 20) (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 16, r := 11 }
    lowerValue := 1167
    upperValue := 1280000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 11))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 20) (@UpperTrace.alphabetExpand 10 20 2 6 1 20000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1)))) },
  { key := { q := 20, n := 16, r := 12 }
    lowerValue := 143
    upperValue := 80000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 12))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 16, r := 13 }
    lowerValue := 24
    upperValue := 4000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 13))
    upperTrace := (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1)))) },
  { key := { q := 20, n := 16, r := 14 }
    lowerValue := 20
    upperValue := 200
    lowerTrace := (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 16 15)))
    upperTrace := (.lengthenDummyN 13 (by decide : 0 < 20) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))) },
  { key := { q := 20, n := 16, r := 15 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 16 15))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 16 15)) },
  { key := { q := 20, n := 16, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 16)) },
  { key := { q := 20, n := 16, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 17)) },
  { key := { q := 20, n := 16, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 18)) },
  { key := { q := 20, n := 16, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 19)) },
  { key := { q := 20, n := 16, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 20)) },
  { key := { q := 20, n := 16, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 21)) },
  { key := { q := 20, n := 16, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 22)) },
  { key := { q := 20, n := 16, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 23)) },
  { key := { q := 20, n := 16, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 24)) },
  { key := { q := 20, n := 16, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 25)) },
  { key := { q := 20, n := 16, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 26)) },
  { key := { q := 20, n := 16, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 27)) },
  { key := { q := 20, n := 16, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 28)) },
  { key := { q := 20, n := 16, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 29)) },
  { key := { q := 20, n := 16, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 30)) },
  { key := { q := 20, n := 16, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 31)) },
  { key := { q := 20, n := 16, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 32)) },
  { key := { q := 20, n := 16, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 33)) },
  { key := { q := 20, n := 16, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 34)) },
  { key := { q := 20, n := 16, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 35)) },
  { key := { q := 20, n := 16, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 36)) },
  { key := { q := 20, n := 16, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 37)) },
  { key := { q := 20, n := 16, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 38)) },
  { key := { q := 20, n := 16, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 39)) },
  { key := { q := 20, n := 16, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 40)) },
  { key := { q := 20, n := 16, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 41)) },
  { key := { q := 20, n := 16, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 42)) },
  { key := { q := 20, n := 16, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 43)) },
  { key := { q := 20, n := 16, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 44)) },
  { key := { q := 20, n := 16, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 45)) },
  { key := { q := 20, n := 16, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 46)) },
  { key := { q := 20, n := 16, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 47)) },
  { key := { q := 20, n := 16, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 16 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 16 48)) },
  { key := { q := 20, n := 17, r := 0 }
    lowerValue := 13107200000000000000000
    upperValue := 13107200000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 17 0)) },
  { key := { q := 20, n := 17, r := 1 }
    lowerValue := 40454320987654320988
    upperValue := 262144000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 1))
    upperTrace := (.lengthenFreeN 10 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 17, r := 2 }
    lowerValue := 265220558478348847
    upperValue := 13107200000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 2))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 17, r := 3 }
    lowerValue := 2780755016399564
    upperValue := 655360000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 3))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 17, r := 4 }
    lowerValue := 41626344109926
    upperValue := 32768000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 4))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 17, r := 5 }
    lowerValue := 838218221536
    upperValue := 1638400000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 5))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 17, r := 6 }
    lowerValue := 21922911158
    upperValue := 81920000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 6))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 17, r := 7 }
    lowerValue := 728910966
    upperValue := 4096000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 7))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 17, r := 8 }
    lowerValue := 30421562
    upperValue := 204800000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 8))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 17, r := 9 }
    lowerValue := 1583877
    upperValue := 10240000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 9))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 17, r := 10 }
    lowerValue := 102792
    upperValue := 512000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 10))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1)))))) },
  { key := { q := 20, n := 17, r := 11 }
    lowerValue := 8353
    upperValue := 25600000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 11))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 20) (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 17, r := 12 }
    lowerValue := 859
    upperValue := 1280000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 12))
    upperTrace := (.lengthenDummyN 11 (by decide : 0 < 20) (@UpperTrace.alphabetExpand 10 20 2 6 1 20000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1)))) },
  { key := { q := 20, n := 17, r := 13 }
    lowerValue := 114
    upperValue := 80000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 13))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 17, r := 14 }
    lowerValue := 20
    upperValue := 4000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 14))
    upperTrace := (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1)))) },
  { key := { q := 20, n := 17, r := 15 }
    lowerValue := 20
    upperValue := 200
    lowerTrace := (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 17 16)))
    upperTrace := (.lengthenDummyN 14 (by decide : 0 < 20) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))) },
  { key := { q := 20, n := 17, r := 16 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 17 16))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 17 16)) },
  { key := { q := 20, n := 17, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 17)) },
  { key := { q := 20, n := 17, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 18)) },
  { key := { q := 20, n := 17, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 19)) },
  { key := { q := 20, n := 17, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 20)) },
  { key := { q := 20, n := 17, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 21)) },
  { key := { q := 20, n := 17, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 22)) },
  { key := { q := 20, n := 17, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 23)) },
  { key := { q := 20, n := 17, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 24)) },
  { key := { q := 20, n := 17, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 25)) },
  { key := { q := 20, n := 17, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 26)) },
  { key := { q := 20, n := 17, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 27)) },
  { key := { q := 20, n := 17, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 28)) },
  { key := { q := 20, n := 17, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 29)) },
  { key := { q := 20, n := 17, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 30)) },
  { key := { q := 20, n := 17, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 31)) },
  { key := { q := 20, n := 17, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 32)) },
  { key := { q := 20, n := 17, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 33)) },
  { key := { q := 20, n := 17, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 34)) },
  { key := { q := 20, n := 17, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 35)) },
  { key := { q := 20, n := 17, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 36)) },
  { key := { q := 20, n := 17, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 37)) },
  { key := { q := 20, n := 17, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 38)) },
  { key := { q := 20, n := 17, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 39)) },
  { key := { q := 20, n := 17, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 40)) },
  { key := { q := 20, n := 17, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 41)) },
  { key := { q := 20, n := 17, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 42)) },
  { key := { q := 20, n := 17, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 43)) },
  { key := { q := 20, n := 17, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 44)) },
  { key := { q := 20, n := 17, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 45)) },
  { key := { q := 20, n := 17, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 46)) },
  { key := { q := 20, n := 17, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 47)) },
  { key := { q := 20, n := 17, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 17 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 17 48)) },
  { key := { q := 20, n := 18, r := 0 }
    lowerValue := 262144000000000000000000
    upperValue := 262144000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 18 0)) },
  { key := { q := 20, n := 18, r := 1 }
    lowerValue := 764268221574344023324
    upperValue := 5242880000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 1))
    upperTrace := (.lengthenFreeN 11 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 18, r := 2 }
    lowerValue := 4716856196919533612
    upperValue := 262144000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 2))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 18, r := 3 }
    lowerValue := 46376483409169716
    upperValue := 13107200000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 3))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 18, r := 4 }
    lowerValue := 648173730261280
    upperValue := 655360000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 4))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 18, r := 5 }
    lowerValue := 12125265105089
    upperValue := 32768000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 5))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 18, r := 6 }
    lowerValue := 292905070364
    upperValue := 1638400000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 6))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 18, r := 7 }
    lowerValue := 8934223577
    upperValue := 81920000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 7))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 18, r := 8 }
    lowerValue := 339341336
    upperValue := 4096000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 8))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 18, r := 9 }
    lowerValue := 15924592
    upperValue := 204800000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 9))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 18, r := 10 }
    lowerValue := 920628
    upperValue := 10240000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 10))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 18, r := 11 }
    lowerValue := 65669
    upperValue := 512000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 11))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1)))))) },
  { key := { q := 20, n := 18, r := 12 }
    lowerValue := 5816
    upperValue := 25600000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 12))
    upperTrace := (.lengthenDummyN 11 (by decide : 0 < 20) (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 18, r := 13 }
    lowerValue := 647
    upperValue := 1280000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 13))
    upperTrace := (.lengthenDummyN 12 (by decide : 0 < 20) (@UpperTrace.alphabetExpand 10 20 2 6 1 20000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1)))) },
  { key := { q := 20, n := 18, r := 14 }
    lowerValue := 92
    upperValue := 80000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 14))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 18, r := 15 }
    lowerValue := 20
    upperValue := 4000
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 17 16))))
    upperTrace := (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1)))) },
  { key := { q := 20, n := 18, r := 16 }
    lowerValue := 20
    upperValue := 200
    lowerTrace := (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 18 17)))
    upperTrace := (.lengthenDummyN 15 (by decide : 0 < 20) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))) },
  { key := { q := 20, n := 18, r := 17 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 18 17))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 18 17)) },
  { key := { q := 20, n := 18, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 18)) },
  { key := { q := 20, n := 18, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 19)) },
  { key := { q := 20, n := 18, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 20)) },
  { key := { q := 20, n := 18, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 21)) },
  { key := { q := 20, n := 18, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 22)) },
  { key := { q := 20, n := 18, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 23)) },
  { key := { q := 20, n := 18, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 24)) },
  { key := { q := 20, n := 18, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 25)) },
  { key := { q := 20, n := 18, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 26)) },
  { key := { q := 20, n := 18, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 27)) },
  { key := { q := 20, n := 18, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 28)) },
  { key := { q := 20, n := 18, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 29)) },
  { key := { q := 20, n := 18, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 30)) },
  { key := { q := 20, n := 18, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 31)) },
  { key := { q := 20, n := 18, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 32)) },
  { key := { q := 20, n := 18, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 33)) },
  { key := { q := 20, n := 18, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 34)) },
  { key := { q := 20, n := 18, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 35)) },
  { key := { q := 20, n := 18, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 36)) },
  { key := { q := 20, n := 18, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 37)) },
  { key := { q := 20, n := 18, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 38)) },
  { key := { q := 20, n := 18, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 39)) },
  { key := { q := 20, n := 18, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 40)) },
  { key := { q := 20, n := 18, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 41)) },
  { key := { q := 20, n := 18, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 42)) },
  { key := { q := 20, n := 18, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 43)) },
  { key := { q := 20, n := 18, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 44)) },
  { key := { q := 20, n := 18, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 45)) },
  { key := { q := 20, n := 18, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 46)) },
  { key := { q := 20, n := 18, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 47)) },
  { key := { q := 20, n := 18, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 18 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 18 48)) },
  { key := { q := 20, n := 19, r := 0 }
    lowerValue := 5242880000000000000000000
    upperValue := 5242880000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 19 0)) },
  { key := { q := 20, n := 19, r := 1 }
    lowerValue := 14483093922651933701658
    upperValue := 104857600000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 1))
    upperTrace := (.lengthenFreeN 12 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 19, r := 2 }
    lowerValue := 84435926755028747202
    upperValue := 5242880000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 2))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 19, r := 3 }
    lowerValue := 781532106306302009
    upperValue := 262144000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 3))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 19, r := 4 }
    lowerValue := 10243347894212144
    upperValue := 13107200000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 4))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 19, r := 5 }
    lowerValue := 178913997218445
    upperValue := 655360000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 5))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 19, r := 6 }
    lowerValue := 4015216494414
    upperValue := 32768000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 6))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 19, r := 7 }
    lowerValue := 113124361988
    upperValue := 1638400000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 7))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 19, r := 8 }
    lowerValue := 3942021488
    upperValue := 81920000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 8))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 19, r := 9 }
    lowerValue := 168368903
    upperValue := 4096000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 9))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 19, r := 10 }
    lowerValue := 8774477
    upperValue := 204800000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 10))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 19, r := 11 }
    lowerValue := 557630
    upperValue := 10240000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 11))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 19, r := 12 }
    lowerValue := 43356
    upperValue := 512000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 12))
    upperTrace := (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1)))))) },
  { key := { q := 20, n := 19, r := 13 }
    lowerValue := 4155
    upperValue := 25600000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 13))
    upperTrace := (.lengthenDummyN 12 (by decide : 0 < 20) (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 19, r := 14 }
    lowerValue := 497
    upperValue := 1280000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 14))
    upperTrace := (.lengthenDummyN 13 (by decide : 0 < 20) (@UpperTrace.alphabetExpand 10 20 2 6 1 20000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1)))) },
  { key := { q := 20, n := 19, r := 15 }
    lowerValue := 76
    upperValue := 80000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 15))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 19, r := 16 }
    lowerValue := 20
    upperValue := 4000
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 18 17))))
    upperTrace := (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1)))) },
  { key := { q := 20, n := 19, r := 17 }
    lowerValue := 20
    upperValue := 200
    lowerTrace := (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 19 18)))
    upperTrace := (.lengthenDummyN 16 (by decide : 0 < 20) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))) },
  { key := { q := 20, n := 19, r := 18 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 19 18))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 19 18)) },
  { key := { q := 20, n := 19, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 19)) },
  { key := { q := 20, n := 19, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 20)) },
  { key := { q := 20, n := 19, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 21)) },
  { key := { q := 20, n := 19, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 22)) },
  { key := { q := 20, n := 19, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 23)) },
  { key := { q := 20, n := 19, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 24)) },
  { key := { q := 20, n := 19, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 25)) },
  { key := { q := 20, n := 19, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 26)) },
  { key := { q := 20, n := 19, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 27)) },
  { key := { q := 20, n := 19, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 28)) },
  { key := { q := 20, n := 19, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 29)) },
  { key := { q := 20, n := 19, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 30)) },
  { key := { q := 20, n := 19, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 31)) },
  { key := { q := 20, n := 19, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 32)) },
  { key := { q := 20, n := 19, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 33)) },
  { key := { q := 20, n := 19, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 34)) },
  { key := { q := 20, n := 19, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 35)) },
  { key := { q := 20, n := 19, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 36)) },
  { key := { q := 20, n := 19, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 37)) },
  { key := { q := 20, n := 19, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 38)) },
  { key := { q := 20, n := 19, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 39)) },
  { key := { q := 20, n := 19, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 40)) },
  { key := { q := 20, n := 19, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 41)) },
  { key := { q := 20, n := 19, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 42)) },
  { key := { q := 20, n := 19, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 43)) },
  { key := { q := 20, n := 19, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 44)) },
  { key := { q := 20, n := 19, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 45)) },
  { key := { q := 20, n := 19, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 46)) },
  { key := { q := 20, n := 19, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 47)) },
  { key := { q := 20, n := 19, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 19 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 19 48)) }]

end CoveringCodes.Database
