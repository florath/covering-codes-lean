import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.KnownBounds.BinaryGolay
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Hamming and perfect-code upper sources

This source adds structural upper bounds from standard perfect/Hamming-code
constructions that are present in the post-Keri reference table but were not
yet primitive Lean sources.

The `K_2(23,3)` entry reuses the existing binary Golay helper.  The radius-one
Hamming entries here are proved by syndrome repair rather than by enumerating
all codewords.
-/

namespace CoveringCodes
namespace Database

/-! ## Shared small arithmetic -/

private def f0 (q : Nat) [NeZero q] : Fin q := ⟨0, Nat.pos_of_neZero q⟩

/-! ## `K_5(6,1) <= 625` -/

namespace QuinaryHamming

private abbrev f5_0 : Fin 5 := ⟨0, by decide⟩
private abbrev f4_0 : Fin 4 := ⟨0, by decide⟩
private abbrev f4_1 : Fin 4 := ⟨1, by decide⟩
private abbrev f4_2 : Fin 4 := ⟨2, by decide⟩
private abbrev f4_3 : Fin 4 := ⟨3, by decide⟩

private def add5 (a b : Fin 5) : Fin 5 := ⟨(a.val + b.val) % 5, by omega⟩
private def sub5 (a b : Fin 5) : Fin 5 := ⟨(5 + a.val - b.val) % 5, by omega⟩
private def neg5 (a : Fin 5) : Fin 5 := ⟨(5 - a.val) % 5, by omega⟩
private def mul5 (k : Nat) (a : Fin 5) : Fin 5 := ⟨(k * a.val) % 5, by omega⟩
private def asZ5 (a : Fin 5) : ZMod 5 := a.val

private def add5_4 (a b c d : Fin 5) : Fin 5 := add5 (add5 (add5 a b) c) d

private theorem asZ5_sub5 (a b : Fin 5) :
    asZ5 (sub5 a b) = asZ5 a - asZ5 b := by
  fin_cases a <;> fin_cases b <;> native_decide

private theorem sub5_zero (a : Fin 5) : sub5 a f5_0 = a := by
  fin_cases a <;> native_decide

private theorem row0_zero_solve (a b c d e : Fin 5)
    (h : asZ5 a + asZ5 b + asZ5 c + asZ5 d + asZ5 e = 0) :
    neg5 (add5_4 b c d e) = a := by
  revert a b c d e
  covering_decide

private theorem row1_zero_solve (a b c d e : Fin 5)
    (h : asZ5 a + asZ5 b + 2 * asZ5 c + 3 * asZ5 d + 4 * asZ5 e = 0) :
    neg5 (add5_4 b (mul5 2 c) (mul5 3 d) (mul5 4 e)) = a := by
  revert a b c d e
  covering_decide

private def linearWord (free : QaryWord 5 4) : QaryWord 5 6 :=
  fun i =>
    if i.val = 0 then neg5 (add5_4 (free f4_0) (free f4_1) (free f4_2) (free f4_3))
    else if i.val = 1 then free f4_0
    else if i.val = 2 then free f4_1
    else if i.val = 3 then free f4_2
    else if i.val = 4 then free f4_3
    else neg5 (add5_4 (free f4_0) (mul5 2 (free f4_1))
      (mul5 3 (free f4_2)) (mul5 4 (free f4_3)))

private def linearFree (w : QaryWord 5 6) : QaryWord 5 4 := fun i =>
  if i.val = 0 then w 1
  else if i.val = 1 then w 2
  else if i.val = 2 then w 3
  else w 4

private def zSyn0 (w : QaryWord 5 6) : ZMod 5 :=
  asZ5 (w 0) + asZ5 (w 1) + asZ5 (w 2) + asZ5 (w 3) + asZ5 (w 4)

private def zSyn1 (w : QaryWord 5 6) : ZMod 5 :=
  asZ5 (w 5) + asZ5 (w 1) + 2 * asZ5 (w 2) + 3 * asZ5 (w 3) + 4 * asZ5 (w 4)

private def IsLinearWord (w : QaryWord 5 6) : Prop :=
  zSyn0 w = 0 ∧ zSyn1 w = 0

private instance (w : QaryWord 5 6) : Decidable (IsLinearWord w) := by
  unfold IsLinearWord
  infer_instance

private theorem linearWord_linearFree_eq_of_isLinear (w : QaryWord 5 6)
    (h : IsLinearWord w) : linearWord (linearFree w) = w := by
  rcases h with ⟨h0, h1⟩
  have h0w : neg5 (add5_4 (w 1) (w 2) (w 3) (w 4)) = w 0 :=
    row0_zero_solve (w 0) (w 1) (w 2) (w 3) (w 4) (by
      simpa [zSyn0, add_comm, add_left_comm, add_assoc] using h0)
  have h1w : neg5 (add5_4 (w 1) (mul5 2 (w 2)) (mul5 3 (w 3)) (mul5 4 (w 4))) = w 5 :=
    row1_zero_solve (w 5) (w 1) (w 2) (w 3) (w 4) (by
      simpa [zSyn1, add_comm, add_left_comm, add_assoc] using h1)
  funext i
  fin_cases i <;> simp [linearWord, linearFree, h0w, h1w]

private def linearCode : Finset (QaryWord 5 6) :=
  Finset.univ.filter IsLinearWord

private theorem linearCode_subset_generated :
    linearCode ⊆ (Finset.univ : Finset (QaryWord 5 4)).image linearWord := by
  intro w hw
  simp only [linearCode, Finset.mem_filter, Finset.mem_univ, true_and] at hw
  exact Finset.mem_image.mpr ⟨linearFree w, Finset.mem_univ _,
    linearWord_linearFree_eq_of_isLinear w hw⟩

private def z5Component (z : ZMod 5) : Fin 5 :=
  ⟨z.val, ZMod.val_lt z⟩

private theorem z5Component_inj {a b : ZMod 5}
    (h : z5Component a = z5Component b) : a = b := by
  apply ZMod.val_injective 5
  exact congrArg Fin.val h

private def packSyndrome (s0 s1 : Fin 5) : Fin 25 :=
  ⟨s0.val + 5 * s1.val, by omega⟩

private def syndromeIndex (w : QaryWord 5 6) : Fin 25 :=
  packSyndrome (z5Component (zSyn0 w)) (z5Component (zSyn1 w))

private theorem packSyndrome_inj (a0 a1 b0 b1 : Fin 5)
    (h : packSyndrome a0 a1 = packSyndrome b0 b1) :
    a0 = b0 ∧ a1 = b1 := by
  have hv := congrArg Fin.val h
  simp [packSyndrome] at hv
  have h0 : a0.val = b0.val := by omega
  have h1 : a1.val = b1.val := by omega
  exact ⟨Fin.ext h0, Fin.ext h1⟩

