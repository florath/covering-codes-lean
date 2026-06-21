import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Known-bound upper certificate for K_6(7,2)

This module formalizes the structural construction from
`q6-n7-r2-1296-known-bound-lean-certificate-notes.md` and the archived
candidate source `synchronized_sixary_radius2_cover`.

The construction views each 6-ary symbol as a pair of a binary and ternary
symbol.  The code consists of the words whose three binary and three ternary
syndromes vanish.  A finite repair table, derived from the six syndrome-column
vectors in the candidate source, proves that every syndrome pair has a repair
of support at most two.
-/

namespace CoveringCodes
namespace Database


private abbrev f2_0 : Fin 2 := ⟨0, by decide⟩
private abbrev f3_0 : Fin 3 := ⟨0, by decide⟩
private abbrev f6_0 : Fin 6 := ⟨0, by decide⟩
private abbrev f6_1 : Fin 6 := ⟨1, by decide⟩
private abbrev f6_2 : Fin 6 := ⟨2, by decide⟩
private abbrev f6_3 : Fin 6 := ⟨3, by decide⟩
private abbrev f6_4 : Fin 6 := ⟨4, by decide⟩
private abbrev f6_5 : Fin 6 := ⟨5, by decide⟩
private abbrev f4_0 : Fin 4 := ⟨0, by decide⟩
private abbrev f4_1 : Fin 4 := ⟨1, by decide⟩
private abbrev f4_2 : Fin 4 := ⟨2, by decide⟩
private abbrev f4_3 : Fin 4 := ⟨3, by decide⟩
private abbrev f7_0 : Fin 7 := ⟨0, by decide⟩
private abbrev f7_1 : Fin 7 := ⟨1, by decide⟩
private abbrev f7_2 : Fin 7 := ⟨2, by decide⟩
private abbrev f7_3 : Fin 7 := ⟨3, by decide⟩
private abbrev f7_4 : Fin 7 := ⟨4, by decide⟩
private abbrev f7_5 : Fin 7 := ⟨5, by decide⟩
private abbrev f7_6 : Fin 7 := ⟨6, by decide⟩

private def add2 (a b : Fin 2) : Fin 2 := ⟨(a.val + b.val) % 2, by omega⟩
private def sub2 (a b : Fin 2) : Fin 2 := ⟨(2 + a.val - b.val) % 2, by omega⟩
private def add3 (a b : Fin 3) : Fin 3 := ⟨(a.val + b.val) % 3, by omega⟩
private def sub3 (a b : Fin 3) : Fin 3 := ⟨(3 + a.val - b.val) % 3, by omega⟩
private def mul3 (k : Nat) (a : Fin 3) : Fin 3 := ⟨(k * a.val) % 3, by omega⟩
private def neg3 (a : Fin 3) : Fin 3 := ⟨(3 - a.val) % 3, by omega⟩
private def packSix (b : Fin 2) (t : Fin 3) : Fin 6 := ⟨b.val * 3 + t.val, by omega⟩
private def bitOf (a : Fin 6) : Fin 2 := ⟨a.val / 3, by omega⟩
private def tritOf (a : Fin 6) : Fin 3 := ⟨a.val % 3, by omega⟩

@[simp] private theorem bitOf_packSix (b : Fin 2) (t : Fin 3) : bitOf (packSix b t) = b := by
  revert b t
  covering_decide
@[simp] private theorem tritOf_packSix (b : Fin 2) (t : Fin 3) : tritOf (packSix b t) = t := by
  revert b t
  covering_decide
private theorem packSix_bit_trit (a : Fin 6) : packSix (bitOf a) (tritOf a) = a := by
  revert a
  covering_decide
private theorem subtract_zero_symbol (a : Fin 6) :
    packSix (sub2 (bitOf a) (bitOf f6_0)) (sub3 (tritOf a) (tritOf f6_0)) = a := by
  revert a
  covering_decide

private def add2_3 (a b c : Fin 2) : Fin 2 := add2 (add2 a b) c
private def add2_4 (a b c d : Fin 2) : Fin 2 := add2 (add2 (add2 a b) c) d
private def add3_3 (a b c : Fin 3) : Fin 3 := add3 (add3 a b) c
private def add3_4 (a b c d : Fin 3) : Fin 3 := add3 (add3 (add3 a b) c) d

private theorem add2_4_sub_eq_zero (x0 x1 x2 x3 e0 e1 e2 e3 : Fin 2)
    (h : add2_4 e0 e1 e2 e3 = add2_4 x0 x1 x2 x3) :
    add2_4 (sub2 x0 e0) (sub2 x1 e1) (sub2 x2 e2) (sub2 x3 e3) = f2_0 := by
  revert x0 x1 x2 x3 e0 e1 e2 e3
  covering_decide
private theorem add3_3_sub_eq_zero (x0 x1 x2 e0 e1 e2 : Fin 3)
    (h : add3_3 e0 e1 e2 = add3_3 x0 x1 x2) :
    add3_3 (sub3 x0 e0) (sub3 x1 e1) (sub3 x2 e2) = f3_0 := by
  revert x0 x1 x2 e0 e1 e2
  covering_decide
private theorem add3_4_sub_eq_zero (x0 x1 x2 x3 e0 e1 e2 e3 : Fin 3)
    (h : add3_4 e0 e1 e2 e3 = add3_4 x0 x1 x2 x3) :
    add3_4 (sub3 x0 e0) (sub3 x1 e1) (sub3 x2 e2) (sub3 x3 e3) = f3_0 := by
  revert x0 x1 x2 x3 e0 e1 e2 e3
  covering_decide
private theorem add3_weighted_sub_eq_zero (x2 x3 x5 x6 e2 e3 e5 e6 : Fin 3)
    (h : add3_4 e2 (mul3 2 e3) e5 (mul3 2 e6) =
      add3_4 x2 (mul3 2 x3) x5 (mul3 2 x6)) :
    add3_4 (sub3 x2 e2) (mul3 2 (sub3 x3 e3))
      (sub3 x5 e5) (mul3 2 (sub3 x6 e6)) = f3_0 := by
  revert x2 x3 x5 x6 e2 e3 e5 e6
  covering_decide

