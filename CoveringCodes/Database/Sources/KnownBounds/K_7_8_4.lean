import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Known-bound upper certificate for K_7(8,4)

This module formalizes the systematic linear construction from
`q7-n8-r4-343-known-bound-lean-certificate-notes.md`.

The code has three free coordinates and five parity-check equations.  Coverage
is proved by a compact syndrome-repair procedure: a syndrome of weight at most
four is repaired directly; otherwise one of the three non-systematic columns
with a nonzero scalar cancels at least two syndrome coordinates.
-/

namespace CoveringCodes
namespace Database

private abbrev f7_0 : Fin 7 := ⟨0, by decide⟩
private abbrev f7_1 : Fin 7 := ⟨1, by decide⟩
private abbrev f7_2 : Fin 7 := ⟨2, by decide⟩
private abbrev f7_3 : Fin 7 := ⟨3, by decide⟩
private abbrev f7_4 : Fin 7 := ⟨4, by decide⟩
private abbrev f7_6 : Fin 7 := ⟨6, by decide⟩
private abbrev f3_0 : Fin 3 := ⟨0, by decide⟩
private abbrev f3_1 : Fin 3 := ⟨1, by decide⟩
private abbrev f3_2 : Fin 3 := ⟨2, by decide⟩

private def add7 (a b : Fin 7) : Fin 7 := ⟨(a.val + b.val) % 7, by omega⟩
private def sub7 (a b : Fin 7) : Fin 7 := ⟨(7 + a.val - b.val) % 7, by omega⟩
private def mul7 (k : Nat) (a : Fin 7) : Fin 7 := ⟨(k * a.val) % 7, by omega⟩
private def neg7 (a : Fin 7) : Fin 7 := ⟨(7 - a.val) % 7, by omega⟩
private def asZ7 (a : Fin 7) : ZMod 7 := a.val

private def add7_3 (a b c : Fin 7) : Fin 7 := add7 (add7 a b) c

private theorem asZ7_sub7 (a b : Fin 7) :
    asZ7 (sub7 a b) = asZ7 a - asZ7 b := by
  fin_cases a <;> fin_cases b <;> native_decide

private theorem sub7_zero (a : Fin 7) : sub7 a f7_0 = a := by
  fin_cases a <;> native_decide

private theorem row0_zero_solve3 (a b c e : Fin 7)
    (h : asZ7 a + asZ7 b + asZ7 c + asZ7 e = 0) :
    neg7 (add7_3 a b c) = e := by
  revert a b c e
  covering_decide

private theorem row1_zero_solve3 (a b c e : Fin 7)
    (h : asZ7 a + 2 * asZ7 b + 3 * asZ7 c + asZ7 e = 0) :
    neg7 (add7_3 a (mul7 2 b) (mul7 3 c)) = e := by
  revert a b c e
  covering_decide

private theorem row2_zero_solve3 (a b c e : Fin 7)
    (h : asZ7 a + 4 * asZ7 b + 2 * asZ7 c + asZ7 e = 0) :
    neg7 (add7_3 a (mul7 4 b) (mul7 2 c)) = e := by
  revert a b c e
  covering_decide

private theorem row3_zero_solve3 (a b c e : Fin 7)
    (h : asZ7 a + asZ7 b + 6 * asZ7 c + asZ7 e = 0) :
    neg7 (add7_3 a b (mul7 6 c)) = e := by
  revert a b c e
  covering_decide

private theorem row4_zero_solve3 (a b c e : Fin 7)
    (h : asZ7 a + 2 * asZ7 b + 4 * asZ7 c + asZ7 e = 0) :
    neg7 (add7_3 a (mul7 2 b) (mul7 4 c)) = e := by
  revert a b c e
  covering_decide

