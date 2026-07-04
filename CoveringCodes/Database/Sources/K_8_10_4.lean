import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.OctonaryFourTwo
import CoveringCodes.Database.Sources.Trivial
import CoveringCodes.Relations.DirectProduct
import Mathlib.Data.Nat.Bitwise
import Mathlib.Tactic

/-!
# Upper source for `K_8(10,4) <= 11776`

This file formalizes the stage-2 product construction from screening run
`cc-screen-r014-q8-n10-r4-20260622-063927`.

The left factor is a systematic three-dimensional GF(8) length-six
radius-two code with `8^3 = 512` words.  The right factor reuses the
existing explicit octonary length-four radius-two code of size `23`.
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private abbrev G8 := Fin 8
private abbrev Msg := Fin 3 → G8
private abbrev Syn := Fin 3 → G8
private abbrev Word6 := QaryWord 8 6

private abbrev g0 : G8 := ⟨0, by decide⟩
private abbrev g1 : G8 := ⟨1, by decide⟩
private abbrev g2 : G8 := ⟨2, by decide⟩
private abbrev g3 : G8 := ⟨3, by decide⟩
private abbrev g4 : G8 := ⟨4, by decide⟩
private abbrev g5 : G8 := ⟨5, by decide⟩
private abbrev g6 : G8 := ⟨6, by decide⟩
private abbrev g7 : G8 := ⟨7, by decide⟩

private def gf8Add (left right : G8) : G8 :=
  ⟨left.val ^^^ right.val, by
    fin_cases left <;> fin_cases right <;> decide⟩

private def gf8Mul (left right : G8) : G8 :=
  match left.val, right.val with
  | 0, 0 => g0
  | 0, 1 => g0
  | 0, 2 => g0
  | 0, 3 => g0
  | 0, 4 => g0
  | 0, 5 => g0
  | 0, 6 => g0
  | 0, _ => g0
  | 1, 0 => g0
  | 1, 1 => g1
  | 1, 2 => g2
  | 1, 3 => g3
  | 1, 4 => g4
  | 1, 5 => g5
  | 1, 6 => g6
  | 1, _ => g7
  | 2, 0 => g0
  | 2, 1 => g2
  | 2, 2 => g4
  | 2, 3 => g6
  | 2, 4 => g3
  | 2, 5 => g1
  | 2, 6 => g7
  | 2, _ => g5
  | 3, 0 => g0
  | 3, 1 => g3
  | 3, 2 => g6
  | 3, 3 => g5
  | 3, 4 => g7
  | 3, 5 => g4
  | 3, 6 => g1
  | 3, _ => g2
  | 4, 0 => g0
  | 4, 1 => g4
  | 4, 2 => g3
  | 4, 3 => g7
  | 4, 4 => g6
  | 4, 5 => g2
  | 4, 6 => g5
  | 4, _ => g1
  | 5, 0 => g0
  | 5, 1 => g5
  | 5, 2 => g1
  | 5, 3 => g4
  | 5, 4 => g2
  | 5, 5 => g7
  | 5, 6 => g3
  | 5, _ => g6
  | 6, 0 => g0
  | 6, 1 => g6
  | 6, 2 => g7
  | 6, 3 => g1
  | 6, 4 => g5
  | 6, 5 => g3
  | 6, 6 => g2
  | 6, _ => g4
  | _, 0 => g0
  | _, 1 => g7
  | _, 2 => g5
  | _, 3 => g2
  | _, 4 => g1
  | _, 5 => g6
  | _, 6 => g4
  | _, _ => g3

@[simp]
private theorem gf8Add_zero_right (a : G8) : gf8Add a 0 = a := by
  covering_decide +revert

private theorem gf8TailIdentity :
    ∀ xt et xl el : G8,
      gf8Add et el = gf8Add xt xl → gf8Add xt et = gf8Add xl el := by
  covering_decide

private def q8Fin (n : Nat) : G8 :=
  ⟨n % 8, Nat.mod_lt _ (by decide)⟩

private def q512Fin (n : Nat) : Fin 512 :=
  ⟨n % 512, Nat.mod_lt _ (by decide)⟩

private def q8Place (i : Nat) : Nat :=
  8 ^ i

private def q8Lin (a b c : G8) (p : Msg) : G8 :=
  gf8Add (gf8Add (gf8Mul a (p 0)) (gf8Mul b (p 1))) (gf8Mul c (p 2))