private theorem add2_4_zero_solve0 (a b c d : Fin 2)
    (h : add2_4 a b c d = f2_0) : add2_3 b c d = a := by
  revert a b c d
  covering_decide
private theorem add3_3_zero_solve0 (a b c : Fin 3)
    (h : add3_3 a b c = f3_0) : neg3 (add3 b c) = a := by
  revert a b c
  covering_decide
private theorem add3_weighted_zero_solve0 (a b c d : Fin 3)
    (h : add3_4 a (mul3 2 b) c (mul3 2 d) = f3_0) :
    neg3 (add3_3 (mul3 2 b) c (mul3 2 d)) = a := by
  revert a b c d
  covering_decide
private theorem add3_4_zero_solve0_with_known2 (a b c d p : Fin 3)
    (h : add3_4 a b c d = f3_0) (hp : p = c) :
    neg3 (add3 (add3 b d) p) = a := by
  revert a b c d p
  covering_decide

private def syncBit (b : QaryWord 2 4) (i : Fin 7) : Fin 2 :=
  if i.val = 0 then add2_3 (b f4_0) (b f4_1) (b f4_3)
  else if i.val = 1 then add2_3 (b f4_0) (b f4_2) (b f4_3)
  else if i.val = 2 then b f4_0
  else if i.val = 3 then add2_3 (b f4_1) (b f4_2) (b f4_3)
  else if i.val = 4 then b f4_1
  else if i.val = 5 then b f4_2
  else b f4_3

private def syncTrit (t : QaryWord 3 4) (i : Fin 7) : Fin 3 :=
  let t1 := t f4_0
  let t3 := t f4_1
  let t5 := t f4_2
  let t6 := t f4_3
  let s0 := add3 t5 t6
  let s1 := add3 t1 t3
  let s2 := add3_3 (mul3 2 t3) t5 (mul3 2 t6)
  let p2 := neg3 s2
  let p0 := neg3 (add3 s1 p2)
  let p4 := neg3 s0
  if i.val = 0 then p0
  else if i.val = 1 then t1
  else if i.val = 2 then p2
  else if i.val = 3 then t3
  else if i.val = 4 then p4
  else if i.val = 5 then t5
  else t6

private def syncWord (free : QaryWord 2 4 × QaryWord 3 4) : QaryWord 6 7 :=
  fun i => packSix (syncBit free.1 i) (syncTrit free.2 i)

private def syncBinaryFree (w : QaryWord 6 7) : QaryWord 2 4 := fun i =>
  if i.val = 0 then bitOf (w f7_2)
  else if i.val = 1 then bitOf (w f7_4)
  else if i.val = 2 then bitOf (w f7_5)
  else bitOf (w f7_6)

private def syncTernaryFree (w : QaryWord 6 7) : QaryWord 3 4 := fun i =>
  if i.val = 0 then tritOf (w f7_1)
  else if i.val = 1 then tritOf (w f7_3)
  else if i.val = 2 then tritOf (w f7_5)
  else tritOf (w f7_6)

private def syncFree (w : QaryWord 6 7) : QaryWord 2 4 × QaryWord 3 4 :=
  (syncBinaryFree w, syncTernaryFree w)

private def bSyn0 (w : QaryWord 6 7) : Fin 2 :=
  add2_4 (bitOf (w f7_0)) (bitOf (w f7_2)) (bitOf (w f7_4)) (bitOf (w f7_6))
private def bSyn1 (w : QaryWord 6 7) : Fin 2 :=
  add2_4 (bitOf (w f7_1)) (bitOf (w f7_2)) (bitOf (w f7_5)) (bitOf (w f7_6))
private def bSyn2 (w : QaryWord 6 7) : Fin 2 :=
  add2_4 (bitOf (w f7_3)) (bitOf (w f7_4)) (bitOf (w f7_5)) (bitOf (w f7_6))
private def tSyn0 (w : QaryWord 6 7) : Fin 3 :=
  add3_3 (tritOf (w f7_4)) (tritOf (w f7_5)) (tritOf (w f7_6))
private def tSyn1 (w : QaryWord 6 7) : Fin 3 :=
  add3_4 (tritOf (w f7_0)) (tritOf (w f7_1)) (tritOf (w f7_2)) (tritOf (w f7_3))
private def tSyn2 (w : QaryWord 6 7) : Fin 3 :=
  add3_4 (tritOf (w f7_2)) (mul3 2 (tritOf (w f7_3)))
    (tritOf (w f7_5)) (mul3 2 (tritOf (w f7_6)))

private def IsSyncWord (w : QaryWord 6 7) : Prop :=
  bSyn0 w = f2_0 ∧ bSyn1 w = f2_0 ∧ bSyn2 w = f2_0 ∧
  tSyn0 w = f3_0 ∧ tSyn1 w = f3_0 ∧ tSyn2 w = f3_0

private instance (w : QaryWord 6 7) : Decidable (IsSyncWord w) := by
  unfold IsSyncWord
  infer_instance

