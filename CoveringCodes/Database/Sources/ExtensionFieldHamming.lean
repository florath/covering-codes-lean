import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

namespace CoveringCodes
namespace Database

namespace NonaryHamming10

private abbrev f9_0 : Fin 9 := ⟨0, by decide⟩
private abbrev f9_1 : Fin 9 := ⟨1, by decide⟩
private abbrev f9_2 : Fin 9 := ⟨2, by decide⟩
private abbrev f9_3 : Fin 9 := ⟨3, by decide⟩
private abbrev f9_4 : Fin 9 := ⟨4, by decide⟩
private abbrev f9_5 : Fin 9 := ⟨5, by decide⟩
private abbrev f9_6 : Fin 9 := ⟨6, by decide⟩
private abbrev f9_7 : Fin 9 := ⟨7, by decide⟩
private abbrev f9_8 : Fin 9 := ⟨8, by decide⟩
private abbrev f8_0 : Fin 8 := ⟨0, by decide⟩
private abbrev f8_1 : Fin 8 := ⟨1, by decide⟩
private abbrev f8_2 : Fin 8 := ⟨2, by decide⟩
private abbrev f8_3 : Fin 8 := ⟨3, by decide⟩
private abbrev f8_4 : Fin 8 := ⟨4, by decide⟩
private abbrev f8_5 : Fin 8 := ⟨5, by decide⟩
private abbrev f8_6 : Fin 8 := ⟨6, by decide⟩
private abbrev f8_7 : Fin 8 := ⟨7, by decide⟩
private def gfAdd (a b : Fin 9) : Fin 9 :=
  ⟨((a.val % 3 + b.val % 3) % 3) + 3 * (((a.val / 3 + b.val / 3) % 3)), by
    have h0 : ((a.val % 3 + b.val % 3) % 3) < 3 := Nat.mod_lt _ (by decide)
    have h1 : ((a.val / 3 + b.val / 3) % 3) < 3 := Nat.mod_lt _ (by decide)
    omega⟩
private def gfNeg (a : Fin 9) : Fin 9 :=
  ⟨((3 - a.val % 3) % 3) + 3 * ((3 - (a.val / 3) % 3) % 3), by
    have h0 : ((3 - a.val % 3) % 3) < 3 := Nat.mod_lt _ (by decide)
    have h1 : ((3 - (a.val / 3) % 3) % 3) < 3 := Nat.mod_lt _ (by decide)
    omega⟩
private def gfMul (a b : Fin 9) : Fin 9 :=
  ⟨(((a.val % 3) * (b.val % 3) + 2 * (a.val / 3) * (b.val / 3)) % 3) +
      3 * ((((a.val % 3) * (b.val / 3) + (a.val / 3) * (b.val % 3)) % 3)), by
    have h0 : (((a.val % 3) * (b.val % 3) + 2 * (a.val / 3) * (b.val / 3)) % 3) < 3 := Nat.mod_lt _ (by decide)
    have h1 : (((a.val % 3) * (b.val / 3) + (a.val / 3) * (b.val % 3)) % 3) < 3 := Nat.mod_lt _ (by decide)
    omega⟩
private def gfSub (a b : Fin 9) : Fin 9 := gfAdd a (gfNeg b)
private def gfInv (a : Fin 9) : Fin 9 :=
  if a.val = 0 then f9_0
  else if a.val = 1 then f9_1
  else if a.val = 2 then f9_2
  else if a.val = 3 then f9_6
  else if a.val = 4 then f9_5
  else if a.val = 5 then f9_4
  else if a.val = 6 then f9_3
  else if a.val = 7 then f9_8
  else if a.val = 8 then f9_7
  else f9_0
private def gfAddList : List (Fin 9) → Fin 9
  | [] => f9_0
  | a :: rest => gfAdd a (gfAddList rest)
private theorem gfAdd_zero (a : Fin 9) : gfAdd a f9_0 = a := by fin_cases a <;> native_decide
private theorem gfSub_self (a : Fin 9) : gfSub a a = f9_0 := by fin_cases a <;> native_decide
private theorem gfSub_zero (a : Fin 9) : gfSub a f9_0 = a := by fin_cases a <;> native_decide
private theorem gfNeg_solve (p s : Fin 9) (h : gfAdd p s = f9_0) : gfNeg s = p := by revert p s; covering_decide
private theorem gfAdd_sub_add (a b c d : Fin 9) : gfAdd (gfSub a b) (gfSub c d) = gfSub (gfAdd a c) (gfAdd b d) := by revert a b c d; covering_decide
private theorem gfMul_sub (a b c : Fin 9) : gfMul a (gfSub b c) = gfSub (gfMul a b) (gfMul a c) := by revert a b c; covering_decide
private theorem gfAddList_sub_pair : ∀ pairs : List (Fin 9 × Fin 9),
    gfAddList (pairs.map (fun p => gfSub p.1 p.2)) =
      gfSub (gfAddList (pairs.map Prod.fst)) (gfAddList (pairs.map Prod.snd))
  | [] => by simp [gfAddList, gfSub_self]
  | p :: rest => by
      simp [gfAddList, gfAddList_sub_pair rest, gfAdd_sub_add]
