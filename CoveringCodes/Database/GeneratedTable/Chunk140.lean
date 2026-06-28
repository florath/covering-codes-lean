import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 140. Do not edit manually.

def precomputedTable_chunk_140 : Array AnyBoundEntry := #[
  { key := { q := 14, n := 28, r := 14 }
    lowerValue := 726147310
    upperValue := 793714773254144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 14))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 16 14))) },
  { key := { q := 14, n := 28, r := 15 }
    lowerValue := 59177331
    upperValue := 56693912375296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 15))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 17 15))) },
  { key := { q := 14, n := 28, r := 16 }
    lowerValue := 5529709
    upperValue := 4049565169664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 16))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 18 16))) },
  { key := { q := 14, n := 28, r := 17 }
    lowerValue := 593381
    upperValue := 289254654976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 17))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 19 17))) },
  { key := { q := 14, n := 28, r := 18 }
    lowerValue := 73330
    upperValue := 20661046784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 18))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 20 18))) },
  { key := { q := 14, n := 28, r := 19 }
    lowerValue := 10481
    upperValue := 1475789056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 19))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 21 19))) },
  { key := { q := 14, n := 28, r := 20 }
    lowerValue := 1743
    upperValue := 105413504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 20))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 22 20))) },
  { key := { q := 14, n := 28, r := 21 }
    lowerValue := 340
    upperValue := 7529536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 21))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 21))) },
  { key := { q := 14, n := 28, r := 22 }
    lowerValue := 79
    upperValue := 537824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 22))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 24 22))) },
  { key := { q := 14, n := 28, r := 23 }
    lowerValue := 22
    upperValue := 38416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 23))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 25 23))) },
  { key := { q := 14, n := 28, r := 24 }
    lowerValue := 14
    upperValue := 2744
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 26 25)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 26 24))) },
  { key := { q := 14, n := 28, r := 25 }
    lowerValue := 14
    upperValue := 196
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 27 26))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 27 25))) },
  { key := { q := 14, n := 28, r := 26 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 28 27)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 28 26)) },
  { key := { q := 14, n := 28, r := 27 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 28 27))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 28 27)) },
  { key := { q := 14, n := 28, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 28 28)) },
  { key := { q := 14, n := 28, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 28 29)) },
  { key := { q := 14, n := 28, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 28 30)) },
  { key := { q := 14, n := 28, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 28 31)) },
  { key := { q := 14, n := 28, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 28 32)) },
  { key := { q := 14, n := 28, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 28 33)) },
  { key := { q := 14, n := 28, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 28 34)) },
  { key := { q := 14, n := 28, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 28 35)) },
  { key := { q := 14, n := 28, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 28 36)) },
  { key := { q := 14, n := 28, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 28 37)) },
  { key := { q := 14, n := 28, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 28 38)) },
  { key := { q := 14, n := 28, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 28 39)) },
  { key := { q := 14, n := 28, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 28 40)) },
  { key := { q := 14, n := 28, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 28 41)) },
  { key := { q := 14, n := 28, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 28 42)) },
  { key := { q := 14, n := 28, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 28 43)) },
  { key := { q := 14, n := 28, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 28 44)) },
  { key := { q := 14, n := 28, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 28 45)) },
  { key := { q := 14, n := 28, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 28 46)) },
  { key := { q := 14, n := 28, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 28 47)) },
  { key := { q := 14, n := 28, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 28 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 28 48)) },
  { key := { q := 14, n := 29, r := 0 }
    lowerValue := 1728673739677471101567216945987584
    upperValue := 1728673739677471101567216945987584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 29 0)) },
  { key := { q := 14, n := 29, r := 1 }
    lowerValue := 4573210951527701326897399328010
    upperValue := 35279055911785124521779937673216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 1))
    upperTrace := (.lengthenFreeN 20 (@UpperTrace.alphabetExpand 7 14 2 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 2) (by decide : 14 ≤ 2 * 7) (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 14, n := 29, r := 2 }
    lowerValue := 25056147664620116847855069371
    upperValue := 2468505369920825039424835289088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 2))
    upperTrace := (.lengthenFreeN 23 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 14, n := 29, r := 3 }
    lowerValue := 213500066035407820291054271
    upperValue := 176321812137201788530345377792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 3))
    upperTrace := (.lengthenFreeN 22 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 29, r := 4 }
    lowerValue := 2518283783062481975729091
    upperValue := 12594415152657270609310384128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 4))
    upperTrace := (.lengthenFreeN 21 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 29, r := 5 }
    lowerValue := 38604262110517814589553
    upperValue := 899601082332662186379313152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 5))
    upperTrace := (.lengthenFreeN 20 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 29, r := 6 }
    lowerValue := 739504716766416079139
    upperValue := 64257220166618727598522368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 6))
    upperTrace := (.lengthenFreeN 19 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 29, r := 7 }
    lowerValue := 17239459811886991215
    upperValue := 4589801440472766257037312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 7))
    upperTrace := (.lengthenFreeN 18 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 29, r := 8 }
    lowerValue := 479985985649173264
    upperValue := 327842960033769018359808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 8))
    upperTrace := (.lengthenFreeN 17 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 29, r := 9 }
    lowerValue := 15743034756760539
    upperValue := 23417354288126358454272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 9))
    upperTrace := (.lengthenFreeN 16 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 29, r := 10 }
    lowerValue := 602091935958106
    upperValue := 1672668163437597032448
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 10))
    upperTrace := (.lengthenFreeN 15 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 29, r := 11 }
    lowerValue := 26646221099962
    upperValue := 119476297388399788032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 11))
    upperTrace := (.lengthenFreeN 14 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 29, r := 12 }
    lowerValue := 1356939044617
    upperValue := 8534021242028556288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 12))
    upperTrace := (.lengthenFreeN 13 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 10 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 29, r := 13 }
    lowerValue := 79194366030
    upperValue := 155568095557812224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 13))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 15 13))) },
  { key := { q := 14, n := 29, r := 14 }
    lowerValue := 5283131438
    upperValue := 11112006825558016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 14))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 16 14))) },
  { key := { q := 14, n := 29, r := 15 }
    lowerValue := 402286526
    upperValue := 793714773254144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 15))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 17 15))) },
  { key := { q := 14, n := 29, r := 16 }
    lowerValue := 34954552
    upperValue := 56693912375296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 16))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 18 16))) },
  { key := { q := 14, n := 29, r := 17 }
    lowerValue := 3468612
    upperValue := 4049565169664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 17))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 19 17))) },
  { key := { q := 14, n := 29, r := 18 }
    lowerValue := 393863
    upperValue := 289254654976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 18))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 20 18))) },
  { key := { q := 14, n := 29, r := 19 }
    lowerValue := 51340
    upperValue := 20661046784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 19))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 21 19))) },
  { key := { q := 14, n := 29, r := 20 }
    lowerValue := 7718
    upperValue := 1475789056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 20))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 22 20))) },
  { key := { q := 14, n := 29, r := 21 }
    lowerValue := 1346
    upperValue := 105413504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 21))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 21))) },
  { key := { q := 14, n := 29, r := 22 }
    lowerValue := 275
    upperValue := 7529536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 22))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 24 22))) },
  { key := { q := 14, n := 29, r := 23 }
    lowerValue := 67
    upperValue := 537824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 23))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 25 23))) },
  { key := { q := 14, n := 29, r := 24 }
    lowerValue := 20
    upperValue := 38416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 24))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 26 24))) },
  { key := { q := 14, n := 29, r := 25 }
    lowerValue := 14
    upperValue := 2744
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 27 26)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 27 25))) },
  { key := { q := 14, n := 29, r := 26 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 28 27))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 29 26)) },
  { key := { q := 14, n := 29, r := 27 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 29 28)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 29 27)) },
  { key := { q := 14, n := 29, r := 28 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 29 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 29 28)) },
  { key := { q := 14, n := 29, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 29 29)) },
  { key := { q := 14, n := 29, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 29 30)) },
  { key := { q := 14, n := 29, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 29 31)) },
  { key := { q := 14, n := 29, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 29 32)) },
  { key := { q := 14, n := 29, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 29 33)) },
  { key := { q := 14, n := 29, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 29 34)) },
  { key := { q := 14, n := 29, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 29 35)) },
  { key := { q := 14, n := 29, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 29 36)) },
  { key := { q := 14, n := 29, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 29 37)) },
  { key := { q := 14, n := 29, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 29 38)) },
  { key := { q := 14, n := 29, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 29 39)) },
  { key := { q := 14, n := 29, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 29 40)) },
  { key := { q := 14, n := 29, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 29 41)) },
  { key := { q := 14, n := 29, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 29 42)) },
  { key := { q := 14, n := 29, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 29 43)) },
  { key := { q := 14, n := 29, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 29 44)) },
  { key := { q := 14, n := 29, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 29 45)) },
  { key := { q := 14, n := 29, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 29 46)) },
  { key := { q := 14, n := 29, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 29 47)) },
  { key := { q := 14, n := 29, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 29 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 29 48)) },
  { key := { q := 14, n := 30, r := 0 }
    lowerValue := 24201432355484595421941037243826176
    upperValue := 24201432355484595421941037243826176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 30 0)) },
  { key := { q := 14, n := 30, r := 1 }
    lowerValue := 61896246433464438419286540265541
    upperValue := 493906782764991743304919127425024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 1))
    upperTrace := (.lengthenFreeN 21 (@UpperTrace.alphabetExpand 7 14 2 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 2) (by decide : 14 ≤ 2 * 7) (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 14, n := 30, r := 2 }
    lowerValue := 327462348868624948203678148511
    upperValue := 34559075178891550551947694047232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 2))
    upperTrace := (.lengthenFreeN 24 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 14, n := 30, r := 3 }
    lowerValue := 2690923912456816609927969481
    upperValue := 2468505369920825039424835289088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 3))
    upperTrace := (.lengthenFreeN 23 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 30, r := 4 }
    lowerValue := 30568637003441355473728402
    upperValue := 176321812137201788530345377792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 4))
    upperTrace := (.lengthenFreeN 22 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 30, r := 5 }
    lowerValue := 450651687015516221793174
    upperValue := 12594415152657270609310384128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 5))
    upperTrace := (.lengthenFreeN 21 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 30, r := 6 }
    lowerValue := 8288894986000791327615
    upperValue := 899601082332662186379313152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 6))
    upperTrace := (.lengthenFreeN 20 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 30, r := 7 }
    lowerValue := 185219996361016626510
    upperValue := 64257220166618727598522368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 7))
    upperTrace := (.lengthenFreeN 19 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 30, r := 8 }
    lowerValue := 4933958760860334068
    upperValue := 4589801440472766257037312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 8))
    upperTrace := (.lengthenFreeN 18 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 30, r := 9 }
    lowerValue := 154518089181978987
    upperValue := 327842960033769018359808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 9))
    upperTrace := (.lengthenFreeN 17 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 30, r := 10 }
    lowerValue := 5630091868871163
    upperValue := 23417354288126358454272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 10))
    upperTrace := (.lengthenFreeN 16 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 30, r := 11 }
    lowerValue := 236805851814106
    upperValue := 1672668163437597032448
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 11))
    upperTrace := (.lengthenFreeN 15 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 30, r := 12 }
    lowerValue := 11430187177347
    upperValue := 119476297388399788032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 12))
    upperTrace := (.lengthenFreeN 14 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 10 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 30, r := 13 }
    lowerValue := 630416317473
    upperValue := 2177953337809371136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 13))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 15 13))) },
  { key := { q := 14, n := 30, r := 14 }
    lowerValue := 39611269438
    upperValue := 155568095557812224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 14))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 16 14))) },
  { key := { q := 14, n := 30, r := 15 }
    lowerValue := 2830311334
    upperValue := 11112006825558016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 15))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 17 15))) },
  { key := { q := 14, n := 30, r := 16 }
    lowerValue := 229795052
    upperValue := 793714773254144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 16))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 18 16))) },
  { key := { q := 14, n := 30, r := 17 }
    lowerValue := 21205332
    upperValue := 56693912375296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 17))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 19 17))) },
  { key := { q := 14, n := 30, r := 18 }
    lowerValue := 2226869
    upperValue := 4049565169664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 18))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 20 18))) },
  { key := { q := 14, n := 30, r := 19 }
    lowerValue := 266746
    upperValue := 289254654976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 19))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 21 19))) },
  { key := { q := 14, n := 30, r := 20 }
    lowerValue := 36573
    upperValue := 20661046784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 20))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 22 20))) },
  { key := { q := 14, n := 30, r := 21 }
    lowerValue := 5768
    upperValue := 1475789056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 21))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 21))) },
  { key := { q := 14, n := 30, r := 22 }
    lowerValue := 1053
    upperValue := 105413504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 22))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 24 22))) },
  { key := { q := 14, n := 30, r := 23 }
    lowerValue := 225
    upperValue := 7529536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 23))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 25 23))) },
  { key := { q := 14, n := 30, r := 24 }
    lowerValue := 57
    upperValue := 537824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 24))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 26 24))) },
  { key := { q := 14, n := 30, r := 25 }
    lowerValue := 17
    upperValue := 38416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 25))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 27 25))) },
  { key := { q := 14, n := 30, r := 26 }
    lowerValue := 14
    upperValue := 196
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 28 27)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 29 26))) },
  { key := { q := 14, n := 30, r := 27 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 29 28))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 30 27)) },
  { key := { q := 14, n := 30, r := 28 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 30 29)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 30 28)) },
  { key := { q := 14, n := 30, r := 29 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 30 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 30 29)) },
  { key := { q := 14, n := 30, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 30 30)) },
  { key := { q := 14, n := 30, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 30 31)) },
  { key := { q := 14, n := 30, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 30 32)) },
  { key := { q := 14, n := 30, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 30 33)) },
  { key := { q := 14, n := 30, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 30 34)) },
  { key := { q := 14, n := 30, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 30 35)) },
  { key := { q := 14, n := 30, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 30 36)) },
  { key := { q := 14, n := 30, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 30 37)) },
  { key := { q := 14, n := 30, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 30 38)) },
  { key := { q := 14, n := 30, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 30 39)) },
  { key := { q := 14, n := 30, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 30 40)) },
  { key := { q := 14, n := 30, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 30 41)) },
  { key := { q := 14, n := 30, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 30 42)) },
  { key := { q := 14, n := 30, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 30 43)) },
  { key := { q := 14, n := 30, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 30 44)) },
  { key := { q := 14, n := 30, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 30 45)) },
  { key := { q := 14, n := 30, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 30 46)) },
  { key := { q := 14, n := 30, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 30 47)) },
  { key := { q := 14, n := 30, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 30 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 30 48)) },
  { key := { q := 14, n := 31, r := 0 }
    lowerValue := 338820052976784335907174521413566464
    upperValue := 338820052976784335907174521413566464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 31 0)) },
  { key := { q := 14, n := 31, r := 1 }
    lowerValue := 838663497467287960166273567855363
    upperValue := 6914694958709884406268867783950336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 1))
    upperTrace := (.lengthenFreeN 22 (@UpperTrace.alphabetExpand 7 14 2 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 2) (by decide : 14 ≤ 2 * 7) (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 14, n := 31, r := 2 }
    lowerValue := 4289458696486654292460653020213
    upperValue := 483827052504481707727267716661248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 2))
    upperTrace := (.lengthenFreeN 25 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 14, n := 31, r := 3 }
    lowerValue := 34036859393173616275323664687
    upperValue := 34559075178891550551947694047232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 3))
    upperTrace := (.lengthenFreeN 24 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 31, r := 4 }
    lowerValue := 372892604195140121348574380
    upperValue := 2468505369920825039424835289088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 4))
    upperTrace := (.lengthenFreeN 23 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 31, r := 5 }
    lowerValue := 5294444586342265128050130
    upperValue := 176321812137201788530345377792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 5))
    upperTrace := (.lengthenFreeN 22 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 31, r := 6 }
    lowerValue := 93651463869398243164121
    upperValue := 12594415152657270609310384128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 6))
    upperTrace := (.lengthenFreeN 21 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 31, r := 7 }
    lowerValue := 2009372703329318598988
    upperValue := 899601082332662186379313152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 7))
    upperTrace := (.lengthenFreeN 20 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 31, r := 8 }
    lowerValue := 51307646014374324138
    upperValue := 64257220166618727598522368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 8))
    upperTrace := (.lengthenFreeN 19 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 31, r := 9 }
    lowerValue := 1537357463871026368
    upperValue := 4589801440472766257037312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 9))
    upperTrace := (.lengthenFreeN 18 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 31, r := 10 }
    lowerValue := 53486245000509541
    upperValue := 327842960033769018359808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 10))
    upperTrace := (.lengthenFreeN 17 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 31, r := 11 }
    lowerValue := 2143330790381938
    upperValue := 23417354288126358454272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 11))
    upperTrace := (.lengthenFreeN 16 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 31, r := 12 }
    lowerValue := 98325017043619
    upperValue := 1672668163437597032448
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 12))
    upperTrace := (.lengthenFreeN 15 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 10 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 31, r := 13 }
    lowerValue := 5140269581172
    upperValue := 30491346729331195904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 13))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 15 13))) },
  { key := { q := 14, n := 31, r := 14 }
    lowerValue := 305232771990
    upperValue := 2177953337809371136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 14))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 16 14))) },
  { key := { q := 14, n := 31, r := 15 }
    lowerValue := 20542695375
    upperValue := 155568095557812224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 15))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 17 15))) },
  { key := { q := 14, n := 31, r := 16 }
    lowerValue := 1565148509
    upperValue := 11112006825558016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 16))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 18 16))) },
  { key := { q := 14, n := 31, r := 17 }
    lowerValue := 134965645
    upperValue := 793714773254144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 17))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 19 17))) },
  { key := { q := 14, n := 31, r := 18 }
    lowerValue := 13181254
    upperValue := 56693912375296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 18))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 20 18))) },
  { key := { q := 14, n := 31, r := 19 }
    lowerValue := 1460358
    upperValue := 4049565169664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 19))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 21 19))) },
  { key := { q := 14, n := 31, r := 20 }
    lowerValue := 184021
    upperValue := 289254654976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 20))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 22 20))) },
  { key := { q := 14, n := 31, r := 21 }
    lowerValue := 26473
    upperValue := 20661046784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 21))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 21))) },
  { key := { q := 14, n := 31, r := 22 }
    lowerValue := 4370
    upperValue := 1475789056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 22))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 24 22))) },
  { key := { q := 14, n := 31, r := 23 }
    lowerValue := 833
    upperValue := 105413504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 23))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 25 23))) },
  { key := { q := 14, n := 31, r := 24 }
    lowerValue := 185
    upperValue := 7529536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 24))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 26 24))) },
  { key := { q := 14, n := 31, r := 25 }
    lowerValue := 49
    upperValue := 537824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 25))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 27 25))) },
  { key := { q := 14, n := 31, r := 26 }
    lowerValue := 15
    upperValue := 2744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 26))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 29 26))) },
  { key := { q := 14, n := 31, r := 27 }
    lowerValue := 14
    upperValue := 196
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 29 28)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 30 27))) },
  { key := { q := 14, n := 31, r := 28 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 30 29))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 31 28)) },
  { key := { q := 14, n := 31, r := 29 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 31 30)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 31 29)) },
  { key := { q := 14, n := 31, r := 30 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 31 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 31 30)) },
  { key := { q := 14, n := 31, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 31 31)) },
  { key := { q := 14, n := 31, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 31 32)) },
  { key := { q := 14, n := 31, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 31 33)) },
  { key := { q := 14, n := 31, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 31 34)) },
  { key := { q := 14, n := 31, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 31 35)) },
  { key := { q := 14, n := 31, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 31 36)) },
  { key := { q := 14, n := 31, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 31 37)) },
  { key := { q := 14, n := 31, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 31 38)) },
  { key := { q := 14, n := 31, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 31 39)) },
  { key := { q := 14, n := 31, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 31 40)) },
  { key := { q := 14, n := 31, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 31 41)) },
  { key := { q := 14, n := 31, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 31 42)) },
  { key := { q := 14, n := 31, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 31 43)) },
  { key := { q := 14, n := 31, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 31 44)) },
  { key := { q := 14, n := 31, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 31 45)) },
  { key := { q := 14, n := 31, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 31 46)) },
  { key := { q := 14, n := 31, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 31 47)) },
  { key := { q := 14, n := 31, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 31 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 31 48)) },
  { key := { q := 14, n := 32, r := 0 }
    lowerValue := 4743480741674980702700443299789930496
    upperValue := 4743480741674980702700443299789930496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 32 0)) },
  { key := { q := 14, n := 32, r := 1 }
    lowerValue := 11375253577158227104797226138584966
    upperValue := 96805729421938381687764148975304704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 1))
    upperTrace := (.lengthenFreeN 23 (@UpperTrace.alphabetExpand 7 14 2 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 2) (by decide : 14 ≤ 2 * 7) (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 14, n := 32, r := 2 }
    lowerValue := 56308457184446774168165659237070
    upperValue := 6773578735062743908181748033257472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 2))
    upperTrace := (.lengthenFreeN 26 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 14, n := 32, r := 3 }
    lowerValue := 431957454242236522658752708321
    upperValue := 483827052504481707727267716661248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 3))
    upperTrace := (.lengthenFreeN 25 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 32, r := 4 }
    lowerValue := 4569673568501247659567363727
    upperValue := 34559075178891550551947694047232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 4))
    upperTrace := (.lengthenFreeN 24 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 32, r := 5 }
    lowerValue := 62572682236385792257298698
    upperValue := 2468505369920825039424835289088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 5))
    upperTrace := (.lengthenFreeN 23 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 32, r := 6 }
    lowerValue := 1065993072246264539893292
    upperValue := 176321812137201788530345377792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 6))
    upperTrace := (.lengthenFreeN 22 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 32, r := 7 }
    lowerValue := 21995966826675175596778
    upperValue := 12594415152657270609310384128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 7))
    upperTrace := (.lengthenFreeN 21 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 32, r := 8 }
    lowerValue := 539292188260919481112
    upperValue := 899601082332662186379313152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 8))
    upperTrace := (.lengthenFreeN 20 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 32, r := 9 }
    lowerValue := 15489461190431610633
    upperValue := 64257220166618727598522368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 9))
    upperTrace := (.lengthenFreeN 19 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 32, r := 10 }
    lowerValue := 515606978237660506
    upperValue := 4589801440472766257037312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 10))
    upperTrace := (.lengthenFreeN 18 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 32, r := 11 }
    lowerValue := 19728961180621563
    upperValue := 327842960033769018359808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 11))
    upperTrace := (.lengthenFreeN 17 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 32, r := 12 }
    lowerValue := 862298469064439
    upperValue := 23417354288126358454272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 12))
    upperTrace := (.lengthenFreeN 16 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 10 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 32, r := 13 }
    lowerValue := 42845308271500
    upperValue := 426878854210636742656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 13))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 15 13))) },
  { key := { q := 14, n := 32, r := 14 }
    lowerValue := 2411614992096
    upperValue := 30491346729331195904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 14))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 16 14))) },
  { key := { q := 14, n := 32, r := 15 }
    lowerValue := 153391793652
    upperValue := 2177953337809371136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 15))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 17 15))) },
  { key := { q := 14, n := 32, r := 16 }
    lowerValue := 11008493122
    upperValue := 155568095557812224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 16))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 18 16))) },
  { key := { q := 14, n := 32, r := 17 }
    lowerValue := 890856464
    upperValue := 11112006825558016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 17))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 19 17))) },
  { key := { q := 14, n := 32, r := 18 }
    lowerValue := 81307365
    upperValue := 793714773254144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 18))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 20 18))) },
  { key := { q := 14, n := 32, r := 19 }
    lowerValue := 8378153
    upperValue := 56693912375296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 19))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 21 19))) },
  { key := { q := 14, n := 32, r := 20 }
    lowerValue := 976556
    upperValue := 4049565169664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 20))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 22 20))) },
  { key := { q := 14, n := 32, r := 21 }
    lowerValue := 129128
    upperValue := 289254654976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 21))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 23 21))) },
  { key := { q := 14, n := 32, r := 22 }
    lowerValue := 19446
    upperValue := 20661046784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 22))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 24 22))) },
  { key := { q := 14, n := 32, r := 23 }
    lowerValue := 3353
    upperValue := 1475789056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 23))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 25 23))) },
  { key := { q := 14, n := 32, r := 24 }
    lowerValue := 666
    upperValue := 105413504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 24))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 26 24))) },
  { key := { q := 14, n := 32, r := 25 }
    lowerValue := 154
    upperValue := 7529536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 25))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 27 25))) },
  { key := { q := 14, n := 32, r := 26 }
    lowerValue := 42
    upperValue := 38416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 26))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 29 26))) },
  { key := { q := 14, n := 32, r := 27 }
    lowerValue := 14
    upperValue := 2744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 27))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 30 27))) },
  { key := { q := 14, n := 32, r := 28 }
    lowerValue := 14
    upperValue := 196
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 30 29)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 31 28))) },
  { key := { q := 14, n := 32, r := 29 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.lengthBack (by decide : 0 < 14) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 31 30))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 32 29)) },
  { key := { q := 14, n := 32, r := 30 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 32 31)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 32 30)) },
  { key := { q := 14, n := 32, r := 31 }
    lowerValue := 14
    upperValue := 14
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 14 32 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 32 31)) },
  { key := { q := 14, n := 32, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 32 32)) },
  { key := { q := 14, n := 32, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 32 33)) },
  { key := { q := 14, n := 32, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 32 34)) },
  { key := { q := 14, n := 32, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 32 35)) },
  { key := { q := 14, n := 32, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 32 36)) },
  { key := { q := 14, n := 32, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 32 37)) },
  { key := { q := 14, n := 32, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 32 38)) },
  { key := { q := 14, n := 32, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 32 39)) },
  { key := { q := 14, n := 32, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 32 40)) },
  { key := { q := 14, n := 32, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 32 41)) },
  { key := { q := 14, n := 32, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 32 42)) },
  { key := { q := 14, n := 32, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 32 43)) },
  { key := { q := 14, n := 32, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 32 44)) },
  { key := { q := 14, n := 32, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 32 45)) },
  { key := { q := 14, n := 32, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 32 46)) },
  { key := { q := 14, n := 32, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 32 47)) },
  { key := { q := 14, n := 32, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 32 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 14 32 48)) },
  { key := { q := 14, n := 33, r := 0 }
    lowerValue := 66408730383449729837806206197059026944
    upperValue := 66408730383449729837806206197059026944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 14 33 0)) },
  { key := { q := 14, n := 33, r := 1 }
    lowerValue := 154438907868487743808851642318741924
    upperValue := 1355280211907137343628698085654265856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 1))
    upperTrace := (.lengthenFreeN 24 (@UpperTrace.alphabetExpand 7 14 2 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 2) (by decide : 14 ≤ 2 * 7) (by decide : 0 < 14) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 14, n := 33, r := 2 }
    lowerValue := 740656358138896409156679598905435
    upperValue := 94830102290878414714544472465604608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 2))
    upperTrace := (.lengthenFreeN 27 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2))))) },
  { key := { q := 14, n := 33, r := 3 }
    lowerValue := 5499007442346241370865269853739
    upperValue := 6773578735062743908181748033257472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 3))
    upperTrace := (.lengthenFreeN 26 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 1 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 33, r := 4 }
    lowerValue := 56240807738868300405719006469
    upperValue := 483827052504481707727267716661248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 4))
    upperTrace := (.lengthenFreeN 25 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 2 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 33, r := 5 }
    lowerValue := 743642239379305990324529336
    upperValue := 34559075178891550551947694047232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 5))
    upperTrace := (.lengthenFreeN 24 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 3 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 33, r := 6 }
    lowerValue := 12217995625581889090845959
    upperValue := 2468505369920825039424835289088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 6))
    upperTrace := (.lengthenFreeN 23 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 4 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 33, r := 7 }
    lowerValue := 242810716395950819600820
    upperValue := 176321812137201788530345377792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 7))
    upperTrace := (.lengthenFreeN 22 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 5 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 33, r := 8 }
    lowerValue := 5725269315316732332780
    upperValue := 12594415152657270609310384128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 8))
    upperTrace := (.lengthenFreeN 21 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 6 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 33, r := 9 }
    lowerValue := 157896465795596480395
    upperValue := 899601082332662186379313152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 9))
    upperTrace := (.lengthenFreeN 20 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 7 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 33, r := 10 }
    lowerValue := 5038251032198968453
    upperValue := 64257220166618727598522368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 10))
    upperTrace := (.lengthenFreeN 19 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 8 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 33, r := 11 }
    lowerValue := 184453450547406755
    upperValue := 4589801440472766257037312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 11))
    upperTrace := (.lengthenFreeN 18 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 9 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 33, r := 12 }
    lowerValue := 7698140346250379
    upperValue := 327842960033769018359808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 12))
    upperTrace := (.lengthenFreeN 17 (.alphabetProject (by decide : 0 < 14) (by decide : 14 ≤ 15) (.lengthenDummyN 10 (by decide : 0 < 15) (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 14, n := 33, r := 13 }
    lowerValue := 364433718142008
    upperValue := 5976303958948914397184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 13))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 15 13))) },
  { key := { q := 14, n := 33, r := 14 }
    lowerValue := 19496516227622
    upperValue := 426878854210636742656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 14))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 16 14))) },
  { key := { q := 14, n := 33, r := 15 }
    lowerValue := 1175499357969
    upperValue := 30491346729331195904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 15))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 17 15))) },
  { key := { q := 14, n := 33, r := 16 }
    lowerValue := 79731532303
    upperValue := 2177953337809371136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 16))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 18 16))) },
  { key := { q := 14, n := 33, r := 17 }
    lowerValue := 6077914462
    upperValue := 155568095557812224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 17))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 19 17))) },
  { key := { q := 14, n := 33, r := 18 }
    lowerValue := 520606582
    upperValue := 11112006825558016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 14 33 18))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 14 20 18))) }]

end CoveringCodes.Database
