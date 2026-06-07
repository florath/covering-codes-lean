import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 76. Do not edit manually.

def precomputedTable_chunk_76 : Array AnyBoundEntry := #[
  { key := { q := 7, n := 44, r := 37 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 39 38))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 44 37)) },
  { key := { q := 7, n := 44, r := 38 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 40 39)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 44 38)) },
  { key := { q := 7, n := 44, r := 39 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 41 40))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 44 39)) },
  { key := { q := 7, n := 44, r := 40 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 42 41)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 44 40)) },
  { key := { q := 7, n := 44, r := 41 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 43 42))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 44 41)) },
  { key := { q := 7, n := 44, r := 42 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 44 43)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 44 42)) },
  { key := { q := 7, n := 44, r := 43 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 44 43))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 44 43)) },
  { key := { q := 7, n := 44, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 44 44)) },
  { key := { q := 7, n := 44, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 44 45)) },
  { key := { q := 7, n := 44, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 44 46)) },
  { key := { q := 7, n := 44, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 44 47)) },
  { key := { q := 7, n := 44, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 44 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 44 48)) },
  { key := { q := 7, n := 45, r := 0 }
    lowerValue := 107006904423598033356356300384937784807
    upperValue := 107006904423598033356356300384937784807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 45 0)) },
  { key := { q := 7, n := 45, r := 1 }
    lowerValue := 394859425917335916444119189612316550
    upperValue := 7799337057113559282533258045549401225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 1))
    upperTrace := (.lengthenFreeN 42 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 45, r := 2 }
    lowerValue := 2979780691810254054644991795966077
    upperValue := 1114191008159079897504751149364200175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 2))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 45, r := 3 }
    lowerValue := 34507770172311021153303067473475
    upperValue := 159170144022725699643535878480600025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 3))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 45, r := 4 }
    lowerValue := 545401316728905768875009736366
    upperValue := 22738592003246528520505125497228575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 4))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 45, r := 5 }
    lowerValue := 11035511781911938229294528313
    upperValue := 3248370286178075502929303642461225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 5))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 45, r := 6 }
    lowerValue := 274579080940770101749564465
    upperValue := 129934811447123020117172145698449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 6))
    upperTrace := (.lengthenFreeN 37 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 8 6))) },
  { key := { q := 7, n := 45, r := 7 }
    lowerValue := 8172769592232095653358707
    upperValue := 18562115921017574302453163671207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 7))
    upperTrace := (.lengthenFreeN 36 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 9 7))) },
  { key := { q := 7, n := 45, r := 8 }
    lowerValue := 285245483965729209792760
    upperValue := 2651730845859653471779023381601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 8))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 10 8))) },
  { key := { q := 7, n := 45, r := 9 }
    lowerValue := 11499166856091449997952
    upperValue := 378818692265664781682717625943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 9))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 11 9))) },
  { key := { q := 7, n := 45, r := 10 }
    lowerValue := 529202581899630898135
    upperValue := 54116956037952111668959660849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 10))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 12 10))) },
  { key := { q := 7, n := 45, r := 11 }
    lowerValue := 27544949296792632917
    upperValue := 7730993719707444524137094407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 11))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 13 11))) },
  { key := { q := 7, n := 45, r := 12 }
    lowerValue := 1609389749175217441
    upperValue := 157775382034845806615042743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 12))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 45, r := 13 }
    lowerValue := 104908639802747091
    upperValue := 22539340290692258087863249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 13))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 45, r := 14 }
    lowerValue := 7590900688901113
    upperValue := 3219905755813179726837607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 14))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 45, r := 15 }
    lowerValue := 607137508649288
    upperValue := 459986536544739960976801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 15))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 45, r := 16 }
    lowerValue := 53491351746076
    upperValue := 65712362363534280139543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 16))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 45, r := 17 }
    lowerValue := 5176487948213
    upperValue := 9387480337647754305649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 17))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 45, r := 18 }
    lowerValue := 548931057717
    upperValue := 191581231380566414401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 18))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18))) },
  { key := { q := 7, n := 45, r := 19 }
    lowerValue := 63665155376
    upperValue := 27368747340080916343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 19))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 19))) },
  { key := { q := 7, n := 45, r := 20 }
    lowerValue := 8063622517
    upperValue := 3909821048582988049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 20))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 20))) },
  { key := { q := 7, n := 45, r := 21 }
    lowerValue := 1114042224
    upperValue := 558545864083284007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 21))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 21))) },
  { key := { q := 7, n := 45, r := 22 }
    lowerValue := 167748210
    upperValue := 79792266297612001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 22))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 26 22))) },
  { key := { q := 7, n := 45, r := 23 }
    lowerValue := 27515301
    upperValue := 11398895185373143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 23))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 27 23))) },
  { key := { q := 7, n := 45, r := 24 }
    lowerValue := 4915335
    upperValue := 232630513987207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 24))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 29 24))) },
  { key := { q := 7, n := 45, r := 25 }
    lowerValue := 956356
    upperValue := 33232930569601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 25))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 30 25))) },
  { key := { q := 7, n := 45, r := 26 }
    lowerValue := 202730
    upperValue := 4747561509943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 26))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 31 26))) },
  { key := { q := 7, n := 45, r := 27 }
    lowerValue := 46851
    upperValue := 678223072849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 27))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 32 27))) },
  { key := { q := 7, n := 45, r := 28 }
    lowerValue := 11814
    upperValue := 96889010407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 28))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 33 28))) },
  { key := { q := 7, n := 45, r := 29 }
    lowerValue := 3255
    upperValue := 13841287201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 29))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 34 29))) },
  { key := { q := 7, n := 45, r := 30 }
    lowerValue := 981
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 30))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 36 30))) },
  { key := { q := 7, n := 45, r := 31 }
    lowerValue := 324
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 31))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 37 31))) },
  { key := { q := 7, n := 45, r := 32 }
    lowerValue := 118
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 32))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 38 32))) },
  { key := { q := 7, n := 45, r := 33 }
    lowerValue := 47
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 33))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 39 33))) },
  { key := { q := 7, n := 45, r := 34 }
    lowerValue := 21
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 34))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 40 34))) },
  { key := { q := 7, n := 45, r := 35 }
    lowerValue := 11
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 35))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 41 35))) },
  { key := { q := 7, n := 45, r := 36 }
    lowerValue := 7
    upperValue := 343
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 38 37))))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 43 36))) },
  { key := { q := 7, n := 45, r := 37 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 39 38)))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 44 37))) },
  { key := { q := 7, n := 45, r := 38 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 40 39))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 45 38)) },
  { key := { q := 7, n := 45, r := 39 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 41 40)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 45 39)) },
  { key := { q := 7, n := 45, r := 40 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 42 41))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 45 40)) },
  { key := { q := 7, n := 45, r := 41 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 43 42)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 45 41)) },
  { key := { q := 7, n := 45, r := 42 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 44 43))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 45 42)) },
  { key := { q := 7, n := 45, r := 43 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 45 44)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 45 43)) },
  { key := { q := 7, n := 45, r := 44 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 45 44))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 45 44)) },
  { key := { q := 7, n := 45, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 45 45)) },
  { key := { q := 7, n := 45, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 45 46)) },
  { key := { q := 7, n := 45, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 45 47)) },
  { key := { q := 7, n := 45, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 45 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 45 48)) },
  { key := { q := 7, n := 46, r := 0 }
    lowerValue := 749048330965186233494494102694564493649
    upperValue := 749048330965186233494494102694564493649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 46 0)) },
  { key := { q := 7, n := 46, r := 1 }
    lowerValue := 2704145599152296871821278349077850158
    upperValue := 54595359399794914977732806318845808575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 1))
    upperTrace := (.lengthenFreeN 43 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 46, r := 2 }
    lowerValue := 19954933291557296360777209225419307
    upperValue := 7799337057113559282533258045549401225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 2))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 46, r := 3 }
    lowerValue := 225860719856756925770943190405358
    upperValue := 1114191008159079897504751149364200175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 3))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 46, r := 4 }
    lowerValue := 3487121812185180335177998436663
    upperValue := 159170144022725699643535878480600025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 4))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 46, r := 5 }
    lowerValue := 68885689190739856399301775407
    upperValue := 22738592003246528520505125497228575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 5))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 46, r := 6 }
    lowerValue := 1672385693090032597807869181
    upperValue := 909543680129861140820205019889143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 6))
    upperTrace := (.lengthenFreeN 38 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 8 6))) },
  { key := { q := 7, n := 46, r := 7 }
    lowerValue := 48540602377216493414584171
    upperValue := 129934811447123020117172145698449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 7))
    upperTrace := (.lengthenFreeN 37 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 9 7))) },
  { key := { q := 7, n := 46, r := 8 }
    lowerValue := 1650983302999365568799399
    upperValue := 18562115921017574302453163671207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 8))
    upperTrace := (.lengthenFreeN 36 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 10 8))) },
  { key := { q := 7, n := 46, r := 9 }
    lowerValue := 64816413908337049454696
    upperValue := 2651730845859653471779023381601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 9))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 11 9))) },
  { key := { q := 7, n := 46, r := 10 }
    lowerValue := 2902862997627712945205
    upperValue := 378818692265664781682717625943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 10))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 12 10))) },
  { key := { q := 7, n := 46, r := 11 }
    lowerValue := 146928842637056276788
    upperValue := 54116956037952111668959660849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 11))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 13 11))) },
  { key := { q := 7, n := 46, r := 12 }
    lowerValue := 8341483096364688203
    upperValue := 1104427674243920646305299201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 12))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 46, r := 13 }
    lowerValue := 527894529397841499
    upperValue := 157775382034845806615042743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 13))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 46, r := 14 }
    lowerValue := 37050898182690400
    upperValue := 22539340290692258087863249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 14))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 46, r := 15 }
    lowerValue := 2871802683546441
    upperValue := 3219905755813179726837607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 15))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 46, r := 16 }
    lowerValue := 244951799218606
    upperValue := 459986536544739960976801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 16))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 46, r := 17 }
    lowerValue := 22924600326274
    upperValue := 65712362363534280139543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 17))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 46, r := 18 }
    lowerValue := 2348355438343
    upperValue := 1341068619663964900807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 18))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18))) },
  { key := { q := 7, n := 46, r := 19 }
    lowerValue := 262787290661
    upperValue := 191581231380566414401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 19))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 19))) },
  { key := { q := 7, n := 46, r := 20 }
    lowerValue := 32072308725
    upperValue := 27368747340080916343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 20))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 20))) },
  { key := { q := 7, n := 46, r := 21 }
    lowerValue := 4263835166
    upperValue := 3909821048582988049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 21))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 21))) },
  { key := { q := 7, n := 46, r := 22 }
    lowerValue := 616897288
    upperValue := 558545864083284007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 22))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 26 22))) },
  { key := { q := 7, n := 46, r := 23 }
    lowerValue := 97072153
    upperValue := 79792266297612001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 23))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 27 23))) },
  { key := { q := 7, n := 46, r := 24 }
    lowerValue := 16607140
    upperValue := 1628413597910449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 24))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 29 24))) },
  { key := { q := 7, n := 46, r := 25 }
    lowerValue := 3088726
    upperValue := 232630513987207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 25))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 30 25))) },
  { key := { q := 7, n := 46, r := 26 }
    lowerValue := 624638
    upperValue := 33232930569601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 26))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 31 26))) },
  { key := { q := 7, n := 46, r := 27 }
    lowerValue := 137415
    upperValue := 4747561509943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 27))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 32 27))) },
  { key := { q := 7, n := 46, r := 28 }
    lowerValue := 32908
    upperValue := 678223072849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 28))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 33 28))) },
  { key := { q := 7, n := 46, r := 29 }
    lowerValue := 8587
    upperValue := 96889010407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 29))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 34 29))) },
  { key := { q := 7, n := 46, r := 30 }
    lowerValue := 2445
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 30))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 36 30))) },
  { key := { q := 7, n := 46, r := 31 }
    lowerValue := 761
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 31))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 37 31))) },
  { key := { q := 7, n := 46, r := 32 }
    lowerValue := 259
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 32))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 38 32))) },
  { key := { q := 7, n := 46, r := 33 }
    lowerValue := 97
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 33))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 39 33))) },
  { key := { q := 7, n := 46, r := 34 }
    lowerValue := 40
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 34))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 40 34))) },
  { key := { q := 7, n := 46, r := 35 }
    lowerValue := 18
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 35))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 41 35))) },
  { key := { q := 7, n := 46, r := 36 }
    lowerValue := 9
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 36))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 43 36))) },
  { key := { q := 7, n := 46, r := 37 }
    lowerValue := 7
    upperValue := 343
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 39 38))))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 44 37))) },
  { key := { q := 7, n := 46, r := 38 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 40 39)))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 45 38))) },
  { key := { q := 7, n := 46, r := 39 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 41 40))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 46 39)) },
  { key := { q := 7, n := 46, r := 40 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 42 41)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 46 40)) },
  { key := { q := 7, n := 46, r := 41 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 43 42))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 46 41)) },
  { key := { q := 7, n := 46, r := 42 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 44 43)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 46 42)) },
  { key := { q := 7, n := 46, r := 43 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 45 44))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 46 43)) },
  { key := { q := 7, n := 46, r := 44 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 46 45)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 46 44)) },
  { key := { q := 7, n := 46, r := 45 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 46 45))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 46 45)) },
  { key := { q := 7, n := 46, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 46 46)) },
  { key := { q := 7, n := 46, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 46 47)) },
  { key := { q := 7, n := 46, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 46 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 46 48)) },
  { key := { q := 7, n := 47, r := 0 }
    lowerValue := 5243338316756303634461458718861951455543
    upperValue := 5243338316756303634461458718861951455543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 47 0)) },
  { key := { q := 7, n := 47, r := 1 }
    lowerValue := 18527697232354429803750737522480393836
    upperValue := 382167515798564404844129644231920660025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 1))
    upperTrace := (.lengthenFreeN 44 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 47, r := 2 }
    lowerValue := 133762042826508422012333445211917433
    upperValue := 54595359399794914977732806318845808575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 2))
    upperTrace := (.lengthenFreeN 42 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 47, r := 3 }
    lowerValue := 1480483560508652529086521443563828
    upperValue := 7799337057113559282533258045549401225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 3))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 47, r := 4 }
    lowerValue := 22340342850352822919679833389810
    upperValue := 1114191008159079897504751149364200175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 4))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 47, r := 5 }
    lowerValue := 431102971046678506676915363960
    upperValue := 159170144022725699643535878480600025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 5))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 47, r := 6 }
    lowerValue := 10218246999555365540531629407
    upperValue := 6366805760909027985741435139224001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 6))
    upperTrace := (.lengthenFreeN 39 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 8 6))) },
  { key := { q := 7, n := 47, r := 7 }
    lowerValue := 289387747738047179751956893
    upperValue := 909543680129861140820205019889143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 7))
    upperTrace := (.lengthenFreeN 38 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 9 7))) },
  { key := { q := 7, n := 47, r := 8 }
    lowerValue := 9598146120404781543150185
    upperValue := 129934811447123020117172145698449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 8))
    upperTrace := (.lengthenFreeN 37 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 10 8))) },
  { key := { q := 7, n := 47, r := 9 }
    lowerValue := 367215259647256909922141
    upperValue := 18562115921017574302453163671207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 9))
    upperTrace := (.lengthenFreeN 36 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 11 9))) },
  { key := { q := 7, n := 47, r := 10 }
    lowerValue := 16016230796656707669012
    upperValue := 2651730845859653471779023381601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 10))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 12 10))) },
  { key := { q := 7, n := 47, r := 11 }
    lowerValue := 788915458435565761161
    upperValue := 378818692265664781682717625943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 11))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 13 11))) },
  { key := { q := 7, n := 47, r := 12 }
    lowerValue := 43554318105431020001
    upperValue := 7730993719707444524137094407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 12))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 47, r := 13 }
    lowerValue := 2678283436220121719
    upperValue := 1104427674243920646305299201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 13))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 47, r := 14 }
    lowerValue := 182501706337533779
    upperValue := 157775382034845806615042743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 14))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 47, r := 15 }
    lowerValue := 13721380977497250
    upperValue := 22539340290692258087863249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 15))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 47, r := 16 }
    lowerValue := 1134206461485828
    upperValue := 3219905755813179726837607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 16))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 47, r := 17 }
    lowerValue := 102766055458228
    upperValue := 459986536544739960976801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 17))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 47, r := 18 }
    lowerValue := 10180966843145
    upperValue := 9387480337647754305649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 18))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18))) },
  { key := { q := 7, n := 47, r := 19 }
    lowerValue := 1100570343019
    upperValue := 1341068619663964900807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 19))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 19))) },
  { key := { q := 7, n := 47, r := 20 }
    lowerValue := 129601550172
    upperValue := 191581231380566414401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 20))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 20))) },
  { key := { q := 7, n := 47, r := 21 }
    lowerValue := 16603103914
    upperValue := 27368747340080916343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 21))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 21))) },
  { key := { q := 7, n := 47, r := 22 }
    lowerValue := 2311604827
    upperValue := 3909821048582988049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 22))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 26 22))) },
  { key := { q := 7, n := 47, r := 23 }
    lowerValue := 349515782
    upperValue := 558545864083284007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 23))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 27 23))) },
  { key := { q := 7, n := 47, r := 24 }
    lowerValue := 57365407
    upperValue := 11398895185373143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 24))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 29 24))) },
  { key := { q := 7, n := 47, r := 25 }
    lowerValue := 10218255
    upperValue := 1628413597910449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 25))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 30 25))) },
  { key := { q := 7, n := 47, r := 26 }
    lowerValue := 1975462
    upperValue := 232630513987207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 26))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 31 26))) },
  { key := { q := 7, n := 47, r := 27 }
    lowerValue := 414623
    upperValue := 33232930569601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 27))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 32 27))) },
  { key := { q := 7, n := 47, r := 28 }
    lowerValue := 94529
    upperValue := 4747561509943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 28))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 33 28))) },
  { key := { q := 7, n := 47, r := 29 }
    lowerValue := 23429
    upperValue := 678223072849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 29))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 34 29))) },
  { key := { q := 7, n := 47, r := 30 }
    lowerValue := 6319
    upperValue := 13841287201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 30))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 36 30))) },
  { key := { q := 7, n := 47, r := 31 }
    lowerValue := 1857
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 31))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 37 31))) },
  { key := { q := 7, n := 47, r := 32 }
    lowerValue := 596
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 32))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 38 32))) },
  { key := { q := 7, n := 47, r := 33 }
    lowerValue := 209
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 33))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 39 33))) },
  { key := { q := 7, n := 47, r := 34 }
    lowerValue := 81
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 34))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 40 34))) },
  { key := { q := 7, n := 47, r := 35 }
    lowerValue := 34
    upperValue := 823543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 35))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 41 35))) },
  { key := { q := 7, n := 47, r := 36 }
    lowerValue := 16
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 36))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 43 36))) },
  { key := { q := 7, n := 47, r := 37 }
    lowerValue := 9
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 37))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 44 37))) },
  { key := { q := 7, n := 47, r := 38 }
    lowerValue := 7
    upperValue := 343
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 40 39))))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 45 38))) },
  { key := { q := 7, n := 47, r := 39 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 41 40)))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 46 39))) },
  { key := { q := 7, n := 47, r := 40 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 42 41))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 47 40)) },
  { key := { q := 7, n := 47, r := 41 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 43 42)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 47 41)) },
  { key := { q := 7, n := 47, r := 42 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 44 43))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 47 42)) },
  { key := { q := 7, n := 47, r := 43 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 45 44)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 47 43)) },
  { key := { q := 7, n := 47, r := 44 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 46 45))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 47 44)) },
  { key := { q := 7, n := 47, r := 45 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 47 46)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 47 45)) },
  { key := { q := 7, n := 47, r := 46 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 47 46))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 47 46)) },
  { key := { q := 7, n := 47, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 47 47)) },
  { key := { q := 7, n := 47, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 47 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 47 48)) },
  { key := { q := 7, n := 48, r := 0 }
    lowerValue := 36703368217294125441230211032033660188801
    upperValue := 36703368217294125441230211032033660188801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 7 48 0)) },
  { key := { q := 7, n := 48, r := 1 }
    lowerValue := 127001274108284171076921145439562838024
    upperValue := 2675172610589950833908907509623444620175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 1))
    upperTrace := (.lengthenFreeN 45 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))) },
  { key := { q := 7, n := 48, r := 2 }
    lowerValue := 897458694214590934328440008607811336
    upperValue := 382167515798564404844129644231920660025
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 2))
    upperTrace := (.lengthenFreeN 43 (.lengthenDummyN 1 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 48, r := 3 }
    lowerValue := 9718027833715212041737140888155145
    upperValue := 54595359399794914977732806318845808575
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 3))
    upperTrace := (.lengthenFreeN 42 (.lengthenDummyN 2 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 48, r := 4 }
    lowerValue := 143399132077652722406480967162974
    upperValue := 7799337057113559282533258045549401225
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 4))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 3 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 48, r := 5 }
    lowerValue := 2704578312353893895763505108064
    upperValue := 1114191008159079897504751149364200175
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 5))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 4 (by decide : 0 < 7) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 7 3 1))))) },
  { key := { q := 7, n := 48, r := 6 }
    lowerValue := 62621926582396666359143720045
    upperValue := 44567640326363195900190045974568007
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 6))
    upperTrace := (.lengthenFreeN 40 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 8 6))) },
  { key := { q := 7, n := 48, r := 7 }
    lowerValue := 1731492003415755454777045276
    upperValue := 6366805760909027985741435139224001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 7))
    upperTrace := (.lengthenFreeN 39 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 9 7))) },
  { key := { q := 7, n := 48, r := 8 }
    lowerValue := 56035766812663401549288459
    upperValue := 909543680129861140820205019889143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 8))
    upperTrace := (.lengthenFreeN 38 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 10 8))) },
  { key := { q := 7, n := 48, r := 9 }
    lowerValue := 2090601222556784970437437
    upperValue := 129934811447123020117172145698449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 9))
    upperTrace := (.lengthenFreeN 37 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 11 9))) },
  { key := { q := 7, n := 48, r := 10 }
    lowerValue := 88859716973301895674920
    upperValue := 18562115921017574302453163671207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 10))
    upperTrace := (.lengthenFreeN 36 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 12 10))) },
  { key := { q := 7, n := 48, r := 11 }
    lowerValue := 4262618932150365251163
    upperValue := 2651730845859653471779023381601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 11))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 13 11))) },
  { key := { q := 7, n := 48, r := 12 }
    lowerValue := 229018520301109014554
    upperValue := 54116956037952111668959660849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 12))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 15 12))) },
  { key := { q := 7, n := 48, r := 13 }
    lowerValue := 13695079244832575394
    upperValue := 7730993719707444524137094407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 13))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 16 13))) },
  { key := { q := 7, n := 48, r := 14 }
    lowerValue := 906777838023541026
    upperValue := 1104427674243920646305299201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 14))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 17 14))) },
  { key := { q := 7, n := 48, r := 15 }
    lowerValue := 66190494309646235
    upperValue := 157775382034845806615042743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 15))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 18 15))) },
  { key := { q := 7, n := 48, r := 16 }
    lowerValue := 5307262184527195
    upperValue := 22539340290692258087863249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 16))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 19 16))) },
  { key := { q := 7, n := 48, r := 17 }
    lowerValue := 466017915633578
    upperValue := 3219905755813179726837607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 17))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 20 17))) },
  { key := { q := 7, n := 48, r := 18 }
    lowerValue := 44697721333311
    upperValue := 65712362363534280139543
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 18))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 22 18))) },
  { key := { q := 7, n := 48, r := 19 }
    lowerValue := 4673038241498
    upperValue := 9387480337647754305649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 19))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 23 19))) },
  { key := { q := 7, n := 48, r := 20 }
    lowerValue := 531604823244
    upperValue := 1341068619663964900807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 20))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 24 20))) },
  { key := { q := 7, n := 48, r := 21 }
    lowerValue := 65711999927
    upperValue := 191581231380566414401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 21))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 25 21))) },
  { key := { q := 7, n := 48, r := 22 }
    lowerValue := 8816364031
    upperValue := 27368747340080916343
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 22))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 26 22))) },
  { key := { q := 7, n := 48, r := 23 }
    lowerValue := 1282826501
    upperValue := 3909821048582988049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 23))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 27 23))) },
  { key := { q := 7, n := 48, r := 24 }
    lowerValue := 202319651
    upperValue := 79792266297612001
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 24))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 29 24))) },
  { key := { q := 7, n := 48, r := 25 }
    lowerValue := 34575291
    upperValue := 11398895185373143
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 25))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 30 25))) },
  { key := { q := 7, n := 48, r := 26 }
    lowerValue := 6402076
    upperValue := 1628413597910449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 26))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 31 26))) },
  { key := { q := 7, n := 48, r := 27 }
    lowerValue := 1284617
    upperValue := 232630513987207
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 27))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 32 27))) },
  { key := { q := 7, n := 48, r := 28 }
    lowerValue := 279444
    upperValue := 33232930569601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 28))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 33 28))) },
  { key := { q := 7, n := 48, r := 29 }
    lowerValue := 65941
    upperValue := 4747561509943
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 29))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 34 29))) },
  { key := { q := 7, n := 48, r := 30 }
    lowerValue := 16894
    upperValue := 96889010407
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 30))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 36 30))) },
  { key := { q := 7, n := 48, r := 31 }
    lowerValue := 4704
    upperValue := 13841287201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 31))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 37 31))) },
  { key := { q := 7, n := 48, r := 32 }
    lowerValue := 1426
    upperValue := 1977326743
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 32))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 38 32))) },
  { key := { q := 7, n := 48, r := 33 }
    lowerValue := 471
    upperValue := 282475249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 33))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 39 33))) },
  { key := { q := 7, n := 48, r := 34 }
    lowerValue := 170
    upperValue := 40353607
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 34))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 40 34))) },
  { key := { q := 7, n := 48, r := 35 }
    lowerValue := 68
    upperValue := 5764801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 35))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 41 35))) },
  { key := { q := 7, n := 48, r := 36 }
    lowerValue := 29
    upperValue := 117649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 36))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 43 36))) },
  { key := { q := 7, n := 48, r := 37 }
    lowerValue := 14
    upperValue := 16807
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 37))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 44 37))) },
  { key := { q := 7, n := 48, r := 38 }
    lowerValue := 8
    upperValue := 2401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 38))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 45 38))) },
  { key := { q := 7, n := 48, r := 39 }
    lowerValue := 7
    upperValue := 343
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 41 40))))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 46 39))) },
  { key := { q := 7, n := 48, r := 40 }
    lowerValue := 7
    upperValue := 49
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 42 41)))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 47 40))) },
  { key := { q := 7, n := 48, r := 41 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 43 42))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 48 41)) },
  { key := { q := 7, n := 48, r := 42 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 44 43)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 48 42)) },
  { key := { q := 7, n := 48, r := 43 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 45 44))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 48 43)) },
  { key := { q := 7, n := 48, r := 44 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 46 45)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 48 44)) },
  { key := { q := 7, n := 48, r := 45 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.lengthBack (by decide : 0 < 7) (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 47 46))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 48 45)) },
  { key := { q := 7, n := 48, r := 46 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.radiusBack (by decide : 46 ≤ 47) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 48 47)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 48 46)) },
  { key := { q := 7, n := 48, r := 47 }
    lowerValue := 7
    upperValue := 7
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 7 48 47))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 7 48 47)) },
  { key := { q := 7, n := 48, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 7 48 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 7 48 48)) },
  { key := { q := 8, n := 0, r := 0 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 0)) },
  { key := { q := 8, n := 0, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 1))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 1)) },
  { key := { q := 8, n := 0, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 2))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 2)) },
  { key := { q := 8, n := 0, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 3))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 3)) },
  { key := { q := 8, n := 0, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 4))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 4)) },
  { key := { q := 8, n := 0, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 5))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 5)) },
  { key := { q := 8, n := 0, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 6))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 6)) },
  { key := { q := 8, n := 0, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 7))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 7)) },
  { key := { q := 8, n := 0, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 8))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 8)) },
  { key := { q := 8, n := 0, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 9))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 9)) },
  { key := { q := 8, n := 0, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 10))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 10)) },
  { key := { q := 8, n := 0, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 11))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 11)) },
  { key := { q := 8, n := 0, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 12))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 12)) },
  { key := { q := 8, n := 0, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 13))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 13)) },
  { key := { q := 8, n := 0, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 14))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 14)) },
  { key := { q := 8, n := 0, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 15))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 15)) },
  { key := { q := 8, n := 0, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 16))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 16)) },
  { key := { q := 8, n := 0, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 17))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 17)) },
  { key := { q := 8, n := 0, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 18))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 18)) },
  { key := { q := 8, n := 0, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 19))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 19)) },
  { key := { q := 8, n := 0, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 20))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 20)) },
  { key := { q := 8, n := 0, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 21))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 21)) },
  { key := { q := 8, n := 0, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 22))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 22)) },
  { key := { q := 8, n := 0, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 23))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 23)) },
  { key := { q := 8, n := 0, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 24))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 24)) },
  { key := { q := 8, n := 0, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 25))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 25)) },
  { key := { q := 8, n := 0, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 26))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 26)) },
  { key := { q := 8, n := 0, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 27))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 27)) },
  { key := { q := 8, n := 0, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 28))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 28)) },
  { key := { q := 8, n := 0, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 29))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 29)) },
  { key := { q := 8, n := 0, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 30))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 30)) },
  { key := { q := 8, n := 0, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 31))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 31)) },
  { key := { q := 8, n := 0, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 32))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 32)) },
  { key := { q := 8, n := 0, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 33))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 33)) },
  { key := { q := 8, n := 0, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 34))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 34)) },
  { key := { q := 8, n := 0, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 35))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 35)) },
  { key := { q := 8, n := 0, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 36))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 36)) },
  { key := { q := 8, n := 0, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 37))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 37)) },
  { key := { q := 8, n := 0, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 38))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 38)) },
  { key := { q := 8, n := 0, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 39))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 39)) },
  { key := { q := 8, n := 0, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 40))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 40)) },
  { key := { q := 8, n := 0, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 0 41))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 0 41)) }]

end CoveringCodes.Database
