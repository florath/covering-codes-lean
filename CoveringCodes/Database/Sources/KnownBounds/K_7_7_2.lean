import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Known-bound upper certificate for K_7(7,2)

This module formalizes the structural construction from
`q7-n7-r2-2401-known-bound-lean-certificate-notes.md` and the archived
candidate source `pair_syndrome_cover` / `greedy_pair_columns`.

The code is a systematic linear 7-ary code with four free coordinates and
three parity-check equations.  A finite `343`-entry syndrome repair table proves
that every syndrome has a correction of support at most two.
-/

namespace CoveringCodes
namespace Database

private abbrev f7_0 : Fin 7 := ⟨0, by decide⟩
private abbrev f7_1 : Fin 7 := ⟨1, by decide⟩
private abbrev f7_2 : Fin 7 := ⟨2, by decide⟩
private abbrev f7_3 : Fin 7 := ⟨3, by decide⟩
private abbrev f7_4 : Fin 7 := ⟨4, by decide⟩
private abbrev f7_5 : Fin 7 := ⟨5, by decide⟩
private abbrev f7_6 : Fin 7 := ⟨6, by decide⟩
private abbrev f4_0 : Fin 4 := ⟨0, by decide⟩
private abbrev f4_1 : Fin 4 := ⟨1, by decide⟩
private abbrev f4_2 : Fin 4 := ⟨2, by decide⟩
private abbrev f4_3 : Fin 4 := ⟨3, by decide⟩

private def add7 (a b : Fin 7) : Fin 7 := ⟨(a.val + b.val) % 7, by omega⟩
private def sub7 (a b : Fin 7) : Fin 7 := ⟨(7 + a.val - b.val) % 7, by omega⟩
private def mul7 (k : Nat) (a : Fin 7) : Fin 7 := ⟨(k * a.val) % 7, by omega⟩
private def neg7 (a : Fin 7) : Fin 7 := ⟨(7 - a.val) % 7, by omega⟩
private def asZ7 (a : Fin 7) : ZMod 7 := a.val

private def add7_3 (a b c : Fin 7) : Fin 7 := add7 (add7 a b) c
private def add7_4 (a b c d : Fin 7) : Fin 7 := add7 (add7 (add7 a b) c) d

private theorem asZ7_sub7 (a b : Fin 7) :
    asZ7 (sub7 a b) = asZ7 a - asZ7 b := by
  fin_cases a <;> fin_cases b <;> native_decide

private theorem sub7_zero (a : Fin 7) : sub7 a f7_0 = a := by
  fin_cases a <;> native_decide

private theorem row0_zero_solve4 (a b c d e : Fin 7)
    (h : asZ7 a + asZ7 b + asZ7 c + asZ7 d + asZ7 e = 0) :
    neg7 (add7_4 a b c d) = e := by
  revert a b c d e
  covering_decide

private theorem row1_zero_solve3 (a b c e : Fin 7)
    (h : asZ7 a + 3 * asZ7 b + 2 * asZ7 c + asZ7 e = 0) :
    neg7 (add7_3 a (mul7 3 b) (mul7 2 c)) = e := by
  revert a b c e
  covering_decide

private theorem row2_zero_solve3 (a b c e : Fin 7)
    (h : asZ7 a + 2 * asZ7 b + asZ7 c + asZ7 e = 0) :
    neg7 (add7_3 a (mul7 2 b) c) = e := by
  revert a b c e
  covering_decide

private def linearWord (free : QaryWord 7 4) : QaryWord 7 7 :=
  fun i =>
    if i.val = 0 then free f4_0
    else if i.val = 1 then free f4_1
    else if i.val = 2 then free f4_2
    else if i.val = 3 then free f4_3
    else if i.val = 4 then neg7 (add7_4 (free f4_0) (free f4_1) (free f4_2) (free f4_3))
    else if i.val = 5 then neg7 (add7_3 (free f4_0) (mul7 3 (free f4_1)) (mul7 2 (free f4_2)))
    else neg7 (add7_3 (free f4_0) (mul7 2 (free f4_1)) (free f4_2))

private def linearFree (w : QaryWord 7 7) : QaryWord 7 4 := fun i =>
  if i.val = 0 then w 0
  else if i.val = 1 then w 1
  else if i.val = 2 then w 2
  else w 3

private def zSyn0 (w : QaryWord 7 7) : ZMod 7 :=
  asZ7 (w 0) + asZ7 (w 1) + asZ7 (w 2) + asZ7 (w 3) + asZ7 (w 4)

private def zSyn1 (w : QaryWord 7 7) : ZMod 7 :=
  asZ7 (w 0) + 3 * asZ7 (w 1) + 2 * asZ7 (w 2) + asZ7 (w 5)

private def zSyn2 (w : QaryWord 7 7) : ZMod 7 :=
  asZ7 (w 0) + 2 * asZ7 (w 1) + asZ7 (w 2) + asZ7 (w 6)

private def IsLinearWord (w : QaryWord 7 7) : Prop :=
  zSyn0 w = 0 ∧ zSyn1 w = 0 ∧ zSyn2 w = 0

private instance (w : QaryWord 7 7) : Decidable (IsLinearWord w) := by
  unfold IsLinearWord
  infer_instance

private theorem linearWord_linearFree_eq_of_isLinear (w : QaryWord 7 7)
    (h : IsLinearWord w) : linearWord (linearFree w) = w := by
  rcases h with ⟨h0, h1, h2⟩
  have h4 : neg7 (add7_4 (w 0) (w 1) (w 2) (w 3)) = w 4 :=
    row0_zero_solve4 (w 0) (w 1) (w 2) (w 3) (w 4) (by simpa [zSyn0] using h0)
  have h5 : neg7 (add7_3 (w 0) (mul7 3 (w 1)) (mul7 2 (w 2))) = w 5 :=
    row1_zero_solve3 (w 0) (w 1) (w 2) (w 5) (by simpa [zSyn1] using h1)
  have h6 : neg7 (add7_3 (w 0) (mul7 2 (w 1)) (w 2)) = w 6 :=
    row2_zero_solve3 (w 0) (w 1) (w 2) (w 6) (by simpa [zSyn2] using h2)
  funext i
  fin_cases i <;> simp [linearWord, linearFree, h4, h5, h6]