private def linearWord (free : QaryWord 7 3) : QaryWord 7 8 :=
  fun i =>
    if i.val = 0 then neg7 (add7_3 (free f3_0) (free f3_1) (free f3_2))
    else if i.val = 1 then neg7 (add7_3 (free f3_0) (mul7 2 (free f3_1)) (mul7 3 (free f3_2)))
    else if i.val = 2 then neg7 (add7_3 (free f3_0) (mul7 4 (free f3_1)) (mul7 2 (free f3_2)))
    else if i.val = 3 then neg7 (add7_3 (free f3_0) (free f3_1) (mul7 6 (free f3_2)))
    else if i.val = 4 then neg7 (add7_3 (free f3_0) (mul7 2 (free f3_1)) (mul7 4 (free f3_2)))
    else if i.val = 5 then free f3_0
    else if i.val = 6 then free f3_1
    else free f3_2

private def linearFree (w : QaryWord 7 8) : QaryWord 7 3 := fun i =>
  if i.val = 0 then w 5 else if i.val = 1 then w 6 else w 7

private def zSyn0 (w : QaryWord 7 8) : ZMod 7 :=
  asZ7 (w 0) + asZ7 (w 5) + asZ7 (w 6) + asZ7 (w 7)

private def zSyn1 (w : QaryWord 7 8) : ZMod 7 :=
  asZ7 (w 1) + asZ7 (w 5) + 2 * asZ7 (w 6) + 3 * asZ7 (w 7)

private def zSyn2 (w : QaryWord 7 8) : ZMod 7 :=
  asZ7 (w 2) + asZ7 (w 5) + 4 * asZ7 (w 6) + 2 * asZ7 (w 7)

private def zSyn3 (w : QaryWord 7 8) : ZMod 7 :=
  asZ7 (w 3) + asZ7 (w 5) + asZ7 (w 6) + 6 * asZ7 (w 7)

private def zSyn4 (w : QaryWord 7 8) : ZMod 7 :=
  asZ7 (w 4) + asZ7 (w 5) + 2 * asZ7 (w 6) + 4 * asZ7 (w 7)

private def IsLinearWord (w : QaryWord 7 8) : Prop :=
  zSyn0 w = 0 ∧ zSyn1 w = 0 ∧ zSyn2 w = 0 ∧ zSyn3 w = 0 ∧ zSyn4 w = 0

private instance (w : QaryWord 7 8) : Decidable (IsLinearWord w) := by
  unfold IsLinearWord
  infer_instance

private theorem linearWord_linearFree_eq_of_isLinear (w : QaryWord 7 8)
    (h : IsLinearWord w) : linearWord (linearFree w) = w := by
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  have h0w : neg7 (add7_3 (w 5) (w 6) (w 7)) = w 0 :=
    row0_zero_solve3 (w 5) (w 6) (w 7) (w 0) (by
      simpa [zSyn0, add_comm, add_left_comm, add_assoc] using h0)
  have h1w : neg7 (add7_3 (w 5) (mul7 2 (w 6)) (mul7 3 (w 7))) = w 1 :=
    row1_zero_solve3 (w 5) (w 6) (w 7) (w 1) (by
      simpa [zSyn1, add_comm, add_left_comm, add_assoc] using h1)
  have h2w : neg7 (add7_3 (w 5) (mul7 4 (w 6)) (mul7 2 (w 7))) = w 2 :=
    row2_zero_solve3 (w 5) (w 6) (w 7) (w 2) (by
      simpa [zSyn2, add_comm, add_left_comm, add_assoc] using h2)
  have h3w : neg7 (add7_3 (w 5) (w 6) (mul7 6 (w 7))) = w 3 :=
    row3_zero_solve3 (w 5) (w 6) (w 7) (w 3) (by
      simpa [zSyn3, add_comm, add_left_comm, add_assoc] using h3)
  have h4w : neg7 (add7_3 (w 5) (mul7 2 (w 6)) (mul7 4 (w 7))) = w 4 :=
    row4_zero_solve3 (w 5) (w 6) (w 7) (w 4) (by
      simpa [zSyn4, add_comm, add_left_comm, add_assoc] using h4)
  funext i
  fin_cases i <;> simp [linearWord, linearFree, h0w, h1w, h2w, h3w, h4w]

