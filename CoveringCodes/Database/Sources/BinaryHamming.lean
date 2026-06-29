import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

namespace CoveringCodes
namespace Database

namespace BinaryHamming15

private abbrev f2_0 : Fin 2 := ⟨0, by decide⟩
private abbrev f2_1 : Fin 2 := ⟨1, by decide⟩
private abbrev f11_0 : Fin 11 := ⟨0, by decide⟩
private abbrev f11_1 : Fin 11 := ⟨1, by decide⟩
private abbrev f11_2 : Fin 11 := ⟨2, by decide⟩
private abbrev f11_3 : Fin 11 := ⟨3, by decide⟩
private abbrev f11_4 : Fin 11 := ⟨4, by decide⟩
private abbrev f11_5 : Fin 11 := ⟨5, by decide⟩
private abbrev f11_6 : Fin 11 := ⟨6, by decide⟩
private abbrev f11_7 : Fin 11 := ⟨7, by decide⟩
private abbrev f11_8 : Fin 11 := ⟨8, by decide⟩
private abbrev f11_9 : Fin 11 := ⟨9, by decide⟩
private abbrev f11_10 : Fin 11 := ⟨10, by decide⟩
private def asZ2 (a : Fin 2) : ZMod 2 := a.val
private def z2Component (z : ZMod 2) : Fin 2 := ⟨z.val, ZMod.val_lt z⟩
private theorem z2Component_inj {a b : ZMod 2} (h : z2Component a = z2Component b) : a = b := by
  apply ZMod.val_injective 2
  exact congrArg Fin.val h
private theorem z2Component_asZ2 (a : Fin 2) : z2Component (asZ2 a) = a := by
  fin_cases a <;> native_decide
private theorem asZ2_z2Component (z : ZMod 2) : asZ2 (z2Component z) = z := by
  apply ZMod.val_injective 2
  simp [asZ2, z2Component]
private theorem eq_fin2_of_asZ2_eq (a b : Fin 2) (h : asZ2 a = asZ2 b) : a = b := by
  calc
    a = z2Component (asZ2 a) := (z2Component_asZ2 a).symm
    _ = z2Component (asZ2 b) := by rw [h]
    _ = b := z2Component_asZ2 b
private def add2 (a b : Fin 2) : Fin 2 := ⟨(a.val + b.val) % 2, by omega⟩
private theorem asZ2_add2 (a b : Fin 2) : asZ2 (add2 a b) = asZ2 a + asZ2 b := by
  fin_cases a <;> fin_cases b <;> native_decide
private theorem add2_zero (a : Fin 2) : add2 a f2_0 = a := by
  fin_cases a <;> native_decide
private theorem zmod2_add_self (z : ZMod 2) : z + z = 0 := by
  rw [← two_mul z, show (2 : ZMod 2) = 0 by native_decide, zero_mul]
private def freeSyn0 (free : QaryWord 2 11) : ZMod 2 :=
  asZ2 (free f11_0) + asZ2 (free f11_1) + asZ2 (free f11_3) + asZ2 (free f11_4) + asZ2 (free f11_6) + asZ2 (free f11_8) + asZ2 (free f11_10)
private def freeSyn1 (free : QaryWord 2 11) : ZMod 2 :=
  asZ2 (free f11_0) + asZ2 (free f11_2) + asZ2 (free f11_3) + asZ2 (free f11_5) + asZ2 (free f11_6) + asZ2 (free f11_9) + asZ2 (free f11_10)
private def freeSyn2 (free : QaryWord 2 11) : ZMod 2 :=
  asZ2 (free f11_1) + asZ2 (free f11_2) + asZ2 (free f11_3) + asZ2 (free f11_7) + asZ2 (free f11_8) + asZ2 (free f11_9) + asZ2 (free f11_10)
private def freeSyn3 (free : QaryWord 2 11) : ZMod 2 :=
  asZ2 (free f11_4) + asZ2 (free f11_5) + asZ2 (free f11_6) + asZ2 (free f11_7) + asZ2 (free f11_8) + asZ2 (free f11_9) + asZ2 (free f11_10)
private def zSyn0 (w : QaryWord 2 15) : ZMod 2 :=
  asZ2 (w 0) + asZ2 (w 2) + asZ2 (w 4) + asZ2 (w 6) + asZ2 (w 8) + asZ2 (w 10) + asZ2 (w 12) + asZ2 (w 14)
private def zSyn1 (w : QaryWord 2 15) : ZMod 2 :=
  asZ2 (w 1) + asZ2 (w 2) + asZ2 (w 5) + asZ2 (w 6) + asZ2 (w 9) + asZ2 (w 10) + asZ2 (w 13) + asZ2 (w 14)
private def zSyn2 (w : QaryWord 2 15) : ZMod 2 :=
  asZ2 (w 3) + asZ2 (w 4) + asZ2 (w 5) + asZ2 (w 6) + asZ2 (w 11) + asZ2 (w 12) + asZ2 (w 13) + asZ2 (w 14)
