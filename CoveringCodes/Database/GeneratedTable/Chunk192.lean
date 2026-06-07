import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 192. Do not edit manually.

def precomputedTable_chunk_192 : Array AnyBoundEntry := #[
  { key := { q := 19, n := 48, r := 29 }
    lowerValue := 756454220379
    upperValue := 104127350297911241532841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 29))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 31 29))) },
  { key := { q := 19, n := 48, r := 30 }
    lowerValue := 65847342026
    upperValue := 5480386857784802185939
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 30))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 32 30))) },
  { key := { q := 19, n := 48, r := 31 }
    lowerValue := 6246292816
    upperValue := 288441413567621167681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 31))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 33 31))) },
  { key := { q := 19, n := 48, r := 32 }
    lowerValue := 646922274
    upperValue := 15181127029874798299
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 32))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 34 32))) },
  { key := { q := 19, n := 48, r := 33 }
    lowerValue := 73318951
    upperValue := 799006685782884121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 33))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 35 33))) },
  { key := { q := 19, n := 48, r := 34 }
    lowerValue := 9117954
    upperValue := 42052983462257059
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 34))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 36 34))) },
  { key := { q := 19, n := 48, r := 35 }
    lowerValue := 1248247
    upperValue := 2213314919066161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 35))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 37 35))) },
  { key := { q := 19, n := 48, r := 36 }
    lowerValue := 188838
    upperValue := 6131066257801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 36))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 39 36))) },
  { key := { q := 19, n := 48, r := 37 }
    lowerValue := 31713
    upperValue := 322687697779
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 37))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 40 37))) },
  { key := { q := 19, n := 48, r := 38 }
    lowerValue := 5944
    upperValue := 16983563041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 38))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 41 38))) },
  { key := { q := 19, n := 48, r := 39 }
    lowerValue := 1252
    upperValue := 893871739
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 39))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 42 39))) },
  { key := { q := 19, n := 48, r := 40 }
    lowerValue := 299
    upperValue := 47045881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 40))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 43 40))) },
  { key := { q := 19, n := 48, r := 41 }
    lowerValue := 82
    upperValue := 2476099
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 41))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 44 41))) },
  { key := { q := 19, n := 48, r := 42 }
    lowerValue := 26
    upperValue := 130321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 42))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 45 42))) },
  { key := { q := 19, n := 48, r := 43 }
    lowerValue := 19
    upperValue := 6859
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 45 44))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 46 43))) },
  { key := { q := 19, n := 48, r := 44 }
    lowerValue := 19
    upperValue := 361
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 46 45)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 47 44))) },
  { key := { q := 19, n := 48, r := 45 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.lengthBack (by decide : 0 < 19) (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 47 46))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 48 45)) },
  { key := { q := 19, n := 48, r := 46 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.radiusBack (by decide : 46 ≤ 47) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 48 47)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 48 46)) },
  { key := { q := 19, n := 48, r := 47 }
    lowerValue := 19
    upperValue := 19
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 19 48 47))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 19 48 47)) },
  { key := { q := 19, n := 48, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 19 48 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 19 48 48)) },
  { key := { q := 20, n := 0, r := 0 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 0)) },
  { key := { q := 20, n := 0, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 1))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 1)) },
  { key := { q := 20, n := 0, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 2))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 2)) },
  { key := { q := 20, n := 0, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 3))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 3)) },
  { key := { q := 20, n := 0, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 4))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 4)) },
  { key := { q := 20, n := 0, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 5))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 5)) },
  { key := { q := 20, n := 0, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 6))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 6)) },
  { key := { q := 20, n := 0, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 7))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 7)) },
  { key := { q := 20, n := 0, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 8))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 8)) },
  { key := { q := 20, n := 0, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 9))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 9)) },
  { key := { q := 20, n := 0, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 10))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 10)) },
  { key := { q := 20, n := 0, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 11))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 11)) },
  { key := { q := 20, n := 0, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 12))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 12)) },
  { key := { q := 20, n := 0, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 13))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 13)) },
  { key := { q := 20, n := 0, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 14))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 14)) },
  { key := { q := 20, n := 0, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 15))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 15)) },
  { key := { q := 20, n := 0, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 16))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 16)) },
  { key := { q := 20, n := 0, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 17))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 17)) },
  { key := { q := 20, n := 0, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 18))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 18)) },
  { key := { q := 20, n := 0, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 19))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 19)) },
  { key := { q := 20, n := 0, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 20))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 20)) },
  { key := { q := 20, n := 0, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 21))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 21)) },
  { key := { q := 20, n := 0, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 22))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 22)) },
  { key := { q := 20, n := 0, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 23))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 23)) },
  { key := { q := 20, n := 0, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 24))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 24)) },
  { key := { q := 20, n := 0, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 25))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 25)) },
  { key := { q := 20, n := 0, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 26))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 26)) },
  { key := { q := 20, n := 0, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 27))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 27)) },
  { key := { q := 20, n := 0, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 28))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 28)) },
  { key := { q := 20, n := 0, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 29))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 29)) },
  { key := { q := 20, n := 0, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 30))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 30)) },
  { key := { q := 20, n := 0, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 31))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 31)) },
  { key := { q := 20, n := 0, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 32))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 32)) },
  { key := { q := 20, n := 0, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 33))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 33)) },
  { key := { q := 20, n := 0, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 34))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 34)) },
  { key := { q := 20, n := 0, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 35))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 35)) },
  { key := { q := 20, n := 0, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 36))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 36)) },
  { key := { q := 20, n := 0, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 37))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 37)) },
  { key := { q := 20, n := 0, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 38))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 38)) },
  { key := { q := 20, n := 0, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 39))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 39)) },
  { key := { q := 20, n := 0, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 40))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 40)) },
  { key := { q := 20, n := 0, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 41))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 41)) },
  { key := { q := 20, n := 0, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 42))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 42)) },
  { key := { q := 20, n := 0, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 43))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 43)) },
  { key := { q := 20, n := 0, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 44))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 44)) },
  { key := { q := 20, n := 0, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 45))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 45)) },
  { key := { q := 20, n := 0, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 46))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 46)) },
  { key := { q := 20, n := 0, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 47))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 47)) },
  { key := { q := 20, n := 0, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 0 48))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 0 48)) },
  { key := { q := 20, n := 1, r := 0 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 1 0)) },
  { key := { q := 20, n := 1, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 1))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 1)) },
  { key := { q := 20, n := 1, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 2))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 2)) },
  { key := { q := 20, n := 1, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 3)) },
  { key := { q := 20, n := 1, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 4)) },
  { key := { q := 20, n := 1, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 5)) },
  { key := { q := 20, n := 1, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 6)) },
  { key := { q := 20, n := 1, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 7)) },
  { key := { q := 20, n := 1, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 8)) },
  { key := { q := 20, n := 1, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 9)) },
  { key := { q := 20, n := 1, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 10)) },
  { key := { q := 20, n := 1, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 11)) },
  { key := { q := 20, n := 1, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 12)) },
  { key := { q := 20, n := 1, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 13)) },
  { key := { q := 20, n := 1, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 14)) },
  { key := { q := 20, n := 1, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 15)) },
  { key := { q := 20, n := 1, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 16)) },
  { key := { q := 20, n := 1, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 17)) },
  { key := { q := 20, n := 1, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 18)) },
  { key := { q := 20, n := 1, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 19)) },
  { key := { q := 20, n := 1, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 20)) },
  { key := { q := 20, n := 1, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 21)) },
  { key := { q := 20, n := 1, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 22)) },
  { key := { q := 20, n := 1, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 23)) },
  { key := { q := 20, n := 1, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 24)) },
  { key := { q := 20, n := 1, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 25)) },
  { key := { q := 20, n := 1, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 26)) },
  { key := { q := 20, n := 1, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 27)) },
  { key := { q := 20, n := 1, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 28)) },
  { key := { q := 20, n := 1, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 29)) },
  { key := { q := 20, n := 1, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 30)) },
  { key := { q := 20, n := 1, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 31)) },
  { key := { q := 20, n := 1, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 32)) },
  { key := { q := 20, n := 1, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 33)) },
  { key := { q := 20, n := 1, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 34)) },
  { key := { q := 20, n := 1, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 35)) },
  { key := { q := 20, n := 1, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 36)) },
  { key := { q := 20, n := 1, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 37)) },
  { key := { q := 20, n := 1, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 38)) },
  { key := { q := 20, n := 1, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 39)) },
  { key := { q := 20, n := 1, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 40)) },
  { key := { q := 20, n := 1, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 41)) },
  { key := { q := 20, n := 1, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 42)) },
  { key := { q := 20, n := 1, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 43)) },
  { key := { q := 20, n := 1, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 44)) },
  { key := { q := 20, n := 1, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 45)) },
  { key := { q := 20, n := 1, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 46)) },
  { key := { q := 20, n := 1, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 47)) },
  { key := { q := 20, n := 1, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 1 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 1 48)) },
  { key := { q := 20, n := 2, r := 0 }
    lowerValue := 400
    upperValue := 400
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 2 0)) },
  { key := { q := 20, n := 2, r := 1 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 2 1))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 2 1)) },
  { key := { q := 20, n := 2, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 2))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 2)) },
  { key := { q := 20, n := 2, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 3)) },
  { key := { q := 20, n := 2, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 4)) },
  { key := { q := 20, n := 2, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 5)) },
  { key := { q := 20, n := 2, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 6)) },
  { key := { q := 20, n := 2, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 7)) },
  { key := { q := 20, n := 2, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 8)) },
  { key := { q := 20, n := 2, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 9)) },
  { key := { q := 20, n := 2, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 10)) },
  { key := { q := 20, n := 2, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 11)) },
  { key := { q := 20, n := 2, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 12)) },
  { key := { q := 20, n := 2, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 13)) },
  { key := { q := 20, n := 2, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 14)) },
  { key := { q := 20, n := 2, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 15)) },
  { key := { q := 20, n := 2, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 16)) },
  { key := { q := 20, n := 2, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 17)) },
  { key := { q := 20, n := 2, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 18)) },
  { key := { q := 20, n := 2, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 19)) },
  { key := { q := 20, n := 2, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 20)) },
  { key := { q := 20, n := 2, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 21)) },
  { key := { q := 20, n := 2, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 22)) },
  { key := { q := 20, n := 2, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 23)) },
  { key := { q := 20, n := 2, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 24)) },
  { key := { q := 20, n := 2, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 25)) },
  { key := { q := 20, n := 2, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 26)) },
  { key := { q := 20, n := 2, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 27)) },
  { key := { q := 20, n := 2, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 28)) },
  { key := { q := 20, n := 2, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 29)) },
  { key := { q := 20, n := 2, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 30)) },
  { key := { q := 20, n := 2, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 31)) },
  { key := { q := 20, n := 2, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 32)) },
  { key := { q := 20, n := 2, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 33)) },
  { key := { q := 20, n := 2, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 34)) },
  { key := { q := 20, n := 2, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 35)) },
  { key := { q := 20, n := 2, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 36)) },
  { key := { q := 20, n := 2, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 37)) },
  { key := { q := 20, n := 2, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 38)) },
  { key := { q := 20, n := 2, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 39)) },
  { key := { q := 20, n := 2, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 40)) },
  { key := { q := 20, n := 2, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 41)) },
  { key := { q := 20, n := 2, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 42)) },
  { key := { q := 20, n := 2, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 43)) },
  { key := { q := 20, n := 2, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 44)) },
  { key := { q := 20, n := 2, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 45)) },
  { key := { q := 20, n := 2, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 46)) },
  { key := { q := 20, n := 2, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 47)) },
  { key := { q := 20, n := 2, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 2 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 2 48)) },
  { key := { q := 20, n := 3, r := 0 }
    lowerValue := 8000
    upperValue := 8000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 3 0)) },
  { key := { q := 20, n := 3, r := 1 }
    lowerValue := 160
    upperValue := 200
    lowerTrace := (.primitive "lean_sparse_slicer" (primitiveLower_valid 20 3 1))
    upperTrace := (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1)) },
  { key := { q := 20, n := 3, r := 2 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 3 2))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 3 2)) },
  { key := { q := 20, n := 3, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 3)) },
  { key := { q := 20, n := 3, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 4)) },
  { key := { q := 20, n := 3, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 5)) },
  { key := { q := 20, n := 3, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 6)) },
  { key := { q := 20, n := 3, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 7)) },
  { key := { q := 20, n := 3, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 8)) },
  { key := { q := 20, n := 3, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 9)) },
  { key := { q := 20, n := 3, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 10)) },
  { key := { q := 20, n := 3, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 11)) },
  { key := { q := 20, n := 3, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 12)) },
  { key := { q := 20, n := 3, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 13)) },
  { key := { q := 20, n := 3, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 14)) },
  { key := { q := 20, n := 3, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 15)) },
  { key := { q := 20, n := 3, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 16)) },
  { key := { q := 20, n := 3, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 17)) },
  { key := { q := 20, n := 3, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 18)) },
  { key := { q := 20, n := 3, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 19)) },
  { key := { q := 20, n := 3, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 20)) },
  { key := { q := 20, n := 3, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 21)) },
  { key := { q := 20, n := 3, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 22)) },
  { key := { q := 20, n := 3, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 23)) },
  { key := { q := 20, n := 3, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 24)) },
  { key := { q := 20, n := 3, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 25)) },
  { key := { q := 20, n := 3, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 26)) },
  { key := { q := 20, n := 3, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 27)) },
  { key := { q := 20, n := 3, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 28)) },
  { key := { q := 20, n := 3, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 29)) },
  { key := { q := 20, n := 3, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 30)) },
  { key := { q := 20, n := 3, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 31)) },
  { key := { q := 20, n := 3, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 32)) },
  { key := { q := 20, n := 3, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 33)) },
  { key := { q := 20, n := 3, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 34)) },
  { key := { q := 20, n := 3, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 35)) },
  { key := { q := 20, n := 3, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 36)) },
  { key := { q := 20, n := 3, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 37)) },
  { key := { q := 20, n := 3, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 38)) },
  { key := { q := 20, n := 3, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 39)) },
  { key := { q := 20, n := 3, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 40)) },
  { key := { q := 20, n := 3, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 41)) },
  { key := { q := 20, n := 3, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 42)) },
  { key := { q := 20, n := 3, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 43)) },
  { key := { q := 20, n := 3, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 44)) },
  { key := { q := 20, n := 3, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 45)) },
  { key := { q := 20, n := 3, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 46)) },
  { key := { q := 20, n := 3, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 47)) },
  { key := { q := 20, n := 3, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 3 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 3 48)) },
  { key := { q := 20, n := 4, r := 0 }
    lowerValue := 160000
    upperValue := 160000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 4 0)) },
  { key := { q := 20, n := 4, r := 1 }
    lowerValue := 2078
    upperValue := 4000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 1))
    upperTrace := (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))) },
  { key := { q := 20, n := 4, r := 2 }
    lowerValue := 72
    upperValue := 200
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 2))
    upperTrace := (.lengthenDummyN 1 (by decide : 0 < 20) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))) },
  { key := { q := 20, n := 4, r := 3 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 4 3))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 4 3)) },
  { key := { q := 20, n := 4, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 4)) },
  { key := { q := 20, n := 4, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 5)) },
  { key := { q := 20, n := 4, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 6)) },
  { key := { q := 20, n := 4, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 7)) },
  { key := { q := 20, n := 4, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 8)) },
  { key := { q := 20, n := 4, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 9)) },
  { key := { q := 20, n := 4, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 10)) },
  { key := { q := 20, n := 4, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 11)) },
  { key := { q := 20, n := 4, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 12)) },
  { key := { q := 20, n := 4, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 13)) },
  { key := { q := 20, n := 4, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 14)) },
  { key := { q := 20, n := 4, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 15)) },
  { key := { q := 20, n := 4, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 16)) },
  { key := { q := 20, n := 4, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 17)) },
  { key := { q := 20, n := 4, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 18)) },
  { key := { q := 20, n := 4, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 19)) },
  { key := { q := 20, n := 4, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 20)) },
  { key := { q := 20, n := 4, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 21)) },
  { key := { q := 20, n := 4, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 22)) },
  { key := { q := 20, n := 4, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 23)) },
  { key := { q := 20, n := 4, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 24)) },
  { key := { q := 20, n := 4, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 25)) },
  { key := { q := 20, n := 4, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 26)) },
  { key := { q := 20, n := 4, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 27)) },
  { key := { q := 20, n := 4, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 28)) },
  { key := { q := 20, n := 4, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 29)) },
  { key := { q := 20, n := 4, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 30)) },
  { key := { q := 20, n := 4, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 31)) },
  { key := { q := 20, n := 4, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 32)) },
  { key := { q := 20, n := 4, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 4 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 4 33)) }]

end CoveringCodes.Database
