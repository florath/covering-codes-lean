import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.KnownBounds.K_9_9_5_TailData
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Known-bound upper certificate for K_9(9,5)

This module formalizes the structural construction from
`q9-n9-r5-729-known-bound-lean-certificate-notes.md` and the archived
candidate source `systematic_linear_candidate`.

The code is a systematic `9`-ary code with three free coordinates and six
parity-check equations over `ZMod 9`.  A deterministic syndrome repair search
proves that every syndrome has a correction of support at most five.
-/

namespace CoveringCodes
namespace Database

private abbrev f9_0 : Fin 9 := ⟨0, by decide⟩
private abbrev f3_0 : Fin 3 := ⟨0, by decide⟩
private abbrev f3_1 : Fin 3 := ⟨1, by decide⟩
private abbrev f3_2 : Fin 3 := ⟨2, by decide⟩

private def add9 (a b : Fin 9) : Fin 9 := ⟨(a.val + b.val) % 9, by omega⟩
private def sub9 (a b : Fin 9) : Fin 9 := ⟨(9 + a.val - b.val) % 9, by omega⟩
private def mul9 (k : Nat) (a : Fin 9) : Fin 9 := ⟨(k * a.val) % 9, by omega⟩
private def neg9 (a : Fin 9) : Fin 9 := ⟨(9 - a.val) % 9, by omega⟩
private def asZ9 (a : Fin 9) : ZMod 9 := a.val

private def add9_3 (a b c : Fin 9) : Fin 9 := add9 (add9 a b) c

private theorem asZ9_sub9 (a b : Fin 9) :
    asZ9 (sub9 a b) = asZ9 a - asZ9 b := by
  fin_cases a <;> fin_cases b <;> native_decide

private theorem sub9_zero (a : Fin 9) : sub9 a f9_0 = a := by
  fin_cases a <;> native_decide

private theorem row0_zero_solve (p a b c : Fin 9)
    (h : asZ9 p + 7 * asZ9 a + 8 * asZ9 b + 5 * asZ9 c = 0) :
    neg9 (add9_3 (mul9 7 a) (mul9 8 b) (mul9 5 c)) = p := by
  revert p a b c
  covering_decide

private theorem row1_zero_solve (p a b c : Fin 9)
    (h : asZ9 p + 6 * asZ9 a + 3 * asZ9 b + 4 * asZ9 c = 0) :
    neg9 (add9_3 (mul9 6 a) (mul9 3 b) (mul9 4 c)) = p := by
  revert p a b c
  covering_decide

private theorem row2_zero_solve (p a b c : Fin 9)
    (h : asZ9 p + asZ9 a + 2 * asZ9 b + 7 * asZ9 c = 0) :
    neg9 (add9_3 a (mul9 2 b) (mul9 7 c)) = p := by
  revert p a b c
  covering_decide

private theorem row3_zero_solve (p a b c : Fin 9)
    (h : asZ9 p + 8 * asZ9 a + 5 * asZ9 b + 6 * asZ9 c = 0) :
    neg9 (add9_3 (mul9 8 a) (mul9 5 b) (mul9 6 c)) = p := by
  revert p a b c
  covering_decide

private theorem row4_zero_solve (p a b c : Fin 9)
    (h : asZ9 p + 3 * asZ9 a + 4 * asZ9 b + asZ9 c = 0) :
    neg9 (add9_3 (mul9 3 a) (mul9 4 b) c) = p := by
  revert p a b c
  covering_decide

private theorem row5_zero_solve (p a b c : Fin 9)
    (h : asZ9 p + 2 * asZ9 a + 7 * asZ9 b + 8 * asZ9 c = 0) :
    neg9 (add9_3 (mul9 2 a) (mul9 7 b) (mul9 8 c)) = p := by
  revert p a b c
  covering_decide

private def linearWord (free : QaryWord 9 3) : QaryWord 9 9 :=
  fun i =>
    if i.val = 0 then neg9 (add9_3 (mul9 7 (free f3_0)) (mul9 8 (free f3_1)) (mul9 5 (free f3_2)))
    else if i.val = 1 then neg9 (add9_3 (mul9 6 (free f3_0)) (mul9 3 (free f3_1)) (mul9 4 (free f3_2)))
    else if i.val = 2 then neg9 (add9_3 (free f3_0) (mul9 2 (free f3_1)) (mul9 7 (free f3_2)))
    else if i.val = 3 then neg9 (add9_3 (mul9 8 (free f3_0)) (mul9 5 (free f3_1)) (mul9 6 (free f3_2)))
    else if i.val = 4 then neg9 (add9_3 (mul9 3 (free f3_0)) (mul9 4 (free f3_1)) (free f3_2))
    else if i.val = 5 then neg9 (add9_3 (mul9 2 (free f3_0)) (mul9 7 (free f3_1)) (mul9 8 (free f3_2)))
    else if i.val = 6 then free f3_0
    else if i.val = 7 then free f3_1
    else free f3_2

private def linearFree (w : QaryWord 9 9) : QaryWord 9 3 := fun i =>
  if i.val = 0 then w 6
  else if i.val = 1 then w 7
  else w 8

