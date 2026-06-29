import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Ternary Golay upper source

This module proves the perfect-code upper bound `K_3(11,2) <= 729` using a
systematic parity-check form of the ternary Golay `[11,6,5]` code.  The code is
constructed structurally from six free coordinates; the radius-two covering
proof uses one precomputed repair of weight at most two for each of the `3^5`
syndromes.
-/

namespace CoveringCodes
namespace Database

namespace TernaryGolay11

private abbrev f3_0 : Fin 3 := ⟨0, by decide⟩
private abbrev f6_0 : Fin 6 := ⟨0, by decide⟩
private abbrev f6_1 : Fin 6 := ⟨1, by decide⟩
private abbrev f6_2 : Fin 6 := ⟨2, by decide⟩
private abbrev f6_3 : Fin 6 := ⟨3, by decide⟩
private abbrev f6_4 : Fin 6 := ⟨4, by decide⟩
private abbrev f6_5 : Fin 6 := ⟨5, by decide⟩

private def asZ3 (a : Fin 3) : ZMod 3 := a.val

private def z3Component (z : ZMod 3) : Fin 3 :=
  ⟨z.val, ZMod.val_lt z⟩

private theorem z3Component_inj {a b : ZMod 3}
    (h : z3Component a = z3Component b) : a = b := by
  apply ZMod.val_injective 3
  exact congrArg Fin.val h

private def sub3 (a b : Fin 3) : Fin 3 :=
  ⟨(3 + a.val - b.val) % 3, by omega⟩

private theorem sub3_zero (a : Fin 3) : sub3 a f3_0 = a := by
  fin_cases a <;> native_decide

private theorem asZ3_sub3 (a b : Fin 3) : asZ3 (sub3 a b) = asZ3 a - asZ3 b := by
  fin_cases a <;> fin_cases b <;> native_decide

private theorem parity_zero_solve (p : Fin 3) (s : ZMod 3)
    (h : s + asZ3 p = 0) : z3Component (-s) = p := by
  revert p s
  native_decide

private def row0FreeSyn (free : QaryWord 3 6) : ZMod 3 :=
  asZ3 (free f6_0) + 2 * asZ3 (free f6_1) + 2 * asZ3 (free f6_2) + 2 * asZ3 (free f6_3) + asZ3 (free f6_4)

private def row1FreeSyn (free : QaryWord 3 6) : ZMod 3 :=
  asZ3 (free f6_1) + 2 * asZ3 (free f6_2) + 2 * asZ3 (free f6_3) + 2 * asZ3 (free f6_4) + asZ3 (free f6_5)

private def row2FreeSyn (free : QaryWord 3 6) : ZMod 3 :=
  2 * asZ3 (free f6_0) + asZ3 (free f6_1) + 2 * asZ3 (free f6_2) + asZ3 (free f6_4) + 2 * asZ3 (free f6_5)

private def row3FreeSyn (free : QaryWord 3 6) : ZMod 3 :=
  asZ3 (free f6_0) + asZ3 (free f6_1) + asZ3 (free f6_3) + asZ3 (free f6_4) + asZ3 (free f6_5)

private def row4FreeSyn (free : QaryWord 3 6) : ZMod 3 :=
  2 * asZ3 (free f6_0) + 2 * asZ3 (free f6_1) + 2 * asZ3 (free f6_2) + asZ3 (free f6_3) + asZ3 (free f6_5)

private def parity0 (free : QaryWord 3 6) : Fin 3 :=
  z3Component (-(row0FreeSyn free))

private def parity1 (free : QaryWord 3 6) : Fin 3 :=
  z3Component (-(row1FreeSyn free))

private def parity2 (free : QaryWord 3 6) : Fin 3 :=
  z3Component (-(row2FreeSyn free))

private def parity3 (free : QaryWord 3 6) : Fin 3 :=
  z3Component (-(row3FreeSyn free))

private def parity4 (free : QaryWord 3 6) : Fin 3 :=
  z3Component (-(row4FreeSyn free))

