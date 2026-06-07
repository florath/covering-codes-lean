import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 201. Do not edit manually.

def precomputedTable_chunk_201 : Array AnyBoundEntry := #[
  { key := { q := 20, n := 45, r := 25 }
    lowerValue := 111821798957907
    upperValue := 5242880000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 25))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 27 25))) },
  { key := { q := 20, n := 45, r := 26 }
    lowerValue := 7604510463626
    upperValue := 262144000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 26))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 28 26))) },
  { key := { q := 20, n := 45, r := 27 }
    lowerValue := 564924468963
    upperValue := 13107200000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 27))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 29 27))) },
  { key := { q := 20, n := 45, r := 28 }
    lowerValue := 45903031187
    upperValue := 655360000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 28))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 30 28))) },
  { key := { q := 20, n := 45, r := 29 }
    lowerValue := 4086474849
    upperValue := 32768000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 29))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 31 29))) },
  { key := { q := 20, n := 45, r := 30 }
    lowerValue := 399412169
    upperValue := 1638400000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 30))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 32 30))) },
  { key := { q := 20, n := 45, r := 31 }
    lowerValue := 42970783
    upperValue := 81920000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 31))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 33 31))) },
  { key := { q := 20, n := 45, r := 32 }
    lowerValue := 5104511
    upperValue := 4096000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 32))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 34 32))) },
  { key := { q := 20, n := 45, r := 33 }
    lowerValue := 672025
    upperValue := 204800000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 33))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 35 33))) },
  { key := { q := 20, n := 45, r := 34 }
    lowerValue := 98494
    upperValue := 10240000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 34))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 36 34))) },
  { key := { q := 20, n := 45, r := 35 }
    lowerValue := 16157
    upperValue := 512000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 35))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 37 35))) },
  { key := { q := 20, n := 45, r := 36 }
    lowerValue := 2986
    upperValue := 25600000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 36))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 38 36))) },
  { key := { q := 20, n := 45, r := 37 }
    lowerValue := 627
    upperValue := 1280000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 37))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 39 37))) },
  { key := { q := 20, n := 45, r := 38 }
    lowerValue := 151
    upperValue := 3200000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 38))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 41 38))) },
  { key := { q := 20, n := 45, r := 39 }
    lowerValue := 42
    upperValue := 160000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 39))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 42 39))) },
  { key := { q := 20, n := 45, r := 40 }
    lowerValue := 20
    upperValue := 8000
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 42 41))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 43 40))) },
  { key := { q := 20, n := 45, r := 41 }
    lowerValue := 20
    upperValue := 400
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 43 42)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 44 41))) },
  { key := { q := 20, n := 45, r := 42 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 44 43))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 45 42)) },
  { key := { q := 20, n := 45, r := 43 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 45 44)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 45 43)) },
  { key := { q := 20, n := 45, r := 44 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 45 44))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 45 44)) },
  { key := { q := 20, n := 45, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 45 45)) },
  { key := { q := 20, n := 45, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 45 46)) },
  { key := { q := 20, n := 45, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 45 47)) },
  { key := { q := 20, n := 45, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 45 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 45 48)) },
  { key := { q := 20, n := 46, r := 0 }
    lowerValue := 703687441776640000000000000000000000000000000000000000000000
    upperValue := 703687441776640000000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 46 0)) },
  { key := { q := 20, n := 46, r := 1 }
    lowerValue := 804214219173302857142857142857142857142857142857142857143
    upperValue := 17592186044416000000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 1))
    upperTrace := (.lengthenFreeN 43 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))) },
  { key := { q := 20, n := 46, r := 2 }
    lowerValue := 1878955012620864596405970468078288964246615577688179221
    upperValue := 879609302220800000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 2))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 46, r := 3 }
    lowerValue := 6734229394288846655788224659126785399332957746047554
    upperValue := 43980465111040000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 3))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 46, r := 4 }
    lowerValue := 32927324946942760099608156834280331621831885747795
    upperValue := 2199023255552000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 4))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 46, r := 5 }
    lowerValue := 206028040906091038879427813860702307541749432264
    upperValue := 109951162777600000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 5))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 46, r := 6 }
    lowerValue := 1584575611389917912199237064829643403537998893
    upperValue := 5497558138880000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 6))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 46, r := 7 }
    lowerValue := 14572632855566202081492092934112978906538670
    upperValue := 274877906944000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 7))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 46, r := 8 }
    lowerValue := 157078096632354332768863746018961352446470
    upperValue := 13743895347200000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 8))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 46, r := 9 }
    lowerValue := 1954740749763330690618458289763087258543
    upperValue := 687194767360000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 9))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 46, r := 10 }
    lowerValue := 27756284296705137515520370356946695398
    upperValue := 34359738368000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 10))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 46, r := 11 }
    lowerValue := 445534319053187551694798599934235072
    upperValue := 1717986918400000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 11))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 46, r := 12 }
    lowerValue := 8023722089925667462473958058970279
    upperValue := 85899345920000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 12))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 46, r := 13 }
    lowerValue := 161127367340692856972165013411747
    upperValue := 4294967296000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 13))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 46, r := 14 }
    lowerValue := 3589673637444333289954749459995
    upperValue := 214748364800000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 14))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 46, r := 15 }
    lowerValue := 88349644739893022564924576024
    upperValue := 10737418240000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 15))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 46, r := 16 }
    lowerValue := 2393879924166019462853577882
    upperValue := 536870912000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 16))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 46, r := 17 }
    lowerValue := 71202105585373061898862806
    upperValue := 26843545600000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 17))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 46, r := 18 }
    lowerValue := 2319239016017965367833287
    upperValue := 1342177280000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 18))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 46, r := 19 }
    lowerValue := 82570555643746160025073
    upperValue := 6710886400000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 19))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) },
  { key := { q := 20, n := 46, r := 20 }
    lowerValue := 3208268452370561520168
    upperValue := 335544320000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 20))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20))) },
  { key := { q := 20, n := 46, r := 21 }
    lowerValue := 135887180171627754151
    upperValue := 16777216000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 21))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 21))) },
  { key := { q := 20, n := 46, r := 22 }
    lowerValue := 6268894154134363843
    upperValue := 838860800000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 22))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 24 22))) },
  { key := { q := 20, n := 46, r := 23 }
    lowerValue := 314838679560378287
    upperValue := 41943040000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 23))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 25 23))) },
  { key := { q := 20, n := 46, r := 24 }
    lowerValue := 17210066398660225
    upperValue := 2097152000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 24))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 26 24))) },
  { key := { q := 20, n := 46, r := 25 }
    lowerValue := 1024041002178070
    upperValue := 104857600000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 25))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 27 25))) },
  { key := { q := 20, n := 46, r := 26 }
    lowerValue := 66353895039820
    upperValue := 5242880000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 26))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 28 26))) },
  { key := { q := 20, n := 46, r := 27 }
    lowerValue := 4685305243642
    upperValue := 262144000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 27))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 29 27))) },
  { key := { q := 20, n := 46, r := 28 }
    lowerValue := 360894429224
    upperValue := 13107200000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 28))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 30 28))) },
  { key := { q := 20, n := 46, r := 29 }
    lowerValue := 30366260580
    upperValue := 655360000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 29))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 31 29))) },
  { key := { q := 20, n := 46, r := 30 }
    lowerValue := 2795965731
    upperValue := 32768000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 30))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 32 30))) },
  { key := { q := 20, n := 46, r := 31 }
    lowerValue := 282320256
    upperValue := 1638400000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 31))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 33 31))) },
  { key := { q := 20, n := 46, r := 32 }
    lowerValue := 31344716
    upperValue := 81920000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 32))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 34 32))) },
  { key := { q := 20, n := 46, r := 33 }
    lowerValue := 3838595
    upperValue := 4096000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 33))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 35 33))) },
  { key := { q := 20, n := 46, r := 34 }
    lowerValue := 520485
    upperValue := 204800000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 34))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 36 34))) },
  { key := { q := 20, n := 46, r := 35 }
    lowerValue := 78493
    upperValue := 10240000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 35))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 37 35))) },
  { key := { q := 20, n := 46, r := 36 }
    lowerValue := 13237
    upperValue := 512000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 36))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 38 36))) },
  { key := { q := 20, n := 46, r := 37 }
    lowerValue := 2513
    upperValue := 25600000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 37))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 39 37))) },
  { key := { q := 20, n := 46, r := 38 }
    lowerValue := 541
    upperValue := 64000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 38))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 41 38))) },
  { key := { q := 20, n := 46, r := 39 }
    lowerValue := 134
    upperValue := 3200000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 39))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 42 39))) },
  { key := { q := 20, n := 46, r := 40 }
    lowerValue := 39
    upperValue := 160000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 40))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 43 40))) },
  { key := { q := 20, n := 46, r := 41 }
    lowerValue := 20
    upperValue := 8000
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 43 42))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 44 41))) },
  { key := { q := 20, n := 46, r := 42 }
    lowerValue := 20
    upperValue := 400
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 44 43)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 45 42))) },
  { key := { q := 20, n := 46, r := 43 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 45 44))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 46 43)) },
  { key := { q := 20, n := 46, r := 44 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 46 45)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 46 44)) },
  { key := { q := 20, n := 46, r := 45 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 46 45))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 46 45)) },
  { key := { q := 20, n := 46, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 46 46)) },
  { key := { q := 20, n := 46, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 46 47)) },
  { key := { q := 20, n := 46, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 46 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 46 48)) },
  { key := { q := 20, n := 47, r := 0 }
    lowerValue := 14073748835532800000000000000000000000000000000000000000000000
    upperValue := 14073748835532800000000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 47 0)) },
  { key := { q := 20, n := 47, r := 1 }
    lowerValue := 15742448361893512304250559284116331096196868008948545861298
    upperValue := 351843720888320000000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 1))
    upperTrace := (.lengthenFreeN 44 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))) },
  { key := { q := 20, n := 47, r := 2 }
    lowerValue := 35981819155874058828793127692484691986142891840413156583
    upperValue := 17592186044416000000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 2))
    upperTrace := (.lengthenFreeN 42 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 47, r := 3 }
    lowerValue := 126097764834069260213841398543604854841625942950181266
    upperValue := 879609302220800000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 3))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 47, r := 4 }
    lowerValue := 602567179136405194357332392346994202005107099731983
    upperValue := 43980465111040000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 4))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 47, r := 5 }
    lowerValue := 3682741680340620310862076394563850886574597711763
    upperValue := 2199023255552000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 5))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 47, r := 6 }
    lowerValue := 27650881060272377813170824283567906682968730189
    upperValue := 109951162777600000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 6))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 47, r := 7 }
    lowerValue := 248100875191258415756985634355672504040241037
    upperValue := 5497558138880000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 7))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 47, r := 8 }
    lowerValue := 2607536843418145916182588500785187175982609
    upperValue := 274877906944000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 8))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 47, r := 9 }
    lowerValue := 31618767182770431750031354401221319538180
    upperValue := 13743895347200000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 9))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 47, r := 10 }
    lowerValue := 437179147316786905166200583114808957724
    upperValue := 687194767360000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 10))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 47, r := 11 }
    lowerValue := 6828209185914061473682625762435756005
    upperValue := 34359738368000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 11))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 47, r := 12 }
    lowerValue := 119562976525611513010048086804627265
    upperValue := 1717986918400000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 12))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 47, r := 13 }
    lowerValue := 2332565895013735362543253781502187
    upperValue := 85899345920000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 13))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 47, r := 14 }
    lowerValue := 50441871618388487164526280189895
    upperValue := 4294967296000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 14))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 47, r := 15 }
    lowerValue := 1203976136487586684088925410664
    upperValue := 214748364800000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 15))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 47, r := 16 }
    lowerValue := 31606235640576670207221955385
    upperValue := 10737418240000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 16))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 47, r := 17 }
    lowerValue := 909858725982045387567612718
    upperValue := 536870912000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 17))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 47, r := 18 }
    lowerValue := 28652393928753523234915964
    upperValue := 26843545600000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 18))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 47, r := 19 }
    lowerValue := 985066537942418847991282
    upperValue := 134217728000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 19))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) },
  { key := { q := 20, n := 47, r := 20 }
    lowerValue := 36913932228616732367554
    upperValue := 6710886400000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 20))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20))) },
  { key := { q := 20, n := 47, r := 21 }
    lowerValue := 1505883077102651989445
    upperValue := 335544320000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 21))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 21))) },
  { key := { q := 20, n := 47, r := 22 }
    lowerValue := 66813737038147269639
    upperValue := 16777216000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 22))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 24 22))) },
  { key := { q := 20, n := 47, r := 23 }
    lowerValue := 3222133534299745017
    upperValue := 838860800000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 23))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 25 23))) },
  { key := { q := 20, n := 47, r := 24 }
    lowerValue := 168842063382692515
    upperValue := 41943040000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 24))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 26 24))) },
  { key := { q := 20, n := 47, r := 25 }
    lowerValue := 9612942390287177
    upperValue := 2097152000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 25))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 27 25))) },
  { key := { q := 20, n := 47, r := 26 }
    lowerValue := 594801731810654
    upperValue := 104857600000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 26))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 28 26))) },
  { key := { q := 20, n := 47, r := 27 }
    lowerValue := 40017874600287
    upperValue := 5242880000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 27))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 29 27))) },
  { key := { q := 20, n := 47, r := 28 }
    lowerValue := 2929919772839
    upperValue := 262144000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 28))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 30 28))) },
  { key := { q := 20, n := 47, r := 29 }
    lowerValue := 233704212416
    upperValue := 13107200000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 29))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 31 29))) },
  { key := { q := 20, n := 47, r := 30 }
    lowerValue := 20338584525
    upperValue := 655360000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 30))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 32 30))) },
  { key := { q := 20, n := 47, r := 31 }
    lowerValue := 1934688398
    upperValue := 32768000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 31))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 33 31))) },
  { key := { q := 20, n := 47, r := 32 }
    lowerValue := 201607291
    upperValue := 1638400000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 32))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 34 32))) },
  { key := { q := 20, n := 47, r := 33 }
    lowerValue := 23076708
    upperValue := 81920000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 33))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 35 33))) },
  { key := { q := 20, n := 47, r := 34 }
    lowerValue := 2910779
    upperValue := 4096000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 34))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 36 34))) },
  { key := { q := 20, n := 47, r := 35 }
    lowerValue := 406137
    upperValue := 204800000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 35))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 37 35))) },
  { key := { q := 20, n := 47, r := 36 }
    lowerValue := 62971
    upperValue := 10240000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 36))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 38 36))) },
  { key := { q := 20, n := 47, r := 37 }
    lowerValue := 10909
    upperValue := 512000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 37))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 39 37))) },
  { key := { q := 20, n := 47, r := 38 }
    lowerValue := 2125
    upperValue := 1280000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 38))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 41 38))) },
  { key := { q := 20, n := 47, r := 39 }
    lowerValue := 469
    upperValue := 64000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 39))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 42 39))) },
  { key := { q := 20, n := 47, r := 40 }
    lowerValue := 119
    upperValue := 3200000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 40))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 43 40))) },
  { key := { q := 20, n := 47, r := 41 }
    lowerValue := 35
    upperValue := 160000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 41))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 44 41))) },
  { key := { q := 20, n := 47, r := 42 }
    lowerValue := 20
    upperValue := 8000
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 44 43))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 45 42))) },
  { key := { q := 20, n := 47, r := 43 }
    lowerValue := 20
    upperValue := 400
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 45 44)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 46 43))) },
  { key := { q := 20, n := 47, r := 44 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 46 45))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 47 44)) },
  { key := { q := 20, n := 47, r := 45 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 47 46)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 47 45)) },
  { key := { q := 20, n := 47, r := 46 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 47 46))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 47 46)) },
  { key := { q := 20, n := 47, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 47 47)) },
  { key := { q := 20, n := 47, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 47 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 47 48)) },
  { key := { q := 20, n := 48, r := 0 }
    lowerValue := 281474976710656000000000000000000000000000000000000000000000000
    upperValue := 281474976710656000000000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 20 48 0)) },
  { key := { q := 20, n := 48, r := 1 }
    lowerValue := 308296798149677984665936473165388828039430449069003285870756
    upperValue := 7036874417766400000000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 1))
    upperTrace := (.lengthenFreeN 45 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))) },
  { key := { q := 20, n := 48, r := 2 }
    lowerValue := 689685109834230534571854915576507947397953058039159955014
    upperValue := 351843720888320000000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 2))
    upperTrace := (.lengthenFreeN 43 (.lengthenDummyN 1 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 48, r := 3 }
    lowerValue := 2364513624489970441792154887982864110662018927283146110
    upperValue := 17592186044416000000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 3))
    upperTrace := (.lengthenFreeN 42 (.lengthenDummyN 2 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 48, r := 4 }
    lowerValue := 11048242110310010141140960207654670506240580986442258
    upperValue := 879609302220800000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 4))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 3 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 48, r := 5 }
    lowerValue := 65991663573901385101292922600254916541812957020689
    upperValue := 43980465111040000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 5))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 4 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 48, r := 6 }
    lowerValue := 483975420799877945205133481878722323269921968083
    upperValue := 2199023255552000000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 6))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 5 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 48, r := 7 }
    lowerValue := 4239302131163605751062786771513877597022007419
    upperValue := 109951162777600000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 7))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 6 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 48, r := 8 }
    lowerValue := 43470186495435779318763213801639418700162464
    upperValue := 5497558138880000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 8))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 7 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 48, r := 9 }
    lowerValue := 513962344350293973250410151806224376143770
    upperValue := 274877906944000000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 9))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 8 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 48, r := 10 }
    lowerValue := 6924486651529452727889298045722653984227
    upperValue := 13743895347200000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 10))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 9 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 48, r := 11 }
    lowerValue := 105312084809508962726096860326459411907
    upperValue := 687194767360000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 11))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 10 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 48, r := 12 }
    lowerValue := 1794306530072515537530034681993901619
    upperValue := 34359738368000000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 12))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 11 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 48, r := 13 }
    lowerValue := 34035340467797357088013526617081001
    upperValue := 1717986918400000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 13))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 12 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 48, r := 14 }
    lowerValue := 715043254071969724131424232102234
    upperValue := 85899345920000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 14))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 13 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 48, r := 15 }
    lowerValue := 16566543446195171324058682913479
    upperValue := 4294967296000000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 15))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 14 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 48, r := 16 }
    lowerValue := 421759679274480724666015861562
    upperValue := 214748364800000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 16))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 15 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 48, r := 17 }
    lowerValue := 11763191034181022841064478381
    upperValue := 10737418240000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 17))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 16 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 48, r := 18 }
    lowerValue := 358529209622670582897245306
    upperValue := 536870912000000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 18))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 17 (by decide : 0 < 20) (.lengthenFreeN 1 (.primitive "lean_two_block_cyclic" (primitiveUpper_valid 20 3 1))))) },
  { key := { q := 20, n := 48, r := 19 }
    lowerValue := 11916957580679329948638759
    upperValue := 2684354560000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 19))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 21 19))) },
  { key := { q := 20, n := 48, r := 20 }
    lowerValue := 431238206907217914866182
    upperValue := 134217728000000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 20))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 22 20))) },
  { key := { q := 20, n := 48, r := 21 }
    lowerValue := 16966795251515032777210
    upperValue := 6710886400000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 21))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 23 21))) },
  { key := { q := 20, n := 48, r := 22 }
    lowerValue := 725053708610684057385
    upperValue := 335544320000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 22))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 24 22))) },
  { key := { q := 20, n := 48, r := 23 }
    lowerValue := 33628930069660778142
    upperValue := 16777216000000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 23))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 25 23))) },
  { key := { q := 20, n := 48, r := 24 }
    lowerValue := 1692132018247099672
    upperValue := 838860800000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 24))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 26 24))) },
  { key := { q := 20, n := 48, r := 25 }
    lowerValue := 92354172685047372
    upperValue := 41943040000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 25))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 27 25))) },
  { key := { q := 20, n := 48, r := 26 }
    lowerValue := 5467865408004574
    upperValue := 2097152000000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 26))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 28 26))) },
  { key := { q := 20, n := 48, r := 27 }
    lowerValue := 351294735850263
    upperValue := 104857600000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 27))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 29 27))) },
  { key := { q := 20, n := 48, r := 28 }
    lowerValue := 24506977580415
    upperValue := 5242880000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 28))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 30 28))) },
  { key := { q := 20, n := 48, r := 29 }
    lowerValue := 1858091558613
    upperValue := 262144000000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 29))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 31 29))) },
  { key := { q := 20, n := 48, r := 30 }
    lowerValue := 153295495595
    upperValue := 13107200000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 30))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 32 30))) },
  { key := { q := 20, n := 48, r := 31 }
    lowerValue := 13782988898
    upperValue := 655360000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 31))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 33 31))) },
  { key := { q := 20, n := 48, r := 32 }
    lowerValue := 1353102980
    upperValue := 32768000000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 32))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 34 32))) },
  { key := { q := 20, n := 48, r := 33 }
    lowerValue := 145373811
    upperValue := 1638400000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 33))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 35 33))) },
  { key := { q := 20, n := 48, r := 34 }
    lowerValue := 17139551
    upperValue := 81920000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 34))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 36 34))) },
  { key := { q := 20, n := 48, r := 35 }
    lowerValue := 2224772
    upperValue := 4096000000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 35))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 37 35))) },
  { key := { q := 20, n := 48, r := 36 }
    lowerValue := 319169
    upperValue := 204800000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 36))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 38 36))) },
  { key := { q := 20, n := 48, r := 37 }
    lowerValue := 50839
    upperValue := 10240000000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 37))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 39 37))) },
  { key := { q := 20, n := 48, r := 38 }
    lowerValue := 9040
    upperValue := 25600000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 38))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 41 38))) },
  { key := { q := 20, n := 48, r := 39 }
    lowerValue := 1806
    upperValue := 1280000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 39))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 42 39))) },
  { key := { q := 20, n := 48, r := 40 }
    lowerValue := 409
    upperValue := 64000000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 40))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 43 40))) },
  { key := { q := 20, n := 48, r := 41 }
    lowerValue := 106
    upperValue := 3200000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 41))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 44 41))) },
  { key := { q := 20, n := 48, r := 42 }
    lowerValue := 32
    upperValue := 160000
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 42))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 45 42))) },
  { key := { q := 20, n := 48, r := 43 }
    lowerValue := 20
    upperValue := 8000
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 45 44))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 46 43))) },
  { key := { q := 20, n := 48, r := 44 }
    lowerValue := 20
    upperValue := 400
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 46 45)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 47 44))) },
  { key := { q := 20, n := 48, r := 45 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.lengthBack (by decide : 0 < 20) (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 47 46))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 48 45)) },
  { key := { q := 20, n := 48, r := 46 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.radiusBack (by decide : 46 ≤ 47) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 48 47)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 48 46)) },
  { key := { q := 20, n := 48, r := 47 }
    lowerValue := 20
    upperValue := 20
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 20 48 47))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 20 48 47)) },
  { key := { q := 20, n := 48, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 20 48 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 20 48 48)) },
  { key := { q := 21, n := 0, r := 0 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 0)) },
  { key := { q := 21, n := 0, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 1))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 1)) },
  { key := { q := 21, n := 0, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 2))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 2)) },
  { key := { q := 21, n := 0, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 3))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 3)) },
  { key := { q := 21, n := 0, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 4))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 4)) },
  { key := { q := 21, n := 0, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 5))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 5)) },
  { key := { q := 21, n := 0, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 6))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 6)) },
  { key := { q := 21, n := 0, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 7))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 7)) },
  { key := { q := 21, n := 0, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 8))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 8)) },
  { key := { q := 21, n := 0, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 9))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 9)) },
  { key := { q := 21, n := 0, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 10))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 10)) },
  { key := { q := 21, n := 0, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 11))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 11)) },
  { key := { q := 21, n := 0, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 12))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 12)) },
  { key := { q := 21, n := 0, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 13))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 13)) },
  { key := { q := 21, n := 0, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 14))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 14)) },
  { key := { q := 21, n := 0, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 15))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 15)) },
  { key := { q := 21, n := 0, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 16))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 16)) },
  { key := { q := 21, n := 0, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 17))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 17)) },
  { key := { q := 21, n := 0, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 18))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 18)) },
  { key := { q := 21, n := 0, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 19))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 19)) },
  { key := { q := 21, n := 0, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 20))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 20)) },
  { key := { q := 21, n := 0, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 21))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 21)) },
  { key := { q := 21, n := 0, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 22))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 22)) },
  { key := { q := 21, n := 0, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 23))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 23)) },
  { key := { q := 21, n := 0, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 24))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 24)) },
  { key := { q := 21, n := 0, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 25))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 25)) },
  { key := { q := 21, n := 0, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 26))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 26)) },
  { key := { q := 21, n := 0, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 27))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 27)) },
  { key := { q := 21, n := 0, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 28))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 28)) },
  { key := { q := 21, n := 0, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 29))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 29)) },
  { key := { q := 21, n := 0, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 30))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 30)) },
  { key := { q := 21, n := 0, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 31))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 31)) },
  { key := { q := 21, n := 0, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 32))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 32)) },
  { key := { q := 21, n := 0, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 33))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 33)) },
  { key := { q := 21, n := 0, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 34))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 34)) },
  { key := { q := 21, n := 0, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 35))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 35)) },
  { key := { q := 21, n := 0, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 36))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 36)) },
  { key := { q := 21, n := 0, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 37))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 37)) },
  { key := { q := 21, n := 0, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 38))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 38)) },
  { key := { q := 21, n := 0, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 39))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 39)) },
  { key := { q := 21, n := 0, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 40))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 40)) },
  { key := { q := 21, n := 0, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 41))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 41)) },
  { key := { q := 21, n := 0, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 42))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 42)) },
  { key := { q := 21, n := 0, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 43))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 43)) },
  { key := { q := 21, n := 0, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 44))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 44)) },
  { key := { q := 21, n := 0, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 45))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 45)) },
  { key := { q := 21, n := 0, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 46))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 46)) },
  { key := { q := 21, n := 0, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 47))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 47)) },
  { key := { q := 21, n := 0, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 0 48))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 0 48)) },
  { key := { q := 21, n := 1, r := 0 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 1 0)) },
  { key := { q := 21, n := 1, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 1))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 1)) },
  { key := { q := 21, n := 1, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 2))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 2)) },
  { key := { q := 21, n := 1, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 3)) },
  { key := { q := 21, n := 1, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 4)) },
  { key := { q := 21, n := 1, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 5)) },
  { key := { q := 21, n := 1, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 6)) },
  { key := { q := 21, n := 1, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 7)) },
  { key := { q := 21, n := 1, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 8)) },
  { key := { q := 21, n := 1, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 9)) },
  { key := { q := 21, n := 1, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 10)) },
  { key := { q := 21, n := 1, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 11)) },
  { key := { q := 21, n := 1, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 12)) },
  { key := { q := 21, n := 1, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 13)) },
  { key := { q := 21, n := 1, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 14)) },
  { key := { q := 21, n := 1, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 15)) },
  { key := { q := 21, n := 1, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 16)) },
  { key := { q := 21, n := 1, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 17)) },
  { key := { q := 21, n := 1, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 18)) },
  { key := { q := 21, n := 1, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 19)) },
  { key := { q := 21, n := 1, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 20)) },
  { key := { q := 21, n := 1, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 21)) },
  { key := { q := 21, n := 1, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 22)) },
  { key := { q := 21, n := 1, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 23)) },
  { key := { q := 21, n := 1, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 24)) },
  { key := { q := 21, n := 1, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 25)) },
  { key := { q := 21, n := 1, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 26)) },
  { key := { q := 21, n := 1, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 27)) },
  { key := { q := 21, n := 1, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 28)) },
  { key := { q := 21, n := 1, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 1 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 1 29)) }]

end CoveringCodes.Database