private def zSyn0 (w : QaryWord 9 9) : ZMod 9 :=
  asZ9 (w 0) + 7 * asZ9 (w 6) + 8 * asZ9 (w 7) + 5 * asZ9 (w 8)

private def zSyn1 (w : QaryWord 9 9) : ZMod 9 :=
  asZ9 (w 1) + 6 * asZ9 (w 6) + 3 * asZ9 (w 7) + 4 * asZ9 (w 8)

private def zSyn2 (w : QaryWord 9 9) : ZMod 9 :=
  asZ9 (w 2) + asZ9 (w 6) + 2 * asZ9 (w 7) + 7 * asZ9 (w 8)

private def zSyn3 (w : QaryWord 9 9) : ZMod 9 :=
  asZ9 (w 3) + 8 * asZ9 (w 6) + 5 * asZ9 (w 7) + 6 * asZ9 (w 8)

private def zSyn4 (w : QaryWord 9 9) : ZMod 9 :=
  asZ9 (w 4) + 3 * asZ9 (w 6) + 4 * asZ9 (w 7) + asZ9 (w 8)

private def zSyn5 (w : QaryWord 9 9) : ZMod 9 :=
  asZ9 (w 5) + 2 * asZ9 (w 6) + 7 * asZ9 (w 7) + 8 * asZ9 (w 8)

private def IsLinearWord (w : QaryWord 9 9) : Prop :=
  zSyn0 w = 0 ∧ zSyn1 w = 0 ∧ zSyn2 w = 0 ∧ zSyn3 w = 0 ∧ zSyn4 w = 0 ∧
    zSyn5 w = 0

private instance (w : QaryWord 9 9) : Decidable (IsLinearWord w) := by
  unfold IsLinearWord
  infer_instance

private theorem linearWord_linearFree_eq_of_isLinear (w : QaryWord 9 9)
    (h : IsLinearWord w) : linearWord (linearFree w) = w := by
  rcases h with ⟨h0, h1, h2, h3, h4, h5⟩
  have hw0 := row0_zero_solve (w 0) (w 6) (w 7) (w 8) (by simpa [zSyn0] using h0)
  have hw1 := row1_zero_solve (w 1) (w 6) (w 7) (w 8) (by simpa [zSyn1] using h1)
  have hw2 := row2_zero_solve (w 2) (w 6) (w 7) (w 8) (by simpa [zSyn2] using h2)
  have hw3 := row3_zero_solve (w 3) (w 6) (w 7) (w 8) (by simpa [zSyn3] using h3)
  have hw4 := row4_zero_solve (w 4) (w 6) (w 7) (w 8) (by simpa [zSyn4] using h4)
  have hw5 := row5_zero_solve (w 5) (w 6) (w 7) (w 8) (by simpa [zSyn5] using h5)
  funext i
  fin_cases i <;> simp [linearWord, linearFree, hw0, hw1, hw2, hw3, hw4, hw5]

private def linearCode (_ : Unit) : Finset (QaryWord 9 9) :=
  (Finset.univ : Finset (QaryWord 9 3)).image linearWord

private def z9Component (z : ZMod 9) : Fin 9 :=
  ⟨z.val, ZMod.val_lt z⟩

private theorem z9Component_asZ9 (a : Fin 9) :
    z9Component (asZ9 a) = a := by
  fin_cases a <;> native_decide

private theorem z9Component_inj {a b : ZMod 9}
    (h : z9Component a = z9Component b) : a = b := by
  apply ZMod.val_injective 9
  exact congrArg Fin.val h

private def syndromeWord (w : QaryWord 9 9) : QaryWord 9 6 := fun i =>
  if i.val = 0 then z9Component (zSyn0 w)
  else if i.val = 1 then z9Component (zSyn1 w)
  else if i.val = 2 then z9Component (zSyn2 w)
  else if i.val = 3 then z9Component (zSyn3 w)
  else if i.val = 4 then z9Component (zSyn4 w)
  else z9Component (zSyn5 w)

private def digit9 (value place : Nat) : Fin 9 :=
  ⟨(value / place) % 9, by omega⟩

private def decodeTail (value : Nat) : QaryWord 9 3 := fun i =>
  if i.val = 0 then digit9 value 81
  else if i.val = 1 then digit9 value 9
  else digit9 value 1

private def tailContribution (t : QaryWord 9 3) : QaryWord 9 6 := fun i =>
  if i.val = 0 then add9_3 (mul9 7 (t f3_0)) (mul9 8 (t f3_1)) (mul9 5 (t f3_2))
  else if i.val = 1 then add9_3 (mul9 6 (t f3_0)) (mul9 3 (t f3_1)) (mul9 4 (t f3_2))
  else if i.val = 2 then add9_3 (t f3_0) (mul9 2 (t f3_1)) (mul9 7 (t f3_2))
  else if i.val = 3 then add9_3 (mul9 8 (t f3_0)) (mul9 5 (t f3_1)) (mul9 6 (t f3_2))
  else if i.val = 4 then add9_3 (mul9 3 (t f3_0)) (mul9 4 (t f3_1)) (t f3_2)
  else add9_3 (mul9 2 (t f3_0)) (mul9 7 (t f3_1)) (mul9 8 (t f3_2))

