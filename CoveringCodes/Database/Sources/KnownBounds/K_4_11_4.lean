import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.KnownBounds.K_4_11_4_Data
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Known-bound upper certificate for K_4(11,4)

This module formalizes the GF(4) coset construction from
`q4-n11-r4-512-known-bound-lean-certificate-notes.md`.

The code is the union of eight cosets of a systematic length-eleven linear
code with three free coordinates.  Coverage is checked at the syndrome level:
the generated table gives, for each of the `4^8` syndromes, a coset center and
an error word of support at most four.
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 1000000

private abbrev f4_0 : Fin 4 := ⟨0, by decide⟩
private abbrev f4_1 : Fin 4 := ⟨1, by decide⟩
private abbrev f4_2 : Fin 4 := ⟨2, by decide⟩
private abbrev f4_3 : Fin 4 := ⟨3, by decide⟩
private abbrev f3_0 : Fin 3 := ⟨0, by decide⟩
private abbrev f3_1 : Fin 3 := ⟨1, by decide⟩
private abbrev f3_2 : Fin 3 := ⟨2, by decide⟩

private def gf4Add (a b : Fin 4) : Fin 4 :=
  ⟨((a.val % 2 + b.val % 2) % 2) +
      2 * (((a.val / 2 + b.val / 2) % 2)), by
    have h0 : ((a.val % 2 + b.val % 2) % 2) < 2 := Nat.mod_lt _ (by decide)
    have h1 : ((a.val / 2 + b.val / 2) % 2) < 2 := Nat.mod_lt _ (by decide)
    omega⟩

private def gf4Mul (a b : Fin 4) : Fin 4 :=
  ⟨(((a.val % 2) * (b.val % 2) + (a.val / 2) * (b.val / 2)) % 2) +
      2 * ((((a.val % 2) * (b.val / 2) + (a.val / 2) * (b.val % 2) +
        (a.val / 2) * (b.val / 2)) % 2)), by
    have h0 : (((a.val % 2) * (b.val % 2) + (a.val / 2) * (b.val / 2)) % 2) < 2 :=
      Nat.mod_lt _ (by decide)
    have h1 : (((a.val % 2) * (b.val / 2) + (a.val / 2) * (b.val % 2) +
        (a.val / 2) * (b.val / 2)) % 2) < 2 := Nat.mod_lt _ (by decide)
    omega⟩

private def gf4Add3 (a b c : Fin 4) : Fin 4 :=
  gf4Add (gf4Add a b) c

private def gf4Add4 (a b c d : Fin 4) : Fin 4 :=
  gf4Add (gf4Add3 a b c) d

private theorem gf4Add_zero (a : Fin 4) : gf4Add a f4_0 = a := by
  fin_cases a <;> native_decide

private theorem gf4Add_cancel_right (a b c : Fin 4) (h : gf4Add b c = a) :
    gf4Add a b = c := by
  revert a b c
  covering_decide

private theorem gf4Add_cancel_left (a b c : Fin 4) (h : gf4Add c b = a) :
    gf4Add a b = c := by
  revert a b c
  covering_decide

private def tailCoeff (slot row : Nat) : Fin 4 :=
  if slot = 0 then
    if row = 0 then ⟨0, by decide⟩
    else if row = 1 then ⟨3, by decide⟩
    else if row = 2 then ⟨0, by decide⟩
    else if row = 3 then ⟨3, by decide⟩
    else if row = 4 then ⟨0, by decide⟩
    else if row = 5 then ⟨1, by decide⟩
    else if row = 6 then ⟨3, by decide⟩
    else ⟨1, by decide⟩
  else if slot = 1 then
    if row = 0 then ⟨1, by decide⟩
    else if row = 1 then ⟨1, by decide⟩
    else if row = 2 then ⟨2, by decide⟩
    else if row = 3 then ⟨1, by decide⟩
    else if row = 4 then ⟨1, by decide⟩
    else if row = 5 then ⟨3, by decide⟩
    else if row = 6 then ⟨3, by decide⟩
    else ⟨3, by decide⟩
  else
    if row = 0 then ⟨2, by decide⟩
    else if row = 1 then ⟨3, by decide⟩
    else if row = 2 then ⟨3, by decide⟩
    else if row = 3 then ⟨1, by decide⟩
    else if row = 4 then ⟨0, by decide⟩
    else if row = 5 then ⟨2, by decide⟩
    else if row = 6 then ⟨0, by decide⟩
    else ⟨1, by decide⟩

