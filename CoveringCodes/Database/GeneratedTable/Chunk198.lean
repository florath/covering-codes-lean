import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 198. Do not edit manually.

def precomputedTable_chunk_198 : Array AnyBoundEntry := #[
  { key := { q := 20, n := 30, r := 10 }
    lowerValue := 5683399804546323903
    upperValue := 41943040000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 10))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 30, r := 11 }
    lowerValue := 163868147573811136
    upperValue := 2097152000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 11))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 30, r := 12 }
    lowerValue := 5423233781474811
    upperValue := 104857600000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 12))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 30, r := 13 }
    lowerValue := 205137735296621
    upperValue := 5242880000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 13))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 30, r := 14 }
    lowerValue := 8842625868885
    upperValue := 262144000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 14))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 30, r := 15 }
    lowerValue := 433609653582
    upperValue := 13107200000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 15))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 30, r := 16 }
    lowerValue := 24171284061
    upperValue := 655360000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 16))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 30, r := 17 }
    lowerValue := 1532269666
    upperValue := 32768000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 17))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 30, r := 18 }
    lowerValue := 110614492
    upperValue := 1638400000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 18))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 30, r := 19 }
    lowerValue := 9116289
    upperValue := 10240000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 19))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) },
  { key := { q := 20, n := 30, r := 20 }
    lowerValue := 860940
    upperValue := 512000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 20))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20))) },
  { key := { q := 20, n := 30, r := 21 }
    lowerValue := 93650
    upperValue := 25600000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 21))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 21))) },
  { key := { q := 20, n := 30, r := 22 }
    lowerValue := 11814
    upperValue := 1280000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 22))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 24 22))) },
  { key := { q := 20, n := 30, r := 23 }
    lowerValue := 1744
    upperValue := 64000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 23))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 25 23))) },
  { key := { q := 20, n := 30, r := 24 }
    lowerValue := 305
    upperValue := 3200000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 24))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 26 24))) },
  { key := { q := 20, n := 30, r := 25 }
    lowerValue := 64
    upperValue := 160000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 25))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 27 25))) },
  { key := { q := 20, n := 30, r := 26 }
    lowerValue := 20
    upperValue := 8000
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 28 27)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 28 26))) },
  { key := { q := 20, n := 30, r := 27 }
    lowerValue := 20
    upperValue := 400
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 29 28))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 29 27))) },
  { key := { q := 20, n := 30, r := 28 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 30 29)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 30 28)) },
  { key := { q := 20, n := 30, r := 29 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 30 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 30 29)) },
  { key := { q := 20, n := 30, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 30 30)) },
  { key := { q := 20, n := 30, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 30 31)) },
  { key := { q := 20, n := 30, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 30 32)) },
  { key := { q := 20, n := 30, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 30 33)) },
  { key := { q := 20, n := 30, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 30 34)) },
  { key := { q := 20, n := 30, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 30 35)) },
  { key := { q := 20, n := 30, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 30 36)) },
  { key := { q := 20, n := 30, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 30 37)) },
  { key := { q := 20, n := 30, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 30 38)) },
  { key := { q := 20, n := 30, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 30 39)) },
  { key := { q := 20, n := 30, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 30 40)) },
  { key := { q := 20, n := 30, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 30 41)) },
  { key := { q := 20, n := 30, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 30 42)) },
  { key := { q := 20, n := 30, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 30 43)) },
  { key := { q := 20, n := 30, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 30 44)) },
  { key := { q := 20, n := 30, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 30 45)) },
  { key := { q := 20, n := 30, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 30 46)) },
  { key := { q := 20, n := 30, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 30 47)) },
  { key := { q := 20, n := 30, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 30 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 30 48)) },
  { key := { q := 20, n := 31, r := 0 }
    lowerValue := 21474836480000000000000000000000000000000
    upperValue := 21474836480000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 31 0)) },
  { key := { q := 20, n := 31, r := 1 }
    lowerValue := 36398027932203389830508474576271186441
    upperValue := 429496729600000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 1))
    upperTrace := (.lengthenFreeN 24 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 31, r := 2 }
    lowerValue := 127481146181472796889376984951470720
    upperValue := 21474836480000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 2))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 31, r := 3 }
    lowerValue := 692744258485415646494187355603256
    upperValue := 1073741824000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 3))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 31, r := 4 }
    lowerValue := 5197767634382392220517582151691
    upperValue := 53687091200000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 4))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 31, r := 5 }
    lowerValue := 50547104188810823637629930333
    upperValue := 2684354560000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 5))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 31, r := 6 }
    lowerValue := 612449712765737808113057494
    upperValue := 134217728000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 6))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 31, r := 7 }
    lowerValue := 9001985670994057801181048
    upperValue := 6710886400000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 7))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 31, r := 8 }
    lowerValue := 157481454432131172164562
    upperValue := 335544320000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 8))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 31, r := 9 }
    lowerValue := 3233299056662529968859
    upperValue := 16777216000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 9))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 31, r := 10 }
    lowerValue := 77090151139267184570
    upperValue := 838860800000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 10))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 31, r := 11 }
    lowerValue := 2117402195538179613
    upperValue := 41943040000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 11))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 31, r := 12 }
    lowerValue := 66591483322502089
    upperValue := 2097152000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 12))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 31, r := 13 }
    lowerValue := 2387142387542156
    upperValue := 104857600000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 13))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 31, r := 14 }
    lowerValue := 97224589653580
    upperValue := 5242880000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 14))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 31, r := 15 }
    lowerValue := 4489433827956
    upperValue := 262144000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 15))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 31, r := 16 }
    lowerValue := 234770390846
    upperValue := 13107200000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 16))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 31, r := 17 }
    lowerValue := 13901599711
    upperValue := 655360000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 17))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 31, r := 18 }
    lowerValue := 932822208
    upperValue := 32768000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 18))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 31, r := 19 }
    lowerValue := 71057677
    upperValue := 204800000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 19))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) },
  { key := { q := 20, n := 31, r := 20 }
    lowerValue := 6161994
    upperValue := 10240000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 20))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20))) },
  { key := { q := 20, n := 31, r := 21 }
    lowerValue := 610744
    upperValue := 512000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 21))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 21))) },
  { key := { q := 20, n := 31, r := 22 }
    lowerValue := 69558
    upperValue := 25600000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 22))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 24 22))) },
  { key := { q := 20, n := 31, r := 23 }
    lowerValue := 9167
    upperValue := 1280000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 23))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 25 23))) },
  { key := { q := 20, n := 31, r := 24 }
    lowerValue := 1411
    upperValue := 64000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 24))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 26 24))) },
  { key := { q := 20, n := 31, r := 25 }
    lowerValue := 257
    upperValue := 3200000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 25))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 27 25))) },
  { key := { q := 20, n := 31, r := 26 }
    lowerValue := 56
    upperValue := 160000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 26))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 28 26))) },
  { key := { q := 20, n := 31, r := 27 }
    lowerValue := 20
    upperValue := 8000
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 29 28)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 29 27))) },
  { key := { q := 20, n := 31, r := 28 }
    lowerValue := 20
    upperValue := 400
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 30 29))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 30 28))) },
  { key := { q := 20, n := 31, r := 29 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 31 30)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 31 29)) },
  { key := { q := 20, n := 31, r := 30 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 31 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 31 30)) },
  { key := { q := 20, n := 31, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 31 31)) },
  { key := { q := 20, n := 31, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 31 32)) },
  { key := { q := 20, n := 31, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 31 33)) },
  { key := { q := 20, n := 31, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 31 34)) },
  { key := { q := 20, n := 31, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 31 35)) },
  { key := { q := 20, n := 31, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 31 36)) },
  { key := { q := 20, n := 31, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 31 37)) },
  { key := { q := 20, n := 31, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 31 38)) },
  { key := { q := 20, n := 31, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 31 39)) },
  { key := { q := 20, n := 31, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 31 40)) },
  { key := { q := 20, n := 31, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 31 41)) },
  { key := { q := 20, n := 31, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 31 42)) },
  { key := { q := 20, n := 31, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 31 43)) },
  { key := { q := 20, n := 31, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 31 44)) },
  { key := { q := 20, n := 31, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 31 45)) },
  { key := { q := 20, n := 31, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 31 46)) },
  { key := { q := 20, n := 31, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 31 47)) },
  { key := { q := 20, n := 31, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 31 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 31 48)) },
  { key := { q := 20, n := 32, r := 0 }
    lowerValue := 429496729600000000000000000000000000000000
    upperValue := 429496729600000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 32 0)) },
  { key := { q := 20, n := 32, r := 1 }
    lowerValue := 705249145484400656814449917898193760263
    upperValue := 8589934592000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 1))
    upperTrace := (.lengthenFreeN 25 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 32, r := 2 }
    lowerValue := 2390542006512119778476609244983719701
    upperValue := 429496729600000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 2))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 32, r := 3 }
    lowerValue := 12558271910148169731234853022509595
    upperValue := 21474836480000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 3))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 32, r := 4 }
    lowerValue := 90984593783419384318707888435893
    upperValue := 1073741824000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 4))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 32, r := 5 }
    lowerValue := 853280819731351408551571755753
    upperValue := 53687091200000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 5))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 32, r := 6 }
    lowerValue := 9956816646548693592020753370
    upperValue := 2684354560000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 6))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 32, r := 7 }
    lowerValue := 140736488000376193207584902
    upperValue := 134217728000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 7))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 32, r := 8 }
    lowerValue := 2363898683083999099137304
    upperValue := 6710886400000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 8))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 32, r := 9 }
    lowerValue := 46519118973111391216560
    upperValue := 335544320000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 9))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 32, r := 10 }
    lowerValue := 1061110600654869889868
    upperValue := 16777216000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 10))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 32, r := 11 }
    lowerValue := 27826415302034636942
    upperValue := 838860800000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 11))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 32, r := 12 }
    lowerValue := 833673918637651600
    upperValue := 41943040000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 12))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 32, r := 13 }
    lowerValue := 28399704245294862
    upperValue := 2097152000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 13))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 32, r := 14 }
    lowerValue := 1096204484180880
    upperValue := 104857600000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 14))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 32, r := 15 }
    lowerValue := 47827547339662
    upperValue := 5242880000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 15))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 32, r := 16 }
    lowerValue := 2355257527118
    upperValue := 262144000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 16))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 32, r := 17 }
    lowerValue := 130834991377
    upperValue := 13107200000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 17))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 32, r := 18 }
    lowerValue := 8200872754
    upperValue := 655360000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 18))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 32, r := 19 }
    lowerValue := 580696958
    upperValue := 4096000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 19))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) },
  { key := { q := 20, n := 32, r := 20 }
    lowerValue := 46546964
    upperValue := 204800000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 20))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20))) },
  { key := { q := 20, n := 32, r := 21 }
    lowerValue := 4236601
    upperValue := 10240000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 21))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 21))) },
  { key := { q := 20, n := 32, r := 22 }
    lowerValue := 439695
    upperValue := 512000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 22))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 24 22))) },
  { key := { q := 20, n := 32, r := 23 }
    lowerValue := 52323
    upperValue := 25600000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 23))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 25 23))) },
  { key := { q := 20, n := 32, r := 24 }
    lowerValue := 7191
    upperValue := 1280000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 24))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 26 24))) },
  { key := { q := 20, n := 32, r := 25 }
    lowerValue := 1152
    upperValue := 64000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 25))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 27 25))) },
  { key := { q := 20, n := 32, r := 26 }
    lowerValue := 218
    upperValue := 3200000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 26))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 28 26))) },
  { key := { q := 20, n := 32, r := 27 }
    lowerValue := 50
    upperValue := 160000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 27))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 29 27))) },
  { key := { q := 20, n := 32, r := 28 }
    lowerValue := 20
    upperValue := 8000
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 30 29)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 30 28))) },
  { key := { q := 20, n := 32, r := 29 }
    lowerValue := 20
    upperValue := 400
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 31 30))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 31 29))) },
  { key := { q := 20, n := 32, r := 30 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 32 31)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 32 30)) },
  { key := { q := 20, n := 32, r := 31 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 32 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 32 31)) },
  { key := { q := 20, n := 32, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 32 32)) },
  { key := { q := 20, n := 32, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 32 33)) },
  { key := { q := 20, n := 32, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 32 34)) },
  { key := { q := 20, n := 32, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 32 35)) },
  { key := { q := 20, n := 32, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 32 36)) },
  { key := { q := 20, n := 32, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 32 37)) },
  { key := { q := 20, n := 32, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 32 38)) },
  { key := { q := 20, n := 32, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 32 39)) },
  { key := { q := 20, n := 32, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 32 40)) },
  { key := { q := 20, n := 32, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 32 41)) },
  { key := { q := 20, n := 32, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 32 42)) },
  { key := { q := 20, n := 32, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 32 43)) },
  { key := { q := 20, n := 32, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 32 44)) },
  { key := { q := 20, n := 32, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 32 45)) },
  { key := { q := 20, n := 32, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 32 46)) },
  { key := { q := 20, n := 32, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 32 47)) },
  { key := { q := 20, n := 32, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 32 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 32 48)) },
  { key := { q := 20, n := 33, r := 0 }
    lowerValue := 8589934592000000000000000000000000000000000
    upperValue := 8589934592000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 33 0)) },
  { key := { q := 20, n := 33, r := 1 }
    lowerValue := 13678239796178343949044585987261146496816
    upperValue := 171798691840000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 1))
    upperTrace := (.lengthenFreeN 26 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 33, r := 2 }
    lowerValue := 44917978790604279528958982618335459851
    upperValue := 8589934592000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 2))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 33, r := 3 }
    lowerValue := 228371039885744487283172143093757262
    upperValue := 429496729600000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 3))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 33, r := 4 }
    lowerValue := 1599511349472268773819004836940531
    upperValue := 21474836480000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 4))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 33, r := 5 }
    lowerValue := 14484632951926636750299121908463
    upperValue := 1073741824000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 5))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 33, r := 6 }
    lowerValue := 162998252817040645017540537955
    upperValue := 53687091200000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 6))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 33, r := 7 }
    lowerValue := 2218840146490248209043772740
    upperValue := 2684354560000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 7))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 33, r := 8 }
    lowerValue := 35840106629101717013292620
    upperValue := 134217728000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 8))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 33, r := 9 }
    lowerValue := 677183155596578064606857
    upperValue := 6710886400000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 9))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 33, r := 10 }
    lowerValue := 14805569024840147318009
    upperValue := 335544320000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 10))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 33, r := 11 }
    lowerValue := 371451405936966060223
    upperValue := 16777216000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 11))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 33, r := 12 }
    lowerValue := 10625218677519554884
    upperValue := 838860800000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 12))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 33, r := 13 }
    lowerValue := 344813795504110929
    upperValue := 41943040000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 13))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 33, r := 14 }
    lowerValue := 12648144462996765
    upperValue := 2097152000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 14))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 33, r := 15 }
    lowerValue := 522999079309220
    upperValue := 104857600000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 15))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 33, r := 16 }
    lowerValue := 24335559601449
    upperValue := 5242880000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 16))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 33, r := 17 }
    lowerValue := 1273052301212
    upperValue := 262144000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 17))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 33, r := 18 }
    lowerValue := 74861693741
    upperValue := 13107200000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 18))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 33, r := 19 }
    lowerValue := 4951849224
    upperValue := 81920000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 19))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) },
  { key := { q := 20, n := 33, r := 20 }
    lowerValue := 368983389
    upperValue := 4096000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 20))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20))) },
  { key := { q := 20, n := 33, r := 21 }
    lowerValue := 31044901
    upperValue := 204800000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 21))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 21))) },
  { key := { q := 20, n := 33, r := 22 }
    lowerValue := 2959003
    upperValue := 10240000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 22))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 24 22))) },
  { key := { q := 20, n := 33, r := 23 }
    lowerValue := 320904
    upperValue := 512000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 23))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 25 23))) },
  { key := { q := 20, n := 33, r := 24 }
    lowerValue := 39824
    upperValue := 25600000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 24))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 26 24))) },
  { key := { q := 20, n := 33, r := 25 }
    lowerValue := 5697
    upperValue := 1280000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 25))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 27 25))) },
  { key := { q := 20, n := 33, r := 26 }
    lowerValue := 948
    upperValue := 64000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 26))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 28 26))) },
  { key := { q := 20, n := 33, r := 27 }
    lowerValue := 186
    upperValue := 3200000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 27))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 29 27))) },
  { key := { q := 20, n := 33, r := 28 }
    lowerValue := 44
    upperValue := 160000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 28))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 30 28))) },
  { key := { q := 20, n := 33, r := 29 }
    lowerValue := 20
    upperValue := 8000
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 31 30)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 31 29))) },
  { key := { q := 20, n := 33, r := 30 }
    lowerValue := 20
    upperValue := 400
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 32 31))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 32 30))) },
  { key := { q := 20, n := 33, r := 31 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 33 32)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 33 31)) },
  { key := { q := 20, n := 33, r := 32 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 33 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 33 32)) },
  { key := { q := 20, n := 33, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 33 33)) },
  { key := { q := 20, n := 33, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 33 34)) },
  { key := { q := 20, n := 33, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 33 35)) },
  { key := { q := 20, n := 33, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 33 36)) },
  { key := { q := 20, n := 33, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 33 37)) },
  { key := { q := 20, n := 33, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 33 38)) },
  { key := { q := 20, n := 33, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 33 39)) },
  { key := { q := 20, n := 33, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 33 40)) },
  { key := { q := 20, n := 33, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 33 41)) },
  { key := { q := 20, n := 33, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 33 42)) },
  { key := { q := 20, n := 33, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 33 43)) },
  { key := { q := 20, n := 33, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 33 44)) },
  { key := { q := 20, n := 33, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 33 45)) },
  { key := { q := 20, n := 33, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 33 46)) },
  { key := { q := 20, n := 33, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 33 47)) },
  { key := { q := 20, n := 33, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 33 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 33 48)) },
  { key := { q := 20, n := 34, r := 0 }
    lowerValue := 171798691840000000000000000000000000000000000
    upperValue := 171798691840000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 34 0)) },
  { key := { q := 20, n := 34, r := 1 }
    lowerValue := 265531208408037094281298299845440494590418
    upperValue := 3435973836800000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 1))
    upperTrace := (.lengthenFreeN 27 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 34, r := 2 }
    lowerValue := 845599168372972121593951803433611592377
    upperValue := 171798691840000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 2))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 34, r := 3 }
    lowerValue := 4165076874618885290872952453952033466
    upperValue := 8589934592000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 3))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 34, r := 4 }
    lowerValue := 28233080228250974050328086995466167
    upperValue := 429496729600000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 4))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 34, r := 5 }
    lowerValue := 247165896950736173929500868533206
    upperValue := 21474836480000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 5))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 34, r := 6 }
    lowerValue := 2685728143854781848648164452018
    upperValue := 1073741824000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 6))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 34, r := 7 }
    lowerValue := 35257724568554628437510263830
    upperValue := 53687091200000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 7))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 34, r := 8 }
    lowerValue := 548475121502105604129625990
    upperValue := 2684354560000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 8))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 34, r := 9 }
    lowerValue := 9965927898248479091367271
    upperValue := 134217728000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 9))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 34, r := 10 }
    lowerValue := 209205996044130658485615
    upperValue := 6710886400000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 10))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 34, r := 11 }
    lowerValue := 5030885761791279483138
    upperValue := 335544320000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 11))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 34, r := 12 }
    lowerValue := 137678075648976594629
    upperValue := 16777216000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 12))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 34, r := 13 }
    lowerValue := 4265925442291769064
    upperValue := 838860800000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 13))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 34, r := 14 }
    lowerValue := 149069970031759094
    upperValue := 41943040000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 14))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 34, r := 15 }
    lowerValue := 5857808918180125
    upperValue := 2097152000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 15))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 34, r := 16 }
    lowerValue := 258327621247753
    upperValue := 104857600000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 16))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 34, r := 17 }
    lowerValue := 12769238041876
    upperValue := 5242880000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 17))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 34, r := 18 }
    lowerValue := 707145402260
    upperValue := 262144000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 18))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 34, r := 19 }
    lowerValue := 43884081430
    upperValue := 1638400000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 19))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) },
  { key := { q := 20, n := 34, r := 20 }
    lowerValue := 3054787834
    upperValue := 81920000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 20))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20))) },
  { key := { q := 20, n := 34, r := 21 }
    lowerValue := 238936515
    upperValue := 4096000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 21))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 21))) },
  { key := { q := 20, n := 34, r := 22 }
    lowerValue := 21053329
    upperValue := 204800000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 22))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 24 22))) },
  { key := { q := 20, n := 34, r := 23 }
    lowerValue := 2097034
    upperValue := 10240000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 23))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 25 23))) },
  { key := { q := 20, n := 34, r := 24 }
    lowerValue := 237196
    upperValue := 512000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 24))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 26 24))) },
  { key := { q := 20, n := 34, r := 25 }
    lowerValue := 30645
    upperValue := 25600000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 25))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 27 25))) },
  { key := { q := 20, n := 34, r := 26 }
    lowerValue := 4556
    upperValue := 1280000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 26))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 28 26))) },
  { key := { q := 20, n := 34, r := 27 }
    lowerValue := 787
    upperValue := 64000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 27))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 29 27))) },
  { key := { q := 20, n := 34, r := 28 }
    lowerValue := 160
    upperValue := 3200000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 28))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 30 28))) },
  { key := { q := 20, n := 34, r := 29 }
    lowerValue := 39
    upperValue := 160000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 29))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 31 29))) },
  { key := { q := 20, n := 34, r := 30 }
    lowerValue := 20
    upperValue := 8000
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 32 31)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 32 30))) },
  { key := { q := 20, n := 34, r := 31 }
    lowerValue := 20
    upperValue := 400
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 33 32))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 33 31))) },
  { key := { q := 20, n := 34, r := 32 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 34 33)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 34 32)) },
  { key := { q := 20, n := 34, r := 33 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 34 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 34 33)) },
  { key := { q := 20, n := 34, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 34 34)) },
  { key := { q := 20, n := 34, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 34 35)) },
  { key := { q := 20, n := 34, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 34 36)) },
  { key := { q := 20, n := 34, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 34 37)) },
  { key := { q := 20, n := 34, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 34 38)) },
  { key := { q := 20, n := 34, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 34 39)) },
  { key := { q := 20, n := 34, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 34 40)) },
  { key := { q := 20, n := 34, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 34 41)) },
  { key := { q := 20, n := 34, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 34 42)) },
  { key := { q := 20, n := 34, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 34 43)) },
  { key := { q := 20, n := 34, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 34 44)) },
  { key := { q := 20, n := 34, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 34 45)) },
  { key := { q := 20, n := 34, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 34 46)) },
  { key := { q := 20, n := 34, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 34 47)) },
  { key := { q := 20, n := 34, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 34 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 34 48)) },
  { key := { q := 20, n := 35, r := 0 }
    lowerValue := 3435973836800000000000000000000000000000000000
    upperValue := 3435973836800000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 35 0)) },
  { key := { q := 20, n := 35, r := 1 }
    lowerValue := 5159119875075075075075075075075075075075076
    upperValue := 68719476736000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 1))
    upperTrace := (.lengthenFreeN 28 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 35, r := 2 }
    lowerValue := 15947080152788671731775124036368530731780
    upperValue := 3435973836800000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 2))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 35, r := 3 }
    lowerValue := 76172809416485233890436595008700969699
    upperValue := 171798691840000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 3))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 35, r := 4 }
    lowerValue := 500235305840843035707788970051769694
    upperValue := 8589934592000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 4))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 35, r := 5 }
    lowerValue := 4238334219889179101128504859119298
    upperValue := 429496729600000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 5))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 35, r := 6 }
    lowerValue := 44522611240845887454486595607556
    upperValue := 21474836480000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 6))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 35, r := 7 }
    lowerValue := 564381691537141430355146753686
    upperValue := 1073741824000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 7))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 35, r := 8 }
    lowerValue := 8466949718178575034250217214
    upperValue := 53687091200000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 8))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 35, r := 9 }
    lowerValue := 148166384450861043284279042
    upperValue := 2684354560000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 9))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 35, r := 10 }
    lowerValue := 2991113304225684254133366
    upperValue := 134217728000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 10))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 35, r := 11 }
    lowerValue := 69062745488873296292918
    upperValue := 6710886400000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 11))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 35, r := 12 }
    lowerValue := 1811595596667944503585
    upperValue := 335544320000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 12))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 35, r := 13 }
    lowerValue := 53702979573221652457
    upperValue := 16777216000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 13))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 35, r := 14 }
    lowerValue := 1791768228183604327
    upperValue := 838860800000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 14))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) }]

end CoveringCodes.Database