private def linearCode (_ : Unit) : Finset (QaryWord 7 8) :=
  Finset.univ.filter IsLinearWord

private theorem linearCode_subset_generated :
    (linearCode ()) ⊆ (Finset.univ : Finset (QaryWord 7 3)).image linearWord := by
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

private def packSyndrome (s0 s1 s2 s3 s4 : Fin 7) : Fin 16807 :=
  ⟨s0.val + 7 * s1.val + 49 * s2.val + 343 * s3.val + 2401 * s4.val, by omega⟩

private def syndromeIndex (w : QaryWord 7 8) : Fin 16807 :=
  packSyndrome (z7Component (zSyn0 w)) (z7Component (zSyn1 w))
    (z7Component (zSyn2 w)) (z7Component (zSyn3 w)) (z7Component (zSyn4 w))

private theorem packSyndrome_inj
    (a0 a1 a2 a3 a4 b0 b1 b2 b3 b4 : Fin 7)
    (h : packSyndrome a0 a1 a2 a3 a4 = packSyndrome b0 b1 b2 b3 b4) :
    a0 = b0 ∧ a1 = b1 ∧ a2 = b2 ∧ a3 = b3 ∧ a4 = b4 := by
  have hv := congrArg Fin.val h
  simp [packSyndrome] at hv
  have h0 : a0.val = b0.val := by omega
  have h1 : a1.val = b1.val := by omega
  have h2 : a2.val = b2.val := by omega
  have h3 : a3.val = b3.val := by omega
  have h4 : a4.val = b4.val := by omega
  exact ⟨Fin.ext h0, Fin.ext h1, Fin.ext h2, Fin.ext h3, Fin.ext h4⟩

private def digit7 (value place : Nat) : Fin 7 :=
  ⟨(value / place) % 7, by omega⟩

private def syndromeDigit (s : Fin 16807) (row : Nat) : Fin 7 :=
  if row = 0 then digit7 s.val 1
  else if row = 1 then digit7 s.val 7
  else if row = 2 then digit7 s.val 49
  else if row = 3 then digit7 s.val 343
  else digit7 s.val 2401

private def support (w : QaryWord 7 8) : Finset (Fin 8) :=
  Finset.univ.filter (fun i => w i ≠ f7_0)

private def basisCorrection (s : Fin 16807) : QaryWord 7 8 :=
  fun i =>
    if i.val = 0 then syndromeDigit s 0
    else if i.val = 1 then syndromeDigit s 1
    else if i.val = 2 then syndromeDigit s 2
    else if i.val = 3 then syndromeDigit s 3
    else if i.val = 4 then syndromeDigit s 4
    else f7_0

private def extraCoeff (slot row : Nat) : Fin 7 :=
  if slot = 0 then f7_1
  else if slot = 1 then
    if row = 0 then f7_1
    else if row = 1 then f7_2
    else if row = 2 then f7_4
    else if row = 3 then f7_1
    else f7_2
  else
    if row = 0 then f7_1
    else if row = 1 then f7_3
    else if row = 2 then f7_2
    else if row = 3 then f7_6
    else f7_4

private def invExtraCoeff (slot row : Nat) : Nat :=
  if (extraCoeff slot row).val = 2 then 4
  else if (extraCoeff slot row).val = 3 then 5
  else if (extraCoeff slot row).val = 4 then 2
  else if (extraCoeff slot row).val = 6 then 6
  else 1

private def ratioForSlot (s : Fin 16807) (slot row : Nat) : Fin 7 :=
  mul7 (invExtraCoeff slot row) (syndromeDigit s row)

private def duplicateScalarForSlot (s : Fin 16807) (slot : Nat) : Option (Fin 7) :=
  let r0 := ratioForSlot s slot 0
  let r1 := ratioForSlot s slot 1
  let r2 := ratioForSlot s slot 2
  let r3 := ratioForSlot s slot 3
  let r4 := ratioForSlot s slot 4
  if r0 = r1 then some r0
  else if r0 = r2 then some r0
  else if r0 = r3 then some r0
  else if r0 = r4 then some r0
  else if r1 = r2 then some r1
  else if r1 = r3 then some r1
  else if r1 = r4 then some r1
  else if r2 = r3 then some r2
  else if r2 = r4 then some r2
  else if r3 = r4 then some r3
  else none