private def linearWord (free : QaryWord 9 8) : QaryWord 9 10 :=
  fun i =>
    if i.val = 0 then gfNeg (gfAddList [free f8_0, free f8_1, free f8_2, free f8_3, free f8_4, free f8_5, free f8_6, free f8_7])
    else if i.val = 1 then free f8_0
    else if i.val = 2 then free f8_1
    else if i.val = 3 then free f8_2
    else if i.val = 4 then free f8_3
    else if i.val = 5 then free f8_4
    else if i.val = 6 then free f8_5
    else if i.val = 7 then free f8_6
    else if i.val = 8 then free f8_7
    else gfNeg (gfAddList [gfMul (1 : Fin 9) (free f8_0), gfMul (2 : Fin 9) (free f8_1), gfMul (3 : Fin 9) (free f8_2), gfMul (4 : Fin 9) (free f8_3), gfMul (5 : Fin 9) (free f8_4), gfMul (6 : Fin 9) (free f8_5), gfMul (7 : Fin 9) (free f8_6), gfMul (8 : Fin 9) (free f8_7)])
private def linearFree (w : QaryWord 9 10) : QaryWord 9 8 := fun i =>
  if i.val = 0 then w 1
  else if i.val = 1 then w 2
  else if i.val = 2 then w 3
  else if i.val = 3 then w 4
  else if i.val = 4 then w 5
  else if i.val = 5 then w 6
  else if i.val = 6 then w 7
  else if i.val = 7 then w 8
  else f9_0
private def syn0 (w : QaryWord 9 10) : Fin 9 := gfAdd (w 0) (gfAddList [w 1, w 2, w 3, w 4, w 5, w 6, w 7, w 8])
private def syn1 (w : QaryWord 9 10) : Fin 9 := gfAdd (w 9) (gfAddList [gfMul (1 : Fin 9) (w 1), gfMul (2 : Fin 9) (w 2), gfMul (3 : Fin 9) (w 3), gfMul (4 : Fin 9) (w 4), gfMul (5 : Fin 9) (w 5), gfMul (6 : Fin 9) (w 6), gfMul (7 : Fin 9) (w 7), gfMul (8 : Fin 9) (w 8)])
private def IsLinearWord (w : QaryWord 9 10) : Prop := syn0 w = f9_0 ∧ syn1 w = f9_0
private instance (w : QaryWord 9 10) : Decidable (IsLinearWord w) := by unfold IsLinearWord; infer_instance
set_option maxHeartbeats 2000000 in
private theorem linearWord_linearFree_eq_of_isLinear (w : QaryWord 9 10) (h : IsLinearWord w) : linearWord (linearFree w) = w := by
  rcases h with ⟨h0, h1⟩
  have hw0 : gfNeg (gfAddList [w 1, w 2, w 3, w 4, w 5, w 6, w 7, w 8]) = w 0 := gfNeg_solve (w 0) (gfAddList [w 1, w 2, w 3, w 4, w 5, w 6, w 7, w 8]) (by simpa [syn0] using h0)
  have hw1 : gfNeg (gfAddList [gfMul (1 : Fin 9) (w 1), gfMul (2 : Fin 9) (w 2), gfMul (3 : Fin 9) (w 3), gfMul (4 : Fin 9) (w 4), gfMul (5 : Fin 9) (w 5), gfMul (6 : Fin 9) (w 6), gfMul (7 : Fin 9) (w 7), gfMul (8 : Fin 9) (w 8)]) = w 9 := gfNeg_solve (w 9) (gfAddList [gfMul (1 : Fin 9) (w 1), gfMul (2 : Fin 9) (w 2), gfMul (3 : Fin 9) (w 3), gfMul (4 : Fin 9) (w 4), gfMul (5 : Fin 9) (w 5), gfMul (6 : Fin 9) (w 6), gfMul (7 : Fin 9) (w 7), gfMul (8 : Fin 9) (w 8)]) (by simpa [syn1] using h1)
  funext i
  fin_cases i <;> simp [linearWord, linearFree, hw0, hw1]
