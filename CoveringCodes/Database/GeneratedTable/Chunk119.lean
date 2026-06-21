import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 119. Do not edit manually.

def precomputedTable_chunk_119 : Array AnyBoundEntry := #[
  { key := { q := 12, n := 19, r := 7 }
    lowerValue := 309598746
    upperValue := 3962711310336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 7))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 19, r := 8 }
    lowerValue := 18538216
    upperValue := 330225942528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 8))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 6 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 19, r := 9 }
    lowerValue := 1359166
    upperValue := 27518828544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 9))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 7 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 19, r := 10 }
    lowerValue := 121425
    upperValue := 2293235712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 10))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 8 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 19, r := 11 }
    lowerValue := 13205
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 11))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 19, r := 12 }
    lowerValue := 1753
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 12))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 19, r := 13 }
    lowerValue := 286
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 13))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 19, r := 14 }
    lowerValue := 58
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 14))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 19, r := 15 }
    lowerValue := 15
    upperValue := 1728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 15))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 19, r := 16 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 18 17))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 19, r := 17 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 19 18)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17)) },
  { key := { q := 12, n := 19, r := 18 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 19 18))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 18)) },
  { key := { q := 12, n := 19, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 19)) },
  { key := { q := 12, n := 19, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 20)) },
  { key := { q := 12, n := 19, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 21)) },
  { key := { q := 12, n := 19, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 22)) },
  { key := { q := 12, n := 19, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 23)) },
  { key := { q := 12, n := 19, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 24)) },
  { key := { q := 12, n := 19, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 25)) },
  { key := { q := 12, n := 19, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 26)) },
  { key := { q := 12, n := 19, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 27)) },
  { key := { q := 12, n := 19, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 28)) },
  { key := { q := 12, n := 19, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 29)) },
  { key := { q := 12, n := 19, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 30)) },
  { key := { q := 12, n := 19, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 31)) },
  { key := { q := 12, n := 19, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 32)) },
  { key := { q := 12, n := 19, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 33)) },
  { key := { q := 12, n := 19, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 34)) },
  { key := { q := 12, n := 19, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 35)) },
  { key := { q := 12, n := 19, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 36)) },
  { key := { q := 12, n := 19, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 37)) },
  { key := { q := 12, n := 19, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 38)) },
  { key := { q := 12, n := 19, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 39)) },
  { key := { q := 12, n := 19, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 40)) },
  { key := { q := 12, n := 19, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 41)) },
  { key := { q := 12, n := 19, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 42)) },
  { key := { q := 12, n := 19, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 43)) },
  { key := { q := 12, n := 19, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 44)) },
  { key := { q := 12, n := 19, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 45)) },
  { key := { q := 12, n := 19, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 46)) },
  { key := { q := 12, n := 19, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 47)) },
  { key := { q := 12, n := 19, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 19 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 19 48)) },
  { key := { q := 12, n := 20, r := 0 }
    lowerValue := 3833759992447475122176
    upperValue := 3833759992447475122176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 20 0)) },
  { key := { q := 12, n := 20, r := 1 }
    lowerValue := 17347330282567760734
    upperValue := 159739999685311463424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 1))
    upperTrace := (.lengthenFreeN 17 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 20, r := 2 }
    lowerValue := 165169962192386159
    upperValue := 11832592569282330624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 2))
    upperTrace := (.lengthenFreeN 11 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 12, n := 20, r := 3 }
    lowerValue := 2488564151688244
    upperValue := 986049380773527552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 3))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 20, r := 4 }
    lowerValue := 52896815837955
    upperValue := 82170781731127296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 4))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 20, r := 5 }
    lowerValue := 1492077422279
    upperValue := 6847565144260608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 5))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 20, r := 6 }
    lowerValue := 53818400918
    upperValue := 570630428688384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 6))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 20, r := 7 }
    lowerValue := 2423545725
    upperValue := 47552535724032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 7))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 20, r := 8 }
    lowerValue := 134119448
    upperValue := 3962711310336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 8))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 6 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 20, r := 9 }
    lowerValue := 9028567
    upperValue := 330225942528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 9))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 7 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 20, r := 10 }
    lowerValue := 734899
    upperValue := 27518828544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 10))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 8 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 20, r := 11 }
    lowerValue := 72148
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 11))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 20, r := 12 }
    lowerValue := 8549
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 12))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 20, r := 13 }
    lowerValue := 1227
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 13))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 20, r := 14 }
    lowerValue := 215
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 14))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 20, r := 15 }
    lowerValue := 47
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 15))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 20, r := 16 }
    lowerValue := 13
    upperValue := 1728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 16))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 20, r := 17 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 19 18))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 20, r := 18 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 20 19)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18)) },
  { key := { q := 12, n := 20, r := 19 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 20 19))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 19)) },
  { key := { q := 12, n := 20, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 20)) },
  { key := { q := 12, n := 20, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 21)) },
  { key := { q := 12, n := 20, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 22)) },
  { key := { q := 12, n := 20, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 23)) },
  { key := { q := 12, n := 20, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 24)) },
  { key := { q := 12, n := 20, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 25)) },
  { key := { q := 12, n := 20, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 26)) },
  { key := { q := 12, n := 20, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 27)) },
  { key := { q := 12, n := 20, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 28)) },
  { key := { q := 12, n := 20, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 29)) },
  { key := { q := 12, n := 20, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 30)) },
  { key := { q := 12, n := 20, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 31)) },
  { key := { q := 12, n := 20, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 32)) },
  { key := { q := 12, n := 20, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 33)) },
  { key := { q := 12, n := 20, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 34)) },
  { key := { q := 12, n := 20, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 35)) },
  { key := { q := 12, n := 20, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 36)) },
  { key := { q := 12, n := 20, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 37)) },
  { key := { q := 12, n := 20, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 38)) },
  { key := { q := 12, n := 20, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 39)) },
  { key := { q := 12, n := 20, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 40)) },
  { key := { q := 12, n := 20, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 41)) },
  { key := { q := 12, n := 20, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 42)) },
  { key := { q := 12, n := 20, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 43)) },
  { key := { q := 12, n := 20, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 44)) },
  { key := { q := 12, n := 20, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 45)) },
  { key := { q := 12, n := 20, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 46)) },
  { key := { q := 12, n := 20, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 47)) },
  { key := { q := 12, n := 20, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 20 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 20 48)) },
  { key := { q := 12, n := 21, r := 0 }
    lowerValue := 46005119909369701466112
    upperValue := 46005119909369701466112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 21 0)) },
  { key := { q := 12, n := 21, r := 1 }
    lowerValue := 198297930643834920113
    upperValue := 1916879996223737561088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 1))
    upperTrace := (.lengthenFreeN 18 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 21, r := 2 }
    lowerValue := 1794131499468438557
    upperValue := 141991110831387967488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 2))
    upperTrace := (.lengthenFreeN 12 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 12, n := 21, r := 3 }
    lowerValue := 25617148610463164
    upperValue := 11832592569282330624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 3))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 21, r := 4 }
    lowerValue := 514470574248308
    upperValue := 986049380773527552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 4))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 21, r := 5 }
    lowerValue := 13664958581704
    upperValue := 82170781731127296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 5))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 21, r := 6 }
    lowerValue := 462369356479
    upperValue := 6847565144260608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 6))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 21, r := 7 }
    lowerValue := 19448642599
    upperValue := 570630428688384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 7))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 21, r := 8 }
    lowerValue := 1000429797
    upperValue := 47552535724032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 8))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 6 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 21, r := 9 }
    lowerValue := 62248413
    upperValue := 3962711310336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 9))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 7 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 21, r := 10 }
    lowerValue := 4652809
    upperValue := 330225942528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 10))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 8 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 21, r := 11 }
    lowerValue := 416255
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 11))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 21, r := 12 }
    lowerValue := 44536
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 12))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 21, r := 13 }
    lowerValue := 5710
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 13))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 21, r := 14 }
    lowerValue := 882
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 14))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 21, r := 15 }
    lowerValue := 165
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 15))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 21, r := 16 }
    lowerValue := 38
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 16))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 21, r := 17 }
    lowerValue := 12
    upperValue := 1728
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 19 18)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 21, r := 18 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 20 19))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 21, r := 19 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 21 20)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19)) },
  { key := { q := 12, n := 21, r := 20 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 21 20))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 20)) },
  { key := { q := 12, n := 21, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 21)) },
  { key := { q := 12, n := 21, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 22)) },
  { key := { q := 12, n := 21, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 23)) },
  { key := { q := 12, n := 21, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 24)) },
  { key := { q := 12, n := 21, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 25)) },
  { key := { q := 12, n := 21, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 26)) },
  { key := { q := 12, n := 21, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 27)) },
  { key := { q := 12, n := 21, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 28)) },
  { key := { q := 12, n := 21, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 29)) },
  { key := { q := 12, n := 21, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 30)) },
  { key := { q := 12, n := 21, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 31)) },
  { key := { q := 12, n := 21, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 32)) },
  { key := { q := 12, n := 21, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 33)) },
  { key := { q := 12, n := 21, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 34)) },
  { key := { q := 12, n := 21, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 35)) },
  { key := { q := 12, n := 21, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 36)) },
  { key := { q := 12, n := 21, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 37)) },
  { key := { q := 12, n := 21, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 38)) },
  { key := { q := 12, n := 21, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 39)) },
  { key := { q := 12, n := 21, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 40)) },
  { key := { q := 12, n := 21, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 41)) },
  { key := { q := 12, n := 21, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 42)) },
  { key := { q := 12, n := 21, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 43)) },
  { key := { q := 12, n := 21, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 44)) },
  { key := { q := 12, n := 21, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 45)) },
  { key := { q := 12, n := 21, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 46)) },
  { key := { q := 12, n := 21, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 47)) },
  { key := { q := 12, n := 21, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 21 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 21 48)) },
  { key := { q := 12, n := 22, r := 0 }
    lowerValue := 552061438912436417593344
    upperValue := 552061438912436417593344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 22 0)) },
  { key := { q := 12, n := 22, r := 1 }
    lowerValue := 2271857773302207479808
    upperValue := 23002559954684850733056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 1))
    upperTrace := (.lengthenFreeN 19 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 22, r := 2 }
    lowerValue := 19580812900348883366
    upperValue := 1703893329976655609856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 2))
    upperTrace := (.lengthenFreeN 13 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 12, n := 22, r := 3 }
    lowerValue := 265678043148837460
    upperValue := 141991110831387967488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 3))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 22, r := 4 }
    lowerValue := 5056579705029191
    upperValue := 11832592569282330624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 4))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 22, r := 5 }
    lowerValue := 126902102193549
    upperValue := 986049380773527552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 5))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 22, r := 6 }
    lowerValue := 4043464899055
    upperValue := 82170781731127296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 6))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 22, r := 7 }
    lowerValue := 159557548870
    upperValue := 6847565144260608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 7))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 22, r := 8 }
    lowerValue := 7666935249
    upperValue := 570630428688384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 8))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 6 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 22, r := 9 }
    lowerValue := 443459947
    upperValue := 47552535724032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 9))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 7 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 22, r := 10 }
    lowerValue := 30640754
    upperValue := 3962711310336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 10))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 8 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 22, r := 11 }
    lowerValue := 2517550
    upperValue := 61917364224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 11))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 22, r := 12 }
    lowerValue := 245499
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 12))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 22, r := 13 }
    lowerValue := 28426
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 13))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 22, r := 14 }
    lowerValue := 3920
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 14))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 22, r := 15 }
    lowerValue := 648
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 15))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 22, r := 16 }
    lowerValue := 129
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 16))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 22, r := 17 }
    lowerValue := 32
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 17))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 22, r := 18 }
    lowerValue := 12
    upperValue := 1728
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 20 19)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 22, r := 19 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 21 20))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 22, r := 20 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 22 21)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20)) },
  { key := { q := 12, n := 22, r := 21 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 22 21))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 21)) },
  { key := { q := 12, n := 22, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 22)) },
  { key := { q := 12, n := 22, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 23)) },
  { key := { q := 12, n := 22, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 24)) },
  { key := { q := 12, n := 22, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 25)) },
  { key := { q := 12, n := 22, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 26)) },
  { key := { q := 12, n := 22, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 27)) },
  { key := { q := 12, n := 22, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 28)) },
  { key := { q := 12, n := 22, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 29)) },
  { key := { q := 12, n := 22, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 30)) },
  { key := { q := 12, n := 22, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 31)) },
  { key := { q := 12, n := 22, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 32)) },
  { key := { q := 12, n := 22, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 33)) },
  { key := { q := 12, n := 22, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 34)) },
  { key := { q := 12, n := 22, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 35)) },
  { key := { q := 12, n := 22, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 36)) },
  { key := { q := 12, n := 22, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 37)) },
  { key := { q := 12, n := 22, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 38)) },
  { key := { q := 12, n := 22, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 39)) },
  { key := { q := 12, n := 22, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 40)) },
  { key := { q := 12, n := 22, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 41)) },
  { key := { q := 12, n := 22, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 42)) },
  { key := { q := 12, n := 22, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 43)) },
  { key := { q := 12, n := 22, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 44)) },
  { key := { q := 12, n := 22, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 45)) },
  { key := { q := 12, n := 22, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 46)) },
  { key := { q := 12, n := 22, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 47)) },
  { key := { q := 12, n := 22, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 22 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 22 48)) },
  { key := { q := 12, n := 23, r := 0 }
    lowerValue := 6624737266949237011120128
    upperValue := 6624737266949237011120128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 23 0)) },
  { key := { q := 12, n := 23, r := 1 }
    lowerValue := 26081642783264712642206
    upperValue := 276030719456218208796672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 1))
    upperTrace := (.lengthenFreeN 20 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 23, r := 2 }
    lowerValue := 214621999771576020058
    upperValue := 20446719959719867318272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 2))
    upperTrace := (.lengthenFreeN 14 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 12, n := 23, r := 3 }
    lowerValue := 2774099090540653370
    upperValue := 1703893329976655609856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 3))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 23, r := 4 }
    lowerValue := 50174433066437205
    upperValue := 141991110831387967488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 4))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 23, r := 5 }
    lowerValue := 1193379892672411
    upperValue := 11832592569282330624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 5))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 23, r := 6 }
    lowerValue := 35928828255435
    upperValue := 986049380773527552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 6))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 23, r := 7 }
    lowerValue := 1335147610407
    upperValue := 82170781731127296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 7))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 23, r := 8 }
    lowerValue := 60189338738
    upperValue := 6847565144260608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 8))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 6 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 23, r := 9 }
    lowerValue := 3252272755
    upperValue := 570630428688384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 9))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 7 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 23, r := 10 }
    lowerValue := 208909217
    upperValue := 47552535724032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 10))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 8 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 23, r := 11 }
    lowerValue := 15868596
    upperValue := 743008370688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 11))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 23, r := 12 }
    lowerValue := 1421351
    upperValue := 61917364224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 12))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 23, r := 13 }
    lowerValue := 150027
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 13))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 23, r := 14 }
    lowerValue := 18689
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 14))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 23, r := 15 }
    lowerValue := 2758
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 15))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 23, r := 16 }
    lowerValue := 485
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 16))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 23, r := 17 }
    lowerValue := 103
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 17))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 23, r := 18 }
    lowerValue := 27
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 18))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 23, r := 19 }
    lowerValue := 12
    upperValue := 1728
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 21 20)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 23, r := 20 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 22 21))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20))) },
  { key := { q := 12, n := 23, r := 21 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 23 22)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 21)) },
  { key := { q := 12, n := 23, r := 22 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 23 22))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 22)) },
  { key := { q := 12, n := 23, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 23 23)) },
  { key := { q := 12, n := 23, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 23 24)) },
  { key := { q := 12, n := 23, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 23 25)) },
  { key := { q := 12, n := 23, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 23 26)) },
  { key := { q := 12, n := 23, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 23 27)) },
  { key := { q := 12, n := 23, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 23 28)) },
  { key := { q := 12, n := 23, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 23 29)) },
  { key := { q := 12, n := 23, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 23 30)) },
  { key := { q := 12, n := 23, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 23 31)) },
  { key := { q := 12, n := 23, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 23 32)) },
  { key := { q := 12, n := 23, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 23 33)) },
  { key := { q := 12, n := 23, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 23 34)) },
  { key := { q := 12, n := 23, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 23 35)) },
  { key := { q := 12, n := 23, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 23 36)) },
  { key := { q := 12, n := 23, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 23 37)) },
  { key := { q := 12, n := 23, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 23 38)) },
  { key := { q := 12, n := 23, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 23 39)) },
  { key := { q := 12, n := 23, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 23 40)) },
  { key := { q := 12, n := 23, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 23 41)) },
  { key := { q := 12, n := 23, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 23 42)) },
  { key := { q := 12, n := 23, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 23 43)) },
  { key := { q := 12, n := 23, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 23 44)) },
  { key := { q := 12, n := 23, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 23 45)) },
  { key := { q := 12, n := 23, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 23 46)) },
  { key := { q := 12, n := 23, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 23 47)) },
  { key := { q := 12, n := 23, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 23 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 23 48)) },
  { key := { q := 12, n := 24, r := 0 }
    lowerValue := 79496847203390844133441536
    upperValue := 79496847203390844133441536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 24 0)) },
  { key := { q := 12, n := 24, r := 1 }
    lowerValue := 299988102654305072201667
    upperValue := 3312368633474618505560064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 1))
    upperTrace := (.lengthenFreeN 21 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 24, r := 2 }
    lowerValue := 2361690003368611869328
    upperValue := 245360639516638407819264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 2))
    upperTrace := (.lengthenFreeN 15 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 12, n := 24, r := 3 }
    lowerValue := 29145293106366517195
    upperValue := 20446719959719867318272
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 3))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 24, r := 4 }
    lowerValue := 502181967397109584
    upperValue := 1703893329976655609856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 4))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 24, r := 5 }
    lowerValue := 11350831253216251
    upperValue := 141991110831387967488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 5))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 24, r := 6 }
    lowerValue := 323883837977765
    upperValue := 11832592569282330624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 6))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 24, r := 7 }
    lowerValue := 11372880175440
    upperValue := 986049380773527552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 7))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 24, r := 8 }
    lowerValue := 482838560890
    upperValue := 82170781731127296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 8))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 6 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 24, r := 9 }
    lowerValue := 24478111157
    upperValue := 6847565144260608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 9))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 7 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 24, r := 10 }
    lowerValue := 1468964747
    upperValue := 570630428688384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 10))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 8 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 24, r := 11 }
    lowerValue := 103741614
    upperValue := 8916100448256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 11))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) }]

end CoveringCodes.Database
