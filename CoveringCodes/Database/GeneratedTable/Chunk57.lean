import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 57. Do not edit manually.

def precomputedTable_chunk_57 : Array AnyBoundEntry := #[
  { key := { q := 5, n := 45, r := 40 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 42 41))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 45 40)) },
  { key := { q := 5, n := 45, r := 41 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 43 42)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 45 41)) },
  { key := { q := 5, n := 45, r := 42 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 44 43))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 45 42)) },
  { key := { q := 5, n := 45, r := 43 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 45 44)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 45 43)) },
  { key := { q := 5, n := 45, r := 44 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 45 44))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 45 44)) },
  { key := { q := 5, n := 45, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 45 45)) },
  { key := { q := 5, n := 45, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 45 46)) },
  { key := { q := 5, n := 45, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 45 47)) },
  { key := { q := 5, n := 45, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 45 48)) },
  { key := { q := 5, n := 46, r := 0 }
    lowerValue := 142108547152020037174224853515625
    upperValue := 142108547152020037174224853515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 46 0)) },
  { key := { q := 5, n := 46, r := 1 }
    lowerValue := 768154308929838038779593802788
    upperValue := 14779288903810083866119384765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 1))
    upperTrace := (.lengthenFreeN 43 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 46, r := 2 }
    lowerValue := 8486625688385789022049856884
    upperValue := 2955857780762016773223876953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 2))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))))) },
  { key := { q := 5, n := 46, r := 3 }
    lowerValue := 143795993131417218230155732
    upperValue := 591171556152403354644775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 3))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 2 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))))) },
  { key := { q := 5, n := 46, r := 4 }
    lowerValue := 3323117419349272592635093
    upperValue := 45474735088646411895751953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 4))
    upperTrace := (.lengthenFreeN 40 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 46, r := 5 }
    lowerValue := 98248757316998241596287
    upperValue := 9094947017729282379150390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 5))
    upperTrace := (.lengthenFreeN 39 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 46, r := 6 }
    lowerValue := 3569409023309524909648
    upperValue := 1818989403545856475830078125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 6))
    upperTrace := (.lengthenFreeN 38 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 46, r := 7 }
    lowerValue := 155011509337671137325
    upperValue := 363797880709171295166015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 7))
    upperTrace := (.lengthenFreeN 37 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 46, r := 8 }
    lowerValue := 7887358715106306679
    upperValue := 14551915228366851806640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 8))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 46, r := 9 }
    lowerValue := 463157430441977609
    upperValue := 2910383045673370361328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 9))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 46, r := 10 }
    lowerValue := 31020015413133228
    upperValue := 582076609134674072265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 10))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 46, r := 11 }
    lowerValue := 2347485776189676
    upperValue := 116415321826934814453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 11))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 46, r := 12 }
    lowerValue := 199213402387261
    upperValue := 4656612873077392578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 12))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 46, r := 13 }
    lowerValue := 18840379777627
    upperValue := 931322574615478515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 13))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 46, r := 14 }
    lowerValue := 1975529683375
    upperValue := 186264514923095703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 14))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 46, r := 15 }
    lowerValue := 228687360828
    upperValue := 37252902984619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 15))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 46, r := 16 }
    lowerValue := 29121538641
    upperValue := 1490116119384765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 16))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 46, r := 17 }
    lowerValue := 4067289326
    upperValue := 298023223876953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 17))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17))) },
  { key := { q := 5, n := 46, r := 18 }
    lowerValue := 621493971
    upperValue := 59604644775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 18))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 18))) },
  { key := { q := 5, n := 46, r := 19 }
    lowerValue := 103685956
    upperValue := 11920928955078125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 19))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 19))) },
  { key := { q := 5, n := 46, r := 20 }
    lowerValue := 18855079
    upperValue := 476837158203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 20))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 20))) },
  { key := { q := 5, n := 46, r := 21 }
    lowerValue := 3732349
    upperValue := 95367431640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 21))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 21))) },
  { key := { q := 5, n := 46, r := 22 }
    lowerValue := 803401
    upperValue := 19073486328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 22))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 28 22))) },
  { key := { q := 5, n := 46, r := 23 }
    lowerValue := 187910
    upperValue := 3814697265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 23))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 29 23))) },
  { key := { q := 5, n := 46, r := 24 }
    lowerValue := 47733
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 24))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 31 24))) },
  { key := { q := 5, n := 46, r := 25 }
    lowerValue := 13165
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 25))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 32 25))) },
  { key := { q := 5, n := 46, r := 26 }
    lowerValue := 3942
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 26))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 33 26))) },
  { key := { q := 5, n := 46, r := 27 }
    lowerValue := 1282
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 27))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 34 27))) },
  { key := { q := 5, n := 46, r := 28 }
    lowerValue := 453
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 28))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 36 28))) },
  { key := { q := 5, n := 46, r := 29 }
    lowerValue := 174
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 29))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 37 29))) },
  { key := { q := 5, n := 46, r := 30 }
    lowerValue := 73
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 30))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 38 30))) },
  { key := { q := 5, n := 46, r := 31 }
    lowerValue := 33
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 31))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 39 31))) },
  { key := { q := 5, n := 46, r := 32 }
    lowerValue := 17
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 32))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 41 32))) },
  { key := { q := 5, n := 46, r := 33 }
    lowerValue := 9
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 33))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 42 33))) },
  { key := { q := 5, n := 46, r := 34 }
    lowerValue := 6
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 34))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 43 34))) },
  { key := { q := 5, n := 46, r := 35 }
    lowerValue := 5
    upperValue := 125
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 37 36))))))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 44 35))) },
  { key := { q := 5, n := 46, r := 36 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 38 37)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 46 36)) },
  { key := { q := 5, n := 46, r := 37 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 39 38))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 46 37)) },
  { key := { q := 5, n := 46, r := 38 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 40 39)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 46 38)) },
  { key := { q := 5, n := 46, r := 39 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 41 40))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 46 39)) },
  { key := { q := 5, n := 46, r := 40 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 42 41)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 46 40)) },
  { key := { q := 5, n := 46, r := 41 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 43 42))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 46 41)) },
  { key := { q := 5, n := 46, r := 42 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 44 43)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 46 42)) },
  { key := { q := 5, n := 46, r := 43 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 45 44))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 46 43)) },
  { key := { q := 5, n := 46, r := 44 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 46 45)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 46 44)) },
  { key := { q := 5, n := 46, r := 45 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 46 45))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 46 45)) },
  { key := { q := 5, n := 46, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 46 46)) },
  { key := { q := 5, n := 46, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 46 47)) },
  { key := { q := 5, n := 46, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 46 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 46 48)) },
  { key := { q := 5, n := 47, r := 0 }
    lowerValue := 710542735760100185871124267578125
    upperValue := 710542735760100185871124267578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 47 0)) },
  { key := { q := 5, n := 47, r := 1 }
    lowerValue := 3759485374392064475508594008350
    upperValue := 73896444519050419330596923828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 1))
    upperTrace := (.lengthenFreeN 44 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 47, r := 2 }
    lowerValue := 40637273992570785580275908927
    upperValue := 14779288903810083866119384765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 2))
    upperTrace := (.lengthenFreeN 42 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))))) },
  { key := { q := 5, n := 47, r := 3 }
    lowerValue := 673343854517292368948561015
    upperValue := 2955857780762016773223876953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 3))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 2 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))))) },
  { key := { q := 5, n := 47, r := 4 }
    lowerValue := 15209613776322103887960464
    upperValue := 227373675443232059478759765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 4))
    upperTrace := (.lengthenFreeN 41 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 47, r := 5 }
    lowerValue := 439292622847057773356759
    upperValue := 45474735088646411895751953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 5))
    upperTrace := (.lengthenFreeN 40 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 47, r := 6 }
    lowerValue := 15582566465883884759273
    upperValue := 9094947017729282379150390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 6))
    upperTrace := (.lengthenFreeN 39 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 47, r := 7 }
    lowerValue := 660347792416131637710
    upperValue := 1818989403545856475830078125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 7))
    upperTrace := (.lengthenFreeN 38 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 47, r := 8 }
    lowerValue := 32767613402996987056
    upperValue := 72759576141834259033203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 8))
    upperTrace := (.lengthenFreeN 36 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 47, r := 9 }
    lowerValue := 1875304482720276233
    upperValue := 14551915228366851806640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 9))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 47, r := 10 }
    lowerValue := 122328281354905934
    upperValue := 2910383045673370361328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 10))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 47, r := 11 }
    lowerValue := 9010037083714570
    upperValue := 582076609134674072265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 11))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 47, r := 12 }
    lowerValue := 743638919277437
    upperValue := 23283064365386962890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 12))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 47, r := 13 }
    lowerValue := 68346667228304
    upperValue := 4656612873077392578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 13))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 47, r := 14 }
    lowerValue := 6958910268101
    upperValue := 931322574615478515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 14))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 47, r := 15 }
    lowerValue := 781548510931
    upperValue := 186264514923095703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 15))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 47, r := 16 }
    lowerValue := 96469275858
    upperValue := 7450580596923828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 16))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 47, r := 17 }
    lowerValue := 13047357042
    upperValue := 1490116119384765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 17))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17))) },
  { key := { q := 5, n := 47, r := 18 }
    lowerValue := 1928653666
    upperValue := 298023223876953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 18))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 18))) },
  { key := { q := 5, n := 47, r := 19 }
    lowerValue := 310933439
    upperValue := 59604644775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 19))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 19))) },
  { key := { q := 5, n := 47, r := 20 }
    lowerValue := 54576728
    upperValue := 2384185791015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 20))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 20))) },
  { key := { q := 5, n := 47, r := 21 }
    lowerValue := 10415099
    upperValue := 476837158203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 21))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 21))) },
  { key := { q := 5, n := 47, r := 22 }
    lowerValue := 2158504
    upperValue := 95367431640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 22))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 28 22))) },
  { key := { q := 5, n := 47, r := 23 }
    lowerValue := 485412
    upperValue := 19073486328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 23))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 29 23))) },
  { key := { q := 5, n := 47, r := 24 }
    lowerValue := 118380
    upperValue := 762939453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 24))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 31 24))) },
  { key := { q := 5, n := 47, r := 25 }
    lowerValue := 31297
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 25))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 32 25))) },
  { key := { q := 5, n := 47, r := 26 }
    lowerValue := 8968
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 26))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 33 26))) },
  { key := { q := 5, n := 47, r := 27 }
    lowerValue := 2786
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 27))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 34 27))) },
  { key := { q := 5, n := 47, r := 28 }
    lowerValue := 938
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 28))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 36 28))) },
  { key := { q := 5, n := 47, r := 29 }
    lowerValue := 343
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 29))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 37 29))) },
  { key := { q := 5, n := 47, r := 30 }
    lowerValue := 136
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 30))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 38 30))) },
  { key := { q := 5, n := 47, r := 31 }
    lowerValue := 59
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 31))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 39 31))) },
  { key := { q := 5, n := 47, r := 32 }
    lowerValue := 28
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 32))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 41 32))) },
  { key := { q := 5, n := 47, r := 33 }
    lowerValue := 14
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 33))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 42 33))) },
  { key := { q := 5, n := 47, r := 34 }
    lowerValue := 8
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 34))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 43 34))) },
  { key := { q := 5, n := 47, r := 35 }
    lowerValue := 5
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 35))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 44 35))) },
  { key := { q := 5, n := 47, r := 36 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 38 37))))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 46 36))) },
  { key := { q := 5, n := 47, r := 37 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 39 38)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 47 37)) },
  { key := { q := 5, n := 47, r := 38 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 40 39))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 47 38)) },
  { key := { q := 5, n := 47, r := 39 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 41 40)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 47 39)) },
  { key := { q := 5, n := 47, r := 40 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 42 41))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 47 40)) },
  { key := { q := 5, n := 47, r := 41 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 43 42)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 47 41)) },
  { key := { q := 5, n := 47, r := 42 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 44 43))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 47 42)) },
  { key := { q := 5, n := 47, r := 43 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 45 44)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 47 43)) },
  { key := { q := 5, n := 47, r := 44 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 46 45))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 47 44)) },
  { key := { q := 5, n := 47, r := 45 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 47 46)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 47 45)) },
  { key := { q := 5, n := 47, r := 46 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 47 46))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 47 46)) },
  { key := { q := 5, n := 47, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 47 47)) },
  { key := { q := 5, n := 47, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 47 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 47 48)) },
  { key := { q := 5, n := 48, r := 0 }
    lowerValue := 3552713678800500929355621337890625
    upperValue := 3552713678800500929355621337890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 48 0)) },
  { key := { q := 5, n := 48, r := 1 }
    lowerValue := 18407842895339383053656069108242
    upperValue := 369482222595252096652984619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 1))
    upperTrace := (.lengthenFreeN 45 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 48, r := 2 }
    lowerValue := 194765291310810861759531897259
    upperValue := 73896444519050419330596923828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 2))
    upperTrace := (.lengthenFreeN 43 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))))) },
  { key := { q := 5, n := 48, r := 3 }
    lowerValue := 3157448489626595563712297390
    upperValue := 14779288903810083866119384765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 3))
    upperTrace := (.lengthenFreeN 42 (.lengthenDummyN 2 (by decide : 0 < 5) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))))) },
  { key := { q := 5, n := 48, r := 4 }
    lowerValue := 69746300282914439233828668
    upperValue := 1136868377216160297393798828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 4))
    upperTrace := (.lengthenFreeN 42 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 48, r := 5 }
    lowerValue := 1968985702554979102573304
    upperValue := 227373675443232059478759765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 5))
    upperTrace := (.lengthenFreeN 41 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 48, r := 6 }
    lowerValue := 68231600347049510598819
    upperValue := 45474735088646411895751953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 6))
    upperTrace := (.lengthenFreeN 40 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 48, r := 7 }
    lowerValue := 2823182969283283355854
    upperValue := 9094947017729282379150390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 7))
    upperTrace := (.lengthenFreeN 39 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 48, r := 8 }
    lowerValue := 136704083346629683153
    upperValue := 363797880709171295166015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 8))
    upperTrace := (.lengthenFreeN 37 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 48, r := 9 }
    lowerValue := 7629877782297113117
    upperValue := 72759576141834259033203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 9))
    upperTrace := (.lengthenFreeN 36 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 48, r := 10 }
    lowerValue := 485073725237078425
    upperValue := 14551915228366851806640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 10))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 48, r := 11 }
    lowerValue := 34798045088717867
    upperValue := 2910383045673370361328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 11))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 48, r := 12 }
    lowerValue := 2795344978881986
    upperValue := 116415321826934814453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 12))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 48, r := 13 }
    lowerValue := 249871991147692
    upperValue := 23283064365386962890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 13))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 48, r := 14 }
    lowerValue := 24724834159653
    upperValue := 4656612873077392578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 14))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 48, r := 15 }
    lowerValue := 2696415321832
    upperValue := 931322574615478515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 15))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 48, r := 16 }
    lowerValue := 322913160247
    upperValue := 37252902984619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 16))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 48, r := 17 }
    lowerValue := 42334187356
    upperValue := 7450580596923828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 17))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17))) },
  { key := { q := 5, n := 48, r := 18 }
    lowerValue := 6060077853
    upperValue := 1490116119384765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 18))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 18))) },
  { key := { q := 5, n := 48, r := 19 }
    lowerValue := 945160280
    upperValue := 298023223876953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 19))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 19))) },
  { key := { q := 5, n := 48, r := 20 }
    lowerValue := 160321579
    upperValue := 11920928955078125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 20))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 20))) },
  { key := { q := 5, n := 48, r := 21 }
    lowerValue := 29532367
    upperValue := 2384185791015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 21))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 21))) },
  { key := { q := 5, n := 48, r := 22 }
    lowerValue := 5900807
    upperValue := 476837158203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 22))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 28 22))) },
  { key := { q := 5, n := 48, r := 23 }
    lowerValue := 1277713
    upperValue := 95367431640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 23))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 29 23))) },
  { key := { q := 5, n := 48, r := 24 }
    lowerValue := 299620
    upperValue := 3814697265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 24))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 31 24))) },
  { key := { q := 5, n := 48, r := 25 }
    lowerValue := 76055
    upperValue := 762939453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 25))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 32 25))) },
  { key := { q := 5, n := 48, r := 26 }
    lowerValue := 20893
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 26))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 33 26))) },
  { key := { q := 5, n := 48, r := 27 }
    lowerValue := 6211
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 27))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 34 27))) },
  { key := { q := 5, n := 48, r := 28 }
    lowerValue := 1999
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 28))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 36 28))) },
  { key := { q := 5, n := 48, r := 29 }
    lowerValue := 696
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 29))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 37 29))) },
  { key := { q := 5, n := 48, r := 30 }
    lowerValue := 263
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 30))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 38 30))) },
  { key := { q := 5, n := 48, r := 31 }
    lowerValue := 108
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 31))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 39 31))) },
  { key := { q := 5, n := 48, r := 32 }
    lowerValue := 48
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 32))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 41 32))) },
  { key := { q := 5, n := 48, r := 33 }
    lowerValue := 23
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 33))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 42 33))) },
  { key := { q := 5, n := 48, r := 34 }
    lowerValue := 12
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 34))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 43 34))) },
  { key := { q := 5, n := 48, r := 35 }
    lowerValue := 7
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 35))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 44 35))) },
  { key := { q := 5, n := 48, r := 36 }
    lowerValue := 5
    upperValue := 125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 36))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 46 36))) },
  { key := { q := 5, n := 48, r := 37 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 39 38))))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 47 37))) },
  { key := { q := 5, n := 48, r := 38 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 40 39)))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 48 38)) },
  { key := { q := 5, n := 48, r := 39 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 41 40))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 48 39)) },
  { key := { q := 5, n := 48, r := 40 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 42 41)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 48 40)) },
  { key := { q := 5, n := 48, r := 41 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 43 42))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 48 41)) },
  { key := { q := 5, n := 48, r := 42 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 44 43)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 48 42)) },
  { key := { q := 5, n := 48, r := 43 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 45 44))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 48 43)) },
  { key := { q := 5, n := 48, r := 44 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 46 45)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 48 44)) },
  { key := { q := 5, n := 48, r := 45 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 47 46))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 48 45)) },
  { key := { q := 5, n := 48, r := 46 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 46 ≤ 47) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 48 47)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 48 46)) },
  { key := { q := 5, n := 48, r := 47 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 48 47))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 48 47)) },
  { key := { q := 5, n := 48, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 48 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 48 48)) },
  { key := { q := 6, n := 0, r := 0 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 0)) },
  { key := { q := 6, n := 0, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 1))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 1)) },
  { key := { q := 6, n := 0, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 2))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 2)) },
  { key := { q := 6, n := 0, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 3))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 3)) },
  { key := { q := 6, n := 0, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 4))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 4)) },
  { key := { q := 6, n := 0, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 5))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 5)) },
  { key := { q := 6, n := 0, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 6))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 6)) },
  { key := { q := 6, n := 0, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 7))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 7)) },
  { key := { q := 6, n := 0, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 8))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 8)) },
  { key := { q := 6, n := 0, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 9))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 9)) },
  { key := { q := 6, n := 0, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 10))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 10)) },
  { key := { q := 6, n := 0, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 11))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 11)) },
  { key := { q := 6, n := 0, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 12))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 12)) },
  { key := { q := 6, n := 0, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 13))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 13)) },
  { key := { q := 6, n := 0, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 14))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 14)) },
  { key := { q := 6, n := 0, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 15))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 15)) },
  { key := { q := 6, n := 0, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 16))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 16)) },
  { key := { q := 6, n := 0, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 17))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 17)) },
  { key := { q := 6, n := 0, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 18))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 18)) },
  { key := { q := 6, n := 0, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 19))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 19)) },
  { key := { q := 6, n := 0, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 20))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 20)) },
  { key := { q := 6, n := 0, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 21))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 21)) },
  { key := { q := 6, n := 0, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 22))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 22)) },
  { key := { q := 6, n := 0, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 23))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 23)) },
  { key := { q := 6, n := 0, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 24))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 24)) },
  { key := { q := 6, n := 0, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 25))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 25)) },
  { key := { q := 6, n := 0, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 26))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 26)) },
  { key := { q := 6, n := 0, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 27))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 27)) },
  { key := { q := 6, n := 0, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 28))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 28)) },
  { key := { q := 6, n := 0, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 29))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 29)) },
  { key := { q := 6, n := 0, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 30))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 30)) },
  { key := { q := 6, n := 0, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 31))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 31)) },
  { key := { q := 6, n := 0, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 32))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 32)) },
  { key := { q := 6, n := 0, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 33))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 33)) },
  { key := { q := 6, n := 0, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 34))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 34)) },
  { key := { q := 6, n := 0, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 35))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 35)) },
  { key := { q := 6, n := 0, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 36))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 36)) },
  { key := { q := 6, n := 0, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 37))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 37)) },
  { key := { q := 6, n := 0, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 38))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 38)) },
  { key := { q := 6, n := 0, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 39))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 39)) },
  { key := { q := 6, n := 0, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 40))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 40)) },
  { key := { q := 6, n := 0, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 41))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 41)) },
  { key := { q := 6, n := 0, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 42))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 42)) },
  { key := { q := 6, n := 0, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 43))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 43)) },
  { key := { q := 6, n := 0, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 44))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 44)) },
  { key := { q := 6, n := 0, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 45))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 45)) },
  { key := { q := 6, n := 0, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 46))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 46)) },
  { key := { q := 6, n := 0, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 47))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 47)) },
  { key := { q := 6, n := 0, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 0 48))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 0 48)) },
  { key := { q := 6, n := 1, r := 0 }
    lowerValue := 6
    upperValue := 6
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 6 1 0)) },
  { key := { q := 6, n := 1, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 1))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 1)) },
  { key := { q := 6, n := 1, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 2))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 2)) },
  { key := { q := 6, n := 1, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 3)) },
  { key := { q := 6, n := 1, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 4)) },
  { key := { q := 6, n := 1, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 5)) },
  { key := { q := 6, n := 1, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 6)) },
  { key := { q := 6, n := 1, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 7)) },
  { key := { q := 6, n := 1, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 8)) },
  { key := { q := 6, n := 1, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 9)) },
  { key := { q := 6, n := 1, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 10)) },
  { key := { q := 6, n := 1, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 11)) },
  { key := { q := 6, n := 1, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 12)) },
  { key := { q := 6, n := 1, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 13)) },
  { key := { q := 6, n := 1, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 14)) },
  { key := { q := 6, n := 1, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 15)) },
  { key := { q := 6, n := 1, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 16)) },
  { key := { q := 6, n := 1, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 17)) },
  { key := { q := 6, n := 1, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 18)) },
  { key := { q := 6, n := 1, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 19)) },
  { key := { q := 6, n := 1, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 20)) },
  { key := { q := 6, n := 1, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 21)) },
  { key := { q := 6, n := 1, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 22)) },
  { key := { q := 6, n := 1, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 23)) },
  { key := { q := 6, n := 1, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 24)) },
  { key := { q := 6, n := 1, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 25)) },
  { key := { q := 6, n := 1, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 26)) },
  { key := { q := 6, n := 1, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 27)) },
  { key := { q := 6, n := 1, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 28)) },
  { key := { q := 6, n := 1, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 29)) },
  { key := { q := 6, n := 1, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 30)) },
  { key := { q := 6, n := 1, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 31)) },
  { key := { q := 6, n := 1, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 32)) },
  { key := { q := 6, n := 1, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 33)) },
  { key := { q := 6, n := 1, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 34)) },
  { key := { q := 6, n := 1, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 35)) },
  { key := { q := 6, n := 1, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 36)) },
  { key := { q := 6, n := 1, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 37)) },
  { key := { q := 6, n := 1, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 38)) },
  { key := { q := 6, n := 1, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 39)) },
  { key := { q := 6, n := 1, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 40)) },
  { key := { q := 6, n := 1, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 41)) },
  { key := { q := 6, n := 1, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 42)) },
  { key := { q := 6, n := 1, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 43)) },
  { key := { q := 6, n := 1, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 6 1 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 6 1 44)) }]

end CoveringCodes.Database
