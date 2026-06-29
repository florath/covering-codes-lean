import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 194. Do not edit manually.

def precomputedTable_chunk_194 : Array AnyBoundEntry := #[
  { key := { q := 20, n := 9, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 9 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 9 39)) },
  { key := { q := 20, n := 9, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 9 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 9 40)) },
  { key := { q := 20, n := 9, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 9 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 9 41)) },
  { key := { q := 20, n := 9, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 9 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 9 42)) },
  { key := { q := 20, n := 9, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 9 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 9 43)) },
  { key := { q := 20, n := 9, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 9 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 9 44)) },
  { key := { q := 20, n := 9, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 9 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 9 45)) },
  { key := { q := 20, n := 9, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 9 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 9 46)) },
  { key := { q := 20, n := 9, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 9 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 9 47)) },
  { key := { q := 20, n := 9, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 9 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 9 48)) },
  { key := { q := 20, n := 10, r := 0 }
    lowerValue := 10240000000000
    upperValue := 10240000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 10 0)) },
  { key := { q := 20, n := 10, r := 1 }
    lowerValue := 53612565446
    upperValue := 204800000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 1))
    upperTrace := (.lengthenFreeN 3 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 10, r := 2 }
    lowerValue := 623022634
    upperValue := 10240000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 2))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 10, r := 3 }
    lowerValue := 12197505
    upperValue := 512000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 3))
    upperTrace := (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1)))))) },
  { key := { q := 20, n := 10, r := 4 }
    lowerValue := 363032
    upperValue := 25600000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 4))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 20) (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 10, r := 5 }
    lowerValue := 15702
    upperValue := 1280000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 5))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 20) (@UpperTrace.alphabetExpand 10 20 2 6 1 20000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1)))) },
  { key := { q := 20, n := 10, r := 6 }
    lowerValue := 973
    upperValue := 80000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 6))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 10, r := 7 }
    lowerValue := 87
    upperValue := 4000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 7))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1)))) },
  { key := { q := 20, n := 10, r := 8 }
    lowerValue := 20
    upperValue := 200
    lowerTrace := (.radiusBack (by decide : 8 ≤ 9) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 10 9)))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 20) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))) },
  { key := { q := 20, n := 10, r := 9 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 10 9))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 10 9)) },
  { key := { q := 20, n := 10, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 10)) },
  { key := { q := 20, n := 10, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 11)) },
  { key := { q := 20, n := 10, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 12)) },
  { key := { q := 20, n := 10, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 13)) },
  { key := { q := 20, n := 10, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 14)) },
  { key := { q := 20, n := 10, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 15)) },
  { key := { q := 20, n := 10, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 16)) },
  { key := { q := 20, n := 10, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 17)) },
  { key := { q := 20, n := 10, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 18)) },
  { key := { q := 20, n := 10, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 19)) },
  { key := { q := 20, n := 10, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 20)) },
  { key := { q := 20, n := 10, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 21)) },
  { key := { q := 20, n := 10, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 22)) },
  { key := { q := 20, n := 10, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 23)) },
  { key := { q := 20, n := 10, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 24)) },
  { key := { q := 20, n := 10, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 25)) },
  { key := { q := 20, n := 10, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 26)) },
  { key := { q := 20, n := 10, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 27)) },
  { key := { q := 20, n := 10, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 28)) },
  { key := { q := 20, n := 10, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 29)) },
  { key := { q := 20, n := 10, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 30)) },
  { key := { q := 20, n := 10, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 31)) },
  { key := { q := 20, n := 10, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 32)) },
  { key := { q := 20, n := 10, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 33)) },
  { key := { q := 20, n := 10, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 34)) },
  { key := { q := 20, n := 10, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 35)) },
  { key := { q := 20, n := 10, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 36)) },
  { key := { q := 20, n := 10, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 37)) },
  { key := { q := 20, n := 10, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 38)) },
  { key := { q := 20, n := 10, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 39)) },
  { key := { q := 20, n := 10, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 40)) },
  { key := { q := 20, n := 10, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 41)) },
  { key := { q := 20, n := 10, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 42)) },
  { key := { q := 20, n := 10, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 43)) },
  { key := { q := 20, n := 10, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 44)) },
  { key := { q := 20, n := 10, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 45)) },
  { key := { q := 20, n := 10, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 46)) },
  { key := { q := 20, n := 10, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 47)) },
  { key := { q := 20, n := 10, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 10 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 10 48)) },
  { key := { q := 20, n := 11, r := 0 }
    lowerValue := 204800000000000
    upperValue := 204800000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 11 0)) },
  { key := { q := 20, n := 11, r := 1 }
    lowerValue := 975238095239
    upperValue := 4096000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 1))
    upperTrace := (.lengthenFreeN 4 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 11, r := 2 }
    lowerValue := 10206827810
    upperValue := 204800000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 2))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 11, r := 3 }
    lowerValue := 177808648
    upperValue := 10240000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 3))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 11, r := 4 }
    lowerValue := 4637920
    upperValue := 512000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 4))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1)))))) },
  { key := { q := 20, n := 11, r := 5 }
    lowerValue := 172374
    upperValue := 25600000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 5))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 20) (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 11, r := 6 }
    lowerValue := 8935
    upperValue := 1280000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 6))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 20) (@UpperTrace.alphabetExpand 10 20 2 6 1 20000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1)))) },
  { key := { q := 20, n := 11, r := 7 }
    lowerValue := 645
    upperValue := 80000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 7))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 11, r := 8 }
    lowerValue := 66
    upperValue := 4000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 8))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1)))) },
  { key := { q := 20, n := 11, r := 9 }
    lowerValue := 20
    upperValue := 200
    lowerTrace := (.radiusBack (by decide : 9 ≤ 10) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 11 10)))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 20) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))) },
  { key := { q := 20, n := 11, r := 10 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 11 10))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 11 10)) },
  { key := { q := 20, n := 11, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 11)) },
  { key := { q := 20, n := 11, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 12)) },
  { key := { q := 20, n := 11, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 13)) },
  { key := { q := 20, n := 11, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 14)) },
  { key := { q := 20, n := 11, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 15)) },
  { key := { q := 20, n := 11, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 16)) },
  { key := { q := 20, n := 11, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 17)) },
  { key := { q := 20, n := 11, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 18)) },
  { key := { q := 20, n := 11, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 19)) },
  { key := { q := 20, n := 11, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 20)) },
  { key := { q := 20, n := 11, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 21)) },
  { key := { q := 20, n := 11, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 22)) },
  { key := { q := 20, n := 11, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 23)) },
  { key := { q := 20, n := 11, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 24)) },
  { key := { q := 20, n := 11, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 25)) },
  { key := { q := 20, n := 11, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 26)) },
  { key := { q := 20, n := 11, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 27)) },
  { key := { q := 20, n := 11, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 28)) },
  { key := { q := 20, n := 11, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 29)) },
  { key := { q := 20, n := 11, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 30)) },
  { key := { q := 20, n := 11, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 31)) },
  { key := { q := 20, n := 11, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 32)) },
  { key := { q := 20, n := 11, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 33)) },
  { key := { q := 20, n := 11, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 34)) },
  { key := { q := 20, n := 11, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 35)) },
  { key := { q := 20, n := 11, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 36)) },
  { key := { q := 20, n := 11, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 37)) },
  { key := { q := 20, n := 11, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 38)) },
  { key := { q := 20, n := 11, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 39)) },
  { key := { q := 20, n := 11, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 40)) },
  { key := { q := 20, n := 11, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 41)) },
  { key := { q := 20, n := 11, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 42)) },
  { key := { q := 20, n := 11, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 43)) },
  { key := { q := 20, n := 11, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 44)) },
  { key := { q := 20, n := 11, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 45)) },
  { key := { q := 20, n := 11, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 46)) },
  { key := { q := 20, n := 11, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 47)) },
  { key := { q := 20, n := 11, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 11 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 11 48)) },
  { key := { q := 20, n := 12, r := 0 }
    lowerValue := 4096000000000000
    upperValue := 4096000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 12 0)) },
  { key := { q := 20, n := 12, r := 1 }
    lowerValue := 17886462882097
    upperValue := 81920000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 1))
    upperTrace := (.lengthenFreeN 5 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 12, r := 2 }
    lowerValue := 170276449803
    upperValue := 4096000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 2))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 12, r := 3 }
    lowerValue := 2671824192
    upperValue := 204800000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 3))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 12, r := 4 }
    lowerValue := 62021204
    upperValue := 10240000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 4))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 12, r := 5 }
    lowerValue := 2020609
    upperValue := 512000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 5))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1)))))) },
  { key := { q := 20, n := 12, r := 6 }
    lowerValue := 90027
    upperValue := 25600000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 6))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 20) (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 12, r := 7 }
    lowerValue := 5437
    upperValue := 1280000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 7))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 20) (@UpperTrace.alphabetExpand 10 20 2 6 1 20000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1)))) },
  { key := { q := 20, n := 12, r := 8 }
    lowerValue := 448
    upperValue := 80000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 8))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 12, r := 9 }
    lowerValue := 52
    upperValue := 4000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 9))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1)))) },
  { key := { q := 20, n := 12, r := 10 }
    lowerValue := 20
    upperValue := 200
    lowerTrace := (.radiusBack (by decide : 10 ≤ 11) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 12 11)))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 20) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))) },
  { key := { q := 20, n := 12, r := 11 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 12 11))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 12 11)) },
  { key := { q := 20, n := 12, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 12)) },
  { key := { q := 20, n := 12, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 13)) },
  { key := { q := 20, n := 12, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 14)) },
  { key := { q := 20, n := 12, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 15)) },
  { key := { q := 20, n := 12, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 16)) },
  { key := { q := 20, n := 12, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 17)) },
  { key := { q := 20, n := 12, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 18)) },
  { key := { q := 20, n := 12, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 19)) },
  { key := { q := 20, n := 12, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 20)) },
  { key := { q := 20, n := 12, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 21)) },
  { key := { q := 20, n := 12, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 22)) },
  { key := { q := 20, n := 12, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 23)) },
  { key := { q := 20, n := 12, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 24)) },
  { key := { q := 20, n := 12, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 25)) },
  { key := { q := 20, n := 12, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 26)) },
  { key := { q := 20, n := 12, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 27)) },
  { key := { q := 20, n := 12, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 28)) },
  { key := { q := 20, n := 12, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 29)) },
  { key := { q := 20, n := 12, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 30)) },
  { key := { q := 20, n := 12, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 31)) },
  { key := { q := 20, n := 12, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 32)) },
  { key := { q := 20, n := 12, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 33)) },
  { key := { q := 20, n := 12, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 34)) },
  { key := { q := 20, n := 12, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 35)) },
  { key := { q := 20, n := 12, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 36)) },
  { key := { q := 20, n := 12, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 37)) },
  { key := { q := 20, n := 12, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 38)) },
  { key := { q := 20, n := 12, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 39)) },
  { key := { q := 20, n := 12, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 40)) },
  { key := { q := 20, n := 12, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 41)) },
  { key := { q := 20, n := 12, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 42)) },
  { key := { q := 20, n := 12, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 43)) },
  { key := { q := 20, n := 12, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 44)) },
  { key := { q := 20, n := 12, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 45)) },
  { key := { q := 20, n := 12, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 46)) },
  { key := { q := 20, n := 12, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 47)) },
  { key := { q := 20, n := 12, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 12 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 12 48)) },
  { key := { q := 20, n := 13, r := 0 }
    lowerValue := 81920000000000000
    upperValue := 81920000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 13 0)) },
  { key := { q := 20, n := 13, r := 1 }
    lowerValue := 330322580645162
    upperValue := 1638400000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 1))
    upperTrace := (.lengthenFreeN 6 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 13, r := 2 }
    lowerValue := 2883897768078
    upperValue := 81920000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 2))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 13, r := 3 }
    lowerValue := 41164174305
    upperValue := 4096000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 3))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 13, r := 4 }
    lowerValue := 860779118
    upperValue := 204800000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 4))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 13, r := 5 }
    lowerValue := 24961083
    upperValue := 10240000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 5))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 13, r := 6 }
    lowerValue := 975092
    upperValue := 512000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 6))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1)))))) },
  { key := { q := 20, n := 13, r := 7 }
    lowerValue := 50634
    upperValue := 25600000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 7))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 20) (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 13, r := 8 }
    lowerValue := 3490
    upperValue := 1280000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 8))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 20) (@UpperTrace.alphabetExpand 10 20 2 6 1 20000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1)))) },
  { key := { q := 20, n := 13, r := 9 }
    lowerValue := 323
    upperValue := 80000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 9))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 13, r := 10 }
    lowerValue := 41
    upperValue := 4000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 10))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1)))) },
  { key := { q := 20, n := 13, r := 11 }
    lowerValue := 20
    upperValue := 200
    lowerTrace := (.radiusBack (by decide : 11 ≤ 12) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 13 12)))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 20) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))) },
  { key := { q := 20, n := 13, r := 12 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 13 12))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 13 12)) },
  { key := { q := 20, n := 13, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 13)) },
  { key := { q := 20, n := 13, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 14)) },
  { key := { q := 20, n := 13, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 15)) },
  { key := { q := 20, n := 13, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 16)) },
  { key := { q := 20, n := 13, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 17)) },
  { key := { q := 20, n := 13, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 18)) },
  { key := { q := 20, n := 13, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 19)) },
  { key := { q := 20, n := 13, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 20)) },
  { key := { q := 20, n := 13, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 21)) },
  { key := { q := 20, n := 13, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 22)) },
  { key := { q := 20, n := 13, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 23)) },
  { key := { q := 20, n := 13, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 24)) },
  { key := { q := 20, n := 13, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 25)) },
  { key := { q := 20, n := 13, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 26)) },
  { key := { q := 20, n := 13, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 27)) },
  { key := { q := 20, n := 13, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 28)) },
  { key := { q := 20, n := 13, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 29)) },
  { key := { q := 20, n := 13, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 30)) },
  { key := { q := 20, n := 13, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 31)) },
  { key := { q := 20, n := 13, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 32)) },
  { key := { q := 20, n := 13, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 33)) },
  { key := { q := 20, n := 13, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 34)) },
  { key := { q := 20, n := 13, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 35)) },
  { key := { q := 20, n := 13, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 36)) },
  { key := { q := 20, n := 13, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 37)) },
  { key := { q := 20, n := 13, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 38)) },
  { key := { q := 20, n := 13, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 39)) },
  { key := { q := 20, n := 13, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 40)) },
  { key := { q := 20, n := 13, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 41)) },
  { key := { q := 20, n := 13, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 42)) },
  { key := { q := 20, n := 13, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 43)) },
  { key := { q := 20, n := 13, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 44)) },
  { key := { q := 20, n := 13, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 45)) },
  { key := { q := 20, n := 13, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 46)) },
  { key := { q := 20, n := 13, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 47)) },
  { key := { q := 20, n := 13, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 13 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 13 48)) },
  { key := { q := 20, n := 14, r := 0 }
    lowerValue := 1638400000000000000
    upperValue := 1638400000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 14 0)) },
  { key := { q := 20, n := 14, r := 1 }
    lowerValue := 6136329588014982
    upperValue := 32768000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 1))
    upperTrace := (.lengthenFreeN 7 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 14, r := 2 }
    lowerValue := 49471586448458
    upperValue := 1638400000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 2))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 14, r := 3 }
    lowerValue := 647641665686
    upperValue := 81920000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 3))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 14, r := 4 }
    lowerValue := 12320546418
    upperValue := 4096000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 4))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 14, r := 5 }
    lowerValue := 321877748
    upperValue := 204800000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 5))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 14, r := 6 }
    lowerValue := 11193634
    upperValue := 10240000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 6))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 14, r := 7 }
    lowerValue := 509749
    upperValue := 512000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 7))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1)))))) },
  { key := { q := 20, n := 14, r := 8 }
    lowerValue := 30220
    upperValue := 25600000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 8))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 20) (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 14, r := 9 }
    lowerValue := 2340
    upperValue := 1280000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 9))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 20) (@UpperTrace.alphabetExpand 10 20 2 6 1 20000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1)))) },
  { key := { q := 20, n := 14, r := 10 }
    lowerValue := 240
    upperValue := 80000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 10))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 14, r := 11 }
    lowerValue := 34
    upperValue := 4000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 11))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1)))) },
  { key := { q := 20, n := 14, r := 12 }
    lowerValue := 20
    upperValue := 200
    lowerTrace := (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 14 13)))
    upperTrace := (.lengthenDummyN 11 (by decide : 0 < 20) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))) },
  { key := { q := 20, n := 14, r := 13 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 14 13))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 14 13)) },
  { key := { q := 20, n := 14, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 14)) },
  { key := { q := 20, n := 14, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 15)) },
  { key := { q := 20, n := 14, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 16)) },
  { key := { q := 20, n := 14, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 17)) },
  { key := { q := 20, n := 14, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 18)) },
  { key := { q := 20, n := 14, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 19)) },
  { key := { q := 20, n := 14, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 20)) },
  { key := { q := 20, n := 14, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 21)) },
  { key := { q := 20, n := 14, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 22)) },
  { key := { q := 20, n := 14, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 23)) },
  { key := { q := 20, n := 14, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 24)) },
  { key := { q := 20, n := 14, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 25)) },
  { key := { q := 20, n := 14, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 26)) },
  { key := { q := 20, n := 14, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 27)) },
  { key := { q := 20, n := 14, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 28)) },
  { key := { q := 20, n := 14, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 29)) },
  { key := { q := 20, n := 14, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 30)) },
  { key := { q := 20, n := 14, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 31)) },
  { key := { q := 20, n := 14, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 32)) },
  { key := { q := 20, n := 14, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 33)) },
  { key := { q := 20, n := 14, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 34)) },
  { key := { q := 20, n := 14, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 35)) },
  { key := { q := 20, n := 14, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 36)) },
  { key := { q := 20, n := 14, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 37)) },
  { key := { q := 20, n := 14, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 38)) },
  { key := { q := 20, n := 14, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 39)) },
  { key := { q := 20, n := 14, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 40)) },
  { key := { q := 20, n := 14, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 41)) },
  { key := { q := 20, n := 14, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 42)) },
  { key := { q := 20, n := 14, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 14 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 14 43)) }]

end CoveringCodes.Database