private def extraCandidate (s : Fin 16807) (slot : Nat) (scalar : Fin 7) : QaryWord 7 8 :=
  fun i =>
    if i.val = 0 then sub7 (syndromeDigit s 0) (mul7 (extraCoeff slot 0).val scalar)
    else if i.val = 1 then sub7 (syndromeDigit s 1) (mul7 (extraCoeff slot 1).val scalar)
    else if i.val = 2 then sub7 (syndromeDigit s 2) (mul7 (extraCoeff slot 2).val scalar)
    else if i.val = 3 then sub7 (syndromeDigit s 3) (mul7 (extraCoeff slot 3).val scalar)
    else if i.val = 4 then sub7 (syndromeDigit s 4) (mul7 (extraCoeff slot 4).val scalar)
    else if i.val = 5 + slot then scalar
    else f7_0

private def syndromeCorrection (s : Fin 16807) : QaryWord 7 8 :=
  if (support (basisCorrection s)).card <= 4 then basisCorrection s
  else
    match duplicateScalarForSlot s 0 with
    | some scalar => extraCandidate s 0 scalar
    | none =>
      match duplicateScalarForSlot s 1 with
      | some scalar => extraCandidate s 1 scalar
      | none =>
        match duplicateScalarForSlot s 2 with
        | some scalar => extraCandidate s 2 scalar
        | none => basisCorrection s

set_option maxRecDepth 50000 in
private theorem table_syndrome : ∀ s : Fin 16807, syndromeIndex (syndromeCorrection s) = s := by
  native_decide

set_option maxRecDepth 50000 in
private theorem table_weight : ∀ s : Fin 16807, (support (syndromeCorrection s)).card <= 4 := by
  native_decide

private def subtractError (x e : QaryWord 7 8) : QaryWord 7 8 :=
  fun i => sub7 (x i) (e i)

