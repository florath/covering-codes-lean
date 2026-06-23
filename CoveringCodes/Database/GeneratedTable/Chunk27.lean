import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 27. Do not edit manually.

def precomputedTable_chunk_27 : Array AnyBoundEntry := #[
  { key := { q := 2, n := 39, r := 37 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 39 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 39 37)) },
  { key := { q := 2, n := 39, r := 38 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 39 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 39 38)) },
  { key := { q := 2, n := 39, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 39 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 39 39)) },
  { key := { q := 2, n := 39, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 39 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 39 40)) },
  { key := { q := 2, n := 39, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 39 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 39 41)) },
  { key := { q := 2, n := 39, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 39 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 39 42)) },
  { key := { q := 2, n := 39, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 39 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 39 43)) },
  { key := { q := 2, n := 39, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 39 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 39 44)) },
  { key := { q := 2, n := 39, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 39 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 39 45)) },
  { key := { q := 2, n := 39, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 39 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 39 46)) },
  { key := { q := 2, n := 39, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 39 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 39 47)) },
  { key := { q := 2, n := 39, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 39 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 39 48)) },
  { key := { q := 2, n := 40, r := 0 }
    lowerValue := 1099511627776
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 2 40 0)) },
  { key := { q := 2, n := 40, r := 1 }
    lowerValue := 26817356776
    upperValue := 137438953472
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 1))
    upperTrace := (.lengthenFreeN 33 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 7 1))) },
  { key := { q := 2, n := 40, r := 2 }
    lowerValue := 1339234626
    upperValue := 51539607552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 2))
    upperTrace := (.lengthenFreeN 32 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 8 2))) },
  { key := { q := 2, n := 40, r := 3 }
    lowerValue := 102748494
    upperValue := 15032385536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 3))
    upperTrace := (.lengthenFreeN 31 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 9 3))) },
  { key := { q := 2, n := 40, r := 4 }
    lowerValue := 10769918
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 4))
    upperTrace := (.lengthenFreeN 16 (.primitive "lean_known_bounds_q2_n24_r4_binary_golay_tail" (primitiveUpper_valid 2 24 4))) },
  { key := { q := 2, n := 40, r := 5 }
    lowerValue := 1446538
    upperValue := 33554432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 5))
    upperTrace := (.lengthenFreeN 12 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5))) },
  { key := { q := 2, n := 40, r := 6 }
    lowerValue := 239104
    upperValue := 8388608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 6))
    upperTrace := (.lengthenFreeN 10 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6))) },
  { key := { q := 2, n := 40, r := 7 }
    lowerValue := 47308
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 7))
    upperTrace := (.lengthenFreeN 7 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))) },
  { key := { q := 2, n := 40, r := 8 }
    lowerValue := 10980
    upperValue := 524288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 8))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 1 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 40, r := 9 }
    lowerValue := 2944
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 9))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 2 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 40, r := 10 }
    lowerValue := 901
    upperValue := 131072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 10))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 3 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 40, r := 11 }
    lowerValue := 312
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 11))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 4 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 40, r := 12 }
    lowerValue := 121
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 12))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 5 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 40, r := 13 }
    lowerValue := 52
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 13))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7)))) },
  { key := { q := 2, n := 40, r := 14 }
    lowerValue := 25
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 14))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 29 14))) },
  { key := { q := 2, n := 40, r := 15 }
    lowerValue := 13
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 15))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 31 15))) },
  { key := { q := 2, n := 40, r := 16 }
    lowerValue := 8
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 16))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 33 16))) },
  { key := { q := 2, n := 40, r := 17 }
    lowerValue := 5
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 17))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 35 17))) },
  { key := { q := 2, n := 40, r := 18 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 18))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 37 18))) },
  { key := { q := 2, n := 40, r := 19 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (@LowerTrace.lowerBlockGroup 2 2 20 19 4 (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 20 19)))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 39 19))) },
  { key := { q := 2, n := 40, r := 20 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 20))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 40 20)) },
  { key := { q := 2, n := 40, r := 21 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 21))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 40 21)) },
  { key := { q := 2, n := 40, r := 22 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 22))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 40 22)) },
  { key := { q := 2, n := 40, r := 23 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 40 23)) },
  { key := { q := 2, n := 40, r := 24 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 40 24)) },
  { key := { q := 2, n := 40, r := 25 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 40 25)) },
  { key := { q := 2, n := 40, r := 26 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 40 26)) },
  { key := { q := 2, n := 40, r := 27 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 27))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 40 27)) },
  { key := { q := 2, n := 40, r := 28 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 40 28)) },
  { key := { q := 2, n := 40, r := 29 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 40 29)) },
  { key := { q := 2, n := 40, r := 30 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 40 30)) },
  { key := { q := 2, n := 40, r := 31 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 40 31)) },
  { key := { q := 2, n := 40, r := 32 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 40 32)) },
  { key := { q := 2, n := 40, r := 33 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 40 33)) },
  { key := { q := 2, n := 40, r := 34 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 40 34)) },
  { key := { q := 2, n := 40, r := 35 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 40 35)) },
  { key := { q := 2, n := 40, r := 36 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 40 36)) },
  { key := { q := 2, n := 40, r := 37 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 40 37)) },
  { key := { q := 2, n := 40, r := 38 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 40 38)) },
  { key := { q := 2, n := 40, r := 39 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 40 39)) },
  { key := { q := 2, n := 40, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 40 40)) },
  { key := { q := 2, n := 40, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 40 41)) },
  { key := { q := 2, n := 40, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 40 42)) },
  { key := { q := 2, n := 40, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 40 43)) },
  { key := { q := 2, n := 40, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 40 44)) },
  { key := { q := 2, n := 40, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 40 45)) },
  { key := { q := 2, n := 40, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 40 46)) },
  { key := { q := 2, n := 40, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 40 47)) },
  { key := { q := 2, n := 40, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 40 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 40 48)) },
  { key := { q := 2, n := 41, r := 0 }
    lowerValue := 2199023255552
    upperValue := 2199023255552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 2 41 0)) },
  { key := { q := 2, n := 41, r := 1 }
    lowerValue := 52357696561
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 1))
    upperTrace := (.lengthenFreeN 34 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 7 1))) },
  { key := { q := 2, n := 41, r := 2 }
    lowerValue := 2551071063
    upperValue := 103079215104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 2))
    upperTrace := (.lengthenFreeN 33 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 8 2))) },
  { key := { q := 2, n := 41, r := 3 }
    lowerValue := 190854301
    upperValue := 30064771072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 3))
    upperTrace := (.lengthenFreeN 32 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 9 3))) },
  { key := { q := 2, n := 41, r := 4 }
    lowerValue := 19496270
    upperValue := 536870912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 4))
    upperTrace := (.lengthenFreeN 17 (.primitive "lean_known_bounds_q2_n24_r4_binary_golay_tail" (primitiveUpper_valid 2 24 4))) },
  { key := { q := 2, n := 41, r := 5 }
    lowerValue := 2550509
    upperValue := 67108864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 5))
    upperTrace := (.lengthenFreeN 13 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5))) },
  { key := { q := 2, n := 41, r := 6 }
    lowerValue := 410375
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 6))
    upperTrace := (.lengthenFreeN 11 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6))) },
  { key := { q := 2, n := 41, r := 7 }
    lowerValue := 78987
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 7))
    upperTrace := (.lengthenFreeN 8 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))) },
  { key := { q := 2, n := 41, r := 8 }
    lowerValue := 17822
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 8))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 1 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 41, r := 9 }
    lowerValue := 4642
    upperValue := 524288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 9))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 2 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 41, r := 10 }
    lowerValue := 1379
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 10))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 3 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 41, r := 11 }
    lowerValue := 463
    upperValue := 131072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 11))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 4 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 41, r := 12 }
    lowerValue := 174
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 12))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 5 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 41, r := 13 }
    lowerValue := 73
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 13))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 6 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 41, r := 14 }
    lowerValue := 34
    upperValue := 8192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 14))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 29 14))) },
  { key := { q := 2, n := 41, r := 15 }
    lowerValue := 18
    upperValue := 2048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 15))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 31 15))) },
  { key := { q := 2, n := 41, r := 16 }
    lowerValue := 10
    upperValue := 512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 16))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 33 16))) },
  { key := { q := 2, n := 41, r := 17 }
    lowerValue := 6
    upperValue := 128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 17))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 35 17))) },
  { key := { q := 2, n := 41, r := 18 }
    lowerValue := 4
    upperValue := 32
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 18))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 37 18))) },
  { key := { q := 2, n := 41, r := 19 }
    lowerValue := 4
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 2) (@LowerTrace.lowerBlockGroup 2 2 20 19 4 (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 20 19))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 39 19))) },
  { key := { q := 2, n := 41, r := 20 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 20))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 20)) },
  { key := { q := 2, n := 41, r := 21 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 21))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 21)) },
  { key := { q := 2, n := 41, r := 22 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 22))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 22)) },
  { key := { q := 2, n := 41, r := 23 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 23)) },
  { key := { q := 2, n := 41, r := 24 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 24)) },
  { key := { q := 2, n := 41, r := 25 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 25)) },
  { key := { q := 2, n := 41, r := 26 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 26)) },
  { key := { q := 2, n := 41, r := 27 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 27))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 27)) },
  { key := { q := 2, n := 41, r := 28 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 28)) },
  { key := { q := 2, n := 41, r := 29 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 29)) },
  { key := { q := 2, n := 41, r := 30 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 30)) },
  { key := { q := 2, n := 41, r := 31 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 31)) },
  { key := { q := 2, n := 41, r := 32 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 32)) },
  { key := { q := 2, n := 41, r := 33 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 33)) },
  { key := { q := 2, n := 41, r := 34 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 34)) },
  { key := { q := 2, n := 41, r := 35 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 35)) },
  { key := { q := 2, n := 41, r := 36 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 36)) },
  { key := { q := 2, n := 41, r := 37 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 37)) },
  { key := { q := 2, n := 41, r := 38 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 38)) },
  { key := { q := 2, n := 41, r := 39 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 39)) },
  { key := { q := 2, n := 41, r := 40 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 40))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 40)) },
  { key := { q := 2, n := 41, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 41 41)) },
  { key := { q := 2, n := 41, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 41 42)) },
  { key := { q := 2, n := 41, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 41 43)) },
  { key := { q := 2, n := 41, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 41 44)) },
  { key := { q := 2, n := 41, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 41 45)) },
  { key := { q := 2, n := 41, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 41 46)) },
  { key := { q := 2, n := 41, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 41 47)) },
  { key := { q := 2, n := 41, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 41 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 41 48)) },
  { key := { q := 2, n := 42, r := 0 }
    lowerValue := 4398046511104
    upperValue := 4398046511104
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 2 42 0)) },
  { key := { q := 2, n := 42, r := 1 }
    lowerValue := 102280151422
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 1))
    upperTrace := (.lengthenFreeN 35 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 7 1))) },
  { key := { q := 2, n := 42, r := 2 }
    lowerValue := 4865095699
    upperValue := 206158430208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 2))
    upperTrace := (.lengthenFreeN 34 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 8 2))) },
  { key := { q := 2, n := 42, r := 3 }
    lowerValue := 355139415
    upperValue := 60129542144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 3))
    upperTrace := (.lengthenFreeN 33 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 9 3))) },
  { key := { q := 2, n := 42, r := 4 }
    lowerValue := 35378530
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 4))
    upperTrace := (.lengthenFreeN 18 (.primitive "lean_known_bounds_q2_n24_r4_binary_golay_tail" (primitiveUpper_valid 2 24 4))) },
  { key := { q := 2, n := 42, r := 5 }
    lowerValue := 4510901
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 5))
    upperTrace := (.lengthenFreeN 14 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5))) },
  { key := { q := 2, n := 42, r := 6 }
    lowerValue := 706995
    upperValue := 33554432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 6))
    upperTrace := (.lengthenFreeN 12 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6))) },
  { key := { q := 2, n := 42, r := 7 }
    lowerValue := 132475
    upperValue := 4194304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 7))
    upperTrace := (.lengthenFreeN 9 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))) },
  { key := { q := 2, n := 42, r := 8 }
    lowerValue := 29082
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 8))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 1 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 42, r := 9 }
    lowerValue := 7366
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 9))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 2 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 42, r := 10 }
    lowerValue := 2127
    upperValue := 524288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 10))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 3 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 42, r := 11 }
    lowerValue := 693
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 11))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 4 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 42, r := 12 }
    lowerValue := 253
    upperValue := 131072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 12))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 5 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 42, r := 13 }
    lowerValue := 103
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 13))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 6 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 42, r := 14 }
    lowerValue := 46
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 14))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 29 14))) },
  { key := { q := 2, n := 42, r := 15 }
    lowerValue := 23
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 15))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 31 15))) },
  { key := { q := 2, n := 42, r := 16 }
    lowerValue := 13
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 16))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 33 16))) },
  { key := { q := 2, n := 42, r := 17 }
    lowerValue := 8
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 17))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 35 17))) },
  { key := { q := 2, n := 42, r := 18 }
    lowerValue := 5
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 18))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 37 18))) },
  { key := { q := 2, n := 42, r := 19 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 19))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 39 19))) },
  { key := { q := 2, n := 42, r := 20 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (@LowerTrace.lowerBlockGroup 2 2 21 20 4 (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 21 20)))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 20))) },
  { key := { q := 2, n := 42, r := 21 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 21))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 42 21)) },
  { key := { q := 2, n := 42, r := 22 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 22))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 42 22)) },
  { key := { q := 2, n := 42, r := 23 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 42 23)) },
  { key := { q := 2, n := 42, r := 24 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 42 24)) },
  { key := { q := 2, n := 42, r := 25 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 42 25)) },
  { key := { q := 2, n := 42, r := 26 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 42 26)) },
  { key := { q := 2, n := 42, r := 27 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 27))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 42 27)) },
  { key := { q := 2, n := 42, r := 28 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 42 28)) },
  { key := { q := 2, n := 42, r := 29 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 42 29)) },
  { key := { q := 2, n := 42, r := 30 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 42 30)) },
  { key := { q := 2, n := 42, r := 31 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 42 31)) },
  { key := { q := 2, n := 42, r := 32 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 42 32)) },
  { key := { q := 2, n := 42, r := 33 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 42 33)) },
  { key := { q := 2, n := 42, r := 34 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 42 34)) },
  { key := { q := 2, n := 42, r := 35 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 42 35)) },
  { key := { q := 2, n := 42, r := 36 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 42 36)) },
  { key := { q := 2, n := 42, r := 37 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 42 37)) },
  { key := { q := 2, n := 42, r := 38 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 42 38)) },
  { key := { q := 2, n := 42, r := 39 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 42 39)) },
  { key := { q := 2, n := 42, r := 40 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 40))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 42 40)) },
  { key := { q := 2, n := 42, r := 41 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 41))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 42 41)) },
  { key := { q := 2, n := 42, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 42 42)) },
  { key := { q := 2, n := 42, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 42 43)) },
  { key := { q := 2, n := 42, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 42 44)) },
  { key := { q := 2, n := 42, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 42 45)) },
  { key := { q := 2, n := 42, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 42 46)) },
  { key := { q := 2, n := 42, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 42 47)) },
  { key := { q := 2, n := 42, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 42 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 42 48)) },
  { key := { q := 2, n := 43, r := 0 }
    lowerValue := 8796093022208
    upperValue := 8796093022208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 2 43 0)) },
  { key := { q := 2, n := 43, r := 1 }
    lowerValue := 199911205051
    upperValue := 1099511627776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 1))
    upperTrace := (.lengthenFreeN 36 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 7 1))) },
  { key := { q := 2, n := 43, r := 2 }
    lowerValue := 9288377004
    upperValue := 412316860416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 2))
    upperTrace := (.lengthenFreeN 35 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 8 2))) },
  { key := { q := 2, n := 43, r := 3 }
    lowerValue := 661957633
    upperValue := 120259084288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 3))
    upperTrace := (.lengthenFreeN 34 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 9 3))) },
  { key := { q := 2, n := 43, r := 4 }
    lowerValue := 64346904
    upperValue := 2147483648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 4))
    upperTrace := (.lengthenFreeN 19 (.primitive "lean_known_bounds_q2_n24_r4_binary_golay_tail" (primitiveUpper_valid 2 24 4))) },
  { key := { q := 2, n := 43, r := 5 }
    lowerValue := 8001570
    upperValue := 268435456
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 5))
    upperTrace := (.lengthenFreeN 15 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5))) },
  { key := { q := 2, n := 43, r := 6 }
    lowerValue := 1222402
    upperValue := 67108864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 6))
    upperTrace := (.lengthenFreeN 13 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6))) },
  { key := { q := 2, n := 43, r := 7 }
    lowerValue := 223139
    upperValue := 8388608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 7))
    upperTrace := (.lengthenFreeN 10 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))) },
  { key := { q := 2, n := 43, r := 8 }
    lowerValue := 47694
    upperValue := 4194304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 8))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 1 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 43, r := 9 }
    lowerValue := 11754
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 9))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 2 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 43, r := 10 }
    lowerValue := 3300
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 10))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 3 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 43, r := 11 }
    lowerValue := 1045
    upperValue := 524288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 11))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 4 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 43, r := 12 }
    lowerValue := 371
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 12))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 5 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 43, r := 13 }
    lowerValue := 146
    upperValue := 131072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 13))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 6 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 43, r := 14 }
    lowerValue := 64
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 14))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 29 14))) },
  { key := { q := 2, n := 43, r := 15 }
    lowerValue := 31
    upperValue := 8192
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 15))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 31 15))) },
  { key := { q := 2, n := 43, r := 16 }
    lowerValue := 16
    upperValue := 2048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 16))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 33 16))) },
  { key := { q := 2, n := 43, r := 17 }
    lowerValue := 10
    upperValue := 512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 17))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 35 17))) },
  { key := { q := 2, n := 43, r := 18 }
    lowerValue := 6
    upperValue := 128
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 18))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 37 18))) },
  { key := { q := 2, n := 43, r := 19 }
    lowerValue := 4
    upperValue := 32
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 19))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 39 19))) },
  { key := { q := 2, n := 43, r := 20 }
    lowerValue := 4
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 2) (@LowerTrace.lowerBlockGroup 2 2 21 20 4 (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 21 20))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 20))) },
  { key := { q := 2, n := 43, r := 21 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 21))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 21)) },
  { key := { q := 2, n := 43, r := 22 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 22))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 22)) },
  { key := { q := 2, n := 43, r := 23 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 23)) },
  { key := { q := 2, n := 43, r := 24 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 24)) },
  { key := { q := 2, n := 43, r := 25 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 25)) },
  { key := { q := 2, n := 43, r := 26 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 26)) },
  { key := { q := 2, n := 43, r := 27 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 27))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 27)) },
  { key := { q := 2, n := 43, r := 28 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 28)) },
  { key := { q := 2, n := 43, r := 29 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 29)) },
  { key := { q := 2, n := 43, r := 30 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 30)) },
  { key := { q := 2, n := 43, r := 31 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 31)) },
  { key := { q := 2, n := 43, r := 32 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 32)) },
  { key := { q := 2, n := 43, r := 33 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 33)) },
  { key := { q := 2, n := 43, r := 34 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 34)) },
  { key := { q := 2, n := 43, r := 35 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 35)) },
  { key := { q := 2, n := 43, r := 36 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 36)) },
  { key := { q := 2, n := 43, r := 37 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 37)) },
  { key := { q := 2, n := 43, r := 38 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 38)) },
  { key := { q := 2, n := 43, r := 39 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 39)) },
  { key := { q := 2, n := 43, r := 40 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 40))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 40)) },
  { key := { q := 2, n := 43, r := 41 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 41))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 41)) },
  { key := { q := 2, n := 43, r := 42 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 42))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 42)) },
  { key := { q := 2, n := 43, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 43 43)) },
  { key := { q := 2, n := 43, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 43 44)) },
  { key := { q := 2, n := 43, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 43 45)) },
  { key := { q := 2, n := 43, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 43 46)) },
  { key := { q := 2, n := 43, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 43 47)) },
  { key := { q := 2, n := 43, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 43 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 2 43 48)) },
  { key := { q := 2, n := 44, r := 0 }
    lowerValue := 17592186044416
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 2 44 0)) },
  { key := { q := 2, n := 44, r := 1 }
    lowerValue := 390937467654
    upperValue := 2199023255552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 1))
    upperTrace := (.lengthenFreeN 37 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 7 1))) },
  { key := { q := 2, n := 44, r := 2 }
    lowerValue := 17751953628
    upperValue := 824633720832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 2))
    upperTrace := (.lengthenFreeN 36 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 8 2))) },
  { key := { q := 2, n := 44, r := 3 }
    lowerValue := 1235840257
    upperValue := 240518168576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 3))
    upperTrace := (.lengthenFreeN 35 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 2 9 3))) },
  { key := { q := 2, n := 44, r := 4 }
    lowerValue := 117292188
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 4))
    upperTrace := (.lengthenFreeN 20 (.primitive "lean_known_bounds_q2_n24_r4_binary_golay_tail" (primitiveUpper_valid 2 24 4))) },
  { key := { q := 2, n := 44, r := 5 }
    lowerValue := 14233230
    upperValue := 536870912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 5))
    upperTrace := (.lengthenFreeN 16 (.primitive "lean_known_bounds_q2_n28_r5_golay_antipodal_product" (primitiveUpper_valid 2 28 5))) },
  { key := { q := 2, n := 44, r := 6 }
    lowerValue := 2120807
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 6))
    upperTrace := (.lengthenFreeN 14 (.primitive "lean_known_bounds_q2_n30_r6_golay_antipodal_product" (primitiveUpper_valid 2 30 6))) },
  { key := { q := 2, n := 44, r := 7 }
    lowerValue := 377389
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 7))
    upperTrace := (.lengthenFreeN 11 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))) },
  { key := { q := 2, n := 44, r := 8 }
    lowerValue := 78590
    upperValue := 8388608
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 8))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 1 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 44, r := 9 }
    lowerValue := 18860
    upperValue := 4194304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 9))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 2 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 44, r := 10 }
    lowerValue := 5153
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 10))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 3 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 44, r := 11 }
    lowerValue := 1588
    upperValue := 1048576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 11))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 4 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 44, r := 12 }
    lowerValue := 547
    upperValue := 524288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 12))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 5 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 44, r := 13 }
    lowerValue := 210
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 13))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 6 (by decide : 0 < 2) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q2_n33_r7_bch31_tail" (primitiveUpper_valid 2 33 7))))) },
  { key := { q := 2, n := 44, r := 14 }
    lowerValue := 89
    upperValue := 65536
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 14))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 29 14))) },
  { key := { q := 2, n := 44, r := 15 }
    lowerValue := 42
    upperValue := 16384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 15))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 31 15))) },
  { key := { q := 2, n := 44, r := 16 }
    lowerValue := 21
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 16))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 33 16))) },
  { key := { q := 2, n := 44, r := 17 }
    lowerValue := 12
    upperValue := 1024
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 17))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 35 17))) },
  { key := { q := 2, n := 44, r := 18 }
    lowerValue := 7
    upperValue := 256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 18))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 37 18))) },
  { key := { q := 2, n := 44, r := 19 }
    lowerValue := 5
    upperValue := 64
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 19))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 39 19))) },
  { key := { q := 2, n := 44, r := 20 }
    lowerValue := 4
    upperValue := 16
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 20))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 41 20))) },
  { key := { q := 2, n := 44, r := 21 }
    lowerValue := 4
    upperValue := 4
    lowerTrace := (@LowerTrace.lowerBlockGroup 2 2 22 21 4 (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 4 22 21)))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 43 21))) },
  { key := { q := 2, n := 44, r := 22 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 22))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 44 22)) },
  { key := { q := 2, n := 44, r := 23 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 44 23)) },
  { key := { q := 2, n := 44, r := 24 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 44 24)) },
  { key := { q := 2, n := 44, r := 25 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 44 25)) },
  { key := { q := 2, n := 44, r := 26 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 44 26)) },
  { key := { q := 2, n := 44, r := 27 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 27))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 44 27)) },
  { key := { q := 2, n := 44, r := 28 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 44 28)) },
  { key := { q := 2, n := 44, r := 29 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 44 29)) },
  { key := { q := 2, n := 44, r := 30 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 44 30)) },
  { key := { q := 2, n := 44, r := 31 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 44 31)) },
  { key := { q := 2, n := 44, r := 32 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 44 32)) },
  { key := { q := 2, n := 44, r := 33 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 44 33)) },
  { key := { q := 2, n := 44, r := 34 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 44 34)) },
  { key := { q := 2, n := 44, r := 35 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 35))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 44 35)) },
  { key := { q := 2, n := 44, r := 36 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 36))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 44 36)) },
  { key := { q := 2, n := 44, r := 37 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 37))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 44 37)) },
  { key := { q := 2, n := 44, r := 38 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 38))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 44 38)) },
  { key := { q := 2, n := 44, r := 39 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 44 39)) },
  { key := { q := 2, n := 44, r := 40 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 40))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 44 40)) },
  { key := { q := 2, n := 44, r := 41 }
    lowerValue := 2
    upperValue := 2
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 2 44 41))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 2 44 41)) }]

end CoveringCodes.Database
