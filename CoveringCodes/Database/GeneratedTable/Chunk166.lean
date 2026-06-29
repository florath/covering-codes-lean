import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 166. Do not edit manually.

def precomputedTable_chunk_166 : Array AnyBoundEntry := #[
  { key := { q := 17, n := 13, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 46)) },
  { key := { q := 17, n := 13, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 47)) },
  { key := { q := 17, n := 13, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 13 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 13 48)) },
  { key := { q := 17, n := 14, r := 0 }
    lowerValue := 168377826559400929
    upperValue := 168377826559400929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 14 0)) },
  { key := { q := 17, n := 14, r := 1 }
    lowerValue := 748345895819560
    upperValue := 3681592509072384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 1))
    upperTrace := (.lengthenFreeN 4 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))) },
  { key := { q := 17, n := 14, r := 2 }
    lowerValue := 7158616834293
    upperValue := 216564265239552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 2))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 14, r := 3 }
    lowerValue := 111179741070
    upperValue := 12739074425856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 3))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 14, r := 4 }
    lowerValue := 2508758330
    upperValue := 749357319168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 4))
    upperTrace := (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))) },
  { key := { q := 17, n := 14, r := 5 }
    lowerValue := 77723660
    upperValue := 44079842304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 5))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 17) (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))) },
  { key := { q := 17, n := 14, r := 6 }
    lowerValue := 3204247
    upperValue := 3499947505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 6))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 14, r := 7 }
    lowerValue := 172905
    upperValue := 205879265
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 7))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 14, r := 8 }
    lowerValue := 12139
    upperValue := 12110545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 8))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 14, r := 9 }
    lowerValue := 1112
    upperValue := 712385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 9))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 14, r := 10 }
    lowerValue := 135
    upperValue := 41905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 10))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 14, r := 11 }
    lowerValue := 22
    upperValue := 2465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 11))
    upperTrace := (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1)))) },
  { key := { q := 17, n := 14, r := 12 }
    lowerValue := 17
    upperValue := 145
    lowerTrace := (.radiusBack (by decide : 12 ≤ 13) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 14 13)))
    upperTrace := (.lengthenDummyN 11 (by decide : 0 < 17) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 14, r := 13 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 14 13))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 14 13)) },
  { key := { q := 17, n := 14, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 14)) },
  { key := { q := 17, n := 14, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 15)) },
  { key := { q := 17, n := 14, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 16)) },
  { key := { q := 17, n := 14, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 17)) },
  { key := { q := 17, n := 14, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 18)) },
  { key := { q := 17, n := 14, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 19)) },
  { key := { q := 17, n := 14, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 20)) },
  { key := { q := 17, n := 14, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 21)) },
  { key := { q := 17, n := 14, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 22)) },
  { key := { q := 17, n := 14, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 23)) },
  { key := { q := 17, n := 14, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 24)) },
  { key := { q := 17, n := 14, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 25)) },
  { key := { q := 17, n := 14, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 26)) },
  { key := { q := 17, n := 14, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 27)) },
  { key := { q := 17, n := 14, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 28)) },
  { key := { q := 17, n := 14, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 29)) },
  { key := { q := 17, n := 14, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 30)) },
  { key := { q := 17, n := 14, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 31)) },
  { key := { q := 17, n := 14, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 32)) },
  { key := { q := 17, n := 14, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 33)) },
  { key := { q := 17, n := 14, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 34)) },
  { key := { q := 17, n := 14, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 35)) },
  { key := { q := 17, n := 14, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 36)) },
  { key := { q := 17, n := 14, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 37)) },
  { key := { q := 17, n := 14, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 38)) },
  { key := { q := 17, n := 14, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 39)) },
  { key := { q := 17, n := 14, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 40)) },
  { key := { q := 17, n := 14, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 41)) },
  { key := { q := 17, n := 14, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 42)) },
  { key := { q := 17, n := 14, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 43)) },
  { key := { q := 17, n := 14, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 44)) },
  { key := { q := 17, n := 14, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 45)) },
  { key := { q := 17, n := 14, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 46)) },
  { key := { q := 17, n := 14, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 47)) },
  { key := { q := 17, n := 14, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 14 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 14 48)) },
  { key := { q := 17, n := 15, r := 0 }
    lowerValue := 2862423051509815793
    upperValue := 2862423051509815793
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 15 0)) },
  { key := { q := 17, n := 15, r := 1 }
    lowerValue := 11877274072654838
    upperValue := 62587072654230528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 1))
    upperTrace := (.lengthenFreeN 5 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))) },
  { key := { q := 17, n := 15, r := 2 }
    lowerValue := 105542681004013
    upperValue := 3681592509072384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 2))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 15, r := 3 }
    lowerValue := 1513867959405
    upperValue := 216564265239552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 3))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 15, r := 4 }
    lowerValue := 31335558175
    upperValue := 12739074425856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 4))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 15, r := 5 }
    lowerValue := 883403602
    upperValue := 749357319168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 5))
    upperTrace := (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))) },
  { key := { q := 17, n := 15, r := 6 }
    lowerValue := 32822118
    upperValue := 44079842304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 6))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 17) (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))) },
  { key := { q := 17, n := 15, r := 7 }
    lowerValue := 1577447
    upperValue := 3499947505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 7))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 15, r := 8 }
    lowerValue := 97188
    upperValue := 205879265
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 8))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 15, r := 9 }
    lowerValue := 7666
    upperValue := 12110545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 9))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 15, r := 10 }
    lowerValue := 779
    upperValue := 712385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 10))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 15, r := 11 }
    lowerValue := 104
    upperValue := 41905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 11))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 15, r := 12 }
    lowerValue := 19
    upperValue := 2465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 12))
    upperTrace := (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1)))) },
  { key := { q := 17, n := 15, r := 13 }
    lowerValue := 17
    upperValue := 145
    lowerTrace := (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 15 14)))
    upperTrace := (.lengthenDummyN 12 (by decide : 0 < 17) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 15, r := 14 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 15 14))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 15 14)) },
  { key := { q := 17, n := 15, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 15)) },
  { key := { q := 17, n := 15, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 16)) },
  { key := { q := 17, n := 15, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 17)) },
  { key := { q := 17, n := 15, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 18)) },
  { key := { q := 17, n := 15, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 19)) },
  { key := { q := 17, n := 15, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 20)) },
  { key := { q := 17, n := 15, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 21)) },
  { key := { q := 17, n := 15, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 22)) },
  { key := { q := 17, n := 15, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 23)) },
  { key := { q := 17, n := 15, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 24)) },
  { key := { q := 17, n := 15, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 25)) },
  { key := { q := 17, n := 15, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 26)) },
  { key := { q := 17, n := 15, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 27)) },
  { key := { q := 17, n := 15, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 28)) },
  { key := { q := 17, n := 15, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 29)) },
  { key := { q := 17, n := 15, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 30)) },
  { key := { q := 17, n := 15, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 31)) },
  { key := { q := 17, n := 15, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 32)) },
  { key := { q := 17, n := 15, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 33)) },
  { key := { q := 17, n := 15, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 34)) },
  { key := { q := 17, n := 15, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 35)) },
  { key := { q := 17, n := 15, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 36)) },
  { key := { q := 17, n := 15, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 37)) },
  { key := { q := 17, n := 15, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 38)) },
  { key := { q := 17, n := 15, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 39)) },
  { key := { q := 17, n := 15, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 40)) },
  { key := { q := 17, n := 15, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 41)) },
  { key := { q := 17, n := 15, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 42)) },
  { key := { q := 17, n := 15, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 43)) },
  { key := { q := 17, n := 15, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 44)) },
  { key := { q := 17, n := 15, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 45)) },
  { key := { q := 17, n := 15, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 46)) },
  { key := { q := 17, n := 15, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 47)) },
  { key := { q := 17, n := 15, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 15 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 15 48)) },
  { key := { q := 17, n := 16, r := 0 }
    lowerValue := 48661191875666868481
    upperValue := 48661191875666868481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 16 0)) },
  { key := { q := 17, n := 16, r := 1 }
    lowerValue := 189343159049287426
    upperValue := 1063980235121918976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 1))
    upperTrace := (.lengthenFreeN 6 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))) },
  { key := { q := 17, n := 16, r := 2 }
    lowerValue := 1570881359578619
    upperValue := 62587072654230528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 2))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 16, r := 3 }
    lowerValue := 20931912674710
    upperValue := 3681592509072384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 3))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 16, r := 4 }
    lowerValue := 400173429533
    upperValue := 216564265239552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 4))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 16, r := 5 }
    lowerValue := 10349524978
    upperValue := 12739074425856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 5))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 16, r := 6 }
    lowerValue := 349945258
    upperValue := 749357319168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 6))
    upperTrace := (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))) },
  { key := { q := 17, n := 16, r := 7 }
    lowerValue := 15159461
    upperValue := 44079842304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 7))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 17) (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))) },
  { key := { q := 17, n := 16, r := 8 }
    lowerValue := 832012
    upperValue := 3499947505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 8))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 16, r := 9 }
    lowerValue := 57612
    upperValue := 205879265
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 9))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 16, r := 10 }
    lowerValue := 5043
    upperValue := 12110545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 10))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 16, r := 11 }
    lowerValue := 563
    upperValue := 712385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 11))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 16, r := 12 }
    lowerValue := 82
    upperValue := 41905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 12))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 16, r := 13 }
    lowerValue := 17
    upperValue := 2465
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 13 ≤ 14) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 15 14))))
    upperTrace := (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1)))) },
  { key := { q := 17, n := 16, r := 14 }
    lowerValue := 17
    upperValue := 145
    lowerTrace := (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 16 15)))
    upperTrace := (.lengthenDummyN 13 (by decide : 0 < 17) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 16, r := 15 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 16 15))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 16 15)) },
  { key := { q := 17, n := 16, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 16)) },
  { key := { q := 17, n := 16, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 17)) },
  { key := { q := 17, n := 16, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 18)) },
  { key := { q := 17, n := 16, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 19)) },
  { key := { q := 17, n := 16, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 20)) },
  { key := { q := 17, n := 16, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 21)) },
  { key := { q := 17, n := 16, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 22)) },
  { key := { q := 17, n := 16, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 23)) },
  { key := { q := 17, n := 16, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 24)) },
  { key := { q := 17, n := 16, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 25)) },
  { key := { q := 17, n := 16, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 26)) },
  { key := { q := 17, n := 16, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 27)) },
  { key := { q := 17, n := 16, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 28)) },
  { key := { q := 17, n := 16, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 29)) },
  { key := { q := 17, n := 16, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 30)) },
  { key := { q := 17, n := 16, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 31)) },
  { key := { q := 17, n := 16, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 32)) },
  { key := { q := 17, n := 16, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 33)) },
  { key := { q := 17, n := 16, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 34)) },
  { key := { q := 17, n := 16, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 35)) },
  { key := { q := 17, n := 16, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 36)) },
  { key := { q := 17, n := 16, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 37)) },
  { key := { q := 17, n := 16, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 38)) },
  { key := { q := 17, n := 16, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 39)) },
  { key := { q := 17, n := 16, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 40)) },
  { key := { q := 17, n := 16, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 41)) },
  { key := { q := 17, n := 16, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 42)) },
  { key := { q := 17, n := 16, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 43)) },
  { key := { q := 17, n := 16, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 44)) },
  { key := { q := 17, n := 16, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 45)) },
  { key := { q := 17, n := 16, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 46)) },
  { key := { q := 17, n := 16, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 47)) },
  { key := { q := 17, n := 16, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 16 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 16 48)) },
  { key := { q := 17, n := 17, r := 0 }
    lowerValue := 827240261886336764177
    upperValue := 827240261886336764177
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 17 0)) },
  { key := { q := 17, n := 17, r := 1 }
    lowerValue := 3030184109473761041
    upperValue := 18087663997072622592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 1))
    upperTrace := (.lengthenFreeN 7 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))) },
  { key := { q := 17, n := 17, r := 2 }
    lowerValue := 23575486958486614
    upperValue := 1063980235121918976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 2))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 17, r := 3 }
    lowerValue := 293309230773115
    upperValue := 62587072654230528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 3))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 17, r := 4 }
    lowerValue := 5209451161385
    upperValue := 3681592509072384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 4))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 17, r := 5 }
    lowerValue := 124445980547
    upperValue := 216564265239552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 5))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 17, r := 6 }
    lowerValue := 3860517696
    upperValue := 12739074425856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 6))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 17, r := 7 }
    lowerValue := 152211303
    upperValue := 749357319168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 7))
    upperTrace := (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))) },
  { key := { q := 17, n := 17, r := 8 }
    lowerValue := 7530946
    upperValue := 44079842304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 8))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 17) (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))) },
  { key := { q := 17, n := 17, r := 9 }
    lowerValue := 464634
    upperValue := 3499947505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 9))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 17, r := 10 }
    lowerValue := 35713
    upperValue := 205879265
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 10))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 17, r := 11 }
    lowerValue := 3435
    upperValue := 12110545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 11))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 17, r := 12 }
    lowerValue := 418
    upperValue := 712385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 12))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 17, r := 13 }
    lowerValue := 66
    upperValue := 41905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 13))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 17, r := 14 }
    lowerValue := 17
    upperValue := 2465
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 14 ≤ 15) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 16 15))))
    upperTrace := (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1)))) },
  { key := { q := 17, n := 17, r := 15 }
    lowerValue := 17
    upperValue := 145
    lowerTrace := (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 17 16)))
    upperTrace := (.lengthenDummyN 14 (by decide : 0 < 17) (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 17, r := 16 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 17 16))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 17 16)) },
  { key := { q := 17, n := 17, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 17)) },
  { key := { q := 17, n := 17, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 18)) },
  { key := { q := 17, n := 17, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 19)) },
  { key := { q := 17, n := 17, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 20)) },
  { key := { q := 17, n := 17, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 21)) },
  { key := { q := 17, n := 17, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 22)) },
  { key := { q := 17, n := 17, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 23)) },
  { key := { q := 17, n := 17, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 24)) },
  { key := { q := 17, n := 17, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 25)) },
  { key := { q := 17, n := 17, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 26)) },
  { key := { q := 17, n := 17, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 27)) },
  { key := { q := 17, n := 17, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 28)) },
  { key := { q := 17, n := 17, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 29)) },
  { key := { q := 17, n := 17, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 30)) },
  { key := { q := 17, n := 17, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 31)) },
  { key := { q := 17, n := 17, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 32)) },
  { key := { q := 17, n := 17, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 33)) },
  { key := { q := 17, n := 17, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 34)) },
  { key := { q := 17, n := 17, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 35)) },
  { key := { q := 17, n := 17, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 36)) },
  { key := { q := 17, n := 17, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 37)) },
  { key := { q := 17, n := 17, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 38)) },
  { key := { q := 17, n := 17, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 39)) },
  { key := { q := 17, n := 17, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 40)) },
  { key := { q := 17, n := 17, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 41)) },
  { key := { q := 17, n := 17, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 42)) },
  { key := { q := 17, n := 17, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 43)) },
  { key := { q := 17, n := 17, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 44)) },
  { key := { q := 17, n := 17, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 45)) },
  { key := { q := 17, n := 17, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 46)) },
  { key := { q := 17, n := 17, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 47)) },
  { key := { q := 17, n := 17, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 17 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 17 48)) },
  { key := { q := 17, n := 18, r := 0 }
    lowerValue := 14063084452067724991009
    upperValue := 14063084452067724991009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 18 0)) },
  { key := { q := 17, n := 18, r := 1 }
    lowerValue := 48661191875666868481
    upperValue := 307490287950234584064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 1))
    upperTrace := (.lengthenFreeN 8 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))) },
  { key := { q := 17, n := 18, r := 2 }
    lowerValue := 356415451049692704
    upperValue := 18087663997072622592
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 2))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 18, r := 3 }
    lowerValue := 4158469915830959
    upperValue := 1063980235121918976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 3))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 18, r := 4 }
    lowerValue := 68963072612726
    upperValue := 62587072654230528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 4))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 18, r := 5 }
    lowerValue := 1530572384373
    upperValue := 3681592509072384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 5))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 18, r := 6 }
    lowerValue := 43859370974
    upperValue := 216564265239552
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 6))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 18, r := 7 }
    lowerValue := 1586659186
    upperValue := 12739074425856
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 7))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))))) },
  { key := { q := 17, n := 18, r := 8 }
    lowerValue := 71457852
    upperValue := 749357319168
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 8))
    upperTrace := (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1))))) },
  { key := { q := 17, n := 18, r := 9 }
    lowerValue := 3974932
    upperValue := 44079842304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 9))
    upperTrace := (.lengthenDummyN 8 (by decide : 0 < 17) (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))) },
  { key := { q := 17, n := 18, r := 10 }
    lowerValue := 272275
    upperValue := 3499947505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 10))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 18, r := 11 }
    lowerValue := 22998
    upperValue := 205879265
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 11))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 18, r := 12 }
    lowerValue := 2410
    upperValue := 12110545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 12))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 18, r := 13 }
    lowerValue := 317
    upperValue := 712385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 13))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 18, r := 14 }
    lowerValue := 54
    upperValue := 41905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 14))
    upperTrace := (.lengthenFreeN 1 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 18, r := 15 }
    lowerValue := 17
    upperValue := 2465
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 15 ≤ 16) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 17 16))))
    upperTrace := (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1)))) },
  { key := { q := 17, n := 18, r := 16 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 16 ≤ 17) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 18 17)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16)) },
  { key := { q := 17, n := 18, r := 17 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 18 17))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 17)) },
  { key := { q := 17, n := 18, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 18)) },
  { key := { q := 17, n := 18, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 19)) },
  { key := { q := 17, n := 18, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 20)) },
  { key := { q := 17, n := 18, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 21)) },
  { key := { q := 17, n := 18, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 22)) },
  { key := { q := 17, n := 18, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 23)) },
  { key := { q := 17, n := 18, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 24)) },
  { key := { q := 17, n := 18, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 25)) },
  { key := { q := 17, n := 18, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 26)) },
  { key := { q := 17, n := 18, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 27)) },
  { key := { q := 17, n := 18, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 28)) },
  { key := { q := 17, n := 18, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 29)) },
  { key := { q := 17, n := 18, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 30)) },
  { key := { q := 17, n := 18, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 31)) },
  { key := { q := 17, n := 18, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 32)) },
  { key := { q := 17, n := 18, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 33)) },
  { key := { q := 17, n := 18, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 34)) },
  { key := { q := 17, n := 18, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 35)) },
  { key := { q := 17, n := 18, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 36)) },
  { key := { q := 17, n := 18, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 37)) },
  { key := { q := 17, n := 18, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 38)) },
  { key := { q := 17, n := 18, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 39)) },
  { key := { q := 17, n := 18, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 40)) },
  { key := { q := 17, n := 18, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 41)) },
  { key := { q := 17, n := 18, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 42)) },
  { key := { q := 17, n := 18, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 43)) },
  { key := { q := 17, n := 18, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 44)) },
  { key := { q := 17, n := 18, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 45)) },
  { key := { q := 17, n := 18, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 46)) },
  { key := { q := 17, n := 18, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 47)) },
  { key := { q := 17, n := 18, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 18 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 18 48)) },
  { key := { q := 17, n := 19, r := 0 }
    lowerValue := 239072435685151324847153
    upperValue := 239072435685151324847153
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 19 0)) },
  { key := { q := 17, n := 19, r := 1 }
    lowerValue := 783844051426725655237
    upperValue := 5227334895153987929088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 19 1))
    upperTrace := (.lengthenFreeN 9 (@UpperTrace.alphabetExpand 9 17 2 10 1 43046721 (by decide : 0 < 9) (by decide : 0 < 2) (by decide : 17 ≤ 2 * 9) (by decide : 0 < 17) (.primitive "lean_extension_field_hamming_upper" (primitiveUpper_valid 9 10 1)))) }]

end CoveringCodes.Database
