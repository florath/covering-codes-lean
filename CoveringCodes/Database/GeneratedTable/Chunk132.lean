import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 132. Do not edit manually.

def precomputedTable_chunk_132 : Array AnyBoundEntry := #[
  { key := { q := 13, n := 36, r := 23 }
    lowerValue := 714826
    upperValue := 23298085122481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 23))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 25 23))) },
  { key := { q := 13, n := 36, r := 24 }
    lowerValue := 107907
    upperValue := 137858491849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 24))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 27 24))) },
  { key := { q := 13, n := 36, r := 25 }
    lowerValue := 18319
    upperValue := 10604499373
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 25))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 28 25))) },
  { key := { q := 13, n := 36, r := 26 }
    lowerValue := 3513
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 26))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 29 26))) },
  { key := { q := 13, n := 36, r := 27 }
    lowerValue := 765
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 27))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 30 27))) },
  { key := { q := 13, n := 36, r := 28 }
    lowerValue := 191
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 28))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 31 28))) },
  { key := { q := 13, n := 36, r := 29 }
    lowerValue := 55
    upperValue := 371293
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 29))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 32 29))) },
  { key := { q := 13, n := 36, r := 30 }
    lowerValue := 19
    upperValue := 28561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 30))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 33 30))) },
  { key := { q := 13, n := 36, r := 31 }
    lowerValue := 13
    upperValue := 2197
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 33 32))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 34 31))) },
  { key := { q := 13, n := 36, r := 32 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 34 33)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 35 32))) },
  { key := { q := 13, n := 36, r := 33 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 35 34))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 36 33)) },
  { key := { q := 13, n := 36, r := 34 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 36 35)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 36 34)) },
  { key := { q := 13, n := 36, r := 35 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 36 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 36 35)) },
  { key := { q := 13, n := 36, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 36 36)) },
  { key := { q := 13, n := 36, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 36 37)) },
  { key := { q := 13, n := 36, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 36 38)) },
  { key := { q := 13, n := 36, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 36 39)) },
  { key := { q := 13, n := 36, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 36 40)) },
  { key := { q := 13, n := 36, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 36 41)) },
  { key := { q := 13, n := 36, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 36 42)) },
  { key := { q := 13, n := 36, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 36 43)) },
  { key := { q := 13, n := 36, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 36 44)) },
  { key := { q := 13, n := 36, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 36 45)) },
  { key := { q := 13, n := 36, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 36 46)) },
  { key := { q := 13, n := 36, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 36 47)) },
  { key := { q := 13, n := 36, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 36 48)) },
  { key := { q := 13, n := 37, r := 0 }
    lowerValue := 164400841185494513395503358052498933338333
    upperValue := 164400841185494513395503358052498933338333
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 37 0)) },
  { key := { q := 13, n := 37, r := 1 }
    lowerValue := 369440092551673063810119905735952659188
    upperValue := 6069954313447825223755057142574776749312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 1))
    upperTrace := (.lengthenFreeN 29 (@UpperTrace.alphabetExpand 7 13 2 8 1 117649 (by decide : 0 < 7) (by decide : 0 < 2) (by decide : 13 ≤ 2 * 7) (by decide : 0 < 13) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))) },
  { key := { q := 13, n := 37, r := 2 }
    lowerValue := 1706305630421639180432628860211304045
    upperValue := 366212511086814706782151957075672257024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 2))
    upperTrace := (.lengthenFreeN 31 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 13, n := 37, r := 3 }
    lowerValue := 12157209753130374048623957911163858
    upperValue := 28170193160524208214011689005820942848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 3))
    upperTrace := (.lengthenFreeN 30 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 37, r := 4 }
    lowerValue := 118869872669806776684203137896020
    upperValue := 2166937935424939093385514538909303296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 4))
    upperTrace := (.lengthenFreeN 29 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 37, r := 5 }
    lowerValue := 1496619057313610998961993438672
    upperValue := 166687533494226084106578041454561792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 5))
    upperTrace := (.lengthenFreeN 28 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 37, r := 6 }
    lowerValue := 23313924299063418768938535118
    upperValue := 12822117961094314162044464727273984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 6))
    upperTrace := (.lengthenFreeN 27 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 37, r := 7 }
    lowerValue := 437286297910108410917127108
    upperValue := 986316766238024166311112671328768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 7))
    upperTrace := (.lengthenFreeN 26 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 37, r := 8 }
    lowerValue := 9683910991749041371336605
    upperValue := 75870520479848012793162513179136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 8))
    upperTrace := (.lengthenFreeN 25 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 37, r := 9 }
    lowerValue := 249518613531839927610666
    upperValue := 5836193883065231753320193321472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 9))
    upperTrace := (.lengthenFreeN 24 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 37, r := 10 }
    lowerValue := 7396595384622340353408
    upperValue := 448937991005017827178476409344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 10))
    upperTrace := (.lengthenFreeN 23 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 37, r := 11 }
    lowerValue := 250042009192222413323
    upperValue := 34533691615770602090652031488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 11))
    upperTrace := (.lengthenFreeN 22 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 37, r := 12 }
    lowerValue := 9572426115453485549
    upperValue := 542800770374370512771595361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 12))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 37, r := 13 }
    lowerValue := 412720865763020084
    upperValue := 41753905413413116367045797
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 13))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 37, r := 14 }
    lowerValue := 19953166950973774
    upperValue := 3211838877954855105157369
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 14))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 37, r := 15 }
    lowerValue := 1077941016374534
    upperValue := 247064529073450392704413
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 15))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 37, r := 16 }
    lowerValue := 64902537266329
    upperValue := 19004963774880799438801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 16))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 37, r := 17 }
    lowerValue := 4346828705114
    upperValue := 1461920290375446110677
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 17))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 37, r := 18 }
    lowerValue := 323416641015
    upperValue := 112455406951957393129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 18))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 37, r := 19 }
    lowerValue := 26712829483
    upperValue := 8650415919381337933
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 19))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 37, r := 20 }
    lowerValue := 2448928505
    upperValue := 665416609183179841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 20))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20))) },
  { key := { q := 13, n := 37, r := 21 }
    lowerValue := 249287345
    upperValue := 51185893014090757
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 21))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 21))) },
  { key := { q := 13, n := 37, r := 22 }
    lowerValue := 28203485
    upperValue := 3937376385699289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 22))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 24 22))) },
  { key := { q := 13, n := 37, r := 23 }
    lowerValue := 3551776
    upperValue := 302875106592253
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 23))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 25 23))) },
  { key := { q := 13, n := 37, r := 24 }
    lowerValue := 498953
    upperValue := 1792160394037
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 24))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 27 24))) },
  { key := { q := 13, n := 37, r := 25 }
    lowerValue := 78410
    upperValue := 137858491849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 25))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 28 25))) },
  { key := { q := 13, n := 37, r := 26 }
    lowerValue := 13834
    upperValue := 10604499373
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 26))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 29 26))) },
  { key := { q := 13, n := 37, r := 27 }
    lowerValue := 2753
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 27))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 30 27))) },
  { key := { q := 13, n := 37, r := 28 }
    lowerValue := 621
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 28))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 31 28))) },
  { key := { q := 13, n := 37, r := 29 }
    lowerValue := 160
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 29))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 32 29))) },
  { key := { q := 13, n := 37, r := 30 }
    lowerValue := 48
    upperValue := 371293
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 30))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 33 30))) },
  { key := { q := 13, n := 37, r := 31 }
    lowerValue := 17
    upperValue := 28561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 31))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 34 31))) },
  { key := { q := 13, n := 37, r := 32 }
    lowerValue := 13
    upperValue := 2197
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 34 33))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 35 32))) },
  { key := { q := 13, n := 37, r := 33 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 35 34)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 36 33))) },
  { key := { q := 13, n := 37, r := 34 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 36 35))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 37 34)) },
  { key := { q := 13, n := 37, r := 35 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 37 36)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 37 35)) },
  { key := { q := 13, n := 37, r := 36 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 37 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 37 36)) },
  { key := { q := 13, n := 37, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 37 37)) },
  { key := { q := 13, n := 37, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 37 38)) },
  { key := { q := 13, n := 37, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 37 39)) },
  { key := { q := 13, n := 37, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 37 40)) },
  { key := { q := 13, n := 37, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 37 41)) },
  { key := { q := 13, n := 37, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 37 42)) },
  { key := { q := 13, n := 37, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 37 43)) },
  { key := { q := 13, n := 37, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 37 44)) },
  { key := { q := 13, n := 37, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 37 45)) },
  { key := { q := 13, n := 37, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 37 46)) },
  { key := { q := 13, n := 37, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 37 47)) },
  { key := { q := 13, n := 37, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 37 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 37 48)) },
  { key := { q := 13, n := 38, r := 0 }
    lowerValue := 2137210935411428674141543654682486133398329
    upperValue := 2137210935411428674141543654682486133398329
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 38 0)) },
  { key := { q := 13, n := 38, r := 1 }
    lowerValue := 4676610361950609790244078018998875565424
    upperValue := 78909406074821727908815742853472097741056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 1))
    upperTrace := (.lengthenFreeN 30 (@UpperTrace.alphabetExpand 7 13 2 8 1 117649 (by decide : 0 < 7) (by decide : 0 < 2) (by decide : 13 ≤ 2 * 7) (by decide : 0 < 13) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))) },
  { key := { q := 13, n := 38, r := 2 }
    lowerValue := 21017130027942340608537242520651064849
    upperValue := 4760762644128591188167975441983739341312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 2))
    upperTrace := (.lengthenFreeN 32 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 13, n := 38, r := 3 }
    lowerValue := 145595531892147635112809981069168365
    upperValue := 366212511086814706782151957075672257024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 3))
    upperTrace := (.lengthenFreeN 31 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 38, r := 4 }
    lowerValue := 1383033288882096485496812116286052
    upperValue := 28170193160524208214011689005820942848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 4))
    upperTrace := (.lengthenFreeN 30 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 38, r := 5 }
    lowerValue := 16902358596944080491817090903168
    upperValue := 2166937935424939093385514538909303296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 5))
    upperTrace := (.lengthenFreeN 29 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 38, r := 6 }
    lowerValue := 255348097916640812110309553569
    upperValue := 166687533494226084106578041454561792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 6))
    upperTrace := (.lengthenFreeN 28 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 38, r := 7 }
    lowerValue := 4640296400072326800280303011
    upperValue := 12822117961094314162044464727273984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 7))
    upperTrace := (.lengthenFreeN 27 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 38, r := 8 }
    lowerValue := 99459826542298538881001864
    upperValue := 986316766238024166311112671328768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 8))
    upperTrace := (.lengthenFreeN 26 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 38, r := 9 }
    lowerValue := 2477660174402162116031902
    upperValue := 75870520479848012793162513179136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 9))
    upperTrace := (.lengthenFreeN 25 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 38, r := 10 }
    lowerValue := 70925877773798815282037
    upperValue := 5836193883065231753320193321472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 10))
    upperTrace := (.lengthenFreeN 24 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 38, r := 11 }
    lowerValue := 2312469399442995532817
    upperValue := 448937991005017827178476409344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 11))
    upperTrace := (.lengthenFreeN 23 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 38, r := 12 }
    lowerValue := 85269016586784966588
    upperValue := 7056410014866816666030739693
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 12))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 38, r := 13 }
    lowerValue := 3535927669874435134
    upperValue := 542800770374370512771595361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 13))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 38, r := 14 }
    lowerValue := 164156547527808984
    upperValue := 41753905413413116367045797
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 14))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 38, r := 15 }
    lowerValue := 8501717291332251
    upperValue := 3211838877954855105157369
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 15))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 38, r := 16 }
    lowerValue := 489825704812950
    upperValue := 247064529073450392704413
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 16))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 38, r := 17 }
    lowerValue := 31329423768716
    upperValue := 19004963774880799438801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 17))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 38, r := 18 }
    lowerValue := 2221227366795
    upperValue := 1461920290375446110677
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 18))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 38, r := 19 }
    lowerValue := 174405256216
    upperValue := 112455406951957393129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 19))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 38, r := 20 }
    lowerValue := 15159214898
    upperValue := 8650415919381337933
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 20))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20))) },
  { key := { q := 13, n := 38, r := 21 }
    lowerValue := 1458783100
    upperValue := 665416609183179841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 21))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 21))) },
  { key := { q := 13, n := 38, r := 22 }
    lowerValue := 155513864
    upperValue := 51185893014090757
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 22))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 24 22))) },
  { key := { q := 13, n := 38, r := 23 }
    lowerValue := 18386808
    upperValue := 3937376385699289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 23))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 25 23))) },
  { key := { q := 13, n := 38, r := 24 }
    lowerValue := 2415105
    upperValue := 23298085122481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 24))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 27 24))) },
  { key := { q := 13, n := 38, r := 25 }
    lowerValue := 353224
    upperValue := 1792160394037
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 25))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 28 25))) },
  { key := { q := 13, n := 38, r := 26 }
    lowerValue := 57694
    upperValue := 137858491849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 26))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 29 26))) },
  { key := { q := 13, n := 38, r := 27 }
    lowerValue := 10563
    upperValue := 10604499373
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 27))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 30 27))) },
  { key := { q := 13, n := 38, r := 28 }
    lowerValue := 2178
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 28))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 31 28))) },
  { key := { q := 13, n := 38, r := 29 }
    lowerValue := 509
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 29))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 32 29))) },
  { key := { q := 13, n := 38, r := 30 }
    lowerValue := 136
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 30))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 33 30))) },
  { key := { q := 13, n := 38, r := 31 }
    lowerValue := 42
    upperValue := 371293
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 31))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 34 31))) },
  { key := { q := 13, n := 38, r := 32 }
    lowerValue := 15
    upperValue := 28561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 32))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 35 32))) },
  { key := { q := 13, n := 38, r := 33 }
    lowerValue := 13
    upperValue := 2197
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 35 34))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 36 33))) },
  { key := { q := 13, n := 38, r := 34 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 36 35)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 37 34))) },
  { key := { q := 13, n := 38, r := 35 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 37 36))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 38 35)) },
  { key := { q := 13, n := 38, r := 36 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 38 37)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 38 36)) },
  { key := { q := 13, n := 38, r := 37 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 38 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 38 37)) },
  { key := { q := 13, n := 38, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 38 38)) },
  { key := { q := 13, n := 38, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 38 39)) },
  { key := { q := 13, n := 38, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 38 40)) },
  { key := { q := 13, n := 38, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 38 41)) },
  { key := { q := 13, n := 38, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 38 42)) },
  { key := { q := 13, n := 38, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 38 43)) },
  { key := { q := 13, n := 38, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 38 44)) },
  { key := { q := 13, n := 38, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 38 45)) },
  { key := { q := 13, n := 38, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 38 46)) },
  { key := { q := 13, n := 38, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 38 47)) },
  { key := { q := 13, n := 38, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 38 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 38 48)) },
  { key := { q := 13, n := 39, r := 0 }
    lowerValue := 27783742160348572763840067510872319734178277
    upperValue := 27783742160348572763840067510872319734178277
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 39 0)) },
  { key := { q := 13, n := 39, r := 1 }
    lowerValue := 59240388401596103974072638615932451458803
    upperValue := 1025822278972682462814604657095137270633728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 1))
    upperTrace := (.lengthenFreeN 31 (@UpperTrace.alphabetExpand 7 13 2 8 1 117649 (by decide : 0 < 7) (by decide : 0 < 2) (by decide : 13 ≤ 2 * 7) (by decide : 0 < 13) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))) },
  { key := { q := 13, n := 39, r := 2 }
    lowerValue := 259241993415772375167626804427162809049
    upperValue := 61889914373671685446183680745788611437056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 2))
    upperTrace := (.lengthenFreeN 33 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 13, n := 39, r := 3 }
    lowerValue := 1747474956411691458359504767069145198
    upperValue := 4760762644128591188167975441983739341312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 3))
    upperTrace := (.lengthenFreeN 32 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 39, r := 4 }
    lowerValue := 16139675094943691952932389944733375
    upperValue := 366212511086814706782151957075672257024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 4))
    upperTrace := (.lengthenFreeN 31 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 39, r := 5 }
    lowerValue := 191627580443883512807897809599077
    upperValue := 28170193160524208214011689005820942848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 5))
    upperTrace := (.lengthenFreeN 30 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 39, r := 6 }
    lowerValue := 2810092205042953790611053576102
    upperValue := 2166937935424939093385514538909303296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 6))
    upperTrace := (.lengthenFreeN 29 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 39, r := 7 }
    lowerValue := 49524159165898722632752805217
    upperValue := 166687533494226084106578041454561792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 7))
    upperTrace := (.lengthenFreeN 28 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 39, r := 8 }
    lowerValue := 1028452338056089043972633595
    upperValue := 12822117961094314162044464727273984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 8))
    upperTrace := (.lengthenFreeN 27 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 39, r := 9 }
    lowerValue := 24796935556203338698439550
    upperValue := 986316766238024166311112671328768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 9))
    upperTrace := (.lengthenFreeN 26 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 39, r := 10 }
    lowerValue := 686287250051358334239260
    upperValue := 75870520479848012793162513179136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 10))
    upperTrace := (.lengthenFreeN 25 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 39, r := 11 }
    lowerValue := 21608005608411358770555
    upperValue := 5836193883065231753320193321472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 11))
    upperTrace := (.lengthenFreeN 24 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 39, r := 12 }
    lowerValue := 768464710851685243135
    upperValue := 91733330193268616658399616009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 12))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 39, r := 13 }
    lowerValue := 30693511471314453051
    upperValue := 7056410014866816666030739693
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 13))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 39, r := 14 }
    lowerValue := 1370515686989563482
    upperValue := 542800770374370512771595361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 14))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 39, r := 15 }
    lowerValue := 68161233672407199
    upperValue := 41753905413413116367045797
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 15))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 39, r := 16 }
    lowerValue := 3764818124000845
    upperValue := 3211838877954855105157369
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 16))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 39, r := 17 }
    lowerValue := 230425420813302
    upperValue := 247064529073450392704413
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 17))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 39, r := 18 }
    lowerValue := 15601970902953
    upperValue := 19004963774880799438801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 18))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 39, r := 19 }
    lowerValue := 1167365064010
    upperValue := 1461920290375446110677
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 19))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 39, r := 20 }
    lowerValue := 96459389345
    upperValue := 112455406951957393129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 20))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20))) },
  { key := { q := 13, n := 39, r := 21 }
    lowerValue := 8801025514
    upperValue := 8650415919381337933
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 21))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 21))) },
  { key := { q := 13, n := 39, r := 22 }
    lowerValue := 886988805
    upperValue := 665416609183179841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 22))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 24 22))) },
  { key := { q := 13, n := 39, r := 23 }
    lowerValue := 98821472
    upperValue := 51185893014090757
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 23))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 25 23))) },
  { key := { q := 13, n := 39, r := 24 }
    lowerValue := 12187090
    upperValue := 302875106592253
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 24))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 27 24))) },
  { key := { q := 13, n := 39, r := 25 }
    lowerValue := 1666710
    upperValue := 23298085122481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 25))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 28 25))) },
  { key := { q := 13, n := 39, r := 26 }
    lowerValue := 253382
    upperValue := 1792160394037
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 26))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 29 26))) },
  { key := { q := 13, n := 39, r := 27 }
    lowerValue := 42951
    upperValue := 137858491849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 27))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 30 27))) },
  { key := { q := 13, n := 39, r := 28 }
    lowerValue := 8149
    upperValue := 10604499373
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 28))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 31 28))) },
  { key := { q := 13, n := 39, r := 29 }
    lowerValue := 1739
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 29))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 32 29))) },
  { key := { q := 13, n := 39, r := 30 }
    lowerValue := 420
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 30))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 33 30))) },
  { key := { q := 13, n := 39, r := 31 }
    lowerValue := 116
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 31))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 34 31))) },
  { key := { q := 13, n := 39, r := 32 }
    lowerValue := 37
    upperValue := 371293
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 32))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 35 32))) },
  { key := { q := 13, n := 39, r := 33 }
    lowerValue := 14
    upperValue := 28561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 33))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 36 33))) },
  { key := { q := 13, n := 39, r := 34 }
    lowerValue := 13
    upperValue := 2197
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 36 35))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 37 34))) },
  { key := { q := 13, n := 39, r := 35 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 37 36)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 38 35))) },
  { key := { q := 13, n := 39, r := 36 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 38 37))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 39 36)) },
  { key := { q := 13, n := 39, r := 37 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 39 38)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 39 37)) },
  { key := { q := 13, n := 39, r := 38 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 39 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 39 38)) },
  { key := { q := 13, n := 39, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 39 39)) },
  { key := { q := 13, n := 39, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 39 40)) },
  { key := { q := 13, n := 39, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 39 41)) },
  { key := { q := 13, n := 39, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 39 42)) },
  { key := { q := 13, n := 39, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 39 43)) },
  { key := { q := 13, n := 39, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 39 44)) },
  { key := { q := 13, n := 39, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 39 45)) },
  { key := { q := 13, n := 39, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 39 46)) },
  { key := { q := 13, n := 39, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 39 47)) },
  { key := { q := 13, n := 39, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 39 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 39 48)) },
  { key := { q := 13, n := 40, r := 0 }
    lowerValue := 361188648084531445929920877641340156544317601
    upperValue := 361188648084531445929920877641340156544317601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 40 0)) },
  { key := { q := 13, n := 40, r := 1 }
    lowerValue := 750911950279691155779461284077630263085900
    upperValue := 13335689626644872016589860542236784518238464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 1))
    upperTrace := (.lengthenFreeN 32 (@UpperTrace.alphabetExpand 7 13 2 8 1 117649 (by decide : 0 < 7) (by decide : 0 < 2) (by decide : 13 ≤ 2 * 7) (by decide : 0 < 13) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))) },
  { key := { q := 13, n := 40, r := 2 }
    lowerValue := 3201998635513261814433567766609694564271
    upperValue := 804568886857731910800387849695251948681728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 2))
    upperTrace := (.lengthenFreeN 34 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 13, n := 40, r := 3 }
    lowerValue := 21017130027942340608537242520651064849
    upperValue := 61889914373671685446183680745788611437056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 3))
    upperTrace := (.lengthenFreeN 33 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 40, r := 4 }
    lowerValue := 188881649886655836715982141047568262
    upperValue := 4760762644128591188167975441983739341312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 4))
    upperTrace := (.lengthenFreeN 32 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 40, r := 5 }
    lowerValue := 2180489192826921499605725534825133
    upperValue := 366212511086814706782151957075672257024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 5))
    upperTrace := (.lengthenFreeN 31 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 40, r := 6 }
    lowerValue := 31064681614788366242658069904884
    upperValue := 28170193160524208214011689005820942848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 6))
    upperTrace := (.lengthenFreeN 30 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 40, r := 7 }
    lowerValue := 531425919917997128583906178317
    upperValue := 2166937935424939093385514538909303296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 7))
    upperTrace := (.lengthenFreeN 29 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 40, r := 8 }
    lowerValue := 10702752764884697328174440514
    upperValue := 166687533494226084106578041454561792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 8))
    upperTrace := (.lengthenFreeN 28 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 40, r := 9 }
    lowerValue := 250021245119863147540733333
    upperValue := 12822117961094314162044464727273984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 9))
    upperTrace := (.lengthenFreeN 27 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 40, r := 10 }
    lowerValue := 6697417871170302174307433
    upperValue := 986316766238024166311112671328768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 10))
    upperTrace := (.lengthenFreeN 26 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 40, r := 11 }
    lowerValue := 203875089785830444850882
    upperValue := 75870520479848012793162513179136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 11))
    upperTrace := (.lengthenFreeN 25 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 40, r := 12 }
    lowerValue := 7001874569517731904279
    upperValue := 1192533292512492016559195008117
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 12))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 40, r := 13 }
    lowerValue := 269733456042646356274
    upperValue := 91733330193268616658399616009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 13))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 40, r := 14 }
    lowerValue := 11600778320333482334
    upperValue := 7056410014866816666030739693
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 14))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 40, r := 15 }
    lowerValue := 554917063404247839
    upperValue := 542800770374370512771595361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 15))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 40, r := 16 }
    lowerValue := 29433724637169219
    upperValue := 41753905413413116367045797
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 16))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 40, r := 17 }
    lowerValue := 1727068926618798
    upperValue := 3211838877954855105157369
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 17))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 40, r := 18 }
    lowerValue := 111902988449822
    upperValue := 247064529073450392704413
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 18))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 40, r := 19 }
    lowerValue := 7996242244389
    upperValue := 19004963774880799438801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 19))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 40, r := 20 }
    lowerValue := 629643078886
    upperValue := 1461920290375446110677
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 20))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20))) },
  { key := { q := 13, n := 40, r := 21 }
    lowerValue := 54615467439
    upperValue := 112455406951957393129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 21))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 21))) },
  { key := { q := 13, n := 40, r := 22 }
    lowerValue := 5219023516
    upperValue := 8650415919381337933
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 22))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 24 22))) },
  { key := { q := 13, n := 40, r := 23 }
    lowerValue := 549725235
    upperValue := 665416609183179841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 23))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 25 23))) },
  { key := { q := 13, n := 40, r := 24 }
    lowerValue := 63886728
    upperValue := 3937376385699289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 24))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 27 24))) },
  { key := { q := 13, n := 40, r := 25 }
    lowerValue := 8203793
    upperValue := 302875106592253
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 25))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 28 25))) },
  { key := { q := 13, n := 40, r := 26 }
    lowerValue := 1166294
    upperValue := 23298085122481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 26))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 29 26))) },
  { key := { q := 13, n := 40, r := 27 }
    lowerValue := 184027
    upperValue := 1792160394037
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 27))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 30 27))) },
  { key := { q := 13, n := 40, r := 28 }
    lowerValue := 32329
    upperValue := 137858491849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 28))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 31 28))) },
  { key := { q := 13, n := 40, r := 29 }
    lowerValue := 6348
    upperValue := 10604499373
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 29))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 32 29))) },
  { key := { q := 13, n := 40, r := 30 }
    lowerValue := 1400
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 30))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 33 30))) },
  { key := { q := 13, n := 40, r := 31 }
    lowerValue := 349
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 31))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 34 31))) },
  { key := { q := 13, n := 40, r := 32 }
    lowerValue := 99
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 32))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 35 32))) },
  { key := { q := 13, n := 40, r := 33 }
    lowerValue := 32
    upperValue := 371293
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 33))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 36 33))) },
  { key := { q := 13, n := 40, r := 34 }
    lowerValue := 13
    upperValue := 28561
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 36 35)))))))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 37 34))) },
  { key := { q := 13, n := 40, r := 35 }
    lowerValue := 13
    upperValue := 2197
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 37 36))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 38 35))) },
  { key := { q := 13, n := 40, r := 36 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 38 37)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 40 36)) },
  { key := { q := 13, n := 40, r := 37 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 39 38))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 40 37)) },
  { key := { q := 13, n := 40, r := 38 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 40 39)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 40 38)) },
  { key := { q := 13, n := 40, r := 39 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 40 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 40 39)) },
  { key := { q := 13, n := 40, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 40 40)) },
  { key := { q := 13, n := 40, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 40 41)) },
  { key := { q := 13, n := 40, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 40 42)) },
  { key := { q := 13, n := 40, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 40 43)) },
  { key := { q := 13, n := 40, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 40 44)) },
  { key := { q := 13, n := 40, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 40 45)) },
  { key := { q := 13, n := 40, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 40 46)) },
  { key := { q := 13, n := 40, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 40 47)) },
  { key := { q := 13, n := 40, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 40 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 40 48)) },
  { key := { q := 13, n := 41, r := 0 }
    lowerValue := 4695452425098908797088971409337422035076128813
    upperValue := 4695452425098908797088971409337422035076128813
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 41 0)) },
  { key := { q := 13, n := 41, r := 1 }
    lowerValue := 9524244269977502631012112392165156257760911
    upperValue := 173363965146383336215668187049078198737100032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 1))
    upperTrace := (.lengthenFreeN 33 (@UpperTrace.alphabetExpand 7 13 2 8 1 117649 (by decide : 0 < 7) (by decide : 0 < 2) (by decide : 13 ≤ 2 * 7) (by decide : 0 < 13) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))) },
  { key := { q := 13, n := 41, r := 2 }
    lowerValue := 39599676360545054920504426887549627951356
    upperValue := 10459395529150514840405042046038275332862464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 2))
    upperTrace := (.lengthenFreeN 35 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 13, n := 41, r := 3 }
    lowerValue := 253273585500775514104683308761101337543
    upperValue := 804568886857731910800387849695251948681728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 3))
    upperTrace := (.lengthenFreeN 34 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 41, r := 4 }
    lowerValue := 2216431699529427592818715254086566422
    upperValue := 61889914373671685446183680745788611437056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 4))
    upperTrace := (.lengthenFreeN 33 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 41, r := 5 }
    lowerValue := 24897321052209068610018175058033012
    upperValue := 4760762644128591188167975441983739341312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 5))
    upperTrace := (.lengthenFreeN 32 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 41, r := 6 }
    lowerValue := 344880184645777683122544871454345
    upperValue := 366212511086814706782151957075672257024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 6))
    upperTrace := (.lengthenFreeN 31 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 41, r := 7 }
    lowerValue := 5731870347064588639995564986758
    upperValue := 28170193160524208214011689005820942848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 7))
    upperTrace := (.lengthenFreeN 30 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 41, r := 8 }
    lowerValue := 112054800031958620152030156569
    upperValue := 2166937935424939093385514538909303296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 8))
    upperTrace := (.lengthenFreeN 29 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 41, r := 9 }
    lowerValue := 2538632626344723958945043334
    upperValue := 166687533494226084106578041454561792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 9))
    upperTrace := (.lengthenFreeN 28 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 41, r := 10 }
    lowerValue := 65887105286240390765399670
    upperValue := 12822117961094314162044464727273984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 10))
    upperTrace := (.lengthenFreeN 27 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 41, r := 11 }
    lowerValue := 1941254817263243267174411
    upperValue := 986316766238024166311112671328768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 11))
    upperTrace := (.lengthenFreeN 26 (.alphabetProject (by decide : 0 < 13) (by decide : 13 ≤ 14) (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))))) },
  { key := { q := 13, n := 41, r := 12 }
    lowerValue := 64459038478477700791838
    upperValue := 15502932802662396215269535105521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 12))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 41, r := 13 }
    lowerValue := 2397997323343774973322
    upperValue := 1192533292512492016559195008117
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 13))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 41, r := 14 }
    lowerValue := 99472431811566660239
    upperValue := 91733330193268616658399616009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 14))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 41, r := 15 }
    lowerValue := 4583138120059858704
    upperValue := 7056410014866816666030739693
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 15))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 41, r := 16 }
    lowerValue := 233815109497269271
    upperValue := 542800770374370512771595361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 16))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 41, r := 17 }
    lowerValue := 13175079874883579
    upperValue := 41753905413413116367045797
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 17))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 41, r := 18 }
    lowerValue := 818407878226180
    upperValue := 3211838877954855105157369
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 18))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 41, r := 19 }
    lowerValue := 55963446682169
    upperValue := 247064529073450392704413
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 19))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 41, r := 20 }
    lowerValue := 4208609398830
    upperValue := 19004963774880799438801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 20))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20))) },
  { key := { q := 13, n := 41, r := 21 }
    lowerValue := 347888936698
    upperValue := 1461920290375446110677
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 21))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 21))) },
  { key := { q := 13, n := 41, r := 22 }
    lowerValue := 31605201364
    upperValue := 112455406951957393129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 22))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 24 22))) },
  { key := { q := 13, n := 41, r := 23 }
    lowerValue := 3156587670
    upperValue := 8650415919381337933
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 23))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 25 23))) },
  { key := { q := 13, n := 41, r := 24 }
    lowerValue := 346835086
    upperValue := 51185893014090757
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 24))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 27 24))) },
  { key := { q := 13, n := 41, r := 25 }
    lowerValue := 41972408
    upperValue := 3937376385699289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 25))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 28 25))) },
  { key := { q := 13, n := 41, r := 26 }
    lowerValue := 5603073
    upperValue := 302875106592253
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 26))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 29 26))) },
  { key := { q := 13, n := 41, r := 27 }
    lowerValue := 826814
    upperValue := 23298085122481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 27))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 30 27))) }]

end CoveringCodes.Database
