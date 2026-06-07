import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 131. Do not edit manually.

def precomputedTable_chunk_131 : Array AnyBoundEntry := #[
  { key := { q := 13, n := 31, r := 18 }
    lowerValue := 5547186
    upperValue := 23298085122481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 18))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 31, r := 19 }
    lowerValue := 664906
    upperValue := 1792160394037
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 19))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 31, r := 20 }
    lowerValue := 90624
    upperValue := 137858491849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 20))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20))) },
  { key := { q := 13, n := 31, r := 21 }
    lowerValue := 14097
    upperValue := 10604499373
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 21))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 21))) },
  { key := { q := 13, n := 31, r := 22 }
    lowerValue := 2515
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 22))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 24 22))) },
  { key := { q := 13, n := 31, r := 23 }
    lowerValue := 518
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 23))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 25 23))) },
  { key := { q := 13, n := 31, r := 24 }
    lowerValue := 124
    upperValue := 371293
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 24))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 27 24))) },
  { key := { q := 13, n := 31, r := 25 }
    lowerValue := 35
    upperValue := 28561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 25))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 28 25))) },
  { key := { q := 13, n := 31, r := 26 }
    lowerValue := 13
    upperValue := 2197
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 28 27))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 29 26))) },
  { key := { q := 13, n := 31, r := 27 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 29 28)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 30 27))) },
  { key := { q := 13, n := 31, r := 28 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 30 29))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 31 28)) },
  { key := { q := 13, n := 31, r := 29 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 31 30)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 31 29)) },
  { key := { q := 13, n := 31, r := 30 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 31 30))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 31 30)) },
  { key := { q := 13, n := 31, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 31 31)) },
  { key := { q := 13, n := 31, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 31 32)) },
  { key := { q := 13, n := 31, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 31 33)) },
  { key := { q := 13, n := 31, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 31 34)) },
  { key := { q := 13, n := 31, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 31 35)) },
  { key := { q := 13, n := 31, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 31 36)) },
  { key := { q := 13, n := 31, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 31 37)) },
  { key := { q := 13, n := 31, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 31 38)) },
  { key := { q := 13, n := 31, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 31 39)) },
  { key := { q := 13, n := 31, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 31 40)) },
  { key := { q := 13, n := 31, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 31 41)) },
  { key := { q := 13, n := 31, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 31 42)) },
  { key := { q := 13, n := 31, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 31 43)) },
  { key := { q := 13, n := 31, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 31 44)) },
  { key := { q := 13, n := 31, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 31 45)) },
  { key := { q := 13, n := 31, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 31 46)) },
  { key := { q := 13, n := 31, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 31 47)) },
  { key := { q := 13, n := 31, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 31 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 31 48)) },
  { key := { q := 13, n := 32, r := 0 }
    lowerValue := 442779263776840698304313192148785281
    upperValue := 442779263776840698304313192148785281
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 32 0)) },
  { key := { q := 13, n := 32, r := 1 }
    lowerValue := 1150076009809975839751462836750092
    upperValue := 17130740746941947817872836291600705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 1))
    upperTrace := (.lengthenFreeN 29 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 32, r := 2 }
    lowerValue := 6166069208272510385944842459146
    upperValue := 1317749288226303678297910483969285
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 2))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 1 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 32, r := 3 }
    lowerValue := 51231655307374903609780843919
    upperValue := 101365329863561821407531575689945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 3))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 2 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 32, r := 4 }
    lowerValue := 586999648173266265099598683
    upperValue := 7797333066427832415963967360765
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 4))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 3 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 32, r := 5 }
    lowerValue := 8705313786636730917173278
    upperValue := 599794851263679416612612873905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 5))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 4 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 32, r := 6 }
    lowerValue := 160617105226484739793364
    upperValue := 46138065481821493585585605685
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 6))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 5 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 32, r := 7 }
    lowerValue := 3589284057584505403692
    upperValue := 3549081960140114891198892745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 7))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 6 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 32, r := 8 }
    lowerValue := 95302550624109059042
    upperValue := 273006304626162683938376365
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 8))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 7 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 32, r := 9 }
    lowerValue := 2964278428114011333
    upperValue := 21000484971243283379875105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 9))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 8 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 32, r := 10 }
    lowerValue := 106853446663451962
    upperValue := 1615421920864867952298085
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 10))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 9 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 32, r := 11 }
    lowerValue := 4427346883199767
    upperValue := 124263224681912919407545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 11))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 10 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 32, r := 12 }
    lowerValue := 209530051793354
    upperValue := 1461920290375446110677
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 12))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 32, r := 13 }
    lowerValue := 11272437136229
    upperValue := 112455406951957393129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 13))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 32, r := 14 }
    lowerValue := 686943097874
    upperValue := 8650415919381337933
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 14))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 32, r := 15 }
    lowerValue := 47302106925
    upperValue := 665416609183179841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 15))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 32, r := 16 }
    lowerValue := 3674792115
    upperValue := 51185893014090757
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 16))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 32, r := 17 }
    lowerValue := 321878561
    upperValue := 3937376385699289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 17))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 32, r := 18 }
    lowerValue := 31793332
    upperValue := 302875106592253
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 18))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 32, r := 19 }
    lowerValue := 3544908
    upperValue := 23298085122481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 19))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 32, r := 20 }
    lowerValue := 447008
    upperValue := 1792160394037
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 20))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20))) },
  { key := { q := 13, n := 32, r := 21 }
    lowerValue := 63927
    upperValue := 137858491849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 21))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 21))) },
  { key := { q := 13, n := 32, r := 22 }
    lowerValue := 10409
    upperValue := 10604499373
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 22))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 24 22))) },
  { key := { q := 13, n := 32, r := 23 }
    lowerValue := 1939
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 23))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 25 23))) },
  { key := { q := 13, n := 32, r := 24 }
    lowerValue := 416
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 24))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 27 24))) },
  { key := { q := 13, n := 32, r := 25 }
    lowerValue := 104
    upperValue := 371293
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 25))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 28 25))) },
  { key := { q := 13, n := 32, r := 26 }
    lowerValue := 31
    upperValue := 28561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 26))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 29 26))) },
  { key := { q := 13, n := 32, r := 27 }
    lowerValue := 13
    upperValue := 2197
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 27 ≤ 28) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 29 28))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 30 27))) },
  { key := { q := 13, n := 32, r := 28 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 30 29)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 31 28))) },
  { key := { q := 13, n := 32, r := 29 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 31 30))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 32 29)) },
  { key := { q := 13, n := 32, r := 30 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 32 31)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 32 30)) },
  { key := { q := 13, n := 32, r := 31 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 32 31))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 32 31)) },
  { key := { q := 13, n := 32, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 32 32)) },
  { key := { q := 13, n := 32, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 32 33)) },
  { key := { q := 13, n := 32, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 32 34)) },
  { key := { q := 13, n := 32, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 32 35)) },
  { key := { q := 13, n := 32, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 32 36)) },
  { key := { q := 13, n := 32, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 32 37)) },
  { key := { q := 13, n := 32, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 32 38)) },
  { key := { q := 13, n := 32, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 32 39)) },
  { key := { q := 13, n := 32, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 32 40)) },
  { key := { q := 13, n := 32, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 32 41)) },
  { key := { q := 13, n := 32, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 32 42)) },
  { key := { q := 13, n := 32, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 32 43)) },
  { key := { q := 13, n := 32, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 32 44)) },
  { key := { q := 13, n := 32, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 32 45)) },
  { key := { q := 13, n := 32, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 32 46)) },
  { key := { q := 13, n := 32, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 32 47)) },
  { key := { q := 13, n := 32, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 32 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 32 48)) },
  { key := { q := 13, n := 33, r := 0 }
    lowerValue := 5756130429098929077956071497934208653
    upperValue := 5756130429098929077956071497934208653
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 33 0)) },
  { key := { q := 13, n := 33, r := 1 }
    lowerValue := 14499069090929292387798668760539569
    upperValue := 222699629710245321632346871790809165
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 1))
    upperTrace := (.lengthenFreeN 30 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 33, r := 2 }
    lowerValue := 75313433763348062619634844076650
    upperValue := 17130740746941947817872836291600705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 2))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 1 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 33, r := 3 }
    lowerValue := 605628156010205495199334739273
    upperValue := 1317749288226303678297910483969285
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 3))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 2 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 33, r := 4 }
    lowerValue := 6708608484813707857114347283
    upperValue := 101365329863561821407531575689945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 4))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 3 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 33, r := 5 }
    lowerValue := 96071908335422283681531877
    upperValue := 7797333066427832415963967360765
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 5))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 4 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 33, r := 6 }
    lowerValue := 1709524141670499407583658
    upperValue := 599794851263679416612612873905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 6))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 5 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 33, r := 7 }
    lowerValue := 36793951966176526946577
    upperValue := 46138065481821493585585605685
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 7))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 6 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 33, r := 8 }
    lowerValue := 939565436420130454227
    upperValue := 3549081960140114891198892745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 8))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 7 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 33, r := 9 }
    lowerValue := 28061691946657499579
    upperValue := 273006304626162683938376365
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 9))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 8 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 33, r := 10 }
    lowerValue := 969656089074646414
    upperValue := 21000484971243283379875105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 10))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 9 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 33, r := 11 }
    lowerValue := 38441947114768884
    upperValue := 1615421920864867952298085
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 11))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 10 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 33, r := 12 }
    lowerValue := 1737268370133995
    upperValue := 19004963774880799438801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 12))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 33, r := 13 }
    lowerValue := 89051476061344
    upperValue := 1461920290375446110677
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 13))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 33, r := 14 }
    lowerValue := 5158181227718
    upperValue := 112455406951957393129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 14))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 33, r := 15 }
    lowerValue := 336705541662
    upperValue := 8650415919381337933
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 15))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 33, r := 16 }
    lowerValue := 24723631392
    upperValue := 665416609183179841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 16))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 33, r := 17 }
    lowerValue := 2040094899
    upperValue := 51185893014090757
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 17))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 33, r := 18 }
    lowerValue := 189134162
    upperValue := 3937376385699289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 18))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 33, r := 19 }
    lowerValue := 19710935
    upperValue := 302875106592253
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 19))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 33, r := 20 }
    lowerValue := 2312247
    upperValue := 23298085122481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 20))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20))) },
  { key := { q := 13, n := 33, r := 21 }
    lowerValue := 305969
    upperValue := 1792160394037
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 21))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 21))) },
  { key := { q := 13, n := 33, r := 22 }
    lowerValue := 45809
    upperValue := 137858491849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 22))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 24 22))) },
  { key := { q := 13, n := 33, r := 23 }
    lowerValue := 7791
    upperValue := 10604499373
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 23))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 25 23))) },
  { key := { q := 13, n := 33, r := 24 }
    lowerValue := 1513
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 24))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 27 24))) },
  { key := { q := 13, n := 33, r := 25 }
    lowerValue := 338
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 25))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 28 25))) },
  { key := { q := 13, n := 33, r := 26 }
    lowerValue := 88
    upperValue := 371293
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 26))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 29 26))) },
  { key := { q := 13, n := 33, r := 27 }
    lowerValue := 27
    upperValue := 28561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 27))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 30 27))) },
  { key := { q := 13, n := 33, r := 28 }
    lowerValue := 13
    upperValue := 2197
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 28 ≤ 29) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 30 29))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 31 28))) },
  { key := { q := 13, n := 33, r := 29 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 31 30)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 32 29))) },
  { key := { q := 13, n := 33, r := 30 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 32 31))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 33 30)) },
  { key := { q := 13, n := 33, r := 31 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 33 32)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 33 31)) },
  { key := { q := 13, n := 33, r := 32 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 33 32))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 33 32)) },
  { key := { q := 13, n := 33, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 33 33)) },
  { key := { q := 13, n := 33, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 33 34)) },
  { key := { q := 13, n := 33, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 33 35)) },
  { key := { q := 13, n := 33, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 33 36)) },
  { key := { q := 13, n := 33, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 33 37)) },
  { key := { q := 13, n := 33, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 33 38)) },
  { key := { q := 13, n := 33, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 33 39)) },
  { key := { q := 13, n := 33, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 33 40)) },
  { key := { q := 13, n := 33, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 33 41)) },
  { key := { q := 13, n := 33, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 33 42)) },
  { key := { q := 13, n := 33, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 33 43)) },
  { key := { q := 13, n := 33, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 33 44)) },
  { key := { q := 13, n := 33, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 33 45)) },
  { key := { q := 13, n := 33, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 33 46)) },
  { key := { q := 13, n := 33, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 33 47)) },
  { key := { q := 13, n := 33, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 33 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 33 48)) },
  { key := { q := 13, n := 34, r := 0 }
    lowerValue := 74829695578286078013428929473144712489
    upperValue := 74829695578286078013428929473144712489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 34 0)) },
  { key := { q := 13, n := 34, r := 1 }
    lowerValue := 182957690900454958468041392354877048
    upperValue := 2895095186233189181220509333280519145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 1))
    upperTrace := (.lengthenFreeN 31 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 34, r := 2 }
    lowerValue := 921627425742195484997831456814562
    upperValue := 222699629710245321632346871790809165
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 2))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 1 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 34, r := 3 }
    lowerValue := 7180288102991070711053776524800
    upperValue := 17130740746941947817872836291600705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 3))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 2 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 34, r := 4 }
    lowerValue := 76979400690764781187980972283
    upperValue := 1317749288226303678297910483969285
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 4))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 3 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 34, r := 5 }
    lowerValue := 1065781994513765407611727974
    upperValue := 101365329863561821407531575689945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 5))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 4 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 34, r := 6 }
    lowerValue := 18313353057583477676127073
    upperValue := 7797333066427832415963967360765
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 6))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 5 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 34, r := 7 }
    lowerValue := 380140556461636341634085
    upperValue := 599794851263679416612612873905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 7))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 6 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 34, r := 8 }
    lowerValue := 9349407913035383287996
    upperValue := 46138065481821493585585605685
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 8))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 7 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 34, r := 9 }
    lowerValue := 268552694894412039181
    upperValue := 3549081960140114891198892745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 9))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 8 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 34, r := 10 }
    lowerValue := 8910684469361891557
    upperValue := 273006304626162683938376365
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 10))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 9 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 34, r := 11 }
    lowerValue := 338640681772491927
    upperValue := 21000484971243283379875105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 11))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 10 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 34, r := 12 }
    lowerValue := 14643344818250779
    upperValue := 247064529073450392704413
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 12))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 34, r := 13 }
    lowerValue := 716772529381983
    upperValue := 19004963774880799438801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 13))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 34, r := 14 }
    lowerValue := 39559332838161
    upperValue := 1461920290375446110677
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 14))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 34, r := 15 }
    lowerValue := 2454518025254
    upperValue := 112455406951957393129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 15))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 34, r := 16 }
    lowerValue := 170857984385
    upperValue := 8650415919381337933
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 16))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 34, r := 17 }
    lowerValue := 13325968259
    upperValue := 665416609183179841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 17))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 34, r := 18 }
    lowerValue := 1163901354
    upperValue := 51185893014090757
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 18))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 34, r := 19 }
    lowerValue := 113855029
    upperValue := 3937376385699289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 19))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 34, r := 20 }
    lowerValue := 12484648
    upperValue := 302875106592253
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 20))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20))) },
  { key := { q := 13, n := 34, r := 21 }
    lowerValue := 1536995
    upperValue := 23298085122481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 21))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 21))) },
  { key := { q := 13, n := 34, r := 22 }
    lowerValue := 212941
    upperValue := 1792160394037
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 22))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 24 22))) },
  { key := { q := 13, n := 34, r := 23 }
    lowerValue := 33306
    upperValue := 137858491849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 23))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 25 23))) },
  { key := { q := 13, n := 34, r := 24 }
    lowerValue := 5906
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 24))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 27 24))) },
  { key := { q := 13, n := 34, r := 25 }
    lowerValue := 1194
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 25))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 28 25))) },
  { key := { q := 13, n := 34, r := 26 }
    lowerValue := 277
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 26))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 29 26))) },
  { key := { q := 13, n := 34, r := 27 }
    lowerValue := 75
    upperValue := 371293
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 27))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 30 27))) },
  { key := { q := 13, n := 34, r := 28 }
    lowerValue := 24
    upperValue := 28561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 28))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 31 28))) },
  { key := { q := 13, n := 34, r := 29 }
    lowerValue := 13
    upperValue := 2197
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 29 ≤ 30) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 31 30))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 32 29))) },
  { key := { q := 13, n := 34, r := 30 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 32 31)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 33 30))) },
  { key := { q := 13, n := 34, r := 31 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 33 32))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 34 31)) },
  { key := { q := 13, n := 34, r := 32 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 34 33)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 34 32)) },
  { key := { q := 13, n := 34, r := 33 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 34 33))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 34 33)) },
  { key := { q := 13, n := 34, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 34 34)) },
  { key := { q := 13, n := 34, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 34 35)) },
  { key := { q := 13, n := 34, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 34 36)) },
  { key := { q := 13, n := 34, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 34 37)) },
  { key := { q := 13, n := 34, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 34 38)) },
  { key := { q := 13, n := 34, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 34 39)) },
  { key := { q := 13, n := 34, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 34 40)) },
  { key := { q := 13, n := 34, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 34 41)) },
  { key := { q := 13, n := 34, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 34 42)) },
  { key := { q := 13, n := 34, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 34 43)) },
  { key := { q := 13, n := 34, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 34 44)) },
  { key := { q := 13, n := 34, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 34 45)) },
  { key := { q := 13, n := 34, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 34 46)) },
  { key := { q := 13, n := 34, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 34 47)) },
  { key := { q := 13, n := 34, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 34 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 34 48)) },
  { key := { q := 13, n := 35, r := 0 }
    lowerValue := 972786042517719014174576083150881262357
    upperValue := 972786042517719014174576083150881262357
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 35 0)) },
  { key := { q := 13, n := 35, r := 1 }
    lowerValue := 2310655682939950152433672406534159769
    upperValue := 37636237421031459355866621332646748885
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 1))
    upperTrace := (.lengthenFreeN 32 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 35, r := 2 }
    lowerValue := 11298196798152390961482167258810947
    upperValue := 2895095186233189181220509333280519145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 2))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 1 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 35, r := 3 }
    lowerValue := 85363101789124930022801794717476
    upperValue := 222699629710245321632346871790809165
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 3))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 2 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 35, r := 4 }
    lowerValue := 886662055767374599555960310799
    upperValue := 17130740746941947817872836291600705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 4))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 3 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 35, r := 5 }
    lowerValue := 11881216551132972809453018959
    upperValue := 1317749288226303678297910483969285
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 5))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 4 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 35, r := 6 }
    lowerValue := 197375503631263484425264025
    upperValue := 101365329863561821407531575689945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 6))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 5 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 35, r := 7 }
    lowerValue := 3956339658150955468083965
    upperValue := 7797333066427832415963967360765
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 7))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 6 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 35, r := 8 }
    lowerValue := 93845255717130261353160
    upperValue := 599794851263679416612612873905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 8))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 7 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 35, r := 9 }
    lowerValue := 2596278116010266272161
    upperValue := 46138065481821493585585605685
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 9))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 8 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 35, r := 10 }
    lowerValue := 82850679095433451490
    upperValue := 3549081960140114891198892745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 10))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 9 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 35, r := 11 }
    lowerValue := 3023480555495316710
    upperValue := 273006304626162683938376365
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 11))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 10 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 35, r := 12 }
    lowerValue := 125329957277976237
    upperValue := 3211838877954855105157369
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 12))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 35, r := 13 }
    lowerValue := 5870061257158384
    upperValue := 247064529073450392704413
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 13))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 35, r := 14 }
    lowerValue := 309375029651004
    upperValue := 19004963774880799438801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 14))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 35, r := 15 }
    lowerValue := 18290440898131
    upperValue := 1461920290375446110677
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 15))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 35, r := 16 }
    lowerValue := 1210230262073
    upperValue := 112455406951957393129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 16))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 35, r := 17 }
    lowerValue := 89485323575
    upperValue := 8650415919381337933
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 17))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 35, r := 18 }
    lowerValue := 7387720459
    upperValue := 665416609183179841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 18))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 35, r := 19 }
    lowerValue := 680868851
    upperValue := 51185893014090757
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 19))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 35, r := 20 }
    lowerValue := 70082538
    upperValue := 3937376385699289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 20))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20))) },
  { key := { q := 13, n := 35, r := 21 }
    lowerValue := 8065512
    upperValue := 302875106592253
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 21))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 21))) },
  { key := { q := 13, n := 35, r := 22 }
    lowerValue := 1039702
    upperValue := 23298085122481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 22))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 24 22))) },
  { key := { q := 13, n := 35, r := 23 }
    lowerValue := 150501
    upperValue := 1792160394037
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 23))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 25 23))) },
  { key := { q := 13, n := 35, r := 24 }
    lowerValue := 24546
    upperValue := 10604499373
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 24))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 27 24))) },
  { key := { q := 13, n := 35, r := 25 }
    lowerValue := 4530
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 25))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 28 25))) },
  { key := { q := 13, n := 35, r := 26 }
    lowerValue := 951
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 26))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 29 26))) },
  { key := { q := 13, n := 35, r := 27 }
    lowerValue := 229
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 27))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 30 27))) },
  { key := { q := 13, n := 35, r := 28 }
    lowerValue := 64
    upperValue := 371293
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 28))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 31 28))) },
  { key := { q := 13, n := 35, r := 29 }
    lowerValue := 21
    upperValue := 28561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 29))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 32 29))) },
  { key := { q := 13, n := 35, r := 30 }
    lowerValue := 13
    upperValue := 2197
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 30 ≤ 31) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 32 31))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 33 30))) },
  { key := { q := 13, n := 35, r := 31 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 33 32)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 34 31))) },
  { key := { q := 13, n := 35, r := 32 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 34 33))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 35 32)) },
  { key := { q := 13, n := 35, r := 33 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 35 34)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 35 33)) },
  { key := { q := 13, n := 35, r := 34 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 35 34))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 35 34)) },
  { key := { q := 13, n := 35, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 35 35)) },
  { key := { q := 13, n := 35, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 35 36)) },
  { key := { q := 13, n := 35, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 35 37)) },
  { key := { q := 13, n := 35, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 35 38)) },
  { key := { q := 13, n := 35, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 35 39)) },
  { key := { q := 13, n := 35, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 35 40)) },
  { key := { q := 13, n := 35, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 35 41)) },
  { key := { q := 13, n := 35, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 35 42)) },
  { key := { q := 13, n := 35, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 35 43)) },
  { key := { q := 13, n := 35, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 35 44)) },
  { key := { q := 13, n := 35, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 35 45)) },
  { key := { q := 13, n := 35, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 35 46)) },
  { key := { q := 13, n := 35, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 35 47)) },
  { key := { q := 13, n := 35, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 35 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 35 48)) },
  { key := { q := 13, n := 36, r := 0 }
    lowerValue := 12646218552730347184269489080961456410641
    upperValue := 12646218552730347184269489080961456410641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 36 0)) },
  { key := { q := 13, n := 36, r := 1 }
    lowerValue := 29206047465889947307781729979125765383
    upperValue := 489271086473408971626266077324407735505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 1))
    upperTrace := (.lengthenFreeN 33 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 36, r := 2 }
    lowerValue := 138736174922716171538725978091356910
    upperValue := 37636237421031459355866621332646748885
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 2))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 1 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 36, r := 3 }
    lowerValue := 1017470776197898844448776596690796
    upperValue := 2895095186233189181220509333280519145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 3))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 2 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 36, r := 4 }
    lowerValue := 10249121662762784463002947800976
    upperValue := 222699629710245321632346871790809165
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 4))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 3 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 36, r := 5 }
    lowerValue := 133059884737152077664899620136
    upperValue := 17130740746941947817872836291600705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 5))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 4 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 36, r := 6 }
    lowerValue := 2139395634146383609010697822
    upperValue := 1317749288226303678297910483969285
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 6))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 5 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 36, r := 7 }
    lowerValue := 41459805743769243629773539
    upperValue := 101365329863561821407531575689945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 7))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 6 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 36, r := 8 }
    lowerValue := 949671341643544180906432
    upperValue := 7797333066427832415963967360765
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 8))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 7 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 36, r := 9 }
    lowerValue := 25339311673974512535180
    upperValue := 599794851263679416612612873905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 9))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 8 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 36, r := 10 }
    lowerValue := 778820488064376163296
    upperValue := 46138065481821493585585605685
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 10))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 9 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 36, r := 11 }
    lowerValue := 27334840676677153272
    upperValue := 3549081960140114891198892745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 11))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 10 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 36, r := 12 }
    lowerValue := 1088059677977077630
    upperValue := 41753905413413116367045797
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 12))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 36, r := 13 }
    lowerValue := 48853220724925325
    upperValue := 3211838877954855105157369
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 13))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 36, r := 14 }
    lowerValue := 2463710209738720
    upperValue := 247064529073450392704413
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 14))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 36, r := 15 }
    lowerValue := 139095090321476
    upperValue := 19004963774880799438801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 15))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 36, r := 16 }
    lowerValue := 8769743597221
    upperValue := 1461920290375446110677
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 16))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 36, r := 17 }
    lowerValue := 616391694969
    upperValue := 112455406951957393129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 17))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 36, r := 18 }
    lowerValue := 48244645816
    upperValue := 8650415919381337933
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 18))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 36, r := 19 }
    lowerValue := 4203000203
    upperValue := 665416609183179841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 19))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 36, r := 20 }
    lowerValue := 407607470
    upperValue := 51185893014090757
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 20))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20))) },
  { key := { q := 13, n := 36, r := 21 }
    lowerValue := 44036244
    upperValue := 3937376385699289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 21))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 21))) },
  { key := { q := 13, n := 36, r := 22 }
    lowerValue := 5306922
    upperValue := 302875106592253
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 36 22))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 24 22))) }]

end CoveringCodes.Database