private def zSyn3 (w : QaryWord 2 15) : ZMod 2 :=
  asZ2 (w 7) + asZ2 (w 8) + asZ2 (w 9) + asZ2 (w 10) + asZ2 (w 11) + asZ2 (w 12) + asZ2 (w 13) + asZ2 (w 14)
private def IsLinearWord (w : QaryWord 2 15) : Prop :=
  zSyn0 w = 0 ∧ zSyn1 w = 0 ∧ zSyn2 w = 0 ∧ zSyn3 w = 0
private instance (w : QaryWord 2 15) : Decidable (IsLinearWord w) := by
  unfold IsLinearWord
  infer_instance
private theorem parity_zero_solve (p : Fin 2) (s : ZMod 2) (h : asZ2 p + s = 0) :
    z2Component s = p := by
  apply eq_fin2_of_asZ2_eq
  have hp : asZ2 p = s := by
    have h' := congrArg (fun z : ZMod 2 => z + s) h
    simpa [add_assoc, zmod2_add_self] using h'
  simp [asZ2_z2Component, hp]
private def linearWord (free : QaryWord 2 11) : QaryWord 2 15 :=
  fun i =>
    if i.val = 0 then z2Component (freeSyn0 free)
    else if i.val = 1 then z2Component (freeSyn1 free)
    else if i.val = 2 then free f11_0
    else if i.val = 3 then z2Component (freeSyn2 free)
    else if i.val = 4 then free f11_1
    else if i.val = 5 then free f11_2
    else if i.val = 6 then free f11_3
    else if i.val = 7 then z2Component (freeSyn3 free)
    else if i.val = 8 then free f11_4
    else if i.val = 9 then free f11_5
    else if i.val = 10 then free f11_6
    else if i.val = 11 then free f11_7
    else if i.val = 12 then free f11_8
    else if i.val = 13 then free f11_9
    else if i.val = 14 then free f11_10
    else f2_0
private def linearFree (w : QaryWord 2 15) : QaryWord 2 11 := fun i =>
  if i.val = 0 then w 2
  else if i.val = 1 then w 4
  else if i.val = 2 then w 5
  else if i.val = 3 then w 6
  else if i.val = 4 then w 8
  else if i.val = 5 then w 9
  else if i.val = 6 then w 10
  else if i.val = 7 then w 11
  else if i.val = 8 then w 12
  else if i.val = 9 then w 13
  else if i.val = 10 then w 14
  else f2_0
set_option maxHeartbeats 2000000 in
private theorem linearWord_linearFree_eq_of_isLinear (w : QaryWord 2 15)
    (h : IsLinearWord w) : linearWord (linearFree w) = w := by
  rcases h with ⟨h0, h1, h2, h3⟩
  have hw0 : z2Component (freeSyn0 (linearFree w)) = w 0 :=
    parity_zero_solve (w 0) (freeSyn0 (linearFree w)) (by
      simpa [zSyn0, freeSyn0, linearFree, add_comm, add_left_comm, add_assoc] using h0)
  have hw1 : z2Component (freeSyn1 (linearFree w)) = w 1 :=
    parity_zero_solve (w 1) (freeSyn1 (linearFree w)) (by
      simpa [zSyn1, freeSyn1, linearFree, add_comm, add_left_comm, add_assoc] using h1)
  have hw2 : z2Component (freeSyn2 (linearFree w)) = w 3 :=
    parity_zero_solve (w 3) (freeSyn2 (linearFree w)) (by
      simpa [zSyn2, freeSyn2, linearFree, add_comm, add_left_comm, add_assoc] using h2)
  have hw3 : z2Component (freeSyn3 (linearFree w)) = w 7 :=
    parity_zero_solve (w 7) (freeSyn3 (linearFree w)) (by
      simpa [zSyn3, freeSyn3, linearFree, add_comm, add_left_comm, add_assoc] using h3)
  funext i
  fin_cases i <;> simp [linearWord, linearFree, hw0, hw1, hw2, hw3]
private def linearCode (_ : Unit) : Finset (QaryWord 2 15) :=
  (Finset.univ : Finset (QaryWord 2 11)).image linearWord
private def packSyndrome (s0 : Fin 2) (s1 : Fin 2) (s2 : Fin 2) (s3 : Fin 2) : Fin 16 :=
  ⟨s0.val + 2 * s1.val + 4 * s2.val + 8 * s3.val, by omega⟩
private def syndromeIndex (w : QaryWord 2 15) : Fin 16 :=
  packSyndrome (z2Component (zSyn0 w)) (z2Component (zSyn1 w)) (z2Component (zSyn2 w)) (z2Component (zSyn3 w))
