import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 112. Do not edit manually.

def precomputedTable_chunk_112 : Array AnyBoundEntry := #[
  { key := { q := 11, n := 32, r := 21 }
    lowerValue := 13569
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 21))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 21))) },
  { key := { q := 11, n := 32, r := 22 }
    lowerValue := 2637
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 22))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 25 22))) },
  { key := { q := 11, n := 32, r := 23 }
    lowerValue := 586
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 23))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 26 23))) },
  { key := { q := 11, n := 32, r := 24 }
    lowerValue := 150
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 24))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 27 24))) },
  { key := { q := 11, n := 32, r := 25 }
    lowerValue := 45
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 25))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 28 25))) },
  { key := { q := 11, n := 32, r := 26 }
    lowerValue := 16
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 26))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 29 26))) },
  { key := { q := 11, n := 32, r := 27 }
    lowerValue := 11
    upperValue := 1331
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 29 28))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 30 27))) },
  { key := { q := 11, n := 32, r := 28 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 30 29)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 31 28))) },
  { key := { q := 11, n := 32, r := 29 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 31 30))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 32 29)) },
  { key := { q := 11, n := 32, r := 30 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 32 31)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 32 30)) },
  { key := { q := 11, n := 32, r := 31 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 32 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 32 31)) },
  { key := { q := 11, n := 32, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 32 32)) },
  { key := { q := 11, n := 32, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 32 33)) },
  { key := { q := 11, n := 32, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 32 34)) },
  { key := { q := 11, n := 32, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 32 35)) },
  { key := { q := 11, n := 32, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 32 36)) },
  { key := { q := 11, n := 32, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 32 37)) },
  { key := { q := 11, n := 32, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 32 38)) },
  { key := { q := 11, n := 32, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 32 39)) },
  { key := { q := 11, n := 32, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 32 40)) },
  { key := { q := 11, n := 32, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 32 41)) },
  { key := { q := 11, n := 32, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 32 42)) },
  { key := { q := 11, n := 32, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 32 43)) },
  { key := { q := 11, n := 32, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 32 44)) },
  { key := { q := 11, n := 32, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 32 45)) },
  { key := { q := 11, n := 32, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 32 46)) },
  { key := { q := 11, n := 32, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 32 47)) },
  { key := { q := 11, n := 32, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 32 48)) },
  { key := { q := 11, n := 33, r := 0 }
    lowerValue := 23225154419887808141001767796309131
    upperValue := 23225154419887808141001767796309131
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 33 0)) },
  { key := { q := 11, n := 33, r := 1 }
    lowerValue := 70166629667334767797588422345345
    upperValue := 1064413538402070846432087028981861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 1))
    upperTrace := (.lengthenFreeN 30 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 33, r := 2 }
    lowerValue := 437130007338235834842215802382
    upperValue := 96764867127460986039280638998351
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 2))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 33, r := 3 }
    lowerValue := 4215756426900686903433911410
    upperValue := 8796806102496453276298239908941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 3))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 33, r := 4 }
    lowerValue := 56003479749491718186937553
    upperValue := 799709645681495752390749082631
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 4))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 33, r := 5 }
    lowerValue := 961771455462813047297567
    upperValue := 72700876880135977490068098421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 5))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 33, r := 6 }
    lowerValue := 20522063906387884147091
    upperValue := 6609170625466907044551645311
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 6))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 5 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 33, r := 7 }
    lowerValue := 529623516600280652555
    upperValue := 600833693224264276777422301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 7))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 6 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 33, r := 8 }
    lowerValue := 16215650788028363795
    upperValue := 54621244838569479707038391
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 8))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 7 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 33, r := 9 }
    lowerValue := 580638037534954917
    upperValue := 4965567712597225427912581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 9))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 8 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 33, r := 10 }
    lowerValue := 24052319264428823
    upperValue := 81402749386839761113321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 10))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 33, r := 11 }
    lowerValue := 1143010598765207
    upperValue := 7400249944258160101211
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 11))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 33, r := 12 }
    lowerValue := 61911192644071
    upperValue := 672749994932560009201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 12))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 33, r := 13 }
    lowerValue := 3803162148753
    upperValue := 61159090448414546291
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 13))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 33, r := 14 }
    lowerValue := 263959040597
    upperValue := 5559917313492231481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 14))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 33, r := 15 }
    lowerValue := 20641902095
    upperValue := 505447028499293771
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 15))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 33, r := 16 }
    lowerValue := 1815432880
    upperValue := 45949729863572161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 16))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 33, r := 17 }
    lowerValue := 179381546
    upperValue := 4177248169415651
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 17))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 33, r := 18 }
    lowerValue := 19907871
    upperValue := 379749833583241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 18))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 33, r := 19 }
    lowerValue := 2482720
    upperValue := 34522712143931
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 19))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 33, r := 20 }
    lowerValue := 348353
    upperValue := 285311670611
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 20))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 20))) },
  { key := { q := 11, n := 33, r := 21 }
    lowerValue := 55103
    upperValue := 25937424601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 21))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 21))) },
  { key := { q := 11, n := 33, r := 22 }
    lowerValue := 9855
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 22))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 25 22))) },
  { key := { q := 11, n := 33, r := 23 }
    lowerValue := 2000
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 23))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 26 23))) },
  { key := { q := 11, n := 33, r := 24 }
    lowerValue := 463
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 24))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 27 24))) },
  { key := { q := 11, n := 33, r := 25 }
    lowerValue := 123
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 25))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 28 25))) },
  { key := { q := 11, n := 33, r := 26 }
    lowerValue := 38
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 26))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 29 26))) },
  { key := { q := 11, n := 33, r := 27 }
    lowerValue := 14
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 27))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 30 27))) },
  { key := { q := 11, n := 33, r := 28 }
    lowerValue := 11
    upperValue := 1331
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 30 29))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 31 28))) },
  { key := { q := 11, n := 33, r := 29 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 31 30)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 32 29))) },
  { key := { q := 11, n := 33, r := 30 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 32 31))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 33 30)) },
  { key := { q := 11, n := 33, r := 31 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 33 32)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 33 31)) },
  { key := { q := 11, n := 33, r := 32 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 33 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 33 32)) },
  { key := { q := 11, n := 33, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 33 33)) },
  { key := { q := 11, n := 33, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 33 34)) },
  { key := { q := 11, n := 33, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 33 35)) },
  { key := { q := 11, n := 33, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 33 36)) },
  { key := { q := 11, n := 33, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 33 37)) },
  { key := { q := 11, n := 33, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 33 38)) },
  { key := { q := 11, n := 33, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 33 39)) },
  { key := { q := 11, n := 33, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 33 40)) },
  { key := { q := 11, n := 33, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 33 41)) },
  { key := { q := 11, n := 33, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 33 42)) },
  { key := { q := 11, n := 33, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 33 43)) },
  { key := { q := 11, n := 33, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 33 44)) },
  { key := { q := 11, n := 33, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 33 45)) },
  { key := { q := 11, n := 33, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 33 46)) },
  { key := { q := 11, n := 33, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 33 47)) },
  { key := { q := 11, n := 33, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 33 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 33 48)) },
  { key := { q := 11, n := 34, r := 0 }
    lowerValue := 255476698618765889551019445759400441
    upperValue := 255476698618765889551019445759400441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 34 0)) },
  { key := { q := 11, n := 34, r := 1 }
    lowerValue := 749198529673800262612960251493843
    upperValue := 11708548922422779310752957318800471
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 1))
    upperTrace := (.lengthenFreeN 31 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 34, r := 2 }
    lowerValue := 4526438203057456273826109490608
    upperValue := 1064413538402070846432087028981861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 2))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 34, r := 3 }
    lowerValue := 42294378608907179053817336476
    upperValue := 96764867127460986039280638998351
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 3))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 34, r := 4 }
    lowerValue := 543798337172624939172884782
    upperValue := 8796806102496453276298239908941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 4))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 34, r := 5 }
    lowerValue := 9028912637284343621529433
    upperValue := 799709645681495752390749082631
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 5))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 34, r := 6 }
    lowerValue := 186044866125575137587186
    upperValue := 72700876880135977490068098421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 6))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 5 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 34, r := 7 }
    lowerValue := 4630771525991721399398
    upperValue := 6609170625466907044551645311
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 7))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 6 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 34, r := 8 }
    lowerValue := 136560881486031971382
    upperValue := 600833693224264276777422301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 8))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 7 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 34, r := 9 }
    lowerValue := 4703002161411706319
    upperValue := 54621244838569479707038391
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 9))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 8 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 34, r := 10 }
    lowerValue := 187079711472679739
    upperValue := 895430243255237372246531
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 10))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 34, r := 11 }
    lowerValue := 8522884558677640
    upperValue := 81402749386839761113321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 11))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 34, r := 12 }
    lowerValue := 441749442495251
    upperValue := 7400249944258160101211
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 12))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 34, r := 13 }
    lowerValue := 25915233340522
    upperValue := 672749994932560009201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 13))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 34, r := 14 }
    lowerValue := 1713967633928
    upperValue := 61159090448414546291
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 14))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 34, r := 15 }
    lowerValue := 127418322201
    upperValue := 5559917313492231481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 15))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 34, r := 16 }
    lowerValue := 10625100840
    upperValue := 505447028499293771
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 16))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 34, r := 17 }
    lowerValue := 992507687
    upperValue := 45949729863572161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 17))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 34, r := 18 }
    lowerValue := 103794652
    upperValue := 4177248169415651
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 18))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 34, r := 19 }
    lowerValue := 12153380
    upperValue := 379749833583241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 19))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 34, r := 20 }
    lowerValue := 1594551
    upperValue := 3138428376721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 20))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 20))) },
  { key := { q := 11, n := 34, r := 21 }
    lowerValue := 234770
    upperValue := 285311670611
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 21))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 21))) },
  { key := { q := 11, n := 34, r := 22 }
    lowerValue := 38876
    upperValue := 25937424601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 22))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 25 22))) },
  { key := { q := 11, n := 34, r := 23 }
    lowerValue := 7262
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 23))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 26 23))) },
  { key := { q := 11, n := 34, r := 24 }
    lowerValue := 1537
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 24))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 27 24))) },
  { key := { q := 11, n := 34, r := 25 }
    lowerValue := 370
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 25))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 28 25))) },
  { key := { q := 11, n := 34, r := 26 }
    lowerValue := 102
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 26))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 29 26))) },
  { key := { q := 11, n := 34, r := 27 }
    lowerValue := 33
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 27))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 30 27))) },
  { key := { q := 11, n := 34, r := 28 }
    lowerValue := 12
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 28))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 31 28))) },
  { key := { q := 11, n := 34, r := 29 }
    lowerValue := 11
    upperValue := 1331
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 31 30))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 32 29))) },
  { key := { q := 11, n := 34, r := 30 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 32 31)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 34 30)) },
  { key := { q := 11, n := 34, r := 31 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 33 32))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 34 31)) },
  { key := { q := 11, n := 34, r := 32 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 34 33)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 34 32)) },
  { key := { q := 11, n := 34, r := 33 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 34 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 34 33)) },
  { key := { q := 11, n := 34, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 34 34)) },
  { key := { q := 11, n := 34, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 34 35)) },
  { key := { q := 11, n := 34, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 34 36)) },
  { key := { q := 11, n := 34, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 34 37)) },
  { key := { q := 11, n := 34, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 34 38)) },
  { key := { q := 11, n := 34, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 34 39)) },
  { key := { q := 11, n := 34, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 34 40)) },
  { key := { q := 11, n := 34, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 34 41)) },
  { key := { q := 11, n := 34, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 34 42)) },
  { key := { q := 11, n := 34, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 34 43)) },
  { key := { q := 11, n := 34, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 34 44)) },
  { key := { q := 11, n := 34, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 34 45)) },
  { key := { q := 11, n := 34, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 34 46)) },
  { key := { q := 11, n := 34, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 34 47)) },
  { key := { q := 11, n := 34, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 34 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 34 48)) },
  { key := { q := 11, n := 35, r := 0 }
    lowerValue := 2810243684806424785061213903353404851
    upperValue := 2810243684806424785061213903353404851
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 35 0)) },
  { key := { q := 11, n := 35, r := 1 }
    lowerValue := 8006392264405768618408016818670670
    upperValue := 128794038146650572418282530506805181
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 1))
    upperTrace := (.lengthenFreeN 32 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 35, r := 2 }
    lowerValue := 46953997173086912249773836750488
    upperValue := 11708548922422779310752957318800471
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 2))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 35, r := 3 }
    lowerValue := 425481768598023601904299416195
    upperValue := 1064413538402070846432087028981861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 3))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 35, r := 4 }
    lowerValue := 5300297949945434929755506714
    upperValue := 96764867127460986039280638998351
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 4))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 35, r := 5 }
    lowerValue := 85175922203168699724485853
    upperValue := 8796806102496453276298239908941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 5))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 35, r := 6 }
    lowerValue := 1696849867032248389604355
    upperValue := 799709645681495752390749082631
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 6))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 5 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 35, r := 7 }
    lowerValue := 40786480176869349706028
    upperValue := 72700876880135977490068098421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 7))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 6 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 35, r := 8 }
    lowerValue := 1160067284200970269779
    upperValue := 6609170625466907044551645311
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 8))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 7 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 35, r := 9 }
    lowerValue := 38480704705016092816
    upperValue := 600833693224264276777422301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 9))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 8 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 35, r := 10 }
    lowerValue := 1472238313795952410
    upperValue := 9849732675807611094711841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 10))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 35, r := 11 }
    lowerValue := 64408723747328213
    upperValue := 895430243255237372246531
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 11))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 35, r := 12 }
    lowerValue := 3200429800171235
    upperValue := 81402749386839761113321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 12))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 35, r := 13 }
    lowerValue := 179666314187352
    upperValue := 7400249944258160101211
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 13))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 35, r := 14 }
    lowerValue := 11348219901481
    upperValue := 672749994932560009201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 14))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 35, r := 15 }
    lowerValue := 803941901952
    upperValue := 61159090448414546291
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 15))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 35, r := 16 }
    lowerValue := 63731760201
    upperValue := 5559917313492231481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 16))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 35, r := 17 }
    lowerValue := 5644741299
    upperValue := 505447028499293771
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 17))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 35, r := 18 }
    lowerValue := 558095270
    upperValue := 45949729863572161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 18))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 35, r := 19 }
    lowerValue := 61581278
    upperValue := 4177248169415651
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 19))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 35, r := 20 }
    lowerValue := 7586457
    upperValue := 34522712143931
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 20))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 20))) },
  { key := { q := 11, n := 35, r := 21 }
    lowerValue := 1044550
    upperValue := 3138428376721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 21))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 21))) },
  { key := { q := 11, n := 35, r := 22 }
    lowerValue := 161011
    upperValue := 285311670611
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 22))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 25 22))) },
  { key := { q := 11, n := 35, r := 23 }
    lowerValue := 27853
    upperValue := 25937424601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 23))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 26 23))) },
  { key := { q := 11, n := 35, r := 24 }
    lowerValue := 5424
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 24))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 27 24))) },
  { key := { q := 11, n := 35, r := 25 }
    lowerValue := 1194
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 25))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 28 25))) },
  { key := { q := 11, n := 35, r := 26 }
    lowerValue := 299
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 26))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 29 26))) },
  { key := { q := 11, n := 35, r := 27 }
    lowerValue := 86
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 27))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 30 27))) },
  { key := { q := 11, n := 35, r := 28 }
    lowerValue := 29
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 28))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 31 28))) },
  { key := { q := 11, n := 35, r := 29 }
    lowerValue := 11
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 29))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 32 29))) },
  { key := { q := 11, n := 35, r := 30 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 32 31))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 34 30))) },
  { key := { q := 11, n := 35, r := 31 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 33 32)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 35 31)) },
  { key := { q := 11, n := 35, r := 32 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 34 33))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 35 32)) },
  { key := { q := 11, n := 35, r := 33 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 35 34)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 35 33)) },
  { key := { q := 11, n := 35, r := 34 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 35 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 35 34)) },
  { key := { q := 11, n := 35, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 35 35)) },
  { key := { q := 11, n := 35, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 35 36)) },
  { key := { q := 11, n := 35, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 35 37)) },
  { key := { q := 11, n := 35, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 35 38)) },
  { key := { q := 11, n := 35, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 35 39)) },
  { key := { q := 11, n := 35, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 35 40)) },
  { key := { q := 11, n := 35, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 35 41)) },
  { key := { q := 11, n := 35, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 35 42)) },
  { key := { q := 11, n := 35, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 35 43)) },
  { key := { q := 11, n := 35, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 35 44)) },
  { key := { q := 11, n := 35, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 35 45)) },
  { key := { q := 11, n := 35, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 35 46)) },
  { key := { q := 11, n := 35, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 35 47)) },
  { key := { q := 11, n := 35, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 35 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 35 48)) },
  { key := { q := 11, n := 36, r := 0 }
    lowerValue := 30912680532870672635673352936887453361
    upperValue := 30912680532870672635673352936887453361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 36 0)) },
  { key := { q := 11, n := 36, r := 1 }
    lowerValue := 85630693996871669350895714506613445
    upperValue := 1416734419613156296601107835574856991
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 1))
    upperTrace := (.lengthenFreeN 33 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 36, r := 2 }
    lowerValue := 487881828457105674400235995910536
    upperValue := 128794038146650572418282530506805181
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 2))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 36, r := 3 }
    lowerValue := 4291424590947291498464862851784
    upperValue := 11708548922422779310752957318800471
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 3))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 36, r := 4 }
    lowerValue := 51844874267921606962100382923
    upperValue := 1064413538402070846432087028981861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 4))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 36, r := 5 }
    lowerValue := 807215421670711282943867509
    upperValue := 96764867127460986039280638998351
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 5))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 36, r := 6 }
    lowerValue := 15564611961350449011484613
    upperValue := 8796806102496453276298239908941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 6))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 5 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 36, r := 7 }
    lowerValue := 361708824192728223548474
    upperValue := 799709645681495752390749082631
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 7))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 6 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 36, r := 8 }
    lowerValue := 9934986808928321798122
    upperValue := 72700876880135977490068098421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 8))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 7 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 36, r := 9 }
    lowerValue := 317852567474849187126
    upperValue := 6609170625466907044551645311
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 9))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 8 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 36, r := 10 }
    lowerValue := 11713238294246858929
    upperValue := 108347059433883722041830251
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 10))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 36, r := 11 }
    lowerValue := 492870720505692195
    upperValue := 9849732675807611094711841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 11))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 36, r := 12 }
    lowerValue := 23518520075987240
    upperValue := 895430243255237372246531
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 12))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 36, r := 13 }
    lowerValue := 1265756662821893
    upperValue := 81402749386839761113321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 13))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 36, r := 14 }
    lowerValue := 76506686048533
    upperValue := 7400249944258160101211
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 14))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 36, r := 15 }
    lowerValue := 5176308719897
    upperValue := 672749994932560009201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 15))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 36, r := 16 }
    lowerValue := 391048909697
    upperValue := 61159090448414546291
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 16))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 36, r := 17 }
    lowerValue := 32927854155
    upperValue := 5559917313492231481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 17))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 36, r := 18 }
    lowerValue := 3086966170
    upperValue := 505447028499293771
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 18))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 36, r := 19 }
    lowerValue := 322044320
    upperValue := 45949729863572161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 19))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 36, r := 20 }
    lowerValue := 37389422
    upperValue := 379749833583241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 20))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 20))) },
  { key := { q := 11, n := 36, r := 21 }
    lowerValue := 4834126
    upperValue := 34522712143931
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 21))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 21))) },
  { key := { q := 11, n := 36, r := 22 }
    lowerValue := 696897
    upperValue := 3138428376721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 22))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 25 22))) },
  { key := { q := 11, n := 36, r := 23 }
    lowerValue := 112232
    upperValue := 285311670611
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 23))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 26 23))) },
  { key := { q := 11, n := 36, r := 24 }
    lowerValue := 20243
    upperValue := 25937424601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 24))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 27 24))) },
  { key := { q := 11, n := 36, r := 25 }
    lowerValue := 4103
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 25))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 28 25))) },
  { key := { q := 11, n := 36, r := 26 }
    lowerValue := 939
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 26))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 29 26))) },
  { key := { q := 11, n := 36, r := 27 }
    lowerValue := 244
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 27))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 30 27))) },
  { key := { q := 11, n := 36, r := 28 }
    lowerValue := 72
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 28))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 31 28))) },
  { key := { q := 11, n := 36, r := 29 }
    lowerValue := 25
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 29))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 32 29))) },
  { key := { q := 11, n := 36, r := 30 }
    lowerValue := 11
    upperValue := 1331
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 32 31)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 34 30))) },
  { key := { q := 11, n := 36, r := 31 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 33 32))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 35 31))) },
  { key := { q := 11, n := 36, r := 32 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 34 33)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 36 32)) },
  { key := { q := 11, n := 36, r := 33 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 35 34))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 36 33)) },
  { key := { q := 11, n := 36, r := 34 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 36 35)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 36 34)) },
  { key := { q := 11, n := 36, r := 35 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 36 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 36 35)) },
  { key := { q := 11, n := 36, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 36 36)) },
  { key := { q := 11, n := 36, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 36 37)) },
  { key := { q := 11, n := 36, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 36 38)) },
  { key := { q := 11, n := 36, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 36 39)) },
  { key := { q := 11, n := 36, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 36 40)) },
  { key := { q := 11, n := 36, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 36 41)) },
  { key := { q := 11, n := 36, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 36 42)) },
  { key := { q := 11, n := 36, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 36 43)) },
  { key := { q := 11, n := 36, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 36 44)) },
  { key := { q := 11, n := 36, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 36 45)) },
  { key := { q := 11, n := 36, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 36 46)) },
  { key := { q := 11, n := 36, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 36 47)) },
  { key := { q := 11, n := 36, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 36 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 36 48)) },
  { key := { q := 11, n := 37, r := 0 }
    lowerValue := 340039485861577398992406882305761986971
    upperValue := 340039485861577398992406882305761986971
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 37 0)) },
  { key := { q := 11, n := 37, r := 1 }
    lowerValue := 916548479411259835559048200285072742
    upperValue := 15584078615744719262612186191323426901
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 1))
    upperTrace := (.lengthenFreeN 34 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 37, r := 2 }
    lowerValue := 5077413893499834241573321024111362
    upperValue := 1416734419613156296601107835574856991
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 2))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 37, r := 3 }
    lowerValue := 43389146886160150266270843965834
    upperValue := 128794038146650572418282530506805181
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 3))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 37, r := 4 }
    lowerValue := 508822557699658338831218785359
    upperValue := 11708548922422779310752957318800471
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 4))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 37, r := 5 }
    lowerValue := 7683121378394094583782936744
    upperValue := 1064413538402070846432087028981861
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 5))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 37, r := 6 }
    lowerValue := 143534596571816648977352872
    upperValue := 96764867127460986039280638998351
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 6))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 5 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 37, r := 7 }
    lowerValue := 3228516333319367554486185
    upperValue := 8796806102496453276298239908941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 7))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 6 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 37, r := 8 }
    lowerValue := 85735931301185615919290
    upperValue := 799709645681495752390749082631
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 8))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 7 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 37, r := 9 }
    lowerValue := 2648906748573388294770
    upperValue := 72700876880135977490068098421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 9))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 8 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 37, r := 10 }
    lowerValue := 94150180319322345459
    upperValue := 1191817653772720942460132761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 10))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 37, r := 11 }
    lowerValue := 3815914081415551489
    upperValue := 108347059433883722041830251
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 11))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 37, r := 12 }
    lowerValue := 175134197197695960
    upperValue := 9849732675807611094711841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 12))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 37, r := 13 }
    lowerValue := 9051724168571586
    upperValue := 895430243255237372246531
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 13))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 37, r := 14 }
    lowerValue := 524529734639447
    upperValue := 81402749386839761113321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 14))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 37, r := 15 }
    lowerValue := 33961582507454
    upperValue := 7400249944258160101211
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 15))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 37, r := 16 }
    lowerValue := 2450377915480
    upperValue := 672749994932560009201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 16))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 37, r := 17 }
    lowerValue := 196633372612
    upperValue := 61159090448414546291
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 17))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 37, r := 18 }
    lowerValue := 17526056855
    upperValue := 5559917313492231481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 18))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 37, r := 19 }
    lowerValue := 1733760802
    upperValue := 505447028499293771
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 19))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 37, r := 20 }
    lowerValue := 190320772
    upperValue := 4177248169415651
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 20))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 20))) },
  { key := { q := 11, n := 37, r := 21 }
    lowerValue := 23191194
    upperValue := 379749833583241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 21))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 21))) },
  { key := { q := 11, n := 37, r := 22 }
    lowerValue := 3139664
    upperValue := 34522712143931
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 22))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 25 22))) },
  { key := { q := 11, n := 37, r := 23 }
    lowerValue := 472926
    upperValue := 3138428376721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 23))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 26 23))) },
  { key := { q := 11, n := 37, r := 24 }
    lowerValue := 79422
    upperValue := 285311670611
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 24))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 27 24))) },
  { key := { q := 11, n := 37, r := 25 }
    lowerValue := 14910
    upperValue := 25937424601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 37 25))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 28 25))) }]

end CoveringCodes.Database
