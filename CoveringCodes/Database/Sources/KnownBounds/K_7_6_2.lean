import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import Mathlib.Tactic

/-!
# Helper certificate for K_7(6,2)

This module provides the length-six linear block used by the known-bound
certificate for `K_7(9,3)`.  It is intentionally not registered as a primitive
source on its own.
-/

namespace CoveringCodes
namespace Database

private abbrev f7_0 : Fin 7 := ⟨0, by decide⟩
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
    (h : asZ7 a + 2 * asZ7 b + asZ7 c + asZ7 e = 0) :
    neg7 (add7_3 a (mul7 2 b) c) = e := by
  revert a b c e
  covering_decide

private theorem row2_zero_solve3 (a b c e : Fin 7)
    (h : asZ7 a + 3 * asZ7 b + 2 * asZ7 c + asZ7 e = 0) :
    neg7 (add7_3 a (mul7 3 b) (mul7 2 c)) = e := by
  revert a b c e
  covering_decide

private def linearWord (free : QaryWord 7 3) : QaryWord 7 6 :=
  fun i =>
    if i.val = 0 then neg7 (add7_3 (free f3_0) (free f3_1) (free f3_2))
    else if i.val = 1 then neg7 (add7_3 (free f3_0) (mul7 2 (free f3_1)) (free f3_2))
    else if i.val = 2 then neg7 (add7_3 (free f3_0) (mul7 3 (free f3_1)) (mul7 2 (free f3_2)))
    else if i.val = 3 then free f3_0
    else if i.val = 4 then free f3_1
    else free f3_2

private def linearFree (w : QaryWord 7 6) : QaryWord 7 3 := fun i =>
  if i.val = 0 then w 3 else if i.val = 1 then w 4 else w 5

private def zSyn0 (w : QaryWord 7 6) : ZMod 7 :=
  asZ7 (w 0) + asZ7 (w 3) + asZ7 (w 4) + asZ7 (w 5)

private def zSyn1 (w : QaryWord 7 6) : ZMod 7 :=
  asZ7 (w 1) + asZ7 (w 3) + 2 * asZ7 (w 4) + asZ7 (w 5)

private def zSyn2 (w : QaryWord 7 6) : ZMod 7 :=
  asZ7 (w 2) + asZ7 (w 3) + 3 * asZ7 (w 4) + 2 * asZ7 (w 5)

private def IsLinearWord (w : QaryWord 7 6) : Prop :=
  zSyn0 w = 0 ∧ zSyn1 w = 0 ∧ zSyn2 w = 0

private instance (w : QaryWord 7 6) : Decidable (IsLinearWord w) := by
  unfold IsLinearWord
  infer_instance

private theorem linearWord_linearFree_eq_of_isLinear (w : QaryWord 7 6)
    (h : IsLinearWord w) : linearWord (linearFree w) = w := by
  rcases h with ⟨h0, h1, h2⟩
  have h0w : neg7 (add7_3 (w 3) (w 4) (w 5)) = w 0 :=
    row0_zero_solve3 (w 3) (w 4) (w 5) (w 0) (by simpa [zSyn0, add_comm, add_left_comm, add_assoc] using h0)
  have h1w : neg7 (add7_3 (w 3) (mul7 2 (w 4)) (w 5)) = w 1 :=
    row1_zero_solve3 (w 3) (w 4) (w 5) (w 1) (by simpa [zSyn1, add_comm, add_left_comm, add_assoc] using h1)
  have h2w : neg7 (add7_3 (w 3) (mul7 3 (w 4)) (mul7 2 (w 5))) = w 2 :=
    row2_zero_solve3 (w 3) (w 4) (w 5) (w 2) (by simpa [zSyn2, add_comm, add_left_comm, add_assoc] using h2)
  funext i
  fin_cases i <;> simp [linearWord, linearFree, h0w, h1w, h2w]

private def linearCode : Finset (QaryWord 7 6) :=
  Finset.univ.filter IsLinearWord

private theorem linearCode_subset_generated :
    linearCode ⊆ (Finset.univ : Finset (QaryWord 7 3)).image linearWord := by
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

private def syndromeIndex (w : QaryWord 7 6) : Fin 343 :=
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

private def digit7 (value place : Nat) : Fin 7 :=
  ⟨(value / place) % 7, by omega⟩

private def decodeCorrection (value : Nat) : QaryWord 7 6 :=
  fun i =>
    if i.val = 0 then digit7 value 16807
    else if i.val = 1 then digit7 value 2401
    else if i.val = 2 then digit7 value 343
    else if i.val = 3 then digit7 value 49
    else if i.val = 4 then digit7 value 7
    else digit7 value 1

