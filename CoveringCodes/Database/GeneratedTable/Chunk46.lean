import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 46. Do not edit manually.

def precomputedTable_chunk_46 : Array AnyBoundEntry := #[
  { key := { q := 4, n := 38, r := 34 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 36 35)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 38 34)) },
  { key := { q := 4, n := 38, r := 35 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 37 36))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 38 35)) },
  { key := { q := 4, n := 38, r := 36 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 38 37)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 38 36)) },
  { key := { q := 4, n := 38, r := 37 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 38 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 38 37)) },
  { key := { q := 4, n := 38, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 38 38)) },
  { key := { q := 4, n := 38, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 38 39)) },
  { key := { q := 4, n := 38, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 38 40)) },
  { key := { q := 4, n := 38, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 38 41)) },
  { key := { q := 4, n := 38, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 38 42)) },
  { key := { q := 4, n := 38, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 38 43)) },
  { key := { q := 4, n := 38, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 38 44)) },
  { key := { q := 4, n := 38, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 38 45)) },
  { key := { q := 4, n := 38, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 38 46)) },
  { key := { q := 4, n := 38, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 38 47)) },
  { key := { q := 4, n := 38, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 38 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 38 48)) },
  { key := { q := 4, n := 39, r := 0 }
    lowerValue := 302231454903657293676544
    upperValue := 302231454903657293676544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 39 0)) },
  { key := { q := 4, n := 39, r := 1 }
    lowerValue := 2561283516132688929463
    upperValue := 18889465931478580854784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 1))
    upperTrace := (.lengthenFreeN 34 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 39, r := 2 }
    lowerValue := 44530934861302091304
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 2))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 39, r := 3 }
    lowerValue := 1192046441995966293
    upperValue := 1180591620717411303424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 3))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 39, r := 4 }
    lowerValue := 43701141172768737
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 4))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 3 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 39, r := 5 }
    lowerValue := 2058449319309628
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 5))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 4 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 39, r := 6 }
    lowerValue := 119682496700428
    upperValue := 4611686018427387904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 6))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 9 6))) },
  { key := { q := 4, n := 39, r := 7 }
    lowerValue := 8357388137420
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 7))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 10 7))) },
  { key := { q := 4, n := 39, r := 8 }
    lowerValue := 687169696829
    upperValue := 288230376151711744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 8))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 11 8))) },
  { key := { q := 4, n := 39, r := 9 }
    lowerValue := 65546514571
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 9))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 13 9))) },
  { key := { q := 4, n := 39, r := 10 }
    lowerValue := 7170195466
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 10))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 14 10))) },
  { key := { q := 4, n := 39, r := 11 }
    lowerValue := 891382089
    upperValue := 1125899906842624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 11))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 15 11))) },
  { key := { q := 4, n := 39, r := 12 }
    lowerValue := 125022450
    upperValue := 70368744177664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 12))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 39, r := 13 }
    lowerValue := 19667325
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 13))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 39, r := 14 }
    lowerValue := 3453447
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 14))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 39, r := 15 }
    lowerValue := 674234
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 15))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 39, r := 16 }
    lowerValue := 145893
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 16))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16))) },
  { key := { q := 4, n := 39, r := 17 }
    lowerValue := 34898
    upperValue := 17179869184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 17))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 17))) },
  { key := { q := 4, n := 39, r := 18 }
    lowerValue := 9209
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 18))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 18))) },
  { key := { q := 4, n := 39, r := 19 }
    lowerValue := 2677
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 19))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 19))) },
  { key := { q := 4, n := 39, r := 20 }
    lowerValue := 856
    upperValue := 67108864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 20))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 20))) },
  { key := { q := 4, n := 39, r := 21 }
    lowerValue := 301
    upperValue := 4194304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 21))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 21))) },
  { key := { q := 4, n := 39, r := 22 }
    lowerValue := 116
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 22))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 30 22))) },
  { key := { q := 4, n := 39, r := 23 }
    lowerValue := 50
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 23))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 31 23))) },
  { key := { q := 4, n := 39, r := 24 }
    lowerValue := 23
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 24))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 33 24))) },
  { key := { q := 4, n := 39, r := 25 }
    lowerValue := 12
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 25))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 34 25))) },
  { key := { q := 4, n := 39, r := 26 }
    lowerValue := 7
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 26))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 35 26))) },
  { key := { q := 4, n := 39, r := 27 }
    lowerValue := 4
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 27))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 37 27))) },
  { key := { q := 4, n := 39, r := 28 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 30 29))))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 38 28))) },
  { key := { q := 4, n := 39, r := 29 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 31 30)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 39 29)) },
  { key := { q := 4, n := 39, r := 30 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 32 31))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 39 30)) },
  { key := { q := 4, n := 39, r := 31 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 33 32)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 39 31)) },
  { key := { q := 4, n := 39, r := 32 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 34 33))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 39 32)) },
  { key := { q := 4, n := 39, r := 33 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 35 34)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 39 33)) },
  { key := { q := 4, n := 39, r := 34 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 36 35))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 39 34)) },
  { key := { q := 4, n := 39, r := 35 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 37 36)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 39 35)) },
  { key := { q := 4, n := 39, r := 36 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 38 37))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 39 36)) },
  { key := { q := 4, n := 39, r := 37 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 39 38)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 39 37)) },
  { key := { q := 4, n := 39, r := 38 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 39 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 39 38)) },
  { key := { q := 4, n := 39, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 39 39)) },
  { key := { q := 4, n := 39, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 39 40)) },
  { key := { q := 4, n := 39, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 39 41)) },
  { key := { q := 4, n := 39, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 39 42)) },
  { key := { q := 4, n := 39, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 39 43)) },
  { key := { q := 4, n := 39, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 39 44)) },
  { key := { q := 4, n := 39, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 39 45)) },
  { key := { q := 4, n := 39, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 39 46)) },
  { key := { q := 4, n := 39, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 39 47)) },
  { key := { q := 4, n := 39, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 39 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 39 48)) },
  { key := { q := 4, n := 40, r := 0 }
    lowerValue := 1208925819614629174706176
    upperValue := 1208925819614629174706176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 40 0)) },
  { key := { q := 4, n := 40, r := 1 }
    lowerValue := 9991122476153960121539
    upperValue := 75557863725914323419136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 1))
    upperTrace := (.lengthenFreeN 35 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 40, r := 2 }
    lowerValue := 169293631090131518654
    upperValue := 18889465931478580854784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 2))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 40, r := 3 }
    lowerValue := 4413732770653006651
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 3))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 40, r := 4 }
    lowerValue := 157484170777329014
    upperValue := 1180591620717411303424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 4))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 3 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 40, r := 5 }
    lowerValue := 7214347751255326
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 5))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 4 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 40, r := 6 }
    lowerValue := 407628838072889
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 6))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 9 6))) },
  { key := { q := 4, n := 40, r := 7 }
    lowerValue := 27639402296062
    upperValue := 4611686018427387904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 7))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 10 7))) },
  { key := { q := 4, n := 40, r := 8 }
    lowerValue := 2204818320806
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 8))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 11 8))) },
  { key := { q := 4, n := 40, r := 9 }
    lowerValue := 203852037203
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 9))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 13 9))) },
  { key := { q := 4, n := 40, r := 10 }
    lowerValue := 21594163661
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 10))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 14 10))) },
  { key := { q := 4, n := 40, r := 11 }
    lowerValue := 2596977629
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 11))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 15 11))) },
  { key := { q := 4, n := 40, r := 12 }
    lowerValue := 351984909
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 12))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 40, r := 13 }
    lowerValue := 53446321
    upperValue := 70368744177664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 13))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 40, r := 14 }
    lowerValue := 9047664
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 14))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 40, r := 15 }
    lowerValue := 1700779
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 15))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 40, r := 16 }
    lowerValue := 353862
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 16))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16))) },
  { key := { q := 4, n := 40, r := 17 }
    lowerValue := 81271
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 17))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 17))) },
  { key := { q := 4, n := 40, r := 18 }
    lowerValue := 20560
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 18))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 18))) },
  { key := { q := 4, n := 40, r := 19 }
    lowerValue := 5720
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 19))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 19))) },
  { key := { q := 4, n := 40, r := 20 }
    lowerValue := 1747
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 20))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 20))) },
  { key := { q := 4, n := 40, r := 21 }
    lowerValue := 586
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 21))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 21))) },
  { key := { q := 4, n := 40, r := 22 }
    lowerValue := 215
    upperValue := 4194304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 22))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 30 22))) },
  { key := { q := 4, n := 40, r := 23 }
    lowerValue := 87
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 23))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 31 23))) },
  { key := { q := 4, n := 40, r := 24 }
    lowerValue := 39
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 24))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 33 24))) },
  { key := { q := 4, n := 40, r := 25 }
    lowerValue := 19
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 25))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 34 25))) },
  { key := { q := 4, n := 40, r := 26 }
    lowerValue := 10
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 26))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 35 26))) },
  { key := { q := 4, n := 40, r := 27 }
    lowerValue := 6
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 27))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 37 27))) },
  { key := { q := 4, n := 40, r := 28 }
    lowerValue := 4
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 28))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 38 28))) },
  { key := { q := 4, n := 40, r := 29 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 31 30))))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 39 29))) },
  { key := { q := 4, n := 40, r := 30 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 32 31)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 40 30)) },
  { key := { q := 4, n := 40, r := 31 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 33 32))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 40 31)) },
  { key := { q := 4, n := 40, r := 32 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 34 33)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 40 32)) },
  { key := { q := 4, n := 40, r := 33 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 35 34))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 40 33)) },
  { key := { q := 4, n := 40, r := 34 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 36 35)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 40 34)) },
  { key := { q := 4, n := 40, r := 35 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 37 36))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 40 35)) },
  { key := { q := 4, n := 40, r := 36 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 38 37)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 40 36)) },
  { key := { q := 4, n := 40, r := 37 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 39 38))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 40 37)) },
  { key := { q := 4, n := 40, r := 38 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 40 39)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 40 38)) },
  { key := { q := 4, n := 40, r := 39 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 40 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 40 39)) },
  { key := { q := 4, n := 40, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 40 40)) },
  { key := { q := 4, n := 40, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 40 41)) },
  { key := { q := 4, n := 40, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 40 42)) },
  { key := { q := 4, n := 40, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 40 43)) },
  { key := { q := 4, n := 40, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 40 44)) },
  { key := { q := 4, n := 40, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 40 45)) },
  { key := { q := 4, n := 40, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 40 46)) },
  { key := { q := 4, n := 40, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 40 47)) },
  { key := { q := 4, n := 40, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 40 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 40 48)) },
  { key := { q := 4, n := 41, r := 0 }
    lowerValue := 4835703278458516698824704
    upperValue := 4835703278458516698824704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 41 0)) },
  { key := { q := 4, n := 41, r := 1 }
    lowerValue := 38997607084342876603426
    upperValue := 302231454903657293676544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 1))
    upperTrace := (.lengthenFreeN 36 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 41, r := 2 }
    lowerValue := 644416748195431329801
    upperValue := 75557863725914323419136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 2))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 41, r := 3 }
    lowerValue := 16374230602519662130
    upperValue := 18889465931478580854784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 3))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 41, r := 4 }
    lowerValue := 569027169591388088
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 4))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 3 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 41, r := 5 }
    lowerValue := 25370697120505828
    upperValue := 1180591620717411303424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 5))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 4 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 41, r := 6 }
    lowerValue := 1394189659202385
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 6))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 9 6))) },
  { key := { q := 4, n := 41, r := 7 }
    lowerValue := 91869822140030
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 7))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 10 7))) },
  { key := { q := 4, n := 41, r := 8 }
    lowerValue := 7116262568460
    upperValue := 4611686018427387904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 8))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 11 8))) },
  { key := { q := 4, n := 41, r := 9 }
    lowerValue := 638347942923
    upperValue := 288230376151711744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 9))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 13 9))) },
  { key := { q := 4, n := 41, r := 10 }
    lowerValue := 65546514571
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 10))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 14 10))) },
  { key := { q := 4, n := 41, r := 11 }
    lowerValue := 7633741797
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 11))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 15 11))) },
  { key := { q := 4, n := 41, r := 12 }
    lowerValue := 1000945919
    upperValue := 1125899906842624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 12))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 41, r := 13 }
    lowerValue := 146878171
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 13))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 41, r := 14 }
    lowerValue := 24001412
    upperValue := 70368744177664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 14))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 41, r := 15 }
    lowerValue := 4349986
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 15))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 41, r := 16 }
    lowerValue := 871486
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 16))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16))) },
  { key := { q := 4, n := 41, r := 17 }
    lowerValue := 192471
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 17))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 17))) },
  { key := { q := 4, n := 41, r := 18 }
    lowerValue := 46755
    upperValue := 17179869184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 18))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 18))) },
  { key := { q := 4, n := 41, r := 19 }
    lowerValue := 12470
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 19))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 19))) },
  { key := { q := 4, n := 41, r := 20 }
    lowerValue := 3647
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 20))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 20))) },
  { key := { q := 4, n := 41, r := 21 }
    lowerValue := 1168
    upperValue := 67108864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 21))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 21))) },
  { key := { q := 4, n := 41, r := 22 }
    lowerValue := 410
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 22))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 30 22))) },
  { key := { q := 4, n := 41, r := 23 }
    lowerValue := 157
    upperValue := 4194304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 23))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 31 23))) },
  { key := { q := 4, n := 41, r := 24 }
    lowerValue := 66
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 24))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 33 24))) },
  { key := { q := 4, n := 41, r := 25 }
    lowerValue := 31
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 25))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 34 25))) },
  { key := { q := 4, n := 41, r := 26 }
    lowerValue := 16
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 26))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 35 26))) },
  { key := { q := 4, n := 41, r := 27 }
    lowerValue := 9
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 27))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 37 27))) },
  { key := { q := 4, n := 41, r := 28 }
    lowerValue := 5
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 28))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 38 28))) },
  { key := { q := 4, n := 41, r := 29 }
    lowerValue := 4
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 29))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 39 29))) },
  { key := { q := 4, n := 41, r := 30 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 32 31))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 41 30)) },
  { key := { q := 4, n := 41, r := 31 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 33 32)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 41 31)) },
  { key := { q := 4, n := 41, r := 32 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 34 33))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 41 32)) },
  { key := { q := 4, n := 41, r := 33 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 35 34)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 41 33)) },
  { key := { q := 4, n := 41, r := 34 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 36 35))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 41 34)) },
  { key := { q := 4, n := 41, r := 35 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 37 36)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 41 35)) },
  { key := { q := 4, n := 41, r := 36 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 38 37))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 41 36)) },
  { key := { q := 4, n := 41, r := 37 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 39 38)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 41 37)) },
  { key := { q := 4, n := 41, r := 38 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 40 39))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 41 38)) },
  { key := { q := 4, n := 41, r := 39 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 41 40)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 41 39)) },
  { key := { q := 4, n := 41, r := 40 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 41 40))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 41 40)) },
  { key := { q := 4, n := 41, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 41 41)) },
  { key := { q := 4, n := 41, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 41 42)) },
  { key := { q := 4, n := 41, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 41 43)) },
  { key := { q := 4, n := 41, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 41 44)) },
  { key := { q := 4, n := 41, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 41 45)) },
  { key := { q := 4, n := 41, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 41 46)) },
  { key := { q := 4, n := 41, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 41 47)) },
  { key := { q := 4, n := 41, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 41 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 41 48)) },
  { key := { q := 4, n := 42, r := 0 }
    lowerValue := 19342813113834066795298816
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 42 0)) },
  { key := { q := 4, n := 42, r := 1 }
    lowerValue := 152305615069559581065346
    upperValue := 1208925819614629174706176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 1))
    upperTrace := (.lengthenFreeN 37 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 42, r := 2 }
    lowerValue := 2455918374026671761719
    upperValue := 302231454903657293676544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 2))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 42, r := 3 }
    lowerValue := 60857842138190975206
    upperValue := 75557863725914323419136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 3))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 42, r := 4 }
    lowerValue := 2061218132099758977
    upperValue := 18889465931478580854784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 4))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 3 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 42, r := 5 }
    lowerValue := 89510075401197247
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 5))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 4 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 42, r := 6 }
    lowerValue := 4787499757859043
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 6))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 9 6))) },
  { key := { q := 4, n := 42, r := 7 }
    lowerValue := 306824824746854
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 7))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 10 7))) },
  { key := { q := 4, n := 42, r := 8 }
    lowerValue := 23097608329896
    upperValue := 18446744073709551616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 8))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 11 8))) },
  { key := { q := 4, n := 42, r := 9 }
    lowerValue := 2011957682343
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 9))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 13 9))) },
  { key := { q := 4, n := 42, r := 10 }
    lowerValue := 200441244506
    upperValue := 288230376151711744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 10))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 14 10))) },
  { key := { q := 4, n := 42, r := 11 }
    lowerValue := 22628737293
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 11))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 15 11))) },
  { key := { q := 4, n := 42, r := 12 }
    lowerValue := 2873466102
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 12))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 42, r := 13 }
    lowerValue := 407933134
    upperValue := 1125899906842624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 13))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 42, r := 14 }
    lowerValue := 64423332
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 14))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 42, r := 15 }
    lowerValue := 11271465
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 15))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 42, r := 16 }
    lowerValue := 2177317
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 16))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16))) },
  { key := { q := 4, n := 42, r := 17 }
    lowerValue := 463070
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 17))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 17))) },
  { key := { q := 4, n := 42, r := 18 }
    lowerValue := 108182
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 18))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 18))) },
  { key := { q := 4, n := 42, r := 19 }
    lowerValue := 27709
    upperValue := 17179869184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 19))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 19))) },
  { key := { q := 4, n := 42, r := 20 }
    lowerValue := 7770
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 20))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 20))) },
  { key := { q := 4, n := 42, r := 21 }
    lowerValue := 2383
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 21))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 21))) },
  { key := { q := 4, n := 42, r := 22 }
    lowerValue := 798
    upperValue := 67108864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 22))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 30 22))) },
  { key := { q := 4, n := 42, r := 23 }
    lowerValue := 292
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 23))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 31 23))) },
  { key := { q := 4, n := 42, r := 24 }
    lowerValue := 117
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 24))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 33 24))) },
  { key := { q := 4, n := 42, r := 25 }
    lowerValue := 51
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 25))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 34 25))) },
  { key := { q := 4, n := 42, r := 26 }
    lowerValue := 25
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 26))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 35 26))) },
  { key := { q := 4, n := 42, r := 27 }
    lowerValue := 13
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 27))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 37 27))) },
  { key := { q := 4, n := 42, r := 28 }
    lowerValue := 7
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 28))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 38 28))) },
  { key := { q := 4, n := 42, r := 29 }
    lowerValue := 5
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 29))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 39 29))) },
  { key := { q := 4, n := 42, r := 30 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 32 31)))))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 41 30))) },
  { key := { q := 4, n := 42, r := 31 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 33 32))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 42 31)) },
  { key := { q := 4, n := 42, r := 32 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 34 33)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 42 32)) },
  { key := { q := 4, n := 42, r := 33 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 35 34))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 42 33)) },
  { key := { q := 4, n := 42, r := 34 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 36 35)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 42 34)) },
  { key := { q := 4, n := 42, r := 35 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 37 36))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 42 35)) },
  { key := { q := 4, n := 42, r := 36 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 38 37)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 42 36)) },
  { key := { q := 4, n := 42, r := 37 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 39 38))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 42 37)) },
  { key := { q := 4, n := 42, r := 38 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 40 39)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 42 38)) },
  { key := { q := 4, n := 42, r := 39 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 41 40))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 42 39)) },
  { key := { q := 4, n := 42, r := 40 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 42 41)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 42 40)) },
  { key := { q := 4, n := 42, r := 41 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 42 41))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 42 41)) },
  { key := { q := 4, n := 42, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 42 42)) },
  { key := { q := 4, n := 42, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 42 43)) },
  { key := { q := 4, n := 42, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 42 44)) },
  { key := { q := 4, n := 42, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 42 45)) },
  { key := { q := 4, n := 42, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 42 46)) },
  { key := { q := 4, n := 42, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 42 47)) },
  { key := { q := 4, n := 42, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 42 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 4 42 48)) },
  { key := { q := 4, n := 43, r := 0 }
    lowerValue := 77371252455336267181195264
    upperValue := 77371252455336267181195264
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 4 43 0)) },
  { key := { q := 4, n := 43, r := 1 }
    lowerValue := 595163480425663593701503
    upperValue := 4835703278458516698824704
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 1))
    upperTrace := (.lengthenFreeN 38 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))) },
  { key := { q := 4, n := 43, r := 2 }
    lowerValue := 9370383002947349785782
    upperValue := 1208925819614629174706176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 2))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 1 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 43, r := 3 }
    lowerValue := 226586850898883241517
    upperValue := 302231454903657293676544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 3))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 2 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 43, r := 4 }
    lowerValue := 7484396630744620810
    upperValue := 75557863725914323419136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 4))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 3 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 43, r := 5 }
    lowerValue := 316772049247288047
    upperValue := 18889465931478580854784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 5))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 4 (by decide : 0 < 4) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 4, n := 43, r := 6 }
    lowerValue := 16502121590839725
    upperValue := 1180591620717411303424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 6))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 9 6))) },
  { key := { q := 4, n := 43, r := 7 }
    lowerValue := 1029383605777338
    upperValue := 295147905179352825856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 7))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 10 7))) },
  { key := { q := 4, n := 43, r := 8 }
    lowerValue := 75369179115693
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 8))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 11 8))) },
  { key := { q := 4, n := 43, r := 9 }
    lowerValue := 6380481607650
    upperValue := 4611686018427387904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 9))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 13 9))) },
  { key := { q := 4, n := 43, r := 10 }
    lowerValue := 617276500409
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 10))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 14 10))) },
  { key := { q := 4, n := 43, r := 11 }
    lowerValue := 67614881095
    upperValue := 288230376151711744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 11))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 15 11))) },
  { key := { q := 4, n := 43, r := 12 }
    lowerValue := 8323162647
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 12))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 17 12))) },
  { key := { q := 4, n := 43, r := 13 }
    lowerValue := 1144355455
    upperValue := 4503599627370496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 13))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 18 13))) },
  { key := { q := 4, n := 43, r := 14 }
    lowerValue := 174852128
    upperValue := 1125899906842624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 14))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 19 14))) },
  { key := { q := 4, n := 43, r := 15 }
    lowerValue := 29566862
    upperValue := 70368744177664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 15))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 21 15))) },
  { key := { q := 4, n := 43, r := 16 }
    lowerValue := 5513897
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 16))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 22 16))) },
  { key := { q := 4, n := 43, r := 17 }
    lowerValue := 1130792
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 17))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 23 17))) },
  { key := { q := 4, n := 43, r := 18 }
    lowerValue := 254417
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 18))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 25 18))) },
  { key := { q := 4, n := 43, r := 19 }
    lowerValue := 62676
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 19))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 26 19))) },
  { key := { q := 4, n := 43, r := 20 }
    lowerValue := 16880
    upperValue := 17179869184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 20))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 27 20))) },
  { key := { q := 4, n := 43, r := 21 }
    lowerValue := 4964
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 21))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 29 21))) },
  { key := { q := 4, n := 43, r := 22 }
    lowerValue := 1592
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 22))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 30 22))) },
  { key := { q := 4, n := 43, r := 23 }
    lowerValue := 557
    upperValue := 67108864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 23))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 31 23))) },
  { key := { q := 4, n := 43, r := 24 }
    lowerValue := 212
    upperValue := 4194304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 24))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 33 24))) },
  { key := { q := 4, n := 43, r := 25 }
    lowerValue := 88
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 25))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 34 25))) },
  { key := { q := 4, n := 43, r := 26 }
    lowerValue := 40
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 26))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 35 26))) },
  { key := { q := 4, n := 43, r := 27 }
    lowerValue := 20
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 27))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 37 27))) },
  { key := { q := 4, n := 43, r := 28 }
    lowerValue := 11
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 28))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 38 28))) },
  { key := { q := 4, n := 43, r := 29 }
    lowerValue := 7
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 29))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 39 29))) },
  { key := { q := 4, n := 43, r := 30 }
    lowerValue := 4
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 4 43 30))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 41 30))) },
  { key := { q := 4, n := 43, r := 31 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 33 32)))))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 42 31))) },
  { key := { q := 4, n := 43, r := 32 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 34 33))))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 43 32)) },
  { key := { q := 4, n := 43, r := 33 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 35 34)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 43 33)) },
  { key := { q := 4, n := 43, r := 34 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 36 35))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 43 34)) },
  { key := { q := 4, n := 43, r := 35 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 37 36)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 43 35)) },
  { key := { q := 4, n := 43, r := 36 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 38 37))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 43 36)) },
  { key := { q := 4, n := 43, r := 37 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 39 38)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 43 37)) },
  { key := { q := 4, n := 43, r := 38 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.lengthBack (by decide : 0 < 4) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 40 39))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 4 43 38)) }]

end CoveringCodes.Database