private def syndromeDigit (s : Fin 25) (row : Nat) : Fin 5 :=
  if row = 0 then ⟨s.val % 5, by omega⟩ else ⟨(s.val / 5) % 5, by omega⟩

private def inv5 (a : Fin 5) : Nat :=
  if a.val = 2 then 3 else if a.val = 3 then 2 else if a.val = 4 then 4 else 1

private def support (w : QaryWord 5 6) : Finset (Fin 6) :=
  Finset.univ.filter (fun i => w i ≠ f5_0)

private def correction (s : Fin 25) : QaryWord 5 6 :=
  let s0 := syndromeDigit s 0
  let s1 := syndromeDigit s 1
  if s0 = f5_0 then fun i => if i.val = 5 then s1 else f5_0
  else
    let pos : Fin 6 := ⟨(mul5 (inv5 s0) s1).val, by omega⟩
    fun i => if i = pos then s0 else f5_0

set_option maxRecDepth 20000 in
private theorem correction_syndrome : ∀ s : Fin 25, syndromeIndex (correction s) = s := by
  native_decide

set_option maxRecDepth 20000 in
private theorem correction_weight : ∀ s : Fin 25, (support (correction s)).card <= 1 := by
  native_decide

private def subtractError (x e : QaryWord 5 6) : QaryWord 5 6 :=
  fun i => sub5 (x i) (e i)

private theorem subtractError_isLinear_of_matching (x e : QaryWord 5 6)
    (h0 : zSyn0 e = zSyn0 x) (h1 : zSyn1 e = zSyn1 x) :
    IsLinearWord (subtractError x e) := by
  constructor
  · unfold zSyn0 subtractError
    simp [asZ5_sub5]
    have hz0 : zSyn0 x - zSyn0 e = 0 := by rw [← h0]; ring
    have hz : (asZ5 (x 0) + asZ5 (x 1) + asZ5 (x 2) + asZ5 (x 3) + asZ5 (x 4)) -
        (asZ5 (e 0) + asZ5 (e 1) + asZ5 (e 2) + asZ5 (e 3) + asZ5 (e 4)) = 0 := by
      simpa [zSyn0] using hz0
    calc
      asZ5 (x 0) - asZ5 (e 0) + (asZ5 (x 1) - asZ5 (e 1)) +
          (asZ5 (x 2) - asZ5 (e 2)) + (asZ5 (x 3) - asZ5 (e 3)) +
          (asZ5 (x 4) - asZ5 (e 4))
          = (asZ5 (x 0) + asZ5 (x 1) + asZ5 (x 2) + asZ5 (x 3) + asZ5 (x 4)) -
            (asZ5 (e 0) + asZ5 (e 1) + asZ5 (e 2) + asZ5 (e 3) + asZ5 (e 4)) := by ring
      _ = 0 := hz
  · unfold zSyn1 subtractError
    simp [asZ5_sub5]
    have hz1 : zSyn1 x - zSyn1 e = 0 := by rw [← h1]; ring
    have hz : (asZ5 (x 5) + asZ5 (x 1) + 2 * asZ5 (x 2) + 3 * asZ5 (x 3) + 4 * asZ5 (x 4)) -
        (asZ5 (e 5) + asZ5 (e 1) + 2 * asZ5 (e 2) + 3 * asZ5 (e 3) + 4 * asZ5 (e 4)) = 0 := by
      simpa [zSyn1] using hz1
    calc
      asZ5 (x 5) - asZ5 (e 5) + (asZ5 (x 1) - asZ5 (e 1)) +
          2 * (asZ5 (x 2) - asZ5 (e 2)) + 3 * (asZ5 (x 3) - asZ5 (e 3)) +
          4 * (asZ5 (x 4) - asZ5 (e 4))
          = (asZ5 (x 5) + asZ5 (x 1) + 2 * asZ5 (x 2) + 3 * asZ5 (x 3) + 4 * asZ5 (x 4)) -
            (asZ5 (e 5) + asZ5 (e 1) + 2 * asZ5 (e 2) + 3 * asZ5 (e 3) + 4 * asZ5 (e 4)) := by ring
      _ = 0 := hz