private def correctionData : Array Nat := #[
  0, 16807, 33614, 50421, 67228, 84035, 100842, 2401, 19208, 36015, 52822, 69629, 86436, 103243, 4802, 21609,
  38416, 55223, 72030, 88837, 105644, 7203, 24010, 40817, 57624, 74431, 91238, 108045, 9604, 26411, 43218, 60025,
  76832, 93639, 110446, 12005, 28812, 45619, 62426, 79233, 96040, 112847, 14406, 31213, 48020, 64827, 81634, 98441,
  115248, 343, 17150, 33957, 50764, 67571, 84378, 101185, 100891, 49, 16856, 33663, 50470, 67277, 84084, 5145,
  2450, 2156, 238, 12009, 14441, 24, 33649, 50456, 67263, 84070, 100877, 35, 16842, 50425, 67232, 84039,
  100846, 4, 16811, 33618, 12348, 9653, 315, 15, 2405, 4837, 1414, 14749, 12054, 33, 2079, 4806,
  7238, 980, 686, 17493, 34300, 51107, 67914, 84721, 101528, 100843, 1, 16808, 33615, 50422, 67229, 84036,
  84133, 100940, 98, 16905, 33712, 50519, 67326, 7889, 4803, 2499, 9625, 287, 378, 30, 10290, 7204,
  4900, 12026, 1911, 48, 84, 12691, 9605, 7301, 14427, 10, 1617, 1757, 67249, 84056, 100863, 21,
  16828, 33635, 50442, 1029, 17836, 34643, 51450, 68257, 85064, 101871, 3430, 14413, 45, 12152, 1743, 7208,
  210, 100849, 7, 16814, 33621, 50428, 67235, 84042, 67375, 84182, 100989, 147, 16954, 33761, 50568, 10633,
  4809, 1386, 2548, 2254, 14411, 36, 33619, 50426, 67233, 84040, 100847, 5, 16812, 15435, 9611, 273,
  7350, 16, 2406, 1666, 1372, 18179, 34986, 51793, 68600, 85407, 102214, 3773, 1078, 14408, 40, 9800,
  119, 7245, 84037, 100844, 2, 16809, 33616, 50423, 67230, 8575, 20, 2403, 490, 14602, 1064, 12047,
  50617, 67424, 84231, 101038, 196, 17003, 33810, 16849, 33656, 50463, 67270, 84077, 100884, 42, 15778, 182,
  9606, 707, 4998, 11, 2443, 1715, 18522, 35329, 52136, 68943, 85750, 102557, 50449, 67256, 84063, 100870,
  28, 16835, 33642, 6517, 693, 1127, 46, 2429, 9849, 7209, 8918, 308, 8, 833, 4830, 12250,
  9610, 11319, 26, 2072, 105, 7231, 14651, 12011, 33859, 50666, 67473, 84280, 101087, 245, 17052, 16813,
  33620, 50427, 67234, 84041, 100848, 6, 2058, 18865, 35672, 52479, 69286, 86093, 102900, 4459, 1764, 9618,
  12008, 371, 23, 5096, 6860, 1036, 12019, 14409, 41, 77, 7497, 67231, 84038, 100845, 3, 16810,
  33617, 50424, 84049, 100856, 14, 16821, 33628, 50435, 67242, 14063, 32, 2415, 4805, 154, 588, 14700,
  17101, 33908, 50715, 67522, 84329, 101136, 294
]

private def syndromeCorrection (s : Fin 343) : QaryWord 7 6 :=
  decodeCorrection (correctionData.getD s.val 0)

private def support (w : QaryWord 7 6) : Finset (Fin 6) :=
  Finset.univ.filter (fun i => w i ≠ f7_0)

set_option maxRecDepth 20000 in
private theorem table_syndrome : ∀ s : Fin 343, syndromeIndex (syndromeCorrection s) = s := by
  native_decide

set_option maxRecDepth 20000 in
private theorem table_weight : ∀ s : Fin 343, (support (syndromeCorrection s)).card <= 2 := by
  native_decide

private def subtractError (x e : QaryWord 7 6) : QaryWord 7 6 :=
  fun i => sub7 (x i) (e i)

