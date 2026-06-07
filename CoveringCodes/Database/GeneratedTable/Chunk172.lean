import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 172. Do not edit manually.

def precomputedTable_chunk_172 : Array AnyBoundEntry := #[
  { key := { q := 17, n := 44, r := 27 }
    lowerValue := 5618353700
    upperValue := 48661191875666868481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 27))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 29 27))) },
  { key := { q := 17, n := 44, r := 28 }
    lowerValue := 572623354
    upperValue := 2862423051509815793
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 28))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 30 28))) },
  { key := { q := 17, n := 44, r := 29 }
    lowerValue := 64138801
    upperValue := 168377826559400929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 29))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 31 29))) },
  { key := { q := 17, n := 44, r := 30 }
    lowerValue := 7914531
    upperValue := 9904578032905937
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 30))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 32 30))) },
  { key := { q := 17, n := 44, r := 31 }
    lowerValue := 1079132
    upperValue := 582622237229761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 31))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 33 31))) },
  { key := { q := 17, n := 44, r := 32 }
    lowerValue := 163166
    upperValue := 2015993900449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 32))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 35 32))) },
  { key := { q := 17, n := 44, r := 33 }
    lowerValue := 27476
    upperValue := 118587876497
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 33))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 36 33))) },
  { key := { q := 17, n := 44, r := 34 }
    lowerValue := 5180
    upperValue := 6975757441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 34))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 37 34))) },
  { key := { q := 17, n := 44, r := 35 }
    lowerValue := 1100
    upperValue := 410338673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 35))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 38 35))) },
  { key := { q := 17, n := 44, r := 36 }
    lowerValue := 265
    upperValue := 24137569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 36))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 39 36))) },
  { key := { q := 17, n := 44, r := 37 }
    lowerValue := 74
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 37))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 40 37))) },
  { key := { q := 17, n := 44, r := 38 }
    lowerValue := 24
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 38))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 41 38))) },
  { key := { q := 17, n := 44, r := 39 }
    lowerValue := 17
    upperValue := 4913
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 39 ≤ 40) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 41 40))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 42 39))) },
  { key := { q := 17, n := 44, r := 40 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 42 41)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 43 40))) },
  { key := { q := 17, n := 44, r := 41 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 43 42))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 44 41)) },
  { key := { q := 17, n := 44, r := 42 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 44 43)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 44 42)) },
  { key := { q := 17, n := 44, r := 43 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 44 43))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 44 43)) },
  { key := { q := 17, n := 44, r := 44 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 44))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 44 44)) },
  { key := { q := 17, n := 44, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 44 45)) },
  { key := { q := 17, n := 44, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 44 46)) },
  { key := { q := 17, n := 44, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 44 47)) },
  { key := { q := 17, n := 44, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 44 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 44 48)) },
  { key := { q := 17, n := 45, r := 0 }
    lowerValue := 23453165165327788911665591944416226304630809183732482257
    upperValue := 23453165165327788911665591944416226304630809183732482257
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 45 0)) },
  { key := { q := 17, n := 45, r := 1 }
    lowerValue := 32528661810440761319924538064377567690195297064816203
    upperValue := 692185823116737104048750423761521028734269760154937905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 1))
    upperTrace := (.lengthenFreeN 42 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 45, r := 2 }
    lowerValue := 92276805510396122582400887407651946225545261404120
    upperValue := 40716813124513947296985319044795354631427632950290465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 2))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 45, r := 3 }
    lowerValue := 401757641162698414923962029526558622629558975103
    upperValue := 2395106654383173370410901120282079684201625467664145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 3))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 45, r := 4 }
    lowerValue := 2387597836962170531705937972816507763067480602
    upperValue := 140888626728421962965347124722475275541272086333185
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 4))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 45, r := 5 }
    lowerValue := 18167649485237042879376702397941194327362495
    upperValue := 8287566278142468409726301454263251502427769784305
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 5))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 45, r := 6 }
    lowerValue := 170021485713732823197880659418419261010629
    upperValue := 487503898714262847630958909074308911907515869665
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 6))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 45, r := 7 }
    lowerValue := 1903752329446394838001239642253050482958
    upperValue := 28676699924368402801821112298488759523971521745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 7))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 45, r := 8 }
    lowerValue := 25000352894209417011325341526684687093
    upperValue := 1686864701433435458930653664616985854351265985
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 8))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 45, r := 9 }
    lowerValue := 379287595911063842134142746776114379
    upperValue := 99227335378437379937097274389234462020662705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 9))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 45, r := 10 }
    lowerValue := 6570465948545029422600478241720807
    upperValue := 5836902081084551761005722022896144824744865
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 10))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 45, r := 11 }
    lowerValue := 128764032548795527521032494355456
    upperValue := 343347181240267750647395413111537930867345
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 11))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 45, r := 12 }
    lowerValue := 2833408844472888094841122655476
    upperValue := 20196893014133397096905612535972819462785
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 12))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 45, r := 13 }
    lowerValue := 69579900796419409581554400106
    upperValue := 1188052530243141005700330149174871733105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 13))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 45, r := 14 }
    lowerValue := 1897288064402914560677089418
    upperValue := 69885442955478882688254714657345396065
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 14))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 45, r := 15 }
    lowerValue := 57207518063838527257157986
    upperValue := 4110908409145816628720865568079140945
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 15))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 45, r := 16 }
    lowerValue := 1900870455520161903780331
    upperValue := 28351092476867700887730107366063041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 16))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 45, r := 17 }
    lowerValue := 69407261257270082290597
    upperValue := 1667711322168688287513535727415473
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 17))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 45, r := 18 }
    lowerValue := 2778500948059541170712
    upperValue := 98100666009922840441972689847969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 18))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 45, r := 19 }
    lowerValue := 121721831399490323796
    upperValue := 5770627412348402378939569991057
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 19))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 45, r := 20 }
    lowerValue := 5827138166800047153
    upperValue := 339448671314611904643504117121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 20))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20))) },
  { key := { q := 17, n := 45, r := 21 }
    lowerValue := 304515632168940888
    upperValue := 19967568900859523802559065713
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 21))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 21))) },
  { key := { q := 17, n := 45, r := 22 }
    lowerValue := 17358832631367532
    upperValue := 1174562876521148458974062689
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 22))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 24 22))) },
  { key := { q := 17, n := 45, r := 23 }
    lowerValue := 1078997660376795
    upperValue := 69091933913008732880827217
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 23))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 25 23))) },
  { key := { q := 17, n := 45, r := 24 }
    lowerValue := 73127546184397
    upperValue := 4064231406647572522401601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 24))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 26 24))) },
  { key := { q := 17, n := 45, r := 25 }
    lowerValue := 5405194891730
    upperValue := 239072435685151324847153
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 25))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 27 25))) },
  { key := { q := 17, n := 45, r := 26 }
    lowerValue := 435974050245
    upperValue := 14063084452067724991009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 26))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 28 26))) },
  { key := { q := 17, n := 45, r := 27 }
    lowerValue := 38408067613
    upperValue := 827240261886336764177
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 27))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 29 27))) },
  { key := { q := 17, n := 45, r := 28 }
    lowerValue := 3700351677
    upperValue := 48661191875666868481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 28))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 30 28))) },
  { key := { q := 17, n := 45, r := 29 }
    lowerValue := 390510465
    upperValue := 2862423051509815793
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 29))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 31 29))) },
  { key := { q := 17, n := 45, r := 30 }
    lowerValue := 45235761
    upperValue := 168377826559400929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 30))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 32 30))) },
  { key := { q := 17, n := 45, r := 31 }
    lowerValue := 5766096
    upperValue := 9904578032905937
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 31))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 33 31))) },
  { key := { q := 17, n := 45, r := 32 }
    lowerValue := 811244
    upperValue := 34271896307633
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 32))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 35 32))) },
  { key := { q := 17, n := 45, r := 33 }
    lowerValue := 126436
    upperValue := 2015993900449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 33))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 36 33))) },
  { key := { q := 17, n := 45, r := 34 }
    lowerValue := 21925
    upperValue := 118587876497
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 34))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 37 34))) },
  { key := { q := 17, n := 45, r := 35 }
    lowerValue := 4252
    upperValue := 6975757441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 35))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 38 35))) },
  { key := { q := 17, n := 45, r := 36 }
    lowerValue := 928
    upperValue := 410338673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 36))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 39 36))) },
  { key := { q := 17, n := 45, r := 37 }
    lowerValue := 230
    upperValue := 24137569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 37))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 40 37))) },
  { key := { q := 17, n := 45, r := 38 }
    lowerValue := 65
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 38))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 41 38))) },
  { key := { q := 17, n := 45, r := 39 }
    lowerValue := 22
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 39))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 42 39))) },
  { key := { q := 17, n := 45, r := 40 }
    lowerValue := 17
    upperValue := 4913
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 40 ≤ 41) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 42 41))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 43 40))) },
  { key := { q := 17, n := 45, r := 41 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 43 42)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 44 41))) },
  { key := { q := 17, n := 45, r := 42 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 44 43))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 45 42)) },
  { key := { q := 17, n := 45, r := 43 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 45 44)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 45 43)) },
  { key := { q := 17, n := 45, r := 44 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 45 44))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 45 44)) },
  { key := { q := 17, n := 45, r := 45 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 45))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 45 45)) },
  { key := { q := 17, n := 45, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 45 46)) },
  { key := { q := 17, n := 45, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 45 47)) },
  { key := { q := 17, n := 45, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 45 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 45 48)) },
  { key := { q := 17, n := 46, r := 0 }
    lowerValue := 398703807810572411498315063055075847178723756123452198369
    upperValue := 398703807810572411498315063055075847178723756123452198369
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 46 0)) },
  { key := { q := 17, n := 46, r := 1 }
    lowerValue := 540982100150030409088622880671744704448743224048103390
    upperValue := 11767158992984530768828757203945857488482585922633944385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 1))
    upperTrace := (.lengthenFreeN 43 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 46, r := 2 }
    lowerValue := 1500595820843187583970895655784882204837554643535502
    upperValue := 692185823116737104048750423761521028734269760154937905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 2))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 46, r := 3 }
    lowerValue := 6385086473544853755103877623500811743468344824807
    upperValue := 40716813124513947296985319044795354631427632950290465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 3))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 46, r := 4 }
    lowerValue := 37064814720242596504030129586443358989896617811
    upperValue := 2395106654383173370410901120282079684201625467664145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 4))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 46, r := 5 }
    lowerValue := 275329550105606574414724843733125158024179991
    upperValue := 140888626728421962965347124722475275541272086333185
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 5))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 46, r := 6 }
    lowerValue := 2513939095569795425808918863066365587250141
    upperValue := 8287566278142468409726301454263251502427769784305
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 6))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 46, r := 7 }
    lowerValue := 27446617071209474378156609008649571652840
    upperValue := 487503898714262847630958909074308911907515869665
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 7))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 46, r := 8 }
    lowerValue := 351211442141155733495948472032204098510
    upperValue := 28676699924368402801821112298488759523971521745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 8))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 46, r := 9 }
    lowerValue := 5188443146821266877237330411121893979
    upperValue := 1686864701433435458930653664616985854351265985
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 9))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 46, r := 10 }
    lowerValue := 87457307275508668811424138981601569
    upperValue := 99227335378437379937097274389234462020662705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 10))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 46, r := 11 }
    lowerValue := 1666457023632557403729461530153658
    upperValue := 5836902081084551761005722022896144824744865
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 11))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 46, r := 12 }
    lowerValue := 35625217270897264710540335541805
    upperValue := 343347181240267750647395413111537930867345
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 12))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 46, r := 13 }
    lowerValue := 849198578177832377915636356291
    upperValue := 20196893014133397096905612535972819462785
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 13))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 46, r := 14 }
    lowerValue := 22456487264219375118244974832
    upperValue := 1188052530243141005700330149174871733105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 14))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 46, r := 15 }
    lowerValue := 656033535005440241150517018
    upperValue := 69885442955478882688254714657345396065
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 15))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 46, r := 16 }
    lowerValue := 21098138340793498232913404
    upperValue := 481968572106750915091411825223071697
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 16))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 46, r := 17 }
    lowerValue := 744800280024050399048335
    upperValue := 28351092476867700887730107366063041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 17))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 46, r := 18 }
    lowerValue := 28792587947514740319461
    upperValue := 1667711322168688287513535727415473
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 18))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 46, r := 19 }
    lowerValue := 1216549021348711587488
    upperValue := 98100666009922840441972689847969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 19))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 46, r := 20 }
    lowerValue := 56094858675069573038
    upperValue := 5770627412348402378939569991057
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 20))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20))) },
  { key := { q := 17, n := 46, r := 21 }
    lowerValue := 2819388218327480696
    upperValue := 339448671314611904643504117121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 21))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 21))) },
  { key := { q := 17, n := 46, r := 22 }
    lowerValue := 154334971034025794
    upperValue := 19967568900859523802559065713
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 22))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 24 22))) },
  { key := { q := 17, n := 46, r := 23 }
    lowerValue := 9196610924063993
    upperValue := 1174562876521148458974062689
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 23))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 25 23))) },
  { key := { q := 17, n := 46, r := 24 }
    lowerValue := 596421862568611
    upperValue := 69091933913008732880827217
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 24))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 26 24))) },
  { key := { q := 17, n := 46, r := 25 }
    lowerValue := 42099736176392
    upperValue := 4064231406647572522401601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 25))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 27 25))) },
  { key := { q := 17, n := 46, r := 26 }
    lowerValue := 3235734827940
    upperValue := 239072435685151324847153
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 26))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 28 26))) },
  { key := { q := 17, n := 46, r := 27 }
    lowerValue := 270978395876
    upperValue := 14063084452067724991009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 27))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 29 27))) },
  { key := { q := 17, n := 46, r := 28 }
    lowerValue := 24751620042
    upperValue := 827240261886336764177
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 28))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 30 28))) },
  { key := { q := 17, n := 46, r := 29 }
    lowerValue := 2469256241
    upperValue := 48661191875666868481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 29))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 31 29))) },
  { key := { q := 17, n := 46, r := 30 }
    lowerValue := 269505810
    upperValue := 2862423051509815793
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 30))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 32 30))) },
  { key := { q := 17, n := 46, r := 31 }
    lowerValue := 32250106
    upperValue := 168377826559400929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 31))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 33 31))) },
  { key := { q := 17, n := 46, r := 32 }
    lowerValue := 4242028
    upperValue := 582622237229761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 32))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 35 32))) },
  { key := { q := 17, n := 46, r := 33 }
    lowerValue := 615230
    upperValue := 34271896307633
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 33))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 36 33))) },
  { key := { q := 17, n := 46, r := 34 }
    lowerValue := 98747
    upperValue := 2015993900449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 34))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 37 34))) },
  { key := { q := 17, n := 46, r := 35 }
    lowerValue := 17617
    upperValue := 118587876497
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 35))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 38 35))) },
  { key := { q := 17, n := 46, r := 36 }
    lowerValue := 3512
    upperValue := 6975757441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 36))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 39 36))) },
  { key := { q := 17, n := 46, r := 37 }
    lowerValue := 787
    upperValue := 410338673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 37))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 40 37))) },
  { key := { q := 17, n := 46, r := 38 }
    lowerValue := 200
    upperValue := 24137569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 38))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 41 38))) },
  { key := { q := 17, n := 46, r := 39 }
    lowerValue := 58
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 39))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 42 39))) },
  { key := { q := 17, n := 46, r := 40 }
    lowerValue := 20
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 40))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 43 40))) },
  { key := { q := 17, n := 46, r := 41 }
    lowerValue := 17
    upperValue := 4913
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 41 ≤ 42) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 43 42))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 44 41))) },
  { key := { q := 17, n := 46, r := 42 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 44 43)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 45 42))) },
  { key := { q := 17, n := 46, r := 43 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 45 44))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 46 43)) },
  { key := { q := 17, n := 46, r := 44 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 46 45)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 46 44)) },
  { key := { q := 17, n := 46, r := 45 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 46 45))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 46 45)) },
  { key := { q := 17, n := 46, r := 46 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 46))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 46 46)) },
  { key := { q := 17, n := 46, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 46 47)) },
  { key := { q := 17, n := 46, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 46 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 46 48)) },
  { key := { q := 17, n := 47, r := 0 }
    lowerValue := 6777964732779730995471356071936289402038303854098687372273
    upperValue := 6777964732779730995471356071936289402038303854098687372273
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 47 0)) },
  { key := { q := 17, n := 47, r := 1 }
    lowerValue := 9001281185630452849231548568308485261671054255111138609
    upperValue := 200041702880737023070088872467079577304203960684777054545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 1))
    upperTrace := (.lengthenFreeN 44 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 47, r := 2 }
    lowerValue := 24426066376612157582719877443560967829493435250041218
    upperValue := 11767158992984530768828757203945857488482585922633944385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 2))
    upperTrace := (.lengthenFreeN 42 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 47, r := 3 }
    lowerValue := 101627607023396781978685951081785465734747114758763
    upperValue := 692185823116737104048750423761521028734269760154937905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 3))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 47, r := 4 }
    lowerValue := 576552535322818495254936850312958882806864683957
    upperValue := 40716813124513947296985319044795354631427632950290465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 4))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 47, r := 5 }
    lowerValue := 4183392640699722618151130184889903025227856699
    upperValue := 2395106654383173370410901120282079684201625467664145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 5))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 47, r := 6 }
    lowerValue := 37289346218536630738969203829614364051796300
    upperValue := 140888626728421962965347124722475275541272086333185
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 6))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 47, r := 7 }
    lowerValue := 397206689028095235689514500214016943459123
    upperValue := 8287566278142468409726301454263251502427769784305
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 7))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 47, r := 8 }
    lowerValue := 4955925139362362850955014545709321740664
    upperValue := 487503898714262847630958909074308911907515869665
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 8))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 47, r := 9 }
    lowerValue := 71340850646326358203443571635691721692
    upperValue := 28676699924368402801821112298488759523971521745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 9))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 47, r := 10 }
    lowerValue := 1170966073096536719275544305519481555
    upperValue := 1686864701433435458930653664616985854351265985
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 10))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 47, r := 11 }
    lowerValue := 21710759678079403379237457991152967
    upperValue := 99227335378437379937097274389234462020662705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 11))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 47, r := 12 }
    lowerValue := 451272978077107008852258299907845
    upperValue := 5836902081084551761005722022896144824744865
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 12))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 47, r := 13 }
    lowerValue := 10450599498588842935781316750424
    upperValue := 343347181240267750647395413111537930867345
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 13))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 47, r := 14 }
    lowerValue := 268257884148108848946460783279
    upperValue := 20196893014133397096905612535972819462785
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 14))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 47, r := 15 }
    lowerValue := 7600138598480485466463015713
    upperValue := 1188052530243141005700330149174871733105
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 15))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 47, r := 16 }
    lowerValue := 236813183411185194404341663
    upperValue := 8193465725814765556554001028792218849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 16))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 47, r := 17 }
    lowerValue := 8091375178157024342642537
    upperValue := 481968572106750915091411825223071697
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 17))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 47, r := 18 }
    lowerValue := 302418835969435742793835
    upperValue := 28351092476867700887730107366063041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 18))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 47, r := 19 }
    lowerValue := 12339443311515542994780
    upperValue := 1667711322168688287513535727415473
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 19))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 47, r := 20 }
    lowerValue := 548760566162648065995
    upperValue := 98100666009922840441972689847969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 20))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20))) },
  { key := { q := 17, n := 47, r := 21 }
    lowerValue := 26565903444380090972
    upperValue := 5770627412348402378939569991057
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 21))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 21))) },
  { key := { q := 17, n := 47, r := 22 }
    lowerValue := 1398670106045991480
    upperValue := 339448671314611904643504117121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 22))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 24 22))) },
  { key := { q := 17, n := 47, r := 23 }
    lowerValue := 80035285517984542
    upperValue := 19967568900859523802559065713
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 23))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 25 23))) },
  { key := { q := 17, n := 47, r := 24 }
    lowerValue := 4975944390559213
    upperValue := 1174562876521148458974062689
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 24))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 26 24))) },
  { key := { q := 17, n := 47, r := 25 }
    lowerValue := 336102773832355
    upperValue := 69091933913008732880827217
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 25))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 27 25))) },
  { key := { q := 17, n := 47, r := 26 }
    lowerValue := 24669905842825
    upperValue := 4064231406647572522401601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 26))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 28 26))) },
  { key := { q := 17, n := 47, r := 27 }
    lowerValue := 1968706355568
    upperValue := 239072435685151324847153
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 27))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 29 27))) },
  { key := { q := 17, n := 47, r := 28 }
    lowerValue := 170945854733
    upperValue := 14063084452067724991009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 28))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 30 28))) },
  { key := { q := 17, n := 47, r := 29 }
    lowerValue := 16168877954
    upperValue := 827240261886336764177
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 29))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 31 29))) },
  { key := { q := 17, n := 47, r := 30 }
    lowerValue := 1668272937
    upperValue := 48661191875666868481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 30))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 32 30))) },
  { key := { q := 17, n := 47, r := 31 }
    lowerValue := 188103925
    upperValue := 2862423051509815793
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 31))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 33 31))) },
  { key := { q := 17, n := 47, r := 32 }
    lowerValue := 23228527
    upperValue := 9904578032905937
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 32))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 35 32))) },
  { key := { q := 17, n := 47, r := 33 }
    lowerValue := 3149787
    upperValue := 582622237229761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 33))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 36 33))) },
  { key := { q := 17, n := 47, r := 34 }
    lowerValue := 470478
    upperValue := 34271896307633
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 34))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 37 34))) },
  { key := { q := 17, n := 47, r := 35 }
    lowerValue := 77699
    upperValue := 2015993900449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 35))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 38 35))) },
  { key := { q := 17, n := 47, r := 36 }
    lowerValue := 14250
    upperValue := 118587876497
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 36))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 39 36))) },
  { key := { q := 17, n := 47, r := 37 }
    lowerValue := 2918
    upperValue := 6975757441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 37))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 40 37))) },
  { key := { q := 17, n := 47, r := 38 }
    lowerValue := 671
    upperValue := 410338673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 38))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 41 38))) },
  { key := { q := 17, n := 47, r := 39 }
    lowerValue := 175
    upperValue := 24137569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 39))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 42 39))) },
  { key := { q := 17, n := 47, r := 40 }
    lowerValue := 52
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 40))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 43 40))) },
  { key := { q := 17, n := 47, r := 41 }
    lowerValue := 18
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 41))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 44 41))) },
  { key := { q := 17, n := 47, r := 42 }
    lowerValue := 17
    upperValue := 4913
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 44 43))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 45 42))) },
  { key := { q := 17, n := 47, r := 43 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 45 44)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 46 43))) },
  { key := { q := 17, n := 47, r := 44 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 46 45))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 47 44)) },
  { key := { q := 17, n := 47, r := 45 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 47 46)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 47 45)) },
  { key := { q := 17, n := 47, r := 46 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 47 46))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 47 46)) },
  { key := { q := 17, n := 47, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 47 47)) },
  { key := { q := 17, n := 47, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 47 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 47 48)) },
  { key := { q := 17, n := 48, r := 0 }
    lowerValue := 115225400457255426923013053222916919834651165519677685328641
    upperValue := 115225400457255426923013053222916919834651165519677685328641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 17 48 0)) },
  { key := { q := 17, n := 48, r := 1 }
    lowerValue := 149837971986027863358924646583767125922823362184236261806
    upperValue := 3400708948972529392191510831940352814171467331641209927265
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 1))
    upperTrace := (.lengthenFreeN 45 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))) },
  { key := { q := 17, n := 48, r := 2 }
    lowerValue := 397964337743554111989186367279197200477490495237837256
    upperValue := 200041702880737023070088872467079577304203960684777054545
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 2))
    upperTrace := (.lengthenFreeN 43 (.lengthenDummyN 1 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 48, r := 3 }
    lowerValue := 1619836879545488311650739460843922449166450309877728
    upperValue := 11767158992984530768828757203945857488482585922633944385
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 3))
    upperTrace := (.lengthenFreeN 42 (.lengthenDummyN 2 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 48, r := 4 }
    lowerValue := 8985747703066489726112623329588668715409385727388
    upperValue := 692185823116737104048750423761521028734269760154937905
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 4))
    upperTrace := (.lengthenFreeN 41 (.lengthenDummyN 3 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 48, r := 5 }
    lowerValue := 63720148797717975470676104190534711461334576848
    upperValue := 40716813124513947296985319044795354631427632950290465
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 5))
    upperTrace := (.lengthenFreeN 40 (.lengthenDummyN 4 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 48, r := 6 }
    lowerValue := 554794831766304033959110119385982289330070447
    upperValue := 2395106654383173370410901120282079684201625467664145
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 6))
    upperTrace := (.lengthenFreeN 39 (.lengthenDummyN 5 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 48, r := 7 }
    lowerValue := 5769247845903049014247322117919389353104585
    upperValue := 140888626728421962965347124722475275541272086333185
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 7))
    upperTrace := (.lengthenFreeN 38 (.lengthenDummyN 6 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 48, r := 8 }
    lowerValue := 70230530398069352930520324463966660271654
    upperValue := 8287566278142468409726301454263251502427769784305
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 8))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 7 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 48, r := 9 }
    lowerValue := 985754502847606249460022109238623580951
    upperValue := 487503898714262847630958909074308911907515869665
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 9))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 8 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 48, r := 10 }
    lowerValue := 15765978889352290831619663700860007152
    upperValue := 28676699924368402801821112298488759523971521745
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 10))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 9 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 48, r := 11 }
    lowerValue := 284642488160115763350834549851737286
    upperValue := 1686864701433435458930653664616985854351265985
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 11))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 10 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 48, r := 12 }
    lowerValue := 5757022327951019602202041452583717
    upperValue := 99227335378437379937097274389234462020662705
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 12))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 11 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 48, r := 13 }
    lowerValue := 129628946028438233353978011125175
    upperValue := 5836902081084551761005722022896144824744865
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 13))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 12 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 48, r := 14 }
    lowerValue := 3232695785734829631471026247642
    upperValue := 343347181240267750647395413111537930867345
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 14))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 13 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 48, r := 15 }
    lowerValue := 88902533347174632825840849791
    upperValue := 20196893014133397096905612535972819462785
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 15))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 14 (by decide : 0 < 17) (.lengthenFreeN 1 (.primitive "lean_small_explicit_upper" (primitiveUpper_valid 17 3 1))))) },
  { key := { q := 17, n := 48, r := 16 }
    lowerValue := 2686488677755678595673106417
    upperValue := 139288917338851014461418017489467720433
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 16))
    upperTrace := (.lengthenFreeN 30 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 18 16))) },
  { key := { q := 17, n := 48, r := 17 }
    lowerValue := 88934371100578655052048501
    upperValue := 8193465725814765556554001028792218849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 17))
    upperTrace := (.lengthenFreeN 29 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 19 17))) },
  { key := { q := 17, n := 48, r := 18 }
    lowerValue := 3217206974330964721756424
    upperValue := 481968572106750915091411825223071697
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 18))
    upperTrace := (.lengthenFreeN 28 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 20 18))) },
  { key := { q := 17, n := 48, r := 19 }
    lowerValue := 126915215412839320960203
    upperValue := 28351092476867700887730107366063041
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 19))
    upperTrace := (.lengthenFreeN 27 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 21 19))) },
  { key := { q := 17, n := 48, r := 20 }
    lowerValue := 5450563970803750486325
    upperValue := 1667711322168688287513535727415473
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 20))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 22 20))) },
  { key := { q := 17, n := 48, r := 21 }
    lowerValue := 254495400293805931360
    upperValue := 98100666009922840441972689847969
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 21))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 23 21))) },
  { key := { q := 17, n := 48, r := 22 }
    lowerValue := 12905766322056566817
    upperValue := 5770627412348402378939569991057
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 22))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 24 22))) },
  { key := { q := 17, n := 48, r := 23 }
    lowerValue := 710288785091908765
    upperValue := 339448671314611904643504117121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 23))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 25 23))) },
  { key := { q := 17, n := 48, r := 24 }
    lowerValue := 42406842637734660
    upperValue := 19967568900859523802559065713
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 24))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 26 24))) },
  { key := { q := 17, n := 48, r := 25 }
    lowerValue := 2746032195422849
    upperValue := 1174562876521148458974062689
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 25))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 27 25))) },
  { key := { q := 17, n := 48, r := 26 }
    lowerValue := 192875619020554
    upperValue := 69091933913008732880827217
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 26))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 28 26))) },
  { key := { q := 17, n := 48, r := 27 }
    lowerValue := 14699381449159
    upperValue := 4064231406647572522401601
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 27))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 29 27))) },
  { key := { q := 17, n := 48, r := 28 }
    lowerValue := 1216286524061
    upperValue := 239072435685151324847153
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 28))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 30 28))) },
  { key := { q := 17, n := 48, r := 29 }
    lowerValue := 109364074707
    upperValue := 14063084452067724991009
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 29))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 31 29))) },
  { key := { q := 17, n := 48, r := 30 }
    lowerValue := 10698702901
    upperValue := 827240261886336764177
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 30))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 32 30))) },
  { key := { q := 17, n := 48, r := 31 }
    lowerValue := 1140406364
    upperValue := 48661191875666868481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 31))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 33 31))) },
  { key := { q := 17, n := 48, r := 32 }
    lowerValue := 132698591
    upperValue := 168377826559400929
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 32))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 35 32))) },
  { key := { q := 17, n := 48, r := 33 }
    lowerValue := 16893739
    upperValue := 9904578032905937
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 33))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 36 33))) },
  { key := { q := 17, n := 48, r := 34 }
    lowerValue := 2359405
    upperValue := 582622237229761
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 34))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 37 34))) },
  { key := { q := 17, n := 48, r := 35 }
    lowerValue := 362642
    upperValue := 34271896307633
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 35))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 38 35))) },
  { key := { q := 17, n := 48, r := 36 }
    lowerValue := 61572
    upperValue := 2015993900449
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 36))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 39 36))) },
  { key := { q := 17, n := 48, r := 37 }
    lowerValue := 11600
    upperValue := 118587876497
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 37))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 40 37))) },
  { key := { q := 17, n := 48, r := 38 }
    lowerValue := 2438
    upperValue := 6975757441
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 38))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 41 38))) },
  { key := { q := 17, n := 48, r := 39 }
    lowerValue := 575
    upperValue := 410338673
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 39))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 42 39))) },
  { key := { q := 17, n := 48, r := 40 }
    lowerValue := 154
    upperValue := 24137569
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 40))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 43 40))) },
  { key := { q := 17, n := 48, r := 41 }
    lowerValue := 47
    upperValue := 1419857
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 41))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 44 41))) },
  { key := { q := 17, n := 48, r := 42 }
    lowerValue := 17
    upperValue := 83521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 42))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 45 42))) },
  { key := { q := 17, n := 48, r := 43 }
    lowerValue := 17
    upperValue := 4913
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 45 44))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 46 43))) },
  { key := { q := 17, n := 48, r := 44 }
    lowerValue := 17
    upperValue := 289
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 46 45)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 47 44))) },
  { key := { q := 17, n := 48, r := 45 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.lengthBack (by decide : 0 < 17) (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 47 46))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 48 45)) },
  { key := { q := 17, n := 48, r := 46 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.radiusBack (by decide : 46 ≤ 47) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 48 47)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 48 46)) },
  { key := { q := 17, n := 48, r := 47 }
    lowerValue := 17
    upperValue := 17
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 17 48 47))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 17 48 47)) },
  { key := { q := 17, n := 48, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 17 48 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 17 48 48)) },
  { key := { q := 18, n := 0, r := 0 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 0)) },
  { key := { q := 18, n := 0, r := 1 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 1))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 1)) },
  { key := { q := 18, n := 0, r := 2 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 2))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 2)) },
  { key := { q := 18, n := 0, r := 3 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 3))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 3)) },
  { key := { q := 18, n := 0, r := 4 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 4))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 4)) },
  { key := { q := 18, n := 0, r := 5 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 5))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 5)) },
  { key := { q := 18, n := 0, r := 6 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 6))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 6)) },
  { key := { q := 18, n := 0, r := 7 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 7))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 7)) },
  { key := { q := 18, n := 0, r := 8 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 8))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 8)) },
  { key := { q := 18, n := 0, r := 9 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 9))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 9)) },
  { key := { q := 18, n := 0, r := 10 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 10))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 10)) },
  { key := { q := 18, n := 0, r := 11 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 11))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 11)) },
  { key := { q := 18, n := 0, r := 12 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 12))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 12)) },
  { key := { q := 18, n := 0, r := 13 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 13))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 13)) },
  { key := { q := 18, n := 0, r := 14 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 14))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 14)) },
  { key := { q := 18, n := 0, r := 15 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 15))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 15)) },
  { key := { q := 18, n := 0, r := 16 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 16))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 16)) },
  { key := { q := 18, n := 0, r := 17 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 17))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 17)) },
  { key := { q := 18, n := 0, r := 18 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 18))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 18)) },
  { key := { q := 18, n := 0, r := 19 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 19))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 19)) },
  { key := { q := 18, n := 0, r := 20 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 20))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 20)) },
  { key := { q := 18, n := 0, r := 21 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 21))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 21)) },
  { key := { q := 18, n := 0, r := 22 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 22))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 22)) },
  { key := { q := 18, n := 0, r := 23 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 23))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 23)) },
  { key := { q := 18, n := 0, r := 24 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 24))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 24)) },
  { key := { q := 18, n := 0, r := 25 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 25))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 25)) },
  { key := { q := 18, n := 0, r := 26 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 26))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 26)) },
  { key := { q := 18, n := 0, r := 27 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 27))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 27)) },
  { key := { q := 18, n := 0, r := 28 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 28))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 28)) },
  { key := { q := 18, n := 0, r := 29 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 29))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 29)) },
  { key := { q := 18, n := 0, r := 30 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 30))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 30)) },
  { key := { q := 18, n := 0, r := 31 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 18 0 31))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 18 0 31)) }]

end CoveringCodes.Database
