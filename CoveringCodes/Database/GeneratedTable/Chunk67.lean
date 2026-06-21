import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 67. Do not edit manually.

def precomputedTable_chunk_67 : Array AnyBoundEntry := #[
  { key := { q := 6, n := 47, r := 41 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 43 42)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 47 41)) },
  { key := { q := 6, n := 47, r := 42 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 44 43))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 47 42)) },
  { key := { q := 6, n := 47, r := 43 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 45 44)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 47 43)) },
  { key := { q := 6, n := 47, r := 44 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 46 45))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 47 44)) },
  { key := { q := 6, n := 47, r := 45 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 47 46)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 47 45)) },
  { key := { q := 6, n := 47, r := 46 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 47 46))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 47 46)) },
  { key := { q := 6, n := 47, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 47 47)) },
  { key := { q := 6, n := 47, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 47 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 47 48)) },
  { key := { q := 6, n := 48, r := 0 }
    lowerValue := 22452257707354557240087211123792674816
    upperValue := 22452257707354557240087211123792674816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 48 0)) },
  { key := { q := 6, n := 48, r := 1 }
    lowerValue := 93162895051263722987913739102874170
    upperValue := 1663130200544782017784237861021679616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 1))
    upperTrace := (.lengthenFreeN 39 (@UpperTrace.alphabetExpand 3 6 2 9 1 1458 (by decide : 0 < 3) (by decide : 0 < 2) (by decide : 6 ≤ 2 * 3) (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lit_laarhoven_aarts_van_lint_wille_1989" (primitiveUpper_valid 3 8 1))))) },
  { key := { q := 6, n := 48, r := 2 }
    lowerValue := 789432780399935207625864460595362
    upperValue := 69297091689365917407676577542569984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 2))
    upperTrace := (.lengthenFreeN 40 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))) },
  { key := { q := 6, n := 48, r := 3 }
    lowerValue := 10250108406186040728824565977259
    upperValue := 11549515281560986234612762923761664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 3))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 1 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 48, r := 4 }
    lowerValue := 181354800831060687323148576283
    upperValue := 1924919213593497705768793820626944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 4))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 2 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 48, r := 5 }
    lowerValue := 4101054047427664049559750011
    upperValue := 320819868932249617628132303437824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 5))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 3 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 48, r := 6 }
    lowerValue := 113845374089777001069521985
    upperValue := 53469978155374936271355383906304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 6))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 4 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 48, r := 7 }
    lowerValue := 3773813188811512326350677
    upperValue := 8911663025895822711892563984384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 7))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 5 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 48, r := 8 }
    lowerValue := 146410479291604995184802
    upperValue := 1485277170982637118648760664064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 8))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 6 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 48, r := 9 }
    lowerValue := 6547851513048152737719
    upperValue := 247546195163772853108126777344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 9))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 7 (by decide : 0 < 6) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 6, n := 48, r := 10 }
    lowerValue := 333599017388754215367
    upperValue := 10314424798490535546171949056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 10))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 13 10))) },
  { key := { q := 6, n := 48, r := 11 }
    lowerValue := 19180383546170252613
    upperValue := 1719070799748422591028658176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 11))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 14 11))) },
  { key := { q := 6, n := 48, r := 12 }
    lowerValue := 1235031372444586822
    upperValue := 286511799958070431838109696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 12))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 15 12))) },
  { key := { q := 6, n := 48, r := 13 }
    lowerValue := 88503560559958608
    upperValue := 47751966659678405306351616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 13))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 16 13))) },
  { key := { q := 6, n := 48, r := 14 }
    lowerValue := 7021730505501533
    upperValue := 7958661109946400884391936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 14))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 17 14))) },
  { key := { q := 6, n := 48, r := 15 }
    lowerValue := 614100863347138
    upperValue := 221073919720733357899776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 15))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 19 15))) },
  { key := { q := 6, n := 48, r := 16 }
    lowerValue := 58988050756634
    upperValue := 36845653286788892983296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 16))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 20 16))) },
  { key := { q := 6, n := 48, r := 17 }
    lowerValue := 6204234209390
    upperValue := 6140942214464815497216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 17))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 21 17))) },
  { key := { q := 6, n := 48, r := 18 }
    lowerValue := 712686924324
    upperValue := 1023490369077469249536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 18))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 22 18))) },
  { key := { q := 6, n := 48, r := 19 }
    lowerValue := 89221257704
    upperValue := 170581728179578208256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 19))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 23 19))) },
  { key := { q := 6, n := 48, r := 20 }
    lowerValue := 12151556658
    upperValue := 4738381338321616896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 20))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 25 20))) },
  { key := { q := 6, n := 48, r := 21 }
    lowerValue := 1797914647
    upperValue := 789730223053602816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 21))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 26 21))) },
  { key := { q := 6, n := 48, r := 22 }
    lowerValue := 288662008
    upperValue := 131621703842267136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 22))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 27 22))) },
  { key := { q := 6, n := 48, r := 23 }
    lowerValue := 50248440
    upperValue := 21936950640377856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 23))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 28 23))) },
  { key := { q := 6, n := 48, r := 24 }
    lowerValue := 9477798
    upperValue := 3656158440062976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 24))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 29 24))) },
  { key := { q := 6, n := 48, r := 25 }
    lowerValue := 1936367
    upperValue := 101559956668416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 25))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 31 25))) },
  { key := { q := 6, n := 48, r := 26 }
    lowerValue := 428455
    upperValue := 16926659444736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 26))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 32 26))) },
  { key := { q := 6, n := 48, r := 27 }
    lowerValue := 102683
    upperValue := 2821109907456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 27))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 33 27))) },
  { key := { q := 6, n := 48, r := 28 }
    lowerValue := 26662
    upperValue := 470184984576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 28))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 34 28))) },
  { key := { q := 6, n := 48, r := 29 }
    lowerValue := 7505
    upperValue := 78364164096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 29))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 35 29))) },
  { key := { q := 6, n := 48, r := 30 }
    lowerValue := 2292
    upperValue := 2176782336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 30))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 37 30))) },
  { key := { q := 6, n := 48, r := 31 }
    lowerValue := 760
    upperValue := 362797056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 31))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 38 31))) },
  { key := { q := 6, n := 48, r := 32 }
    lowerValue := 274
    upperValue := 60466176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 32))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 39 32))) },
  { key := { q := 6, n := 48, r := 33 }
    lowerValue := 108
    upperValue := 10077696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 33))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 40 33))) },
  { key := { q := 6, n := 48, r := 34 }
    lowerValue := 46
    upperValue := 1679616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 34))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 41 34))) },
  { key := { q := 6, n := 48, r := 35 }
    lowerValue := 22
    upperValue := 46656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 35))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 43 35))) },
  { key := { q := 6, n := 48, r := 36 }
    lowerValue := 11
    upperValue := 7776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 36))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 44 36))) },
  { key := { q := 6, n := 48, r := 37 }
    lowerValue := 7
    upperValue := 1296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 37))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 45 37))) },
  { key := { q := 6, n := 48, r := 38 }
    lowerValue := 6
    upperValue := 216
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 40 39)))))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 46 38))) },
  { key := { q := 6, n := 48, r := 39 }
    lowerValue := 6
    upperValue := 36
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 41 40))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 47 39))) },
  { key := { q := 6, n := 48, r := 40 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 42 41)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 48 40)) },
  { key := { q := 6, n := 48, r := 41 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 43 42))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 48 41)) },
  { key := { q := 6, n := 48, r := 42 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 44 43)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 48 42)) },
  { key := { q := 6, n := 48, r := 43 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 45 44))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 48 43)) },
  { key := { q := 6, n := 48, r := 44 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 46 45)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 48 44)) },
  { key := { q := 6, n := 48, r := 45 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.lengthBack (by decide : 0 < 6) (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 47 46))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 48 45)) },
  { key := { q := 6, n := 48, r := 46 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.radiusBack (by decide : 46 ≤ 47) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 48 47)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 48 46)) },
  { key := { q := 6, n := 48, r := 47 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 6 48 47))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 6 48 47)) },
  { key := { q := 6, n := 48, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 48 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 48 48)) },
  { key := { q := 7, n := 0, r := 0 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 0)) },
  { key := { q := 7, n := 0, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 1))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 1)) },
  { key := { q := 7, n := 0, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 2))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 2)) },
  { key := { q := 7, n := 0, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 3))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 3)) },
  { key := { q := 7, n := 0, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 4))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 4)) },
  { key := { q := 7, n := 0, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 5))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 5)) },
  { key := { q := 7, n := 0, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 6))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 6)) },
  { key := { q := 7, n := 0, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 7))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 7)) },
  { key := { q := 7, n := 0, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 8))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 8)) },
  { key := { q := 7, n := 0, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 9))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 9)) },
  { key := { q := 7, n := 0, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 10))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 10)) },
  { key := { q := 7, n := 0, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 11))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 11)) },
  { key := { q := 7, n := 0, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 12))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 12)) },
  { key := { q := 7, n := 0, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 13))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 13)) },
  { key := { q := 7, n := 0, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 14))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 14)) },
  { key := { q := 7, n := 0, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 15))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 15)) },
  { key := { q := 7, n := 0, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 16))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 16)) },
  { key := { q := 7, n := 0, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 17))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 17)) },
  { key := { q := 7, n := 0, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 18))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 18)) },
  { key := { q := 7, n := 0, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 19))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 19)) },
  { key := { q := 7, n := 0, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 20))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 20)) },
  { key := { q := 7, n := 0, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 21))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 21)) },
  { key := { q := 7, n := 0, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 22))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 22)) },
  { key := { q := 7, n := 0, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 23))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 23)) },
  { key := { q := 7, n := 0, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 24))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 24)) },
  { key := { q := 7, n := 0, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 25))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 25)) },
  { key := { q := 7, n := 0, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 26))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 26)) },
  { key := { q := 7, n := 0, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 27))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 27)) },
  { key := { q := 7, n := 0, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 28))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 28)) },
  { key := { q := 7, n := 0, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 29))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 29)) },
  { key := { q := 7, n := 0, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 30))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 30)) },
  { key := { q := 7, n := 0, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 31))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 31)) },
  { key := { q := 7, n := 0, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 32))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 32)) },
  { key := { q := 7, n := 0, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 33))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 33)) },
  { key := { q := 7, n := 0, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 34))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 34)) },
  { key := { q := 7, n := 0, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 35))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 35)) },
  { key := { q := 7, n := 0, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 36))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 36)) },
  { key := { q := 7, n := 0, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 37))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 37)) },
  { key := { q := 7, n := 0, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 38))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 38)) },
  { key := { q := 7, n := 0, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 39))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 39)) },
  { key := { q := 7, n := 0, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 40))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 40)) },
  { key := { q := 7, n := 0, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 41))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 41)) },
  { key := { q := 7, n := 0, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 42))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 42)) },
  { key := { q := 7, n := 0, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 43))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 43)) },
  { key := { q := 7, n := 0, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 44))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 44)) },
  { key := { q := 7, n := 0, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 45))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 45)) },
  { key := { q := 7, n := 0, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 46))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 46)) },
  { key := { q := 7, n := 0, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 47))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 47)) },
  { key := { q := 7, n := 0, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 0 48))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 0 48)) },
  { key := { q := 7, n := 1, r := 0 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 1 0)) },
  { key := { q := 7, n := 1, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 1))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 1)) },
  { key := { q := 7, n := 1, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 2))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 2)) },
  { key := { q := 7, n := 1, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 3)) },
  { key := { q := 7, n := 1, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 4)) },
  { key := { q := 7, n := 1, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 5)) },
  { key := { q := 7, n := 1, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 6)) },
  { key := { q := 7, n := 1, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 7)) },
  { key := { q := 7, n := 1, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 8)) },
  { key := { q := 7, n := 1, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 9)) },
  { key := { q := 7, n := 1, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 10)) },
  { key := { q := 7, n := 1, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 11)) },
  { key := { q := 7, n := 1, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 12)) },
  { key := { q := 7, n := 1, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 13)) },
  { key := { q := 7, n := 1, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 14)) },
  { key := { q := 7, n := 1, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 15)) },
  { key := { q := 7, n := 1, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 16)) },
  { key := { q := 7, n := 1, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 17)) },
  { key := { q := 7, n := 1, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 18)) },
  { key := { q := 7, n := 1, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 19)) },
  { key := { q := 7, n := 1, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 20)) },
  { key := { q := 7, n := 1, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 21)) },
  { key := { q := 7, n := 1, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 22)) },
  { key := { q := 7, n := 1, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 23)) },
  { key := { q := 7, n := 1, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 24)) },
  { key := { q := 7, n := 1, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 25)) },
  { key := { q := 7, n := 1, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 26)) },
  { key := { q := 7, n := 1, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 27)) },
  { key := { q := 7, n := 1, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 28)) },
  { key := { q := 7, n := 1, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 29)) },
  { key := { q := 7, n := 1, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 30)) },
  { key := { q := 7, n := 1, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 31)) },
  { key := { q := 7, n := 1, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 32)) },
  { key := { q := 7, n := 1, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 33)) },
  { key := { q := 7, n := 1, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 34)) },
  { key := { q := 7, n := 1, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 35)) },
  { key := { q := 7, n := 1, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 36)) },
  { key := { q := 7, n := 1, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 37)) },
  { key := { q := 7, n := 1, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 38)) },
  { key := { q := 7, n := 1, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 39)) },
  { key := { q := 7, n := 1, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 40)) },
  { key := { q := 7, n := 1, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 41)) },
  { key := { q := 7, n := 1, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 42)) },
  { key := { q := 7, n := 1, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 43)) },
  { key := { q := 7, n := 1, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 44)) },
  { key := { q := 7, n := 1, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 45)) },
  { key := { q := 7, n := 1, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 46)) },
  { key := { q := 7, n := 1, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 47)) },
  { key := { q := 7, n := 1, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 1 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 1 48)) },
  { key := { q := 7, n := 2, r := 0 }
    lowerValue := 49
    upperValue := 49
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 2 0)) },
  { key := { q := 7, n := 2, r := 1 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 2 1))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 2 1)) },
  { key := { q := 7, n := 2, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 2))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 2)) },
  { key := { q := 7, n := 2, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 3)) },
  { key := { q := 7, n := 2, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 4)) },
  { key := { q := 7, n := 2, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 5)) },
  { key := { q := 7, n := 2, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 6)) },
  { key := { q := 7, n := 2, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 7)) },
  { key := { q := 7, n := 2, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 8)) },
  { key := { q := 7, n := 2, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 9)) },
  { key := { q := 7, n := 2, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 10)) },
  { key := { q := 7, n := 2, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 11)) },
  { key := { q := 7, n := 2, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 12)) },
  { key := { q := 7, n := 2, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 13)) },
  { key := { q := 7, n := 2, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 14)) },
  { key := { q := 7, n := 2, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 15)) },
  { key := { q := 7, n := 2, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 16)) },
  { key := { q := 7, n := 2, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 17)) },
  { key := { q := 7, n := 2, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 18)) },
  { key := { q := 7, n := 2, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 19)) },
  { key := { q := 7, n := 2, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 20)) },
  { key := { q := 7, n := 2, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 21)) },
  { key := { q := 7, n := 2, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 22)) },
  { key := { q := 7, n := 2, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 23)) },
  { key := { q := 7, n := 2, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 24)) },
  { key := { q := 7, n := 2, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 25)) },
  { key := { q := 7, n := 2, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 26)) },
  { key := { q := 7, n := 2, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 27)) },
  { key := { q := 7, n := 2, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 28)) },
  { key := { q := 7, n := 2, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 29)) },
  { key := { q := 7, n := 2, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 30)) },
  { key := { q := 7, n := 2, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 31)) },
  { key := { q := 7, n := 2, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 32)) },
  { key := { q := 7, n := 2, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 33)) },
  { key := { q := 7, n := 2, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 34)) },
  { key := { q := 7, n := 2, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 35)) },
  { key := { q := 7, n := 2, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 36)) },
  { key := { q := 7, n := 2, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 37)) },
  { key := { q := 7, n := 2, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 38)) },
  { key := { q := 7, n := 2, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 39)) },
  { key := { q := 7, n := 2, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 40)) },
  { key := { q := 7, n := 2, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 41)) },
  { key := { q := 7, n := 2, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 42)) },
  { key := { q := 7, n := 2, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 43)) },
  { key := { q := 7, n := 2, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 44)) },
  { key := { q := 7, n := 2, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 45)) },
  { key := { q := 7, n := 2, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 46)) },
  { key := { q := 7, n := 2, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 47)) },
  { key := { q := 7, n := 2, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 2 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 2 48)) },
  { key := { q := 7, n := 3, r := 0 }
    lowerValue := 343
    upperValue := 343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 3 0)) },
  { key := { q := 7, n := 3, r := 1 }
    lowerValue := 22
    upperValue := 25
    lowerTrace := (.primitive "lean_qary_seven_three_one_structural_lower" (primitiveLower_valid 7 3 1))
    upperTrace := (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1)) },
  { key := { q := 7, n := 3, r := 2 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 3 2))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 3 2)) },
  { key := { q := 7, n := 3, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 3)) },
  { key := { q := 7, n := 3, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 4)) },
  { key := { q := 7, n := 3, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 5)) },
  { key := { q := 7, n := 3, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 6)) },
  { key := { q := 7, n := 3, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 7)) },
  { key := { q := 7, n := 3, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 8)) },
  { key := { q := 7, n := 3, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 9)) },
  { key := { q := 7, n := 3, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 10)) },
  { key := { q := 7, n := 3, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 11)) },
  { key := { q := 7, n := 3, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 12)) },
  { key := { q := 7, n := 3, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 13)) },
  { key := { q := 7, n := 3, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 14)) },
  { key := { q := 7, n := 3, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 15)) },
  { key := { q := 7, n := 3, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 16)) },
  { key := { q := 7, n := 3, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 17)) },
  { key := { q := 7, n := 3, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 18)) },
  { key := { q := 7, n := 3, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 19)) },
  { key := { q := 7, n := 3, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 20)) },
  { key := { q := 7, n := 3, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 21)) },
  { key := { q := 7, n := 3, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 22)) },
  { key := { q := 7, n := 3, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 23)) },
  { key := { q := 7, n := 3, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 24)) },
  { key := { q := 7, n := 3, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 25)) },
  { key := { q := 7, n := 3, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 26)) },
  { key := { q := 7, n := 3, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 27)) },
  { key := { q := 7, n := 3, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 28)) },
  { key := { q := 7, n := 3, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 29)) },
  { key := { q := 7, n := 3, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 30)) },
  { key := { q := 7, n := 3, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 31)) },
  { key := { q := 7, n := 3, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 32)) },
  { key := { q := 7, n := 3, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 33)) },
  { key := { q := 7, n := 3, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 34)) },
  { key := { q := 7, n := 3, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 35)) },
  { key := { q := 7, n := 3, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 36)) },
  { key := { q := 7, n := 3, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 37)) },
  { key := { q := 7, n := 3, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 38)) },
  { key := { q := 7, n := 3, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 39)) },
  { key := { q := 7, n := 3, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 40)) },
  { key := { q := 7, n := 3, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 41)) },
  { key := { q := 7, n := 3, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 42)) },
  { key := { q := 7, n := 3, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 43)) },
  { key := { q := 7, n := 3, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 44)) },
  { key := { q := 7, n := 3, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 3 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 3 45)) }]

end CoveringCodes.Database
