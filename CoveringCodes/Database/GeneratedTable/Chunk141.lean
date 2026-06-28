import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 141. Do not edit manually.

def precomputedTable_chunk_141 : Array AnyBoundEntry := #[
  { key := { q := 14, n := 33, r := 19 }
    lowerValue := 50135156
    upperValue := 793714773254144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 19))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 21 19))) },
  { key := { q := 14, n := 33, r := 20 }
    lowerValue := 5435497
    upperValue := 56693912375296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 20))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 22 20))) },
  { key := { q := 14, n := 33, r := 21 }
    lowerValue := 664883
    upperValue := 4049565169664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 21))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 21))) },
  { key := { q := 14, n := 33, r := 22 }
    lowerValue := 92044
    upperValue := 289254654976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 22))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 24 22))) },
  { key := { q := 14, n := 33, r := 23 }
    lowerValue := 14480
    upperValue := 20661046784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 23))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 25 23))) },
  { key := { q := 14, n := 33, r := 24 }
    lowerValue := 2603
    upperValue := 1475789056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 24))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 26 24))) },
  { key := { q := 14, n := 33, r := 25 }
    lowerValue := 538
    upperValue := 105413504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 25))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 27 25))) },
  { key := { q := 14, n := 33, r := 26 }
    lowerValue := 129
    upperValue := 537824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 26))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 29 26))) },
  { key := { q := 14, n := 33, r := 27 }
    lowerValue := 37
    upperValue := 38416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 27))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 30 27))) },
  { key := { q := 14, n := 33, r := 28 }
    lowerValue := 14
    upperValue := 2744
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 30 29))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 31 28))) },
  { key := { q := 14, n := 33, r := 29 }
    lowerValue := 14
    upperValue := 196
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 31 30)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 32 29))) },
  { key := { q := 14, n := 33, r := 30 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 32 31))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 33 30)) },
  { key := { q := 14, n := 33, r := 31 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 33 32)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 33 31)) },
  { key := { q := 14, n := 33, r := 32 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 33 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 33 32)) },
  { key := { q := 14, n := 33, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 33 33)) },
  { key := { q := 14, n := 33, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 33 34)) },
  { key := { q := 14, n := 33, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 33 35)) },
  { key := { q := 14, n := 33, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 33 36)) },
  { key := { q := 14, n := 33, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 33 37)) },
  { key := { q := 14, n := 33, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 33 38)) },
  { key := { q := 14, n := 33, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 33 39)) },
  { key := { q := 14, n := 33, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 33 40)) },
  { key := { q := 14, n := 33, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 33 41)) },
  { key := { q := 14, n := 33, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 33 42)) },
  { key := { q := 14, n := 33, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 33 43)) },
  { key := { q := 14, n := 33, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 33 44)) },
  { key := { q := 14, n := 33, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 33 45)) },
  { key := { q := 14, n := 33, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 33 46)) },
  { key := { q := 14, n := 33, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 33 47)) },
  { key := { q := 14, n := 33, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 33 48)) },
  { key := { q := 14, n := 34, r := 0 }
    lowerValue := 929722225368296217729286886758826377216
    upperValue := 929722225368296217729286886758826377216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 34 0)) },
  { key := { q := 14, n := 34, r := 1 }
    lowerValue := 2098695768325725096454372204873197240
    upperValue := 18973922966699922810801773199159721984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 1))
    upperTrace := (.lengthenFreeN 25 (@UpperTrace.alphabetExpand 7 14 2 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 2) (by decide : 14 ≤ 2 * 7) (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 14, n := 34, r := 2 }
    lowerValue := 9760658310253813229426016112615236
    upperValue := 1327621432072297806003622614518464512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 2))
    upperTrace := (.lengthenFreeN 28 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 14, n := 34, r := 3 }
    lowerValue := 70209575925895153920396831828700
    upperValue := 94830102290878414714544472465604608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 3))
    upperTrace := (.lengthenFreeN 27 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 34, r := 4 }
    lowerValue := 694970275798289480306555225700
    upperValue := 6773578735062743908181748033257472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 4))
    upperTrace := (.lengthenFreeN 26 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 34, r := 5 }
    lowerValue := 8883916512572929517645709929
    upperValue := 483827052504481707727267716661248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 5))
    upperTrace := (.lengthenFreeN 25 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 34, r := 6 }
    lowerValue := 140947151019807449127691660
    upperValue := 34559075178891550551947694047232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 6))
    upperTrace := (.lengthenFreeN 24 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 34, r := 7 }
    lowerValue := 2701430902222444007572701
    upperValue := 2468505369920825039424835289088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 7))
    upperTrace := (.lengthenFreeN 23 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 34, r := 8 }
    lowerValue := 61348639584473503340112
    upperValue := 176321812137201788530345377792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 8))
    upperTrace := (.lengthenFreeN 22 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 34, r := 9 }
    lowerValue := 1627169163992125430030
    upperValue := 12594415152657270609310384128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 9))
    upperTrace := (.lengthenFreeN 21 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 34, r := 10 }
    lowerValue := 49855063004813141872
    upperValue := 899601082332662186379313152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 10))
    upperTrace := (.lengthenFreeN 20 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 34, r := 11 }
    lowerValue := 1749632029850064987
    upperValue := 64257220166618727598522368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 11))
    upperTrace := (.lengthenFreeN 19 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 34, r := 12 }
    lowerValue := 69867255985864426
    upperValue := 4589801440472766257037312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 12))
    upperTrace := (.lengthenFreeN 18 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 10 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 34, r := 13 }
    lowerValue := 3158343979281960
    upperValue := 83668255425284801560576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 13))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 15 13))) },
  { key := { q := 14, n := 34, r := 14 }
    lowerValue := 160988013223986
    upperValue := 5976303958948914397184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 14))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 16 14))) },
  { key := { q := 14, n := 34, r := 15 }
    lowerValue := 9225772603496
    upperValue := 426878854210636742656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 15))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 17 15))) },
  { key := { q := 14, n := 34, r := 16 }
    lowerValue := 593189695700
    upperValue := 30491346729331195904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 16))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 18 16))) },
  { key := { q := 14, n := 34, r := 17 }
    lowerValue := 42738006491
    upperValue := 2177953337809371136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 17))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 19 17))) },
  { key := { q := 14, n := 34, r := 18 }
    lowerValue := 3448507040
    upperValue := 155568095557812224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 18))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 20 18))) },
  { key := { q := 14, n := 34, r := 19 }
    lowerValue := 311686312
    upperValue := 11112006825558016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 19))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 21 19))) },
  { key := { q := 14, n := 34, r := 20 }
    lowerValue := 31583109
    upperValue := 793714773254144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 20))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 22 20))) },
  { key := { q := 14, n := 34, r := 21 }
    lowerValue := 3593697
    upperValue := 56693912375296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 21))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 21))) },
  { key := { q := 14, n := 34, r := 22 }
    lowerValue := 460274
    upperValue := 4049565169664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 22))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 24 22))) },
  { key := { q := 14, n := 34, r := 23 }
    lowerValue := 66573
    upperValue := 289254654976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 23))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 25 23))) },
  { key := { q := 14, n := 34, r := 24 }
    lowerValue := 10920
    upperValue := 20661046784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 24))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 26 24))) },
  { key := { q := 14, n := 34, r := 25 }
    lowerValue := 2043
    upperValue := 1475789056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 25))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 27 25))) },
  { key := { q := 14, n := 34, r := 26 }
    lowerValue := 439
    upperValue := 7529536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 26))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 29 26))) },
  { key := { q := 14, n := 34, r := 27 }
    lowerValue := 109
    upperValue := 537824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 27))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 30 27))) },
  { key := { q := 14, n := 34, r := 28 }
    lowerValue := 32
    upperValue := 38416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 28))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 31 28))) },
  { key := { q := 14, n := 34, r := 29 }
    lowerValue := 14
    upperValue := 2744
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 31 30))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 32 29))) },
  { key := { q := 14, n := 34, r := 30 }
    lowerValue := 14
    upperValue := 196
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 32 31)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 33 30))) },
  { key := { q := 14, n := 34, r := 31 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 33 32))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 34 31)) },
  { key := { q := 14, n := 34, r := 32 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 34 33)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 34 32)) },
  { key := { q := 14, n := 34, r := 33 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 34 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 34 33)) },
  { key := { q := 14, n := 34, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 34 34)) },
  { key := { q := 14, n := 34, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 34 35)) },
  { key := { q := 14, n := 34, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 34 36)) },
  { key := { q := 14, n := 34, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 34 37)) },
  { key := { q := 14, n := 34, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 34 38)) },
  { key := { q := 14, n := 34, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 34 39)) },
  { key := { q := 14, n := 34, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 34 40)) },
  { key := { q := 14, n := 34, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 34 41)) },
  { key := { q := 14, n := 34, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 34 42)) },
  { key := { q := 14, n := 34, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 34 43)) },
  { key := { q := 14, n := 34, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 34 44)) },
  { key := { q := 14, n := 34, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 34 45)) },
  { key := { q := 14, n := 34, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 34 46)) },
  { key := { q := 14, n := 34, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 34 47)) },
  { key := { q := 14, n := 34, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 34 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 34 48)) },
  { key := { q := 14, n := 35, r := 0 }
    lowerValue := 13016111155156147048210016414623569281024
    upperValue := 13016111155156147048210016414623569281024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 35 0)) },
  { key := { q := 14, n := 35, r := 1 }
    lowerValue := 28544103410430147035548281611016599301
    upperValue := 265634921533798919351224824788236107776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 1))
    upperTrace := (.lengthenFreeN 26 (@UpperTrace.alphabetExpand 7 14 2 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 2) (by decide : 14 ≤ 2 * 7) (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 14, n := 35, r := 2 }
    lowerValue := 128858353596698845157557260245157154
    upperValue := 18586700049012169284050716603258503168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 2))
    upperTrace := (.lengthenFreeN 29 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 14, n := 35, r := 3 }
    lowerValue := 898879363019036732762327194723644
    upperValue := 1327621432072297806003622614518464512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 3))
    upperTrace := (.lengthenFreeN 28 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 35, r := 4 }
    lowerValue := 8620316026217014941906729654384
    upperValue := 94830102290878414714544472465604608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 4))
    upperTrace := (.lengthenFreeN 27 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 35, r := 5 }
    lowerValue := 106651387804911502694783131055
    upperValue := 6773578735062743908181748033257472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 5))
    upperTrace := (.lengthenFreeN 26 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 35, r := 6 }
    lowerValue := 1635862516043333061041311006
    upperValue := 483827052504481707727267716661248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 6))
    upperTrace := (.lengthenFreeN 25 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 35, r := 7 }
    lowerValue := 30276335787120212127864820
    upperValue := 34559075178891550551947694047232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 7))
    upperTrace := (.lengthenFreeN 24 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 35, r := 8 }
    lowerValue := 663112872923412594749996
    upperValue := 2468505369920825039424835289088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 8))
    upperTrace := (.lengthenFreeN 23 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 35, r := 9 }
    lowerValue := 16939557056305797629197
    upperValue := 176321812137201788530345377792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 9))
    upperTrace := (.lengthenFreeN 22 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 35, r := 10 }
    lowerValue := 499153602789426808933
    upperValue := 12594415152657270609310384128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 10))
    upperTrace := (.lengthenFreeN 21 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 35, r := 11 }
    lowerValue := 16820764622123900080
    upperValue := 899601082332662186379313152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 11))
    upperTrace := (.lengthenFreeN 20 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 35, r := 12 }
    lowerValue := 643885680852602909
    upperValue := 64257220166618727598522368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 12))
    upperTrace := (.lengthenFreeN 19 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 10 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 35, r := 13 }
    lowerValue := 27850234978682296
    upperValue := 1171355575953987221848064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 13))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 15 13))) },
  { key := { q := 14, n := 35, r := 14 }
    lowerValue := 1355574606599707
    upperValue := 83668255425284801560576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 14))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 16 14))) },
  { key := { q := 14, n := 35, r := 15 }
    lowerValue := 74017930188490
    upperValue := 5976303958948914397184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 15))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 17 15))) },
  { key := { q := 14, n := 35, r := 16 }
    lowerValue := 4523574769169
    upperValue := 426878854210636742656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 16))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 18 16))) },
  { key := { q := 14, n := 35, r := 17 }
    lowerValue := 308956687118
    upperValue := 30491346729331195904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 17))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 19 17))) },
  { key := { q := 14, n := 35, r := 18 }
    lowerValue := 23562697980
    upperValue := 2177953337809371136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 18))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 20 18))) },
  { key := { q := 14, n := 35, r := 19 }
    lowerValue := 2006276438
    upperValue := 155568095557812224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 19))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 21 19))) },
  { key := { q := 14, n := 35, r := 20 }
    lowerValue := 190810836
    upperValue := 11112006825558016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 20))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 22 20))) },
  { key := { q := 14, n := 35, r := 21 }
    lowerValue := 20293459
    upperValue := 793714773254144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 21))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 21))) },
  { key := { q := 14, n := 35, r := 22 }
    lowerValue := 2417935
    upperValue := 56693912375296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 22))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 24 22))) },
  { key := { q := 14, n := 35, r := 23 }
    lowerValue := 323585
    upperValue := 4049565169664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 23))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 25 23))) },
  { key := { q := 14, n := 35, r := 24 }
    lowerValue := 48806
    upperValue := 289254654976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 24))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 26 24))) },
  { key := { q := 14, n := 35, r := 25 }
    lowerValue := 8333
    upperValue := 20661046784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 25))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 27 25))) },
  { key := { q := 14, n := 35, r := 26 }
    lowerValue := 1620
    upperValue := 105413504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 26))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 29 26))) },
  { key := { q := 14, n := 35, r := 27 }
    lowerValue := 361
    upperValue := 7529536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 27))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 30 27))) },
  { key := { q := 14, n := 35, r := 28 }
    lowerValue := 93
    upperValue := 537824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 28))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 31 28))) },
  { key := { q := 14, n := 35, r := 29 }
    lowerValue := 28
    upperValue := 38416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 29))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 32 29))) },
  { key := { q := 14, n := 35, r := 30 }
    lowerValue := 14
    upperValue := 2744
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 32 31))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 33 30))) },
  { key := { q := 14, n := 35, r := 31 }
    lowerValue := 14
    upperValue := 196
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 33 32)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 34 31))) },
  { key := { q := 14, n := 35, r := 32 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 34 33))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 35 32)) },
  { key := { q := 14, n := 35, r := 33 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 35 34)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 35 33)) },
  { key := { q := 14, n := 35, r := 34 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 35 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 35 34)) },
  { key := { q := 14, n := 35, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 35 35)) },
  { key := { q := 14, n := 35, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 35 36)) },
  { key := { q := 14, n := 35, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 35 37)) },
  { key := { q := 14, n := 35, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 35 38)) },
  { key := { q := 14, n := 35, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 35 39)) },
  { key := { q := 14, n := 35, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 35 40)) },
  { key := { q := 14, n := 35, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 35 41)) },
  { key := { q := 14, n := 35, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 35 42)) },
  { key := { q := 14, n := 35, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 35 43)) },
  { key := { q := 14, n := 35, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 35 44)) },
  { key := { q := 14, n := 35, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 35 45)) },
  { key := { q := 14, n := 35, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 35 46)) },
  { key := { q := 14, n := 35, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 35 47)) },
  { key := { q := 14, n := 35, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 35 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 35 48)) },
  { key := { q := 14, n := 36, r := 0 }
    lowerValue := 182225556172186058674940229804729969934336
    upperValue := 182225556172186058674940229804729969934336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 36 0)) },
  { key := { q := 14, n := 36, r := 1 }
    lowerValue := 388540631497198419349552728794733411374
    upperValue := 3718888901473184870917147547035305508864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 1))
    upperTrace := (.lengthenFreeN 27 (@UpperTrace.alphabetExpand 7 14 2 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 2) (by decide : 14 ≤ 2 * 7) (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 14, n := 36, r := 2 }
    lowerValue := 1704014028298245342437653520275390363
    upperValue := 260213800686170369976710032445619044352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 2))
    upperTrace := (.lengthenFreeN 30 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 14, n := 36, r := 3 }
    lowerValue := 11537995817916580761699797860421732
    upperValue := 18586700049012169284050716603258503168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 3))
    upperTrace := (.lengthenFreeN 29 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 36, r := 4 }
    lowerValue := 107306433618331711891759800380605
    upperValue := 1327621432072297806003622614518464512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 4))
    upperTrace := (.lengthenFreeN 28 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 36, r := 5 }
    lowerValue := 1286243538196430428384753962857
    upperValue := 94830102290878414714544472465604608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 5))
    upperTrace := (.lengthenFreeN 27 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 36, r := 6 }
    lowerValue := 19094621041296690730138000127
    upperValue := 6773578735062743908181748033257472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 6))
    upperTrace := (.lengthenFreeN 26 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 36, r := 7 }
    lowerValue := 341663629046116403965069865
    upperValue := 483827052504481707727267716661248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 7))
    upperTrace := (.lengthenFreeN 25 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 36, r := 8 }
    lowerValue := 7226115501036195891955426
    upperValue := 34559075178891550551947694047232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 8))
    upperTrace := (.lengthenFreeN 24 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 36, r := 9 }
    lowerValue := 178031144102883929033714
    upperValue := 2468505369920825039424835289088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 9))
    upperTrace := (.lengthenFreeN 23 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 36, r := 10 }
    lowerValue := 5052645315762269793450
    upperValue := 176321812137201788530345377792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 10))
    upperTrace := (.lengthenFreeN 22 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 36, r := 11 }
    lowerValue := 163753383189635213608
    upperValue := 12594415152657270609310384128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 11))
    upperTrace := (.lengthenFreeN 21 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 36, r := 12 }
    lowerValue := 6019110657593353843
    upperValue := 899601082332662186379313152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 12))
    upperTrace := (.lengthenFreeN 20 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 10 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 36, r := 13 }
    lowerValue := 249571008926833161
    upperValue := 16398978063355821105872896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 13))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 15 13))) },
  { key := { q := 14, n := 36, r := 14 }
    lowerValue := 11623302377202337
    upperValue := 1171355575953987221848064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 14))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 16 14))) },
  { key := { q := 14, n := 36, r := 15 }
    lowerValue := 606053544876874
    upperValue := 83668255425284801560576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 15))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 17 15))) },
  { key := { q := 14, n := 36, r := 16 }
    lowerValue := 35291399045116
    upperValue := 5976303958948914397184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 16))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 18 16))) },
  { key := { q := 14, n := 36, r := 17 }
    lowerValue := 2291125835422
    upperValue := 426878854210636742656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 17))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 19 17))) },
  { key := { q := 14, n := 36, r := 18 }
    lowerValue := 165647035971
    upperValue := 30491346729331195904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 18))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 20 18))) },
  { key := { q := 14, n := 36, r := 19 }
    lowerValue := 13331361542
    upperValue := 2177953337809371136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 19))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 21 19))) },
  { key := { q := 14, n := 36, r := 20 }
    lowerValue := 1194492581
    upperValue := 155568095557812224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 20))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 22 20))) },
  { key := { q := 14, n := 36, r := 21 }
    lowerValue := 119243048
    upperValue := 11112006825558016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 21))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 21))) },
  { key := { q := 14, n := 36, r := 22 }
    lowerValue := 13280507
    upperValue := 793714773254144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 22))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 24 22))) },
  { key := { q := 14, n := 36, r := 23 }
    lowerValue := 1653503
    upperValue := 56693912375296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 23))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 25 23))) },
  { key := { q := 14, n := 36, r := 24 }
    lowerValue := 230778
    upperValue := 4049565169664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 24))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 26 24))) },
  { key := { q := 14, n := 36, r := 25 }
    lowerValue := 36234
    upperValue := 289254654976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 25))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 27 25))) },
  { key := { q := 14, n := 36, r := 26 }
    lowerValue := 6429
    upperValue := 1475789056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 26))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 29 26))) },
  { key := { q := 14, n := 36, r := 27 }
    lowerValue := 1296
    upperValue := 105413504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 27))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 30 27))) },
  { key := { q := 14, n := 36, r := 28 }
    lowerValue := 299
    upperValue := 7529536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 28))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 31 28))) },
  { key := { q := 14, n := 36, r := 29 }
    lowerValue := 80
    upperValue := 537824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 29))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 32 29))) },
  { key := { q := 14, n := 36, r := 30 }
    lowerValue := 25
    upperValue := 38416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 30))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 33 30))) },
  { key := { q := 14, n := 36, r := 31 }
    lowerValue := 14
    upperValue := 2744
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 33 32))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 34 31))) },
  { key := { q := 14, n := 36, r := 32 }
    lowerValue := 14
    upperValue := 196
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 34 33)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 35 32))) },
  { key := { q := 14, n := 36, r := 33 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 35 34))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 36 33)) },
  { key := { q := 14, n := 36, r := 34 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 36 35)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 36 34)) },
  { key := { q := 14, n := 36, r := 35 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 36 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 36 35)) },
  { key := { q := 14, n := 36, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 36 36)) },
  { key := { q := 14, n := 36, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 36 37)) },
  { key := { q := 14, n := 36, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 36 38)) },
  { key := { q := 14, n := 36, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 36 39)) },
  { key := { q := 14, n := 36, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 36 40)) },
  { key := { q := 14, n := 36, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 36 41)) },
  { key := { q := 14, n := 36, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 36 42)) },
  { key := { q := 14, n := 36, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 36 43)) },
  { key := { q := 14, n := 36, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 36 44)) },
  { key := { q := 14, n := 36, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 36 45)) },
  { key := { q := 14, n := 36, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 36 46)) },
  { key := { q := 14, n := 36, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 36 47)) },
  { key := { q := 14, n := 36, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 36 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 36 48)) },
  { key := { q := 14, n := 37, r := 0 }
    lowerValue := 2551157786410604821449163217266219579080704
    upperValue := 2551157786410604821449163217266219579080704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 37 0)) },
  { key := { q := 14, n := 37, r := 1 }
    lowerValue := 5292858478030300459438097961133235641247
    upperValue := 52064444620624588192840065658494277124096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 1))
    upperTrace := (.lengthenFreeN 28 (@UpperTrace.alphabetExpand 7 14 2 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 2) (by decide : 14 ≤ 2 * 7) (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 14, n := 37, r := 2 }
    lowerValue := 22569427318824134093998046792758232591
    upperValue := 3642993209606385179673940454238666620928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 2))
    upperTrace := (.lengthenFreeN 31 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 14, n := 37, r := 3 }
    lowerValue := 148463597848953412167370639945389003
    upperValue := 260213800686170369976710032445619044352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 3))
    upperTrace := (.lengthenFreeN 30 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 37, r := 4 }
    lowerValue := 1340249291580925758825744340391126
    upperValue := 18586700049012169284050716603258503168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 4))
    upperTrace := (.lengthenFreeN 29 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 37, r := 5 }
    lowerValue := 15579684698234366247622345154912
    upperValue := 1327621432072297806003622614518464512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 5))
    upperTrace := (.lengthenFreeN 28 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 37, r := 6 }
    lowerValue := 224079878840724843886120929322
    upperValue := 94830102290878414714544472465604608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 6))
    upperTrace := (.lengthenFreeN 27 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 37, r := 7 }
    lowerValue := 3880615314461536063177135836
    upperValue := 6773578735062743908181748033257472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 7))
    upperTrace := (.lengthenFreeN 26 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 37, r := 8 }
    lowerValue := 79348860049429229581777039
    upperValue := 483827052504481707727267716661248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 8))
    upperTrace := (.lengthenFreeN 25 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 37, r := 9 }
    lowerValue := 1887803792059840576202151
    upperValue := 34559075178891550551947694047232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 9))
    upperTrace := (.lengthenFreeN 24 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 37, r := 10 }
    lowerValue := 51672517556031472843158
    upperValue := 2468505369920825039424835289088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 10))
    upperTrace := (.lengthenFreeN 23 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 37, r := 11 }
    lowerValue := 1612967571508762789149
    upperValue := 176321812137201788530345377792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 11))
    upperTrace := (.lengthenFreeN 22 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 37, r := 12 }
    lowerValue := 57020629747784868905
    upperValue := 12594415152657270609310384128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 12))
    upperTrace := (.lengthenFreeN 21 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 10 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 37, r := 13 }
    lowerValue := 2270271560411317688
    upperValue := 229585692886981495482220544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 13))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 15 13))) },
  { key := { q := 14, n := 37, r := 14 }
    lowerValue := 101358601550039955
    upperValue := 16398978063355821105872896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 14))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 16 14))) },
  { key := { q := 14, n := 37, r := 15 }
    lowerValue := 5056959199517189
    upperValue := 1171355575953987221848064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 15))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 17 15))) },
  { key := { q := 14, n := 37, r := 16 }
    lowerValue := 281204873739010
    upperValue := 83668255425284801560576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 16))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 18 16))) },
  { key := { q := 14, n := 37, r := 17 }
    lowerValue := 17395013499643
    upperValue := 5976303958948914397184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 17))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 19 17))) },
  { key := { q := 14, n := 37, r := 18 }
    lowerValue := 1195457364660
    upperValue := 426878854210636742656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 18))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 20 18))) },
  { key := { q := 14, n := 37, r := 19 }
    lowerValue := 91210430368
    upperValue := 30491346729331195904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 19))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 21 19))) },
  { key := { q := 14, n := 37, r := 20 }
    lowerValue := 7724906061
    upperValue := 2177953337809371136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 20))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 22 20))) },
  { key := { q := 14, n := 37, r := 21 }
    lowerValue := 726536170
    upperValue := 155568095557812224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 21))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 21))) },
  { key := { q := 14, n := 37, r := 22 }
    lowerValue := 75955123
    upperValue := 11112006825558016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 22))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 24 22))) },
  { key := { q := 14, n := 37, r := 23 }
    lowerValue := 8840309
    upperValue := 793714773254144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 23))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 25 23))) },
  { key := { q := 14, n := 37, r := 24 }
    lowerValue := 1147985
    upperValue := 56693912375296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 24))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 26 24))) },
  { key := { q := 14, n := 37, r := 25 }
    lowerValue := 166806
    upperValue := 4049565169664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 25))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 27 25))) },
  { key := { q := 14, n := 37, r := 26 }
    lowerValue := 27220
    upperValue := 20661046784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 26))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 29 26))) },
  { key := { q := 14, n := 37, r := 27 }
    lowerValue := 5011
    upperValue := 1475789056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 27))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 30 27))) },
  { key := { q := 14, n := 37, r := 28 }
    lowerValue := 1047
    upperValue := 105413504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 28))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 31 28))) },
  { key := { q := 14, n := 37, r := 29 }
    lowerValue := 250
    upperValue := 7529536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 29))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 32 29))) },
  { key := { q := 14, n := 37, r := 30 }
    lowerValue := 69
    upperValue := 537824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 30))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 33 30))) },
  { key := { q := 14, n := 37, r := 31 }
    lowerValue := 22
    upperValue := 38416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 31))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 34 31))) },
  { key := { q := 14, n := 37, r := 32 }
    lowerValue := 14
    upperValue := 2744
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 34 33))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 35 32))) },
  { key := { q := 14, n := 37, r := 33 }
    lowerValue := 14
    upperValue := 196
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 35 34)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 36 33))) },
  { key := { q := 14, n := 37, r := 34 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 36 35))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 37 34)) },
  { key := { q := 14, n := 37, r := 35 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 37 36)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 37 35)) },
  { key := { q := 14, n := 37, r := 36 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 37 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 37 36)) },
  { key := { q := 14, n := 37, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 37 37)) },
  { key := { q := 14, n := 37, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 37 38)) },
  { key := { q := 14, n := 37, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 37 39)) },
  { key := { q := 14, n := 37, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 37 40)) },
  { key := { q := 14, n := 37, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 37 41)) },
  { key := { q := 14, n := 37, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 37 42)) },
  { key := { q := 14, n := 37, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 37 43)) },
  { key := { q := 14, n := 37, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 37 44)) },
  { key := { q := 14, n := 37, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 37 45)) },
  { key := { q := 14, n := 37, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 37 46)) },
  { key := { q := 14, n := 37, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 37 47)) },
  { key := { q := 14, n := 37, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 37 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 37 48)) },
  { key := { q := 14, n := 38, r := 0 }
    lowerValue := 35716209009748467500288285041727074107129856
    upperValue := 35716209009748467500288285041727074107129856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 38 0)) },
  { key := { q := 14, n := 38, r := 1 }
    lowerValue := 72153957595451449495531888973186008297233
    upperValue := 728902224688744234699760919218919879737344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 1))
    upperTrace := (.lengthenFreeN 29 (@UpperTrace.alphabetExpand 7 14 2 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 2) (by decide : 14 ≤ 2 * 7) (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 14, n := 38, r := 2 }
    lowerValue := 299376448087613514444756039644993999323
    upperValue := 51001904934489392515435166359341332692992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 2))
    upperTrace := (.lengthenFreeN 32 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 14, n := 38, r := 3 }
    lowerValue := 1914750310844805854712511167885085745
    upperValue := 3642993209606385179673940454238666620928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 3))
    upperTrace := (.lengthenFreeN 31 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 38, r := 4 }
    lowerValue := 16792744190214550448960827378256668
    upperValue := 260213800686170369976710032445619044352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 4))
    upperTrace := (.lengthenFreeN 30 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 38, r := 5 }
    lowerValue := 189481504430595776433329791700350
    upperValue := 18586700049012169284050716603258503168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 5))
    upperTrace := (.lengthenFreeN 29 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 38, r := 6 }
    lowerValue := 2642948456443281806292270258303
    upperValue := 1327621432072297806003622614518464512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 6))
    upperTrace := (.lengthenFreeN 28 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 38, r := 7 }
    lowerValue := 44345038561252178932513140915
    upperValue := 94830102290878414714544472465604608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 7))
    upperTrace := (.lengthenFreeN 27 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 38, r := 8 }
    lowerValue := 877602106286637844110260257
    upperValue := 6773578735062743908181748033257472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 8))
    upperTrace := (.lengthenFreeN 26 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 38, r := 9 }
    lowerValue := 20186012706619162792791011
    upperValue := 483827052504481707727267716661248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 9))
    upperTrace := (.lengthenFreeN 25 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 38, r := 10 }
    lowerValue := 533557813230122775752960
    upperValue := 34559075178891550551947694047232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 10))
    upperTrace := (.lengthenFreeN 24 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 38, r := 11 }
    lowerValue := 16063157037387270469334
    upperValue := 2468505369920825039424835289088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 11))
    upperTrace := (.lengthenFreeN 23 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 38, r := 12 }
    lowerValue := 546935016665740312455
    upperValue := 176321812137201788530345377792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 12))
    upperTrace := (.lengthenFreeN 22 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 10 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 38, r := 13 }
    lowerValue := 20943548724920333545
    upperValue := 3214199700417740936751087616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 13))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 15 13))) },
  { key := { q := 14, n := 38, r := 14 }
    lowerValue := 897887827149451772
    upperValue := 229585692886981495482220544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 14))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 16 14))) },
  { key := { q := 14, n := 38, r := 15 }
    lowerValue := 42944154786160396
    upperValue := 16398978063355821105872896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 15))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 17 15))) },
  { key := { q := 14, n := 38, r := 16 }
    lowerValue := 2285027486504106
    upperValue := 1171355575953987221848064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 16))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 18 16))) },
  { key := { q := 14, n := 38, r := 17 }
    lowerValue := 134982200106858
    upperValue := 83668255425284801560576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 17))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 19 17))) },
  { key := { q := 14, n := 38, r := 18 }
    lowerValue := 8839273689517
    upperValue := 5976303958948914397184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 18))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 20 18))) },
  { key := { q := 14, n := 38, r := 19 }
    lowerValue := 641079726020
    upperValue := 426878854210636742656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 19))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 21 19))) },
  { key := { q := 14, n := 38, r := 20 }
    lowerValue := 51474567785
    upperValue := 30491346729331195904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 20))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 22 20))) },
  { key := { q := 14, n := 38, r := 21 }
    lowerValue := 4576266598
    upperValue := 2177953337809371136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 21))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 21))) },
  { key := { q := 14, n := 38, r := 22 }
    lowerValue := 450758054
    upperValue := 155568095557812224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 22))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 24 22))) },
  { key := { q := 14, n := 38, r := 23 }
    lowerValue := 49248622
    upperValue := 11112006825558016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 38 23))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 25 23))) }]

end CoveringCodes.Database
