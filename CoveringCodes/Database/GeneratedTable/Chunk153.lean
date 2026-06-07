import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 153. Do not edit manually.

def precomputedTable_chunk_153 : Array AnyBoundEntry := #[
  { key := { q := 15, n := 45, r := 30 }
    lowerValue := 8730952
    upperValue := 1946195068359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 30))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 33 30))) },
  { key := { q := 15, n := 45, r := 31 }
    lowerValue := 1269213
    upperValue := 129746337890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 31))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 34 31))) },
  { key := { q := 15, n := 45, r := 32 }
    lowerValue := 203576
    upperValue := 8649755859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 32))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 35 32))) },
  { key := { q := 15, n := 45, r := 33 }
    lowerValue := 36156
    upperValue := 576650390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 33))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 36 33))) },
  { key := { q := 15, n := 45, r := 34 }
    lowerValue := 7141
    upperValue := 38443359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 34))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 37 34))) },
  { key := { q := 15, n := 45, r := 35 }
    lowerValue := 1576
    upperValue := 2562890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 35))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 38 35))) },
  { key := { q := 15, n := 45, r := 36 }
    lowerValue := 391
    upperValue := 170859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 36))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 39 36))) },
  { key := { q := 15, n := 45, r := 37 }
    lowerValue := 110
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 37))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 40 37))) },
  { key := { q := 15, n := 45, r := 38 }
    lowerValue := 36
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 38))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 41 38))) },
  { key := { q := 15, n := 45, r := 39 }
    lowerValue := 15
    upperValue := 50625
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 41 40)))))))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 42 39))) },
  { key := { q := 15, n := 45, r := 40 }
    lowerValue := 15
    upperValue := 3375
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 42 41))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 43 40))) },
  { key := { q := 15, n := 45, r := 41 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 43 42)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 44 41))) },
  { key := { q := 15, n := 45, r := 42 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 44 43))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 45 42)) },
  { key := { q := 15, n := 45, r := 43 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 45 44)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 45 43)) },
  { key := { q := 15, n := 45, r := 44 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 45 44))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 45 44)) },
  { key := { q := 15, n := 45, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 45 45)) },
  { key := { q := 15, n := 45, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 45 46)) },
  { key := { q := 15, n := 45, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 45 47)) },
  { key := { q := 15, n := 45, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 45 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 45 48)) },
  { key := { q := 15, n := 46, r := 0 }
    lowerValue := 1259499259682073258080805544523173011839389801025390625
    upperValue := 1259499259682073258080805544523173011839389801025390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 46 0)) },
  { key := { q := 15, n := 46, r := 1 }
    lowerValue := 1952712030514842260590396193059182964092077210892079
    upperValue := 42169901138984971307594378231442533433437347412109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 1))
    upperTrace := (.lengthenFreeN 43 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 46, r := 2 }
    lowerValue := 6189033486558429808018503449660563680692807552765
    upperValue := 2811326742598998087172958548762835562229156494140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 2))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 46, r := 3 }
    lowerValue := 30090223172640774201490071224476255093078224498
    upperValue := 187421782839933205811530569917522370815277099609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 3))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 46, r := 4 }
    lowerValue := 199579256364207034870075661035455489944657512
    upperValue := 12494785522662213720768704661168158054351806640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 4))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 46, r := 5 }
    lowerValue := 1693933666694704924808071373302765265720304
    upperValue := 832985701510814248051246977411210536956787109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 5))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 46, r := 6 }
    lowerValue := 17671890688515527410596992381383692509912
    upperValue := 55532380100720949870083131827414035797119140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 6))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 46, r := 7 }
    lowerValue := 220442858588827104214006011116486531946
    upperValue := 3702158673381396658005542121827602386474609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 7))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 46, r := 8 }
    lowerValue := 3222913115706572790851695988979698305
    upperValue := 246810578225426443867036141455173492431640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 8))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 46, r := 9 }
    lowerValue := 54398007574698270090469527246424870
    upperValue := 16454038548361762924469076097011566162109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 9))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 46, r := 10 }
    lowerValue := 1047612556574109800069677769882064
    upperValue := 1096935903224117528297938406467437744140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 10))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 46, r := 11 }
    lowerValue := 22806014271176565486074106355658
    upperValue := 73129060214941168553195893764495849609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 11))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 46, r := 12 }
    lowerValue := 556999438676395575946958759076
    upperValue := 4875270680996077903546392917633056640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 12))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 46, r := 13 }
    lowerValue := 15168369860727643545768757870
    upperValue := 325018045399738526903092861175537109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 13))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 12 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 46, r := 14 }
    lowerValue := 458240433853278495178261461
    upperValue := 2876265888493261300027370452880859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 14))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 46, r := 15 }
    lowerValue := 15292835340292312007887677
    upperValue := 191751059232884086668491363525390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 15))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 46, r := 16 }
    lowerValue := 561828468051778199104575
    upperValue := 12783403948858939111232757568359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 16))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 46, r := 17 }
    lowerValue := 22655984123463262848602
    upperValue := 852226929923929274082183837890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 17))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 46, r := 18 }
    lowerValue := 1000441200729557618644
    upperValue := 56815128661595284938812255859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 18))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 46, r := 19 }
    lowerValue := 48282603736458645578
    upperValue := 3787675244106352329254150390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 19))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) },
  { key := { q := 15, n := 46, r := 20 }
    lowerValue := 2542814230766306304
    upperValue := 252511682940423488616943359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 20))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20))) },
  { key := { q := 15, n := 46, r := 21 }
    lowerValue := 145967032786738009
    upperValue := 16834112196028232574462890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 21))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 21))) },
  { key := { q := 15, n := 46, r := 22 }
    lowerValue := 9125306608276065
    upperValue := 1122274146401882171630859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 22))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 24 22))) },
  { key := { q := 15, n := 46, r := 23 }
    lowerValue := 620962826733674
    upperValue := 74818276426792144775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 23))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 25 23))) },
  { key := { q := 15, n := 46, r := 24 }
    lowerValue := 45984699389937
    upperValue := 4987885095119476318359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 24))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 26 24))) },
  { key := { q := 15, n := 46, r := 25 }
    lowerValue := 3706155144889
    upperValue := 332525673007965087890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 25))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 27 25))) },
  { key := { q := 15, n := 46, r := 26 }
    lowerValue := 325205612618
    upperValue := 22168378200531005859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 26))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 28 26))) },
  { key := { q := 15, n := 46, r := 27 }
    lowerValue := 31089222902
    upperValue := 1477891880035400390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 27))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 29 27))) },
  { key := { q := 15, n := 46, r := 28 }
    lowerValue := 3241224989
    upperValue := 6568408355712890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 28))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 31 28))) },
  { key := { q := 15, n := 46, r := 29 }
    lowerValue := 369004093
    upperValue := 437893890380859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 29))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 32 29))) },
  { key := { q := 15, n := 46, r := 30 }
    lowerValue := 45952351
    upperValue := 29192926025390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 30))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 33 30))) },
  { key := { q := 15, n := 46, r := 31 }
    lowerValue := 6272527
    upperValue := 1946195068359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 31))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 34 31))) },
  { key := { q := 15, n := 46, r := 32 }
    lowerValue := 940873
    upperValue := 129746337890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 32))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 35 32))) },
  { key := { q := 15, n := 46, r := 33 }
    lowerValue := 155555
    upperValue := 8649755859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 33))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 36 33))) },
  { key := { q := 15, n := 46, r := 34 }
    lowerValue := 28449
    upperValue := 576650390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 34))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 37 34))) },
  { key := { q := 15, n := 46, r := 35 }
    lowerValue := 5780
    upperValue := 38443359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 35))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 38 35))) },
  { key := { q := 15, n := 46, r := 36 }
    lowerValue := 1311
    upperValue := 2562890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 36))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 39 36))) },
  { key := { q := 15, n := 46, r := 37 }
    lowerValue := 334
    upperValue := 170859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 37))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 40 37))) },
  { key := { q := 15, n := 46, r := 38 }
    lowerValue := 97
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 38))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 41 38))) },
  { key := { q := 15, n := 46, r := 39 }
    lowerValue := 32
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 39))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 42 39))) },
  { key := { q := 15, n := 46, r := 40 }
    lowerValue := 15
    upperValue := 50625
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 42 41)))))))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 43 40))) },
  { key := { q := 15, n := 46, r := 41 }
    lowerValue := 15
    upperValue := 3375
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 43 42))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 44 41))) },
  { key := { q := 15, n := 46, r := 42 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 44 43)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 46 42)) },
  { key := { q := 15, n := 46, r := 43 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 45 44))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 46 43)) },
  { key := { q := 15, n := 46, r := 44 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 46 45)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 46 44)) },
  { key := { q := 15, n := 46, r := 45 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 46 45))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 46 45)) },
  { key := { q := 15, n := 46, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 46 46)) },
  { key := { q := 15, n := 46, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 46 47)) },
  { key := { q := 15, n := 46, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 46 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 46 48)) },
  { key := { q := 15, n := 47, r := 0 }
    lowerValue := 18892488895231098871212083167847595177590847015380859375
    upperValue := 18892488895231098871212083167847595177590847015380859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 47 0)) },
  { key := { q := 15, n := 47, r := 1 }
    lowerValue := 28668420174857509668000126203107124700441346002095387
    upperValue := 632548517084774569613915673471638001501560211181640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 1))
    upperTrace := (.lengthenFreeN 44 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 47, r := 2 }
    lowerValue := 88891189193455660814510942516985885513401778602964
    upperValue := 42169901138984971307594378231442533433437347412109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 2))
    upperTrace := (.lengthenFreeN 42 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 47, r := 3 }
    lowerValue := 422589355198413538596843325960748995813490791783
    upperValue := 2811326742598998087172958548762835562229156494140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 3))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 47, r := 4 }
    lowerValue := 2739321674005120375012434438740950583196032704
    upperValue := 187421782839933205811530569917522370815277099609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 4))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 47, r := 5 }
    lowerValue := 22710430556921401075978775735058335067877968
    upperValue := 12494785522662213720768704661168158054351806640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 5))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 47, r := 6 }
    lowerValue := 231296489712167448972156805863684248981159
    upperValue := 832985701510814248051246977411210536956787109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 6))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 47, r := 7 }
    lowerValue := 2815029200928746365201874734776073493822
    upperValue := 55532380100720949870083131827414035797119140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 7))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 47, r := 8 }
    lowerValue := 40129825809403686466510209145264975039
    upperValue := 3702158673381396658005542121827602386474609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 8))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 47, r := 9 }
    lowerValue := 660010173172493371308286721664207613
    upperValue := 246810578225426443867036141455173492431640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 9))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 47, r := 10 }
    lowerValue := 12377118562764349212243796859975668
    upperValue := 16454038548361762924469076097011566162109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 10))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 47, r := 11 }
    lowerValue := 262183666811799247889251868272315
    upperValue := 1096935903224117528297938406467437744140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 11))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 47, r := 12 }
    lowerValue := 6226114798277918068229121903563
    upperValue := 73129060214941168553195893764495849609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 12))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 47, r := 13 }
    lowerValue := 164724134056492110131212402898
    upperValue := 4875270680996077903546392917633056640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 13))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 12 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 47, r := 14 }
    lowerValue := 4830554177597679360401406292
    upperValue := 43143988327398919500410556793212890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 14))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 47, r := 15 }
    lowerValue := 156344873738090662109253908
    upperValue := 2876265888493261300027370452880859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 15))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 47, r := 16 }
    lowerValue := 5565110938262879505561291
    upperValue := 191751059232884086668491363525390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 16))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 47, r := 17 }
    lowerValue := 217211595971429551276957
    upperValue := 12783403948858939111232757568359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 17))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 47, r := 18 }
    lowerValue := 9273585919222331283112
    upperValue := 852226929923929274082183837890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 18))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 47, r := 19 }
    lowerValue := 432211647118968167014
    upperValue := 56815128661595284938812255859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 19))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) },
  { key := { q := 15, n := 47, r := 20 }
    lowerValue := 21954713920138073493
    upperValue := 3787675244106352329254150390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 20))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20))) },
  { key := { q := 15, n := 47, r := 21 }
    lowerValue := 1213928823070741789
    upperValue := 252511682940423488616943359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 21))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 21))) },
  { key := { q := 15, n := 47, r := 22 }
    lowerValue := 72993614622832034
    upperValue := 16834112196028232574462890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 22))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 24 22))) },
  { key := { q := 15, n := 47, r := 23 }
    lowerValue := 4770086016159091
    upperValue := 1122274146401882171630859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 23))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 25 23))) },
  { key := { q := 15, n := 47, r := 24 }
    lowerValue := 338661634125472
    upperValue := 74818276426792144775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 24))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 26 24))) },
  { key := { q := 15, n := 47, r := 25 }
    lowerValue := 26120094941470
    upperValue := 4987885095119476318359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 25))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 27 25))) },
  { key := { q := 15, n := 47, r := 26 }
    lowerValue := 2188989344855
    upperValue := 332525673007965087890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 26))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 28 26))) },
  { key := { q := 15, n := 47, r := 27 }
    lowerValue := 199427842399
    upperValue := 22168378200531005859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 27))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 29 27))) },
  { key := { q := 15, n := 47, r := 28 }
    lowerValue := 19766956871
    upperValue := 98526125335693359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 28))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 31 28))) },
  { key := { q := 15, n := 47, r := 29 }
    lowerValue := 2133909471
    upperValue := 6568408355712890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 29))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 32 29))) },
  { key := { q := 15, n := 47, r := 30 }
    lowerValue := 251249417
    upperValue := 437893890380859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 30))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 33 30))) },
  { key := { q := 15, n := 47, r := 31 }
    lowerValue := 32321400
    upperValue := 29192926025390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 31))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 34 31))) },
  { key := { q := 15, n := 47, r := 32 }
    lowerValue := 4552630
    upperValue := 1946195068359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 32))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 35 32))) },
  { key := { q := 15, n := 47, r := 33 }
    lowerValue := 703948
    upperValue := 129746337890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 33))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 36 33))) },
  { key := { q := 15, n := 47, r := 34 }
    lowerValue := 119855
    upperValue := 8649755859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 34))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 37 34))) },
  { key := { q := 15, n := 47, r := 35 }
    lowerValue := 22552
    upperValue := 576650390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 35))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 38 35))) },
  { key := { q := 15, n := 47, r := 36 }
    lowerValue := 4710
    upperValue := 38443359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 36))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 39 36))) },
  { key := { q := 15, n := 47, r := 37 }
    lowerValue := 1098
    upperValue := 2562890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 37))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 40 37))) },
  { key := { q := 15, n := 47, r := 38 }
    lowerValue := 287
    upperValue := 170859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 38))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 41 38))) },
  { key := { q := 15, n := 47, r := 39 }
    lowerValue := 85
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 39))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 42 39))) },
  { key := { q := 15, n := 47, r := 40 }
    lowerValue := 29
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 40))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 43 40))) },
  { key := { q := 15, n := 47, r := 41 }
    lowerValue := 15
    upperValue := 50625
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 43 42)))))))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 44 41))) },
  { key := { q := 15, n := 47, r := 42 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 44 43))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 46 42))) },
  { key := { q := 15, n := 47, r := 43 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 45 44)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 47 43)) },
  { key := { q := 15, n := 47, r := 44 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 46 45))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 47 44)) },
  { key := { q := 15, n := 47, r := 45 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 47 46)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 47 45)) },
  { key := { q := 15, n := 47, r := 46 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 47 46))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 47 46)) },
  { key := { q := 15, n := 47, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 47 47)) },
  { key := { q := 15, n := 47, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 47 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 47 48)) },
  { key := { q := 15, n := 48, r := 0 }
    lowerValue := 283387333428466483068181247517713927663862705230712890625
    upperValue := 283387333428466483068181247517713927663862705230712890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 15 48 0)) },
  { key := { q := 15, n := 48, r := 1 }
    lowerValue := 421080733177513347798189075063467946008711300491401027
    upperValue := 9488227756271618544208735102074570022523403167724609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 1))
    upperTrace := (.lengthenFreeN 45 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))) },
  { key := { q := 15, n := 48, r := 2 }
    lowerValue := 1277895272065270643026416942193234733176089146561898
    upperValue := 632548517084774569613915673471638001501560211181640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 2))
    upperTrace := (.lengthenFreeN 43 (.lengthenDummyN 1 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 48, r := 3 }
    lowerValue := 5943278859478406426833556688500152157337046795152
    upperValue := 42169901138984971307594378231442533433437347412109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 3))
    upperTrace := (.lengthenFreeN 42 (.lengthenDummyN 2 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 48, r := 4 }
    lowerValue := 37671124276219929696462687761548088045585345351
    upperValue := 2811326742598998087172958548762835562229156494140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 4))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 3 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 48, r := 5 }
    lowerValue := 305229280121075198848496837088240272253198512
    upperValue := 187421782839933205811530569917522370815277099609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 5))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 4 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 48, r := 6 }
    lowerValue := 3036491350385431413503582441211549163824226
    upperValue := 12494785522662213720768704661168158054351806640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 6))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 5 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 48, r := 7 }
    lowerValue := 36078118593911335087928006952509973395513
    upperValue := 832985701510814248051246977411210536956787109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 7))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 6 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 48, r := 8 }
    lowerValue := 501799338709277236575126545979556030623
    upperValue := 55532380100720949870083131827414035797119140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 8))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 7 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 48, r := 9 }
    lowerValue := 8047228172116827015724131261482509861
    upperValue := 3702158673381396658005542121827602386474609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 9))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 8 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 48, r := 10 }
    lowerValue := 147050111053341729884351136063250558
    upperValue := 246810578225426443867036141455173492431640625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 10))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 9 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 48, r := 11 }
    lowerValue := 3033220061531889175827811170785070
    upperValue := 16454038548361762924469076097011566162109375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 11))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 10 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 48, r := 12 }
    lowerValue := 70089695156825923235136483775452
    upperValue := 1096935903224117528297938406467437744140625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 12))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 11 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 48, r := 13 }
    lowerValue := 1803025662283911995501075783749
    upperValue := 73129060214941168553195893764495849609375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 13))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 12 (by decide : 0 < 15) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 15 3 1))))) },
  { key := { q := 15, n := 48, r := 14 }
    lowerValue := 51368778098351730038520657741
    upperValue := 647159824910983792506158351898193359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 14))
    upperTrace := (.lengthenFreeN 32 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 16 14))) },
  { key := { q := 15, n := 48, r := 15 }
    lowerValue := 1613886391015726753424024363
    upperValue := 43143988327398919500410556793212890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 15))
    upperTrace := (.lengthenFreeN 31 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 17 15))) },
  { key := { q := 15, n := 48, r := 16 }
    lowerValue := 55713086205956115994938938
    upperValue := 2876265888493261300027370452880859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 16))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 18 16))) },
  { key := { q := 15, n := 48, r := 17 }
    lowerValue := 2106895774183690806739930
    upperValue := 191751059232884086668491363525390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 17))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 19 17))) },
  { key := { q := 15, n := 48, r := 18 }
    lowerValue := 87064313490001162690825
    upperValue := 12783403948858939111232757568359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 18))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 20 18))) },
  { key := { q := 15, n := 48, r := 19 }
    lowerValue := 3923265719305915549396
    upperValue := 852226929923929274082183837890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 19))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 21 19))) },
  { key := { q := 15, n := 48, r := 20 }
    lowerValue := 192456123466149600816
    upperValue := 56815128661595284938812255859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 20))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 22 20))) },
  { key := { q := 15, n := 48, r := 21 }
    lowerValue := 10263794622711665899
    upperValue := 3787675244106352329254150390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 21))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 23 21))) },
  { key := { q := 15, n := 48, r := 22 }
    lowerValue := 594468356645427684
    upperValue := 252511682940423488616943359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 22))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 24 22))) },
  { key := { q := 15, n := 48, r := 23 }
    lowerValue := 37365724017565428
    upperValue := 16834112196028232574462890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 23))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 25 23))) },
  { key := { q := 15, n := 48, r := 24 }
    lowerValue := 2547659343331755
    upperValue := 1122274146401882171630859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 24))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 26 24))) },
  { key := { q := 15, n := 48, r := 25 }
    lowerValue := 188385655083494
    upperValue := 74818276426792144775390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 25))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 27 25))) },
  { key := { q := 15, n := 48, r := 26 }
    lowerValue := 15108514992167
    upperValue := 4987885095119476318359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 26))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 28 26))) },
  { key := { q := 15, n := 48, r := 27 }
    lowerValue := 1314637373332
    upperValue := 332525673007965087890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 27))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 29 27))) },
  { key := { q := 15, n := 48, r := 28 }
    lowerValue := 124182150651
    upperValue := 1477891880035400390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 28))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 31 28))) },
  { key := { q := 15, n := 48, r := 29 }
    lowerValue := 12745606647
    upperValue := 98526125335693359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 29))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 32 29))) },
  { key := { q := 15, n := 48, r := 30 }
    lowerValue := 1423036910
    upperValue := 6568408355712890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 30))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 33 30))) },
  { key := { q := 15, n := 48, r := 31 }
    lowerValue := 173088687
    upperValue := 437893890380859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 31))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 34 31))) },
  { key := { q := 15, n := 48, r := 32 }
    lowerValue := 22977842
    upperValue := 29192926025390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 32))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 35 32))) },
  { key := { q := 15, n := 48, r := 33 }
    lowerValue := 3336517
    upperValue := 1946195068359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 33))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 36 33))) },
  { key := { q := 15, n := 48, r := 34 }
    lowerValue := 531326
    upperValue := 129746337890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 34))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 37 34))) },
  { key := { q := 15, n := 48, r := 35 }
    lowerValue := 93081
    upperValue := 8649755859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 35))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 38 35))) },
  { key := { q := 15, n := 48, r := 36 }
    lowerValue := 18005
    upperValue := 576650390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 36))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 39 36))) },
  { key := { q := 15, n := 48, r := 37 }
    lowerValue := 3862
    upperValue := 38443359375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 37))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 40 37))) },
  { key := { q := 15, n := 48, r := 38 }
    lowerValue := 924
    upperValue := 2562890625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 38))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 41 38))) },
  { key := { q := 15, n := 48, r := 39 }
    lowerValue := 248
    upperValue := 170859375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 39))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 42 39))) },
  { key := { q := 15, n := 48, r := 40 }
    lowerValue := 75
    upperValue := 11390625
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 40))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 43 40))) },
  { key := { q := 15, n := 48, r := 41 }
    lowerValue := 26
    upperValue := 759375
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 41))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 44 41))) },
  { key := { q := 15, n := 48, r := 42 }
    lowerValue := 15
    upperValue := 3375
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 44 43)))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 46 42))) },
  { key := { q := 15, n := 48, r := 43 }
    lowerValue := 15
    upperValue := 225
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 45 44))))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 47 43))) },
  { key := { q := 15, n := 48, r := 44 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 46 45)))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 48 44)) },
  { key := { q := 15, n := 48, r := 45 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.lengthBack (by decide : 0 < 15) (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 47 46))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 48 45)) },
  { key := { q := 15, n := 48, r := 46 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.radiusBack (by decide : 46 ≤ 47) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 48 47)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 48 46)) },
  { key := { q := 15, n := 48, r := 47 }
    lowerValue := 15
    upperValue := 15
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 15 48 47))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 15 48 47)) },
  { key := { q := 15, n := 48, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 15 48 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 15 48 48)) },
  { key := { q := 16, n := 0, r := 0 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 0)) },
  { key := { q := 16, n := 0, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 1))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 1)) },
  { key := { q := 16, n := 0, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 2))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 2)) },
  { key := { q := 16, n := 0, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 3))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 3)) },
  { key := { q := 16, n := 0, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 4))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 4)) },
  { key := { q := 16, n := 0, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 5))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 5)) },
  { key := { q := 16, n := 0, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 6))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 6)) },
  { key := { q := 16, n := 0, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 7))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 7)) },
  { key := { q := 16, n := 0, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 8))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 8)) },
  { key := { q := 16, n := 0, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 9))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 9)) },
  { key := { q := 16, n := 0, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 10))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 10)) },
  { key := { q := 16, n := 0, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 11))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 11)) },
  { key := { q := 16, n := 0, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 12))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 12)) },
  { key := { q := 16, n := 0, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 13))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 13)) },
  { key := { q := 16, n := 0, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 14))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 14)) },
  { key := { q := 16, n := 0, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 15))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 15)) },
  { key := { q := 16, n := 0, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 16))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 16)) },
  { key := { q := 16, n := 0, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 17))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 17)) },
  { key := { q := 16, n := 0, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 18))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 18)) },
  { key := { q := 16, n := 0, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 19))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 19)) },
  { key := { q := 16, n := 0, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 20))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 20)) },
  { key := { q := 16, n := 0, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 21))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 21)) },
  { key := { q := 16, n := 0, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 22))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 22)) },
  { key := { q := 16, n := 0, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 23))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 23)) },
  { key := { q := 16, n := 0, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 24))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 24)) },
  { key := { q := 16, n := 0, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 25))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 25)) },
  { key := { q := 16, n := 0, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 26))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 26)) },
  { key := { q := 16, n := 0, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 27))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 27)) },
  { key := { q := 16, n := 0, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 28))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 28)) },
  { key := { q := 16, n := 0, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 29))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 29)) },
  { key := { q := 16, n := 0, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 30))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 30)) },
  { key := { q := 16, n := 0, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 31))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 31)) },
  { key := { q := 16, n := 0, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 32))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 32)) },
  { key := { q := 16, n := 0, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 33))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 33)) },
  { key := { q := 16, n := 0, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 34))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 34)) },
  { key := { q := 16, n := 0, r := 35 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 35))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 35)) },
  { key := { q := 16, n := 0, r := 36 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 36))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 36)) },
  { key := { q := 16, n := 0, r := 37 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 37))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 37)) },
  { key := { q := 16, n := 0, r := 38 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 38))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 38)) },
  { key := { q := 16, n := 0, r := 39 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 39))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 39)) },
  { key := { q := 16, n := 0, r := 40 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 40))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 40)) },
  { key := { q := 16, n := 0, r := 41 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 41))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 41)) },
  { key := { q := 16, n := 0, r := 42 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 42))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 42)) },
  { key := { q := 16, n := 0, r := 43 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 43))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 43)) },
  { key := { q := 16, n := 0, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 44))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 44)) },
  { key := { q := 16, n := 0, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 45))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 45)) },
  { key := { q := 16, n := 0, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 46))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 46)) },
  { key := { q := 16, n := 0, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 47))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 47)) },
  { key := { q := 16, n := 0, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 0 48))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 0 48)) },
  { key := { q := 16, n := 1, r := 0 }
    lowerValue := 16
    upperValue := 16
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 16 1 0)) },
  { key := { q := 16, n := 1, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 1))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 1)) },
  { key := { q := 16, n := 1, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 2))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 2)) },
  { key := { q := 16, n := 1, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 3))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 3)) },
  { key := { q := 16, n := 1, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 4))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 4)) },
  { key := { q := 16, n := 1, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 5))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 5)) },
  { key := { q := 16, n := 1, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 6))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 6)) },
  { key := { q := 16, n := 1, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 7))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 7)) },
  { key := { q := 16, n := 1, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 8))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 8)) },
  { key := { q := 16, n := 1, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 9))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 9)) },
  { key := { q := 16, n := 1, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 10))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 10)) },
  { key := { q := 16, n := 1, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 11))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 11)) },
  { key := { q := 16, n := 1, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 12))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 12)) },
  { key := { q := 16, n := 1, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 13))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 13)) },
  { key := { q := 16, n := 1, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 14))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 14)) },
  { key := { q := 16, n := 1, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 15))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 15)) },
  { key := { q := 16, n := 1, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 16))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 16)) },
  { key := { q := 16, n := 1, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 17))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 17)) },
  { key := { q := 16, n := 1, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 18))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 18)) },
  { key := { q := 16, n := 1, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 19))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 19)) },
  { key := { q := 16, n := 1, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 20))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 20)) },
  { key := { q := 16, n := 1, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 21))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 21)) },
  { key := { q := 16, n := 1, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 22))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 22)) },
  { key := { q := 16, n := 1, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 23))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 23)) },
  { key := { q := 16, n := 1, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 24))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 24)) },
  { key := { q := 16, n := 1, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 25))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 25)) },
  { key := { q := 16, n := 1, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 26))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 26)) },
  { key := { q := 16, n := 1, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 27))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 27)) },
  { key := { q := 16, n := 1, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 28))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 28)) },
  { key := { q := 16, n := 1, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 29))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 29)) },
  { key := { q := 16, n := 1, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 30))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 30)) },
  { key := { q := 16, n := 1, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 31))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 31)) },
  { key := { q := 16, n := 1, r := 32 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 32))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 32)) },
  { key := { q := 16, n := 1, r := 33 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 33))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 33)) },
  { key := { q := 16, n := 1, r := 34 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 16 1 34))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 16 1 34)) }]

end CoveringCodes.Database
