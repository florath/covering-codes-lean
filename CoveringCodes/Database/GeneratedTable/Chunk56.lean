import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 56. Do not edit manually.

def precomputedTable_chunk_56 : Array AnyBoundEntry := #[
  { key := { q := 5, n := 40, r := 35 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 37 36))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 40 35)) },
  { key := { q := 5, n := 40, r := 36 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 38 37)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 40 36)) },
  { key := { q := 5, n := 40, r := 37 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 39 38))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 40 37)) },
  { key := { q := 5, n := 40, r := 38 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 40 39)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 40 38)) },
  { key := { q := 5, n := 40, r := 39 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 40 39))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 40 39)) },
  { key := { q := 5, n := 40, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 40 40)) },
  { key := { q := 5, n := 40, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 40 41)) },
  { key := { q := 5, n := 40, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 40 42)) },
  { key := { q := 5, n := 40, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 40 43)) },
  { key := { q := 5, n := 40, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 40 44)) },
  { key := { q := 5, n := 40, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 40 45)) },
  { key := { q := 5, n := 40, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 40 46)) },
  { key := { q := 5, n := 40, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 40 47)) },
  { key := { q := 5, n := 40, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 40 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 40 48)) },
  { key := { q := 5, n := 41, r := 0 }
    lowerValue := 45474735088646411895751953125
    upperValue := 45474735088646411895751953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 41 0)) },
  { key := { q := 5, n := 41, r := 1 }
    lowerValue := 275604455082705526640920929
    upperValue := 4729372449219226837158203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 1))
    upperTrace := (.lengthenFreeN 38 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 41, r := 2 }
    lowerValue := 3423013555788213164904175
    upperValue := 603497028350830078125000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 2))
    upperTrace := (.lengthenFreeN 33 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 5, n := 41, r := 3 }
    lowerValue := 65381884315655672902846
    upperValue := 120699405670166015625000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 3))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))))) },
  { key := { q := 5, n := 41, r := 4 }
    lowerValue := 1708250686211638068716
    upperValue := 14551915228366851806640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 4))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 41, r := 5 }
    lowerValue := 57272663369368073877
    upperValue := 2910383045673370361328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 5))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 41, r := 6 }
    lowerValue := 2367093816703033290
    upperValue := 582076609134674072265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 6))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 41, r := 7 }
    lowerValue := 117337405522259883
    upperValue := 116415321826934814453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 7))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 41, r := 8 }
    lowerValue := 6838917830012498
    upperValue := 4656612873077392578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 8))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 41, r := 9 }
    lowerValue := 461719928497130
    upperValue := 931322574615478515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 9))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 41, r := 10 }
    lowerValue := 35693115310954
    upperValue := 186264514923095703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 10))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 41, r := 11 }
    lowerValue := 3130620058683
    upperValue := 37252902984619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 11))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 41, r := 12 }
    lowerValue := 309260988302
    upperValue := 1490116119384765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 12))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 41, r := 13 }
    lowerValue := 34204220690
    upperValue := 298023223876953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 13))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 41, r := 14 }
    lowerValue := 4214833378
    upperValue := 59604644775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 14))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 41, r := 15 }
    lowerValue := 576365705
    upperValue := 11920928955078125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 15))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 41, r := 16 }
    lowerValue := 87180925
    upperValue := 476837158203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 16))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 41, r := 17 }
    lowerValue := 14548122
    upperValue := 95367431640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 17))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17))) },
  { key := { q := 5, n := 41, r := 18 }
    lowerValue := 2672644
    upperValue := 19073486328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 18))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 18))) },
  { key := { q := 5, n := 41, r := 19 }
    lowerValue := 539649
    upperValue := 3814697265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 19))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 19))) },
  { key := { q := 5, n := 41, r := 20 }
    lowerValue := 119615
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 20))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 20))) },
  { key := { q := 5, n := 41, r := 21 }
    lowerValue := 29080
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 21))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 21))) },
  { key := { q := 5, n := 41, r := 22 }
    lowerValue := 7750
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 22))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 28 22))) },
  { key := { q := 5, n := 41, r := 23 }
    lowerValue := 2264
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 23))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 29 23))) },
  { key := { q := 5, n := 41, r := 24 }
    lowerValue := 725
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 24))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 31 24))) },
  { key := { q := 5, n := 41, r := 25 }
    lowerValue := 255
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 25))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 32 25))) },
  { key := { q := 5, n := 41, r := 26 }
    lowerValue := 98
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 26))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 33 26))) },
  { key := { q := 5, n := 41, r := 27 }
    lowerValue := 42
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 27))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 34 27))) },
  { key := { q := 5, n := 41, r := 28 }
    lowerValue := 20
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 28))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 36 28))) },
  { key := { q := 5, n := 41, r := 29 }
    lowerValue := 10
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 29))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 37 29))) },
  { key := { q := 5, n := 41, r := 30 }
    lowerValue := 6
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 30))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 38 30))) },
  { key := { q := 5, n := 41, r := 31 }
    lowerValue := 5
    upperValue := 125
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 31 ≤ 32) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 33 32)))))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 39 31))) },
  { key := { q := 5, n := 41, r := 32 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 34 33))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 41 32)) },
  { key := { q := 5, n := 41, r := 33 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 35 34)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 41 33)) },
  { key := { q := 5, n := 41, r := 34 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 36 35))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 41 34)) },
  { key := { q := 5, n := 41, r := 35 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 37 36)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 41 35)) },
  { key := { q := 5, n := 41, r := 36 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 38 37))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 41 36)) },
  { key := { q := 5, n := 41, r := 37 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 39 38)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 41 37)) },
  { key := { q := 5, n := 41, r := 38 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 40 39))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 41 38)) },
  { key := { q := 5, n := 41, r := 39 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 41 40)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 41 39)) },
  { key := { q := 5, n := 41, r := 40 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 41 40))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 41 40)) },
  { key := { q := 5, n := 41, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 41 41)) },
  { key := { q := 5, n := 41, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 41 42)) },
  { key := { q := 5, n := 41, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 41 43)) },
  { key := { q := 5, n := 41, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 41 44)) },
  { key := { q := 5, n := 41, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 41 45)) },
  { key := { q := 5, n := 41, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 41 46)) },
  { key := { q := 5, n := 41, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 41 47)) },
  { key := { q := 5, n := 41, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 41 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 41 48)) },
  { key := { q := 5, n := 42, r := 0 }
    lowerValue := 227373675443232059478759765625
    upperValue := 227373675443232059478759765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 42 0)) },
  { key := { q := 5, n := 42, r := 1 }
    lowerValue := 1345406363569420470288519324
    upperValue := 23646862246096134185791015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 1))
    upperTrace := (.lengthenFreeN 39 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 42, r := 2 }
    lowerValue := 16305032301414991715938313
    upperValue := 3017485141754150390625000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 2))
    upperTrace := (.lengthenFreeN 34 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 5, n := 42, r := 3 }
    lowerValue := 303705496374522729763993
    upperValue := 603497028350830078125000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 3))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))))) },
  { key := { q := 5, n := 42, r := 4 }
    lowerValue := 7733076467630218181288
    upperValue := 72759576141834259033203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 4))
    upperTrace := (.lengthenFreeN 36 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 42, r := 5 }
    lowerValue := 252500848708444787612
    upperValue := 14551915228366851806640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 5))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 42, r := 6 }
    lowerValue := 10156402274975485101
    upperValue := 2910383045673370361328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 6))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 42, r := 7 }
    lowerValue := 489607237149773200
    upperValue := 582076609134674072265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 7))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 42, r := 8 }
    lowerValue := 27729760547843346
    upperValue := 23283064365386962890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 8))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 42, r := 9 }
    lowerValue := 1817717161535736
    upperValue := 4656612873077392578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 9))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 42, r := 10 }
    lowerValue := 136314558536262
    upperValue := 931322574615478515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 10))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 42, r := 11 }
    lowerValue := 11587701187208
    upperValue := 186264514923095703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 11))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 42, r := 12 }
    lowerValue := 1108348365063
    upperValue := 7450580596923828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 12))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 42, r := 13 }
    lowerValue := 118567090870
    upperValue := 1490116119384765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 13))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 42, r := 14 }
    lowerValue := 14116241347
    upperValue := 298023223876953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 14))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 42, r := 15 }
    lowerValue := 1862864306
    upperValue := 59604644775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 15))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 42, r := 16 }
    lowerValue := 271585075
    upperValue := 2384185791015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 16))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 42, r := 17 }
    lowerValue := 43622788
    upperValue := 476837158203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 17))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17))) },
  { key := { q := 5, n := 42, r := 18 }
    lowerValue := 7702844
    upperValue := 95367431640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 18))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 18))) },
  { key := { q := 5, n := 42, r := 19 }
    lowerValue := 1492671
    upperValue := 19073486328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 19))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 19))) },
  { key := { q := 5, n := 42, r := 20 }
    lowerValue := 317010
    upperValue := 762939453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 20))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 20))) },
  { key := { q := 5, n := 42, r := 21 }
    lowerValue := 73715
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 21))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 21))) },
  { key := { q := 5, n := 42, r := 22 }
    lowerValue := 18756
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 22))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 28 22))) },
  { key := { q := 5, n := 42, r := 23 }
    lowerValue := 5220
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 23))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 29 23))) },
  { key := { q := 5, n := 42, r := 24 }
    lowerValue := 1589
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 24))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 31 24))) },
  { key := { q := 5, n := 42, r := 25 }
    lowerValue := 529
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 25))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 32 25))) },
  { key := { q := 5, n := 42, r := 26 }
    lowerValue := 193
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 26))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 33 26))) },
  { key := { q := 5, n := 42, r := 27 }
    lowerValue := 77
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 27))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 34 27))) },
  { key := { q := 5, n := 42, r := 28 }
    lowerValue := 34
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 28))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 36 28))) },
  { key := { q := 5, n := 42, r := 29 }
    lowerValue := 17
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 29))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 37 29))) },
  { key := { q := 5, n := 42, r := 30 }
    lowerValue := 9
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 30))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 38 30))) },
  { key := { q := 5, n := 42, r := 31 }
    lowerValue := 5
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 31))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 39 31))) },
  { key := { q := 5, n := 42, r := 32 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 32 ≤ 33) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 34 33)))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 41 32))) },
  { key := { q := 5, n := 42, r := 33 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 35 34))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 42 33)) },
  { key := { q := 5, n := 42, r := 34 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 36 35)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 42 34)) },
  { key := { q := 5, n := 42, r := 35 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 37 36))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 42 35)) },
  { key := { q := 5, n := 42, r := 36 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 38 37)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 42 36)) },
  { key := { q := 5, n := 42, r := 37 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 39 38))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 42 37)) },
  { key := { q := 5, n := 42, r := 38 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 40 39)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 42 38)) },
  { key := { q := 5, n := 42, r := 39 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 41 40))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 42 39)) },
  { key := { q := 5, n := 42, r := 40 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 42 41)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 42 40)) },
  { key := { q := 5, n := 42, r := 41 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 42 41))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 42 41)) },
  { key := { q := 5, n := 42, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 42 42)) },
  { key := { q := 5, n := 42, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 42 43)) },
  { key := { q := 5, n := 42, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 42 44)) },
  { key := { q := 5, n := 42, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 42 45)) },
  { key := { q := 5, n := 42, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 42 46)) },
  { key := { q := 5, n := 42, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 42 47)) },
  { key := { q := 5, n := 42, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 42 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 42 48)) },
  { key := { q := 5, n := 43, r := 0 }
    lowerValue := 1136868377216160297393798828125
    upperValue := 1136868377216160297393798828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 43 0)) },
  { key := { q := 5, n := 43, r := 1 }
    lowerValue := 6571493509920001719039299585
    upperValue := 118234311230480670928955078125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 1))
    upperTrace := (.lengthenFreeN 40 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 43, r := 2 }
    lowerValue := 77755856454152267108528749
    upperValue := 15087425708770751953125000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 2))
    upperTrace := (.lengthenFreeN 35 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 5, n := 43, r := 3 }
    lowerValue := 1413233194582799690959356
    upperValue := 3017485141754150390625000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 3))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))))) },
  { key := { q := 5, n := 43, r := 4 }
    lowerValue := 35091340717448212206929
    upperValue := 363797880709171295166015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 4))
    upperTrace := (.lengthenFreeN 37 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 43, r := 5 }
    lowerValue := 1116659347689890154030
    upperValue := 72759576141834259033203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 5))
    upperTrace := (.lengthenFreeN 36 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 43, r := 6 }
    lowerValue := 43743922220975743247
    upperValue := 14551915228366851806640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 6))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 43, r := 7 }
    lowerValue := 2052297702487182800
    upperValue := 2910383045673370361328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 7))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 43, r := 8 }
    lowerValue := 113039944426326458
    upperValue := 116415321826934814453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 8))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 43, r := 9 }
    lowerValue := 7200565074663264
    upperValue := 23283064365386962890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 9))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 43, r := 10 }
    lowerValue := 524299391503277
    upperValue := 4656612873077392578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 10))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 43, r := 11 }
    lowerValue := 43236778538005
    upperValue := 931322574615478515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 11))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 43, r := 12 }
    lowerValue := 4008218523232
    upperValue := 37252902984619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 12))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 43, r := 13 }
    lowerValue := 415178352870
    upperValue := 7450580596923828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 13))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 43, r := 14 }
    lowerValue := 47811861046
    upperValue := 1490116119384765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 14))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 43, r := 15 }
    lowerValue := 6096302313
    upperValue := 298023223876953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 15))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 43, r := 16 }
    lowerValue := 857733203
    upperValue := 11920928955078125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 16))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 43, r := 17 }
    lowerValue := 132794547
    upperValue := 2384185791015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 17))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17))) },
  { key := { q := 5, n := 43, r := 18 }
    lowerValue := 22571592
    upperValue := 476837158203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 18))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 18))) },
  { key := { q := 5, n := 43, r := 19 }
    lowerValue := 4204405
    upperValue := 95367431640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 19))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 19))) },
  { key := { q := 5, n := 43, r := 20 }
    lowerValue := 857009
    upperValue := 3814697265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 20))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 20))) },
  { key := { q := 5, n := 43, r := 21 }
    lowerValue := 190958
    upperValue := 762939453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 21))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 21))) },
  { key := { q := 5, n := 43, r := 22 }
    lowerValue := 46477
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 22))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 28 22))) },
  { key := { q := 5, n := 43, r := 23 }
    lowerValue := 12350
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 23))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 29 23))) },
  { key := { q := 5, n := 43, r := 24 }
    lowerValue := 3583
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 24))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 31 24))) },
  { key := { q := 5, n := 43, r := 25 }
    lowerValue := 1135
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 25))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 32 25))) },
  { key := { q := 5, n := 43, r := 26 }
    lowerValue := 393
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 26))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 33 26))) },
  { key := { q := 5, n := 43, r := 27 }
    lowerValue := 149
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 27))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 34 27))) },
  { key := { q := 5, n := 43, r := 28 }
    lowerValue := 62
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 28))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 36 28))) },
  { key := { q := 5, n := 43, r := 29 }
    lowerValue := 28
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 29))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 37 29))) },
  { key := { q := 5, n := 43, r := 30 }
    lowerValue := 14
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 30))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 38 30))) },
  { key := { q := 5, n := 43, r := 31 }
    lowerValue := 8
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 31))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 39 31))) },
  { key := { q := 5, n := 43, r := 32 }
    lowerValue := 5
    upperValue := 125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 32))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 41 32))) },
  { key := { q := 5, n := 43, r := 33 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 35 34)))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 42 33))) },
  { key := { q := 5, n := 43, r := 34 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 36 35))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 43 34)) },
  { key := { q := 5, n := 43, r := 35 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 37 36)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 43 35)) },
  { key := { q := 5, n := 43, r := 36 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 38 37))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 43 36)) },
  { key := { q := 5, n := 43, r := 37 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 39 38)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 43 37)) },
  { key := { q := 5, n := 43, r := 38 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 40 39))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 43 38)) },
  { key := { q := 5, n := 43, r := 39 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 41 40)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 43 39)) },
  { key := { q := 5, n := 43, r := 40 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 42 41))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 43 40)) },
  { key := { q := 5, n := 43, r := 41 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 43 42)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 43 41)) },
  { key := { q := 5, n := 43, r := 42 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 43 42))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 43 42)) },
  { key := { q := 5, n := 43, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 43 43)) },
  { key := { q := 5, n := 43, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 43 44)) },
  { key := { q := 5, n := 43, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 43 45)) },
  { key := { q := 5, n := 43, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 43 46)) },
  { key := { q := 5, n := 43, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 43 47)) },
  { key := { q := 5, n := 43, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 43 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 43 48)) },
  { key := { q := 5, n := 44, r := 0 }
    lowerValue := 5684341886080801486968994140625
    upperValue := 5684341886080801486968994140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 44 0)) },
  { key := { q := 5, n := 44, r := 1 }
    lowerValue := 32114925910061025350107311529
    upperValue := 591171556152403354644775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 1))
    upperTrace := (.lengthenFreeN 41 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 44, r := 2 }
    lowerValue := 371210206104669332395284670
    upperValue := 75437128543853759765625000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 2))
    upperTrace := (.lengthenFreeN 36 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 5, n := 44, r := 3 }
    lowerValue := 6587264868929890508916718
    upperValue := 15087425708770751953125000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 3))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))))) },
  { key := { q := 5, n := 44, r := 4 }
    lowerValue := 159604446420278358429670
    upperValue := 1818989403545856475830078125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 4))
    upperTrace := (.lengthenFreeN 38 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 44, r := 5 }
    lowerValue := 4952866085309223965587
    upperValue := 363797880709171295166015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 5))
    upperTrace := (.lengthenFreeN 37 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 44, r := 6 }
    lowerValue := 189090022605163961053
    upperValue := 72759576141834259033203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 6))
    upperTrace := (.lengthenFreeN 36 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 44, r := 7 }
    lowerValue := 8640055026004765910
    upperValue := 14551915228366851806640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 7))
    upperTrace := (.lengthenFreeN 35 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 44, r := 8 }
    lowerValue := 463157430441977609
    upperValue := 582076609134674072265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 8))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 44, r := 9 }
    lowerValue := 28692146933850479
    upperValue := 116415321826934814453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 9))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 44, r := 10 }
    lowerValue := 2030193732097177
    upperValue := 23283064365386962890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 10))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 44, r := 11 }
    lowerValue := 162560991659130
    upperValue := 4656612873077392578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 11))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 44, r := 12 }
    lowerValue := 14619830632384
    upperValue := 186264514923095703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 12))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 44, r := 13 }
    lowerValue := 1467759344778
    upperValue := 37252902984619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 13))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 44, r := 14 }
    lowerValue := 163667589778
    upperValue := 7450580596923828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 14))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 44, r := 15 }
    lowerValue := 20186107128
    upperValue := 1490116119384765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 15))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 44, r := 16 }
    lowerValue := 2744238406
    upperValue := 59604644775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 16))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 44, r := 17 }
    lowerValue := 410041608
    upperValue := 11920928955078125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 17))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17))) },
  { key := { q := 5, n := 44, r := 18 }
    lowerValue := 67181550
    upperValue := 2384185791015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 18))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 18))) },
  { key := { q := 5, n := 44, r := 19 }
    lowerValue := 12046459
    upperValue := 476837158203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 19))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 19))) },
  { key := { q := 5, n := 44, r := 20 }
    lowerValue := 2360459
    upperValue := 19073486328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 20))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 20))) },
  { key := { q := 5, n := 44, r := 21 }
    lowerValue := 504839
    upperValue := 3814697265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 21))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 21))) },
  { key := { q := 5, n := 44, r := 22 }
    lowerValue := 117749
    upperValue := 762939453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 22))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 28 22))) },
  { key := { q := 5, n := 44, r := 23 }
    lowerValue := 29934
    upperValue := 152587890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 23))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 29 23))) },
  { key := { q := 5, n := 44, r := 24 }
    lowerValue := 8292
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 24))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 31 24))) },
  { key := { q := 5, n := 44, r := 25 }
    lowerValue := 2503
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 25))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 32 25))) },
  { key := { q := 5, n := 44, r := 26 }
    lowerValue := 823
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 26))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 33 26))) },
  { key := { q := 5, n := 44, r := 27 }
    lowerValue := 295
    upperValue := 48828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 27))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 34 27))) },
  { key := { q := 5, n := 44, r := 28 }
    lowerValue := 116
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 28))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 36 28))) },
  { key := { q := 5, n := 44, r := 29 }
    lowerValue := 50
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 29))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 37 29))) },
  { key := { q := 5, n := 44, r := 30 }
    lowerValue := 23
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 30))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 38 30))) },
  { key := { q := 5, n := 44, r := 31 }
    lowerValue := 12
    upperValue := 15625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 31))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 39 31))) },
  { key := { q := 5, n := 44, r := 32 }
    lowerValue := 7
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 32))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 41 32))) },
  { key := { q := 5, n := 44, r := 33 }
    lowerValue := 5
    upperValue := 125
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 33 ≤ 34) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 35 34))))))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 42 33))) },
  { key := { q := 5, n := 44, r := 34 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 36 35)))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 43 34))) },
  { key := { q := 5, n := 44, r := 35 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 37 36))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 44 35)) },
  { key := { q := 5, n := 44, r := 36 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 38 37)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 44 36)) },
  { key := { q := 5, n := 44, r := 37 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 39 38))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 44 37)) },
  { key := { q := 5, n := 44, r := 38 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 40 39)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 44 38)) },
  { key := { q := 5, n := 44, r := 39 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 41 40))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 44 39)) },
  { key := { q := 5, n := 44, r := 40 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 42 41)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 44 40)) },
  { key := { q := 5, n := 44, r := 41 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 43 42))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 44 41)) },
  { key := { q := 5, n := 44, r := 42 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 44 43)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 44 42)) },
  { key := { q := 5, n := 44, r := 43 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 44 43))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 44 43)) },
  { key := { q := 5, n := 44, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 44 44)) },
  { key := { q := 5, n := 44, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 44 45)) },
  { key := { q := 5, n := 44, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 44 46)) },
  { key := { q := 5, n := 44, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 44 47)) },
  { key := { q := 5, n := 44, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 44 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 5 44 48)) },
  { key := { q := 5, n := 45, r := 0 }
    lowerValue := 28421709430404007434844970703125
    upperValue := 28421709430404007434844970703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 5 45 0)) },
  { key := { q := 5, n := 45, r := 1 }
    lowerValue := 157026018952508328369309230405
    upperValue := 2955857780762016773223876953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 1))
    upperTrace := (.lengthenFreeN 42 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 5 3 1))) },
  { key := { q := 5, n := 45, r := 2 }
    lowerValue := 1774028427089695239675736266
    upperValue := 377185642719268798828125000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 2))
    upperTrace := (.lengthenFreeN 37 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))) },
  { key := { q := 5, n := 45, r := 3 }
    lowerValue := 30753401585191653404306052
    upperValue := 75437128543853759765625000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 3))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 1 (by decide : 0 < 5) (.lengthenFreeN 1 (.alphabetProject (by decide : 0 < 5) (by decide : 5 ≤ 6) (.primitive "lean_known_bounds_q6_n8_r2_mixed_radius_one_blocks" (primitiveUpper_valid 6 8 2)))))) },
  { key := { q := 5, n := 45, r := 4 }
    lowerValue := 727513795640048526880722
    upperValue := 9094947017729282379150390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 4))
    upperTrace := (.lengthenFreeN 39 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 6 4))) },
  { key := { q := 5, n := 45, r := 5 }
    lowerValue := 22029803443416572792506
    upperValue := 1818989403545856475830078125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 5))
    upperTrace := (.lengthenFreeN 38 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 7 5))) },
  { key := { q := 5, n := 45, r := 6 }
    lowerValue := 820196582868554957908
    upperValue := 363797880709171295166015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 6))
    upperTrace := (.lengthenFreeN 37 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 8 6))) },
  { key := { q := 5, n := 45, r := 7 }
    lowerValue := 36524623903527299339
    upperValue := 72759576141834259033203125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 7))
    upperTrace := (.lengthenFreeN 36 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 9 7))) },
  { key := { q := 5, n := 45, r := 8 }
    lowerValue := 1906902656906336238
    upperValue := 2910383045673370361328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 8))
    upperTrace := (.lengthenFreeN 34 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 11 8))) },
  { key := { q := 5, n := 45, r := 9 }
    lowerValue := 114971299351218545
    upperValue := 582076609134674072265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 9))
    upperTrace := (.lengthenFreeN 33 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 12 9))) },
  { key := { q := 5, n := 45, r := 10 }
    lowerValue := 7911707889351889
    upperValue := 116415321826934814453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 10))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 13 10))) },
  { key := { q := 5, n := 45, r := 11 }
    lowerValue := 615627638922146
    upperValue := 23283064365386962890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 11))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 14 11))) },
  { key := { q := 5, n := 45, r := 12 }
    lowerValue := 53759744556377
    upperValue := 931322574615478515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 12))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 16 12))) },
  { key := { q := 5, n := 45, r := 13 }
    lowerValue := 5236086879704
    upperValue := 186264514923095703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 13))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 17 13))) },
  { key := { q := 5, n := 45, r := 14 }
    lowerValue := 565918941612
    upperValue := 37252902984619140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 14))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 18 14))) },
  { key := { q := 5, n := 45, r := 15 }
    lowerValue := 67586928084
    upperValue := 7450580596923828125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 15))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 19 15))) },
  { key := { q := 5, n := 45, r := 16 }
    lowerValue := 8888005399
    upperValue := 298023223876953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 16))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 21 16))) },
  { key := { q := 5, n := 45, r := 17 }
    lowerValue := 1283243645
    upperValue := 59604644775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 17))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 22 17))) },
  { key := { q := 5, n := 45, r := 18 }
    lowerValue := 202920869
    upperValue := 11920928955078125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 18))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 23 18))) },
  { key := { q := 5, n := 45, r := 19 }
    lowerValue := 35074894
    upperValue := 2384185791015625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 19))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 24 19))) },
  { key := { q := 5, n := 45, r := 20 }
    lowerValue := 6616433
    upperValue := 95367431640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 20))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 26 20))) },
  { key := { q := 5, n := 45, r := 21 }
    lowerValue := 1360390
    upperValue := 19073486328125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 21))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 27 21))) },
  { key := { q := 5, n := 45, r := 22 }
    lowerValue := 304581
    upperValue := 3814697265625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 22))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 28 22))) },
  { key := { q := 5, n := 45, r := 23 }
    lowerValue := 74208
    upperValue := 762939453125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 23))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 29 23))) },
  { key := { q := 5, n := 45, r := 24 }
    lowerValue := 19667
    upperValue := 30517578125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 24))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 31 24))) },
  { key := { q := 5, n := 45, r := 25 }
    lowerValue := 5669
    upperValue := 6103515625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 25))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 32 25))) },
  { key := { q := 5, n := 45, r := 26 }
    lowerValue := 1777
    upperValue := 1220703125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 26))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 33 26))) },
  { key := { q := 5, n := 45, r := 27 }
    lowerValue := 606
    upperValue := 244140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 27))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 34 27))) },
  { key := { q := 5, n := 45, r := 28 }
    lowerValue := 225
    upperValue := 9765625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 28))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 36 28))) },
  { key := { q := 5, n := 45, r := 29 }
    lowerValue := 91
    upperValue := 1953125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 29))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 37 29))) },
  { key := { q := 5, n := 45, r := 30 }
    lowerValue := 41
    upperValue := 390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 30))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 38 30))) },
  { key := { q := 5, n := 45, r := 31 }
    lowerValue := 20
    upperValue := 78125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 31))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 39 31))) },
  { key := { q := 5, n := 45, r := 32 }
    lowerValue := 11
    upperValue := 3125
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 32))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 41 32))) },
  { key := { q := 5, n := 45, r := 33 }
    lowerValue := 6
    upperValue := 625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 5 45 33))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 42 33))) },
  { key := { q := 5, n := 45, r := 34 }
    lowerValue := 5
    upperValue := 125
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 34 ≤ 35) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 36 35))))))))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 43 34))) },
  { key := { q := 5, n := 45, r := 35 }
    lowerValue := 5
    upperValue := 25
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 35 ≤ 36) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 37 36)))))))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 44 35))) },
  { key := { q := 5, n := 45, r := 36 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 36 ≤ 37) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 38 37))))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 45 36)) },
  { key := { q := 5, n := 45, r := 37 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 37 ≤ 38) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 39 38)))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 45 37)) },
  { key := { q := 5, n := 45, r := 38 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 38 ≤ 39) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 40 39))))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 45 38)) },
  { key := { q := 5, n := 45, r := 39 }
    lowerValue := 5
    upperValue := 5
    lowerTrace := (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.lengthBack (by decide : 0 < 5) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 5 41 40)))))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 5 45 39)) }]

end CoveringCodes.Database