private theorem subtractError_isLinear_of_matching (x e : QaryWord 7 8)
    (h0 : zSyn0 e = zSyn0 x) (h1 : zSyn1 e = zSyn1 x)
    (h2 : zSyn2 e = zSyn2 x) (h3 : zSyn3 e = zSyn3 x)
    (h4 : zSyn4 e = zSyn4 x) :
    IsLinearWord (subtractError x e) := by
  constructor
  · unfold zSyn0 subtractError
    simp [asZ7_sub7]
    have hz0 : zSyn0 x - zSyn0 e = 0 := by
      rw [← h0]
      ring
    have hz : (asZ7 (x 0) + asZ7 (x 5) + asZ7 (x 6) + asZ7 (x 7)) -
        (asZ7 (e 0) + asZ7 (e 5) + asZ7 (e 6) + asZ7 (e 7)) = 0 := by
      simpa [zSyn0] using hz0
    calc
      asZ7 (x 0) - asZ7 (e 0) + (asZ7 (x 5) - asZ7 (e 5)) +
          (asZ7 (x 6) - asZ7 (e 6)) + (asZ7 (x 7) - asZ7 (e 7))
          = (asZ7 (x 0) + asZ7 (x 5) + asZ7 (x 6) + asZ7 (x 7)) -
            (asZ7 (e 0) + asZ7 (e 5) + asZ7 (e 6) + asZ7 (e 7)) := by ring
      _ = 0 := hz
  constructor
  · unfold zSyn1 subtractError
    simp [asZ7_sub7]
    have hz1 : zSyn1 x - zSyn1 e = 0 := by
      rw [← h1]
      ring
    have hz : (asZ7 (x 1) + asZ7 (x 5) + 2 * asZ7 (x 6) + 3 * asZ7 (x 7)) -
        (asZ7 (e 1) + asZ7 (e 5) + 2 * asZ7 (e 6) + 3 * asZ7 (e 7)) = 0 := by
      simpa [zSyn1] using hz1
    calc
      asZ7 (x 1) - asZ7 (e 1) + (asZ7 (x 5) - asZ7 (e 5)) +
          2 * (asZ7 (x 6) - asZ7 (e 6)) + 3 * (asZ7 (x 7) - asZ7 (e 7))
          = (asZ7 (x 1) + asZ7 (x 5) + 2 * asZ7 (x 6) + 3 * asZ7 (x 7)) -
            (asZ7 (e 1) + asZ7 (e 5) + 2 * asZ7 (e 6) + 3 * asZ7 (e 7)) := by ring
      _ = 0 := hz
  constructor
  · unfold zSyn2 subtractError
    simp [asZ7_sub7]
    have hz2 : zSyn2 x - zSyn2 e = 0 := by
      rw [← h2]
      ring
    have hz : (asZ7 (x 2) + asZ7 (x 5) + 4 * asZ7 (x 6) + 2 * asZ7 (x 7)) -
        (asZ7 (e 2) + asZ7 (e 5) + 4 * asZ7 (e 6) + 2 * asZ7 (e 7)) = 0 := by
      simpa [zSyn2] using hz2
    calc
      asZ7 (x 2) - asZ7 (e 2) + (asZ7 (x 5) - asZ7 (e 5)) +
          4 * (asZ7 (x 6) - asZ7 (e 6)) + 2 * (asZ7 (x 7) - asZ7 (e 7))
          = (asZ7 (x 2) + asZ7 (x 5) + 4 * asZ7 (x 6) + 2 * asZ7 (x 7)) -
            (asZ7 (e 2) + asZ7 (e 5) + 4 * asZ7 (e 6) + 2 * asZ7 (e 7)) := by ring
      _ = 0 := hz
  constructor
  · unfold zSyn3 subtractError
    simp [asZ7_sub7]
    have hz3 : zSyn3 x - zSyn3 e = 0 := by
      rw [← h3]
      ring
    have hz : (asZ7 (x 3) + asZ7 (x 5) + asZ7 (x 6) + 6 * asZ7 (x 7)) -
        (asZ7 (e 3) + asZ7 (e 5) + asZ7 (e 6) + 6 * asZ7 (e 7)) = 0 := by
      simpa [zSyn3] using hz3
    calc
      asZ7 (x 3) - asZ7 (e 3) + (asZ7 (x 5) - asZ7 (e 5)) +
          (asZ7 (x 6) - asZ7 (e 6)) + 6 * (asZ7 (x 7) - asZ7 (e 7))
          = (asZ7 (x 3) + asZ7 (x 5) + asZ7 (x 6) + 6 * asZ7 (x 7)) -
            (asZ7 (e 3) + asZ7 (e 5) + asZ7 (e 6) + 6 * asZ7 (e 7)) := by ring
      _ = 0 := hz
  · unfold zSyn4 subtractError
    simp [asZ7_sub7]
    have hz4 : zSyn4 x - zSyn4 e = 0 := by
      rw [← h4]
      ring
    have hz : (asZ7 (x 4) + asZ7 (x 5) + 2 * asZ7 (x 6) + 4 * asZ7 (x 7)) -
        (asZ7 (e 4) + asZ7 (e 5) + 2 * asZ7 (e 6) + 4 * asZ7 (e 7)) = 0 := by
      simpa [zSyn4] using hz4
    calc
      asZ7 (x 4) - asZ7 (e 4) + (asZ7 (x 5) - asZ7 (e 5)) +
          2 * (asZ7 (x 6) - asZ7 (e 6)) + 4 * (asZ7 (x 7) - asZ7 (e 7))
          = (asZ7 (x 4) + asZ7 (x 5) + 2 * asZ7 (x 6) + 4 * asZ7 (x 7)) -
            (asZ7 (e 4) + asZ7 (e 5) + 2 * asZ7 (e 6) + 4 * asZ7 (e 7)) := by ring
      _ = 0 := hz

