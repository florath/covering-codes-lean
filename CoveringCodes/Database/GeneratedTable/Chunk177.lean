import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 177. Do not edit manually.

def precomputedTable_chunk_177 : Array AnyBoundEntry := #[
  { key := { q := 18, n := 21, r := 3 }
    lowerValue := 34792493105755824363
    upperValue := 19673204037648268787712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 3))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 21, r := 4 }
    lowerValue := 453075051013840415
    upperValue := 1092955779869348265984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 4))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 21, r := 5 }
    lowerValue := 7805271266357616
    upperValue := 60719765548297125888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 5))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 21, r := 6 }
    lowerValue := 171347237580176
    upperValue := 3373320308238729216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 6))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 21, r := 7 }
    lowerValue := 4677929366873
    upperValue := 187406683791040512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 7))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 21, r := 8 }
    lowerValue := 156254952736
    upperValue := 10411482432835584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 8))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 21, r := 9 }
    lowerValue := 6317074087
    upperValue := 578415690713088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 9))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 21, r := 10 }
    lowerValue := 307022674
    upperValue := 32134205039616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 10))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 21, r := 11 }
    lowerValue := 17877424
    upperValue := 1785233613312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 11))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 21, r := 12 }
    lowerValue := 1246529
    upperValue := 99179645184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 12))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 21, r := 13 }
    lowerValue := 104325
    upperValue := 5509980288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 13))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 21, r := 14 }
    lowerValue := 10537
    upperValue := 306110016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 14))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 21, r := 15 }
    lowerValue := 1296
    upperValue := 17006112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 15))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 21, r := 16 }
    lowerValue := 197
    upperValue := 944784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 16))
    upperTrace := (.lengthenFreeN 2 (.lengthenDummyN 15 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 21, r := 17 }
    lowerValue := 38
    upperValue := 5832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 17))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 21, r := 18 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 18 ≤ 19) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 20 19))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 21, r := 19 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 21 20)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19)) },
  { key := { q := 18, n := 21, r := 20 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 21 20))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 20)) },
  { key := { q := 18, n := 21, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 21)) },
  { key := { q := 18, n := 21, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 22)) },
  { key := { q := 18, n := 21, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 23)) },
  { key := { q := 18, n := 21, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 24)) },
  { key := { q := 18, n := 21, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 25)) },
  { key := { q := 18, n := 21, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 26)) },
  { key := { q := 18, n := 21, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 27)) },
  { key := { q := 18, n := 21, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 28)) },
  { key := { q := 18, n := 21, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 29)) },
  { key := { q := 18, n := 21, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 30)) },
  { key := { q := 18, n := 21, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 31)) },
  { key := { q := 18, n := 21, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 32)) },
  { key := { q := 18, n := 21, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 33)) },
  { key := { q := 18, n := 21, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 34)) },
  { key := { q := 18, n := 21, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 35)) },
  { key := { q := 18, n := 21, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 36)) },
  { key := { q := 18, n := 21, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 37)) },
  { key := { q := 18, n := 21, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 38)) },
  { key := { q := 18, n := 21, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 39)) },
  { key := { q := 18, n := 21, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 40)) },
  { key := { q := 18, n := 21, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 41)) },
  { key := { q := 18, n := 21, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 42)) },
  { key := { q := 18, n := 21, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 43)) },
  { key := { q := 18, n := 21, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 44)) },
  { key := { q := 18, n := 21, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 45)) },
  { key := { q := 18, n := 21, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 46)) },
  { key := { q := 18, n := 21, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 47)) },
  { key := { q := 18, n := 21, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 21 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 21 48)) },
  { key := { q := 18, n := 22, r := 0 }
    lowerValue := 4130428534112329328517709824
    upperValue := 4130428534112329328517709824
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 22 0)) },
  { key := { q := 18, n := 22, r := 1 }
    lowerValue := 11014476090966211542713893
    upperValue := 114734125947564703569936384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 1))
    upperTrace := (.lengthenFreeN 19 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 22, r := 2 }
    lowerValue := 61525136802698026760177
    upperValue := 6374118108198039087218688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 2))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 22, r := 3 }
    lowerValue := 541116887476962907931
    upperValue := 354117672677668838178816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 3))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 22, r := 4 }
    lowerValue := 6677174566557715906
    upperValue := 19673204037648268787712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 4))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 22, r := 5 }
    lowerValue := 108669454236184317
    upperValue := 1092955779869348265984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 5))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 22, r := 6 }
    lowerValue := 2246036440110112
    upperValue := 60719765548297125888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 6))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 22, r := 7 }
    lowerValue := 57511012889344
    upperValue := 3373320308238729216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 7))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 22, r := 8 }
    lowerValue := 1793921538880
    upperValue := 187406683791040512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 8))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 22, r := 9 }
    lowerValue := 67391074097
    upperValue := 10411482432835584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 9))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 22, r := 10 }
    lowerValue := 3026121616
    upperValue := 578415690713088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 10))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 22, r := 11 }
    lowerValue := 161714932
    upperValue := 32134205039616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 11))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 22, r := 12 }
    lowerValue := 10267247
    upperValue := 1785233613312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 12))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 22, r := 13 }
    lowerValue := 775082
    upperValue := 99179645184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 13))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 22, r := 14 }
    lowerValue := 69805
    upperValue := 5509980288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 14))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 22, r := 15 }
    lowerValue := 7547
    upperValue := 306110016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 15))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 22, r := 16 }
    lowerValue := 989
    upperValue := 17006112
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 16))
    upperTrace := (.lengthenFreeN 3 (.lengthenDummyN 15 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 22, r := 17 }
    lowerValue := 160
    upperValue := 104976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 17))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 22, r := 18 }
    lowerValue := 33
    upperValue := 5832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 18))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 22, r := 19 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 19 ≤ 20) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 21 20))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 22, r := 20 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 22 21)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20)) },
  { key := { q := 18, n := 22, r := 21 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 22 21))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 21)) },
  { key := { q := 18, n := 22, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 22)) },
  { key := { q := 18, n := 22, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 23)) },
  { key := { q := 18, n := 22, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 24)) },
  { key := { q := 18, n := 22, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 25)) },
  { key := { q := 18, n := 22, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 26)) },
  { key := { q := 18, n := 22, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 27)) },
  { key := { q := 18, n := 22, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 28)) },
  { key := { q := 18, n := 22, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 29)) },
  { key := { q := 18, n := 22, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 30)) },
  { key := { q := 18, n := 22, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 31)) },
  { key := { q := 18, n := 22, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 32)) },
  { key := { q := 18, n := 22, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 33)) },
  { key := { q := 18, n := 22, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 34)) },
  { key := { q := 18, n := 22, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 35)) },
  { key := { q := 18, n := 22, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 36)) },
  { key := { q := 18, n := 22, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 37)) },
  { key := { q := 18, n := 22, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 38)) },
  { key := { q := 18, n := 22, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 39)) },
  { key := { q := 18, n := 22, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 40)) },
  { key := { q := 18, n := 22, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 41)) },
  { key := { q := 18, n := 22, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 42)) },
  { key := { q := 18, n := 22, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 43)) },
  { key := { q := 18, n := 22, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 44)) },
  { key := { q := 18, n := 22, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 45)) },
  { key := { q := 18, n := 22, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 46)) },
  { key := { q := 18, n := 22, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 47)) },
  { key := { q := 18, n := 22, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 22 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 22 48)) },
  { key := { q := 18, n := 23, r := 0 }
    lowerValue := 74347713614021927913318776832
    upperValue := 74347713614021927913318776832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 23 0)) },
  { key := { q := 18, n := 23, r := 1 }
    lowerValue := 189662534729647775289078513
    upperValue := 2065214267056164664258854912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 1))
    upperTrace := (.lengthenFreeN 20 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 23, r := 2 }
    lowerValue := 1011409672475777495453874
    upperValue := 114734125947564703569936384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 2))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 23, r := 3 }
    lowerValue := 8473222382260404766180
    upperValue := 6374118108198039087218688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 3))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 23, r := 4 }
    lowerValue := 99348469025177860928
    upperValue := 354117672677668838178816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 4))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 23, r := 5 }
    lowerValue := 1532148956237533368
    upperValue := 19673204037648268787712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 5))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 23, r := 6 }
    lowerValue := 29916907969438361
    upperValue := 1092955779869348265984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 6))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 23, r := 7 }
    lowerValue := 721244497856261
    upperValue := 60719765548297125888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 7))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 23, r := 8 }
    lowerValue := 21101163278585
    upperValue := 3373320308238729216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 8))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 23, r := 9 }
    lowerValue := 740277502303
    upperValue := 187406683791040512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 9))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 23, r := 10 }
    lowerValue := 30889890817
    upperValue := 10411482432835584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 10))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 23, r := 11 }
    lowerValue := 1525233381
    upperValue := 578415690713088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 11))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 23, r := 12 }
    lowerValue := 88879956
    upperValue := 32134205039616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 12))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 23, r := 13 }
    lowerValue := 6110108
    upperValue := 1785233613312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 13))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 23, r := 14 }
    lowerValue := 496431
    upperValue := 99179645184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 14))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 23, r := 15 }
    lowerValue := 47866
    upperValue := 5509980288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 15))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 23, r := 16 }
    lowerValue := 5515
    upperValue := 306110016
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 16))
    upperTrace := (.lengthenFreeN 4 (.lengthenDummyN 15 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 23, r := 17 }
    lowerValue := 767
    upperValue := 1889568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 17))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 23, r := 18 }
    lowerValue := 131
    upperValue := 104976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 18))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 23, r := 19 }
    lowerValue := 28
    upperValue := 5832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 19))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 23, r := 20 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 20 ≤ 21) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 22 21))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20))) },
  { key := { q := 18, n := 23, r := 21 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 23 22)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 21)) },
  { key := { q := 18, n := 23, r := 22 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 23 22))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 22)) },
  { key := { q := 18, n := 23, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 23 23)) },
  { key := { q := 18, n := 23, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 23 24)) },
  { key := { q := 18, n := 23, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 23 25)) },
  { key := { q := 18, n := 23, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 23 26)) },
  { key := { q := 18, n := 23, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 23 27)) },
  { key := { q := 18, n := 23, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 23 28)) },
  { key := { q := 18, n := 23, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 23 29)) },
  { key := { q := 18, n := 23, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 23 30)) },
  { key := { q := 18, n := 23, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 23 31)) },
  { key := { q := 18, n := 23, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 23 32)) },
  { key := { q := 18, n := 23, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 23 33)) },
  { key := { q := 18, n := 23, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 23 34)) },
  { key := { q := 18, n := 23, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 23 35)) },
  { key := { q := 18, n := 23, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 23 36)) },
  { key := { q := 18, n := 23, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 23 37)) },
  { key := { q := 18, n := 23, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 23 38)) },
  { key := { q := 18, n := 23, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 23 39)) },
  { key := { q := 18, n := 23, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 23 40)) },
  { key := { q := 18, n := 23, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 23 41)) },
  { key := { q := 18, n := 23, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 23 42)) },
  { key := { q := 18, n := 23, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 23 43)) },
  { key := { q := 18, n := 23, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 23 44)) },
  { key := { q := 18, n := 23, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 23 45)) },
  { key := { q := 18, n := 23, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 23 46)) },
  { key := { q := 18, n := 23, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 23 47)) },
  { key := { q := 18, n := 23, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 23 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 23 48)) },
  { key := { q := 18, n := 24, r := 0 }
    lowerValue := 1338258845052394702439737982976
    upperValue := 1338258845052394702439737982976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 24 0)) },
  { key := { q := 18, n := 24, r := 1 }
    lowerValue := 3272026516020524944840435167
    upperValue := 37173856807010963956659388416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 1))
    upperTrace := (.lengthenFreeN 21 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 24, r := 2 }
    lowerValue := 16692138812971882085486860
    upperValue := 2065214267056164664258854912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 2))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 24, r := 3 }
    lowerValue := 133504339304025724287029
    upperValue := 114734125947564703569936384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 3))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 24, r := 4 }
    lowerValue := 1491065918027457541907
    upperValue := 6374118108198039087218688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 4))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 24, r := 5 }
    lowerValue := 21850151347168987509
    upperValue := 354117672677668838178816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 5))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 24, r := 6 }
    lowerValue := 404299580825109452
    upperValue := 19673204037648268787712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 6))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 24, r := 7 }
    lowerValue := 9208419115626885
    upperValue := 1092955779869348265984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 7))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 24, r := 8 }
    lowerValue := 253660022959490
    upperValue := 60719765548297125888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 8))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 24, r := 9 }
    lowerValue := 8346906455476
    upperValue := 3373320308238729216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 9))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 24, r := 10 }
    lowerValue := 325277228851
    upperValue := 187406683791040512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 10))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 24, r := 11 }
    lowerValue := 14925630192
    upperValue := 10411482432835584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 11))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 24, r := 12 }
    lowerValue := 803680283
    upperValue := 578415690713088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 12))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 24, r := 13 }
    lowerValue := 50713876
    upperValue := 32134205039616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 13))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 24, r := 14 }
    lowerValue := 3752614
    upperValue := 1785233613312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 14))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 24, r := 15 }
    lowerValue := 326465
    upperValue := 99179645184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 15))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 24, r := 16 }
    lowerValue := 33551
    upperValue := 5509980288
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 16))
    upperTrace := (.lengthenFreeN 5 (.lengthenDummyN 15 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 24, r := 17 }
    lowerValue := 4103
    upperValue := 34012224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 17))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 24, r := 18 }
    lowerValue := 604
    upperValue := 1889568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 18))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 24, r := 19 }
    lowerValue := 109
    upperValue := 104976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 19))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 24, r := 20 }
    lowerValue := 25
    upperValue := 5832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 20))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20))) },
  { key := { q := 18, n := 24, r := 21 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 23 22))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 21))) },
  { key := { q := 18, n := 24, r := 22 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 24 23)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 24 22)) },
  { key := { q := 18, n := 24, r := 23 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 24 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 24 23)) },
  { key := { q := 18, n := 24, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 24 24)) },
  { key := { q := 18, n := 24, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 24 25)) },
  { key := { q := 18, n := 24, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 24 26)) },
  { key := { q := 18, n := 24, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 24 27)) },
  { key := { q := 18, n := 24, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 24 28)) },
  { key := { q := 18, n := 24, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 24 29)) },
  { key := { q := 18, n := 24, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 24 30)) },
  { key := { q := 18, n := 24, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 24 31)) },
  { key := { q := 18, n := 24, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 24 32)) },
  { key := { q := 18, n := 24, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 24 33)) },
  { key := { q := 18, n := 24, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 24 34)) },
  { key := { q := 18, n := 24, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 24 35)) },
  { key := { q := 18, n := 24, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 24 36)) },
  { key := { q := 18, n := 24, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 24 37)) },
  { key := { q := 18, n := 24, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 24 38)) },
  { key := { q := 18, n := 24, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 24 39)) },
  { key := { q := 18, n := 24, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 24 40)) },
  { key := { q := 18, n := 24, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 24 41)) },
  { key := { q := 18, n := 24, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 24 42)) },
  { key := { q := 18, n := 24, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 24 43)) },
  { key := { q := 18, n := 24, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 24 44)) },
  { key := { q := 18, n := 24, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 24 45)) },
  { key := { q := 18, n := 24, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 24 46)) },
  { key := { q := 18, n := 24, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 24 47)) },
  { key := { q := 18, n := 24, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 24 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 24 48)) },
  { key := { q := 18, n := 25, r := 0 }
    lowerValue := 24088659210943104643915283693568
    upperValue := 24088659210943104643915283693568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 25 0)) },
  { key := { q := 18, n := 25, r := 1 }
    lowerValue := 56546148382495550807312872521
    upperValue := 669129422526197351219868991488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 1))
    upperTrace := (.lengthenFreeN 22 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 25, r := 2 }
    lowerValue := 276480720002560712576214720
    upperValue := 37173856807010963956659388416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 2))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 25, r := 3 }
    lowerValue := 2115447809721616921215012
    upperValue := 2065214267056164664258854912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 3))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 25, r := 4 }
    lowerValue := 22556451857459965897462
    upperValue := 114734125947564703569936384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 4))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 25, r := 5 }
    lowerValue := 314864142531269401675
    upperValue := 6374118108198039087218688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 5))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 25, r := 6 }
    lowerValue := 5536008583386997862
    upperValue := 354117672677668838178816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 6))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 25, r := 7 }
    lowerValue := 119486763581406685
    upperValue := 19673204037648268787712
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 7))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 25, r := 8 }
    lowerValue := 3109656200711775
    upperValue := 1092955779869348265984
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 8))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 7 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 25, r := 9 }
    lowerValue := 96347517567991
    upperValue := 60719765548297125888
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 9))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 8 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 25, r := 10 }
    lowerValue := 3521827154390
    upperValue := 3373320308238729216
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 10))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 9 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 25, r := 11 }
    lowerValue := 150928262462
    upperValue := 187406683791040512
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 11))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 10 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 25, r := 12 }
    lowerValue := 7552691749
    upperValue := 10411482432835584
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 12))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 11 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 25, r := 13 }
    lowerValue := 440408351
    upperValue := 578415690713088
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 13))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 12 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 25, r := 14 }
    lowerValue := 29915494
    upperValue := 32134205039616
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 14))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 13 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 25, r := 15 }
    lowerValue := 2370512
    upperValue := 1785233613312
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 15))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 14 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 25, r := 16 }
    lowerValue := 219837
    upperValue := 99179645184
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 16))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 15 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 25, r := 17 }
    lowerValue := 23986
    upperValue := 612220032
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 17))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 19 17))) },
  { key := { q := 18, n := 25, r := 18 }
    lowerValue := 3103
    upperValue := 34012224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 18))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 20 18))) },
  { key := { q := 18, n := 25, r := 19 }
    lowerValue := 481
    upperValue := 1889568
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 19))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 21 19))) },
  { key := { q := 18, n := 25, r := 20 }
    lowerValue := 91
    upperValue := 104976
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 20))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 22 20))) },
  { key := { q := 18, n := 25, r := 21 }
    lowerValue := 22
    upperValue := 5832
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 21))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 23 21))) },
  { key := { q := 18, n := 25, r := 22 }
    lowerValue := 18
    upperValue := 324
    lowerTrace := (.lengthBack (by decide : 0 < 18) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 24 23))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 24 22))) },
  { key := { q := 18, n := 25, r := 23 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 25 24)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 25 23)) },
  { key := { q := 18, n := 25, r := 24 }
    lowerValue := 18
    upperValue := 18
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 18 25 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 18 25 24)) },
  { key := { q := 18, n := 25, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 25 25)) },
  { key := { q := 18, n := 25, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 25 26)) },
  { key := { q := 18, n := 25, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 25 27)) },
  { key := { q := 18, n := 25, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 25 28)) },
  { key := { q := 18, n := 25, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 25 29)) },
  { key := { q := 18, n := 25, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 25 30)) },
  { key := { q := 18, n := 25, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 25 31)) },
  { key := { q := 18, n := 25, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 25 32)) },
  { key := { q := 18, n := 25, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 25 33)) },
  { key := { q := 18, n := 25, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 25 34)) },
  { key := { q := 18, n := 25, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 25 35)) },
  { key := { q := 18, n := 25, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 25 36)) },
  { key := { q := 18, n := 25, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 25 37)) },
  { key := { q := 18, n := 25, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 25 38)) },
  { key := { q := 18, n := 25, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 25 39)) },
  { key := { q := 18, n := 25, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 25 40)) },
  { key := { q := 18, n := 25, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 25 41)) },
  { key := { q := 18, n := 25, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 25 42)) },
  { key := { q := 18, n := 25, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 25 43)) },
  { key := { q := 18, n := 25, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 25 44)) },
  { key := { q := 18, n := 25, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 25 45)) },
  { key := { q := 18, n := 25, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 25 46)) },
  { key := { q := 18, n := 25, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 25 47)) },
  { key := { q := 18, n := 25, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 25 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 18 25 48)) },
  { key := { q := 18, n := 26, r := 0 }
    lowerValue := 433595865796975883590475106484224
    upperValue := 433595865796975883590475106484224
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 26 0)) },
  { key := { q := 18, n := 26, r := 1 }
    lowerValue := 978771706087981678533803852109
    upperValue := 12044329605471552321957641846784
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 1))
    upperTrace := (.lengthenFreeN 23 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))) },
  { key := { q := 18, n := 26, r := 2 }
    lowerValue := 4594734081436248342557594805
    upperValue := 669129422526197351219868991488
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 2))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 1 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 26, r := 3 }
    lowerValue := 33695228862179595696176419
    upperValue := 37173856807010963956659388416
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 3))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 2 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 26, r := 4 }
    lowerValue := 343712579667723986310853
    upperValue := 2065214267056164664258854912
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 4))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 3 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 26, r := 5 }
    lowerValue := 4580575082631822051299
    upperValue := 114734125947564703569936384
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 5))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 4 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 26, r := 6 }
    lowerValue := 76717481203544947402
    upperValue := 6374118108198039087218688
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 6))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 5 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) },
  { key := { q := 18, n := 26, r := 7 }
    lowerValue := 1573435880531533943
    upperValue := 354117672677668838178816
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 26 7))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 6 (by decide : 0 < 18) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 18 3 1))))) }]

end CoveringCodes.Database