private def linearCode (_ : Unit) : Finset (QaryWord 9 10) := (Finset.univ : Finset (QaryWord 9 8)).image linearWord
private def packSyndrome (s0 s1 : Fin 9) : Fin 81 := ⟨s0.val + 9 * s1.val, by omega⟩
private def syndromeIndex (w : QaryWord 9 10) : Fin 81 := packSyndrome (syn0 w) (syn1 w)
private theorem packSyndrome_inj (a0 a1 b0 b1 : Fin 9) (h : packSyndrome a0 a1 = packSyndrome b0 b1) : a0 = b0 ∧ a1 = b1 := by
  have hv := congrArg Fin.val h; simp [packSyndrome] at hv
  have h0 : a0.val = b0.val := by omega
  have h1 : a1.val = b1.val := by omega
  exact ⟨Fin.ext h0, Fin.ext h1⟩
private def support (w : QaryWord 9 10) : Finset (Fin 10) := Finset.univ.filter (fun i => w i ≠ f9_0)
private def syndromeDigit (s : Fin 81) (row : Nat) : Fin 9 := if row = 0 then ⟨s.val % 9, by omega⟩ else ⟨(s.val / 9) % 9, by omega⟩
private def correction (s : Fin 81) : QaryWord 9 10 :=
  let s0 := syndromeDigit s 0
  let s1 := syndromeDigit s 1
  if s0 = f9_0 then fun i => if i.val = 9 then s1 else f9_0
  else
    let a := gfMul s1 (gfInv s0)
    let pos : Fin 10 := ⟨a.val, by omega⟩
    fun i => if i = pos then s0 else f9_0
set_option maxRecDepth 20000 in
private theorem correction_syndrome : ∀ s : Fin 81, syndromeIndex (correction s) = s := by native_decide
set_option maxRecDepth 20000 in
private theorem correction_weight : ∀ s : Fin 81, (support (correction s)).card <= 1 := by native_decide
private def subtractError (x e : QaryWord 9 10) : QaryWord 9 10 := fun i => gfSub (x i) (e i)
private theorem gfAddList_sub (a0 b0 : Fin 9) (a1 b1 : Fin 9) (a2 b2 : Fin 9) (a3 b3 : Fin 9) (a4 b4 : Fin 9) (a5 b5 : Fin 9) (a6 b6 : Fin 9) (a7 b7 : Fin 9) : gfAddList [gfSub a0 b0, gfSub a1 b1, gfSub a2 b2, gfSub a3 b3, gfSub a4 b4, gfSub a5 b5, gfSub a6 b6, gfSub a7 b7] = gfSub (gfAddList [a0, a1, a2, a3, a4, a5, a6, a7]) (gfAddList [b0, b1, b2, b3, b4, b5, b6, b7]) := by simpa using gfAddList_sub_pair [(a0, b0), (a1, b1), (a2, b2), (a3, b3), (a4, b4), (a5, b5), (a6, b6), (a7, b7)]
private theorem syn0_sub (x e : QaryWord 9 10) : syn0 (subtractError x e) = gfSub (syn0 x) (syn0 e) := by
  calc
    syn0 (subtractError x e) = gfAdd (gfSub (x 0) (e 0)) (gfSub (gfAddList [x 1, x 2, x 3, x 4, x 5, x 6, x 7, x 8]) (gfAddList [e 1, e 2, e 3, e 4, e 5, e 6, e 7, e 8])) := by simp [syn0, subtractError, gfAddList_sub]
    _ = gfSub (syn0 x) (syn0 e) := by simp [syn0, gfAdd_sub_add]