private def q8LinearTailCoord (row : Fin 3) (p : Msg) : G8 :=
  match row.val with
  | 0 => q8Lin g1 g1 g1 p
  | 1 => q8Lin g1 g3 g2 p
  | _ => q8Lin g1 g2 g3 p

private def q8Head (x : Word6) : Msg :=
  ![x 0, x 1, x 2]

private def msgAdd (x y : Msg) : Msg :=
  fun i => gf8Add (x i) (y i)

private theorem q8LinearTailCoord_msgAdd
    (row : Fin 3) (x e : Msg) :
    q8LinearTailCoord row (msgAdd x e) =
      gf8Add (q8LinearTailCoord row x) (q8LinearTailCoord row e) := by
  fin_cases row <;>
    unfold q8LinearTailCoord q8Lin msgAdd gf8Add gf8Mul <;>
    covering_decide +revert

private def q8KernelWord (p : Msg) : Word6 :=
  ![p 0, p 1, p 2,
    q8LinearTailCoord 0 p,
    q8LinearTailCoord 1 p,
    q8LinearTailCoord 2 p]

private def q8Code : Finset Word6 :=
  (Finset.univ : Finset Msg).image q8KernelWord

private theorem q8Code_card :
    q8Code.card ≤ 512 := by
  calc
    q8Code.card ≤ (Finset.univ : Finset Msg).card := by
      simpa [q8Code] using
        (Finset.card_image_le (s := (Finset.univ : Finset Msg))
          (f := q8KernelWord))
    _ = 512 := by decide

private def q8Syndrome (x : Word6) : Syn :=
  ![gf8Add (x 3) (q8LinearTailCoord 0 (q8Head x)),
    gf8Add (x 4) (q8LinearTailCoord 1 (q8Head x)),
    gf8Add (x 5) (q8LinearTailCoord 2 (q8Head x))]

private def q8WordAdd (x e : Word6) : Word6 :=
  fun i => gf8Add (x i) (e i)

private def q8WordWeight (e : Word6) : Nat :=
  (Finset.univ.filter (fun i : Fin 6 => e i ≠ 0)).card

private def q8SyndromeIndexNat (s : Syn) : Nat :=
  (s 2).val + 8 * (s 1).val + 64 * (s 0).val

private def q8SyndromeIndex (s : Syn) : Fin 512 :=
  q512Fin (q8SyndromeIndexNat s)

private def q8PackedWord6 (packed : Nat) : Word6 :=
  fun i => q8Fin (packed / q8Place i.val)