private def zSyn0 (w : QaryWord 3 11) : ZMod 3 :=
  asZ3 (w 0) + 2 * asZ3 (w 1) + 2 * asZ3 (w 2) + 2 * asZ3 (w 3) + asZ3 (w 4) + asZ3 (w 6)

private def zSyn1 (w : QaryWord 3 11) : ZMod 3 :=
  asZ3 (w 1) + 2 * asZ3 (w 2) + 2 * asZ3 (w 3) + 2 * asZ3 (w 4) + asZ3 (w 5) + asZ3 (w 7)

private def zSyn2 (w : QaryWord 3 11) : ZMod 3 :=
  2 * asZ3 (w 0) + asZ3 (w 1) + 2 * asZ3 (w 2) + asZ3 (w 4) + 2 * asZ3 (w 5) + asZ3 (w 8)

private def zSyn3 (w : QaryWord 3 11) : ZMod 3 :=
  asZ3 (w 0) + asZ3 (w 1) + asZ3 (w 3) + asZ3 (w 4) + asZ3 (w 5) + asZ3 (w 9)

private def zSyn4 (w : QaryWord 3 11) : ZMod 3 :=
  2 * asZ3 (w 0) + 2 * asZ3 (w 1) + 2 * asZ3 (w 2) + asZ3 (w 3) + asZ3 (w 5) + asZ3 (w 10)

private def IsLinearWord (w : QaryWord 3 11) : Prop :=
  zSyn0 w = 0 ∧
  zSyn1 w = 0 ∧
  zSyn2 w = 0 ∧
  zSyn3 w = 0 ∧
  zSyn4 w = 0

private instance (w : QaryWord 3 11) : Decidable (IsLinearWord w) := by
  unfold IsLinearWord
  infer_instance

private def linearWord (free : QaryWord 3 6) : QaryWord 3 11 :=
  fun i =>
    if i.val = 0 then free f6_0
    else if i.val = 1 then free f6_1
    else if i.val = 2 then free f6_2
    else if i.val = 3 then free f6_3
    else if i.val = 4 then free f6_4
    else if i.val = 5 then free f6_5
    else if i.val = 6 then parity0 free
    else if i.val = 7 then parity1 free
    else if i.val = 8 then parity2 free
    else if i.val = 9 then parity3 free
    else parity4 free

private def linearFree (w : QaryWord 3 11) : QaryWord 3 6 := fun i =>
  if i.val = 0 then w 0
  else if i.val = 1 then w 1
  else if i.val = 2 then w 2
  else if i.val = 3 then w 3
  else if i.val = 4 then w 4
  else w 5

set_option maxHeartbeats 2000000 in
private theorem linearWord_linearFree_eq_of_isLinear (w : QaryWord 3 11)
    (h : IsLinearWord w) : linearWord (linearFree w) = w := by
  rcases h with ⟨h0, h1, h2, h3, h4⟩
  have hw6 : parity0 (linearFree w) = w 6 :=
    parity_zero_solve (w 6) (row0FreeSyn (linearFree w)) (by
      simpa [zSyn0, row0FreeSyn, linearFree, add_comm, add_left_comm, add_assoc] using h0)
  have hw7 : parity1 (linearFree w) = w 7 :=
    parity_zero_solve (w 7) (row1FreeSyn (linearFree w)) (by
      simpa [zSyn1, row1FreeSyn, linearFree, add_comm, add_left_comm, add_assoc] using h1)
  have hw8 : parity2 (linearFree w) = w 8 :=
    parity_zero_solve (w 8) (row2FreeSyn (linearFree w)) (by
      simpa [zSyn2, row2FreeSyn, linearFree, add_comm, add_left_comm, add_assoc] using h2)
  have hw9 : parity3 (linearFree w) = w 9 :=
    parity_zero_solve (w 9) (row3FreeSyn (linearFree w)) (by
      simpa [zSyn3, row3FreeSyn, linearFree, add_comm, add_left_comm, add_assoc] using h3)
  have hw10 : parity4 (linearFree w) = w 10 :=
    parity_zero_solve (w 10) (row4FreeSyn (linearFree w)) (by
      simpa [zSyn4, row4FreeSyn, linearFree, add_comm, add_left_comm, add_assoc] using h4)
  funext i
  fin_cases i <;> simp [linearWord, linearFree, hw6, hw7, hw8, hw9, hw10]