private def nz9 (a : Fin 9) : Nat :=
  if a ≠ f9_0 then 1 else 0

private def correctionWeightForTail (s : QaryWord 9 6) (t : QaryWord 9 3) : Nat :=
  nz9 (sub9 (s 0) (tailContribution t 0)) +
  nz9 (sub9 (s 1) (tailContribution t 1)) +
  nz9 (sub9 (s 2) (tailContribution t 2)) +
  nz9 (sub9 (s 3) (tailContribution t 3)) +
  nz9 (sub9 (s 4) (tailContribution t 4)) +
  nz9 (sub9 (s 5) (tailContribution t 5)) +
  nz9 (t f3_0) + nz9 (t f3_1) + nz9 (t f3_2)

private def findTailValue (s : QaryWord 9 6) (idx fuel : Nat) : Nat :=
  match fuel with
  | 0 => 0
  | fuel + 1 =>
      if correctionWeightForTail s (decodeTail idx) ≤ 5 then idx
      else findTailValue s (idx + 1) fuel

private def packSyndrome (s : QaryWord 9 6) : Fin 531441 :=
  ⟨(s 0).val + 9 * (s 1).val + 81 * (s 2).val + 729 * (s 3).val +
    6561 * (s 4).val + 59049 * (s 5).val, by omega⟩

private def correctionTail (s : QaryWord 9 6) : QaryWord 9 3 :=
  let idx := (packSyndrome s).val
  decodeTail ((knownBoundQ9N9R5TailChunk (idx / 6561)).getD (idx % 6561) 0)

private def syndromeCorrectionWithTail (s : QaryWord 9 6) (t : QaryWord 9 3) :
    QaryWord 9 9 :=
  fun i =>
    if i.val = 0 then sub9 (s 0) (tailContribution t 0)
    else if i.val = 1 then sub9 (s 1) (tailContribution t 1)
    else if i.val = 2 then sub9 (s 2) (tailContribution t 2)
    else if i.val = 3 then sub9 (s 3) (tailContribution t 3)
    else if i.val = 4 then sub9 (s 4) (tailContribution t 4)
    else if i.val = 5 then sub9 (s 5) (tailContribution t 5)
    else if i.val = 6 then t f3_0
    else if i.val = 7 then t f3_1
    else t f3_2

private def syndromeCorrection (s : QaryWord 9 6) : QaryWord 9 9 :=
  syndromeCorrectionWithTail s (correctionTail s)

private def support (w : QaryWord 9 9) : Finset (Fin 9) :=
  Finset.univ.filter (fun i => w i ≠ f9_0)

private theorem row0_correction_syndrome (s0 a b c : Fin 9) :
    asZ9 (sub9 s0 (add9_3 (mul9 7 a) (mul9 8 b) (mul9 5 c))) +
      7 * asZ9 a + 8 * asZ9 b + 5 * asZ9 c = asZ9 s0 := by
  revert s0 a b c
  covering_decide

private theorem row1_correction_syndrome (s1 a b c : Fin 9) :
    asZ9 (sub9 s1 (add9_3 (mul9 6 a) (mul9 3 b) (mul9 4 c))) +
      6 * asZ9 a + 3 * asZ9 b + 4 * asZ9 c = asZ9 s1 := by
  revert s1 a b c
  covering_decide

private theorem row2_correction_syndrome (s2 a b c : Fin 9) :
    asZ9 (sub9 s2 (add9_3 a (mul9 2 b) (mul9 7 c))) +
      asZ9 a + 2 * asZ9 b + 7 * asZ9 c = asZ9 s2 := by
  revert s2 a b c
  covering_decide

private theorem row3_correction_syndrome (s3 a b c : Fin 9) :
    asZ9 (sub9 s3 (add9_3 (mul9 8 a) (mul9 5 b) (mul9 6 c))) +
      8 * asZ9 a + 5 * asZ9 b + 6 * asZ9 c = asZ9 s3 := by
  revert s3 a b c
  covering_decide

private theorem row4_correction_syndrome (s4 a b c : Fin 9) :
    asZ9 (sub9 s4 (add9_3 (mul9 3 a) (mul9 4 b) c)) +
      3 * asZ9 a + 4 * asZ9 b + asZ9 c = asZ9 s4 := by
  revert s4 a b c
  covering_decide

private theorem row5_correction_syndrome (s5 a b c : Fin 9) :
    asZ9 (sub9 s5 (add9_3 (mul9 2 a) (mul9 7 b) (mul9 8 c))) +
      2 * asZ9 a + 7 * asZ9 b + 8 * asZ9 c = asZ9 s5 := by
  revert s5 a b c
  covering_decide

private theorem syndromeCorrectionWithTail_syndrome (s : QaryWord 9 6) (t : QaryWord 9 3) :
    syndromeWord (syndromeCorrectionWithTail s t) = s := by
  funext i
  fin_cases i <;>
    simp [syndromeWord, syndromeCorrectionWithTail, zSyn0, zSyn1, zSyn2, zSyn3, zSyn4, zSyn5,
      tailContribution, row0_correction_syndrome, row1_correction_syndrome,
      row2_correction_syndrome, row3_correction_syndrome, row4_correction_syndrome,
      row5_correction_syndrome, z9Component_asZ9]