private def K_8_10_4CorrectionPacked (index : Fin 512) : Nat :=
  match index.val / 64 with
  | 0 =>
      match index.val % 64 with
      | 0 => 0
      | 1 => 32768
      | 2 => 65536
      | 3 => 98304
      | 4 => 131072
      | 5 => 163840
      | 6 => 196608
      | 7 => 229376
      | 8 => 4096
      | 9 => 513
      | 10 => 69632
      | 11 => 102400
      | 12 => 45
      | 13 => 167936
      | 14 => 200704
      | 15 => 390
      | 16 => 8192
      | 17 => 40960
      | 18 => 1026
      | 19 => 9
      | 20 => 139264
      | 21 => 455
      | 22 => 204800
      | 23 => 237568
      | 24 => 12288
      | 25 => 45056
      | 26 => 65
      | 27 => 1539
      | 28 => 143360
      | 29 => 176128
      | 30 => 208896
      | 31 => 36
      | 32 => 16384
      | 33 => 325
      | 34 => 81920
      | 35 => 114688
      | 36 => 2052
      | 37 => 180224
      | 38 => 18
      | 39 => 245760
      | 40 => 20480
      | 41 => 53248
      | 42 => 63
      | 43 => 118784
      | 44 => 151552
      | 45 => 2565
      | 46 => 195
      | 47 => 249856
      | 48 => 24576
      | 49 => 57344
      | 50 => 90112
      | 51 => 122880
      | 52 => 130
      | 53 => 27
      | 54 => 3078
      | 55 => 253952
      | 56 => 28672
      | 57 => 54
      | 58 => 94208
      | 59 => 260
      | 60 => 159744
      | 61 => 192512
      | 62 => 225280
      | 63 => 3591
      | _ => 0
  | 1 =>
      match index.val % 64 with
      | 0 => 512
      | 1 => 4097
      | 2 => 12296
      | 3 => 8256
      | 4 => 131584
      | 5 => 44
      | 6 => 391
      | 7 => 229888
      | 8 => 32769
      | 9 => 1
      | 10 => 98305
      | 11 => 65537
      | 12 => 163841
      | 13 => 131073
      | 14 => 229377
      | 15 => 196609
      | 16 => 98368
      | 17 => 12289
      | 18 => 1538
      | 19 => 64
      | 20 => 229440
      | 21 => 3128
      | 22 => 37
      | 23 => 131136
      | 24 => 65544
      | 25 => 8193
      | 26 => 8
      | 27 => 1027
      | 28 => 454
      | 29 => 229384
      | 30 => 131080
      | 31 => 163848
      | 32 => 16896
      | 33 => 20481
      | 34 => 28680
      | 35 => 62
      | 36 => 2564
      | 37 => 496
      | 38 => 1664
      | 39 => 194
      | 40 => 324
      | 41 => 16385
      | 42 => 24584
      | 43 => 28736
      | 44 => 440
      | 45 => 2053
      | 46 => 1048
      | 47 => 19
      | 48 => 55
      | 49 => 28673
      | 50 => 261
      | 51 => 16448
      | 52 => 1552
      | 53 => 1216
      | 54 => 3590
      | 55 => 352
      | 56 => 29184
      | 57 => 24577
      | 58 => 16392
      | 59 => 2592
      | 60 => 26
      | 61 => 131
      | 62 => 296
      | 63 => 3079
      | _ => 0
  | 2 =>
      match index.val % 64 with
      | 0 => 1024
      | 1 => 11
      | 2 => 8194
      | 3 => 99328
      | 4 => 24592
      | 5 => 164864
      | 6 => 16512
      | 7 => 453
      | 8 => 67
      | 9 => 1537
      | 10 => 12290
      | 11 => 488
      | 12 => 28688
      | 13 => 38
      | 14 => 20608
      | 15 => 2096
      | 16 => 65538
      | 17 => 98306
      | 18 => 2
      | 19 => 32770
      | 20 => 196610
      | 21 => 229378
      | 22 => 131074
      | 23 => 163842
      | 24 => 13312
      | 25 => 376
      | 26 => 4098
      | 27 => 515
      | 28 => 20496
      | 29 => 388
      | 30 => 47
      | 31 => 3328
      | 32 => 196736
      | 33 => 3624
      | 34 => 24578
      | 35 => 163968
      | 36 => 3076
      | 37 => 98432
      | 38 => 128
      | 39 => 25
      | 40 => 21504
      | 41 => 262
      | 42 => 28674
      | 43 => 52
      | 44 => 12304
      | 45 => 3589
      | 46 => 536
      | 47 => 200
      | 48 => 131088
      | 49 => 163856
      | 50 => 16386
      | 51 => 327
      | 52 => 16
      | 53 => 32784
      | 54 => 2054
      | 55 => 98320
      | 56 => 61
      | 57 => 2432
      | 58 => 20482
      | 59 => 3104
      | 60 => 193
      | 61 => 88
      | 62 => 12416
      | 63 => 2567
      | _ => 0
  | 3 =>
      match index.val % 64 with
      | 0 => 1536
      | 1 => 66
      | 2 => 67072
      | 3 => 12291
      | 4 => 39
      | 5 => 24768
      | 6 => 20504
      | 7 => 230912
      | 8 => 10
      | 9 => 1025
      | 10 => 312
      | 11 => 8195
      | 12 => 3392
      | 13 => 28864
      | 14 => 452
      | 15 => 2608
      | 16 => 9728
      | 17 => 480
      | 18 => 514
      | 19 => 4099
      | 20 => 389
      | 21 => 2104
      | 22 => 28696
      | 23 => 46
      | 24 => 98307
      | 25 => 65539
      | 26 => 32771
      | 27 => 3
      | 28 => 229379
      | 29 => 196611
      | 30 => 163843
      | 31 => 131075
      | 32 => 263
      | 33 => 3112
      | 34 => 53
      | 35 => 28675
      | 36 => 3588
      | 37 => 8384
      | 38 => 4120
      | 39 => 80
      | 40 => 196632
      | 41 => 229400
      | 42 => 131096
      | 43 => 24579
      | 44 => 65560
      | 45 => 3077
      | 46 => 24
      | 47 => 129
      | 48 => 164032
      | 49 => 60
      | 50 => 229568
      | 51 => 20483
      | 52 => 528
      | 53 => 192
      | 54 => 2566
      | 55 => 65728
      | 56 => 30208
      | 57 => 2944
      | 58 => 326
      | 59 => 16387
      | 60 => 136
      | 61 => 17
      | 62 => 8216
      | 63 => 2055
      | _ => 0
  | 4 =>
      match index.val % 64 with
      | 0 => 2048
      | 1 => 34816
      | 2 => 22
      | 3 => 28704
      | 4 => 16388
      | 5 => 321
      | 6 => 198656
      | 7 => 12544
      | 8 => 6144
      | 9 => 2561
      | 10 => 199
      | 11 => 24608
      | 12 => 20484
      | 13 => 400
      | 14 => 59
      | 15 => 1072
      | 16 => 134
      | 17 => 31
      | 18 => 3074
      | 19 => 20512
      | 20 => 24580
      | 21 => 1592
      | 22 => 328
      | 23 => 4352
      | 24 => 229632
      | 25 => 196864
      | 26 => 2568
      | 27 => 3587
      | 28 => 28676
      | 29 => 50
      | 30 => 33024
      | 31 => 256
      | 32 => 131076
      | 33 => 163844
      | 34 => 196612
      | 35 => 229380
      | 36 => 4
      | 37 => 32772
      | 38 => 65540
      | 39 => 98308
      | 40 => 41
      | 41 => 176
      | 42 => 1984
      | 43 => 386
      | 44 => 4100
      | 45 => 517
      | 46 => 3608
      | 47 => 24832
      | 48 => 26624
      | 49 => 451
      | 50 => 104
      | 51 => 4128
      | 52 => 8196
      | 53 => 3776
      | 54 => 1030
      | 55 => 13
      | 56 => 98336
      | 57 => 65568
      | 58 => 32800
      | 59 => 32
      | 60 => 12292
      | 61 => 196640
      | 62 => 69
      | 63 => 1543
      | _ => 0
  | 5 =>
      match index.val % 64 with
      | 0 => 2560
      | 1 => 16424
      | 2 => 68096
      | 3 => 198
      | 4 => 4416
      | 5 => 20485
      | 6 => 199168
      | 7 => 58
      | 8 => 131392
      | 9 => 2049
      | 10 => 196928
      | 11 => 23
      | 12 => 320
      | 13 => 16389
      | 14 => 65856
      | 15 => 1584
      | 16 => 10752
      | 17 => 24616
      | 18 => 3586
      | 19 => 2112
      | 20 => 51
      | 21 => 28677
      | 22 => 257
      | 23 => 408
      | 24 => 30
      | 25 => 135
      | 26 => 2056
      | 27 => 3075
      | 28 => 8512
      | 29 => 24581
      | 30 => 464
      | 31 => 768
      | 32 => 32808
      | 33 => 40
      | 34 => 387
      | 35 => 65576
      | 36 => 516
      | 37 => 4101
      | 38 => 229416
      | 39 => 196648
      | 40 => 163845
      | 41 => 131077
      | 42 => 229381
      | 43 => 196613
      | 44 => 32773
      | 45 => 5
      | 46 => 98309
      | 47 => 65541
      | 48 => 27136
      | 49 => 8232
      | 50 => 33
      | 51 => 184
      | 52 => 3600
      | 53 => 12293
      | 54 => 1542
      | 55 => 68
      | 56 => 450
      | 57 => 12328
      | 58 => 240
      | 59 => 544
      | 60 => 24896
      | 61 => 8197
      | 62 => 12
      | 63 => 1031
      | _ => 0
  | 6 =>
      match index.val % 64 with
      | 0 => 3072
      | 1 => 29056
      | 2 => 132
      | 3 => 29
      | 4 => 134144
      | 5 => 166912
      | 6 => 24582
      | 7 => 4144
      | 8 => 229424
      | 9 => 3585
      | 10 => 163888
      | 11 => 131120
      | 12 => 98352
      | 13 => 258
      | 14 => 28678
      | 15 => 48
      | 16 => 20
      | 17 => 20864
      | 18 => 2050
      | 19 => 3648
      | 20 => 232
      | 21 => 568
      | 22 => 16390
      | 23 => 323
      | 24 => 197
      | 25 => 16768
      | 26 => 3592
      | 27 => 2563
      | 28 => 57
      | 29 => 160
      | 30 => 20486
      | 31 => 8240
      | 32 => 19456
      | 33 => 1576
      | 34 => 344
      | 35 => 449
      | 36 => 1028
      | 37 => 15
      | 38 => 8198
      | 39 => 20528
      | 40 => 23552
      | 41 => 34
      | 42 => 960
      | 43 => 272
      | 44 => 71
      | 45 => 1541
      | 46 => 12294
      | 47 => 16432
      | 48 => 196614
      | 49 => 229382
      | 50 => 131078
      | 51 => 163846
      | 52 => 65542
      | 53 => 98310
      | 54 => 6
      | 55 => 32774
      | 56 => 33152
      | 57 => 384
      | 58 => 43
      | 59 => 1056
      | 60 => 164224
      | 61 => 131456
      | 62 => 4102
      | 63 => 519
      | _ => 0
  | 7 =>
      match index.val % 64 with
      | 0 => 3584
      | 1 => 36352
      | 2 => 20928
      | 3 => 101888
      | 4 => 259
      | 5 => 8248
      | 6 => 49
      | 7 => 28679
      | 8 => 7680
      | 9 => 3073
      | 10 => 28
      | 11 => 133
      | 12 => 1344
      | 13 => 12344
      | 14 => 224
      | 15 => 24583
      | 16 => 163896
      | 17 => 196
      | 18 => 2562
      | 19 => 196664
      | 20 => 32824
      | 21 => 56
      | 22 => 98360
      | 23 => 20487
      | 24 => 15872
      | 25 => 21
      | 26 => 3080
      | 27 => 2051
      | 28 => 112
      | 29 => 4152
      | 30 => 322
      | 31 => 16391
      | 32 => 35
      | 33 => 1064
      | 34 => 4544
      | 35 => 392
      | 36 => 1540
      | 37 => 70
      | 38 => 2688
      | 39 => 12295
      | 40 => 65984
      | 41 => 98752
      | 42 => 448
      | 43 => 33216
      | 44 => 14
      | 45 => 1029
      | 46 => 2072
      | 47 => 8199
      | 48 => 385
      | 49 => 280
      | 50 => 12736
      | 51 => 42
      | 52 => 2576
      | 53 => 16440
      | 54 => 518
      | 55 => 4103
      | 56 => 229383
      | 57 => 196615
      | 58 => 163847
      | 59 => 131079
      | 60 => 98311
      | 61 => 65543
      | 62 => 32775
      | 63 => 7
      | _ => 0
  | _ => 0

