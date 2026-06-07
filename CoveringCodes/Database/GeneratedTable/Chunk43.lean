import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 43. Do not edit manually.

def precomputedTable_chunk_43 : Array AnyBoundEntry := #[
  { key := { q := 4, n := 23, r := 19 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 21 20)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 19)) },
  { key := { q := 4, n := 23, r := 20 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 22 21))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 20)) },
  { key := { q := 4, n := 23, r := 21 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 23 22)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 21)) },
  { key := { q := 4, n := 23, r := 22 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 23 22))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 22)) },
  { key := { q := 4, n := 23, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 23 23)) },
  { key := { q := 4, n := 23, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 23 24)) },
  { key := { q := 4, n := 23, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 23 25)) },
  { key := { q := 4, n := 23, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 23 26)) },
  { key := { q := 4, n := 23, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 23 27)) },
  { key := { q := 4, n := 23, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 23 28)) },
  { key := { q := 4, n := 23, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 23 29)) },
  { key := { q := 4, n := 23, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 23 30)) },
  { key := { q := 4, n := 23, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 23 31)) },
  { key := { q := 4, n := 23, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 23 32)) },
  { key := { q := 4, n := 23, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 23 33)) },
  { key := { q := 4, n := 23, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 23 34)) },
  { key := { q := 4, n := 23, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 23 35)) },
  { key := { q := 4, n := 23, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 23 36)) },
  { key := { q := 4, n := 23, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 23 37)) },
  { key := { q := 4, n := 23, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 23 38)) },
  { key := { q := 4, n := 23, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 23 39)) },
  { key := { q := 4, n := 23, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 23 40)) },
  { key := { q := 4, n := 23, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 23 41)) },
  { key := { q := 4, n := 23, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 23 42)) },
  { key := { q := 4, n := 23, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 23 43)) },
  { key := { q := 4, n := 23, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 23 44)) },
  { key := { q := 4, n := 23, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 23 45)) },
  { key := { q := 4, n := 23, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 23 46)) },
  { key := { q := 4, n := 23, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 23 47)) },
  { key := { q := 4, n := 23, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 23 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 23 48)) },
  { key := { q := 4, n := 24, r := 0 }
    lowerValue := 281474976710656
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 24 0)) },
  { key := { q := 4, n := 24, r := 1 }
    lowerValue := 3855821598777
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 1))
    upperTrace := (.lengthenFreeN 19 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 24, r := 2 }
    lowerValue := 110080162969
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 2))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 24, r := 3 }
    lowerValue := 4920461092
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 3))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 24, r := 4 }
    lowerValue := 306647352
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 4))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 3 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 24, r := 5 }
    lowerValue := 25028045
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 5))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 4 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 24, r := 6 }
    lowerValue := 2573677
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 6))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 9 6))) },
  { key := { q := 4, n := 24, r := 7 }
    lowerValue := 324918
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 7))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 10 7))) },
  { key := { q := 4, n := 24, r := 8 }
    lowerValue := 49454
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 8))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 11 8))) },
  { key := { q := 4, n := 24, r := 9 }
    lowerValue := 8957
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 9))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 13 9))) },
  { key := { q := 4, n := 24, r := 10 }
    lowerValue := 1912
    upperValue := 4194304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 10))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 14 10))) },
  { key := { q := 4, n := 24, r := 11 }
    lowerValue := 478
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 11))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 15 11))) },
  { key := { q := 4, n := 24, r := 12 }
    lowerValue := 139
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 12))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 24, r := 13 }
    lowerValue := 47
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 13))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 24, r := 14 }
    lowerValue := 19
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 14))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 24, r := 15 }
    lowerValue := 9
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 15))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 24, r := 16 }
    lowerValue := 5
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 16))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16))) },
  { key := { q := 4, n := 24, r := 17 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 19 18))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 17))) },
  { key := { q := 4, n := 24, r := 18 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 20 19)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 24 18)) },
  { key := { q := 4, n := 24, r := 19 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 21 20))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 24 19)) },
  { key := { q := 4, n := 24, r := 20 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 22 21)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 24 20)) },
  { key := { q := 4, n := 24, r := 21 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 23 22))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 24 21)) },
  { key := { q := 4, n := 24, r := 22 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 24 23)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 24 22)) },
  { key := { q := 4, n := 24, r := 23 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 24 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 24 23)) },
  { key := { q := 4, n := 24, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 24 24)) },
  { key := { q := 4, n := 24, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 24 25)) },
  { key := { q := 4, n := 24, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 24 26)) },
  { key := { q := 4, n := 24, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 24 27)) },
  { key := { q := 4, n := 24, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 24 28)) },
  { key := { q := 4, n := 24, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 24 29)) },
  { key := { q := 4, n := 24, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 24 30)) },
  { key := { q := 4, n := 24, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 24 31)) },
  { key := { q := 4, n := 24, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 24 32)) },
  { key := { q := 4, n := 24, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 24 33)) },
  { key := { q := 4, n := 24, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 24 34)) },
  { key := { q := 4, n := 24, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 24 35)) },
  { key := { q := 4, n := 24, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 24 36)) },
  { key := { q := 4, n := 24, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 24 37)) },
  { key := { q := 4, n := 24, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 24 38)) },
  { key := { q := 4, n := 24, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 24 39)) },
  { key := { q := 4, n := 24, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 24 40)) },
  { key := { q := 4, n := 24, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 24 41)) },
  { key := { q := 4, n := 24, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 24 42)) },
  { key := { q := 4, n := 24, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 24 43)) },
  { key := { q := 4, n := 24, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 24 44)) },
  { key := { q := 4, n := 24, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 24 45)) },
  { key := { q := 4, n := 24, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 24 46)) },
  { key := { q := 4, n := 24, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 24 47)) },
  { key := { q := 4, n := 24, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 24 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 24 48)) },
  { key := { q := 4, n := 25, r := 0 }
    lowerValue := 1125899906842624
    upperValue := 1125899906842624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 25 0)) },
  { key := { q := 4, n := 25, r := 1 }
    lowerValue := 14814472458456
    upperValue := 70368744177664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 1))
    upperTrace := (.lengthenFreeN 20 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 25, r := 2 }
    lowerValue := 405583539929
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 2))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 25, r := 3 }
    lowerValue := 17354644350
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 3))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 25, r := 4 }
    lowerValue := 1033385075
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 4))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 3 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 25, r := 5 }
    lowerValue := 80420756
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 5))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 4 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 25, r := 6 }
    lowerValue := 7867594
    upperValue := 17179869184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 6))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 9 6))) },
  { key := { q := 4, n := 25, r := 7 }
    lowerValue := 942652
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 7))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 10 7))) },
  { key := { q := 4, n := 25, r := 8 }
    lowerValue := 135805
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 8))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 11 8))) },
  { key := { q := 4, n := 25, r := 9 }
    lowerValue := 23214
    upperValue := 67108864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 9))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 13 9))) },
  { key := { q := 4, n := 25, r := 10 }
    lowerValue := 4662
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 10))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 14 10))) },
  { key := { q := 4, n := 25, r := 11 }
    lowerValue := 1092
    upperValue := 4194304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 11))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 15 11))) },
  { key := { q := 4, n := 25, r := 12 }
    lowerValue := 297
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 12))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 25, r := 13 }
    lowerValue := 94
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 13))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 25, r := 14 }
    lowerValue := 34
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 14))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 25, r := 15 }
    lowerValue := 15
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 15))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 25, r := 16 }
    lowerValue := 7
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 16))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16))) },
  { key := { q := 4, n := 25, r := 17 }
    lowerValue := 4
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 17))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 17))) },
  { key := { q := 4, n := 25, r := 18 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 20 19))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 18)) },
  { key := { q := 4, n := 25, r := 19 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 21 20)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 19)) },
  { key := { q := 4, n := 25, r := 20 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 22 21))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 20)) },
  { key := { q := 4, n := 25, r := 21 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 23 22)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 21)) },
  { key := { q := 4, n := 25, r := 22 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 24 23))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 22)) },
  { key := { q := 4, n := 25, r := 23 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 25 24)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 23)) },
  { key := { q := 4, n := 25, r := 24 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 25 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 24)) },
  { key := { q := 4, n := 25, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 25 25)) },
  { key := { q := 4, n := 25, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 25 26)) },
  { key := { q := 4, n := 25, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 25 27)) },
  { key := { q := 4, n := 25, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 25 28)) },
  { key := { q := 4, n := 25, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 25 29)) },
  { key := { q := 4, n := 25, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 25 30)) },
  { key := { q := 4, n := 25, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 25 31)) },
  { key := { q := 4, n := 25, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 25 32)) },
  { key := { q := 4, n := 25, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 25 33)) },
  { key := { q := 4, n := 25, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 25 34)) },
  { key := { q := 4, n := 25, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 25 35)) },
  { key := { q := 4, n := 25, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 25 36)) },
  { key := { q := 4, n := 25, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 25 37)) },
  { key := { q := 4, n := 25, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 25 38)) },
  { key := { q := 4, n := 25, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 25 39)) },
  { key := { q := 4, n := 25, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 25 40)) },
  { key := { q := 4, n := 25, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 25 41)) },
  { key := { q := 4, n := 25, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 25 42)) },
  { key := { q := 4, n := 25, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 25 43)) },
  { key := { q := 4, n := 25, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 25 44)) },
  { key := { q := 4, n := 25, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 25 45)) },
  { key := { q := 4, n := 25, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 25 46)) },
  { key := { q := 4, n := 25, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 25 47)) },
  { key := { q := 4, n := 25, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 25 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 25 48)) },
  { key := { q := 4, n := 26, r := 0 }
    lowerValue := 4503599627370496
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 26 0)) },
  { key := { q := 4, n := 26, r := 1 }
    lowerValue := 57007590219880
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 1))
    upperTrace := (.lengthenFreeN 21 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 26, r := 2 }
    lowerValue := 1499200941202
    upperValue := 70368744177664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 2))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 26, r := 3 }
    lowerValue := 61521223258
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 3))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 26, r := 4 }
    lowerValue := 3507055718
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 4))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 3 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 26, r := 5 }
    lowerValue := 260795613
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 5))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 4 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 26, r := 6 }
    lowerValue := 24329794
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 6))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 9 6))) },
  { key := { q := 4, n := 26, r := 7 }
    lowerValue := 2773640
    upperValue := 17179869184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 7))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 10 7))) },
  { key := { q := 4, n := 26, r := 8 }
    lowerValue := 379289
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 8))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 11 8))) },
  { key := { q := 4, n := 26, r := 9 }
    lowerValue := 61379
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 9))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 13 9))) },
  { key := { q := 4, n := 26, r := 10 }
    lowerValue := 11637
    upperValue := 67108864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 10))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 14 10))) },
  { key := { q := 4, n := 26, r := 11 }
    lowerValue := 2566
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 11))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 15 11))) },
  { key := { q := 4, n := 26, r := 12 }
    lowerValue := 654
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 12))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 26, r := 13 }
    lowerValue := 192
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 13))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 26, r := 14 }
    lowerValue := 65
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 14))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 26, r := 15 }
    lowerValue := 25
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 15))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 26, r := 16 }
    lowerValue := 12
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 16))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16))) },
  { key := { q := 4, n := 26, r := 17 }
    lowerValue := 6
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 17))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 17))) },
  { key := { q := 4, n := 26, r := 18 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 18))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 18))) },
  { key := { q := 4, n := 26, r := 19 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 21 20))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 19)) },
  { key := { q := 4, n := 26, r := 20 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 22 21)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 20)) },
  { key := { q := 4, n := 26, r := 21 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 23 22))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 21)) },
  { key := { q := 4, n := 26, r := 22 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 24 23)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 22)) },
  { key := { q := 4, n := 26, r := 23 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 25 24))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 23)) },
  { key := { q := 4, n := 26, r := 24 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 26 25)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 24)) },
  { key := { q := 4, n := 26, r := 25 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 26 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 25)) },
  { key := { q := 4, n := 26, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 26 26)) },
  { key := { q := 4, n := 26, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 26 27)) },
  { key := { q := 4, n := 26, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 26 28)) },
  { key := { q := 4, n := 26, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 26 29)) },
  { key := { q := 4, n := 26, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 26 30)) },
  { key := { q := 4, n := 26, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 26 31)) },
  { key := { q := 4, n := 26, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 26 32)) },
  { key := { q := 4, n := 26, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 26 33)) },
  { key := { q := 4, n := 26, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 26 34)) },
  { key := { q := 4, n := 26, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 26 35)) },
  { key := { q := 4, n := 26, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 26 36)) },
  { key := { q := 4, n := 26, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 26 37)) },
  { key := { q := 4, n := 26, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 26 38)) },
  { key := { q := 4, n := 26, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 26 39)) },
  { key := { q := 4, n := 26, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 26 40)) },
  { key := { q := 4, n := 26, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 26 41)) },
  { key := { q := 4, n := 26, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 26 42)) },
  { key := { q := 4, n := 26, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 26 43)) },
  { key := { q := 4, n := 26, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 26 44)) },
  { key := { q := 4, n := 26, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 26 45)) },
  { key := { q := 4, n := 26, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 26 46)) },
  { key := { q := 4, n := 26, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 26 47)) },
  { key := { q := 4, n := 26, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 26 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 26 48)) },
  { key := { q := 4, n := 27, r := 0 }
    lowerValue := 18014398509481984
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 27 0)) },
  { key := { q := 4, n := 27, r := 1 }
    lowerValue := 219687786701000
    upperValue := 1125899906842624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 1))
    upperTrace := (.lengthenFreeN 22 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 27, r := 2 }
    lowerValue := 5558284020205
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 2))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 27, r := 3 }
    lowerValue := 219110617271
    upperValue := 70368744177664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 3))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 27, r := 4 }
    lowerValue := 11979522419
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 4))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 3 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 27, r := 5 }
    lowerValue := 852907792
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 5))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 4 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 27, r := 6 }
    lowerValue := 76038211
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 6))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 9 6))) },
  { key := { q := 4, n := 27, r := 7 }
    lowerValue := 8267149
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 7))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 10 7))) },
  { key := { q := 4, n := 27, r := 8 }
    lowerValue := 1075812
    upperValue := 17179869184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 8))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 11 8))) },
  { key := { q := 4, n := 27, r := 9 }
    lowerValue := 165277
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 9))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 13 9))) },
  { key := { q := 4, n := 27, r := 10 }
    lowerValue := 29671
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 10))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 14 10))) },
  { key := { q := 4, n := 27, r := 11 }
    lowerValue := 6177
    upperValue := 67108864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 11))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 15 11))) },
  { key := { q := 4, n := 27, r := 12 }
    lowerValue := 1483
    upperValue := 4194304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 12))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 27, r := 13 }
    lowerValue := 409
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 13))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 27, r := 14 }
    lowerValue := 129
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 14))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 27, r := 15 }
    lowerValue := 47
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 15))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 27, r := 16 }
    lowerValue := 19
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 16))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16))) },
  { key := { q := 4, n := 27, r := 17 }
    lowerValue := 9
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 17))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 17))) },
  { key := { q := 4, n := 27, r := 18 }
    lowerValue := 5
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 18))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 18))) },
  { key := { q := 4, n := 27, r := 19 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 21 20)))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 19))) },
  { key := { q := 4, n := 27, r := 20 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 22 21))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 20)) },
  { key := { q := 4, n := 27, r := 21 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 23 22)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 21)) },
  { key := { q := 4, n := 27, r := 22 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 24 23))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 22)) },
  { key := { q := 4, n := 27, r := 23 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 25 24)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 23)) },
  { key := { q := 4, n := 27, r := 24 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 26 25))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 24)) },
  { key := { q := 4, n := 27, r := 25 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 27 26)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 25)) },
  { key := { q := 4, n := 27, r := 26 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 27 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 26)) },
  { key := { q := 4, n := 27, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 27 27)) },
  { key := { q := 4, n := 27, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 27 28)) },
  { key := { q := 4, n := 27, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 27 29)) },
  { key := { q := 4, n := 27, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 27 30)) },
  { key := { q := 4, n := 27, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 27 31)) },
  { key := { q := 4, n := 27, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 27 32)) },
  { key := { q := 4, n := 27, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 27 33)) },
  { key := { q := 4, n := 27, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 27 34)) },
  { key := { q := 4, n := 27, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 27 35)) },
  { key := { q := 4, n := 27, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 27 36)) },
  { key := { q := 4, n := 27, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 27 37)) },
  { key := { q := 4, n := 27, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 27 38)) },
  { key := { q := 4, n := 27, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 27 39)) },
  { key := { q := 4, n := 27, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 27 40)) },
  { key := { q := 4, n := 27, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 27 41)) },
  { key := { q := 4, n := 27, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 27 42)) },
  { key := { q := 4, n := 27, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 27 43)) },
  { key := { q := 4, n := 27, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 27 44)) },
  { key := { q := 4, n := 27, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 27 45)) },
  { key := { q := 4, n := 27, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 27 46)) },
  { key := { q := 4, n := 27, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 27 47)) },
  { key := { q := 4, n := 27, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 27 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 27 48)) },
  { key := { q := 4, n := 28, r := 0 }
    lowerValue := 72057594037927936
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 28 0)) },
  { key := { q := 4, n := 28, r := 1 }
    lowerValue := 847736400446212
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 1))
    upperTrace := (.lengthenFreeN 23 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 28, r := 2 }
    lowerValue := 20664638381970
    upperValue := 1125899906842624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 2))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 28, r := 3 }
    lowerValue := 783754381035
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 3))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 28, r := 4 }
    lowerValue := 41166029316
    upperValue := 70368744177664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 4))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 3 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 28, r := 5 }
    lowerValue := 2811185931
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 5))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 4 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 28, r := 6 }
    lowerValue := 239971276
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 6))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 9 6))) },
  { key := { q := 4, n := 28, r := 7 }
    lowerValue := 24935396
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 7))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 10 7))) },
  { key := { q := 4, n := 28, r := 8 }
    lowerValue := 3094986
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 8))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 11 8))) },
  { key := { q := 4, n := 28, r := 9 }
    lowerValue := 452537
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 9))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 13 9))) },
  { key := { q := 4, n := 28, r := 10 }
    lowerValue := 77139
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 10))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 14 10))) },
  { key := { q := 4, n := 28, r := 11 }
    lowerValue := 15208
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 11))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 15 11))) },
  { key := { q := 4, n := 28, r := 12 }
    lowerValue := 3447
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 12))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 28, r := 13 }
    lowerValue := 895
    upperValue := 4194304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 13))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 28, r := 14 }
    lowerValue := 265
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 14))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 28, r := 15 }
    lowerValue := 89
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 15))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 28, r := 16 }
    lowerValue := 35
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 16))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16))) },
  { key := { q := 4, n := 28, r := 17 }
    lowerValue := 15
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 17))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 17))) },
  { key := { q := 4, n := 28, r := 18 }
    lowerValue := 8
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 18))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 18))) },
  { key := { q := 4, n := 28, r := 19 }
    lowerValue := 5
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 28 19))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 19))) },
  { key := { q := 4, n := 28, r := 20 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 22 21)))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 20))) },
  { key := { q := 4, n := 28, r := 21 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 23 22))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 28 21)) },
  { key := { q := 4, n := 28, r := 22 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 24 23)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 28 22)) },
  { key := { q := 4, n := 28, r := 23 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 25 24))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 28 23)) }]

end CoveringCodes.Database
