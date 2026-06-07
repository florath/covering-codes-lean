import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 104. Do not edit manually.

def precomputedTable_chunk_104 : Array AnyBoundEntry := #[
  { key := { q := 10, n := 40, r := 30 }
    lowerValue := 198
    upperValue := 10000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 30))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 34 30))) },
  { key := { q := 10, n := 40, r := 31 }
    lowerValue := 65
    upperValue := 1000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 31))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 35 31))) },
  { key := { q := 10, n := 40, r := 32 }
    lowerValue := 24
    upperValue := 100000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 32))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 36 32))) },
  { key := { q := 10, n := 40, r := 33 }
    lowerValue := 11
    upperValue := 10000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 33))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 37 33))) },
  { key := { q := 10, n := 40, r := 34 }
    lowerValue := 10
    upperValue := 1000
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 36 35)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 38 34))) },
  { key := { q := 10, n := 40, r := 35 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 37 36))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 39 35))) },
  { key := { q := 10, n := 40, r := 36 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 38 37)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 40 36)) },
  { key := { q := 10, n := 40, r := 37 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 39 38))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 40 37)) },
  { key := { q := 10, n := 40, r := 38 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 40 39)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 40 38)) },
  { key := { q := 10, n := 40, r := 39 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 40 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 40 39)) },
  { key := { q := 10, n := 40, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 40 40)) },
  { key := { q := 10, n := 40, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 40 41)) },
  { key := { q := 10, n := 40, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 40 42)) },
  { key := { q := 10, n := 40, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 40 43)) },
  { key := { q := 10, n := 40, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 40 44)) },
  { key := { q := 10, n := 40, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 40 45)) },
  { key := { q := 10, n := 40, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 40 46)) },
  { key := { q := 10, n := 40, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 40 47)) },
  { key := { q := 10, n := 40, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 40 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 40 48)) },
  { key := { q := 10, n := 41, r := 0 }
    lowerValue := 100000000000000000000000000000000000000000
    upperValue := 100000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 41 0)) },
  { key := { q := 10, n := 41, r := 1 }
    lowerValue := 270270270270270270270270270270270270271
    upperValue := 5000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 1))
    upperTrace := (.lengthenFreeN 38 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))) },
  { key := { q := 10, n := 41, r := 2 }
    lowerValue := 1497230124270100314418326096721066028
    upperValue := 500000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 2))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 41, r := 3 }
    lowerValue := 12758470667638011566829507280621287
    upperValue := 50000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 3))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 41, r := 4 }
    lowerValue := 148749669775733097872522722999555
    upperValue := 5000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 4))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 41, r := 5 }
    lowerValue := 2226007775893657243231804670061
    upperValue := 500000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 5))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 41, r := 6 }
    lowerValue := 41076391931453894226423221917
    upperValue := 50000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 6))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 5 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 41, r := 7 }
    lowerValue := 909380997595872107774215200
    upperValue := 5000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 7))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 6 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 41, r := 8 }
    lowerValue := 23679828514611149099707852
    upperValue := 500000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 8))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 7 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 41, r := 9 }
    lowerValue := 714524167202932392913027
    upperValue := 10000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 9))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 41, r := 10 }
    lowerValue := 24697546396748309289247
    upperValue := 1000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 10))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 41, r := 11 }
    lowerValue := 969027463977480033851
    upperValue := 100000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 11))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 41, r := 12 }
    lowerValue := 42844723443036374881
    upperValue := 10000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 12))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 41, r := 13 }
    lowerValue := 2122156430494682719
    upperValue := 1000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 13))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 41, r := 14 }
    lowerValue := 117191591696901523
    upperValue := 100000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 14))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) },
  { key := { q := 10, n := 41, r := 15 }
    lowerValue := 7187291840932356
    upperValue := 10000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 15))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 15))) },
  { key := { q := 10, n := 41, r := 16 }
    lowerValue := 487999991893924
    upperValue := 1000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 16))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 18 16))) },
  { key := { q := 10, n := 41, r := 17 }
    lowerValue := 36590899653759
    upperValue := 100000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 17))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 19 17))) },
  { key := { q := 10, n := 41, r := 18 }
    lowerValue := 3023985371448
    upperValue := 1000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 18))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 21 18))) },
  { key := { q := 10, n := 41, r := 19 }
    lowerValue := 275048735568
    upperValue := 100000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 19))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 22 19))) },
  { key := { q := 10, n := 41, r := 20 }
    lowerValue := 27506143037
    upperValue := 10000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 20))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 23 20))) },
  { key := { q := 10, n := 41, r := 21 }
    lowerValue := 3022666879
    upperValue := 1000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 21))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 24 21))) },
  { key := { q := 10, n := 41, r := 22 }
    lowerValue := 364936805
    upperValue := 100000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 22))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 25 22))) },
  { key := { q := 10, n := 41, r := 23 }
    lowerValue := 48418369
    upperValue := 10000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 23))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 26 23))) },
  { key := { q := 10, n := 41, r := 24 }
    lowerValue := 7063800
    upperValue := 1000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 24))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 27 24))) },
  { key := { q := 10, n := 41, r := 25 }
    lowerValue := 1134356
    upperValue := 100000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 25))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 28 25))) },
  { key := { q := 10, n := 41, r := 26 }
    lowerValue := 200805
    upperValue := 10000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 26))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 29 26))) },
  { key := { q := 10, n := 41, r := 27 }
    lowerValue := 39259
    upperValue := 100000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 27))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 31 27))) },
  { key := { q := 10, n := 41, r := 28 }
    lowerValue := 8498
    upperValue := 10000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 28))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 32 28))) },
  { key := { q := 10, n := 41, r := 29 }
    lowerValue := 2042
    upperValue := 1000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 29))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 33 29))) },
  { key := { q := 10, n := 41, r := 30 }
    lowerValue := 547
    upperValue := 100000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 30))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 34 30))) },
  { key := { q := 10, n := 41, r := 31 }
    lowerValue := 164
    upperValue := 10000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 31))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 35 31))) },
  { key := { q := 10, n := 41, r := 32 }
    lowerValue := 56
    upperValue := 1000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 32))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 36 32))) },
  { key := { q := 10, n := 41, r := 33 }
    lowerValue := 21
    upperValue := 100000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 33))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 37 33))) },
  { key := { q := 10, n := 41, r := 34 }
    lowerValue := 10
    upperValue := 10000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 34))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 38 34))) },
  { key := { q := 10, n := 41, r := 35 }
    lowerValue := 10
    upperValue := 1000
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 37 36)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 39 35))) },
  { key := { q := 10, n := 41, r := 36 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 38 37))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 41 36)) },
  { key := { q := 10, n := 41, r := 37 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 39 38)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 41 37)) },
  { key := { q := 10, n := 41, r := 38 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 40 39))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 41 38)) },
  { key := { q := 10, n := 41, r := 39 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 41 40)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 41 39)) },
  { key := { q := 10, n := 41, r := 40 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 41 40))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 41 40)) },
  { key := { q := 10, n := 41, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 41 41)) },
  { key := { q := 10, n := 41, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 41 42)) },
  { key := { q := 10, n := 41, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 41 43)) },
  { key := { q := 10, n := 41, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 41 44)) },
  { key := { q := 10, n := 41, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 41 45)) },
  { key := { q := 10, n := 41, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 41 46)) },
  { key := { q := 10, n := 41, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 41 47)) },
  { key := { q := 10, n := 41, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 41 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 41 48)) },
  { key := { q := 10, n := 42, r := 0 }
    lowerValue := 1000000000000000000000000000000000000000000
    upperValue := 1000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 42 0)) },
  { key := { q := 10, n := 42, r := 1 }
    lowerValue := 2638522427440633245382585751978891820581
    upperValue := 50000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 1))
    upperTrace := (.lengthenFreeN 39 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))) },
  { key := { q := 10, n := 42, r := 2 }
    lowerValue := 14261266400456360524814603536794067314
    upperValue := 5000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 2))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 42, r := 3 }
    lowerValue := 118496890641589564689822539056575156
    upperValue := 500000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 3))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 42, r := 4 }
    lowerValue := 1346236072699817344035892161482579
    upperValue := 50000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 4))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 42, r := 5 }
    lowerValue := 19617880374947606561213918083316
    upperValue := 5000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 5))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 42, r := 6 }
    lowerValue := 352261560629419082613867167707
    upperValue := 500000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 6))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 5 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 42, r := 7 }
    lowerValue := 7582920784176500726854252333
    upperValue := 50000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 7))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 6 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 42, r := 8 }
    lowerValue := 191839612896189087068507035
    upperValue := 5000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 8))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 7 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 42, r := 9 }
    lowerValue := 5619230464299246136014016
    upperValue := 100000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 9))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 42, r := 10 }
    lowerValue := 188374834534616884528823
    upperValue := 10000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 10))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 42, r := 11 }
    lowerValue := 7161419726105370562336
    upperValue := 1000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 11))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 42, r := 12 }
    lowerValue := 306487487137589982862
    upperValue := 100000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 12))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 42, r := 13 }
    lowerValue := 14678259817929809740
    upperValue := 10000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 13))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 42, r := 14 }
    lowerValue := 782839864127852515
    upperValue := 1000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 14))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) },
  { key := { q := 10, n := 42, r := 15 }
    lowerValue := 46310922217889940
    upperValue := 100000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 15))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 15))) },
  { key := { q := 10, n := 42, r := 16 }
    lowerValue := 3029026671401358
    upperValue := 10000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 16))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 18 16))) },
  { key := { q := 10, n := 42, r := 17 }
    lowerValue := 218475021899109
    upperValue := 1000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 17))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 19 17))) },
  { key := { q := 10, n := 42, r := 18 }
    lowerValue := 17341474698522
    upperValue := 10000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 18))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 21 18))) },
  { key := { q := 10, n := 42, r := 19 }
    lowerValue := 1512419035282
    upperValue := 1000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 19))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 22 19))) },
  { key := { q := 10, n := 42, r := 20 }
    lowerValue := 144766008893
    upperValue := 100000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 20))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 23 20))) },
  { key := { q := 10, n := 42, r := 21 }
    lowerValue := 15196798986
    upperValue := 10000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 21))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 24 21))) },
  { key := { q := 10, n := 42, r := 22 }
    lowerValue := 1748953910
    upperValue := 1000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 22))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 25 22))) },
  { key := { q := 10, n := 42, r := 23 }
    lowerValue := 220676882
    upperValue := 100000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 23))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 26 23))) },
  { key := { q := 10, n := 42, r := 24 }
    lowerValue := 30539319
    upperValue := 10000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 24))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 27 24))) },
  { key := { q := 10, n := 42, r := 25 }
    lowerValue := 4638952
    upperValue := 1000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 25))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 28 25))) },
  { key := { q := 10, n := 42, r := 26 }
    lowerValue := 774355
    upperValue := 100000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 26))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 29 26))) },
  { key := { q := 10, n := 42, r := 27 }
    lowerValue := 142265
    upperValue := 1000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 27))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 31 27))) },
  { key := { q := 10, n := 42, r := 28 }
    lowerValue := 28824
    upperValue := 100000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 28))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 32 28))) },
  { key := { q := 10, n := 42, r := 29 }
    lowerValue := 6457
    upperValue := 10000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 29))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 33 29))) },
  { key := { q := 10, n := 42, r := 30 }
    lowerValue := 1604
    upperValue := 1000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 30))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 34 30))) },
  { key := { q := 10, n := 42, r := 31 }
    lowerValue := 444
    upperValue := 100000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 31))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 35 31))) },
  { key := { q := 10, n := 42, r := 32 }
    lowerValue := 137
    upperValue := 10000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 32))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 36 32))) },
  { key := { q := 10, n := 42, r := 33 }
    lowerValue := 48
    upperValue := 1000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 33))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 37 33))) },
  { key := { q := 10, n := 42, r := 34 }
    lowerValue := 19
    upperValue := 100000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 34))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 38 34))) },
  { key := { q := 10, n := 42, r := 35 }
    lowerValue := 10
    upperValue := 10000
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 37 36))))))))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 39 35))) },
  { key := { q := 10, n := 42, r := 36 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 38 37)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 41 36))) },
  { key := { q := 10, n := 42, r := 37 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 39 38))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 42 37)) },
  { key := { q := 10, n := 42, r := 38 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 40 39)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 42 38)) },
  { key := { q := 10, n := 42, r := 39 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 41 40))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 42 39)) },
  { key := { q := 10, n := 42, r := 40 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 42 41)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 42 40)) },
  { key := { q := 10, n := 42, r := 41 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 42 41))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 42 41)) },
  { key := { q := 10, n := 42, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 42 42)) },
  { key := { q := 10, n := 42, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 42 43)) },
  { key := { q := 10, n := 42, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 42 44)) },
  { key := { q := 10, n := 42, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 42 45)) },
  { key := { q := 10, n := 42, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 42 46)) },
  { key := { q := 10, n := 42, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 42 47)) },
  { key := { q := 10, n := 42, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 42 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 42 48)) },
  { key := { q := 10, n := 43, r := 0 }
    lowerValue := 10000000000000000000000000000000000000000000
    upperValue := 10000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 43 0)) },
  { key := { q := 10, n := 43, r := 1 }
    lowerValue := 25773195876288659793814432989690721649485
    upperValue := 500000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 1))
    upperTrace := (.lengthenFreeN 40 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))) },
  { key := { q := 10, n := 43, r := 2 }
    lowerValue := 135997062463450789462947600331832832411
    upperValue := 50000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 2))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 43, r := 3 }
    lowerValue := 1102521245584402411434468342204954290
    upperValue := 5000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 3))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 43, r := 4 }
    lowerValue := 12213544593782575431797960907204017
    upperValue := 500000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 4))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 43, r := 5 }
    lowerValue := 173432823276825572025010554864945
    upperValue := 50000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 5))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 43, r := 6 }
    lowerValue := 3032540840842636395887551983431
    upperValue := 5000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 6))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 5 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 43, r := 7 }
    lowerValue := 63522512701153652290834422562
    upperValue := 500000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 7))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 6 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 43, r := 8 }
    lowerValue := 1562606085113972813674754511
    upperValue := 50000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 8))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 7 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 43, r := 9 }
    lowerValue := 44469248291144278316049917
    upperValue := 1000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 9))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 43, r := 10 }
    lowerValue := 1447134544161312473711990
    upperValue := 100000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 10))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 43, r := 11 }
    lowerValue := 53357750164046804676698
    upperValue := 10000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 11))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 43, r := 12 }
    lowerValue := 2212629249517291476739
    upperValue := 1000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 12))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 43, r := 13 }
    lowerValue := 102571518792719761344
    upperValue := 100000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 13))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 43, r := 14 }
    lowerValue := 5289459986608269969
    upperValue := 10000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 14))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) },
  { key := { q := 10, n := 43, r := 15 }
    lowerValue := 302208091922649318
    upperValue := 1000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 15))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 15))) },
  { key := { q := 10, n := 43, r := 16 }
    lowerValue := 19066589082769321
    upperValue := 100000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 16))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 18 16))) },
  { key := { q := 10, n := 43, r := 17 }
    lowerValue := 1324778133112093
    upperValue := 10000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 17))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 19 17))) },
  { key := { q := 10, n := 43, r := 18 }
    lowerValue := 101153285793444
    upperValue := 100000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 18))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 21 18))) },
  { key := { q := 10, n := 43, r := 19 }
    lowerValue := 8473287880792
    upperValue := 10000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 19))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 22 19))) },
  { key := { q := 10, n := 43, r := 20 }
    lowerValue := 777699881124
    upperValue := 1000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 20))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 23 20))) },
  { key := { q := 10, n := 43, r := 21 }
    lowerValue := 78141714094
    upperValue := 100000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 21))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 24 21))) },
  { key := { q := 10, n := 43, r := 22 }
    lowerValue := 8591062791
    upperValue := 10000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 22))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 25 22))) },
  { key := { q := 10, n := 43, r := 23 }
    lowerValue := 1033330543
    upperValue := 1000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 23))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 26 23))) },
  { key := { q := 10, n := 43, r := 24 }
    lowerValue := 136002086
    upperValue := 100000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 24))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 27 24))) },
  { key := { q := 10, n := 43, r := 25 }
    lowerValue := 19597545
    upperValue := 10000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 25))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 28 25))) },
  { key := { q := 10, n := 43, r := 26 }
    lowerValue := 3094546
    upperValue := 1000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 26))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 29 26))) },
  { key := { q := 10, n := 43, r := 27 }
    lowerValue := 536143
    upperValue := 10000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 27))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 31 27))) },
  { key := { q := 10, n := 43, r := 28 }
    lowerValue := 102087
    upperValue := 1000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 28))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 32 28))) },
  { key := { q := 10, n := 43, r := 29 }
    lowerValue := 21408
    upperValue := 100000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 29))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 33 29))) },
  { key := { q := 10, n := 43, r := 30 }
    lowerValue := 4957
    upperValue := 10000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 30))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 34 30))) },
  { key := { q := 10, n := 43, r := 31 }
    lowerValue := 1271
    upperValue := 1000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 31))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 35 31))) },
  { key := { q := 10, n := 43, r := 32 }
    lowerValue := 363
    upperValue := 100000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 32))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 36 32))) },
  { key := { q := 10, n := 43, r := 33 }
    lowerValue := 116
    upperValue := 10000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 33))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 37 33))) },
  { key := { q := 10, n := 43, r := 34 }
    lowerValue := 42
    upperValue := 1000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 34))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 38 34))) },
  { key := { q := 10, n := 43, r := 35 }
    lowerValue := 17
    upperValue := 100000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 35))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 39 35))) },
  { key := { q := 10, n := 43, r := 36 }
    lowerValue := 10
    upperValue := 1000
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 38 37))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 41 36))) },
  { key := { q := 10, n := 43, r := 37 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 39 38)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 42 37))) },
  { key := { q := 10, n := 43, r := 38 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 40 39))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 43 38)) },
  { key := { q := 10, n := 43, r := 39 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 41 40)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 43 39)) },
  { key := { q := 10, n := 43, r := 40 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 42 41))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 43 40)) },
  { key := { q := 10, n := 43, r := 41 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 43 42)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 43 41)) },
  { key := { q := 10, n := 43, r := 42 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 43 42))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 43 42)) },
  { key := { q := 10, n := 43, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 43 43)) },
  { key := { q := 10, n := 43, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 43 44)) },
  { key := { q := 10, n := 43, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 43 45)) },
  { key := { q := 10, n := 43, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 43 46)) },
  { key := { q := 10, n := 43, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 43 47)) },
  { key := { q := 10, n := 43, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 43 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 43 48)) },
  { key := { q := 10, n := 44, r := 0 }
    lowerValue := 100000000000000000000000000000000000000000000
    upperValue := 100000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 44 0)) },
  { key := { q := 10, n := 44, r := 1 }
    lowerValue := 251889168765743073047858942065491183879094
    upperValue := 5000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 1))
    upperTrace := (.lengthenFreeN 41 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))) },
  { key := { q := 10, n := 44, r := 2 }
    lowerValue := 1298313490775482648040195785674408942784
    upperValue := 500000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 2))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 44, r := 3 }
    lowerValue := 10275486829446133791565243330207187724
    upperValue := 50000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 3))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 44, r := 4 }
    lowerValue := 111062464517625007828515467686092740
    upperValue := 5000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 4))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 44, r := 5 }
    lowerValue := 1537797195830571779298970365756145
    upperValue := 500000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 5))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 44, r := 6 }
    lowerValue := 26202033108820945606747637871386
    upperValue := 50000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 6))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 5 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 44, r := 7 }
    lowerValue := 534466154898005315092981007372
    upperValue := 5000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 7))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 6 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 44, r := 8 }
    lowerValue := 12793636288745357885851780822
    upperValue := 500000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 8))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 7 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 44, r := 9 }
    lowerValue := 354019156334965949166275815
    upperValue := 10000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 9))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 44, r := 10 }
    lowerValue := 11193096791046068259380051
    upperValue := 1000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 10))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 44, r := 11 }
    lowerValue := 400631288372288918115639
    upperValue := 100000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 11))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 44, r := 12 }
    lowerValue := 16112821250118353641237
    upperValue := 10000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 12))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 44, r := 13 }
    lowerValue := 723753755567743680241
    upperValue := 1000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 13))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 44, r := 14 }
    lowerValue := 36127314938069287457
    upperValue := 100000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 14))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) },
  { key := { q := 10, n := 44, r := 15 }
    lowerValue := 1995818686766870024
    upperValue := 10000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 15))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 15))) },
  { key := { q := 10, n := 44, r := 16 }
    lowerValue := 121612232801492527
    upperValue := 1000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 16))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 18 16))) },
  { key := { q := 10, n := 44, r := 17 }
    lowerValue := 8150801101553662
    upperValue := 100000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 17))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 19 17))) },
  { key := { q := 10, n := 44, r := 18 }
    lowerValue := 599535597853570
    upperValue := 1000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 18))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 21 18))) },
  { key := { q := 10, n := 44, r := 19 }
    lowerValue := 48311088037076
    upperValue := 100000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 19))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 22 19))) },
  { key := { q := 10, n := 44, r := 20 }
    lowerValue := 4258935534278
    upperValue := 10000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 20))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 23 20))) },
  { key := { q := 10, n := 44, r := 21 }
    lowerValue := 410343112640
    upperValue := 1000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 21))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 24 21))) },
  { key := { q := 10, n := 44, r := 22 }
    lowerValue := 43182480923
    upperValue := 100000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 22))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 25 22))) },
  { key := { q := 10, n := 44, r := 23 }
    lowerValue := 4961929954
    upperValue := 10000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 23))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 26 23))) },
  { key := { q := 10, n := 44, r := 24 }
    lowerValue := 622566956
    upperValue := 1000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 24))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 27 24))) },
  { key := { q := 10, n := 44, r := 25 }
    lowerValue := 85322589
    upperValue := 100000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 25))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 28 25))) },
  { key := { q := 10, n := 44, r := 26 }
    lowerValue := 12781342
    upperValue := 10000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 26))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 29 26))) },
  { key := { q := 10, n := 44, r := 27 }
    lowerValue := 2094891
    upperValue := 100000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 27))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 31 27))) },
  { key := { q := 10, n := 44, r := 28 }
    lowerValue := 376192
    upperValue := 10000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 28))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 32 28))) },
  { key := { q := 10, n := 44, r := 29 }
    lowerValue := 74144
    upperValue := 1000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 29))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 33 29))) },
  { key := { q := 10, n := 44, r := 30 }
    lowerValue := 16073
    upperValue := 100000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 30))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 34 30))) },
  { key := { q := 10, n := 44, r := 31 }
    lowerValue := 3842
    upperValue := 10000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 31))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 35 31))) },
  { key := { q := 10, n := 44, r := 32 }
    lowerValue := 1016
    upperValue := 1000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 32))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 36 32))) },
  { key := { q := 10, n := 44, r := 33 }
    lowerValue := 299
    upperValue := 100000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 33))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 37 33))) },
  { key := { q := 10, n := 44, r := 34 }
    lowerValue := 98
    upperValue := 10000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 34))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 38 34))) },
  { key := { q := 10, n := 44, r := 35 }
    lowerValue := 36
    upperValue := 1000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 35))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 39 35))) },
  { key := { q := 10, n := 44, r := 36 }
    lowerValue := 15
    upperValue := 10000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 36))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 41 36))) },
  { key := { q := 10, n := 44, r := 37 }
    lowerValue := 10
    upperValue := 1000
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 39 38))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 42 37))) },
  { key := { q := 10, n := 44, r := 38 }
    lowerValue := 10
    upperValue := 100
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 40 39)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 43 38))) },
  { key := { q := 10, n := 44, r := 39 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 41 40))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 44 39)) },
  { key := { q := 10, n := 44, r := 40 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 42 41)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 44 40)) },
  { key := { q := 10, n := 44, r := 41 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.lengthBack (by decide : 0 < 10) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 43 42))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 44 41)) },
  { key := { q := 10, n := 44, r := 42 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 44 43)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 44 42)) },
  { key := { q := 10, n := 44, r := 43 }
    lowerValue := 10
    upperValue := 10
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 10 44 43))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 44 43)) },
  { key := { q := 10, n := 44, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 44 44)) },
  { key := { q := 10, n := 44, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 44 45)) },
  { key := { q := 10, n := 44, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 44 46)) },
  { key := { q := 10, n := 44, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 44 47)) },
  { key := { q := 10, n := 44, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 44 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 10 44 48)) },
  { key := { q := 10, n := 45, r := 0 }
    lowerValue := 1000000000000000000000000000000000000000000000
    upperValue := 1000000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 10 45 0)) },
  { key := { q := 10, n := 45, r := 1 }
    lowerValue := 2463054187192118226600985221674876847290641
    upperValue := 50000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 1))
    upperTrace := (.lengthenFreeN 42 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))) },
  { key := { q := 10, n := 45, r := 2 }
    lowerValue := 12407563650801528611841778748324978907142
    upperValue := 5000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 2))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 1 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 45, r := 3 }
    lowerValue := 95922286065964221370986539609285507505
    upperValue := 500000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 3))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 2 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 45, r := 4 }
    lowerValue := 1012164905335591973921376878366648359
    upperValue := 50000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 4))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 3 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 45, r := 5 }
    lowerValue := 13673974183542101670391994803768605
    upperValue := 5000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 5))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 4 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 45, r := 6 }
    lowerValue := 227182346909075975345416479337764
    upperValue := 500000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 6))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 5 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 45, r := 7 }
    lowerValue := 4515670289502369411187329685294
    upperValue := 50000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 7))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 6 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 45, r := 8 }
    lowerValue := 105259730726817526310897315006
    upperValue := 5000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 8))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 7 (by decide : 0 < 10) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 10 3 1))))) },
  { key := { q := 10, n := 45, r := 9 }
    lowerValue := 2834321994480305868508099467
    upperValue := 100000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 9))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 11 9))) },
  { key := { q := 10, n := 45, r := 10 }
    lowerValue := 87135996664488120300477875
    upperValue := 10000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 10))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 12 10))) },
  { key := { q := 10, n := 45, r := 11 }
    lowerValue := 3030185783709404861578458
    upperValue := 1000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 11))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 13 11))) },
  { key := { q := 10, n := 45, r := 12 }
    lowerValue := 118305500203964204678411
    upperValue := 100000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 12))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 14 12))) },
  { key := { q := 10, n := 45, r := 13 }
    lowerValue := 5153983492741157009081
    upperValue := 10000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 13))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 15 13))) },
  { key := { q := 10, n := 45, r := 14 }
    lowerValue := 249282963917908058993
    upperValue := 1000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 14))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 16 14))) },
  { key := { q := 10, n := 45, r := 15 }
    lowerValue := 13330373945345108199
    upperValue := 100000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 15))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 17 15))) },
  { key := { q := 10, n := 45, r := 16 }
    lowerValue := 785404996969700164
    upperValue := 10000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 16))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 18 16))) },
  { key := { q := 10, n := 45, r := 17 }
    lowerValue := 50840639808738978
    upperValue := 1000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 17))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 19 17))) },
  { key := { q := 10, n := 45, r := 18 }
    lowerValue := 3607316715694481
    upperValue := 10000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 18))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 21 18))) },
  { key := { q := 10, n := 45, r := 19 }
    lowerValue := 280027323091218
    upperValue := 1000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 19))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 22 19))) },
  { key := { q := 10, n := 45, r := 20 }
    lowerValue := 23747717999951
    upperValue := 100000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 20))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 23 20))) },
  { key := { q := 10, n := 45, r := 21 }
    lowerValue := 2197710875866
    upperValue := 10000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 21))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 24 21))) },
  { key := { q := 10, n := 45, r := 22 }
    lowerValue := 221776677336
    upperValue := 1000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 22))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 25 22))) },
  { key := { q := 10, n := 45, r := 23 }
    lowerValue := 24393079488
    upperValue := 100000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 23))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 26 23))) },
  { key := { q := 10, n := 45, r := 24 }
    lowerValue := 2923922486
    upperValue := 10000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 24))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 27 24))) },
  { key := { q := 10, n := 45, r := 25 }
    lowerValue := 382022011
    upperValue := 1000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 25))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 28 25))) },
  { key := { q := 10, n := 45, r := 26 }
    lowerValue := 54430336
    upperValue := 100000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 26))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 29 26))) },
  { key := { q := 10, n := 45, r := 27 }
    lowerValue := 8463793
    upperValue := 1000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 27))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 31 27))) },
  { key := { q := 10, n := 45, r := 28 }
    lowerValue := 1437942
    upperValue := 100000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 28))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 32 28))) },
  { key := { q := 10, n := 45, r := 29 }
    lowerValue := 267299
    upperValue := 10000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 29))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 33 29))) },
  { key := { q := 10, n := 45, r := 30 }
    lowerValue := 54465
    upperValue := 1000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 30))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 34 30))) },
  { key := { q := 10, n := 45, r := 31 }
    lowerValue := 12192
    upperValue := 100000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 31))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 35 31))) },
  { key := { q := 10, n := 45, r := 32 }
    lowerValue := 3006
    upperValue := 10000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 32))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 36 32))) },
  { key := { q := 10, n := 45, r := 33 }
    lowerValue := 819
    upperValue := 1000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 33))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 37 33))) },
  { key := { q := 10, n := 45, r := 34 }
    lowerValue := 248
    upperValue := 100000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 10 45 34))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 10 38 34))) }]

end CoveringCodes.Database
