import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 152. Do not edit manually.

def precomputedTable_chunk_152 : Array AnyBoundEntry := #[
  { key := { q := 15, n := 40, r := 25 }
    lowerValue := 54348914
    upperValue := 29192926025390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 25))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 27 25))) },
  { key := { q := 15, n := 40, r := 26 }
    lowerValue := 6639253
    upperValue := 1946195068359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 26))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 28 26))) },
  { key := { q := 15, n := 40, r := 27 }
    lowerValue := 900547
    upperValue := 129746337890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 27))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 29 27))) },
  { key := { q := 15, n := 40, r := 28 }
    lowerValue := 136069
    upperValue := 576650390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 28))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 31 28))) },
  { key := { q := 15, n := 40, r := 29 }
    lowerValue := 22994
    upperValue := 38443359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 29))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 32 29))) },
  { key := { q := 15, n := 40, r := 30 }
    lowerValue := 4367
    upperValue := 2562890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 30))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 33 30))) },
  { key := { q := 15, n := 40, r := 31 }
    lowerValue := 938
    upperValue := 170859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 31))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 34 31))) },
  { key := { q := 15, n := 40, r := 32 }
    lowerValue := 230
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 32))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 35 32))) },
  { key := { q := 15, n := 40, r := 33 }
    lowerValue := 65
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 33))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 36 33))) },
  { key := { q := 15, n := 40, r := 34 }
    lowerValue := 21
    upperValue := 50625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 34))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 37 34))) },
  { key := { q := 15, n := 40, r := 35 }
    lowerValue := 15
    upperValue := 3375
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 37 36))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 38 35))) },
  { key := { q := 15, n := 40, r := 36 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 38 37)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 39 36))) },
  { key := { q := 15, n := 40, r := 37 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 39 38))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 40 37)) },
  { key := { q := 15, n := 40, r := 38 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 40 39)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 40 38)) },
  { key := { q := 15, n := 40, r := 39 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 40 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 40 39)) },
  { key := { q := 15, n := 40, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 40 40)) },
  { key := { q := 15, n := 40, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 40 41)) },
  { key := { q := 15, n := 40, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 40 42)) },
  { key := { q := 15, n := 40, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 40 43)) },
  { key := { q := 15, n := 40, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 40 44)) },
  { key := { q := 15, n := 40, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 40 45)) },
  { key := { q := 15, n := 40, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 40 46)) },
  { key := { q := 15, n := 40, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 40 47)) },
  { key := { q := 15, n := 40, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 40 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 40 48)) },
  { key := { q := 15, n := 41, r := 0 }
    lowerValue := 1658599848141001821340978494845330715179443359375
    upperValue := 1658599848141001821340978494845330715179443359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 41 0)) },
  { key := { q := 15, n := 41, r := 1 }
    lowerValue := 2884521475027829254506049556252749069877292799
    upperValue := 46325504721296025000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 1))
    upperTrace := (.lengthenFreeN 32 (@UpperTrace.alphabetExpand 8 15 2 9 1 2097152 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 15 ≤ 2 * 8) (by decide : 0 < 15) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1)))) },
  { key := { q := 15, n := 41, r := 2 }
    lowerValue := 10283020850869536075767869399828455408905691
    upperValue := 1565609048424651990830898284912109375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 2))
    upperTrace := (.lengthenFreeN 35 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 41, r := 3 }
    lowerValue := 56391301409459732501380067065240849296034
    upperValue := 104373936561643466055393218994140625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 3))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 41, r := 4 }
    lowerValue := 423133723911529327845621908251181389524
    upperValue := 6958262437442897737026214599609375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 4))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 41, r := 5 }
    lowerValue := 4075544085965402301426932738697281288
    upperValue := 463884162496193182468414306640625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 5))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 41, r := 6 }
    lowerValue := 48408352171290434340408588987400081
    upperValue := 30925610833079545497894287109375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 6))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 41, r := 7 }
    lowerValue := 689886675571683579353235225307901
    upperValue := 2061707388871969699859619140625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 7))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 41, r := 8 }
    lowerValue := 11565181245810951807636900307598
    upperValue := 137447159258131313323974609375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 8))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 41, r := 9 }
    lowerValue := 224685350698910328637626470603
    upperValue := 9163143950542087554931640625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 9))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 41, r := 10 }
    lowerValue := 5000827177313889661079145824
    upperValue := 610876263369472503662109375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 10))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 41, r := 11 }
    lowerValue := 126358804320341513542985354
    upperValue := 40725084224631500244140625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 11))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 41, r := 12 }
    lowerValue := 3598363107752143738227918
    upperValue := 2715005614975433349609375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 12))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 41, r := 13 }
    lowerValue := 114811818284698281746471
    upperValue := 181000374331695556640625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 13))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 41, r := 14 }
    lowerValue := 4084868510735292723084
    upperValue := 3787675244106352329254150390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 14))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 41, r := 15 }
    lowerValue := 161435470147581545333
    upperValue := 252511682940423488616943359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 15))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 41, r := 16 }
    lowerValue := 7064727715659212866
    upperValue := 16834112196028232574462890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 16))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 41, r := 17 }
    lowerValue := 341501466741104397
    upperValue := 1122274146401882171630859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 17))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 41, r := 18 }
    lowerValue := 18199492839551972
    upperValue := 74818276426792144775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 18))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 41, r := 19 }
    lowerValue := 1067782199823650
    upperValue := 4987885095119476318359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 19))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) },
  { key := { q := 15, n := 41, r := 20 }
    lowerValue := 68904880907759
    upperValue := 332525673007965087890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 20))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20))) },
  { key := { q := 15, n := 41, r := 21 }
    lowerValue := 4888060671643
    upperValue := 22168378200531005859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 21))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 21))) },
  { key := { q := 15, n := 41, r := 22 }
    lowerValue := 381152883591
    upperValue := 1477891880035400390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 22))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 24 22))) },
  { key := { q := 15, n := 41, r := 23 }
    lowerValue := 32679384691
    upperValue := 98526125335693359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 23))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 25 23))) },
  { key := { q := 15, n := 41, r := 24 }
    lowerValue := 3083034034
    upperValue := 6568408355712890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 24))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 26 24))) },
  { key := { q := 15, n := 41, r := 25 }
    lowerValue := 320419575
    upperValue := 437893890380859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 25))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 27 25))) },
  { key := { q := 15, n := 41, r := 26 }
    lowerValue := 36745415
    upperValue := 29192926025390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 26))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 28 26))) },
  { key := { q := 15, n := 41, r := 27 }
    lowerValue := 4659677
    upperValue := 1946195068359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 27))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 29 27))) },
  { key := { q := 15, n := 41, r := 28 }
    lowerValue := 655155
    upperValue := 8649755859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 28))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 31 28))) },
  { key := { q := 15, n := 41, r := 29 }
    lowerValue := 102473
    upperValue := 576650390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 29))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 32 29))) },
  { key := { q := 15, n := 41, r := 30 }
    lowerValue := 17902
    upperValue := 38443359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 30))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 33 30))) },
  { key := { q := 15, n := 41, r := 31 }
    lowerValue := 3511
    upperValue := 2562890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 31))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 34 31))) },
  { key := { q := 15, n := 41, r := 32 }
    lowerValue := 778
    upperValue := 170859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 32))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 35 32))) },
  { key := { q := 15, n := 41, r := 33 }
    lowerValue := 196
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 33))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 36 33))) },
  { key := { q := 15, n := 41, r := 34 }
    lowerValue := 57
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 34))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 37 34))) },
  { key := { q := 15, n := 41, r := 35 }
    lowerValue := 19
    upperValue := 50625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 35))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 38 35))) },
  { key := { q := 15, n := 41, r := 36 }
    lowerValue := 15
    upperValue := 3375
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 38 37))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 39 36))) },
  { key := { q := 15, n := 41, r := 37 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 39 38)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 40 37))) },
  { key := { q := 15, n := 41, r := 38 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 40 39))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 41 38)) },
  { key := { q := 15, n := 41, r := 39 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 41 40)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 41 39)) },
  { key := { q := 15, n := 41, r := 40 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 41 40))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 41 40)) },
  { key := { q := 15, n := 41, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 41 41)) },
  { key := { q := 15, n := 41, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 41 42)) },
  { key := { q := 15, n := 41, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 41 43)) },
  { key := { q := 15, n := 41, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 41 44)) },
  { key := { q := 15, n := 41, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 41 45)) },
  { key := { q := 15, n := 41, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 41 46)) },
  { key := { q := 15, n := 41, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 41 47)) },
  { key := { q := 15, n := 41, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 41 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 41 48)) },
  { key := { q := 15, n := 42, r := 0 }
    lowerValue := 24878997722115027320114677422679960727691650390625
    upperValue := 24878997722115027320114677422679960727691650390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 42 0)) },
  { key := { q := 15, n := 42, r := 1 }
    lowerValue := 42239384927190199185254121260916741473160696759
    upperValue := 694882570819440375000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 1))
    upperTrace := (.lengthenFreeN 33 (@UpperTrace.alphabetExpand 8 15 2 9 1 2097152 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 15 ≤ 2 * 8) (by decide : 0 < 15) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1)))) },
  { key := { q := 15, n := 42, r := 2 }
    lowerValue := 146913092929316054918153340356550005773371818
    upperValue := 23484135726369779862463474273681640625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 2))
    upperTrace := (.lengthenFreeN 36 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 42, r := 3 }
    lowerValue := 785558333990834277934178655813230425498699
    upperValue := 1565609048424651990830898284912109375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 3))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 42, r := 4 }
    lowerValue := 5743639952635969348942116879399155303393
    upperValue := 104373936561643466055393218994140625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 4))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 42, r := 5 }
    lowerValue := 53869155846991596233358899224155459255
    upperValue := 6958262437442897737026214599609375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 5))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 42, r := 6 }
    lowerValue := 622594801938645323678463131436298917
    upperValue := 463884162496193182468414306640625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 6))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 42, r := 7 }
    lowerValue := 8627037373467935201714034722733775
    upperValue := 30925610833079545497894287109375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 7))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 42, r := 8 }
    lowerValue := 140502556004375849367347228126624
    upperValue := 2061707388871969699859619140625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 8))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 42, r := 9 }
    lowerValue := 2649615604873844196566427639818
    upperValue := 137447159258131313323974609375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 9))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 42, r := 10 }
    lowerValue := 57191600381552959291264269669
    upperValue := 9163143950542087554931640625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 10))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 42, r := 11 }
    lowerValue := 1400101557362153192097935174
    upperValue := 610876263369472503662109375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 11))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 42, r := 12 }
    lowerValue := 38590197955118872762930766
    upperValue := 40725084224631500244140625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 12))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 42, r := 13 }
    lowerValue := 1190423029719842706205036
    upperValue := 2715005614975433349609375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 13))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 42, r := 14 }
    lowerValue := 40900399072611712481660
    upperValue := 56815128661595284938812255859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 14))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 42, r := 15 }
    lowerValue := 1558974696180193361435
    upperValue := 3787675244106352329254150390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 15))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 42, r := 16 }
    lowerValue := 65711591160989061865
    upperValue := 252511682940423488616943359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 16))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 42, r := 17 }
    lowerValue := 3055039022567136281
    upperValue := 16834112196028232574462890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 17))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 42, r := 18 }
    lowerValue := 156344429392787778
    upperValue := 1122274146401882171630859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 18))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 42, r := 19 }
    lowerValue := 8793668284693681
    upperValue := 74818276426792144775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 19))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) },
  { key := { q := 15, n := 42, r := 20 }
    lowerValue := 543005136926537
    upperValue := 4987885095119476318359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 20))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20))) },
  { key := { q := 15, n := 42, r := 21 }
    lowerValue := 36786457481930
    upperValue := 332525673007965087890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 21))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 21))) },
  { key := { q := 15, n := 42, r := 22 }
    lowerValue := 2733365295525
    upperValue := 22168378200531005859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 22))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 24 22))) },
  { key := { q := 15, n := 42, r := 23 }
    lowerValue := 222779999675
    upperValue := 1477891880035400390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 23))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 25 23))) },
  { key := { q := 15, n := 42, r := 24 }
    lowerValue := 19926657981
    upperValue := 98526125335693359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 24))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 26 24))) },
  { key := { q := 15, n := 42, r := 25 }
    lowerValue := 1957741677
    upperValue := 6568408355712890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 25))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 27 25))) },
  { key := { q := 15, n := 42, r := 26 }
    lowerValue := 211544724
    upperValue := 437893890380859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 26))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 28 26))) },
  { key := { q := 15, n := 42, r := 27 }
    lowerValue := 25184388
    upperValue := 29192926025390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 27))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 29 27))) },
  { key := { q := 15, n := 42, r := 28 }
    lowerValue := 3310632
    upperValue := 129746337890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 28))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 31 28))) },
  { key := { q := 15, n := 42, r := 29 }
    lowerValue := 481886
    upperValue := 8649755859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 29))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 32 29))) },
  { key := { q := 15, n := 42, r := 30 }
    lowerValue := 77930
    upperValue := 576650390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 30))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 33 30))) },
  { key := { q := 15, n := 42, r := 31 }
    lowerValue := 14060
    upperValue := 38443359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 31))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 34 31))) },
  { key := { q := 15, n := 42, r := 32 }
    lowerValue := 2844
    upperValue := 2562890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 32))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 35 32))) },
  { key := { q := 15, n := 42, r := 33 }
    lowerValue := 649
    upperValue := 170859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 33))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 36 33))) },
  { key := { q := 15, n := 42, r := 34 }
    lowerValue := 168
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 34))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 37 34))) },
  { key := { q := 15, n := 42, r := 35 }
    lowerValue := 50
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 35))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 38 35))) },
  { key := { q := 15, n := 42, r := 36 }
    lowerValue := 18
    upperValue := 50625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 36))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 39 36))) },
  { key := { q := 15, n := 42, r := 37 }
    lowerValue := 15
    upperValue := 3375
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 39 38))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 40 37))) },
  { key := { q := 15, n := 42, r := 38 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 40 39)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 41 38))) },
  { key := { q := 15, n := 42, r := 39 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 41 40))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 42 39)) },
  { key := { q := 15, n := 42, r := 40 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 42 41)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 42 40)) },
  { key := { q := 15, n := 42, r := 41 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 42 41))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 42 41)) },
  { key := { q := 15, n := 42, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 42 42)) },
  { key := { q := 15, n := 42, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 42 43)) },
  { key := { q := 15, n := 42, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 42 44)) },
  { key := { q := 15, n := 42, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 42 45)) },
  { key := { q := 15, n := 42, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 42 46)) },
  { key := { q := 15, n := 42, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 42 47)) },
  { key := { q := 15, n := 42, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 42 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 42 48)) },
  { key := { q := 15, n := 43, r := 0 }
    lowerValue := 373184965831725409801720161340199410915374755859375
    upperValue := 373184965831725409801720161340199410915374755859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 43 0)) },
  { key := { q := 15, n := 43, r := 1 }
    lowerValue := 618880540351120082589917348822884595216210208723
    upperValue := 10423238562291605625000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 1))
    upperTrace := (.lengthenFreeN 34 (@UpperTrace.alphabetExpand 8 15 2 9 1 2097152 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 15 ≤ 2 * 8) (by decide : 0 < 15) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1)))) },
  { key := { q := 15, n := 43, r := 2 }
    lowerValue := 2101373188009107498700498118374238620850013548
    upperValue := 352262035895546697936952114105224609375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 2))
    upperTrace := (.lengthenFreeN 37 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 43, r := 3 }
    lowerValue := 10962713546347910965247360928548676274371312
    upperValue := 23484135726369779862463474273681640625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 3))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 43, r := 4 }
    lowerValue := 78154576617215436212650663497609533497403
    upperValue := 1565609048424651990830898284912109375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 4))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 43, r := 5 }
    lowerValue := 714252474065215627487932360794545461889
    upperValue := 104373936561643466055393218994140625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 5))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 43, r := 6 }
    lowerValue := 8038283344901199640611835530049907665
    upperValue := 6958262437442897737026214599609375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 6))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 43, r := 7 }
    lowerValue := 108380576279963445414824950705518878
    upperValue := 463884162496193182468414306640625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 7))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 43, r := 8 }
    lowerValue := 1716224888709687264711580093507802
    upperValue := 30925610833079545497894287109375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 8))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 43, r := 9 }
    lowerValue := 31442879033917643667237371491187
    upperValue := 2061707388871969699859619140625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 9))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 43, r := 10 }
    lowerValue := 658794210195787632561505059212
    upperValue := 137447159258131313323974609375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 10))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 43, r := 11 }
    lowerValue := 15640883732196718234073421012
    upperValue := 9163143950542087554931640625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 11))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 43, r := 12 }
    lowerValue := 417680809648256040533064850
    upperValue := 610876263369472503662109375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 12))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 43, r := 13 }
    lowerValue := 12470653040409848122683232
    upperValue := 40725084224631500244140625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 13))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 43, r := 14 }
    lowerValue := 414248326872580359477401
    upperValue := 852226929923929274082183837890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 14))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 43, r := 15 }
    lowerValue := 15247897600206141675361
    upperValue := 56815128661595284938812255859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 15))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 43, r := 16 }
    lowerValue := 619878857378527844975
    upperValue := 3787675244106352329254150390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 16))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 43, r := 17 }
    lowerValue := 27758230050706738674
    upperValue := 252511682940423488616943359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 17))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 43, r := 18 }
    lowerValue := 1366278576948457194
    upperValue := 16834112196028232574462890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 18))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 43, r := 19 }
    lowerValue := 73795630051697555
    upperValue := 1122274146401882171630859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 19))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) },
  { key := { q := 15, n := 43, r := 20 }
    lowerValue := 4368519193660746
    upperValue := 74818276426792144775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 20))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20))) },
  { key := { q := 15, n := 43, r := 21 }
    lowerValue := 283198609971565
    upperValue := 4987885095119476318359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 21))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 21))) },
  { key := { q := 15, n := 43, r := 22 }
    lowerValue := 20095811043435
    upperValue := 332525673007965087890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 22))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 24 22))) },
  { key := { q := 15, n := 43, r := 23 }
    lowerValue := 1560772645312
    upperValue := 22168378200531005859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 23))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 25 23))) },
  { key := { q := 15, n := 43, r := 24 }
    lowerValue := 132712479687
    upperValue := 1477891880035400390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 24))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 26 24))) },
  { key := { q := 15, n := 43, r := 25 }
    lowerValue := 12362273574
    upperValue := 98526125335693359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 25))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 27 25))) },
  { key := { q := 15, n := 43, r := 26 }
    lowerValue := 1262814466
    upperValue := 6568408355712890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 26))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 28 26))) },
  { key := { q := 15, n := 43, r := 27 }
    lowerValue := 141660451
    upperValue := 437893890380859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 27))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 29 27))) },
  { key := { q := 15, n := 43, r := 28 }
    lowerValue := 17483391
    upperValue := 1946195068359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 28))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 31 28))) },
  { key := { q := 15, n := 43, r := 29 }
    lowerValue := 2379449
    upperValue := 129746337890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 29))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 32 29))) },
  { key := { q := 15, n := 43, r := 30 }
    lowerValue := 358127
    upperValue := 8649755859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 30))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 33 30))) },
  { key := { q := 15, n := 43, r := 31 }
    lowerValue := 59814
    upperValue := 576650390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 31))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 34 31))) },
  { key := { q := 15, n := 43, r := 32 }
    lowerValue := 11132
    upperValue := 38443359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 32))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 35 32))) },
  { key := { q := 15, n := 43, r := 33 }
    lowerValue := 2321
    upperValue := 2562890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 33))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 36 33))) },
  { key := { q := 15, n := 43, r := 34 }
    lowerValue := 545
    upperValue := 170859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 34))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 37 34))) },
  { key := { q := 15, n := 43, r := 35 }
    lowerValue := 146
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 35))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 38 35))) },
  { key := { q := 15, n := 43, r := 36 }
    lowerValue := 45
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 36))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 39 36))) },
  { key := { q := 15, n := 43, r := 37 }
    lowerValue := 16
    upperValue := 50625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 37))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 40 37))) },
  { key := { q := 15, n := 43, r := 38 }
    lowerValue := 15
    upperValue := 3375
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 40 39))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 41 38))) },
  { key := { q := 15, n := 43, r := 39 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 41 40)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 42 39))) },
  { key := { q := 15, n := 43, r := 40 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 42 41))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 43 40)) },
  { key := { q := 15, n := 43, r := 41 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 43 42)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 43 41)) },
  { key := { q := 15, n := 43, r := 42 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 43 42))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 43 42)) },
  { key := { q := 15, n := 43, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 43 43)) },
  { key := { q := 15, n := 43, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 43 44)) },
  { key := { q := 15, n := 43, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 43 45)) },
  { key := { q := 15, n := 43, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 43 46)) },
  { key := { q := 15, n := 43, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 43 47)) },
  { key := { q := 15, n := 43, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 43 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 43 48)) },
  { key := { q := 15, n := 44, r := 0 }
    lowerValue := 5597774487475881147025802420102991163730621337890625
    upperValue := 5597774487475881147025802420102991163730621337890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 44 0)) },
  { key := { q := 15, n := 44, r := 1 }
    lowerValue := 9072568051014394079458350761917327655965350628673
    upperValue := 156348578434374084375000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 1))
    upperTrace := (.lengthenFreeN 35 (@UpperTrace.alphabetExpand 8 15 2 9 1 2097152 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 15 ≤ 2 * 8) (by decide : 0 < 15) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1)))) },
  { key := { q := 15, n := 44, r := 2 }
    lowerValue := 30090223172640774201490071224476255093078224498
    upperValue := 5283930538433200469054281711578369140625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 2))
    upperTrace := (.lengthenFreeN 38 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 44, r := 3 }
    lowerValue := 153247934114528156719813530982666576134059766
    upperValue := 352262035895546697936952114105224609375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 3))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 44, r := 4 }
    lowerValue := 1065930495688089581061233135135171485145532
    upperValue := 23484135726369779862463474273681640625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 4))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 44, r := 5 }
    lowerValue := 9498496255173459383972548646393855303102
    upperValue := 1565609048424651990830898284912109375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 5))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 44, r := 6 }
    lowerValue := 104162627626832262599064639378360421567
    upperValue := 104373936561643466055393218994140625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 6))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 44, r := 7 }
    lowerValue := 1367563639182444792585052681200401091
    upperValue := 6958262437442897737026214599609375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 7))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 44, r := 8 }
    lowerValue := 21071894731411585800792930799679217
    upperValue := 463884162496193182468414306640625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 8))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 44, r := 9 }
    lowerValue := 375364643006405961905371557152463
    upperValue := 30925610833079545497894287109375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 9))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 44, r := 10 }
    lowerValue := 7640678093522149548245675251579
    upperValue := 2061707388871969699859619140625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 10))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 44, r := 11 }
    lowerValue := 176085371404719009124734528845
    upperValue := 137447159258131313323974609375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 11))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 44, r := 12 }
    lowerValue := 4560292343869525148646472779
    upperValue := 9163143950542087554931640625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 12))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 44, r := 13 }
    lowerValue := 131918370312974006571703050
    upperValue := 610876263369472503662109375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 13))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 44, r := 14 }
    lowerValue := 4241305835315898132061153
    upperValue := 12783403948858939111232757568359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 14))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 44, r := 15 }
    lowerValue := 150937373485378342614491
    upperValue := 852226929923929274082183837890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 15))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 44, r := 16 }
    lowerValue := 5925626744983885241319
    upperValue := 56815128661595284938812255859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 16))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 44, r := 17 }
    lowerValue := 255927232998195630142
    upperValue := 3787675244106352329254150390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 17))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 44, r := 18 }
    lowerValue := 12133271059723508156
    upperValue := 252511682940423488616943359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 18))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 44, r := 19 }
    lowerValue := 630311686348505740
    upperValue := 16834112196028232574462890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 19))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) },
  { key := { q := 15, n := 44, r := 20 }
    lowerValue := 35831707027033570
    upperValue := 1122274146401882171630859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 20))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20))) },
  { key := { q := 15, n := 44, r := 21 }
    lowerValue := 2226894392758962
    upperValue := 74818276426792144775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 21))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 21))) },
  { key := { q := 15, n := 44, r := 22 }
    lowerValue := 151214425306172
    upperValue := 4987885095119476318359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 22))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 24 22))) },
  { key := { q := 15, n := 44, r := 23 }
    lowerValue := 11216035805227
    upperValue := 332525673007965087890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 23))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 25 23))) },
  { key := { q := 15, n := 44, r := 24 }
    lowerValue := 908815361820
    upperValue := 22168378200531005859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 24))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 26 24))) },
  { key := { q := 15, n := 44, r := 25 }
    lowerValue := 80479667942
    upperValue := 1477891880035400390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 25))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 27 25))) },
  { key := { q := 15, n := 44, r := 26 }
    lowerValue := 7794800389
    upperValue := 98526125335693359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 26))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 28 26))) },
  { key := { q := 15, n := 44, r := 27 }
    lowerValue := 826652112
    upperValue := 6568408355712890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 27))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 29 27))) },
  { key := { q := 15, n := 44, r := 28 }
    lowerValue := 96138434
    upperValue := 29192926025390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 28))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 31 28))) },
  { key := { q := 15, n := 44, r := 29 }
    lowerValue := 12284756
    upperValue := 1946195068359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 29))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 32 29))) },
  { key := { q := 15, n := 44, r := 30 }
    lowerValue := 1728902
    upperValue := 129746337890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 30))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 33 30))) },
  { key := { q := 15, n := 44, r := 31 }
    lowerValue := 268765
    upperValue := 8649755859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 31))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 34 31))) },
  { key := { q := 15, n := 44, r := 32 }
    lowerValue := 46312
    upperValue := 576650390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 32))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 35 32))) },
  { key := { q := 15, n := 44, r := 33 }
    lowerValue := 8883
    upperValue := 38443359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 33))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 36 33))) },
  { key := { q := 15, n := 44, r := 34 }
    lowerValue := 1906
    upperValue := 2562890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 34))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 37 34))) },
  { key := { q := 15, n := 44, r := 35 }
    lowerValue := 461
    upperValue := 170859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 35))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 38 35))) },
  { key := { q := 15, n := 44, r := 36 }
    lowerValue := 126
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 36))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 39 36))) },
  { key := { q := 15, n := 44, r := 37 }
    lowerValue := 40
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 37))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 40 37))) },
  { key := { q := 15, n := 44, r := 38 }
    lowerValue := 15
    upperValue := 50625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 38))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 41 38))) },
  { key := { q := 15, n := 44, r := 39 }
    lowerValue := 15
    upperValue := 3375
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 41 40))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 42 39))) },
  { key := { q := 15, n := 44, r := 40 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 42 41)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 43 40))) },
  { key := { q := 15, n := 44, r := 41 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 43 42))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 44 41)) },
  { key := { q := 15, n := 44, r := 42 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 44 43)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 44 42)) },
  { key := { q := 15, n := 44, r := 43 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 44 43))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 44 43)) },
  { key := { q := 15, n := 44, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 44 44)) },
  { key := { q := 15, n := 44, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 44 45)) },
  { key := { q := 15, n := 44, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 44 46)) },
  { key := { q := 15, n := 44, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 44 47)) },
  { key := { q := 15, n := 44, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 44 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 44 48)) },
  { key := { q := 15, n := 45, r := 0 }
    lowerValue := 83966617312138217205387036301544867455959320068359375
    upperValue := 83966617312138217205387036301544867455959320068359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 45 0)) },
  { key := { q := 15, n := 45, r := 1 }
    lowerValue := 133069124107984496363529376072178870770141553198668
    upperValue := 2345228676515611265625000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 1))
    upperTrace := (.lengthenFreeN 36 (@UpperTrace.alphabetExpand 8 15 2 9 1 2097152 (by decide : 0 < 8) (by decide : 0 < 2) (by decide : 15 ≤ 2 * 8) (by decide : 0 < 15) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 8 9 1)))) },
  { key := { q := 15, n := 45, r := 2 }
    lowerValue := 431325761475197729530269204460576395333456550120
    upperValue := 79258958076498007035814225673675537109375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 2))
    upperTrace := (.lengthenFreeN 39 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))) },
  { key := { q := 15, n := 45, r := 3 }
    lowerValue := 2145726024599597634106623198308947150122602123
    upperValue := 5283930538433200469054281711578369140625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 3))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 45, r := 4 }
    lowerValue := 14570141481316628466712701949646960985197863
    upperValue := 352262035895546697936952114105224609375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 4))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 45, r := 5 }
    lowerValue := 126674331557939591297449604433667468678293
    upperValue := 23484135726369779862463474273681640625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 5))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 45, r := 6 }
    lowerValue := 1354488668316648611617589730958981673993
    upperValue := 1565609048424651990830898284912109375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 6))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 45, r := 7 }
    lowerValue := 17328367547097113810521084445745425254
    upperValue := 104373936561643466055393218994140625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 7))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 45, r := 8 }
    lowerValue := 259993451488772593644089967504971158
    upperValue := 6958262437442897737026214599609375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 8))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 45, r := 9 }
    lowerValue := 4506577462334117895559912116198444
    upperValue := 463884162496193182468414306640625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 9))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 45, r := 10 }
    lowerValue := 89192538604333005539386402848476
    upperValue := 30925610833079545497894287109375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 10))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 45, r := 11 }
    lowerValue := 1996974829659618119761020377676
    upperValue := 2061707388871969699859619140625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 11))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 45, r := 12 }
    lowerValue := 50202302603720767270803808494
    upperValue := 137447159258131313323974609375000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 12))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 45, r := 13 }
    lowerValue := 1408394633607537854349301248
    upperValue := 9163143950542087554931640625000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 13))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 15) (by decide : 15 ≤ 16) (.primitive "lean_known_bounds_q16_n6_r2_gf8_binary_lift" (primitiveUpper_valid 16 6 2)))))) },
  { key := { q := 15, n := 45, r := 14 }
    lowerValue := 43872133771490152320973858
    upperValue := 191751059232884086668491363525390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 14))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 45, r := 15 }
    lowerValue := 1511162269195144910994135
    upperValue := 12783403948858939111232757568359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 15))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 45, r := 16 }
    lowerValue := 57358696056873156537808
    upperValue := 852226929923929274082183837890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 16))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 45, r := 17 }
    lowerValue := 2392352154249073690724
    upperValue := 56815128661595284938812255859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 17))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 45, r := 18 }
    lowerValue := 109392390899142309379
    upperValue := 3787675244106352329254150390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 18))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 45, r := 19 }
    lowerValue := 5473715901276215889
    upperValue := 252511682940423488616943359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 19))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) },
  { key := { q := 15, n := 45, r := 20 }
    lowerValue := 299284848085306294
    upperValue := 16834112196028232574462890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 20))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20))) },
  { key := { q := 15, n := 45, r := 21 }
    lowerValue := 17862006476770571
    upperValue := 1122274146401882171630859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 21))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 21))) },
  { key := { q := 15, n := 45, r := 22 }
    lowerValue := 1162799002032908
    upperValue := 74818276426792144775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 22))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 24 22))) },
  { key := { q := 15, n := 45, r := 23 }
    lowerValue := 82534663644967
    upperValue := 4987885095119476318359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 23))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 25 23))) },
  { key := { q := 15, n := 45, r := 24 }
    lowerValue := 6386929483198
    upperValue := 332525673007965087890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 24))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 26 24))) },
  { key := { q := 15, n := 45, r := 25 }
    lowerValue := 538983455806
    upperValue := 22168378200531005859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 25))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 27 25))) },
  { key := { q := 15, n := 45, r := 26 }
    lowerValue := 49628180858
    upperValue := 1477891880035400390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 26))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 28 26))) },
  { key := { q := 15, n := 45, r := 27 }
    lowerValue := 4990405441
    upperValue := 98526125335693359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 27))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 29 27))) },
  { key := { q := 15, n := 45, r := 28 }
    lowerValue := 548697862
    upperValue := 437893890380859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 28))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 31 28))) },
  { key := { q := 15, n := 45, r := 29 }
    lowerValue := 66072007
    upperValue := 29192926025390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 29))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 32 29))) }]

end CoveringCodes.Database