private def q8CorrectionWord (s : Syn) : Word6 :=
  q8PackedWord6 (K_8_10_4CorrectionPacked (q8SyndromeIndex s))

private def q8CorrectionValid (s : Syn) : Prop :=
  let e := q8CorrectionWord s
  q8WordWeight e ≤ 2 ∧ q8Syndrome e = s

private theorem q8Correction_valid_coords (s0 s1 s2 : G8) :
    q8CorrectionValid (![s0, s1, s2] : Syn) := by
  unfold q8CorrectionValid q8CorrectionWord q8PackedWord6 K_8_10_4CorrectionPacked
    q8SyndromeIndex q8SyndromeIndexNat q512Fin q8Place q8WordWeight q8Syndrome
    q8Head q8LinearTailCoord q8Lin gf8Add gf8Mul q8Fin
  covering_decide +revert

private theorem q8Correction_valid (s : Syn) :
    q8CorrectionValid s := by
  have hs : (![s 0, s 1, s 2] : Syn) = s := by
    funext i
    fin_cases i <;> rfl
  simpa [hs] using q8Correction_valid_coords (s 0) (s 1) (s 2)

private theorem q8WordAdd_eq_of_error_zero (x e : Word6) (i : Fin 6)
    (h : e i = 0) :
    q8WordAdd x e i = x i := by
  simp [q8WordAdd, h]