private theorem row0_syndrome_add (xrow x8 x9 x10 erow e8 e9 e10 : Fin 4) :
    gf4Add (gf4Add xrow erow)
        (gf4Add3 (gf4Mul f4_0 (gf4Add x8 e8))
          (gf4Mul f4_1 (gf4Add x9 e9))
          (gf4Mul f4_2 (gf4Add x10 e10))) =
      gf4Add
        (gf4Add xrow (gf4Add3 (gf4Mul f4_0 x8) (gf4Mul f4_1 x9)
          (gf4Mul f4_2 x10)))
        (gf4Add erow (gf4Add3 (gf4Mul f4_0 e8) (gf4Mul f4_1 e9)
          (gf4Mul f4_2 e10))) := by
  revert xrow x8 x9 x10 erow e8 e9 e10
  native_decide

private theorem row1_syndrome_add (xrow x8 x9 x10 erow e8 e9 e10 : Fin 4) :
    gf4Add (gf4Add xrow erow)
        (gf4Add3 (gf4Mul f4_3 (gf4Add x8 e8))
          (gf4Mul f4_1 (gf4Add x9 e9))
          (gf4Mul f4_3 (gf4Add x10 e10))) =
      gf4Add
        (gf4Add xrow (gf4Add3 (gf4Mul f4_3 x8) (gf4Mul f4_1 x9)
          (gf4Mul f4_3 x10)))
        (gf4Add erow (gf4Add3 (gf4Mul f4_3 e8) (gf4Mul f4_1 e9)
          (gf4Mul f4_3 e10))) := by
  revert xrow x8 x9 x10 erow e8 e9 e10
  native_decide

private theorem row2_syndrome_add (xrow x8 x9 x10 erow e8 e9 e10 : Fin 4) :
    gf4Add (gf4Add xrow erow)
        (gf4Add3 (gf4Mul f4_0 (gf4Add x8 e8))
          (gf4Mul f4_2 (gf4Add x9 e9))
          (gf4Mul f4_3 (gf4Add x10 e10))) =
      gf4Add
        (gf4Add xrow (gf4Add3 (gf4Mul f4_0 x8) (gf4Mul f4_2 x9)
          (gf4Mul f4_3 x10)))
        (gf4Add erow (gf4Add3 (gf4Mul f4_0 e8) (gf4Mul f4_2 e9)
          (gf4Mul f4_3 e10))) := by
  revert xrow x8 x9 x10 erow e8 e9 e10
  native_decide

private theorem row3_syndrome_add (xrow x8 x9 x10 erow e8 e9 e10 : Fin 4) :
    gf4Add (gf4Add xrow erow)
        (gf4Add3 (gf4Mul f4_3 (gf4Add x8 e8))
          (gf4Mul f4_1 (gf4Add x9 e9))
          (gf4Mul f4_1 (gf4Add x10 e10))) =
      gf4Add
        (gf4Add xrow (gf4Add3 (gf4Mul f4_3 x8) (gf4Mul f4_1 x9)
          (gf4Mul f4_1 x10)))
        (gf4Add erow (gf4Add3 (gf4Mul f4_3 e8) (gf4Mul f4_1 e9)
          (gf4Mul f4_1 e10))) := by
  revert xrow x8 x9 x10 erow e8 e9 e10
  native_decide

