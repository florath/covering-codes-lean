import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 205. Do not edit manually.

def precomputedTable_chunk_205 : Array AnyBoundEntry := #[
  { key := { q := 21, n := 16, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 45)) },
  { key := { q := 21, n := 16, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 46)) },
  { key := { q := 21, n := 16, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 47)) },
  { key := { q := 21, n := 16, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 16 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 16 48)) },
  { key := { q := 21, n := 17, r := 0 }
    lowerValue := 30041942495081691894741
    upperValue := 30041942495081691894741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 17 0)) },
  { key := { q := 21, n := 17, r := 1 }
    lowerValue := 88099538108743964501
    upperValue := 613100867246565140709
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 1))
    upperTrace := (.lengthenFreeN 8 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 21, n := 17, r := 2 }
    lowerValue := 548801492392935678
    upperValue := 29195279392693578129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 2))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 17, r := 3 }
    lowerValue := 5467399190440768
    upperValue := 1390251399652075149
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 3))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 17, r := 4 }
    lowerValue := 77769483522640
    upperValue := 66202447602479769
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 4))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 17, r := 5 }
    lowerValue := 1488116660034
    upperValue := 3152497504879989
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 5))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 17, r := 6 }
    lowerValue := 36985992510
    upperValue := 150118928803809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 6))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 17, r := 7 }
    lowerValue := 1168688345
    upperValue := 7148520419229
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 7))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 17, r := 8 }
    lowerValue := 46358040
    upperValue := 340405734249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 8))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))))) },
  { key := { q := 21, n := 17, r := 9 }
    lowerValue := 2294196
    upperValue := 16209796869
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 9))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 21) (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 21, n := 17, r := 10 }
    lowerValue := 141546
    upperValue := 771895089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 10))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 21) (@UpperTrace.alphabetExpand 7 21 3 8 1 117649 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))) },
  { key := { q := 21, n := 17, r := 11 }
    lowerValue := 10937
    upperValue := 42980301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 11))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 17, r := 12 }
    lowerValue := 1070
    upperValue := 2046681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 12))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 17, r := 13 }
    lowerValue := 135
    upperValue := 97461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 13))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 12 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 17, r := 14 }
    lowerValue := 23
    upperValue := 4641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 14))
    upperTrace := (.lengthenDummyN 13 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1)))) },
  { key := { q := 21, n := 17, r := 15 }
    lowerValue := 21
    upperValue := 221
    lowerTrace := (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 17 16)))
    upperTrace := (.lengthenDummyN 14 (by decide : 0 < 21) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 17, r := 16 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 17 16))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 17 16)) },
  { key := { q := 21, n := 17, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 17)) },
  { key := { q := 21, n := 17, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 18)) },
  { key := { q := 21, n := 17, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 19)) },
  { key := { q := 21, n := 17, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 20)) },
  { key := { q := 21, n := 17, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 21)) },
  { key := { q := 21, n := 17, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 22)) },
  { key := { q := 21, n := 17, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 23)) },
  { key := { q := 21, n := 17, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 24)) },
  { key := { q := 21, n := 17, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 25)) },
  { key := { q := 21, n := 17, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 26)) },
  { key := { q := 21, n := 17, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 27)) },
  { key := { q := 21, n := 17, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 28)) },
  { key := { q := 21, n := 17, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 29)) },
  { key := { q := 21, n := 17, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 30)) },
  { key := { q := 21, n := 17, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 31)) },
  { key := { q := 21, n := 17, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 32)) },
  { key := { q := 21, n := 17, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 33)) },
  { key := { q := 21, n := 17, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 34)) },
  { key := { q := 21, n := 17, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 35)) },
  { key := { q := 21, n := 17, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 36)) },
  { key := { q := 21, n := 17, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 37)) },
  { key := { q := 21, n := 17, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 38)) },
  { key := { q := 21, n := 17, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 39)) },
  { key := { q := 21, n := 17, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 40)) },
  { key := { q := 21, n := 17, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 41)) },
  { key := { q := 21, n := 17, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 42)) },
  { key := { q := 21, n := 17, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 43)) },
  { key := { q := 21, n := 17, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 44)) },
  { key := { q := 21, n := 17, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 45)) },
  { key := { q := 21, n := 17, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 46)) },
  { key := { q := 21, n := 17, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 47)) },
  { key := { q := 21, n := 17, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 17 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 17 48)) },
  { key := { q := 21, n := 18, r := 0 }
    lowerValue := 630880792396715529789561
    upperValue := 630880792396715529789561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 18 0)) },
  { key := { q := 21, n := 18, r := 1 }
    lowerValue := 1747592222705583185013
    upperValue := 12875118212177867954889
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 1))
    upperTrace := (.lengthenFreeN 9 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 21, n := 18, r := 2 }
    lowerValue := 10248059524645725862
    upperValue := 613100867246565140709
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 2))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 18, r := 3 }
    lowerValue := 95739426707896859
    upperValue := 29195279392693578129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 3))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 18, r := 4 }
    lowerValue := 1271451158958815
    upperValue := 1390251399652075149
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 4))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 18, r := 5 }
    lowerValue := 22601044226477
    upperValue := 66202447602479769
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 5))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 18, r := 6 }
    lowerValue := 518812264353
    upperValue := 3152497504879989
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 6))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 18, r := 7 }
    lowerValue := 15038613049
    upperValue := 150118928803809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 7))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 18, r := 8 }
    lowerValue := 542854013
    upperValue := 7148520419229
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 8))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 18, r := 9 }
    lowerValue := 24212872
    upperValue := 340405734249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 9))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))))) },
  { key := { q := 21, n := 18, r := 10 }
    lowerValue := 1330587
    upperValue := 16209796869
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 10))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 21) (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 21, n := 18, r := 11 }
    lowerValue := 90233
    upperValue := 771895089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 11))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 21) (@UpperTrace.alphabetExpand 7 21 3 8 1 117649 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))) },
  { key := { q := 21, n := 18, r := 12 }
    lowerValue := 7599
    upperValue := 42980301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 12))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 18, r := 13 }
    lowerValue := 804
    upperValue := 2046681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 13))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 12 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 18, r := 14 }
    lowerValue := 109
    upperValue := 97461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 14))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 13 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 18, r := 15 }
    lowerValue := 21
    upperValue := 4641
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 17 16))))
    upperTrace := (.lengthenDummyN 14 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1)))) },
  { key := { q := 21, n := 18, r := 16 }
    lowerValue := 21
    upperValue := 221
    lowerTrace := (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 18 17)))
    upperTrace := (.lengthenDummyN 15 (by decide : 0 < 21) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 18, r := 17 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 18 17))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 18 17)) },
  { key := { q := 21, n := 18, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 18)) },
  { key := { q := 21, n := 18, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 19)) },
  { key := { q := 21, n := 18, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 20)) },
  { key := { q := 21, n := 18, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 21)) },
  { key := { q := 21, n := 18, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 22)) },
  { key := { q := 21, n := 18, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 23)) },
  { key := { q := 21, n := 18, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 24)) },
  { key := { q := 21, n := 18, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 25)) },
  { key := { q := 21, n := 18, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 26)) },
  { key := { q := 21, n := 18, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 27)) },
  { key := { q := 21, n := 18, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 28)) },
  { key := { q := 21, n := 18, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 29)) },
  { key := { q := 21, n := 18, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 30)) },
  { key := { q := 21, n := 18, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 31)) },
  { key := { q := 21, n := 18, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 32)) },
  { key := { q := 21, n := 18, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 33)) },
  { key := { q := 21, n := 18, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 34)) },
  { key := { q := 21, n := 18, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 35)) },
  { key := { q := 21, n := 18, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 36)) },
  { key := { q := 21, n := 18, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 37)) },
  { key := { q := 21, n := 18, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 38)) },
  { key := { q := 21, n := 18, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 39)) },
  { key := { q := 21, n := 18, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 40)) },
  { key := { q := 21, n := 18, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 41)) },
  { key := { q := 21, n := 18, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 42)) },
  { key := { q := 21, n := 18, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 43)) },
  { key := { q := 21, n := 18, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 44)) },
  { key := { q := 21, n := 18, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 45)) },
  { key := { q := 21, n := 18, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 46)) },
  { key := { q := 21, n := 18, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 47)) },
  { key := { q := 21, n := 18, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 18 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 18 48)) },
  { key := { q := 21, n := 19, r := 0 }
    lowerValue := 13248496640331026125580781
    upperValue := 13248496640331026125580781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 19 0)) },
  { key := { q := 21, n := 19, r := 1 }
    lowerValue := 34772957061236289043520
    upperValue := 270377482455735227052669
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 1))
    upperTrace := (.lengthenFreeN 10 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 21, n := 19, r := 2 }
    lowerValue := 192618552221267881037
    upperValue := 12875118212177867954889
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 2))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 19, r := 3 }
    lowerValue := 1694011971480984588
    upperValue := 613100867246565140709
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 3))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 19, r := 4 }
    lowerValue := 21096977871255946
    upperValue := 29195279392693578129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 4))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 19, r := 5 }
    lowerValue := 350141218515316
    upperValue := 1390251399652075149
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 5))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 19, r := 6 }
    lowerValue := 7466947138521
    upperValue := 66202447602479769
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 6))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 19, r := 7 }
    lowerValue := 199914163327
    upperValue := 3152497504879989
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 7))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 19, r := 8 }
    lowerValue := 6620374986
    upperValue := 150118928803809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 8))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 19, r := 9 }
    lowerValue := 268739237
    upperValue := 7148520419229
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 9))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 19, r := 10 }
    lowerValue := 13311736
    upperValue := 340405734249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 10))
    upperTrace := (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))))) },
  { key := { q := 21, n := 19, r := 11 }
    lowerValue := 804185
    upperValue := 16209796869
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 11))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 21) (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 21, n := 19, r := 12 }
    lowerValue := 59447
    upperValue := 771895089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 12))
    upperTrace := (.lengthenDummyN 11 (by decide : 0 < 21) (@UpperTrace.alphabetExpand 7 21 3 8 1 117649 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))) },
  { key := { q := 21, n := 19, r := 13 }
    lowerValue := 5418
    upperValue := 42980301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 13))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 12 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 19, r := 14 }
    lowerValue := 617
    upperValue := 2046681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 14))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 13 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 19, r := 15 }
    lowerValue := 90
    upperValue := 97461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 15))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 14 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 19, r := 16 }
    lowerValue := 21
    upperValue := 4641
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 18 17))))
    upperTrace := (.lengthenDummyN 15 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1)))) },
  { key := { q := 21, n := 19, r := 17 }
    lowerValue := 21
    upperValue := 221
    lowerTrace := (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 19 18)))
    upperTrace := (.lengthenDummyN 16 (by decide : 0 < 21) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 19, r := 18 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 19 18))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 19 18)) },
  { key := { q := 21, n := 19, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 19)) },
  { key := { q := 21, n := 19, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 20)) },
  { key := { q := 21, n := 19, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 21)) },
  { key := { q := 21, n := 19, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 22)) },
  { key := { q := 21, n := 19, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 23)) },
  { key := { q := 21, n := 19, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 24)) },
  { key := { q := 21, n := 19, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 25)) },
  { key := { q := 21, n := 19, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 26)) },
  { key := { q := 21, n := 19, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 27)) },
  { key := { q := 21, n := 19, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 28)) },
  { key := { q := 21, n := 19, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 29)) },
  { key := { q := 21, n := 19, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 30)) },
  { key := { q := 21, n := 19, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 31)) },
  { key := { q := 21, n := 19, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 32)) },
  { key := { q := 21, n := 19, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 33)) },
  { key := { q := 21, n := 19, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 34)) },
  { key := { q := 21, n := 19, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 35)) },
  { key := { q := 21, n := 19, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 36)) },
  { key := { q := 21, n := 19, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 37)) },
  { key := { q := 21, n := 19, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 38)) },
  { key := { q := 21, n := 19, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 39)) },
  { key := { q := 21, n := 19, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 40)) },
  { key := { q := 21, n := 19, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 41)) },
  { key := { q := 21, n := 19, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 42)) },
  { key := { q := 21, n := 19, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 43)) },
  { key := { q := 21, n := 19, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 44)) },
  { key := { q := 21, n := 19, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 45)) },
  { key := { q := 21, n := 19, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 46)) },
  { key := { q := 21, n := 19, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 47)) },
  { key := { q := 21, n := 19, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 19 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 19 48)) },
  { key := { q := 21, n := 20, r := 0 }
    lowerValue := 278218429446951548637196401
    upperValue := 278218429446951548637196401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 20 0)) },
  { key := { q := 21, n := 20, r := 1 }
    lowerValue := 693811544755490146227423
    upperValue := 5677927131570439768106049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 1))
    upperTrace := (.lengthenFreeN 11 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 21, n := 20, r := 2 }
    lowerValue := 3641554815342096944245
    upperValue := 270377482455735227052669
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 2))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 20, r := 3 }
    lowerValue := 30252968465267178828
    upperValue := 12875118212177867954889
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 3))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 20, r := 4 }
    lowerValue := 354691109102821532
    upperValue := 613100867246565140709
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 4))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 20, r := 5 }
    lowerValue := 5520514022907652
    upperValue := 29195279392693578129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 5))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 20, r := 6 }
    lowerValue := 109922694870927
    upperValue := 1390251399652075149
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 6))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 20, r := 7 }
    lowerValue := 2734155108821
    upperValue := 66202447602479769
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 7))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 20, r := 8 }
    lowerValue := 83634756140
    upperValue := 3152497504879989
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 8))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 20, r := 9 }
    lowerValue := 3114776775
    upperValue := 150118928803809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 9))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 20, r := 10 }
    lowerValue := 140427581
    upperValue := 7148520419229
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 10))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 20, r := 11 }
    lowerValue := 7647685
    upperValue := 340405734249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 11))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))))) },
  { key := { q := 21, n := 20, r := 12 }
    lowerValue := 503698
    upperValue := 16209796869
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 12))
    upperTrace := (.lengthenDummyN 11 (by decide : 0 < 21) (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 21, n := 20, r := 13 }
    lowerValue := 40306
    upperValue := 771895089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 13))
    upperTrace := (.lengthenDummyN 12 (by decide : 0 < 21) (@UpperTrace.alphabetExpand 7 21 3 8 1 117649 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))) },
  { key := { q := 21, n := 20, r := 14 }
    lowerValue := 3952
    upperValue := 42980301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 14))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 13 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 20, r := 15 }
    lowerValue := 481
    upperValue := 2046681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 15))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 14 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 20, r := 16 }
    lowerValue := 75
    upperValue := 97461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 16))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 15 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 20, r := 17 }
    lowerValue := 21
    upperValue := 4641
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 17 ≤ 18) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 19 18))))
    upperTrace := (.lengthenDummyN 16 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1)))) },
  { key := { q := 21, n := 20, r := 18 }
    lowerValue := 21
    upperValue := 221
    lowerTrace := (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 20 19)))
    upperTrace := (.lengthenDummyN 17 (by decide : 0 < 21) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 20, r := 19 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 20 19))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 20 19)) },
  { key := { q := 21, n := 20, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 20)) },
  { key := { q := 21, n := 20, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 21)) },
  { key := { q := 21, n := 20, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 22)) },
  { key := { q := 21, n := 20, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 23)) },
  { key := { q := 21, n := 20, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 24)) },
  { key := { q := 21, n := 20, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 25)) },
  { key := { q := 21, n := 20, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 26)) },
  { key := { q := 21, n := 20, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 27)) },
  { key := { q := 21, n := 20, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 28)) },
  { key := { q := 21, n := 20, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 29)) },
  { key := { q := 21, n := 20, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 30)) },
  { key := { q := 21, n := 20, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 31)) },
  { key := { q := 21, n := 20, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 32)) },
  { key := { q := 21, n := 20, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 33)) },
  { key := { q := 21, n := 20, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 34)) },
  { key := { q := 21, n := 20, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 35)) },
  { key := { q := 21, n := 20, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 36)) },
  { key := { q := 21, n := 20, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 37)) },
  { key := { q := 21, n := 20, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 38)) },
  { key := { q := 21, n := 20, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 39)) },
  { key := { q := 21, n := 20, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 40)) },
  { key := { q := 21, n := 20, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 41)) },
  { key := { q := 21, n := 20, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 42)) },
  { key := { q := 21, n := 20, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 43)) },
  { key := { q := 21, n := 20, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 44)) },
  { key := { q := 21, n := 20, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 45)) },
  { key := { q := 21, n := 20, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 46)) },
  { key := { q := 21, n := 20, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 47)) },
  { key := { q := 21, n := 20, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 20 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 20 48)) },
  { key := { q := 21, n := 21, r := 0 }
    lowerValue := 5842587018385982521381124421
    upperValue := 5842587018385982521381124421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 21 0)) },
  { key := { q := 21, n := 21, r := 1 }
    lowerValue := 13877878903529649694491982
    upperValue := 119236469762979235130227029
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 1))
    upperTrace := (.lengthenFreeN 12 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 21, n := 21, r := 2 }
    lowerValue := 69207744736333169725319
    upperValue := 5677927131570439768106049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 2))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 21, r := 3 }
    lowerValue := 544792769547743651745
    upperValue := 270377482455735227052669
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 3))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 21, r := 4 }
    lowerValue := 6033708219764068639
    upperValue := 12875118212177867954889
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 4))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 21, r := 5 }
    lowerValue := 88410017679097721
    upperValue := 613100867246565140709
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 5))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 21, r := 6 }
    lowerValue := 1650923475705700
    upperValue := 29195279392693578129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 6))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 21, r := 7 }
    lowerValue := 38342875926023
    upperValue := 1390251399652075149
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 7))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 21, r := 8 }
    lowerValue := 1089684935692
    upperValue := 66202447602479769
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 8))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 21, r := 9 }
    lowerValue := 37487593935
    upperValue := 3152497504879989
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 9))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 21, r := 10 }
    lowerValue := 1550717992
    upperValue := 150118928803809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 10))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 21, r := 11 }
    lowerValue := 76872198
    upperValue := 7148520419229
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 11))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 21, r := 12 }
    lowerValue := 4564731
    upperValue := 340405734249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 12))
    upperTrace := (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))))) },
  { key := { q := 21, n := 21, r := 13 }
    lowerValue := 325496
    upperValue := 16209796869
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 13))
    upperTrace := (.lengthenDummyN 12 (by decide : 0 < 21) (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 21, n := 21, r := 14 }
    lowerValue := 28027
    upperValue := 771895089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 14))
    upperTrace := (.lengthenDummyN 13 (by decide : 0 < 21) (@UpperTrace.alphabetExpand 7 21 3 8 1 117649 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))) },
  { key := { q := 21, n := 21, r := 15 }
    lowerValue := 2942
    upperValue := 42980301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 15))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 14 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 21, r := 16 }
    lowerValue := 382
    upperValue := 2046681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 16))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 15 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 21, r := 17 }
    lowerValue := 63
    upperValue := 97461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 17))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 16 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 21, r := 18 }
    lowerValue := 21
    upperValue := 4641
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 20 19))))
    upperTrace := (.lengthenDummyN 17 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1)))) },
  { key := { q := 21, n := 21, r := 19 }
    lowerValue := 21
    upperValue := 221
    lowerTrace := (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 21 20)))
    upperTrace := (.lengthenDummyN 18 (by decide : 0 < 21) (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))) },
  { key := { q := 21, n := 21, r := 20 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 21 20))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 21 20)) },
  { key := { q := 21, n := 21, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 21)) },
  { key := { q := 21, n := 21, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 22)) },
  { key := { q := 21, n := 21, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 23)) },
  { key := { q := 21, n := 21, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 24)) },
  { key := { q := 21, n := 21, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 25)) },
  { key := { q := 21, n := 21, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 26)) },
  { key := { q := 21, n := 21, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 27)) },
  { key := { q := 21, n := 21, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 28)) },
  { key := { q := 21, n := 21, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 29)) },
  { key := { q := 21, n := 21, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 30)) },
  { key := { q := 21, n := 21, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 31)) },
  { key := { q := 21, n := 21, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 32)) },
  { key := { q := 21, n := 21, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 33)) },
  { key := { q := 21, n := 21, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 34)) },
  { key := { q := 21, n := 21, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 35)) },
  { key := { q := 21, n := 21, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 36)) },
  { key := { q := 21, n := 21, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 37)) },
  { key := { q := 21, n := 21, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 38)) },
  { key := { q := 21, n := 21, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 39)) },
  { key := { q := 21, n := 21, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 40)) },
  { key := { q := 21, n := 21, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 41)) },
  { key := { q := 21, n := 21, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 42)) },
  { key := { q := 21, n := 21, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 43)) },
  { key := { q := 21, n := 21, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 44)) },
  { key := { q := 21, n := 21, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 45)) },
  { key := { q := 21, n := 21, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 46)) },
  { key := { q := 21, n := 21, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 47)) },
  { key := { q := 21, n := 21, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 21 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 21 48)) },
  { key := { q := 21, n := 22, r := 0 }
    lowerValue := 122694327386105632949003612841
    upperValue := 122694327386105632949003612841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 22 0)) }]

end CoveringCodes.Database
