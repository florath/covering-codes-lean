import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 75. Do not edit manually.

def precomputedTable_chunk_75 : Array AnyBoundEntry := #[
  { key := { q := 7, n := 39, r := 32 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 34 33))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 38 32))) },
  { key := { q := 7, n := 39, r := 33 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 35 34)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 39 33)) },
  { key := { q := 7, n := 39, r := 34 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 36 35))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 39 34)) },
  { key := { q := 7, n := 39, r := 35 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 37 36)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 39 35)) },
  { key := { q := 7, n := 39, r := 36 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 38 37))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 39 36)) },
  { key := { q := 7, n := 39, r := 37 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 39 38)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 39 37)) },
  { key := { q := 7, n := 39, r := 38 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 39 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 39 38)) },
  { key := { q := 7, n := 39, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 39 39)) },
  { key := { q := 7, n := 39, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 39 40)) },
  { key := { q := 7, n := 39, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 39 41)) },
  { key := { q := 7, n := 39, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 39 42)) },
  { key := { q := 7, n := 39, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 39 43)) },
  { key := { q := 7, n := 39, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 39 44)) },
  { key := { q := 7, n := 39, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 39 45)) },
  { key := { q := 7, n := 39, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 39 46)) },
  { key := { q := 7, n := 39, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 39 47)) },
  { key := { q := 7, n := 39, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 39 48)) },
  { key := { q := 7, n := 40, r := 0 }
    lowerValue := 6366805760909027985741435139224001
    upperValue := 6366805760909027985741435139224001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 40 0)) },
  { key := { q := 7, n := 40, r := 1 }
    lowerValue := 26418281165597626496852427963586
    upperValue := 464052898025439357561329091780175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 1))
    upperTrace := (.lengthenFreeN 37 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 40, r := 2 }
    lowerValue := 224808649444194342916614354692
    upperValue := 18562115921017574302453163671207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 2))
    upperTrace := (.lengthenFreeN 33 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))) },
  { key := { q := 7, n := 40, r := 3 }
    lowerValue := 2944322427204310387269260022
    upperValue := 1352923900948802791723991521225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 3))
    upperTrace := (.lengthenFreeN 31 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))) },
  { key := { q := 7, n := 40, r := 4 }
    lowerValue := 52791069572228864466608781
    upperValue := 193274842992686113103427360175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 4))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 40, r := 5 }
    lowerValue := 1215671683654724860043587
    upperValue := 27610691856098016157632480025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 5))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 40, r := 6 }
    lowerValue := 34541994896627833278021
    upperValue := 3944384550871145165376068575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 6))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 40, r := 7 }
    lowerValue := 1178312711984617775810
    upperValue := 563483507267306452196581225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 7))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 40, r := 8 }
    lowerValue := 47310934277596726142
    upperValue := 80497643895329493170940175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 8))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 5 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 40, r := 9 }
    lowerValue := 2202888756112211256
    upperValue := 11499663413618499024420025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 9))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 6 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 40, r := 10 }
    lowerValue := 117588068468830484
    upperValue := 1642809059088357003488575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 10))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 7 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 40, r := 11 }
    lowerValue := 7130801592470767
    upperValue := 234687008441193857641225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 11))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 8 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 40, r := 12 }
    lowerValue := 487719982099935
    upperValue := 9387480337647754305649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 12))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 40, r := 13 }
    lowerValue := 37404170809891
    upperValue := 1341068619663964900807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 13))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 40, r := 14 }
    lowerValue := 3201317253432
    upperValue := 191581231380566414401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 14))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 40, r := 15 }
    lowerValue := 304600354414
    upperValue := 27368747340080916343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 15))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 40, r := 16 }
    lowerValue := 32120730732
    upperValue := 3909821048582988049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 16))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 40, r := 17 }
    lowerValue := 3744832679
    upperValue := 558545864083284007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 17))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 40, r := 18 }
    lowerValue := 481784387
    upperValue := 11398895185373143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 18))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18))) },
  { key := { q := 7, n := 40, r := 19 }
    lowerValue := 68303645
    upperValue := 1628413597910449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 19))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 19))) },
  { key := { q := 7, n := 40, r := 20 }
    lowerValue := 10661059
    upperValue := 232630513987207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 20))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 20))) },
  { key := { q := 7, n := 40, r := 21 }
    lowerValue := 1831048
    upperValue := 33232930569601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 21))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 21))) },
  { key := { q := 7, n := 40, r := 22 }
    lowerValue := 346014
    upperValue := 4747561509943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 22))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 26 22))) },
  { key := { q := 7, n := 40, r := 23 }
    lowerValue := 71962
    upperValue := 678223072849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 23))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 27 23))) },
  { key := { q := 7, n := 40, r := 24 }
    lowerValue := 16482
    upperValue := 13841287201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 24))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 29 24))) },
  { key := { q := 7, n := 40, r := 25 }
    lowerValue := 4162
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 25))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 30 25))) },
  { key := { q := 7, n := 40, r := 26 }
    lowerValue := 1161
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 26))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 31 26))) },
  { key := { q := 7, n := 40, r := 27 }
    lowerValue := 358
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 27))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 32 27))) },
  { key := { q := 7, n := 40, r := 28 }
    lowerValue := 123
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 28))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 33 28))) },
  { key := { q := 7, n := 40, r := 29 }
    lowerValue := 47
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 29))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 34 29))) },
  { key := { q := 7, n := 40, r := 30 }
    lowerValue := 20
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 30))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 36 30))) },
  { key := { q := 7, n := 40, r := 31 }
    lowerValue := 10
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 31))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 37 31))) },
  { key := { q := 7, n := 40, r := 32 }
    lowerValue := 7
    upperValue := 343
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 34 33)))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 38 32))) },
  { key := { q := 7, n := 40, r := 33 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 35 34))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 39 33))) },
  { key := { q := 7, n := 40, r := 34 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 36 35)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 40 34)) },
  { key := { q := 7, n := 40, r := 35 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 37 36))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 40 35)) },
  { key := { q := 7, n := 40, r := 36 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 38 37)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 40 36)) },
  { key := { q := 7, n := 40, r := 37 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 39 38))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 40 37)) },
  { key := { q := 7, n := 40, r := 38 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 40 39)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 40 38)) },
  { key := { q := 7, n := 40, r := 39 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 40 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 40 39)) },
  { key := { q := 7, n := 40, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 40 40)) },
  { key := { q := 7, n := 40, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 40 41)) },
  { key := { q := 7, n := 40, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 40 42)) },
  { key := { q := 7, n := 40, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 40 43)) },
  { key := { q := 7, n := 40, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 40 44)) },
  { key := { q := 7, n := 40, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 40 45)) },
  { key := { q := 7, n := 40, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 40 46)) },
  { key := { q := 7, n := 40, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 40 47)) },
  { key := { q := 7, n := 40, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 40 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 40 48)) },
  { key := { q := 7, n := 41, r := 0 }
    lowerValue := 44567640326363195900190045974568007
    upperValue := 44567640326363195900190045974568007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 41 0)) },
  { key := { q := 7, n := 41, r := 1 }
    lowerValue := 180435790794992695952186420949669
    upperValue := 3248370286178075502929303642461225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 1))
    upperTrace := (.lengthenFreeN 38 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 41, r := 2 }
    lowerValue := 1497216391519575230966844021050
    upperValue := 129934811447123020117172145698449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 2))
    upperTrace := (.lengthenFreeN 34 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))) },
  { key := { q := 7, n := 41, r := 3 }
    lowerValue := 19108658574189295026036248766
    upperValue := 9470467306641619542067940648575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 3))
    upperTrace := (.lengthenFreeN 32 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))) },
  { key := { q := 7, n := 41, r := 4 }
    lowerValue := 333644446811487172010799378
    upperValue := 1352923900948802791723991521225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 4))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 41, r := 5 }
    lowerValue := 7476666618477029068757989
    upperValue := 193274842992686113103427360175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 5))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 41, r := 6 }
    lowerValue := 206576139923306277292144
    upperValue := 27610691856098016157632480025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 6))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 41, r := 7 }
    lowerValue := 6846817837969805373107
    upperValue := 3944384550871145165376068575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 7))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 41, r := 8 }
    lowerValue := 266882309917744938920
    upperValue := 563483507267306452196581225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 8))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 5 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 41, r := 9 }
    lowerValue := 12052964912535306189
    upperValue := 80497643895329493170940175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 9))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 6 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 41, r := 10 }
    lowerValue := 623443589111236263
    upperValue := 11499663413618499024420025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 10))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 7 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 41, r := 11 }
    lowerValue := 36598958462202906
    upperValue := 1642809059088357003488575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 11))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 8 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 41, r := 12 }
    lowerValue := 2420656945568936
    upperValue := 65712362363534280139543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 12))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 41, r := 13 }
    lowerValue := 179316472596348
    upperValue := 9387480337647754305649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 13))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 41, r := 14 }
    lowerValue := 14805999099327
    upperValue := 1341068619663964900807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 14))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 41, r := 15 }
    lowerValue := 1357320743135
    upperValue := 191581231380566414401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 15))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 41, r := 16 }
    lowerValue := 137712638064
    upperValue := 27368747340080916343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 16))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 41, r := 17 }
    lowerValue := 15424281895
    upperValue := 3909821048582988049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 17))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 41, r := 18 }
    lowerValue := 1903298799
    upperValue := 79792266297612001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 18))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18))) },
  { key := { q := 7, n := 41, r := 19 }
    lowerValue := 258357773
    upperValue := 11398895185373143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 19))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 19))) },
  { key := { q := 7, n := 41, r := 20 }
    lowerValue := 38537267
    upperValue := 1628413597910449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 20))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 20))) },
  { key := { q := 7, n := 41, r := 21 }
    lowerValue := 6312385
    upperValue := 232630513987207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 21))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 21))) },
  { key := { q := 7, n := 41, r := 22 }
    lowerValue := 1135098
    upperValue := 33232930569601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 22))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 26 22))) },
  { key := { q := 7, n := 41, r := 23 }
    lowerValue := 224096
    upperValue := 4747561509943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 23))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 27 23))) },
  { key := { q := 7, n := 41, r := 24 }
    lowerValue := 48595
    upperValue := 96889010407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 24))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 29 24))) },
  { key := { q := 7, n := 41, r := 25 }
    lowerValue := 11584
    upperValue := 13841287201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 25))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 30 25))) },
  { key := { q := 7, n := 41, r := 26 }
    lowerValue := 3039
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 26))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 31 26))) },
  { key := { q := 7, n := 41, r := 27 }
    lowerValue := 879
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 27))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 32 27))) },
  { key := { q := 7, n := 41, r := 28 }
    lowerValue := 281
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 28))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 33 28))) },
  { key := { q := 7, n := 41, r := 29 }
    lowerValue := 100
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 29))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 34 29))) },
  { key := { q := 7, n := 41, r := 30 }
    lowerValue := 39
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 30))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 36 30))) },
  { key := { q := 7, n := 41, r := 31 }
    lowerValue := 17
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 31))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 37 31))) },
  { key := { q := 7, n := 41, r := 32 }
    lowerValue := 9
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 32))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 38 32))) },
  { key := { q := 7, n := 41, r := 33 }
    lowerValue := 7
    upperValue := 343
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 35 34)))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 39 33))) },
  { key := { q := 7, n := 41, r := 34 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 36 35))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 40 34))) },
  { key := { q := 7, n := 41, r := 35 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 37 36)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 41 35)) },
  { key := { q := 7, n := 41, r := 36 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 38 37))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 41 36)) },
  { key := { q := 7, n := 41, r := 37 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 39 38)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 41 37)) },
  { key := { q := 7, n := 41, r := 38 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 40 39))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 41 38)) },
  { key := { q := 7, n := 41, r := 39 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 41 40)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 41 39)) },
  { key := { q := 7, n := 41, r := 40 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 41 40))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 41 40)) },
  { key := { q := 7, n := 41, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 41 41)) },
  { key := { q := 7, n := 41, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 41 42)) },
  { key := { q := 7, n := 41, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 41 43)) },
  { key := { q := 7, n := 41, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 41 44)) },
  { key := { q := 7, n := 41, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 41 45)) },
  { key := { q := 7, n := 41, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 41 46)) },
  { key := { q := 7, n := 41, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 41 47)) },
  { key := { q := 7, n := 41, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 41 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 41 48)) },
  { key := { q := 7, n := 42, r := 0 }
    lowerValue := 311973482284542371301330321821976049
    upperValue := 311973482284542371301330321821976049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 42 0)) },
  { key := { q := 7, n := 42, r := 1 }
    lowerValue := 1233096767923092376685100086252870
    upperValue := 22738592003246528520505125497228575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 1))
    upperTrace := (.lengthenFreeN 39 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 42, r := 2 }
    lowerValue := 9983470904174289458905255266472
    upperValue := 909543680129861140820205019889143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 2))
    upperTrace := (.lengthenFreeN 35 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))) },
  { key := { q := 7, n := 42, r := 3 }
    lowerValue := 124246238059515968512582522972
    upperValue := 66293271146491336794475584540025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 3))
    upperTrace := (.lengthenFreeN 33 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))) },
  { key := { q := 7, n := 42, r := 4 }
    lowerValue := 2114039522743353196680347327
    upperValue := 9470467306641619542067940648575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 4))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 42, r := 5 }
    lowerValue := 46133772656693759017040984
    upperValue := 1352923900948802791723991521225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 5))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 42, r := 6 }
    lowerValue := 1240403094201794644167977
    upperValue := 193274842992686113103427360175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 6))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 42, r := 7 }
    lowerValue := 39977559774565098597927
    upperValue := 27610691856098016157632480025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 7))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 42, r := 8 }
    lowerValue := 1514073485215035537202
    upperValue := 3944384550871145165376068575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 8))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 5 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 42, r := 9 }
    lowerValue := 66382827896577617788
    upperValue := 563483507267306452196581225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 9))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 6 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 42, r := 10 }
    lowerValue := 3330483097555846351
    upperValue := 80497643895329493170940175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 10))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 7 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 42, r := 11 }
    lowerValue := 189459819385643350
    upperValue := 11499663413618499024420025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 11))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 8 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 42, r := 12 }
    lowerValue := 12130662763061659
    upperValue := 459986536544739960976801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 12))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 42, r := 13 }
    lowerValue := 868982462770880
    upperValue := 65712362363534280139543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 13))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 42, r := 14 }
    lowerValue := 69306528919473
    upperValue := 9387480337647754305649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 14))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 42, r := 15 }
    lowerValue := 6129668691317
    upperValue := 1341068619663964900807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 15))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 42, r := 16 }
    lowerValue := 599213956788
    upperValue := 191581231380566414401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 16))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 42, r := 17 }
    lowerValue := 64574558003
    upperValue := 27368747340080916343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 17))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 42, r := 18 }
    lowerValue := 7655287911
    upperValue := 558545864083284007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 18))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18))) },
  { key := { q := 7, n := 42, r := 19 }
    lowerValue := 996721776
    upperValue := 79792266297612001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 19))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 19))) },
  { key := { q := 7, n := 42, r := 20 }
    lowerValue := 142355941
    upperValue := 11398895185373143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 20))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 20))) },
  { key := { q := 7, n := 42, r := 21 }
    lowerValue := 22285031
    upperValue := 1628413597910449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 21))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 21))) },
  { key := { q := 7, n := 42, r := 22 }
    lowerValue := 3822017
    upperValue := 232630513987207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 22))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 26 22))) },
  { key := { q := 7, n := 42, r := 23 }
    lowerValue := 718077
    upperValue := 33232930569601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 23))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 27 23))) },
  { key := { q := 7, n := 42, r := 24 }
    lowerValue := 147827
    upperValue := 678223072849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 24))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 29 24))) },
  { key := { q := 7, n := 42, r := 25 }
    lowerValue := 33365
    upperValue := 96889010407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 25))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 30 25))) },
  { key := { q := 7, n := 42, r := 26 }
    lowerValue := 8264
    upperValue := 13841287201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 26))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 31 26))) },
  { key := { q := 7, n := 42, r := 27 }
    lowerValue := 2249
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 27))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 32 27))) },
  { key := { q := 7, n := 42, r := 28 }
    lowerValue := 674
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 28))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 33 28))) },
  { key := { q := 7, n := 42, r := 29 }
    lowerValue := 223
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 29))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 34 29))) },
  { key := { q := 7, n := 42, r := 30 }
    lowerValue := 82
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 30))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 36 30))) },
  { key := { q := 7, n := 42, r := 31 }
    lowerValue := 33
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 31))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 37 31))) },
  { key := { q := 7, n := 42, r := 32 }
    lowerValue := 15
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 32))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 38 32))) },
  { key := { q := 7, n := 42, r := 33 }
    lowerValue := 8
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 33))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 39 33))) },
  { key := { q := 7, n := 42, r := 34 }
    lowerValue := 7
    upperValue := 343
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 36 35)))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 40 34))) },
  { key := { q := 7, n := 42, r := 35 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 37 36))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 41 35))) },
  { key := { q := 7, n := 42, r := 36 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 38 37)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 42 36)) },
  { key := { q := 7, n := 42, r := 37 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 39 38))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 42 37)) },
  { key := { q := 7, n := 42, r := 38 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 40 39)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 42 38)) },
  { key := { q := 7, n := 42, r := 39 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 41 40))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 42 39)) },
  { key := { q := 7, n := 42, r := 40 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 42 41)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 42 40)) },
  { key := { q := 7, n := 42, r := 41 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 42 41))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 42 41)) },
  { key := { q := 7, n := 42, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 42 42)) },
  { key := { q := 7, n := 42, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 42 43)) },
  { key := { q := 7, n := 42, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 42 44)) },
  { key := { q := 7, n := 42, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 42 45)) },
  { key := { q := 7, n := 42, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 42 46)) },
  { key := { q := 7, n := 42, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 42 47)) },
  { key := { q := 7, n := 42, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 42 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 42 48)) },
  { key := { q := 7, n := 43, r := 0 }
    lowerValue := 2183814375991796599109312252753832343
    upperValue := 2183814375991796599109312252753832343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 43 0)) },
  { key := { q := 7, n := 43, r := 1 }
    lowerValue := 8431715737420064089225143833026380
    upperValue := 159170144022725699643535878480600025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 1))
    upperTrace := (.lengthenFreeN 40 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 43, r := 2 }
    lowerValue := 66646759727524539906287186887840
    upperValue := 6366805760909027985741435139224001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 2))
    upperTrace := (.lengthenFreeN 36 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))) },
  { key := { q := 7, n := 43, r := 3 }
    lowerValue := 809292826214346897839705729144
    upperValue := 464052898025439357561329091780175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 3))
    upperTrace := (.lengthenFreeN 34 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))) },
  { key := { q := 7, n := 43, r := 4 }
    lowerValue := 13427472606361072931677335105
    upperValue := 66293271146491336794475584540025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 4))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 43, r := 5 }
    lowerValue := 285548056205630128646251732
    upperValue := 9470467306641619542067940648575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 5))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 43, r := 6 }
    lowerValue := 7476666618477029068757989
    upperValue := 1352923900948802791723991521225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 6))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 43, r := 7 }
    lowerValue := 234496669325708988600150
    upperValue := 193274842992686113103427360175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 7))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 43, r := 8 }
    lowerValue := 8636067361395472088204
    upperValue := 27610691856098016157632480025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 8))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 5 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 43, r := 9 }
    lowerValue := 367899094125875802676
    upperValue := 3944384550871145165376068575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 9))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 6 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 43, r := 10 }
    lowerValue := 17919240270232475355
    upperValue := 563483507267306452196581225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 10))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 7 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 43, r := 11 }
    lowerValue := 988741838744245664
    upperValue := 80497643895329493170940175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 11))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 8 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 43, r := 12 }
    lowerValue := 61347160468316129
    upperValue := 3219905755813179726837607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 12))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 43, r := 13 }
    lowerValue := 4254321982637912
    upperValue := 459986536544739960976801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 13))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 43, r := 14 }
    lowerValue := 328125784466014
    upperValue := 65712362363534280139543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 14))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 43, r := 15 }
    lowerValue := 28032193880747
    upperValue := 9387480337647754305649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 15))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 43, r := 16 }
    lowerValue := 2643805344233
    upperValue := 1341068619663964900807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 16))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 43, r := 17 }
    lowerValue := 274519567700
    upperValue := 191581231380566414401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 17))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 43, r := 18 }
    lowerValue := 31313674312
    upperValue := 3909821048582988049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 18))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18))) },
  { key := { q := 7, n := 43, r := 19 }
    lowerValue := 3917045997
    upperValue := 558545864083284007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 19))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 19))) },
  { key := { q := 7, n := 43, r := 20 }
    lowerValue := 536629591
    upperValue := 79792266297612001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 20))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 20))) },
  { key := { q := 7, n := 43, r := 21 }
    lowerValue := 80440314
    upperValue := 11398895185373143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 21))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 21))) },
  { key := { q := 7, n := 43, r := 22 }
    lowerValue := 13185629
    upperValue := 1628413597910449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 22))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 26 22))) },
  { key := { q := 7, n := 43, r := 23 }
    lowerValue := 2362900
    upperValue := 232630513987207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 23))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 27 23))) },
  { key := { q := 7, n := 43, r := 24 }
    lowerValue := 462952
    upperValue := 4747561509943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 24))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 29 24))) },
  { key := { q := 7, n := 43, r := 25 }
    lowerValue := 99206
    upperValue := 678223072849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 25))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 30 25))) },
  { key := { q := 7, n := 43, r := 26 }
    lowerValue := 23268
    upperValue := 96889010407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 26))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 31 26))) },
  { key := { q := 7, n := 43, r := 27 }
    lowerValue := 5979
    upperValue := 13841287201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 27))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 32 27))) },
  { key := { q := 7, n := 43, r := 28 }
    lowerValue := 1686
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 28))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 33 28))) },
  { key := { q := 7, n := 43, r := 29 }
    lowerValue := 522
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 29))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 34 29))) },
  { key := { q := 7, n := 43, r := 30 }
    lowerValue := 178
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 30))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 36 30))) },
  { key := { q := 7, n := 43, r := 31 }
    lowerValue := 67
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 31))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 37 31))) },
  { key := { q := 7, n := 43, r := 32 }
    lowerValue := 28
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 32))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 38 32))) },
  { key := { q := 7, n := 43, r := 33 }
    lowerValue := 13
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 33))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 39 33))) },
  { key := { q := 7, n := 43, r := 34 }
    lowerValue := 7
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 34))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 40 34))) },
  { key := { q := 7, n := 43, r := 35 }
    lowerValue := 7
    upperValue := 343
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 37 36)))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 41 35))) },
  { key := { q := 7, n := 43, r := 36 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 38 37))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 43 36)) },
  { key := { q := 7, n := 43, r := 37 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 39 38)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 43 37)) },
  { key := { q := 7, n := 43, r := 38 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 40 39))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 43 38)) },
  { key := { q := 7, n := 43, r := 39 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 41 40)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 43 39)) },
  { key := { q := 7, n := 43, r := 40 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 42 41))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 43 40)) },
  { key := { q := 7, n := 43, r := 41 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 43 42)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 43 41)) },
  { key := { q := 7, n := 43, r := 42 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 43 42))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 43 42)) },
  { key := { q := 7, n := 43, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 43 43)) },
  { key := { q := 7, n := 43, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 43 44)) },
  { key := { q := 7, n := 43, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 43 45)) },
  { key := { q := 7, n := 43, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 43 46)) },
  { key := { q := 7, n := 43, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 43 47)) },
  { key := { q := 7, n := 43, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 43 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 43 48)) },
  { key := { q := 7, n := 44, r := 0 }
    lowerValue := 15286700631942576193765185769276826401
    upperValue := 15286700631942576193765185769276826401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 44 0)) },
  { key := { q := 7, n := 44, r := 1 }
    lowerValue := 57685662762047457334962965167082364
    upperValue := 1114191008159079897504751149364200175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 1))
    upperTrace := (.lengthenFreeN 41 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 44, r := 2 }
    lowerValue := 445403707116417825639264175556564
    upperValue := 44567640326363195900190045974568007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 2))
    upperTrace := (.lengthenFreeN 37 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))) },
  { key := { q := 7, n := 44, r := 3 }
    lowerValue := 5280334585001019401823882615618
    upperValue := 3248370286178075502929303642461225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 3))
    upperTrace := (.lengthenFreeN 35 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))) },
  { key := { q := 7, n := 44, r := 4 }
    lowerValue := 85482548549692954919401081719
    upperValue := 464052898025439357561329091780175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 4))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 44, r := 5 }
    lowerValue := 1772653370427815774646377404
    upperValue := 66293271146491336794475584540025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 5))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 44, r := 6 }
    lowerValue := 45230838265040922256226082
    upperValue := 9470467306641619542067940648575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 6))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 44, r := 7 }
    lowerValue := 1381501813711741181925673
    upperValue := 1352923900948802791723991521225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 7))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 44, r := 8 }
    lowerValue := 49511896377064791607873
    upperValue := 193274842992686113103427360175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 8))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 5 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 44, r := 9 }
    lowerValue := 2051043261362479124816
    upperValue := 27610691856098016157632480025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 9))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 6 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 44, r := 10 }
    lowerValue := 97067511340101094036
    upperValue := 3944384550871145165376068575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 10))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 7 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 44, r := 11 }
    lowerValue := 5199736842217076324
    upperValue := 563483507267306452196581225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 11))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 8 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n9_r3_product" (primitiveUpper_valid 7 9 3))))) },
  { key := { q := 7, n := 44, r := 12 }
    lowerValue := 312933201999201037
    upperValue := 22539340290692258087863249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 12))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 44, r := 13 }
    lowerValue := 21029918053469300
    upperValue := 3219905755813179726837607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 13))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 44, r := 14 }
    lowerValue := 1570231198027748
    upperValue := 459986536544739960976801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 14))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 44, r := 15 }
    lowerValue := 129728271595892
    upperValue := 65712362363534280139543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 15))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 44, r := 16 }
    lowerValue := 11818688718487
    upperValue := 9387480337647754305649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 16))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 44, r := 17 }
    lowerValue := 1183995703665
    upperValue := 1341068619663964900807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 17))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 44, r := 18 }
    lowerValue := 130132578650
    upperValue := 27368747340080916343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 18))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18))) },
  { key := { q := 7, n := 44, r := 19 }
    lowerValue := 15663319047
    upperValue := 3909821048582988049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 19))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 19))) },
  { key := { q := 7, n := 44, r := 20 }
    lowerValue := 2061704265
    upperValue := 558545864083284007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 20))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 20))) },
  { key := { q := 7, n := 44, r := 21 }
    lowerValue := 296453473
    upperValue := 79792266297612001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 21))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 21))) },
  { key := { q := 7, n := 44, r := 22 }
    lowerValue := 46533391
    upperValue := 11398895185373143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 22))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 26 22))) },
  { key := { q := 7, n := 44, r := 23 }
    lowerValue := 7970399
    upperValue := 1628413597910449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 23))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 27 23))) },
  { key := { q := 7, n := 44, r := 24 }
    lowerValue := 1489582
    upperValue := 33232930569601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 24))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 29 24))) },
  { key := { q := 7, n := 44, r := 25 }
    lowerValue := 303815
    upperValue := 4747561509943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 25))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 30 25))) },
  { key := { q := 7, n := 44, r := 26 }
    lowerValue := 67660
    upperValue := 678223072849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 26))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 31 26))) },
  { key := { q := 7, n := 44, r := 27 }
    lowerValue := 16466
    upperValue := 96889010407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 27))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 32 27))) },
  { key := { q := 7, n := 44, r := 28 }
    lowerValue := 4384
    upperValue := 13841287201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 28))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 33 28))) },
  { key := { q := 7, n := 44, r := 29 }
    lowerValue := 1279
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 29))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 34 29))) },
  { key := { q := 7, n := 44, r := 30 }
    lowerValue := 410
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 30))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 36 30))) },
  { key := { q := 7, n := 44, r := 31 }
    lowerValue := 144
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 31))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 37 31))) },
  { key := { q := 7, n := 44, r := 32 }
    lowerValue := 56
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 32))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 38 32))) },
  { key := { q := 7, n := 44, r := 33 }
    lowerValue := 24
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 33))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 39 33))) },
  { key := { q := 7, n := 44, r := 34 }
    lowerValue := 12
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 34))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 40 34))) },
  { key := { q := 7, n := 44, r := 35 }
    lowerValue := 7
    upperValue := 2401
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 37 36))))))))))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 41 35))) },
  { key := { q := 7, n := 44, r := 36 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 38 37)))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 43 36))) }]

end CoveringCodes.Database