private theorem row4_syndrome_add (xrow x8 x9 x10 erow e8 e9 e10 : Fin 4) :
    gf4Add (gf4Add xrow erow)
        (gf4Add3 (gf4Mul f4_0 (gf4Add x8 e8))
          (gf4Mul f4_1 (gf4Add x9 e9))
          (gf4Mul f4_0 (gf4Add x10 e10))) =
      gf4Add
        (gf4Add xrow (gf4Add3 (gf4Mul f4_0 x8) (gf4Mul f4_1 x9)
          (gf4Mul f4_0 x10)))
        (gf4Add erow (gf4Add3 (gf4Mul f4_0 e8) (gf4Mul f4_1 e9)
          (gf4Mul f4_0 e10))) := by
  revert xrow x8 x9 x10 erow e8 e9 e10
  native_decide

private theorem row5_syndrome_add (xrow x8 x9 x10 erow e8 e9 e10 : Fin 4) :
    gf4Add (gf4Add xrow erow)
        (gf4Add3 (gf4Mul f4_1 (gf4Add x8 e8))
          (gf4Mul f4_3 (gf4Add x9 e9))
          (gf4Mul f4_2 (gf4Add x10 e10))) =
      gf4Add
        (gf4Add xrow (gf4Add3 (gf4Mul f4_1 x8) (gf4Mul f4_3 x9)
          (gf4Mul f4_2 x10)))
        (gf4Add erow (gf4Add3 (gf4Mul f4_1 e8) (gf4Mul f4_3 e9)
          (gf4Mul f4_2 e10))) := by
  revert xrow x8 x9 x10 erow e8 e9 e10
  native_decide

private theorem row6_syndrome_add (xrow x8 x9 x10 erow e8 e9 e10 : Fin 4) :
    gf4Add (gf4Add xrow erow)
        (gf4Add3 (gf4Mul f4_3 (gf4Add x8 e8))
          (gf4Mul f4_3 (gf4Add x9 e9))
          (gf4Mul f4_0 (gf4Add x10 e10))) =
      gf4Add
        (gf4Add xrow (gf4Add3 (gf4Mul f4_3 x8) (gf4Mul f4_3 x9)
          (gf4Mul f4_0 x10)))
        (gf4Add erow (gf4Add3 (gf4Mul f4_3 e8) (gf4Mul f4_3 e9)
          (gf4Mul f4_0 e10))) := by
  revert xrow x8 x9 x10 erow e8 e9 e10
  native_decide

private theorem row7_syndrome_add (xrow x8 x9 x10 erow e8 e9 e10 : Fin 4) :
    gf4Add (gf4Add xrow erow)
        (gf4Add3 (gf4Mul f4_1 (gf4Add x8 e8))
          (gf4Mul f4_3 (gf4Add x9 e9))
          (gf4Mul f4_1 (gf4Add x10 e10))) =
      gf4Add
        (gf4Add xrow (gf4Add3 (gf4Mul f4_1 x8) (gf4Mul f4_3 x9)
          (gf4Mul f4_1 x10)))
        (gf4Add erow (gf4Add3 (gf4Mul f4_1 e8) (gf4Mul f4_3 e9)
          (gf4Mul f4_1 e10))) := by
  revert xrow x8 x9 x10 erow e8 e9 e10
  native_decide

private def digit4 (value place : Nat) : Fin 4 :=
  ⟨(value / place) % 4, by omega⟩

private def tailContribution (t : QaryWord 4 3) (row : Nat) : Fin 4 :=
  gf4Add3 (gf4Mul (tailCoeff 0 row) (t f3_0))
    (gf4Mul (tailCoeff 1 row) (t f3_1))
    (gf4Mul (tailCoeff 2 row) (t f3_2))