private def linearCode (_ : Unit) : Finset (QaryWord 3 11) :=
  (Finset.univ : Finset (QaryWord 3 6)).image linearWord

private def packSyndrome (s0 : Fin 3) (s1 : Fin 3) (s2 : Fin 3) (s3 : Fin 3) (s4 : Fin 3) : Fin 243 :=
  ⟨s0.val + 3 * s1.val + 9 * s2.val + 27 * s3.val + 81 * s4.val, by omega⟩

private def syndromeIndex (w : QaryWord 3 11) : Fin 243 :=
  packSyndrome (z3Component (zSyn0 w)) (z3Component (zSyn1 w)) (z3Component (zSyn2 w)) (z3Component (zSyn3 w)) (z3Component (zSyn4 w))

private theorem packSyndrome_inj (a0 b0 : Fin 3) (a1 b1 : Fin 3) (a2 b2 : Fin 3) (a3 b3 : Fin 3) (a4 b4 : Fin 3)
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

private def support (w : QaryWord 3 11) : Finset (Fin 11) :=
  Finset.univ.filter (fun i => w i ≠ f3_0)

private def digit3 (value place : Nat) : Fin 3 :=
  ⟨(value / place) % 3, by omega⟩

private def decodeCorrectionWord (value : Nat) : QaryWord 3 11 :=
  fun i =>
    if i.val = 0 then digit3 value 1
    else if i.val = 1 then digit3 value 3
    else if i.val = 2 then digit3 value 9
    else if i.val = 3 then digit3 value 27
    else if i.val = 4 then digit3 value 81
    else if i.val = 5 then digit3 value 243
    else if i.val = 6 then digit3 value 729
    else if i.val = 7 then digit3 value 2187
    else if i.val = 8 then digit3 value 6561
    else if i.val = 9 then digit3 value 19683
    else digit3 value 59049

private def correctionData : Array Nat := #[
  0, 729, 1458, 2187, 2916, 3645, 4374, 5103, 5832, 6561, 7290, 8019, 8748, 118116, 513, 10935,
  39447, 7, 13122, 13851, 14580, 15309, 5, 19845, 17496, 297, 59058, 19683, 20412, 21141, 21870, 492,
  19, 24057, 13203, 118125, 26244, 2268, 252, 56, 4455, 59052, 1539, 81, 810, 32805, 59050, 60,
  118341, 36, 39528, 21, 6642, 488, 39366, 40095, 40824, 41553, 59103, 6723, 43740, 11, 246, 45927,
  30, 118100, 15, 244, 13284, 59535, 19764, 72, 52488, 504, 4536, 891, 1620, 162, 28, 118104,
  2349, 59049, 59778, 60507, 61236, 13140, 87, 63423, 487, 39393, 65610, 4392, 19685, 1476, 18, 747,
  57, 2205, 405, 72171, 189, 489, 39609, 6579, 55, 83, 19689, 118107, 78732, 12, 2214, 6804,
  164, 4401, 756, 1485, 27, 168, 540, 39368, 13365, 19701, 118101, 10, 59130, 6588, 4617, 118099,
  99, 243, 972, 1701, 2430, 39372, 13149, 98415, 324, 13124, 4, 118152, 495, 180, 6567, 19710,
  731, 1460, 2, 108, 39384, 2189, 118584, 13128, 4376, 63, 2193, 6563, 19926, 4380, 59211, 1464,
  6, 735, 118098, 118827, 119556, 120285, 19737, 245, 122472, 165, 6570, 124659, 249, 135, 163, 59067,
  39369, 20169, 29, 13131, 131220, 39367, 2196, 33, 567, 4383, 738, 1467, 9, 137781, 6562, 648,
  90, 39420, 13125, 8, 261, 59076, 45, 13123, 4377, 732, 1461, 3, 39852, 118179, 2190, 1459,
  1, 730, 59292, 2188, 6564, 216, 4375, 19692, 157464, 4428, 24, 1512, 54, 783, 13608, 2241,
  82, 2673, 171, 59051, 4860, 6615, 19686, 486, 1215, 1944, 84, 19684, 270, 20, 13176, 118260,
  7047, 59055, 39375
]