private def correctionWeight (s : QaryWord 9 6) : Nat :=
  correctionWeightForTail s (correctionTail s)

private def decodeSyndrome (idx : Fin 531441) : QaryWord 9 6 :=
  fun i =>
    if i.val = 0 then digit9 idx.val 1
    else if i.val = 1 then digit9 idx.val 9
    else if i.val = 2 then digit9 idx.val 81
    else if i.val = 3 then digit9 idx.val 729
    else if i.val = 4 then digit9 idx.val 6561
    else digit9 idx.val 59049

private theorem decodeSyndrome_pack (s : QaryWord 9 6) :
    decodeSyndrome (packSyndrome s) = s := by
  funext i
  fin_cases i
  · apply Fin.ext
    simp [decodeSyndrome, packSyndrome, digit9, Nat.add_mod, Nat.mul_mod,
      Nat.mod_eq_of_lt (s 0).isLt]
  · apply Fin.ext
    simp [decodeSyndrome, packSyndrome, digit9]
    rw [show
        (s 0).val + 9 * (s 1).val + 81 * (s 2).val + 729 * (s 3).val +
            6561 * (s 4).val + 59049 * (s 5).val =
          (s 0).val + 9 * ((s 1).val + 9 * (s 2).val + 81 * (s 3).val +
            729 * (s 4).val + 6561 * (s 5).val) by ring]
    rw [Nat.add_mul_div_left _ _ (by decide : 0 < 9)]
    rw [Nat.div_eq_of_lt (s 0).isLt]
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt (s 1).isLt]
  · apply Fin.ext
    simp [decodeSyndrome, packSyndrome, digit9]
    rw [show
        (s 0).val + 9 * (s 1).val + 81 * (s 2).val + 729 * (s 3).val +
            6561 * (s 4).val + 59049 * (s 5).val =
          ((s 0).val + 9 * (s 1).val) + 81 * ((s 2).val + 9 * (s 3).val +
            81 * (s 4).val + 729 * (s 5).val) by ring]
    rw [Nat.add_mul_div_left _ _ (by decide : 0 < 81)]
    have hlow : (s 0).val + 9 * (s 1).val < 81 := by omega
    rw [Nat.div_eq_of_lt hlow]
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt (s 2).isLt]
  · apply Fin.ext
    simp [decodeSyndrome, packSyndrome, digit9]
    rw [show
        (s 0).val + 9 * (s 1).val + 81 * (s 2).val + 729 * (s 3).val +
            6561 * (s 4).val + 59049 * (s 5).val =
          ((s 0).val + 9 * (s 1).val + 81 * (s 2).val) +
            729 * ((s 3).val + 9 * (s 4).val + 81 * (s 5).val) by ring]
    rw [Nat.add_mul_div_left _ _ (by decide : 0 < 729)]
    have hlow : (s 0).val + 9 * (s 1).val + 81 * (s 2).val < 729 := by omega
    rw [Nat.div_eq_of_lt hlow]
    simp [Nat.add_mod, Nat.mul_mod, Nat.mod_eq_of_lt (s 3).isLt]
  · apply Fin.ext
    simp [decodeSyndrome, packSyndrome, digit9]
    rw [show
        (s 0).val + 9 * (s 1).val + 81 * (s 2).val + 729 * (s 3).val +
            6561 * (s 4).val + 59049 * (s 5).val =
          ((s 0).val + 9 * (s 1).val + 81 * (s 2).val + 729 * (s 3).val) +
            6561 * ((s 4).val + 9 * (s 5).val) by ring]
    rw [Nat.add_mul_div_left _ _ (by decide : 0 < 6561)]
    have hlow : (s 0).val + 9 * (s 1).val + 81 * (s 2).val + 729 * (s 3).val <
        6561 := by omega
    rw [Nat.div_eq_of_lt hlow]
    simp [Nat.add_mod, Nat.mod_eq_of_lt (s 4).isLt]
  · apply Fin.ext
    simp [decodeSyndrome, packSyndrome, digit9]
    rw [show
        (s 0).val + 9 * (s 1).val + 81 * (s 2).val + 729 * (s 3).val +
            6561 * (s 4).val + 59049 * (s 5).val =
          ((s 0).val + 9 * (s 1).val + 81 * (s 2).val + 729 * (s 3).val +
            6561 * (s 4).val) + 59049 * (s 5).val by ring]
    rw [Nat.add_mul_div_left _ _ (by decide : 0 < 59049)]
    have hlow : (s 0).val + 9 * (s 1).val + 81 * (s 2).val + 729 * (s 3).val +
        6561 * (s 4).val < 59049 := by omega
    rw [Nat.div_eq_of_lt hlow]
    simp [Nat.mod_eq_of_lt (s 5).isLt]

private def wordWeight9 (w : QaryWord 9 9) : Nat :=
  nz9 (w 0) + nz9 (w 1) + nz9 (w 2) + nz9 (w 3) + nz9 (w 4) +
  nz9 (w 5) + nz9 (w 6) + nz9 (w 7) + nz9 (w 8)

