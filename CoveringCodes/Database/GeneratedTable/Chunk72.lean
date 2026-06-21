import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 72. Do not edit manually.

def precomputedTable_chunk_72 : Array AnyBoundEntry := #[
  { key := { q := 7, n := 24, r := 17 }
    lowerValue := 22
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 17))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 24, r := 18 }
    lowerValue := 9
    upperValue := 343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 18))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18))) },
  { key := { q := 7, n := 24, r := 19 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 21 20))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 19))) },
  { key := { q := 7, n := 24, r := 20 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 22 21)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 20)) },
  { key := { q := 7, n := 24, r := 21 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 23 22))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 21)) },
  { key := { q := 7, n := 24, r := 22 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 24 23)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 22)) },
  { key := { q := 7, n := 24, r := 23 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 24 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 23)) },
  { key := { q := 7, n := 24, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 24 24)) },
  { key := { q := 7, n := 24, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 24 25)) },
  { key := { q := 7, n := 24, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 24 26)) },
  { key := { q := 7, n := 24, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 24 27)) },
  { key := { q := 7, n := 24, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 24 28)) },
  { key := { q := 7, n := 24, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 24 29)) },
  { key := { q := 7, n := 24, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 24 30)) },
  { key := { q := 7, n := 24, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 24 31)) },
  { key := { q := 7, n := 24, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 24 32)) },
  { key := { q := 7, n := 24, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 24 33)) },
  { key := { q := 7, n := 24, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 24 34)) },
  { key := { q := 7, n := 24, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 24 35)) },
  { key := { q := 7, n := 24, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 24 36)) },
  { key := { q := 7, n := 24, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 24 37)) },
  { key := { q := 7, n := 24, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 24 38)) },
  { key := { q := 7, n := 24, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 24 39)) },
  { key := { q := 7, n := 24, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 24 40)) },
  { key := { q := 7, n := 24, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 24 41)) },
  { key := { q := 7, n := 24, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 24 42)) },
  { key := { q := 7, n := 24, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 24 43)) },
  { key := { q := 7, n := 24, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 24 44)) },
  { key := { q := 7, n := 24, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 24 45)) },
  { key := { q := 7, n := 24, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 24 46)) },
  { key := { q := 7, n := 24, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 24 47)) },
  { key := { q := 7, n := 24, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 24 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 24 48)) },
  { key := { q := 7, n := 25, r := 0 }
    lowerValue := 1341068619663964900807
    upperValue := 1341068619663964900807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 25 0)) },
  { key := { q := 7, n := 25, r := 1 }
    lowerValue := 8881249136847449675
    upperValue := 97745526214574701225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 1))
    upperTrace := (.lengthenFreeN 22 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 25, r := 2 }
    lowerValue := 122460836422606603
    upperValue := 3909821048582988049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 2))
    upperTrace := (.lengthenFreeN 18 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))) },
  { key := { q := 7, n := 25, r := 3 }
    lowerValue := 2641193458336793
    upperValue := 558545864083284007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 3))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 25, r := 4 }
    lowerValue := 79343074124943
    upperValue := 79792266297612001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 4))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 25, r := 5 }
    lowerValue := 3118466664787
    upperValue := 11398895185373143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 5))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 25, r := 6 }
    lowerValue := 154273162319
    upperValue := 1628413597910449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 6))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 25, r := 7 }
    lowerValue := 9361209258
    upperValue := 232630513987207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 7))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 5 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 25, r := 8 }
    lowerValue := 684257530
    upperValue := 33232930569601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 8))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 6 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 25, r := 9 }
    lowerValue := 59475193
    upperValue := 4747561509943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 9))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 7 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 25, r := 10 }
    lowerValue := 6090292
    upperValue := 678223072849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 10))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 8 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 25, r := 11 }
    lowerValue := 729902
    upperValue := 96889010407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 11))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 9 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 25, r := 12 }
    lowerValue := 101927
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 12))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 25, r := 13 }
    lowerValue := 16541
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 13))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 25, r := 14 }
    lowerValue := 3117
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 14))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 25, r := 15 }
    lowerValue := 682
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 15))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 25, r := 16 }
    lowerValue := 174
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 16))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 25, r := 17 }
    lowerValue := 52
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 17))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 25, r := 18 }
    lowerValue := 18
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 18))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18))) },
  { key := { q := 7, n := 25, r := 19 }
    lowerValue := 8
    upperValue := 343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 19))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 19))) },
  { key := { q := 7, n := 25, r := 20 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 22 21))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 20))) },
  { key := { q := 7, n := 25, r := 21 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 23 22)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 21)) },
  { key := { q := 7, n := 25, r := 22 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 24 23))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 22)) },
  { key := { q := 7, n := 25, r := 23 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 25 24)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 23)) },
  { key := { q := 7, n := 25, r := 24 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 25 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 24)) },
  { key := { q := 7, n := 25, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 25 25)) },
  { key := { q := 7, n := 25, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 25 26)) },
  { key := { q := 7, n := 25, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 25 27)) },
  { key := { q := 7, n := 25, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 25 28)) },
  { key := { q := 7, n := 25, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 25 29)) },
  { key := { q := 7, n := 25, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 25 30)) },
  { key := { q := 7, n := 25, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 25 31)) },
  { key := { q := 7, n := 25, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 25 32)) },
  { key := { q := 7, n := 25, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 25 33)) },
  { key := { q := 7, n := 25, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 25 34)) },
  { key := { q := 7, n := 25, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 25 35)) },
  { key := { q := 7, n := 25, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 25 36)) },
  { key := { q := 7, n := 25, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 25 37)) },
  { key := { q := 7, n := 25, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 25 38)) },
  { key := { q := 7, n := 25, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 25 39)) },
  { key := { q := 7, n := 25, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 25 40)) },
  { key := { q := 7, n := 25, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 25 41)) },
  { key := { q := 7, n := 25, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 25 42)) },
  { key := { q := 7, n := 25, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 25 43)) },
  { key := { q := 7, n := 25, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 25 44)) },
  { key := { q := 7, n := 25, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 25 45)) },
  { key := { q := 7, n := 25, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 25 46)) },
  { key := { q := 7, n := 25, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 25 47)) },
  { key := { q := 7, n := 25, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 25 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 25 48)) },
  { key := { q := 7, n := 26, r := 0 }
    lowerValue := 9387480337647754305649
    upperValue := 9387480337647754305649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 26 0)) },
  { key := { q := 7, n := 26, r := 1 }
    lowerValue := 59792868392660855450
    upperValue := 684218683502022908575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 1))
    upperTrace := (.lengthenFreeN 23 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 26, r := 2 }
    lowerValue := 791724748051594359
    upperValue := 27368747340080916343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 2))
    upperTrace := (.lengthenFreeN 19 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))) },
  { key := { q := 7, n := 26, r := 3 }
    lowerValue := 16369981249941590
    upperValue := 3909821048582988049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 3))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 26, r := 4 }
    lowerValue := 470582071647618
    upperValue := 558545864083284007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 4))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 26, r := 5 }
    lowerValue := 17663770430678
    upperValue := 79792266297612001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 5))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 26, r := 6 }
    lowerValue := 832735417568
    upperValue := 11398895185373143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 6))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 26, r := 7 }
    lowerValue := 48038697078
    upperValue := 1628413597910449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 7))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 5 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 26, r := 8 }
    lowerValue := 3329558407
    upperValue := 232630513987207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 8))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 6 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 26, r := 9 }
    lowerValue := 273626031
    upperValue := 33232930569601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 9))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 7 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 26, r := 10 }
    lowerValue := 26407306
    upperValue := 4747561509943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 10))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 8 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 26, r := 11 }
    lowerValue := 2972118
    upperValue := 678223072849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 11))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 9 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 26, r := 12 }
    lowerValue := 388214
    upperValue := 13841287201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 12))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 26, r := 13 }
    lowerValue := 58665
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 13))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 26, r := 14 }
    lowerValue := 10239
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 14))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 26, r := 15 }
    lowerValue := 2064
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 15))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 26, r := 16 }
    lowerValue := 481
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 16))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 26, r := 17 }
    lowerValue := 130
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 17))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 26, r := 18 }
    lowerValue := 41
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 18))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18))) },
  { key := { q := 7, n := 26, r := 19 }
    lowerValue := 15
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 19))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 19))) },
  { key := { q := 7, n := 26, r := 20 }
    lowerValue := 7
    upperValue := 343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 20))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 20))) },
  { key := { q := 7, n := 26, r := 21 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 23 22))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 21))) },
  { key := { q := 7, n := 26, r := 22 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 24 23)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 26 22)) },
  { key := { q := 7, n := 26, r := 23 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 25 24))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 26 23)) },
  { key := { q := 7, n := 26, r := 24 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 26 25)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 26 24)) },
  { key := { q := 7, n := 26, r := 25 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 26 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 26 25)) },
  { key := { q := 7, n := 26, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 26 26)) },
  { key := { q := 7, n := 26, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 26 27)) },
  { key := { q := 7, n := 26, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 26 28)) },
  { key := { q := 7, n := 26, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 26 29)) },
  { key := { q := 7, n := 26, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 26 30)) },
  { key := { q := 7, n := 26, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 26 31)) },
  { key := { q := 7, n := 26, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 26 32)) },
  { key := { q := 7, n := 26, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 26 33)) },
  { key := { q := 7, n := 26, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 26 34)) },
  { key := { q := 7, n := 26, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 26 35)) },
  { key := { q := 7, n := 26, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 26 36)) },
  { key := { q := 7, n := 26, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 26 37)) },
  { key := { q := 7, n := 26, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 26 38)) },
  { key := { q := 7, n := 26, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 26 39)) },
  { key := { q := 7, n := 26, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 26 40)) },
  { key := { q := 7, n := 26, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 26 41)) },
  { key := { q := 7, n := 26, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 26 42)) },
  { key := { q := 7, n := 26, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 26 43)) },
  { key := { q := 7, n := 26, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 26 44)) },
  { key := { q := 7, n := 26, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 26 45)) },
  { key := { q := 7, n := 26, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 26 46)) },
  { key := { q := 7, n := 26, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 26 47)) },
  { key := { q := 7, n := 26, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 26 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 26 48)) },
  { key := { q := 7, n := 27, r := 0 }
    lowerValue := 65712362363534280139543
    upperValue := 65712362363534280139543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 27 0)) },
  { key := { q := 7, n := 27, r := 1 }
    lowerValue := 403143327383645890427
    upperValue := 4789530784514160360025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 1))
    upperTrace := (.lengthenFreeN 24 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 27, r := 2 }
    lowerValue := 5134179417418101426
    upperValue := 191581231380566414401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 2))
    upperTrace := (.lengthenFreeN 20 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))) },
  { key := { q := 7, n := 27, r := 3 }
    lowerValue := 101943010093925495
    upperValue := 27368747340080916343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 3))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 27, r := 4 }
    lowerValue := 2809493410392216
    upperValue := 3909821048582988049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 4))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 27, r := 5 }
    lowerValue := 100918034626054
    upperValue := 558545864083284007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 5))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 27, r := 6 }
    lowerValue := 4543861406956
    upperValue := 79792266297612001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 6))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 27, r := 7 }
    lowerValue := 249806213207
    upperValue := 11398895185373143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 7))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 5 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 27, r := 8 }
    lowerValue := 16461314274
    upperValue := 1628413597910449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 8))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 6 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 27, r := 9 }
    lowerValue := 1282835121
    upperValue := 232630513987207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 9))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 7 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 27, r := 10 }
    lowerValue := 117064595
    upperValue := 33232930569601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 10))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 8 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 27, r := 11 }
    lowerValue := 12418607
    upperValue := 4747561509943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 11))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 9 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 27, r := 12 }
    lowerValue := 1523507
    upperValue := 96889010407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 12))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 27, r := 13 }
    lowerValue := 215375
    upperValue := 13841287201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 13))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 27, r := 14 }
    lowerValue := 35011
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 14))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 27, r := 15 }
    lowerValue := 6539
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 15))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 27, r := 16 }
    lowerValue := 1404
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 16))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 27, r := 17 }
    lowerValue := 347
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 17))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 27, r := 18 }
    lowerValue := 99
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 18))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18))) },
  { key := { q := 7, n := 27, r := 19 }
    lowerValue := 33
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 19))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 19))) },
  { key := { q := 7, n := 27, r := 20 }
    lowerValue := 13
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 20))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 20))) },
  { key := { q := 7, n := 27, r := 21 }
    lowerValue := 7
    upperValue := 343
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 23 22)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 21))) },
  { key := { q := 7, n := 27, r := 22 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 24 23))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 26 22))) },
  { key := { q := 7, n := 27, r := 23 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 25 24)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 27 23)) },
  { key := { q := 7, n := 27, r := 24 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 26 25))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 27 24)) },
  { key := { q := 7, n := 27, r := 25 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 27 26)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 27 25)) },
  { key := { q := 7, n := 27, r := 26 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 27 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 27 26)) },
  { key := { q := 7, n := 27, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 27 27)) },
  { key := { q := 7, n := 27, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 27 28)) },
  { key := { q := 7, n := 27, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 27 29)) },
  { key := { q := 7, n := 27, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 27 30)) },
  { key := { q := 7, n := 27, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 27 31)) },
  { key := { q := 7, n := 27, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 27 32)) },
  { key := { q := 7, n := 27, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 27 33)) },
  { key := { q := 7, n := 27, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 27 34)) },
  { key := { q := 7, n := 27, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 27 35)) },
  { key := { q := 7, n := 27, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 27 36)) },
  { key := { q := 7, n := 27, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 27 37)) },
  { key := { q := 7, n := 27, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 27 38)) },
  { key := { q := 7, n := 27, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 27 39)) },
  { key := { q := 7, n := 27, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 27 40)) },
  { key := { q := 7, n := 27, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 27 41)) },
  { key := { q := 7, n := 27, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 27 42)) },
  { key := { q := 7, n := 27, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 27 43)) },
  { key := { q := 7, n := 27, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 27 44)) },
  { key := { q := 7, n := 27, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 27 45)) },
  { key := { q := 7, n := 27, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 27 46)) },
  { key := { q := 7, n := 27, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 27 47)) },
  { key := { q := 7, n := 27, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 27 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 27 48)) },
  { key := { q := 7, n := 28, r := 0 }
    lowerValue := 459986536544739960976801
    upperValue := 459986536544739960976801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 28 0)) },
  { key := { q := 7, n := 28, r := 1 }
    lowerValue := 2721813825708520479153
    upperValue := 33526715491599122520175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 1))
    upperTrace := (.lengthenFreeN 25 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 28, r := 2 }
    lowerValue := 33388004394624371125
    upperValue := 1341068619663964900807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 2))
    upperTrace := (.lengthenFreeN 21 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))) },
  { key := { q := 7, n := 28, r := 3 }
    lowerValue := 637636540061713880
    upperValue := 191581231380566414401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 3))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 28, r := 4 }
    lowerValue := 16875909112378610
    upperValue := 27368747340080916343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 4))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 28, r := 5 }
    lowerValue := 581170990477433
    upperValue := 3909821048582988049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 5))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 28, r := 6 }
    lowerValue := 25041916153063
    upperValue := 558545864083284007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 6))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 28, r := 7 }
    lowerValue := 1314908138311
    upperValue := 79792266297612001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 7))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 5 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 28, r := 8 }
    lowerValue := 82579199592
    upperValue := 11398895185373143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 8))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 6 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 28, r := 9 }
    lowerValue := 6118804370
    upperValue := 1628413597910449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 9))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 7 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 28, r := 10 }
    lowerValue := 529523472
    upperValue := 232630513987207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 10))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 8 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 28, r := 11 }
    lowerValue := 53119606
    upperValue := 33232930569601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 11))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 9 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 28, r := 12 }
    lowerValue := 6142902
    upperValue := 678223072849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 12))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 28, r := 13 }
    lowerValue := 815722
    upperValue := 96889010407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 13))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 28, r := 14 }
    lowerValue := 124066
    upperValue := 13841287201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 14))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 28, r := 15 }
    lowerValue := 21584
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 15))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 28, r := 16 }
    lowerValue := 4294
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 16))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 28, r := 17 }
    lowerValue := 978
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 17))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 28, r := 18 }
    lowerValue := 256
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 18))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18))) },
  { key := { q := 7, n := 28, r := 19 }
    lowerValue := 77
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 19))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 19))) },
  { key := { q := 7, n := 28, r := 20 }
    lowerValue := 27
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 20))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 20))) },
  { key := { q := 7, n := 28, r := 21 }
    lowerValue := 11
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 21))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 21))) },
  { key := { q := 7, n := 28, r := 22 }
    lowerValue := 7
    upperValue := 343
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 24 23)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 26 22))) },
  { key := { q := 7, n := 28, r := 23 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 25 24))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 27 23))) },
  { key := { q := 7, n := 28, r := 24 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 26 25)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 28 24)) },
  { key := { q := 7, n := 28, r := 25 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 27 26))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 28 25)) },
  { key := { q := 7, n := 28, r := 26 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 28 27)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 28 26)) },
  { key := { q := 7, n := 28, r := 27 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 28 27))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 28 27)) },
  { key := { q := 7, n := 28, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 28 28)) },
  { key := { q := 7, n := 28, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 28 29)) },
  { key := { q := 7, n := 28, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 28 30)) },
  { key := { q := 7, n := 28, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 28 31)) },
  { key := { q := 7, n := 28, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 28 32)) },
  { key := { q := 7, n := 28, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 28 33)) },
  { key := { q := 7, n := 28, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 28 34)) },
  { key := { q := 7, n := 28, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 28 35)) },
  { key := { q := 7, n := 28, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 28 36)) },
  { key := { q := 7, n := 28, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 28 37)) },
  { key := { q := 7, n := 28, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 28 38)) },
  { key := { q := 7, n := 28, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 28 39)) },
  { key := { q := 7, n := 28, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 28 40)) },
  { key := { q := 7, n := 28, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 28 41)) },
  { key := { q := 7, n := 28, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 28 42)) },
  { key := { q := 7, n := 28, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 28 43)) },
  { key := { q := 7, n := 28, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 28 44)) },
  { key := { q := 7, n := 28, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 28 45)) },
  { key := { q := 7, n := 28, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 28 46)) },
  { key := { q := 7, n := 28, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 28 47)) },
  { key := { q := 7, n := 28, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 28 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 28 48)) },
  { key := { q := 7, n := 29, r := 0 }
    lowerValue := 3219905755813179726837607
    upperValue := 3219905755813179726837607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 29 0)) },
  { key := { q := 7, n := 29, r := 1 }
    lowerValue := 18399461461789598439073
    upperValue := 234687008441193857641225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 1))
    upperTrace := (.lengthenFreeN 26 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 29, r := 2 }
    lowerValue := 217693580948764770931
    upperValue := 9387480337647754305649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 2))
    upperTrace := (.lengthenFreeN 22 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))) },
  { key := { q := 7, n := 29, r := 3 }
    lowerValue := 4004583959820136343
    upperValue := 1341068619663964900807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 3))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 29, r := 4 }
    lowerValue := 101943010093925495
    upperValue := 191581231380566414401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 4))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 29, r := 5 }
    lowerValue := 3371543518264072
    upperValue := 27368747340080916343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 5))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 29, r := 6 }
    lowerValue := 139283995576371
    upperValue := 3909821048582988049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 6))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 29, r := 7 }
    lowerValue := 6999246328216
    upperValue := 558545864083284007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 7))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 5 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 29, r := 8 }
    lowerValue := 419849440797
    upperValue := 79792266297612001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 8))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 6 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 29, r := 9 }
    lowerValue := 29649943047
    upperValue := 11398895185373143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 9))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 7 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 29, r := 10 }
    lowerValue := 2439811471
    upperValue := 1628413597910449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 10))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 8 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 29, r := 11 }
    lowerValue := 232123325
    upperValue := 232630513987207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 11))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 9 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q7_n7_r2_pair_syndrome_linear" (primitiveUpper_valid 7 7 2))))) },
  { key := { q := 7, n := 29, r := 12 }
    lowerValue := 25386034
    upperValue := 4747561509943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 12))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 29, r := 13 }
    lowerValue := 3177996
    upperValue := 678223072849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 13))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 29, r := 14 }
    lowerValue := 454083
    upperValue := 96889010407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 14))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 29, r := 15 }
    lowerValue := 73923
    upperValue := 13841287201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 15))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 29, r := 16 }
    lowerValue := 13702
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 16))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 29, r := 17 }
    lowerValue := 2892
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 17))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 29, r := 18 }
    lowerValue := 696
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 18))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18))) },
  { key := { q := 7, n := 29, r := 19 }
    lowerValue := 192
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 19))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 19))) },
  { key := { q := 7, n := 29, r := 20 }
    lowerValue := 61
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 20))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 20))) },
  { key := { q := 7, n := 29, r := 21 }
    lowerValue := 22
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 29 21))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 21))) }]

end CoveringCodes.Database