private theorem q8Head_wordAdd (x e : Word6) :
    q8Head (q8WordAdd x e) = msgAdd (q8Head x) (q8Head e) := by
  funext i
  fin_cases i <;> rfl

private theorem q8HammingDist_add_le_weight (x e : Word6) :
    hammingDist x (q8WordAdd x e) ≤ q8WordWeight e := by
  rw [hammingDist, q8WordWeight]
  exact Finset.card_le_card (by
    intro i hi
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
    intro he
    exact hi (q8WordAdd_eq_of_error_zero x e i he).symm)

private theorem q8KernelWord_of_same_syndrome (x e : Word6)
    (h : q8Syndrome e = q8Syndrome x) :
    q8KernelWord (q8Head (q8WordAdd x e)) = q8WordAdd x e := by
  funext i
  fin_cases i
  · rfl
  · rfl
  · rfl
  ·
    have hrow := congr_fun h 0
    have hlin := q8LinearTailCoord_msgAdd 0 (q8Head x) (q8Head e)
    have htail := gf8TailIdentity (x 3) (e 3)
      (q8LinearTailCoord 0 (q8Head x)) (q8LinearTailCoord 0 (q8Head e))
      hrow
    change q8LinearTailCoord 0 (q8Head (q8WordAdd x e)) = q8WordAdd x e 3
    rw [q8Head_wordAdd, hlin]
    simp [q8WordAdd] at htail ⊢
    exact htail.symm
  ·
    have hrow := congr_fun h 1
    have hlin := q8LinearTailCoord_msgAdd 1 (q8Head x) (q8Head e)
    have htail := gf8TailIdentity (x 4) (e 4)
      (q8LinearTailCoord 1 (q8Head x)) (q8LinearTailCoord 1 (q8Head e))
      hrow
    change q8LinearTailCoord 1 (q8Head (q8WordAdd x e)) = q8WordAdd x e 4
    rw [q8Head_wordAdd, hlin]
    simp [q8WordAdd] at htail ⊢
    exact htail.symm
  ·
    have hrow := congr_fun h 2
    have hlin := q8LinearTailCoord_msgAdd 2 (q8Head x) (q8Head e)
    have htail := gf8TailIdentity (x 5) (e 5)
      (q8LinearTailCoord 2 (q8Head x)) (q8LinearTailCoord 2 (q8Head e))
      hrow
    change q8LinearTailCoord 2 (q8Head (q8WordAdd x e)) = q8WordAdd x e 5
    rw [q8Head_wordAdd, hlin]
    simp [q8WordAdd] at htail ⊢
    exact htail.symm