private theorem subtractError_dist_le_of_support (x e : QaryWord 5 6)
    (hw : (support e).card <= 1) :
    hammingDist x (subtractError x e) <= 1 := by
  have hsubset : (Finset.univ.filter fun i : Fin 6 => x i ≠ subtractError x e i) ⊆ support e := by
    intro i hi
    simp only [support, Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
    by_contra hne
    have heq : e i = f5_0 := by simpa using hne
    apply hi
    unfold subtractError
    rw [heq]
    exact (sub5_zero (x i)).symm
  calc
    hammingDist x (subtractError x e)
        = (Finset.univ.filter fun i : Fin 6 => x i ≠ subtractError x e i).card := rfl
    _ <= (support e).card := Finset.card_le_card hsubset
    _ <= 1 := hw

private def linearRepair (x : QaryWord 5 6) : QaryWord 5 6 :=
  subtractError x (correction (syndromeIndex x))

private theorem linearRepair_isLinear (x : QaryWord 5 6) : IsLinearWord (linearRepair x) := by
  let e := correction (syndromeIndex x)
  have hidx : syndromeIndex e = syndromeIndex x := by
    simpa [e] using correction_syndrome (syndromeIndex x)
  have hcomp := packSyndrome_inj (z5Component (zSyn0 e)) (z5Component (zSyn1 e))
    (z5Component (zSyn0 x)) (z5Component (zSyn1 x)) (by simpa [syndromeIndex] using hidx)
  rcases hcomp with ⟨h0c, h1c⟩
  exact subtractError_isLinear_of_matching x e (z5Component_inj h0c) (z5Component_inj h1c)

private theorem linearRepair_dist (x : QaryWord 5 6) : hammingDist x (linearRepair x) <= 1 := by
  simpa [linearRepair] using subtractError_dist_le_of_support x (correction (syndromeIndex x))
    (correction_weight (syndromeIndex x))

private theorem linearCode_covers : CoversFinset linearCode 1 := by
  intro x
  refine ⟨linearRepair x, ?_, linearRepair_dist x⟩
  simp only [linearCode, Finset.mem_filter, Finset.mem_univ, true_and]
  exact linearRepair_isLinear x

private theorem linearCode_card : linearCode.card <= 625 := by
  calc
    linearCode.card <= ((Finset.univ : Finset (QaryWord 5 4)).image linearWord).card :=
      Finset.card_le_card linearCode_subset_generated
    _ <= (Finset.univ : Finset (QaryWord 5 4)).card := Finset.card_image_le
    _ = 625 := by
      rw [Finset.card_univ, qaryWord_card]
      norm_num

def explicit : ExplicitQaryUpper 5 6 1 625 :=
  { code := linearCode
    card_le := linearCode_card
    covers := linearCode_covers }

end QuinaryHamming

/-! ## `K_7(8,1) <= 117649` -/

namespace SeptenaryHamming

private abbrev f7_0 : Fin 7 := ⟨0, by decide⟩
private abbrev f6_0 : Fin 6 := ⟨0, by decide⟩
private abbrev f6_1 : Fin 6 := ⟨1, by decide⟩
private abbrev f6_2 : Fin 6 := ⟨2, by decide⟩
private abbrev f6_3 : Fin 6 := ⟨3, by decide⟩
private abbrev f6_4 : Fin 6 := ⟨4, by decide⟩
private abbrev f6_5 : Fin 6 := ⟨5, by decide⟩

private def add7 (a b : Fin 7) : Fin 7 := ⟨(a.val + b.val) % 7, by omega⟩
private def sub7 (a b : Fin 7) : Fin 7 := ⟨(7 + a.val - b.val) % 7, by omega⟩
private def neg7 (a : Fin 7) : Fin 7 := ⟨(7 - a.val) % 7, by omega⟩
private def mul7 (k : Nat) (a : Fin 7) : Fin 7 := ⟨(k * a.val) % 7, by omega⟩
private def asZ7 (a : Fin 7) : ZMod 7 := a.val

private def add7List : List (Fin 7) → Fin 7
  | [] => f7_0
  | a :: rest => add7 a (add7List rest)

private theorem asZ7_sub7 (a b : Fin 7) :
    asZ7 (sub7 a b) = asZ7 a - asZ7 b := by
  fin_cases a <;> fin_cases b <;> native_decide

private theorem asZ7_add7 (a b : Fin 7) :
    asZ7 (add7 a b) = asZ7 a + asZ7 b := by
  fin_cases a <;> fin_cases b <;> native_decide

private theorem asZ7_neg7 (a : Fin 7) :
    asZ7 (neg7 a) = -asZ7 a := by
  fin_cases a <;> native_decide

private theorem asZ7_zero : asZ7 (0 : Fin 7) = 0 := by
  native_decide

private theorem asZ7_mul7_2 (a : Fin 7) : asZ7 (mul7 2 a) = 2 * asZ7 a := by
  fin_cases a <;> native_decide

private theorem asZ7_mul7_3 (a : Fin 7) : asZ7 (mul7 3 a) = 3 * asZ7 a := by
  fin_cases a <;> native_decide

private theorem asZ7_mul7_4 (a : Fin 7) : asZ7 (mul7 4 a) = 4 * asZ7 a := by
  fin_cases a <;> native_decide

private theorem asZ7_mul7_5 (a : Fin 7) : asZ7 (mul7 5 a) = 5 * asZ7 a := by
  fin_cases a <;> native_decide

private theorem asZ7_mul7_6 (a : Fin 7) : asZ7 (mul7 6 a) = 6 * asZ7 a := by
  fin_cases a <;> native_decide

private theorem sub7_zero (a : Fin 7) : sub7 a f7_0 = a := by
  fin_cases a <;> native_decide

private theorem row0_zero_solve (a b c d e f g : Fin 7)
    (h : asZ7 a + asZ7 b + asZ7 c + asZ7 d + asZ7 e + asZ7 f + asZ7 g = 0) :
    neg7 (add7List [b, c, d, e, f, g]) = a := by
  let S : ZMod 7 := asZ7 b + asZ7 c + asZ7 d + asZ7 e + asZ7 f + asZ7 g
  have hsum : asZ7 (add7List [b, c, d, e, f, g]) = S := by
    dsimp [S]
    simp [add7List, asZ7_add7]
    rw [asZ7_zero]
    ring
  have hz : asZ7 a + S = 0 := by
    dsimp [S]
    simpa [add_assoc] using h
  have ha : asZ7 a = -S := by
    have := congrArg (fun z : ZMod 7 => z - S) hz
    simpa using this
  have heq : asZ7 (neg7 (add7List [b, c, d, e, f, g])) = asZ7 a := by
    calc
      asZ7 (neg7 (add7List [b, c, d, e, f, g])) = -asZ7 (add7List [b, c, d, e, f, g]) :=
        asZ7_neg7 _
      _ = -S := by rw [hsum]
      _ = asZ7 a := ha.symm
  apply Fin.ext
  have hv := congrArg ZMod.val heq
  simp [asZ7] at hv
  omega

private theorem row1_zero_solve (a b c d e f g : Fin 7)
    (h : asZ7 a + asZ7 b + 2 * asZ7 c + 3 * asZ7 d + 4 * asZ7 e + 5 * asZ7 f + 6 * asZ7 g = 0) :
    neg7 (add7List [b, mul7 2 c, mul7 3 d, mul7 4 e, mul7 5 f, mul7 6 g]) = a := by
  let S : ZMod 7 := asZ7 b + 2 * asZ7 c + 3 * asZ7 d + 4 * asZ7 e + 5 * asZ7 f + 6 * asZ7 g
  have hsum :
      asZ7 (add7List [b, mul7 2 c, mul7 3 d, mul7 4 e, mul7 5 f, mul7 6 g]) = S := by
    dsimp [S]
    simp [add7List, asZ7_add7, asZ7_mul7_2, asZ7_mul7_3, asZ7_mul7_4, asZ7_mul7_5,
      asZ7_mul7_6]
    rw [asZ7_zero]
    ring
  have hz : asZ7 a + S = 0 := by
    dsimp [S]
    simpa [add_assoc] using h
  have ha : asZ7 a = -S := by
    have := congrArg (fun z : ZMod 7 => z - S) hz
    simpa using this
  have heq :
      asZ7 (neg7 (add7List [b, mul7 2 c, mul7 3 d, mul7 4 e, mul7 5 f, mul7 6 g])) =
        asZ7 a := by
    calc
      asZ7 (neg7 (add7List [b, mul7 2 c, mul7 3 d, mul7 4 e, mul7 5 f, mul7 6 g])) =
          -asZ7 (add7List [b, mul7 2 c, mul7 3 d, mul7 4 e, mul7 5 f, mul7 6 g]) :=
        asZ7_neg7 _
      _ = -S := by rw [hsum]
      _ = asZ7 a := ha.symm
  apply Fin.ext
  have hv := congrArg ZMod.val heq
  simp [asZ7] at hv
  omega

private def linearWord (free : QaryWord 7 6) : QaryWord 7 8 :=
  fun i =>
    if i.val = 0 then neg7 (add7List [free f6_0, free f6_1, free f6_2, free f6_3, free f6_4, free f6_5])
    else if i.val = 1 then free f6_0
    else if i.val = 2 then free f6_1
    else if i.val = 3 then free f6_2
    else if i.val = 4 then free f6_3
    else if i.val = 5 then free f6_4
    else if i.val = 6 then free f6_5
    else neg7 (add7List [free f6_0, mul7 2 (free f6_1), mul7 3 (free f6_2),
      mul7 4 (free f6_3), mul7 5 (free f6_4), mul7 6 (free f6_5)])

private def linearFree (w : QaryWord 7 8) : QaryWord 7 6 := fun i =>
  if i.val = 0 then w 1
  else if i.val = 1 then w 2
  else if i.val = 2 then w 3
  else if i.val = 3 then w 4
  else if i.val = 4 then w 5
  else w 6

private def zSyn0 (w : QaryWord 7 8) : ZMod 7 :=
  asZ7 (w 0) + asZ7 (w 1) + asZ7 (w 2) + asZ7 (w 3) +
  asZ7 (w 4) + asZ7 (w 5) + asZ7 (w 6)

private def zSyn1 (w : QaryWord 7 8) : ZMod 7 :=
  asZ7 (w 7) + asZ7 (w 1) + 2 * asZ7 (w 2) + 3 * asZ7 (w 3) +
  4 * asZ7 (w 4) + 5 * asZ7 (w 5) + 6 * asZ7 (w 6)

private def IsLinearWord (w : QaryWord 7 8) : Prop :=
  zSyn0 w = 0 ∧ zSyn1 w = 0

private instance (w : QaryWord 7 8) : Decidable (IsLinearWord w) := by
  unfold IsLinearWord
  infer_instance

private theorem linearWord_linearFree_eq_of_isLinear (w : QaryWord 7 8)
    (h : IsLinearWord w) : linearWord (linearFree w) = w := by
  rcases h with ⟨h0, h1⟩
  have h0w : neg7 (add7List [w 1, w 2, w 3, w 4, w 5, w 6]) = w 0 :=
    row0_zero_solve (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) (by
      simpa [zSyn0] using h0)
  have h1w : neg7 (add7List [w 1, mul7 2 (w 2), mul7 3 (w 3), mul7 4 (w 4), mul7 5 (w 5), mul7 6 (w 6)]) = w 7 :=
    row1_zero_solve (w 7) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) (by
      simpa [zSyn1] using h1)
  funext i
  fin_cases i <;> simp [linearWord, linearFree, h0w, h1w]

