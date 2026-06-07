import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 150. Do not edit manually.

def precomputedTable_chunk_150 : Array AnyBoundEntry := #[
  { key := { q := 15, n := 30, r := 15 }
    lowerValue := 7418563758
    upperValue := 29192926025390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 15))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 30, r := 16 }
    lowerValue := 559740642
    upperValue := 1946195068359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 16))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 30, r := 17 }
    lowerValue := 48007251
    upperValue := 129746337890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 17))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 30, r := 18 }
    lowerValue := 4686418
    upperValue := 8649755859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 18))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 30, r := 19 }
    lowerValue := 521934
    upperValue := 576650390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 19))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) },
  { key := { q := 15, n := 30, r := 20 }
    lowerValue := 66553
    upperValue := 38443359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 20))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20))) },
  { key := { q := 15, n := 30, r := 21 }
    lowerValue := 9764
    upperValue := 2562890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 21))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 21))) },
  { key := { q := 15, n := 30, r := 22 }
    lowerValue := 1659
    upperValue := 170859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 22))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 24 22))) },
  { key := { q := 15, n := 30, r := 23 }
    lowerValue := 329
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 23))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 25 23))) },
  { key := { q := 15, n := 30, r := 24 }
    lowerValue := 77
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 24))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 26 24))) },
  { key := { q := 15, n := 30, r := 25 }
    lowerValue := 22
    upperValue := 50625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 25))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 27 25))) },
  { key := { q := 15, n := 30, r := 26 }
    lowerValue := 15
    upperValue := 3375
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 28 27)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 28 26))) },
  { key := { q := 15, n := 30, r := 27 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 29 28))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 29 27))) },
  { key := { q := 15, n := 30, r := 28 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 30 29)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 30 28)) },
  { key := { q := 15, n := 30, r := 29 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 30 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 30 29)) },
  { key := { q := 15, n := 30, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 30 30)) },
  { key := { q := 15, n := 30, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 30 31)) },
  { key := { q := 15, n := 30, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 30 32)) },
  { key := { q := 15, n := 30, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 30 33)) },
  { key := { q := 15, n := 30, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 30 34)) },
  { key := { q := 15, n := 30, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 30 35)) },
  { key := { q := 15, n := 30, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 30 36)) },
  { key := { q := 15, n := 30, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 30 37)) },
  { key := { q := 15, n := 30, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 30 38)) },
  { key := { q := 15, n := 30, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 30 39)) },
  { key := { q := 15, n := 30, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 30 40)) },
  { key := { q := 15, n := 30, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 30 41)) },
  { key := { q := 15, n := 30, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 30 42)) },
  { key := { q := 15, n := 30, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 30 43)) },
  { key := { q := 15, n := 30, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 30 44)) },
  { key := { q := 15, n := 30, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 30 45)) },
  { key := { q := 15, n := 30, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 30 46)) },
  { key := { q := 15, n := 30, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 30 47)) },
  { key := { q := 15, n := 30, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 30 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 30 48)) },
  { key := { q := 15, n := 31, r := 0 }
    lowerValue := 2876265888493261300027370452880859375
    upperValue := 2876265888493261300027370452880859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 31 0)) },
  { key := { q := 15, n := 31, r := 1 }
    lowerValue := 6612105490789106436844529776737608
    upperValue := 96301643081404007971286773681640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 1))
    upperTrace := (.lengthenFreeN 28 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 31, r := 2 }
    lowerValue := 31408854911201324597623482968942
    upperValue := 6420109538760267198085784912109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 2))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 31, r := 3 }
    lowerValue := 231474283942091815816889095590
    upperValue := 428007302584017813205718994140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 3))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 31, r := 4 }
    lowerValue := 2355306684636471404634274157
    upperValue := 28533820172267854213714599609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 4))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 31, r := 5 }
    lowerValue := 31060046616288060995419628
    upperValue := 1902254678151190280914306640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 5))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 31, r := 6 }
    lowerValue := 510296722578370635162406
    upperValue := 126816978543412685394287109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 6))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 31, r := 7 }
    lowerValue := 10169622402525284946303
    upperValue := 8454465236227512359619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 7))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 31, r := 8 }
    lowerValue := 241197854432871323496
    upperValue := 563631015748500823974609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 8))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 31, r := 9 }
    lowerValue := 6713139381454199157
    upperValue := 37575401049900054931640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 9))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 31, r := 10 }
    lowerValue := 216953484470077511
    upperValue := 2505026736660003662109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 10))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 31, r := 11 }
    lowerValue := 8076141314302218
    upperValue := 167001782444000244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 11))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 31, r := 12 }
    lowerValue := 344181936126956
    upperValue := 11133452162933349609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 12))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 31, r := 13 }
    lowerValue := 16716359957231
    upperValue := 742230144195556640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 13))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 12 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 31, r := 14 }
    lowerValue := 922242794378
    upperValue := 6568408355712890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 14))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 31, r := 15 }
    lowerValue := 57671528089
    upperValue := 437893890380859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 15))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 31, r := 16 }
    lowerValue := 4083077626
    upperValue := 29192926025390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 16))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 31, r := 17 }
    lowerValue := 327212492
    upperValue := 1946195068359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 17))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 31, r := 18 }
    lowerValue := 29702664
    upperValue := 129746337890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 18))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 31, r := 19 }
    lowerValue := 3059160
    upperValue := 8649755859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 19))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) },
  { key := { q := 15, n := 31, r := 20 }
    lowerValue := 358432
    upperValue := 576650390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 20))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20))) },
  { key := { q := 15, n := 31, r := 21 }
    lowerValue := 47957
    upperValue := 38443359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 21))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 21))) },
  { key := { q := 15, n := 31, r := 22 }
    lowerValue := 7365
    upperValue := 2562890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 22))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 24 22))) },
  { key := { q := 15, n := 31, r := 23 }
    lowerValue := 1307
    upperValue := 170859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 23))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 25 23))) },
  { key := { q := 15, n := 31, r := 24 }
    lowerValue := 270
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 24))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 26 24))) },
  { key := { q := 15, n := 31, r := 25 }
    lowerValue := 66
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 25))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 27 25))) },
  { key := { q := 15, n := 31, r := 26 }
    lowerValue := 20
    upperValue := 50625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 26))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 28 26))) },
  { key := { q := 15, n := 31, r := 27 }
    lowerValue := 15
    upperValue := 3375
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 29 28)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 29 27))) },
  { key := { q := 15, n := 31, r := 28 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 30 29))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 31 28)) },
  { key := { q := 15, n := 31, r := 29 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 31 30)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 31 29)) },
  { key := { q := 15, n := 31, r := 30 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 31 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 31 30)) },
  { key := { q := 15, n := 31, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 31 31)) },
  { key := { q := 15, n := 31, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 31 32)) },
  { key := { q := 15, n := 31, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 31 33)) },
  { key := { q := 15, n := 31, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 31 34)) },
  { key := { q := 15, n := 31, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 31 35)) },
  { key := { q := 15, n := 31, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 31 36)) },
  { key := { q := 15, n := 31, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 31 37)) },
  { key := { q := 15, n := 31, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 31 38)) },
  { key := { q := 15, n := 31, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 31 39)) },
  { key := { q := 15, n := 31, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 31 40)) },
  { key := { q := 15, n := 31, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 31 41)) },
  { key := { q := 15, n := 31, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 31 42)) },
  { key := { q := 15, n := 31, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 31 43)) },
  { key := { q := 15, n := 31, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 31 44)) },
  { key := { q := 15, n := 31, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 31 45)) },
  { key := { q := 15, n := 31, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 31 46)) },
  { key := { q := 15, n := 31, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 31 47)) },
  { key := { q := 15, n := 31, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 31 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 31 48)) },
  { key := { q := 15, n := 32, r := 0 }
    lowerValue := 43143988327398919500410556793212890625
    upperValue := 43143988327398919500410556793212890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 32 0)) },
  { key := { q := 15, n := 32, r := 1 }
    lowerValue := 96089060862803829622295226710941850
    upperValue := 1444524646221060119569301605224609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 1))
    upperTrace := (.lengthenFreeN 29 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 32, r := 2 }
    lowerValue := 441754859237177284599503986005354
    upperValue := 96301643081404007971286773681640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 2))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 32, r := 3 }
    lowerValue := 3147380166947386891024599075732
    upperValue := 6420109538760267198085784912109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 3))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 32, r := 4 }
    lowerValue := 30924325631960379107656822733
    upperValue := 428007302584017813205718994140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 4))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 32, r := 5 }
    lowerValue := 393290711444220841307390986
    upperValue := 28533820172267854213714599609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 5))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 32, r := 6 }
    lowerValue := 6223074827209047983067692
    upperValue := 1902254678151190280914306640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 6))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 32, r := 7 }
    lowerValue := 119268088672005095259402
    upperValue := 126816978543412685394287109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 7))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 32, r := 8 }
    lowerValue := 2716100757158991454178
    upperValue := 8454465236227512359619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 8))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 32, r := 9 }
    lowerValue := 72461935019723807389
    upperValue := 563631015748500823974609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 9))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 32, r := 10 }
    lowerValue := 2240563173921697343
    upperValue := 37575401049900054931640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 10))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 32, r := 11 }
    lowerValue := 79638348476700826
    upperValue := 2505026736660003662109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 11))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 32, r := 12 }
    lowerValue := 3233496456179912
    upperValue := 167001782444000244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 12))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 32, r := 13 }
    lowerValue := 149257002510693
    upperValue := 11133452162933349609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 13))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 12 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 32, r := 14 }
    lowerValue := 7805117395779
    upperValue := 98526125335693359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 14))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 32, r := 15 }
    lowerValue := 461255137918
    upperValue := 6568408355712890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 15))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 32, r := 16 }
    lowerValue := 30758668841
    upperValue := 437893890380859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 16))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 32, r := 17 }
    lowerValue := 2313064244
    upperValue := 29192926025390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 17))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 32, r := 18 }
    lowerValue := 196199828
    upperValue := 1946195068359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 18))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 32, r := 19 }
    lowerValue := 18791686
    upperValue := 129746337890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 19))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) },
  { key := { q := 15, n := 32, r := 20 }
    lowerValue := 2036285
    upperValue := 8649755859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 20))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20))) },
  { key := { q := 15, n := 32, r := 21 }
    lowerValue := 250370
    upperValue := 576650390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 21))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 21))) },
  { key := { q := 15, n := 32, r := 22 }
    lowerValue := 35070
    upperValue := 38443359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 22))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 24 22))) },
  { key := { q := 15, n := 32, r := 23 }
    lowerValue := 5626
    upperValue := 2562890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 23))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 25 23))) },
  { key := { q := 15, n := 32, r := 24 }
    lowerValue := 1041
    upperValue := 170859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 24))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 26 24))) },
  { key := { q := 15, n := 32, r := 25 }
    lowerValue := 224
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 25))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 27 25))) },
  { key := { q := 15, n := 32, r := 26 }
    lowerValue := 57
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 26))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 28 26))) },
  { key := { q := 15, n := 32, r := 27 }
    lowerValue := 17
    upperValue := 50625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 27))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 29 27))) },
  { key := { q := 15, n := 32, r := 28 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 30 29)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 31 28))) },
  { key := { q := 15, n := 32, r := 29 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 31 30))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 32 29)) },
  { key := { q := 15, n := 32, r := 30 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 32 31)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 32 30)) },
  { key := { q := 15, n := 32, r := 31 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 32 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 32 31)) },
  { key := { q := 15, n := 32, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 32 32)) },
  { key := { q := 15, n := 32, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 32 33)) },
  { key := { q := 15, n := 32, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 32 34)) },
  { key := { q := 15, n := 32, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 32 35)) },
  { key := { q := 15, n := 32, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 32 36)) },
  { key := { q := 15, n := 32, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 32 37)) },
  { key := { q := 15, n := 32, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 32 38)) },
  { key := { q := 15, n := 32, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 32 39)) },
  { key := { q := 15, n := 32, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 32 40)) },
  { key := { q := 15, n := 32, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 32 41)) },
  { key := { q := 15, n := 32, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 32 42)) },
  { key := { q := 15, n := 32, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 32 43)) },
  { key := { q := 15, n := 32, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 32 44)) },
  { key := { q := 15, n := 32, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 32 45)) },
  { key := { q := 15, n := 32, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 32 46)) },
  { key := { q := 15, n := 32, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 32 47)) },
  { key := { q := 15, n := 32, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 32 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 32 48)) },
  { key := { q := 15, n := 33, r := 0 }
    lowerValue := 647159824910983792506158351898193359375
    upperValue := 647159824910983792506158351898193359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 33 0)) },
  { key := { q := 15, n := 33, r := 1 }
    lowerValue := 1397753401535602143641810695244478099
    upperValue := 21667869693315901793539524078369140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 1))
    upperTrace := (.lengthenFreeN 30 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 33, r := 2 }
    lowerValue := 6225623850766070480381702454985459
    upperValue := 1444524646221060119569301605224609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 2))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 33, r := 3 }
    lowerValue := 42928729368767463184183996838400
    upperValue := 96301643081404007971286773681640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 3))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 33, r := 4 }
    lowerValue := 407773283280287932592806293426
    upperValue := 6420109538760267198085784912109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 4))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 33, r := 5 }
    lowerValue := 5007734543241136540757065239
    upperValue := 428007302584017813205718994140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 5))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 33, r := 6 }
    lowerValue := 76417800703608292764011680
    upperValue := 28533820172267854213714599609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 6))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 33, r := 7 }
    lowerValue := 1410548096040307201885726
    upperValue := 1902254678151190280914306640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 7))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 33, r := 8 }
    lowerValue := 30892326839230865398972
    upperValue := 126816978543412685394287109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 8))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 33, r := 9 }
    lowerValue := 791356401844800253936
    upperValue := 8454465236227512359619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 9))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 33, r := 10 }
    lowerValue := 23455045569146105229
    upperValue := 563631015748500823974609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 10))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 33, r := 11 }
    lowerValue := 797651980473751381
    upperValue := 37575401049900054931640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 11))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 33, r := 12 }
    lowerValue := 30924171756058191
    upperValue := 2505026736660003662109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 12))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 33, r := 13 }
    lowerValue := 1359985219493478
    upperValue := 167001782444000244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 13))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 12 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 33, r := 14 }
    lowerValue := 67592224954378
    upperValue := 1477891880035400390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 14))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 33, r := 15 }
    lowerValue := 3786260520447
    upperValue := 98526125335693359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 15))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 33, r := 16 }
    lowerValue := 238613653540
    upperValue := 6568408355712890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 16))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 33, r := 17 }
    lowerValue := 16901728696
    upperValue := 437893890380859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 17))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 33, r := 18 }
    lowerValue := 1345361259
    upperValue := 29192926025390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 18))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 33, r := 19 }
    lowerValue := 120413406
    upperValue := 1946195068359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 19))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) },
  { key := { q := 15, n := 33, r := 20 }
    lowerValue := 12134933
    upperValue := 129746337890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 20))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20))) },
  { key := { q := 15, n := 33, r := 21 }
    lowerValue := 1380026
    upperValue := 8649755859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 21))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 21))) },
  { key := { q := 15, n := 33, r := 22 }
    lowerValue := 177657
    upperValue := 576650390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 22))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 24 22))) },
  { key := { q := 15, n := 33, r := 23 }
    lowerValue := 25998
    upperValue := 38443359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 23))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 25 23))) },
  { key := { q := 15, n := 33, r := 24 }
    lowerValue := 4348
    upperValue := 2562890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 24))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 26 24))) },
  { key := { q := 15, n := 33, r := 25 }
    lowerValue := 837
    upperValue := 170859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 25))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 27 25))) },
  { key := { q := 15, n := 33, r := 26 }
    lowerValue := 187
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 26))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 28 26))) },
  { key := { q := 15, n := 33, r := 27 }
    lowerValue := 49
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 27))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 29 27))) },
  { key := { q := 15, n := 33, r := 28 }
    lowerValue := 16
    upperValue := 3375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 28))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 31 28))) },
  { key := { q := 15, n := 33, r := 29 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 31 30)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 32 29))) },
  { key := { q := 15, n := 33, r := 30 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 32 31))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 33 30)) },
  { key := { q := 15, n := 33, r := 31 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 33 32)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 33 31)) },
  { key := { q := 15, n := 33, r := 32 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 33 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 33 32)) },
  { key := { q := 15, n := 33, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 33 33)) },
  { key := { q := 15, n := 33, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 33 34)) },
  { key := { q := 15, n := 33, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 33 35)) },
  { key := { q := 15, n := 33, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 33 36)) },
  { key := { q := 15, n := 33, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 33 37)) },
  { key := { q := 15, n := 33, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 33 38)) },
  { key := { q := 15, n := 33, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 33 39)) },
  { key := { q := 15, n := 33, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 33 40)) },
  { key := { q := 15, n := 33, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 33 41)) },
  { key := { q := 15, n := 33, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 33 42)) },
  { key := { q := 15, n := 33, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 33 43)) },
  { key := { q := 15, n := 33, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 33 44)) },
  { key := { q := 15, n := 33, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 33 45)) },
  { key := { q := 15, n := 33, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 33 46)) },
  { key := { q := 15, n := 33, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 33 47)) },
  { key := { q := 15, n := 33, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 33 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 33 48)) },
  { key := { q := 15, n := 34, r := 0 }
    lowerValue := 9707397373664756887592375278472900390625
    upperValue := 9707397373664756887592375278472900390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 34 0)) },
  { key := { q := 15, n := 34, r := 1 }
    lowerValue := 20350937890282509198306866411892872937
    upperValue := 325018045399738526903092861175537109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 1))
    upperTrace := (.lengthenFreeN 31 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 34, r := 2 }
    lowerValue := 87903048669009778667539370283093826
    upperValue := 21667869693315901793539524078369140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 2))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 34, r := 3 }
    lowerValue := 587240576128250758798606824891866
    upperValue := 1444524646221060119569301605224609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 3))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 34, r := 4 }
    lowerValue := 5398664304145457992077555191387
    upperValue := 96301643081404007971286773681640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 4))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 34, r := 5 }
    lowerValue := 64096017653536658199993021755
    upperValue := 6420109538760267198085784912109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 5))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 34, r := 6 }
    lowerValue := 944487338674619559853764962
    upperValue := 428007302584017813205718994140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 6))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 34, r := 7 }
    lowerValue := 16813360151284563061308306
    upperValue := 28533820172267854213714599609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 7))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 34, r := 8 }
    lowerValue := 354645831795630976736995
    upperValue := 1902254678151190280914306640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 8))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 34, r := 9 }
    lowerValue := 8736981349796266981633
    upperValue := 126816978543412685394287109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 9))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 34, r := 10 }
    lowerValue := 248649444999662694597
    upperValue := 8454465236227512359619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 10))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 34, r := 11 }
    lowerValue := 8105627883538699403
    upperValue := 563631015748500823974609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 11))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 34, r := 12 }
    lowerValue := 300669424349796873
    upperValue := 37575401049900054931640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 12))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 34, r := 13 }
    lowerValue := 12626024573094237
    upperValue := 2505026736660003662109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 13))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 12 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 34, r := 14 }
    lowerValue := 597875615420796
    upperValue := 22168378200531005859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 14))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 34, r := 15 }
    lowerValue := 31831099993612
    upperValue := 1477891880035400390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 15))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 34, r := 16 }
    lowerValue := 1901513103970
    upperValue := 98526125335693359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 16))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 34, r := 17 }
    lowerValue := 127293623302
    upperValue := 6568408355712890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 17))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 34, r := 18 }
    lowerValue := 9544337922
    upperValue := 437893890380859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 18))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 34, r := 19 }
    lowerValue := 801673893
    upperValue := 29192926025390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 19))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) },
  { key := { q := 15, n := 34, r := 20 }
    lowerValue := 75501008
    upperValue := 1946195068359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 20))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20))) },
  { key := { q := 15, n := 34, r := 21 }
    lowerValue := 7985868
    upperValue := 129746337890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 21))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 21))) },
  { key := { q := 15, n := 34, r := 22 }
    lowerValue := 950959
    upperValue := 8649755859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 22))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 24 22))) },
  { key := { q := 15, n := 34, r := 23 }
    lowerValue := 127911
    upperValue := 576650390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 23))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 25 23))) },
  { key := { q := 15, n := 34, r := 24 }
    lowerValue := 19518
    upperValue := 38443359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 24))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 26 24))) },
  { key := { q := 15, n := 34, r := 25 }
    lowerValue := 3398
    upperValue := 2562890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 25))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 27 25))) },
  { key := { q := 15, n := 34, r := 26 }
    lowerValue := 680
    upperValue := 170859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 26))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 28 26))) },
  { key := { q := 15, n := 34, r := 27 }
    lowerValue := 158
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 27))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 29 27))) },
  { key := { q := 15, n := 34, r := 28 }
    lowerValue := 43
    upperValue := 50625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 28))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 31 28))) },
  { key := { q := 15, n := 34, r := 29 }
    lowerValue := 15
    upperValue := 3375
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 31 30))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 32 29))) },
  { key := { q := 15, n := 34, r := 30 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 32 31)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 33 30))) },
  { key := { q := 15, n := 34, r := 31 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 33 32))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 34 31)) },
  { key := { q := 15, n := 34, r := 32 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 34 33)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 34 32)) },
  { key := { q := 15, n := 34, r := 33 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 34 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 34 33)) },
  { key := { q := 15, n := 34, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 34 34)) },
  { key := { q := 15, n := 34, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 34 35)) },
  { key := { q := 15, n := 34, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 34 36)) },
  { key := { q := 15, n := 34, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 34 37)) },
  { key := { q := 15, n := 34, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 34 38)) },
  { key := { q := 15, n := 34, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 34 39)) },
  { key := { q := 15, n := 34, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 34 40)) },
  { key := { q := 15, n := 34, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 34 41)) },
  { key := { q := 15, n := 34, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 34 42)) },
  { key := { q := 15, n := 34, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 34 43)) },
  { key := { q := 15, n := 34, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 34 44)) },
  { key := { q := 15, n := 34, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 34 45)) },
  { key := { q := 15, n := 34, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 34 46)) },
  { key := { q := 15, n := 34, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 34 47)) },
  { key := { q := 15, n := 34, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 34 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 34 48)) },
  { key := { q := 15, n := 35, r := 0 }
    lowerValue := 145610960604971353313885629177093505859375
    upperValue := 145610960604971353313885629177093505859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 35 0)) },
  { key := { q := 15, n := 35, r := 1 }
    lowerValue := 296560001232120882513005354739497975274
    upperValue := 4875270680996077903546392917633056640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 1))
    upperTrace := (.lengthenFreeN 32 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 35, r := 2 }
    lowerValue := 1243358528276347681378227742714975587
    upperValue := 325018045399738526903092861175537109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 2))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 35, r := 3 }
    lowerValue := 8055222392594452865249074295982772
    upperValue := 21667869693315901793539524078369140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 3))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 35, r := 4 }
    lowerValue := 71745853205102283535949614177601
    upperValue := 1444524646221060119569301605224609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 4))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 35, r := 5 }
    lowerValue := 824410131573406889206243952948
    upperValue := 96301643081404007971286773681640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 5))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 35, r := 6 }
    lowerValue := 11744461664965627583152003397
    upperValue := 6420109538760267198085784912109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 6))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 35, r := 7 }
    lowerValue := 201885972464250237603615362
    upperValue := 428007302584017813205718994140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 7))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 35, r := 8 }
    lowerValue := 4106904734242997345892039
    upperValue := 28533820172267854213714599609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 8))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 35, r := 9 }
    lowerValue := 97445618761225152572884
    upperValue := 1902254678151190280914306640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 9))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 35, r := 10 }
    lowerValue := 2667088493220929921064
    upperValue := 126816978543412685394287109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 10))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 35, r := 11 }
    lowerValue := 83483957246285065322
    upperValue := 8454465236227512359619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 11))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 35, r := 12 }
    lowerValue := 2968470772814914990
    upperValue := 563631015748500823974609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 12))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 35, r := 13 }
    lowerValue := 119270769843782088
    upperValue := 37575401049900054931640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 13))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 12 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 35, r := 14 }
    lowerValue := 5392948940541696
    upperValue := 332525673007965087890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 14))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 35, r := 15 }
    lowerValue := 273562591366010
    upperValue := 22168378200531005859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 15))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 35, r := 16 }
    lowerValue := 15532477992302
    upperValue := 1477891880035400390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 16))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 35, r := 17 }
    lowerValue := 985648252583
    upperValue := 98526125335693359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 17))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 35, r := 18 }
    lowerValue := 69846675920
    upperValue := 6568408355712890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 18))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 35, r := 19 }
    lowerValue := 5526432767
    upperValue := 437893890380859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 35 19))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) }]

end CoveringCodes.Database