private def centerValue (ci : Fin 8) (row : Nat) : Fin 4 :=
  if ci.val = 0 then ⟨0, by decide⟩
  else if ci.val = 1 then
    if row = 0 then ⟨2, by decide⟩
    else if row = 1 then ⟨1, by decide⟩
    else if row = 2 then ⟨2, by decide⟩
    else if row = 4 then ⟨3, by decide⟩
    else if row = 5 then ⟨2, by decide⟩
    else if row = 6 then ⟨1, by decide⟩
    else ⟨0, by decide⟩
  else if ci.val = 2 then
    if row = 0 then ⟨3, by decide⟩
    else if row = 1 then ⟨2, by decide⟩
    else if row = 2 then ⟨3, by decide⟩
    else if row = 4 then ⟨1, by decide⟩
    else if row = 5 then ⟨3, by decide⟩
    else if row = 6 then ⟨2, by decide⟩
    else ⟨0, by decide⟩
  else if ci.val = 3 then
    if row = 0 then ⟨1, by decide⟩
    else if row = 1 then ⟨3, by decide⟩
    else if row = 2 then ⟨1, by decide⟩
    else if row = 4 then ⟨2, by decide⟩
    else if row = 5 then ⟨1, by decide⟩
    else if row = 6 then ⟨3, by decide⟩
    else ⟨0, by decide⟩
  else if ci.val = 4 then
    if row = 0 then ⟨2, by decide⟩
    else if row = 1 then ⟨3, by decide⟩
    else if row = 2 then ⟨3, by decide⟩
    else if row = 4 then ⟨3, by decide⟩
    else if row = 7 then ⟨1, by decide⟩
    else ⟨0, by decide⟩
  else if ci.val = 5 then
    if row = 1 then ⟨2, by decide⟩
    else if row = 2 then ⟨1, by decide⟩
    else if row = 5 then ⟨2, by decide⟩
    else if row = 6 then ⟨1, by decide⟩
    else if row = 7 then ⟨1, by decide⟩
    else ⟨0, by decide⟩
  else if ci.val = 6 then
    if row = 0 then ⟨1, by decide⟩
    else if row = 1 then ⟨1, by decide⟩
    else if row = 4 then ⟨2, by decide⟩
    else if row = 5 then ⟨3, by decide⟩
    else if row = 6 then ⟨2, by decide⟩
    else if row = 7 then ⟨1, by decide⟩
    else ⟨0, by decide⟩
  else
    if row = 0 then ⟨3, by decide⟩
    else if row = 2 then ⟨2, by decide⟩
    else if row = 4 then ⟨1, by decide⟩
    else if row = 5 then ⟨1, by decide⟩
    else if row = 6 then ⟨3, by decide⟩
    else if row = 7 then ⟨1, by decide⟩
    else ⟨0, by decide⟩

private def centerWord (ci : Fin 8) : QaryWord 4 8 := fun i =>
  centerValue ci i.val

private def tailFree (w : QaryWord 4 11) : QaryWord 4 3 := fun i =>
  if i.val = 0 then w 8 else if i.val = 1 then w 9 else w 10

private def cosetWord (p : Fin 8 × QaryWord 4 3) : QaryWord 4 11 :=
  fun i =>
    if i.val = 0 then gf4Add (centerValue p.1 0) (tailContribution p.2 0)
    else if i.val = 1 then gf4Add (centerValue p.1 1) (tailContribution p.2 1)
    else if i.val = 2 then gf4Add (centerValue p.1 2) (tailContribution p.2 2)
    else if i.val = 3 then gf4Add (centerValue p.1 3) (tailContribution p.2 3)
    else if i.val = 4 then gf4Add (centerValue p.1 4) (tailContribution p.2 4)
    else if i.val = 5 then gf4Add (centerValue p.1 5) (tailContribution p.2 5)
    else if i.val = 6 then gf4Add (centerValue p.1 6) (tailContribution p.2 6)
    else if i.val = 7 then gf4Add (centerValue p.1 7) (tailContribution p.2 7)
    else if i.val = 8 then p.2 f3_0
    else if i.val = 9 then p.2 f3_1
    else p.2 f3_2

private def cosetCode : Finset (QaryWord 4 11) :=
  (Finset.univ : Finset (Fin 8 × QaryWord 4 3)).image cosetWord

private theorem cosetCode_card : cosetCode.card <= 512 := by
  calc
    cosetCode.card <= (Finset.univ : Finset (Fin 8 × QaryWord 4 3)).card :=
      Finset.card_image_le
    _ = 512 := by
      rw [Finset.card_univ]
      simp [Fintype.card_prod]

private def syndromeWord (w : QaryWord 4 11) : QaryWord 4 8 := fun i =>
  gf4Add (w ⟨i.val, by omega⟩) (tailContribution (tailFree w) i.val)