private theorem syncWord_syncFree_eq_of_isSync (w : QaryWord 6 7)
    (h : IsSyncWord w) : syncWord (syncFree w) = w := by
  rcases h with ⟨hb0, hb1, hb2, ht0, ht1, ht2⟩
  have hb0' : add2_3 (bitOf (w f7_2)) (bitOf (w f7_4)) (bitOf (w f7_6)) = bitOf (w f7_0) :=
    add2_4_zero_solve0 (bitOf (w f7_0)) (bitOf (w f7_2)) (bitOf (w f7_4)) (bitOf (w f7_6)) (by simpa [bSyn0] using hb0)
  have hb1' : add2_3 (bitOf (w f7_2)) (bitOf (w f7_5)) (bitOf (w f7_6)) = bitOf (w f7_1) :=
    add2_4_zero_solve0 (bitOf (w f7_1)) (bitOf (w f7_2)) (bitOf (w f7_5)) (bitOf (w f7_6)) (by simpa [bSyn1] using hb1)
  have hb2' : add2_3 (bitOf (w f7_4)) (bitOf (w f7_5)) (bitOf (w f7_6)) = bitOf (w f7_3) :=
    add2_4_zero_solve0 (bitOf (w f7_3)) (bitOf (w f7_4)) (bitOf (w f7_5)) (bitOf (w f7_6)) (by simpa [bSyn2] using hb2)
  have ht4' : neg3 (add3 (tritOf (w f7_5)) (tritOf (w f7_6))) = tritOf (w f7_4) :=
    add3_3_zero_solve0 (tritOf (w f7_4)) (tritOf (w f7_5)) (tritOf (w f7_6)) (by simpa [tSyn0] using ht0)
  have ht2' : neg3 (add3_3 (mul3 2 (tritOf (w f7_3))) (tritOf (w f7_5)) (mul3 2 (tritOf (w f7_6)))) = tritOf (w f7_2) :=
    add3_weighted_zero_solve0 (tritOf (w f7_2)) (tritOf (w f7_3)) (tritOf (w f7_5)) (tritOf (w f7_6)) (by simpa [tSyn2] using ht2)
  have ht0' : neg3 (add3 (add3 (tritOf (w f7_1)) (tritOf (w f7_3)))
      (neg3 (add3_3 (mul3 2 (tritOf (w f7_3))) (tritOf (w f7_5)) (mul3 2 (tritOf (w f7_6)))))) = tritOf (w f7_0) :=
    add3_4_zero_solve0_with_known2 (tritOf (w f7_0)) (tritOf (w f7_1)) (tritOf (w f7_2)) (tritOf (w f7_3))
      (neg3 (add3_3 (mul3 2 (tritOf (w f7_3))) (tritOf (w f7_5)) (mul3 2 (tritOf (w f7_6)))) ) (by simpa [tSyn1] using ht1) ht2'
  have hb0n : add2_3 (bitOf (w 2)) (bitOf (w 4)) (bitOf (w 6)) = bitOf (w 0) := by
    simpa [f7_0, f7_2, f7_4, f7_6] using hb0'
  have hb1n : add2_3 (bitOf (w 2)) (bitOf (w 5)) (bitOf (w 6)) = bitOf (w 1) := by
    simpa [f7_1, f7_2, f7_5, f7_6] using hb1'
  have hb2n : add2_3 (bitOf (w 4)) (bitOf (w 5)) (bitOf (w 6)) = bitOf (w 3) := by
    simpa [f7_3, f7_4, f7_5, f7_6] using hb2'
  have ht4n : neg3 (add3 (tritOf (w 5)) (tritOf (w 6))) = tritOf (w 4) := by
    simpa [f7_4, f7_5, f7_6] using ht4'
  have ht2n : neg3 (add3_3 (mul3 2 (tritOf (w 3))) (tritOf (w 5)) (mul3 2 (tritOf (w 6)))) = tritOf (w 2) := by
    simpa [f7_2, f7_3, f7_5, f7_6] using ht2'
  have ht0n : neg3 (add3 (add3 (tritOf (w 1)) (tritOf (w 3)))
      (neg3 (add3_3 (mul3 2 (tritOf (w 3))) (tritOf (w 5)) (mul3 2 (tritOf (w 6)))))) = tritOf (w 0) := by
    simpa [f7_0, f7_1, f7_3, f7_5, f7_6] using ht0'
  have ht0n2 : neg3 (add3 (add3 (tritOf (w 1)) (tritOf (w 3))) (tritOf (w 2))) = tritOf (w 0) := by
    rw [← ht2n]
    exact ht0n
  funext i
  fin_cases i <;> simp [syncWord, syncBit, syncTrit, syncFree, syncBinaryFree, syncTernaryFree,
    f7_1, f7_2, f7_3, f7_4, f7_5, f7_6,
    hb0n, hb1n, hb2n, ht0n2, ht2n, ht4n, packSix_bit_trit]

private def syncCode : Finset (QaryWord 6 7) :=
  Finset.univ.filter IsSyncWord

private theorem syncCode_subset_generated :
    syncCode ⊆ (Finset.univ : Finset (QaryWord 2 4 × QaryWord 3 4)).image syncWord := by
  intro w hw
  simp only [syncCode, Finset.mem_filter, Finset.mem_univ, true_and] at hw
  exact Finset.mem_image.mpr ⟨syncFree w, Finset.mem_univ _, syncWord_syncFree_eq_of_isSync w hw⟩


private def packSyndrome (b0 b1 b2 : Fin 2) (t0 t1 t2 : Fin 3) : Fin 216 :=
  ⟨b0.val + 2 * b1.val + 4 * b2.val + 8 * (t0.val + 3 * t1.val + 9 * t2.val), by omega⟩

private def syndromeIndex (w : QaryWord 6 7) : Fin 216 :=
  packSyndrome (bSyn0 w) (bSyn1 w) (bSyn2 w) (tSyn0 w) (tSyn1 w) (tSyn2 w)

private theorem packSyndrome_inj
    (b0a b1a b2a b0b b1b b2b : Fin 2)
    (t0a t1a t2a t0b t1b t2b : Fin 3)
    (h : packSyndrome b0a b1a b2a t0a t1a t2a =
      packSyndrome b0b b1b b2b t0b t1b t2b) :
    b0a = b0b ∧ b1a = b1b ∧ b2a = b2b ∧
      t0a = t0b ∧ t1a = t1b ∧ t2a = t2b := by
  revert b0a b1a b2a b0b b1b b2b t0a t1a t2a t0b t1b t2b
  covering_decide