private theorem support_card_eq_wordWeight9 (w : QaryWord 9 9) :
    (support w).card = wordWeight9 w := by
  rw [support, Finset.card_filter]
  simp [Fin.sum_univ_succ, wordWeight9, nz9, f9_0]
  simp only [Nat.add_assoc]
  rfl

private theorem support_syndromeCorrection_card_eq_weight (s : QaryWord 9 6) :
    (support (syndromeCorrection s)).card = correctionWeight s := by
  rw [support_card_eq_wordWeight9]
  simp [wordWeight9, syndromeCorrection, syndromeCorrectionWithTail, correctionWeight,
    correctionWeightForTail]

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_0 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨0 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_1 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨1 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_2 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨2 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_3 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨3 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_4 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨4 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_5 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨5 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_6 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨6 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_7 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨7 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_8 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨8 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_9 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨9 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_10 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨10 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_11 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨11 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_12 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨12 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_13 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨13 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_14 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨14 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_15 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨15 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_16 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨16 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_17 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨17 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_18 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨18 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_19 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨19 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_20 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨20 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_21 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨21 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_22 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨22 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_23 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨23 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_24 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨24 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_25 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨25 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_26 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨26 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_27 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨27 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_28 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨28 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_29 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨29 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_30 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨30 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_31 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨31 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_32 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨32 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_33 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨33 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_34 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨34 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_35 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨35 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_36 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨36 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_37 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨37 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_38 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨38 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_39 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨39 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_40 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨40 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_41 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨41 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_42 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨42 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_43 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨43 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_44 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨44 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_45 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨45 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_46 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨46 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_47 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨47 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_48 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨48 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_49 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨49 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_50 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨50 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_51 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨51 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_52 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨52 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_53 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨53 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_54 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨54 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_55 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨55 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_56 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨56 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_57 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨57 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_58 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨58 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_59 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨59 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_60 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨60 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_61 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨61 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_62 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨62 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_63 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨63 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_64 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨64 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_65 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨65 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_66 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨66 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_67 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨67 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_68 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨68 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_69 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨69 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_70 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨70 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_71 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨71 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_72 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨72 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_73 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨73 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_74 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨74 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_75 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨75 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_76 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨76 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_77 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨77 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_78 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨78 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_79 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨79 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

set_option maxRecDepth 20000 in
set_option maxHeartbeats 1000000 in
private theorem correction_weight_ok_chunk_80 :
    ∀ off : Fin 6561,
      correctionWeight (decodeSyndrome ⟨80 * 6561 + off.val, by omega⟩) ≤ 5 := by
  native_decide

private theorem correction_weight_ok_chunk (chunk : Fin 81) (off : Fin 6561) :
    correctionWeight (decodeSyndrome ⟨chunk.val * 6561 + off.val, by
      have hc : chunk.val < 81 := chunk.isLt
      have ho : off.val < 6561 := off.isLt
      omega⟩) ≤ 5 := by
  fin_cases chunk
  · simpa using correction_weight_ok_chunk_0 off
  · simpa using correction_weight_ok_chunk_1 off
  · simpa using correction_weight_ok_chunk_2 off
  · simpa using correction_weight_ok_chunk_3 off
  · simpa using correction_weight_ok_chunk_4 off
  · simpa using correction_weight_ok_chunk_5 off
  · simpa using correction_weight_ok_chunk_6 off
  · simpa using correction_weight_ok_chunk_7 off
  · simpa using correction_weight_ok_chunk_8 off
  · simpa using correction_weight_ok_chunk_9 off
  · simpa using correction_weight_ok_chunk_10 off
  · simpa using correction_weight_ok_chunk_11 off
  · simpa using correction_weight_ok_chunk_12 off
  · simpa using correction_weight_ok_chunk_13 off
  · simpa using correction_weight_ok_chunk_14 off
  · simpa using correction_weight_ok_chunk_15 off
  · simpa using correction_weight_ok_chunk_16 off
  · simpa using correction_weight_ok_chunk_17 off
  · simpa using correction_weight_ok_chunk_18 off
  · simpa using correction_weight_ok_chunk_19 off
  · simpa using correction_weight_ok_chunk_20 off
  · simpa using correction_weight_ok_chunk_21 off
  · simpa using correction_weight_ok_chunk_22 off
  · simpa using correction_weight_ok_chunk_23 off
  · simpa using correction_weight_ok_chunk_24 off
  · simpa using correction_weight_ok_chunk_25 off
  · simpa using correction_weight_ok_chunk_26 off
  · simpa using correction_weight_ok_chunk_27 off
  · simpa using correction_weight_ok_chunk_28 off
  · simpa using correction_weight_ok_chunk_29 off
  · simpa using correction_weight_ok_chunk_30 off
  · simpa using correction_weight_ok_chunk_31 off
  · simpa using correction_weight_ok_chunk_32 off
  · simpa using correction_weight_ok_chunk_33 off
  · simpa using correction_weight_ok_chunk_34 off
  · simpa using correction_weight_ok_chunk_35 off
  · simpa using correction_weight_ok_chunk_36 off
  · simpa using correction_weight_ok_chunk_37 off
  · simpa using correction_weight_ok_chunk_38 off
  · simpa using correction_weight_ok_chunk_39 off
  · simpa using correction_weight_ok_chunk_40 off
  · simpa using correction_weight_ok_chunk_41 off
  · simpa using correction_weight_ok_chunk_42 off
  · simpa using correction_weight_ok_chunk_43 off
  · simpa using correction_weight_ok_chunk_44 off
  · simpa using correction_weight_ok_chunk_45 off
  · simpa using correction_weight_ok_chunk_46 off
  · simpa using correction_weight_ok_chunk_47 off
  · simpa using correction_weight_ok_chunk_48 off
  · simpa using correction_weight_ok_chunk_49 off
  · simpa using correction_weight_ok_chunk_50 off
  · simpa using correction_weight_ok_chunk_51 off
  · simpa using correction_weight_ok_chunk_52 off
  · simpa using correction_weight_ok_chunk_53 off
  · simpa using correction_weight_ok_chunk_54 off
  · simpa using correction_weight_ok_chunk_55 off
  · simpa using correction_weight_ok_chunk_56 off
  · simpa using correction_weight_ok_chunk_57 off
  · simpa using correction_weight_ok_chunk_58 off
  · simpa using correction_weight_ok_chunk_59 off
  · simpa using correction_weight_ok_chunk_60 off
  · simpa using correction_weight_ok_chunk_61 off
  · simpa using correction_weight_ok_chunk_62 off
  · simpa using correction_weight_ok_chunk_63 off
  · simpa using correction_weight_ok_chunk_64 off
  · simpa using correction_weight_ok_chunk_65 off
  · simpa using correction_weight_ok_chunk_66 off
  · simpa using correction_weight_ok_chunk_67 off
  · simpa using correction_weight_ok_chunk_68 off
  · simpa using correction_weight_ok_chunk_69 off
  · simpa using correction_weight_ok_chunk_70 off
  · simpa using correction_weight_ok_chunk_71 off
  · simpa using correction_weight_ok_chunk_72 off
  · simpa using correction_weight_ok_chunk_73 off
  · simpa using correction_weight_ok_chunk_74 off
  · simpa using correction_weight_ok_chunk_75 off
  · simpa using correction_weight_ok_chunk_76 off
  · simpa using correction_weight_ok_chunk_77 off
  · simpa using correction_weight_ok_chunk_78 off
  · simpa using correction_weight_ok_chunk_79 off
  · simpa using correction_weight_ok_chunk_80 off