private def syndromeDigit (s : Fin 243) (row : Nat) : Fin 3 :=
  if row = 0 then ⟨s.val % 3, by omega⟩
  else if row = 1 then ⟨(s.val / 3) % 3, by omega⟩
  else if row = 2 then ⟨(s.val / 9) % 3, by omega⟩
  else if row = 3 then ⟨(s.val / 27) % 3, by omega⟩
  else if row = 4 then ⟨(s.val / 81) % 3, by omega⟩
  else f3_0

private def correction (s : Fin 243) : QaryWord 3 11 :=
  decodeCorrectionWord (correctionData.getD s.val 0)

set_option maxRecDepth 20000 in
private theorem correction_syndrome : ∀ s : Fin 243, syndromeIndex (correction s) = s := by
  native_decide

set_option maxRecDepth 20000 in
private theorem correction_weight : ∀ s : Fin 243, (support (correction s)).card <= 2 := by
  native_decide

private def subtractError (x e : QaryWord 3 11) : QaryWord 3 11 :=
  fun i => sub3 (x i) (e i)

private theorem zSyn0_sub (x e : QaryWord 3 11) :
    zSyn0 (subtractError x e) = zSyn0 x - zSyn0 e := by
  unfold zSyn0 subtractError
  simp [asZ3_sub3]
  ring_nf

private theorem zSyn1_sub (x e : QaryWord 3 11) :
    zSyn1 (subtractError x e) = zSyn1 x - zSyn1 e := by
  unfold zSyn1 subtractError
  simp [asZ3_sub3]
  ring_nf

private theorem zSyn2_sub (x e : QaryWord 3 11) :
    zSyn2 (subtractError x e) = zSyn2 x - zSyn2 e := by
  unfold zSyn2 subtractError
  simp [asZ3_sub3]
  ring_nf

private theorem zSyn3_sub (x e : QaryWord 3 11) :
    zSyn3 (subtractError x e) = zSyn3 x - zSyn3 e := by
  unfold zSyn3 subtractError
  simp [asZ3_sub3]
  ring_nf

private theorem zSyn4_sub (x e : QaryWord 3 11) :
    zSyn4 (subtractError x e) = zSyn4 x - zSyn4 e := by
  unfold zSyn4 subtractError
  simp [asZ3_sub3]
  ring_nf

private theorem subtractError_isLinear_of_matching (x e : QaryWord 3 11)
    (h0 : zSyn0 e = zSyn0 x) (h1 : zSyn1 e = zSyn1 x)
    (h2 : zSyn2 e = zSyn2 x) (h3 : zSyn3 e = zSyn3 x)
    (h4 : zSyn4 e = zSyn4 x) : IsLinearWord (subtractError x e) := by
  constructor
  · rw [zSyn0_sub, h0]; ring_nf
  constructor
  · rw [zSyn1_sub, h1]; ring_nf
  constructor
  · rw [zSyn2_sub, h2]; ring_nf
  constructor
  · rw [zSyn3_sub, h3]; ring_nf
  · rw [zSyn4_sub, h4]; ring_nf

