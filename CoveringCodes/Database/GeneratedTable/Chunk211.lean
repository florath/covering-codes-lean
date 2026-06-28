import CoveringCodes.Database.BoundTable

set_option maxRecDepth 4000
set_option maxHeartbeats 2000000

namespace CoveringCodes.Database

-- Auto-generated chunk 211. Do not edit manually.

def precomputedTable_chunk_211 : Array AnyBoundEntry := #[
  { key := { q := 21, n := 47, r := 26 }
    lowerValue := 1557777434902371
    upperValue := 278218429446951548637196401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 47 26))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 28 26))) },
  { key := { q := 21, n := 47, r := 27 }
    lowerValue := 99596233167579
    upperValue := 13248496640331026125580781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 47 27))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 29 27))) },
  { key := { q := 21, n := 47, r := 28 }
    lowerValue := 6929706463699
    upperValue := 630880792396715529789561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 47 28))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 30 28))) },
  { key := { q := 21, n := 47, r := 29 }
    lowerValue := 525306612925
    upperValue := 30041942495081691894741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 47 29))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 31 29))) },
  { key := { q := 21, n := 47, r := 30 }
    lowerValue := 43448457948
    upperValue := 1430568690241985328321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 47 30))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 32 30))) },
  { key := { q := 21, n := 47, r := 31 }
    lowerValue := 3928221479
    upperValue := 68122318582951682301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 47 31))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 33 31))) },
  { key := { q := 21, n := 47, r := 32 }
    lowerValue := 389091179
    upperValue := 3243919932521508681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 47 32))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 34 32))) },
  { key := { q := 21, n := 47, r := 33 }
    lowerValue := 42336455
    upperValue := 154472377739119461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 47 33))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 35 33))) },
  { key := { q := 21, n := 47, r := 34 }
    lowerValue := 5076787
    upperValue := 7355827511386641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 47 34))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 36 34))) },
  { key := { q := 21, n := 47, r := 35 }
    lowerValue := 673513
    upperValue := 350277500542221
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 47 35))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 37 35))) },
  { key := { q := 21, n := 47, r := 36 }
    lowerValue := 99306
    upperValue := 16679880978201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 47 36))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 38 36))) },
  { key := { q := 21, n := 47, r := 37 }
    lowerValue := 16363
    upperValue := 794280046581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 47 37))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 39 37))) },
  { key := { q := 21, n := 47, r := 38 }
    lowerValue := 3033
    upperValue := 37822859361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 47 38))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 40 38))) },
  { key := { q := 21, n := 47, r := 39 }
    lowerValue := 638
    upperValue := 1801088541
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 47 39))
    upperTrace := (.lengthenFreeN 6 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 41 39))) },
  { key := { q := 21, n := 47, r := 40 }
    lowerValue := 154
    upperValue := 4084101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 47 40))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 43 40))) },
  { key := { q := 21, n := 47, r := 41 }
    lowerValue := 43
    upperValue := 194481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 47 41))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 44 41))) },
  { key := { q := 21, n := 47, r := 42 }
    lowerValue := 21
    upperValue := 9261
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.lengthBack (by decide : 0 < 21) (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 42 ≤ 43) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 44 43))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 45 42))) },
  { key := { q := 21, n := 47, r := 43 }
    lowerValue := 21
    upperValue := 441
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 45 44)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 46 43))) },
  { key := { q := 21, n := 47, r := 44 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 46 45))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 47 44)) },
  { key := { q := 21, n := 47, r := 45 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 47 46)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 47 45)) },
  { key := { q := 21, n := 47, r := 46 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 47 46))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 47 46)) },
  { key := { q := 21, n := 47, r := 47 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 47 47))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 47 47)) },
  { key := { q := 21, n := 47, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 47 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 47 48)) },
  { key := { q := 21, n := 48, r := 0 }
    lowerValue := 2927697131634283506545252779244055933229227262837159465972420161
    upperValue := 2927697131634283506545252779244055933229227262837159465972420161
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 0))
    upperTrace := (.primitive "rule_trivial_upper" (primitiveUpper_valid 21 48 0)) },
  { key := { q := 21, n := 48, r := 1 }
    lowerValue := 3046511063094988040109524223979246548625626704305056676350074
    upperValue := 59748921053760887888678628147837876188351576792595091142294289
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 1))
    upperTrace := (.lengthenFreeN 39 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))) },
  { key := { q := 21, n := 48, r := 2 }
    lowerValue := 6474899718538935260991666196872476691331687745818766912610
    upperValue := 2845186716845756566127553721325613151826265561552147197252109
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 2))
    upperTrace := (.lengthenFreeN 37 (.lengthenDummyN 1 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 48, r := 3 }
    lowerValue := 21089855468718866465982940181462949990594141890075746750
    upperValue := 135485081754559836482264462920267292944107883883435580821529
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 3))
    upperTrace := (.lengthenFreeN 36 (.lengthenDummyN 2 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 48, r := 4 }
    lowerValue := 93621536606073369814785426500565121558724578128107927
    upperValue := 6451670559740944594393545853346061568767042089687408610549
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 4))
    upperTrace := (.lengthenFreeN 35 (.lengthenDummyN 3 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 48, r := 5 }
    lowerValue := 531280356417688690057415263266943301677093037925889
    upperValue := 307222407606711647352073612064098169941287718556543267169
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 5))
    upperTrace := (.lengthenFreeN 34 (.lengthenDummyN 4 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 48, r := 6 }
    lowerValue := 3701787492957261496680436268642125195640720728163
    upperValue := 14629638457462459397717791050671341425775605645549679389
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 6))
    upperTrace := (.lengthenFreeN 33 (.lengthenDummyN 5 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 48, r := 7 }
    lowerValue := 30806158342002415194091007580747134046460937877
    upperValue := 696649450355355209415132907174825782179790745026175209
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 7))
    upperTrace := (.lengthenFreeN 32 (.lengthenDummyN 6 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 48, r := 8 }
    lowerValue := 300117479019013810904259432199931760451857188
    upperValue := 33173783350255009972149186055944084865704321191722629
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 8))
    upperTrace := (.lengthenFreeN 31 (.lengthenDummyN 7 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 48, r := 9 }
    lowerValue := 3371238236793491218790839301331587181964621
    upperValue := 1579703969059762379626151716949718326938301009129649
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 9))
    upperTrace := (.lengthenFreeN 30 (.lengthenDummyN 8 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 48, r := 10 }
    lowerValue := 43152500561620154703042340118759266131407
    upperValue := 75223998526655351410769129378558015568490524244269
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 10))
    upperTrace := (.lengthenFreeN 29 (.lengthenDummyN 9 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 48, r := 11 }
    lowerValue := 623532190472304495342756091649082597593
    upperValue := 3582095167935969114798529970407524550880501154489
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 11))
    upperTrace := (.lengthenFreeN 28 (.lengthenDummyN 10 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 48, r := 12 }
    lowerValue := 10093500498711465043856431502792007268
    upperValue := 170575960377903291180882379543215454803833388309
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 12))
    upperTrace := (.lengthenFreeN 27 (.lengthenDummyN 11 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 48, r := 13 }
    lowerValue := 181903973620675797976076025129887731
    upperValue := 8122664779900156722899160930629307371611113729
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 13))
    upperTrace := (.lengthenFreeN 26 (.lengthenDummyN 12 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 48, r := 14 }
    lowerValue := 3630897164868276425623202582395223
    upperValue := 386793560947626510614245758601395589124338749
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 14))
    upperTrace := (.lengthenFreeN 25 (.lengthenDummyN 13 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 48, r := 15 }
    lowerValue := 79925611296439107402966627225864
    upperValue := 18418740997506024314964083742923599482111369
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 15))
    upperTrace := (.lengthenFreeN 24 (.lengthenDummyN 14 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 48, r := 16 }
    lowerValue := 1933279769005525131844665806717
    upperValue := 877082904643144014998289702043980927719589
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 16))
    upperTrace := (.lengthenFreeN 23 (.lengthenDummyN 15 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 48, r := 17 }
    lowerValue := 51231120619894390879705505077
    upperValue := 41765852602054476904680462002094329891409
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 17))
    upperTrace := (.lengthenFreeN 22 (.lengthenDummyN 16 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 48, r := 18 }
    lowerValue := 1483597653901281579789876801
    upperValue := 1988850123907356043080022000099729994829
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 18))
    upperTrace := (.lengthenFreeN 21 (.lengthenDummyN 17 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 48, r := 19 }
    lowerValue := 46853724111654934613805164
    upperValue := 94707148757493144908572476195225237849
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 19))
    upperTrace := (.lengthenFreeN 20 (.lengthenDummyN 18 (by decide : 0 < 21) (.lengthenFreeN 1 (@UpperTrace.alphabetExpand 7 21 3 9 1 823543 (by decide : 0 < 7) (by decide : 0 < 3) (by decide : 21 ≤ 3 * 7) (by decide : 0 < 21) (.lengthenFreeN 1 (.primitive "lean_hamming_perfect_upper" (primitiveUpper_valid 7 8 1))))))) },
  { key := { q := 21, n := 48, r := 20 }
    lowerValue := 1610971255353443430465440
    upperValue := 501096025171921401632658604207540941
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 20))
    upperTrace := (.lengthenFreeN 26 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 22 20))) },
  { key := { q := 21, n := 48, r := 21 }
    lowerValue := 60223704351270780406285
    upperValue := 23861715484377209601555171628930521
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 21))
    upperTrace := (.lengthenFreeN 25 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 23 21))) },
  { key := { q := 21, n := 48, r := 22 }
    lowerValue := 2445348641268787187083
    upperValue := 1136272165922724266740722458520501
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 22))
    upperTrace := (.lengthenFreeN 24 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 24 22))) },
  { key := { q := 21, n := 48, r := 23 }
    lowerValue := 107768844075833037231
    upperValue := 54108198377272584130510593262881
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 23))
    upperTrace := (.lengthenFreeN 23 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 25 23))) },
  { key := { q := 21, n := 48, r := 24 }
    lowerValue := 5152659472370700374
    upperValue := 2576580875108218291929075869661
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 24))
    upperTrace := (.lengthenFreeN 22 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 26 24))) },
  { key := { q := 21, n := 48, r := 25 }
    lowerValue := 267226306654224789
    upperValue := 122694327386105632949003612841
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 25))
    upperTrace := (.lengthenFreeN 21 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 27 25))) },
  { key := { q := 21, n := 48, r := 26 }
    lowerValue := 15034038216233004
    upperValue := 5842587018385982521381124421
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 26))
    upperTrace := (.lengthenFreeN 20 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 28 26))) },
  { key := { q := 21, n := 48, r := 27 }
    lowerValue := 917858447565766
    upperValue := 278218429446951548637196401
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 27))
    upperTrace := (.lengthenFreeN 19 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 29 27))) },
  { key := { q := 21, n := 48, r := 28 }
    lowerValue := 60848918180417
    upperValue := 13248496640331026125580781
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 28))
    upperTrace := (.lengthenFreeN 18 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 30 28))) },
  { key := { q := 21, n := 48, r := 29 }
    lowerValue := 4384339317953
    upperValue := 630880792396715529789561
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 29))
    upperTrace := (.lengthenFreeN 17 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 31 29))) },
  { key := { q := 21, n := 48, r := 30 }
    lowerValue := 343761985666
    upperValue := 30041942495081691894741
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 30))
    upperTrace := (.lengthenFreeN 16 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 32 30))) },
  { key := { q := 21, n := 48, r := 31 }
    lowerValue := 29375409050
    upperValue := 1430568690241985328321
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 31))
    upperTrace := (.lengthenFreeN 15 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 33 31))) },
  { key := { q := 21, n := 48, r := 32 }
    lowerValue := 2740993967
    upperValue := 68122318582951682301
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 32))
    upperTrace := (.lengthenFreeN 14 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 34 32))) },
  { key := { q := 21, n := 48, r := 33 }
    lowerValue := 279917372
    upperValue := 3243919932521508681
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 33))
    upperTrace := (.lengthenFreeN 13 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 35 33))) },
  { key := { q := 21, n := 48, r := 34 }
    lowerValue := 31372263
    upperValue := 154472377739119461
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 34))
    upperTrace := (.lengthenFreeN 12 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 36 34))) },
  { key := { q := 21, n := 48, r := 35 }
    lowerValue := 3871501
    upperValue := 7355827511386641
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 35))
    upperTrace := (.lengthenFreeN 11 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 37 35))) },
  { key := { q := 21, n := 48, r := 36 }
    lowerValue := 528103
    upperValue := 350277500542221
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 36))
    upperTrace := (.lengthenFreeN 10 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 38 36))) },
  { key := { q := 21, n := 48, r := 37 }
    lowerValue := 79996
    upperValue := 16679880978201
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 37))
    upperTrace := (.lengthenFreeN 9 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 39 37))) },
  { key := { q := 21, n := 48, r := 38 }
    lowerValue := 13530
    upperValue := 794280046581
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 38))
    upperTrace := (.lengthenFreeN 8 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 40 38))) },
  { key := { q := 21, n := 48, r := 39 }
    lowerValue := 2572
    upperValue := 37822859361
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 39))
    upperTrace := (.lengthenFreeN 7 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 41 39))) },
  { key := { q := 21, n := 48, r := 40 }
    lowerValue := 554
    upperValue := 85766121
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 40))
    upperTrace := (.lengthenFreeN 5 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 43 40))) },
  { key := { q := 21, n := 48, r := 41 }
    lowerValue := 137
    upperValue := 4084101
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 41))
    upperTrace := (.lengthenFreeN 4 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 44 41))) },
  { key := { q := 21, n := 48, r := 42 }
    lowerValue := 39
    upperValue := 194481
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 42))
    upperTrace := (.lengthenFreeN 3 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 45 42))) },
  { key := { q := 21, n := 48, r := 43 }
    lowerValue := 21
    upperValue := 9261
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.lengthBack (by decide : 0 < 21) (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 43 ≤ 44) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 45 44))))))
    upperTrace := (.lengthenFreeN 2 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 46 43))) },
  { key := { q := 21, n := 48, r := 44 }
    lowerValue := 21
    upperValue := 441
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 44 ≤ 45) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 46 45)))))
    upperTrace := (.lengthenFreeN 1 (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 47 44))) },
  { key := { q := 21, n := 48, r := 45 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.lengthBack (by decide : 0 < 21) (.radiusBack (by decide : 45 ≤ 46) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 47 46))))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 48 45)) },
  { key := { q := 21, n := 48, r := 46 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.radiusBack (by decide : 46 ≤ 47) (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 48 47)))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 48 46)) },
  { key := { q := 21, n := 48, r := 47 }
    lowerValue := 21
    upperValue := 21
    lowerTrace := (.primitive "rule_radius_n_minus_one_exact" (primitiveLower_valid 21 48 47))
    upperTrace := (.primitive "rule_constant_symbol" (primitiveUpper_valid 21 48 47)) },
  { key := { q := 21, n := 48, r := 48 }
    lowerValue := 1
    upperValue := 1
    lowerTrace := (.primitive "rule_sphere_covering_bound" (primitiveLower_valid 21 48 48))
    upperTrace := (.primitive "rule_large_radius_upper" (primitiveUpper_valid 21 48 48)) }]

end CoveringCodes.Database