private theorem correction_weight_ok_packed (idx : Fin 531441) :
    correctionWeight (decodeSyndrome idx) ≤ 5 := by
  let chunk : Fin 81 := ⟨idx.val / 6561, by
    have hi : idx.val < 531441 := idx.isLt
    omega⟩
  let off : Fin 6561 := ⟨idx.val % 6561, Nat.mod_lt _ (by decide)⟩
  have hval : idx.val = chunk.val * 6561 + off.val := by
    have h := Nat.mod_add_div idx.val 6561
    simp [chunk, off] at *
    omega
  have hidx : idx = ⟨chunk.val * 6561 + off.val, by
      have hc : chunk.val < 81 := chunk.isLt
      have ho : off.val < 6561 := off.isLt
      omega⟩ := Fin.ext hval
  rw [hidx]
  exact correction_weight_ok_chunk chunk off

private theorem correction_weight_ok (s : QaryWord 9 6) : correctionWeight s ≤ 5 := by
  simpa [decodeSyndrome_pack] using correction_weight_ok_packed (packSyndrome s)

private theorem table_syndrome (s : QaryWord 9 6) :
    syndromeWord (syndromeCorrection s) = s :=
  syndromeCorrectionWithTail_syndrome s (correctionTail s)

private theorem table_weight (s : QaryWord 9 6) :
    (support (syndromeCorrection s)).card ≤ 5 :=
  (support_syndromeCorrection_card_eq_weight s).trans_le (correction_weight_ok s)

private def subtractError (x e : QaryWord 9 9) : QaryWord 9 9 :=
  fun i => sub9 (x i) (e i)

