import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 179. Do not edit manually.

def precomputedTable_chunk_179 : Array AnyBoundEntry := #[
  { key := { q := 18, n := 31, r := 13 }
    lowerValue := 385002102499661
    upperValue := 17487292477909572255744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 13))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 31, r := 14 }
    lowerValue := 17514488638996
    upperValue := 971516248772754014208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 14))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 31, r := 15 }
    lowerValue := 903265502115
    upperValue := 53973124931819667456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 15))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 31, r := 16 }
    lowerValue := 52750766079
    upperValue := 2998506940656648192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 16))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 31, r := 17 }
    lowerValue := 3487884793
    upperValue := 20822964865671168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 17))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 31, r := 18 }
    lowerValue := 261304555
    upperValue := 1156831381426176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 18))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 31, r := 19 }
    lowerValue := 22219460
    upperValue := 64268410079232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 19))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 31, r := 20 }
    lowerValue := 2150410
    upperValue := 3570467226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 20))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20))) },
  { key := { q := 18, n := 31, r := 21 }
    lowerValue := 237800
    upperValue := 198359290368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 21))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 21))) },
  { key := { q := 18, n := 31, r := 22 }
    lowerValue := 30206
    upperValue := 11019960576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 22))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 24 22))) },
  { key := { q := 18, n := 31, r := 23 }
    lowerValue := 4438
    upperValue := 612220032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 23))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 25 23))) },
  { key := { q := 18, n := 31, r := 24 }
    lowerValue := 761
    upperValue := 34012224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 24))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 26 24))) },
  { key := { q := 18, n := 31, r := 25 }
    lowerValue := 154
    upperValue := 1889568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 25))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 27 25))) },
  { key := { q := 18, n := 31, r := 26 }
    lowerValue := 38
    upperValue := 104976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 26))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 28 26))) },
  { key := { q := 18, n := 31, r := 27 }
    lowerValue := 18
    upperValue := 5832
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 29 28)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 29 27))) },
  { key := { q := 18, n := 31, r := 28 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 30 29))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 30 28))) },
  { key := { q := 18, n := 31, r := 29 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 31 30)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 31 29)) },
  { key := { q := 18, n := 31, r := 30 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 31 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 31 30)) },
  { key := { q := 18, n := 31, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 31 31)) },
  { key := { q := 18, n := 31, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 31 32)) },
  { key := { q := 18, n := 31, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 31 33)) },
  { key := { q := 18, n := 31, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 31 34)) },
  { key := { q := 18, n := 31, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 31 35)) },
  { key := { q := 18, n := 31, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 31 36)) },
  { key := { q := 18, n := 31, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 31 37)) },
  { key := { q := 18, n := 31, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 31 38)) },
  { key := { q := 18, n := 31, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 31 39)) },
  { key := { q := 18, n := 31, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 31 40)) },
  { key := { q := 18, n := 31, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 31 41)) },
  { key := { q := 18, n := 31, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 31 42)) },
  { key := { q := 18, n := 31, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 31 43)) },
  { key := { q := 18, n := 31, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 31 44)) },
  { key := { q := 18, n := 31, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 31 45)) },
  { key := { q := 18, n := 31, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 31 46)) },
  { key := { q := 18, n := 31, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 31 47)) },
  { key := { q := 18, n := 31, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 31 48)) },
  { key := { q := 18, n := 32, r := 0 }
    lowerValue := 14747559712960682275277163588165279154176
    upperValue := 14747559712960682275277163588165279154176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 32 0)) },
  { key := { q := 18, n := 32, r := 1 }
    lowerValue := 27059742592588407844545254290211521384
    upperValue := 409654436471130063202143433004591087616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 1))
    upperTrace := (.lengthenFreeN 29 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 32, r := 2 }
    lowerValue := 102492613840951582645491758148053564
    upperValue := 20229848714623706824797206568127954944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 2))
    upperTrace := (.lengthenFreeN 23 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 18, n := 32, r := 3 }
    lowerValue := 601637471798857233067810116115880
    upperValue := 1123880484145761490266511476007108608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 3))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 32, r := 4 }
    lowerValue := 4870512775393668371802422880302
    upperValue := 62437804674764527237028415333728256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 4))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 32, r := 5 }
    lowerValue := 51037909702357642502070829999
    upperValue := 3468766926375807068723800851873792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 5))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 32, r := 6 }
    lowerValue := 665436783878617900032683985
    upperValue := 192709273687544837151322269548544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 6))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 32, r := 7 }
    lowerValue := 10509176251972037069285407
    upperValue := 10706070760419157619517903863808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 7))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 32, r := 8 }
    lowerValue := 197222081134238969187903
    upperValue := 594781708912175423306550214656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 8))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 32, r := 9 }
    lowerValue := 4336211543046882591216
    upperValue := 33043428272898634628141678592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 9))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 32, r := 10 }
    lowerValue := 110503951504718737667
    upperValue := 1835746015161035257118982144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 10))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 32, r := 11 }
    lowerValue := 3237400426216383817
    upperValue := 101985889731168625395499008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 11))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 32, r := 12 }
    lowerValue := 108352451772028807
    upperValue := 5665882762842701410861056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 12))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 32, r := 13 }
    lowerValue := 4123235178990527
    upperValue := 314771264602372300603392
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 13))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 32, r := 14 }
    lowerValue := 177775689316176
    upperValue := 17487292477909572255744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 14))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 32, r := 15 }
    lowerValue := 8663345966044
    upperValue := 971516248772754014208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 15))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 32, r := 16 }
    lowerValue := 476471921215
    upperValue := 53973124931819667456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 16))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 32, r := 17 }
    lowerValue := 29557770491
    upperValue := 374813367582081024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 17))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 32, r := 18 }
    lowerValue := 2068735758
    upperValue := 20822964865671168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 18))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 32, r := 19 }
    lowerValue := 163541540
    upperValue := 1156831381426176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 19))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 32, r := 20 }
    lowerValue := 14632685
    upperValue := 64268410079232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 20))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20))) },
  { key := { q := 18, n := 32, r := 21 }
    lowerValue := 1486290
    upperValue := 3570467226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 21))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 21))) },
  { key := { q := 18, n := 32, r := 22 }
    lowerValue := 172092
    upperValue := 198359290368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 22))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 24 22))) },
  { key := { q := 18, n := 32, r := 23 }
    lowerValue := 22838
    upperValue := 11019960576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 23))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 25 23))) },
  { key := { q := 18, n := 32, r := 24 }
    lowerValue := 3498
    upperValue := 612220032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 24))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 26 24))) },
  { key := { q := 18, n := 32, r := 25 }
    lowerValue := 624
    upperValue := 34012224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 25))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 27 25))) },
  { key := { q := 18, n := 32, r := 26 }
    lowerValue := 132
    upperValue := 1889568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 26))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 28 26))) },
  { key := { q := 18, n := 32, r := 27 }
    lowerValue := 33
    upperValue := 104976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 27))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 29 27))) },
  { key := { q := 18, n := 32, r := 28 }
    lowerValue := 18
    upperValue := 5832
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 30 29)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 30 28))) },
  { key := { q := 18, n := 32, r := 29 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 31 30))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 31 29))) },
  { key := { q := 18, n := 32, r := 30 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 32 31)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 32 30)) },
  { key := { q := 18, n := 32, r := 31 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 32 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 32 31)) },
  { key := { q := 18, n := 32, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 32 32)) },
  { key := { q := 18, n := 32, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 32 33)) },
  { key := { q := 18, n := 32, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 32 34)) },
  { key := { q := 18, n := 32, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 32 35)) },
  { key := { q := 18, n := 32, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 32 36)) },
  { key := { q := 18, n := 32, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 32 37)) },
  { key := { q := 18, n := 32, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 32 38)) },
  { key := { q := 18, n := 32, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 32 39)) },
  { key := { q := 18, n := 32, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 32 40)) },
  { key := { q := 18, n := 32, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 32 41)) },
  { key := { q := 18, n := 32, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 32 42)) },
  { key := { q := 18, n := 32, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 32 43)) },
  { key := { q := 18, n := 32, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 32 44)) },
  { key := { q := 18, n := 32, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 32 45)) },
  { key := { q := 18, n := 32, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 32 46)) },
  { key := { q := 18, n := 32, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 32 47)) },
  { key := { q := 18, n := 32, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 32 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 32 48)) },
  { key := { q := 18, n := 33, r := 0 }
    lowerValue := 265456074833292280954988944586975024775168
    upperValue := 265456074833292280954988944586975024775168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 33 0)) },
  { key := { q := 18, n := 33, r := 1 }
    lowerValue := 472341770166000499919909154069350577892
    upperValue := 7373779856480341137638581794082639577088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 1))
    upperTrace := (.lengthenFreeN 30 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 33, r := 2 }
    lowerValue := 1733262434107449240339716524458878154
    upperValue := 364137276863226722846349718226303188992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 2))
    upperTrace := (.lengthenFreeN 24 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 18, n := 33, r := 3 }
    lowerValue := 9846848009961847293738161688294431
    upperValue := 20229848714623706824797206568127954944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 3))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 33, r := 4 }
    lowerValue := 77063566648187263014594573211090
    upperValue := 1123880484145761490266511476007108608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 4))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 33, r := 5 }
    lowerValue := 779771981634427439189563102737
    upperValue := 62437804674764527237028415333728256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 5))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 33, r := 6 }
    lowerValue := 9804679389623490705534179367
    upperValue := 3468766926375807068723800851873792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 6))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 33, r := 7 }
    lowerValue := 149127521277560090714963616
    upperValue := 192709273687544837151322269548544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 7))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 33, r := 8 }
    lowerValue := 2691363380712705549816516
    upperValue := 10706070760419157619517903863808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 8))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 33, r := 9 }
    lowerValue := 56815796589440971669096
    upperValue := 594781708912175423306550214656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 9))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 33, r := 10 }
    lowerValue := 1387826272133519002175
    upperValue := 33043428272898634628141678592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 10))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 33, r := 11 }
    lowerValue := 38899535454252470062
    upperValue := 1835746015161035257118982144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 11))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 33, r := 12 }
    lowerValue := 1243070980086033576
    upperValue := 101985889731168625395499008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 12))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 33, r := 13 }
    lowerValue := 45064961948833912
    upperValue := 5665882762842701410861056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 13))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 33, r := 14 }
    lowerValue := 1846524636383479
    upperValue := 314771264602372300603392
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 14))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 33, r := 15 }
    lowerValue := 85285839620167
    upperValue := 17487292477909572255744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 15))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 33, r := 16 }
    lowerValue := 4432351360470
    upperValue := 971516248772754014208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 16))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 33, r := 17 }
    lowerValue := 258951956273
    upperValue := 6746640616477458432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 17))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 33, r := 18 }
    lowerValue := 17004683860
    upperValue := 374813367582081024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 18))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 33, r := 19 }
    lowerValue := 1255910308
    upperValue := 20822964865671168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 19))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 33, r := 20 }
    lowerValue := 104475447
    upperValue := 1156831381426176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 20))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20))) },
  { key := { q := 18, n := 33, r := 21 }
    lowerValue := 9811408
    upperValue := 64268410079232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 21))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 21))) },
  { key := { q := 18, n := 33, r := 22 }
    lowerValue := 1043555
    upperValue := 3570467226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 22))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 24 22))) },
  { key := { q := 18, n := 33, r := 23 }
    lowerValue := 126252
    upperValue := 198359290368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 23))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 25 23))) },
  { key := { q := 18, n := 33, r := 24 }
    lowerValue := 17471
    upperValue := 11019960576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 24))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 26 24))) },
  { key := { q := 18, n := 33, r := 25 }
    lowerValue := 2786
    upperValue := 612220032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 25))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 27 25))) },
  { key := { q := 18, n := 33, r := 26 }
    lowerValue := 517
    upperValue := 34012224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 26))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 28 26))) },
  { key := { q := 18, n := 33, r := 27 }
    lowerValue := 113
    upperValue := 1889568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 27))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 29 27))) },
  { key := { q := 18, n := 33, r := 28 }
    lowerValue := 30
    upperValue := 104976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 28))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 30 28))) },
  { key := { q := 18, n := 33, r := 29 }
    lowerValue := 18
    upperValue := 5832
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 31 30)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 31 29))) },
  { key := { q := 18, n := 33, r := 30 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 32 31))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 32 30))) },
  { key := { q := 18, n := 33, r := 31 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 33 32)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 33 31)) },
  { key := { q := 18, n := 33, r := 32 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 33 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 33 32)) },
  { key := { q := 18, n := 33, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 33 33)) },
  { key := { q := 18, n := 33, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 33 34)) },
  { key := { q := 18, n := 33, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 33 35)) },
  { key := { q := 18, n := 33, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 33 36)) },
  { key := { q := 18, n := 33, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 33 37)) },
  { key := { q := 18, n := 33, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 33 38)) },
  { key := { q := 18, n := 33, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 33 39)) },
  { key := { q := 18, n := 33, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 33 40)) },
  { key := { q := 18, n := 33, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 33 41)) },
  { key := { q := 18, n := 33, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 33 42)) },
  { key := { q := 18, n := 33, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 33 43)) },
  { key := { q := 18, n := 33, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 33 44)) },
  { key := { q := 18, n := 33, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 33 45)) },
  { key := { q := 18, n := 33, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 33 46)) },
  { key := { q := 18, n := 33, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 33 47)) },
  { key := { q := 18, n := 33, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 33 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 33 48)) },
  { key := { q := 18, n := 34, r := 0 }
    lowerValue := 4778209346999261057189801002565550445953024
    upperValue := 4778209346999261057189801002565550445953024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 34 0)) },
  { key := { q := 18, n := 34, r := 1 }
    lowerValue := 8252520461138620133315718484569171754669
    upperValue := 132728037416646140477494472293487512387584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 1))
    upperTrace := (.lengthenFreeN 31 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 34, r := 2 }
    lowerValue := 29366775739356768303892869450583563476
    upperValue := 6554470983538081011234294928073457401856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 2))
    upperTrace := (.lengthenFreeN 25 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 18, n := 34, r := 3 }
    lowerValue := 161632947151902640786337946308467614
    upperValue := 364137276863226722846349718226303188992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 3))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 34, r := 4 }
    lowerValue := 1224261491590503504429955484821507
    upperValue := 20229848714623706824797206568127954944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 4))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 34, r := 5 }
    lowerValue := 11975862376894415663070920872952
    upperValue := 1123880484145761490266511476007108608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 5))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 34, r := 6 }
    lowerValue := 145403596951175367505404972677
    upperValue := 62437804674764527237028415333728256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 6))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 34, r := 7 }
    lowerValue := 2132818590154015658960232411
    upperValue := 3468766926375807068723800851873792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 7))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 34, r := 8 }
    lowerValue := 37070958505190852535543332
    upperValue := 192709273687544837151322269548544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 8))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 34, r := 9 }
    lowerValue := 752595196890380394574217
    upperValue := 10706070760419157619517903863808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 9))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 34, r := 10 }
    lowerValue := 17651145526553843989351
    upperValue := 594781708912175423306550214656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 10))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 34, r := 11 }
    lowerValue := 474225580578278490919
    upperValue := 33043428272898634628141678592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 11))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 34, r := 12 }
    lowerValue := 14498794724937915386
    upperValue := 1835746015161035257118982144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 12))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 34, r := 13 }
    lowerValue := 501868114166456919
    upperValue := 101985889731168625395499008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 13))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 34, r := 14 }
    lowerValue := 19590960296821146
    upperValue := 5665882762842701410861056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 14))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 34, r := 15 }
    lowerValue := 859937237086729
    upperValue := 314771264602372300603392
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 15))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 34, r := 16 }
    lowerValue := 42358565094784
    upperValue := 17487292477909572255744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 16))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 34, r := 17 }
    lowerValue := 2338526011575
    upperValue := 121439531096594251776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 17))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 34, r := 18 }
    lowerValue := 144628764732
    upperValue := 6746640616477458432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 18))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 34, r := 19 }
    lowerValue := 10022496279
    upperValue := 374813367582081024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 19))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 34, r := 20 }
    lowerValue := 778963640
    upperValue := 20822964865671168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 20))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20))) },
  { key := { q := 18, n := 34, r := 21 }
    lowerValue := 68016971
    upperValue := 1156831381426176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 21))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 21))) },
  { key := { q := 18, n := 34, r := 22 }
    lowerValue := 6689111
    upperValue := 64268410079232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 22))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 24 22))) },
  { key := { q := 18, n := 34, r := 23 }
    lowerValue := 743459
    upperValue := 3570467226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 23))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 25 23))) },
  { key := { q := 18, n := 34, r := 24 }
    lowerValue := 93804
    upperValue := 198359290368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 24))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 26 24))) },
  { key := { q := 18, n := 34, r := 25 }
    lowerValue := 13513
    upperValue := 11019960576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 25))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 27 25))) },
  { key := { q := 18, n := 34, r := 26 }
    lowerValue := 2239
    upperValue := 612220032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 26))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 28 26))) },
  { key := { q := 18, n := 34, r := 27 }
    lowerValue := 431
    upperValue := 34012224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 27))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 29 27))) },
  { key := { q := 18, n := 34, r := 28 }
    lowerValue := 98
    upperValue := 1889568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 28))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 30 28))) },
  { key := { q := 18, n := 34, r := 29 }
    lowerValue := 27
    upperValue := 104976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 29))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 31 29))) },
  { key := { q := 18, n := 34, r := 30 }
    lowerValue := 18
    upperValue := 5832
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 32 31)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 32 30))) },
  { key := { q := 18, n := 34, r := 31 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 33 32))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 33 31))) },
  { key := { q := 18, n := 34, r := 32 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 34 33)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 34 32)) },
  { key := { q := 18, n := 34, r := 33 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 34 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 34 33)) },
  { key := { q := 18, n := 34, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 34 34)) },
  { key := { q := 18, n := 34, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 34 35)) },
  { key := { q := 18, n := 34, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 34 36)) },
  { key := { q := 18, n := 34, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 34 37)) },
  { key := { q := 18, n := 34, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 34 38)) },
  { key := { q := 18, n := 34, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 34 39)) },
  { key := { q := 18, n := 34, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 34 40)) },
  { key := { q := 18, n := 34, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 34 41)) },
  { key := { q := 18, n := 34, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 34 42)) },
  { key := { q := 18, n := 34, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 34 43)) },
  { key := { q := 18, n := 34, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 34 44)) },
  { key := { q := 18, n := 34, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 34 45)) },
  { key := { q := 18, n := 34, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 34 46)) },
  { key := { q := 18, n := 34, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 34 47)) },
  { key := { q := 18, n := 34, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 34 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 34 48)) },
  { key := { q := 18, n := 35, r := 0 }
    lowerValue := 86007768245986699029416418046179908027154432
    upperValue := 86007768245986699029416418046179908027154432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 35 0)) },
  { key := { q := 18, n := 35, r := 1 }
    lowerValue := 144308335983199159445329560480167630918045
    upperValue := 2389104673499630528594900501282775222976512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 1))
    upperTrace := (.lengthenFreeN 32 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 35, r := 2 }
    lowerValue := 498448390597485375508785333299603641980
    upperValue := 117980477703685458202217308705322233233408
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 2))
    upperTrace := (.lengthenFreeN 26 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 18, n := 35, r := 3 }
    lowerValue := 2660461718114112704469457133135665726
    upperValue := 6554470983538081011234294928073457401856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 3))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 35, r := 4 }
    lowerValue := 19522871060127618395104562799391804
    upperValue := 364137276863226722846349718226303188992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 4))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 35, r := 5 }
    lowerValue := 184829187615189053333685739912885
    upperValue := 20229848714623706824797206568127954944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 5))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 35, r := 6 }
    lowerValue := 2169476896280025128797033917274
    upperValue := 1123880484145761490266511476007108608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 6))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 35, r := 7 }
    lowerValue := 30728307895614128231290253336
    upperValue := 62437804674764527237028415333728256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 7))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 35, r := 8 }
    lowerValue := 515080894871253368934667202
    upperValue := 3468766926375807068723800851873792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 8))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 35, r := 9 }
    lowerValue := 10070969250875381005825821
    upperValue := 192709273687544837151322269548544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 9))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 35, r := 10 }
    lowerValue := 227152120514256609563623
    upperValue := 10706070760419157619517903863808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 10))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 35, r := 11 }
    lowerValue := 5859734768623541190374
    upperValue := 594781708912175423306550214656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 11))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 35, r := 12 }
    lowerValue := 171724315246903175752
    upperValue := 33043428272898634628141678592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 12))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 35, r := 13 }
    lowerValue := 5687084096245898454
    upperValue := 1835746015161035257118982144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 13))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 35, r := 14 }
    lowerValue := 211970713486168388
    upperValue := 101985889731168625395499008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 14))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 35, r := 15 }
    lowerValue := 8864275896747097
    upperValue := 5665882762842701410861056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 15))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 35, r := 16 }
    lowerValue := 414967787813591
    upperValue := 314771264602372300603392
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 16))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 35, r := 17 }
    lowerValue := 21714075698139
    upperValue := 2185911559738696531968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 17))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 35, r := 18 }
    lowerValue := 1269054294003
    upperValue := 121439531096594251776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 18))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 35, r := 19 }
    lowerValue := 82827983551
    upperValue := 6746640616477458432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 19))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 35, r := 20 }
    lowerValue := 6040387675
    upperValue := 374813367582081024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 20))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20))) },
  { key := { q := 18, n := 35, r := 21 }
    lowerValue := 492798550
    upperValue := 20822964865671168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 21))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 21))) },
  { key := { q := 18, n := 35, r := 22 }
    lowerValue := 45063729
    upperValue := 1156831381426176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 22))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 24 22))) },
  { key := { q := 18, n := 35, r := 23 }
    lowerValue := 4631406
    upperValue := 64268410079232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 23))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 25 23))) },
  { key := { q := 18, n := 35, r := 24 }
    lowerValue := 536887
    upperValue := 3570467226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 24))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 26 24))) },
  { key := { q := 18, n := 35, r := 25 }
    lowerValue := 70524
    upperValue := 198359290368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 25))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 27 25))) },
  { key := { q := 18, n := 35, r := 26 }
    lowerValue := 10559
    upperValue := 11019960576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 26))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 28 26))) },
  { key := { q := 18, n := 35, r := 27 }
    lowerValue := 1815
    upperValue := 612220032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 27))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 29 27))) },
  { key := { q := 18, n := 35, r := 28 }
    lowerValue := 362
    upperValue := 34012224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 28))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 30 28))) },
  { key := { q := 18, n := 35, r := 29 }
    lowerValue := 85
    upperValue := 1889568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 29))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 31 29))) },
  { key := { q := 18, n := 35, r := 30 }
    lowerValue := 24
    upperValue := 104976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 30))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 32 30))) },
  { key := { q := 18, n := 35, r := 31 }
    lowerValue := 18
    upperValue := 5832
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 33 32)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 33 31))) },
  { key := { q := 18, n := 35, r := 32 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 34 33))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 34 32))) },
  { key := { q := 18, n := 35, r := 33 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 35 34)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 35 33)) },
  { key := { q := 18, n := 35, r := 34 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 35 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 35 34)) },
  { key := { q := 18, n := 35, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 35 35)) },
  { key := { q := 18, n := 35, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 35 36)) },
  { key := { q := 18, n := 35, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 35 37)) },
  { key := { q := 18, n := 35, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 35 38)) },
  { key := { q := 18, n := 35, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 35 39)) },
  { key := { q := 18, n := 35, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 35 40)) },
  { key := { q := 18, n := 35, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 35 41)) },
  { key := { q := 18, n := 35, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 35 42)) },
  { key := { q := 18, n := 35, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 35 43)) },
  { key := { q := 18, n := 35, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 35 44)) },
  { key := { q := 18, n := 35, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 35 45)) },
  { key := { q := 18, n := 35, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 35 46)) },
  { key := { q := 18, n := 35, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 35 47)) },
  { key := { q := 18, n := 35, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 35 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 35 48)) },
  { key := { q := 18, n := 36, r := 0 }
    lowerValue := 1548139828427760582529495524831238344488779776
    upperValue := 1548139828427760582529495524831238344488779776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 36 0)) },
  { key := { q := 18, n := 36, r := 1 }
    lowerValue := 2525513586342186920929030219953080496719054
    upperValue := 43003884122993349514708209023089954013577216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 1))
    upperTrace := (.lengthenFreeN 33 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 36, r := 2 }
    lowerValue := 8474460286002313201170856209013637527788
    upperValue := 2123648598666338247639911556695800198201344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 2))
    upperTrace := (.lengthenFreeN 27 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))) },
  { key := { q := 18, n := 36, r := 3 }
    lowerValue := 43904533179648087675942103909502619457
    upperValue := 117980477703685458202217308705322233233408
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 3))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 36, r := 4 }
    lowerValue := 312435762899681755870061363031440437
    upperValue := 6554470983538081011234294928073457401856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 4))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 36, r := 5 }
    lowerValue := 2865706111464043078414284607345625
    upperValue := 364137276863226722846349718226303188992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 5))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 36, r := 6 }
    lowerValue := 32554589970791308908653073805695
    upperValue := 20229848714623706824797206568127954944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 6))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 36, r := 7 }
    lowerValue := 445773259424458527944262127686
    upperValue := 1123880484145761490266511476007108608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 7))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 36, r := 8 }
    lowerValue := 7215358855362051026971424963
    upperValue := 62437804674764527237028415333728256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 8))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 36, r := 9 }
    lowerValue := 136054593399672874096492981
    upperValue := 3468766926375807068723800851873792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 9))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 36, r := 10 }
    lowerValue := 2955492046645145215612573
    upperValue := 192709273687544837151322269548544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 10))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 36, r := 11 }
    lowerValue := 73320979072195088438875
    upperValue := 10706070760419157619517903863808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 11))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 36, r := 12 }
    lowerValue := 2063169112226080238018
    upperValue := 594781708912175423306550214656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 12))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 36, r := 13 }
    lowerValue := 65494338436104078814
    upperValue := 33043428272898634628141678592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 13))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 36, r := 14 }
    lowerValue := 2335580812337231425
    upperValue := 1835746015161035257118982144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 14))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 36, r := 15 }
    lowerValue := 93258386721009792
    upperValue := 101985889731168625395499008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 15))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 36, r := 16 }
    lowerValue := 4159314743333637
    upperValue := 5665882762842701410861056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 16))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 18 2 9 2 531441 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 18 ≤ 2 * 9) (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2))))))) },
  { key := { q := 18, n := 36, r := 17 }
    lowerValue := 206848733369115
    upperValue := 39346408075296537575424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 36 17))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) }]

end CoveringCodes.Database