private theorem syn1_sub (x e : QaryWord 9 10) : syn1 (subtractError x e) = gfSub (syn1 x) (syn1 e) := by
  calc
    syn1 (subtractError x e) = gfAdd (gfSub (x 9) (e 9)) (gfAddList [gfSub (gfMul (1 : Fin 9) (x 1)) (gfMul (1 : Fin 9) (e 1)), gfSub (gfMul (2 : Fin 9) (x 2)) (gfMul (2 : Fin 9) (e 2)), gfSub (gfMul (3 : Fin 9) (x 3)) (gfMul (3 : Fin 9) (e 3)), gfSub (gfMul (4 : Fin 9) (x 4)) (gfMul (4 : Fin 9) (e 4)), gfSub (gfMul (5 : Fin 9) (x 5)) (gfMul (5 : Fin 9) (e 5)), gfSub (gfMul (6 : Fin 9) (x 6)) (gfMul (6 : Fin 9) (e 6)), gfSub (gfMul (7 : Fin 9) (x 7)) (gfMul (7 : Fin 9) (e 7)), gfSub (gfMul (8 : Fin 9) (x 8)) (gfMul (8 : Fin 9) (e 8))]) := by simp [syn1, subtractError, gfMul_sub]
    _ = gfAdd (gfSub (x 9) (e 9)) (gfSub (gfAddList [gfMul (1 : Fin 9) (x 1), gfMul (2 : Fin 9) (x 2), gfMul (3 : Fin 9) (x 3), gfMul (4 : Fin 9) (x 4), gfMul (5 : Fin 9) (x 5), gfMul (6 : Fin 9) (x 6), gfMul (7 : Fin 9) (x 7), gfMul (8 : Fin 9) (x 8)]) (gfAddList [gfMul (1 : Fin 9) (e 1), gfMul (2 : Fin 9) (e 2), gfMul (3 : Fin 9) (e 3), gfMul (4 : Fin 9) (e 4), gfMul (5 : Fin 9) (e 5), gfMul (6 : Fin 9) (e 6), gfMul (7 : Fin 9) (e 7), gfMul (8 : Fin 9) (e 8)])) := by simp [gfAddList_sub]
    _ = gfSub (syn1 x) (syn1 e) := by simp [syn1, gfAdd_sub_add]
private theorem subtractError_isLinear_of_matching (x e : QaryWord 9 10) (h0 : syn0 e = syn0 x) (h1 : syn1 e = syn1 x) : IsLinearWord (subtractError x e) := by constructor <;> first | rw [syn0_sub, h0, gfSub_self] | rw [syn1_sub, h1, gfSub_self]
private theorem subtractError_dist_le_of_support (x e : QaryWord 9 10) (hw : (support e).card <= 1) : hammingDist x (subtractError x e) <= 1 := by
  have hsubset : (Finset.univ.filter fun i : Fin 10 => x i ≠ subtractError x e i) ⊆ support e := by
    intro i hi; simp only [support, Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
    by_contra hne
    have heq : e i = f9_0 := by simpa using hne
    apply hi; unfold subtractError; rw [heq]; exact (gfSub_zero (x i)).symm
  calc
    hammingDist x (subtractError x e) = (Finset.univ.filter fun i : Fin 10 => x i ≠ subtractError x e i).card := rfl
    _ <= (support e).card := Finset.card_le_card hsubset
    _ <= 1 := hw
private def linearRepair (x : QaryWord 9 10) : QaryWord 9 10 := subtractError x (correction (syndromeIndex x))
private theorem linearRepair_isLinear (x : QaryWord 9 10) : IsLinearWord (linearRepair x) := by
  let e := correction (syndromeIndex x)
  have hidx : syndromeIndex e = syndromeIndex x := by simpa [e] using correction_syndrome (syndromeIndex x)
  have hcomp := packSyndrome_inj (syn0 e) (syn1 e) (syn0 x) (syn1 x) (by simpa [syndromeIndex] using hidx)
  rcases hcomp with ⟨h0, h1⟩
  simpa [linearRepair, e] using subtractError_isLinear_of_matching x e h0 h1
private theorem linearRepair_dist (x : QaryWord 9 10) : hammingDist x (linearRepair x) <= 1 := by simpa [linearRepair] using subtractError_dist_le_of_support x (correction (syndromeIndex x)) (correction_weight (syndromeIndex x))
private theorem linearCode_covers : CoversFinset (linearCode ()) 1 := by intro x; refine ⟨linearRepair x, ?_, linearRepair_dist x⟩; exact Finset.mem_image.mpr ⟨linearFree (linearRepair x), Finset.mem_univ _, linearWord_linearFree_eq_of_isLinear (linearRepair x) (linearRepair_isLinear x)⟩
private theorem linearCode_card : (linearCode ()).card <= 43046721 := by
  calc
    (linearCode ()).card <= (Finset.univ : Finset (QaryWord 9 8)).card := by simpa [linearCode] using Finset.card_image_le (s := (Finset.univ : Finset (QaryWord 9 8)))
    _ = 43046721 := by rw [Finset.card_univ, qaryWord_card]; norm_num
theorem upper : QaryKUpper 9 10 1 43046721 :=
  ⟨linearCode (), linearCode_card, linearCode_covers⟩
end NonaryHamming10

namespace OctonaryHamming9

private abbrev f8_0 : Fin 8 := ⟨0, by decide⟩
private abbrev f8_1 : Fin 8 := ⟨1, by decide⟩
private abbrev f8_2 : Fin 8 := ⟨2, by decide⟩
private abbrev f8_3 : Fin 8 := ⟨3, by decide⟩
private abbrev f8_4 : Fin 8 := ⟨4, by decide⟩
private abbrev f8_5 : Fin 8 := ⟨5, by decide⟩
private abbrev f8_6 : Fin 8 := ⟨6, by decide⟩
private abbrev f8_7 : Fin 8 := ⟨7, by decide⟩
private abbrev f7_0 : Fin 7 := ⟨0, by decide⟩
private abbrev f7_1 : Fin 7 := ⟨1, by decide⟩
private abbrev f7_2 : Fin 7 := ⟨2, by decide⟩
private abbrev f7_3 : Fin 7 := ⟨3, by decide⟩
private abbrev f7_4 : Fin 7 := ⟨4, by decide⟩
private abbrev f7_5 : Fin 7 := ⟨5, by decide⟩
private abbrev f7_6 : Fin 7 := ⟨6, by decide⟩
private def gfAddTable : Array Nat := #[
  0, 1, 2, 3, 4, 5, 6, 7,
  1, 0, 3, 2, 5, 4, 7, 6,
  2, 3, 0, 1, 6, 7, 4, 5,
  3, 2, 1, 0, 7, 6, 5, 4,
  4, 5, 6, 7, 0, 1, 2, 3,
  5, 4, 7, 6, 1, 0, 3, 2,
  6, 7, 4, 5, 2, 3, 0, 1,
  7, 6, 5, 4, 3, 2, 1, 0
]
private def gfMulTable : Array Nat := #[
  0, 0, 0, 0, 0, 0, 0, 0,
  0, 1, 2, 3, 4, 5, 6, 7,
  0, 2, 4, 6, 3, 1, 7, 5,
  0, 3, 6, 5, 7, 4, 1, 2,
  0, 4, 3, 7, 6, 2, 5, 1,
  0, 5, 1, 4, 2, 7, 3, 6,
  0, 6, 7, 1, 5, 3, 2, 4,
  0, 7, 5, 2, 1, 6, 4, 3
]
private def gfAdd (a b : Fin 8) : Fin 8 :=
  ⟨gfAddTable.getD (a.val * 8 + b.val) 0, by fin_cases a <;> fin_cases b <;> native_decide⟩