private def addWord (x y : QaryWord 4 11) : QaryWord 4 11 := fun i =>
  gf4Add (x i) (y i)

private def addSyndrome (x y : QaryWord 4 8) : QaryWord 4 8 := fun i =>
  gf4Add (x i) (y i)

private theorem syndromeWord_addWord (x e : QaryWord 4 11) :
    syndromeWord (addWord x e) = addSyndrome (syndromeWord x) (syndromeWord e) := by
  funext i
  fin_cases i
  · simpa [syndromeWord, addWord, addSyndrome, tailFree, tailContribution, tailCoeff] using
      row0_syndrome_add (x 0) (x 8) (x 9) (x 10) (e 0) (e 8) (e 9) (e 10)
  · simpa [syndromeWord, addWord, addSyndrome, tailFree, tailContribution, tailCoeff] using
      row1_syndrome_add (x 1) (x 8) (x 9) (x 10) (e 1) (e 8) (e 9) (e 10)
  · simpa [syndromeWord, addWord, addSyndrome, tailFree, tailContribution, tailCoeff] using
      row2_syndrome_add (x 2) (x 8) (x 9) (x 10) (e 2) (e 8) (e 9) (e 10)
  · simpa [syndromeWord, addWord, addSyndrome, tailFree, tailContribution, tailCoeff] using
      row3_syndrome_add (x 3) (x 8) (x 9) (x 10) (e 3) (e 8) (e 9) (e 10)
  · simpa [syndromeWord, addWord, addSyndrome, tailFree, tailContribution, tailCoeff] using
      row4_syndrome_add (x 4) (x 8) (x 9) (x 10) (e 4) (e 8) (e 9) (e 10)
  · simpa [syndromeWord, addWord, addSyndrome, tailFree, tailContribution, tailCoeff] using
      row5_syndrome_add (x 5) (x 8) (x 9) (x 10) (e 5) (e 8) (e 9) (e 10)
  · simpa [syndromeWord, addWord, addSyndrome, tailFree, tailContribution, tailCoeff] using
      row6_syndrome_add (x 6) (x 8) (x 9) (x 10) (e 6) (e 8) (e 9) (e 10)
  · simpa [syndromeWord, addWord, addSyndrome, tailFree, tailContribution, tailCoeff] using
      row7_syndrome_add (x 7) (x 8) (x 9) (x 10) (e 7) (e 8) (e 9) (e 10)

private theorem addSyndrome_cancel_center (sx se center : QaryWord 4 8)
    (h : addSyndrome se center = sx) : addSyndrome sx se = center := by
  funext i
  exact gf4Add_cancel_right (sx i) (se i) (center i) (by simpa [addSyndrome] using congrFun h i)

private theorem cosetWord_tail_eq_of_syndrome_center (w : QaryWord 4 11) (ci : Fin 8)
    (h : syndromeWord w = centerWord ci) : cosetWord (ci, tailFree w) = w := by
  have h0 := gf4Add_cancel_left (centerValue ci 0) (tailContribution (tailFree w) 0) (w 0)
    (by simpa [syndromeWord, centerWord] using congrFun h 0)
  have h1 := gf4Add_cancel_left (centerValue ci 1) (tailContribution (tailFree w) 1) (w 1)
    (by simpa [syndromeWord, centerWord] using congrFun h 1)
  have h2 := gf4Add_cancel_left (centerValue ci 2) (tailContribution (tailFree w) 2) (w 2)
    (by simpa [syndromeWord, centerWord] using congrFun h 2)
  have h3 := gf4Add_cancel_left (centerValue ci 3) (tailContribution (tailFree w) 3) (w 3)
    (by simpa [syndromeWord, centerWord] using congrFun h 3)
  have h4 := gf4Add_cancel_left (centerValue ci 4) (tailContribution (tailFree w) 4) (w 4)
    (by simpa [syndromeWord, centerWord] using congrFun h 4)
  have h5 := gf4Add_cancel_left (centerValue ci 5) (tailContribution (tailFree w) 5) (w 5)
    (by simpa [syndromeWord, centerWord] using congrFun h 5)
  have h6 := gf4Add_cancel_left (centerValue ci 6) (tailContribution (tailFree w) 6) (w 6)
    (by simpa [syndromeWord, centerWord] using congrFun h 6)
  have h7 := gf4Add_cancel_left (centerValue ci 7) (tailContribution (tailFree w) 7) (w 7)
    (by simpa [syndromeWord, centerWord] using congrFun h 7)
  funext i
  fin_cases i <;> simp [cosetWord, tailFree, h0, h1, h2, h3, h4, h5, h6, h7]

