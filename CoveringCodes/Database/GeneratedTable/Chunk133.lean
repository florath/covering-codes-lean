import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 133. Do not edit manually.

def precomputedTable_chunk_133 : Array AnyBoundEntry := #[
  { key := { q := 13, n := 41, r := 28 }
    lowerValue := 135220
    upperValue := 1792160394037
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 28))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 31 28))) },
  { key := { q := 13, n := 41, r := 29 }
    lowerValue := 24588
    upperValue := 137858491849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 29))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 32 29))) },
  { key := { q := 13, n := 41, r := 30 }
    lowerValue := 4991
    upperValue := 10604499373
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 30))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 33 30))) },
  { key := { q := 13, n := 41, r := 31 }
    lowerValue := 1136
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 31))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 34 31))) },
  { key := { q := 13, n := 41, r := 32 }
    lowerValue := 292
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 32))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 35 32))) },
  { key := { q := 13, n := 41, r := 33 }
    lowerValue := 85
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 33))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 36 33))) },
  { key := { q := 13, n := 41, r := 34 }
    lowerValue := 29
    upperValue := 371293
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 34))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 37 34))) },
  { key := { q := 13, n := 41, r := 35 }
    lowerValue := 13
    upperValue := 28561
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 37 36)))))))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 38 35))) },
  { key := { q := 13, n := 41, r := 36 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 38 37))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 40 36))) },
  { key := { q := 13, n := 41, r := 37 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 39 38)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 41 37)) },
  { key := { q := 13, n := 41, r := 38 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 40 39))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 41 38)) },
  { key := { q := 13, n := 41, r := 39 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 41 40)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 41 39)) },
  { key := { q := 13, n := 41, r := 40 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 41 40))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 41 40)) },
  { key := { q := 13, n := 41, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 41 41)) },
  { key := { q := 13, n := 41, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 41 42)) },
  { key := { q := 13, n := 41, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 41 43)) },
  { key := { q := 13, n := 41, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 41 44)) },
  { key := { q := 13, n := 41, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 41 45)) },
  { key := { q := 13, n := 41, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 41 46)) },
  { key := { q := 13, n := 41, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 41 47)) },
  { key := { q := 13, n := 41, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 41 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 41 48)) },
  { key := { q := 13, n := 42, r := 0 }
    lowerValue := 61040881526285814362156628321386486455989674569
    upperValue := 61040881526285814362156628321386486455989674569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 42 0)) },
  { key := { q := 13, n := 42, r := 1 }
    lowerValue := 120873032725318444281498273903735616744534010
    upperValue := 2361618083629628684926405738424147177405153545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 1))
    upperTrace := (.lengthenFreeN 39 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 42, r := 2 }
    lowerValue := 490331527494684786303662398455979937632961
    upperValue := 181662929509971437302031210648011321338857965
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 2))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 1 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 42, r := 3 }
    lowerValue := 3057864874997091431502267557478362259279
    upperValue := 13974071500767033638617785434462409333758305
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 3))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 2 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 42, r := 4 }
    lowerValue := 26075345250531455668184542818193903914
    upperValue := 1074928576982079510662906571881723794904485
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 4))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 3 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 42, r := 5 }
    lowerValue := 285218622260128361123880468888665518
    upperValue := 82686813614006116204838967067824907300345
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 5))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 4 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 42, r := 6 }
    lowerValue := 3844405346019035165683426127612212
    upperValue := 6360524124154316631141459005217300561565
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 6))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 5 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 42, r := 7 }
    lowerValue := 62124322473824661364177752288502
    upperValue := 489271086473408971626266077324407735505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 7))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 6 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 42, r := 8 }
    lowerValue := 1179912899962995782180419250697
    upperValue := 37636237421031459355866621332646748885
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 8))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 7 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 42, r := 9 }
    lowerValue := 25947932661362220093827042694
    upperValue := 2895095186233189181220509333280519145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 9))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 8 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 42, r := 10 }
    lowerValue := 653120913526302081549967316
    upperValue := 222699629710245321632346871790809165
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 10))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 9 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 42, r := 11 }
    lowerValue := 18644396247491853566556671
    upperValue := 17130740746941947817872836291600705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 11))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 10 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 42, r := 12 }
    lowerValue := 599208210562192179109118
    upperValue := 201538126434611150798503956371773
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 12))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 42, r := 13 }
    lowerValue := 21552460830520683278998
    upperValue := 15502932802662396215269535105521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 13))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 42, r := 14 }
    lowerValue := 863373624363528241395
    upperValue := 1192533292512492016559195008117
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 14))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 42, r := 15 }
    lowerValue := 38367600176748980525
    upperValue := 91733330193268616658399616009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 15))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 42, r := 16 }
    lowerValue := 1885375847221165731
    upperValue := 7056410014866816666030739693
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 16))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 42, r := 17 }
    lowerValue := 102182403164386288
    upperValue := 542800770374370512771595361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 17))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 42, r := 18 }
    lowerValue := 6095573800662471
    upperValue := 41753905413413116367045797
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 18))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 42, r := 19 }
    lowerValue := 399613641809420
    upperValue := 3211838877954855105157369
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 19))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 42, r := 20 }
    lowerValue := 28758907994979
    upperValue := 247064529073450392704413
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 20))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20))) },
  { key := { q := 13, n := 42, r := 21 }
    lowerValue := 2270433537233
    upperValue := 19004963774880799438801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 21))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 21))) },
  { key := { q := 13, n := 42, r := 22 }
    lowerValue := 196570216162
    upperValue := 1461920290375446110677
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 22))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 24 22))) },
  { key := { q := 13, n := 42, r := 23 }
    lowerValue := 18665231221
    upperValue := 112455406951957393129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 23))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 25 23))) },
  { key := { q := 13, n := 42, r := 24 }
    lowerValue := 1944713838
    upperValue := 665416609183179841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 24))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 27 24))) },
  { key := { q := 13, n := 42, r := 25 }
    lowerValue := 222512241
    upperValue := 51185893014090757
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 25))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 28 25))) },
  { key := { q := 13, n := 42, r := 26 }
    lowerValue := 27994579
    upperValue := 3937376385699289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 26))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 29 26))) },
  { key := { q := 13, n := 42, r := 27 }
    lowerValue := 3879272
    upperValue := 302875106592253
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 27))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 30 27))) },
  { key := { q := 13, n := 42, r := 28 }
    lowerValue := 593365
    upperValue := 23298085122481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 28))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 31 28))) },
  { key := { q := 13, n := 42, r := 29 }
    lowerValue := 100452
    upperValue := 1792160394037
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 29))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 32 29))) },
  { key := { q := 13, n := 42, r := 30 }
    lowerValue := 18883
    upperValue := 137858491849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 30))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 33 30))) },
  { key := { q := 13, n := 42, r := 31 }
    lowerValue := 3958
    upperValue := 10604499373
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 31))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 34 31))) },
  { key := { q := 13, n := 42, r := 32 }
    lowerValue := 929
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 32))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 35 32))) },
  { key := { q := 13, n := 42, r := 33 }
    lowerValue := 246
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 33))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 36 33))) },
  { key := { q := 13, n := 42, r := 34 }
    lowerValue := 74
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 34))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 37 34))) },
  { key := { q := 13, n := 42, r := 35 }
    lowerValue := 26
    upperValue := 371293
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 35))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 38 35))) },
  { key := { q := 13, n := 42, r := 36 }
    lowerValue := 13
    upperValue := 2197
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 38 37)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 40 36))) },
  { key := { q := 13, n := 42, r := 37 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 39 38))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 41 37))) },
  { key := { q := 13, n := 42, r := 38 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 40 39)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 42 38)) },
  { key := { q := 13, n := 42, r := 39 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 41 40))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 42 39)) },
  { key := { q := 13, n := 42, r := 40 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 42 41)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 42 40)) },
  { key := { q := 13, n := 42, r := 41 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 42 41))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 42 41)) },
  { key := { q := 13, n := 42, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 42 42)) },
  { key := { q := 13, n := 42, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 42 43)) },
  { key := { q := 13, n := 42, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 42 44)) },
  { key := { q := 13, n := 42, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 42 45)) },
  { key := { q := 13, n := 42, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 42 46)) },
  { key := { q := 13, n := 42, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 42 47)) },
  { key := { q := 13, n := 42, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 42 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 42 48)) },
  { key := { q := 13, n := 43, r := 0 }
    lowerValue := 793531459841715586708036168178024323927865769397
    upperValue := 793531459841715586708036168178024323927865769397
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 43 0)) },
  { key := { q := 13, n := 43, r := 1 }
    lowerValue := 1534877098339875409493300131872387473748289690
    upperValue := 30701035087185172904043274599513913306266996085
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 1))
    upperTrace := (.lengthenFreeN 40 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 43, r := 2 }
    lowerValue := 6078418523632625195965010595087088556234562
    upperValue := 2361618083629628684926405738424147177405153545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 2))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 1 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 43, r := 3 }
    lowerValue := 36984478359937670304581841829414415317589
    upperValue := 181662929509971437302031210648011321338857965
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 3))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 2 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 43, r := 4 }
    lowerValue := 307512459307950153626082150622951277355
    upperValue := 13974071500767033638617785434462409333758305
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 4))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 3 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 43, r := 5 }
    lowerValue := 3277624420193348199720835062983661639
    upperValue := 1074928576982079510662906571881723794904485
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 5))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 4 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 43, r := 6 }
    lowerValue := 43019115758165189475255129070469532
    upperValue := 82686813614006116204838967067824907300345
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 6))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 5 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 43, r := 7 }
    lowerValue := 676443035815023261933532929972201
    upperValue := 6360524124154316631141459005217300561565
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 7))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 6 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 43, r := 8 }
    lowerValue := 12491817307917007067657452488175
    upperValue := 489271086473408971626266077324407735505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 8))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 7 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 43, r := 9 }
    lowerValue := 266891359443327637663011879261
    upperValue := 37636237421031459355866621332646748885
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 9))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 8 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 43, r := 10 }
    lowerValue := 6520949702533500167127678102
    upperValue := 2895095186233189181220509333280519145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 10))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 9 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 43, r := 11 }
    lowerValue := 180533642166876946874017579
    upperValue := 222699629710245321632346871790809165
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 11))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 10 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 43, r := 12 }
    lowerValue := 5621636175850047179387242
    upperValue := 2619995643649944960380551432833049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 12))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 43, r := 13 }
    lowerValue := 195709912732055201422869
    upperValue := 201538126434611150798503956371773
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 13))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 43, r := 14 }
    lowerValue := 7580050854227843598823
    upperValue := 15502932802662396215269535105521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 14))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 43, r := 15 }
    lowerValue := 325303972125966717405
    upperValue := 1192533292512492016559195008117
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 15))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 43, r := 16 }
    lowerValue := 15418150014213563811
    upperValue := 91733330193268616658399616009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 16))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 43, r := 17 }
    lowerValue := 804893777751226290
    upperValue := 7056410014866816666030739693
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 17))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 43, r := 18 }
    lowerValue := 46182728463254455
    upperValue := 542800770374370512771595361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 18))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 43, r := 19 }
    lowerValue := 2907588789606367
    upperValue := 41753905413413116367045797
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 19))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 43, r := 20 }
    lowerValue := 200614684147039
    upperValue := 3211838877954855105157369
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 20))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20))) },
  { key := { q := 13, n := 43, r := 21 }
    lowerValue := 15156699266930
    upperValue := 247064529073450392704413
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 21))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 21))) },
  { key := { q := 13, n := 43, r := 22 }
    lowerValue := 1253305005173
    upperValue := 19004963774880799438801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 22))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 24 22))) },
  { key := { q := 13, n := 43, r := 23 }
    lowerValue := 113415840589
    upperValue := 1461920290375446110677
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 23))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 25 23))) },
  { key := { q := 13, n := 43, r := 24 }
    lowerValue := 11234779588
    upperValue := 8650415919381337933
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 24))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 27 24))) },
  { key := { q := 13, n := 43, r := 25 }
    lowerValue := 1218973784
    upperValue := 665416609183179841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 25))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 28 25))) },
  { key := { q := 13, n := 43, r := 26 }
    lowerValue := 145007042
    upperValue := 51185893014090757
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 26))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 29 26))) },
  { key := { q := 13, n := 43, r := 27 }
    lowerValue := 18938435
    upperValue := 3937376385699289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 27))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 30 27))) },
  { key := { q := 13, n := 43, r := 28 }
    lowerValue := 2720424
    upperValue := 302875106592253
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 28))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 31 28))) },
  { key := { q := 13, n := 43, r := 29 }
    lowerValue := 430767
    upperValue := 23298085122481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 29))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 32 29))) },
  { key := { q := 13, n := 43, r := 30 }
    lowerValue := 75398
    upperValue := 1792160394037
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 30))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 33 30))) },
  { key := { q := 13, n := 43, r := 31 }
    lowerValue := 14637
    upperValue := 137858491849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 31))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 34 31))) },
  { key := { q := 13, n := 43, r := 32 }
    lowerValue := 3164
    upperValue := 10604499373
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 32))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 35 32))) },
  { key := { q := 13, n := 43, r := 33 }
    lowerValue := 765
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 33))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 36 33))) },
  { key := { q := 13, n := 43, r := 34 }
    lowerValue := 209
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 34))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 37 34))) },
  { key := { q := 13, n := 43, r := 35 }
    lowerValue := 65
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 35))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 38 35))) },
  { key := { q := 13, n := 43, r := 36 }
    lowerValue := 23
    upperValue := 28561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 36))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 40 36))) },
  { key := { q := 13, n := 43, r := 37 }
    lowerValue := 13
    upperValue := 2197
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 39 38)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 41 37))) },
  { key := { q := 13, n := 43, r := 38 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 40 39))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 42 38))) },
  { key := { q := 13, n := 43, r := 39 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 41 40)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 43 39)) },
  { key := { q := 13, n := 43, r := 40 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 42 41))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 43 40)) },
  { key := { q := 13, n := 43, r := 41 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 43 42)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 43 41)) },
  { key := { q := 13, n := 43, r := 42 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 43 42))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 43 42)) },
  { key := { q := 13, n := 43, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 43 43)) },
  { key := { q := 13, n := 43, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 43 44)) },
  { key := { q := 13, n := 43, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 43 45)) },
  { key := { q := 13, n := 43, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 43 46)) },
  { key := { q := 13, n := 43, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 43 47)) },
  { key := { q := 13, n := 43, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 43 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 43 48)) },
  { key := { q := 13, n := 44, r := 0 }
    lowerValue := 10315908977942302627204470186314316211062255002161
    upperValue := 10315908977942302627204470186314316211062255002161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 44 0)) },
  { key := { q := 13, n := 44, r := 1 }
    lowerValue := 19500773115202840505112420011936325540760406432
    upperValue := 399113456133407247752562569793680872981470949105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 1))
    upperTrace := (.lengthenFreeN 41 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 44, r := 2 }
    lowerValue := 75434608220238697704653427612661632366838425
    upperValue := 30701035087185172904043274599513913306266996085
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 2))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 1 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 44, r := 3 }
    lowerValue := 448081681282903688180198106595572796261650
    upperValue := 2361618083629628684926405738424147177405153545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 3))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 2 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 44, r := 4 }
    lowerValue := 3634979602604611670039326949002276421504
    upperValue := 181662929509971437302031210648011321338857965
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 4))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 3 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 44, r := 5 }
    lowerValue := 37777318621391400869580144099223011350
    upperValue := 13974071500767033638617785434462409333758305
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 5))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 4 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 44, r := 6 }
    lowerValue := 483151604836223782462661007865916049
    upperValue := 1074928576982079510662906571881723794904485
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 6))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 5 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 44, r := 7 }
    lowerValue := 7397851985635454793736054251877078
    upperValue := 82686813614006116204838967067824907300345
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 7))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 6 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 44, r := 8 }
    lowerValue := 132934860738499211413578406624684
    upperValue := 6360524124154316631141459005217300561565
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 8))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 7 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 44, r := 9 }
    lowerValue := 2761567283188205091135570173862
    upperValue := 489271086473408971626266077324407735505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 9))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 8 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 44, r := 10 }
    lowerValue := 65552604878941239674181535480
    upperValue := 37636237421031459355866621332646748885
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 10))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 9 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 44, r := 11 }
    lowerValue := 1761671211323387137564535909
    upperValue := 2895095186233189181220509333280519145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 11))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 10 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 44, r := 12 }
    lowerValue := 53201554884825682788019513
    upperValue := 34059943367449284484947168626829637
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 12))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 44, r := 13 }
    lowerValue := 1794535840167613771858761
    upperValue := 2619995643649944960380551432833049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 13))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 44, r := 14 }
    lowerValue := 67273691012064600917116
    upperValue := 201538126434611150798503956371773
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 14))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 44, r := 15 }
    lowerValue := 2791406306797594107882
    upperValue := 15502932802662396215269535105521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 15))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 44, r := 16 }
    lowerValue := 127767644438386334530
    upperValue := 1192533292512492016559195008117
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 16))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 44, r := 17 }
    lowerValue := 6433403161579013065
    upperValue := 91733330193268616658399616009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 17))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 44, r := 18 }
    lowerValue := 355561234159442114
    upperValue := 7056410014866816666030739693
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 18))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 44, r := 19 }
    lowerValue := 21531556639806964
    upperValue := 542800770374370512771595361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 19))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 44, r := 20 }
    lowerValue := 1426719665591440
    upperValue := 41753905413413116367045797
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 20))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20))) },
  { key := { q := 13, n := 44, r := 21 }
    lowerValue := 103343902228590
    upperValue := 3211838877954855105157369
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 21))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 21))) },
  { key := { q := 13, n := 44, r := 22 }
    lowerValue := 8178057791678
    upperValue := 247064529073450392704413
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 22))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 24 22))) },
  { key := { q := 13, n := 44, r := 23 }
    lowerValue := 706836934464
    upperValue := 19004963774880799438801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 23))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 25 23))) },
  { key := { q := 13, n := 44, r := 24 }
    lowerValue := 66730098597
    upperValue := 112455406951957393129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 24))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 27 24))) },
  { key := { q := 13, n := 44, r := 25 }
    lowerValue := 6883865216
    upperValue := 8650415919381337933
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 25))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 28 25))) },
  { key := { q := 13, n := 44, r := 26 }
    lowerValue := 776556913
    upperValue := 665416609183179841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 26))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 29 26))) },
  { key := { q := 13, n := 44, r := 27 }
    lowerValue := 95900422
    upperValue := 51185893014090757
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 27))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 30 27))) },
  { key := { q := 13, n := 44, r := 28 }
    lowerValue := 12984135
    upperValue := 3937376385699289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 28))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 31 28))) },
  { key := { q := 13, n := 44, r := 29 }
    lowerValue := 1930927
    upperValue := 302875106592253
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 29))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 32 29))) },
  { key := { q := 13, n := 44, r := 30 }
    lowerValue := 316146
    upperValue := 23298085122481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 30))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 33 30))) },
  { key := { q := 13, n := 44, r := 31 }
    lowerValue := 57148
    upperValue := 1792160394037
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 31))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 34 31))) },
  { key := { q := 13, n := 44, r := 32 }
    lowerValue := 11444
    upperValue := 137858491849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 32))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 35 32))) },
  { key := { q := 13, n := 44, r := 33 }
    lowerValue := 2549
    upperValue := 10604499373
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 33))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 36 33))) },
  { key := { q := 13, n := 44, r := 34 }
    lowerValue := 635
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 34))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 37 34))) },
  { key := { q := 13, n := 44, r := 35 }
    lowerValue := 178
    upperValue := 62748517
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 35))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 38 35))) },
  { key := { q := 13, n := 44, r := 36 }
    lowerValue := 57
    upperValue := 371293
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 36))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 40 36))) },
  { key := { q := 13, n := 44, r := 37 }
    lowerValue := 21
    upperValue := 28561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 37))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 41 37))) },
  { key := { q := 13, n := 44, r := 38 }
    lowerValue := 13
    upperValue := 2197
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 40 39)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 42 38))) },
  { key := { q := 13, n := 44, r := 39 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 41 40))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 43 39))) },
  { key := { q := 13, n := 44, r := 40 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 42 41)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 44 40)) },
  { key := { q := 13, n := 44, r := 41 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 43 42))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 44 41)) },
  { key := { q := 13, n := 44, r := 42 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 44 43)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 44 42)) },
  { key := { q := 13, n := 44, r := 43 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 44 43))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 44 43)) },
  { key := { q := 13, n := 44, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 44 44)) },
  { key := { q := 13, n := 44, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 44 45)) },
  { key := { q := 13, n := 44, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 44 46)) },
  { key := { q := 13, n := 44, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 44 47)) },
  { key := { q := 13, n := 44, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 44 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 44 48)) },
  { key := { q := 13, n := 45, r := 0 }
    lowerValue := 134106816713249934153658112422086110743809315028093
    upperValue := 134106816713249934153658112422086110743809315028093
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 45 0)) },
  { key := { q := 13, n := 45, r := 1 }
    lowerValue := 247886907048521135219331076565778393241791709849
    upperValue := 5188474929734294220783313407317851348759122338365
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 1))
    upperTrace := (.lengthenFreeN 42 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 45, r := 2 }
    lowerValue := 937148005347621149772944370913453510064984278
    upperValue := 399113456133407247752562569793680872981470949105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 2))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 1 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 45, r := 3 }
    lowerValue := 5437478309000601909753643357995069327317136
    upperValue := 30701035087185172904043274599513913306266996085
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 3))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 2 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 45, r := 4 }
    lowerValue := 43062678813882285586768992659248406501635
    upperValue := 2361618083629628684926405738424147177405153545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 4))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 3 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 45, r := 5 }
    lowerValue := 436649446371971569368082152100478088975
    upperValue := 181662929509971437302031210648011321338857965
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 5))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 4 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 45, r := 6 }
    lowerValue := 5445266477295082865144313903714623864
    upperValue := 13974071500767033638617785434462409333758305
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 6))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 5 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 45, r := 7 }
    lowerValue := 81244263575510439499026165528921219
    upperValue := 1074928576982079510662906571881723794904485
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 7))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 6 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 45, r := 8 }
    lowerValue := 1421608089125973152557031251252486
    upperValue := 82686813614006116204838967067824907300345
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 8))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 7 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 45, r := 9 }
    lowerValue := 28736712823179708400445929501476
    upperValue := 6360524124154316631141459005217300561565
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 9))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 8 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 45, r := 10 }
    lowerValue := 663255747618829400271802786970
    upperValue := 489271086473408971626266077324407735505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 10))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 9 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 45, r := 11 }
    lowerValue := 17317126837334843823719862207
    upperValue := 37636237421031459355866621332646748885
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 11))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 10 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 45, r := 12 }
    lowerValue := 507650748647550556036792698
    upperValue := 442779263776840698304313192148785281
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 12))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 45, r := 13 }
    lowerValue := 16606956628266405484251445
    upperValue := 34059943367449284484947168626829637
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 13))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 45, r := 14 }
    lowerValue := 603202975328203580053048
    upperValue := 2619995643649944960380551432833049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 14))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 45, r := 15 }
    lowerValue := 24225790823089280106550
    upperValue := 201538126434611150798503956371773
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 15))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 45, r := 16 }
    lowerValue := 1072110477138777554454
    upperValue := 15502932802662396215269535105521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 16))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 45, r := 17 }
    lowerValue := 52133624915730298514
    upperValue := 1192533292512492016559195008117
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 17))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 45, r := 18 }
    lowerValue := 2779131826423022197
    upperValue := 91733330193268616658399616009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 18))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 45, r := 19 }
    lowerValue := 162109070995034592
    upperValue := 7056410014866816666030739693
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 19))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 45, r := 20 }
    lowerValue := 10331973728096788
    upperValue := 542800770374370512771595361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 20))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20))) },
  { key := { q := 13, n := 45, r := 21 }
    lowerValue := 718735073308415
    upperValue := 41753905413413116367045797
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 21))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 21))) },
  { key := { q := 13, n := 45, r := 22 }
    lowerValue := 54531212910203
    upperValue := 3211838877954855105157369
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 22))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 24 22))) },
  { key := { q := 13, n := 45, r := 23 }
    lowerValue := 4510608481168
    upperValue := 247064529073450392704413
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 23))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 25 23))) },
  { key := { q := 13, n := 45, r := 24 }
    lowerValue := 406723032552
    upperValue := 1461920290375446110677
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 24))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 27 24))) },
  { key := { q := 13, n := 45, r := 25 }
    lowerValue := 39988173097
    upperValue := 112455406951957393129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 25))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 28 25))) },
  { key := { q := 13, n := 45, r := 26 }
    lowerValue := 4289095136
    upperValue := 8650415919381337933
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 26))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 29 26))) },
  { key := { q := 13, n := 45, r := 27 }
    lowerValue := 502312370
    upperValue := 665416609183179841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 27))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 30 27))) },
  { key := { q := 13, n := 45, r := 28 }
    lowerValue := 64309680
    upperValue := 51185893014090757
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 28))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 31 28))) },
  { key := { q := 13, n := 45, r := 29 }
    lowerValue := 9014689
    upperValue := 3937376385699289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 29))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 32 29))) },
  { key := { q := 13, n := 45, r := 30 }
    lowerValue := 1386263
    upperValue := 302875106592253
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 30))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 33 30))) },
  { key := { q := 13, n := 45, r := 31 }
    lowerValue := 234422
    upperValue := 23298085122481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 31))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 34 31))) },
  { key := { q := 13, n := 45, r := 32 }
    lowerValue := 43718
    upperValue := 1792160394037
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 32))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 35 32))) },
  { key := { q := 13, n := 45, r := 33 }
    lowerValue := 9022
    upperValue := 137858491849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 33))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 36 33))) },
  { key := { q := 13, n := 45, r := 34 }
    lowerValue := 2069
    upperValue := 10604499373
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 34))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 37 34))) },
  { key := { q := 13, n := 45, r := 35 }
    lowerValue := 530
    upperValue := 815730721
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 35))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 38 35))) },
  { key := { q := 13, n := 45, r := 36 }
    lowerValue := 153
    upperValue := 4826809
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 36))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 40 36))) },
  { key := { q := 13, n := 45, r := 37 }
    lowerValue := 50
    upperValue := 371293
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 37))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 41 37))) },
  { key := { q := 13, n := 45, r := 38 }
    lowerValue := 19
    upperValue := 28561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 38))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 42 38))) },
  { key := { q := 13, n := 45, r := 39 }
    lowerValue := 13
    upperValue := 2197
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 41 40)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 43 39))) },
  { key := { q := 13, n := 45, r := 40 }
    lowerValue := 13
    upperValue := 169
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 42 41))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 44 40))) },
  { key := { q := 13, n := 45, r := 41 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 43 42)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 45 41)) },
  { key := { q := 13, n := 45, r := 42 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.lengthBack (by decide : 0 < 13) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 44 43))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 45 42)) },
  { key := { q := 13, n := 45, r := 43 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 45 44)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 45 43)) },
  { key := { q := 13, n := 45, r := 44 }
    lowerValue := 13
    upperValue := 13
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 13 45 44))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 45 44)) },
  { key := { q := 13, n := 45, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 45 45)) },
  { key := { q := 13, n := 45, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 45 46)) },
  { key := { q := 13, n := 45, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 45 47)) },
  { key := { q := 13, n := 45, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 45 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 13 45 48)) },
  { key := { q := 13, n := 46, r := 0 }
    lowerValue := 1743388617272249143997555461487119439669521095365209
    upperValue := 1743388617272249143997555461487119439669521095365209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 13 46 0)) },
  { key := { q := 13, n := 46, r := 1 }
    lowerValue := 3152601477888334799272252190754284701029875398491
    upperValue := 67450174086545824870183074295132067533868590398745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 1))
    upperTrace := (.lengthenFreeN 43 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))) },
  { key := { q := 13, n := 46, r := 2 }
    lowerValue := 11654212545187603323668590518855290285437962307
    upperValue := 5188474929734294220783313407317851348759122338365
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 2))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 1 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 46, r := 3 }
    lowerValue := 66085928160717339269211449986325932348534666
    upperValue := 399113456133407247752562569793680872981470949105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 3))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 2 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 46, r := 4 }
    lowerValue := 511229954708278222035211410165689352327577
    upperValue := 30701035087185172904043274599513913306266996085
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 4))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 3 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 46, r := 5 }
    lowerValue := 5060669200570521668730257962434013703197
    upperValue := 2361618083629628684926405738424147177405153545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 5))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 4 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 46, r := 6 }
    lowerValue := 61574096887436469153206533323911363502
    upperValue := 181662929509971437302031210648011321338857965
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 6))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 5 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 46, r := 7 }
    lowerValue := 895791214892108491899949001215375772
    upperValue := 13974071500767033638617785434462409333758305
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 7))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 6 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 46, r := 8 }
    lowerValue := 15273785811728875581415330895529705
    upperValue := 1074928576982079510662906571881723794904485
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 8))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 7 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 46, r := 9 }
    lowerValue := 300648686481483534003054208663940
    upperValue := 82686813614006116204838967067824907300345
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 9))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 8 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 46, r := 10 }
    lowerValue := 6752200313002112557571171891803
    upperValue := 6360524124154316631141459005217300561565
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 10))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 9 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 46, r := 11 }
    lowerValue := 171416059916765326390523810242
    upperValue := 489271086473408971626266077324407735505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 11))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 10 (by decide : 0 < 13) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 13 3 1))))) },
  { key := { q := 13, n := 46, r := 12 }
    lowerValue := 4882053678883221831014761189
    upperValue := 5756130429098929077956071497934208653
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 12))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 14 12))) },
  { key := { q := 13, n := 46, r := 13 }
    lowerValue := 155031312923367542651671837
    upperValue := 442779263776840698304313192148785281
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 13))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 15 13))) },
  { key := { q := 13, n := 46, r := 14 }
    lowerValue := 5461254385202066384267499
    upperValue := 34059943367449284484947168626829637
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 14))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 16 14))) },
  { key := { q := 13, n := 46, r := 15 }
    lowerValue := 212515101588314738917531
    upperValue := 2619995643649944960380551432833049
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 15))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 17 15))) },
  { key := { q := 13, n := 46, r := 16 }
    lowerValue := 9103134267081561143926
    upperValue := 201538126434611150798503956371773
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 16))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 18 16))) },
  { key := { q := 13, n := 46, r := 17 }
    lowerValue := 427992630973854379614
    upperValue := 15502932802662396215269535105521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 17))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 19 17))) },
  { key := { q := 13, n := 46, r := 18 }
    lowerValue := 22033810859193557183
    upperValue := 1192533292512492016559195008117
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 18))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 20 18))) },
  { key := { q := 13, n := 46, r := 19 }
    lowerValue := 1239679492225738212
    upperValue := 91733330193268616658399616009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 19))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 21 19))) },
  { key := { q := 13, n := 46, r := 20 }
    lowerValue := 76107437806888196
    upperValue := 7056410014866816666030739693
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 20))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 22 20))) },
  { key := { q := 13, n := 46, r := 21 }
    lowerValue := 5092494624264448
    upperValue := 542800770374370512771595361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 21))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 23 21))) },
  { key := { q := 13, n := 46, r := 22 }
    lowerValue := 371066831472459
    upperValue := 41753905413413116367045797
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 22))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 24 22))) },
  { key := { q := 13, n := 46, r := 23 }
    lowerValue := 29427941087059
    upperValue := 3211838877954855105157369
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 23))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 25 23))) },
  { key := { q := 13, n := 46, r := 24 }
    lowerValue := 2539523505789
    upperValue := 19004963774880799438801
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 24))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 27 24))) },
  { key := { q := 13, n := 46, r := 25 }
    lowerValue := 238481782488
    upperValue := 1461920290375446110677
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 25))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 28 25))) },
  { key := { q := 13, n := 46, r := 26 }
    lowerValue := 24379351504
    upperValue := 112455406951957393129
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 26))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 29 26))) },
  { key := { q := 13, n := 46, r := 27 }
    lowerValue := 2714788865
    upperValue := 8650415919381337933
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 27))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 30 27))) },
  { key := { q := 13, n := 46, r := 28 }
    lowerValue := 329620657
    upperValue := 665416609183179841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 28))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 31 28))) },
  { key := { q := 13, n := 46, r := 29 }
    lowerValue := 43693489
    upperValue := 51185893014090757
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 29))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 32 29))) },
  { key := { q := 13, n := 46, r := 30 }
    lowerValue := 6333663
    upperValue := 3937376385699289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 30))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 33 30))) },
  { key := { q := 13, n := 46, r := 31 }
    lowerValue := 1006022
    upperValue := 302875106592253
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 31))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 34 31))) },
  { key := { q := 13, n := 46, r := 32 }
    lowerValue := 175524
    upperValue := 23298085122481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 13 46 32))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 13 35 32))) }]

end CoveringCodes.Database
