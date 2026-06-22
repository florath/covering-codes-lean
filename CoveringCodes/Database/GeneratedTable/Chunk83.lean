import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 83. Do not edit manually.

def precomputedTable_chunk_83 : Array AnyBoundEntry := #[
  { key := { q := 8, n := 31, r := 23 }
    lowerValue := 31
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 23))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 27 23))) },
  { key := { q := 8, n := 31, r := 24 }
    lowerValue := 12
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 24))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 28 24))) },
  { key := { q := 8, n := 31, r := 25 }
    lowerValue := 8
    upperValue := 512
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 27 26)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 29 25))) },
  { key := { q := 8, n := 31, r := 26 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 28 27))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 30 26))) },
  { key := { q := 8, n := 31, r := 27 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 29 28)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 31 27)) },
  { key := { q := 8, n := 31, r := 28 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 30 29))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 31 28)) },
  { key := { q := 8, n := 31, r := 29 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 31 30)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 31 29)) },
  { key := { q := 8, n := 31, r := 30 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 31 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 31 30)) },
  { key := { q := 8, n := 31, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 31 31)) },
  { key := { q := 8, n := 31, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 31 32)) },
  { key := { q := 8, n := 31, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 31 33)) },
  { key := { q := 8, n := 31, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 31 34)) },
  { key := { q := 8, n := 31, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 31 35)) },
  { key := { q := 8, n := 31, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 31 36)) },
  { key := { q := 8, n := 31, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 31 37)) },
  { key := { q := 8, n := 31, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 31 38)) },
  { key := { q := 8, n := 31, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 31 39)) },
  { key := { q := 8, n := 31, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 31 40)) },
  { key := { q := 8, n := 31, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 31 41)) },
  { key := { q := 8, n := 31, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 31 42)) },
  { key := { q := 8, n := 31, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 31 43)) },
  { key := { q := 8, n := 31, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 31 44)) },
  { key := { q := 8, n := 31, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 31 45)) },
  { key := { q := 8, n := 31, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 31 46)) },
  { key := { q := 8, n := 31, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 31 47)) },
  { key := { q := 8, n := 31, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 31 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 31 48)) },
  { key := { q := 8, n := 32, r := 0 }
    lowerValue := 79228162514264337593543950336
    upperValue := 79228162514264337593543950336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 32 0)) },
  { key := { q := 8, n := 32, r := 1 }
    lowerValue := 352125166730063722637973113
    upperValue := 4951760157141521099596496896
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 1))
    upperTrace := (.lengthenFreeN 26 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 32, r := 2 }
    lowerValue := 3229979310785777552837212
    upperValue := 278851018446969680223535104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 2))
    upperTrace := (.lengthenFreeN 24 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 8, n := 32, r := 3 }
    lowerValue := 45907839462109849695734
    upperValue := 34856377305871210027941888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 3))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))))) },
  { key := { q := 8, n := 32, r := 4 }
    lowerValue := 899647654405474363070
    upperValue := 3442605166011971360784384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 4))
    upperTrace := (.lengthenFreeN 24 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4)))) },
  { key := { q := 8, n := 32, r := 5 }
    lowerValue := 22815279747345241934
    upperValue := 430325645751496420098048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 5))
    upperTrace := (.lengthenFreeN 23 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 8, n := 32, r := 6 }
    lowerValue := 719698748280381973
    upperValue := 53790705718937052512256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 6))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))))) },
  { key := { q := 8, n := 32, r := 7 }
    lowerValue := 27490570353398599
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 7))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 32, r := 8 }
    lowerValue := 1247335620555641
    upperValue := 590295810358705651712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 8))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 32, r := 9 }
    lowerValue := 66278188504830
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 9))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 32, r := 10 }
    lowerValue := 4080035309784
    upperValue := 9223372036854775808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 10))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 32, r := 11 }
    lowerValue := 288582974267
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 11))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 32, r := 12 }
    lowerValue := 23303733162
    upperValue := 144115188075855872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 12))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 32, r := 13 }
    lowerValue := 2138037430
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 13))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 32, r := 14 }
    lowerValue := 222055143
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 14))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 32, r := 15 }
    lowerValue := 26039639
    upperValue := 35184372088832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 15))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 32, r := 16 }
    lowerValue := 3441970
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 16))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 32, r := 17 }
    lowerValue := 512397
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 17))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 32, r := 18 }
    lowerValue := 85902
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 18))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 32, r := 19 }
    lowerValue := 16229
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 19))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19))) },
  { key := { q := 8, n := 32, r := 20 }
    lowerValue := 3460
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 20))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 20))) },
  { key := { q := 8, n := 32, r := 21 }
    lowerValue := 835
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 21))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 21))) },
  { key := { q := 8, n := 32, r := 22 }
    lowerValue := 229
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 22))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 26 22))) },
  { key := { q := 8, n := 32, r := 23 }
    lowerValue := 72
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 23))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 27 23))) },
  { key := { q := 8, n := 32, r := 24 }
    lowerValue := 26
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 24))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 28 24))) },
  { key := { q := 8, n := 32, r := 25 }
    lowerValue := 11
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 25))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 29 25))) },
  { key := { q := 8, n := 32, r := 26 }
    lowerValue := 8
    upperValue := 512
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 28 27)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 30 26))) },
  { key := { q := 8, n := 32, r := 27 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 29 28))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 31 27))) },
  { key := { q := 8, n := 32, r := 28 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 30 29)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 32 28)) },
  { key := { q := 8, n := 32, r := 29 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 31 30))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 32 29)) },
  { key := { q := 8, n := 32, r := 30 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 32 31)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 32 30)) },
  { key := { q := 8, n := 32, r := 31 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 32 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 32 31)) },
  { key := { q := 8, n := 32, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 32 32)) },
  { key := { q := 8, n := 32, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 32 33)) },
  { key := { q := 8, n := 32, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 32 34)) },
  { key := { q := 8, n := 32, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 32 35)) },
  { key := { q := 8, n := 32, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 32 36)) },
  { key := { q := 8, n := 32, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 32 37)) },
  { key := { q := 8, n := 32, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 32 38)) },
  { key := { q := 8, n := 32, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 32 39)) },
  { key := { q := 8, n := 32, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 32 40)) },
  { key := { q := 8, n := 32, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 32 41)) },
  { key := { q := 8, n := 32, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 32 42)) },
  { key := { q := 8, n := 32, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 32 43)) },
  { key := { q := 8, n := 32, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 32 44)) },
  { key := { q := 8, n := 32, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 32 45)) },
  { key := { q := 8, n := 32, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 32 46)) },
  { key := { q := 8, n := 32, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 32 47)) },
  { key := { q := 8, n := 32, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 32 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 32 48)) },
  { key := { q := 8, n := 33, r := 0 }
    lowerValue := 633825300114114700748351602688
    upperValue := 633825300114114700748351602688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 33 0)) },
  { key := { q := 8, n := 33, r := 1 }
    lowerValue := 2732005603940149572191170702
    upperValue := 39614081257132168796771975168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 1))
    upperTrace := (.lengthenFreeN 27 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 33, r := 2 }
    lowerValue := 24280773065971295615551318
    upperValue := 2230808147575757441788280832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 2))
    upperTrace := (.lengthenFreeN 25 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 8, n := 33, r := 3 }
    lowerValue := 334029666275688744391789
    upperValue := 278851018446969680223535104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 3))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))))) },
  { key := { q := 8, n := 33, r := 4 }
    lowerValue := 6328985341326136319549
    upperValue := 27540841328095770886275072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 4))
    upperTrace := (.lengthenFreeN 25 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4)))) },
  { key := { q := 8, n := 33, r := 5 }
    lowerValue := 155005416803442775377
    upperValue := 3442605166011971360784384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 5))
    upperTrace := (.lengthenFreeN 24 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 8, n := 33, r := 6 }
    lowerValue := 4716196453033649790
    upperValue := 430325645751496420098048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 6))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))))) },
  { key := { q := 8, n := 33, r := 7 }
    lowerValue := 173526752753079501
    upperValue := 37778931862957161709568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 7))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 33, r := 8 }
    lowerValue := 7573307636425955
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 8))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 33, r := 9 }
    lowerValue := 386475636266923
    upperValue := 590295810358705651712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 9))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 33, r := 10 }
    lowerValue := 22810781088772
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 10))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 33, r := 11 }
    lowerValue := 1544139422640
    upperValue := 9223372036854775808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 11))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 33, r := 12 }
    lowerValue := 119104273651
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 12))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 33, r := 13 }
    lowerValue := 10415314354
    upperValue := 144115188075855872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 13))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 33, r := 14 }
    lowerValue := 1028619204
    upperValue := 2251799813685248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 14))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 33, r := 15 }
    lowerValue := 114405526
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 15))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 33, r := 16 }
    lowerValue := 14302258
    upperValue := 35184372088832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 16))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 33, r := 17 }
    lowerValue := 2007362
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 17))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 33, r := 18 }
    lowerValue := 316174
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 18))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 33, r := 19 }
    lowerValue := 55902
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 19))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19))) },
  { key := { q := 8, n := 33, r := 20 }
    lowerValue := 11106
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 20))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 20))) },
  { key := { q := 8, n := 33, r := 21 }
    lowerValue := 2484
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 21))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 21))) },
  { key := { q := 8, n := 33, r := 22 }
    lowerValue := 627
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 22))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 26 22))) },
  { key := { q := 8, n := 33, r := 23 }
    lowerValue := 179
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 23))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 27 23))) },
  { key := { q := 8, n := 33, r := 24 }
    lowerValue := 58
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 24))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 28 24))) },
  { key := { q := 8, n := 33, r := 25 }
    lowerValue := 22
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 25))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 29 25))) },
  { key := { q := 8, n := 33, r := 26 }
    lowerValue := 10
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 26))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 30 26))) },
  { key := { q := 8, n := 33, r := 27 }
    lowerValue := 8
    upperValue := 512
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 29 28)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 31 27))) },
  { key := { q := 8, n := 33, r := 28 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 30 29))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 33 28)) },
  { key := { q := 8, n := 33, r := 29 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 31 30)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 33 29)) },
  { key := { q := 8, n := 33, r := 30 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 32 31))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 33 30)) },
  { key := { q := 8, n := 33, r := 31 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 33 32)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 33 31)) },
  { key := { q := 8, n := 33, r := 32 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 33 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 33 32)) },
  { key := { q := 8, n := 33, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 33 33)) },
  { key := { q := 8, n := 33, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 33 34)) },
  { key := { q := 8, n := 33, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 33 35)) },
  { key := { q := 8, n := 33, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 33 36)) },
  { key := { q := 8, n := 33, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 33 37)) },
  { key := { q := 8, n := 33, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 33 38)) },
  { key := { q := 8, n := 33, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 33 39)) },
  { key := { q := 8, n := 33, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 33 40)) },
  { key := { q := 8, n := 33, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 33 41)) },
  { key := { q := 8, n := 33, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 33 42)) },
  { key := { q := 8, n := 33, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 33 43)) },
  { key := { q := 8, n := 33, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 33 44)) },
  { key := { q := 8, n := 33, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 33 45)) },
  { key := { q := 8, n := 33, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 33 46)) },
  { key := { q := 8, n := 33, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 33 47)) },
  { key := { q := 8, n := 33, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 33 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 33 48)) },
  { key := { q := 8, n := 34, r := 0 }
    lowerValue := 5070602400912917605986812821504
    upperValue := 5070602400912917605986812821504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 34 0)) },
  { key := { q := 8, n := 34, r := 1 }
    lowerValue := 21215909627250701280279551555
    upperValue := 316912650057057350374175801344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 1))
    upperTrace := (.lengthenFreeN 28 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 34, r := 2 }
    lowerValue := 182869388376836324509045472
    upperValue := 17846465180606059534306246656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 2))
    upperTrace := (.lengthenFreeN 26 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 8, n := 34, r := 3 }
    lowerValue := 2437508364858342117249363
    upperValue := 2230808147575757441788280832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 3))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))))) },
  { key := { q := 8, n := 34, r := 4 }
    lowerValue := 44702868628543137551214
    upperValue := 220326730624766167090200576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 4))
    upperTrace := (.lengthenFreeN 26 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4)))) },
  { key := { q := 8, n := 34, r := 5 }
    lowerValue := 1058563726075003001494
    upperValue := 27540841328095770886275072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 5))
    upperTrace := (.lengthenFreeN 25 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 8, n := 34, r := 6 }
    lowerValue := 31104805610190391677
    upperValue := 3442605166011971360784384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 6))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))))) },
  { key := { q := 8, n := 34, r := 7 }
    lowerValue := 1103897893344544096
    upperValue := 302231454903657293676544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 7))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 34, r := 8 }
    lowerValue := 46408476237016545
    upperValue := 37778931862957161709568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 8))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 34, r := 9 }
    lowerValue := 2278044345156683
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 9))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 34, r := 10 }
    lowerValue := 129133656561554
    upperValue := 590295810358705651712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 10))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 34, r := 11 }
    lowerValue := 8381506455475
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 11))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 34, r := 12 }
    lowerValue := 618750917537
    upperValue := 9223372036854775808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 12))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 34, r := 13 }
    lowerValue := 51684763386
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 13))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 34, r := 14 }
    lowerValue := 4865397803
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 14))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 34, r := 15 }
    lowerValue := 514599312
    upperValue := 2251799813685248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 15))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 34, r := 16 }
    lowerValue := 61019847
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 16))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 34, r := 17 }
    lowerValue := 8100449
    upperValue := 35184372088832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 17))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 34, r := 18 }
    lowerValue := 1203011
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 18))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 34, r := 19 }
    lowerValue := 199859
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 19))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19))) },
  { key := { q := 8, n := 34, r := 20 }
    lowerValue := 37164
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 20))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 20))) },
  { key := { q := 8, n := 34, r := 21 }
    lowerValue := 7745
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 21))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 21))) },
  { key := { q := 8, n := 34, r := 22 }
    lowerValue := 1812
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 22))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 26 22))) },
  { key := { q := 8, n := 34, r := 23 }
    lowerValue := 478
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 23))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 27 23))) },
  { key := { q := 8, n := 34, r := 24 }
    lowerValue := 142
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 24))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 28 24))) },
  { key := { q := 8, n := 34, r := 25 }
    lowerValue := 48
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 25))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 29 25))) },
  { key := { q := 8, n := 34, r := 26 }
    lowerValue := 19
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 26))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 30 26))) },
  { key := { q := 8, n := 34, r := 27 }
    lowerValue := 9
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 27))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 31 27))) },
  { key := { q := 8, n := 34, r := 28 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 30 29)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 33 28))) },
  { key := { q := 8, n := 34, r := 29 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 31 30))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 34 29)) },
  { key := { q := 8, n := 34, r := 30 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 32 31)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 34 30)) },
  { key := { q := 8, n := 34, r := 31 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 33 32))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 34 31)) },
  { key := { q := 8, n := 34, r := 32 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 34 33)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 34 32)) },
  { key := { q := 8, n := 34, r := 33 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 34 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 34 33)) },
  { key := { q := 8, n := 34, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 34 34)) },
  { key := { q := 8, n := 34, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 34 35)) },
  { key := { q := 8, n := 34, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 34 36)) },
  { key := { q := 8, n := 34, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 34 37)) },
  { key := { q := 8, n := 34, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 34 38)) },
  { key := { q := 8, n := 34, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 34 39)) },
  { key := { q := 8, n := 34, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 34 40)) },
  { key := { q := 8, n := 34, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 34 41)) },
  { key := { q := 8, n := 34, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 34 42)) },
  { key := { q := 8, n := 34, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 34 43)) },
  { key := { q := 8, n := 34, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 34 44)) },
  { key := { q := 8, n := 34, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 34 45)) },
  { key := { q := 8, n := 34, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 34 46)) },
  { key := { q := 8, n := 34, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 34 47)) },
  { key := { q := 8, n := 34, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 34 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 34 48)) },
  { key := { q := 8, n := 35, r := 0 }
    lowerValue := 40564819207303340847894502572032
    upperValue := 40564819207303340847894502572032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 35 0)) },
  { key := { q := 8, n := 35, r := 1 }
    lowerValue := 164897639054078621332904482001
    upperValue := 2535301200456458802993406410752
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 1))
    upperTrace := (.lengthenFreeN 29 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 35, r := 2 }
    lowerValue := 1379708826478804831396704282
    upperValue := 142771721444848476274449973248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 2))
    upperTrace := (.lengthenFreeN 27 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 8, n := 35, r := 3 }
    lowerValue := 17835895490949156522120964
    upperValue := 17846465180606059534306246656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 3))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))))) },
  { key := { q := 8, n := 35, r := 4 }
    lowerValue := 316935687319829410474450
    upperValue := 1762613844998129336721604608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 4))
    upperTrace := (.lengthenFreeN 27 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4)))) },
  { key := { q := 8, n := 35, r := 5 }
    lowerValue := 7264368343032000591836
    upperValue := 220326730624766167090200576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 5))
    upperTrace := (.lengthenFreeN 26 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 8, n := 35, r := 6 }
    lowerValue := 206387130896423300647
    upperValue := 27540841328095770886275072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 6))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))))) },
  { key := { q := 8, n := 35, r := 7 }
    lowerValue := 7073846114871920849
    upperValue := 2417851639229258349412352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 7))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 35, r := 8 }
    lowerValue := 286851919601827032
    upperValue := 302231454903657293676544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 8))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 35, r := 9 }
    lowerValue := 13563746750953920
    upperValue := 37778931862957161709568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 9))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 35, r := 10 }
    lowerValue := 739595350180386
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 10))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 35, r := 11 }
    lowerValue := 46104807709518
    upperValue := 590295810358705651712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 11))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 35, r := 12 }
    lowerValue := 3263532787852
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 12))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 35, r := 13 }
    lowerValue := 260916277065
    upperValue := 9223372036854775808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 13))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 35, r := 14 }
    lowerValue := 23462510976
    upperValue := 144115188075855872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 14))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 35, r := 15 }
    lowerValue := 2365470673
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 15))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 35, r := 16 }
    lowerValue := 266747339
    upperValue := 2251799813685248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 16))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 35, r := 17 }
    lowerValue := 33589915
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 17))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 35, r := 18 }
    lowerValue := 4718658
    upperValue := 35184372088832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 18))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 35, r := 19 }
    lowerValue := 739217
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 19))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19))) },
  { key := { q := 8, n := 35, r := 20 }
    lowerValue := 129173
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 20))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 20))) },
  { key := { q := 8, n := 35, r := 21 }
    lowerValue := 25199
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 21))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 21))) },
  { key := { q := 8, n := 35, r := 22 }
    lowerValue := 5496
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 22))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 26 22))) },
  { key := { q := 8, n := 35, r := 23 }
    lowerValue := 1343
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 23))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 27 23))) },
  { key := { q := 8, n := 35, r := 24 }
    lowerValue := 369
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 24))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 28 24))) },
  { key := { q := 8, n := 35, r := 25 }
    lowerValue := 114
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 25))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 29 25))) },
  { key := { q := 8, n := 35, r := 26 }
    lowerValue := 40
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 26))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 30 26))) },
  { key := { q := 8, n := 35, r := 27 }
    lowerValue := 16
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 27))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 31 27))) },
  { key := { q := 8, n := 35, r := 28 }
    lowerValue := 8
    upperValue := 512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 28))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 33 28))) },
  { key := { q := 8, n := 35, r := 29 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 31 30)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 34 29))) },
  { key := { q := 8, n := 35, r := 30 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 32 31))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 35 30)) },
  { key := { q := 8, n := 35, r := 31 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 33 32)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 35 31)) },
  { key := { q := 8, n := 35, r := 32 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 34 33))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 35 32)) },
  { key := { q := 8, n := 35, r := 33 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 35 34)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 35 33)) },
  { key := { q := 8, n := 35, r := 34 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 35 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 35 34)) },
  { key := { q := 8, n := 35, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 35 35)) },
  { key := { q := 8, n := 35, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 35 36)) },
  { key := { q := 8, n := 35, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 35 37)) },
  { key := { q := 8, n := 35, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 35 38)) },
  { key := { q := 8, n := 35, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 35 39)) },
  { key := { q := 8, n := 35, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 35 40)) },
  { key := { q := 8, n := 35, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 35 41)) },
  { key := { q := 8, n := 35, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 35 42)) },
  { key := { q := 8, n := 35, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 35 43)) },
  { key := { q := 8, n := 35, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 35 44)) },
  { key := { q := 8, n := 35, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 35 45)) },
  { key := { q := 8, n := 35, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 35 46)) },
  { key := { q := 8, n := 35, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 35 47)) },
  { key := { q := 8, n := 35, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 35 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 35 48)) },
  { key := { q := 8, n := 36, r := 0 }
    lowerValue := 324518553658426726783156020576256
    upperValue := 324518553658426726783156020576256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 36 0)) },
  { key := { q := 8, n := 36, r := 1 }
    lowerValue := 1282682030270461370684411148523
    upperValue := 20282409603651670423947251286016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 1))
    upperTrace := (.lengthenFreeN 30 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 36, r := 2 }
    lowerValue := 10426968918755477517692896591
    upperValue := 1142173771558787810195599785984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 2))
    upperTrace := (.lengthenFreeN 28 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 8, n := 36, r := 3 }
    lowerValue := 130846710717255709361579563
    upperValue := 142771721444848476274449973248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 3))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))))) },
  { key := { q := 8, n := 36, r := 4 }
    lowerValue := 2254994026993860310037879
    upperValue := 14100910759985034693772836864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 4))
    upperTrace := (.lengthenFreeN 28 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4)))) },
  { key := { q := 8, n := 36, r := 5 }
    lowerValue := 50079903211817260513647
    upperValue := 1762613844998129336721604608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 5))
    upperTrace := (.lengthenFreeN 27 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 8, n := 36, r := 6 }
    lowerValue := 1377203966209379949461
    upperValue := 220326730624766167090200576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 6))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))))) },
  { key := { q := 8, n := 36, r := 7 }
    lowerValue := 45640568265784260765
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 7))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 36, r := 8 }
    lowerValue := 1787437911250319508
    upperValue := 2417851639229258349412352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 8))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 36, r := 9 }
    lowerValue := 81525524930242545
    upperValue := 302231454903657293676544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 9))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 36, r := 10 }
    lowerValue := 4282260265336818
    upperValue := 37778931862957161709568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 10))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 36, r := 11 }
    lowerValue := 256785995824710
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 11))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 36, r := 12 }
    lowerValue := 17457933171937
    upperValue := 590295810358705651712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 12))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 36, r := 13 }
    lowerValue := 1338338290288
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 13))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 36, r := 14 }
    lowerValue := 115191259978
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 14))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 36, r := 15 }
    lowerValue := 11094205760
    upperValue := 144115188075855872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 15))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 36, r := 16 }
    lowerValue := 1192586673
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 16))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 36, r := 17 }
    lowerValue := 142824238
    upperValue := 2251799813685248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 17))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 36, r := 18 }
    lowerValue := 19033093
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 18))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 36, r := 19 }
    lowerValue := 2820621
    upperValue := 35184372088832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 19))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19))) },
  { key := { q := 8, n := 36, r := 20 }
    lowerValue := 464818
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 20))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 20))) },
  { key := { q := 8, n := 36, r := 21 }
    lowerValue := 85219
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 21))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 21))) },
  { key := { q := 8, n := 36, r := 22 }
    lowerValue := 17400
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 22))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 26 22))) },
  { key := { q := 8, n := 36, r := 23 }
    lowerValue := 3963
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 23))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 27 23))) },
  { key := { q := 8, n := 36, r := 24 }
    lowerValue := 1009
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 24))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 28 24))) },
  { key := { q := 8, n := 36, r := 25 }
    lowerValue := 288
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 25))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 29 25))) },
  { key := { q := 8, n := 36, r := 26 }
    lowerValue := 93
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 26))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 30 26))) },
  { key := { q := 8, n := 36, r := 27 }
    lowerValue := 34
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 27))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 31 27))) }]

end CoveringCodes.Database
