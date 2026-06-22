import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 84. Do not edit manually.

def precomputedTable_chunk_84 : Array AnyBoundEntry := #[
  { key := { q := 8, n := 36, r := 28 }
    lowerValue := 14
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 28))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 33 28))) },
  { key := { q := 8, n := 36, r := 29 }
    lowerValue := 8
    upperValue := 512
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 31 30))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 34 29))) },
  { key := { q := 8, n := 36, r := 30 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 32 31)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 35 30))) },
  { key := { q := 8, n := 36, r := 31 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 33 32))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 36 31)) },
  { key := { q := 8, n := 36, r := 32 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 34 33)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 36 32)) },
  { key := { q := 8, n := 36, r := 33 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 35 34))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 36 33)) },
  { key := { q := 8, n := 36, r := 34 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 36 35)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 36 34)) },
  { key := { q := 8, n := 36, r := 35 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 36 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 36 35)) },
  { key := { q := 8, n := 36, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 36 36)) },
  { key := { q := 8, n := 36, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 36 37)) },
  { key := { q := 8, n := 36, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 36 38)) },
  { key := { q := 8, n := 36, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 36 39)) },
  { key := { q := 8, n := 36, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 36 40)) },
  { key := { q := 8, n := 36, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 36 41)) },
  { key := { q := 8, n := 36, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 36 42)) },
  { key := { q := 8, n := 36, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 36 43)) },
  { key := { q := 8, n := 36, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 36 44)) },
  { key := { q := 8, n := 36, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 36 45)) },
  { key := { q := 8, n := 36, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 36 46)) },
  { key := { q := 8, n := 36, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 36 47)) },
  { key := { q := 8, n := 36, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 36 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 36 48)) },
  { key := { q := 8, n := 37, r := 0 }
    lowerValue := 2596148429267413814265248164610048
    upperValue := 2596148429267413814265248164610048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 37 0)) },
  { key := { q := 8, n := 37, r := 1 }
    lowerValue := 9985186266413130054866339094655
    upperValue := 162259276829213363391578010288128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 1))
    upperTrace := (.lengthenFreeN 31 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 37, r := 2 }
    lowerValue := 78924680162565021410143131411
    upperValue := 9137390172470302481564798287872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 2))
    upperTrace := (.lengthenFreeN 29 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 8, n := 37, r := 3 }
    lowerValue := 962247805884429309320982536
    upperValue := 1142173771558787810195599785984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 3))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))))) },
  { key := { q := 8, n := 37, r := 4 }
    lowerValue := 16097944097352008061020222
    upperValue := 112807286079880277550182694912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 4))
    upperTrace := (.lengthenFreeN 29 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4)))) },
  { key := { q := 8, n := 37, r := 5 }
    lowerValue := 346735967276247347795830
    upperValue := 14100910759985034693772836864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 5))
    upperTrace := (.lengthenFreeN 28 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 8, n := 37, r := 6 }
    lowerValue := 9239096998205456579876
    upperValue := 1762613844998129336721604608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 6))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))))) },
  { key := { q := 8, n := 37, r := 7 }
    lowerValue := 296372102391031615159
    upperValue := 154742504910672534362390528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 7))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 37, r := 8 }
    lowerValue := 11222835754326739501
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 8))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 37, r := 9 }
    lowerValue := 494366783643342475
    upperValue := 2417851639229258349412352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 9))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 37, r := 10 }
    lowerValue := 25048200839011041
    upperValue := 302231454903657293676544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 10))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 37, r := 11 }
    lowerValue := 1446930881716465
    upperValue := 37778931862957161709568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 11))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 37, r := 12 }
    lowerValue := 94629086363379
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 12))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 37, r := 13 }
    lowerValue := 6967675567542
    upperValue := 590295810358705651712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 13))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 37, r := 14 }
    lowerValue := 575060453460
    upperValue := 9223372036854775808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 14))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 37, r := 15 }
    lowerValue := 53013260016
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 15))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 37, r := 16 }
    lowerValue := 5444126858
    upperValue := 144115188075855872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 16))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 37, r := 17 }
    lowerValue := 621542328
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 17))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 37, r := 18 }
    lowerValue := 78777874
    upperValue := 2251799813685248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 18))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 37, r := 19 }
    lowerValue := 11075541
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 19))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19))) },
  { key := { q := 8, n := 37, r := 20 }
    lowerValue := 1726704
    upperValue := 35184372088832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 20))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 20))) },
  { key := { q := 8, n := 37, r := 21 }
    lowerValue := 298572
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 21))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 21))) },
  { key := { q := 8, n := 37, r := 22 }
    lowerValue := 57301
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 22))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 26 22))) },
  { key := { q := 8, n := 37, r := 23 }
    lowerValue := 12220
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 23))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 27 23))) },
  { key := { q := 8, n := 37, r := 24 }
    lowerValue := 2901
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 24))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 28 24))) },
  { key := { q := 8, n := 37, r := 25 }
    lowerValue := 769
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 25))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 29 25))) },
  { key := { q := 8, n := 37, r := 26 }
    lowerValue := 228
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 26))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 30 26))) },
  { key := { q := 8, n := 37, r := 27 }
    lowerValue := 76
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 27))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 31 27))) },
  { key := { q := 8, n := 37, r := 28 }
    lowerValue := 29
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 28))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 33 28))) },
  { key := { q := 8, n := 37, r := 29 }
    lowerValue := 13
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 29))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 34 29))) },
  { key := { q := 8, n := 37, r := 30 }
    lowerValue := 8
    upperValue := 512
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 32 31))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 35 30))) },
  { key := { q := 8, n := 37, r := 31 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 33 32)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 36 31))) },
  { key := { q := 8, n := 37, r := 32 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 34 33))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 37 32)) },
  { key := { q := 8, n := 37, r := 33 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 35 34)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 37 33)) },
  { key := { q := 8, n := 37, r := 34 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 36 35))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 37 34)) },
  { key := { q := 8, n := 37, r := 35 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 37 36)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 37 35)) },
  { key := { q := 8, n := 37, r := 36 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 37 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 37 36)) },
  { key := { q := 8, n := 37, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 37 37)) },
  { key := { q := 8, n := 37, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 37 38)) },
  { key := { q := 8, n := 37, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 37 39)) },
  { key := { q := 8, n := 37, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 37 40)) },
  { key := { q := 8, n := 37, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 37 41)) },
  { key := { q := 8, n := 37, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 37 42)) },
  { key := { q := 8, n := 37, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 37 43)) },
  { key := { q := 8, n := 37, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 37 44)) },
  { key := { q := 8, n := 37, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 37 45)) },
  { key := { q := 8, n := 37, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 37 46)) },
  { key := { q := 8, n := 37, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 37 47)) },
  { key := { q := 8, n := 37, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 37 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 37 48)) },
  { key := { q := 8, n := 38, r := 0 }
    lowerValue := 20769187434139310514121985316880384
    upperValue := 20769187434139310514121985316880384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 38 0)) },
  { key := { q := 8, n := 38, r := 1 }
    lowerValue := 77787218854454346494838896317905
    upperValue := 1298074214633706907132624082305024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 1))
    upperTrace := (.lengthenFreeN 32 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 38, r := 2 }
    lowerValue := 598294274187339704848821378029
    upperValue := 73099121379762419852518386302976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 2))
    upperTrace := (.lengthenFreeN 30 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 8, n := 38, r := 3 }
    lowerValue := 7092667061259993304602520307
    upperValue := 9137390172470302481564798287872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 3))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))))) },
  { key := { q := 8, n := 38, r := 4 }
    lowerValue := 115283132346818458292724702
    upperValue := 902458288639042220401461559296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 4))
    upperTrace := (.lengthenFreeN 30 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4)))) },
  { key := { q := 8, n := 38, r := 5 }
    lowerValue := 2410453908553326480757397
    upperValue := 112807286079880277550182694912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 5))
    upperTrace := (.lengthenFreeN 29 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 8, n := 38, r := 6 }
    lowerValue := 62293672761938103338746
    upperValue := 14100910759985034693772836864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 6))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))))) },
  { key := { q := 8, n := 38, r := 7 }
    lowerValue := 1936208445684088012161
    upperValue := 1237940039285380274899124224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 7))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 38, r := 8 }
    lowerValue := 70970434044918779693
    upperValue := 154742504910672534362390528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 8))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 38, r := 9 }
    lowerValue := 3022839936820095999
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 9))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 38, r := 10 }
    lowerValue := 147922007103176471
    upperValue := 2417851639229258349412352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 10))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 38, r := 11 }
    lowerValue := 8242500927881542
    upperValue := 302231454903657293676544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 11))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 38, r := 12 }
    lowerValue := 519298378743341
    upperValue := 37778931862957161709568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 12))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 38, r := 13 }
    lowerValue := 36782807728691
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 13))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 38, r := 14 }
    lowerValue := 2915890971641
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 14))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 38, r := 15 }
    lowerValue := 257766517926
    upperValue := 9223372036854775808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 15))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 38, r := 16 }
    lowerValue := 25338376579
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 16))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 38, r := 17 }
    lowerValue := 2763680920
    upperValue := 144115188075855872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 17))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 38, r := 18 }
    lowerValue := 333942419
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 18))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 38, r := 19 }
    lowerValue := 44656193
    upperValue := 2251799813685248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 19))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19))) },
  { key := { q := 8, n := 38, r := 20 }
    lowerValue := 6605229
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 20))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 20))) },
  { key := { q := 8, n := 38, r := 21 }
    lowerValue := 1080607
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 21))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 21))) },
  { key := { q := 8, n := 38, r := 22 }
    lowerValue := 195615
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 22))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 26 22))) },
  { key := { q := 8, n := 38, r := 23 }
    lowerValue := 39217
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 23))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 27 23))) },
  { key := { q := 8, n := 38, r := 24 }
    lowerValue := 8719
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 24))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 28 24))) },
  { key := { q := 8, n := 38, r := 25 }
    lowerValue := 2154
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 25))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 29 25))) },
  { key := { q := 8, n := 38, r := 26 }
    lowerValue := 593
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 26))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 30 26))) },
  { key := { q := 8, n := 38, r := 27 }
    lowerValue := 182
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 27))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 31 27))) },
  { key := { q := 8, n := 38, r := 28 }
    lowerValue := 63
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 28))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 33 28))) },
  { key := { q := 8, n := 38, r := 29 }
    lowerValue := 25
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 29))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 34 29))) },
  { key := { q := 8, n := 38, r := 30 }
    lowerValue := 11
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 30))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 35 30))) },
  { key := { q := 8, n := 38, r := 31 }
    lowerValue := 8
    upperValue := 512
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 33 32))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 36 31))) },
  { key := { q := 8, n := 38, r := 32 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 34 33)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 37 32))) },
  { key := { q := 8, n := 38, r := 33 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 35 34))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 38 33)) },
  { key := { q := 8, n := 38, r := 34 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 36 35)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 38 34)) },
  { key := { q := 8, n := 38, r := 35 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 37 36))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 38 35)) },
  { key := { q := 8, n := 38, r := 36 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 38 37)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 38 36)) },
  { key := { q := 8, n := 38, r := 37 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 38 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 38 37)) },
  { key := { q := 8, n := 38, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 38 38)) },
  { key := { q := 8, n := 38, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 38 39)) },
  { key := { q := 8, n := 38, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 38 40)) },
  { key := { q := 8, n := 38, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 38 41)) },
  { key := { q := 8, n := 38, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 38 42)) },
  { key := { q := 8, n := 38, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 38 43)) },
  { key := { q := 8, n := 38, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 38 44)) },
  { key := { q := 8, n := 38, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 38 45)) },
  { key := { q := 8, n := 38, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 38 46)) },
  { key := { q := 8, n := 38, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 38 47)) },
  { key := { q := 8, n := 38, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 38 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 38 48)) },
  { key := { q := 8, n := 39, r := 0 }
    lowerValue := 166153499473114484112975882535043072
    upperValue := 166153499473114484112975882535043072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 39 0)) },
  { key := { q := 8, n := 39, r := 1 }
    lowerValue := 606399633113556511361225848668041
    upperValue := 10384593717069655257060992658440192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 1))
    upperTrace := (.lengthenFreeN 33 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 39, r := 2 }
    lowerValue := 4541822690132424462536584821777
    upperValue := 584792971038099358820147090423808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 2))
    upperTrace := (.lengthenFreeN 31 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 8, n := 39, r := 3 }
    lowerValue := 52393527958323973472050819717
    upperValue := 73099121379762419852518386302976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 3))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))))) },
  { key := { q := 8, n := 39, r := 4 }
    lowerValue := 828051855761749695542115790
    upperValue := 7219666309112337763211692474368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 4))
    upperTrace := (.lengthenFreeN 31 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4)))) },
  { key := { q := 8, n := 39, r := 5 }
    lowerValue := 16821576060796332281668242
    upperValue := 902458288639042220401461559296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 5))
    upperTrace := (.lengthenFreeN 30 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 8, n := 39, r := 6 }
    lowerValue := 422007432663793886081622
    upperValue := 112807286079880277550182694912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 6))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))))) },
  { key := { q := 8, n := 39, r := 7 }
    lowerValue := 12721750428472446895149
    upperValue := 9903520314283042199192993792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 7))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 39, r := 8 }
    lowerValue := 451832207075533021316
    upperValue := 1237940039285380274899124224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 8))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 39, r := 9 }
    lowerValue := 18628592824696026547
    upperValue := 154742504910672534362390528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 9))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 39, r := 10 }
    lowerValue := 881443388948832969
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 10))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 39, r := 11 }
    lowerValue := 47437026164109443
    upperValue := 2417851639229258349412352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 11))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 39, r := 12 }
    lowerValue := 2882953542140579
    upperValue := 302231454903657293676544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 12))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 39, r := 13 }
    lowerValue := 196722889798495
    upperValue := 37778931862957161709568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 13))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 39, r := 14 }
    lowerValue := 15002213303674
    upperValue := 590295810358705651712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 14))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 39, r := 15 }
    lowerValue := 1273861362317
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 15))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 39, r := 16 }
    lowerValue := 120080118389
    upperValue := 9223372036854775808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 16))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 39, r := 17 }
    lowerValue := 12537277550
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 17))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 39, r := 18 }
    lowerValue := 1447339773
    upperValue := 144115188075855872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 18))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 39, r := 19 }
    lowerValue := 184523086
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 19))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19))) },
  { key := { q := 8, n := 39, r := 20 }
    lowerValue := 25961518
    upperValue := 2251799813685248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 20))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 20))) },
  { key := { q := 8, n := 39, r := 21 }
    lowerValue := 4029876
    upperValue := 35184372088832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 21))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 21))) },
  { key := { q := 8, n := 39, r := 22 }
    lowerValue := 690254
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 22))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 26 22))) },
  { key := { q := 8, n := 39, r := 23 }
    lowerValue := 130540
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 23))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 27 23))) },
  { key := { q := 8, n := 39, r := 24 }
    lowerValue := 27286
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 24))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 28 24))) },
  { key := { q := 8, n := 39, r := 25 }
    lowerValue := 6314
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 25))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 29 25))) },
  { key := { q := 8, n := 39, r := 26 }
    lowerValue := 1620
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 26))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 30 26))) },
  { key := { q := 8, n := 39, r := 27 }
    lowerValue := 463
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 27))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 31 27))) },
  { key := { q := 8, n := 39, r := 28 }
    lowerValue := 147
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 28))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 33 28))) },
  { key := { q := 8, n := 39, r := 29 }
    lowerValue := 53
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 29))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 34 29))) },
  { key := { q := 8, n := 39, r := 30 }
    lowerValue := 21
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 30))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 35 30))) },
  { key := { q := 8, n := 39, r := 31 }
    lowerValue := 10
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 31))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 36 31))) },
  { key := { q := 8, n := 39, r := 32 }
    lowerValue := 8
    upperValue := 512
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 34 33))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 37 32))) },
  { key := { q := 8, n := 39, r := 33 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 35 34)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 38 33))) },
  { key := { q := 8, n := 39, r := 34 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 36 35))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 39 34)) },
  { key := { q := 8, n := 39, r := 35 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 37 36)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 39 35)) },
  { key := { q := 8, n := 39, r := 36 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 38 37))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 39 36)) },
  { key := { q := 8, n := 39, r := 37 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 39 38)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 39 37)) },
  { key := { q := 8, n := 39, r := 38 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 39 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 39 38)) },
  { key := { q := 8, n := 39, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 39 39)) },
  { key := { q := 8, n := 39, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 39 40)) },
  { key := { q := 8, n := 39, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 39 41)) },
  { key := { q := 8, n := 39, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 39 42)) },
  { key := { q := 8, n := 39, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 39 43)) },
  { key := { q := 8, n := 39, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 39 44)) },
  { key := { q := 8, n := 39, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 39 45)) },
  { key := { q := 8, n := 39, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 39 46)) },
  { key := { q := 8, n := 39, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 39 47)) },
  { key := { q := 8, n := 39, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 39 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 39 48)) },
  { key := { q := 8, n := 40, r := 0 }
    lowerValue := 1329227995784915872903807060280344576
    upperValue := 1329227995784915872903807060280344576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 40 0)) },
  { key := { q := 8, n := 40, r := 1 }
    lowerValue := 4730348739448099191828494876442508
    upperValue := 83076749736557242056487941267521536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 1))
    upperTrace := (.lengthenFreeN 34 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 40, r := 2 }
    lowerValue := 34524505747510866546422354231848
    upperValue := 4678343768304794870561176723390464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 2))
    upperTrace := (.lengthenFreeN 32 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 8, n := 40, r := 3 }
    lowerValue := 387830681506426081590307780954
    upperValue := 584792971038099358820147090423808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 3))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))))) },
  { key := { q := 8, n := 40, r := 4 }
    lowerValue := 5964549147421581428773020127
    upperValue := 57757330472898702105693539794944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 4))
    upperTrace := (.lengthenFreeN 32 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4)))) },
  { key := { q := 8, n := 40, r := 5 }
    lowerValue := 117818521790946751704531379
    upperValue := 7219666309112337763211692474368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 5))
    upperTrace := (.lengthenFreeN 31 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 8, n := 40, r := 6 }
    lowerValue := 2871749041666117054625989
    upperValue := 902458288639042220401461559296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 6))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))))) },
  { key := { q := 8, n := 40, r := 7 }
    lowerValue := 84039862864053733572123
    upperValue := 79228162514264337593543950336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 7))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 40, r := 8 }
    lowerValue := 2894932351034415082426
    upperValue := 9903520314283042199192993792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 8))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 40, r := 9 }
    lowerValue := 115651397407792811923
    upperValue := 1237940039285380274899124224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 9))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 40, r := 10 }
    lowerValue := 5297068725980494429
    upperValue := 154742504910672534362390528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 10))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 40, r := 11 }
    lowerValue := 275652011393572313
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 11))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 40, r := 12 }
    lowerValue := 16180229811855829
    upperValue := 2417851639229258349412352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 12))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 40, r := 13 }
    lowerValue := 1065053743931928
    upperValue := 302231454903657293676544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 13))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 40, r := 14 }
    lowerValue := 78247353906272
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 14))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 40, r := 15 }
    lowerValue := 6391754121885
    upperValue := 590295810358705651712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 15))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 40, r := 16 }
    lowerValue := 578750729523
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 16))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 40, r := 17 }
    lowerValue := 57947270419
    upperValue := 9223372036854775808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 17))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 40, r := 18 }
    lowerValue := 6403802845
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 18))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 40, r := 19 }
    lowerValue := 780043716
    upperValue := 144115188075855872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 19))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19))) },
  { key := { q := 8, n := 40, r := 20 }
    lowerValue := 104637834
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 20))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 20))) },
  { key := { q := 8, n := 40, r := 21 }
    lowerValue := 15450683
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 21))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 21))) },
  { key := { q := 8, n := 40, r := 22 }
    lowerValue := 2511167
    upperValue := 35184372088832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 22))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 26 22))) },
  { key := { q := 8, n := 40, r := 23 }
    lowerValue := 449395
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 23))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 27 23))) },
  { key := { q := 8, n := 40, r := 24 }
    lowerValue := 88621
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 24))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 28 24))) },
  { key := { q := 8, n := 40, r := 25 }
    lowerValue := 19280
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 25))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 29 25))) },
  { key := { q := 8, n := 40, r := 26 }
    lowerValue := 4635
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 26))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 30 26))) },
  { key := { q := 8, n := 40, r := 27 }
    lowerValue := 1234
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 27))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 31 27))) },
  { key := { q := 8, n := 40, r := 28 }
    lowerValue := 365
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 28))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 33 28))) },
  { key := { q := 8, n := 40, r := 29 }
    lowerValue := 120
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 29))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 34 29))) },
  { key := { q := 8, n := 40, r := 30 }
    lowerValue := 45
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 30))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 35 30))) },
  { key := { q := 8, n := 40, r := 31 }
    lowerValue := 19
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 31))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 36 31))) },
  { key := { q := 8, n := 40, r := 32 }
    lowerValue := 9
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 32))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 37 32))) },
  { key := { q := 8, n := 40, r := 33 }
    lowerValue := 8
    upperValue := 512
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 35 34))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 38 33))) },
  { key := { q := 8, n := 40, r := 34 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 36 35)))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 39 34))) },
  { key := { q := 8, n := 40, r := 35 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 37 36))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 40 35)) },
  { key := { q := 8, n := 40, r := 36 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 38 37)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 40 36)) },
  { key := { q := 8, n := 40, r := 37 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 39 38))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 40 37)) },
  { key := { q := 8, n := 40, r := 38 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 40 39)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 40 38)) },
  { key := { q := 8, n := 40, r := 39 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 40 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 40 39)) },
  { key := { q := 8, n := 40, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 40 40)) },
  { key := { q := 8, n := 40, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 40 41)) },
  { key := { q := 8, n := 40, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 40 42)) },
  { key := { q := 8, n := 40, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 40 43)) },
  { key := { q := 8, n := 40, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 40 44)) },
  { key := { q := 8, n := 40, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 40 45)) },
  { key := { q := 8, n := 40, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 40 46)) },
  { key := { q := 8, n := 40, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 40 47)) },
  { key := { q := 8, n := 40, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 40 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 40 48)) },
  { key := { q := 8, n := 41, r := 0 }
    lowerValue := 10633823966279326983230456482242756608
    upperValue := 10633823966279326983230456482242756608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 41 0)) },
  { key := { q := 8, n := 41, r := 1 }
    lowerValue := 36922999882914329802883529452231794
    upperValue := 664613997892457936451903530140172288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 1))
    upperTrace := (.lengthenFreeN 35 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 41, r := 2 }
    lowerValue := 262771176393182934250035990961816
    upperValue := 37426750146438358964489413787123712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 2))
    upperTrace := (.lengthenFreeN 33 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))) },
  { key := { q := 8, n := 41, r := 3 }
    lowerValue := 2876456907689828465555104370600
    upperValue := 4678343768304794870561176723390464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 3))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r2_linear_syndrome" (primitiveUpper_valid 9 8 2)))))) },
  { key := { q := 8, n := 41, r := 4 }
    lowerValue := 43078757131920247509140315840
    upperValue := 462058643783189616845548318359552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 4))
    upperTrace := (.lengthenFreeN 33 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n8_r4_block_product" (primitiveUpper_valid 9 8 4)))) },
  { key := { q := 8, n := 41, r := 5 }
    lowerValue := 828051855761749695542115790
    upperValue := 57757330472898702105693539794944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 5))
    upperTrace := (.lengthenFreeN 32 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))) },
  { key := { q := 8, n := 41, r := 6 }
    lowerValue := 19625484347684020335208435
    upperValue := 7219666309112337763211692474368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 6))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 8) (by decide : 8 ≤ 9) (.primitive "lean_known_bounds_q9_n9_r5_systematic_syndrome" (primitiveUpper_valid 9 9 5)))))) },
  { key := { q := 8, n := 41, r := 7 }
    lowerValue := 558010258742200982682620
    upperValue := 633825300114114700748351602688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 7))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 41, r := 8 }
    lowerValue := 18659979267581999370275
    upperValue := 79228162514264337593543950336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 8))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 41, r := 9 }
    lowerValue := 723020505457647188910
    upperValue := 9903520314283042199192993792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 9))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 41, r := 10 }
    lowerValue := 32088515767491000574
    upperValue := 1237940039285380274899124224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 10))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 41, r := 11 }
    lowerValue := 1616407184986786958
    upperValue := 154742504910672534362390528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 11))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 41, r := 12 }
    lowerValue := 91745059307930955
    upperValue := 19342813113834066795298816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 12))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 41, r := 13 }
    lowerValue := 5832831813042239
    upperValue := 2417851639229258349412352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 13))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 41, r := 14 }
    lowerValue := 413384925066289
    upperValue := 37778931862957161709568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 14))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 41, r := 15 }
    lowerValue := 32532032863947
    upperValue := 4722366482869645213696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 15))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 41, r := 16 }
    lowerValue := 2833843985014
    upperValue := 590295810358705651712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 16))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 41, r := 17 }
    lowerValue := 272553036453
    upperValue := 73786976294838206464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 17))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17))) },
  { key := { q := 8, n := 41, r := 18 }
    lowerValue := 28885382771
    upperValue := 9223372036854775808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 18))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 21 18))) },
  { key := { q := 8, n := 41, r := 19 }
    lowerValue := 3368307711
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 19))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 22 19))) },
  { key := { q := 8, n := 41, r := 20 }
    lowerValue := 431717677
    upperValue := 144115188075855872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 20))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 23 20))) },
  { key := { q := 8, n := 41, r := 21 }
    lowerValue := 60781281
    upperValue := 2251799813685248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 21))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 25 21))) },
  { key := { q := 8, n := 41, r := 22 }
    lowerValue := 9397661
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 22))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 26 22))) },
  { key := { q := 8, n := 41, r := 23 }
    lowerValue := 1595926
    upperValue := 35184372088832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 23))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 27 23))) },
  { key := { q := 8, n := 41, r := 24 }
    lowerValue := 297835
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 24))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 28 24))) },
  { key := { q := 8, n := 41, r := 25 }
    lowerValue := 61136
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 25))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 29 25))) },
  { key := { q := 8, n := 41, r := 26 }
    lowerValue := 13821
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 26))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 30 26))) },
  { key := { q := 8, n := 41, r := 27 }
    lowerValue := 3447
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 27))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 31 27))) },
  { key := { q := 8, n := 41, r := 28 }
    lowerValue := 951
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 28))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 33 28))) },
  { key := { q := 8, n := 41, r := 29 }
    lowerValue := 291
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 29))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 34 29))) },
  { key := { q := 8, n := 41, r := 30 }
    lowerValue := 99
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 30))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 35 30))) },
  { key := { q := 8, n := 41, r := 31 }
    lowerValue := 38
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 31))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 36 31))) },
  { key := { q := 8, n := 41, r := 32 }
    lowerValue := 16
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 41 32))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 37 32))) }]

end CoveringCodes.Database
