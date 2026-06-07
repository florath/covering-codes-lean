import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 178. Do not edit manually.

def precomputedTable_chunk_178 : Array AnyBoundEntry := #[
  { key := { q := 18, n := 26, r := 8 }
    lowerValue := 38805302774058461
    upperValue := 19673204037648268787712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 8))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 26, r := 9 }
    lowerValue := 1135937882760746
    upperValue := 1092955779869348265984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 9))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 26, r := 10 }
    lowerValue := 39097446007307
    upperValue := 60719765548297125888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 10))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 26, r := 11 }
    lowerValue := 1571681218467
    upperValue := 3373320308238729216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 11))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 26, r := 12 }
    lowerValue := 73457568757
    upperValue := 187406683791040512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 12))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 26, r := 13 }
    lowerValue := 3981003422
    upperValue := 10411482432835584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 13))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 26, r := 14 }
    lowerValue := 249902699
    upperValue := 578415690713088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 14))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 26, r := 15 }
    lowerValue := 18179665
    upperValue := 32134205039616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 15))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 26, r := 16 }
    lowerValue := 1535799
    upperValue := 1785233613312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 16))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 15 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 26, r := 17 }
    lowerValue := 151233
    upperValue := 11019960576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 17))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 26, r := 18 }
    lowerValue := 17458
    upperValue := 612220032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 18))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 26, r := 19 }
    lowerValue := 2382
    upperValue := 34012224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 19))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 26, r := 20 }
    lowerValue := 388
    upperValue := 1889568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 20))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20))) },
  { key := { q := 18, n := 26, r := 21 }
    lowerValue := 77
    upperValue := 104976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 21))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 21))) },
  { key := { q := 18, n := 26, r := 22 }
    lowerValue := 19
    upperValue := 5832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 22))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 24 22))) },
  { key := { q := 18, n := 26, r := 23 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 25 24))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 25 23))) },
  { key := { q := 18, n := 26, r := 24 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 26 25)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 26 24)) },
  { key := { q := 18, n := 26, r := 25 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 26 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 26 25)) },
  { key := { q := 18, n := 26, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 26 26)) },
  { key := { q := 18, n := 26, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 26 27)) },
  { key := { q := 18, n := 26, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 26 28)) },
  { key := { q := 18, n := 26, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 26 29)) },
  { key := { q := 18, n := 26, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 26 30)) },
  { key := { q := 18, n := 26, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 26 31)) },
  { key := { q := 18, n := 26, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 26 32)) },
  { key := { q := 18, n := 26, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 26 33)) },
  { key := { q := 18, n := 26, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 26 34)) },
  { key := { q := 18, n := 26, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 26 35)) },
  { key := { q := 18, n := 26, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 26 36)) },
  { key := { q := 18, n := 26, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 26 37)) },
  { key := { q := 18, n := 26, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 26 38)) },
  { key := { q := 18, n := 26, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 26 39)) },
  { key := { q := 18, n := 26, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 26 40)) },
  { key := { q := 18, n := 26, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 26 41)) },
  { key := { q := 18, n := 26, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 26 42)) },
  { key := { q := 18, n := 26, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 26 43)) },
  { key := { q := 18, n := 26, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 26 44)) },
  { key := { q := 18, n := 26, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 26 45)) },
  { key := { q := 18, n := 26, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 26 46)) },
  { key := { q := 18, n := 26, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 26 47)) },
  { key := { q := 18, n := 26, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 26 48)) },
  { key := { q := 18, n := 27, r := 0 }
    lowerValue := 7804725584345565904628551916716032
    upperValue := 7804725584345565904628551916716032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 27 0)) },
  { key := { q := 18, n := 27, r := 1 }
    lowerValue := 16966794748577317183975112862427
    upperValue := 216797932898487941795237553242112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 1))
    upperTrace := (.lengthenFreeN 24 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 27, r := 2 }
    lowerValue := 76592759343522172981369315859
    upperValue := 12044329605471552321957641846784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 2))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 27, r := 3 }
    lowerValue := 539282540668070939921919916
    upperValue := 669129422526197351219868991488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 3))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 27, r := 4 }
    lowerValue := 5272515697469896652929856
    upperValue := 37173856807010963956659388416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 4))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 27, r := 5 }
    lowerValue := 67221084080103898096522
    upperValue := 2065214267056164664258854912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 5))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 27, r := 6 }
    lowerValue := 1074873080497867316241
    upperValue := 114734125947564703569936384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 6))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 27, r := 7 }
    lowerValue := 20999970637566966207
    upperValue := 6374118108198039087218688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 7))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 27, r := 8 }
    lowerValue := 492152162343158866
    upperValue := 354117672677668838178816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 8))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 27, r := 9 }
    lowerValue := 13652764699431504
    upperValue := 19673204037648268787712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 9))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 27, r := 10 }
    lowerValue := 443976073619188
    upperValue := 1092955779869348265984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 10))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 27, r := 11 }
    lowerValue := 16805587385569
    upperValue := 60719765548297125888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 11))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 27, r := 12 }
    lowerValue := 736806742185
    upperValue := 3373320308238729216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 12))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 27, r := 13 }
    lowerValue := 37296495558
    upperValue := 187406683791040512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 13))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 27, r := 14 }
    lowerValue := 2176058192
    upperValue := 10411482432835584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 14))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 27, r := 15 }
    lowerValue := 146302223
    upperValue := 578415690713088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 15))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 27, r := 16 }
    lowerValue := 11347606
    upperValue := 32134205039616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 16))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 15 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 27, r := 17 }
    lowerValue := 1018014
    upperValue := 198359290368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 17))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 27, r := 18 }
    lowerValue := 106075
    upperValue := 11019960576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 18))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 27, r := 19 }
    lowerValue := 12915
    upperValue := 612220032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 19))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 27, r := 20 }
    lowerValue := 1853
    upperValue := 34012224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 20))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20))) },
  { key := { q := 18, n := 27, r := 21 }
    lowerValue := 317
    upperValue := 1889568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 21))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 21))) },
  { key := { q := 18, n := 27, r := 22 }
    lowerValue := 66
    upperValue := 104976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 22))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 24 22))) },
  { key := { q := 18, n := 27, r := 23 }
    lowerValue := 18
    upperValue := 5832
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 25 24)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 25 23))) },
  { key := { q := 18, n := 27, r := 24 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 26 25))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 26 24))) },
  { key := { q := 18, n := 27, r := 25 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 27 26)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 27 25)) },
  { key := { q := 18, n := 27, r := 26 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 27 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 27 26)) },
  { key := { q := 18, n := 27, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 27 27)) },
  { key := { q := 18, n := 27, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 27 28)) },
  { key := { q := 18, n := 27, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 27 29)) },
  { key := { q := 18, n := 27, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 27 30)) },
  { key := { q := 18, n := 27, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 27 31)) },
  { key := { q := 18, n := 27, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 27 32)) },
  { key := { q := 18, n := 27, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 27 33)) },
  { key := { q := 18, n := 27, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 27 34)) },
  { key := { q := 18, n := 27, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 27 35)) },
  { key := { q := 18, n := 27, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 27 36)) },
  { key := { q := 18, n := 27, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 27 37)) },
  { key := { q := 18, n := 27, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 27 38)) },
  { key := { q := 18, n := 27, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 27 39)) },
  { key := { q := 18, n := 27, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 27 40)) },
  { key := { q := 18, n := 27, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 27 41)) },
  { key := { q := 18, n := 27, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 27 42)) },
  { key := { q := 18, n := 27, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 27 43)) },
  { key := { q := 18, n := 27, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 27 44)) },
  { key := { q := 18, n := 27, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 27 45)) },
  { key := { q := 18, n := 27, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 27 46)) },
  { key := { q := 18, n := 27, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 27 47)) },
  { key := { q := 18, n := 27, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 27 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 27 48)) },
  { key := { q := 18, n := 28, r := 0 }
    lowerValue := 140485060518220186283313934500888576
    upperValue := 140485060518220186283313934500888576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 28 0)) },
  { key := { q := 18, n := 28, r := 1 }
    lowerValue := 294517946579077958665228374215700
    upperValue := 3902362792172782952314275958358016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 1))
    upperTrace := (.lengthenFreeN 25 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 28, r := 2 }
    lowerValue := 1280407773660169945800763172294
    upperValue := 216797932898487941795237553242112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 2))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 28, r := 3 }
    lowerValue := 8669398374078604832738656398
    upperValue := 12044329605471552321957641846784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 3))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 28, r := 4 }
    lowerValue := 81379418319771193534459431
    upperValue := 669129422526197351219868991488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 4))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 28, r := 5 }
    lowerValue := 994444797231133222654555
    upperValue := 37173856807010963956659388416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 5))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 28, r := 6 }
    lowerValue := 15212477201348182380725
    upperValue := 2065214267056164664258854912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 6))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 28, r := 7 }
    lowerValue := 283755315681060119083
    upperValue := 114734125947564703569936384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 7))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 28, r := 8 }
    lowerValue := 6334867745446121519
    upperValue := 6374118108198039087218688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 8))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 28, r := 9 }
    lowerValue := 166995399297657206
    upperValue := 354117672677668838178816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 9))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 28, r := 10 }
    lowerValue := 5146470442989651
    upperValue := 19673204037648268787712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 10))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 28, r := 11 }
    lowerValue := 184059673126710
    upperValue := 1092955779869348265984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 11))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 28, r := 12 }
    lowerValue := 7598860140489
    upperValue := 60719765548297125888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 12))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 28, r := 13 }
    lowerValue := 360832032182
    upperValue := 3373320308238729216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 13))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 28, r := 14 }
    lowerValue := 19664535403
    upperValue := 187406683791040512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 14))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 28, r := 15 }
    lowerValue := 1228882236
    upperValue := 10411482432835584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 15))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 28, r := 16 }
    lowerValue := 88096180
    upperValue := 578415690713088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 16))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 15 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 28, r := 17 }
    lowerValue := 7256841
    upperValue := 3570467226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 17))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 28, r := 18 }
    lowerValue := 688955
    upperValue := 198359290368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 18))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 28, r := 19 }
    lowerValue := 75727
    upperValue := 11019960576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 19))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 28, r := 20 }
    lowerValue := 9698
    upperValue := 612220032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 20))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20))) },
  { key := { q := 18, n := 28, r := 21 }
    lowerValue := 1459
    upperValue := 34012224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 21))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 21))) },
  { key := { q := 18, n := 28, r := 22 }
    lowerValue := 261
    upperValue := 1889568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 22))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 24 22))) },
  { key := { q := 18, n := 28, r := 23 }
    lowerValue := 57
    upperValue := 104976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 23))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 25 23))) },
  { key := { q := 18, n := 28, r := 24 }
    lowerValue := 18
    upperValue := 5832
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 26 25)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 26 24))) },
  { key := { q := 18, n := 28, r := 25 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 27 26))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 27 25))) },
  { key := { q := 18, n := 28, r := 26 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 28 27)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 28 26)) },
  { key := { q := 18, n := 28, r := 27 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 28 27))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 28 27)) },
  { key := { q := 18, n := 28, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 28 28)) },
  { key := { q := 18, n := 28, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 28 29)) },
  { key := { q := 18, n := 28, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 28 30)) },
  { key := { q := 18, n := 28, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 28 31)) },
  { key := { q := 18, n := 28, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 28 32)) },
  { key := { q := 18, n := 28, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 28 33)) },
  { key := { q := 18, n := 28, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 28 34)) },
  { key := { q := 18, n := 28, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 28 35)) },
  { key := { q := 18, n := 28, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 28 36)) },
  { key := { q := 18, n := 28, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 28 37)) },
  { key := { q := 18, n := 28, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 28 38)) },
  { key := { q := 18, n := 28, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 28 39)) },
  { key := { q := 18, n := 28, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 28 40)) },
  { key := { q := 18, n := 28, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 28 41)) },
  { key := { q := 18, n := 28, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 28 42)) },
  { key := { q := 18, n := 28, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 28 43)) },
  { key := { q := 18, n := 28, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 28 44)) },
  { key := { q := 18, n := 28, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 28 45)) },
  { key := { q := 18, n := 28, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 28 46)) },
  { key := { q := 18, n := 28, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 28 47)) },
  { key := { q := 18, n := 28, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 28 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 28 48)) },
  { key := { q := 18, n := 29, r := 0 }
    lowerValue := 2528731089327963353099650821015994368
    upperValue := 2528731089327963353099650821015994368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 29 0)) },
  { key := { q := 18, n := 29, r := 1 }
    lowerValue := 5118888844793448083197673726753026
    upperValue := 70242530259110093141656967250444288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 1))
    upperTrace := (.lengthenFreeN 26 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 29, r := 2 }
    lowerValue := 21461206923040052899986852199953
    upperValue := 3902362792172782952314275958358016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 2))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 29, r := 3 }
    lowerValue := 139941388224966192624965941817
    upperValue := 216797932898487941795237553242112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 3))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 29, r := 4 }
    lowerValue := 1263243026279208458773754823
    upperValue := 12044329605471552321957641846784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 4))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 29, r := 5 }
    lowerValue := 14821105997915284635742807
    upperValue := 669129422526197351219868991488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 5))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 29, r := 6 }
    lowerValue := 217311309971532806961944
    upperValue := 37173856807010963956659388416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 6))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 29, r := 7 }
    lowerValue := 3877917317224509830779
    upperValue := 2065214267056164664258854912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 7))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 29, r := 8 }
    lowerValue := 82657051708194412589
    upperValue := 114734125947564703569936384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 8))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 29, r := 9 }
    lowerValue := 2075705766534760125
    upperValue := 6374118108198039087218688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 9))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 29, r := 10 }
    lowerValue := 60788808126534954
    upperValue := 354117672677668838178816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 10))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 29, r := 11 }
    lowerValue := 2060379331176380
    upperValue := 19673204037648268787712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 11))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 29, r := 12 }
    lowerValue := 80371482229952
    upperValue := 1092955779869348265984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 12))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 29, r := 13 }
    lowerValue := 3593854350480
    upperValue := 60719765548297125888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 13))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 29, r := 14 }
    lowerValue := 183736647812
    upperValue := 3373320308238729216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 14))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 29, r := 15 }
    lowerValue := 10725470278
    upperValue := 187406683791040512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 15))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 29, r := 16 }
    lowerValue := 714712850
    upperValue := 10411482432835584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 16))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 15 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 29, r := 17 }
    lowerValue := 54418161
    upperValue := 64268410079232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 17))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 29, r := 18 }
    lowerValue := 4744220
    upperValue := 3570467226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 18))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 29, r := 19 }
    lowerValue := 475180
    upperValue := 198359290368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 19))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 29, r := 20 }
    lowerValue := 54943
    upperValue := 11019960576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 20))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20))) },
  { key := { q := 18, n := 29, r := 21 }
    lowerValue := 7382
    upperValue := 612220032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 21))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 21))) },
  { key := { q := 18, n := 29, r := 22 }
    lowerValue := 1163
    upperValue := 34012224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 22))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 24 22))) },
  { key := { q := 18, n := 29, r := 23 }
    lowerValue := 217
    upperValue := 1889568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 23))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 25 23))) },
  { key := { q := 18, n := 29, r := 24 }
    lowerValue := 49
    upperValue := 104976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 24))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 26 24))) },
  { key := { q := 18, n := 29, r := 25 }
    lowerValue := 18
    upperValue := 5832
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 27 26)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 27 25))) },
  { key := { q := 18, n := 29, r := 26 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 28 27))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 28 26))) },
  { key := { q := 18, n := 29, r := 27 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 29 28)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 29 27)) },
  { key := { q := 18, n := 29, r := 28 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 29 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 29 28)) },
  { key := { q := 18, n := 29, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 29 29)) },
  { key := { q := 18, n := 29, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 29 30)) },
  { key := { q := 18, n := 29, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 29 31)) },
  { key := { q := 18, n := 29, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 29 32)) },
  { key := { q := 18, n := 29, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 29 33)) },
  { key := { q := 18, n := 29, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 29 34)) },
  { key := { q := 18, n := 29, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 29 35)) },
  { key := { q := 18, n := 29, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 29 36)) },
  { key := { q := 18, n := 29, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 29 37)) },
  { key := { q := 18, n := 29, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 29 38)) },
  { key := { q := 18, n := 29, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 29 39)) },
  { key := { q := 18, n := 29, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 29 40)) },
  { key := { q := 18, n := 29, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 29 41)) },
  { key := { q := 18, n := 29, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 29 42)) },
  { key := { q := 18, n := 29, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 29 43)) },
  { key := { q := 18, n := 29, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 29 44)) },
  { key := { q := 18, n := 29, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 29 45)) },
  { key := { q := 18, n := 29, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 29 46)) },
  { key := { q := 18, n := 29, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 29 47)) },
  { key := { q := 18, n := 29, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 29 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 29 48)) },
  { key := { q := 18, n := 30, r := 0 }
    lowerValue := 45517159607903340355793714778287898624
    upperValue := 45517159607903340355793714778287898624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 30 0)) },
  { key := { q := 18, n := 30, r := 1 }
    lowerValue := 89074676336405754120927034791170057
    upperValue := 1264365544663981676549825410507997184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 1))
    upperTrace := (.lengthenFreeN 27 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 30, r := 2 }
    lowerValue := 360600507089691033192794786955841
    upperValue := 70242530259110093141656967250444288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 2))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 30, r := 3 }
    lowerValue := 2267580630818490282710706845716
    upperValue := 3902362792172782952314275958358016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 3))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 30, r := 4 }
    lowerValue := 19713222018452371387373235257
    upperValue := 216797932898487941795237553242112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 4))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 30, r := 5 }
    lowerValue := 222417800720068407737564766
    upperValue := 12044329605471552321957641846784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 5))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 30, r := 6 }
    lowerValue := 3131139305568567156556642
    upperValue := 669129422526197351219868991488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 6))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 30, r := 7 }
    lowerValue := 53555622805148826538130
    upperValue := 37173856807010963956659388416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 7))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 30, r := 8 }
    lowerValue := 1092101948243257207701
    upperValue := 2065214267056164664258854912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 8))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 30, r := 9 }
    lowerValue := 26184372561269073706
    upperValue := 114734125947564703569936384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 9))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 30, r := 10 }
    lowerValue := 730508155396405065
    upperValue := 6374118108198039087218688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 10))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 30, r := 11 }
    lowerValue := 23529280672724830
    upperValue := 354117672677668838178816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 11))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 30, r := 12 }
    lowerValue := 869853822436359
    upperValue := 19673204037648268787712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 12))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 30, r := 13 }
    lowerValue := 36751899678190
    upperValue := 1092955779869348265984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 13))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 30, r := 14 }
    lowerValue := 1769412209060
    upperValue := 60719765548297125888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 14))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 30, r := 15 }
    lowerValue := 96899363041
    upperValue := 3373320308238729216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 15))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 30, r := 16 }
    lowerValue := 6031817032
    upperValue := 187406683791040512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 16))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 15 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 30, r := 17 }
    lowerValue := 426924773
    upperValue := 1156831381426176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 17))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 30, r := 18 }
    lowerValue := 34405080
    upperValue := 64268410079232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 18))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 30, r := 19 }
    lowerValue := 3164681
    upperValue := 3570467226624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 19))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 30, r := 20 }
    lowerValue := 333477
    upperValue := 198359290368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 20))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20))) },
  { key := { q := 18, n := 30, r := 21 }
    lowerValue := 40460
    upperValue := 11019960576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 21))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 21))) },
  { key := { q := 18, n := 30, r := 22 }
    lowerValue := 5690
    upperValue := 612220032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 22))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 24 22))) },
  { key := { q := 18, n := 30, r := 23 }
    lowerValue := 936
    upperValue := 34012224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 23))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 25 23))) },
  { key := { q := 18, n := 30, r := 24 }
    lowerValue := 182
    upperValue := 1889568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 24))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 26 24))) },
  { key := { q := 18, n := 30, r := 25 }
    lowerValue := 43
    upperValue := 104976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 25))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 27 25))) },
  { key := { q := 18, n := 30, r := 26 }
    lowerValue := 18
    upperValue := 5832
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 28 27)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 28 26))) },
  { key := { q := 18, n := 30, r := 27 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 29 28))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 29 27))) },
  { key := { q := 18, n := 30, r := 28 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 30 29)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 30 28)) },
  { key := { q := 18, n := 30, r := 29 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 30 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 30 29)) },
  { key := { q := 18, n := 30, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 30 30)) },
  { key := { q := 18, n := 30, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 30 31)) },
  { key := { q := 18, n := 30, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 30 32)) },
  { key := { q := 18, n := 30, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 30 33)) },
  { key := { q := 18, n := 30, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 30 34)) },
  { key := { q := 18, n := 30, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 30 35)) },
  { key := { q := 18, n := 30, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 30 36)) },
  { key := { q := 18, n := 30, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 30 37)) },
  { key := { q := 18, n := 30, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 30 38)) },
  { key := { q := 18, n := 30, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 30 39)) },
  { key := { q := 18, n := 30, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 30 40)) },
  { key := { q := 18, n := 30, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 30 41)) },
  { key := { q := 18, n := 30, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 30 42)) },
  { key := { q := 18, n := 30, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 30 43)) },
  { key := { q := 18, n := 30, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 30 44)) },
  { key := { q := 18, n := 30, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 30 45)) },
  { key := { q := 18, n := 30, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 30 46)) },
  { key := { q := 18, n := 30, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 30 47)) },
  { key := { q := 18, n := 30, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 30 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 30 48)) },
  { key := { q := 18, n := 31, r := 0 }
    lowerValue := 819308872942260126404286866009182175232
    upperValue := 819308872942260126404286866009182175232
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 31 0)) },
  { key := { q := 18, n := 31, r := 1 }
    lowerValue := 1551721350269432057583876640168905635
    upperValue := 22758579803951670177896857389143949312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 1))
    upperTrace := (.lengthenFreeN 28 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 31, r := 2 }
    lowerValue := 6072868240586601190428549257737818
    upperValue := 1264365544663981676549825410507997184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 2))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 31, r := 3 }
    lowerValue := 36874498306224522819737857966767
    upperValue := 70242530259110093141656967250444288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 3))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 31, r := 4 }
    lowerValue := 309148997798444942293190074164
    upperValue := 3902362792172782952314275958358016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 4))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 31, r := 5 }
    lowerValue := 3359206446522193617379409648
    upperValue := 216797932898487941795237553242112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 5))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 31, r := 6 }
    lowerValue := 45476905041410545536077146
    upperValue := 12044329605471552321957641846784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 6))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 31, r := 7 }
    lowerValue := 746841192381218832872890
    upperValue := 669129422526197351219868991488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 7))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 31, r := 8 }
    lowerValue := 14597446021100501157479
    upperValue := 37173856807010963956659388416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 8))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 31, r := 9 }
    lowerValue := 334839922318756053661
    upperValue := 2065214267056164664258854912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 9))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 31, r := 10 }
    lowerValue := 8919049262462206559
    upperValue := 114734125947564703569936384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 10))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 31, r := 11 }
    lowerValue := 273673899670262594
    upperValue := 6374118108198039087218688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 11))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 31, r := 12 }
    lowerValue := 9614755589365785
    upperValue := 354117672677668838178816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 31 12))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) }]

end CoveringCodes.Database