private theorem subtractError_isLinear_of_matching (x e : QaryWord 7 6)
    (h0 : zSyn0 e = zSyn0 x) (h1 : zSyn1 e = zSyn1 x) (h2 : zSyn2 e = zSyn2 x) :
    IsLinearWord (subtractError x e) := by
  constructor
  · unfold zSyn0 subtractError
    simp [asZ7_sub7]
    have hz0 : zSyn0 x - zSyn0 e = 0 := by
      rw [← h0]
      ring
    have hz : (asZ7 (x 0) + asZ7 (x 3) + asZ7 (x 4) + asZ7 (x 5)) -
        (asZ7 (e 0) + asZ7 (e 3) + asZ7 (e 4) + asZ7 (e 5)) = 0 := by
      simpa [zSyn0] using hz0
    calc
      asZ7 (x 0) - asZ7 (e 0) + (asZ7 (x 3) - asZ7 (e 3)) +
          (asZ7 (x 4) - asZ7 (e 4)) + (asZ7 (x 5) - asZ7 (e 5))
          = (asZ7 (x 0) + asZ7 (x 3) + asZ7 (x 4) + asZ7 (x 5)) -
            (asZ7 (e 0) + asZ7 (e 3) + asZ7 (e 4) + asZ7 (e 5)) := by ring
      _ = 0 := hz
  constructor
  · unfold zSyn1 subtractError
    simp [asZ7_sub7]
    have hz1 : zSyn1 x - zSyn1 e = 0 := by
      rw [← h1]
      ring
    have hz : (asZ7 (x 1) + asZ7 (x 3) + 2 * asZ7 (x 4) + asZ7 (x 5)) -
        (asZ7 (e 1) + asZ7 (e 3) + 2 * asZ7 (e 4) + asZ7 (e 5)) = 0 := by
      simpa [zSyn1] using hz1
    calc
      asZ7 (x 1) - asZ7 (e 1) + (asZ7 (x 3) - asZ7 (e 3)) +
          2 * (asZ7 (x 4) - asZ7 (e 4)) + (asZ7 (x 5) - asZ7 (e 5))
          = (asZ7 (x 1) + asZ7 (x 3) + 2 * asZ7 (x 4) + asZ7 (x 5)) -
            (asZ7 (e 1) + asZ7 (e 3) + 2 * asZ7 (e 4) + asZ7 (e 5)) := by ring
      _ = 0 := hz
  · unfold zSyn2 subtractError
    simp [asZ7_sub7]
    have hz2 : zSyn2 x - zSyn2 e = 0 := by
      rw [← h2]
      ring
    have hz : (asZ7 (x 2) + asZ7 (x 3) + 3 * asZ7 (x 4) + 2 * asZ7 (x 5)) -
        (asZ7 (e 2) + asZ7 (e 3) + 3 * asZ7 (e 4) + 2 * asZ7 (e 5)) = 0 := by
      simpa [zSyn2] using hz2
    calc
      asZ7 (x 2) - asZ7 (e 2) + (asZ7 (x 3) - asZ7 (e 3)) +
          3 * (asZ7 (x 4) - asZ7 (e 4)) + 2 * (asZ7 (x 5) - asZ7 (e 5))
          = (asZ7 (x 2) + asZ7 (x 3) + 3 * asZ7 (x 4) + 2 * asZ7 (x 5)) -
            (asZ7 (e 2) + asZ7 (e 3) + 3 * asZ7 (e 4) + 2 * asZ7 (e 5)) := by ring
      _ = 0 := hz

private theorem subtractError_dist_le_of_support (x e : QaryWord 7 6)
    (hw : (support e).card <= 2) :
    hammingDist x (subtractError x e) <= 2 := by
  have hsubset : (Finset.univ.filter fun i : Fin 6 => x i ≠ subtractError x e i) ⊆ support e := by
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
        = (Finset.univ.filter fun i : Fin 6 => x i ≠ subtractError x e i).card := rfl
    _ <= (support e).card := Finset.card_le_card hsubset
    _ <= 2 := hw

private def linearRepair (x : QaryWord 7 6) : QaryWord 7 6 :=
  subtractError x (syndromeCorrection (syndromeIndex x))

private theorem linearRepair_isLinear (x : QaryWord 7 6) : IsLinearWord (linearRepair x) := by
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

private theorem linearRepair_dist (x : QaryWord 7 6) : hammingDist x (linearRepair x) <= 2 := by
  simpa [linearRepair] using subtractError_dist_le_of_support x (syndromeCorrection (syndromeIndex x))
    (table_weight (syndromeIndex x))

private theorem linearCode_covers : CoversFinset linearCode 2 := by
  intro x
  refine ⟨linearRepair x, ?_, linearRepair_dist x⟩
  simp only [linearCode, Finset.mem_filter, Finset.mem_univ, true_and]
  exact linearRepair_isLinear x

private theorem linearCode_card : linearCode.card <= 343 := by
  calc
    linearCode.card <= ((Finset.univ : Finset (QaryWord 7 3)).image linearWord).card :=
      Finset.card_le_card linearCode_subset_generated
    _ <= (Finset.univ : Finset (QaryWord 7 3)).card := Finset.card_image_le
    _ = 343 := by
      rw [Finset.card_univ, qaryWord_card]
      norm_num

def knownBoundQ7N6R2Explicit : ExplicitQaryUpper 7 6 2 343 :=
  { code := linearCode
    card_le := linearCode_card
    covers := linearCode_covers }

end Database
end CoveringCodes
