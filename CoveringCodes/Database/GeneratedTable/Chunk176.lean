import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 176. Do not edit manually.

def precomputedTable_chunk_176 : Array AnyBoundEntry := #[
  { key := { q := 18, n := 15, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 47)) },
  { key := { q := 18, n := 15, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 15 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 15 48)) },
  { key := { q := 18, n := 16, r := 0 }
    lowerValue := 121439531096594251776
    upperValue := 121439531096594251776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 16 0)) },
  { key := { q := 18, n := 16, r := 1 }
    lowerValue := 444833447240271985
    upperValue := 3373320308238729216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 1))
    upperTrace := (.lengthenFreeN 13 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 16, r := 2 }
    lowerValue := 3474366466300297
    upperValue := 187406683791040512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 2))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 16, r := 3 }
    lowerValue := 43585561974392
    upperValue := 10411482432835584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 3))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 16, r := 4 }
    lowerValue := 784521206950
    upperValue := 578415690713088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 4))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 16, r := 5 }
    lowerValue := 19104088795
    upperValue := 32134205039616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 5))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 16, r := 6 }
    lowerValue := 608260950
    upperValue := 1785233613312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 6))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 16, r := 7 }
    lowerValue := 24814344
    upperValue := 99179645184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 7))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 16, r := 8 }
    lowerValue := 1282741
    upperValue := 5509980288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 8))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 16, r := 9 }
    lowerValue := 83676
    upperValue := 306110016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 9))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 16, r := 10 }
    lowerValue := 6902
    upperValue := 17006112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 10))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 16, r := 11 }
    lowerValue := 726
    upperValue := 944784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 11))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 16, r := 12 }
    lowerValue := 99
    upperValue := 52488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 12))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 16, r := 13 }
    lowerValue := 18
    upperValue := 2916
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 13))
    upperTrace := (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1)))) },
  { key := { q := 18, n := 16, r := 14 }
    lowerValue := 18
    upperValue := 162
    lowerTrace := (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 16 15)))
    upperTrace := (.lengthenDummyN 13 (by decide : 0 < 18) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 16, r := 15 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 16 15))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 16 15)) },
  { key := { q := 18, n := 16, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 16)) },
  { key := { q := 18, n := 16, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 17)) },
  { key := { q := 18, n := 16, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 18)) },
  { key := { q := 18, n := 16, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 19)) },
  { key := { q := 18, n := 16, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 20)) },
  { key := { q := 18, n := 16, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 21)) },
  { key := { q := 18, n := 16, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 22)) },
  { key := { q := 18, n := 16, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 23)) },
  { key := { q := 18, n := 16, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 24)) },
  { key := { q := 18, n := 16, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 25)) },
  { key := { q := 18, n := 16, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 26)) },
  { key := { q := 18, n := 16, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 27)) },
  { key := { q := 18, n := 16, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 28)) },
  { key := { q := 18, n := 16, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 29)) },
  { key := { q := 18, n := 16, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 30)) },
  { key := { q := 18, n := 16, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 31)) },
  { key := { q := 18, n := 16, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 32)) },
  { key := { q := 18, n := 16, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 33)) },
  { key := { q := 18, n := 16, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 34)) },
  { key := { q := 18, n := 16, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 35)) },
  { key := { q := 18, n := 16, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 36)) },
  { key := { q := 18, n := 16, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 37)) },
  { key := { q := 18, n := 16, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 38)) },
  { key := { q := 18, n := 16, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 39)) },
  { key := { q := 18, n := 16, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 40)) },
  { key := { q := 18, n := 16, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 41)) },
  { key := { q := 18, n := 16, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 42)) },
  { key := { q := 18, n := 16, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 43)) },
  { key := { q := 18, n := 16, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 44)) },
  { key := { q := 18, n := 16, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 45)) },
  { key := { q := 18, n := 16, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 46)) },
  { key := { q := 18, n := 16, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 47)) },
  { key := { q := 18, n := 16, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 16 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 16 48)) },
  { key := { q := 18, n := 17, r := 0 }
    lowerValue := 2185911559738696531968
    upperValue := 2185911559738696531968
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 17 0)) },
  { key := { q := 18, n := 17, r := 1 }
    lowerValue := 7537626068064470800
    upperValue := 60719765548297125888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 1))
    upperTrace := (.lengthenFreeN 14 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 17, r := 2 }
    lowerValue := 55208151733563079
    upperValue := 3373320308238729216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 2))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 17, r := 3 }
    lowerValue := 646636366732407
    upperValue := 187406683791040512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 3))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 17, r := 4 }
    lowerValue := 10812757633840
    upperValue := 10411482432835584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 4))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 17, r := 5 }
    lowerValue := 243196960343
    upperValue := 578415690713088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 5))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 17, r := 6 }
    lowerValue := 7103693533
    upperValue := 32134205039616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 6))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 17, r := 7 }
    lowerValue := 263744751
    upperValue := 1785233613312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 7))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 17, r := 8 }
    lowerValue := 12289472
    upperValue := 99179645184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 8))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 17, r := 9 }
    lowerValue := 714178
    upperValue := 5509980288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 9))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 17, r := 10 }
    lowerValue := 51716
    upperValue := 306110016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 10))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 17, r := 11 }
    lowerValue := 4687
    upperValue := 17006112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 11))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 17, r := 12 }
    lowerValue := 537
    upperValue := 944784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 12))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 17, r := 13 }
    lowerValue := 80
    upperValue := 52488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 13))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 17, r := 14 }
    lowerValue := 18
    upperValue := 2916
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 16 15))))
    upperTrace := (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1)))) },
  { key := { q := 18, n := 17, r := 15 }
    lowerValue := 18
    upperValue := 162
    lowerTrace := (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 17 16)))
    upperTrace := (.lengthenDummyN 14 (by decide : 0 < 18) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 17, r := 16 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 17 16))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 17 16)) },
  { key := { q := 18, n := 17, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 17)) },
  { key := { q := 18, n := 17, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 18)) },
  { key := { q := 18, n := 17, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 19)) },
  { key := { q := 18, n := 17, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 20)) },
  { key := { q := 18, n := 17, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 21)) },
  { key := { q := 18, n := 17, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 22)) },
  { key := { q := 18, n := 17, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 23)) },
  { key := { q := 18, n := 17, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 24)) },
  { key := { q := 18, n := 17, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 25)) },
  { key := { q := 18, n := 17, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 26)) },
  { key := { q := 18, n := 17, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 27)) },
  { key := { q := 18, n := 17, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 28)) },
  { key := { q := 18, n := 17, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 29)) },
  { key := { q := 18, n := 17, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 30)) },
  { key := { q := 18, n := 17, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 31)) },
  { key := { q := 18, n := 17, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 32)) },
  { key := { q := 18, n := 17, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 33)) },
  { key := { q := 18, n := 17, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 34)) },
  { key := { q := 18, n := 17, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 35)) },
  { key := { q := 18, n := 17, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 36)) },
  { key := { q := 18, n := 17, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 37)) },
  { key := { q := 18, n := 17, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 38)) },
  { key := { q := 18, n := 17, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 39)) },
  { key := { q := 18, n := 17, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 40)) },
  { key := { q := 18, n := 17, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 41)) },
  { key := { q := 18, n := 17, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 42)) },
  { key := { q := 18, n := 17, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 43)) },
  { key := { q := 18, n := 17, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 44)) },
  { key := { q := 18, n := 17, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 45)) },
  { key := { q := 18, n := 17, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 46)) },
  { key := { q := 18, n := 17, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 47)) },
  { key := { q := 18, n := 17, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 17 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 17 48)) },
  { key := { q := 18, n := 18, r := 0 }
    lowerValue := 39346408075296537575424
    upperValue := 39346408075296537575424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 18 0)) },
  { key := { q := 18, n := 18, r := 1 }
    lowerValue := 128164195685005008390
    upperValue := 1092955779869348265984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 1))
    upperTrace := (.lengthenFreeN 15 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 18, r := 2 }
    lowerValue := 883712336611637265
    upperValue := 60719765548297125888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 2))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 18, r := 3 }
    lowerValue := 9706697289005376
    upperValue := 3373320308238729216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 3))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 18, r := 4 }
    lowerValue := 151549292054591
    upperValue := 187406683791040512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 4))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 18, r := 5 }
    lowerValue := 3166722463747
    upperValue := 10411482432835584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 5))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 18, r := 6 }
    lowerValue := 85440052377
    upperValue := 578415690713088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 6))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 18, r := 7 }
    lowerValue := 2910423981
    upperValue := 32134205039616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 7))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 18, r := 8 }
    lowerValue := 123434164
    upperValue := 1785233613312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 8))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 18, r := 9 }
    lowerValue := 6466656
    upperValue := 99179645184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 9))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 18, r := 10 }
    lowerValue := 417246
    upperValue := 5509980288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 10))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 18, r := 11 }
    lowerValue := 33205
    upperValue := 306110016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 11))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 18, r := 12 }
    lowerValue := 3279
    upperValue := 17006112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 12))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 18, r := 13 }
    lowerValue := 407
    upperValue := 944784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 13))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 18, r := 14 }
    lowerValue := 65
    upperValue := 52488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 14))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 18, r := 15 }
    lowerValue := 18
    upperValue := 2916
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 17 16))))
    upperTrace := (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1)))) },
  { key := { q := 18, n := 18, r := 16 }
    lowerValue := 18
    upperValue := 162
    lowerTrace := (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 18 17)))
    upperTrace := (.lengthenDummyN 15 (by decide : 0 < 18) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 18, r := 17 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 18 17))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 18 17)) },
  { key := { q := 18, n := 18, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 18)) },
  { key := { q := 18, n := 18, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 19)) },
  { key := { q := 18, n := 18, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 20)) },
  { key := { q := 18, n := 18, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 21)) },
  { key := { q := 18, n := 18, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 22)) },
  { key := { q := 18, n := 18, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 23)) },
  { key := { q := 18, n := 18, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 24)) },
  { key := { q := 18, n := 18, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 25)) },
  { key := { q := 18, n := 18, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 26)) },
  { key := { q := 18, n := 18, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 27)) },
  { key := { q := 18, n := 18, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 28)) },
  { key := { q := 18, n := 18, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 29)) },
  { key := { q := 18, n := 18, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 30)) },
  { key := { q := 18, n := 18, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 31)) },
  { key := { q := 18, n := 18, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 32)) },
  { key := { q := 18, n := 18, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 33)) },
  { key := { q := 18, n := 18, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 34)) },
  { key := { q := 18, n := 18, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 35)) },
  { key := { q := 18, n := 18, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 36)) },
  { key := { q := 18, n := 18, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 37)) },
  { key := { q := 18, n := 18, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 38)) },
  { key := { q := 18, n := 18, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 39)) },
  { key := { q := 18, n := 18, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 40)) },
  { key := { q := 18, n := 18, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 41)) },
  { key := { q := 18, n := 18, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 42)) },
  { key := { q := 18, n := 18, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 43)) },
  { key := { q := 18, n := 18, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 44)) },
  { key := { q := 18, n := 18, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 45)) },
  { key := { q := 18, n := 18, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 46)) },
  { key := { q := 18, n := 18, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 47)) },
  { key := { q := 18, n := 18, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 18 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 18 48)) },
  { key := { q := 18, n := 19, r := 0 }
    lowerValue := 708235345355337676357632
    upperValue := 708235345355337676357632
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 19 0)) },
  { key := { q := 18, n := 19, r := 1 }
    lowerValue := 2185911559738696531968
    upperValue := 19673204037648268787712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 1))
    upperTrace := (.lengthenFreeN 16 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 19, r := 2 }
    lowerValue := 14237889659958942492
    upperValue := 1092955779869348265984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 2))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 19, r := 3 }
    lowerValue := 147228807625775954
    upperValue := 60719765548297125888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 3))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 19, r := 4 }
    lowerValue := 2155719274157932
    upperValue := 3373320308238729216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 4))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 19, r := 5 }
    lowerValue := 42060139910950
    upperValue := 187406683791040512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 5))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 19, r := 6 }
    lowerValue := 1054330892918
    upperValue := 10411482432835584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 6))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 19, r := 7 }
    lowerValue := 33175903444
    upperValue := 578415690713088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 7))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 19, r := 8 }
    lowerValue := 1291011290
    upperValue := 32134205039616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 8))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 19, r := 9 }
    lowerValue := 61566943
    upperValue := 1785233613312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 9))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 19, r := 10 }
    lowerValue := 3581704
    upperValue := 99179645184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 10))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 19, r := 11 }
    lowerValue := 254024
    upperValue := 5509980288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 11))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 19, r := 12 }
    lowerValue := 22033
    upperValue := 306110016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 12))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 19, r := 13 }
    lowerValue := 2354
    upperValue := 17006112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 13))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 19, r := 14 }
    lowerValue := 314
    upperValue := 944784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 14))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 19, r := 15 }
    lowerValue := 54
    upperValue := 52488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 15))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 19, r := 16 }
    lowerValue := 18
    upperValue := 2916
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 18 17))))
    upperTrace := (.lengthenDummyN 15 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1)))) },
  { key := { q := 18, n := 19, r := 17 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 19 18)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17)) },
  { key := { q := 18, n := 19, r := 18 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 19 18))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 18)) },
  { key := { q := 18, n := 19, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 19)) },
  { key := { q := 18, n := 19, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 20)) },
  { key := { q := 18, n := 19, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 21)) },
  { key := { q := 18, n := 19, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 22)) },
  { key := { q := 18, n := 19, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 23)) },
  { key := { q := 18, n := 19, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 24)) },
  { key := { q := 18, n := 19, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 25)) },
  { key := { q := 18, n := 19, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 26)) },
  { key := { q := 18, n := 19, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 27)) },
  { key := { q := 18, n := 19, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 28)) },
  { key := { q := 18, n := 19, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 29)) },
  { key := { q := 18, n := 19, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 30)) },
  { key := { q := 18, n := 19, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 31)) },
  { key := { q := 18, n := 19, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 32)) },
  { key := { q := 18, n := 19, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 33)) },
  { key := { q := 18, n := 19, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 34)) },
  { key := { q := 18, n := 19, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 35)) },
  { key := { q := 18, n := 19, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 36)) },
  { key := { q := 18, n := 19, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 37)) },
  { key := { q := 18, n := 19, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 38)) },
  { key := { q := 18, n := 19, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 39)) },
  { key := { q := 18, n := 19, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 40)) },
  { key := { q := 18, n := 19, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 41)) },
  { key := { q := 18, n := 19, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 42)) },
  { key := { q := 18, n := 19, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 43)) },
  { key := { q := 18, n := 19, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 44)) },
  { key := { q := 18, n := 19, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 45)) },
  { key := { q := 18, n := 19, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 46)) },
  { key := { q := 18, n := 19, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 47)) },
  { key := { q := 18, n := 19, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 19 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 19 48)) },
  { key := { q := 18, n := 20, r := 0 }
    lowerValue := 12748236216396078174437376
    upperValue := 12748236216396078174437376
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 20 0)) },
  { key := { q := 18, n := 20, r := 1 }
    lowerValue := 37384856939577941860521
    upperValue := 354117672677668838178816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 1))
    upperTrace := (.lengthenFreeN 17 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 20, r := 2 }
    lowerValue := 230733130918826413539
    upperValue := 19673204037648268787712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 2))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 20, r := 3 }
    lowerValue := 2253903145203813421
    upperValue := 1092955779869348265984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 3))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 20, r := 4 }
    lowerValue := 31069364752633505
    upperValue := 60719765548297125888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 4))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 20, r := 5 }
    lowerValue := 568514194070180
    upperValue := 3373320308238729216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 5))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 20, r := 6 }
    lowerValue := 13307192144894
    upperValue := 187406683791040512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 6))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 20, r := 7 }
    lowerValue := 389051826178
    upperValue := 10411482432835584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 7))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 20, r := 8 }
    lowerValue := 13985941483
    upperValue := 578415690713088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 8))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 20, r := 9 }
    lowerValue := 612027266
    upperValue := 32134205039616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 9))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 20, r := 10 }
    lowerValue := 32413807
    upperValue := 1785233613312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 10))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 20, r := 11 }
    lowerValue := 2073018
    upperValue := 99179645184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 11))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 20, r := 12 }
    lowerValue := 160270
    upperValue := 5509980288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 12))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 20, r := 13 }
    lowerValue := 15045
    upperValue := 306110016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 13))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 20, r := 14 }
    lowerValue := 1729
    upperValue := 17006112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 14))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 20, r := 15 }
    lowerValue := 247
    upperValue := 944784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 15))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 20, r := 16 }
    lowerValue := 45
    upperValue := 52488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 16))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 15 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 20, r := 17 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 19 18))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 20, r := 18 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 20 19)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18)) },
  { key := { q := 18, n := 20, r := 19 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 20 19))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 19)) },
  { key := { q := 18, n := 20, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 20)) },
  { key := { q := 18, n := 20, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 21)) },
  { key := { q := 18, n := 20, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 22)) },
  { key := { q := 18, n := 20, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 23)) },
  { key := { q := 18, n := 20, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 24)) },
  { key := { q := 18, n := 20, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 25)) },
  { key := { q := 18, n := 20, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 26)) },
  { key := { q := 18, n := 20, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 27)) },
  { key := { q := 18, n := 20, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 28)) },
  { key := { q := 18, n := 20, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 29)) },
  { key := { q := 18, n := 20, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 30)) },
  { key := { q := 18, n := 20, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 31)) },
  { key := { q := 18, n := 20, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 32)) },
  { key := { q := 18, n := 20, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 33)) },
  { key := { q := 18, n := 20, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 34)) },
  { key := { q := 18, n := 20, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 35)) },
  { key := { q := 18, n := 20, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 36)) },
  { key := { q := 18, n := 20, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 37)) },
  { key := { q := 18, n := 20, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 38)) },
  { key := { q := 18, n := 20, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 39)) },
  { key := { q := 18, n := 20, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 40)) },
  { key := { q := 18, n := 20, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 41)) },
  { key := { q := 18, n := 20, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 42)) },
  { key := { q := 18, n := 20, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 43)) },
  { key := { q := 18, n := 20, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 44)) },
  { key := { q := 18, n := 20, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 45)) },
  { key := { q := 18, n := 20, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 46)) },
  { key := { q := 18, n := 20, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 47)) },
  { key := { q := 18, n := 20, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 20 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 20 48)) },
  { key := { q := 18, n := 21, r := 0 }
    lowerValue := 229468251895129407139872768
    upperValue := 229468251895129407139872768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 21 0)) },
  { key := { q := 18, n := 21, r := 1 }
    lowerValue := 640972770656786053463332
    upperValue := 6374118108198039087218688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 1))
    upperTrace := (.lengthenFreeN 18 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 21, r := 2 }
    lowerValue := 3758816863699538185361
    upperValue := 354117672677668838178816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 2))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) }]

end CoveringCodes.Database
