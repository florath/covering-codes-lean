import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 200. Do not edit manually.

def precomputedTable_chunk_200 : Array AnyBoundEntry := #[
  { key := { q := 20, n := 40, r := 20 }
    lowerValue := 2016087474169954
    upperValue := 5242880000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 20))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20))) },
  { key := { q := 20, n := 40, r := 21 }
    lowerValue := 110819061332340
    upperValue := 262144000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 21))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 21))) },
  { key := { q := 20, n := 40, r := 22 }
    lowerValue := 6713407348300
    upperValue := 13107200000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 22))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 24 22))) },
  { key := { q := 20, n := 40, r := 23 }
    lowerValue := 448494300335
    upperValue := 655360000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 23))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 25 23))) },
  { key := { q := 20, n := 40, r := 24 }
    lowerValue := 33076656945
    upperValue := 32768000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 24))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 26 24))) },
  { key := { q := 20, n := 40, r := 25 }
    lowerValue := 2697230066
    upperValue := 1638400000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 25))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 27 25))) },
  { key := { q := 20, n := 40, r := 26 }
    lowerValue := 243703255
    upperValue := 81920000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 26))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 28 26))) },
  { key := { q := 20, n := 40, r := 27 }
    lowerValue := 24464009
    upperValue := 4096000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 27))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 29 27))) },
  { key := { q := 20, n := 40, r := 28 }
    lowerValue := 2737724
    upperValue := 204800000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 28))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 30 28))) },
  { key := { q := 20, n := 40, r := 29 }
    lowerValue := 342977
    upperValue := 10240000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 29))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 31 29))) },
  { key := { q := 20, n := 40, r := 30 }
    lowerValue := 48349
    upperValue := 512000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 30))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 32 30))) },
  { key := { q := 20, n := 40, r := 31 }
    lowerValue := 7718
    upperValue := 25600000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 31))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 33 31))) },
  { key := { q := 20, n := 40, r := 32 }
    lowerValue := 1406
    upperValue := 1280000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 32))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 34 32))) },
  { key := { q := 20, n := 40, r := 33 }
    lowerValue := 295
    upperValue := 64000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 33))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 35 33))) },
  { key := { q := 20, n := 40, r := 34 }
    lowerValue := 73
    upperValue := 3200000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 34))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 36 34))) },
  { key := { q := 20, n := 40, r := 35 }
    lowerValue := 21
    upperValue := 160000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 35))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 37 35))) },
  { key := { q := 20, n := 40, r := 36 }
    lowerValue := 20
    upperValue := 8000
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 38 37)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 38 36))) },
  { key := { q := 20, n := 40, r := 37 }
    lowerValue := 20
    upperValue := 400
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 39 38))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 39 37))) },
  { key := { q := 20, n := 40, r := 38 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 40 39)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 40 38)) },
  { key := { q := 20, n := 40, r := 39 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 40 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 40 39)) },
  { key := { q := 20, n := 40, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 40 40)) },
  { key := { q := 20, n := 40, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 40 41)) },
  { key := { q := 20, n := 40, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 40 42)) },
  { key := { q := 20, n := 40, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 40 43)) },
  { key := { q := 20, n := 40, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 40 44)) },
  { key := { q := 20, n := 40, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 40 45)) },
  { key := { q := 20, n := 40, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 40 46)) },
  { key := { q := 20, n := 40, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 40 47)) },
  { key := { q := 20, n := 40, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 40 48)) },
  { key := { q := 20, n := 41, r := 0 }
    lowerValue := 219902325555200000000000000000000000000000000000000000
    upperValue := 219902325555200000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 41 0)) },
  { key := { q := 20, n := 41, r := 1 }
    lowerValue := 281926058404102564102564102564102564102564102564103
    upperValue := 4398046511104000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 1))
    upperTrace := (.lengthenFreeN 34 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 41, r := 2 }
    lowerValue := 740910800388140161725067385444743935309973045823
    upperValue := 219902325555200000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 2))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 41, r := 3 }
    lowerValue := 2995383773598784096818933349533752128688716854
    upperValue := 10995116277760000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 3))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 41, r := 4 }
    lowerValue := 16570113087866685914720410356115912558082446
    upperValue := 549755813888000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 4))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 41, r := 5 }
    lowerValue := 117666895282975818094489730839617067598959
    upperValue := 27487790694400000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 5))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 41, r := 6 }
    lowerValue := 1030444105159108431972014473504076252806
    upperValue := 1374389534720000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 6))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 41, r := 7 }
    lowerValue := 10827625795193364340772120257406381510
    upperValue := 68719476736000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 7))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 41, r := 8 }
    lowerValue := 133837143440857967356875995303209503
    upperValue := 3435973836800000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 8))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 41, r := 9 }
    lowerValue := 1917285487873559239528168003355794
    upperValue := 171798691840000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 9))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 41, r := 10 }
    lowerValue := 31467531176912370964249865662786
    upperValue := 8589934592000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 10))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 41, r := 11 }
    lowerValue := 586351831810123835918864401198
    upperValue := 429496729600000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 11))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 41, r := 12 }
    lowerValue := 12314459415172203004467529458
    upperValue := 21474836480000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 12))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 41, r := 13 }
    lowerValue := 289789754041552066493587728
    upperValue := 1073741824000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 13))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 41, r := 14 }
    lowerValue := 7604879416270205378557731
    upperValue := 53687091200000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 14))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 41, r := 15 }
    lowerValue := 221700454885427036986188
    upperValue := 2684354560000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 15))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 41, r := 16 }
    lowerValue := 7157418210158191134927
    upperValue := 134217728000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 16))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 41, r := 17 }
    lowerValue := 255265451247772590329
    upperValue := 6710886400000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 17))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 41, r := 18 }
    lowerValue := 10038030696948510107
    upperValue := 335544320000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 18))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 41, r := 19 }
    lowerValue := 434630501256818036
    upperValue := 2097152000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 19))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) },
  { key := { q := 20, n := 41, r := 20 }
    lowerValue := 20701556596755295
    upperValue := 104857600000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 20))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20))) },
  { key := { q := 20, n := 41, r := 21 }
    lowerValue := 1084133495050541
    upperValue := 5242880000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 21))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 21))) },
  { key := { q := 20, n := 41, r := 22 }
    lowerValue := 62420744034378
    upperValue := 262144000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 22))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 24 22))) },
  { key := { q := 20, n := 41, r := 23 }
    lowerValue := 3952693987935
    upperValue := 13107200000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 23))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 25 23))) },
  { key := { q := 20, n := 41, r := 24 }
    lowerValue := 275494337490
    upperValue := 655360000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 24))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 26 24))) },
  { key := { q := 20, n := 41, r := 25 }
    lowerValue := 21160126121
    upperValue := 32768000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 25))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 27 25))) },
  { key := { q := 20, n := 41, r := 26 }
    lowerValue := 1794105769
    upperValue := 1638400000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 26))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 28 26))) },
  { key := { q := 20, n := 41, r := 27 }
    lowerValue := 168293439
    upperValue := 81920000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 27))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 29 27))) },
  { key := { q := 20, n := 41, r := 28 }
    lowerValue := 17514391
    upperValue := 4096000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 28))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 30 28))) },
  { key := { q := 20, n := 41, r := 29 }
    lowerValue := 2029279
    upperValue := 204800000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 29))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 31 29))) },
  { key := { q := 20, n := 41, r := 30 }
    lowerValue := 262880
    upperValue := 10240000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 30))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 32 30))) },
  { key := { q := 20, n := 41, r := 31 }
    lowerValue := 38273
    upperValue := 512000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 31))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 33 31))) },
  { key := { q := 20, n := 41, r := 32 }
    lowerValue := 6303
    upperValue := 25600000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 32))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 34 32))) },
  { key := { q := 20, n := 41, r := 33 }
    lowerValue := 1183
    upperValue := 1280000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 33))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 35 33))) },
  { key := { q := 20, n := 41, r := 34 }
    lowerValue := 256
    upperValue := 64000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 34))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 36 34))) },
  { key := { q := 20, n := 41, r := 35 }
    lowerValue := 65
    upperValue := 3200000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 35))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 37 35))) },
  { key := { q := 20, n := 41, r := 36 }
    lowerValue := 20
    upperValue := 160000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 36))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 38 36))) },
  { key := { q := 20, n := 41, r := 37 }
    lowerValue := 20
    upperValue := 8000
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 39 38)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 39 37))) },
  { key := { q := 20, n := 41, r := 38 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 40 39))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 41 38)) },
  { key := { q := 20, n := 41, r := 39 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 41 40)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 41 39)) },
  { key := { q := 20, n := 41, r := 40 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 41 40))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 41 40)) },
  { key := { q := 20, n := 41, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 41 41)) },
  { key := { q := 20, n := 41, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 41 42)) },
  { key := { q := 20, n := 41, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 41 43)) },
  { key := { q := 20, n := 41, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 41 44)) },
  { key := { q := 20, n := 41, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 41 45)) },
  { key := { q := 20, n := 41, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 41 46)) },
  { key := { q := 20, n := 41, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 41 47)) },
  { key := { q := 20, n := 41, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 41 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 41 48)) },
  { key := { q := 20, n := 42, r := 0 }
    lowerValue := 4398046511104000000000000000000000000000000000000000000
    upperValue := 4398046511104000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 42 0)) },
  { key := { q := 20, n := 42, r := 1 }
    lowerValue := 5504438687239048811013767209011264080100125156445557
    upperValue := 87960930222080000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 1))
    upperTrace := (.lengthenFreeN 35 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 42, r := 2 }
    lowerValue := 14113492430216289070021179641871510172646171619280
    upperValue := 4398046511104000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 2))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 42, r := 3 }
    lowerValue := 55634192872573746150364553171583498349334003265
    upperValue := 219902325555200000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 3))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 42, r := 4 }
    lowerValue := 299882841697421566750084558668906338235506125
    upperValue := 10995116277760000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 4))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 42, r := 5 }
    lowerValue := 2073568165359524569838126000536129169154196
    upperValue := 549755813888000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 5))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 42, r := 6 }
    lowerValue := 17668966327396873725218675971579871493798
    upperValue := 27487790694400000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 6))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 42, r := 7 }
    lowerValue := 180513557874969820052046030197321829561
    upperValue := 1374389534720000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 7))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 42, r := 8 }
    lowerValue := 2167660282533758280177456413491557688
    upperValue := 68719476736000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 8))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 42, r := 9 }
    lowerValue := 30141621269424924462586936503175129
    upperValue := 3435973836800000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 9))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 42, r := 10 }
    lowerValue := 479747094002489314856055336968195
    upperValue := 171798691840000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 10))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 42, r := 11 }
    lowerValue := 8660791879303534088291396632629
    upperValue := 8589934592000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 11))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 42, r := 12 }
    lowerValue := 176042229565023245496531460938
    upperValue := 429496729600000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 12))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 42, r := 13 }
    lowerValue := 4005062961881647044550206948
    upperValue := 21474836480000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 13))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 42, r := 14 }
    lowerValue := 101492292393434941609527332
    upperValue := 1073741824000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 14))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 42, r := 15 }
    lowerValue := 2853479554535049246707872
    upperValue := 53687091200000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 15))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 42, r := 16 }
    lowerValue := 88724686648903318433785
    upperValue := 2684354560000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 16))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 42, r := 17 }
    lowerValue := 3043177021208605671559
    upperValue := 134217728000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 17))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 42, r := 18 }
    lowerValue := 114907227877845236667
    upperValue := 6710886400000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 18))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 42, r := 19 }
    lowerValue := 4769164709450628451
    upperValue := 41943040000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 19))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) },
  { key := { q := 20, n := 42, r := 20 }
    lowerValue := 217342071792755924
    upperValue := 2097152000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 20))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20))) },
  { key := { q := 20, n := 42, r := 21 }
    lowerValue := 10868377901595140
    upperValue := 104857600000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 21))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 21))) },
  { key := { q := 20, n := 42, r := 22 }
    lowerValue := 596199248434833
    upperValue := 5242880000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 22))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 24 22))) },
  { key := { q := 20, n := 42, r := 23 }
    lowerValue := 35882291648567
    upperValue := 262144000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 23))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 25 23))) },
  { key := { q := 20, n := 42, r := 24 }
    lowerValue := 2370598825492
    upperValue := 13107200000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 24))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 26 24))) },
  { key := { q := 20, n := 42, r := 25 }
    lowerValue := 172079081065
    upperValue := 655360000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 25))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 27 25))) },
  { key := { q := 20, n := 42, r := 26 }
    lowerValue := 13742908730
    upperValue := 32768000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 26))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 28 26))) },
  { key := { q := 20, n := 42, r := 27 }
    lowerValue := 1209757687
    upperValue := 1638400000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 27))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 29 27))) },
  { key := { q := 20, n := 42, r := 28 }
    lowerValue := 117651246
    upperValue := 81920000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 28))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 30 28))) },
  { key := { q := 20, n := 42, r := 29 }
    lowerValue := 12677419
    upperValue := 4096000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 29))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 31 29))) },
  { key := { q := 20, n := 42, r := 30 }
    lowerValue := 1518953
    upperValue := 204800000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 30))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 32 30))) },
  { key := { q := 20, n := 42, r := 31 }
    lowerValue := 203243
    upperValue := 10240000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 31))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 33 31))) },
  { key := { q := 20, n := 42, r := 32 }
    lowerValue := 30530
    upperValue := 512000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 32))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 34 32))) },
  { key := { q := 20, n := 42, r := 33 }
    lowerValue := 5181
    upperValue := 25600000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 33))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 35 33))) },
  { key := { q := 20, n := 42, r := 34 }
    lowerValue := 1001
    upperValue := 1280000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 34))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 36 34))) },
  { key := { q := 20, n := 42, r := 35 }
    lowerValue := 223
    upperValue := 64000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 35))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 37 35))) },
  { key := { q := 20, n := 42, r := 36 }
    lowerValue := 58
    upperValue := 3200000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 36))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 38 36))) },
  { key := { q := 20, n := 42, r := 37 }
    lowerValue := 20
    upperValue := 160000
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 39 38))))))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 39 37))) },
  { key := { q := 20, n := 42, r := 38 }
    lowerValue := 20
    upperValue := 400
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 40 39)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 41 38))) },
  { key := { q := 20, n := 42, r := 39 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 41 40))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 42 39)) },
  { key := { q := 20, n := 42, r := 40 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 42 41)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 42 40)) },
  { key := { q := 20, n := 42, r := 41 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 42 41))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 42 41)) },
  { key := { q := 20, n := 42, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 42 42)) },
  { key := { q := 20, n := 42, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 42 43)) },
  { key := { q := 20, n := 42, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 42 44)) },
  { key := { q := 20, n := 42, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 42 45)) },
  { key := { q := 20, n := 42, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 42 46)) },
  { key := { q := 20, n := 42, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 42 47)) },
  { key := { q := 20, n := 42, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 42 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 42 48)) },
  { key := { q := 20, n := 43, r := 0 }
    lowerValue := 87960930222080000000000000000000000000000000000000000000
    upperValue := 87960930222080000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 43 0)) },
  { key := { q := 20, n := 43, r := 1 }
    lowerValue := 107531699537995110024449877750611246943765281173594133
    upperValue := 1759218604441600000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 1))
    upperTrace := (.lengthenFreeN 36 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 43, r := 2 }
    lowerValue := 269157469597951046661423924651393355589487180271787
    upperValue := 87960930222080000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 2))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 43, r := 3 }
    lowerValue := 1035154518621522042344386005461453258725168204947
    upperValue := 4398046511104000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 3))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 43, r := 4 }
    lowerValue := 5440471162759447386658193228626783816981002120
    upperValue := 219902325555200000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 4))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 43, r := 5 }
    lowerValue := 36655644110685766550554823748804161853170295
    upperValue := 10995116277760000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 5))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 43, r := 6 }
    lowerValue := 304139232573606436007801997970716309555024
    upperValue := 549755813888000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 6))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 43, r := 7 }
    lowerValue := 3023394198401398471169789574510944357300
    upperValue := 27487790694400000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 7))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 43, r := 8 }
    lowerValue := 35299382283504069878778672716503244207
    upperValue := 1374389534720000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 8))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 43, r := 9 }
    lowerValue := 476849813844196111751309186163907301
    upperValue := 68719476736000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 9))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 43, r := 10 }
    lowerValue := 7367054522250040122958287238158310
    upperValue := 3435973836800000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 10))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 43, r := 11 }
    lowerValue := 128976437599017813181430219647842
    upperValue := 171798691840000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 11))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 43, r := 12 }
    lowerValue := 2539924441256638454046839825761
    upperValue := 8589934592000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 12))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 43, r := 13 }
    lowerValue := 55926438900129130090878898394
    upperValue := 429496729600000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 13))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 43, r := 14 }
    lowerValue := 1370148277951940917749663784
    upperValue := 21474836480000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 14))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 43, r := 15 }
    lowerValue := 37198529299484297036408167
    upperValue := 1073741824000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 15))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 43, r := 16 }
    lowerValue := 1115488934829317388344394
    upperValue := 53687091200000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 16))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 43, r := 17 }
    lowerValue := 36849409451675570151645
    upperValue := 2684354560000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 17))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 43, r := 18 }
    lowerValue := 1338137437913810331399
    upperValue := 134217728000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 18))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 43, r := 19 }
    lowerValue := 53328909764138446842
    upperValue := 838860800000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 19))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) },
  { key := { q := 20, n := 43, r := 20 }
    lowerValue := 2329653372933076386
    upperValue := 41943040000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 20))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20))) },
  { key := { q := 20, n := 43, r := 21 }
    lowerValue := 111464174826855954
    upperValue := 2097152000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 21))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 21))) },
  { key := { q := 20, n := 43, r := 22 }
    lowerValue := 5838593413733957
    upperValue := 104857600000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 22))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 24 22))) },
  { key := { q := 20, n := 43, r := 23 }
    lowerValue := 334798407034255
    upperValue := 5242880000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 23))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 25 23))) },
  { key := { q := 20, n := 43, r := 24 }
    lowerValue := 21022901986342
    upperValue := 262144000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 24))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 26 24))) },
  { key := { q := 20, n := 43, r := 25 }
    lowerValue := 1446535943281
    upperValue := 13107200000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 25))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 27 25))) },
  { key := { q := 20, n := 43, r := 26 }
    lowerValue := 109182731589
    upperValue := 655360000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 26))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 28 26))) },
  { key := { q := 20, n := 43, r := 27 }
    lowerValue := 9053284422
    upperValue := 32768000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 27))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 29 27))) },
  { key := { q := 20, n := 43, r := 28 }
    lowerValue := 826264569
    upperValue := 1638400000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 28))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 30 28))) },
  { key := { q := 20, n := 43, r := 29 }
    lowerValue := 83203444
    upperValue := 81920000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 29))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 31 29))) },
  { key := { q := 20, n := 43, r := 30 }
    lowerValue := 9271810
    upperValue := 4096000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 30))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 32 30))) },
  { key := { q := 20, n := 43, r := 31 }
    lowerValue := 1147523
    upperValue := 204800000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 31))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 33 31))) },
  { key := { q := 20, n := 43, r := 32 }
    lowerValue := 158428
    upperValue := 10240000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 32))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 34 32))) },
  { key := { q := 20, n := 43, r := 33 }
    lowerValue := 24529
    upperValue := 512000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 33))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 35 33))) },
  { key := { q := 20, n := 43, r := 34 }
    lowerValue := 4286
    upperValue := 25600000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 34))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 36 34))) },
  { key := { q := 20, n := 43, r := 35 }
    lowerValue := 852
    upperValue := 1280000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 35))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 37 35))) },
  { key := { q := 20, n := 43, r := 36 }
    lowerValue := 195
    upperValue := 64000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 36))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 38 36))) },
  { key := { q := 20, n := 43, r := 37 }
    lowerValue := 52
    upperValue := 3200000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 37))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 39 37))) },
  { key := { q := 20, n := 43, r := 38 }
    lowerValue := 20
    upperValue := 8000
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 40 39))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 41 38))) },
  { key := { q := 20, n := 43, r := 39 }
    lowerValue := 20
    upperValue := 400
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 41 40)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 42 39))) },
  { key := { q := 20, n := 43, r := 40 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 42 41))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 43 40)) },
  { key := { q := 20, n := 43, r := 41 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 43 42)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 43 41)) },
  { key := { q := 20, n := 43, r := 42 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 43 42))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 43 42)) },
  { key := { q := 20, n := 43, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 43 43)) },
  { key := { q := 20, n := 43, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 43 44)) },
  { key := { q := 20, n := 43, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 43 45)) },
  { key := { q := 20, n := 43, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 43 46)) },
  { key := { q := 20, n := 43, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 43 47)) },
  { key := { q := 20, n := 43, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 43 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 43 48)) },
  { key := { q := 20, n := 44, r := 0 }
    lowerValue := 1759218604441600000000000000000000000000000000000000000000
    upperValue := 1759218604441600000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 44 0)) },
  { key := { q := 20, n := 44, r := 1 }
    lowerValue := 2101814342224133811230585424133811230585424133811230586
    upperValue := 35184372088832000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 1))
    upperTrace := (.lengthenFreeN 37 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 44, r := 2 }
    lowerValue := 5138760262197854198859039033951329514551195730597676
    upperValue := 1759218604441600000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 2))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 44, r := 3 }
    lowerValue := 19293286921159670012391243497865318861898057486391
    upperValue := 87960930222080000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 3))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 44, r := 4 }
    lowerValue := 98930385757071006737581206474798629995779177930
    upperValue := 4398046511104000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 4))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 44, r := 5 }
    lowerValue := 649914620833875992605930783296884966708728031
    upperValue := 219902325555200000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 5))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 44, r := 6 }
    lowerValue := 5254439083535386274976847098834266500246927
    upperValue := 10995116277760000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 6))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 44, r := 7 }
    lowerValue := 50861404120201500432585823830397679196952
    upperValue := 549755813888000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 7))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 44, r := 8 }
    lowerValue := 577810315319511146247583733417755467846
    upperValue := 27487790694400000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 8))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 44, r := 9 }
    lowerValue := 7589126551311935861703680777901022912
    upperValue := 1374389534720000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 9))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 44, r := 10 }
    lowerValue := 113905406830240928933749170078808831
    upperValue := 68719476736000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 10))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 44, r := 11 }
    lowerValue := 1935657973860296149194756766759233
    upperValue := 3435973836800000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 11))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 44, r := 12 }
    lowerValue := 36966784499551032193011079478242
    upperValue := 171798691840000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 12))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 44, r := 13 }
    lowerValue := 788607206749063424677972408973
    upperValue := 8589934592000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 13))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 44, r := 14 }
    lowerValue := 18698928594854279544445615174
    upperValue := 429496729600000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 14))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 44, r := 15 }
    lowerValue := 490798804479084931721318562
    upperValue := 21474836480000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 15))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 44, r := 16 }
    lowerValue := 14212209135503516201855621
    upperValue := 1073741824000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 16))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 44, r := 17 }
    lowerValue := 452792256607189160016238
    upperValue := 53687091200000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 17))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 44, r := 18 }
    lowerValue := 15836322672276489060769
    upperValue := 2684354560000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 18))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 44, r := 19 }
    lowerValue := 606972982941326318864
    upperValue := 16777216000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 19))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) },
  { key := { q := 20, n := 44, r := 20 }
    lowerValue := 25460583293004195891
    upperValue := 838860800000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 20))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20))) },
  { key := { q := 20, n := 44, r := 21 }
    lowerValue := 1167732367010794108
    upperValue := 41943040000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 21))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 21))) },
  { key := { q := 20, n := 44, r := 22 }
    lowerValue := 58525311142276880
    upperValue := 2097152000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 22))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 24 22))) },
  { key := { q := 20, n := 44, r := 23 }
    lowerValue := 3204573319372763
    upperValue := 104857600000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 23))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 25 23))) },
  { key := { q := 20, n := 44, r := 24 }
    lowerValue := 191721943143413
    upperValue := 5242880000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 24))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 26 24))) },
  { key := { q := 20, n := 44, r := 25 }
    lowerValue := 12538532633971
    upperValue := 262144000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 25))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 27 25))) },
  { key := { q := 20, n := 44, r := 26 }
    lowerValue := 897111012813
    upperValue := 13107200000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 26))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 28 26))) },
  { key := { q := 20, n := 44, r := 27 }
    lowerValue := 70304368595
    upperValue := 655360000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 27))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 29 27))) },
  { key := { q := 20, n := 44, r := 28 }
    lowerValue := 6044209836
    upperValue := 32768000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 28))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 30 28))) },
  { key := { q := 20, n := 44, r := 29 }
    lowerValue := 571203528
    upperValue := 1638400000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 29))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 31 29))) },
  { key := { q := 20, n := 44, r := 30 }
    lowerValue := 59486676
    upperValue := 81920000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 30))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 32 30))) },
  { key := { q := 20, n := 44, r := 31 }
    lowerValue := 6847755
    upperValue := 4096000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 31))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 33 31))) },
  { key := { q := 20, n := 44, r := 32 }
    lowerValue := 874530
    upperValue := 204800000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 32))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 34 32))) },
  { key := { q := 20, n := 44, r := 33 }
    lowerValue := 124458
    upperValue := 10240000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 33))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 35 33))) },
  { key := { q := 20, n := 44, r := 34 }
    lowerValue := 19843
    upperValue := 512000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 34))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 36 34))) },
  { key := { q := 20, n := 44, r := 35 }
    lowerValue := 3567
    upperValue := 25600000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 35))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 37 35))) },
  { key := { q := 20, n := 44, r := 36 }
    lowerValue := 729
    upperValue := 1280000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 36))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 38 36))) },
  { key := { q := 20, n := 44, r := 37 }
    lowerValue := 171
    upperValue := 64000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 37))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 39 37))) },
  { key := { q := 20, n := 44, r := 38 }
    lowerValue := 47
    upperValue := 160000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 38))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 41 38))) },
  { key := { q := 20, n := 44, r := 39 }
    lowerValue := 20
    upperValue := 8000
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 41 40))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 42 39))) },
  { key := { q := 20, n := 44, r := 40 }
    lowerValue := 20
    upperValue := 400
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 42 41)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 43 40))) },
  { key := { q := 20, n := 44, r := 41 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 43 42))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 44 41)) },
  { key := { q := 20, n := 44, r := 42 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 44 43)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 44 42)) },
  { key := { q := 20, n := 44, r := 43 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 44 43))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 44 43)) },
  { key := { q := 20, n := 44, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 44 44)) },
  { key := { q := 20, n := 44, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 44 45)) },
  { key := { q := 20, n := 44, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 44 46)) },
  { key := { q := 20, n := 44, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 44 47)) },
  { key := { q := 20, n := 44, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 44 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 44 48)) },
  { key := { q := 20, n := 45, r := 0 }
    lowerValue := 35184372088832000000000000000000000000000000000000000000000
    upperValue := 35184372088832000000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 45 0)) },
  { key := { q := 20, n := 45, r := 1 }
    lowerValue := 41103238421532710280373831775700934579439252336448598131
    upperValue := 703687441776640000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 1))
    upperTrace := (.lengthenFreeN 38 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 45, r := 2 }
    lowerValue := 98212881899119599381430637048285256499723653578825724
    upperValue := 35184372088832000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 2))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 45, r := 3 }
    lowerValue := 360172877148443706016870784310321276050018131294156
    upperValue := 1759218604441600000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 3))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 45, r := 4 }
    lowerValue := 1802952383092166155427298992776406596903672299996
    upperValue := 87960930222080000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 4))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 45, r := 5 }
    lowerValue := 11555898375467134487932971247125728949652996300
    upperValue := 4398046511104000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 5))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 45, r := 6 }
    lowerValue := 91095471985409591236389997232710687062911137
    upperValue := 219902325555200000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 6))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 45, r := 7 }
    lowerValue := 859207504252697778243298398554454214738473
    upperValue := 10995116277760000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 7))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 45, r := 8 }
    lowerValue := 9504637433952441851857833808459665038641
    upperValue := 549755813888000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 8))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 45, r := 9 }
    lowerValue := 121469612562708156446009139815920006140
    upperValue := 27487790694400000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 9))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 45, r := 10 }
    lowerValue := 1772610197811492565968116207326813678
    upperValue := 1374389534720000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 10))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 45, r := 11 }
    lowerValue := 29264355385104078092920660353797537
    upperValue := 68719476736000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 11))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 45, r := 12 }
    lowerValue := 542489174349232981254553998428944
    upperValue := 3435973836800000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 12))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 45, r := 13 }
    lowerValue := 11223134666148480569794540777110
    upperValue := 171798691840000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 13))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 45, r := 14 }
    lowerValue := 257824623960437530310832037512
    upperValue := 8589934592000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 14))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 45, r := 15 }
    lowerValue := 6549655385050502530159388618
    upperValue := 429496729600000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 15))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 45, r := 16 }
    lowerValue := 183361016770537983076364865
    upperValue := 21474836480000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 16))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 45, r := 17 }
    lowerValue := 5641117110751582326207292
    upperValue := 1073741824000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 17))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 45, r := 18 }
    lowerValue := 190280797301426627139466
    upperValue := 53687091200000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 18))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 45, r := 19 }
    lowerValue := 7024214965974507151291
    upperValue := 335544320000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 19))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) },
  { key := { q := 20, n := 45, r := 20 }
    lowerValue := 283369308104108260690
    upperValue := 16777216000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 20))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20))) },
  { key := { q := 20, n := 45, r := 21 }
    lowerValue := 12479625699593148595
    upperValue := 838860800000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 21))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 21))) },
  { key := { q := 20, n := 45, r := 22 }
    lowerValue := 599565750204908374
    upperValue := 41943040000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 22))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 24 22))) },
  { key := { q := 20, n := 45, r := 23 }
    lowerValue := 31411973647876023
    upperValue := 2097152000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 23))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 25 23))) },
  { key := { q := 20, n := 45, r := 24 }
    lowerValue := 1794540620543786
    upperValue := 104857600000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 24))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 26 24))) }]

end CoveringCodes.Database