private def linearCode : Finset (QaryWord 7 8) :=
  Finset.univ.filter IsLinearWord

private theorem linearCode_subset_generated :
    linearCode ⊆ (Finset.univ : Finset (QaryWord 7 6)).image linearWord := by
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

private def packSyndrome (s0 s1 : Fin 7) : Fin 49 :=
  ⟨s0.val + 7 * s1.val, by omega⟩

private def syndromeIndex (w : QaryWord 7 8) : Fin 49 :=
  packSyndrome (z7Component (zSyn0 w)) (z7Component (zSyn1 w))

private theorem packSyndrome_inj (a0 a1 b0 b1 : Fin 7)
    (h : packSyndrome a0 a1 = packSyndrome b0 b1) :
    a0 = b0 ∧ a1 = b1 := by
  have hv := congrArg Fin.val h
  simp [packSyndrome] at hv
  have h0 : a0.val = b0.val := by omega
  have h1 : a1.val = b1.val := by omega
  exact ⟨Fin.ext h0, Fin.ext h1⟩

private def syndromeDigit (s : Fin 49) (row : Nat) : Fin 7 :=
  if row = 0 then ⟨s.val % 7, by omega⟩ else ⟨(s.val / 7) % 7, by omega⟩

private def inv7 (a : Fin 7) : Nat :=
  if a.val = 2 then 4
  else if a.val = 3 then 5
  else if a.val = 4 then 2
  else if a.val = 5 then 3
  else if a.val = 6 then 6
  else 1

private def support (w : QaryWord 7 8) : Finset (Fin 8) :=
  Finset.univ.filter (fun i => w i ≠ f7_0)

private def correction (s : Fin 49) : QaryWord 7 8 :=
  let s0 := syndromeDigit s 0
  let s1 := syndromeDigit s 1
  if s0 = f7_0 then fun i => if i.val = 7 then s1 else f7_0
  else
    let pos : Fin 8 := ⟨(mul7 (inv7 s0) s1).val, by omega⟩
    fun i => if i = pos then s0 else f7_0

set_option maxRecDepth 20000 in
private theorem correction_syndrome : ∀ s : Fin 49, syndromeIndex (correction s) = s := by
  native_decide

set_option maxRecDepth 20000 in
private theorem correction_weight : ∀ s : Fin 49, (support (correction s)).card <= 1 := by
  native_decide

private def subtractError (x e : QaryWord 7 8) : QaryWord 7 8 :=
  fun i => sub7 (x i) (e i)

private theorem subtractError_isLinear_of_matching (x e : QaryWord 7 8)
    (h0 : zSyn0 e = zSyn0 x) (h1 : zSyn1 e = zSyn1 x) :
    IsLinearWord (subtractError x e) := by
  constructor
  · unfold zSyn0 subtractError
    simp [asZ7_sub7]
    have hz0 : zSyn0 x - zSyn0 e = 0 := by rw [← h0]; ring
    have hz : (asZ7 (x 0) + asZ7 (x 1) + asZ7 (x 2) + asZ7 (x 3) +
        asZ7 (x 4) + asZ7 (x 5) + asZ7 (x 6)) -
        (asZ7 (e 0) + asZ7 (e 1) + asZ7 (e 2) + asZ7 (e 3) +
        asZ7 (e 4) + asZ7 (e 5) + asZ7 (e 6)) = 0 := by
      simpa [zSyn0] using hz0
    calc
      asZ7 (x 0) - asZ7 (e 0) + (asZ7 (x 1) - asZ7 (e 1)) +
          (asZ7 (x 2) - asZ7 (e 2)) + (asZ7 (x 3) - asZ7 (e 3)) +
          (asZ7 (x 4) - asZ7 (e 4)) + (asZ7 (x 5) - asZ7 (e 5)) +
          (asZ7 (x 6) - asZ7 (e 6))
          = (asZ7 (x 0) + asZ7 (x 1) + asZ7 (x 2) + asZ7 (x 3) +
            asZ7 (x 4) + asZ7 (x 5) + asZ7 (x 6)) -
            (asZ7 (e 0) + asZ7 (e 1) + asZ7 (e 2) + asZ7 (e 3) +
            asZ7 (e 4) + asZ7 (e 5) + asZ7 (e 6)) := by ring
      _ = 0 := hz
  · unfold zSyn1 subtractError
    simp [asZ7_sub7]
    have hz1 : zSyn1 x - zSyn1 e = 0 := by rw [← h1]; ring
    have hz : (asZ7 (x 7) + asZ7 (x 1) + 2 * asZ7 (x 2) + 3 * asZ7 (x 3) +
        4 * asZ7 (x 4) + 5 * asZ7 (x 5) + 6 * asZ7 (x 6)) -
        (asZ7 (e 7) + asZ7 (e 1) + 2 * asZ7 (e 2) + 3 * asZ7 (e 3) +
        4 * asZ7 (e 4) + 5 * asZ7 (e 5) + 6 * asZ7 (e 6)) = 0 := by
      simpa [zSyn1] using hz1
    calc
      asZ7 (x 7) - asZ7 (e 7) + (asZ7 (x 1) - asZ7 (e 1)) +
          2 * (asZ7 (x 2) - asZ7 (e 2)) + 3 * (asZ7 (x 3) - asZ7 (e 3)) +
          4 * (asZ7 (x 4) - asZ7 (e 4)) + 5 * (asZ7 (x 5) - asZ7 (e 5)) +
          6 * (asZ7 (x 6) - asZ7 (e 6))
          = (asZ7 (x 7) + asZ7 (x 1) + 2 * asZ7 (x 2) + 3 * asZ7 (x 3) +
            4 * asZ7 (x 4) + 5 * asZ7 (x 5) + 6 * asZ7 (x 6)) -
            (asZ7 (e 7) + asZ7 (e 1) + 2 * asZ7 (e 2) + 3 * asZ7 (e 3) +
            4 * asZ7 (e 4) + 5 * asZ7 (e 5) + 6 * asZ7 (e 6)) := by ring
      _ = 0 := hz

