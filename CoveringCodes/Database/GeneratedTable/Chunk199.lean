import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 199. Do not edit manually.

def precomputedTable_chunk_199 : Array AnyBoundEntry := #[
  { key := { q := 20, n := 35, r := 15 }
    lowerValue := 67076004835173989
    upperValue := 41943040000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 15))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 35, r := 16 }
    lowerValue := 2811125959007403
    upperValue := 2097152000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 16))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 35, r := 17 }
    lowerValue := 131697456197478
    upperValue := 104857600000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 17))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 35, r := 18 }
    lowerValue := 6891591479260
    upperValue := 5242880000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 18))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 35, r := 19 }
    lowerValue := 402771905694
    upperValue := 32768000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 19))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) },
  { key := { q := 20, n := 35, r := 20 }
    lowerValue := 26304928513
    upperValue := 1638400000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 20))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20))) },
  { key := { q := 20, n := 35, r := 21 }
    lowerValue := 1922160812
    upperValue := 81920000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 21))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 21))) },
  { key := { q := 20, n := 35, r := 22 }
    lowerValue := 157458671
    upperValue := 4096000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 22))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 24 22))) },
  { key := { q := 20, n := 35, r := 23 }
    lowerValue := 14499749
    upperValue := 204800000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 23))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 25 23))) },
  { key := { q := 20, n := 35, r := 24 }
    lowerValue := 1506439
    upperValue := 10240000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 24))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 26 24))) },
  { key := { q := 20, n := 35, r := 25 }
    lowerValue := 177407
    upperValue := 512000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 25))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 27 25))) },
  { key := { q := 20, n := 35, r := 26 }
    lowerValue := 23823
    upperValue := 25600000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 26))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 28 26))) },
  { key := { q := 20, n := 35, r := 27 }
    lowerValue := 3675
    upperValue := 1280000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 27))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 29 27))) },
  { key := { q := 20, n := 35, r := 28 }
    lowerValue := 658
    upperValue := 64000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 28))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 30 28))) },
  { key := { q := 20, n := 35, r := 29 }
    lowerValue := 138
    upperValue := 3200000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 29))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 31 29))) },
  { key := { q := 20, n := 35, r := 30 }
    lowerValue := 35
    upperValue := 160000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 30))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 32 30))) },
  { key := { q := 20, n := 35, r := 31 }
    lowerValue := 20
    upperValue := 8000
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 33 32)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 33 31))) },
  { key := { q := 20, n := 35, r := 32 }
    lowerValue := 20
    upperValue := 400
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 34 33))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 34 32))) },
  { key := { q := 20, n := 35, r := 33 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 35 34)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 35 33)) },
  { key := { q := 20, n := 35, r := 34 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 35 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 35 34)) },
  { key := { q := 20, n := 35, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 35 35)) },
  { key := { q := 20, n := 35, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 35 36)) },
  { key := { q := 20, n := 35, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 35 37)) },
  { key := { q := 20, n := 35, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 35 38)) },
  { key := { q := 20, n := 35, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 35 39)) },
  { key := { q := 20, n := 35, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 35 40)) },
  { key := { q := 20, n := 35, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 35 41)) },
  { key := { q := 20, n := 35, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 35 42)) },
  { key := { q := 20, n := 35, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 35 43)) },
  { key := { q := 20, n := 35, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 35 44)) },
  { key := { q := 20, n := 35, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 35 45)) },
  { key := { q := 20, n := 35, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 35 46)) },
  { key := { q := 20, n := 35, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 35 47)) },
  { key := { q := 20, n := 35, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 35 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 35 48)) },
  { key := { q := 20, n := 36, r := 0 }
    lowerValue := 68719476736000000000000000000000000000000000000
    upperValue := 68719476736000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 36 0)) },
  { key := { q := 20, n := 36, r := 1 }
    lowerValue := 100320403994160583941605839416058394160583942
    upperValue := 1374389534720000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 1))
    upperTrace := (.lengthenFreeN 29 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 36, r := 2 }
    lowerValue := 301249267851741446200381386581329592530084
    upperValue := 68719476736000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 2))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 36, r := 3 }
    lowerValue := 1396698298289427886923891862778225202040
    upperValue := 3435973836800000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 3))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 36, r := 4 }
    lowerValue := 8894850189933679378085977997027782334
    upperValue := 171798691840000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 4))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 36, r := 5 }
    lowerValue := 73012985326119324831311785161858519
    upperValue := 8589934592000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 5))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 36, r := 6 }
    lowerValue := 742297067822648650002670911844108
    upperValue := 429496729600000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 6))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 36, r := 7 }
    lowerValue := 9096697963030618266307645432893
    upperValue := 21474836480000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 7))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 36, r := 8 }
    lowerValue := 131777091677135594152588872094
    upperValue := 1073741824000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 8))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 36, r := 9 }
    lowerValue := 2223905303786901670035530286
    upperValue := 53687091200000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 9))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 36, r := 10 }
    lowerValue := 43237831025283865262739454
    upperValue := 2684354560000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 10))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 36, r := 11 }
    lowerValue := 960073591659025084919405
    upperValue := 134217728000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 11))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 36, r := 12 }
    lowerValue := 24180530304049037243888
    upperValue := 6710886400000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 12))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 36, r := 13 }
    lowerValue := 687074315934838913571
    upperValue := 335544320000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 13))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 36, r := 14 }
    lowerValue := 21932090582816709720
    upperValue := 16777216000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 14))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 36, r := 15 }
    lowerValue := 783929107264952101
    upperValue := 838860800000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 15))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 36, r := 16 }
    lowerValue := 31299389224179773
    upperValue := 41943040000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 16))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 36, r := 17 }
    lowerValue := 1393532189345851
    upperValue := 2097152000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 17))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 36, r := 18 }
    lowerValue := 69114608196507
    upperValue := 104857600000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 18))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 36, r := 19 }
    lowerValue := 3816955795222
    upperValue := 655360000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 19))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) },
  { key := { q := 20, n := 36, r := 20 }
    lowerValue := 234772670334
    upperValue := 32768000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 20))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20))) },
  { key := { q := 20, n := 36, r := 21 }
    lowerValue := 16095984360
    upperValue := 1638400000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 21))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 21))) },
  { key := { q := 20, n := 36, r := 22 }
    lowerValue := 1231862237
    upperValue := 81920000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 22))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 24 22))) },
  { key := { q := 20, n := 36, r := 23 }
    lowerValue := 105466709
    upperValue := 4096000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 23))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 25 23))) },
  { key := { q := 20, n := 36, r := 24 }
    lowerValue := 10130764
    upperValue := 204800000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 24))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 26 24))) },
  { key := { q := 20, n := 36, r := 25 }
    lowerValue := 1095933
    upperValue := 10240000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 25))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 27 25))) },
  { key := { q := 20, n := 36, r := 26 }
    lowerValue := 134160
    upperValue := 512000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 26))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 28 26))) },
  { key := { q := 20, n := 36, r := 27 }
    lowerValue := 18697
    upperValue := 25600000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 27))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 29 27))) },
  { key := { q := 20, n := 36, r := 28 }
    lowerValue := 2989
    upperValue := 1280000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 28))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 30 28))) },
  { key := { q := 20, n := 36, r := 29 }
    lowerValue := 554
    upperValue := 64000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 29))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 31 29))) },
  { key := { q := 20, n := 36, r := 30 }
    lowerValue := 120
    upperValue := 3200000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 30))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 32 30))) },
  { key := { q := 20, n := 36, r := 31 }
    lowerValue := 31
    upperValue := 160000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 31))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 33 31))) },
  { key := { q := 20, n := 36, r := 32 }
    lowerValue := 20
    upperValue := 8000
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 34 33)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 34 32))) },
  { key := { q := 20, n := 36, r := 33 }
    lowerValue := 20
    upperValue := 400
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 35 34))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 35 33))) },
  { key := { q := 20, n := 36, r := 34 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 36 35)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 36 34)) },
  { key := { q := 20, n := 36, r := 35 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 36 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 36 35)) },
  { key := { q := 20, n := 36, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 36 36)) },
  { key := { q := 20, n := 36, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 36 37)) },
  { key := { q := 20, n := 36, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 36 38)) },
  { key := { q := 20, n := 36, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 36 39)) },
  { key := { q := 20, n := 36, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 36 40)) },
  { key := { q := 20, n := 36, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 36 41)) },
  { key := { q := 20, n := 36, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 36 42)) },
  { key := { q := 20, n := 36, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 36 43)) },
  { key := { q := 20, n := 36, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 36 44)) },
  { key := { q := 20, n := 36, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 36 45)) },
  { key := { q := 20, n := 36, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 36 46)) },
  { key := { q := 20, n := 36, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 36 47)) },
  { key := { q := 20, n := 36, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 36 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 36 48)) },
  { key := { q := 20, n := 37, r := 0 }
    lowerValue := 1374389534720000000000000000000000000000000000000
    upperValue := 1374389534720000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 37 0)) },
  { key := { q := 20, n := 37, r := 1 }
    lowerValue := 1952257861818181818181818181818181818181818182
    upperValue := 27487790694400000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 1))
    upperTrace := (.lengthenFreeN 30 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 37, r := 2 }
    lowerValue := 5699786566250570231825156554555633890432547
    upperValue := 1374389534720000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 2))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 37, r := 3 }
    lowerValue := 25672460224942075883767723733533374826004
    upperValue := 68719476736000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 3))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 37, r := 4 }
    lowerValue := 158694750439118813415674866911041084916
    upperValue := 3435973836800000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 4))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 37, r := 5 }
    lowerValue := 1263243425944888403708947128580716536
    upperValue := 171798691840000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 5))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 37, r := 6 }
    lowerValue := 12442475141710564973715913062334201
    upperValue := 8589934592000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 6))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 37, r := 7 }
    lowerValue := 147572919296282920557177286204348
    upperValue := 429496729600000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 7))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 37, r := 8 }
    lowerValue := 2066704461585914228209080341000
    upperValue := 21474836480000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 8))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 37, r := 9 }
    lowerValue := 33678974507889719689773505669
    upperValue := 1073741824000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 9))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 37, r := 10 }
    lowerValue := 631484081011576906408357928
    upperValue := 53687091200000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 10))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 37, r := 11 }
    lowerValue := 13504235568029064972524225
    upperValue := 2684354560000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 11))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 37, r := 12 }
    lowerValue := 327087405405039482108032
    upperValue := 134217728000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 12))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 37, r := 13 }
    lowerValue := 8923779809137586280509
    upperValue := 6710886400000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 13))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 37, r := 14 }
    lowerValue := 273042110213007744436
    upperValue := 335544320000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 14))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 37, r := 15 }
    lowerValue := 9337346993290500280
    upperValue := 16777216000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 15))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 37, r := 16 }
    lowerValue := 355958084204227131
    upperValue := 838860800000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 16))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 37, r := 17 }
    lowerValue := 15098424366447240
    upperValue := 41943040000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 17))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 37, r := 18 }
    lowerValue := 711664273946966
    upperValue := 2097152000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 18))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 37, r := 19 }
    lowerValue := 37251260028853
    upperValue := 13107200000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 19))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) },
  { key := { q := 20, n := 37, r := 20 }
    lowerValue := 2165151613440
    upperValue := 655360000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 20))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20))) },
  { key := { q := 20, n := 37, r := 21 }
    lowerValue := 139804757019
    upperValue := 32768000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 21))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 21))) },
  { key := { q := 20, n := 37, r := 22 }
    lowerValue := 10039164146
    upperValue := 1638400000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 22))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 24 22))) },
  { key := { q := 20, n := 37, r := 23 }
    lowerValue := 803036519
    upperValue := 81920000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 23))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 25 23))) },
  { key := { q := 20, n := 37, r := 24 }
    lowerValue := 71720352
    upperValue := 4096000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 24))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 26 24))) },
  { key := { q := 20, n := 37, r := 25 }
    lowerValue := 7173755
    upperValue := 204800000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 25))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 27 25))) },
  { key := { q := 20, n := 37, r := 26 }
    lowerValue := 806757
    upperValue := 10240000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 26))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 28 26))) },
  { key := { q := 20, n := 37, r := 27 }
    lowerValue := 102508
    upperValue := 512000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 27))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 29 27))) },
  { key := { q := 20, n := 37, r := 28 }
    lowerValue := 14806
    upperValue := 25600000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 28))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 30 28))) },
  { key := { q := 20, n := 37, r := 29 }
    lowerValue := 2450
    upperValue := 1280000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 29))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 31 29))) },
  { key := { q := 20, n := 37, r := 30 }
    lowerValue := 469
    upperValue := 64000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 30))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 32 30))) },
  { key := { q := 20, n := 37, r := 31 }
    lowerValue := 105
    upperValue := 3200000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 31))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 33 31))) },
  { key := { q := 20, n := 37, r := 32 }
    lowerValue := 28
    upperValue := 160000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 32))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 34 32))) },
  { key := { q := 20, n := 37, r := 33 }
    lowerValue := 20
    upperValue := 8000
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 35 34)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 35 33))) },
  { key := { q := 20, n := 37, r := 34 }
    lowerValue := 20
    upperValue := 400
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 36 35))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 36 34))) },
  { key := { q := 20, n := 37, r := 35 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 37 36)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 37 35)) },
  { key := { q := 20, n := 37, r := 36 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 37 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 37 36)) },
  { key := { q := 20, n := 37, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 37 37)) },
  { key := { q := 20, n := 37, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 37 38)) },
  { key := { q := 20, n := 37, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 37 39)) },
  { key := { q := 20, n := 37, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 37 40)) },
  { key := { q := 20, n := 37, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 37 41)) },
  { key := { q := 20, n := 37, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 37 42)) },
  { key := { q := 20, n := 37, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 37 43)) },
  { key := { q := 20, n := 37, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 37 44)) },
  { key := { q := 20, n := 37, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 37 45)) },
  { key := { q := 20, n := 37, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 37 46)) },
  { key := { q := 20, n := 37, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 37 47)) },
  { key := { q := 20, n := 37, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 37 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 37 48)) },
  { key := { q := 20, n := 38, r := 0 }
    lowerValue := 27487790694400000000000000000000000000000000000000
    upperValue := 27487790694400000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 38 0)) },
  { key := { q := 20, n := 38, r := 1 }
    lowerValue := 38019074266113416320885200553250345781466113417
    upperValue := 549755813888000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 1))
    upperTrace := (.lengthenFreeN 31 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 38, r := 2 }
    lowerValue := 108004489852498565849135187382615734010200153
    upperValue := 27487790694400000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 2))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 38, r := 3 }
    lowerValue := 472973080255477611295690781170338539323156
    upperValue := 1374389534720000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 3))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 38, r := 4 }
    lowerValue := 2840304576895786938964231950765305296998
    upperValue := 68719476736000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 4))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 38, r := 5 }
    lowerValue := 21945711800833150802041649215840518128
    upperValue := 3435973836800000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 5))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 38, r := 6 }
    lowerValue := 209620513728715860976592717662671959
    upperValue := 171798691840000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 6))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 38, r := 7 }
    lowerValue := 2408669750247480680071293031825162
    upperValue := 8589934592000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 7))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 38, r := 8 }
    lowerValue := 32647089956615855959375426979140
    upperValue := 429496729600000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 8))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 38, r := 9 }
    lowerValue := 514330590998758146189177384108
    upperValue := 21474836480000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 9))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 38, r := 10 }
    lowerValue := 9312194828783331365151652192
    upperValue := 1073741824000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 10))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 38, r := 11 }
    lowerValue := 192051573775881468586344414
    upperValue := 53687091200000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 11))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 38, r := 12 }
    lowerValue := 4480033074146007076540511
    upperValue := 2684354560000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 12))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 38, r := 13 }
    lowerValue := 117544320149470273456455
    upperValue := 134217728000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 13))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 38, r := 14 }
    lowerValue := 3453288273715217270299
    upperValue := 6710886400000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 14))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 38, r := 15 }
    lowerValue := 113196993567812080595
    upperValue := 335544320000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 15))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 38, r := 16 }
    lowerValue := 4128683833572205971
    upperValue := 16777216000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 16))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 38, r := 17 }
    lowerValue := 167211290783415829
    upperValue := 838860800000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 17))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 38, r := 18 }
    lowerValue := 7508729633340258
    upperValue := 41943040000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 18))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 38, r := 19 }
    lowerValue := 373533566326753
    upperValue := 262144000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 19))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) },
  { key := { q := 20, n := 38, r := 20 }
    lowerValue := 20578009925902
    upperValue := 13107200000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 20))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20))) },
  { key := { q := 20, n := 38, r := 21 }
    lowerValue := 1255634706076
    upperValue := 655360000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 21))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 21))) },
  { key := { q := 20, n := 38, r := 22 }
    lowerValue := 84920748904
    upperValue := 32768000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 22))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 24 22))) },
  { key := { q := 20, n := 38, r := 23 }
    lowerValue := 6373768176
    upperValue := 1638400000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 23))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 25 23))) },
  { key := { q := 20, n := 38, r := 24 }
    lowerValue := 531869091
    upperValue := 81920000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 24))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 26 24))) },
  { key := { q := 20, n := 38, r := 25 }
    lowerValue := 49466401
    upperValue := 4096000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 25))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 27 25))) },
  { key := { q := 20, n := 38, r := 26 }
    lowerValue := 5143934
    upperValue := 204800000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 26))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 28 26))) },
  { key := { q := 20, n := 38, r := 27 }
    lowerValue := 600484
    upperValue := 10240000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 27))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 29 27))) },
  { key := { q := 20, n := 38, r := 28 }
    lowerValue := 79085
    upperValue := 512000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 28))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 30 28))) },
  { key := { q := 20, n := 38, r := 29 }
    lowerValue := 11824
    upperValue := 25600000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 29))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 31 29))) },
  { key := { q := 20, n := 38, r := 30 }
    lowerValue := 2022
    upperValue := 1280000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 30))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 32 30))) },
  { key := { q := 20, n := 38, r := 31 }
    lowerValue := 400
    upperValue := 64000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 31))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 33 31))) },
  { key := { q := 20, n := 38, r := 32 }
    lowerValue := 93
    upperValue := 3200000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 32))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 34 32))) },
  { key := { q := 20, n := 38, r := 33 }
    lowerValue := 26
    upperValue := 160000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 33))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 35 33))) },
  { key := { q := 20, n := 38, r := 34 }
    lowerValue := 20
    upperValue := 8000
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 36 35)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 36 34))) },
  { key := { q := 20, n := 38, r := 35 }
    lowerValue := 20
    upperValue := 400
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 37 36))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 37 35))) },
  { key := { q := 20, n := 38, r := 36 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 38 37)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 38 36)) },
  { key := { q := 20, n := 38, r := 37 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 38 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 38 37)) },
  { key := { q := 20, n := 38, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 38 38)) },
  { key := { q := 20, n := 38, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 38 39)) },
  { key := { q := 20, n := 38, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 38 40)) },
  { key := { q := 20, n := 38, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 38 41)) },
  { key := { q := 20, n := 38, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 38 42)) },
  { key := { q := 20, n := 38, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 38 43)) },
  { key := { q := 20, n := 38, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 38 44)) },
  { key := { q := 20, n := 38, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 38 45)) },
  { key := { q := 20, n := 38, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 38 46)) },
  { key := { q := 20, n := 38, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 38 47)) },
  { key := { q := 20, n := 38, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 38 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 38 48)) },
  { key := { q := 20, n := 39, r := 0 }
    lowerValue := 549755813888000000000000000000000000000000000000000
    upperValue := 549755813888000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 39 0)) },
  { key := { q := 20, n := 39, r := 1 }
    lowerValue := 740910800388140161725067385444743935309973045823
    upperValue := 10995116277760000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 1))
    upperTrace := (.lengthenFreeN 32 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 39, r := 2 }
    lowerValue := 2049469376229761820438930372833587456149834293
    upperValue := 549755813888000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 2))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 39, r := 3 }
    lowerValue := 8732847088805356610597642253119662456115426
    upperValue := 27487790694400000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 3))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 39, r := 4 }
    lowerValue := 50988366513726479822482301558229320944214
    upperValue := 1374389534720000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 4))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 39, r := 5 }
    lowerValue := 382728151654645897465294766687604739649
    upperValue := 68719476736000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 5))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 39, r := 6 }
    lowerValue := 3548428258293180431636167402986975035
    upperValue := 3435973836800000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 6))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 39, r := 7 }
    lowerValue := 39540781014558002827811618558995281
    upperValue := 171798691840000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 7))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 39, r := 8 }
    lowerValue := 519227340337191899019324367934874
    upperValue := 8589934592000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 8))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 39, r := 9 }
    lowerValue := 7916853363200750413062959914336
    upperValue := 429496729600000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 9))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 39, r := 10 }
    lowerValue := 138573931199400269104081459925
    upperValue := 21474836480000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 10))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 39, r := 11 }
    lowerValue := 2759659844664422413473007596
    upperValue := 1073741824000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 11))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 39, r := 12 }
    lowerValue := 62083960489265324914349686
    upperValue := 53687091200000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 12))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 39, r := 13 }
    lowerValue := 1568815773388296138291340
    upperValue := 2684354560000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 13))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 39, r := 14 }
    lowerValue := 44324254222264755463319
    upperValue := 134217728000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 14))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 39, r := 15 }
    lowerValue := 1395073795771664903684
    upperValue := 6710886400000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 15))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 39, r := 16 }
    lowerValue := 48773716670110788014
    upperValue := 335544320000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 16))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 39, r := 17 }
    lowerValue := 1889928981940689024
    upperValue := 16777216000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 17))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 39, r := 18 }
    lowerValue := 81034975226115729
    upperValue := 838860800000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 18))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 39, r := 19 }
    lowerValue := 3840597046312807
    upperValue := 5242880000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 19))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) },
  { key := { q := 20, n := 39, r := 20 }
    lowerValue := 201083558738301
    upperValue := 262144000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 20))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20))) },
  { key := { q := 20, n := 39, r := 21 }
    lowerValue := 11629761730061
    upperValue := 13107200000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 21))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 21))) },
  { key := { q := 20, n := 39, r := 22 }
    lowerValue := 743287889779
    upperValue := 655360000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 22))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 24 22))) },
  { key := { q := 20, n := 39, r := 23 }
    lowerValue := 52544316861
    upperValue := 32768000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 23))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 25 23))) },
  { key := { q := 20, n := 39, r := 24 }
    lowerValue := 4114269675
    upperValue := 1638400000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 24))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 26 24))) },
  { key := { q := 20, n := 39, r := 25 }
    lowerValue := 357533473
    upperValue := 81920000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 25))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 27 25))) },
  { key := { q := 20, n := 39, r := 26 }
    lowerValue := 34571999
    upperValue := 4096000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 26))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 28 26))) },
  { key := { q := 20, n := 39, r := 27 }
    lowerValue := 3732043
    upperValue := 204800000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 27))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 29 27))) },
  { key := { q := 20, n := 39, r := 28 }
    lowerValue := 451612
    upperValue := 10240000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 28))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 30 28))) },
  { key := { q := 20, n := 39, r := 29 }
    lowerValue := 61572
    upperValue := 512000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 29))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 31 29))) },
  { key := { q := 20, n := 39, r := 30 }
    lowerValue := 9517
    upperValue := 25600000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 30))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 32 30))) },
  { key := { q := 20, n := 39, r := 31 }
    lowerValue := 1681
    upperValue := 1280000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 31))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 33 31))) },
  { key := { q := 20, n := 39, r := 32 }
    lowerValue := 343
    upperValue := 64000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 32))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 34 32))) },
  { key := { q := 20, n := 39, r := 33 }
    lowerValue := 82
    upperValue := 3200000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 33))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 35 33))) },
  { key := { q := 20, n := 39, r := 34 }
    lowerValue := 23
    upperValue := 160000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 34))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 36 34))) },
  { key := { q := 20, n := 39, r := 35 }
    lowerValue := 20
    upperValue := 8000
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 37 36)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 37 35))) },
  { key := { q := 20, n := 39, r := 36 }
    lowerValue := 20
    upperValue := 400
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 38 37))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 38 36))) },
  { key := { q := 20, n := 39, r := 37 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 39 38)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 39 37)) },
  { key := { q := 20, n := 39, r := 38 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 39 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 39 38)) },
  { key := { q := 20, n := 39, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 39 39)) },
  { key := { q := 20, n := 39, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 39 40)) },
  { key := { q := 20, n := 39, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 39 41)) },
  { key := { q := 20, n := 39, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 39 42)) },
  { key := { q := 20, n := 39, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 39 43)) },
  { key := { q := 20, n := 39, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 39 44)) },
  { key := { q := 20, n := 39, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 39 45)) },
  { key := { q := 20, n := 39, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 39 46)) },
  { key := { q := 20, n := 39, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 39 47)) },
  { key := { q := 20, n := 39, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 39 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 39 48)) },
  { key := { q := 20, n := 40, r := 0 }
    lowerValue := 10995116277760000000000000000000000000000000000000000
    upperValue := 10995116277760000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 40 0)) },
  { key := { q := 20, n := 40, r := 1 }
    lowerValue := 14448247408357424441524310118265440210249671484889
    upperValue := 219902325555200000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 1))
    upperTrace := (.lengthenFreeN 33 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))) },
  { key := { q := 20, n := 40, r := 2 }
    lowerValue := 38942683768067691196106835351578410503610881877
    upperValue := 10995116277760000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 2))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 40, r := 3 }
    lowerValue := 161575836624588766658318302677820410129068118
    upperValue := 549755813888000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 3))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 40, r := 4 }
    lowerValue := 917936035999982281308572374451663944804163
    upperValue := 27487790694400000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 4))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 40, r := 5 }
    lowerValue := 6699147206623895621338676547518566944938
    upperValue := 1374389534720000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 5))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 40, r := 6 }
    lowerValue := 60339378070875799605436751267710062356
    upperValue := 68719476736000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 6))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 40, r := 7 }
    lowerValue := 652638666080654758284147142831306827
    upperValue := 3435973836800000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 7))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 40, r := 8 }
    lowerValue := 8310979559681867551705409056023698
    upperValue := 171798691840000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 8))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 40, r := 9 }
    lowerValue := 122770454087353304812137057793064
    upperValue := 8589934592000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 9))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 40, r := 10 }
    lowerValue := 2079800290102555005872330232775
    upperValue := 429496729600000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 10))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 40, r := 11 }
    lowerValue := 40042090181699570619835600004
    upperValue := 21474836480000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 11))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 40, r := 12 }
    lowerValue := 869863000355760399214559734
    upperValue := 1073741824000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 12))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 40, r := 13 }
    lowerValue := 21198552356296649298888160
    upperValue := 53687091200000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 13))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 40, r := 14 }
    lowerValue := 576833379995517580426808
    upperValue := 2684354560000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 14))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 40, r := 15 }
    lowerValue := 17460124973034066890031
    upperValue := 134217728000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 15))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 40, r := 16 }
    lowerValue := 586128727084097829866
    upperValue := 6710886400000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 16))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 40, r := 17 }
    lowerValue := 21770496881806815402
    upperValue := 335544320000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 17))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 40, r := 18 }
    lowerValue := 893110788371231551
    upperValue := 16777216000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 18))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 10 20 2 7 1 200000 (by decide : 0 < 10) (by decide : 0 < 2) (by decide : 20 ≤ 2 * 10) (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome" (primitiveUpper_valid 10 6 1))))))) },
  { key := { q := 20, n := 40, r := 19 }
    lowerValue := 40416872282639616
    upperValue := 104857600000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 40 19))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) }]

end CoveringCodes.Database
