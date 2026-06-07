import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 74. Do not edit manually.

def precomputedTable_chunk_74 : Array AnyBoundEntry := #[
  { key := { q := 7, n := 34, r := 27 }
    lowerValue := 7
    upperValue := 343
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 29 28))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 32 27))) },
  { key := { q := 7, n := 34, r := 28 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 30 29)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 33 28))) },
  { key := { q := 7, n := 34, r := 29 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 31 30))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 34 29)) },
  { key := { q := 7, n := 34, r := 30 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 32 31)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 34 30)) },
  { key := { q := 7, n := 34, r := 31 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 33 32))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 34 31)) },
  { key := { q := 7, n := 34, r := 32 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 34 33)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 34 32)) },
  { key := { q := 7, n := 34, r := 33 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 34 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 34 33)) },
  { key := { q := 7, n := 34, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 34 34)) },
  { key := { q := 7, n := 34, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 34 35)) },
  { key := { q := 7, n := 34, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 34 36)) },
  { key := { q := 7, n := 34, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 34 37)) },
  { key := { q := 7, n := 34, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 34 38)) },
  { key := { q := 7, n := 34, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 34 39)) },
  { key := { q := 7, n := 34, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 34 40)) },
  { key := { q := 7, n := 34, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 34 41)) },
  { key := { q := 7, n := 34, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 34 42)) },
  { key := { q := 7, n := 34, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 34 43)) },
  { key := { q := 7, n := 34, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 34 44)) },
  { key := { q := 7, n := 34, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 34 45)) },
  { key := { q := 7, n := 34, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 34 46)) },
  { key := { q := 7, n := 34, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 34 47)) },
  { key := { q := 7, n := 34, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 34 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 34 48)) },
  { key := { q := 7, n := 35, r := 0 }
    lowerValue := 378818692265664781682717625943
    upperValue := 378818692265664781682717625943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 35 0)) },
  { key := { q := 7, n := 35, r := 1 }
    lowerValue := 1795349252443908917927571687
    upperValue := 27610691856098016157632480025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 1))
    upperTrace := (.lengthenFreeN 32 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 35, r := 2 }
    lowerValue := 17512768354013442822001647
    upperValue := 3944384550871145165376068575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 2))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 35, r := 3 }
    lowerValue := 263920596610630279062556
    upperValue := 563483507267306452196581225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 3))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 35, r := 4 }
    lowerValue := 5466839536098125298235
    upperValue := 80497643895329493170940175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 4))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 35, r := 5 }
    lowerValue := 146057205558862350169
    upperValue := 11499663413618499024420025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 5))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 35, r := 6 }
    lowerValue := 4836572834167593062
    upperValue := 459986536544739960976801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 6))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 8 6))) },
  { key := { q := 7, n := 35, r := 7 }
    lowerValue := 193200025689042239
    upperValue := 65712362363534280139543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 7))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 9 7))) },
  { key := { q := 7, n := 35, r := 8 }
    lowerValue := 9129943498932680
    upperValue := 9387480337647754305649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 8))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 10 8))) },
  { key := { q := 7, n := 35, r := 9 }
    lowerValue := 503044255858002
    upperValue := 1341068619663964900807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 9))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 11 9))) },
  { key := { q := 7, n := 35, r := 10 }
    lowerValue := 31958662039052
    upperValue := 191581231380566414401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 10))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 12 10))) },
  { key := { q := 7, n := 35, r := 11 }
    lowerValue := 2320884018238
    upperValue := 27368747340080916343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 11))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 13 11))) },
  { key := { q := 7, n := 35, r := 12 }
    lowerValue := 191357203333
    upperValue := 558545864083284007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 12))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 35, r := 13 }
    lowerValue := 17817004196
    upperValue := 79792266297612001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 13))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 35, r := 14 }
    lowerValue := 1865520065
    upperValue := 11398895185373143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 14))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 35, r := 15 }
    lowerValue := 218945358
    upperValue := 1628413597910449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 15))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 35, r := 16 }
    lowerValue := 28733861
    upperValue := 232630513987207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 16))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 35, r := 17 }
    lowerValue := 4209585
    upperValue := 33232930569601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 17))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 35, r := 18 }
    lowerValue := 687730
    upperValue := 678223072849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 18))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18))) },
  { key := { q := 7, n := 35, r := 19 }
    lowerValue := 125239
    upperValue := 96889010407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 19))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 19))) },
  { key := { q := 7, n := 35, r := 20 }
    lowerValue := 25425
    upperValue := 13841287201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 20))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 20))) },
  { key := { q := 7, n := 35, r := 21 }
    lowerValue := 5758
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 21))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 21))) },
  { key := { q := 7, n := 35, r := 22 }
    lowerValue := 1457
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 22))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 26 22))) },
  { key := { q := 7, n := 35, r := 23 }
    lowerValue := 413
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 23))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 27 23))) },
  { key := { q := 7, n := 35, r := 24 }
    lowerValue := 131
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 24))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 29 24))) },
  { key := { q := 7, n := 35, r := 25 }
    lowerValue := 47
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 25))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 30 25))) },
  { key := { q := 7, n := 35, r := 26 }
    lowerValue := 19
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 26))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 31 26))) },
  { key := { q := 7, n := 35, r := 27 }
    lowerValue := 9
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 27))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 32 27))) },
  { key := { q := 7, n := 35, r := 28 }
    lowerValue := 7
    upperValue := 343
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 30 29))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 33 28))) },
  { key := { q := 7, n := 35, r := 29 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 31 30)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 34 29))) },
  { key := { q := 7, n := 35, r := 30 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 32 31))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 35 30)) },
  { key := { q := 7, n := 35, r := 31 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 33 32)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 35 31)) },
  { key := { q := 7, n := 35, r := 32 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 34 33))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 35 32)) },
  { key := { q := 7, n := 35, r := 33 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 35 34)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 35 33)) },
  { key := { q := 7, n := 35, r := 34 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 35 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 35 34)) },
  { key := { q := 7, n := 35, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 35 35)) },
  { key := { q := 7, n := 35, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 35 36)) },
  { key := { q := 7, n := 35, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 35 37)) },
  { key := { q := 7, n := 35, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 35 38)) },
  { key := { q := 7, n := 35, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 35 39)) },
  { key := { q := 7, n := 35, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 35 40)) },
  { key := { q := 7, n := 35, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 35 41)) },
  { key := { q := 7, n := 35, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 35 42)) },
  { key := { q := 7, n := 35, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 35 43)) },
  { key := { q := 7, n := 35, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 35 44)) },
  { key := { q := 7, n := 35, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 35 45)) },
  { key := { q := 7, n := 35, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 35 46)) },
  { key := { q := 7, n := 35, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 35 47)) },
  { key := { q := 7, n := 35, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 35 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 35 48)) },
  { key := { q := 7, n := 36, r := 0 }
    lowerValue := 2651730845859653471779023381601
    upperValue := 2651730845859653471779023381601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 36 0)) },
  { key := { q := 7, n := 36, r := 1 }
    lowerValue := 12219957815021444570410245999
    upperValue := 193274842992686113103427360175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 1))
    upperTrace := (.lengthenFreeN 33 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 36, r := 2 }
    lowerValue := 115811278589319713140543451
    upperValue := 27610691856098016157632480025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 2))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 36, r := 3 }
    lowerValue := 1694248392223590313039066
    upperValue := 3944384550871145165376068575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 3))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 36, r := 4 }
    lowerValue := 34037561512863036904827
    upperValue := 563483507267306452196581225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 4))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 36, r := 5 }
    lowerValue := 881150574453947965799
    upperValue := 80497643895329493170940175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 5))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 36, r := 6 }
    lowerValue := 28244282709951305871
    upperValue := 3219905755813179726837607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 6))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 8 6))) },
  { key := { q := 7, n := 36, r := 7 }
    lowerValue := 1090932225656076753
    upperValue := 459986536544739960976801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 7))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 9 7))) },
  { key := { q := 7, n := 36, r := 8 }
    lowerValue := 49791728487563870
    upperValue := 65712362363534280139543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 8))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 10 8))) },
  { key := { q := 7, n := 36, r := 9 }
    lowerValue := 2646427909161855
    upperValue := 9387480337647754305649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 9))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 11 9))) },
  { key := { q := 7, n := 36, r := 10 }
    lowerValue := 161970294304206
    upperValue := 1341068619663964900807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 10))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 12 10))) },
  { key := { q := 7, n := 36, r := 11 }
    lowerValue := 11315639849325
    upperValue := 191581231380566414401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 11))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 13 11))) },
  { key := { q := 7, n := 36, r := 12 }
    lowerValue := 896166248181
    upperValue := 3909821048582988049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 12))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 36, r := 13 }
    lowerValue := 80017254729
    upperValue := 558545864083284007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 13))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 36, r := 14 }
    lowerValue := 8020160377
    upperValue := 79792266297612001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 14))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 36, r := 15 }
    lowerValue := 899325524
    upperValue := 11398895185373143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 15))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 36, r := 16 }
    lowerValue := 112528898
    upperValue := 1628413597910449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 16))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 36, r := 17 }
    lowerValue := 15682198
    upperValue := 232630513987207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 17))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 36, r := 18 }
    lowerValue := 2431081
    upperValue := 4747561509943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 18))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18))) },
  { key := { q := 7, n := 36, r := 19 }
    lowerValue := 418933
    upperValue := 678223072849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 19))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 19))) },
  { key := { q := 7, n := 36, r := 20 }
    lowerValue := 80238
    upperValue := 96889010407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 20))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 20))) },
  { key := { q := 7, n := 36, r := 21 }
    lowerValue := 17087
    upperValue := 13841287201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 21))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 21))) },
  { key := { q := 7, n := 36, r := 22 }
    lowerValue := 4050
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 22))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 26 22))) },
  { key := { q := 7, n := 36, r := 23 }
    lowerValue := 1070
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 23))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 27 23))) },
  { key := { q := 7, n := 36, r := 24 }
    lowerValue := 316
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 24))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 29 24))) },
  { key := { q := 7, n := 36, r := 25 }
    lowerValue := 105
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 25))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 30 25))) },
  { key := { q := 7, n := 36, r := 26 }
    lowerValue := 39
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 26))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 31 26))) },
  { key := { q := 7, n := 36, r := 27 }
    lowerValue := 17
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 27))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 32 27))) },
  { key := { q := 7, n := 36, r := 28 }
    lowerValue := 8
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 28))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 33 28))) },
  { key := { q := 7, n := 36, r := 29 }
    lowerValue := 7
    upperValue := 343
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 31 30))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 34 29))) },
  { key := { q := 7, n := 36, r := 30 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 32 31)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 36 30)) },
  { key := { q := 7, n := 36, r := 31 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 33 32))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 36 31)) },
  { key := { q := 7, n := 36, r := 32 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 34 33)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 36 32)) },
  { key := { q := 7, n := 36, r := 33 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 35 34))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 36 33)) },
  { key := { q := 7, n := 36, r := 34 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 36 35)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 36 34)) },
  { key := { q := 7, n := 36, r := 35 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 36 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 36 35)) },
  { key := { q := 7, n := 36, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 36 36)) },
  { key := { q := 7, n := 36, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 36 37)) },
  { key := { q := 7, n := 36, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 36 38)) },
  { key := { q := 7, n := 36, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 36 39)) },
  { key := { q := 7, n := 36, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 36 40)) },
  { key := { q := 7, n := 36, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 36 41)) },
  { key := { q := 7, n := 36, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 36 42)) },
  { key := { q := 7, n := 36, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 36 43)) },
  { key := { q := 7, n := 36, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 36 44)) },
  { key := { q := 7, n := 36, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 36 45)) },
  { key := { q := 7, n := 36, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 36 46)) },
  { key := { q := 7, n := 36, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 36 47)) },
  { key := { q := 7, n := 36, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 36 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 36 48)) },
  { key := { q := 7, n := 37, r := 0 }
    lowerValue := 18562115921017574302453163671207
    upperValue := 18562115921017574302453163671207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 37 0)) },
  { key := { q := 7, n := 37, r := 1 }
    lowerValue := 83238187986625893732973828123
    upperValue := 1352923900948802791723991521225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 1))
    upperTrace := (.lengthenFreeN 34 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 37, r := 2 }
    lowerValue := 767061280260241096840909281
    upperValue := 193274842992686113103427360175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 2))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 37, r := 3 }
    lowerValue := 10902736428208774352857833
    upperValue := 27610691856098016157632480025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 3))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 37, r := 4 }
    lowerValue := 212632165536000384875943
    upperValue := 3944384550871145165376068575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 4))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 37, r := 5 }
    lowerValue := 5338801643614336437346
    upperValue := 563483507267306452196581225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 5))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 37, r := 6 }
    lowerValue := 165819116265975349200
    upperValue := 22539340290692258087863249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 6))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 8 6))) },
  { key := { q := 7, n := 37, r := 7 }
    lowerValue := 6199740033442454130
    upperValue := 3219905755813179726837607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 7))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 9 7))) },
  { key := { q := 7, n := 37, r := 8 }
    lowerValue := 273613420203121461
    upperValue := 459986536544739960976801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 8))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 10 8))) },
  { key := { q := 7, n := 37, r := 9 }
    lowerValue := 14045795380782670
    upperValue := 65712362363534280139543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 9))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 11 9))) },
  { key := { q := 7, n := 37, r := 10 }
    lowerValue := 829268077284735
    upperValue := 9387480337647754305649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 10))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 12 10))) },
  { key := { q := 7, n := 37, r := 11 }
    lowerValue := 55813764534175
    upperValue := 1341068619663964900807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 11))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 13 11))) },
  { key := { q := 7, n := 37, r := 12 }
    lowerValue := 4252465331131
    upperValue := 27368747340080916343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 12))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 37, r := 13 }
    lowerValue := 364725978346
    upperValue := 3909821048582988049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 13))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 37, r := 14 }
    lowerValue := 35057913371
    upperValue := 558545864083284007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 14))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 37, r := 15 }
    lowerValue := 3763321207
    upperValue := 79792266297612001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 15))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 37, r := 16 }
    lowerValue := 449921411
    upperValue := 11398895185373143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 16))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 37, r := 17 }
    lowerValue := 59785009
    upperValue := 1628413597910449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 17))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 37, r := 18 }
    lowerValue := 8816797
    upperValue := 33232930569601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 18))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18))) },
  { key := { q := 7, n := 37, r := 19 }
    lowerValue := 1441796
    upperValue := 4747561509943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 19))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 19))) },
  { key := { q := 7, n := 37, r := 20 }
    lowerValue := 261340
    upperValue := 678223072849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 20))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 20))) },
  { key := { q := 7, n := 37, r := 21 }
    lowerValue := 52513
    upperValue := 96889010407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 21))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 21))) },
  { key := { q := 7, n := 37, r := 22 }
    lowerValue := 11704
    upperValue := 13841287201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 22))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 26 22))) },
  { key := { q := 7, n := 37, r := 23 }
    lowerValue := 2897
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 23))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 27 23))) },
  { key := { q := 7, n := 37, r := 24 }
    lowerValue := 798
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 24))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 29 24))) },
  { key := { q := 7, n := 37, r := 25 }
    lowerValue := 245
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 25))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 30 25))) },
  { key := { q := 7, n := 37, r := 26 }
    lowerValue := 84
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 26))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 31 26))) },
  { key := { q := 7, n := 37, r := 27 }
    lowerValue := 33
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 27))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 32 27))) },
  { key := { q := 7, n := 37, r := 28 }
    lowerValue := 14
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 28))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 33 28))) },
  { key := { q := 7, n := 37, r := 29 }
    lowerValue := 7
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 29))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 34 29))) },
  { key := { q := 7, n := 37, r := 30 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 32 31))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 36 30))) },
  { key := { q := 7, n := 37, r := 31 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 33 32)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 37 31)) },
  { key := { q := 7, n := 37, r := 32 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 34 33))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 37 32)) },
  { key := { q := 7, n := 37, r := 33 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 35 34)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 37 33)) },
  { key := { q := 7, n := 37, r := 34 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 36 35))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 37 34)) },
  { key := { q := 7, n := 37, r := 35 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 37 36)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 37 35)) },
  { key := { q := 7, n := 37, r := 36 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 37 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 37 36)) },
  { key := { q := 7, n := 37, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 37 37)) },
  { key := { q := 7, n := 37, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 37 38)) },
  { key := { q := 7, n := 37, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 37 39)) },
  { key := { q := 7, n := 37, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 37 40)) },
  { key := { q := 7, n := 37, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 37 41)) },
  { key := { q := 7, n := 37, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 37 42)) },
  { key := { q := 7, n := 37, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 37 43)) },
  { key := { q := 7, n := 37, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 37 44)) },
  { key := { q := 7, n := 37, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 37 45)) },
  { key := { q := 7, n := 37, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 37 46)) },
  { key := { q := 7, n := 37, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 37 47)) },
  { key := { q := 7, n := 37, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 37 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 37 48)) },
  { key := { q := 7, n := 38, r := 0 }
    lowerValue := 129934811447123020117172145698449
    upperValue := 129934811447123020117172145698449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 38 0)) },
  { key := { q := 7, n := 38, r := 1 }
    lowerValue := 567400923349882183917782295627
    upperValue := 9470467306641619542067940648575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 1))
    upperTrace := (.lengthenFreeN 35 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 38, r := 2 }
    lowerValue := 5088100068415358895609200208
    upperValue := 1352923900948802791723991521225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 2))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 38, r := 3 }
    lowerValue := 70321966369843704145163316
    upperValue := 193274842992686113103427360175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 3))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 38, r := 4 }
    lowerValue := 1332501374955776140768837
    upperValue := 27610691856098016157632480025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 4))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 38, r := 5 }
    lowerValue := 32478725943612378157011
    upperValue := 3944384550871145165376068575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 5))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 38, r := 6 }
    lowerValue := 978403082708975473341
    upperValue := 157775382034845806615042743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 6))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 8 6))) },
  { key := { q := 7, n := 38, r := 7 }
    lowerValue := 35446431427975334740
    upperValue := 22539340290692258087863249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 7))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 9 7))) },
  { key := { q := 7, n := 38, r := 8 }
    lowerValue := 1514307827474495773
    upperValue := 3219905755813179726837607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 8))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 10 8))) },
  { key := { q := 7, n := 38, r := 9 }
    lowerValue := 75168243490401811
    upperValue := 459986536544739960976801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 9))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 11 9))) },
  { key := { q := 7, n := 38, r := 10 }
    lowerValue := 4286440095172514
    upperValue := 65712362363534280139543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 10))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 12 10))) },
  { key := { q := 7, n := 38, r := 11 }
    lowerValue := 278307630010194
    upperValue := 9387480337647754305649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 11))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 13 11))) },
  { key := { q := 7, n := 38, r := 12 }
    lowerValue := 20428527959207
    upperValue := 191581231380566414401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 12))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 38, r := 13 }
    lowerValue := 1685637857158
    upperValue := 27368747340080916343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 13))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 38, r := 14 }
    lowerValue := 155642241764
    upperValue := 3909821048582988049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 14))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 38, r := 15 }
    lowerValue := 16023142300
    upperValue := 558545864083284007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 15))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 38, r := 16 }
    lowerValue := 1833926534
    upperValue := 79792266297612001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 16))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 38, r := 17 }
    lowerValue := 232850065
    upperValue := 11398895185373143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 17))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 38, r := 18 }
    lowerValue := 32744022
    upperValue := 232630513987207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 18))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18))) },
  { key := { q := 7, n := 38, r := 19 }
    lowerValue := 5094249
    upperValue := 33232930569601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 19))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 19))) },
  { key := { q := 7, n := 38, r := 20 }
    lowerValue := 876324
    upperValue := 4747561509943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 20))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 20))) },
  { key := { q := 7, n := 38, r := 21 }
    lowerValue := 166660
    upperValue := 678223072849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 21))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 21))) },
  { key := { q := 7, n := 38, r := 22 }
    lowerValue := 35053
    upperValue := 96889010407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 22))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 26 22))) },
  { key := { q := 7, n := 38, r := 23 }
    lowerValue := 8160
    upperValue := 13841287201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 23))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 27 23))) },
  { key := { q := 7, n := 38, r := 24 }
    lowerValue := 2105
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 24))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 29 24))) },
  { key := { q := 7, n := 38, r := 25 }
    lowerValue := 603
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 25))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 30 25))) },
  { key := { q := 7, n := 38, r := 26 }
    lowerValue := 192
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 26))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 31 26))) },
  { key := { q := 7, n := 38, r := 27 }
    lowerValue := 69
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 27))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 32 27))) },
  { key := { q := 7, n := 38, r := 28 }
    lowerValue := 28
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 28))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 33 28))) },
  { key := { q := 7, n := 38, r := 29 }
    lowerValue := 13
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 29))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 34 29))) },
  { key := { q := 7, n := 38, r := 30 }
    lowerValue := 7
    upperValue := 343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 30))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 36 30))) },
  { key := { q := 7, n := 38, r := 31 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 33 32))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 37 31))) },
  { key := { q := 7, n := 38, r := 32 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 34 33)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 38 32)) },
  { key := { q := 7, n := 38, r := 33 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 35 34))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 38 33)) },
  { key := { q := 7, n := 38, r := 34 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 36 35)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 38 34)) },
  { key := { q := 7, n := 38, r := 35 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 37 36))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 38 35)) },
  { key := { q := 7, n := 38, r := 36 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 38 37)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 38 36)) },
  { key := { q := 7, n := 38, r := 37 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 38 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 38 37)) },
  { key := { q := 7, n := 38, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 38 38)) },
  { key := { q := 7, n := 38, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 38 39)) },
  { key := { q := 7, n := 38, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 38 40)) },
  { key := { q := 7, n := 38, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 38 41)) },
  { key := { q := 7, n := 38, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 38 42)) },
  { key := { q := 7, n := 38, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 38 43)) },
  { key := { q := 7, n := 38, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 38 44)) },
  { key := { q := 7, n := 38, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 38 45)) },
  { key := { q := 7, n := 38, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 38 46)) },
  { key := { q := 7, n := 38, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 38 47)) },
  { key := { q := 7, n := 38, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 38 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 38 48)) },
  { key := { q := 7, n := 39, r := 0 }
    lowerValue := 909543680129861140820205019889143
    upperValue := 909543680129861140820205019889143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 39 0)) },
  { key := { q := 7, n := 39, r := 1 }
    lowerValue := 3870398638850472939660446893146
    upperValue := 66293271146491336794475584540025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 1))
    upperTrace := (.lengthenFreeN 36 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 39, r := 2 }
    lowerValue := 33798211888441943473680094382
    upperValue := 9470467306641619542067940648575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 2))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 39, r := 3 }
    lowerValue := 454559333576483564343771797
    upperValue := 1352923900948802791723991521225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 3))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 39, r := 4 }
    lowerValue := 8375308435087318695091866
    upperValue := 193274842992686113103427360175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 4))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 39, r := 5 }
    lowerValue := 198344139855187670330267
    upperValue := 27610691856098016157632480025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 5))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 39, r := 6 }
    lowerValue := 5800416211335123584937
    upperValue := 1104427674243920646305299201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 6))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 8 6))) },
  { key := { q := 7, n := 39, r := 7 }
    lowerValue := 203820015298279803379
    upperValue := 157775382034845806615042743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 7))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 9 7))) },
  { key := { q := 7, n := 39, r := 8 }
    lowerValue := 8437422775846751569
    upperValue := 22539340290692258087863249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 8))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 10 8))) },
  { key := { q := 7, n := 39, r := 9 }
    lowerValue := 405428182594882984
    upperValue := 3219905755813179726837607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 9))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 11 9))) },
  { key := { q := 7, n := 39, r := 10 }
    lowerValue := 22356020115490492
    upperValue := 459986536544739960976801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 10))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 12 10))) },
  { key := { q := 7, n := 39, r := 11 }
    lowerValue := 1401988263054838
    upperValue := 65712362363534280139543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 11))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 13 11))) },
  { key := { q := 7, n := 39, r := 12 }
    lowerValue := 99276655758067
    upperValue := 1341068619663964900807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 12))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 39, r := 13 }
    lowerValue := 7892177923152
    upperValue := 191581231380566414401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 13))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 39, r := 14 }
    lowerValue := 701088481875
    upperValue := 27368747340080916343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 14))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 39, r := 15 }
    lowerValue := 69334611775
    upperValue := 3909821048582988049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 15))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 39, r := 16 }
    lowerValue := 7610875515
    upperValue := 558545864083284007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 16))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 39, r := 17 }
    lowerValue := 925157683
    upperValue := 79792266297612001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 17))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 39, r := 18 }
    lowerValue := 124317188
    upperValue := 1628413597910449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 18))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18))) },
  { key := { q := 7, n := 39, r := 19 }
    lowerValue := 18443410
    upperValue := 232630513987207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 19))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 19))) },
  { key := { q := 7, n := 39, r := 20 }
    lowerValue := 3018634
    upperValue := 33232930569601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 20))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 20))) },
  { key := { q := 7, n := 39, r := 21 }
    lowerValue := 544873
    upperValue := 4747561509943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 21))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 21))) },
  { key := { q := 7, n := 39, r := 22 }
    lowerValue := 108476
    upperValue := 678223072849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 22))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 26 22))) },
  { key := { q := 7, n := 39, r := 23 }
    lowerValue := 23831
    upperValue := 96889010407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 23))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 27 23))) },
  { key := { q := 7, n := 39, r := 24 }
    lowerValue := 5783
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 24))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 29 24))) },
  { key := { q := 7, n := 39, r := 25 }
    lowerValue := 1552
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 25))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 30 25))) },
  { key := { q := 7, n := 39, r := 26 }
    lowerValue := 462
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 26))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 31 26))) },
  { key := { q := 7, n := 39, r := 27 }
    lowerValue := 153
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 27))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 32 27))) },
  { key := { q := 7, n := 39, r := 28 }
    lowerValue := 56
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 28))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 33 28))) },
  { key := { q := 7, n := 39, r := 29 }
    lowerValue := 23
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 29))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 34 29))) },
  { key := { q := 7, n := 39, r := 30 }
    lowerValue := 11
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 39 30))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 36 30))) },
  { key := { q := 7, n := 39, r := 31 }
    lowerValue := 7
    upperValue := 343
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 33 32)))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 37 31))) }]

end CoveringCodes.Database