-- One support-at-most-two correction for each syndrome in F_2^3 x F_3^3.
private def syndromeCorrection (s : Fin 216) : QaryWord 6 7 :=
  match s.val with
  | 0 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_0, f6_0]
  | 1 => ![f6_3, f6_0, f6_0, f6_0, f6_0, f6_0, f6_0]
  | 2 => ![f6_0, f6_3, f6_0, f6_0, f6_0, f6_0, f6_0]
  | 3 => ![f6_0, f6_0, f6_3, f6_0, f6_0, f6_0, f6_0]
  | 4 => ![f6_0, f6_0, f6_0, f6_3, f6_0, f6_0, f6_0]
  | 5 => ![f6_0, f6_0, f6_0, f6_0, f6_3, f6_0, f6_0]
  | 6 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_3, f6_0]
  | 7 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_0, f6_3]
  | 8 => ![f6_0, f6_0, f6_0, f6_0, f6_1, f6_0, f6_0]
  | 9 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_5, f6_5]
  | 10 => ![f6_0, f6_0, f6_0, f6_0, f6_4, f6_0, f6_3]
  | 11 => ![f6_0, f6_0, f6_0, f6_0, f6_4, f6_3, f6_0]
  | 12 => ![f6_0, f6_0, f6_0, f6_3, f6_1, f6_0, f6_0]
  | 13 => ![f6_0, f6_0, f6_0, f6_0, f6_4, f6_0, f6_0]
  | 14 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_5, f6_2]
  | 15 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_2, f6_5]
  | 16 => ![f6_0, f6_0, f6_0, f6_0, f6_2, f6_0, f6_0]
  | 17 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_4, f6_4]
  | 18 => ![f6_0, f6_0, f6_0, f6_0, f6_5, f6_0, f6_3]
  | 19 => ![f6_0, f6_0, f6_0, f6_0, f6_5, f6_3, f6_0]
  | 20 => ![f6_0, f6_0, f6_0, f6_3, f6_2, f6_0, f6_0]
  | 21 => ![f6_0, f6_0, f6_0, f6_0, f6_5, f6_0, f6_0]
  | 22 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_4, f6_1]
  | 23 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_1, f6_4]
  | 24 => ![f6_0, f6_1, f6_0, f6_0, f6_0, f6_0, f6_0]
  | 25 => ![f6_4, f6_0, f6_0, f6_0, f6_0, f6_0, f6_0]
  | 26 => ![f6_0, f6_4, f6_0, f6_0, f6_0, f6_0, f6_0]
  | 27 => ![f6_0, f6_0, f6_5, f6_2, f6_0, f6_0, f6_0]
  | 28 => ![f6_0, f6_0, f6_2, f6_5, f6_0, f6_0, f6_0]
  | 29 => ![f6_0, f6_1, f6_0, f6_0, f6_3, f6_0, f6_0]
  | 30 => ![f6_0, f6_1, f6_0, f6_0, f6_0, f6_3, f6_0]
  | 31 => ![f6_0, f6_0, f6_5, f6_5, f6_0, f6_0, f6_0]
  | 32 => ![f6_0, f6_0, f6_0, f6_1, f6_0, f6_1, f6_0]
  | 33 => ![f6_4, f6_0, f6_0, f6_0, f6_1, f6_0, f6_0]
  | 34 => ![f6_0, f6_0, f6_0, f6_4, f6_0, f6_4, f6_0]
  | 35 => ![f6_0, f6_0, f6_4, f6_0, f6_0, f6_0, f6_1]
  | 36 => ![f6_0, f6_0, f6_0, f6_4, f6_0, f6_1, f6_0]
  | 37 => ![f6_0, f6_1, f6_0, f6_0, f6_4, f6_0, f6_0]
  | 38 => ![f6_0, f6_0, f6_0, f6_1, f6_0, f6_4, f6_0]
  | 39 => ![f6_0, f6_0, f6_1, f6_0, f6_0, f6_0, f6_4]
  | 40 => ![f6_0, f6_0, f6_0, f6_1, f6_0, f6_0, f6_2]
  | 41 => ![f6_4, f6_0, f6_0, f6_0, f6_2, f6_0, f6_0]
  | 42 => ![f6_0, f6_4, f6_0, f6_0, f6_2, f6_0, f6_0]
  | 43 => ![f6_0, f6_0, f6_0, f6_4, f6_0, f6_0, f6_5]
  | 44 => ![f6_0, f6_0, f6_0, f6_4, f6_0, f6_0, f6_2]
  | 45 => ![f6_0, f6_0, f6_4, f6_0, f6_0, f6_5, f6_0]
  | 46 => ![f6_0, f6_0, f6_1, f6_0, f6_0, f6_5, f6_0]
  | 47 => ![f6_0, f6_0, f6_0, f6_1, f6_0, f6_0, f6_5]
  | 48 => ![f6_0, f6_2, f6_0, f6_0, f6_0, f6_0, f6_0]
  | 49 => ![f6_5, f6_0, f6_0, f6_0, f6_0, f6_0, f6_0]
  | 50 => ![f6_0, f6_5, f6_0, f6_0, f6_0, f6_0, f6_0]
  | 51 => ![f6_0, f6_0, f6_4, f6_1, f6_0, f6_0, f6_0]
  | 52 => ![f6_0, f6_0, f6_1, f6_4, f6_0, f6_0, f6_0]
  | 53 => ![f6_0, f6_2, f6_0, f6_0, f6_3, f6_0, f6_0]
  | 54 => ![f6_0, f6_2, f6_0, f6_0, f6_0, f6_3, f6_0]
  | 55 => ![f6_0, f6_0, f6_4, f6_4, f6_0, f6_0, f6_0]
  | 56 => ![f6_0, f6_0, f6_0, f6_2, f6_0, f6_0, f6_1]
  | 57 => ![f6_5, f6_0, f6_0, f6_0, f6_1, f6_0, f6_0]
  | 58 => ![f6_0, f6_5, f6_0, f6_0, f6_1, f6_0, f6_0]
  | 59 => ![f6_0, f6_0, f6_0, f6_5, f6_0, f6_0, f6_4]
  | 60 => ![f6_0, f6_0, f6_0, f6_5, f6_0, f6_0, f6_1]
  | 61 => ![f6_0, f6_0, f6_5, f6_0, f6_0, f6_4, f6_0]
  | 62 => ![f6_0, f6_0, f6_2, f6_0, f6_0, f6_4, f6_0]
  | 63 => ![f6_0, f6_0, f6_0, f6_2, f6_0, f6_0, f6_4]
  | 64 => ![f6_0, f6_0, f6_0, f6_2, f6_0, f6_2, f6_0]
  | 65 => ![f6_5, f6_0, f6_0, f6_0, f6_2, f6_0, f6_0]
  | 66 => ![f6_0, f6_0, f6_0, f6_5, f6_0, f6_5, f6_0]
  | 67 => ![f6_0, f6_0, f6_5, f6_0, f6_0, f6_0, f6_2]
  | 68 => ![f6_0, f6_0, f6_0, f6_5, f6_0, f6_2, f6_0]
  | 69 => ![f6_0, f6_2, f6_0, f6_0, f6_5, f6_0, f6_0]
  | 70 => ![f6_0, f6_0, f6_0, f6_2, f6_0, f6_5, f6_0]
  | 71 => ![f6_0, f6_0, f6_2, f6_0, f6_0, f6_0, f6_5]
  | 72 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_2, f6_1]
  | 73 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_5, f6_4]
  | 74 => ![f6_0, f6_0, f6_0, f6_0, f6_4, f6_0, f6_5]
  | 75 => ![f6_0, f6_0, f6_0, f6_0, f6_5, f6_4, f6_0]
  | 76 => ![f6_0, f6_0, f6_2, f6_4, f6_0, f6_0, f6_0]
  | 77 => ![f6_0, f6_0, f6_0, f6_0, f6_4, f6_0, f6_2]
  | 78 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_5, f6_1]
  | 79 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_2, f6_4]
  | 80 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_1, f6_0]
  | 81 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_4, f6_3]
  | 82 => ![f6_0, f6_0, f6_0, f6_0, f6_5, f6_0, f6_5]
  | 83 => ![f6_0, f6_0, f6_0, f6_0, f6_3, f6_4, f6_0]
  | 84 => ![f6_0, f6_0, f6_0, f6_3, f6_0, f6_1, f6_0]
  | 85 => ![f6_0, f6_0, f6_0, f6_0, f6_3, f6_1, f6_0]
  | 86 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_4, f6_0]
  | 87 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_1, f6_3]
  | 88 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_0, f6_2]
  | 89 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_3, f6_5]
  | 90 => ![f6_0, f6_0, f6_0, f6_0, f6_3, f6_0, f6_5]
  | 91 => ![f6_0, f6_0, f6_0, f6_0, f6_4, f6_4, f6_0]
  | 92 => ![f6_0, f6_0, f6_0, f6_3, f6_0, f6_0, f6_2]
  | 93 => ![f6_0, f6_0, f6_0, f6_0, f6_3, f6_0, f6_2]
  | 94 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_3, f6_2]
  | 95 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_0, f6_5]
  | 96 => ![f6_0, f6_0, f6_1, f6_0, f6_0, f6_0, f6_0]
  | 97 => ![f6_0, f6_3, f6_4, f6_0, f6_0, f6_0, f6_0]
  | 98 => ![f6_0, f6_3, f6_1, f6_0, f6_0, f6_0, f6_0]
  | 99 => ![f6_0, f6_0, f6_4, f6_0, f6_0, f6_0, f6_0]
  | 100 => ![f6_0, f6_0, f6_1, f6_3, f6_0, f6_0, f6_0]
  | 101 => ![f6_0, f6_0, f6_1, f6_0, f6_3, f6_0, f6_0]
  | 102 => ![f6_0, f6_0, f6_1, f6_0, f6_0, f6_3, f6_0]
  | 103 => ![f6_0, f6_0, f6_1, f6_0, f6_0, f6_0, f6_3]
  | 104 => ![f6_0, f6_0, f6_0, f6_1, f6_0, f6_0, f6_1]
  | 105 => ![f6_4, f6_0, f6_0, f6_0, f6_0, f6_1, f6_0]
  | 106 => ![f6_0, f6_4, f6_0, f6_0, f6_0, f6_1, f6_0]
  | 107 => ![f6_0, f6_0, f6_0, f6_4, f6_0, f6_0, f6_4]
  | 108 => ![f6_0, f6_0, f6_0, f6_4, f6_0, f6_0, f6_1]
  | 109 => ![f6_0, f6_0, f6_1, f6_0, f6_4, f6_0, f6_0]
  | 110 => ![f6_0, f6_0, f6_4, f6_0, f6_4, f6_0, f6_0]
  | 111 => ![f6_0, f6_0, f6_0, f6_1, f6_0, f6_0, f6_4]
  | 112 => ![f6_0, f6_0, f6_0, f6_1, f6_0, f6_2, f6_0]
  | 113 => ![f6_4, f6_0, f6_0, f6_0, f6_0, f6_0, f6_2]
  | 114 => ![f6_0, f6_0, f6_0, f6_4, f6_0, f6_5, f6_0]
  | 115 => ![f6_0, f6_0, f6_4, f6_0, f6_2, f6_0, f6_0]
  | 116 => ![f6_0, f6_0, f6_0, f6_4, f6_0, f6_2, f6_0]
  | 117 => ![f6_0, f6_0, f6_1, f6_0, f6_5, f6_0, f6_0]
  | 118 => ![f6_0, f6_0, f6_0, f6_1, f6_0, f6_5, f6_0]
  | 119 => ![f6_0, f6_1, f6_0, f6_0, f6_0, f6_0, f6_5]
  | 120 => ![f6_0, f6_0, f6_0, f6_2, f6_0, f6_0, f6_0]
  | 121 => ![f6_0, f6_0, f6_0, f6_5, f6_3, f6_0, f6_0]
  | 122 => ![f6_0, f6_0, f6_0, f6_5, f6_0, f6_3, f6_0]
  | 123 => ![f6_0, f6_0, f6_0, f6_5, f6_0, f6_0, f6_3]
  | 124 => ![f6_0, f6_0, f6_0, f6_5, f6_0, f6_0, f6_0]
  | 125 => ![f6_0, f6_0, f6_0, f6_2, f6_3, f6_0, f6_0]
  | 126 => ![f6_0, f6_0, f6_0, f6_2, f6_0, f6_3, f6_0]
  | 127 => ![f6_0, f6_0, f6_0, f6_2, f6_0, f6_0, f6_3]
  | 128 => ![f6_0, f6_0, f6_0, f6_2, f6_1, f6_0, f6_0]
  | 129 => ![f6_0, f6_0, f6_0, f6_5, f6_4, f6_0, f6_0]
  | 130 => ![f6_0, f6_5, f6_0, f6_0, f6_0, f6_1, f6_0]
  | 131 => ![f6_0, f6_0, f6_5, f6_0, f6_0, f6_0, f6_1]
  | 132 => ![f6_0, f6_0, f6_0, f6_5, f6_1, f6_0, f6_0]
  | 133 => ![f6_0, f6_0, f6_0, f6_2, f6_4, f6_0, f6_0]
  | 134 => ![f6_0, f6_2, f6_0, f6_0, f6_0, f6_4, f6_0]
  | 135 => ![f6_0, f6_0, f6_2, f6_0, f6_0, f6_0, f6_4]
  | 136 => ![f6_0, f6_0, f6_0, f6_2, f6_2, f6_0, f6_0]
  | 137 => ![f6_0, f6_0, f6_0, f6_5, f6_5, f6_0, f6_0]
  | 138 => ![f6_0, f6_5, f6_0, f6_0, f6_0, f6_0, f6_2]
  | 139 => ![f6_0, f6_0, f6_5, f6_0, f6_0, f6_2, f6_0]
  | 140 => ![f6_0, f6_0, f6_0, f6_5, f6_2, f6_0, f6_0]
  | 141 => ![f6_0, f6_0, f6_0, f6_2, f6_5, f6_0, f6_0]
  | 142 => ![f6_0, f6_0, f6_2, f6_0, f6_0, f6_5, f6_0]
  | 143 => ![f6_0, f6_2, f6_0, f6_0, f6_0, f6_0, f6_5]
  | 144 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_1, f6_2]
  | 145 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_4, f6_5]
  | 146 => ![f6_0, f6_0, f6_0, f6_0, f6_5, f6_0, f6_4]
  | 147 => ![f6_0, f6_0, f6_0, f6_0, f6_4, f6_5, f6_0]
  | 148 => ![f6_0, f6_0, f6_1, f6_5, f6_0, f6_0, f6_0]
  | 149 => ![f6_0, f6_0, f6_0, f6_0, f6_4, f6_2, f6_0]
  | 150 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_4, f6_2]
  | 151 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_1, f6_5]
  | 152 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_0, f6_1]
  | 153 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_3, f6_4]
  | 154 => ![f6_0, f6_0, f6_0, f6_0, f6_3, f6_0, f6_4]
  | 155 => ![f6_0, f6_0, f6_0, f6_0, f6_5, f6_5, f6_0]
  | 156 => ![f6_0, f6_0, f6_0, f6_3, f6_0, f6_0, f6_1]
  | 157 => ![f6_0, f6_0, f6_0, f6_0, f6_3, f6_0, f6_1]
  | 158 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_3, f6_1]
  | 159 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_0, f6_4]
  | 160 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_2, f6_0]
  | 161 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_5, f6_3]
  | 162 => ![f6_0, f6_0, f6_0, f6_0, f6_4, f6_0, f6_4]
  | 163 => ![f6_0, f6_0, f6_0, f6_0, f6_3, f6_5, f6_0]
  | 164 => ![f6_0, f6_0, f6_0, f6_3, f6_0, f6_2, f6_0]
  | 165 => ![f6_0, f6_0, f6_0, f6_0, f6_3, f6_2, f6_0]
  | 166 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_5, f6_0]
  | 167 => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_2, f6_3]
  | 168 => ![f6_0, f6_0, f6_0, f6_1, f6_0, f6_0, f6_0]
  | 169 => ![f6_0, f6_0, f6_0, f6_4, f6_3, f6_0, f6_0]
  | 170 => ![f6_0, f6_0, f6_0, f6_4, f6_0, f6_3, f6_0]
  | 171 => ![f6_0, f6_0, f6_0, f6_4, f6_0, f6_0, f6_3]
  | 172 => ![f6_0, f6_0, f6_0, f6_4, f6_0, f6_0, f6_0]
  | 173 => ![f6_0, f6_0, f6_0, f6_1, f6_3, f6_0, f6_0]
  | 174 => ![f6_0, f6_0, f6_0, f6_1, f6_0, f6_3, f6_0]
  | 175 => ![f6_0, f6_0, f6_0, f6_1, f6_0, f6_0, f6_3]
  | 176 => ![f6_0, f6_0, f6_0, f6_1, f6_1, f6_0, f6_0]
  | 177 => ![f6_0, f6_0, f6_0, f6_4, f6_4, f6_0, f6_0]
  | 178 => ![f6_0, f6_4, f6_0, f6_0, f6_0, f6_0, f6_1]
  | 179 => ![f6_0, f6_0, f6_4, f6_0, f6_0, f6_1, f6_0]
  | 180 => ![f6_0, f6_0, f6_0, f6_4, f6_1, f6_0, f6_0]
  | 181 => ![f6_0, f6_0, f6_0, f6_1, f6_4, f6_0, f6_0]
  | 182 => ![f6_0, f6_0, f6_1, f6_0, f6_0, f6_4, f6_0]
  | 183 => ![f6_0, f6_1, f6_0, f6_0, f6_0, f6_0, f6_4]
  | 184 => ![f6_0, f6_0, f6_0, f6_1, f6_2, f6_0, f6_0]
  | 185 => ![f6_0, f6_0, f6_0, f6_4, f6_5, f6_0, f6_0]
  | 186 => ![f6_0, f6_4, f6_0, f6_0, f6_0, f6_2, f6_0]
  | 187 => ![f6_0, f6_0, f6_4, f6_0, f6_0, f6_0, f6_2]
  | 188 => ![f6_0, f6_0, f6_0, f6_4, f6_2, f6_0, f6_0]
  | 189 => ![f6_0, f6_0, f6_0, f6_1, f6_5, f6_0, f6_0]
  | 190 => ![f6_0, f6_1, f6_0, f6_0, f6_0, f6_5, f6_0]
  | 191 => ![f6_0, f6_0, f6_1, f6_0, f6_0, f6_0, f6_5]
  | 192 => ![f6_0, f6_0, f6_2, f6_0, f6_0, f6_0, f6_0]
  | 193 => ![f6_0, f6_3, f6_5, f6_0, f6_0, f6_0, f6_0]
  | 194 => ![f6_0, f6_3, f6_2, f6_0, f6_0, f6_0, f6_0]
  | 195 => ![f6_0, f6_0, f6_5, f6_0, f6_0, f6_0, f6_0]
  | 196 => ![f6_0, f6_0, f6_2, f6_3, f6_0, f6_0, f6_0]
  | 197 => ![f6_0, f6_0, f6_2, f6_0, f6_3, f6_0, f6_0]
  | 198 => ![f6_0, f6_0, f6_2, f6_0, f6_0, f6_3, f6_0]
  | 199 => ![f6_0, f6_0, f6_2, f6_0, f6_0, f6_0, f6_3]
  | 200 => ![f6_0, f6_0, f6_0, f6_2, f6_0, f6_1, f6_0]
  | 201 => ![f6_5, f6_0, f6_0, f6_0, f6_0, f6_0, f6_1]
  | 202 => ![f6_0, f6_0, f6_0, f6_5, f6_0, f6_4, f6_0]
  | 203 => ![f6_0, f6_0, f6_5, f6_0, f6_1, f6_0, f6_0]
  | 204 => ![f6_0, f6_0, f6_0, f6_5, f6_0, f6_1, f6_0]
  | 205 => ![f6_0, f6_0, f6_2, f6_0, f6_4, f6_0, f6_0]
  | 206 => ![f6_0, f6_0, f6_0, f6_2, f6_0, f6_4, f6_0]
  | 207 => ![f6_0, f6_2, f6_0, f6_0, f6_0, f6_0, f6_4]
  | 208 => ![f6_0, f6_0, f6_0, f6_2, f6_0, f6_0, f6_2]
  | 209 => ![f6_5, f6_0, f6_0, f6_0, f6_0, f6_2, f6_0]
  | 210 => ![f6_0, f6_5, f6_0, f6_0, f6_0, f6_2, f6_0]
  | 211 => ![f6_0, f6_0, f6_0, f6_5, f6_0, f6_0, f6_5]
  | 212 => ![f6_0, f6_0, f6_0, f6_5, f6_0, f6_0, f6_2]
  | 213 => ![f6_0, f6_0, f6_2, f6_0, f6_5, f6_0, f6_0]
  | 214 => ![f6_0, f6_0, f6_5, f6_0, f6_5, f6_0, f6_0]
  | 215 => ![f6_0, f6_0, f6_0, f6_2, f6_0, f6_0, f6_5]
  | _ => ![f6_0, f6_0, f6_0, f6_0, f6_0, f6_0, f6_0]

