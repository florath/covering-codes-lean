import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 66. Do not edit manually.

def precomputedTable_chunk_66 : Array AnyBoundEntry := #[
  { key := { q := 6, n := 42, r := 36 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 38 37)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 42 36)) },
  { key := { q := 6, n := 42, r := 37 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 39 38))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 42 37)) },
  { key := { q := 6, n := 42, r := 38 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 40 39)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 42 38)) },
  { key := { q := 6, n := 42, r := 39 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 41 40))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 42 39)) },
  { key := { q := 6, n := 42, r := 40 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 42 41)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 42 40)) },
  { key := { q := 6, n := 42, r := 41 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 42 41))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 42 41)) },
  { key := { q := 6, n := 42, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 42 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 42 42)) },
  { key := { q := 6, n := 42, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 42 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 42 43)) },
  { key := { q := 6, n := 42, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 42 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 42 44)) },
  { key := { q := 6, n := 42, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 42 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 42 45)) },
  { key := { q := 6, n := 42, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 42 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 42 46)) },
  { key := { q := 6, n := 42, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 42 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 42 47)) },
  { key := { q := 6, n := 42, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 42 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 42 48)) },
  { key := { q := 6, n := 43, r := 0 }
    lowerValue := 2887378820390246558653190730940416
    upperValue := 2887378820390246558653190730940416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 43 0)) },
  { key := { q := 6, n := 43, r := 1 }
    lowerValue := 13367494538843734067838845976576
    upperValue := 213879912621499745085421535625216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 1))
    upperTrace := (.lengthenFreeN 34 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 6, n := 43, r := 2 }
    lowerValue := 126689430932835178739554680837
    upperValue := 35646652103583290847570255937536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 2))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))))) },
  { key := { q := 6, n := 43, r := 3 }
    lowerValue := 1844480202316985746059316330
    upperValue := 5941108683930548474595042656256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 3))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))))) },
  { key := { q := 6, n := 43, r := 4 }
    lowerValue := 36689976426577544703776787
    upperValue := 990184780655091412432507109376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 4))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))))) },
  { key := { q := 6, n := 43, r := 5 }
    lowerValue := 935390825581598870262086
    upperValue := 61886548790943213277031694336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 5))
    upperTrace := (.lengthenFreeN 36 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 7 5))) },
  { key := { q := 6, n := 43, r := 6 }
    lowerValue := 29360016750162775999947
    upperValue := 10314424798490535546171949056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 6))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 8 6))) },
  { key := { q := 6, n := 43, r := 7 }
    lowerValue := 1103800184541753616166
    upperValue := 1719070799748422591028658176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 7))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 9 7))) },
  { key := { q := 6, n := 43, r := 8 }
    lowerValue := 48724070350876636892
    upperValue := 286511799958070431838109696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 8))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 10 8))) },
  { key := { q := 6, n := 43, r := 9 }
    lowerValue := 2487682929294752045
    upperValue := 47751966659678405306351616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 9))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 11 9))) },
  { key := { q := 6, n := 43, r := 10 }
    lowerValue := 145206474248332896
    upperValue := 1326443518324400147398656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 10))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 43, r := 11 }
    lowerValue := 9600778782600017
    upperValue := 221073919720733357899776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 11))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 43, r := 12 }
    lowerValue := 713719238557792
    upperValue := 36845653286788892983296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 12))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 43, r := 13 }
    lowerValue := 59295166510085
    upperValue := 6140942214464815497216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 13))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 43, r := 14 }
    lowerValue := 5478042526100
    upperValue := 1023490369077469249536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 14))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14))) },
  { key := { q := 6, n := 43, r := 15 }
    lowerValue := 560493711496
    upperValue := 28430288029929701376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 15))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 15))) },
  { key := { q := 6, n := 43, r := 16 }
    lowerValue := 63298782549
    upperValue := 4738381338321616896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 16))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 16))) },
  { key := { q := 6, n := 43, r := 17 }
    lowerValue := 7868727676
    upperValue := 789730223053602816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 17))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 21 17))) },
  { key := { q := 6, n := 43, r := 18 }
    lowerValue := 1074313896
    upperValue := 131621703842267136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 18))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 22 18))) },
  { key := { q := 6, n := 43, r := 19 }
    lowerValue := 160807942
    upperValue := 21936950640377856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 19))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 23 19))) },
  { key := { q := 6, n := 43, r := 20 }
    lowerValue := 26353775
    upperValue := 609359740010496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 20))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 25 20))) },
  { key := { q := 6, n := 43, r := 21 }
    lowerValue := 4723972
    upperValue := 101559956668416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 21))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 26 21))) },
  { key := { q := 6, n := 43, r := 22 }
    lowerValue := 925591
    upperValue := 16926659444736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 22))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 27 22))) },
  { key := { q := 6, n := 43, r := 23 }
    lowerValue := 198169
    upperValue := 2821109907456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 23))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 28 23))) },
  { key := { q := 6, n := 43, r := 24 }
    lowerValue := 46360
    upperValue := 470184984576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 24))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 29 24))) },
  { key := { q := 6, n := 43, r := 25 }
    lowerValue := 11854
    upperValue := 13060694016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 25))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 31 25))) },
  { key := { q := 6, n := 43, r := 26 }
    lowerValue := 3315
    upperValue := 2176782336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 26))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 32 26))) },
  { key := { q := 6, n := 43, r := 27 }
    lowerValue := 1015
    upperValue := 362797056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 27))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 33 27))) },
  { key := { q := 6, n := 43, r := 28 }
    lowerValue := 341
    upperValue := 60466176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 28))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 34 28))) },
  { key := { q := 6, n := 43, r := 29 }
    lowerValue := 126
    upperValue := 10077696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 29))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 35 29))) },
  { key := { q := 6, n := 43, r := 30 }
    lowerValue := 51
    upperValue := 279936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 30))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 37 30))) },
  { key := { q := 6, n := 43, r := 31 }
    lowerValue := 23
    upperValue := 46656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 31))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 38 31))) },
  { key := { q := 6, n := 43, r := 32 }
    lowerValue := 11
    upperValue := 7776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 32))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 39 32))) },
  { key := { q := 6, n := 43, r := 33 }
    lowerValue := 6
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 33))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 40 33))) },
  { key := { q := 6, n := 43, r := 34 }
    lowerValue := 6
    upperValue := 216
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 36 35))))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 41 34))) },
  { key := { q := 6, n := 43, r := 35 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 37 36)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 43 35)) },
  { key := { q := 6, n := 43, r := 36 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 38 37))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 43 36)) },
  { key := { q := 6, n := 43, r := 37 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 39 38)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 43 37)) },
  { key := { q := 6, n := 43, r := 38 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 40 39))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 43 38)) },
  { key := { q := 6, n := 43, r := 39 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 41 40)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 43 39)) },
  { key := { q := 6, n := 43, r := 40 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 42 41))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 43 40)) },
  { key := { q := 6, n := 43, r := 41 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 43 42)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 43 41)) },
  { key := { q := 6, n := 43, r := 42 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 43 42))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 43 42)) },
  { key := { q := 6, n := 43, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 43 43)) },
  { key := { q := 6, n := 43, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 43 44)) },
  { key := { q := 6, n := 43, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 43 45)) },
  { key := { q := 6, n := 43, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 43 46)) },
  { key := { q := 6, n := 43, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 43 47)) },
  { key := { q := 6, n := 43, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 43 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 43 48)) },
  { key := { q := 6, n := 44, r := 0 }
    lowerValue := 17324272922341479351919144385642496
    upperValue := 17324272922341479351919144385642496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 44 0)) },
  { key := { q := 6, n := 44, r := 1 }
    lowerValue := 78390375214214838696466716677116
    upperValue := 1283279475728998470512529213751296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 1))
    upperTrace := (.lengthenFreeN 35 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 6, n := 44, r := 2 }
    lowerValue := 725745587631078687609197117241
    upperValue := 213879912621499745085421535625216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 2))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))))) },
  { key := { q := 6, n := 44, r := 3 }
    lowerValue := 10315929548826006494049941547
    upperValue := 35646652103583290847570255937536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 3))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))))) },
  { key := { q := 6, n := 44, r := 4 }
    lowerValue := 200225645828388883577915644
    upperValue := 5941108683930548474595042656256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 4))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))))) },
  { key := { q := 6, n := 44, r := 5 }
    lowerValue := 4977812017503591443675205
    upperValue := 371319292745659279662190166016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 5))
    upperTrace := (.lengthenFreeN 37 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 7 5))) },
  { key := { q := 6, n := 44, r := 6 }
    lowerValue := 152263838497585772712773
    upperValue := 61886548790943213277031694336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 6))
    upperTrace := (.lengthenFreeN 36 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 8 6))) },
  { key := { q := 6, n := 44, r := 7 }
    lowerValue := 5574857447694381916852
    upperValue := 10314424798490535546171949056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 7))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 9 7))) },
  { key := { q := 6, n := 44, r := 8 }
    lowerValue := 239487092839304302061
    upperValue := 1719070799748422591028658176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 8))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 10 8))) },
  { key := { q := 6, n := 44, r := 9 }
    lowerValue := 11890625902091774909
    upperValue := 286511799958070431838109696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 9))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 11 9))) },
  { key := { q := 6, n := 44, r := 10 }
    lowerValue := 674411327880278990
    upperValue := 7958661109946400884391936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 10))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 44, r := 11 }
    lowerValue := 43292559824598975
    upperValue := 1326443518324400147398656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 11))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 44, r := 12 }
    lowerValue := 3121906940193278
    upperValue := 221073919720733357899776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 12))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 44, r := 13 }
    lowerValue := 251357993928690
    upperValue := 36845653286788892983296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 13))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 44, r := 14 }
    lowerValue := 22482784083412
    upperValue := 6140942214464815497216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 14))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14))) },
  { key := { q := 6, n := 44, r := 15 }
    lowerValue := 2224796288196
    upperValue := 170581728179578208256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 15))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 15))) },
  { key := { q := 6, n := 44, r := 16 }
    lowerValue := 242730240998
    upperValue := 28430288029929701376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 16))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 16))) },
  { key := { q := 6, n := 44, r := 17 }
    lowerValue := 29115498888
    upperValue := 4738381338321616896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 17))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 21 17))) },
  { key := { q := 6, n := 44, r := 18 }
    lowerValue := 3830797778
    upperValue := 789730223053602816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 18))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 22 18))) },
  { key := { q := 6, n := 44, r := 19 }
    lowerValue := 551839248
    upperValue := 131621703842267136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 19))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 23 19))) },
  { key := { q := 6, n := 44, r := 20 }
    lowerValue := 86908382
    upperValue := 3656158440062976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 20))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 25 20))) },
  { key := { q := 6, n := 44, r := 21 }
    lowerValue := 14947220
    upperValue := 609359740010496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 21))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 26 21))) },
  { key := { q := 6, n := 44, r := 22 }
    lowerValue := 2805282
    upperValue := 101559956668416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 22))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 27 22))) },
  { key := { q := 6, n := 44, r := 23 }
    lowerValue := 574263
    upperValue := 16926659444736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 23))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 28 23))) },
  { key := { q := 6, n := 44, r := 24 }
    lowerValue := 128201
    upperValue := 2821109907456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 24))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 29 24))) },
  { key := { q := 6, n := 44, r := 25 }
    lowerValue := 31215
    upperValue := 78364164096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 25))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 31 25))) },
  { key := { q := 6, n := 44, r := 26 }
    lowerValue := 8293
    upperValue := 13060694016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 26))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 32 26))) },
  { key := { q := 6, n := 44, r := 27 }
    lowerValue := 2406
    upperValue := 2176782336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 27))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 33 27))) },
  { key := { q := 6, n := 44, r := 28 }
    lowerValue := 763
    upperValue := 362797056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 28))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 34 28))) },
  { key := { q := 6, n := 44, r := 29 }
    lowerValue := 265
    upperValue := 60466176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 29))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 35 29))) },
  { key := { q := 6, n := 44, r := 30 }
    lowerValue := 101
    upperValue := 1679616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 30))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 37 30))) },
  { key := { q := 6, n := 44, r := 31 }
    lowerValue := 42
    upperValue := 279936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 31))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 38 31))) },
  { key := { q := 6, n := 44, r := 32 }
    lowerValue := 20
    upperValue := 46656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 32))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 39 32))) },
  { key := { q := 6, n := 44, r := 33 }
    lowerValue := 10
    upperValue := 7776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 33))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 40 33))) },
  { key := { q := 6, n := 44, r := 34 }
    lowerValue := 6
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 34))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 41 34))) },
  { key := { q := 6, n := 44, r := 35 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 37 36))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 43 35))) },
  { key := { q := 6, n := 44, r := 36 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 38 37)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 44 36)) },
  { key := { q := 6, n := 44, r := 37 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 39 38))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 44 37)) },
  { key := { q := 6, n := 44, r := 38 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 40 39)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 44 38)) },
  { key := { q := 6, n := 44, r := 39 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 41 40))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 44 39)) },
  { key := { q := 6, n := 44, r := 40 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 42 41)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 44 40)) },
  { key := { q := 6, n := 44, r := 41 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 43 42))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 44 41)) },
  { key := { q := 6, n := 44, r := 42 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 44 43)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 44 42)) },
  { key := { q := 6, n := 44, r := 43 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 44 43))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 44 43)) },
  { key := { q := 6, n := 44, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 44 44)) },
  { key := { q := 6, n := 44, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 44 45)) },
  { key := { q := 6, n := 44, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 44 46)) },
  { key := { q := 6, n := 44, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 44 47)) },
  { key := { q := 6, n := 44, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 44 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 44 48)) },
  { key := { q := 6, n := 45, r := 0 }
    lowerValue := 103945637534048876111514866313854976
    upperValue := 103945637534048876111514866313854976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 45 0)) },
  { key := { q := 6, n := 45, r := 1 }
    lowerValue := 459936449265702991643871089884315
    upperValue := 7699676854373990823075175282507776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 1))
    upperTrace := (.lengthenFreeN 36 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 6, n := 45, r := 2 }
    lowerValue := 4161820849377357307475771393092
    upperValue := 1283279475728998470512529213751296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 2))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))))) },
  { key := { q := 6, n := 45, r := 3 }
    lowerValue := 57788477808209185896859703098
    upperValue := 213879912621499745085421535625216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 3))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))))) },
  { key := { q := 6, n := 45, r := 4 }
    lowerValue := 1095079850306140351044710161
    upperValue := 35646652103583290847570255937536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 4))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))))) },
  { key := { q := 6, n := 45, r := 5 }
    lowerValue := 26564740547584417318673569
    upperValue := 2227915756473955677973140996096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 5))
    upperTrace := (.lengthenFreeN 38 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 7 5))) },
  { key := { q := 6, n := 45, r := 6 }
    lowerValue := 792392511031956342381308
    upperValue := 371319292745659279662190166016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 6))
    upperTrace := (.lengthenFreeN 37 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 8 6))) },
  { key := { q := 6, n := 45, r := 7 }
    lowerValue := 28273277206399481863983
    upperValue := 61886548790943213277031694336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 7))
    upperTrace := (.lengthenFreeN 36 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 9 7))) },
  { key := { q := 6, n := 45, r := 8 }
    lowerValue := 1182854687927927327667
    upperValue := 10314424798490535546171949056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 8))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 10 8))) },
  { key := { q := 6, n := 45, r := 9 }
    lowerValue := 57154933657604111328
    upperValue := 1719070799748422591028658176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 9))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 11 9))) },
  { key := { q := 6, n := 45, r := 10 }
    lowerValue := 3152462661326962427
    upperValue := 47751966659678405306351616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 10))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 45, r := 11 }
    lowerValue := 196640525571376822
    upperValue := 7958661109946400884391936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 11))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 45, r := 12 }
    lowerValue := 13767457072327354
    upperValue := 1326443518324400147398656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 12))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 45, r := 13 }
    lowerValue := 1075273692439648
    upperValue := 221073919720733357899776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 13))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 45, r := 14 }
    lowerValue := 93210508270856
    upperValue := 36845653286788892983296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 14))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14))) },
  { key := { q := 6, n := 45, r := 15 }
    lowerValue := 8930275876882
    upperValue := 1023490369077469249536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 15))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 15))) },
  { key := { q := 6, n := 45, r := 16 }
    lowerValue := 942329944445
    upperValue := 170581728179578208256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 16))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 16))) },
  { key := { q := 6, n := 45, r := 17 }
    lowerValue := 109200174246
    upperValue := 28430288029929701376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 17))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 21 17))) },
  { key := { q := 6, n := 45, r := 18 }
    lowerValue := 13864110878
    upperValue := 4738381338321616896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 18))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 22 18))) },
  { key := { q := 6, n := 45, r := 19 }
    lowerValue := 1924722139
    upperValue := 789730223053602816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 19))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 23 19))) },
  { key := { q := 6, n := 45, r := 20 }
    lowerValue := 291729759
    upperValue := 21936950640377856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 20))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 25 20))) },
  { key := { q := 6, n := 45, r := 21 }
    lowerValue := 48218363
    upperValue := 3656158440062976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 21))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 26 21))) },
  { key := { q := 6, n := 45, r := 22 }
    lowerValue := 8683309
    upperValue := 609359740010496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 22))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 27 22))) },
  { key := { q := 6, n := 45, r := 23 }
    lowerValue := 1702749
    upperValue := 101559956668416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 23))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 28 23))) },
  { key := { q := 6, n := 45, r := 24 }
    lowerValue := 363481
    upperValue := 16926659444736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 24))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 29 24))) },
  { key := { q := 6, n := 45, r := 25 }
    lowerValue := 84463
    upperValue := 470184984576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 25))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 31 25))) },
  { key := { q := 6, n := 45, r := 26 }
    lowerValue := 21370
    upperValue := 78364164096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 26))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 32 26))) },
  { key := { q := 6, n := 45, r := 27 }
    lowerValue := 5890
    upperValue := 13060694016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 27))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 33 27))) },
  { key := { q := 6, n := 45, r := 28 }
    lowerValue := 1770
    upperValue := 2176782336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 28))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 34 28))) },
  { key := { q := 6, n := 45, r := 29 }
    lowerValue := 581
    upperValue := 362797056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 29))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 35 29))) },
  { key := { q := 6, n := 45, r := 30 }
    lowerValue := 208
    upperValue := 10077696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 30))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 37 30))) },
  { key := { q := 6, n := 45, r := 31 }
    lowerValue := 82
    upperValue := 1679616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 31))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 38 31))) },
  { key := { q := 6, n := 45, r := 32 }
    lowerValue := 35
    upperValue := 279936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 32))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 39 32))) },
  { key := { q := 6, n := 45, r := 33 }
    lowerValue := 17
    upperValue := 46656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 33))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 40 33))) },
  { key := { q := 6, n := 45, r := 34 }
    lowerValue := 9
    upperValue := 7776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 34))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 41 34))) },
  { key := { q := 6, n := 45, r := 35 }
    lowerValue := 6
    upperValue := 216
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 37 36)))))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 43 35))) },
  { key := { q := 6, n := 45, r := 36 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 38 37))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 44 36))) },
  { key := { q := 6, n := 45, r := 37 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 39 38)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 45 37)) },
  { key := { q := 6, n := 45, r := 38 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 40 39))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 45 38)) },
  { key := { q := 6, n := 45, r := 39 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 41 40)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 45 39)) },
  { key := { q := 6, n := 45, r := 40 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 42 41))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 45 40)) },
  { key := { q := 6, n := 45, r := 41 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 43 42)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 45 41)) },
  { key := { q := 6, n := 45, r := 42 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 44 43))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 45 42)) },
  { key := { q := 6, n := 45, r := 43 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 45 44)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 45 43)) },
  { key := { q := 6, n := 45, r := 44 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 45 44))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 45 44)) },
  { key := { q := 6, n := 45, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 45 45)) },
  { key := { q := 6, n := 45, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 45 46)) },
  { key := { q := 6, n := 45, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 45 47)) },
  { key := { q := 6, n := 45, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 45 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 45 48)) },
  { key := { q := 6, n := 46, r := 0 }
    lowerValue := 623673825204293256669089197883129856
    upperValue := 623673825204293256669089197883129856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 46 0)) },
  { key := { q := 6, n := 46, r := 1 }
    lowerValue := 2699886689196074704195191332827402
    upperValue := 46198061126243944938451051695046656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 1))
    upperTrace := (.lengthenFreeN 37 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 6, n := 46, r := 2 }
    lowerValue := 23890056891300592073434811839544
    upperValue := 7699676854373990823075175282507776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 2))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))))) },
  { key := { q := 6, n := 46, r := 3 }
    lowerValue := 324221189372612300371848080056
    upperValue := 1283279475728998470512529213751296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 3))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))))) },
  { key := { q := 6, n := 46, r := 4 }
    lowerValue := 6001813410949393992715869667
    upperValue := 213879912621499745085421535625216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 4))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))))) },
  { key := { q := 6, n := 46, r := 5 }
    lowerValue := 142147216840374962723527672
    upperValue := 13367494538843734067838845976576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 5))
    upperTrace := (.lengthenFreeN 39 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 7 5))) },
  { key := { q := 6, n := 46, r := 6 }
    lowerValue := 4137302622539788070365149
    upperValue := 2227915756473955677973140996096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 6))
    upperTrace := (.lengthenFreeN 38 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 8 6))) },
  { key := { q := 6, n := 46, r := 7 }
    lowerValue := 143957074087061868614139
    upperValue := 371319292745659279662190166016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 7))
    upperTrace := (.lengthenFreeN 37 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 9 7))) },
  { key := { q := 6, n := 46, r := 8 }
    lowerValue := 5869360838323188947900
    upperValue := 61886548790943213277031694336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 8))
    upperTrace := (.lengthenFreeN 36 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 10 8))) },
  { key := { q := 6, n := 46, r := 9 }
    lowerValue := 276200312606985185174
    upperValue := 10314424798490535546171949056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 9))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 11 9))) },
  { key := { q := 6, n := 46, r := 10 }
    lowerValue := 14826022794408219344
    upperValue := 286511799958070431838109696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 10))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 46, r := 11 }
    lowerValue := 899350219934954868
    upperValue := 47751966659678405306351616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 11))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 46, r := 12 }
    lowerValue := 61185678418154227
    upperValue := 7958661109946400884391936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 12))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 46, r := 13 }
    lowerValue := 4639757411589669
    upperValue := 1326443518324400147398656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 13))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 46, r := 14 }
    lowerValue := 390158054297982
    upperValue := 221073919720733357899776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 14))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14))) },
  { key := { q := 6, n := 46, r := 15 }
    lowerValue := 36227367881305
    upperValue := 6140942214464815497216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 15))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 15))) },
  { key := { q := 6, n := 46, r := 16 }
    lowerValue := 3701207564784
    upperValue := 1023490369077469249536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 16))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 16))) },
  { key := { q := 6, n := 46, r := 17 }
    lowerValue := 414837587371
    upperValue := 170581728179578208256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 17))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 21 17))) },
  { key := { q := 6, n := 46, r := 18 }
    lowerValue := 50883614532
    upperValue := 28430288029929701376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 18))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 22 18))) },
  { key := { q := 6, n := 46, r := 19 }
    lowerValue := 6816641041
    upperValue := 4738381338321616896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 19))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 23 19))) },
  { key := { q := 6, n := 46, r := 20 }
    lowerValue := 995750219
    upperValue := 131621703842267136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 20))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 25 20))) },
  { key := { q := 6, n := 46, r := 21 }
    lowerValue := 158402722
    upperValue := 21936950640377856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 21))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 26 21))) },
  { key := { q := 6, n := 46, r := 22 }
    lowerValue := 27414984
    upperValue := 3656158440062976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 22))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 27 22))) },
  { key := { q := 6, n := 46, r := 23 }
    lowerValue := 5158613
    upperValue := 609359740010496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 23))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 28 23))) },
  { key := { q := 6, n := 46, r := 24 }
    lowerValue := 1054925
    upperValue := 101559956668416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 24))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 29 24))) },
  { key := { q := 6, n := 46, r := 25 }
    lowerValue := 234417
    upperValue := 2821109907456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 25))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 31 25))) },
  { key := { q := 6, n := 46, r := 26 }
    lowerValue := 56608
    upperValue := 470184984576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 26))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 32 26))) },
  { key := { q := 6, n := 46, r := 27 }
    lowerValue := 14861
    upperValue := 78364164096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 27))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 33 27))) },
  { key := { q := 6, n := 46, r := 28 }
    lowerValue := 4244
    upperValue := 13060694016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 28))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 34 28))) },
  { key := { q := 6, n := 46, r := 29 }
    lowerValue := 1319
    upperValue := 2176782336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 29))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 35 29))) },
  { key := { q := 6, n := 46, r := 30 }
    lowerValue := 447
    upperValue := 60466176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 30))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 37 30))) },
  { key := { q := 6, n := 46, r := 31 }
    lowerValue := 166
    upperValue := 10077696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 31))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 38 31))) },
  { key := { q := 6, n := 46, r := 32 }
    lowerValue := 67
    upperValue := 1679616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 32))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 39 32))) },
  { key := { q := 6, n := 46, r := 33 }
    lowerValue := 30
    upperValue := 279936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 33))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 40 33))) },
  { key := { q := 6, n := 46, r := 34 }
    lowerValue := 15
    upperValue := 46656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 34))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 41 34))) },
  { key := { q := 6, n := 46, r := 35 }
    lowerValue := 8
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 35))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 43 35))) },
  { key := { q := 6, n := 46, r := 36 }
    lowerValue := 6
    upperValue := 216
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 38 37)))))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 44 36))) },
  { key := { q := 6, n := 46, r := 37 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 39 38))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 45 37))) },
  { key := { q := 6, n := 46, r := 38 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 40 39)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 46 38)) },
  { key := { q := 6, n := 46, r := 39 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 41 40))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 46 39)) },
  { key := { q := 6, n := 46, r := 40 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 42 41)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 46 40)) },
  { key := { q := 6, n := 46, r := 41 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 43 42))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 46 41)) },
  { key := { q := 6, n := 46, r := 42 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 44 43)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 46 42)) },
  { key := { q := 6, n := 46, r := 43 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 45 44))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 46 43)) },
  { key := { q := 6, n := 46, r := 44 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 46 45)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 46 44)) },
  { key := { q := 6, n := 46, r := 45 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 46 45))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 46 45)) },
  { key := { q := 6, n := 46, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 46 46)) },
  { key := { q := 6, n := 46, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 46 47)) },
  { key := { q := 6, n := 46, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 46 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 46 48)) },
  { key := { q := 6, n := 47, r := 0 }
    lowerValue := 3742042951225759540014535187298779136
    upperValue := 3742042951225759540014535187298779136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 47 0)) },
  { key := { q := 6, n := 47, r := 1 }
    lowerValue := 15856114200109150593281928759740590
    upperValue := 277188366757463669630706310170279936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 1))
    upperTrace := (.lengthenFreeN 38 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 6, n := 47, r := 2 }
    lowerValue := 137267266469526412824714250662074
    upperValue := 46198061126243944938451051695046656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 2))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))))) },
  { key := { q := 6, n := 47, r := 3 }
    lowerValue := 1821711391663336575579482170265
    upperValue := 7699676854373990823075175282507776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 3))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))))) },
  { key := { q := 6, n := 47, r := 4 }
    lowerValue := 32960172890644356497176914211
    upperValue := 1283279475728998470512529213751296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 4))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))))) },
  { key := { q := 6, n := 47, r := 5 }
    lowerValue := 762578575825430038905133499
    upperValue := 80204967233062404407033075859456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 5))
    upperTrace := (.lengthenFreeN 40 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 7 5))) },
  { key := { q := 6, n := 47, r := 6 }
    lowerValue := 21670180491102111054334486
    upperValue := 13367494538843734067838845976576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 6))
    upperTrace := (.lengthenFreeN 39 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 8 6))) },
  { key := { q := 6, n := 47, r := 7 }
    lowerValue := 735742050811072406958430
    upperValue := 2227915756473955677973140996096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 7))
    upperTrace := (.lengthenFreeN 38 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 9 7))) },
  { key := { q := 6, n := 47, r := 8 }
    lowerValue := 29252756075804899870102
    upperValue := 371319292745659279662190166016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 8))
    upperTrace := (.lengthenFreeN 37 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 10 8))) },
  { key := { q := 6, n := 47, r := 9 }
    lowerValue := 1341548911853894501355
    upperValue := 61886548790943213277031694336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 9))
    upperTrace := (.lengthenFreeN 36 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 11 9))) },
  { key := { q := 6, n := 47, r := 10 }
    lowerValue := 70132968532382618027
    upperValue := 1719070799748422591028658176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 10))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 47, r := 11 }
    lowerValue := 4140333142850079857
    upperValue := 286511799958070431838109696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 11))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 47, r := 12 }
    lowerValue := 273931783704771643
    upperValue := 47751966659678405306351616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 12))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 47, r := 13 }
    lowerValue := 20185234568144700
    upperValue := 7958661109946400884391936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 13))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 47, r := 14 }
    lowerValue := 1648031827856763
    upperValue := 1326443518324400147398656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 14))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14))) },
  { key := { q := 6, n := 47, r := 15 }
    lowerValue := 148445920178848
    upperValue := 36845653286788892983296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 15))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 15))) },
  { key := { q := 6, n := 47, r := 16 }
    lowerValue := 14698702519258
    upperValue := 6140942214464815497216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 16))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 16))) },
  { key := { q := 6, n := 47, r := 17 }
    lowerValue := 1595111554972
    upperValue := 1023490369077469249536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 17))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 21 17))) },
  { key := { q := 6, n := 47, r := 18 }
    lowerValue := 189241007433
    upperValue := 170581728179578208256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 18))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 22 18))) },
  { key := { q := 6, n := 47, r := 19 }
    lowerValue := 24493467182
    upperValue := 28430288029929701376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 19))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 23 19))) },
  { key := { q := 6, n := 47, r := 20 }
    lowerValue := 3452706819
    upperValue := 789730223053602816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 20))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 25 20))) },
  { key := { q := 6, n := 47, r := 21 }
    lowerValue := 529363698
    upperValue := 131621703842267136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 21))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 26 21))) },
  { key := { q := 6, n := 47, r := 22 }
    lowerValue := 88181456
    upperValue := 21936950640377856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 22))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 27 22))) },
  { key := { q := 6, n := 47, r := 23 }
    lowerValue := 15947583
    upperValue := 3656158440062976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 23))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 28 23))) },
  { key := { q := 6, n := 47, r := 24 }
    lowerValue := 3129584
    upperValue := 609359740010496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 24))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 29 24))) },
  { key := { q := 6, n := 47, r := 25 }
    lowerValue := 666254
    upperValue := 16926659444736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 25))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 31 25))) },
  { key := { q := 6, n := 47, r := 26 }
    lowerValue := 153867
    upperValue := 2821109907456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 26))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 32 26))) },
  { key := { q := 6, n := 47, r := 27 }
    lowerValue := 38556
    upperValue := 470184984576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 27))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 33 27))) },
  { key := { q := 6, n := 47, r := 28 }
    lowerValue := 10487
    upperValue := 78364164096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 28))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 34 28))) },
  { key := { q := 6, n := 47, r := 29 }
    lowerValue := 3099
    upperValue := 13060694016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 29))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 35 29))) },
  { key := { q := 6, n := 47, r := 30 }
    lowerValue := 996
    upperValue := 362797056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 30))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 37 30))) },
  { key := { q := 6, n := 47, r := 31 }
    lowerValue := 348
    upperValue := 60466176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 31))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 38 31))) },
  { key := { q := 6, n := 47, r := 32 }
    lowerValue := 133
    upperValue := 10077696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 32))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 39 32))) },
  { key := { q := 6, n := 47, r := 33 }
    lowerValue := 56
    upperValue := 1679616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 33))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 40 33))) },
  { key := { q := 6, n := 47, r := 34 }
    lowerValue := 25
    upperValue := 279936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 34))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 41 34))) },
  { key := { q := 6, n := 47, r := 35 }
    lowerValue := 13
    upperValue := 7776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 35))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 43 35))) },
  { key := { q := 6, n := 47, r := 36 }
    lowerValue := 7
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 36))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 44 36))) },
  { key := { q := 6, n := 47, r := 37 }
    lowerValue := 6
    upperValue := 216
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 39 38)))))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 45 37))) },
  { key := { q := 6, n := 47, r := 38 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 40 39))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 46 38))) },
  { key := { q := 6, n := 47, r := 39 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 41 40)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 47 39)) },
  { key := { q := 6, n := 47, r := 40 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 42 41))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 47 40)) }]

end CoveringCodes.Database
