import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 168. Do not edit manually.

def precomputedTable_chunk_168 : Array AnyBoundEntry := #[
  { key := { q := 17, n := 24, r := 7 }
    lowerValue := 3565262627229030
    upperValue := 415051342468923289985
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 7))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 24, r := 8 }
    lowerValue := 104316267770850
    upperValue := 24414784851113134705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 8))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 24, r := 9 }
    lowerValue := 3645868445311
    upperValue := 1436163814771360865
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 9))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 24, r := 10 }
    lowerValue := 150897677356
    upperValue := 84480224398315345
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 10))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 24, r := 11 }
    lowerValue := 7353396868
    upperValue := 4969424964606785
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 11))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 24, r := 12 }
    lowerValue := 420466511
    upperValue := 292319115565105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 12))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 24, r := 13 }
    lowerValue := 28172475
    upperValue := 17195242092065
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 13))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 24, r := 14 }
    lowerValue := 2213233
    upperValue := 1011484828945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 14))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 24, r := 15 }
    lowerValue := 204386
    upperValue := 59499107585
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 15))
    upperTrace := (.lengthenFreeN 6 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 24, r := 16 }
    lowerValue := 22292
    upperValue := 410338673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 16))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 24, r := 17 }
    lowerValue := 2892
    upperValue := 24137569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 17))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 24, r := 18 }
    lowerValue := 451
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 18))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 24, r := 19 }
    lowerValue := 86
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 19))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 24, r := 20 }
    lowerValue := 21
    upperValue := 4913
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 20))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20))) },
  { key := { q := 17, n := 24, r := 21 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 21 ≤ 22) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 23 22))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 21))) },
  { key := { q := 17, n := 24, r := 22 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 24 23)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 24 22)) },
  { key := { q := 17, n := 24, r := 23 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 24 23))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 24 23)) },
  { key := { q := 17, n := 24, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 24 24)) },
  { key := { q := 17, n := 24, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 24 25)) },
  { key := { q := 17, n := 24, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 24 26)) },
  { key := { q := 17, n := 24, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 24 27)) },
  { key := { q := 17, n := 24, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 24 28)) },
  { key := { q := 17, n := 24, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 24 29)) },
  { key := { q := 17, n := 24, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 24 30)) },
  { key := { q := 17, n := 24, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 24 31)) },
  { key := { q := 17, n := 24, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 24 32)) },
  { key := { q := 17, n := 24, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 24 33)) },
  { key := { q := 17, n := 24, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 24 34)) },
  { key := { q := 17, n := 24, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 24 35)) },
  { key := { q := 17, n := 24, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 24 36)) },
  { key := { q := 17, n := 24, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 24 37)) },
  { key := { q := 17, n := 24, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 24 38)) },
  { key := { q := 17, n := 24, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 24 39)) },
  { key := { q := 17, n := 24, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 24 40)) },
  { key := { q := 17, n := 24, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 24 41)) },
  { key := { q := 17, n := 24, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 24 42)) },
  { key := { q := 17, n := 24, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 24 43)) },
  { key := { q := 17, n := 24, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 24 44)) },
  { key := { q := 17, n := 24, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 24 45)) },
  { key := { q := 17, n := 24, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 24 46)) },
  { key := { q := 17, n := 24, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 24 47)) },
  { key := { q := 17, n := 24, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 24 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 24 48)) },
  { key := { q := 17, n := 25, r := 0 }
    lowerValue := 5770627412348402378939569991057
    upperValue := 5770627412348402378939569991057
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 25 0)) },
  { key := { q := 17, n := 25, r := 1 }
    lowerValue := 14390592050744145583390448856
    upperValue := 170311617095566526551239089905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 1))
    upperTrace := (.lengthenFreeN 22 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 25, r := 2 }
    lowerValue := 74748091505918347935124804
    upperValue := 10018330417386266267719946465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 2))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 25, r := 3 }
    lowerValue := 607562308358190568619605
    upperValue := 589313553963898015748232145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 3))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 25, r := 4 }
    lowerValue := 6881850877640580213263
    upperValue := 34665503174346942102837185
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 4))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 25, r := 5 }
    lowerValue := 102045827948705649182
    upperValue := 2039147245549820123696305
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 5))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 25, r := 6 }
    lowerValue := 1905884876303545711
    upperValue := 119949837973518830805665
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 6))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 25, r := 7 }
    lowerValue := 43695450978028608
    upperValue := 7055872821971695929745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 7))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 25, r := 8 }
    lowerValue := 1207902770242878
    upperValue := 415051342468923289985
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 8))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 25, r := 9 }
    lowerValue := 39750944590890
    upperValue := 24414784851113134705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 9))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 25, r := 10 }
    lowerValue := 1543274823859
    upperValue := 1436163814771360865
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 10))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 25, r := 11 }
    lowerValue := 70241058430
    upperValue := 84480224398315345
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 11))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 25, r := 12 }
    lowerValue := 3732837854
    upperValue := 4969424964606785
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 12))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 25, r := 13 }
    lowerValue := 231139650
    upperValue := 292319115565105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 13))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 25, r := 14 }
    lowerValue := 16670622
    upperValue := 17195242092065
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 14))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 25, r := 15 }
    lowerValue := 1402415
    upperValue := 1011484828945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 15))
    upperTrace := (.lengthenFreeN 7 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 25, r := 16 }
    lowerValue := 138050
    upperValue := 6975757441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 16))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 25, r := 17 }
    lowerValue := 15984
    upperValue := 410338673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 17))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 25, r := 18 }
    lowerValue := 2194
    upperValue := 24137569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 18))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 25, r := 19 }
    lowerValue := 361
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 19))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 25, r := 20 }
    lowerValue := 72
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 20))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20))) },
  { key := { q := 17, n := 25, r := 21 }
    lowerValue := 18
    upperValue := 4913
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 21))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 21))) },
  { key := { q := 17, n := 25, r := 22 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 24 23))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 24 22))) },
  { key := { q := 17, n := 25, r := 23 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 25 24)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 25 23)) },
  { key := { q := 17, n := 25, r := 24 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 25 24))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 25 24)) },
  { key := { q := 17, n := 25, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 25 25)) },
  { key := { q := 17, n := 25, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 25 26)) },
  { key := { q := 17, n := 25, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 25 27)) },
  { key := { q := 17, n := 25, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 25 28)) },
  { key := { q := 17, n := 25, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 25 29)) },
  { key := { q := 17, n := 25, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 25 30)) },
  { key := { q := 17, n := 25, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 25 31)) },
  { key := { q := 17, n := 25, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 25 32)) },
  { key := { q := 17, n := 25, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 25 33)) },
  { key := { q := 17, n := 25, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 25 34)) },
  { key := { q := 17, n := 25, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 25 35)) },
  { key := { q := 17, n := 25, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 25 36)) },
  { key := { q := 17, n := 25, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 25 37)) },
  { key := { q := 17, n := 25, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 25 38)) },
  { key := { q := 17, n := 25, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 25 39)) },
  { key := { q := 17, n := 25, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 25 40)) },
  { key := { q := 17, n := 25, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 25 41)) },
  { key := { q := 17, n := 25, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 25 42)) },
  { key := { q := 17, n := 25, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 25 43)) },
  { key := { q := 17, n := 25, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 25 44)) },
  { key := { q := 17, n := 25, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 25 45)) },
  { key := { q := 17, n := 25, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 25 46)) },
  { key := { q := 17, n := 25, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 25 47)) },
  { key := { q := 17, n := 25, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 25 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 25 48)) },
  { key := { q := 17, n := 26, r := 0 }
    lowerValue := 98100666009922840441972689847969
    upperValue := 98100666009922840441972689847969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 26 0)) },
  { key := { q := 17, n := 26, r := 1 }
    lowerValue := 235253395707249017846457289804
    upperValue := 2895297490624630951371064528385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 1))
    upperTrace := (.lengthenFreeN 23 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 26, r := 2 }
    lowerValue := 1173214370402224911704231076
    upperValue := 170311617095566526551239089905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 2))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 26, r := 3 }
    lowerValue := 9139912666437549938846172
    upperValue := 10018330417386266267719946465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 3))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 26, r := 4 }
    lowerValue := 99041919108651193073395
    upperValue := 589313553963898015748232145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 4))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 26, r := 5 }
    lowerValue := 1402122608182543156445
    upperValue := 34665503174346942102837185
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 5))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 26, r := 6 }
    lowerValue := 24945597955424446579
    upperValue := 2039147245549820123696305
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 6))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 26, r := 7 }
    lowerValue := 543465610187645666
    upperValue := 119949837973518830805665
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 7))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 26, r := 8 }
    lowerValue := 14237235369055540
    upperValue := 7055872821971695929745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 8))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 26, r := 9 }
    lowerValue := 442676813737599
    upperValue := 415051342468923289985
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 9))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 26, r := 10 }
    lowerValue := 16183095344108
    upperValue := 24414784851113134705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 10))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 26, r := 11 }
    lowerValue := 690937507772
    upperValue := 1436163814771360865
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 11))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 26, r := 12 }
    lowerValue := 34296341151
    upperValue := 84480224398315345
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 12))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 26, r := 13 }
    lowerValue := 1973835763
    upperValue := 4969424964606785
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 13))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 26, r := 14 }
    lowerValue := 131570815
    upperValue := 292319115565105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 14))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 26, r := 15 }
    lowerValue := 10162432
    upperValue := 17195242092065
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 15))
    upperTrace := (.lengthenFreeN 8 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 26, r := 16 }
    lowerValue := 911399
    upperValue := 118587876497
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 16))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 26, r := 17 }
    lowerValue := 95258
    upperValue := 6975757441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 17))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 26, r := 18 }
    lowerValue := 11669
    upperValue := 410338673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 18))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 26, r := 19 }
    lowerValue := 1689
    upperValue := 24137569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 19))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 26, r := 20 }
    lowerValue := 292
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 20))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20))) },
  { key := { q := 17, n := 26, r := 21 }
    lowerValue := 61
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 21))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 21))) },
  { key := { q := 17, n := 26, r := 22 }
    lowerValue := 17
    upperValue := 4913
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 22 ≤ 23) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 24 23)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 24 22))) },
  { key := { q := 17, n := 26, r := 23 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 25 24))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 25 23))) },
  { key := { q := 17, n := 26, r := 24 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 26 25)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 26 24)) },
  { key := { q := 17, n := 26, r := 25 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 26 25))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 26 25)) },
  { key := { q := 17, n := 26, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 26 26)) },
  { key := { q := 17, n := 26, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 26 27)) },
  { key := { q := 17, n := 26, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 26 28)) },
  { key := { q := 17, n := 26, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 26 29)) },
  { key := { q := 17, n := 26, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 26 30)) },
  { key := { q := 17, n := 26, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 26 31)) },
  { key := { q := 17, n := 26, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 26 32)) },
  { key := { q := 17, n := 26, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 26 33)) },
  { key := { q := 17, n := 26, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 26 34)) },
  { key := { q := 17, n := 26, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 26 35)) },
  { key := { q := 17, n := 26, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 26 36)) },
  { key := { q := 17, n := 26, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 26 37)) },
  { key := { q := 17, n := 26, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 26 38)) },
  { key := { q := 17, n := 26, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 26 39)) },
  { key := { q := 17, n := 26, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 26 40)) },
  { key := { q := 17, n := 26, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 26 41)) },
  { key := { q := 17, n := 26, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 26 42)) },
  { key := { q := 17, n := 26, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 26 43)) },
  { key := { q := 17, n := 26, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 26 44)) },
  { key := { q := 17, n := 26, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 26 45)) },
  { key := { q := 17, n := 26, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 26 46)) },
  { key := { q := 17, n := 26, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 26 47)) },
  { key := { q := 17, n := 26, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 26 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 26 48)) },
  { key := { q := 17, n := 27, r := 0 }
    lowerValue := 1667711322168688287513535727415473
    upperValue := 1667711322168688287513535727415473
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 27 0)) },
  { key := { q := 17, n := 27, r := 1 }
    lowerValue := 3851527302929996045065902372785
    upperValue := 49220057340618726173308096982545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 1))
    upperTrace := (.lengthenFreeN 24 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 27, r := 2 }
    lowerValue := 18470813965917091644757785859
    upperValue := 2895297490624630951371064528385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 2))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 27, r := 3 }
    lowerValue := 138157487047663080564937905
    upperValue := 170311617095566526551239089905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 3))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 27, r := 4 }
    lowerValue := 1434926263560595290028818
    upperValue := 10018330417386266267719946465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 4))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 27, r := 5 }
    lowerValue := 19434076301107231795311
    upperValue := 589313553963898015748232145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 5))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 27, r := 6 }
    lowerValue := 330106680703898613246
    upperValue := 34665503174346942102837185
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 6))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 27, r := 7 }
    lowerValue := 6850864764165713013
    upperValue := 2039147245549820123696305
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 7))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 27, r := 8 }
    lowerValue := 170547387436019887
    upperValue := 119949837973518830805665
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 8))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 27, r := 9 }
    lowerValue := 5025425621101571
    upperValue := 7055872821971695929745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 9))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 27, r := 10 }
    lowerValue := 173581639168408
    upperValue := 415051342468923289985
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 10))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 27, r := 11 }
    lowerValue := 6978668124088
    upperValue := 24414784851113134705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 11))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 27, r := 12 }
    lowerValue := 324957263256
    upperValue := 1436163814771360865
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 12))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 27, r := 13 }
    lowerValue := 17469046830
    upperValue := 84480224398315345
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 13))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 27, r := 14 }
    lowerValue := 1082353474
    upperValue := 4969424964606785
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 14))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 27, r := 15 }
    lowerValue := 77269509
    upperValue := 292319115565105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 15))
    upperTrace := (.lengthenFreeN 9 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 27, r := 16 }
    lowerValue := 6363131
    upperValue := 2015993900449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 16))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 27, r := 17 }
    lowerValue := 605991
    upperValue := 118587876497
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 17))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 27, r := 18 }
    lowerValue := 67017
    upperValue := 6975757441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 18))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 27, r := 19 }
    lowerValue := 8658
    upperValue := 410338673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 19))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 27, r := 20 }
    lowerValue := 1318
    upperValue := 24137569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 20))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20))) },
  { key := { q := 17, n := 27, r := 21 }
    lowerValue := 239
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 21))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 21))) },
  { key := { q := 17, n := 27, r := 22 }
    lowerValue := 53
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 22))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 24 22))) },
  { key := { q := 17, n := 27, r := 23 }
    lowerValue := 17
    upperValue := 4913
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 23 ≤ 24) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 25 24)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 25 23))) },
  { key := { q := 17, n := 27, r := 24 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 26 25))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 26 24))) },
  { key := { q := 17, n := 27, r := 25 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 27 26)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 27 25)) },
  { key := { q := 17, n := 27, r := 26 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 27 26))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 27 26)) },
  { key := { q := 17, n := 27, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 27 27)) },
  { key := { q := 17, n := 27, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 27 28)) },
  { key := { q := 17, n := 27, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 27 29)) },
  { key := { q := 17, n := 27, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 27 30)) },
  { key := { q := 17, n := 27, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 27 31)) },
  { key := { q := 17, n := 27, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 27 32)) },
  { key := { q := 17, n := 27, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 27 33)) },
  { key := { q := 17, n := 27, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 27 34)) },
  { key := { q := 17, n := 27, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 27 35)) },
  { key := { q := 17, n := 27, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 27 36)) },
  { key := { q := 17, n := 27, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 27 37)) },
  { key := { q := 17, n := 27, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 27 38)) },
  { key := { q := 17, n := 27, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 27 39)) },
  { key := { q := 17, n := 27, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 27 40)) },
  { key := { q := 17, n := 27, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 27 41)) },
  { key := { q := 17, n := 27, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 27 42)) },
  { key := { q := 17, n := 27, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 27 43)) },
  { key := { q := 17, n := 27, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 27 44)) },
  { key := { q := 17, n := 27, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 27 45)) },
  { key := { q := 17, n := 27, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 27 46)) },
  { key := { q := 17, n := 27, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 27 47)) },
  { key := { q := 17, n := 27, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 27 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 27 48)) },
  { key := { q := 17, n := 28, r := 0 }
    lowerValue := 28351092476867700887730107366063041
    upperValue := 28351092476867700887730107366063041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 28 0)) },
  { key := { q := 17, n := 28, r := 1 }
    lowerValue := 63142744937344545406971285893237
    upperValue := 836740974790518344946237648703265
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 1))
    upperTrace := (.lengthenFreeN 25 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 28, r := 2 }
    lowerValue := 291626901435630608717920809798
    upperValue := 49220057340618726173308096982545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 2))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 28, r := 3 }
    lowerValue := 2097639427299743704807146125
    upperValue := 2895297490624630951371064528385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 3))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 28, r := 4 }
    lowerValue := 20917675998446996472404269
    upperValue := 170311617095566526551239089905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 4))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 28, r := 5 }
    lowerValue := 271537701723389078361846
    upperValue := 10018330417386266267719946465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 5))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 28, r := 6 }
    lowerValue := 4412581721418055514598
    upperValue := 589313553963898015748232145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 6))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 28, r := 7 }
    lowerValue := 87432299342363556818
    upperValue := 34665503174346942102837185
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 7))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 28, r := 8 }
    lowerValue := 2073437603851821231
    upperValue := 2039147245549820123696305
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 8))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 28, r := 9 }
    lowerValue := 58059377885861297
    upperValue := 119949837973518830805665
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 9))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 28, r := 10 }
    lowerValue := 1900548138187515
    upperValue := 7055872821971695929745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 10))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 28, r := 11 }
    lowerValue := 72196197320155
    upperValue := 415051342468923289985
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 11))
    upperTrace := (.lengthenFreeN 14 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 28, r := 12 }
    lowerValue := 3165718574344
    upperValue := 24414784851113134705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 12))
    upperTrace := (.lengthenFreeN 13 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 28, r := 13 }
    lowerValue := 159652368619
    upperValue := 1436163814771360865
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 13))
    upperTrace := (.lengthenFreeN 12 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 28, r := 14 }
    lowerValue := 9240042820
    upperValue := 84480224398315345
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 14))
    upperTrace := (.lengthenFreeN 11 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 28, r := 15 }
    lowerValue := 613180121
    upperValue := 4969424964606785
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 15))
    upperTrace := (.lengthenFreeN 10 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 28, r := 16 }
    lowerValue := 46674728
    upperValue := 34271896307633
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 16))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 28, r := 17 }
    lowerValue := 4081950
    upperValue := 2015993900449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 17))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 28, r := 18 }
    lowerValue := 411377
    upperValue := 118587876497
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 18))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 28, r := 19 }
    lowerValue := 47989
    upperValue := 6975757441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 19))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 28, r := 20 }
    lowerValue := 6521
    upperValue := 410338673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 20))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20))) },
  { key := { q := 17, n := 28, r := 21 }
    lowerValue := 1041
    upperValue := 24137569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 21))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 21))) },
  { key := { q := 17, n := 28, r := 22 }
    lowerValue := 198
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 22))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 24 22))) },
  { key := { q := 17, n := 28, r := 23 }
    lowerValue := 45
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 23))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 25 23))) },
  { key := { q := 17, n := 28, r := 24 }
    lowerValue := 17
    upperValue := 4913
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 24 ≤ 25) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 26 25)))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 26 24))) },
  { key := { q := 17, n := 28, r := 25 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 25 ≤ 26) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 27 26))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 27 25))) },
  { key := { q := 17, n := 28, r := 26 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 26 ≤ 27) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 28 27)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 28 26)) },
  { key := { q := 17, n := 28, r := 27 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 28 27))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 28 27)) },
  { key := { q := 17, n := 28, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 28 28)) },
  { key := { q := 17, n := 28, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 28 29)) },
  { key := { q := 17, n := 28, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 28 30)) },
  { key := { q := 17, n := 28, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 28 31)) },
  { key := { q := 17, n := 28, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 28 32)) },
  { key := { q := 17, n := 28, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 28 33)) },
  { key := { q := 17, n := 28, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 28 34)) },
  { key := { q := 17, n := 28, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 35))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 28 35)) },
  { key := { q := 17, n := 28, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 36))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 28 36)) },
  { key := { q := 17, n := 28, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 37))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 28 37)) },
  { key := { q := 17, n := 28, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 38))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 28 38)) },
  { key := { q := 17, n := 28, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 39))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 28 39)) },
  { key := { q := 17, n := 28, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 40))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 28 40)) },
  { key := { q := 17, n := 28, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 41))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 28 41)) },
  { key := { q := 17, n := 28, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 42))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 28 42)) },
  { key := { q := 17, n := 28, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 43))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 28 43)) },
  { key := { q := 17, n := 28, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 28 44)) },
  { key := { q := 17, n := 28, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 28 45)) },
  { key := { q := 17, n := 28, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 28 46)) },
  { key := { q := 17, n := 28, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 28 47)) },
  { key := { q := 17, n := 28, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 28 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 28 48)) },
  { key := { q := 17, n := 29, r := 0 }
    lowerValue := 481968572106750915091411825223071697
    upperValue := 481968572106750915091411825223071697
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 29 0)) },
  { key := { q := 17, n := 29, r := 1 }
    lowerValue := 1036491552917743903422391021985101
    upperValue := 14224596571438811864086040027955505
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 1))
    upperTrace := (.lengthenFreeN 26 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 29, r := 2 }
    lowerValue := 4616512984614619736318730905098
    upperValue := 836740974790518344946237648703265
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 2))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 29, r := 3 }
    lowerValue := 31979474215647337292416742627
    upperValue := 49220057340618726173308096982545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 3))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 29, r := 4 }
    lowerValue := 306670555019343622198208863
    upperValue := 2895297490624630951371064528385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 4))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 29, r := 5 }
    lowerValue := 3822257661642727268946192
    upperValue := 170311617095566526551239089905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 5))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 29, r := 6 }
    lowerValue := 59534570851193328815644
    upperValue := 10018330417386266267719946465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 6))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 29, r := 7 }
    lowerValue := 1128562075457412888703
    upperValue := 589313553963898015748232145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 7))
    upperTrace := (.lengthenFreeN 19 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 29, r := 8 }
    lowerValue := 25552782191093292843
    upperValue := 34665503174346942102837185
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 8))
    upperTrace := (.lengthenFreeN 18 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 29, r := 9 }
    lowerValue := 681624991091320059
    upperValue := 2039147245549820123696305
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 9))
    upperTrace := (.lengthenFreeN 17 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 29, r := 10 }
    lowerValue := 21203777445598309
    upperValue := 119949837973518830805665
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 10))
    upperTrace := (.lengthenFreeN 16 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 29, r := 11 }
    lowerValue := 763366698679493
    upperValue := 7055872821971695929745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 29 11))
    upperTrace := (.lengthenFreeN 15 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) }]

end CoveringCodes.Database