private def support (w : QaryWord 6 7) : Finset (Fin 7) :=
  Finset.univ.filter (fun i => w i ≠ f6_0)

set_option maxRecDepth 10000 in
private theorem table_syndrome : ∀ s : Fin 216, syndromeIndex (syndromeCorrection s) = s := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem table_weight : ∀ s : Fin 216, (support (syndromeCorrection s)).card <= 2 := by
  covering_decide

private def subtractError (x e : QaryWord 6 7) : QaryWord 6 7 :=
  fun i => packSix (sub2 (bitOf (x i)) (bitOf (e i))) (sub3 (tritOf (x i)) (tritOf (e i)))

private theorem subtractError_isSync_of_matching (x e : QaryWord 6 7)
    (h0 : bSyn0 e = bSyn0 x) (h1 : bSyn1 e = bSyn1 x) (h2 : bSyn2 e = bSyn2 x)
    (h3 : tSyn0 e = tSyn0 x) (h4 : tSyn1 e = tSyn1 x) (h5 : tSyn2 e = tSyn2 x) :
    IsSyncWord (subtractError x e) := by
  have hb0 := add2_4_sub_eq_zero (bitOf (x f7_0)) (bitOf (x f7_2))
    (bitOf (x f7_4)) (bitOf (x f7_6)) (bitOf (e f7_0)) (bitOf (e f7_2))
    (bitOf (e f7_4)) (bitOf (e f7_6)) (by simpa [bSyn0] using h0)
  have hb1 := add2_4_sub_eq_zero (bitOf (x f7_1)) (bitOf (x f7_2))
    (bitOf (x f7_5)) (bitOf (x f7_6)) (bitOf (e f7_1)) (bitOf (e f7_2))
    (bitOf (e f7_5)) (bitOf (e f7_6)) (by simpa [bSyn1] using h1)
  have hb2 := add2_4_sub_eq_zero (bitOf (x f7_3)) (bitOf (x f7_4))
    (bitOf (x f7_5)) (bitOf (x f7_6)) (bitOf (e f7_3)) (bitOf (e f7_4))
    (bitOf (e f7_5)) (bitOf (e f7_6)) (by simpa [bSyn2] using h2)
  have ht0 := add3_3_sub_eq_zero (tritOf (x f7_4)) (tritOf (x f7_5))
    (tritOf (x f7_6)) (tritOf (e f7_4)) (tritOf (e f7_5)) (tritOf (e f7_6))
    (by simpa [tSyn0] using h3)
  have ht1 := add3_4_sub_eq_zero (tritOf (x f7_0)) (tritOf (x f7_1))
    (tritOf (x f7_2)) (tritOf (x f7_3)) (tritOf (e f7_0)) (tritOf (e f7_1))
    (tritOf (e f7_2)) (tritOf (e f7_3)) (by simpa [tSyn1] using h4)
  have ht2 := add3_weighted_sub_eq_zero (tritOf (x f7_2)) (tritOf (x f7_3))
    (tritOf (x f7_5)) (tritOf (x f7_6)) (tritOf (e f7_2)) (tritOf (e f7_3))
    (tritOf (e f7_5)) (tritOf (e f7_6)) (by simpa [tSyn2] using h5)
  exact ⟨by simpa [bSyn0, subtractError] using hb0,
    by simpa [bSyn1, subtractError] using hb1,
    by simpa [bSyn2, subtractError] using hb2,
    by simpa [tSyn0, subtractError] using ht0,
    by simpa [tSyn1, subtractError] using ht1,
    by simpa [tSyn2, subtractError] using ht2⟩

