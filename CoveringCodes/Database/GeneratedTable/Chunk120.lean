import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 120. Do not edit manually.

def precomputedTable_chunk_120 : Array AnyBoundEntry := #[
  { key := { q := 12, n := 24, r := 12 }
    lowerValue := 8591378
    upperValue := 743008370688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 12))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 24, r := 13 }
    lowerValue := 833067
    upperValue := 61917364224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 13))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 24, r := 14 }
    lowerValue := 94616
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 14))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 24, r := 15 }
    lowerValue := 12615
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 15))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 24, r := 16 }
    lowerValue := 1983
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 16))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 24, r := 17 }
    lowerValue := 370
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 17))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 24, r := 18 }
    lowerValue := 83
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 18))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 24, r := 19 }
    lowerValue := 23
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 19))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 24, r := 20 }
    lowerValue := 12
    upperValue := 1728
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 22 21)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20))) },
  { key := { q := 12, n := 24, r := 21 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 23 22))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 21))) },
  { key := { q := 12, n := 24, r := 22 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 24 23)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 24 22)) },
  { key := { q := 12, n := 24, r := 23 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 24 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 24 23)) },
  { key := { q := 12, n := 24, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 24 24)) },
  { key := { q := 12, n := 24, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 24 25)) },
  { key := { q := 12, n := 24, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 24 26)) },
  { key := { q := 12, n := 24, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 24 27)) },
  { key := { q := 12, n := 24, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 24 28)) },
  { key := { q := 12, n := 24, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 24 29)) },
  { key := { q := 12, n := 24, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 24 30)) },
  { key := { q := 12, n := 24, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 24 31)) },
  { key := { q := 12, n := 24, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 24 32)) },
  { key := { q := 12, n := 24, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 24 33)) },
  { key := { q := 12, n := 24, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 24 34)) },
  { key := { q := 12, n := 24, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 24 35)) },
  { key := { q := 12, n := 24, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 24 36)) },
  { key := { q := 12, n := 24, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 24 37)) },
  { key := { q := 12, n := 24, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 24 38)) },
  { key := { q := 12, n := 24, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 24 39)) },
  { key := { q := 12, n := 24, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 24 40)) },
  { key := { q := 12, n := 24, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 24 41)) },
  { key := { q := 12, n := 24, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 24 42)) },
  { key := { q := 12, n := 24, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 24 43)) },
  { key := { q := 12, n := 24, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 24 44)) },
  { key := { q := 12, n := 24, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 24 45)) },
  { key := { q := 12, n := 24, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 24 46)) },
  { key := { q := 12, n := 24, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 24 47)) },
  { key := { q := 12, n := 24, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 24 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 24 48)) },
  { key := { q := 12, n := 25, r := 0 }
    lowerValue := 953962166440690129601298432
    upperValue := 953962166440690129601298432
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 25 0)) },
  { key := { q := 12, n := 25, r := 1 }
    lowerValue := 3456384661016993223193111
    upperValue := 29811317701271566550040576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 1))
    upperTrace := (.lengthenFreeN 8 (@UpperTrace.alphabetExpand 4 12 3 17 1 536870912 (by decide : 0 < 4) (by decide : 0 < 3) (by decide : 12 ≤ 3 * 4) (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 16 1 134217728 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))))) },
  { key := { q := 12, n := 25, r := 2 }
    lowerValue := 26081642783264712642206
    upperValue := 2484276475105963879170048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 2))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 12 3 17 1 536870912 (by decide : 0 < 4) (by decide : 0 < 3) (by decide : 12 ≤ 3 * 4) (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 16 1 134217728 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))))))) },
  { key := { q := 12, n := 25, r := 3 }
    lowerValue := 307940720171075320511
    upperValue := 207023039592163656597504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 3))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 12 3 17 1 536870912 (by decide : 0 < 4) (by decide : 0 < 3) (by decide : 12 ≤ 3 * 4) (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 16 1 134217728 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))))))) },
  { key := { q := 12, n := 25, r := 4 }
    lowerValue := 5066006934038441821
    upperValue := 17251919966013638049792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 4))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 12 3 17 1 536870912 (by decide : 0 < 4) (by decide : 0 < 3) (by decide : 12 ≤ 3 * 4) (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 16 1 134217728 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))))))) },
  { key := { q := 12, n := 25, r := 5 }
    lowerValue := 109087254446520132
    upperValue := 585713332179475365888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 5))
    upperTrace := (.lengthenFreeN 17 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))) },
  { key := { q := 12, n := 25, r := 6 }
    lowerValue := 2958128629251589
    upperValue := 48809444348289613824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 6))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 25, r := 7 }
    lowerValue := 98448397556533
    upperValue := 4067453695690801152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 7))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 25, r := 8 }
    lowerValue := 3949578580995
    upperValue := 338954474640900096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 8))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 25, r := 9 }
    lowerValue := 188576159455
    upperValue := 28246206220075008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 9))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 25, r := 10 }
    lowerValue := 10618222938
    upperValue := 2353850518339584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 10))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 25, r := 11 }
    lowerValue := 700623545
    upperValue := 106993205379072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 11))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 25, r := 12 }
    lowerValue := 53949937
    upperValue := 8916100448256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 12))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 25, r := 13 }
    lowerValue := 4837271
    upperValue := 743008370688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 13))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 25, r := 14 }
    lowerValue := 504767
    upperValue := 61917364224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 14))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 25, r := 15 }
    lowerValue := 61371
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 15))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 25, r := 16 }
    lowerValue := 8719
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 16))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 25, r := 17 }
    lowerValue := 1454
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 17))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 25, r := 18 }
    lowerValue := 287
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 18))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 25, r := 19 }
    lowerValue := 68
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 19))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 25, r := 20 }
    lowerValue := 20
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 20))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20))) },
  { key := { q := 12, n := 25, r := 21 }
    lowerValue := 12
    upperValue := 1728
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 23 22)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 21))) },
  { key := { q := 12, n := 25, r := 22 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 24 23))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 25 22)) },
  { key := { q := 12, n := 25, r := 23 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 25 24)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 25 23)) },
  { key := { q := 12, n := 25, r := 24 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 25 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 25 24)) },
  { key := { q := 12, n := 25, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 25 25)) },
  { key := { q := 12, n := 25, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 25 26)) },
  { key := { q := 12, n := 25, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 25 27)) },
  { key := { q := 12, n := 25, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 25 28)) },
  { key := { q := 12, n := 25, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 25 29)) },
  { key := { q := 12, n := 25, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 25 30)) },
  { key := { q := 12, n := 25, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 25 31)) },
  { key := { q := 12, n := 25, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 25 32)) },
  { key := { q := 12, n := 25, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 25 33)) },
  { key := { q := 12, n := 25, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 25 34)) },
  { key := { q := 12, n := 25, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 25 35)) },
  { key := { q := 12, n := 25, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 25 36)) },
  { key := { q := 12, n := 25, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 25 37)) },
  { key := { q := 12, n := 25, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 25 38)) },
  { key := { q := 12, n := 25, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 25 39)) },
  { key := { q := 12, n := 25, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 25 40)) },
  { key := { q := 12, n := 25, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 25 41)) },
  { key := { q := 12, n := 25, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 25 42)) },
  { key := { q := 12, n := 25, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 25 43)) },
  { key := { q := 12, n := 25, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 25 44)) },
  { key := { q := 12, n := 25, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 25 45)) },
  { key := { q := 12, n := 25, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 25 46)) },
  { key := { q := 12, n := 25, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 25 47)) },
  { key := { q := 12, n := 25, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 25 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 25 48)) },
  { key := { q := 12, n := 26, r := 0 }
    lowerValue := 11447545997288281555215581184
    upperValue := 11447545997288281555215581184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 26 0)) },
  { key := { q := 12, n := 26, r := 1 }
    lowerValue := 39886919851178681377057775
    upperValue := 357735812415258798600486912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 1))
    upperTrace := (.lengthenFreeN 9 (@UpperTrace.alphabetExpand 4 12 3 17 1 536870912 (by decide : 0 < 4) (by decide : 0 < 3) (by decide : 12 ≤ 3 * 4) (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 16 1 134217728 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))))) },
  { key := { q := 12, n := 26, r := 2 }
    lowerValue := 288991871081699524265768
    upperValue := 29811317701271566550040576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 2))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 12 3 17 1 536870912 (by decide : 0 < 4) (by decide : 0 < 3) (by decide : 12 ≤ 3 * 4) (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 16 1 134217728 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))))))) },
  { key := { q := 12, n := 26, r := 3 }
    lowerValue := 3270529327163120849599
    upperValue := 2484276475105963879170048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 3))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 12 3 17 1 536870912 (by decide : 0 < 4) (by decide : 0 < 3) (by decide : 12 ≤ 3 * 4) (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 16 1 134217728 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))))))) },
  { key := { q := 12, n := 26, r := 4 }
    lowerValue := 51476676086152069172
    upperValue := 207023039592163656597504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 4))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 12 3 17 1 536870912 (by decide : 0 < 4) (by decide : 0 < 3) (by decide : 12 ≤ 3 * 4) (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 16 1 134217728 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))))))) },
  { key := { q := 12, n := 26, r := 5 }
    lowerValue := 1058358866545260210
    upperValue := 7028559986153704390656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 5))
    upperTrace := (.lengthenFreeN 18 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))) },
  { key := { q := 12, n := 26, r := 6 }
    lowerValue := 27341810570343894
    upperValue := 585713332179475365888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 6))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 26, r := 7 }
    lowerValue := 864791765761150
    upperValue := 48809444348289613824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 7))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 26, r := 8 }
    lowerValue := 32883448319578
    upperValue := 4067453695690801152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 8))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 26, r := 9 }
    lowerValue := 1483678694424
    upperValue := 338954474640900096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 9))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 26, r := 10 }
    lowerValue := 78683577903
    upperValue := 28246206220075008
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 10))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 26, r := 11 }
    lowerValue := 4871602991
    upperValue := 1283918464548864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 11))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 26, r := 12 }
    lowerValue := 350508205
    upperValue := 106993205379072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 12))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 26, r := 13 }
    lowerValue := 29224039
    upperValue := 8916100448256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 13))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 26, r := 14 }
    lowerValue := 2820130
    upperValue := 743008370688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 14))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 26, r := 15 }
    lowerValue := 315071
    upperValue := 61917364224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 15))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 26, r := 16 }
    lowerValue := 40825
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 16))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 26, r := 17 }
    lowerValue := 6156
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 17))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 26, r := 18 }
    lowerValue := 1086
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 18))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 26, r := 19 }
    lowerValue := 226
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 19))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 26, r := 20 }
    lowerValue := 56
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 20))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20))) },
  { key := { q := 12, n := 26, r := 21 }
    lowerValue := 17
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 21))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 21))) },
  { key := { q := 12, n := 26, r := 22 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 24 23)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 25 22))) },
  { key := { q := 12, n := 26, r := 23 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 25 24))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 26 23)) },
  { key := { q := 12, n := 26, r := 24 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 26 25)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 26 24)) },
  { key := { q := 12, n := 26, r := 25 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 26 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 26 25)) },
  { key := { q := 12, n := 26, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 26 26)) },
  { key := { q := 12, n := 26, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 26 27)) },
  { key := { q := 12, n := 26, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 26 28)) },
  { key := { q := 12, n := 26, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 26 29)) },
  { key := { q := 12, n := 26, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 26 30)) },
  { key := { q := 12, n := 26, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 26 31)) },
  { key := { q := 12, n := 26, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 26 32)) },
  { key := { q := 12, n := 26, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 26 33)) },
  { key := { q := 12, n := 26, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 26 34)) },
  { key := { q := 12, n := 26, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 26 35)) },
  { key := { q := 12, n := 26, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 26 36)) },
  { key := { q := 12, n := 26, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 26 37)) },
  { key := { q := 12, n := 26, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 26 38)) },
  { key := { q := 12, n := 26, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 26 39)) },
  { key := { q := 12, n := 26, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 26 40)) },
  { key := { q := 12, n := 26, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 26 41)) },
  { key := { q := 12, n := 26, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 26 42)) },
  { key := { q := 12, n := 26, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 26 43)) },
  { key := { q := 12, n := 26, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 26 44)) },
  { key := { q := 12, n := 26, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 26 45)) },
  { key := { q := 12, n := 26, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 26 46)) },
  { key := { q := 12, n := 26, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 26 47)) },
  { key := { q := 12, n := 26, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 26 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 26 48)) },
  { key := { q := 12, n := 27, r := 0 }
    lowerValue := 137370551967459378662586974208
    upperValue := 137370551967459378662586974208
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 27 0)) },
  { key := { q := 12, n := 27, r := 1 }
    lowerValue := 460975006602212680075795216
    upperValue := 4292829748983105583205842944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 1))
    upperTrace := (.lengthenFreeN 10 (@UpperTrace.alphabetExpand 4 12 3 17 1 536870912 (by decide : 0 < 4) (by decide : 0 < 3) (by decide : 12 ≤ 3 * 4) (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 16 1 134217728 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))))) },
  { key := { q := 12, n := 27, r := 2 }
    lowerValue := 3211918725419331260085272
    upperValue := 357735812415258798600486912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 2))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 12 3 17 1 536870912 (by decide : 0 < 4) (by decide : 0 < 3) (by decide : 12 ≤ 3 * 4) (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 16 1 134217728 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))))))) },
  { key := { q := 12, n := 27, r := 3 }
    lowerValue := 34901551436570077893026
    upperValue := 29811317701271566550040576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 3))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 12 3 17 1 536870912 (by decide : 0 < 4) (by decide : 0 < 3) (by decide : 12 ≤ 3 * 4) (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 16 1 134217728 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))))))) },
  { key := { q := 12, n := 27, r := 4 }
    lowerValue := 526554964253625303761
    upperValue := 2484276475105963879170048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 4))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 12 3 17 1 536870912 (by decide : 0 < 4) (by decide : 0 < 3) (by decide : 12 ≤ 3 * 4) (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 16 1 134217728 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))))))) },
  { key := { q := 12, n := 27, r := 5 }
    lowerValue := 10357791745076894460
    upperValue := 84342719833844452687872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 5))
    upperTrace := (.lengthenFreeN 19 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))) },
  { key := { q := 12, n := 27, r := 6 }
    lowerValue := 255495969979929493
    upperValue := 7028559986153704390656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 6))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 27, r := 7 }
    lowerValue := 7698911063152919
    upperValue := 585713332179475365888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 7))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 27, r := 8 }
    lowerValue := 278226927024699
    upperValue := 48809444348289613824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 8))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 27, r := 9 }
    lowerValue := 11898680673006
    upperValue := 4067453695690801152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 9))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 27, r := 10 }
    lowerValue := 596328511689
    upperValue := 338954474640900096
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 10))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 27, r := 11 }
    lowerValue := 34775381680
    upperValue := 15407021574586368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 11))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 27, r := 12 }
    lowerValue := 2347884509
    upperValue := 1283918464548864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 12))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 27, r := 13 }
    lowerValue := 182922902
    upperValue := 106993205379072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 13))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 27, r := 14 }
    lowerValue := 16415957
    upperValue := 8916100448256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 14))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 27, r := 15 }
    lowerValue := 1696251
    upperValue := 743008370688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 15))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 27, r := 16 }
    lowerValue := 201994
    upperValue := 61917364224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 16))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 27, r := 17 }
    lowerValue := 27785
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 17))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 27, r := 18 }
    lowerValue := 4431
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 18))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 27, r := 19 }
    lowerValue := 824
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 19))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 27, r := 20 }
    lowerValue := 180
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 20))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20))) },
  { key := { q := 12, n := 27, r := 21 }
    lowerValue := 47
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 21))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 21))) },
  { key := { q := 12, n := 27, r := 22 }
    lowerValue := 15
    upperValue := 1728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 22))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 25 22))) },
  { key := { q := 12, n := 27, r := 23 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 25 24)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 26 23))) },
  { key := { q := 12, n := 27, r := 24 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 26 25))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 27 24)) },
  { key := { q := 12, n := 27, r := 25 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 27 26)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 27 25)) },
  { key := { q := 12, n := 27, r := 26 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 27 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 27 26)) },
  { key := { q := 12, n := 27, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 27 27)) },
  { key := { q := 12, n := 27, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 27 28)) },
  { key := { q := 12, n := 27, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 27 29)) },
  { key := { q := 12, n := 27, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 27 30)) },
  { key := { q := 12, n := 27, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 27 31)) },
  { key := { q := 12, n := 27, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 27 32)) },
  { key := { q := 12, n := 27, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 27 33)) },
  { key := { q := 12, n := 27, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 27 34)) },
  { key := { q := 12, n := 27, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 27 35)) },
  { key := { q := 12, n := 27, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 27 36)) },
  { key := { q := 12, n := 27, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 27 37)) },
  { key := { q := 12, n := 27, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 27 38)) },
  { key := { q := 12, n := 27, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 27 39)) },
  { key := { q := 12, n := 27, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 27 40)) },
  { key := { q := 12, n := 27, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 27 41)) },
  { key := { q := 12, n := 27, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 27 42)) },
  { key := { q := 12, n := 27, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 27 43)) },
  { key := { q := 12, n := 27, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 27 44)) },
  { key := { q := 12, n := 27, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 27 45)) },
  { key := { q := 12, n := 27, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 27 46)) },
  { key := { q := 12, n := 27, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 27 47)) },
  { key := { q := 12, n := 27, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 27 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 27 48)) },
  { key := { q := 12, n := 28, r := 0 }
    lowerValue := 1648446623609512543951043690496
    upperValue := 1648446623609512543951043690496
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 28 0)) },
  { key := { q := 12, n := 28, r := 1 }
    lowerValue := 5334778717182888491750950455
    upperValue := 51513956987797266998470115328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 1))
    upperTrace := (.lengthenFreeN 11 (@UpperTrace.alphabetExpand 4 12 3 17 1 536870912 (by decide : 0 < 4) (by decide : 0 < 3) (by decide : 12 ≤ 3 * 4) (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 16 1 134217728 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))))) },
  { key := { q := 12, n := 28, r := 2 }
    lowerValue := 35799218702836504961257926
    upperValue := 4292829748983105583205842944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 2))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 12 3 17 1 536870912 (by decide : 0 < 4) (by decide : 0 < 3) (by decide : 12 ≤ 3 * 4) (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 16 1 134217728 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))))))) },
  { key := { q := 12, n := 28, r := 3 }
    lowerValue := 374102555669445700711225
    upperValue := 357735812415258798600486912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 3))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 12 3 17 1 536870912 (by decide : 0 < 4) (by decide : 0 < 3) (by decide : 12 ≤ 3 * 4) (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 16 1 134217728 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))))))) },
  { key := { q := 12, n := 28, r := 4 }
    lowerValue := 5419297341924013198329
    upperValue := 29811317701271566550040576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 4))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 12 3 17 1 536870912 (by decide : 0 < 4) (by decide : 0 < 3) (by decide : 12 ≤ 3 * 4) (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 16 1 134217728 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))))))) },
  { key := { q := 12, n := 28, r := 5 }
    lowerValue := 102183158409516967340
    upperValue := 1012112638006133432254464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 5))
    upperTrace := (.lengthenFreeN 20 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))) },
  { key := { q := 12, n := 28, r := 6 }
    lowerValue := 2411595680475701022
    upperValue := 84342719833844452687872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 6))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 28, r := 7 }
    lowerValue := 69387418503253505
    upperValue := 7028559986153704390656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 7))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 28, r := 8 }
    lowerValue := 2389028668242409
    upperValue := 585713332179475365888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 8))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 28, r := 9 }
    lowerValue := 97103873924600
    upperValue := 48809444348289613824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 9))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 28, r := 10 }
    lowerValue := 4612900252336
    upperValue := 4067453695690801152
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 10))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 28, r := 11 }
    lowerValue := 254225529024
    upperValue := 184884258895036416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 11))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 28, r := 12 }
    lowerValue := 16167472364
    upperValue := 15407021574586368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 12))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 28, r := 13 }
    lowerValue := 1182050255
    upperValue := 1283918464548864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 13))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 28, r := 14 }
    lowerValue := 99131801
    upperValue := 106993205379072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 14))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 28, r := 15 }
    lowerValue := 9526720
    upperValue := 8916100448256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 15))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 28, r := 16 }
    lowerValue := 1049361
    upperValue := 743008370688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 16))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 28, r := 17 }
    lowerValue := 132673
    upperValue := 61917364224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 17))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 28, r := 18 }
    lowerValue := 19306
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 18))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 28, r := 19 }
    lowerValue := 3247
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 19))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 28, r := 20 }
    lowerValue := 635
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 20))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20))) },
  { key := { q := 12, n := 28, r := 21 }
    lowerValue := 146
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 21))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 21))) },
  { key := { q := 12, n := 28, r := 22 }
    lowerValue := 40
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 22))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 25 22))) },
  { key := { q := 12, n := 28, r := 23 }
    lowerValue := 13
    upperValue := 1728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 23))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 26 23))) },
  { key := { q := 12, n := 28, r := 24 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 26 25)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 27 24))) },
  { key := { q := 12, n := 28, r := 25 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 27 26))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 28 25)) },
  { key := { q := 12, n := 28, r := 26 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 28 27)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 28 26)) },
  { key := { q := 12, n := 28, r := 27 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 28 27))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 28 27)) },
  { key := { q := 12, n := 28, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 28 28)) },
  { key := { q := 12, n := 28, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 28 29)) },
  { key := { q := 12, n := 28, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 28 30)) },
  { key := { q := 12, n := 28, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 28 31)) },
  { key := { q := 12, n := 28, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 28 32)) },
  { key := { q := 12, n := 28, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 28 33)) },
  { key := { q := 12, n := 28, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 28 34)) },
  { key := { q := 12, n := 28, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 28 35)) },
  { key := { q := 12, n := 28, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 28 36)) },
  { key := { q := 12, n := 28, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 28 37)) },
  { key := { q := 12, n := 28, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 28 38)) },
  { key := { q := 12, n := 28, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 28 39)) },
  { key := { q := 12, n := 28, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 28 40)) },
  { key := { q := 12, n := 28, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 28 41)) },
  { key := { q := 12, n := 28, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 28 42)) },
  { key := { q := 12, n := 28, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 28 43)) },
  { key := { q := 12, n := 28, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 28 44)) },
  { key := { q := 12, n := 28, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 28 45)) },
  { key := { q := 12, n := 28, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 28 46)) },
  { key := { q := 12, n := 28, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 28 47)) },
  { key := { q := 12, n := 28, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 28 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 28 48)) },
  { key := { q := 12, n := 29, r := 0 }
    lowerValue := 19781359483314150527412524285952
    upperValue := 19781359483314150527412524285952
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 29 0)) },
  { key := { q := 12, n := 29, r := 1 }
    lowerValue := 61816748385356720398164138394
    upperValue := 618167483853567203981641383936
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 1))
    upperTrace := (.lengthenFreeN 12 (@UpperTrace.alphabetExpand 4 12 3 17 1 536870912 (by decide : 0 < 4) (by decide : 0 < 3) (by decide : 12 ≤ 3 * 4) (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 16 1 134217728 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))))) },
  { key := { q := 12, n := 29, r := 2 }
    lowerValue := 400059852835702595304221258
    upperValue := 51513956987797266998470115328
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 2))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 12 3 17 1 536870912 (by decide : 0 < 4) (by decide : 0 < 3) (by decide : 12 ≤ 3 * 4) (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 16 1 134217728 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))))))) },
  { key := { q := 12, n := 29, r := 3 }
    lowerValue := 4026395602475544182973166
    upperValue := 4292829748983105583205842944
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 3))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 12 3 17 1 536870912 (by decide : 0 < 4) (by decide : 0 < 3) (by decide : 12 ≤ 3 * 4) (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 16 1 134217728 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))))))) },
  { key := { q := 12, n := 29, r := 4 }
    lowerValue := 56093253778699692760855
    upperValue := 357735812415258798600486912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 4))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 4 12 3 17 1 536870912 (by decide : 0 < 4) (by decide : 0 < 3) (by decide : 12 ≤ 3 * 4) (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.blockGroup 2 2 16 1 134217728 (.lengthenFreeN 1 (.primitive "lean_binary_hamming_upper" (primitiveUpper_valid 2 31 1))))))))) },
  { key := { q := 12, n := 29, r := 5 }
    lowerValue := 1015560764847323976441
    upperValue := 12145351656073601187053568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 5))
    upperTrace := (.lengthenFreeN 21 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))) },
  { key := { q := 12, n := 29, r := 6 }
    lowerValue := 22974727904899558534
    upperValue := 1012112638006133432254464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 6))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 29, r := 7 }
    lowerValue := 632473401249869770
    upperValue := 84342719833844452687872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 7))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 29, r := 8 }
    lowerValue := 20793250737218171
    upperValue := 7028559986153704390656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 8))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 29, r := 9 }
    lowerValue := 805226885403661
    upperValue := 585713332179475365888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 9))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 29, r := 10 }
    lowerValue := 36356573277375
    upperValue := 48809444348289613824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 10))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 29, r := 11 }
    lowerValue := 1899295494160
    upperValue := 2218611106740436992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 11))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 29, r := 12 }
    lowerValue := 114153887734
    upperValue := 184884258895036416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 12))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 29, r := 13 }
    lowerValue := 7861809396
    upperValue := 15407021574586368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 13))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 29, r := 14 }
    lowerValue := 618765765
    upperValue := 1283918464548864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 14))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 29, r := 15 }
    lowerValue := 55573227
    upperValue := 106993205379072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 15))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 29, r := 16 }
    lowerValue := 5693658
    upperValue := 8916100448256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 16))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) }]

end CoveringCodes.Database
