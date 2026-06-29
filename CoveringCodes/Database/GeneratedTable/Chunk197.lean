import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 197. Do not edit manually.

def precomputedTable_chunk_197 : Array AnyBoundEntry := #[
  { key := { q := 20, n := 25, r := 5 }
    lowerValue := 2518731161113247159902
    upperValue := 41943040000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 5))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 25, r := 6 }
    lowerValue := 39638810618954241366
    upperValue := 2097152000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 6))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 25, r := 7 }
    lowerValue := 765822070705421360
    upperValue := 104857600000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 7))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 25, r := 8 }
    lowerValue := 17841320161557926
    upperValue := 5242880000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 8))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 25, r := 9 }
    lowerValue := 494866598859672
    upperValue := 262144000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 9))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 25, r := 10 }
    lowerValue := 16194978828546
    upperValue := 13107200000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 10))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 25, r := 11 }
    lowerValue := 621421278130
    upperValue := 655360000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 11))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 25, r := 12 }
    lowerValue := 27846315277
    upperValue := 32768000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 12))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 25, r := 13 }
    lowerValue := 1454222229
    upperValue := 1638400000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 13))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 25, r := 14 }
    lowerValue := 88482051
    upperValue := 81920000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 14))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 25, r := 15 }
    lowerValue := 6281756
    upperValue := 4096000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 15))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 25, r := 16 }
    lowerValue := 522091
    upperValue := 204800000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 16))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 25, r := 17 }
    lowerValue := 51072
    upperValue := 10240000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 17))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 25, r := 18 }
    lowerValue := 5926
    upperValue := 512000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 18))
    upperTrace := (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1)))))) },
  { key := { q := 20, n := 25, r := 19 }
    lowerValue := 825
    upperValue := 3200000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 19))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) },
  { key := { q := 20, n := 25, r := 20 }
    lowerValue := 140
    upperValue := 160000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 20))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20))) },
  { key := { q := 20, n := 25, r := 21 }
    lowerValue := 30
    upperValue := 8000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 21))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 21))) },
  { key := { q := 20, n := 25, r := 22 }
    lowerValue := 20
    upperValue := 400
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 24 23))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 24 22))) },
  { key := { q := 20, n := 25, r := 23 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 25 24)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 25 23)) },
  { key := { q := 20, n := 25, r := 24 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 25 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 25 24)) },
  { key := { q := 20, n := 25, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 25 25)) },
  { key := { q := 20, n := 25, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 25 26)) },
  { key := { q := 20, n := 25, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 25 27)) },
  { key := { q := 20, n := 25, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 25 28)) },
  { key := { q := 20, n := 25, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 25 29)) },
  { key := { q := 20, n := 25, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 25 30)) },
  { key := { q := 20, n := 25, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 25 31)) },
  { key := { q := 20, n := 25, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 25 32)) },
  { key := { q := 20, n := 25, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 25 33)) },
  { key := { q := 20, n := 25, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 25 34)) },
  { key := { q := 20, n := 25, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 25 35)) },
  { key := { q := 20, n := 25, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 25 36)) },
  { key := { q := 20, n := 25, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 25 37)) },
  { key := { q := 20, n := 25, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 25 38)) },
  { key := { q := 20, n := 25, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 25 39)) },
  { key := { q := 20, n := 25, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 25 40)) },
  { key := { q := 20, n := 25, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 25 41)) },
  { key := { q := 20, n := 25, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 25 42)) },
  { key := { q := 20, n := 25, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 25 43)) },
  { key := { q := 20, n := 25, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 25 44)) },
  { key := { q := 20, n := 25, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 25 45)) },
  { key := { q := 20, n := 25, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 25 46)) },
  { key := { q := 20, n := 25, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 25 47)) },
  { key := { q := 20, n := 25, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 25 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 25 48)) },
  { key := { q := 20, n := 26, r := 0 }
    lowerValue := 6710886400000000000000000000000000
    upperValue := 6710886400000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 26 0)) },
  { key := { q := 20, n := 26, r := 1 }
    lowerValue := 13557346262626262626262626262627
    upperValue := 134217728000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 1))
    upperTrace := (.lengthenFreeN 19 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 26, r := 2 }
    lowerValue := 56958804956713630962485146835
    upperValue := 6710886400000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 2))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 26, r := 3 }
    lowerValue := 373840128971735625768053648
    upperValue := 335544320000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 3))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 26, r := 4 }
    lowerValue := 3413037924874025567153543
    upperValue := 16777216000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 4))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 26, r := 5 }
    lowerValue := 40710518273526063340069
    upperValue := 838860800000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 5))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 26, r := 6 }
    lowerValue := 610290453769004567016
    upperValue := 41943040000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 6))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 26, r := 7 }
    lowerValue := 11203762818540296784
    upperValue := 2097152000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 7))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 26, r := 8 }
    lowerValue := 247342293241975204
    upperValue := 104857600000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 8))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 26, r := 9 }
    lowerValue := 6481532028350973
    upperValue := 5242880000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 9))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 26, r := 10 }
    lowerValue := 199716962816966
    upperValue := 262144000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 10))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 26, r := 11 }
    lowerValue := 7187994080490
    upperValue := 13107200000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 11))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 26, r := 12 }
    lowerValue := 300813103053
    upperValue := 655360000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 12))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 26, r := 13 }
    lowerValue := 14598867338
    upperValue := 32768000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 13))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 26, r := 14 }
    lowerValue := 820777805
    upperValue := 1638400000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 14))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 26, r := 15 }
    lowerValue := 53486808
    upperValue := 81920000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 15))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 26, r := 16 }
    lowerValue := 4048575
    upperValue := 4096000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 16))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 26, r := 17 }
    lowerValue := 357317
    upperValue := 204800000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 17))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 26, r := 18 }
    lowerValue := 36984
    upperValue := 10240000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 18))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 26, r := 19 }
    lowerValue := 4526
    upperValue := 64000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 19))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) },
  { key := { q := 20, n := 26, r := 20 }
    lowerValue := 663
    upperValue := 3200000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 20))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20))) },
  { key := { q := 20, n := 26, r := 21 }
    lowerValue := 118
    upperValue := 160000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 21))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 21))) },
  { key := { q := 20, n := 26, r := 22 }
    lowerValue := 26
    upperValue := 8000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 22))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 24 22))) },
  { key := { q := 20, n := 26, r := 23 }
    lowerValue := 20
    upperValue := 400
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 25 24))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 25 23))) },
  { key := { q := 20, n := 26, r := 24 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 26 25)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 26 24)) },
  { key := { q := 20, n := 26, r := 25 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 26 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 26 25)) },
  { key := { q := 20, n := 26, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 26 26)) },
  { key := { q := 20, n := 26, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 26 27)) },
  { key := { q := 20, n := 26, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 26 28)) },
  { key := { q := 20, n := 26, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 26 29)) },
  { key := { q := 20, n := 26, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 26 30)) },
  { key := { q := 20, n := 26, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 26 31)) },
  { key := { q := 20, n := 26, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 26 32)) },
  { key := { q := 20, n := 26, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 26 33)) },
  { key := { q := 20, n := 26, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 26 34)) },
  { key := { q := 20, n := 26, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 26 35)) },
  { key := { q := 20, n := 26, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 26 36)) },
  { key := { q := 20, n := 26, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 26 37)) },
  { key := { q := 20, n := 26, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 26 38)) },
  { key := { q := 20, n := 26, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 26 39)) },
  { key := { q := 20, n := 26, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 26 40)) },
  { key := { q := 20, n := 26, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 26 41)) },
  { key := { q := 20, n := 26, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 26 42)) },
  { key := { q := 20, n := 26, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 26 43)) },
  { key := { q := 20, n := 26, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 26 44)) },
  { key := { q := 20, n := 26, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 26 45)) },
  { key := { q := 20, n := 26, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 26 46)) },
  { key := { q := 20, n := 26, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 26 47)) },
  { key := { q := 20, n := 26, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 26 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 26 48)) },
  { key := { q := 20, n := 27, r := 0 }
    lowerValue := 134217728000000000000000000000000000
    upperValue := 134217728000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 27 0)) },
  { key := { q := 20, n := 27, r := 1 }
    lowerValue := 261123984435797665369649805447471
    upperValue := 2684354560000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 1))
    upperTrace := (.lengthenFreeN 20 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 27, r := 2 }
    lowerValue := 1054963474159952839457653763019
    upperValue := 134217728000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 2))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 27, r := 3 }
    lowerValue := 6647798789487761146717649507
    upperValue := 6710886400000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 3))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 27, r := 4 }
    lowerValue := 58170315833712687040591862
    upperValue := 335544320000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 4))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 27, r := 5 }
    lowerValue := 663777805783830833861743
    upperValue := 16777216000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 5))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 27, r := 6 }
    lowerValue := 9499951495132836371933
    upperValue := 838860800000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 6))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 27, r := 7 }
    lowerValue := 166128901286022299133
    upperValue := 41943040000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 7))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 27, r := 8 }
    lowerValue := 3485025428732589335
    upperValue := 2097152000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 8))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 27, r := 9 }
    lowerValue := 86542197087900000
    upperValue := 104857600000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 9))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 27, r := 10 }
    lowerValue := 2519370283001287
    upperValue := 5242880000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 10))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 27, r := 11 }
    lowerValue := 85376862481378
    upperValue := 262144000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 11))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 27, r := 12 }
    lowerValue := 3351419923542
    upperValue := 13107200000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 12))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 27, r := 13 }
    lowerValue := 151905725299
    upperValue := 655360000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 13))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 27, r := 14 }
    lowerValue := 7937051678
    upperValue := 32768000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 14))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 27, r := 15 }
    lowerValue := 477954661
    upperValue := 1638400000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 15))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 27, r := 16 }
    lowerValue := 33209997
    upperValue := 81920000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 16))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 27, r := 17 }
    lowerValue := 2669640
    upperValue := 4096000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 17))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 27, r := 18 }
    lowerValue := 249336
    upperValue := 204800000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 18))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 27, r := 19 }
    lowerValue := 27222
    upperValue := 1280000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 19))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) },
  { key := { q := 20, n := 27, r := 20 }
    lowerValue := 3504
    upperValue := 64000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 20))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20))) },
  { key := { q := 20, n := 27, r := 21 }
    lowerValue := 538
    upperValue := 3200000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 21))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 21))) },
  { key := { q := 20, n := 27, r := 22 }
    lowerValue := 100
    upperValue := 160000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 22))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 24 22))) },
  { key := { q := 20, n := 27, r := 23 }
    lowerValue := 23
    upperValue := 8000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 23))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 25 23))) },
  { key := { q := 20, n := 27, r := 24 }
    lowerValue := 20
    upperValue := 400
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 26 25))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 26 24))) },
  { key := { q := 20, n := 27, r := 25 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 27 26)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 27 25)) },
  { key := { q := 20, n := 27, r := 26 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 27 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 27 26)) },
  { key := { q := 20, n := 27, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 27 27)) },
  { key := { q := 20, n := 27, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 27 28)) },
  { key := { q := 20, n := 27, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 27 29)) },
  { key := { q := 20, n := 27, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 27 30)) },
  { key := { q := 20, n := 27, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 27 31)) },
  { key := { q := 20, n := 27, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 27 32)) },
  { key := { q := 20, n := 27, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 27 33)) },
  { key := { q := 20, n := 27, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 27 34)) },
  { key := { q := 20, n := 27, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 27 35)) },
  { key := { q := 20, n := 27, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 27 36)) },
  { key := { q := 20, n := 27, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 27 37)) },
  { key := { q := 20, n := 27, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 27 38)) },
  { key := { q := 20, n := 27, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 27 39)) },
  { key := { q := 20, n := 27, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 27 40)) },
  { key := { q := 20, n := 27, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 27 41)) },
  { key := { q := 20, n := 27, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 27 42)) },
  { key := { q := 20, n := 27, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 27 43)) },
  { key := { q := 20, n := 27, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 27 44)) },
  { key := { q := 20, n := 27, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 27 45)) },
  { key := { q := 20, n := 27, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 27 46)) },
  { key := { q := 20, n := 27, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 27 47)) },
  { key := { q := 20, n := 27, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 27 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 27 48)) },
  { key := { q := 20, n := 28, r := 0 }
    lowerValue := 2684354560000000000000000000000000000
    upperValue := 2684354560000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 28 0)) },
  { key := { q := 20, n := 28, r := 1 }
    lowerValue := 5036312495309568480300187617260788
    upperValue := 53687091200000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 1))
    upperTrace := (.lengthenFreeN 21 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 28, r := 2 }
    lowerValue := 19595116175515179829331853917411
    upperValue := 2684354560000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 2))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 28, r := 3 }
    lowerValue := 118739578649604161529078839258
    upperValue := 134217728000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 3))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 28, r := 4 }
    lowerValue := 997556610131246282534598500
    upperValue := 6710886400000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 4))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 28, r := 5 }
    lowerValue := 10910150391288614394930753
    upperValue := 335544320000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 5))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 28, r := 6 }
    lowerValue := 149378884500238891884163
    upperValue := 16777216000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 6))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 28, r := 7 }
    lowerValue := 2493942079736228105636
    upperValue := 838860800000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 7))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 28, r := 8 }
    lowerValue := 49836663523820547658
    upperValue := 41943040000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 8))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 28, r := 9 }
    lowerValue := 1175989549169828389
    upperValue := 2097152000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 9))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 28, r := 10 }
    lowerValue := 32442744212319268
    upperValue := 104857600000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 10))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 28, r := 11 }
    lowerValue := 1038726728462503
    upperValue := 5242880000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 11))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 28, r := 12 }
    lowerValue := 38393337059260
    upperValue := 262144000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 12))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 28, r := 13 }
    lowerValue := 1632350684554
    upperValue := 13107200000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 13))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 28, r := 14 }
    lowerValue := 79659394016
    upperValue := 655360000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 14))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 28, r := 15 }
    lowerValue := 4458230622
    upperValue := 32768000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 15))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 28, r := 16 }
    lowerValue := 286269896
    upperValue := 1638400000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 16))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 28, r := 17 }
    lowerValue := 21126034
    upperValue := 81920000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 17))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 28, r := 18 }
    lowerValue := 1797312
    upperValue := 4096000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 18))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 28, r := 19 }
    lowerValue := 177089
    upperValue := 25600000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 19))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) },
  { key := { q := 20, n := 28, r := 20 }
    lowerValue := 20338
    upperValue := 1280000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 20))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20))) },
  { key := { q := 20, n := 28, r := 21 }
    lowerValue := 2746
    upperValue := 64000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 21))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 21))) },
  { key := { q := 20, n := 28, r := 22 }
    lowerValue := 441
    upperValue := 3200000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 22))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 24 22))) },
  { key := { q := 20, n := 28, r := 23 }
    lowerValue := 86
    upperValue := 160000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 23))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 25 23))) },
  { key := { q := 20, n := 28, r := 24 }
    lowerValue := 21
    upperValue := 8000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 24))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 26 24))) },
  { key := { q := 20, n := 28, r := 25 }
    lowerValue := 20
    upperValue := 400
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 27 26))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 27 25))) },
  { key := { q := 20, n := 28, r := 26 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 28 27)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 28 26)) },
  { key := { q := 20, n := 28, r := 27 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 28 27))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 28 27)) },
  { key := { q := 20, n := 28, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 28 28)) },
  { key := { q := 20, n := 28, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 28 29)) },
  { key := { q := 20, n := 28, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 28 30)) },
  { key := { q := 20, n := 28, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 28 31)) },
  { key := { q := 20, n := 28, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 28 32)) },
  { key := { q := 20, n := 28, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 28 33)) },
  { key := { q := 20, n := 28, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 28 34)) },
  { key := { q := 20, n := 28, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 28 35)) },
  { key := { q := 20, n := 28, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 28 36)) },
  { key := { q := 20, n := 28, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 28 37)) },
  { key := { q := 20, n := 28, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 28 38)) },
  { key := { q := 20, n := 28, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 28 39)) },
  { key := { q := 20, n := 28, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 28 40)) },
  { key := { q := 20, n := 28, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 28 41)) },
  { key := { q := 20, n := 28, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 28 42)) },
  { key := { q := 20, n := 28, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 28 43)) },
  { key := { q := 20, n := 28, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 28 44)) },
  { key := { q := 20, n := 28, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 28 45)) },
  { key := { q := 20, n := 28, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 28 46)) },
  { key := { q := 20, n := 28, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 28 47)) },
  { key := { q := 20, n := 28, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 28 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 28 48)) },
  { key := { q := 20, n := 29, r := 0 }
    lowerValue := 53687091200000000000000000000000000000
    upperValue := 53687091200000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 29 0)) },
  { key := { q := 20, n := 29, r := 1 }
    lowerValue := 97259223188405797101449275362318841
    upperValue := 1073741824000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 1))
    upperTrace := (.lengthenFreeN 22 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 29, r := 2 }
    lowerValue := 364925374189426174907217335744097
    upperValue := 53687091200000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 2))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 29, r := 3 }
    lowerValue := 2129603159139360467219549903880
    upperValue := 2684354560000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 3))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 29, r := 4 }
    lowerValue := 17204842494616525736369060310
    upperValue := 134217728000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 4))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 29, r := 5 }
    lowerValue := 180661450800902095716891941
    upperValue := 6710886400000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 5))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 29, r := 6 }
    lowerValue := 2370824412229333830933767
    upperValue := 335544320000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 6))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 29, r := 7 }
    lowerValue := 37866956843071604670562
    upperValue := 16777216000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 7))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 29, r := 8 }
    lowerValue := 722438705171139065491
    upperValue := 838860800000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 8))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 29, r := 9 }
    lowerValue := 16239129383156490755
    upperValue := 41943040000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 9))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 29, r := 10 }
    lowerValue := 425711807457880391
    upperValue := 2097152000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 10))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 29, r := 11 }
    lowerValue := 12916857303249631
    upperValue := 104857600000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 11))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 29, r := 12 }
    lowerValue := 451082257752611
    upperValue := 5242880000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 12))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 29, r := 13 }
    lowerValue := 18058837589785
    upperValue := 262144000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 13))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 29, r := 14 }
    lowerValue := 826681886305
    upperValue := 13107200000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 14))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 29, r := 15 }
    lowerValue := 43213369441
    upperValue := 655360000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 15))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 29, r := 16 }
    lowerValue := 2578985489
    upperValue := 32768000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 16))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 29, r := 17 }
    lowerValue := 175892377
    upperValue := 1638400000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 17))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 29, r := 18 }
    lowerValue := 13738616
    upperValue := 81920000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 18))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 29, r := 19 }
    lowerValue := 1233180
    upperValue := 512000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 19))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) },
  { key := { q := 20, n := 29, r := 20 }
    lowerValue := 127827
    upperValue := 25600000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 20))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20))) },
  { key := { q := 20, n := 29, r := 21 }
    lowerValue := 15404
    upperValue := 1280000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 21))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 21))) },
  { key := { q := 20, n := 29, r := 22 }
    lowerValue := 2177
    upperValue := 64000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 22))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 24 22))) },
  { key := { q := 20, n := 29, r := 23 }
    lowerValue := 365
    upperValue := 3200000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 23))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 25 23))) },
  { key := { q := 20, n := 29, r := 24 }
    lowerValue := 74
    upperValue := 160000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 24))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 26 24))) },
  { key := { q := 20, n := 29, r := 25 }
    lowerValue := 20
    upperValue := 8000
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 27 26)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 27 25))) },
  { key := { q := 20, n := 29, r := 26 }
    lowerValue := 20
    upperValue := 400
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 28 27))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 28 26))) },
  { key := { q := 20, n := 29, r := 27 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 29 28)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 29 27)) },
  { key := { q := 20, n := 29, r := 28 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 29 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 29 28)) },
  { key := { q := 20, n := 29, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 29 29)) },
  { key := { q := 20, n := 29, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 29 30)) },
  { key := { q := 20, n := 29, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 29 31)) },
  { key := { q := 20, n := 29, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 29 32)) },
  { key := { q := 20, n := 29, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 29 33)) },
  { key := { q := 20, n := 29, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 29 34)) },
  { key := { q := 20, n := 29, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 29 35)) },
  { key := { q := 20, n := 29, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 29 36)) },
  { key := { q := 20, n := 29, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 29 37)) },
  { key := { q := 20, n := 29, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 29 38)) },
  { key := { q := 20, n := 29, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 29 39)) },
  { key := { q := 20, n := 29, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 29 40)) },
  { key := { q := 20, n := 29, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 29 41)) },
  { key := { q := 20, n := 29, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 29 42)) },
  { key := { q := 20, n := 29, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 29 43)) },
  { key := { q := 20, n := 29, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 29 44)) },
  { key := { q := 20, n := 29, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 29 45)) },
  { key := { q := 20, n := 29, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 29 46)) },
  { key := { q := 20, n := 29, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 29 47)) },
  { key := { q := 20, n := 29, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 29 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 29 48)) },
  { key := { q := 20, n := 30, r := 0 }
    lowerValue := 1073741824000000000000000000000000000000
    upperValue := 1073741824000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 30 0)) },
  { key := { q := 20, n := 30, r := 1 }
    lowerValue := 1880458535901926444833625218914185640
    upperValue := 21474836480000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 1))
    upperTrace := (.lengthenFreeN 23 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 30, r := 2 }
    lowerValue := 6812823268149689732624392472367804
    upperValue := 1073741824000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 2))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 30, r := 3 }
    lowerValue := 38340875780472631708472435744488
    upperValue := 53687091200000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 3))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 30, r := 4 }
    lowerValue := 298307014222065151158610303749
    upperValue := 2684354560000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 4))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 30, r := 5 }
    lowerValue := 3012249886847948002221534698
    upperValue := 134217728000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 5))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 30, r := 6 }
    lowerValue := 37953307639725782723487638
    upperValue := 6710886400000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 6))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 30, r := 7 }
    lowerValue := 581018054549199361176393
    upperValue := 335544320000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 7))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 30, r := 8 }
    lowerValue := 10604694557006398333993
    upperValue := 16777216000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 8))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 30, r := 9 }
    lowerValue := 227584453360535299347
    upperValue := 838860800000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 9))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) }]

end CoveringCodes.Database