private theorem packSyndrome_inj (a0 : Fin 2) (a1 : Fin 2) (a2 : Fin 2) (a3 : Fin 2) (b0 : Fin 2) (b1 : Fin 2) (b2 : Fin 2) (b3 : Fin 2)
    (h : packSyndrome a0 a1 a2 a3 = packSyndrome b0 b1 b2 b3) :
    a0 = b0 ∧ a1 = b1 ∧ a2 = b2 ∧ a3 = b3 := by
  have hv := congrArg Fin.val h
  simp [packSyndrome] at hv
  have h0 : a0.val = b0.val := by omega
  have h1 : a1.val = b1.val := by omega
  have h2 : a2.val = b2.val := by omega
  have h3 : a3.val = b3.val := by omega
  exact ⟨Fin.ext h0, Fin.ext h1, Fin.ext h2, Fin.ext h3⟩
private def support (w : QaryWord 2 15) : Finset (Fin 15) :=
  Finset.univ.filter (fun i => w i ≠ f2_0)
private def correction (s : Fin 16) : QaryWord 2 15 :=
  if s.val = 0 then fun _ => f2_0 else
    let pos : Fin 15 := ⟨s.val - 1, by omega⟩
    fun i => if i = pos then f2_1 else f2_0
set_option maxRecDepth 20000 in
private theorem correction_syndrome : ∀ s : Fin 16, syndromeIndex (correction s) = s := by
  native_decide
set_option maxRecDepth 20000 in
private theorem correction_weight : ∀ s : Fin 16, (support (correction s)).card <= 1 := by
  native_decide
private def addError (x e : QaryWord 2 15) : QaryWord 2 15 :=
  fun i => add2 (x i) (e i)
private theorem zSyn0_add (x e : QaryWord 2 15) :
    zSyn0 (addError x e) = zSyn0 x + zSyn0 e := by
  unfold zSyn0 addError
  simp [asZ2_add2]
  ring
private theorem zSyn1_add (x e : QaryWord 2 15) :
    zSyn1 (addError x e) = zSyn1 x + zSyn1 e := by
  unfold zSyn1 addError
  simp [asZ2_add2]
  ring
private theorem zSyn2_add (x e : QaryWord 2 15) :
    zSyn2 (addError x e) = zSyn2 x + zSyn2 e := by
  unfold zSyn2 addError
  simp [asZ2_add2]
  ring
private theorem zSyn3_add (x e : QaryWord 2 15) :
    zSyn3 (addError x e) = zSyn3 x + zSyn3 e := by
  unfold zSyn3 addError
  simp [asZ2_add2]
  ring
set_option maxHeartbeats 2000000 in
private theorem addError_isLinear_of_matching (x e : QaryWord 2 15)
    (h0 : zSyn0 e = zSyn0 x) (h1 : zSyn1 e = zSyn1 x) (h2 : zSyn2 e = zSyn2 x) (h3 : zSyn3 e = zSyn3 x) :
    IsLinearWord (addError x e) := by
  constructor
  · rw [zSyn0_add, h0, zmod2_add_self]
  constructor
  · rw [zSyn1_add, h1, zmod2_add_self]
  constructor
  · rw [zSyn2_add, h2, zmod2_add_self]
  · rw [zSyn3_add, h3, zmod2_add_self]