private def gfMul (a b : Fin 8) : Fin 8 :=
  ⟨gfMulTable.getD (a.val * 8 + b.val) 0, by fin_cases a <;> fin_cases b <;> native_decide⟩
private def gfNeg (a : Fin 8) : Fin 8 := a
private def gfSub (a b : Fin 8) : Fin 8 := gfAdd a (gfNeg b)
private def gfInv (a : Fin 8) : Fin 8 :=
  if a.val = 0 then f8_0
  else if a.val = 1 then f8_1
  else if a.val = 2 then f8_5
  else if a.val = 3 then f8_6
  else if a.val = 4 then f8_7
  else if a.val = 5 then f8_2
  else if a.val = 6 then f8_3
  else if a.val = 7 then f8_4
  else f8_0
private def gfAddList : List (Fin 8) → Fin 8
  | [] => f8_0
  | a :: rest => gfAdd a (gfAddList rest)
private theorem gfAdd_zero (a : Fin 8) : gfAdd a f8_0 = a := by fin_cases a <;> native_decide
private theorem gfSub_self (a : Fin 8) : gfSub a a = f8_0 := by fin_cases a <;> native_decide
private theorem gfSub_zero (a : Fin 8) : gfSub a f8_0 = a := by fin_cases a <;> native_decide
private theorem gfNeg_solve (p s : Fin 8) (h : gfAdd p s = f8_0) : gfNeg s = p := by revert p s; covering_decide
private theorem gfAdd_sub_add (a b c d : Fin 8) : gfAdd (gfSub a b) (gfSub c d) = gfSub (gfAdd a c) (gfAdd b d) := by revert a b c d; native_decide
private theorem gfMul_sub (a b c : Fin 8) : gfMul a (gfSub b c) = gfSub (gfMul a b) (gfMul a c) := by revert a b c; native_decide
private theorem gfAddList_sub_pair : ∀ pairs : List (Fin 8 × Fin 8),
    gfAddList (pairs.map (fun p => gfSub p.1 p.2)) =
      gfSub (gfAddList (pairs.map Prod.fst)) (gfAddList (pairs.map Prod.snd))
  | [] => by simp [gfAddList, gfSub_self]
  | p :: rest => by
      simp [gfAddList, gfAddList_sub_pair rest, gfAdd_sub_add]