private theorem subtractError_isLinear_of_matching (x e : QaryWord 9 9)
    (h0 : zSyn0 e = zSyn0 x) (h1 : zSyn1 e = zSyn1 x) (h2 : zSyn2 e = zSyn2 x)
    (h3 : zSyn3 e = zSyn3 x) (h4 : zSyn4 e = zSyn4 x) (h5 : zSyn5 e = zSyn5 x) :
    IsLinearWord (subtractError x e) := by
  constructor
  · unfold zSyn0 subtractError
    simp [asZ9_sub9]
    have hz0 : zSyn0 x - zSyn0 e = 0 := by rw [← h0]; ring
    have hz : (asZ9 (x 0) + 7 * asZ9 (x 6) + 8 * asZ9 (x 7) + 5 * asZ9 (x 8)) -
        (asZ9 (e 0) + 7 * asZ9 (e 6) + 8 * asZ9 (e 7) + 5 * asZ9 (e 8)) = 0 := by
      simpa [zSyn0] using hz0
    calc
      asZ9 (x 0) - asZ9 (e 0) + 7 * (asZ9 (x 6) - asZ9 (e 6)) +
          8 * (asZ9 (x 7) - asZ9 (e 7)) + 5 * (asZ9 (x 8) - asZ9 (e 8))
          = (asZ9 (x 0) + 7 * asZ9 (x 6) + 8 * asZ9 (x 7) + 5 * asZ9 (x 8)) -
            (asZ9 (e 0) + 7 * asZ9 (e 6) + 8 * asZ9 (e 7) + 5 * asZ9 (e 8)) := by ring
      _ = 0 := hz
  constructor
  · unfold zSyn1 subtractError
    simp [asZ9_sub9]
    have hz1 : zSyn1 x - zSyn1 e = 0 := by rw [← h1]; ring
    have hz : (asZ9 (x 1) + 6 * asZ9 (x 6) + 3 * asZ9 (x 7) + 4 * asZ9 (x 8)) -
        (asZ9 (e 1) + 6 * asZ9 (e 6) + 3 * asZ9 (e 7) + 4 * asZ9 (e 8)) = 0 := by
      simpa [zSyn1] using hz1
    calc
      asZ9 (x 1) - asZ9 (e 1) + 6 * (asZ9 (x 6) - asZ9 (e 6)) +
          3 * (asZ9 (x 7) - asZ9 (e 7)) + 4 * (asZ9 (x 8) - asZ9 (e 8))
          = (asZ9 (x 1) + 6 * asZ9 (x 6) + 3 * asZ9 (x 7) + 4 * asZ9 (x 8)) -
            (asZ9 (e 1) + 6 * asZ9 (e 6) + 3 * asZ9 (e 7) + 4 * asZ9 (e 8)) := by ring
      _ = 0 := hz
  constructor
  · unfold zSyn2 subtractError
    simp [asZ9_sub9]
    have hz2 : zSyn2 x - zSyn2 e = 0 := by rw [← h2]; ring
    have hz : (asZ9 (x 2) + asZ9 (x 6) + 2 * asZ9 (x 7) + 7 * asZ9 (x 8)) -
        (asZ9 (e 2) + asZ9 (e 6) + 2 * asZ9 (e 7) + 7 * asZ9 (e 8)) = 0 := by
      simpa [zSyn2] using hz2
    calc
      asZ9 (x 2) - asZ9 (e 2) + (asZ9 (x 6) - asZ9 (e 6)) +
          2 * (asZ9 (x 7) - asZ9 (e 7)) + 7 * (asZ9 (x 8) - asZ9 (e 8))
          = (asZ9 (x 2) + asZ9 (x 6) + 2 * asZ9 (x 7) + 7 * asZ9 (x 8)) -
            (asZ9 (e 2) + asZ9 (e 6) + 2 * asZ9 (e 7) + 7 * asZ9 (e 8)) := by ring
      _ = 0 := hz
  constructor
  · unfold zSyn3 subtractError
    simp [asZ9_sub9]
    have hz3 : zSyn3 x - zSyn3 e = 0 := by rw [← h3]; ring
    have hz : (asZ9 (x 3) + 8 * asZ9 (x 6) + 5 * asZ9 (x 7) + 6 * asZ9 (x 8)) -
        (asZ9 (e 3) + 8 * asZ9 (e 6) + 5 * asZ9 (e 7) + 6 * asZ9 (e 8)) = 0 := by
      simpa [zSyn3] using hz3
    calc
      asZ9 (x 3) - asZ9 (e 3) + 8 * (asZ9 (x 6) - asZ9 (e 6)) +
          5 * (asZ9 (x 7) - asZ9 (e 7)) + 6 * (asZ9 (x 8) - asZ9 (e 8))
          = (asZ9 (x 3) + 8 * asZ9 (x 6) + 5 * asZ9 (x 7) + 6 * asZ9 (x 8)) -
            (asZ9 (e 3) + 8 * asZ9 (e 6) + 5 * asZ9 (e 7) + 6 * asZ9 (e 8)) := by ring
      _ = 0 := hz
  constructor
  · unfold zSyn4 subtractError
    simp [asZ9_sub9]
    have hz4 : zSyn4 x - zSyn4 e = 0 := by rw [← h4]; ring
    have hz : (asZ9 (x 4) + 3 * asZ9 (x 6) + 4 * asZ9 (x 7) + asZ9 (x 8)) -
        (asZ9 (e 4) + 3 * asZ9 (e 6) + 4 * asZ9 (e 7) + asZ9 (e 8)) = 0 := by
      simpa [zSyn4] using hz4
    calc
      asZ9 (x 4) - asZ9 (e 4) + 3 * (asZ9 (x 6) - asZ9 (e 6)) +
          4 * (asZ9 (x 7) - asZ9 (e 7)) + (asZ9 (x 8) - asZ9 (e 8))
          = (asZ9 (x 4) + 3 * asZ9 (x 6) + 4 * asZ9 (x 7) + asZ9 (x 8)) -
            (asZ9 (e 4) + 3 * asZ9 (e 6) + 4 * asZ9 (e 7) + asZ9 (e 8)) := by ring
      _ = 0 := hz
  · unfold zSyn5 subtractError
    simp [asZ9_sub9]
    have hz5 : zSyn5 x - zSyn5 e = 0 := by rw [← h5]; ring
    have hz : (asZ9 (x 5) + 2 * asZ9 (x 6) + 7 * asZ9 (x 7) + 8 * asZ9 (x 8)) -
        (asZ9 (e 5) + 2 * asZ9 (e 6) + 7 * asZ9 (e 7) + 8 * asZ9 (e 8)) = 0 := by
      simpa [zSyn5] using hz5
    calc
      asZ9 (x 5) - asZ9 (e 5) + 2 * (asZ9 (x 6) - asZ9 (e 6)) +
          7 * (asZ9 (x 7) - asZ9 (e 7)) + 8 * (asZ9 (x 8) - asZ9 (e 8))
          = (asZ9 (x 5) + 2 * asZ9 (x 6) + 7 * asZ9 (x 7) + 8 * asZ9 (x 8)) -
            (asZ9 (e 5) + 2 * asZ9 (e 6) + 7 * asZ9 (e 7) + 8 * asZ9 (e 8)) := by ring
      _ = 0 := hz