private def packSyndrome (s : QaryWord 4 8) : Fin 65536 :=
  ⟨(s 0).val + 4 * (s 1).val + 16 * (s 2).val + 64 * (s 3).val +
    256 * (s 4).val + 1024 * (s 5).val + 4096 * (s 6).val +
    16384 * (s 7).val, by omega⟩

private def decodeSyndrome (idx : Fin 65536) : QaryWord 4 8 := fun i =>
  if i.val = 0 then digit4 idx.val 1
  else if i.val = 1 then digit4 idx.val 4
  else if i.val = 2 then digit4 idx.val 16
  else if i.val = 3 then digit4 idx.val 64
  else if i.val = 4 then digit4 idx.val 256
  else if i.val = 5 then digit4 idx.val 1024
  else if i.val = 6 then digit4 idx.val 4096
  else digit4 idx.val 16384

set_option maxRecDepth 20000 in
private theorem decodeSyndrome_pack : ∀ s : QaryWord 4 8,
    decodeSyndrome (packSyndrome s) = s := by
  native_decide

private def decodeWord11 (value : Nat) : QaryWord 4 11 := fun i =>
  if i.val = 0 then digit4 value 1
  else if i.val = 1 then digit4 value 4
  else if i.val = 2 then digit4 value 16
  else if i.val = 3 then digit4 value 64
  else if i.val = 4 then digit4 value 256
  else if i.val = 5 then digit4 value 1024
  else if i.val = 6 then digit4 value 4096
  else if i.val = 7 then digit4 value 16384
  else if i.val = 8 then digit4 value 65536
  else if i.val = 9 then digit4 value 262144
  else digit4 value 1048576

private def correctionEntry (idx : Fin 65536) : Nat :=
  (knownBoundQ4N11R4CorrectionChunk (idx.val / 4096)).getD (idx.val % 4096) 0

private def correctionCenter (idx : Fin 65536) : Fin 8 :=
  ⟨(correctionEntry idx) % 8, by omega⟩

private def correctionError (idx : Fin 65536) : QaryWord 4 11 :=
  decodeWord11 ((correctionEntry idx) / 8)

private def correctionSyndrome (idx : Fin 65536) : QaryWord 4 8 :=
  addSyndrome (syndromeWord (correctionError idx)) (centerWord (correctionCenter idx))

private def support (w : QaryWord 4 11) : Finset (Fin 11) :=
  Finset.univ.filter (fun i => w i ≠ f4_0)

private def chunkIndex (chunk : Fin 16) (off : Fin 4096) : Fin 65536 :=
  ⟨chunk.val * 4096 + off.val, by
    have hchunk := chunk.isLt
    have hoff := off.isLt
    omega⟩

set_option maxRecDepth 20000 in
set_option maxHeartbeats 2000000 in
private theorem correction_syndrome_ok_chunk (chunk : Fin 16) :
    ∀ off : Fin 4096,
      correctionSyndrome (chunkIndex chunk off) = decodeSyndrome (chunkIndex chunk off) := by
  fin_cases chunk <;> native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 2000000 in
private theorem correction_weight_ok_chunk (chunk : Fin 16) :
    ∀ off : Fin 4096, (support (correctionError (chunkIndex chunk off))).card <= 4 := by
  fin_cases chunk <;> native_decide