private def linearWord (free : QaryWord 8 7) : QaryWord 8 9 :=
  fun i =>
    if i.val = 0 then gfNeg (gfAddList [free f7_0, free f7_1, free f7_2, free f7_3, free f7_4, free f7_5, free f7_6])
    else if i.val = 1 then free f7_0
    else if i.val = 2 then free f7_1
    else if i.val = 3 then free f7_2
    else if i.val = 4 then free f7_3
    else if i.val = 5 then free f7_4
    else if i.val = 6 then free f7_5
    else if i.val = 7 then free f7_6
    else gfNeg (gfAddList [gfMul (1 : Fin 8) (free f7_0), gfMul (2 : Fin 8) (free f7_1), gfMul (3 : Fin 8) (free f7_2), gfMul (4 : Fin 8) (free f7_3), gfMul (5 : Fin 8) (free f7_4), gfMul (6 : Fin 8) (free f7_5), gfMul (7 : Fin 8) (free f7_6)])
private def linearFree (w : QaryWord 8 9) : QaryWord 8 7 := fun i =>
  if i.val = 0 then w 1
  else if i.val = 1 then w 2
  else if i.val = 2 then w 3
  else if i.val = 3 then w 4
  else if i.val = 4 then w 5
  else if i.val = 5 then w 6
  else if i.val = 6 then w 7
  else f8_0
private def syn0 (w : QaryWord 8 9) : Fin 8 := gfAdd (w 0) (gfAddList [w 1, w 2, w 3, w 4, w 5, w 6, w 7])
private def syn1 (w : QaryWord 8 9) : Fin 8 := gfAdd (w 8) (gfAddList [gfMul (1 : Fin 8) (w 1), gfMul (2 : Fin 8) (w 2), gfMul (3 : Fin 8) (w 3), gfMul (4 : Fin 8) (w 4), gfMul (5 : Fin 8) (w 5), gfMul (6 : Fin 8) (w 6), gfMul (7 : Fin 8) (w 7)])
private def IsLinearWord (w : QaryWord 8 9) : Prop := syn0 w = f8_0 ∧ syn1 w = f8_0
private instance (w : QaryWord 8 9) : Decidable (IsLinearWord w) := by unfold IsLinearWord; infer_instance
set_option maxHeartbeats 2000000 in
private theorem linearWord_linearFree_eq_of_isLinear (w : QaryWord 8 9) (h : IsLinearWord w) : linearWord (linearFree w) = w := by
  rcases h with ⟨h0, h1⟩
  have hw0 : gfNeg (gfAddList [w 1, w 2, w 3, w 4, w 5, w 6, w 7]) = w 0 := gfNeg_solve (w 0) (gfAddList [w 1, w 2, w 3, w 4, w 5, w 6, w 7]) (by simpa [syn0] using h0)
  have hw1 : gfNeg (gfAddList [gfMul (1 : Fin 8) (w 1), gfMul (2 : Fin 8) (w 2), gfMul (3 : Fin 8) (w 3), gfMul (4 : Fin 8) (w 4), gfMul (5 : Fin 8) (w 5), gfMul (6 : Fin 8) (w 6), gfMul (7 : Fin 8) (w 7)]) = w 8 := gfNeg_solve (w 8) (gfAddList [gfMul (1 : Fin 8) (w 1), gfMul (2 : Fin 8) (w 2), gfMul (3 : Fin 8) (w 3), gfMul (4 : Fin 8) (w 4), gfMul (5 : Fin 8) (w 5), gfMul (6 : Fin 8) (w 6), gfMul (7 : Fin 8) (w 7)]) (by simpa [syn1] using h1)
  funext i
  fin_cases i <;> simp [linearWord, linearFree, hw0, hw1]
private def linearCode (_ : Unit) : Finset (QaryWord 8 9) := (Finset.univ : Finset (QaryWord 8 7)).image linearWord
private def packSyndrome (s0 s1 : Fin 8) : Fin 64 := ⟨s0.val + 8 * s1.val, by omega⟩
private def syndromeIndex (w : QaryWord 8 9) : Fin 64 := packSyndrome (syn0 w) (syn1 w)
private theorem packSyndrome_inj (a0 a1 b0 b1 : Fin 8) (h : packSyndrome a0 a1 = packSyndrome b0 b1) : a0 = b0 ∧ a1 = b1 := by
  have hv := congrArg Fin.val h; simp [packSyndrome] at hv
  have h0 : a0.val = b0.val := by omega
  have h1 : a1.val = b1.val := by omega
  exact ⟨Fin.ext h0, Fin.ext h1⟩
