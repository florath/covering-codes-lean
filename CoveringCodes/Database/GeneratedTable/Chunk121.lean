import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 121. Do not edit manually.

def precomputedTable_chunk_121 : Array AnyBoundEntry := #[
  { key := { q := 12, n := 29, r := 17 }
    lowerValue := 665929
    upperValue := 743008370688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 17))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 29, r := 18 }
    lowerValue := 89080
    upperValue := 61917364224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 18))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 29, r := 19 }
    lowerValue := 13670
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 19))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 29, r := 20 }
    lowerValue := 2417
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 20))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20))) },
  { key := { q := 12, n := 29, r := 21 }
    lowerValue := 496
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 21))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 21))) },
  { key := { q := 12, n := 29, r := 22 }
    lowerValue := 119
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 22))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 25 22))) },
  { key := { q := 12, n := 29, r := 23 }
    lowerValue := 34
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 23))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 26 23))) },
  { key := { q := 12, n := 29, r := 24 }
    lowerValue := 12
    upperValue := 1728
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 24))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 27 24))) },
  { key := { q := 12, n := 29, r := 25 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 27 26)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 28 25))) },
  { key := { q := 12, n := 29, r := 26 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 28 27))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 29 26)) },
  { key := { q := 12, n := 29, r := 27 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 29 28)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 29 27)) },
  { key := { q := 12, n := 29, r := 28 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 29 28))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 29 28)) },
  { key := { q := 12, n := 29, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 29 29)) },
  { key := { q := 12, n := 29, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 29 30)) },
  { key := { q := 12, n := 29, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 29 31)) },
  { key := { q := 12, n := 29, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 29 32)) },
  { key := { q := 12, n := 29, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 29 33)) },
  { key := { q := 12, n := 29, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 29 34)) },
  { key := { q := 12, n := 29, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 29 35)) },
  { key := { q := 12, n := 29, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 29 36)) },
  { key := { q := 12, n := 29, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 29 37)) },
  { key := { q := 12, n := 29, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 29 38)) },
  { key := { q := 12, n := 29, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 29 39)) },
  { key := { q := 12, n := 29, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 29 40)) },
  { key := { q := 12, n := 29, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 29 41)) },
  { key := { q := 12, n := 29, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 29 42)) },
  { key := { q := 12, n := 29, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 29 43)) },
  { key := { q := 12, n := 29, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 29 44)) },
  { key := { q := 12, n := 29, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 29 45)) },
  { key := { q := 12, n := 29, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 29 46)) },
  { key := { q := 12, n := 29, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 29 47)) },
  { key := { q := 12, n := 29, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 29 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 29 48)) },
  { key := { q := 12, n := 30, r := 0 }
    lowerValue := 237376313799769806328950291431424
    upperValue := 237376313799769806328950291431424
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 30 0)) },
  { key := { q := 12, n := 30, r := 1 }
    lowerValue := 717148984289334762323112662935
    upperValue := 9890679741657075263706262142976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 1))
    upperTrace := (.lengthenFreeN 27 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 30, r := 2 }
    lowerValue := 4481673409352599900482390429
    upperValue := 732642943826450019533797195776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 2))
    upperTrace := (.lengthenFreeN 21 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 12, n := 30, r := 3 }
    lowerValue := 43500803177482625674513040
    upperValue := 61053578652204168294483099648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 3))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 30, r := 4 }
    lowerValue := 583673833177231245539716
    upperValue := 5087798221017014024540258304
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 4))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 30, r := 5 }
    lowerValue := 10162776550310604156243
    upperValue := 145744219872883214244642816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 5))
    upperTrace := (.lengthenFreeN 22 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))) },
  { key := { q := 12, n := 30, r := 6 }
    lowerValue := 220760537905493529550
    upperValue := 12145351656073601187053568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 6))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 30, r := 7 }
    lowerValue := 5825578926097347604
    upperValue := 1012112638006133432254464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 7))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 30, r := 8 }
    lowerValue := 183249291974611590
    upperValue := 84342719833844452687872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 8))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 30, r := 9 }
    lowerValue := 6776200879149460
    upperValue := 7028559986153704390656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 9))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 30, r := 10 }
    lowerValue := 291502069337170
    upperValue := 585713332179475365888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 10))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 30, r := 11 }
    lowerValue := 14474053019109
    upperValue := 26623333280885243904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 11))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 30, r := 12 }
    lowerValue := 824644455569
    upperValue := 2218611106740436992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 12))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 30, r := 13 }
    lowerValue := 53677265564
    upperValue := 184884258895036416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 13))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 30, r := 14 }
    lowerValue := 3979717449
    upperValue := 15407021574586368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 14))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 30, r := 15 }
    lowerValue := 335461641
    upperValue := 1283918464548864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 15))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 30, r := 16 }
    lowerValue := 32122403
    upperValue := 106993205379072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 16))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 30, r := 17 }
    lowerValue := 3494837
    upperValue := 8916100448256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 17))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 30, r := 18 }
    lowerValue := 432524
    upperValue := 743008370688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 18))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 30, r := 19 }
    lowerValue := 61026
    upperValue := 61917364224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 19))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 30, r := 20 }
    lowerValue := 9849
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 20))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20))) },
  { key := { q := 12, n := 30, r := 21 }
    lowerValue := 1827
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 21))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 21))) },
  { key := { q := 12, n := 30, r := 22 }
    lowerValue := 392
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 22))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 25 22))) },
  { key := { q := 12, n := 30, r := 23 }
    lowerValue := 98
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 23))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 26 23))) },
  { key := { q := 12, n := 30, r := 24 }
    lowerValue := 29
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 24))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 27 24))) },
  { key := { q := 12, n := 30, r := 25 }
    lowerValue := 12
    upperValue := 1728
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 27 26))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 28 25))) },
  { key := { q := 12, n := 30, r := 26 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 28 27)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 29 26))) },
  { key := { q := 12, n := 30, r := 27 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 29 28))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 30 27)) },
  { key := { q := 12, n := 30, r := 28 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 30 29)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 30 28)) },
  { key := { q := 12, n := 30, r := 29 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 30 29))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 30 29)) },
  { key := { q := 12, n := 30, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 30 30)) },
  { key := { q := 12, n := 30, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 30 31)) },
  { key := { q := 12, n := 30, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 30 32)) },
  { key := { q := 12, n := 30, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 30 33)) },
  { key := { q := 12, n := 30, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 30 34)) },
  { key := { q := 12, n := 30, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 30 35)) },
  { key := { q := 12, n := 30, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 30 36)) },
  { key := { q := 12, n := 30, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 30 37)) },
  { key := { q := 12, n := 30, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 30 38)) },
  { key := { q := 12, n := 30, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 30 39)) },
  { key := { q := 12, n := 30, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 30 40)) },
  { key := { q := 12, n := 30, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 30 41)) },
  { key := { q := 12, n := 30, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 30 42)) },
  { key := { q := 12, n := 30, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 30 43)) },
  { key := { q := 12, n := 30, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 30 44)) },
  { key := { q := 12, n := 30, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 30 45)) },
  { key := { q := 12, n := 30, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 30 46)) },
  { key := { q := 12, n := 30, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 30 47)) },
  { key := { q := 12, n := 30, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 30 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 30 48)) },
  { key := { q := 12, n := 31, r := 0 }
    lowerValue := 2848515765597237675947403497177088
    upperValue := 2848515765597237675947403497177088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 31 0)) },
  { key := { q := 12, n := 31, r := 1 }
    lowerValue := 8328993466658589695752641804612
    upperValue := 118688156899884903164475145715712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 1))
    upperTrace := (.lengthenFreeN 28 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 31, r := 2 }
    lowerValue := 50320910233667879872584724455
    upperValue := 8791715325917400234405566349312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 2))
    upperTrace := (.lengthenFreeN 22 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 12, n := 31, r := 3 }
    lowerValue := 471651362672844767364225016
    upperValue := 732642943826450019533797195776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 3))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 31, r := 4 }
    lowerValue := 6103284232018670208337596
    upperValue := 61053578652204168294483099648
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 4))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 31, r := 5 }
    lowerValue := 102350261887267422577667
    upperValue := 1748930638474598570935713792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 5))
    upperTrace := (.lengthenFreeN 23 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))) },
  { key := { q := 12, n := 31, r := 6 }
    lowerValue := 2138207893707834250863
    upperValue := 145744219872883214244642816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 6))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 31, r := 7 }
    lowerValue := 54179862295328025322
    upperValue := 12145351656073601187053568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 7))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 31, r := 8 }
    lowerValue := 1633704108968467105
    upperValue := 1012112638006133432254464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 8))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 31, r := 9 }
    lowerValue := 57802678816786561
    upperValue := 84342719833844452687872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 9))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 31, r := 10 }
    lowerValue := 2374434051525493
    upperValue := 7028559986153704390656
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 10))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 31, r := 11 }
    lowerValue := 112333539475497
    upperValue := 319479999370622926848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 11))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 31, r := 12 }
    lowerValue := 6083266377287
    upperValue := 26623333280885243904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 12))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 31, r := 13 }
    lowerValue := 375364302174
    upperValue := 2218611106740436992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 13))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 31, r := 14 }
    lowerValue := 26304103078
    upperValue := 184884258895036416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 14))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 31, r := 15 }
    lowerValue := 2088779362
    upperValue := 15407021574586368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 15))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 31, r := 16 }
    lowerValue := 187730098
    upperValue := 1283918464548864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 16))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 31, r := 17 }
    lowerValue := 19090754
    upperValue := 106993205379072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 17))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 31, r := 18 }
    lowerValue := 2197998
    upperValue := 8916100448256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 18))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 31, r := 19 }
    lowerValue := 286954
    upperValue := 743008370688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 19))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 31, r := 20 }
    lowerValue := 42586
    upperValue := 61917364224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 20))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20))) },
  { key := { q := 12, n := 31, r := 21 }
    lowerValue := 7210
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 21))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 21))) },
  { key := { q := 12, n := 31, r := 22 }
    lowerValue := 1399
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 22))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 25 22))) },
  { key := { q := 12, n := 31, r := 23 }
    lowerValue := 314
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 23))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 26 23))) },
  { key := { q := 12, n := 31, r := 24 }
    lowerValue := 82
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 24))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 27 24))) },
  { key := { q := 12, n := 31, r := 25 }
    lowerValue := 25
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 25))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 28 25))) },
  { key := { q := 12, n := 31, r := 26 }
    lowerValue := 12
    upperValue := 1728
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 28 27))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 29 26))) },
  { key := { q := 12, n := 31, r := 27 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 29 28)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 30 27))) },
  { key := { q := 12, n := 31, r := 28 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 30 29))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 31 28)) },
  { key := { q := 12, n := 31, r := 29 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 31 30)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 31 29)) },
  { key := { q := 12, n := 31, r := 30 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 31 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 31 30)) },
  { key := { q := 12, n := 31, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 31 31)) },
  { key := { q := 12, n := 31, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 31 32)) },
  { key := { q := 12, n := 31, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 31 33)) },
  { key := { q := 12, n := 31, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 31 34)) },
  { key := { q := 12, n := 31, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 31 35)) },
  { key := { q := 12, n := 31, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 31 36)) },
  { key := { q := 12, n := 31, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 31 37)) },
  { key := { q := 12, n := 31, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 31 38)) },
  { key := { q := 12, n := 31, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 31 39)) },
  { key := { q := 12, n := 31, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 31 40)) },
  { key := { q := 12, n := 31, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 31 41)) },
  { key := { q := 12, n := 31, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 31 42)) },
  { key := { q := 12, n := 31, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 31 43)) },
  { key := { q := 12, n := 31, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 31 44)) },
  { key := { q := 12, n := 31, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 31 45)) },
  { key := { q := 12, n := 31, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 31 46)) },
  { key := { q := 12, n := 31, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 31 47)) },
  { key := { q := 12, n := 31, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 31 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 31 48)) },
  { key := { q := 12, n := 32, r := 0 }
    lowerValue := 34182189187166852111368841966125056
    upperValue := 34182189187166852111368841966125056
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 32 0)) },
  { key := { q := 12, n := 32, r := 1 }
    lowerValue := 96833397130784283601611450328967
    upperValue := 1424257882798618837973701748588544
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 1))
    upperTrace := (.lengthenFreeN 29 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 32, r := 2 }
    lowerValue := 566220894617549605118004968877
    upperValue := 105500583911008802812866796191744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 2))
    upperTrace := (.lengthenFreeN 23 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 12, n := 32, r := 3 }
    lowerValue := 5130820671164856176061562598
    upperValue := 8791715325917400234405566349312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 3))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 32, r := 4 }
    lowerValue := 64113344479138035331143024
    upperValue := 732642943826450019533797195776
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 4))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 32, r := 5 }
    lowerValue := 1036924982510571945574404
    upperValue := 20987167661695182851228565504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 5))
    upperTrace := (.lengthenFreeN 24 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))) },
  { key := { q := 12, n := 32, r := 6 }
    lowerValue := 20863924734034012068478
    upperValue := 1748930638474598570935713792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 6))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 32, r := 7 }
    lowerValue := 508441458701536651892
    upperValue := 145744219872883214244642816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 7))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 32, r := 8 }
    lowerValue := 14721516571447909485
    upperValue := 12145351656073601187053568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 8))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 32, r := 9 }
    lowerValue := 499305098948592553
    upperValue := 1012112638006133432254464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 9))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 32, r := 10 }
    lowerValue := 19625301038293678
    upperValue := 84342719833844452687872
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 10))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 32, r := 11 }
    lowerValue := 886607110028964
    upperValue := 3833759992447475122176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 11))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 32, r := 12 }
    lowerValue := 45747739962190
    upperValue := 319479999370622926848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 12))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 32, r := 13 }
    lowerValue := 2683172549570
    upperValue := 26623333280885243904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 13))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 32, r := 14 }
    lowerValue := 178248493449
    upperValue := 2218611106740436992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 14))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 32, r := 15 }
    lowerValue := 13378907604
    upperValue := 184884258895036416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 15))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 32, r := 16 }
    lowerValue := 1132820361
    upperValue := 15407021574586368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 16))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 32, r := 17 }
    lowerValue := 108131353
    upperValue := 1283918464548864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 17))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 32, r := 18 }
    lowerValue := 11637440
    upperValue := 106993205379072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 18))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 32, r := 19 }
    lowerValue := 1413521
    upperValue := 8916100448256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 19))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 32, r := 20 }
    lowerValue := 194124
    upperValue := 743008370688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 20))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20))) },
  { key := { q := 12, n := 32, r := 21 }
    lowerValue := 30226
    upperValue := 61917364224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 21))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 21))) },
  { key := { q := 12, n := 32, r := 22 }
    lowerValue := 5356
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 22))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 25 22))) },
  { key := { q := 12, n := 32, r := 23 }
    lowerValue := 1086
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 23))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 26 23))) },
  { key := { q := 12, n := 32, r := 24 }
    lowerValue := 254
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 24))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 27 24))) },
  { key := { q := 12, n := 32, r := 25 }
    lowerValue := 69
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 25))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 28 25))) },
  { key := { q := 12, n := 32, r := 26 }
    lowerValue := 22
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 26))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 29 26))) },
  { key := { q := 12, n := 32, r := 27 }
    lowerValue := 12
    upperValue := 1728
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 29 28))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 30 27))) },
  { key := { q := 12, n := 32, r := 28 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 30 29)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 31 28))) },
  { key := { q := 12, n := 32, r := 29 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 31 30))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 32 29)) },
  { key := { q := 12, n := 32, r := 30 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 32 31)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 32 30)) },
  { key := { q := 12, n := 32, r := 31 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 32 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 32 31)) },
  { key := { q := 12, n := 32, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 32 32)) },
  { key := { q := 12, n := 32, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 32 33)) },
  { key := { q := 12, n := 32, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 32 34)) },
  { key := { q := 12, n := 32, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 32 35)) },
  { key := { q := 12, n := 32, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 32 36)) },
  { key := { q := 12, n := 32, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 32 37)) },
  { key := { q := 12, n := 32, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 32 38)) },
  { key := { q := 12, n := 32, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 32 39)) },
  { key := { q := 12, n := 32, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 32 40)) },
  { key := { q := 12, n := 32, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 32 41)) },
  { key := { q := 12, n := 32, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 32 42)) },
  { key := { q := 12, n := 32, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 32 43)) },
  { key := { q := 12, n := 32, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 32 44)) },
  { key := { q := 12, n := 32, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 32 45)) },
  { key := { q := 12, n := 32, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 32 46)) },
  { key := { q := 12, n := 32, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 32 47)) },
  { key := { q := 12, n := 32, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 32 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 32 48)) },
  { key := { q := 12, n := 33, r := 0 }
    lowerValue := 410186270246002225336426103593500672
    upperValue := 410186270246002225336426103593500672
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 33 0)) },
  { key := { q := 12, n := 33, r := 1 }
    lowerValue := 1126885357818687432242928856026101
    upperValue := 17091094593583426055684420983062528
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 1))
    upperTrace := (.lengthenFreeN 30 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 33, r := 2 }
    lowerValue := 6384023380532936334066271922952
    upperValue := 1266007006932105633754401554300928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 2))
    upperTrace := (.lengthenFreeN 24 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 12, n := 33, r := 3 }
    lowerValue := 55989045086749374345352058069
    upperValue := 105500583911008802812866796191744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 3))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 33, r := 4 }
    lowerValue := 676388493548772882585353280
    upperValue := 8791715325917400234405566349312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 4))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 33, r := 5 }
    lowerValue := 10563742337970862319330219
    upperValue := 251846011940342194214742786048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 5))
    upperTrace := (.lengthenFreeN 25 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))) },
  { key := { q := 12, n := 33, r := 6 }
    lowerValue := 204995361591882342110882
    upperValue := 20987167661695182851228565504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 6))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 33, r := 7 }
    lowerValue := 4811507982466427344586
    upperValue := 1748930638474598570935713792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 7))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 33, r := 8 }
    lowerValue := 133984607830924955072
    upperValue := 145744219872883214244642816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 8))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 33, r := 9 }
    lowerValue := 4363653662250525258
    upperValue := 12145351656073601187053568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 9))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 33, r := 10 }
    lowerValue := 164416781509303439
    upperValue := 1012112638006133432254464
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 10))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 33, r := 11 }
    lowerValue := 7107336262890946
    upperValue := 46005119909369701466112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 11))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 33, r := 12 }
    lowerValue := 350202881214129
    upperValue := 3833759992447475122176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 12))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 33, r := 13 }
    lowerValue := 19571317188097
    upperValue := 319479999370622926848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 13))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 33, r := 14 }
    lowerValue := 1235868599253
    upperValue := 26623333280885243904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 14))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 33, r := 15 }
    lowerValue := 87940357992
    upperValue := 2218611106740436992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 15))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 33, r := 16 }
    lowerValue := 7038361798
    upperValue := 184884258895036416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 16))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 33, r := 17 }
    lowerValue := 632968514
    upperValue := 15407021574586368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 17))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 33, r := 18 }
    lowerValue := 63946224
    upperValue := 1283918464548864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 18))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 33, r := 19 }
    lowerValue := 7260940
    upperValue := 106993205379072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 19))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 33, r := 20 }
    lowerValue := 927835
    upperValue := 8916100448256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 20))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20))) },
  { key := { q := 12, n := 33, r := 21 }
    lowerValue := 133706
    upperValue := 743008370688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 21))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 21))) },
  { key := { q := 12, n := 33, r := 22 }
    lowerValue := 21793
    upperValue := 5159780352
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 22))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 25 22))) },
  { key := { q := 12, n := 33, r := 23 }
    lowerValue := 4034
    upperValue := 429981696
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 23))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 26 23))) },
  { key := { q := 12, n := 33, r := 24 }
    lowerValue := 852
    upperValue := 35831808
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 24))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 27 24))) },
  { key := { q := 12, n := 33, r := 25 }
    lowerValue := 207
    upperValue := 2985984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 25))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 28 25))) },
  { key := { q := 12, n := 33, r := 26 }
    lowerValue := 58
    upperValue := 248832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 26))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 29 26))) },
  { key := { q := 12, n := 33, r := 27 }
    lowerValue := 19
    upperValue := 20736
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 27))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 30 27))) },
  { key := { q := 12, n := 33, r := 28 }
    lowerValue := 12
    upperValue := 1728
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 30 29))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 31 28))) },
  { key := { q := 12, n := 33, r := 29 }
    lowerValue := 12
    upperValue := 144
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 31 30)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 32 29))) },
  { key := { q := 12, n := 33, r := 30 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.lengthBack (by decide : 0 < 12) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 32 31))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 33 30)) },
  { key := { q := 12, n := 33, r := 31 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 33 32)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 33 31)) },
  { key := { q := 12, n := 33, r := 32 }
    lowerValue := 12
    upperValue := 12
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 12 33 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 33 32)) },
  { key := { q := 12, n := 33, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 33 33)) },
  { key := { q := 12, n := 33, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 33 34)) },
  { key := { q := 12, n := 33, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 33 35)) },
  { key := { q := 12, n := 33, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 33 36)) },
  { key := { q := 12, n := 33, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 33 37)) },
  { key := { q := 12, n := 33, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 33 38)) },
  { key := { q := 12, n := 33, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 33 39)) },
  { key := { q := 12, n := 33, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 33 40)) },
  { key := { q := 12, n := 33, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 33 41)) },
  { key := { q := 12, n := 33, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 33 42)) },
  { key := { q := 12, n := 33, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 33 43)) },
  { key := { q := 12, n := 33, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 33 44)) },
  { key := { q := 12, n := 33, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 33 45)) },
  { key := { q := 12, n := 33, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 33 46)) },
  { key := { q := 12, n := 33, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 33 47)) },
  { key := { q := 12, n := 33, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 33 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 12 33 48)) },
  { key := { q := 12, n := 34, r := 0 }
    lowerValue := 4922235242952026704037113243122008064
    upperValue := 4922235242952026704037113243122008064
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 12 34 0)) },
  { key := { q := 12, n := 34, r := 1 }
    lowerValue := 13125960647872071210765635314992022
    upperValue := 205093135123001112668213051796750336
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 1))
    upperTrace := (.lengthenFreeN 31 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 12 3 1))) },
  { key := { q := 12, n := 34, r := 2 }
    lowerValue := 72114323179676903188541860688028
    upperValue := 15192084083185267605052818651611136
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 2))
    upperTrace := (.lengthenFreeN 25 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))) },
  { key := { q := 12, n := 34, r := 3 }
    lowerValue := 612754855364899950209774882873
    upperValue := 1266007006932105633754401554300928
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 3))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 34, r := 4 }
    lowerValue := 7164575640591656300561355145
    upperValue := 105500583911008802812866796191744
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 4))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 6 12 2 9 2 31104 (by decide : 0 < 6) (by decide : 0 < 2) (by decide : 12 ≤ 2 * 6) (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2))))))) },
  { key := { q := 12, n := 34, r := 5 }
    lowerValue := 108179969536777963243034301
    upperValue := 3022152143284106330576913432576
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 5))
    upperTrace := (.lengthenFreeN 26 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))) },
  { key := { q := 12, n := 34, r := 6 }
    lowerValue := 2027213037936667150755730
    upperValue := 251846011940342194214742786048
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 6))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 1 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 34, r := 7 }
    lowerValue := 45890013826254424884075
    upperValue := 20987167661695182851228565504
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 7))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 2 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 34, r := 8 }
    lowerValue := 1230803386922116276875
    upperValue := 1748930638474598570935713792
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 8))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 3 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 34, r := 9 }
    lowerValue := 38552391015097998335
    upperValue := 145744219872883214244642816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 9))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 4 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 34, r := 10 }
    lowerValue := 1394874003263494916
    upperValue := 12145351656073601187053568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 10))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 5 (by decide : 0 < 12) (.lengthenFreeN 1 (.primitive "lean_known_bounds_q12_n8_r5_quotient_majority" (primitiveUpper_valid 12 8 5))))) },
  { key := { q := 12, n := 34, r := 11 }
    lowerValue := 57802678816786561
    upperValue := 552061438912436417593344
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 11))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 13 11))) },
  { key := { q := 12, n := 34, r := 12 }
    lowerValue := 2725300464717825
    upperValue := 46005119909369701466112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 12))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 14 12))) },
  { key := { q := 12, n := 34, r := 13 }
    lowerValue := 145444769137700
    upperValue := 3833759992447475122176
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 13))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 15 13))) },
  { key := { q := 12, n := 34, r := 14 }
    lowerValue := 8751493650817
    upperValue := 319479999370622926848
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 14))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 16 14))) },
  { key := { q := 12, n := 34, r := 15 }
    lowerValue := 591950482575
    upperValue := 26623333280885243904
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 15))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 17 15))) },
  { key := { q := 12, n := 34, r := 16 }
    lowerValue := 44916350206
    upperValue := 2218611106740436992
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 16))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 18 16))) },
  { key := { q := 12, n := 34, r := 17 }
    lowerValue := 3818347108
    upperValue := 184884258895036416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 17))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 19 17))) },
  { key := { q := 12, n := 34, r := 18 }
    lowerValue := 363453849
    upperValue := 15407021574586368
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 18))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 20 18))) },
  { key := { q := 12, n := 34, r := 19 }
    lowerValue := 38741825
    upperValue := 1283918464548864
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 19))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 21 19))) },
  { key := { q := 12, n := 34, r := 20 }
    lowerValue := 4628320
    upperValue := 106993205379072
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 20))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 22 20))) },
  { key := { q := 12, n := 34, r := 21 }
    lowerValue := 620647
    upperValue := 8916100448256
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 12 34 21))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 12 23 21))) }]

end CoveringCodes.Database