private theorem subtractError_dist_le_of_support (x e : QaryWord 7 8)
    (hw : (support e).card <= 4) :
    hammingDist x (subtractError x e) <= 4 := by
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
    _ <= 4 := hw

private def linearRepair (x : QaryWord 7 8) : QaryWord 7 8 :=
  subtractError x (syndromeCorrection (syndromeIndex x))

private theorem linearRepair_isLinear (x : QaryWord 7 8) : IsLinearWord (linearRepair x) := by
  let e := syndromeCorrection (syndromeIndex x)
  have hidx : syndromeIndex e = syndromeIndex x := by
    simpa [e] using table_syndrome (syndromeIndex x)
  have hcomp := packSyndrome_inj (z7Component (zSyn0 e)) (z7Component (zSyn1 e))
    (z7Component (zSyn2 e)) (z7Component (zSyn3 e)) (z7Component (zSyn4 e))
    (z7Component (zSyn0 x)) (z7Component (zSyn1 x)) (z7Component (zSyn2 x))
    (z7Component (zSyn3 x)) (z7Component (zSyn4 x)) (by simpa [syndromeIndex] using hidx)
  rcases hcomp with ⟨h0c, h1c, h2c, h3c, h4c⟩
  have h0 : zSyn0 e = zSyn0 x := z7Component_inj h0c
  have h1 : zSyn1 e = zSyn1 x := z7Component_inj h1c
  have h2 : zSyn2 e = zSyn2 x := z7Component_inj h2c
  have h3 : zSyn3 e = zSyn3 x := z7Component_inj h3c
  have h4 : zSyn4 e = zSyn4 x := z7Component_inj h4c
  simpa [linearRepair, e] using subtractError_isLinear_of_matching x e h0 h1 h2 h3 h4

private theorem linearRepair_dist (x : QaryWord 7 8) : hammingDist x (linearRepair x) <= 4 := by
  simpa [linearRepair] using subtractError_dist_le_of_support x (syndromeCorrection (syndromeIndex x))
    (table_weight (syndromeIndex x))

private theorem linearCode_covers : CoversFinset (linearCode ()) 4 := by
  intro x
  refine ⟨linearRepair x, ?_, linearRepair_dist x⟩
  simp only [linearCode, Finset.mem_filter, Finset.mem_univ, true_and]
  exact linearRepair_isLinear x

private theorem linearCode_card : (linearCode ()).card <= 343 := by
  calc
    (linearCode ()).card <= ((Finset.univ : Finset (QaryWord 7 3)).image linearWord).card :=
      Finset.card_le_card linearCode_subset_generated
    _ <= (Finset.univ : Finset (QaryWord 7 3)).card := Finset.card_image_le
    _ = 343 := by
      rw [Finset.card_univ, qaryWord_card]
      norm_num

def knownBoundQ7N8R4UpperName : String :=
  "lean_known_bounds_q7_n8_r4_vandermonde_syndrome"

theorem knownBoundQ7N8R4Cert : QaryKUpper 7 8 4 343 :=
  ⟨linearCode (), linearCode_card, linearCode_covers⟩

def knownBoundQ7N8R4Upper (q n r : Nat) : Nat :=
  if q = 7 ∧ n = 8 ∧ r = 4 then 343 else trivialUpper q n r

theorem knownBoundQ7N8R4Upper_valid (q n r : Nat) :
    QaryKUpper q n r (knownBoundQ7N8R4Upper q n r) := by
  by_cases h : q = 7 ∧ n = 8 ∧ r = 4
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [knownBoundQ7N8R4Upper] using knownBoundQ7N8R4Cert
  · simpa [knownBoundQ7N8R4Upper, h] using trivialUpper_valid q n r

def knownBoundQ7N8R4UpperSource : UpperBoundSource where
  value := knownBoundQ7N8R4Upper
  trace := fun q n r =>
    .primitive knownBoundQ7N8R4UpperName (knownBoundQ7N8R4Upper_valid q n r)

end Database
end CoveringCodes