private theorem subtractError_dist_le_of_support (x e : QaryWord 3 11)
    (hw : (support e).card <= 2) :
    hammingDist x (subtractError x e) <= 2 := by
  have hsubset : (Finset.univ.filter fun i : Fin 11 => x i ≠ subtractError x e i) ⊆ support e := by
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
        = (Finset.univ.filter fun i : Fin 11 => x i ≠ subtractError x e i).card := rfl
    _ <= (support e).card := Finset.card_le_card hsubset
    _ <= 2 := hw

private def linearRepair (x : QaryWord 3 11) : QaryWord 3 11 :=
  subtractError x (correction (syndromeIndex x))

private theorem linearRepair_isLinear (x : QaryWord 3 11) : IsLinearWord (linearRepair x) := by
  let e := correction (syndromeIndex x)
  have hidx : syndromeIndex e = syndromeIndex x := by
    simpa [e] using correction_syndrome (syndromeIndex x)
  have hcomp := packSyndrome_inj (z3Component (zSyn0 e)) (z3Component (zSyn0 x)) (z3Component (zSyn1 e)) (z3Component (zSyn1 x)) (z3Component (zSyn2 e)) (z3Component (zSyn2 x)) (z3Component (zSyn3 e)) (z3Component (zSyn3 x)) (z3Component (zSyn4 e)) (z3Component (zSyn4 x)) (by simpa [syndromeIndex] using hidx)
  rcases hcomp with ⟨hc0, hc1, hc2, hc3, hc4⟩
  have h0 : zSyn0 e = zSyn0 x := z3Component_inj hc0
  have h1 : zSyn1 e = zSyn1 x := z3Component_inj hc1
  have h2 : zSyn2 e = zSyn2 x := z3Component_inj hc2
  have h3 : zSyn3 e = zSyn3 x := z3Component_inj hc3
  have h4 : zSyn4 e = zSyn4 x := z3Component_inj hc4
  simpa [linearRepair, e] using subtractError_isLinear_of_matching x e h0 h1 h2 h3 h4

private theorem linearRepair_dist (x : QaryWord 3 11) :
    hammingDist x (linearRepair x) <= 2 := by
  simpa [linearRepair] using
    subtractError_dist_le_of_support x (correction (syndromeIndex x))
      (correction_weight (syndromeIndex x))

private theorem linearCode_covers : CoversFinset (linearCode ()) 2 := by
  intro x
  refine ⟨linearRepair x, ?_, linearRepair_dist x⟩
  exact Finset.mem_image.mpr
    ⟨linearFree (linearRepair x), Finset.mem_univ _,
      linearWord_linearFree_eq_of_isLinear (linearRepair x) (linearRepair_isLinear x)⟩

private theorem linearCode_card : (linearCode ()).card <= 729 := by
  calc
    (linearCode ()).card <= (Finset.univ : Finset (QaryWord 3 6)).card := by
      simpa [linearCode] using
        Finset.card_image_le (s := (Finset.univ : Finset (QaryWord 3 6)))
    _ = 729 := by
      rw [Finset.card_univ, qaryWord_card]
      norm_num

theorem upper : QaryKUpper 3 11 2 729 :=
  ⟨linearCode (), linearCode_card, linearCode_covers⟩

end TernaryGolay11

/-! ## Registered source -/

def ternaryGolayUpperName : String :=
  "lean_ternary_golay_upper"

def ternaryGolayUpper (q n r : Nat) : Nat :=
  if q = 3 ∧ n = 11 ∧ r = 2 then 729 else trivialUpper q n r

theorem ternaryGolayUpper_valid (q n r : Nat) :
    QaryKUpper q n r (ternaryGolayUpper q n r) := by
  by_cases h : q = 3 ∧ n = 11 ∧ r = 2
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [ternaryGolayUpper] using TernaryGolay11.upper
  · simpa [ternaryGolayUpper, h] using trivialUpper_valid q n r

def ternaryGolayUpperSource : UpperBoundSource where
  value := ternaryGolayUpper
  trace := fun q n r =>
    .primitive ternaryGolayUpperName (ternaryGolayUpper_valid q n r)

end Database
end CoveringCodes
