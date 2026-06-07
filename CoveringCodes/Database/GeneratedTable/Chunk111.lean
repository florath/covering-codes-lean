import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 111. Do not edit manually.

def precomputedTable_chunk_111 : Array AnyBoundEntry := #[
  { key := { q := 11, n := 27, r := 16 }
    lowerValue := 87407
    upperValue := 25937424601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 16))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 27, r := 17 }
    lowerValue := 13195
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 17))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 27, r := 18 }
    lowerValue := 2308
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 18))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 27, r := 19 }
    lowerValue := 471
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 19))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 27, r := 20 }
    lowerValue := 113
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 20))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 20))) },
  { key := { q := 11, n := 27, r := 21 }
    lowerValue := 32
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 21))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 21))) },
  { key := { q := 11, n := 27, r := 22 }
    lowerValue := 11
    upperValue := 1331
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 22))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 25 22))) },
  { key := { q := 11, n := 27, r := 23 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 25 24)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 26 23))) },
  { key := { q := 11, n := 27, r := 24 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 26 25))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 27 24)) },
  { key := { q := 11, n := 27, r := 25 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 27 26)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 27 25)) },
  { key := { q := 11, n := 27, r := 26 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 27 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 27 26)) },
  { key := { q := 11, n := 27, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 27 27)) },
  { key := { q := 11, n := 27, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 27 28)) },
  { key := { q := 11, n := 27, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 27 29)) },
  { key := { q := 11, n := 27, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 27 30)) },
  { key := { q := 11, n := 27, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 27 31)) },
  { key := { q := 11, n := 27, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 27 32)) },
  { key := { q := 11, n := 27, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 27 33)) },
  { key := { q := 11, n := 27, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 27 34)) },
  { key := { q := 11, n := 27, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 27 35)) },
  { key := { q := 11, n := 27, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 27 36)) },
  { key := { q := 11, n := 27, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 27 37)) },
  { key := { q := 11, n := 27, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 27 38)) },
  { key := { q := 11, n := 27, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 27 39)) },
  { key := { q := 11, n := 27, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 27 40)) },
  { key := { q := 11, n := 27, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 27 41)) },
  { key := { q := 11, n := 27, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 27 42)) },
  { key := { q := 11, n := 27, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 27 43)) },
  { key := { q := 11, n := 27, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 27 44)) },
  { key := { q := 11, n := 27, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 27 45)) },
  { key := { q := 11, n := 27, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 27 46)) },
  { key := { q := 11, n := 27, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 27 47)) },
  { key := { q := 11, n := 27, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 27 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 27 48)) },
  { key := { q := 11, n := 28, r := 0 }
    lowerValue := 144209936106499234037676064081
    upperValue := 144209936106499234037676064081
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 28 0)) },
  { key := { q := 11, n := 28, r := 1 }
    lowerValue := 513202619596082683408099873
    upperValue := 6609170625466907044551645311
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 1))
    upperTrace := (.lengthenFreeN 25 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 28, r := 2 }
    lowerValue := 3786926186457793493807308
    upperValue := 600833693224264276777422301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 2))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 28, r := 3 }
    lowerValue := 43514306411490616565400
    upperValue := 54621244838569479707038391
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 3))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 28, r := 4 }
    lowerValue := 693103467995993186531
    upperValue := 4965567712597225427912581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 4))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 28, r := 5 }
    lowerValue := 14369172510517695054
    upperValue := 451415246599747766173871
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 5))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 28, r := 6 }
    lowerValue := 372851242615412425
    upperValue := 41037749690886160561261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 6))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 5 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 28, r := 7 }
    lowerValue := 11794214408193207
    upperValue := 3730704517353287323751
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 7))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 6 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 28, r := 8 }
    lowerValue := 446418318332294
    upperValue := 339154956123026120341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 8))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 7 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 28, r := 9 }
    lowerValue := 19946221194124
    upperValue := 30832268738456920031
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 9))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 8 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 28, r := 10 }
    lowerValue := 1041519972167
    upperValue := 505447028499293771
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 10))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 28, r := 11 }
    lowerValue := 63087299779
    upperValue := 45949729863572161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 11))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 28, r := 12 }
    lowerValue := 4409060465
    upperValue := 4177248169415651
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 12))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 28, r := 13 }
    lowerValue := 354211696
    upperValue := 379749833583241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 13))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 28, r := 14 }
    lowerValue := 32635623
    upperValue := 34522712143931
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 14))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 28, r := 15 }
    lowerValue := 3444976
    upperValue := 3138428376721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 15))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 28, r := 16 }
    lowerValue := 416698
    upperValue := 285311670611
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 16))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 28, r := 17 }
    lowerValue := 57835
    upperValue := 25937424601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 17))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 28, r := 18 }
    lowerValue := 9235
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 18))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 28, r := 19 }
    lowerValue := 1703
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 19))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 28, r := 20 }
    lowerValue := 365
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 20))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 20))) },
  { key := { q := 11, n := 28, r := 21 }
    lowerValue := 92
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 21))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 21))) },
  { key := { q := 11, n := 28, r := 22 }
    lowerValue := 27
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 22))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 25 22))) },
  { key := { q := 11, n := 28, r := 23 }
    lowerValue := 11
    upperValue := 1331
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 25 24))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 26 23))) },
  { key := { q := 11, n := 28, r := 24 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 26 25)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 27 24))) },
  { key := { q := 11, n := 28, r := 25 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 27 26))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 28 25)) },
  { key := { q := 11, n := 28, r := 26 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 28 27)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 28 26)) },
  { key := { q := 11, n := 28, r := 27 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 28 27))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 28 27)) },
  { key := { q := 11, n := 28, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 28 28)) },
  { key := { q := 11, n := 28, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 28 29)) },
  { key := { q := 11, n := 28, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 28 30)) },
  { key := { q := 11, n := 28, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 28 31)) },
  { key := { q := 11, n := 28, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 28 32)) },
  { key := { q := 11, n := 28, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 28 33)) },
  { key := { q := 11, n := 28, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 28 34)) },
  { key := { q := 11, n := 28, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 28 35)) },
  { key := { q := 11, n := 28, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 28 36)) },
  { key := { q := 11, n := 28, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 28 37)) },
  { key := { q := 11, n := 28, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 28 38)) },
  { key := { q := 11, n := 28, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 28 39)) },
  { key := { q := 11, n := 28, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 28 40)) },
  { key := { q := 11, n := 28, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 28 41)) },
  { key := { q := 11, n := 28, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 28 42)) },
  { key := { q := 11, n := 28, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 28 43)) },
  { key := { q := 11, n := 28, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 28 44)) },
  { key := { q := 11, n := 28, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 28 45)) },
  { key := { q := 11, n := 28, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 28 46)) },
  { key := { q := 11, n := 28, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 28 47)) },
  { key := { q := 11, n := 28, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 28 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 28 48)) },
  { key := { q := 11, n := 29, r := 0 }
    lowerValue := 1586309297171491574414436704891
    upperValue := 1586309297171491574414436704891
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 29 0)) },
  { key := { q := 11, n := 29, r := 1 }
    lowerValue := 5451234698183819843348579742
    upperValue := 72700876880135977490068098421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 1))
    upperTrace := (.lengthenFreeN 26 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 29, r := 2 }
    lowerValue := 38793604880572536118325224
    upperValue := 6609170625466907044551645311
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 2))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 29, r := 3 }
    lowerValue := 429325059161824144315607
    upperValue := 600833693224264276777422301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 3))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 29, r := 4 }
    lowerValue := 6576605020714491127025
    upperValue := 54621244838569479707038391
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 4))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 29, r := 5 }
    lowerValue := 130919198861545630626
    upperValue := 4965567712597225427912581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 5))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 29, r := 6 }
    lowerValue := 3256394521793299434
    upperValue := 451415246599747766173871
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 6))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 5 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 29, r := 7 }
    lowerValue := 98559523796663143
    upperValue := 41037749690886160561261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 7))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 6 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 29, r := 8 }
    lowerValue := 3562262926448486
    upperValue := 3730704517353287323751
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 8))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 7 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 29, r := 9 }
    lowerValue := 151650249786487
    upperValue := 339154956123026120341
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 9))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 8 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 29, r := 10 }
    lowerValue := 7526599819095
    upperValue := 5559917313492231481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 10))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 29, r := 11 }
    lowerValue := 432179232266
    upperValue := 505447028499293771
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 11))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 29, r := 12 }
    lowerValue := 28547982238
    upperValue := 45949729863572161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 12))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 29, r := 13 }
    lowerValue := 2160579207
    upperValue := 4177248169415651
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 13))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 29, r := 14 }
    lowerValue := 186842645
    upperValue := 379749833583241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 14))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 29, r := 15 }
    lowerValue := 18434988
    upperValue := 34522712143931
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 15))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 29, r := 16 }
    lowerValue := 2074453
    upperValue := 3138428376721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 16))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 29, r := 17 }
    lowerValue := 266415
    upperValue := 285311670611
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 17))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 29, r := 18 }
    lowerValue := 39119
    upperValue := 25937424601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 18))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 29, r := 19 }
    lowerValue := 6587
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 19))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 29, r := 20 }
    lowerValue := 1277
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 20))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 20))) },
  { key := { q := 11, n := 29, r := 21 }
    lowerValue := 287
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 21))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 21))) },
  { key := { q := 11, n := 29, r := 22 }
    lowerValue := 76
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 22))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 25 22))) },
  { key := { q := 11, n := 29, r := 23 }
    lowerValue := 24
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 23))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 26 23))) },
  { key := { q := 11, n := 29, r := 24 }
    lowerValue := 11
    upperValue := 1331
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 26 25))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 27 24))) },
  { key := { q := 11, n := 29, r := 25 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 27 26)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 28 25))) },
  { key := { q := 11, n := 29, r := 26 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 28 27))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 29 26)) },
  { key := { q := 11, n := 29, r := 27 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 29 28)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 29 27)) },
  { key := { q := 11, n := 29, r := 28 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 29 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 29 28)) },
  { key := { q := 11, n := 29, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 29 29)) },
  { key := { q := 11, n := 29, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 29 30)) },
  { key := { q := 11, n := 29, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 29 31)) },
  { key := { q := 11, n := 29, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 29 32)) },
  { key := { q := 11, n := 29, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 29 33)) },
  { key := { q := 11, n := 29, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 29 34)) },
  { key := { q := 11, n := 29, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 29 35)) },
  { key := { q := 11, n := 29, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 29 36)) },
  { key := { q := 11, n := 29, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 29 37)) },
  { key := { q := 11, n := 29, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 29 38)) },
  { key := { q := 11, n := 29, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 29 39)) },
  { key := { q := 11, n := 29, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 29 40)) },
  { key := { q := 11, n := 29, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 29 41)) },
  { key := { q := 11, n := 29, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 29 42)) },
  { key := { q := 11, n := 29, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 29 43)) },
  { key := { q := 11, n := 29, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 29 44)) },
  { key := { q := 11, n := 29, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 29 45)) },
  { key := { q := 11, n := 29, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 29 46)) },
  { key := { q := 11, n := 29, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 29 47)) },
  { key := { q := 11, n := 29, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 29 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 29 48)) },
  { key := { q := 11, n := 30, r := 0 }
    lowerValue := 17449402268886407318558803753801
    upperValue := 17449402268886407318558803753801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 30 0)) },
  { key := { q := 11, n := 30, r := 1 }
    lowerValue := 57971436109257167171291706824
    upperValue := 799709645681495752390749082631
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 1))
    upperTrace := (.lengthenFreeN 27 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 30, r := 2 }
    lowerValue := 398379084242058567579708312
    upperValue := 72700876880135977490068098421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 2))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 30, r := 3 }
    lowerValue := 4252009848646756340904153
    upperValue := 6609170625466907044551645311
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 3))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 30, r := 4 }
    lowerValue := 62732927632674727743731
    upperValue := 600833693224264276777422301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 4))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 30, r := 5 }
    lowerValue := 1201025394737254197523
    upperValue := 54621244838569479707038391
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 5))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 30, r := 6 }
    lowerValue := 28685343728118420786
    upperValue := 4965567712597225427912581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 6))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 5 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 30, r := 7 }
    lowerValue := 832259346892414909
    upperValue := 451415246599747766173871
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 7))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 6 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 30, r := 8 }
    lowerValue := 28782101242644440
    upperValue := 41037749690886160561261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 8))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 7 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 30, r := 9 }
    lowerValue := 1170047874265627
    upperValue := 3730704517353287323751
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 9))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 8 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 30, r := 10 }
    lowerValue := 55331067213587
    upperValue := 61159090448414546291
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 10))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 30, r := 11 }
    lowerValue := 3019923802082
    upperValue := 5559917313492231481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 11))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 30, r := 12 }
    lowerValue := 189109709729
    upperValue := 505447028499293771
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 12))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 30, r := 13 }
    lowerValue := 13528033619
    upperValue := 45949729863572161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 13))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 30, r := 14 }
    lowerValue := 1102150766
    upperValue := 4177248169415651
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 14))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 30, r := 15 }
    lowerValue := 102073339
    upperValue := 379749833583241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 15))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 30, r := 16 }
    lowerValue := 10736929
    upperValue := 34522712143931
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 16))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 30, r := 17 }
    lowerValue := 1282935
    upperValue := 3138428376721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 17))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 30, r := 18 }
    lowerValue := 174330
    upperValue := 285311670611
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 18))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 30, r := 19 }
    lowerValue := 26997
    upperValue := 25937424601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 19))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 30, r := 20 }
    lowerValue := 4780
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 20))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 20))) },
  { key := { q := 11, n := 30, r := 21 }
    lowerValue := 972
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 21))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 21))) },
  { key := { q := 11, n := 30, r := 22 }
    lowerValue := 229
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 22))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 25 22))) },
  { key := { q := 11, n := 30, r := 23 }
    lowerValue := 63
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 23))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 26 23))) },
  { key := { q := 11, n := 30, r := 24 }
    lowerValue := 20
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 24))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 27 24))) },
  { key := { q := 11, n := 30, r := 25 }
    lowerValue := 11
    upperValue := 1331
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 27 26))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 28 25))) },
  { key := { q := 11, n := 30, r := 26 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 28 27)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 29 26))) },
  { key := { q := 11, n := 30, r := 27 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 29 28))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 30 27)) },
  { key := { q := 11, n := 30, r := 28 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 30 29)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 30 28)) },
  { key := { q := 11, n := 30, r := 29 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 30 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 30 29)) },
  { key := { q := 11, n := 30, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 30 30)) },
  { key := { q := 11, n := 30, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 30 31)) },
  { key := { q := 11, n := 30, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 30 32)) },
  { key := { q := 11, n := 30, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 30 33)) },
  { key := { q := 11, n := 30, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 30 34)) },
  { key := { q := 11, n := 30, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 30 35)) },
  { key := { q := 11, n := 30, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 30 36)) },
  { key := { q := 11, n := 30, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 30 37)) },
  { key := { q := 11, n := 30, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 30 38)) },
  { key := { q := 11, n := 30, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 30 39)) },
  { key := { q := 11, n := 30, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 30 40)) },
  { key := { q := 11, n := 30, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 30 41)) },
  { key := { q := 11, n := 30, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 30 42)) },
  { key := { q := 11, n := 30, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 30 43)) },
  { key := { q := 11, n := 30, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 30 44)) },
  { key := { q := 11, n := 30, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 30 45)) },
  { key := { q := 11, n := 30, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 30 46)) },
  { key := { q := 11, n := 30, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 30 47)) },
  { key := { q := 11, n := 30, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 30 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 30 48)) },
  { key := { q := 11, n := 31, r := 0 }
    lowerValue := 191943424957750480504146841291811
    upperValue := 191943424957750480504146841291811
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 31 0)) },
  { key := { q := 11, n := 31, r := 1 }
    lowerValue := 617181430732316657569603991292
    upperValue := 8796806102496453276298239908941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 1))
    upperTrace := (.lengthenFreeN 28 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 31, r := 2 }
    lowerValue := 4100391466914837976205311600
    upperValue := 799709645681495752390749082631
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 2))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 31, r := 3 }
    lowerValue := 42261429407289400748764500
    upperValue := 72700876880135977490068098421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 3))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 31, r := 4 }
    lowerValue := 601341946575660991829602
    upperValue := 6609170625466907044551645311
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 4))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 31, r := 5 }
    lowerValue := 11088399147366082522256
    upperValue := 600833693224264276777422301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 5))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 31, r := 6 }
    lowerValue := 254704940255453103368
    upperValue := 54621244838569479707038391
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 6))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 5 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 31, r := 7 }
    lowerValue := 7096048028935182160
    upperValue := 4965567712597225427912581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 7))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 6 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 31, r := 8 }
    lowerValue := 235247318117940571
    upperValue := 451415246599747766173871
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 8))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 7 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 31, r := 9 }
    lowerValue := 9150622323698329
    upperValue := 41037749690886160561261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 9))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 8 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 31, r := 10 }
    lowerValue := 413227981375185
    upperValue := 672749994932560009201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 10))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 31, r := 11 }
    lowerValue := 21490063323924
    upperValue := 61159090448414546291
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 11))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 31, r := 12 }
    lowerValue := 1279177217624
    upperValue := 5559917313492231481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 12))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 31, r := 13 }
    lowerValue := 86750835833
    upperValue := 505447028499293771
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 13))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 31, r := 14 }
    lowerValue := 6680746369
    upperValue := 45949729863572161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 14))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 31, r := 15 }
    lowerValue := 582934444
    upperValue := 4177248169415651
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 15))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 31, r := 16 }
    lowerValue := 57559895
    upperValue := 379749833583241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 16))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 31, r := 17 }
    lowerValue := 6429636
    upperValue := 34522712143931
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 17))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 31, r := 18 }
    lowerValue := 812955
    upperValue := 3138428376721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 18))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 31, r := 19 }
    lowerValue := 116520
    upperValue := 285311670611
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 19))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 31, r := 20 }
    lowerValue := 18977
    upperValue := 2357947691
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 20))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 20))) },
  { key := { q := 11, n := 31, r := 21 }
    lowerValue := 3525
    upperValue := 214358881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 21))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 24 21))) },
  { key := { q := 11, n := 31, r := 22 }
    lowerValue := 750
    upperValue := 19487171
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 22))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 25 22))) },
  { key := { q := 11, n := 31, r := 23 }
    lowerValue := 184
    upperValue := 1771561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 23))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 26 23))) },
  { key := { q := 11, n := 31, r := 24 }
    lowerValue := 53
    upperValue := 161051
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 24))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 27 24))) },
  { key := { q := 11, n := 31, r := 25 }
    lowerValue := 18
    upperValue := 14641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 25))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 28 25))) },
  { key := { q := 11, n := 31, r := 26 }
    lowerValue := 11
    upperValue := 1331
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 28 27))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 29 26))) },
  { key := { q := 11, n := 31, r := 27 }
    lowerValue := 11
    upperValue := 121
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 29 28)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 30 27))) },
  { key := { q := 11, n := 31, r := 28 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.lengthBack (by decide : 0 < 11) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 30 29))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 31 28)) },
  { key := { q := 11, n := 31, r := 29 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 31 30)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 31 29)) },
  { key := { q := 11, n := 31, r := 30 }
    lowerValue := 11
    upperValue := 11
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 11 31 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 31 30)) },
  { key := { q := 11, n := 31, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 31 31)) },
  { key := { q := 11, n := 31, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 31 32)) },
  { key := { q := 11, n := 31, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 31 33)) },
  { key := { q := 11, n := 31, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 31 34)) },
  { key := { q := 11, n := 31, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 31 35)) },
  { key := { q := 11, n := 31, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 31 36)) },
  { key := { q := 11, n := 31, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 31 37)) },
  { key := { q := 11, n := 31, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 31 38)) },
  { key := { q := 11, n := 31, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 31 39)) },
  { key := { q := 11, n := 31, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 31 40)) },
  { key := { q := 11, n := 31, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 31 41)) },
  { key := { q := 11, n := 31, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 31 42)) },
  { key := { q := 11, n := 31, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 31 43)) },
  { key := { q := 11, n := 31, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 31 44)) },
  { key := { q := 11, n := 31, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 31 45)) },
  { key := { q := 11, n := 31, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 31 46)) },
  { key := { q := 11, n := 31, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 31 47)) },
  { key := { q := 11, n := 31, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 31 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 11 31 48)) },
  { key := { q := 11, n := 32, r := 0 }
    lowerValue := 2111377674535255285545615254209921
    upperValue := 2111377674535255285545615254209921
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 11 32 0)) },
  { key := { q := 11, n := 32, r := 1 }
    lowerValue := 6577500543723536715095374623707
    upperValue := 96764867127460986039280638998351
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 1))
    upperTrace := (.lengthenFreeN 29 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))) },
  { key := { q := 11, n := 32, r := 2 }
    lowerValue := 42294378608907179053817336476
    upperValue := 8796806102496453276298239908941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 2))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 1 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 32, r := 3 }
    lowerValue := 421439315018191960620859143
    upperValue := 799709645681495752390749082631
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 3))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 2 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 32, r := 4 }
    lowerValue := 5790785036085881178053889
    upperValue := 72700876880135977490068098421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 4))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 3 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 32, r := 5 }
    lowerValue := 102982931238676555034851
    upperValue := 6609170625466907044551645311
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 5))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 4 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 32, r := 6 }
    lowerValue := 2278397395744221472809
    upperValue := 600833693224264276777422301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 6))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 5 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 32, r := 7 }
    lowerValue := 61048493722784121660
    upperValue := 54621244838569479707038391
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 7))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 6 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 32, r := 8 }
    lowerValue := 1943435225484497312
    upperValue := 4965567712597225427912581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 8))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 7 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 32, r := 9 }
    lowerValue := 72468236672120339
    upperValue := 451415246599747766173871
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 9))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 8 (by decide : 0 < 11) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 11 3 1))))) },
  { key := { q := 11, n := 32, r := 10 }
    lowerValue := 3131410942595316
    upperValue := 7400249944258160101211
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 10))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 12 10))) },
  { key := { q := 11, n := 32, r := 11 }
    lowerValue := 155514727531766
    upperValue := 672749994932560009201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 11))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 13 11))) },
  { key := { q := 11, n := 32, r := 12 }
    lowerValue := 8820577693409
    upperValue := 61159090448414546291
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 12))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 14 12))) },
  { key := { q := 11, n := 32, r := 13 }
    lowerValue := 568628510178
    upperValue := 5559917313492231481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 13))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 15 13))) },
  { key := { q := 11, n := 32, r := 14 }
    lowerValue := 41516242795
    upperValue := 505447028499293771
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 14))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 16 14))) },
  { key := { q := 11, n := 32, r := 15 }
    lowerValue := 3424340360
    upperValue := 45949729863572161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 15))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 17 15))) },
  { key := { q := 11, n := 32, r := 16 }
    lowerValue := 318583910
    upperValue := 4177248169415651
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 16))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 18 16))) },
  { key := { q := 11, n := 32, r := 17 }
    lowerValue := 33408057
    upperValue := 379749833583241
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 17))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 19 17))) },
  { key := { q := 11, n := 32, r := 18 }
    lowerValue := 3949193
    upperValue := 34522712143931
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 18))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 20 18))) },
  { key := { q := 11, n := 32, r := 19 }
    lowerValue := 526743
    upperValue := 3138428376721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 19))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 21 19))) },
  { key := { q := 11, n := 32, r := 20 }
    lowerValue := 79412
    upperValue := 25937424601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 11 32 20))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 11 23 20))) }]

end CoveringCodes.Database