private def support (w : QaryWord 8 9) : Finset (Fin 9) := Finset.univ.filter (fun i => w i ≠ f8_0)
private def syndromeDigit (s : Fin 64) (row : Nat) : Fin 8 := if row = 0 then ⟨s.val % 8, by omega⟩ else ⟨(s.val / 8) % 8, by omega⟩
private def correction (s : Fin 64) : QaryWord 8 9 :=
  let s0 := syndromeDigit s 0
  let s1 := syndromeDigit s 1
  if s0 = f8_0 then fun i => if i.val = 8 then s1 else f8_0
  else
    let a := gfMul s1 (gfInv s0)
    let pos : Fin 9 := ⟨a.val, by omega⟩
    fun i => if i = pos then s0 else f8_0
set_option maxRecDepth 20000 in
private theorem correction_syndrome : ∀ s : Fin 64, syndromeIndex (correction s) = s := by native_decide
set_option maxRecDepth 20000 in
private theorem correction_weight : ∀ s : Fin 64, (support (correction s)).card <= 1 := by native_decide
private def subtractError (x e : QaryWord 8 9) : QaryWord 8 9 := fun i => gfSub (x i) (e i)
private theorem gfAddList_sub (a0 b0 : Fin 8) (a1 b1 : Fin 8) (a2 b2 : Fin 8) (a3 b3 : Fin 8) (a4 b4 : Fin 8) (a5 b5 : Fin 8) (a6 b6 : Fin 8) : gfAddList [gfSub a0 b0, gfSub a1 b1, gfSub a2 b2, gfSub a3 b3, gfSub a4 b4, gfSub a5 b5, gfSub a6 b6] = gfSub (gfAddList [a0, a1, a2, a3, a4, a5, a6]) (gfAddList [b0, b1, b2, b3, b4, b5, b6]) := by simpa using gfAddList_sub_pair [(a0, b0), (a1, b1), (a2, b2), (a3, b3), (a4, b4), (a5, b5), (a6, b6)]
private theorem syn0_sub (x e : QaryWord 8 9) : syn0 (subtractError x e) = gfSub (syn0 x) (syn0 e) := by
  calc
    syn0 (subtractError x e) = gfAdd (gfSub (x 0) (e 0)) (gfSub (gfAddList [x 1, x 2, x 3, x 4, x 5, x 6, x 7]) (gfAddList [e 1, e 2, e 3, e 4, e 5, e 6, e 7])) := by simp [syn0, subtractError, gfAddList_sub]
    _ = gfSub (syn0 x) (syn0 e) := by simp [syn0, gfAdd_sub_add]
private theorem syn1_sub (x e : QaryWord 8 9) : syn1 (subtractError x e) = gfSub (syn1 x) (syn1 e) := by
  calc
    syn1 (subtractError x e) = gfAdd (gfSub (x 8) (e 8)) (gfAddList [gfSub (gfMul (1 : Fin 8) (x 1)) (gfMul (1 : Fin 8) (e 1)), gfSub (gfMul (2 : Fin 8) (x 2)) (gfMul (2 : Fin 8) (e 2)), gfSub (gfMul (3 : Fin 8) (x 3)) (gfMul (3 : Fin 8) (e 3)), gfSub (gfMul (4 : Fin 8) (x 4)) (gfMul (4 : Fin 8) (e 4)), gfSub (gfMul (5 : Fin 8) (x 5)) (gfMul (5 : Fin 8) (e 5)), gfSub (gfMul (6 : Fin 8) (x 6)) (gfMul (6 : Fin 8) (e 6)), gfSub (gfMul (7 : Fin 8) (x 7)) (gfMul (7 : Fin 8) (e 7))]) := by simp [syn1, subtractError, gfMul_sub]
    _ = gfAdd (gfSub (x 8) (e 8)) (gfSub (gfAddList [gfMul (1 : Fin 8) (x 1), gfMul (2 : Fin 8) (x 2), gfMul (3 : Fin 8) (x 3), gfMul (4 : Fin 8) (x 4), gfMul (5 : Fin 8) (x 5), gfMul (6 : Fin 8) (x 6), gfMul (7 : Fin 8) (x 7)]) (gfAddList [gfMul (1 : Fin 8) (e 1), gfMul (2 : Fin 8) (e 2), gfMul (3 : Fin 8) (e 3), gfMul (4 : Fin 8) (e 4), gfMul (5 : Fin 8) (e 5), gfMul (6 : Fin 8) (e 6), gfMul (7 : Fin 8) (e 7)])) := by simp [gfAddList_sub]
    _ = gfSub (syn1 x) (syn1 e) := by simp [syn1, gfAdd_sub_add]
