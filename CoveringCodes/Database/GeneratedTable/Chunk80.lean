import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 80. Do not edit manually.

def precomputedTable_chunk_80 : Array AnyBoundEntry := #[
  { key := { q := 8, n := 16, r := 8 }
    lowerValue := 3326
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 8))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 16, r := 9 }
    lowerValue := 516
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 9))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 16, r := 10 }
    lowerValue := 101
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 10))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 16, r := 11 }
    lowerValue := 25
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 11))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 16, r := 12 }
    lowerValue := 8
    upperValue := 512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 12))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 16, r := 13 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 15 14))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 16, r := 14 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 16 15)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 16 14)) },
  { key := { q := 8, n := 16, r := 15 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 16 15))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 16 15)) },
  { key := { q := 8, n := 16, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 16)) },
  { key := { q := 8, n := 16, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 17)) },
  { key := { q := 8, n := 16, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 18)) },
  { key := { q := 8, n := 16, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 19)) },
  { key := { q := 8, n := 16, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 20)) },
  { key := { q := 8, n := 16, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 21)) },
  { key := { q := 8, n := 16, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 22)) },
  { key := { q := 8, n := 16, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 23)) },
  { key := { q := 8, n := 16, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 24)) },
  { key := { q := 8, n := 16, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 25)) },
  { key := { q := 8, n := 16, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 26)) },
  { key := { q := 8, n := 16, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 27)) },
  { key := { q := 8, n := 16, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 28)) },
  { key := { q := 8, n := 16, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 29)) },
  { key := { q := 8, n := 16, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 30)) },
  { key := { q := 8, n := 16, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 31)) },
  { key := { q := 8, n := 16, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 32)) },
  { key := { q := 8, n := 16, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 33)) },
  { key := { q := 8, n := 16, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 34)) },
  { key := { q := 8, n := 16, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 35)) },
  { key := { q := 8, n := 16, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 36)) },
  { key := { q := 8, n := 16, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 37)) },
  { key := { q := 8, n := 16, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 38)) },
  { key := { q := 8, n := 16, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 39)) },
  { key := { q := 8, n := 16, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 40)) },
  { key := { q := 8, n := 16, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 41)) },
  { key := { q := 8, n := 16, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 42)) },
  { key := { q := 8, n := 16, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 43)) },
  { key := { q := 8, n := 16, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 44)) },
  { key := { q := 8, n := 16, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 45)) },
  { key := { q := 8, n := 16, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 46)) },
  { key := { q := 8, n := 16, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 47)) },
  { key := { q := 8, n := 16, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 16 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 16 48)) },
  { key := { q := 8, n := 17, r := 0 }
    lowerValue := 2251799813685248
    upperValue := 2251799813685248
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 17 0)) },
  { key := { q := 8, n := 17, r := 1 }
    lowerValue := 18764998447378
    upperValue := 140737488355328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 1))
    upperTrace := (.lengthenFreeN 11 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 17, r := 2 }
    lowerValue := 331928038574
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 2))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))))) },
  { key := { q := 8, n := 17, r := 3 }
    lowerValue := 9381561068
    upperValue := 2199023255552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 3))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 2 (by decide : 0 < 8) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))))) },
  { key := { q := 8, n := 17, r := 4 }
    lowerValue := 378173839
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 4))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 3 (by decide : 0 < 8) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))))) },
  { key := { q := 8, n := 17, r := 5 }
    lowerValue := 20479077
    upperValue := 34359738368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 5))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 4 (by decide : 0 < 8) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))))) },
  { key := { q := 8, n := 17, r := 6 }
    lowerValue := 1437950
    upperValue := 4294967296
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 6))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 5 (by decide : 0 < 8) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))))) },
  { key := { q := 8, n := 17, r := 7 }
    lowerValue := 128073
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 7))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 17, r := 8 }
    lowerValue := 14277
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 8))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 17, r := 9 }
    lowerValue := 1978
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 9))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 17, r := 10 }
    lowerValue := 340
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 10))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 17, r := 11 }
    lowerValue := 73
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 11))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 17, r := 12 }
    lowerValue := 20
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 12))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 17, r := 13 }
    lowerValue := 8
    upperValue := 512
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 15 14)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 17, r := 14 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 16 15))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14)) },
  { key := { q := 8, n := 17, r := 15 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 17 16)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 15)) },
  { key := { q := 8, n := 17, r := 16 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 17 16))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 16)) },
  { key := { q := 8, n := 17, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 17)) },
  { key := { q := 8, n := 17, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 18)) },
  { key := { q := 8, n := 17, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 19)) },
  { key := { q := 8, n := 17, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 20)) },
  { key := { q := 8, n := 17, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 21)) },
  { key := { q := 8, n := 17, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 22)) },
  { key := { q := 8, n := 17, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 23)) },
  { key := { q := 8, n := 17, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 24)) },
  { key := { q := 8, n := 17, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 25)) },
  { key := { q := 8, n := 17, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 26)) },
  { key := { q := 8, n := 17, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 27)) },
  { key := { q := 8, n := 17, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 28)) },
  { key := { q := 8, n := 17, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 29)) },
  { key := { q := 8, n := 17, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 30)) },
  { key := { q := 8, n := 17, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 31)) },
  { key := { q := 8, n := 17, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 32)) },
  { key := { q := 8, n := 17, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 33)) },
  { key := { q := 8, n := 17, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 34)) },
  { key := { q := 8, n := 17, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 35)) },
  { key := { q := 8, n := 17, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 36)) },
  { key := { q := 8, n := 17, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 37)) },
  { key := { q := 8, n := 17, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 38)) },
  { key := { q := 8, n := 17, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 39)) },
  { key := { q := 8, n := 17, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 40)) },
  { key := { q := 8, n := 17, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 41)) },
  { key := { q := 8, n := 17, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 42)) },
  { key := { q := 8, n := 17, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 43)) },
  { key := { q := 8, n := 17, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 44)) },
  { key := { q := 8, n := 17, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 45)) },
  { key := { q := 8, n := 17, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 46)) },
  { key := { q := 8, n := 17, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 47)) },
  { key := { q := 8, n := 17, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 17 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 17 48)) },
  { key := { q := 8, n := 18, r := 0 }
    lowerValue := 18014398509481984
    upperValue := 18014398509481984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 18 0)) },
  { key := { q := 8, n := 18, r := 1 }
    lowerValue := 141845657554977
    upperValue := 1125899906842624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 1))
    upperTrace := (.lengthenFreeN 12 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 18, r := 2 }
    lowerValue := 2362853949303
    upperValue := 140737488355328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 2))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))))) },
  { key := { q := 8, n := 18, r := 3 }
    lowerValue := 62656162211
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 3))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 2 (by decide : 0 < 8) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))))) },
  { key := { q := 8, n := 18, r := 4 }
    lowerValue := 2359581980
    upperValue := 2199023255552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 4))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 3 (by decide : 0 < 8) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))))) },
  { key := { q := 8, n := 18, r := 5 }
    lowerValue := 118799533
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 5))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 4 (by decide : 0 < 8) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))))) },
  { key := { q := 8, n := 18, r := 6 }
    lowerValue := 7712723
    upperValue := 34359738368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 6))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 5 (by decide : 0 < 8) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))))) },
  { key := { q := 8, n := 18, r := 7 }
    lowerValue := 631108
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 7))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 18, r := 8 }
    lowerValue := 64154
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 8))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 18, r := 9 }
    lowerValue := 8033
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 9))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 18, r := 10 }
    lowerValue := 1234
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 10))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 18, r := 11 }
    lowerValue := 233
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 11))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 18, r := 12 }
    lowerValue := 54
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 12))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 18, r := 13 }
    lowerValue := 16
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 13))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 18, r := 14 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 16 15)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 18, r := 15 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 17 16))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15)) },
  { key := { q := 8, n := 18, r := 16 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 18 17)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 16)) },
  { key := { q := 8, n := 18, r := 17 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 18 17))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 17)) },
  { key := { q := 8, n := 18, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 18)) },
  { key := { q := 8, n := 18, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 19)) },
  { key := { q := 8, n := 18, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 20)) },
  { key := { q := 8, n := 18, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 21)) },
  { key := { q := 8, n := 18, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 22)) },
  { key := { q := 8, n := 18, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 23)) },
  { key := { q := 8, n := 18, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 24)) },
  { key := { q := 8, n := 18, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 25)) },
  { key := { q := 8, n := 18, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 26)) },
  { key := { q := 8, n := 18, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 27)) },
  { key := { q := 8, n := 18, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 28)) },
  { key := { q := 8, n := 18, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 29)) },
  { key := { q := 8, n := 18, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 30)) },
  { key := { q := 8, n := 18, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 31)) },
  { key := { q := 8, n := 18, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 32)) },
  { key := { q := 8, n := 18, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 33)) },
  { key := { q := 8, n := 18, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 34)) },
  { key := { q := 8, n := 18, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 35)) },
  { key := { q := 8, n := 18, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 36)) },
  { key := { q := 8, n := 18, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 37)) },
  { key := { q := 8, n := 18, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 38)) },
  { key := { q := 8, n := 18, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 39)) },
  { key := { q := 8, n := 18, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 40)) },
  { key := { q := 8, n := 18, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 41)) },
  { key := { q := 8, n := 18, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 42)) },
  { key := { q := 8, n := 18, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 43)) },
  { key := { q := 8, n := 18, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 44)) },
  { key := { q := 8, n := 18, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 45)) },
  { key := { q := 8, n := 18, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 46)) },
  { key := { q := 8, n := 18, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 47)) },
  { key := { q := 8, n := 18, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 18 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 18 48)) },
  { key := { q := 8, n := 19, r := 0 }
    lowerValue := 144115188075855872
    upperValue := 144115188075855872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 19 0)) },
  { key := { q := 8, n := 19, r := 1 }
    lowerValue := 1075486478178029
    upperValue := 9007199254740992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 1))
    upperTrace := (.lengthenFreeN 13 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 19, r := 2 }
    lowerValue := 16928836846689
    upperValue := 1125899906842624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 2))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))))) },
  { key := { q := 8, n := 19, r := 3 }
    lowerValue := 422773961734
    upperValue := 140737488355328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 3))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 2 (by decide : 0 < 8) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))))) },
  { key := { q := 8, n := 19, r := 4 }
    lowerValue := 14938619017
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 4))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 3 (by decide : 0 < 8) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))))) },
  { key := { q := 8, n := 19, r := 5 }
    lowerValue := 702730274
    upperValue := 2199023255552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 5))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 4 (by decide : 0 < 8) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))))) },
  { key := { q := 8, n := 19, r := 6 }
    lowerValue := 42422610
    upperValue := 274877906944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 6))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 5 (by decide : 0 < 8) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))))) },
  { key := { q := 8, n := 19, r := 7 }
    lowerValue := 3210135
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 7))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 19, r := 8 }
    lowerValue := 299860
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 8))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 19, r := 9 }
    lowerValue := 34245
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 9))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 19, r := 10 }
    lowerValue := 4756
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 10))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 19, r := 11 }
    lowerValue := 802
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 11))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 19, r := 12 }
    lowerValue := 165
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 12))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 19, r := 13 }
    lowerValue := 42
    upperValue := 32768
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 13))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 19, r := 14 }
    lowerValue := 13
    upperValue := 512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 14))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 19, r := 15 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 17 16)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 19, r := 16 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 18 17))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16)) },
  { key := { q := 8, n := 19, r := 17 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 19 18)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 17)) },
  { key := { q := 8, n := 19, r := 18 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 19 18))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 18)) },
  { key := { q := 8, n := 19, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 19)) },
  { key := { q := 8, n := 19, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 20)) },
  { key := { q := 8, n := 19, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 21)) },
  { key := { q := 8, n := 19, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 22)) },
  { key := { q := 8, n := 19, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 23)) },
  { key := { q := 8, n := 19, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 24)) },
  { key := { q := 8, n := 19, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 25)) },
  { key := { q := 8, n := 19, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 26)) },
  { key := { q := 8, n := 19, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 27)) },
  { key := { q := 8, n := 19, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 28)) },
  { key := { q := 8, n := 19, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 29)) },
  { key := { q := 8, n := 19, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 30)) },
  { key := { q := 8, n := 19, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 31)) },
  { key := { q := 8, n := 19, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 32)) },
  { key := { q := 8, n := 19, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 33)) },
  { key := { q := 8, n := 19, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 34)) },
  { key := { q := 8, n := 19, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 35)) },
  { key := { q := 8, n := 19, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 36)) },
  { key := { q := 8, n := 19, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 37)) },
  { key := { q := 8, n := 19, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 38)) },
  { key := { q := 8, n := 19, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 39)) },
  { key := { q := 8, n := 19, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 40)) },
  { key := { q := 8, n := 19, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 41)) },
  { key := { q := 8, n := 19, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 42)) },
  { key := { q := 8, n := 19, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 43)) },
  { key := { q := 8, n := 19, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 44)) },
  { key := { q := 8, n := 19, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 45)) },
  { key := { q := 8, n := 19, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 46)) },
  { key := { q := 8, n := 19, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 47)) },
  { key := { q := 8, n := 19, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 19 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 19 48)) },
  { key := { q := 8, n := 20, r := 0 }
    lowerValue := 1152921504606846976
    upperValue := 1152921504606846976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 20 0)) },
  { key := { q := 8, n := 20, r := 1 }
    lowerValue := 8176748259623029
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 1))
    upperTrace := (.lengthenFreeN 14 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 20, r := 2 }
    lowerValue := 121989366692080
    upperValue := 9007199254740992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 2))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))))) },
  { key := { q := 8, n := 20, r := 3 }
    lowerValue := 2878913840470
    upperValue := 1125899906842624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 3))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 2 (by decide : 0 < 8) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))))) },
  { key := { q := 8, n := 20, r := 4 }
    lowerValue := 95810789363
    upperValue := 140737488355328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 4))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 3 (by decide : 0 < 8) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))))) },
  { key := { q := 8, n := 20, r := 5 }
    lowerValue := 4229212237
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 5))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 4 (by decide : 0 < 8) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))))) },
  { key := { q := 8, n := 20, r := 6 }
    lowerValue := 238567521
    upperValue := 2199023255552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 6))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 5 (by decide : 0 < 8) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))))) },
  { key := { q := 8, n := 20, r := 7 }
    lowerValue := 16788391
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 7))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 20, r := 8 }
    lowerValue := 1450461
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 8))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 20, r := 9 }
    lowerValue := 152248
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 9))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 20, r := 10 }
    lowerValue := 19292
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 10))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 20, r := 11 }
    lowerValue := 2943
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 11))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 20, r := 12 }
    lowerValue := 540
    upperValue := 2097152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 12))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) },
  { key := { q := 8, n := 20, r := 13 }
    lowerValue := 120
    upperValue := 262144
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 13))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 15 13))) },
  { key := { q := 8, n := 20, r := 14 }
    lowerValue := 33
    upperValue := 4096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 14))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 17 14))) },
  { key := { q := 8, n := 20, r := 15 }
    lowerValue := 11
    upperValue := 512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 15))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 18 15))) },
  { key := { q := 8, n := 20, r := 16 }
    lowerValue := 8
    upperValue := 64
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 18 17)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 19 16))) },
  { key := { q := 8, n := 20, r := 17 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.lengthBack (by decide : 0 < 8) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 19 18))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 17)) },
  { key := { q := 8, n := 20, r := 18 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 20 19)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 18)) },
  { key := { q := 8, n := 20, r := 19 }
    lowerValue := 8
    upperValue := 8
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 8 20 19))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 20 19)) },
  { key := { q := 8, n := 20, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 20)) },
  { key := { q := 8, n := 20, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 21)) },
  { key := { q := 8, n := 20, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 22)) },
  { key := { q := 8, n := 20, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 23)) },
  { key := { q := 8, n := 20, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 24)) },
  { key := { q := 8, n := 20, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 25)) },
  { key := { q := 8, n := 20, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 26)) },
  { key := { q := 8, n := 20, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 27)) },
  { key := { q := 8, n := 20, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 28)) },
  { key := { q := 8, n := 20, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 29)) },
  { key := { q := 8, n := 20, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 30)) },
  { key := { q := 8, n := 20, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 31)) },
  { key := { q := 8, n := 20, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 32)) },
  { key := { q := 8, n := 20, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 33)) },
  { key := { q := 8, n := 20, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 34)) },
  { key := { q := 8, n := 20, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 35)) },
  { key := { q := 8, n := 20, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 36)) },
  { key := { q := 8, n := 20, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 37)) },
  { key := { q := 8, n := 20, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 38)) },
  { key := { q := 8, n := 20, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 39)) },
  { key := { q := 8, n := 20, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 40)) },
  { key := { q := 8, n := 20, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 41)) },
  { key := { q := 8, n := 20, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 42)) },
  { key := { q := 8, n := 20, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 43)) },
  { key := { q := 8, n := 20, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 44)) },
  { key := { q := 8, n := 20, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 45)) },
  { key := { q := 8, n := 20, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 46)) },
  { key := { q := 8, n := 20, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 47)) },
  { key := { q := 8, n := 20, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 20 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 8 20 48)) },
  { key := { q := 8, n := 21, r := 0 }
    lowerValue := 9223372036854775808
    upperValue := 9223372036854775808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 8 21 0)) },
  { key := { q := 8, n := 21, r := 1 }
    lowerValue := 62320081330099837
    upperValue := 576460752303423488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 1))
    upperTrace := (.lengthenFreeN 15 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))) },
  { key := { q := 8, n := 21, r := 2 }
    lowerValue := 883634033038396
    upperValue := 72057594037927936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 2))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 1 (by decide : 0 < 8) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))))) },
  { key := { q := 8, n := 21, r := 3 }
    lowerValue := 19766006405220
    upperValue := 9007199254740992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 3))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 2 (by decide : 0 < 8) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))))) },
  { key := { q := 8, n := 21, r := 4 }
    lowerValue := 621662911667
    upperValue := 1125899906842624
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 4))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 3 (by decide : 0 < 8) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))))) },
  { key := { q := 8, n := 21, r := 5 }
    lowerValue := 25847196855
    upperValue := 140737488355328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 5))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 4 (by decide : 0 < 8) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))))) },
  { key := { q := 8, n := 21, r := 6 }
    lowerValue := 1368260458
    upperValue := 17592186044416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 6))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 5 (by decide : 0 < 8) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 8 2 6 1 256 (by decide : 0 < 4) (by decide : 0 < 2) (by decide : 8 ≤ 2 * 4) (by decide : 0 < 8) (.lengthenFreeN 1 (.primitive "lean_quaternary_hamming" (primitiveUpper_valid 4 5 1))))))) },
  { key := { q := 8, n := 21, r := 7 }
    lowerValue := 89981899
    upperValue := 549755813888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 7))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 9 7))) },
  { key := { q := 8, n := 21, r := 8 }
    lowerValue := 7230718
    upperValue := 68719476736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 8))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 10 8))) },
  { key := { q := 8, n := 21, r := 9 }
    lowerValue := 702107
    upperValue := 8589934592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 9))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 11 9))) },
  { key := { q := 8, n := 21, r := 10 }
    lowerValue := 81790
    upperValue := 1073741824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 10))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 12 10))) },
  { key := { q := 8, n := 21, r := 11 }
    lowerValue := 11384
    upperValue := 134217728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 11))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 13 11))) },
  { key := { q := 8, n := 21, r := 12 }
    lowerValue := 1891
    upperValue := 16777216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 8 21 12))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 8 14 12))) }]

end CoveringCodes.Database