private theorem subtractError_dist_le_of_support (x e : QaryWord 6 7)
    (hw : (support e).card <= 2) :
    hammingDist x (subtractError x e) <= 2 := by
  have hsubset : (Finset.univ.filter fun i : Fin 7 => x i ≠ subtractError x e i) ⊆ support e := by
    intro i hi
    simp only [support, Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
    by_contra hne
    have heq : e i = f6_0 := by simpa using hne
    apply hi
    unfold subtractError
    rw [heq]
    exact (subtract_zero_symbol (x i)).symm
  calc
    hammingDist x (subtractError x e)
        = (Finset.univ.filter fun i : Fin 7 => x i ≠ subtractError x e i).card := rfl
    _ <= (support e).card := Finset.card_le_card hsubset
    _ <= 2 := hw

private def syncRepair (x : QaryWord 6 7) : QaryWord 6 7 :=
  subtractError x (syndromeCorrection (syndromeIndex x))

private theorem syncRepair_isSync (x : QaryWord 6 7) : IsSyncWord (syncRepair x) := by
  let e := syndromeCorrection (syndromeIndex x)
  have hidx : syndromeIndex e = syndromeIndex x := by
    simpa [e] using table_syndrome (syndromeIndex x)
  have hcomp := packSyndrome_inj (bSyn0 e) (bSyn1 e) (bSyn2 e)
    (bSyn0 x) (bSyn1 x) (bSyn2 x) (tSyn0 e) (tSyn1 e) (tSyn2 e)
    (tSyn0 x) (tSyn1 x) (tSyn2 x) (by simpa [syndromeIndex] using hidx)
  rcases hcomp with ⟨h0, h1, h2, h3, h4, h5⟩
  simpa [syncRepair, e] using subtractError_isSync_of_matching x e h0 h1 h2 h3 h4 h5

private theorem syncRepair_dist (x : QaryWord 6 7) : hammingDist x (syncRepair x) <= 2 := by
  simpa [syncRepair] using subtractError_dist_le_of_support x (syndromeCorrection (syndromeIndex x))
    (table_weight (syndromeIndex x))

private theorem syncCode_covers : CoversFinset syncCode 2 := by
  intro x
  refine ⟨syncRepair x, ?_, syncRepair_dist x⟩
  simp only [syncCode, Finset.mem_filter, Finset.mem_univ, true_and]
  exact syncRepair_isSync x

private theorem syncCode_card : syncCode.card <= 1296 := by
  calc
    syncCode.card <= ((Finset.univ : Finset (QaryWord 2 4 × QaryWord 3 4)).image syncWord).card :=
      Finset.card_le_card syncCode_subset_generated
    _ <= (Finset.univ : Finset (QaryWord 2 4 × QaryWord 3 4)).card := Finset.card_image_le
    _ = 1296 := by
      rw [Finset.card_univ, Fintype.card_prod, qaryWord_card, qaryWord_card]
      norm_num

def knownBoundQ6N7R2UpperName : String :=
  "known_bounds_q6_n7_r2_synchronized_syndrome"

def knownBoundQ6N7R2Explicit : ExplicitQaryUpper 6 7 2 1296 :=
  { code := syncCode
    card_le := syncCode_card
    covers := syncCode_covers }

def knownBoundQ6N7R2Upper (q n r : Nat) : Nat :=
  if q = 6 ∧ n = 7 ∧ r = 2 then 1296 else trivialUpper q n r

theorem knownBoundQ6N7R2Upper_valid (q n r : Nat) :
    QaryKUpper q n r (knownBoundQ6N7R2Upper q n r) := by
  by_cases h : q = 6 ∧ n = 7 ∧ r = 2
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [knownBoundQ6N7R2Upper] using knownBoundQ6N7R2Explicit.toUpper
  · simpa [knownBoundQ6N7R2Upper, h] using trivialUpper_valid q n r

def knownBoundQ6N7R2UpperSource : UpperBoundSource where
  value := knownBoundQ6N7R2Upper
  trace := fun q n r =>
    .primitive knownBoundQ6N7R2UpperName (knownBoundQ6N7R2Upper_valid q n r)

end Database
end CoveringCodes