private theorem correction_syndrome_ok (idx : Fin 65536) :
    correctionSyndrome idx = decodeSyndrome idx := by
  let chunk : Fin 16 := ⟨idx.val / 4096, by omega⟩
  let off : Fin 4096 := ⟨idx.val % 4096, by omega⟩
  have hidx : idx = chunkIndex chunk off := by
    apply Fin.ext
    simp [chunkIndex, chunk, off]
    omega
  rw [hidx]
  exact correction_syndrome_ok_chunk chunk off

private theorem correction_weight_ok (idx : Fin 65536) :
    (support (correctionError idx)).card <= 4 := by
  let chunk : Fin 16 := ⟨idx.val / 4096, by omega⟩
  let off : Fin 4096 := ⟨idx.val % 4096, by omega⟩
  have hidx : idx = chunkIndex chunk off := by
    apply Fin.ext
    simp [chunkIndex, chunk, off]
    omega
  rw [hidx]
  exact correction_weight_ok_chunk chunk off

private theorem addWord_dist_le_of_support (x e : QaryWord 4 11)
    (hw : (support e).card <= 4) :
    hammingDist x (addWord x e) <= 4 := by
  have hsubset : (Finset.univ.filter fun i : Fin 11 => x i ≠ addWord x e i) ⊆ support e := by
    intro i hi
    simp only [support, Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
    by_contra hne
    have heq : e i = f4_0 := by simpa using hne
    apply hi
    unfold addWord
    rw [heq]
    exact (gf4Add_zero (x i)).symm
  calc
    hammingDist x (addWord x e)
        = (Finset.univ.filter fun i : Fin 11 => x i ≠ addWord x e i).card := rfl
    _ <= (support e).card := Finset.card_le_card hsubset
    _ <= 4 := hw

private theorem cosetCode_covers : CoversFinset cosetCode 4 := by
  intro x
  let idx := packSyndrome (syndromeWord x)
  let e := correctionError idx
  let ci := correctionCenter idx
  let c := addWord x e
  refine ⟨c, ?_, ?_⟩
  · have htable : addSyndrome (syndromeWord e) (centerWord ci) = syndromeWord x := by
      simpa [idx, e, ci, correctionSyndrome] using
        (correction_syndrome_ok idx).trans (decodeSyndrome_pack (syndromeWord x))
    have hcenter : syndromeWord c = centerWord ci := by
      calc
        syndromeWord c = addSyndrome (syndromeWord x) (syndromeWord e) := by
          simpa [c] using syndromeWord_addWord x e
        _ = centerWord ci := addSyndrome_cancel_center (syndromeWord x) (syndromeWord e)
          (centerWord ci) htable
    exact Finset.mem_image.mpr ⟨(ci, tailFree c), Finset.mem_univ _,
      cosetWord_tail_eq_of_syndrome_center c ci hcenter⟩
  · simpa [idx, e, c] using addWord_dist_le_of_support x e (correction_weight_ok idx)

def knownBoundQ4N11R4UpperName : String :=
  "lean_known_bounds_q4_n11_r4_gf4_coset_syndrome"

def knownBoundQ4N11R4Explicit : ExplicitQaryUpper 4 11 4 512 :=
  { code := cosetCode
    card_le := cosetCode_card
    covers := cosetCode_covers }

def knownBoundQ4N11R4Upper (q n r : Nat) : Nat :=
  if q = 4 ∧ n = 11 ∧ r = 4 then 512 else trivialUpper q n r

theorem knownBoundQ4N11R4Upper_valid (q n r : Nat) :
    QaryKUpper q n r (knownBoundQ4N11R4Upper q n r) := by
  by_cases h : q = 4 ∧ n = 11 ∧ r = 4
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [knownBoundQ4N11R4Upper] using knownBoundQ4N11R4Explicit.toUpper
  · simpa [knownBoundQ4N11R4Upper, h] using trivialUpper_valid q n r

def knownBoundQ4N11R4UpperSource : UpperBoundSource where
  value := knownBoundQ4N11R4Upper
  trace := fun q n r =>
    .primitive knownBoundQ4N11R4UpperName (knownBoundQ4N11R4Upper_valid q n r)

end Database
end CoveringCodes