private theorem subtractError_isLinear_of_matching (x e : QaryWord 8 9) (h0 : syn0 e = syn0 x) (h1 : syn1 e = syn1 x) : IsLinearWord (subtractError x e) := by constructor <;> first | rw [syn0_sub, h0, gfSub_self] | rw [syn1_sub, h1, gfSub_self]
private theorem subtractError_dist_le_of_support (x e : QaryWord 8 9) (hw : (support e).card <= 1) : hammingDist x (subtractError x e) <= 1 := by
  have hsubset : (Finset.univ.filter fun i : Fin 9 => x i ≠ subtractError x e i) ⊆ support e := by
    intro i hi; simp only [support, Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
    by_contra hne
    have heq : e i = f8_0 := by simpa using hne
    apply hi; unfold subtractError; rw [heq]; exact (gfSub_zero (x i)).symm
  calc
    hammingDist x (subtractError x e) = (Finset.univ.filter fun i : Fin 9 => x i ≠ subtractError x e i).card := rfl
    _ <= (support e).card := Finset.card_le_card hsubset
    _ <= 1 := hw
private def linearRepair (x : QaryWord 8 9) : QaryWord 8 9 := subtractError x (correction (syndromeIndex x))
private theorem linearRepair_isLinear (x : QaryWord 8 9) : IsLinearWord (linearRepair x) := by
  let e := correction (syndromeIndex x)
  have hidx : syndromeIndex e = syndromeIndex x := by simpa [e] using correction_syndrome (syndromeIndex x)
  have hcomp := packSyndrome_inj (syn0 e) (syn1 e) (syn0 x) (syn1 x) (by simpa [syndromeIndex] using hidx)
  rcases hcomp with ⟨h0, h1⟩
  simpa [linearRepair, e] using subtractError_isLinear_of_matching x e h0 h1
private theorem linearRepair_dist (x : QaryWord 8 9) : hammingDist x (linearRepair x) <= 1 := by simpa [linearRepair] using subtractError_dist_le_of_support x (correction (syndromeIndex x)) (correction_weight (syndromeIndex x))
private theorem linearCode_covers : CoversFinset (linearCode ()) 1 := by intro x; refine ⟨linearRepair x, ?_, linearRepair_dist x⟩; exact Finset.mem_image.mpr ⟨linearFree (linearRepair x), Finset.mem_univ _, linearWord_linearFree_eq_of_isLinear (linearRepair x) (linearRepair_isLinear x)⟩
private theorem linearCode_card : (linearCode ()).card <= 2097152 := by
  calc
    (linearCode ()).card <= (Finset.univ : Finset (QaryWord 8 7)).card := by simpa [linearCode] using Finset.card_image_le (s := (Finset.univ : Finset (QaryWord 8 7)))
    _ = 2097152 := by rw [Finset.card_univ, qaryWord_card]; norm_num
theorem upper : QaryKUpper 8 9 1 2097152 :=
  ⟨linearCode (), linearCode_card, linearCode_covers⟩
end OctonaryHamming9

def extensionFieldHammingUpperName : String :=
  "lean_extension_field_hamming_upper"

def extensionFieldHammingUpper (q n r : Nat) : Nat :=
  if q = 9 ∧ n = 10 ∧ r = 1 then 43046721
  else if q = 8 ∧ n = 9 ∧ r = 1 then 2097152
  else trivialUpper q n r

theorem extensionFieldHammingUpper_valid (q n r : Nat) :
    QaryKUpper q n r (extensionFieldHammingUpper q n r) := by
  unfold extensionFieldHammingUpper
  by_cases h9 : q = 9 ∧ n = 10 ∧ r = 1
  · rcases h9 with ⟨rfl, rfl, rfl⟩
    simpa using NonaryHamming10.upper
  · by_cases h8 : q = 8 ∧ n = 9 ∧ r = 1
    · rcases h8 with ⟨rfl, rfl, rfl⟩
      simpa using OctonaryHamming9.upper
    · simp [h9, h8, trivialUpper_valid]

def extensionFieldHammingUpperSource : UpperBoundSource where
  value := extensionFieldHammingUpper
  trace := fun q n r =>
    .primitive extensionFieldHammingUpperName
      (extensionFieldHammingUpper_valid q n r)

end Database
end CoveringCodes
