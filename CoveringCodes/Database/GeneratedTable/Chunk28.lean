import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 28. Do not edit manually.

def precomputedTable_chunk_28 : Array AnyBoundEntry := #[
  { key := { q := 2, n := 44, r := 42 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 42))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 44 42)) },
  { key := { q := 2, n := 44, r := 43 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 43))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 44 43)) },
  { key := { q := 2, n := 44, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 44 44)) },
  { key := { q := 2, n := 44, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 44 45)) },
  { key := { q := 2, n := 44, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 44 46)) },
  { key := { q := 2, n := 44, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 44 47)) },
  { key := { q := 2, n := 44, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 44 48)) },
  { key := { q := 2, n := 45, r := 0 }
    lowerValue := 35184372088832
    upperValue := 35184372088832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 2 45 0)) },
  { key := { q := 2, n := 45, r := 1 }
    lowerValue := 764877654106
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 1))
    upperTrace := (.lengthenFreeN 38 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 7 1))) },
  { key := { q := 2, n := 45, r := 2 }
    lowerValue := 33961749121
    upperValue := 1649267441664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 2))
    upperTrace := (.lengthenFreeN 37 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 8 2))) },
  { key := { q := 2, n := 45, r := 3 }
    lowerValue := 2310808623
    upperValue := 481036337152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 3))
    upperTrace := (.lengthenFreeN 36 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 9 3))) },
  { key := { q := 2, n := 45, r := 4 }
    lowerValue := 214250140
    upperValue := 137438953472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 4))
    upperTrace := (.lengthenFreeN 36 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 9 4))) },
  { key := { q := 2, n := 45, r := 5 }
    lowerValue := 25385917
    upperValue := 34359738368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 5))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 11 5))) },
  { key := { q := 2, n := 45, r := 6 }
    lowerValue := 3691557
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 6))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 13 6))) },
  { key := { q := 2, n := 45, r := 7 }
    lowerValue := 640757
    upperValue := 2147483648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 7))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 15 7))) },
  { key := { q := 2, n := 45, r := 8 }
    lowerValue := 130089
    upperValue := 536870912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 8))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 17 8))) },
  { key := { q := 2, n := 45, r := 9 }
    lowerValue := 30420
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 9))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 19 9))) },
  { key := { q := 2, n := 45, r := 10 }
    lowerValue := 8095
    upperValue := 33554432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 10))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 21 10))) },
  { key := { q := 2, n := 45, r := 11 }
    lowerValue := 2427
    upperValue := 8388608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 11))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 23 11))) },
  { key := { q := 2, n := 45, r := 12 }
    lowerValue := 814
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 12))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 25 12))) },
  { key := { q := 2, n := 45, r := 13 }
    lowerValue := 303
    upperValue := 524288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 13))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 27 13))) },
  { key := { q := 2, n := 45, r := 14 }
    lowerValue := 125
    upperValue := 131072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 14))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 29 14))) },
  { key := { q := 2, n := 45, r := 15 }
    lowerValue := 57
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 15))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 31 15))) },
  { key := { q := 2, n := 45, r := 16 }
    lowerValue := 28
    upperValue := 8192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 16))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 33 16))) },
  { key := { q := 2, n := 45, r := 17 }
    lowerValue := 15
    upperValue := 2048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 17))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 35 17))) },
  { key := { q := 2, n := 45, r := 18 }
    lowerValue := 9
    upperValue := 512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 18))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 37 18))) },
  { key := { q := 2, n := 45, r := 19 }
    lowerValue := 6
    upperValue := 128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 19))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 39 19))) },
  { key := { q := 2, n := 45, r := 20 }
    lowerValue := 4
    upperValue := 32
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 20))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 20))) },
  { key := { q := 2, n := 45, r := 21 }
    lowerValue := 4
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 2) (@LowerTrace.lowerBlockGroup 2 2 22 21 4 (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 22 21))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 21))) },
  { key := { q := 2, n := 45, r := 22 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 22))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 45 22)) },
  { key := { q := 2, n := 45, r := 23 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 45 23)) },
  { key := { q := 2, n := 45, r := 24 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 45 24)) },
  { key := { q := 2, n := 45, r := 25 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 45 25)) },
  { key := { q := 2, n := 45, r := 26 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 45 26)) },
  { key := { q := 2, n := 45, r := 27 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 27))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 45 27)) },
  { key := { q := 2, n := 45, r := 28 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 45 28)) },
  { key := { q := 2, n := 45, r := 29 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 45 29)) },
  { key := { q := 2, n := 45, r := 30 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 45 30)) },
  { key := { q := 2, n := 45, r := 31 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 45 31)) },
  { key := { q := 2, n := 45, r := 32 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 45 32)) },
  { key := { q := 2, n := 45, r := 33 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 45 33)) },
  { key := { q := 2, n := 45, r := 34 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 45 34)) },
  { key := { q := 2, n := 45, r := 35 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 45 35)) },
  { key := { q := 2, n := 45, r := 36 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 45 36)) },
  { key := { q := 2, n := 45, r := 37 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 45 37)) },
  { key := { q := 2, n := 45, r := 38 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 45 38)) },
  { key := { q := 2, n := 45, r := 39 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 45 39)) },
  { key := { q := 2, n := 45, r := 40 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 40))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 45 40)) },
  { key := { q := 2, n := 45, r := 41 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 41))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 45 41)) },
  { key := { q := 2, n := 45, r := 42 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 42))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 45 42)) },
  { key := { q := 2, n := 45, r := 43 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 43))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 45 43)) },
  { key := { q := 2, n := 45, r := 44 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 44))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 45 44)) },
  { key := { q := 2, n := 45, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 45 45)) },
  { key := { q := 2, n := 45, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 45 46)) },
  { key := { q := 2, n := 45, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 45 47)) },
  { key := { q := 2, n := 45, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 45 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 45 48)) },
  { key := { q := 2, n := 46, r := 0 }
    lowerValue := 70368744177664
    upperValue := 70368744177664
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 2 46 0)) },
  { key := { q := 2, n := 46, r := 1 }
    lowerValue := 1497207322930
    upperValue := 8796093022208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 1))
    upperTrace := (.lengthenFreeN 39 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 7 1))) },
  { key := { q := 2, n := 46, r := 2 }
    lowerValue := 65035807928
    upperValue := 3298534883328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 2))
    upperTrace := (.lengthenFreeN 38 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 8 2))) },
  { key := { q := 2, n := 46, r := 3 }
    lowerValue := 4327188795
    upperValue := 962072674304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 3))
    upperTrace := (.lengthenFreeN 37 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 9 3))) },
  { key := { q := 2, n := 46, r := 4 }
    lowerValue := 392142216
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 4))
    upperTrace := (.lengthenFreeN 37 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 9 4))) },
  { key := { q := 2, n := 46, r := 5 }
    lowerValue := 45393304
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 5))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 11 5))) },
  { key := { q := 2, n := 46, r := 6 }
    lowerValue := 6445784
    upperValue := 17179869184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 6))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 13 6))) },
  { key := { q := 2, n := 46, r := 7 }
    lowerValue := 1091976
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 7))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 15 7))) },
  { key := { q := 2, n := 46, r := 8 }
    lowerValue := 216270
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 8))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 17 8))) },
  { key := { q := 2, n := 46, r := 9 }
    lowerValue := 49310
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 9))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 19 9))) },
  { key := { q := 2, n := 46, r := 10 }
    lowerValue := 12787
    upperValue := 67108864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 10))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 21 10))) },
  { key := { q := 2, n := 46, r := 11 }
    lowerValue := 3735
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 11))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 23 11))) },
  { key := { q := 2, n := 46, r := 12 }
    lowerValue := 1219
    upperValue := 4194304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 12))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 25 12))) },
  { key := { q := 2, n := 46, r := 13 }
    lowerValue := 442
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 13))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 27 13))) },
  { key := { q := 2, n := 46, r := 14 }
    lowerValue := 177
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 14))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 29 14))) },
  { key := { q := 2, n := 46, r := 15 }
    lowerValue := 78
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 15))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 31 15))) },
  { key := { q := 2, n := 46, r := 16 }
    lowerValue := 37
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 16))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 33 16))) },
  { key := { q := 2, n := 46, r := 17 }
    lowerValue := 20
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 17))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 35 17))) },
  { key := { q := 2, n := 46, r := 18 }
    lowerValue := 11
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 18))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 37 18))) },
  { key := { q := 2, n := 46, r := 19 }
    lowerValue := 7
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 19))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 39 19))) },
  { key := { q := 2, n := 46, r := 20 }
    lowerValue := 5
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 20))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 20))) },
  { key := { q := 2, n := 46, r := 21 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 21))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 21))) },
  { key := { q := 2, n := 46, r := 22 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (@LowerTrace.lowerBlockGroup 2 2 23 22 4 (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 23 22)))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 45 22))) },
  { key := { q := 2, n := 46, r := 23 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 46 23)) },
  { key := { q := 2, n := 46, r := 24 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 46 24)) },
  { key := { q := 2, n := 46, r := 25 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 46 25)) },
  { key := { q := 2, n := 46, r := 26 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 46 26)) },
  { key := { q := 2, n := 46, r := 27 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 27))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 46 27)) },
  { key := { q := 2, n := 46, r := 28 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 46 28)) },
  { key := { q := 2, n := 46, r := 29 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 46 29)) },
  { key := { q := 2, n := 46, r := 30 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 46 30)) },
  { key := { q := 2, n := 46, r := 31 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 46 31)) },
  { key := { q := 2, n := 46, r := 32 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 46 32)) },
  { key := { q := 2, n := 46, r := 33 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 46 33)) },
  { key := { q := 2, n := 46, r := 34 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 46 34)) },
  { key := { q := 2, n := 46, r := 35 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 46 35)) },
  { key := { q := 2, n := 46, r := 36 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 46 36)) },
  { key := { q := 2, n := 46, r := 37 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 46 37)) },
  { key := { q := 2, n := 46, r := 38 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 46 38)) },
  { key := { q := 2, n := 46, r := 39 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 46 39)) },
  { key := { q := 2, n := 46, r := 40 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 40))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 46 40)) },
  { key := { q := 2, n := 46, r := 41 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 41))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 46 41)) },
  { key := { q := 2, n := 46, r := 42 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 42))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 46 42)) },
  { key := { q := 2, n := 46, r := 43 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 43))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 46 43)) },
  { key := { q := 2, n := 46, r := 44 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 44))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 46 44)) },
  { key := { q := 2, n := 46, r := 45 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 45))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 46 45)) },
  { key := { q := 2, n := 46, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 46 46)) },
  { key := { q := 2, n := 46, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 46 47)) },
  { key := { q := 2, n := 46, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 46 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 46 48)) },
  { key := { q := 2, n := 47, r := 0 }
    lowerValue := 140737488355328
    upperValue := 140737488355328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 2 47 0)) },
  { key := { q := 2, n := 47, r := 1 }
    lowerValue := 2932031007403
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 1))
    upperTrace := (.lengthenFreeN 40 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 7 1))) },
  { key := { q := 2, n := 47, r := 2 }
    lowerValue := 124656765594
    upperValue := 6597069766656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 2))
    upperTrace := (.lengthenFreeN 39 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 8 2))) },
  { key := { q := 2, n := 47, r := 3 }
    lowerValue := 8114476958
    upperValue := 1924145348608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 3))
    upperTrace := (.lengthenFreeN 38 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 9 3))) },
  { key := { q := 2, n := 47, r := 4 }
    lowerValue := 719116078
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 4))
    upperTrace := (.lengthenFreeN 38 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 9 4))) },
  { key := { q := 2, n := 47, r := 5 }
    lowerValue := 81367706
    upperValue := 137438953472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 5))
    upperTrace := (.lengthenFreeN 36 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 11 5))) },
  { key := { q := 2, n := 47, r := 6 }
    lowerValue := 11288602
    upperValue := 34359738368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 6))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 13 6))) },
  { key := { q := 2, n := 47, r := 7 }
    lowerValue := 1867568
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 7))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 15 7))) },
  { key := { q := 2, n := 47, r := 8 }
    lowerValue := 361036
    upperValue := 2147483648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 8))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 17 8))) },
  { key := { q := 2, n := 47, r := 9 }
    lowerValue := 80309
    upperValue := 536870912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 9))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 19 9))) },
  { key := { q := 2, n := 47, r := 10 }
    lowerValue := 20307
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 10))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 21 10))) },
  { key := { q := 2, n := 47, r := 11 }
    lowerValue := 5781
    upperValue := 33554432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 11))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 23 11))) },
  { key := { q := 2, n := 47, r := 12 }
    lowerValue := 1838
    upperValue := 8388608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 12))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 25 12))) },
  { key := { q := 2, n := 47, r := 13 }
    lowerValue := 648
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 13))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 27 13))) },
  { key := { q := 2, n := 47, r := 14 }
    lowerValue := 252
    upperValue := 524288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 14))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 29 14))) },
  { key := { q := 2, n := 47, r := 15 }
    lowerValue := 108
    upperValue := 131072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 15))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 31 15))) },
  { key := { q := 2, n := 47, r := 16 }
    lowerValue := 51
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 16))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 33 16))) },
  { key := { q := 2, n := 47, r := 17 }
    lowerValue := 26
    upperValue := 8192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 17))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 35 17))) },
  { key := { q := 2, n := 47, r := 18 }
    lowerValue := 14
    upperValue := 2048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 18))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 37 18))) },
  { key := { q := 2, n := 47, r := 19 }
    lowerValue := 9
    upperValue := 512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 19))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 39 19))) },
  { key := { q := 2, n := 47, r := 20 }
    lowerValue := 6
    upperValue := 128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 20))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 20))) },
  { key := { q := 2, n := 47, r := 21 }
    lowerValue := 4
    upperValue := 32
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 21))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 21))) },
  { key := { q := 2, n := 47, r := 22 }
    lowerValue := 4
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 2) (@LowerTrace.lowerBlockGroup 2 2 23 22 4 (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 23 22))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 45 22))) },
  { key := { q := 2, n := 47, r := 23 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 47 23)) },
  { key := { q := 2, n := 47, r := 24 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 47 24)) },
  { key := { q := 2, n := 47, r := 25 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 47 25)) },
  { key := { q := 2, n := 47, r := 26 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 47 26)) },
  { key := { q := 2, n := 47, r := 27 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 27))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 47 27)) },
  { key := { q := 2, n := 47, r := 28 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 47 28)) },
  { key := { q := 2, n := 47, r := 29 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 47 29)) },
  { key := { q := 2, n := 47, r := 30 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 47 30)) },
  { key := { q := 2, n := 47, r := 31 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 47 31)) },
  { key := { q := 2, n := 47, r := 32 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 47 32)) },
  { key := { q := 2, n := 47, r := 33 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 47 33)) },
  { key := { q := 2, n := 47, r := 34 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 47 34)) },
  { key := { q := 2, n := 47, r := 35 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 47 35)) },
  { key := { q := 2, n := 47, r := 36 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 47 36)) },
  { key := { q := 2, n := 47, r := 37 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 47 37)) },
  { key := { q := 2, n := 47, r := 38 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 47 38)) },
  { key := { q := 2, n := 47, r := 39 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 47 39)) },
  { key := { q := 2, n := 47, r := 40 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 40))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 47 40)) },
  { key := { q := 2, n := 47, r := 41 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 41))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 47 41)) },
  { key := { q := 2, n := 47, r := 42 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 42))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 47 42)) },
  { key := { q := 2, n := 47, r := 43 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 43))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 47 43)) },
  { key := { q := 2, n := 47, r := 44 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 44))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 47 44)) },
  { key := { q := 2, n := 47, r := 45 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 45))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 47 45)) },
  { key := { q := 2, n := 47, r := 46 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 46))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 47 46)) },
  { key := { q := 2, n := 47, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 47 47)) },
  { key := { q := 2, n := 47, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 47 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 47 48)) },
  { key := { q := 2, n := 48, r := 0 }
    lowerValue := 281474976710656
    upperValue := 281474976710656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 2 48 0)) },
  { key := { q := 2, n := 48, r := 1 }
    lowerValue := 5744387279810
    upperValue := 35184372088832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 1))
    upperTrace := (.lengthenFreeN 41 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 7 1))) },
  { key := { q := 2, n := 48, r := 2 }
    lowerValue := 239146114453
    upperValue := 13194139533312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 2))
    upperTrace := (.lengthenFreeN 40 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 8 2))) },
  { key := { q := 2, n := 48, r := 3 }
    lowerValue := 15237101538
    upperValue := 3848290697216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 3))
    upperTrace := (.lengthenFreeN 39 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 9 3))) },
  { key := { q := 2, n := 48, r := 4 }
    lowerValue := 1321150028
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 4))
    upperTrace := (.lengthenFreeN 39 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 9 4))) },
  { key := { q := 2, n := 48, r := 5 }
    lowerValue := 146193655
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 5))
    upperTrace := (.lengthenFreeN 37 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 11 5))) },
  { key := { q := 2, n := 48, r := 6 }
    lowerValue := 19826554
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 6))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 13 6))) },
  { key := { q := 2, n := 48, r := 7 }
    lowerValue := 3204919
    upperValue := 17179869184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 7))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 15 7))) },
  { key := { q := 2, n := 48, r := 8 }
    lowerValue := 605095
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 8))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 17 8))) },
  { key := { q := 2, n := 48, r := 9 }
    lowerValue := 131391
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 9))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 19 9))) },
  { key := { q := 2, n := 48, r := 10 }
    lowerValue := 32417
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 10))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 21 10))) },
  { key := { q := 2, n := 48, r := 11 }
    lowerValue := 9000
    upperValue := 67108864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 11))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 23 11))) },
  { key := { q := 2, n := 48, r := 12 }
    lowerValue := 2789
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 12))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 25 12))) },
  { key := { q := 2, n := 48, r := 13 }
    lowerValue := 958
    upperValue := 4194304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 13))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 27 13))) },
  { key := { q := 2, n := 48, r := 14 }
    lowerValue := 363
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 14))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 29 14))) },
  { key := { q := 2, n := 48, r := 15 }
    lowerValue := 151
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 15))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 31 15))) },
  { key := { q := 2, n := 48, r := 16 }
    lowerValue := 69
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 16))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 33 16))) },
  { key := { q := 2, n := 48, r := 17 }
    lowerValue := 34
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 17))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 35 17))) },
  { key := { q := 2, n := 48, r := 18 }
    lowerValue := 18
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 18))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 37 18))) },
  { key := { q := 2, n := 48, r := 19 }
    lowerValue := 11
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 19))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 39 19))) },
  { key := { q := 2, n := 48, r := 20 }
    lowerValue := 7
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 20))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 20))) },
  { key := { q := 2, n := 48, r := 21 }
    lowerValue := 5
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 21))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 21))) },
  { key := { q := 2, n := 48, r := 22 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 22))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 45 22))) },
  { key := { q := 2, n := 48, r := 23 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (@LowerTrace.lowerBlockGroup 2 2 24 23 4 (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 24 23)))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 47 23))) },
  { key := { q := 2, n := 48, r := 24 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 48 24)) },
  { key := { q := 2, n := 48, r := 25 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 48 25)) },
  { key := { q := 2, n := 48, r := 26 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 48 26)) },
  { key := { q := 2, n := 48, r := 27 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 27))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 48 27)) },
  { key := { q := 2, n := 48, r := 28 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 48 28)) },
  { key := { q := 2, n := 48, r := 29 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 48 29)) },
  { key := { q := 2, n := 48, r := 30 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 48 30)) },
  { key := { q := 2, n := 48, r := 31 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 48 31)) },
  { key := { q := 2, n := 48, r := 32 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 48 32)) },
  { key := { q := 2, n := 48, r := 33 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 48 33)) },
  { key := { q := 2, n := 48, r := 34 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 48 34)) },
  { key := { q := 2, n := 48, r := 35 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 48 35)) },
  { key := { q := 2, n := 48, r := 36 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 48 36)) },
  { key := { q := 2, n := 48, r := 37 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 48 37)) },
  { key := { q := 2, n := 48, r := 38 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 48 38)) },
  { key := { q := 2, n := 48, r := 39 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 48 39)) },
  { key := { q := 2, n := 48, r := 40 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 40))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 48 40)) },
  { key := { q := 2, n := 48, r := 41 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 41))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 48 41)) },
  { key := { q := 2, n := 48, r := 42 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 42))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 48 42)) },
  { key := { q := 2, n := 48, r := 43 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 43))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 48 43)) },
  { key := { q := 2, n := 48, r := 44 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 44))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 48 44)) },
  { key := { q := 2, n := 48, r := 45 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 45))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 48 45)) },
  { key := { q := 2, n := 48, r := 46 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 46))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 48 46)) },
  { key := { q := 2, n := 48, r := 47 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 47))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 48 47)) },
  { key := { q := 2, n := 48, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 48 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 48 48)) },
  { key := { q := 3, n := 0, r := 0 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 0)) },
  { key := { q := 3, n := 0, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 1))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 1)) },
  { key := { q := 3, n := 0, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 2))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 2)) },
  { key := { q := 3, n := 0, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 3))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 3)) },
  { key := { q := 3, n := 0, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 4))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 4)) },
  { key := { q := 3, n := 0, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 5))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 5)) },
  { key := { q := 3, n := 0, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 6))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 6)) },
  { key := { q := 3, n := 0, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 7))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 7)) },
  { key := { q := 3, n := 0, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 8))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 8)) },
  { key := { q := 3, n := 0, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 9))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 9)) },
  { key := { q := 3, n := 0, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 10))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 10)) },
  { key := { q := 3, n := 0, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 11))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 11)) },
  { key := { q := 3, n := 0, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 12))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 12)) },
  { key := { q := 3, n := 0, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 13))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 13)) },
  { key := { q := 3, n := 0, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 14))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 14)) },
  { key := { q := 3, n := 0, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 15))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 15)) },
  { key := { q := 3, n := 0, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 16))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 16)) },
  { key := { q := 3, n := 0, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 17))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 17)) },
  { key := { q := 3, n := 0, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 18))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 18)) },
  { key := { q := 3, n := 0, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 19))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 19)) },
  { key := { q := 3, n := 0, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 20))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 20)) },
  { key := { q := 3, n := 0, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 21))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 21)) },
  { key := { q := 3, n := 0, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 22))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 22)) },
  { key := { q := 3, n := 0, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 23))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 23)) },
  { key := { q := 3, n := 0, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 24))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 24)) },
  { key := { q := 3, n := 0, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 25))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 25)) },
  { key := { q := 3, n := 0, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 26))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 26)) },
  { key := { q := 3, n := 0, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 27))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 27)) },
  { key := { q := 3, n := 0, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 28))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 28)) },
  { key := { q := 3, n := 0, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 29))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 29)) },
  { key := { q := 3, n := 0, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 30))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 30)) },
  { key := { q := 3, n := 0, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 31))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 31)) },
  { key := { q := 3, n := 0, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 32))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 32)) },
  { key := { q := 3, n := 0, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 33))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 33)) },
  { key := { q := 3, n := 0, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 34))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 34)) },
  { key := { q := 3, n := 0, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 35))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 35)) },
  { key := { q := 3, n := 0, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 36))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 36)) },
  { key := { q := 3, n := 0, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 37))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 37)) },
  { key := { q := 3, n := 0, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 38))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 38)) },
  { key := { q := 3, n := 0, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 39))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 39)) },
  { key := { q := 3, n := 0, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 40))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 40)) },
  { key := { q := 3, n := 0, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 41))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 41)) },
  { key := { q := 3, n := 0, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 42))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 42)) },
  { key := { q := 3, n := 0, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 43))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 43)) },
  { key := { q := 3, n := 0, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 44))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 44)) },
  { key := { q := 3, n := 0, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 45))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 45)) },
  { key := { q := 3, n := 0, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 3 0 46))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 3 0 46)) }]

end CoveringCodes.Database