private def linearCode : Finset (QaryWord 7 7) :=
  Finset.univ.filter IsLinearWord

private theorem linearCode_subset_generated :
    linearCode ⊆ (Finset.univ : Finset (QaryWord 7 4)).image linearWord := by
  intro w hw
  simp only [linearCode, Finset.mem_filter, Finset.mem_univ, true_and] at hw
  exact Finset.mem_image.mpr ⟨linearFree w, Finset.mem_univ _,
    linearWord_linearFree_eq_of_isLinear w hw⟩

private def z7Component (z : ZMod 7) : Fin 7 :=
  ⟨z.val, ZMod.val_lt z⟩

private theorem z7Component_inj {a b : ZMod 7}
    (h : z7Component a = z7Component b) : a = b := by
  apply ZMod.val_injective 7
  exact congrArg Fin.val h

private def packSyndrome (s0 s1 s2 : Fin 7) : Fin 343 :=
  ⟨s0.val + 7 * s1.val + 49 * s2.val, by omega⟩

private def syndromeIndex (w : QaryWord 7 7) : Fin 343 :=
  packSyndrome (z7Component (zSyn0 w)) (z7Component (zSyn1 w)) (z7Component (zSyn2 w))

private theorem packSyndrome_inj
    (a0 a1 a2 b0 b1 b2 : Fin 7)
    (h : packSyndrome a0 a1 a2 = packSyndrome b0 b1 b2) :
    a0 = b0 ∧ a1 = b1 ∧ a2 = b2 := by
  have hv := congrArg Fin.val h
  simp [packSyndrome] at hv
  have h0 : a0.val = b0.val := by omega
  have h1 : a1.val = b1.val := by omega
  have h2 : a2.val = b2.val := by omega
  exact ⟨Fin.ext h0, Fin.ext h1, Fin.ext h2⟩

