import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 206. Do not edit manually.

def precomputedTable_chunk_206 : Array AnyBoundEntry := #[
  { key := { q := 21, n := 22, r := 1 }
    lowerValue := 278218429446951548637196401
    upperValue := 2503965865022563937734767609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 1))
    upperTrace := (.lengthenFreeN 13 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 21, n := 22, r := 2 }
    lowerValue := 1321553272650075214064946
    upperValue := 119236469762979235130227029
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 2))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 22, r := 3 }
    lowerValue := 9884467817327687750855
    upperValue := 5677927131570439768106049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 3))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 22, r := 4 }
    lowerValue := 103730973433104310498
    upperValue := 270377482455735227052669
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 4))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 22, r := 5 }
    lowerValue := 1435833956866364034
    upperValue := 12875118212177867954889
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 5))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 22, r := 6 }
    lowerValue := 25242195781262249
    upperValue := 613100867246565140709
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 6))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 22, r := 7 }
    lowerValue := 549811681460692
    upperValue := 29195279392693578129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 7))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 22, r := 8 }
    lowerValue := 14590367763642
    upperValue := 1390251399652075149
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 8))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 22, r := 9 }
    lowerValue := 466361762143
    upperValue := 66202447602479769
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 9))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 22, r := 10 }
    lowerValue := 17821191172
    upperValue := 3152497504879989
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 10))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 22, r := 11 }
    lowerValue := 810627534
    upperValue := 150118928803809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 11))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 22, r := 12 }
    lowerValue := 43819102
    upperValue := 7148520419229
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 12))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 22, r := 13 }
    lowerValue := 2817408
    upperValue := 340405734249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 13))
    upperTrace := (.lengthenDummyN 12 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))))) },
  { key := { q := 21, n := 22, r := 14 }
    lowerValue := 216217
    upperValue := 16209796869
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 14))
    upperTrace := (.lengthenDummyN 13 (by decide : 0 < 21) (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 21, n := 22, r := 15 }
    lowerValue := 19932
    upperValue := 771895089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 15))
    upperTrace := (.lengthenDummyN 14 (by decide : 0 < 21) (@UpperTrace.alphabetExpand 7 21 3 8 1 117649 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))) },
  { key := { q := 21, n := 22, r := 16 }
    lowerValue := 2229
    upperValue := 42980301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 16))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 15 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 22, r := 17 }
    lowerValue := 307
    upperValue := 2046681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 17))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 16 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 22, r := 18 }
    lowerValue := 53
    upperValue := 97461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 18))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 17 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 22, r := 19 }
    lowerValue := 21
    upperValue := 4641
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 21 20))))
    upperTrace := (.lengthenDummyN 18 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1)))) },
  { key := { q := 21, n := 22, r := 20 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 22 21)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 22 20)) },
  { key := { q := 21, n := 22, r := 21 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 22 21))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 22 21)) },
  { key := { q := 21, n := 22, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 22)) },
  { key := { q := 21, n := 22, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 23)) },
  { key := { q := 21, n := 22, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 24)) },
  { key := { q := 21, n := 22, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 25)) },
  { key := { q := 21, n := 22, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 26)) },
  { key := { q := 21, n := 22, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 27)) },
  { key := { q := 21, n := 22, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 28)) },
  { key := { q := 21, n := 22, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 29)) },
  { key := { q := 21, n := 22, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 30)) },
  { key := { q := 21, n := 22, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 31)) },
  { key := { q := 21, n := 22, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 32)) },
  { key := { q := 21, n := 22, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 33)) },
  { key := { q := 21, n := 22, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 34)) },
  { key := { q := 21, n := 22, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 35)) },
  { key := { q := 21, n := 22, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 36)) },
  { key := { q := 21, n := 22, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 37)) },
  { key := { q := 21, n := 22, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 38)) },
  { key := { q := 21, n := 22, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 39)) },
  { key := { q := 21, n := 22, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 40)) },
  { key := { q := 21, n := 22, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 41)) },
  { key := { q := 21, n := 22, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 42)) },
  { key := { q := 21, n := 22, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 43)) },
  { key := { q := 21, n := 22, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 44)) },
  { key := { q := 21, n := 22, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 45)) },
  { key := { q := 21, n := 22, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 46)) },
  { key := { q := 21, n := 22, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 47)) },
  { key := { q := 21, n := 22, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 22 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 22 48)) },
  { key := { q := 21, n := 23, r := 0 }
    lowerValue := 2576580875108218291929075869661
    upperValue := 2576580875108218291929075869661
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 23 0)) },
  { key := { q := 21, n := 23, r := 1 }
    lowerValue := 5589112527349714299195392342
    upperValue := 52583283165473842692430119789
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 1))
    upperTrace := (.lengthenFreeN 14 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 21, n := 23, r := 2 }
    lowerValue := 25344831106404799204503949
    upperValue := 2503965865022563937734767609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 2))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 23, r := 3 }
    lowerValue := 180563565953544256722643
    upperValue := 119236469762979235130227029
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 3))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 23, r := 4 }
    lowerValue := 1800458038714733322776
    upperValue := 5677927131570439768106049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 4))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 23, r := 5 }
    lowerValue := 23614986555174239349
    upperValue := 270377482455735227052669
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 5))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 23, r := 6 }
    lowerValue := 392190610100337705
    upperValue := 12875118212177867954889
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 6))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 23, r := 7 }
    lowerValue := 8042499108615265
    upperValue := 613100867246565140709
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 7))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 23, r := 8 }
    lowerValue := 200163066596308
    upperValue := 29195279392693578129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 8))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 23, r := 9 }
    lowerValue := 5974352111833
    upperValue := 1390251399652075149
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 9))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 23, r := 10 }
    lowerValue := 212125209217
    upperValue := 66202447602479769
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 10))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 23, r := 11 }
    lowerValue := 8913898285
    upperValue := 3152497504879989
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 11))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 23, r := 12 }
    lowerValue := 442167248
    upperValue := 150118928803809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 12))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 23, r := 13 }
    lowerValue := 25882526
    upperValue := 7148520419229
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 13))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 12 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 23, r := 14 }
    lowerValue := 1791242
    upperValue := 340405734249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 14))
    upperTrace := (.lengthenDummyN 13 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))))) },
  { key := { q := 21, n := 23, r := 15 }
    lowerValue := 147191
    upperValue := 16209796869
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 15))
    upperTrace := (.lengthenDummyN 14 (by decide : 0 < 21) (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 21, n := 23, r := 16 }
    lowerValue := 14462
    upperValue := 771895089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 16))
    upperTrace := (.lengthenDummyN 15 (by decide : 0 < 21) (@UpperTrace.alphabetExpand 7 21 3 8 1 117649 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))) },
  { key := { q := 21, n := 23, r := 17 }
    lowerValue := 1717
    upperValue := 42980301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 17))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 16 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 23, r := 18 }
    lowerValue := 250
    upperValue := 2046681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 18))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 17 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 23, r := 19 }
    lowerValue := 46
    upperValue := 97461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 19))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 18 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 23, r := 20 }
    lowerValue := 21
    upperValue := 441
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 22 21))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 22 20))) },
  { key := { q := 21, n := 23, r := 21 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 23 22)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 23 21)) },
  { key := { q := 21, n := 23, r := 22 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 23 22))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 23 22)) },
  { key := { q := 21, n := 23, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 23 23)) },
  { key := { q := 21, n := 23, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 23 24)) },
  { key := { q := 21, n := 23, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 23 25)) },
  { key := { q := 21, n := 23, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 23 26)) },
  { key := { q := 21, n := 23, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 23 27)) },
  { key := { q := 21, n := 23, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 23 28)) },
  { key := { q := 21, n := 23, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 23 29)) },
  { key := { q := 21, n := 23, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 23 30)) },
  { key := { q := 21, n := 23, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 23 31)) },
  { key := { q := 21, n := 23, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 23 32)) },
  { key := { q := 21, n := 23, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 23 33)) },
  { key := { q := 21, n := 23, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 23 34)) },
  { key := { q := 21, n := 23, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 23 35)) },
  { key := { q := 21, n := 23, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 23 36)) },
  { key := { q := 21, n := 23, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 23 37)) },
  { key := { q := 21, n := 23, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 23 38)) },
  { key := { q := 21, n := 23, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 23 39)) },
  { key := { q := 21, n := 23, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 23 40)) },
  { key := { q := 21, n := 23, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 23 41)) },
  { key := { q := 21, n := 23, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 23 42)) },
  { key := { q := 21, n := 23, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 23 43)) },
  { key := { q := 21, n := 23, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 23 44)) },
  { key := { q := 21, n := 23, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 23 45)) },
  { key := { q := 21, n := 23, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 23 46)) },
  { key := { q := 21, n := 23, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 23 47)) },
  { key := { q := 21, n := 23, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 23 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 23 48)) },
  { key := { q := 21, n := 24, r := 0 }
    lowerValue := 54108198377272584130510593262881
    upperValue := 54108198377272584130510593262881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 24 0)) },
  { key := { q := 21, n := 24, r := 1 }
    lowerValue := 112491056917406619813951337345
    upperValue := 1104248946474950696541032515569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 1))
    upperTrace := (.lengthenFreeN 15 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 21, n := 24, r := 2 }
    lowerValue := 487984401090110876800449070
    upperValue := 52583283165473842692430119789
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 2))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 24, r := 3 }
    lowerValue := 3318934756211039271556396
    upperValue := 2503965865022563937734767609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 3))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 24, r := 4 }
    lowerValue := 31523080968549406184631
    upperValue := 119236469762979235130227029
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 4))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 24, r := 5 }
    lowerValue := 392859129900541329323
    upperValue := 5677927131570439768106049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 5))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 24, r := 6 }
    lowerValue := 6182470512542692670
    upperValue := 270377482455735227052669
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 6))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 24, r := 7 }
    lowerValue := 119770675426785779
    upperValue := 12875118212177867954889
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 7))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 24, r := 8 }
    lowerValue := 2806467648523908
    upperValue := 613100867246565140709
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 8))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 24, r := 9 }
    lowerValue := 78563206263022
    upperValue := 29195279392693578129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 9))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 24, r := 10 }
    lowerValue := 2604864329430
    upperValue := 1390251399652075149
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 10))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 24, r := 11 }
    lowerValue := 101710528659
    upperValue := 66202447602479769
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 11))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 24, r := 12 }
    lowerValue := 4661202763
    upperValue := 3152497504879989
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 12))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 24, r := 13 }
    lowerValue := 250393897
    upperValue := 150118928803809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 13))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 12 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 24, r := 14 }
    lowerValue := 15777680
    upperValue := 7148520419229
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 14))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 13 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 24, r := 15 }
    lowerValue := 1169308
    upperValue := 340405734249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 15))
    upperTrace := (.lengthenDummyN 14 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))))) },
  { key := { q := 21, n := 24, r := 16 }
    lowerValue := 102425
    upperValue := 16209796869
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 16))
    upperTrace := (.lengthenDummyN 15 (by decide : 0 < 21) (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 21, n := 24, r := 17 }
    lowerValue := 10684
    upperValue := 771895089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 17))
    upperTrace := (.lengthenDummyN 16 (by decide : 0 < 21) (@UpperTrace.alphabetExpand 7 21 3 8 1 117649 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))) },
  { key := { q := 21, n := 24, r := 18 }
    lowerValue := 1342
    upperValue := 42980301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 18))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 17 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 24, r := 19 }
    lowerValue := 206
    upperValue := 2046681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 19))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 18 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 24, r := 20 }
    lowerValue := 40
    upperValue := 9261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 20))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 22 20))) },
  { key := { q := 21, n := 24, r := 21 }
    lowerValue := 21
    upperValue := 441
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 23 22))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 23 21))) },
  { key := { q := 21, n := 24, r := 22 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 24 23)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 24 22)) },
  { key := { q := 21, n := 24, r := 23 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 24 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 24 23)) },
  { key := { q := 21, n := 24, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 24 24)) },
  { key := { q := 21, n := 24, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 24 25)) },
  { key := { q := 21, n := 24, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 24 26)) },
  { key := { q := 21, n := 24, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 24 27)) },
  { key := { q := 21, n := 24, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 24 28)) },
  { key := { q := 21, n := 24, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 24 29)) },
  { key := { q := 21, n := 24, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 24 30)) },
  { key := { q := 21, n := 24, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 24 31)) },
  { key := { q := 21, n := 24, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 24 32)) },
  { key := { q := 21, n := 24, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 24 33)) },
  { key := { q := 21, n := 24, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 24 34)) },
  { key := { q := 21, n := 24, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 24 35)) },
  { key := { q := 21, n := 24, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 24 36)) },
  { key := { q := 21, n := 24, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 24 37)) },
  { key := { q := 21, n := 24, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 24 38)) },
  { key := { q := 21, n := 24, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 24 39)) },
  { key := { q := 21, n := 24, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 24 40)) },
  { key := { q := 21, n := 24, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 24 41)) },
  { key := { q := 21, n := 24, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 24 42)) },
  { key := { q := 21, n := 24, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 24 43)) },
  { key := { q := 21, n := 24, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 24 44)) },
  { key := { q := 21, n := 24, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 24 45)) },
  { key := { q := 21, n := 24, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 24 46)) },
  { key := { q := 21, n := 24, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 24 47)) },
  { key := { q := 21, n := 24, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 24 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 24 48)) },
  { key := { q := 21, n := 25, r := 0 }
    lowerValue := 1136272165922724266740722458520501
    upperValue := 1136272165922724266740722458520501
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 25 0)) },
  { key := { q := 21, n := 25, r := 1 }
    lowerValue := 2268008315215018496488467981079
    upperValue := 23189227875973964627361682826949
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 1))
    upperTrace := (.lengthenFreeN 16 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 21, n := 25, r := 2 }
    lowerValue := 9429566276816991284227703161
    upperValue := 1104248946474950696541032515569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 2))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 25, r := 3 }
    lowerValue := 61352128969012461743919480
    upperValue := 52583283165473842692430119789
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 3))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 25, r := 4 }
    lowerValue := 556308818132506111252356
    upperValue := 2503965865022563937734767609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 4))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 25, r := 5 }
    lowerValue := 6603986612311479687102
    upperValue := 119236469762979235130227029
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 5))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 25, r := 6 }
    lowerValue := 98750815804726866388
    upperValue := 5677927131570439768106049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 6))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 25, r := 7 }
    lowerValue := 1812807449104094255
    upperValue := 270377482455735227052669
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 7))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 25, r := 8 }
    lowerValue := 40129516218313253
    upperValue := 12875118212177867954889
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 8))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 25, r := 9 }
    lowerValue := 1057668050678337
    upperValue := 613100867246565140709
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 9))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 25, r := 10 }
    lowerValue := 32891169104070
    upperValue := 29195279392693578129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 10))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 25, r := 11 }
    lowerValue := 1199330643596
    upperValue := 1390251399652075149
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 11))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 25, r := 12 }
    lowerValue := 51073345429
    upperValue := 66202447602479769
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 12))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 25, r := 13 }
    lowerValue := 2534870887
    upperValue := 3152497504879989
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 13))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 12 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 25, r := 14 }
    lowerValue := 146591920
    upperValue := 150118928803809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 14))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 13 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 25, r := 15 }
    lowerValue := 9892500
    upperValue := 7148520419229
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 15))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 14 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 25, r := 16 }
    lowerValue := 781617
    upperValue := 340405734249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 16))
    upperTrace := (.lengthenDummyN 15 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))))) },
  { key := { q := 21, n := 25, r := 17 }
    lowerValue := 72698
    upperValue := 16209796869
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 17))
    upperTrace := (.lengthenDummyN 16 (by decide : 0 < 21) (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 21, n := 25, r := 18 }
    lowerValue := 8023
    upperValue := 771895089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 18))
    upperTrace := (.lengthenDummyN 17 (by decide : 0 < 21) (@UpperTrace.alphabetExpand 7 21 3 8 1 117649 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))) },
  { key := { q := 21, n := 25, r := 19 }
    lowerValue := 1062
    upperValue := 42980301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 19))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 18 (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 21 3 1))))) },
  { key := { q := 21, n := 25, r := 20 }
    lowerValue := 172
    upperValue := 194481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 20))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 22 20))) },
  { key := { q := 21, n := 25, r := 21 }
    lowerValue := 35
    upperValue := 9261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 21))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 23 21))) },
  { key := { q := 21, n := 25, r := 22 }
    lowerValue := 21
    upperValue := 441
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 24 23))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 24 22))) },
  { key := { q := 21, n := 25, r := 23 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 25 24)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 25 23)) },
  { key := { q := 21, n := 25, r := 24 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 25 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 25 24)) },
  { key := { q := 21, n := 25, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 25 25)) },
  { key := { q := 21, n := 25, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 25 26)) },
  { key := { q := 21, n := 25, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 25 27)) },
  { key := { q := 21, n := 25, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 25 28)) },
  { key := { q := 21, n := 25, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 25 29)) },
  { key := { q := 21, n := 25, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 25 30)) },
  { key := { q := 21, n := 25, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 25 31)) },
  { key := { q := 21, n := 25, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 25 32)) },
  { key := { q := 21, n := 25, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 25 33)) },
  { key := { q := 21, n := 25, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 25 34)) },
  { key := { q := 21, n := 25, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 25 35)) },
  { key := { q := 21, n := 25, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 25 36)) },
  { key := { q := 21, n := 25, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 25 37)) },
  { key := { q := 21, n := 25, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 25 38)) },
  { key := { q := 21, n := 25, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 25 39)) },
  { key := { q := 21, n := 25, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 25 40)) },
  { key := { q := 21, n := 25, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 25 41)) },
  { key := { q := 21, n := 25, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 25 42)) },
  { key := { q := 21, n := 25, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 25 43)) },
  { key := { q := 21, n := 25, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 25 44)) },
  { key := { q := 21, n := 25, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 25 45)) },
  { key := { q := 21, n := 25, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 25 46)) },
  { key := { q := 21, n := 25, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 25 47)) },
  { key := { q := 21, n := 25, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 25 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 25 48)) },
  { key := { q := 21, n := 26, r := 0 }
    lowerValue := 23861715484377209601555171628930521
    upperValue := 23861715484377209601555171628930521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 26 0)) },
  { key := { q := 21, n := 26, r := 1 }
    lowerValue := 45799837781914029945403400439406
    upperValue := 486973785395453257174595339365929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 1))
    upperTrace := (.lengthenFreeN 17 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 21, n := 26, r := 2 }
    lowerValue := 182818975370838482708186204741
    upperValue := 23189227875973964627361682826949
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 2))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 26, r := 3 }
    lowerValue := 1140044028735701782175186735
    upperValue := 1104248946474950696541032515569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 3))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 26, r := 4 }
    lowerValue := 9889101769282651301651455
    upperValue := 52583283165473842692430119789
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 4))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 26, r := 5 }
    lowerValue := 112074751519282277450782
    upperValue := 2503965865022563937734767609
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 5))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 26, r := 6 }
    lowerValue := 1596354551968765582675
    upperValue := 119236469762979235130227029
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 6))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 26, r := 7 }
    lowerValue := 27845530120247071881
    upperValue := 5677927131570439768106049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 7))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 26, r := 8 }
    lowerValue := 584113368916902876
    upperValue := 270377482455735227052669
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 8))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 26, r := 9 }
    lowerValue := 14544321208785819
    upperValue := 12875118212177867954889
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 9))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 26, r := 10 }
    lowerValue := 425852731745943
    upperValue := 613100867246565140709
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 10))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 26, r := 11 }
    lowerValue := 14564476645094
    upperValue := 29195279392693578129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 11))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 26, r := 12 }
    lowerValue := 579220015736
    upperValue := 1390251399652075149
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 12))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 26, r := 13 }
    lowerValue := 26714460816
    upperValue := 66202447602479769
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 13))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 12 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 26, r := 14 }
    lowerValue := 1427444367
    upperValue := 3152497504879989
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 14))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 13 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 26, r := 15 }
    lowerValue := 88413662
    upperValue := 150118928803809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 15))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 14 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 26, r := 16 }
    lowerValue := 6361452
    upperValue := 7148520419229
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 16))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 15 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 26, r := 17 }
    lowerValue := 533759
    upperValue := 340405734249
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 17))
    upperTrace := (.lengthenDummyN 16 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))))) },
  { key := { q := 21, n := 26, r := 18 }
    lowerValue := 52531
    upperValue := 16209796869
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 18))
    upperTrace := (.lengthenDummyN 17 (by decide : 0 < 21) (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 21, n := 26, r := 19 }
    lowerValue := 6114
    upperValue := 771895089
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 19))
    upperTrace := (.lengthenDummyN 18 (by decide : 0 < 21) (@UpperTrace.alphabetExpand 7 21 3 8 1 117649 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1)))) },
  { key := { q := 21, n := 26, r := 20 }
    lowerValue := 851
    upperValue := 4084101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 20))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 22 20))) },
  { key := { q := 21, n := 26, r := 21 }
    lowerValue := 144
    upperValue := 194481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 21))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 23 21))) },
  { key := { q := 21, n := 26, r := 22 }
    lowerValue := 31
    upperValue := 9261
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 22))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 24 22))) },
  { key := { q := 21, n := 26, r := 23 }
    lowerValue := 21
    upperValue := 441
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 25 24))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 25 23))) },
  { key := { q := 21, n := 26, r := 24 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 26 25)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 26 24)) },
  { key := { q := 21, n := 26, r := 25 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 26 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 26 25)) },
  { key := { q := 21, n := 26, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 26 26)) },
  { key := { q := 21, n := 26, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 26 27)) },
  { key := { q := 21, n := 26, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 26 28)) },
  { key := { q := 21, n := 26, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 26 29)) },
  { key := { q := 21, n := 26, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 26 30)) },
  { key := { q := 21, n := 26, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 26 31)) },
  { key := { q := 21, n := 26, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 26 32)) },
  { key := { q := 21, n := 26, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 26 33)) },
  { key := { q := 21, n := 26, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 26 34)) },
  { key := { q := 21, n := 26, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 26 35)) },
  { key := { q := 21, n := 26, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 26 36)) },
  { key := { q := 21, n := 26, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 26 37)) },
  { key := { q := 21, n := 26, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 26 38)) },
  { key := { q := 21, n := 26, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 26 39)) },
  { key := { q := 21, n := 26, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 26 40)) },
  { key := { q := 21, n := 26, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 26 41)) },
  { key := { q := 21, n := 26, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 26 42)) },
  { key := { q := 21, n := 26, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 26 43)) },
  { key := { q := 21, n := 26, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 26 44)) },
  { key := { q := 21, n := 26, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 26 45)) },
  { key := { q := 21, n := 26, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 26 46)) },
  { key := { q := 21, n := 26, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 26 47)) },
  { key := { q := 21, n := 26, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 26 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 26 48)) },
  { key := { q := 21, n := 27, r := 0 }
    lowerValue := 501096025171921401632658604207540941
    upperValue := 501096025171921401632658604207540941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 27 0)) },
  { key := { q := 21, n := 27, r := 1 }
    lowerValue := 926240342277119041834858787814309
    upperValue := 10226449493304518400666502126684509
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 1))
    upperTrace := (.lengthenFreeN 18 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 21, n := 27, r := 2 }
    lowerValue := 3555360222872843258048819039226
    upperValue := 486973785395453257174595339365929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 2))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 27, r := 3 }
    lowerValue := 21286151015455219127929448709
    upperValue := 23189227875973964627361682826949
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 3))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 27, r := 4 }
    lowerValue := 176969373077456555706802548
    upperValue := 1104248946474950696541032515569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 4))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 27, r := 5 }
    lowerValue := 1918676506913710672570018
    upperValue := 52583283165473842692430119789
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 27 5))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) }]

end CoveringCodes.Database