private theorem subtractError_dist_le_of_support (x e : QaryWord 7 8)
    (hw : (support e).card <= 1) :
    hammingDist x (subtractError x e) <= 1 := by
  have hsubset : (Finset.univ.filter fun i : Fin 8 => x i ≠ subtractError x e i) ⊆ support e := by
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
        = (Finset.univ.filter fun i : Fin 8 => x i ≠ subtractError x e i).card := rfl
    _ <= (support e).card := Finset.card_le_card hsubset
    _ <= 1 := hw

private def linearRepair (x : QaryWord 7 8) : QaryWord 7 8 :=
  subtractError x (correction (syndromeIndex x))

private theorem linearRepair_isLinear (x : QaryWord 7 8) : IsLinearWord (linearRepair x) := by
  let e := correction (syndromeIndex x)
  have hidx : syndromeIndex e = syndromeIndex x := by
    simpa [e] using correction_syndrome (syndromeIndex x)
  have hcomp := packSyndrome_inj (z7Component (zSyn0 e)) (z7Component (zSyn1 e))
    (z7Component (zSyn0 x)) (z7Component (zSyn1 x)) (by simpa [syndromeIndex] using hidx)
  rcases hcomp with ⟨h0c, h1c⟩
  exact subtractError_isLinear_of_matching x e (z7Component_inj h0c) (z7Component_inj h1c)

private theorem linearRepair_dist (x : QaryWord 7 8) : hammingDist x (linearRepair x) <= 1 := by
  simpa [linearRepair] using subtractError_dist_le_of_support x (correction (syndromeIndex x))
    (correction_weight (syndromeIndex x))

private theorem linearCode_covers : CoversFinset linearCode 1 := by
  intro x
  refine ⟨linearRepair x, ?_, linearRepair_dist x⟩
  simp only [linearCode, Finset.mem_filter, Finset.mem_univ, true_and]
  exact linearRepair_isLinear x

private theorem linearCode_card : linearCode.card <= 117649 := by
  calc
    linearCode.card <= ((Finset.univ : Finset (QaryWord 7 6)).image linearWord).card :=
      Finset.card_le_card linearCode_subset_generated
    _ <= (Finset.univ : Finset (QaryWord 7 6)).card := Finset.card_image_le
    _ = 117649 := by
      rw [Finset.card_univ, qaryWord_card]
      norm_num

def explicit : ExplicitQaryUpper 7 8 1 117649 :=
  { code := linearCode
    card_le := linearCode_card
    covers := linearCode_covers }

end SeptenaryHamming

/-! ## `K_3(13,1) <= 59049` -/

namespace TernaryHamming

private abbrev f3_0 : Fin 3 := ⟨0, by decide⟩
private abbrev f3_1 : Fin 3 := ⟨1, by decide⟩
private abbrev f3_2 : Fin 3 := ⟨2, by decide⟩
private abbrev f10_0 : Fin 10 := ⟨0, by decide⟩
private abbrev f10_1 : Fin 10 := ⟨1, by decide⟩
private abbrev f10_2 : Fin 10 := ⟨2, by decide⟩
private abbrev f10_3 : Fin 10 := ⟨3, by decide⟩
private abbrev f10_4 : Fin 10 := ⟨4, by decide⟩
private abbrev f10_5 : Fin 10 := ⟨5, by decide⟩
private abbrev f10_6 : Fin 10 := ⟨6, by decide⟩
private abbrev f10_7 : Fin 10 := ⟨7, by decide⟩
private abbrev f10_8 : Fin 10 := ⟨8, by decide⟩
private abbrev f10_9 : Fin 10 := ⟨9, by decide⟩

private def add3 (a b : Fin 3) : Fin 3 := ⟨(a.val + b.val) % 3, by omega⟩
private def sub3 (a b : Fin 3) : Fin 3 := ⟨(3 + a.val - b.val) % 3, by omega⟩
private def neg3 (a : Fin 3) : Fin 3 := ⟨(3 - a.val) % 3, by omega⟩
private def mul3 (k : Nat) (a : Fin 3) : Fin 3 := ⟨(k * a.val) % 3, by omega⟩
private def asZ3 (a : Fin 3) : ZMod 3 := a.val

private def add3List : List (Fin 3) → Fin 3
  | [] => f3_0
  | a :: rest => add3 a (add3List rest)

private theorem asZ3_sub3 (a b : Fin 3) :
    asZ3 (sub3 a b) = asZ3 a - asZ3 b := by
  fin_cases a <;> fin_cases b <;> native_decide

private theorem sub3_zero (a : Fin 3) : sub3 a f3_0 = a := by
  fin_cases a <;> native_decide