private theorem q8Code_covers :
    CoversFinset q8Code 2 := by
  intro x
  let e := q8CorrectionWord (q8Syndrome x)
  let y := q8WordAdd x e
  have hcorr : q8WordWeight e ≤ 2 ∧ q8Syndrome e = q8Syndrome x := by
    simpa [q8CorrectionValid, e] using q8Correction_valid (q8Syndrome x)
  have hmem : q8KernelWord (q8Head y) ∈ q8Code := by
    exact Finset.mem_image.mpr ⟨q8Head y, Finset.mem_univ _, rfl⟩
  have hkernel : q8KernelWord (q8Head y) = y := by
    simpa [y, e] using q8KernelWord_of_same_syndrome x e hcorr.2
  have hdist : hammingDist x y ≤ 2 :=
    (q8HammingDist_add_le_weight x e).trans hcorr.1
  exact ⟨q8KernelWord (q8Head y), hmem, by simpa [hkernel] using hdist⟩

private theorem K_8_6_2UpperAt : QaryKUpper 8 6 2 512 :=
  ⟨q8Code, q8Code_card, q8Code_covers⟩

private theorem K_8_4_2UpperAt : QaryKUpper 8 4 2 23 := by
  simpa [octonaryFourRadiusTwoUpper] using
    octonaryFourRadiusTwoUpper_valid 8 4 2

private theorem K_8_10_4UpperAt : QaryKUpper 8 10 4 11776 := by
  have hprod : QaryKUpper 8 (6 + 4) (2 + 2) (512 * 23) :=
    upper_direct_product K_8_6_2UpperAt K_8_4_2UpperAt
  simpa using hprod

def K_8_10_4UpperName : String :=
  "lean_K_8_10_4_stage2_gf8_product_upper"

def K_8_10_4Upper (q n r : Nat) : Nat :=
  if q = 8 ∧ n = 10 ∧ r = 4 then 11776 else trivialUpper q n r

theorem K_8_10_4Upper_valid (q n r : Nat) :
    QaryKUpper q n r (K_8_10_4Upper q n r) := by
  by_cases h : q = 8 ∧ n = 10 ∧ r = 4
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [K_8_10_4Upper] using K_8_10_4UpperAt
  · simpa [K_8_10_4Upper, h] using trivialUpper_valid q n r

def K_8_10_4UpperSource : UpperBoundSource where
  value := K_8_10_4Upper
  trace := fun q n r =>
    .primitive K_8_10_4UpperName (K_8_10_4Upper_valid q n r)

end Database
end CoveringCodes