private theorem addError_dist_le_of_support (x e : QaryWord 2 15)
    (hw : (support e).card <= 1) :
    hammingDist x (addError x e) <= 1 := by
  have hsubset : (Finset.univ.filter fun i : Fin 15 => x i ≠ addError x e i) ⊆ support e := by
    intro i hi
    simp only [support, Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
    by_contra hne
    have heq : e i = f2_0 := by simpa using hne
    apply hi
    unfold addError
    rw [heq]
    exact (add2_zero (x i)).symm
  calc
    hammingDist x (addError x e)
        = (Finset.univ.filter fun i : Fin 15 => x i ≠ addError x e i).card := rfl
    _ <= (support e).card := Finset.card_le_card hsubset
    _ <= 1 := hw
private def linearRepair (x : QaryWord 2 15) : QaryWord 2 15 :=
  addError x (correction (syndromeIndex x))
set_option maxHeartbeats 2000000 in
private theorem linearRepair_isLinear (x : QaryWord 2 15) : IsLinearWord (linearRepair x) := by
  let e := correction (syndromeIndex x)
  have hidx : syndromeIndex e = syndromeIndex x := by
    simpa [e] using correction_syndrome (syndromeIndex x)
  have hcomp := packSyndrome_inj (z2Component (zSyn0 e)) (z2Component (zSyn1 e)) (z2Component (zSyn2 e)) (z2Component (zSyn3 e)) (z2Component (zSyn0 x)) (z2Component (zSyn1 x)) (z2Component (zSyn2 x)) (z2Component (zSyn3 x)) (by simpa [syndromeIndex] using hidx)
  rcases hcomp with ⟨h0c, h1c, h2c, h3c⟩
  exact addError_isLinear_of_matching x e (z2Component_inj h0c) (z2Component_inj h1c) (z2Component_inj h2c) (z2Component_inj h3c)
private theorem linearRepair_dist (x : QaryWord 2 15) : hammingDist x (linearRepair x) <= 1 := by
  simpa [linearRepair] using addError_dist_le_of_support x (correction (syndromeIndex x))
    (correction_weight (syndromeIndex x))
private theorem linearCode_covers : CoversFinset (linearCode ()) 1 := by
  intro x
  refine ⟨linearRepair x, ?_, linearRepair_dist x⟩
  exact Finset.mem_image.mpr
    ⟨linearFree (linearRepair x), Finset.mem_univ _,
      linearWord_linearFree_eq_of_isLinear (linearRepair x) (linearRepair_isLinear x)⟩
private theorem linearCode_card : (linearCode ()).card <= 2048 := by
  calc
    (linearCode ()).card <= (Finset.univ : Finset (QaryWord 2 11)).card := by
      simpa [linearCode] using Finset.card_image_le (s := (Finset.univ : Finset (QaryWord 2 11)))
    _ = 2048 := by
      rw [Finset.card_univ, qaryWord_card]
      norm_num
theorem upper : QaryKUpper 2 15 1 2048 :=
  ⟨linearCode (), linearCode_card, linearCode_covers⟩
end BinaryHamming15

namespace BinaryHamming31

private abbrev f2_0 : Fin 2 := ⟨0, by decide⟩
private abbrev f2_1 : Fin 2 := ⟨1, by decide⟩
private abbrev f26_0 : Fin 26 := ⟨0, by decide⟩
private abbrev f26_1 : Fin 26 := ⟨1, by decide⟩
private abbrev f26_2 : Fin 26 := ⟨2, by decide⟩
private abbrev f26_3 : Fin 26 := ⟨3, by decide⟩
private abbrev f26_4 : Fin 26 := ⟨4, by decide⟩
private abbrev f26_5 : Fin 26 := ⟨5, by decide⟩
private abbrev f26_6 : Fin 26 := ⟨6, by decide⟩
private abbrev f26_7 : Fin 26 := ⟨7, by decide⟩
private abbrev f26_8 : Fin 26 := ⟨8, by decide⟩
private abbrev f26_9 : Fin 26 := ⟨9, by decide⟩
private abbrev f26_10 : Fin 26 := ⟨10, by decide⟩
private abbrev f26_11 : Fin 26 := ⟨11, by decide⟩
private abbrev f26_12 : Fin 26 := ⟨12, by decide⟩
private abbrev f26_13 : Fin 26 := ⟨13, by decide⟩
private abbrev f26_14 : Fin 26 := ⟨14, by decide⟩
private abbrev f26_15 : Fin 26 := ⟨15, by decide⟩
private abbrev f26_16 : Fin 26 := ⟨16, by decide⟩
private abbrev f26_17 : Fin 26 := ⟨17, by decide⟩
private abbrev f26_18 : Fin 26 := ⟨18, by decide⟩
private abbrev f26_19 : Fin 26 := ⟨19, by decide⟩
private abbrev f26_20 : Fin 26 := ⟨20, by decide⟩
private abbrev f26_21 : Fin 26 := ⟨21, by decide⟩
private abbrev f26_22 : Fin 26 := ⟨22, by decide⟩
private abbrev f26_23 : Fin 26 := ⟨23, by decide⟩
private abbrev f26_24 : Fin 26 := ⟨24, by decide⟩
private abbrev f26_25 : Fin 26 := ⟨25, by decide⟩
private def asZ2 (a : Fin 2) : ZMod 2 := a.val
private def z2Component (z : ZMod 2) : Fin 2 := ⟨z.val, ZMod.val_lt z⟩
private theorem z2Component_inj {a b : ZMod 2} (h : z2Component a = z2Component b) : a = b := by
  apply ZMod.val_injective 2
  exact congrArg Fin.val h
private theorem z2Component_asZ2 (a : Fin 2) : z2Component (asZ2 a) = a := by
  fin_cases a <;> native_decide
private theorem asZ2_z2Component (z : ZMod 2) : asZ2 (z2Component z) = z := by
  apply ZMod.val_injective 2
  simp [asZ2, z2Component]
private theorem eq_fin2_of_asZ2_eq (a b : Fin 2) (h : asZ2 a = asZ2 b) : a = b := by
  calc
    a = z2Component (asZ2 a) := (z2Component_asZ2 a).symm
    _ = z2Component (asZ2 b) := by rw [h]
    _ = b := z2Component_asZ2 b
private def add2 (a b : Fin 2) : Fin 2 := ⟨(a.val + b.val) % 2, by omega⟩
private theorem asZ2_add2 (a b : Fin 2) : asZ2 (add2 a b) = asZ2 a + asZ2 b := by
  fin_cases a <;> fin_cases b <;> native_decide
private theorem add2_zero (a : Fin 2) : add2 a f2_0 = a := by
  fin_cases a <;> native_decide
private theorem zmod2_add_self (z : ZMod 2) : z + z = 0 := by
  rw [← two_mul z, show (2 : ZMod 2) = 0 by native_decide, zero_mul]
private def freeSyn0 (free : QaryWord 2 26) : ZMod 2 :=
  asZ2 (free f26_0) + asZ2 (free f26_1) + asZ2 (free f26_3) + asZ2 (free f26_4) + asZ2 (free f26_6) + asZ2 (free f26_8) + asZ2 (free f26_10) + asZ2 (free f26_11) + asZ2 (free f26_13) + asZ2 (free f26_15) + asZ2 (free f26_17) + asZ2 (free f26_19) + asZ2 (free f26_21) + asZ2 (free f26_23) + asZ2 (free f26_25)
private def freeSyn1 (free : QaryWord 2 26) : ZMod 2 :=
  asZ2 (free f26_0) + asZ2 (free f26_2) + asZ2 (free f26_3) + asZ2 (free f26_5) + asZ2 (free f26_6) + asZ2 (free f26_9) + asZ2 (free f26_10) + asZ2 (free f26_12) + asZ2 (free f26_13) + asZ2 (free f26_16) + asZ2 (free f26_17) + asZ2 (free f26_20) + asZ2 (free f26_21) + asZ2 (free f26_24) + asZ2 (free f26_25)
private def freeSyn2 (free : QaryWord 2 26) : ZMod 2 :=
  asZ2 (free f26_1) + asZ2 (free f26_2) + asZ2 (free f26_3) + asZ2 (free f26_7) + asZ2 (free f26_8) + asZ2 (free f26_9) + asZ2 (free f26_10) + asZ2 (free f26_14) + asZ2 (free f26_15) + asZ2 (free f26_16) + asZ2 (free f26_17) + asZ2 (free f26_22) + asZ2 (free f26_23) + asZ2 (free f26_24) + asZ2 (free f26_25)
private def freeSyn3 (free : QaryWord 2 26) : ZMod 2 :=
  asZ2 (free f26_4) + asZ2 (free f26_5) + asZ2 (free f26_6) + asZ2 (free f26_7) + asZ2 (free f26_8) + asZ2 (free f26_9) + asZ2 (free f26_10) + asZ2 (free f26_18) + asZ2 (free f26_19) + asZ2 (free f26_20) + asZ2 (free f26_21) + asZ2 (free f26_22) + asZ2 (free f26_23) + asZ2 (free f26_24) + asZ2 (free f26_25)
private def freeSyn4 (free : QaryWord 2 26) : ZMod 2 :=
  asZ2 (free f26_11) + asZ2 (free f26_12) + asZ2 (free f26_13) + asZ2 (free f26_14) + asZ2 (free f26_15) + asZ2 (free f26_16) + asZ2 (free f26_17) + asZ2 (free f26_18) + asZ2 (free f26_19) + asZ2 (free f26_20) + asZ2 (free f26_21) + asZ2 (free f26_22) + asZ2 (free f26_23) + asZ2 (free f26_24) + asZ2 (free f26_25)
private def zSyn0 (w : QaryWord 2 31) : ZMod 2 :=
  asZ2 (w 0) + asZ2 (w 2) + asZ2 (w 4) + asZ2 (w 6) + asZ2 (w 8) + asZ2 (w 10) + asZ2 (w 12) + asZ2 (w 14) + asZ2 (w 16) + asZ2 (w 18) + asZ2 (w 20) + asZ2 (w 22) + asZ2 (w 24) + asZ2 (w 26) + asZ2 (w 28) + asZ2 (w 30)
private def zSyn1 (w : QaryWord 2 31) : ZMod 2 :=
  asZ2 (w 1) + asZ2 (w 2) + asZ2 (w 5) + asZ2 (w 6) + asZ2 (w 9) + asZ2 (w 10) + asZ2 (w 13) + asZ2 (w 14) + asZ2 (w 17) + asZ2 (w 18) + asZ2 (w 21) + asZ2 (w 22) + asZ2 (w 25) + asZ2 (w 26) + asZ2 (w 29) + asZ2 (w 30)
private def zSyn2 (w : QaryWord 2 31) : ZMod 2 :=
  asZ2 (w 3) + asZ2 (w 4) + asZ2 (w 5) + asZ2 (w 6) + asZ2 (w 11) + asZ2 (w 12) + asZ2 (w 13) + asZ2 (w 14) + asZ2 (w 19) + asZ2 (w 20) + asZ2 (w 21) + asZ2 (w 22) + asZ2 (w 27) + asZ2 (w 28) + asZ2 (w 29) + asZ2 (w 30)
private def zSyn3 (w : QaryWord 2 31) : ZMod 2 :=
  asZ2 (w 7) + asZ2 (w 8) + asZ2 (w 9) + asZ2 (w 10) + asZ2 (w 11) + asZ2 (w 12) + asZ2 (w 13) + asZ2 (w 14) + asZ2 (w 23) + asZ2 (w 24) + asZ2 (w 25) + asZ2 (w 26) + asZ2 (w 27) + asZ2 (w 28) + asZ2 (w 29) + asZ2 (w 30)
private def zSyn4 (w : QaryWord 2 31) : ZMod 2 :=
  asZ2 (w 15) + asZ2 (w 16) + asZ2 (w 17) + asZ2 (w 18) + asZ2 (w 19) + asZ2 (w 20) + asZ2 (w 21) + asZ2 (w 22) + asZ2 (w 23) + asZ2 (w 24) + asZ2 (w 25) + asZ2 (w 26) + asZ2 (w 27) + asZ2 (w 28) + asZ2 (w 29) + asZ2 (w 30)
private def IsLinearWord (w : QaryWord 2 31) : Prop :=
  zSyn0 w = 0 ∧ zSyn1 w = 0 ∧ zSyn2 w = 0 ∧ zSyn3 w = 0 ∧ zSyn4 w = 0
private instance (w : QaryWord 2 31) : Decidable (IsLinearWord w) := by
  unfold IsLinearWord
  infer_instance
private theorem parity_zero_solve (p : Fin 2) (s : ZMod 2) (h : asZ2 p + s = 0) :
    z2Component s = p := by
  apply eq_fin2_of_asZ2_eq
  have hp : asZ2 p = s := by
    have h' := congrArg (fun z : ZMod 2 => z + s) h
    simpa [add_assoc, zmod2_add_self] using h'
  simp [asZ2_z2Component, hp]
private def linearWord (free : QaryWord 2 26) : QaryWord 2 31 :=
  fun i =>
    if i.val = 0 then z2Component (freeSyn0 free)
    else if i.val = 1 then z2Component (freeSyn1 free)
    else if i.val = 2 then free f26_0
    else if i.val = 3 then z2Component (freeSyn2 free)
    else if i.val = 4 then free f26_1
    else if i.val = 5 then free f26_2
    else if i.val = 6 then free f26_3
    else if i.val = 7 then z2Component (freeSyn3 free)
    else if i.val = 8 then free f26_4
    else if i.val = 9 then free f26_5
    else if i.val = 10 then free f26_6
    else if i.val = 11 then free f26_7
    else if i.val = 12 then free f26_8
    else if i.val = 13 then free f26_9
    else if i.val = 14 then free f26_10
    else if i.val = 15 then z2Component (freeSyn4 free)
    else if i.val = 16 then free f26_11
    else if i.val = 17 then free f26_12
    else if i.val = 18 then free f26_13
    else if i.val = 19 then free f26_14
    else if i.val = 20 then free f26_15
    else if i.val = 21 then free f26_16
    else if i.val = 22 then free f26_17
    else if i.val = 23 then free f26_18
    else if i.val = 24 then free f26_19
    else if i.val = 25 then free f26_20
    else if i.val = 26 then free f26_21
    else if i.val = 27 then free f26_22
    else if i.val = 28 then free f26_23
    else if i.val = 29 then free f26_24
    else if i.val = 30 then free f26_25
    else f2_0
private def linearFree (w : QaryWord 2 31) : QaryWord 2 26 := fun i =>
  if i.val = 0 then w 2
  else if i.val = 1 then w 4
  else if i.val = 2 then w 5
  else if i.val = 3 then w 6
  else if i.val = 4 then w 8
  else if i.val = 5 then w 9
  else if i.val = 6 then w 10
  else if i.val = 7 then w 11
  else if i.val = 8 then w 12
  else if i.val = 9 then w 13
  else if i.val = 10 then w 14
  else if i.val = 11 then w 16
  else if i.val = 12 then w 17
  else if i.val = 13 then w 18
  else if i.val = 14 then w 19
  else if i.val = 15 then w 20
  else if i.val = 16 then w 21
  else if i.val = 17 then w 22
  else if i.val = 18 then w 23
  else if i.val = 19 then w 24
  else if i.val = 20 then w 25
  else if i.val = 21 then w 26
  else if i.val = 22 then w 27
  else if i.val = 23 then w 28
  else if i.val = 24 then w 29
  else if i.val = 25 then w 30
  else f2_0
set_option maxHeartbeats 2000000 in
private theorem linearWord_linearFree_eq_of_isLinear (w : QaryWord 2 31)
    (h : IsLinearWord w) : linearWord (linearFree w) = w := by
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  have hw0 : z2Component (freeSyn0 (linearFree w)) = w 0 :=
    parity_zero_solve (w 0) (freeSyn0 (linearFree w)) (by
      simpa [zSyn0, freeSyn0, linearFree, add_comm, add_left_comm, add_assoc] using h0)
  have hw1 : z2Component (freeSyn1 (linearFree w)) = w 1 :=
    parity_zero_solve (w 1) (freeSyn1 (linearFree w)) (by
      simpa [zSyn1, freeSyn1, linearFree, add_comm, add_left_comm, add_assoc] using h1)
  have hw2 : z2Component (freeSyn2 (linearFree w)) = w 3 :=
    parity_zero_solve (w 3) (freeSyn2 (linearFree w)) (by
      simpa [zSyn2, freeSyn2, linearFree, add_comm, add_left_comm, add_assoc] using h2)
  have hw3 : z2Component (freeSyn3 (linearFree w)) = w 7 :=
    parity_zero_solve (w 7) (freeSyn3 (linearFree w)) (by
      simpa [zSyn3, freeSyn3, linearFree, add_comm, add_left_comm, add_assoc] using h3)
  have hw4 : z2Component (freeSyn4 (linearFree w)) = w 15 :=
    parity_zero_solve (w 15) (freeSyn4 (linearFree w)) (by
      simpa [zSyn4, freeSyn4, linearFree, add_comm, add_left_comm, add_assoc] using h4)
  funext i
  fin_cases i <;> simp [linearWord, linearFree, hw0, hw1, hw2, hw3, hw4]
private def linearCode (_ : Unit) : Finset (QaryWord 2 31) :=
  (Finset.univ : Finset (QaryWord 2 26)).image linearWord
private def packSyndrome (s0 : Fin 2) (s1 : Fin 2) (s2 : Fin 2) (s3 : Fin 2) (s4 : Fin 2) : Fin 32 :=
  ⟨s0.val + 2 * s1.val + 4 * s2.val + 8 * s3.val + 16 * s4.val, by omega⟩
private def syndromeIndex (w : QaryWord 2 31) : Fin 32 :=
  packSyndrome (z2Component (zSyn0 w)) (z2Component (zSyn1 w)) (z2Component (zSyn2 w)) (z2Component (zSyn3 w)) (z2Component (zSyn4 w))
private theorem packSyndrome_inj (a0 : Fin 2) (a1 : Fin 2) (a2 : Fin 2) (a3 : Fin 2) (a4 : Fin 2) (b0 : Fin 2) (b1 : Fin 2) (b2 : Fin 2) (b3 : Fin 2) (b4 : Fin 2)
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
private def support (w : QaryWord 2 31) : Finset (Fin 31) :=
  Finset.univ.filter (fun i => w i ≠ f2_0)
private def correction (s : Fin 32) : QaryWord 2 31 :=
  if s.val = 0 then fun _ => f2_0 else
    let pos : Fin 31 := ⟨s.val - 1, by omega⟩
    fun i => if i = pos then f2_1 else f2_0
set_option maxRecDepth 20000 in
private theorem correction_syndrome : ∀ s : Fin 32, syndromeIndex (correction s) = s := by
  native_decide
set_option maxRecDepth 20000 in
private theorem correction_weight : ∀ s : Fin 32, (support (correction s)).card <= 1 := by
  native_decide
private def addError (x e : QaryWord 2 31) : QaryWord 2 31 :=
  fun i => add2 (x i) (e i)
private theorem zSyn0_add (x e : QaryWord 2 31) :
    zSyn0 (addError x e) = zSyn0 x + zSyn0 e := by
  unfold zSyn0 addError
  simp [asZ2_add2]
  ring
private theorem zSyn1_add (x e : QaryWord 2 31) :
    zSyn1 (addError x e) = zSyn1 x + zSyn1 e := by
  unfold zSyn1 addError
  simp [asZ2_add2]
  ring
private theorem zSyn2_add (x e : QaryWord 2 31) :
    zSyn2 (addError x e) = zSyn2 x + zSyn2 e := by
  unfold zSyn2 addError
  simp [asZ2_add2]
  ring
private theorem zSyn3_add (x e : QaryWord 2 31) :
    zSyn3 (addError x e) = zSyn3 x + zSyn3 e := by
  unfold zSyn3 addError
  simp [asZ2_add2]
  ring
private theorem zSyn4_add (x e : QaryWord 2 31) :
    zSyn4 (addError x e) = zSyn4 x + zSyn4 e := by
  unfold zSyn4 addError
  simp [asZ2_add2]
  ring
set_option maxHeartbeats 2000000 in
private theorem addError_isLinear_of_matching (x e : QaryWord 2 31)
    (h0 : zSyn0 e = zSyn0 x) (h1 : zSyn1 e = zSyn1 x) (h2 : zSyn2 e = zSyn2 x) (h3 : zSyn3 e = zSyn3 x) (h4 : zSyn4 e = zSyn4 x) :
    IsLinearWord (addError x e) := by
  constructor
  · rw [zSyn0_add, h0, zmod2_add_self]
  constructor
  · rw [zSyn1_add, h1, zmod2_add_self]
  constructor
  · rw [zSyn2_add, h2, zmod2_add_self]
  constructor
  · rw [zSyn3_add, h3, zmod2_add_self]
  · rw [zSyn4_add, h4, zmod2_add_self]
private theorem addError_dist_le_of_support (x e : QaryWord 2 31)
    (hw : (support e).card <= 1) :
    hammingDist x (addError x e) <= 1 := by
  have hsubset : (Finset.univ.filter fun i : Fin 31 => x i ≠ addError x e i) ⊆ support e := by
    intro i hi
    simp only [support, Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
    by_contra hne
    have heq : e i = f2_0 := by simpa using hne
    apply hi
    unfold addError
    rw [heq]
    exact (add2_zero (x i)).symm
  calc
    hammingDist x (addError x e)
        = (Finset.univ.filter fun i : Fin 31 => x i ≠ addError x e i).card := rfl
    _ <= (support e).card := Finset.card_le_card hsubset
    _ <= 1 := hw
private def linearRepair (x : QaryWord 2 31) : QaryWord 2 31 :=
  addError x (correction (syndromeIndex x))
set_option maxHeartbeats 2000000 in
private theorem linearRepair_isLinear (x : QaryWord 2 31) : IsLinearWord (linearRepair x) := by
  let e := correction (syndromeIndex x)
  have hidx : syndromeIndex e = syndromeIndex x := by
    simpa [e] using correction_syndrome (syndromeIndex x)
  have hcomp := packSyndrome_inj (z2Component (zSyn0 e)) (z2Component (zSyn1 e)) (z2Component (zSyn2 e)) (z2Component (zSyn3 e)) (z2Component (zSyn4 e)) (z2Component (zSyn0 x)) (z2Component (zSyn1 x)) (z2Component (zSyn2 x)) (z2Component (zSyn3 x)) (z2Component (zSyn4 x)) (by simpa [syndromeIndex] using hidx)
  rcases hcomp with ⟨h0c, h1c, h2c, h3c, h4c⟩
  exact addError_isLinear_of_matching x e (z2Component_inj h0c) (z2Component_inj h1c) (z2Component_inj h2c) (z2Component_inj h3c) (z2Component_inj h4c)
private theorem linearRepair_dist (x : QaryWord 2 31) : hammingDist x (linearRepair x) <= 1 := by
  simpa [linearRepair] using addError_dist_le_of_support x (correction (syndromeIndex x))
    (correction_weight (syndromeIndex x))
private theorem linearCode_covers : CoversFinset (linearCode ()) 1 := by
  intro x
  refine ⟨linearRepair x, ?_, linearRepair_dist x⟩
  exact Finset.mem_image.mpr
    ⟨linearFree (linearRepair x), Finset.mem_univ _,
      linearWord_linearFree_eq_of_isLinear (linearRepair x) (linearRepair_isLinear x)⟩
private theorem linearCode_card : (linearCode ()).card <= 67108864 := by
  calc
    (linearCode ()).card <= (Finset.univ : Finset (QaryWord 2 26)).card := by
      simpa [linearCode] using Finset.card_image_le (s := (Finset.univ : Finset (QaryWord 2 26)))
    _ = 67108864 := by
      rw [Finset.card_univ, qaryWord_card]
      norm_num
theorem upper : QaryKUpper 2 31 1 67108864 :=
  ⟨linearCode (), linearCode_card, linearCode_covers⟩
end BinaryHamming31

/-! ## Registered source -/

def binaryHammingUpperName : String :=
  "lean_binary_hamming_upper"

def binaryHammingUpper (q n r : Nat) : Nat :=
  if q = 2 ∧ n = 15 ∧ r = 1 then 2048
  else if q = 2 ∧ n = 31 ∧ r = 1 then 67108864
  else trivialUpper q n r

theorem binaryHammingUpper_valid (q n r : Nat) :
    QaryKUpper q n r (binaryHammingUpper q n r) := by
  by_cases h15 : q = 2 ∧ n = 15 ∧ r = 1
  · rcases h15 with ⟨rfl, rfl, rfl⟩
    simpa [binaryHammingUpper] using BinaryHamming15.upper
  · by_cases h31 : q = 2 ∧ n = 31 ∧ r = 1
    · rcases h31 with ⟨rfl, rfl, rfl⟩
      simpa [binaryHammingUpper, h15] using BinaryHamming31.upper
    · simpa [binaryHammingUpper, h15, h31] using trivialUpper_valid q n r

def binaryHammingUpperSource : UpperBoundSource where
  value := binaryHammingUpper
  trace := fun q n r =>
    .primitive binaryHammingUpperName (binaryHammingUpper_valid q n r)

end Database
end CoveringCodes