private theorem subtractError_dist_le_of_support (x e : QaryWord 9 9)
    (hw : (support e).card ≤ 5) :
    hammingDist x (subtractError x e) ≤ 5 := by
  have hsubset : (Finset.univ.filter fun i : Fin 9 => x i ≠ subtractError x e i) ⊆ support e := by
    intro i hi
    simp only [support, Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
    by_contra hne
    have heq : e i = f9_0 := by simpa using hne
    apply hi
    unfold subtractError
    rw [heq]
    exact (sub9_zero (x i)).symm
  calc
    hammingDist x (subtractError x e)
        = (Finset.univ.filter fun i : Fin 9 => x i ≠ subtractError x e i).card := rfl
    _ ≤ (support e).card := Finset.card_le_card hsubset
    _ ≤ 5 := hw

private def linearRepair (x : QaryWord 9 9) : QaryWord 9 9 :=
  subtractError x (syndromeCorrection (syndromeWord x))

private theorem linearRepair_isLinear (x : QaryWord 9 9) : IsLinearWord (linearRepair x) := by
  let e := syndromeCorrection (syndromeWord x)
  have hidx : syndromeWord e = syndromeWord x := by
    simpa [e] using table_syndrome (syndromeWord x)
  have h0 : zSyn0 e = zSyn0 x := z9Component_inj (congrFun hidx 0)
  have h1 : zSyn1 e = zSyn1 x := z9Component_inj (congrFun hidx 1)
  have h2 : zSyn2 e = zSyn2 x := z9Component_inj (congrFun hidx 2)
  have h3 : zSyn3 e = zSyn3 x := z9Component_inj (congrFun hidx 3)
  have h4 : zSyn4 e = zSyn4 x := z9Component_inj (congrFun hidx 4)
  have h5 : zSyn5 e = zSyn5 x := z9Component_inj (congrFun hidx 5)
  simpa [linearRepair, e] using subtractError_isLinear_of_matching x e h0 h1 h2 h3 h4 h5

private theorem linearRepair_dist (x : QaryWord 9 9) : hammingDist x (linearRepair x) ≤ 5 := by
  simpa [linearRepair] using subtractError_dist_le_of_support x (syndromeCorrection (syndromeWord x))
    (table_weight (syndromeWord x))

private theorem linearCode_covers : CoversFinset (linearCode ()) 5 := by
  intro x
  refine ⟨linearRepair x, ?_, linearRepair_dist x⟩
  exact Finset.mem_image.mpr
    ⟨linearFree (linearRepair x), Finset.mem_univ _,
      linearWord_linearFree_eq_of_isLinear (linearRepair x) (linearRepair_isLinear x)⟩

private theorem linearCode_card : (linearCode ()).card ≤ 729 := by
  calc
    (linearCode ()).card ≤ (Finset.univ : Finset (QaryWord 9 3)).card := by
      simpa [linearCode] using Finset.card_image_le (s := (Finset.univ : Finset (QaryWord 9 3)))
    _ = 729 := by
      rw [Finset.card_univ, qaryWord_card]
      norm_num

def knownBoundQ9N9R5UpperName : String :=
  "lean_known_bounds_q9_n9_r5_systematic_syndrome"

theorem knownBoundQ9N9R5Cert : QaryKUpper 9 9 5 729 :=
  ⟨linearCode (), linearCode_card, linearCode_covers⟩

def knownBoundQ9N9R5Upper (q n r : Nat) : Nat :=
  if q = 9 ∧ n = 9 ∧ r = 5 then 729 else trivialUpper q n r

theorem knownBoundQ9N9R5Upper_valid (q n r : Nat) :
    QaryKUpper q n r (knownBoundQ9N9R5Upper q n r) := by
  by_cases h : q = 9 ∧ n = 9 ∧ r = 5
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [knownBoundQ9N9R5Upper] using knownBoundQ9N9R5Cert
  · simpa [knownBoundQ9N9R5Upper, h] using trivialUpper_valid q n r

def knownBoundQ9N9R5UpperSource : UpperBoundSource where
  value := knownBoundQ9N9R5Upper
  trace := fun q n r =>
    .primitive knownBoundQ9N9R5UpperName (knownBoundQ9N9R5Upper_valid q n r)

end Database
end CoveringCodes
