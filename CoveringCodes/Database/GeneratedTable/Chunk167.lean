import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 167. Do not edit manually.

def precomputedTable_chunk_167 : Array AnyBoundEntry := #[
  { key := { q := 17, n := 19, r := 2 }
    lowerValue := 5423480313176908983
    upperValue := 415051342468923289985
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 2))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 19, r := 3 }
    lowerValue := 59572933099221507
    upperValue := 24414784851113134705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 3))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 19, r := 4 }
    lowerValue := 926527309929643
    upperValue := 1436163814771360865
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 4))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 19, r := 5 }
    lowerValue := 19201259847494
    upperValue := 84480224398315345
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 5))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 19, r := 6 }
    lowerValue := 511220536542
    upperValue := 4969424964606785
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 6))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 19, r := 7 }
    lowerValue := 17084441802
    upperValue := 292319115565105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 7))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 19, r := 8 }
    lowerValue := 706028602
    upperValue := 17195242092065
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 8))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 19, r := 9 }
    lowerValue := 35752980
    upperValue := 1011484828945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 9))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 19, r := 10 }
    lowerValue := 2208369
    upperValue := 59499107585
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 10))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 19, r := 11 }
    lowerValue := 166264
    upperValue := 3499947505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 11))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 19, r := 12 }
    lowerValue := 15305
    upperValue := 205879265
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 12))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 19, r := 13 }
    lowerValue := 1735
    upperValue := 12110545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 13))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 19, r := 14 }
    lowerValue := 246
    upperValue := 712385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 14))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 19, r := 15 }
    lowerValue := 44
    upperValue := 41905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 15))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 19, r := 16 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 18 17))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 19, r := 17 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 19 18)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17)) },
  { key := { q := 17, n := 19, r := 18 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 19 18))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 18)) },
  { key := { q := 17, n := 19, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 19)) },
  { key := { q := 17, n := 19, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 20)) },
  { key := { q := 17, n := 19, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 21)) },
  { key := { q := 17, n := 19, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 22)) },
  { key := { q := 17, n := 19, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 23)) },
  { key := { q := 17, n := 19, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 24)) },
  { key := { q := 17, n := 19, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 25)) },
  { key := { q := 17, n := 19, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 26)) },
  { key := { q := 17, n := 19, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 27)) },
  { key := { q := 17, n := 19, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 28)) },
  { key := { q := 17, n := 19, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 29)) },
  { key := { q := 17, n := 19, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 30)) },
  { key := { q := 17, n := 19, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 31)) },
  { key := { q := 17, n := 19, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 32)) },
  { key := { q := 17, n := 19, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 33)) },
  { key := { q := 17, n := 19, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 34)) },
  { key := { q := 17, n := 19, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 35)) },
  { key := { q := 17, n := 19, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 36)) },
  { key := { q := 17, n := 19, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 37)) },
  { key := { q := 17, n := 19, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 38)) },
  { key := { q := 17, n := 19, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 39)) },
  { key := { q := 17, n := 19, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 40)) },
  { key := { q := 17, n := 19, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 41)) },
  { key := { q := 17, n := 19, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 42)) },
  { key := { q := 17, n := 19, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 43)) },
  { key := { q := 17, n := 19, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 44)) },
  { key := { q := 17, n := 19, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 45)) },
  { key := { q := 17, n := 19, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 46)) },
  { key := { q := 17, n := 19, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 47)) },
  { key := { q := 17, n := 19, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 19 48)) },
  { key := { q := 17, n := 20, r := 0 }
    lowerValue := 4064231406647572522401601
    upperValue := 4064231406647572522401601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 20 0)) },
  { key := { q := 17, n := 20, r := 1 }
    lowerValue := 12661157030054743060442
    upperValue := 119949837973518830805665
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 1))
    upperTrace := (.lengthenFreeN 17 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 20, r := 2 }
    lowerValue := 83009566933836574466
    upperValue := 7055872821971695929745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 2))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 20, r := 3 }
    lowerValue := 861357779181458406
    upperValue := 415051342468923289985
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 3))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 20, r := 4 }
    lowerValue := 12612423529231690
    upperValue := 24414784851113134705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 4))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 20, r := 5 }
    lowerValue := 245137976566067
    upperValue := 1436163814771360865
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 5))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 20, r := 6 }
    lowerValue := 6094540796700
    upperValue := 84480224398315345
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 6))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 20, r := 7 }
    lowerValue := 189245438603
    upperValue := 4969424964606785
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 7))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 20, r := 8 }
    lowerValue := 7225133156
    upperValue := 292319115565105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 8))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 20, r := 9 }
    lowerValue := 335758242
    upperValue := 17195242092065
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 9))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 20, r := 10 }
    lowerValue := 18881798
    upperValue := 1011484828945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 10))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 20, r := 11 }
    lowerValue := 1282080
    upperValue := 59499107585
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 11))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 20, r := 12 }
    lowerValue := 105217
    upperValue := 3499947505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 12))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 20, r := 13 }
    lowerValue := 10482
    upperValue := 205879265
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 13))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 20, r := 14 }
    lowerValue := 1278
    upperValue := 12110545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 14))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 20, r := 15 }
    lowerValue := 194
    upperValue := 712385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 15))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 20, r := 16 }
    lowerValue := 37
    upperValue := 4913
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 16))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 20, r := 17 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 19 18))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 20, r := 18 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 20 19)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18)) },
  { key := { q := 17, n := 20, r := 19 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 20 19))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 19)) },
  { key := { q := 17, n := 20, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 20)) },
  { key := { q := 17, n := 20, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 21)) },
  { key := { q := 17, n := 20, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 22)) },
  { key := { q := 17, n := 20, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 23)) },
  { key := { q := 17, n := 20, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 24)) },
  { key := { q := 17, n := 20, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 25)) },
  { key := { q := 17, n := 20, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 26)) },
  { key := { q := 17, n := 20, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 27)) },
  { key := { q := 17, n := 20, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 28)) },
  { key := { q := 17, n := 20, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 29)) },
  { key := { q := 17, n := 20, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 30)) },
  { key := { q := 17, n := 20, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 31)) },
  { key := { q := 17, n := 20, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 32)) },
  { key := { q := 17, n := 20, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 33)) },
  { key := { q := 17, n := 20, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 34)) },
  { key := { q := 17, n := 20, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 35)) },
  { key := { q := 17, n := 20, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 36)) },
  { key := { q := 17, n := 20, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 37)) },
  { key := { q := 17, n := 20, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 38)) },
  { key := { q := 17, n := 20, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 39)) },
  { key := { q := 17, n := 20, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 40)) },
  { key := { q := 17, n := 20, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 41)) },
  { key := { q := 17, n := 20, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 42)) },
  { key := { q := 17, n := 20, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 43)) },
  { key := { q := 17, n := 20, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 44)) },
  { key := { q := 17, n := 20, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 45)) },
  { key := { q := 17, n := 20, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 46)) },
  { key := { q := 17, n := 20, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 47)) },
  { key := { q := 17, n := 20, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 20 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 20 48)) },
  { key := { q := 17, n := 21, r := 0 }
    lowerValue := 69091933913008732880827217
    upperValue := 69091933913008732880827217
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 21 0)) },
  { key := { q := 17, n := 21, r := 1 }
    lowerValue := 205020575409521462554384
    upperValue := 2039147245549820123696305
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 1))
    upperTrace := (.lengthenFreeN 18 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 21, r := 2 }
    lowerValue := 1277186053071496254522
    upperValue := 119949837973518830805665
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 2))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 21, r := 3 }
    lowerValue := 12558112390416538672
    upperValue := 7055872821971695929745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 3))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 21, r := 4 }
    lowerValue := 173713602272080985
    upperValue := 415051342468923289985
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 4))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 21, r := 5 }
    lowerValue := 3178802552648337
    upperValue := 24414784851113134705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 5))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 21, r := 6 }
    lowerValue := 74122314714380
    upperValue := 1436163814771360865
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 6))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 21, r := 7 }
    lowerValue := 2149329455978
    upperValue := 84480224398315345
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 7))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 21, r := 8 }
    lowerValue := 76249580896
    upperValue := 4969424964606785
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 8))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 21, r := 9 }
    lowerValue := 3273747595
    upperValue := 292319115565105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 9))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 21, r := 10 }
    lowerValue := 168961905
    upperValue := 17195242092065
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 10))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 21, r := 11 }
    lowerValue := 10446371
    upperValue := 1011484828945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 11))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 21, r := 12 }
    lowerValue := 773292
    upperValue := 59499107585
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 12))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 21, r := 13 }
    lowerValue := 68695
    upperValue := 3499947505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 13))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 21, r := 14 }
    lowerValue := 7363
    upperValue := 205879265
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 14))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 21, r := 15 }
    lowerValue := 961
    upperValue := 12110545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 15))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 21, r := 16 }
    lowerValue := 155
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 16))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 21, r := 17 }
    lowerValue := 32
    upperValue := 4913
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 17))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 21, r := 18 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 20 19))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 21, r := 19 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 21 20)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19)) },
  { key := { q := 17, n := 21, r := 20 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 21 20))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 20)) },
  { key := { q := 17, n := 21, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 21)) },
  { key := { q := 17, n := 21, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 22)) },
  { key := { q := 17, n := 21, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 23)) },
  { key := { q := 17, n := 21, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 24)) },
  { key := { q := 17, n := 21, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 25)) },
  { key := { q := 17, n := 21, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 26)) },
  { key := { q := 17, n := 21, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 27)) },
  { key := { q := 17, n := 21, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 28)) },
  { key := { q := 17, n := 21, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 29)) },
  { key := { q := 17, n := 21, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 30)) },
  { key := { q := 17, n := 21, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 31)) },
  { key := { q := 17, n := 21, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 32)) },
  { key := { q := 17, n := 21, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 33)) },
  { key := { q := 17, n := 21, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 34)) },
  { key := { q := 17, n := 21, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 35)) },
  { key := { q := 17, n := 21, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 36)) },
  { key := { q := 17, n := 21, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 37)) },
  { key := { q := 17, n := 21, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 38)) },
  { key := { q := 17, n := 21, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 39)) },
  { key := { q := 17, n := 21, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 40)) },
  { key := { q := 17, n := 21, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 41)) },
  { key := { q := 17, n := 21, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 42)) },
  { key := { q := 17, n := 21, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 43)) },
  { key := { q := 17, n := 21, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 44)) },
  { key := { q := 17, n := 21, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 45)) },
  { key := { q := 17, n := 21, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 46)) },
  { key := { q := 17, n := 21, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 47)) },
  { key := { q := 17, n := 21, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 21 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 21 48)) },
  { key := { q := 17, n := 22, r := 0 }
    lowerValue := 1174562876521148458974062689
    upperValue := 1174562876521148458974062689
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 22 0)) },
  { key := { q := 17, n := 22, r := 1 }
    lowerValue := 3327373587878607532504427
    upperValue := 34665503174346942102837185
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 1))
    upperTrace := (.lengthenFreeN 19 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 22, r := 2 }
    lowerValue := 19744202735314906267950
    upperValue := 2039147245549820123696305
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 2))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 22, r := 3 }
    lowerValue := 184467125308139167770
    upperValue := 119949837973518830805665
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 3))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 22, r := 4 }
    lowerValue := 2417974337039843503
    upperValue := 7055872821971695929745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 4))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 22, r := 5 }
    lowerValue := 41800932418937768
    upperValue := 415051342468923289985
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 5))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 22, r := 6 }
    lowerValue := 917700820388615
    upperValue := 24414784851113134705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 6))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 22, r := 7 }
    lowerValue := 24958861663717
    upperValue := 1436163814771360865
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 7))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 22, r := 8 }
    lowerValue := 826888131618
    upperValue := 84480224398315345
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 8))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 22, r := 9 }
    lowerValue := 32990648300
    upperValue := 4969424964606785
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 9))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 22, r := 10 }
    lowerValue := 1573220594
    upperValue := 292319115565105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 10))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 22, r := 11 }
    lowerValue := 89274962
    upperValue := 17195242092065
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 11))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 22, r := 12 }
    lowerValue := 6018111
    upperValue := 1011484828945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 12))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 22, r := 13 }
    lowerValue := 482297
    upperValue := 59499107585
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 13))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 22, r := 14 }
    lowerValue := 46103
    upperValue := 3499947505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 14))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 22, r := 15 }
    lowerValue := 5289
    upperValue := 205879265
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 15))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 22, r := 16 }
    lowerValue := 735
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 16))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 22, r := 17 }
    lowerValue := 126
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 17))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 22, r := 18 }
    lowerValue := 27
    upperValue := 4913
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 18))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 22, r := 19 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 21 20))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 22, r := 20 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 22 21)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20)) },
  { key := { q := 17, n := 22, r := 21 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 22 21))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 21)) },
  { key := { q := 17, n := 22, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 22)) },
  { key := { q := 17, n := 22, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 23)) },
  { key := { q := 17, n := 22, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 24)) },
  { key := { q := 17, n := 22, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 25)) },
  { key := { q := 17, n := 22, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 26)) },
  { key := { q := 17, n := 22, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 27)) },
  { key := { q := 17, n := 22, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 28)) },
  { key := { q := 17, n := 22, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 29)) },
  { key := { q := 17, n := 22, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 30)) },
  { key := { q := 17, n := 22, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 31)) },
  { key := { q := 17, n := 22, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 32)) },
  { key := { q := 17, n := 22, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 33)) },
  { key := { q := 17, n := 22, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 34)) },
  { key := { q := 17, n := 22, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 35)) },
  { key := { q := 17, n := 22, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 36)) },
  { key := { q := 17, n := 22, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 37)) },
  { key := { q := 17, n := 22, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 38)) },
  { key := { q := 17, n := 22, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 39)) },
  { key := { q := 17, n := 22, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 40)) },
  { key := { q := 17, n := 22, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 41)) },
  { key := { q := 17, n := 22, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 42)) },
  { key := { q := 17, n := 22, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 43)) },
  { key := { q := 17, n := 22, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 44)) },
  { key := { q := 17, n := 22, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 45)) },
  { key := { q := 17, n := 22, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 46)) },
  { key := { q := 17, n := 22, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 47)) },
  { key := { q := 17, n := 22, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 22 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 22 48)) },
  { key := { q := 17, n := 23, r := 0 }
    lowerValue := 19967568900859523802559065713
    upperValue := 19967568900859523802559065713
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 23 0)) },
  { key := { q := 17, n := 23, r := 1 }
    lowerValue := 54112652847857788082815897
    upperValue := 589313553963898015748232145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 1))
    upperTrace := (.lengthenFreeN 20 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 23, r := 2 }
    lowerValue := 306547260402835927392405
    upperValue := 34665503174346942102837185
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 2))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 23, r := 3 }
    lowerValue := 2728125631594191814622
    upperValue := 2039147245549820123696305
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 3))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 23, r := 4 }
    lowerValue := 33979229099199039973
    upperValue := 119949837973518830805665
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 4))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 23, r := 5 }
    lowerValue := 556646647745661610
    upperValue := 7055872821971695929745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 5))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 23, r := 6 }
    lowerValue := 11545412314583384
    upperValue := 415051342468923289985
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 6))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 23, r := 7 }
    lowerValue := 295648030632394
    upperValue := 24414784851113134705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 7))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 23, r := 8 }
    lowerValue := 9187161511016
    upperValue := 1436163814771360865
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 8))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 23, r := 9 }
    lowerValue := 342319039841
    upperValue := 84480224398315345
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 9))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 23, r := 10 }
    lowerValue := 15170110157
    upperValue := 4969424964606785
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 10))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 23, r := 11 }
    lowerValue := 795449309
    upperValue := 292319115565105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 11))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 23, r := 12 }
    lowerValue := 49220196
    upperValue := 17195242092065
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 12))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 23, r := 13 }
    lowerValue := 3592522
    upperValue := 1011484828945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 13))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 23, r := 14 }
    lowerValue := 309850
    upperValue := 59499107585
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 14))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 23, r := 15 }
    lowerValue := 31708
    upperValue := 3499947505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 15))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 23, r := 16 }
    lowerValue := 3876
    upperValue := 24137569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 16))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 23, r := 17 }
    lowerValue := 572
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 17))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 23, r := 18 }
    lowerValue := 104
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 18))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 23, r := 19 }
    lowerValue := 24
    upperValue := 4913
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 19))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 23, r := 20 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 22 21))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20))) },
  { key := { q := 17, n := 23, r := 21 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 23 22)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 21)) },
  { key := { q := 17, n := 23, r := 22 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 23 22))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 22)) },
  { key := { q := 17, n := 23, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 23 23)) },
  { key := { q := 17, n := 23, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 23 24)) },
  { key := { q := 17, n := 23, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 23 25)) },
  { key := { q := 17, n := 23, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 23 26)) },
  { key := { q := 17, n := 23, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 23 27)) },
  { key := { q := 17, n := 23, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 23 28)) },
  { key := { q := 17, n := 23, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 23 29)) },
  { key := { q := 17, n := 23, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 23 30)) },
  { key := { q := 17, n := 23, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 23 31)) },
  { key := { q := 17, n := 23, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 23 32)) },
  { key := { q := 17, n := 23, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 23 33)) },
  { key := { q := 17, n := 23, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 23 34)) },
  { key := { q := 17, n := 23, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 23 35)) },
  { key := { q := 17, n := 23, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 23 36)) },
  { key := { q := 17, n := 23, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 23 37)) },
  { key := { q := 17, n := 23, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 23 38)) },
  { key := { q := 17, n := 23, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 23 39)) },
  { key := { q := 17, n := 23, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 23 40)) },
  { key := { q := 17, n := 23, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 23 41)) },
  { key := { q := 17, n := 23, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 23 42)) },
  { key := { q := 17, n := 23, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 23 43)) },
  { key := { q := 17, n := 23, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 23 44)) },
  { key := { q := 17, n := 23, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 23 45)) },
  { key := { q := 17, n := 23, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 23 46)) },
  { key := { q := 17, n := 23, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 23 47)) },
  { key := { q := 17, n := 23, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 23 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 23 48)) },
  { key := { q := 17, n := 24, r := 0 }
    lowerValue := 339448671314611904643504117121
    upperValue := 339448671314611904643504117121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 24 0)) },
  { key := { q := 17, n := 24, r := 1 }
    lowerValue := 881684860557433518554556149
    upperValue := 10018330417386266267719946465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 1))
    upperTrace := (.lengthenFreeN 21 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 24, r := 2 }
    lowerValue := 4778207954767133129369014
    upperValue := 589313553963898015748232145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 2))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 24, r := 3 }
    lowerValue := 40597376536264429304557
    upperValue := 34665503174346942102837185
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 3))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 24, r := 4 }
    lowerValue := 481660409525972637322
    upperValue := 2039147245549820123696305
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 4))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 24, r := 5 }
    lowerValue := 7497747296974281107
    upperValue := 119949837973518830805665
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 5))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 24, r := 6 }
    lowerValue := 147367276630534790
    upperValue := 7055872821971695929745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 6))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) }]

end CoveringCodes.Database