private def linearWord (free : QaryWord 3 10) : QaryWord 3 13 :=
  fun i =>
    if i.val = 0 then neg3 (add3List [free f10_0, free f10_1, free f10_2, free f10_3,
      free f10_4, free f10_5, free f10_6, free f10_7])
    else if i.val = 1 then free f10_0
    else if i.val = 2 then free f10_1
    else if i.val = 3 then free f10_2
    else if i.val = 4 then free f10_3
    else if i.val = 5 then free f10_4
    else if i.val = 6 then free f10_5
    else if i.val = 7 then free f10_6
    else if i.val = 8 then free f10_7
    else if i.val = 9 then neg3 (add3List [free f10_2, free f10_3, free f10_4,
      mul3 2 (free f10_5), mul3 2 (free f10_6), mul3 2 (free f10_7), free f10_8, free f10_9])
    else if i.val = 10 then free f10_8
    else if i.val = 11 then free f10_9
    else neg3 (add3List [free f10_0, mul3 2 (free f10_1), free f10_3, mul3 2 (free f10_4),
      free f10_6, mul3 2 (free f10_7), free f10_8, mul3 2 (free f10_9)])

private def linearFree (w : QaryWord 3 13) : QaryWord 3 10 := fun i =>
  if i.val = 0 then w 1
  else if i.val = 1 then w 2
  else if i.val = 2 then w 3
  else if i.val = 3 then w 4
  else if i.val = 4 then w 5
  else if i.val = 5 then w 6
  else if i.val = 6 then w 7
  else if i.val = 7 then w 8
  else if i.val = 8 then w 10
  else w 11

private def zSyn0 (w : QaryWord 3 13) : ZMod 3 :=
  asZ3 (w 0) + asZ3 (w 1) + asZ3 (w 2) + asZ3 (w 3) + asZ3 (w 4) +
  asZ3 (w 5) + asZ3 (w 6) + asZ3 (w 7) + asZ3 (w 8)

private def zSyn1 (w : QaryWord 3 13) : ZMod 3 :=
  asZ3 (w 9) + asZ3 (w 3) + asZ3 (w 4) + asZ3 (w 5) +
  2 * asZ3 (w 6) + 2 * asZ3 (w 7) + 2 * asZ3 (w 8) +
  asZ3 (w 10) + asZ3 (w 11)

private def zSyn2 (w : QaryWord 3 13) : ZMod 3 :=
  asZ3 (w 12) + asZ3 (w 1) + 2 * asZ3 (w 2) + asZ3 (w 4) +
  2 * asZ3 (w 5) + asZ3 (w 7) + 2 * asZ3 (w 8) +
  asZ3 (w 10) + 2 * asZ3 (w 11)

private def IsLinearWord (w : QaryWord 3 13) : Prop :=
  zSyn0 w = 0 ∧ zSyn1 w = 0 ∧ zSyn2 w = 0

private instance (w : QaryWord 3 13) : Decidable (IsLinearWord w) := by
  unfold IsLinearWord
  infer_instance

set_option maxRecDepth 20000 in
private theorem row0_zero_solve
    (p a b c d e f g h : Fin 3)
    (hz : asZ3 p + asZ3 a + asZ3 b + asZ3 c + asZ3 d + asZ3 e +
        asZ3 f + asZ3 g + asZ3 h = 0) :
    neg3 (add3List [a, b, c, d, e, f, g, h]) = p := by
  revert p a b c d e f g h
  covering_decide

set_option maxRecDepth 20000 in
private theorem row1_zero_solve
    (p c d e f g h a b : Fin 3)
    (hz : asZ3 p + asZ3 c + asZ3 d + asZ3 e + 2 * asZ3 f +
        2 * asZ3 g + 2 * asZ3 h + asZ3 a + asZ3 b = 0) :
    neg3 (add3List [c, d, e, mul3 2 f, mul3 2 g, mul3 2 h, a, b]) = p := by
  revert p c d e f g h a b
  covering_decide

set_option maxRecDepth 20000 in
private theorem row2_zero_solve
    (p a b d e g h i j : Fin 3)
    (hz : asZ3 p + asZ3 a + 2 * asZ3 b + asZ3 d + 2 * asZ3 e +
        asZ3 g + 2 * asZ3 h + asZ3 i + 2 * asZ3 j = 0) :
    neg3 (add3List [a, mul3 2 b, d, mul3 2 e, g, mul3 2 h, i, mul3 2 j]) = p := by
  revert p a b d e g h i j
  covering_decide

private theorem linearWord_linearFree_eq_of_isLinear (w : QaryWord 3 13)
    (h : IsLinearWord w) : linearWord (linearFree w) = w := by
  rcases h with ⟨h0, h1, h2⟩
  have h0w : neg3 (add3List [w 1, w 2, w 3, w 4, w 5, w 6, w 7, w 8]) = w 0 :=
    row0_zero_solve (w 0) (w 1) (w 2) (w 3) (w 4) (w 5) (w 6) (w 7) (w 8) (by
      simpa [zSyn0] using h0)
  have h1w : neg3 (add3List [w 3, w 4, w 5, mul3 2 (w 6), mul3 2 (w 7),
      mul3 2 (w 8), w 10, w 11]) = w 9 :=
    row1_zero_solve (w 9) (w 3) (w 4) (w 5) (w 6) (w 7) (w 8) (w 10) (w 11) (by
      simpa [zSyn1] using h1)
  have h2w : neg3 (add3List [w 1, mul3 2 (w 2), w 4, mul3 2 (w 5), w 7,
      mul3 2 (w 8), w 10, mul3 2 (w 11)]) = w 12 :=
    row2_zero_solve (w 12) (w 1) (w 2) (w 4) (w 5) (w 7) (w 8) (w 10) (w 11) (by
      simpa [zSyn2] using h2)
  funext i
  fin_cases i <;> simp [linearWord, linearFree, h0w, h1w, h2w]

private def linearCode : Finset (QaryWord 3 13) :=
  Finset.univ.filter IsLinearWord

private theorem linearCode_subset_generated :
    linearCode ⊆ (Finset.univ : Finset (QaryWord 3 10)).image linearWord := by
  intro w hw
  simp only [linearCode, Finset.mem_filter, Finset.mem_univ, true_and] at hw
  exact Finset.mem_image.mpr ⟨linearFree w, Finset.mem_univ _,
    linearWord_linearFree_eq_of_isLinear w hw⟩

private def z3Component (z : ZMod 3) : Fin 3 :=
  ⟨z.val, ZMod.val_lt z⟩

private theorem z3Component_inj {a b : ZMod 3}
    (h : z3Component a = z3Component b) : a = b := by
  apply ZMod.val_injective 3
  exact congrArg Fin.val h

private def packSyndrome (s0 s1 s2 : Fin 3) : Fin 27 :=
  ⟨s0.val + 3 * s1.val + 9 * s2.val, by omega⟩

private def syndromeIndex (w : QaryWord 3 13) : Fin 27 :=
  packSyndrome (z3Component (zSyn0 w)) (z3Component (zSyn1 w)) (z3Component (zSyn2 w))