-- One support-at-most-two correction for each syndrome in F_7^3.
private def syndromeCorrection (s : Fin 343) : QaryWord 7 7 :=
  match s.val with
  | 0 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 1 => ![f7_0, f7_0, f7_0, f7_1, f7_0, f7_0, f7_0]
  | 2 => ![f7_0, f7_0, f7_0, f7_2, f7_0, f7_0, f7_0]
  | 3 => ![f7_0, f7_0, f7_0, f7_3, f7_0, f7_0, f7_0]
  | 4 => ![f7_0, f7_0, f7_0, f7_4, f7_0, f7_0, f7_0]
  | 5 => ![f7_0, f7_0, f7_0, f7_5, f7_0, f7_0, f7_0]
  | 6 => ![f7_0, f7_0, f7_0, f7_6, f7_0, f7_0, f7_0]
  | 7 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_1, f7_0]
  | 8 => ![f7_1, f7_0, f7_0, f7_0, f7_0, f7_0, f7_6]
  | 9 => ![f7_0, f7_0, f7_0, f7_2, f7_0, f7_1, f7_0]
  | 10 => ![f7_0, f7_0, f7_0, f7_3, f7_0, f7_1, f7_0]
  | 11 => ![f7_0, f7_0, f7_4, f7_0, f7_0, f7_0, f7_3]
  | 12 => ![f7_0, f7_5, f7_0, f7_0, f7_0, f7_0, f7_4]
  | 13 => ![f7_5, f7_1, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 14 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_2, f7_0]
  | 15 => ![f7_0, f7_0, f7_1, f7_0, f7_0, f7_0, f7_6]
  | 16 => ![f7_2, f7_0, f7_0, f7_0, f7_0, f7_0, f7_5]
  | 17 => ![f7_0, f7_3, f7_0, f7_0, f7_0, f7_0, f7_1]
  | 18 => ![f7_0, f7_0, f7_0, f7_4, f7_0, f7_2, f7_0]
  | 19 => ![f7_3, f7_2, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 20 => ![f7_0, f7_0, f7_0, f7_6, f7_0, f7_2, f7_0]
  | 21 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_3, f7_0]
  | 22 => ![f7_0, f7_1, f7_0, f7_0, f7_0, f7_0, f7_5]
  | 23 => ![f7_0, f7_0, f7_0, f7_2, f7_0, f7_3, f7_0]
  | 24 => ![f7_3, f7_0, f7_0, f7_0, f7_0, f7_0, f7_4]
  | 25 => ![f7_1, f7_3, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 26 => ![f7_0, f7_0, f7_5, f7_0, f7_0, f7_0, f7_2]
  | 27 => ![f7_0, f7_0, f7_0, f7_6, f7_0, f7_3, f7_0]
  | 28 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_4, f7_0]
  | 29 => ![f7_0, f7_0, f7_0, f7_1, f7_0, f7_4, f7_0]
  | 30 => ![f7_0, f7_0, f7_2, f7_0, f7_0, f7_0, f7_5]
  | 31 => ![f7_6, f7_4, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 32 => ![f7_4, f7_0, f7_0, f7_0, f7_0, f7_0, f7_3]
  | 33 => ![f7_0, f7_0, f7_0, f7_5, f7_0, f7_4, f7_0]
  | 34 => ![f7_0, f7_6, f7_0, f7_0, f7_0, f7_0, f7_2]
  | 35 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_5, f7_0]
  | 36 => ![f7_0, f7_0, f7_0, f7_1, f7_0, f7_5, f7_0]
  | 37 => ![f7_4, f7_5, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 38 => ![f7_0, f7_0, f7_0, f7_3, f7_0, f7_5, f7_0]
  | 39 => ![f7_0, f7_4, f7_0, f7_0, f7_0, f7_0, f7_6]
  | 40 => ![f7_5, f7_0, f7_0, f7_0, f7_0, f7_0, f7_2]
  | 41 => ![f7_0, f7_0, f7_6, f7_0, f7_0, f7_0, f7_1]
  | 42 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_6, f7_0]
  | 43 => ![f7_2, f7_6, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 44 => ![f7_0, f7_2, f7_0, f7_0, f7_0, f7_0, f7_3]
  | 45 => ![f7_0, f7_0, f7_3, f7_0, f7_0, f7_0, f7_4]
  | 46 => ![f7_0, f7_0, f7_0, f7_4, f7_0, f7_6, f7_0]
  | 47 => ![f7_0, f7_0, f7_0, f7_5, f7_0, f7_6, f7_0]
  | 48 => ![f7_6, f7_0, f7_0, f7_0, f7_0, f7_0, f7_1]
  | 49 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_0, f7_1]
  | 50 => ![f7_2, f7_0, f7_6, f7_0, f7_0, f7_0, f7_0]
  | 51 => ![f7_3, f7_6, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 52 => ![f7_0, f7_0, f7_0, f7_3, f7_0, f7_0, f7_1]
  | 53 => ![f7_0, f7_4, f7_0, f7_0, f7_0, f7_2, f7_0]
  | 54 => ![f7_0, f7_0, f7_0, f7_5, f7_0, f7_0, f7_1]
  | 55 => ![f7_0, f7_2, f7_4, f7_0, f7_0, f7_0, f7_0]
  | 56 => ![f7_1, f7_0, f7_0, f7_6, f7_0, f7_0, f7_0]
  | 57 => ![f7_1, f7_0, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 58 => ![f7_1, f7_0, f7_0, f7_1, f7_0, f7_0, f7_0]
  | 59 => ![f7_1, f7_0, f7_0, f7_2, f7_0, f7_0, f7_0]
  | 60 => ![f7_1, f7_0, f7_0, f7_3, f7_0, f7_0, f7_0]
  | 61 => ![f7_1, f7_0, f7_0, f7_4, f7_0, f7_0, f7_0]
  | 62 => ![f7_1, f7_0, f7_0, f7_5, f7_0, f7_0, f7_0]
  | 63 => ![f7_6, f7_1, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 64 => ![f7_0, f7_0, f7_1, f7_0, f7_0, f7_0, f7_0]
  | 65 => ![f7_2, f7_0, f7_0, f7_0, f7_0, f7_0, f7_6]
  | 66 => ![f7_0, f7_3, f7_0, f7_0, f7_0, f7_0, f7_2]
  | 67 => ![f7_0, f7_4, f7_0, f7_0, f7_0, f7_4, f7_0]
  | 68 => ![f7_0, f7_0, f7_1, f7_4, f7_0, f7_0, f7_0]
  | 69 => ![f7_0, f7_0, f7_1, f7_5, f7_0, f7_0, f7_0]
  | 70 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_3, f7_1]
  | 71 => ![f7_6, f7_0, f7_2, f7_0, f7_0, f7_0, f7_0]
  | 72 => ![f7_0, f7_6, f7_3, f7_0, f7_0, f7_0, f7_0]
  | 73 => ![f7_3, f7_0, f7_0, f7_0, f7_0, f7_0, f7_5]
  | 74 => ![f7_0, f7_4, f7_0, f7_0, f7_0, f7_5, f7_0]
  | 75 => ![f7_0, f7_0, f7_5, f7_0, f7_0, f7_0, f7_3]
  | 76 => ![f7_4, f7_2, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 77 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_4, f7_1]
  | 78 => ![f7_5, f7_0, f7_3, f7_0, f7_0, f7_0, f7_0]
  | 79 => ![f7_0, f7_0, f7_2, f7_0, f7_0, f7_0, f7_6]
  | 80 => ![f7_0, f7_5, f7_5, f7_0, f7_0, f7_0, f7_0]
  | 81 => ![f7_4, f7_0, f7_0, f7_0, f7_0, f7_0, f7_4]
  | 82 => ![f7_2, f7_3, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 83 => ![f7_0, f7_6, f7_0, f7_0, f7_0, f7_0, f7_3]
  | 84 => ![f7_0, f7_4, f7_0, f7_3, f7_0, f7_0, f7_0]
  | 85 => ![f7_4, f7_0, f7_4, f7_0, f7_0, f7_0, f7_0]
  | 86 => ![f7_0, f7_4, f7_0, f7_5, f7_0, f7_0, f7_0]
  | 87 => ![f7_0, f7_4, f7_0, f7_6, f7_0, f7_0, f7_0]
  | 88 => ![f7_0, f7_4, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 89 => ![f7_5, f7_0, f7_0, f7_0, f7_0, f7_0, f7_3]
  | 90 => ![f7_0, f7_4, f7_0, f7_2, f7_0, f7_0, f7_0]
  | 91 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_6, f7_1]
  | 92 => ![f7_3, f7_0, f7_5, f7_0, f7_0, f7_0, f7_0]
  | 93 => ![f7_0, f7_2, f7_0, f7_0, f7_0, f7_0, f7_4]
  | 94 => ![f7_5, f7_5, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 95 => ![f7_0, f7_4, f7_0, f7_0, f7_0, f7_1, f7_0]
  | 96 => ![f7_0, f7_3, f7_2, f7_0, f7_0, f7_0, f7_0]
  | 97 => ![f7_6, f7_0, f7_0, f7_0, f7_0, f7_0, f7_2]
  | 98 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_0, f7_2]
  | 99 => ![f7_0, f7_1, f7_0, f7_0, f7_0, f7_4, f7_0]
  | 100 => ![f7_4, f7_0, f7_5, f7_0, f7_0, f7_0, f7_0]
  | 101 => ![f7_0, f7_0, f7_0, f7_3, f7_0, f7_0, f7_2]
  | 102 => ![f7_6, f7_5, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 103 => ![f7_0, f7_4, f7_1, f7_0, f7_0, f7_0, f7_0]
  | 104 => ![f7_0, f7_0, f7_0, f7_6, f7_0, f7_0, f7_2]
  | 105 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_1, f7_2]
  | 106 => ![f7_1, f7_0, f7_0, f7_0, f7_0, f7_0, f7_1]
  | 107 => ![f7_3, f7_0, f7_6, f7_0, f7_0, f7_0, f7_0]
  | 108 => ![f7_4, f7_6, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 109 => ![f7_0, f7_0, f7_4, f7_0, f7_0, f7_0, f7_5]
  | 110 => ![f7_0, f7_5, f7_0, f7_0, f7_0, f7_0, f7_6]
  | 111 => ![f7_0, f7_3, f7_3, f7_0, f7_0, f7_0, f7_0]
  | 112 => ![f7_2, f7_0, f7_0, f7_5, f7_0, f7_0, f7_0]
  | 113 => ![f7_2, f7_0, f7_0, f7_6, f7_0, f7_0, f7_0]
  | 114 => ![f7_2, f7_0, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 115 => ![f7_2, f7_0, f7_0, f7_1, f7_0, f7_0, f7_0]
  | 116 => ![f7_2, f7_0, f7_0, f7_2, f7_0, f7_0, f7_0]
  | 117 => ![f7_2, f7_0, f7_0, f7_3, f7_0, f7_0, f7_0]
  | 118 => ![f7_2, f7_0, f7_0, f7_4, f7_0, f7_0, f7_0]
  | 119 => ![f7_0, f7_1, f7_0, f7_6, f7_0, f7_0, f7_0]
  | 120 => ![f7_0, f7_1, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 121 => ![f7_1, f7_0, f7_1, f7_0, f7_0, f7_0, f7_0]
  | 122 => ![f7_3, f7_0, f7_0, f7_0, f7_0, f7_0, f7_6]
  | 123 => ![f7_0, f7_1, f7_0, f7_3, f7_0, f7_0, f7_0]
  | 124 => ![f7_0, f7_1, f7_0, f7_4, f7_0, f7_0, f7_0]
  | 125 => ![f7_0, f7_1, f7_0, f7_5, f7_0, f7_0, f7_0]
  | 126 => ![f7_5, f7_2, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 127 => ![f7_0, f7_1, f7_0, f7_0, f7_0, f7_1, f7_0]
  | 128 => ![f7_0, f7_0, f7_2, f7_0, f7_0, f7_0, f7_0]
  | 129 => ![f7_0, f7_0, f7_2, f7_1, f7_0, f7_0, f7_0]
  | 130 => ![f7_4, f7_0, f7_0, f7_0, f7_0, f7_0, f7_5]
  | 131 => ![f7_0, f7_0, f7_2, f7_3, f7_0, f7_0, f7_0]
  | 132 => ![f7_0, f7_6, f7_0, f7_0, f7_0, f7_0, f7_4]
  | 133 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_5, f7_2]
  | 134 => ![f7_0, f7_1, f7_0, f7_0, f7_0, f7_2, f7_0]
  | 135 => ![f7_6, f7_0, f7_3, f7_0, f7_0, f7_0, f7_0]
  | 136 => ![f7_0, f7_6, f7_4, f7_0, f7_0, f7_0, f7_0]
  | 137 => ![f7_0, f7_4, f7_0, f7_0, f7_0, f7_0, f7_1]
  | 138 => ![f7_5, f7_0, f7_0, f7_0, f7_0, f7_0, f7_4]
  | 139 => ![f7_3, f7_3, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 140 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_6, f7_2]
  | 141 => ![f7_0, f7_1, f7_0, f7_0, f7_0, f7_3, f7_0]
  | 142 => ![f7_5, f7_0, f7_4, f7_0, f7_0, f7_0, f7_0]
  | 143 => ![f7_0, f7_0, f7_3, f7_0, f7_0, f7_0, f7_6]
  | 144 => ![f7_0, f7_5, f7_6, f7_0, f7_0, f7_0, f7_0]
  | 145 => ![f7_1, f7_4, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 146 => ![f7_6, f7_0, f7_0, f7_0, f7_0, f7_0, f7_3]
  | 147 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_0, f7_3]
  | 148 => ![f7_0, f7_0, f7_0, f7_1, f7_0, f7_0, f7_3]
  | 149 => ![f7_0, f7_0, f7_0, f7_2, f7_0, f7_0, f7_3]
  | 150 => ![f7_6, f7_0, f7_4, f7_0, f7_0, f7_0, f7_0]
  | 151 => ![f7_0, f7_6, f7_5, f7_0, f7_0, f7_0, f7_0]
  | 152 => ![f7_0, f7_5, f7_0, f7_0, f7_0, f7_6, f7_0]
  | 153 => ![f7_2, f7_4, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 154 => ![f7_0, f7_5, f7_0, f7_2, f7_0, f7_0, f7_0]
  | 155 => ![f7_1, f7_0, f7_0, f7_0, f7_0, f7_0, f7_2]
  | 156 => ![f7_0, f7_5, f7_0, f7_4, f7_0, f7_0, f7_0]
  | 157 => ![f7_5, f7_0, f7_5, f7_0, f7_0, f7_0, f7_0]
  | 158 => ![f7_0, f7_5, f7_0, f7_6, f7_0, f7_0, f7_0]
  | 159 => ![f7_0, f7_5, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 160 => ![f7_0, f7_5, f7_0, f7_1, f7_0, f7_0, f7_0]
  | 161 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_2, f7_3]
  | 162 => ![f7_0, f7_0, f7_1, f7_0, f7_0, f7_0, f7_2]
  | 163 => ![f7_2, f7_0, f7_0, f7_0, f7_0, f7_0, f7_1]
  | 164 => ![f7_4, f7_0, f7_6, f7_0, f7_0, f7_0, f7_0]
  | 165 => ![f7_5, f7_6, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 166 => ![f7_0, f7_5, f7_0, f7_0, f7_0, f7_1, f7_0]
  | 167 => ![f7_0, f7_4, f7_2, f7_0, f7_0, f7_0, f7_0]
  | 168 => ![f7_3, f7_0, f7_0, f7_4, f7_0, f7_0, f7_0]
  | 169 => ![f7_3, f7_0, f7_0, f7_5, f7_0, f7_0, f7_0]
  | 170 => ![f7_3, f7_0, f7_0, f7_6, f7_0, f7_0, f7_0]
  | 171 => ![f7_3, f7_0, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 172 => ![f7_3, f7_0, f7_0, f7_1, f7_0, f7_0, f7_0]
  | 173 => ![f7_3, f7_0, f7_0, f7_2, f7_0, f7_0, f7_0]
  | 174 => ![f7_3, f7_0, f7_0, f7_3, f7_0, f7_0, f7_0]
  | 175 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_4, f7_3]
  | 176 => ![f7_0, f7_2, f7_6, f7_0, f7_0, f7_0, f7_0]
  | 177 => ![f7_1, f7_1, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 178 => ![f7_2, f7_0, f7_1, f7_0, f7_0, f7_0, f7_0]
  | 179 => ![f7_4, f7_0, f7_0, f7_0, f7_0, f7_0, f7_6]
  | 180 => ![f7_0, f7_5, f7_0, f7_0, f7_0, f7_3, f7_0]
  | 181 => ![f7_0, f7_6, f7_0, f7_0, f7_0, f7_0, f7_5]
  | 182 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_5, f7_3]
  | 183 => ![f7_6, f7_2, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 184 => ![f7_0, f7_1, f7_1, f7_0, f7_0, f7_0, f7_0]
  | 185 => ![f7_1, f7_0, f7_2, f7_0, f7_0, f7_0, f7_0]
  | 186 => ![f7_0, f7_4, f7_0, f7_0, f7_0, f7_0, f7_2]
  | 187 => ![f7_5, f7_0, f7_0, f7_0, f7_0, f7_0, f7_5]
  | 188 => ![f7_0, f7_0, f7_6, f7_0, f7_0, f7_0, f7_4]
  | 189 => ![f7_4, f7_3, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 190 => ![f7_0, f7_0, f7_3, f7_5, f7_0, f7_0, f7_0]
  | 191 => ![f7_0, f7_2, f7_0, f7_0, f7_0, f7_0, f7_6]
  | 192 => ![f7_0, f7_0, f7_3, f7_0, f7_0, f7_0, f7_0]
  | 193 => ![f7_0, f7_0, f7_3, f7_1, f7_0, f7_0, f7_0]
  | 194 => ![f7_0, f7_5, f7_0, f7_0, f7_0, f7_5, f7_0]
  | 195 => ![f7_6, f7_0, f7_0, f7_0, f7_0, f7_0, f7_4]
  | 196 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_0, f7_4]
  | 197 => ![f7_5, f7_3, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 198 => ![f7_0, f7_2, f7_0, f7_0, f7_0, f7_1, f7_0]
  | 199 => ![f7_0, f7_1, f7_2, f7_0, f7_0, f7_0, f7_0]
  | 200 => ![f7_1, f7_0, f7_3, f7_0, f7_0, f7_0, f7_0]
  | 201 => ![f7_0, f7_0, f7_0, f7_5, f7_0, f7_0, f7_4]
  | 202 => ![f7_0, f7_0, f7_0, f7_6, f7_0, f7_0, f7_4]
  | 203 => ![f7_3, f7_4, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 204 => ![f7_1, f7_0, f7_0, f7_0, f7_0, f7_0, f7_3]
  | 205 => ![f7_0, f7_2, f7_0, f7_0, f7_0, f7_2, f7_0]
  | 206 => ![f7_0, f7_0, f7_4, f7_6, f7_0, f7_0, f7_0]
  | 207 => ![f7_0, f7_0, f7_4, f7_0, f7_0, f7_0, f7_0]
  | 208 => ![f7_0, f7_5, f7_0, f7_0, f7_0, f7_0, f7_1]
  | 209 => ![f7_0, f7_0, f7_4, f7_2, f7_0, f7_0, f7_0]
  | 210 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_2, f7_4]
  | 211 => ![f7_0, f7_0, f7_1, f7_0, f7_0, f7_0, f7_3]
  | 212 => ![f7_2, f7_0, f7_0, f7_0, f7_0, f7_0, f7_2]
  | 213 => ![f7_0, f7_3, f7_0, f7_0, f7_0, f7_0, f7_5]
  | 214 => ![f7_6, f7_0, f7_5, f7_0, f7_0, f7_0, f7_0]
  | 215 => ![f7_0, f7_6, f7_6, f7_0, f7_0, f7_0, f7_0]
  | 216 => ![f7_1, f7_5, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 217 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_3, f7_4]
  | 218 => ![f7_0, f7_1, f7_0, f7_0, f7_0, f7_0, f7_2]
  | 219 => ![f7_0, f7_2, f7_0, f7_0, f7_0, f7_4, f7_0]
  | 220 => ![f7_3, f7_0, f7_0, f7_0, f7_0, f7_0, f7_1]
  | 221 => ![f7_5, f7_0, f7_6, f7_0, f7_0, f7_0, f7_0]
  | 222 => ![f7_6, f7_6, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 223 => ![f7_0, f7_5, f7_1, f7_0, f7_0, f7_0, f7_0]
  | 224 => ![f7_4, f7_0, f7_0, f7_3, f7_0, f7_0, f7_0]
  | 225 => ![f7_4, f7_0, f7_0, f7_4, f7_0, f7_0, f7_0]
  | 226 => ![f7_4, f7_0, f7_0, f7_5, f7_0, f7_0, f7_0]
  | 227 => ![f7_4, f7_0, f7_0, f7_6, f7_0, f7_0, f7_0]
  | 228 => ![f7_4, f7_0, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 229 => ![f7_4, f7_0, f7_0, f7_1, f7_0, f7_0, f7_0]
  | 230 => ![f7_4, f7_0, f7_0, f7_2, f7_0, f7_0, f7_0]
  | 231 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_5, f7_4]
  | 232 => ![f7_0, f7_3, f7_5, f7_0, f7_0, f7_0, f7_0]
  | 233 => ![f7_0, f7_2, f7_0, f7_0, f7_0, f7_6, f7_0]
  | 234 => ![f7_2, f7_1, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 235 => ![f7_3, f7_0, f7_1, f7_0, f7_0, f7_0, f7_0]
  | 236 => ![f7_5, f7_0, f7_0, f7_0, f7_0, f7_0, f7_6]
  | 237 => ![f7_0, f7_0, f7_6, f7_0, f7_0, f7_0, f7_5]
  | 238 => ![f7_0, f7_2, f7_0, f7_5, f7_0, f7_0, f7_0]
  | 239 => ![f7_0, f7_2, f7_0, f7_6, f7_0, f7_0, f7_0]
  | 240 => ![f7_0, f7_2, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 241 => ![f7_0, f7_2, f7_0, f7_1, f7_0, f7_0, f7_0]
  | 242 => ![f7_2, f7_0, f7_2, f7_0, f7_0, f7_0, f7_0]
  | 243 => ![f7_0, f7_2, f7_0, f7_3, f7_0, f7_0, f7_0]
  | 244 => ![f7_6, f7_0, f7_0, f7_0, f7_0, f7_0, f7_5]
  | 245 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_0, f7_5]
  | 246 => ![f7_0, f7_0, f7_0, f7_1, f7_0, f7_0, f7_5]
  | 247 => ![f7_0, f7_3, f7_6, f7_0, f7_0, f7_0, f7_0]
  | 248 => ![f7_1, f7_2, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 249 => ![f7_0, f7_0, f7_0, f7_4, f7_0, f7_0, f7_5]
  | 250 => ![f7_3, f7_0, f7_2, f7_0, f7_0, f7_0, f7_0]
  | 251 => ![f7_0, f7_6, f7_0, f7_0, f7_0, f7_3, f7_0]
  | 252 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_1, f7_5]
  | 253 => ![f7_1, f7_0, f7_0, f7_0, f7_0, f7_0, f7_4]
  | 254 => ![f7_6, f7_3, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 255 => ![f7_0, f7_2, f7_1, f7_0, f7_0, f7_0, f7_0]
  | 256 => ![f7_0, f7_0, f7_4, f7_0, f7_0, f7_0, f7_1]
  | 257 => ![f7_2, f7_0, f7_3, f7_0, f7_0, f7_0, f7_0]
  | 258 => ![f7_0, f7_6, f7_0, f7_0, f7_0, f7_4, f7_0]
  | 259 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_2, f7_5]
  | 260 => ![f7_4, f7_4, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 261 => ![f7_2, f7_0, f7_0, f7_0, f7_0, f7_0, f7_3]
  | 262 => ![f7_0, f7_3, f7_0, f7_0, f7_0, f7_0, f7_6]
  | 263 => ![f7_0, f7_1, f7_3, f7_0, f7_0, f7_0, f7_0]
  | 264 => ![f7_1, f7_0, f7_4, f7_0, f7_0, f7_0, f7_0]
  | 265 => ![f7_0, f7_6, f7_0, f7_0, f7_0, f7_5, f7_0]
  | 266 => ![f7_2, f7_5, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 267 => ![f7_0, f7_1, f7_0, f7_0, f7_0, f7_0, f7_3]
  | 268 => ![f7_0, f7_0, f7_5, f7_4, f7_0, f7_0, f7_0]
  | 269 => ![f7_3, f7_0, f7_0, f7_0, f7_0, f7_0, f7_2]
  | 270 => ![f7_0, f7_0, f7_5, f7_6, f7_0, f7_0, f7_0]
  | 271 => ![f7_0, f7_0, f7_5, f7_0, f7_0, f7_0, f7_0]
  | 272 => ![f7_0, f7_6, f7_0, f7_0, f7_0, f7_6, f7_0]
  | 273 => ![f7_0, f7_6, f7_0, f7_1, f7_0, f7_0, f7_0]
  | 274 => ![f7_0, f7_6, f7_0, f7_2, f7_0, f7_0, f7_0]
  | 275 => ![f7_0, f7_6, f7_0, f7_3, f7_0, f7_0, f7_0]
  | 276 => ![f7_0, f7_6, f7_0, f7_4, f7_0, f7_0, f7_0]
  | 277 => ![f7_4, f7_0, f7_0, f7_0, f7_0, f7_0, f7_1]
  | 278 => ![f7_6, f7_0, f7_6, f7_0, f7_0, f7_0, f7_0]
  | 279 => ![f7_0, f7_6, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 280 => ![f7_5, f7_0, f7_0, f7_2, f7_0, f7_0, f7_0]
  | 281 => ![f7_5, f7_0, f7_0, f7_3, f7_0, f7_0, f7_0]
  | 282 => ![f7_5, f7_0, f7_0, f7_4, f7_0, f7_0, f7_0]
  | 283 => ![f7_5, f7_0, f7_0, f7_5, f7_0, f7_0, f7_0]
  | 284 => ![f7_5, f7_0, f7_0, f7_6, f7_0, f7_0, f7_0]
  | 285 => ![f7_5, f7_0, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 286 => ![f7_5, f7_0, f7_0, f7_1, f7_0, f7_0, f7_0]
  | 287 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_6, f7_5]
  | 288 => ![f7_0, f7_4, f7_4, f7_0, f7_0, f7_0, f7_0]
  | 289 => ![f7_0, f7_2, f7_0, f7_0, f7_0, f7_0, f7_1]
  | 290 => ![f7_0, f7_0, f7_3, f7_0, f7_0, f7_0, f7_2]
  | 291 => ![f7_3, f7_1, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 292 => ![f7_4, f7_0, f7_1, f7_0, f7_0, f7_0, f7_0]
  | 293 => ![f7_6, f7_0, f7_0, f7_0, f7_0, f7_0, f7_6]
  | 294 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_0, f7_6]
  | 295 => ![f7_0, f7_5, f7_3, f7_0, f7_0, f7_0, f7_0]
  | 296 => ![f7_0, f7_0, f7_0, f7_2, f7_0, f7_0, f7_6]
  | 297 => ![f7_0, f7_3, f7_0, f7_0, f7_0, f7_5, f7_0]
  | 298 => ![f7_0, f7_0, f7_0, f7_4, f7_0, f7_0, f7_6]
  | 299 => ![f7_4, f7_1, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 300 => ![f7_5, f7_0, f7_1, f7_0, f7_0, f7_0, f7_0]
  | 301 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_1, f7_6]
  | 302 => ![f7_1, f7_0, f7_0, f7_0, f7_0, f7_0, f7_5]
  | 303 => ![f7_0, f7_4, f7_5, f7_0, f7_0, f7_0, f7_0]
  | 304 => ![f7_0, f7_3, f7_0, f7_0, f7_0, f7_6, f7_0]
  | 305 => ![f7_2, f7_2, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 306 => ![f7_0, f7_5, f7_0, f7_0, f7_0, f7_0, f7_3]
  | 307 => ![f7_4, f7_0, f7_2, f7_0, f7_0, f7_0, f7_0]
  | 308 => ![f7_0, f7_3, f7_0, f7_4, f7_0, f7_0, f7_0]
  | 309 => ![f7_0, f7_3, f7_0, f7_5, f7_0, f7_0, f7_0]
  | 310 => ![f7_2, f7_0, f7_0, f7_0, f7_0, f7_0, f7_4]
  | 311 => ![f7_0, f7_3, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 312 => ![f7_0, f7_3, f7_0, f7_1, f7_0, f7_0, f7_0]
  | 313 => ![f7_0, f7_3, f7_0, f7_2, f7_0, f7_0, f7_0]
  | 314 => ![f7_3, f7_0, f7_3, f7_0, f7_0, f7_0, f7_0]
  | 315 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_3, f7_6]
  | 316 => ![f7_0, f7_1, f7_0, f7_0, f7_0, f7_0, f7_4]
  | 317 => ![f7_5, f7_4, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 318 => ![f7_3, f7_0, f7_0, f7_0, f7_0, f7_0, f7_3]
  | 319 => ![f7_0, f7_2, f7_2, f7_0, f7_0, f7_0, f7_0]
  | 320 => ![f7_0, f7_0, f7_5, f7_0, f7_0, f7_0, f7_1]
  | 321 => ![f7_2, f7_0, f7_4, f7_0, f7_0, f7_0, f7_0]
  | 322 => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_4, f7_6]
  | 323 => ![f7_3, f7_5, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 324 => ![f7_0, f7_0, f7_2, f7_0, f7_0, f7_0, f7_4]
  | 325 => ![f7_0, f7_3, f7_0, f7_0, f7_0, f7_2, f7_0]
  | 326 => ![f7_4, f7_0, f7_0, f7_0, f7_0, f7_0, f7_2]
  | 327 => ![f7_0, f7_1, f7_4, f7_0, f7_0, f7_0, f7_0]
  | 328 => ![f7_1, f7_0, f7_5, f7_0, f7_0, f7_0, f7_0]
  | 329 => ![f7_1, f7_6, f7_0, f7_0, f7_0, f7_0, f7_0]
  | 330 => ![f7_0, f7_0, f7_6, f7_2, f7_0, f7_0, f7_0]
  | 331 => ![f7_0, f7_0, f7_6, f7_3, f7_0, f7_0, f7_0]
  | 332 => ![f7_0, f7_3, f7_0, f7_0, f7_0, f7_3, f7_0]
  | 333 => ![f7_0, f7_4, f7_0, f7_0, f7_0, f7_0, f7_5]
  | 334 => ![f7_5, f7_0, f7_0, f7_0, f7_0, f7_0, f7_1]
  | 335 => ![f7_0, f7_0, f7_6, f7_0, f7_0, f7_0, f7_0]
  | 336 => ![f7_6, f7_0, f7_0, f7_1, f7_0, f7_0, f7_0]
  | 337 => ![f7_6, f7_0, f7_0, f7_2, f7_0, f7_0, f7_0]
  | 338 => ![f7_6, f7_0, f7_0, f7_3, f7_0, f7_0, f7_0]
  | 339 => ![f7_6, f7_0, f7_0, f7_4, f7_0, f7_0, f7_0]
  | 340 => ![f7_6, f7_0, f7_0, f7_5, f7_0, f7_0, f7_0]
  | 341 => ![f7_6, f7_0, f7_0, f7_6, f7_0, f7_0, f7_0]
  | 342 => ![f7_6, f7_0, f7_0, f7_0, f7_0, f7_0, f7_0]
  | _ => ![f7_0, f7_0, f7_0, f7_0, f7_0, f7_0, f7_0]

private def support (w : QaryWord 7 7) : Finset (Fin 7) :=
  Finset.univ.filter (fun i => w i ≠ f7_0)

set_option maxRecDepth 20000 in
private theorem table_syndrome : ∀ s : Fin 343, syndromeIndex (syndromeCorrection s) = s := by
  covering_decide

set_option maxRecDepth 20000 in
private theorem table_weight : ∀ s : Fin 343, (support (syndromeCorrection s)).card <= 2 := by
  covering_decide

private def subtractError (x e : QaryWord 7 7) : QaryWord 7 7 :=
  fun i => sub7 (x i) (e i)

private theorem subtractError_isLinear_of_matching (x e : QaryWord 7 7)
    (h0 : zSyn0 e = zSyn0 x) (h1 : zSyn1 e = zSyn1 x) (h2 : zSyn2 e = zSyn2 x) :
    IsLinearWord (subtractError x e) := by
  constructor
  · unfold zSyn0 subtractError
    simp [asZ7_sub7]
    have hz0 : zSyn0 x - zSyn0 e = 0 := by
      rw [← h0]
      ring
    have hz : (asZ7 (x 0) + asZ7 (x 1) + asZ7 (x 2) + asZ7 (x 3) + asZ7 (x 4)) -
        (asZ7 (e 0) + asZ7 (e 1) + asZ7 (e 2) + asZ7 (e 3) + asZ7 (e 4)) = 0 := by
      simpa [zSyn0] using hz0
    calc
      asZ7 (x 0) - asZ7 (e 0) + (asZ7 (x 1) - asZ7 (e 1)) +
          (asZ7 (x 2) - asZ7 (e 2)) + (asZ7 (x 3) - asZ7 (e 3)) +
          (asZ7 (x 4) - asZ7 (e 4))
          = (asZ7 (x 0) + asZ7 (x 1) + asZ7 (x 2) + asZ7 (x 3) + asZ7 (x 4)) -
            (asZ7 (e 0) + asZ7 (e 1) + asZ7 (e 2) + asZ7 (e 3) + asZ7 (e 4)) := by ring
      _ = 0 := hz
  constructor
  · unfold zSyn1 subtractError
    simp [asZ7_sub7]
    have hz1 : zSyn1 x - zSyn1 e = 0 := by
      rw [← h1]
      ring
    have hz : (asZ7 (x 0) + 3 * asZ7 (x 1) + 2 * asZ7 (x 2) + asZ7 (x 5)) -
        (asZ7 (e 0) + 3 * asZ7 (e 1) + 2 * asZ7 (e 2) + asZ7 (e 5)) = 0 := by
      simpa [zSyn1] using hz1
    calc
      asZ7 (x 0) - asZ7 (e 0) + 3 * (asZ7 (x 1) - asZ7 (e 1)) +
          2 * (asZ7 (x 2) - asZ7 (e 2)) + (asZ7 (x 5) - asZ7 (e 5))
          = (asZ7 (x 0) + 3 * asZ7 (x 1) + 2 * asZ7 (x 2) + asZ7 (x 5)) -
            (asZ7 (e 0) + 3 * asZ7 (e 1) + 2 * asZ7 (e 2) + asZ7 (e 5)) := by ring
      _ = 0 := hz
  · unfold zSyn2 subtractError
    simp [asZ7_sub7]
    have hz2 : zSyn2 x - zSyn2 e = 0 := by
      rw [← h2]
      ring
    have hz : (asZ7 (x 0) + 2 * asZ7 (x 1) + asZ7 (x 2) + asZ7 (x 6)) -
        (asZ7 (e 0) + 2 * asZ7 (e 1) + asZ7 (e 2) + asZ7 (e 6)) = 0 := by
      simpa [zSyn2] using hz2
    calc
      asZ7 (x 0) - asZ7 (e 0) + 2 * (asZ7 (x 1) - asZ7 (e 1)) +
          (asZ7 (x 2) - asZ7 (e 2)) + (asZ7 (x 6) - asZ7 (e 6))
          = (asZ7 (x 0) + 2 * asZ7 (x 1) + asZ7 (x 2) + asZ7 (x 6)) -
            (asZ7 (e 0) + 2 * asZ7 (e 1) + asZ7 (e 2) + asZ7 (e 6)) := by ring
      _ = 0 := hz

private theorem subtractError_dist_le_of_support (x e : QaryWord 7 7)
    (hw : (support e).card <= 2) :
    hammingDist x (subtractError x e) <= 2 := by
  have hsubset : (Finset.univ.filter fun i : Fin 7 => x i ≠ subtractError x e i) ⊆ support e := by
    intro i hi
    simp only [support, Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
    by_contra hne
    have heq : e i = f7_0 := by simpa using hne
    apply hi
    unfold subtractError
    rw [heq]
    exact (sub7_zero (x i)).symm
  calc
    hammingDist x (subtractError x e)
        = (Finset.univ.filter fun i : Fin 7 => x i ≠ subtractError x e i).card := rfl
    _ <= (support e).card := Finset.card_le_card hsubset
    _ <= 2 := hw

private def linearRepair (x : QaryWord 7 7) : QaryWord 7 7 :=
  subtractError x (syndromeCorrection (syndromeIndex x))

private theorem linearRepair_isLinear (x : QaryWord 7 7) : IsLinearWord (linearRepair x) := by
  let e := syndromeCorrection (syndromeIndex x)
  have hidx : syndromeIndex e = syndromeIndex x := by
    simpa [e] using table_syndrome (syndromeIndex x)
  have hcomp := packSyndrome_inj (z7Component (zSyn0 e)) (z7Component (zSyn1 e))
    (z7Component (zSyn2 e)) (z7Component (zSyn0 x)) (z7Component (zSyn1 x))
    (z7Component (zSyn2 x)) (by simpa [syndromeIndex] using hidx)
  rcases hcomp with ⟨h0c, h1c, h2c⟩
  have h0 : zSyn0 e = zSyn0 x := z7Component_inj h0c
  have h1 : zSyn1 e = zSyn1 x := z7Component_inj h1c
  have h2 : zSyn2 e = zSyn2 x := z7Component_inj h2c
  simpa [linearRepair, e] using subtractError_isLinear_of_matching x e h0 h1 h2

private theorem linearRepair_dist (x : QaryWord 7 7) : hammingDist x (linearRepair x) <= 2 := by
  simpa [linearRepair] using subtractError_dist_le_of_support x (syndromeCorrection (syndromeIndex x))
    (table_weight (syndromeIndex x))

private theorem linearCode_covers : CoversFinset linearCode 2 := by
  intro x
  refine ⟨linearRepair x, ?_, linearRepair_dist x⟩
  simp only [linearCode, Finset.mem_filter, Finset.mem_univ, true_and]
  exact linearRepair_isLinear x

private theorem linearCode_card : linearCode.card <= 2401 := by
  calc
    linearCode.card <= ((Finset.univ : Finset (QaryWord 7 4)).image linearWord).card :=
      Finset.card_le_card linearCode_subset_generated
    _ <= (Finset.univ : Finset (QaryWord 7 4)).card := Finset.card_image_le
    _ = 2401 := by
      rw [Finset.card_univ, qaryWord_card]
      norm_num

def knownBoundQ7N7R2UpperName : String :=
  "known_bounds_q7_n7_r2_pair_syndrome_linear"

def knownBoundQ7N7R2Explicit : ExplicitQaryUpper 7 7 2 2401 :=
  { code := linearCode
    card_le := linearCode_card
    covers := linearCode_covers }

def knownBoundQ7N7R2Upper (q n r : Nat) : Nat :=
  if q = 7 ∧ n = 7 ∧ r = 2 then 2401 else trivialUpper q n r

theorem knownBoundQ7N7R2Upper_valid (q n r : Nat) :
    QaryKUpper q n r (knownBoundQ7N7R2Upper q n r) := by
  by_cases h : q = 7 ∧ n = 7 ∧ r = 2
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [knownBoundQ7N7R2Upper] using knownBoundQ7N7R2Explicit.toUpper
  · simpa [knownBoundQ7N7R2Upper, h] using trivialUpper_valid q n r

def knownBoundQ7N7R2UpperSource : UpperBoundSource where
  value := knownBoundQ7N7R2Upper
  trace := fun q n r =>
    .primitive knownBoundQ7N7R2UpperName (knownBoundQ7N7R2Upper_valid q n r)

end Database
end CoveringCodes
