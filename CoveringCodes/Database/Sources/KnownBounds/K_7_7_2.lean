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
private def digit7 (value place : Nat) : Fin 7 :=
  ⟨(value / place) % 7, by omega⟩

private def decodeCorrection (value : Nat) : QaryWord 7 7 :=
  fun i =>
    if i.val = 0 then digit7 value 117649
    else if i.val = 1 then digit7 value 16807
    else if i.val = 2 then digit7 value 2401
    else if i.val = 3 then digit7 value 343
    else if i.val = 4 then digit7 value 49
    else if i.val = 5 then digit7 value 7
    else digit7 value 1

private def correctionData : Array Nat := #[
  0, 343, 686, 1029, 1372, 1715, 2058, 7, 117655, 693, 1036, 9607, 84039, 605052, 14, 2407,
  235303, 50422, 1386, 386561, 2072, 21, 16812, 707, 352951, 168070, 12007, 2079, 28, 371, 4807, 773122,
  470599, 1743, 100844, 35, 378, 554631, 1064, 67234, 588247, 14407, 42, 336140, 33617, 7207, 1414, 1757,
  705895, 1, 249704, 453789, 1030, 67242, 1716, 43218, 119707, 117649, 117992, 118335, 118678, 119021, 119364, 722701,
  2401, 235304, 50423, 67256, 3773, 4116, 22, 710696, 108045, 352952, 67263, 12008, 504210, 29, 595448, 4808,
  96040, 470600, 285719, 100845, 68257, 480200, 68943, 69286, 67228, 588248, 67914, 43, 364952, 33618, 672280, 67235,
  55223, 705896, 2, 16835, 482601, 1031, 789929, 69629, 2060, 9, 117650, 367353, 571438, 9609, 84041, 57624,
  237013, 237356, 235298, 235641, 235984, 236327, 236670, 18865, 16807, 120050, 352953, 17836, 18179, 18522, 621859, 16814,
  4802, 5145, 470601, 5831, 100846, 37, 16821, 713097, 110446, 67229, 588249, 403368, 44, 16828, 597849, 7209,
  98441, 184877, 705897, 3, 346, 689, 715498, 112847, 84077, 302526, 84721, 117651, 85407, 600250, 86093, 84035,
  84378, 17, 2403, 235299, 485002, 689087, 84042, 72030, 354319, 354662, 355005, 352947, 353290, 353633, 353976, 31,
  48020, 134456, 237699, 470602, 84056, 100847, 38, 739508, 19208, 122451, 67230, 588250, 14410, 521017, 8918, 33620,
  7203, 7546, 84070, 705898, 4, 638666, 33621, 21609, 124852, 1719, 2062, 420175, 117652, 33628, 11662, 9604,
  84036, 10290, 18, 2404, 235300, 50426, 717899, 115248, 201684, 25, 16809, 33642, 352948, 602651, 806736, 86436,
  471625, 471968, 472311, 472654, 470596, 470939, 471282, 39, 62426, 33656, 252105, 355348, 588251, 14411, 35329, 35672,
  33614, 33957, 240100, 34643, 705899, 5, 348, 64827, 151263, 1377, 357749, 100863, 12, 117653, 756315, 36015,
  9605, 242501, 100870, 19, 537824, 235301, 50427, 24010, 127253, 100877, 319333, 16810, 13377, 352949, 14063, 12005,
  100884, 101185, 101528, 101871, 102214, 470597, 720300, 100842, 588931, 589274, 589617, 589960, 590303, 588245, 588588, 47,
  76832, 33615, 7205, 369754, 472997, 705900, 6, 91238, 692, 50456, 1378, 487403, 590646, 13, 117654, 79233,
  50463, 268912, 84038, 475398, 51793, 52136, 235302, 50421, 50764, 51107, 360150, 27, 16811, 655473, 352950, 38416,
  12006, 244902, 34, 436982, 4806, 50435, 470598, 26411, 129654, 218491, 15092, 15435, 50442, 67233, 588246, 14406,
  706237, 706580, 706923, 707266, 707609, 707952, 705894
]

private def syndromeCorrection (s : Fin 343) : QaryWord 7 7 :=
  decodeCorrection (correctionData.getD s.val 0)

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
  "lean_known_bounds_q7_n7_r2_pair_syndrome_linear"

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