private theorem packSyndrome_inj (a0 a1 a2 b0 b1 b2 : Fin 3)
    (h : packSyndrome a0 a1 a2 = packSyndrome b0 b1 b2) :
    a0 = b0 ∧ a1 = b1 ∧ a2 = b2 := by
  have hv := congrArg Fin.val h
  simp [packSyndrome] at hv
  have h0 : a0.val = b0.val := by omega
  have h1 : a1.val = b1.val := by omega
  have h2 : a2.val = b2.val := by omega
  exact ⟨Fin.ext h0, Fin.ext h1, Fin.ext h2⟩

private def syndromeDigit (s : Fin 27) (row : Nat) : Fin 3 :=
  if row = 0 then ⟨s.val % 3, by omega⟩
  else if row = 1 then ⟨(s.val / 3) % 3, by omega⟩
  else ⟨(s.val / 9) % 3, by omega⟩

private def inv3 (a : Fin 3) : Nat :=
  if a.val = 2 then 2 else 1

private def support (w : QaryWord 3 13) : Finset (Fin 13) :=
  Finset.univ.filter (fun i => w i ≠ f3_0)

private def correction (s : Fin 27) : QaryWord 3 13 :=
  let s0 := syndromeDigit s 0
  let s1 := syndromeDigit s 1
  let s2 := syndromeDigit s 2
  if s0 ≠ f3_0 then
    let a := mul3 (inv3 s0) s1
    let b := mul3 (inv3 s0) s2
    let pos : Fin 13 := ⟨3 * a.val + b.val, by omega⟩
    fun i => if i = pos then s0 else f3_0
  else if s1 ≠ f3_0 then
    let b := mul3 (inv3 s1) s2
    let pos : Fin 13 := ⟨9 + b.val, by omega⟩
    fun i => if i = pos then s1 else f3_0
  else
    fun i => if i.val = 12 then s2 else f3_0

set_option maxRecDepth 20000 in
private theorem correction_syndrome : ∀ s : Fin 27, syndromeIndex (correction s) = s := by
  native_decide

set_option maxRecDepth 20000 in
private theorem correction_weight : ∀ s : Fin 27, (support (correction s)).card <= 1 := by
  native_decide

private def subtractError (x e : QaryWord 3 13) : QaryWord 3 13 :=
  fun i => sub3 (x i) (e i)

private theorem subtractError_isLinear_of_matching (x e : QaryWord 3 13)
    (h0 : zSyn0 e = zSyn0 x) (h1 : zSyn1 e = zSyn1 x) (h2 : zSyn2 e = zSyn2 x) :
    IsLinearWord (subtractError x e) := by
  constructor
  · unfold zSyn0 subtractError
    simp [asZ3_sub3]
    have hz0 : zSyn0 x - zSyn0 e = 0 := by rw [← h0]; ring
    have hz : (asZ3 (x 0) + asZ3 (x 1) + asZ3 (x 2) + asZ3 (x 3) + asZ3 (x 4) +
        asZ3 (x 5) + asZ3 (x 6) + asZ3 (x 7) + asZ3 (x 8)) -
        (asZ3 (e 0) + asZ3 (e 1) + asZ3 (e 2) + asZ3 (e 3) + asZ3 (e 4) +
        asZ3 (e 5) + asZ3 (e 6) + asZ3 (e 7) + asZ3 (e 8)) = 0 := by
      simpa [zSyn0] using hz0
    calc
      asZ3 (x 0) - asZ3 (e 0) + (asZ3 (x 1) - asZ3 (e 1)) +
          (asZ3 (x 2) - asZ3 (e 2)) + (asZ3 (x 3) - asZ3 (e 3)) +
          (asZ3 (x 4) - asZ3 (e 4)) + (asZ3 (x 5) - asZ3 (e 5)) +
          (asZ3 (x 6) - asZ3 (e 6)) + (asZ3 (x 7) - asZ3 (e 7)) +
          (asZ3 (x 8) - asZ3 (e 8))
          = (asZ3 (x 0) + asZ3 (x 1) + asZ3 (x 2) + asZ3 (x 3) + asZ3 (x 4) +
            asZ3 (x 5) + asZ3 (x 6) + asZ3 (x 7) + asZ3 (x 8)) -
            (asZ3 (e 0) + asZ3 (e 1) + asZ3 (e 2) + asZ3 (e 3) + asZ3 (e 4) +
            asZ3 (e 5) + asZ3 (e 6) + asZ3 (e 7) + asZ3 (e 8)) := by ring
      _ = 0 := hz
  constructor
  · unfold zSyn1 subtractError
    simp [asZ3_sub3]
    have hz1 : zSyn1 x - zSyn1 e = 0 := by rw [← h1]; ring
    have hz : (asZ3 (x 9) + asZ3 (x 3) + asZ3 (x 4) + asZ3 (x 5) +
        2 * asZ3 (x 6) + 2 * asZ3 (x 7) + 2 * asZ3 (x 8) + asZ3 (x 10) + asZ3 (x 11)) -
        (asZ3 (e 9) + asZ3 (e 3) + asZ3 (e 4) + asZ3 (e 5) +
        2 * asZ3 (e 6) + 2 * asZ3 (e 7) + 2 * asZ3 (e 8) + asZ3 (e 10) + asZ3 (e 11)) = 0 := by
      simpa [zSyn1] using hz1
    calc
      asZ3 (x 9) - asZ3 (e 9) + (asZ3 (x 3) - asZ3 (e 3)) +
          (asZ3 (x 4) - asZ3 (e 4)) + (asZ3 (x 5) - asZ3 (e 5)) +
          2 * (asZ3 (x 6) - asZ3 (e 6)) + 2 * (asZ3 (x 7) - asZ3 (e 7)) +
          2 * (asZ3 (x 8) - asZ3 (e 8)) + (asZ3 (x 10) - asZ3 (e 10)) +
          (asZ3 (x 11) - asZ3 (e 11))
          = (asZ3 (x 9) + asZ3 (x 3) + asZ3 (x 4) + asZ3 (x 5) +
            2 * asZ3 (x 6) + 2 * asZ3 (x 7) + 2 * asZ3 (x 8) + asZ3 (x 10) + asZ3 (x 11)) -
            (asZ3 (e 9) + asZ3 (e 3) + asZ3 (e 4) + asZ3 (e 5) +
            2 * asZ3 (e 6) + 2 * asZ3 (e 7) + 2 * asZ3 (e 8) + asZ3 (e 10) + asZ3 (e 11)) := by ring
      _ = 0 := hz
  · unfold zSyn2 subtractError
    simp [asZ3_sub3]
    have hz2 : zSyn2 x - zSyn2 e = 0 := by rw [← h2]; ring
    have hz : (asZ3 (x 12) + asZ3 (x 1) + 2 * asZ3 (x 2) + asZ3 (x 4) +
        2 * asZ3 (x 5) + asZ3 (x 7) + 2 * asZ3 (x 8) + asZ3 (x 10) + 2 * asZ3 (x 11)) -
        (asZ3 (e 12) + asZ3 (e 1) + 2 * asZ3 (e 2) + asZ3 (e 4) +
        2 * asZ3 (e 5) + asZ3 (e 7) + 2 * asZ3 (e 8) + asZ3 (e 10) + 2 * asZ3 (e 11)) = 0 := by
      simpa [zSyn2] using hz2
    calc
      asZ3 (x 12) - asZ3 (e 12) + (asZ3 (x 1) - asZ3 (e 1)) +
          2 * (asZ3 (x 2) - asZ3 (e 2)) + (asZ3 (x 4) - asZ3 (e 4)) +
          2 * (asZ3 (x 5) - asZ3 (e 5)) + (asZ3 (x 7) - asZ3 (e 7)) +
          2 * (asZ3 (x 8) - asZ3 (e 8)) + (asZ3 (x 10) - asZ3 (e 10)) +
          2 * (asZ3 (x 11) - asZ3 (e 11))
          = (asZ3 (x 12) + asZ3 (x 1) + 2 * asZ3 (x 2) + asZ3 (x 4) +
            2 * asZ3 (x 5) + asZ3 (x 7) + 2 * asZ3 (x 8) + asZ3 (x 10) + 2 * asZ3 (x 11)) -
            (asZ3 (e 12) + asZ3 (e 1) + 2 * asZ3 (e 2) + asZ3 (e 4) +
            2 * asZ3 (e 5) + asZ3 (e 7) + 2 * asZ3 (e 8) + asZ3 (e 10) + 2 * asZ3 (e 11)) := by ring
      _ = 0 := hz

private theorem subtractError_dist_le_of_support (x e : QaryWord 3 13)
    (hw : (support e).card <= 1) :
    hammingDist x (subtractError x e) <= 1 := by
  have hsubset : (Finset.univ.filter fun i : Fin 13 => x i ≠ subtractError x e i) ⊆ support e := by
    intro i hi
    simp only [support, Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
    by_contra hne
    have heq : e i = f3_0 := by simpa using hne
    apply hi
    unfold subtractError
    rw [heq]
    exact (sub3_zero (x i)).symm
  calc
    hammingDist x (subtractError x e)
        = (Finset.univ.filter fun i : Fin 13 => x i ≠ subtractError x e i).card := rfl
    _ <= (support e).card := Finset.card_le_card hsubset
    _ <= 1 := hw

private def linearRepair (x : QaryWord 3 13) : QaryWord 3 13 :=
  subtractError x (correction (syndromeIndex x))

private theorem linearRepair_isLinear (x : QaryWord 3 13) : IsLinearWord (linearRepair x) := by
  let e := correction (syndromeIndex x)
  have hidx : syndromeIndex e = syndromeIndex x := by
    simpa [e] using correction_syndrome (syndromeIndex x)
  have hcomp := packSyndrome_inj (z3Component (zSyn0 e)) (z3Component (zSyn1 e))
    (z3Component (zSyn2 e)) (z3Component (zSyn0 x)) (z3Component (zSyn1 x))
    (z3Component (zSyn2 x)) (by simpa [syndromeIndex] using hidx)
  rcases hcomp with ⟨h0c, h1c, h2c⟩
  exact subtractError_isLinear_of_matching x e
    (z3Component_inj h0c) (z3Component_inj h1c) (z3Component_inj h2c)

private theorem linearRepair_dist (x : QaryWord 3 13) : hammingDist x (linearRepair x) <= 1 := by
  simpa [linearRepair] using subtractError_dist_le_of_support x (correction (syndromeIndex x))
    (correction_weight (syndromeIndex x))

private theorem linearCode_covers : CoversFinset linearCode 1 := by
  intro x
  refine ⟨linearRepair x, ?_, linearRepair_dist x⟩
  simp only [linearCode, Finset.mem_filter, Finset.mem_univ, true_and]
  exact linearRepair_isLinear x

private theorem linearCode_card : linearCode.card <= 59049 := by
  calc
    linearCode.card <= ((Finset.univ : Finset (QaryWord 3 10)).image linearWord).card :=
      Finset.card_le_card linearCode_subset_generated
    _ <= (Finset.univ : Finset (QaryWord 3 10)).card := Finset.card_image_le
    _ = 59049 := by
      rw [Finset.card_univ, qaryWord_card]
      norm_num

def explicit : ExplicitQaryUpper 3 13 1 59049 :=
  { code := linearCode
    card_le := linearCode_card
    covers := linearCode_covers }

end TernaryHamming

/-! ## Registered source -/

def hammingPerfectUpperName : String :=
  "lean_hamming_perfect_upper"

def hammingPerfectUpper (q n r : Nat) : Nat :=
  if q = 2 ∧ n = 23 ∧ r = 3 then 4096
  else if q = 3 ∧ n = 13 ∧ r = 1 then 59049
  else if q = 5 ∧ n = 6 ∧ r = 1 then 625
  else if q = 7 ∧ n = 8 ∧ r = 1 then 117649
  else trivialUpper q n r

theorem hammingPerfectUpper_valid (q n r : Nat) :
    QaryKUpper q n r (hammingPerfectUpper q n r) := by
  by_cases h23 : q = 2 ∧ n = 23 ∧ r = 3
  · rcases h23 with ⟨rfl, rfl, rfl⟩
    simpa [hammingPerfectUpper] using binaryGolay23Explicit.toUpper
  · by_cases h313 : q = 3 ∧ n = 13 ∧ r = 1
    · rcases h313 with ⟨rfl, rfl, rfl⟩
      simpa [hammingPerfectUpper] using TernaryHamming.explicit.toUpper
    · by_cases h56 : q = 5 ∧ n = 6 ∧ r = 1
      · rcases h56 with ⟨rfl, rfl, rfl⟩
        simpa [hammingPerfectUpper] using QuinaryHamming.explicit.toUpper
      · by_cases h78 : q = 7 ∧ n = 8 ∧ r = 1
        · rcases h78 with ⟨rfl, rfl, rfl⟩
          simpa [hammingPerfectUpper] using SeptenaryHamming.explicit.toUpper
        · simp [hammingPerfectUpper, h23, h313, h56, h78]
          exact trivialUpper_valid q n r

def hammingPerfectUpperSource : UpperBoundSource where
  value := hammingPerfectUpper
  trace := fun q n r =>
    .primitive hammingPerfectUpperName (hammingPerfectUpper_valid q n r)

end Database
end CoveringCodes
