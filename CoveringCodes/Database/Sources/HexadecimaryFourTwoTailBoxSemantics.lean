import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxDirect
import Mathlib.Tactic

/-!
# Semantic bridge for K16 4-fiber tail-box CNFs

This file starts the cover-independent semantic layer for the tail-box
certificates.  A `TailBoxProfile` abstracts the residual box obtained after
deleting a normalized exact 4-fiber: three pair-present relations, per-symbol
capacities, coverage of every tail triple by one pair, and the capacity
constraints needed by the CNF.
-/

namespace CoveringCodes
namespace Database

open scoped BigOperators

namespace TailBoxDirect

export HexadecimaryFourTwoTailBoxDirect
  (coordCount get3 thresholdCountForCoord atMostSeqAuxCount thresholdVarsForCoord
    budgetExtra pairVarCount thresholdVarCount thresholdVarCountBeforeCoord
    budgetCounterFirst budgetSequentialClauses budgetAndFixedLowClauses
    atMostSeqClauses atMostSeqClausesWithAux seqAux litAt
    spreadToSizes spreadToBudgets tailBoxCnf tailBoxClauses tailBoxNVars
    p01Var p02Var p12Var maxOther
    posP01Lit posP02Lit posP12Lit thresholdVar thresholdLit
    fixedLowThresholdsForCoord fixedLowClausesForCoord fixedLowClauses
    thresholdsForCoord incidentLits choose capacityForcingClauses coverageClauses)

end TailBoxDirect

structure TailBoxProfile (sizes budgets : Nat × Nat × Nat) where
  p01 : Nat → Nat → Bool
  p02 : Nat → Nat → Bool
  p12 : Nat → Nat → Bool
  cap : Nat → Nat → Nat
  size_pos : ∀ coord, coord < 3 → 0 < TailBoxDirect.get3 sizes coord
  cover :
    ∀ a b c,
      a < sizes.1 →
      b < sizes.2.1 →
      c < sizes.2.2 →
        p01 a b = true ∨ p02 a c = true ∨ p12 b c = true
  degreeBound :
    ∀ coord symbol other,
      coord < 3 →
      symbol < TailBoxDirect.get3 sizes coord →
      other < 3 →
      other ≠ coord →
        ((Finset.range (TailBoxDirect.get3 sizes other)).filter
          (fun idx =>
            (match coord, other with
            | 0, 1 => p01 symbol idx
            | 0, 2 => p02 symbol idx
            | 1, 0 => p01 idx symbol
            | 1, 2 => p12 symbol idx
            | 2, 0 => p02 idx symbol
            | 2, 1 => p12 idx symbol
            | _, _ => false) = true)).card ≤ cap coord symbol
  baselineBound :
    ∀ coord symbol,
      coord < 3 →
      symbol < TailBoxDirect.get3 sizes coord →
        4 ≤ cap coord symbol
  budgetBound :
    ∀ coord,
      coord < 3 →
        (Finset.range (TailBoxDirect.get3 sizes coord)).sum
          (fun symbol => cap coord symbol) ≤ TailBoxDirect.get3 budgets coord
  fixedLow :
    ∀ coord, coord < 3 → cap coord 0 ≤ 5

def TailBoxProfile.pairValuation
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets) (idx : Nat) : Prop :=
  let n01 := sizes.1 * sizes.2.1
  let n02 := sizes.1 * sizes.2.2
  if idx < n01 then
    P.p01 (idx / sizes.2.1) (idx % sizes.2.1) = true
  else if idx < n01 + n02 then
    let off := idx - n01
    P.p02 (off / sizes.2.2) (off % sizes.2.2) = true
  else
    let off := idx - n01 - n02
    P.p12 (off / sizes.2.2) (off % sizes.2.2) = true

def TailBoxProfile.thresholdOffsetCount0 (sizes : Nat × Nat × Nat) : Nat :=
  sizes.1 * TailBoxDirect.thresholdCountForCoord sizes 0

def TailBoxProfile.thresholdOffsetCount1 (sizes : Nat × Nat × Nat) : Nat :=
  sizes.2.1 * TailBoxDirect.thresholdCountForCoord sizes 1

def TailBoxProfile.thresholdCoordOfOffset (sizes : Nat × Nat × Nat) (off : Nat) : Nat :=
  if off < thresholdOffsetCount0 sizes then
    0
  else if off < thresholdOffsetCount0 sizes + thresholdOffsetCount1 sizes then
    1
  else
    2

def TailBoxProfile.thresholdRemOfOffset (sizes : Nat × Nat × Nat) (off : Nat) : Nat :=
  if off < thresholdOffsetCount0 sizes then
    off
  else if off < thresholdOffsetCount0 sizes + thresholdOffsetCount1 sizes then
    off - thresholdOffsetCount0 sizes
  else
    off - thresholdOffsetCount0 sizes - thresholdOffsetCount1 sizes

def TailBoxProfile.thresholdValuation
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets) (off : Nat) : Prop :=
  let coord := thresholdCoordOfOffset sizes off
  let rem := thresholdRemOfOffset sizes off
  let count := TailBoxDirect.thresholdCountForCoord sizes coord
  let symbol := rem / count
  let threshold := rem % count + 5
  threshold ≤ P.cap coord symbol

def TailBoxProfile.budgetThresholdInput
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets) (coord idx : Nat) : Prop :=
  let count := TailBoxDirect.thresholdCountForCoord sizes coord
  let symbol := idx / count
  let threshold := idx % count + 5
  threshold ≤ P.cap coord symbol

noncomputable def TailBoxProfile.budgetPrefixCount
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets) (coord : Nat) : Nat → Nat
  | 0 => 0
  | n + 1 => by
      classical
      exact
        P.budgetPrefixCount coord n +
          if P.budgetThresholdInput coord n then 1 else 0

def TailBoxProfile.budgetAuxValuation
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets) (off : Nat) : Prop :=
  let aux0 :=
    TailBoxDirect.atMostSeqAuxCount
      (TailBoxDirect.thresholdVarsForCoord sizes 0)
      (TailBoxDirect.budgetExtra sizes budgets 0)
  let aux1 :=
    TailBoxDirect.atMostSeqAuxCount
      (TailBoxDirect.thresholdVarsForCoord sizes 1)
      (TailBoxDirect.budgetExtra sizes budgets 1)
  let coord := if off < aux0 then 0 else if off < aux0 + aux1 then 1 else 2
  let rem := if off < aux0 then off else if off < aux0 + aux1 then off - aux0 else off - aux0 - aux1
  let bound := TailBoxDirect.budgetExtra sizes budgets coord
  let i := rem / bound + 1
  let count := rem % bound + 1
  count ≤ P.budgetPrefixCount coord i

def TailBoxProfile.valuation
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets) : Sat.Valuation :=
  fun idx =>
    if idx < TailBoxDirect.pairVarCount sizes then
      P.pairValuation idx
    else if idx < TailBoxDirect.pairVarCount sizes + TailBoxDirect.thresholdVarCount sizes then
      P.thresholdValuation (idx - TailBoxDirect.pairVarCount sizes)
    else
      P.budgetAuxValuation
        (idx - TailBoxDirect.pairVarCount sizes - TailBoxDirect.thresholdVarCount sizes)

private theorem valuation_satisfies_three_pos
    (v : Sat.Valuation) (x y z : Nat) (h : v x ∨ v y ∨ v z) :
    Sat.Valuation.satisfies v
      [Sat.Literal.pos x, Sat.Literal.pos y, Sat.Literal.pos z] := by
  intro hx hy hz
  rcases h with h | h | h
  · exact hx h
  · exact hy h
  · exact hz h

private theorem valuation_satisfies_neg_pos
    (v : Sat.Valuation) (x y : Nat) (hxy : v x → v y) :
    Sat.Valuation.satisfies v [Sat.Literal.neg x, Sat.Literal.pos y] := by
  intro hx hy
  exact hy (hxy hx)

private theorem valuation_satisfies_neg_neg
    (v : Sat.Valuation) (x y : Nat)
    (hxy : v x → v y → False) :
    Sat.Valuation.satisfies v [Sat.Literal.neg x, Sat.Literal.neg y] := by
  intro hx hy
  exact hxy hx hy

private theorem valuation_satisfies_neg_neg_pos
    (v : Sat.Valuation) (x y z : Nat)
    (hxyz : v x → v y → v z) :
    Sat.Valuation.satisfies v
      [Sat.Literal.neg x, Sat.Literal.neg y, Sat.Literal.pos z] := by
  intro hx hy hz
  exact hz (hxyz hx hy)

private theorem valuation_satisfies_fmla_append
    {v : Sat.Valuation} {left right : Sat.Fmla}
    (hleft : Sat.Valuation.satisfies_fmla v left)
    (hright : Sat.Valuation.satisfies_fmla v right) :
    Sat.Valuation.satisfies_fmla v (left ++ right) := by
  constructor
  intro clause hclause
  rw [List.mem_append] at hclause
  rcases hclause with hclause | hclause
  · exact hleft.prop clause hclause
  · exact hright.prop clause hclause

@[simp] private theorem rawPosLiteral_eq (x : Nat) (hx : 0 < x) :
    Sat.Literal.ofInt (x : Int) = Sat.Literal.pos (x - 1) := by
  unfold Sat.Literal.ofInt
  have hnot : ¬ x = 0 := Nat.ne_of_gt hx
  simp

@[simp] private theorem rawNegLiteral_eq (x : Nat) (hx : 0 < x) :
    Sat.Literal.ofInt (-(x : Int)) = Sat.Literal.neg (x - 1) := by
  unfold Sat.Literal.ofInt
  have hnot : ¬ x = 0 := Nat.ne_of_gt hx
  simp [hnot]

@[simp] private theorem rawPosP01Literal_eq
    (sizes : Nat × Nat × Nat) (a b : Nat) :
    Sat.Literal.ofInt (TailBoxDirect.posP01Lit sizes a b) =
      Sat.Literal.pos (TailBoxDirect.p01Var sizes a b - 1) := by
  apply rawPosLiteral_eq
  simp [TailBoxDirect.p01Var]

@[simp] private theorem rawPosP02Literal_eq
    (sizes : Nat × Nat × Nat) (a c : Nat) :
    Sat.Literal.ofInt (TailBoxDirect.posP02Lit sizes a c) =
      Sat.Literal.pos (TailBoxDirect.p02Var sizes a c - 1) := by
  apply rawPosLiteral_eq
  simp [TailBoxDirect.p02Var]

@[simp] private theorem rawPosP12Literal_eq
    (sizes : Nat × Nat × Nat) (b c : Nat) :
    Sat.Literal.ofInt (TailBoxDirect.posP12Lit sizes b c) =
      Sat.Literal.pos (TailBoxDirect.p12Var sizes b c - 1) := by
  apply rawPosLiteral_eq
  simp [TailBoxDirect.p12Var]

@[simp] private theorem rawNegThresholdLiteral_eq
    (sizes : Nat × Nat × Nat) (coord symbol threshold : Nat) :
    Sat.Literal.ofInt (-(TailBoxDirect.thresholdLit sizes coord symbol threshold)) =
      Sat.Literal.neg (TailBoxDirect.thresholdVar sizes coord symbol threshold - 1) := by
  apply rawNegLiteral_eq
  simp [TailBoxDirect.thresholdVar]

@[simp] private theorem rawNegP01Literal_eq
    (sizes : Nat × Nat × Nat) (a b : Nat) :
    Sat.Literal.ofInt (-(TailBoxDirect.posP01Lit sizes a b)) =
      Sat.Literal.neg (TailBoxDirect.p01Var sizes a b - 1) := by
  apply rawNegLiteral_eq
  simp [TailBoxDirect.p01Var]

@[simp] private theorem rawNegP02Literal_eq
    (sizes : Nat × Nat × Nat) (a c : Nat) :
    Sat.Literal.ofInt (-(TailBoxDirect.posP02Lit sizes a c)) =
      Sat.Literal.neg (TailBoxDirect.p02Var sizes a c - 1) := by
  apply rawNegLiteral_eq
  simp [TailBoxDirect.p02Var]

@[simp] private theorem rawNegP12Literal_eq
    (sizes : Nat × Nat × Nat) (b c : Nat) :
    Sat.Literal.ofInt (-(TailBoxDirect.posP12Lit sizes b c)) =
      Sat.Literal.neg (TailBoxDirect.p12Var sizes b c - 1) := by
  apply rawNegLiteral_eq
  simp [TailBoxDirect.p12Var]

@[simp] private theorem rawPosThresholdLiteral_eq
    (sizes : Nat × Nat × Nat) (coord symbol threshold : Nat) :
    Sat.Literal.ofInt (TailBoxDirect.thresholdLit sizes coord symbol threshold) =
      Sat.Literal.pos (TailBoxDirect.thresholdVar sizes coord symbol threshold - 1) := by
  apply rawPosLiteral_eq
  simp [TailBoxDirect.thresholdVar]

private theorem rawPosBudgetSeqAuxLiteral_eq
    (first bound i count : Nat)
    (hpos : 0 < first + (i - 1) * bound + (count - 1)) :
    Sat.Literal.ofInt (TailBoxDirect.seqAux first bound i count) =
      Sat.Literal.pos
        (first + (i - 1) * bound + (count - 1) - 1) := by
  simpa [TailBoxDirect.seqAux] using
    rawPosLiteral_eq (first + (i - 1) * bound + (count - 1)) hpos

private theorem rawNegBudgetSeqAuxLiteral_eq
    (first bound i count : Nat)
    (hpos : 0 < first + (i - 1) * bound + (count - 1)) :
    Sat.Literal.ofInt (-(TailBoxDirect.seqAux first bound i count)) =
      Sat.Literal.neg
        (first + (i - 1) * bound + (count - 1) - 1) := by
  simpa [TailBoxDirect.seqAux] using
    rawNegLiteral_eq (first + (i - 1) * bound + (count - 1)) hpos

noncomputable def TailBoxProfile.rawNegLitFalseBool
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets) (lit : Int) : Bool := by
  classical
  exact decide (Sat.Valuation.neg P.valuation (Sat.Literal.ofInt (-lit)))

private theorem choose_mem_length_sublist
    {α : Type} {k : Nat} {xs ys : List α}
    (h : ys ∈ TailBoxDirect.choose k xs) :
    ys.length = k ∧ List.Sublist ys xs := by
  induction xs generalizing k ys with
  | nil =>
      cases k <;> simp [TailBoxDirect.choose] at h
      subst h
      exact ⟨rfl, List.nil_sublist _⟩
  | cons x xs ih =>
      cases k with
      | zero =>
          simp [TailBoxDirect.choose] at h
          subst h
          exact ⟨rfl, List.nil_sublist _⟩
      | succ k =>
          simp [TailBoxDirect.choose, List.mem_append, List.mem_map] at h
          rcases h with h | h
          · rcases h with ⟨tail, htail, rfl⟩
            have ihTail := ih htail
            exact ⟨by simp [ihTail.1], ihTail.2.cons_cons x⟩
          · have ihTail := ih h
            exact ⟨ihTail.1, ihTail.2.cons x⟩

private theorem choose_mem_length_le_countP
    {α : Type} (p : α → Bool) {k : Nat} {xs ys : List α}
    (h : ys ∈ TailBoxDirect.choose k xs)
    (hall : ∀ y, y ∈ ys → p y = true) :
    k ≤ xs.countP p := by
  have hdata := choose_mem_length_sublist h
  have hcountYs : ys.countP p = ys.length := by
    rw [List.countP_eq_length_filter, List.length_filter_eq_length_iff]
    exact hall
  have hle := hdata.2.countP_le (p := p)
  omega

private theorem countP_range_map_eq_finset_card_filter
    {α : Type} (n : Nat) (f : Nat → α) (p : α → Bool) :
    (((List.range n).map f).countP p) =
      ((Finset.range n).filter (fun i => p (f i))).card := by
  induction n with
  | zero => simp
  | succ n ih =>
      rw [List.range_succ, Finset.range_add_one]
      by_cases hp : p (f n) = true
      · simp [List.countP_eq_length_filter, Finset.filter_insert, hp]
        rw [← List.countP_eq_length_filter]
        omega
      · simp [List.countP_eq_length_filter, Finset.filter_insert, hp]
        rw [← List.countP_eq_length_filter]
        exact ih

private theorem countP_range_comp_eq_finset_card_filter
    {α : Type} (n : Nat) (f : Nat → α) (p : α → Bool) :
    (List.range n).countP (p ∘ f) =
      ((Finset.range n).filter (fun i => p (f i))).card := by
  simpa [Function.comp_def] using
    (countP_range_map_eq_finset_card_filter n (f := f) (p := p))

private theorem valuation_satisfies_raw_neg_list_pos
    (v : Sat.Valuation) (raws : List Int) (y : Nat)
    (h : (∀ lit, lit ∈ raws →
          Sat.Valuation.neg v (Sat.Literal.ofInt (-lit))) → v y) :
    Sat.Valuation.satisfies v
      ((raws.map (fun lit => Sat.Literal.ofInt (-lit))) ++
        [Sat.Literal.pos y]) := by
  induction raws with
  | nil =>
      intro hy
      exact hy (h (by intro lit hlit; cases hlit))
  | cons lit raws ih =>
      intro hlit
      exact ih (fun hall =>
        h (by
          intro lit' hlit'
          cases hlit' with
          | head => exact hlit
          | tail _ hmem => exact hall lit' hmem))

theorem TailBoxProfile.budgetPrefixCount_succ_of_input
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets)
    (coord n : Nat)
    (h : P.budgetThresholdInput coord n) :
    P.budgetPrefixCount coord (n + 1) =
      P.budgetPrefixCount coord n + 1 := by
  classical
  simp [TailBoxProfile.budgetPrefixCount, h]

theorem TailBoxProfile.budgetPrefixCount_succ_le
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets)
    (coord n : Nat) :
    P.budgetPrefixCount coord n ≤
      P.budgetPrefixCount coord (n + 1) := by
  classical
  by_cases h : P.budgetThresholdInput coord n <;>
    simp [TailBoxProfile.budgetPrefixCount, h]

theorem TailBoxProfile.budgetPrefixCount_mono
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets)
    (coord : Nat)
    {m n : Nat} (h : m ≤ n) :
    P.budgetPrefixCount coord m ≤
      P.budgetPrefixCount coord n := by
  induction n generalizing m with
  | zero =>
      have hm : m = 0 := by omega
      subst hm
      exact le_rfl
  | succ n ih =>
      by_cases hm : m ≤ n
      · exact le_trans (ih hm) (P.budgetPrefixCount_succ_le coord n)
      · have hm' : m = n + 1 := by omega
        subst hm'
        exact le_rfl

theorem TailBoxProfile.budgetPrefixCount_pos_of_input
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets)
    (coord i : Nat)
    (hi : 0 < i)
    (h : P.budgetThresholdInput coord (i - 1)) :
    1 ≤ P.budgetPrefixCount coord i := by
  have hi_eq : i = (i - 1) + 1 := by omega
  rw [hi_eq]
  rw [P.budgetPrefixCount_succ_of_input coord (i - 1) h]
  omega

private theorem TailBoxProfile.budgetPrefixCount_eq_filter_card
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets) (coord n : Nat) :
    P.budgetPrefixCount coord n =
      ((Finset.range n).filter (fun idx =>
        idx % TailBoxDirect.thresholdCountForCoord sizes coord + 5 ≤
          P.cap coord (idx / TailBoxDirect.thresholdCountForCoord sizes coord))).card := by
  classical
  induction n with
  | zero => simp [TailBoxProfile.budgetPrefixCount]
  | succ n ih =>
      by_cases h : n % TailBoxDirect.thresholdCountForCoord sizes coord + 5 ≤
          P.cap coord (n / TailBoxDirect.thresholdCountForCoord sizes coord)
      · simp [TailBoxProfile.budgetPrefixCount, TailBoxProfile.budgetThresholdInput, ih]
        rw [Finset.range_add_one, Finset.filter_insert]
        simp [h, Finset.mem_range]
      · simp [TailBoxProfile.budgetPrefixCount, TailBoxProfile.budgetThresholdInput, ih]
        rw [Finset.range_add_one, Finset.filter_insert]
        simp [h]

private theorem sum_range_sub_four_eq
    (f : Nat → Nat) (n : Nat)
    (hbase : ∀ i, i < n → 4 ≤ f i) :
    (Finset.range n).sum (fun i => f i - 4) =
      (Finset.range n).sum f - 4 * n := by
  induction n with
  | zero => simp
  | succ n ih =>
      have hprev : ∀ i, i < n → 4 ≤ f i := by
        intro i hi
        exact hbase i (by omega)
      have hsum_base : 4 * n ≤ (Finset.range n).sum f := by
        have hle :
            (Finset.range n).sum (fun _ : Nat => 4) ≤
              (Finset.range n).sum f := by
          apply Finset.sum_le_sum
          intro i hi
          exact hprev i (by simpa [Finset.mem_range] using hi)
        have hconst : (Finset.range n).sum (fun _ : Nat => 4) = n * 4 := by
          simp
        omega
      have hfn : 4 ≤ f n := hbase n (by omega)
      rw [Finset.sum_range_succ, Finset.sum_range_succ]
      rw [ih hprev]
      have hsum_cancel :
          (Finset.range n).sum f =
            ((Finset.range n).sum f - 4 * n) + 4 * n := by
        exact (Nat.sub_add_cancel hsum_base).symm
      have hfn_cancel : f n = (f n - 4) + 4 := by
        exact (Nat.sub_add_cancel hfn).symm
      have htotal_base : 4 * (n + 1) ≤ (Finset.range n).sum f + f n := by
        omega
      apply Nat.add_right_cancel (m := 4 * (n + 1))
      have htotal_cancel :
          (Finset.range n).sum f + f n =
            ((Finset.range n).sum f + f n - 4 * (n + 1)) +
              4 * (n + 1) := by
        exact (Nat.sub_add_cancel htotal_base).symm
      rw [← htotal_cancel]
      omega

private theorem block_decode (block k w : Nat)
    (hblock : 0 < block) (hw : w < block) :
    (k * block + w) / block = k ∧
      (k * block + w) % block = w := by
  have hdivw : w / block = 0 := Nat.div_eq_of_lt hw
  have hmodw : w % block = w := Nat.mod_eq_of_lt hw
  constructor
  · rw [Nat.mul_comm k block, Nat.add_comm, Nat.add_mul_div_left]
    · simp [hdivw]
    · exact hblock
  · rw [Nat.mul_comm k block, Nat.add_comm, Nat.add_mul_mod_self_left, hmodw]

private theorem thresholdVarCountBeforeCoord_zero
    (sizes : Nat × Nat × Nat) :
    TailBoxDirect.thresholdVarCountBeforeCoord sizes 0 = 0 := by
  simp [TailBoxDirect.thresholdVarCountBeforeCoord, List.range, List.range.loop]

private theorem thresholdVarCountBeforeCoord_one
    (sizes : Nat × Nat × Nat) :
    TailBoxDirect.thresholdVarCountBeforeCoord sizes 1 =
      sizes.1 * TailBoxDirect.thresholdCountForCoord sizes 0 := by
  simp [TailBoxDirect.thresholdVarCountBeforeCoord, TailBoxDirect.get3,
    List.range, List.range.loop]

private theorem thresholdVarCountBeforeCoord_two
    (sizes : Nat × Nat × Nat) :
    TailBoxDirect.thresholdVarCountBeforeCoord sizes 2 =
      sizes.1 * TailBoxDirect.thresholdCountForCoord sizes 0 +
        sizes.2.1 * TailBoxDirect.thresholdCountForCoord sizes 1 := by
  simp [TailBoxDirect.thresholdVarCountBeforeCoord, TailBoxDirect.get3,
    List.range, List.range.loop]

private theorem thresholdVarCount_eq_explicit
    (sizes : Nat × Nat × Nat) :
    TailBoxDirect.thresholdVarCount sizes =
      sizes.1 * TailBoxDirect.thresholdCountForCoord sizes 0 +
        sizes.2.1 * TailBoxDirect.thresholdCountForCoord sizes 1 +
          sizes.2.2 * TailBoxDirect.thresholdCountForCoord sizes 2 := by
  simp [TailBoxDirect.thresholdVarCount, TailBoxDirect.coordCount,
    TailBoxDirect.get3, List.range, List.range.loop, Nat.add_assoc]

private theorem atMostSeqAuxCount_eq_of_bound_lt_length
    {lits : List Int} {bound : Nat}
    (hbound : 0 < bound) (hgt : bound < lits.length) :
    TailBoxDirect.atMostSeqAuxCount lits bound = (lits.length - 1) * bound := by
  simp [TailBoxDirect.atMostSeqAuxCount, Nat.not_le_of_gt hgt,
    Nat.ne_of_gt hbound]

private theorem thresholdVarsForCoord_length
    (sizes : Nat × Nat × Nat) (coord : Nat) :
    (TailBoxDirect.thresholdVarsForCoord sizes coord).length =
      TailBoxDirect.get3 sizes coord *
        TailBoxDirect.thresholdCountForCoord sizes coord := by
  simp [TailBoxDirect.thresholdVarsForCoord, TailBoxDirect.thresholdsForCoord]

private theorem TailBoxProfile.budgetPrefixCount_full_le_sum_excess
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets) (coord : Nat) :
    P.budgetPrefixCount coord
        (TailBoxDirect.thresholdVarsForCoord sizes coord).length ≤
      (Finset.range (TailBoxDirect.get3 sizes coord)).sum
        (fun symbol => P.cap coord symbol - 4) := by
  classical
  let n := TailBoxDirect.get3 sizes coord
  let count := TailBoxDirect.thresholdCountForCoord sizes coord
  let source : Finset Nat :=
    (Finset.range (n * count)).filter (fun idx =>
      idx % count + 5 ≤ P.cap coord (idx / count))
  let targetSigma : Finset (Sigma fun _ : Nat => Nat) :=
    (Finset.range n).sigma
      (fun symbol => Finset.range (P.cap coord symbol - 4))
  let target : Finset (Nat × Nat) :=
    targetSigma.image (fun token => (token.1, token.2))
  have hprefix :
      P.budgetPrefixCount coord
          (TailBoxDirect.thresholdVarsForCoord sizes coord).length =
        source.card := by
    have h := P.budgetPrefixCount_eq_filter_card coord
      (TailBoxDirect.thresholdVarsForCoord sizes coord).length
    simpa [source, n, count, thresholdVarsForCoord_length] using h
  rw [hprefix]
  have hsource_le_target : source.card ≤ target.card := by
    refine
      Finset.card_le_card_of_injOn
        (fun idx => (idx / count, idx % count)) ?maps ?inj
    · intro idx hidx
      simp [source, target, targetSigma, Finset.mem_range] at hidx ⊢
      constructor
      · exact Nat.div_lt_of_lt_mul (by simpa [Nat.mul_comm] using hidx.1)
      · omega
    · intro x _hx y _hy hxy
      have hfst : x / count = y / count := congrArg Prod.fst hxy
      have hsnd : x % count = y % count := congrArg Prod.snd hxy
      calc
        x = count * (x / count) + x % count := (Nat.div_add_mod x count).symm
        _ = count * (y / count) + y % count := by rw [hfst, hsnd]
        _ = y := Nat.div_add_mod y count
  have htarget_le_sigma : target.card ≤ targetSigma.card := Finset.card_image_le
  have hsigma :
      targetSigma.card =
        (Finset.range n).sum (fun symbol => P.cap coord symbol - 4) := by
    rw [Finset.card_sigma]
    simp
  exact le_trans hsource_le_target (by
    exact le_trans htarget_le_sigma
      (by simp [targetSigma, n] at hsigma ⊢))

theorem TailBoxProfile.budgetPrefixCount_full_le_budgetExtra
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets) (coord : Nat) (hcoord : coord < 3) :
    P.budgetPrefixCount coord
        (TailBoxDirect.thresholdVarsForCoord sizes coord).length ≤
      TailBoxDirect.budgetExtra sizes budgets coord := by
  classical
  let n := TailBoxDirect.get3 sizes coord
  let budget := TailBoxDirect.get3 budgets coord
  let capSum := (Finset.range n).sum (fun symbol => P.cap coord symbol)
  have hbudget : capSum ≤ budget := by
    simpa [capSum, n, budget] using P.budgetBound coord hcoord
  have hbase_each : ∀ symbol, symbol < n → 4 ≤ P.cap coord symbol := by
    intro symbol hsymbol
    exact P.baselineBound coord symbol hcoord (by simpa [n] using hsymbol)
  have hsum_sub :
      (Finset.range n).sum (fun symbol => P.cap coord symbol - 4) =
        capSum - 4 * n := by
    simpa [capSum] using
      sum_range_sub_four_eq (fun symbol => P.cap coord symbol) n hbase_each
  have hsub_le : capSum - 4 * n ≤ budget - 4 * n :=
    Nat.sub_le_sub_right hbudget (4 * n)
  exact
    le_trans (P.budgetPrefixCount_full_le_sum_excess coord) (by
      calc
        (Finset.range (TailBoxDirect.get3 sizes coord)).sum
            (fun symbol => P.cap coord symbol - 4)
            = (Finset.range n).sum
                (fun symbol => P.cap coord symbol - 4) := by
              simp [n]
        _ = capSum - 4 * n := hsum_sub
        _ ≤ budget - 4 * n := hsub_le
        _ = TailBoxDirect.budgetExtra sizes budgets coord := by
          simp [TailBoxDirect.budgetExtra, HexadecimaryFourTwoTailBoxDirect.baseline,
            n, budget])

private theorem rowMajor_getElem
    {α : Type} (f : Nat → Nat → α) (n c idx : Nat)
    (hc : 0 < c) (hidx : idx < n * c) :
    ((List.range n).flatMap (fun row =>
      (List.range c).map (fun col => f row col)))[idx]'(by simpa using hidx) =
      f (idx / c) (idx % c) := by
  induction n generalizing idx with
  | zero => omega
  | succ n ih =>
      simp only [List.range_succ, List.flatMap_append, List.flatMap_singleton]
      by_cases hleft : idx < n * c
      · have hidxAppend : idx < ((List.range n).flatMap (fun row =>
            (List.range c).map (fun col => f row col))).length := by
          simpa using hleft
        rw [List.getElem_append_left hidxAppend]
        exact ih idx hleft
      · have hle : n * c ≤ idx := by omega
        have hmul : (n + 1) * c = n * c + c := by ring
        have hidx' : idx < n * c + c := by simpa [hmul] using hidx
        have hright : idx - n * c < c := by omega
        have hlenLeft : ((List.range n).flatMap (fun row =>
            (List.range c).map (fun col => f row col))).length = n * c := by
          simp
        rw [List.getElem_append_right (by simpa [hlenLeft] using hle)]
        rw [List.getElem_map]
        rw [List.getElem_range]
        rw [hlenLeft]
        have hidx_eq : idx = n * c + (idx - n * c) := by omega
        have hsub : n * c + (idx - n * c) - n * c = idx - n * c := by omega
        have hdecode := block_decode c n (idx - n * c) hc hright
        rw [hidx_eq, hsub, hdecode.1, hdecode.2]

private theorem rowMajor_getD
    {α : Type} (default : α) (f : Nat → Nat → α) (n c idx : Nat)
    (hc : 0 < c) (hidx : idx < n * c) :
    ((List.range n).flatMap (fun row =>
      (List.range c).map (fun col => f row col))).getD idx default =
      f (idx / c) (idx % c) := by
  rw [List.getD_eq_getElem?_getD]
  rw [List.getElem?_eq_getElem (by simpa using hidx)]
  simp [rowMajor_getElem f n c idx hc hidx]

private theorem thresholdVarsForCoordLitAt_eq
    (sizes : Nat × Nat × Nat) (coord idx : Nat)
    (hcount : 0 < TailBoxDirect.thresholdCountForCoord sizes coord)
    (hidx : idx < (TailBoxDirect.thresholdVarsForCoord sizes coord).length) :
    TailBoxDirect.litAt
        (TailBoxDirect.thresholdVarsForCoord sizes coord) idx =
      TailBoxDirect.thresholdLit sizes coord
        (idx / TailBoxDirect.thresholdCountForCoord sizes coord)
        (idx % TailBoxDirect.thresholdCountForCoord sizes coord + 5) := by
  have hidx' :
      idx <
        TailBoxDirect.get3 sizes coord *
          TailBoxDirect.thresholdCountForCoord sizes coord := by
    simpa [thresholdVarsForCoord_length] using hidx
  unfold TailBoxDirect.litAt
  simpa [TailBoxDirect.thresholdVarsForCoord, TailBoxDirect.thresholdsForCoord]
    using
      (rowMajor_getD (default := (0 : Int))
        (fun symbol off =>
          TailBoxDirect.thresholdLit sizes coord symbol (off + 5))
        (TailBoxDirect.get3 sizes coord)
        (TailBoxDirect.thresholdCountForCoord sizes coord)
        idx hcount hidx')

theorem TailBoxProfile.valuation_budgetSeqAux
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets)
    {coord i count : Nat}
    (hcoord : coord < 3)
    (hi0 : 0 < i)
    (hi :
      i < (TailBoxDirect.thresholdVarsForCoord sizes coord).length)
    (hcount0 : 0 < count)
    (hcount :
      count ≤ TailBoxDirect.budgetExtra sizes budgets coord)
    (hbound :
      0 < TailBoxDirect.budgetExtra sizes budgets coord)
    (hgt :
      TailBoxDirect.budgetExtra sizes budgets coord <
        (TailBoxDirect.thresholdVarsForCoord sizes coord).length) :
    P.valuation
        (TailBoxDirect.budgetCounterFirst sizes budgets coord +
          (i - 1) * TailBoxDirect.budgetExtra sizes budgets coord +
            (count - 1) - 1) ↔
      count ≤ P.budgetPrefixCount coord i := by
  have hcoord_cases : coord = 0 ∨ coord = 1 ∨ coord = 2 := by omega
  rcases hcoord_cases with rfl | rfl | rfl
  ·
    let bound := TailBoxDirect.budgetExtra sizes budgets 0
    let rem := (i - 1) * bound + (count - 1)
    have hcountRem : count - 1 < bound := by
      dsimp [bound] at hbound hcount ⊢
      omega
    have hdecode := block_decode bound (i - 1) (count - 1) hbound hcountRem
    have hremDiv : rem / bound + 1 = i := by
      dsimp [rem]
      rw [hdecode.1]
      omega
    have hremMod : rem % bound + 1 = count := by
      dsimp [rem]
      rw [hdecode.2]
      omega
    have hrem_lt :
        rem <
          TailBoxDirect.atMostSeqAuxCount
            (TailBoxDirect.thresholdVarsForCoord sizes 0) bound := by
      have haux :=
        atMostSeqAuxCount_eq_of_bound_lt_length
          (lits := TailBoxDirect.thresholdVarsForCoord sizes 0)
          (bound := bound) hbound (by simpa [bound] using hgt)
      rw [haux]
      dsimp [rem]
      have hiLen :
          i - 1 <
            (TailBoxDirect.thresholdVarsForCoord sizes 0).length - 1 := by
        omega
      nlinarith
    have hidx_not_pair :
        ¬ TailBoxDirect.budgetCounterFirst sizes budgets 0 +
            (i - 1) * TailBoxDirect.budgetExtra sizes budgets 0 +
              (count - 1) - 1 <
          TailBoxDirect.pairVarCount sizes := by
      simp [TailBoxDirect.budgetCounterFirst]
      omega
    have hidx_not_threshold :
        ¬ TailBoxDirect.budgetCounterFirst sizes budgets 0 +
            (i - 1) * TailBoxDirect.budgetExtra sizes budgets 0 +
              (count - 1) - 1 <
          TailBoxDirect.pairVarCount sizes +
            TailBoxDirect.thresholdVarCount sizes := by
      simp [TailBoxDirect.budgetCounterFirst]
      omega
    have hidx_sub :
        TailBoxDirect.budgetCounterFirst sizes budgets 0 +
            (i - 1) * TailBoxDirect.budgetExtra sizes budgets 0 +
              (count - 1) - 1 -
          TailBoxDirect.pairVarCount sizes -
          TailBoxDirect.thresholdVarCount sizes =
            rem := by
      simp [TailBoxDirect.budgetCounterFirst, TailBoxDirect.thresholdVarCount,
        TailBoxDirect.coordCount, List.range, List.range.loop, bound, rem]
      omega
    rw [TailBoxProfile.valuation]
    rw [if_neg hidx_not_pair]
    rw [if_neg hidx_not_threshold]
    rw [TailBoxProfile.budgetAuxValuation]
    rw [hidx_sub]
    have haux0 :
        TailBoxDirect.atMostSeqAuxCount
            (TailBoxDirect.thresholdVarsForCoord sizes 0)
            (TailBoxDirect.budgetExtra sizes budgets 0) =
          TailBoxDirect.atMostSeqAuxCount
            (TailBoxDirect.thresholdVarsForCoord sizes 0) bound := by
      simp [bound]
    simp only [haux0, hrem_lt, ↓reduceIte]
    change
      rem % bound + 1 ≤ P.budgetPrefixCount 0 (rem / bound + 1) ↔
        count ≤ P.budgetPrefixCount 0 i
    rw [hremDiv, hremMod]
  ·
    let bound := TailBoxDirect.budgetExtra sizes budgets 1
    let rem := (i - 1) * bound + (count - 1)
    have hcountRem : count - 1 < bound := by
      dsimp [bound] at hbound hcount ⊢
      omega
    have hdecode := block_decode bound (i - 1) (count - 1) hbound hcountRem
    have hremDiv : rem / bound + 1 = i := by
      dsimp [rem]
      rw [hdecode.1]
      omega
    have hremMod : rem % bound + 1 = count := by
      dsimp [rem]
      rw [hdecode.2]
      omega
    have hrem_lt :
        rem <
          TailBoxDirect.atMostSeqAuxCount
            (TailBoxDirect.thresholdVarsForCoord sizes 1) bound := by
      have haux :=
        atMostSeqAuxCount_eq_of_bound_lt_length
          (lits := TailBoxDirect.thresholdVarsForCoord sizes 1)
          (bound := bound) hbound (by simpa [bound] using hgt)
      rw [haux]
      dsimp [rem]
      have hiLen :
          i - 1 <
            (TailBoxDirect.thresholdVarsForCoord sizes 1).length - 1 := by
        omega
      nlinarith
    have hidx_not_pair :
        ¬ TailBoxDirect.budgetCounterFirst sizes budgets 1 +
            (i - 1) * TailBoxDirect.budgetExtra sizes budgets 1 +
              (count - 1) - 1 <
          TailBoxDirect.pairVarCount sizes := by
      simp [TailBoxDirect.budgetCounterFirst]
      omega
    have hidx_not_threshold :
        ¬ TailBoxDirect.budgetCounterFirst sizes budgets 1 +
            (i - 1) * TailBoxDirect.budgetExtra sizes budgets 1 +
              (count - 1) - 1 <
          TailBoxDirect.pairVarCount sizes +
            TailBoxDirect.thresholdVarCount sizes := by
      simp [TailBoxDirect.budgetCounterFirst]
      omega
    let aux0 :=
      TailBoxDirect.atMostSeqAuxCount
        (TailBoxDirect.thresholdVarsForCoord sizes 0)
        (TailBoxDirect.budgetExtra sizes budgets 0)
    have hidx_sub :
        TailBoxDirect.budgetCounterFirst sizes budgets 1 +
            (i - 1) * TailBoxDirect.budgetExtra sizes budgets 1 +
              (count - 1) - 1 -
          TailBoxDirect.pairVarCount sizes -
          TailBoxDirect.thresholdVarCount sizes =
            aux0 + rem := by
      simp [TailBoxDirect.budgetCounterFirst, TailBoxDirect.thresholdVarCount,
        TailBoxDirect.coordCount, List.range, List.range.loop, aux0, bound, rem]
      omega
    rw [TailBoxProfile.valuation]
    rw [if_neg hidx_not_pair]
    rw [if_neg hidx_not_threshold]
    rw [TailBoxProfile.budgetAuxValuation]
    rw [hidx_sub]
    have hnot0 : ¬ aux0 + rem < aux0 := by omega
    have haux1 :
        TailBoxDirect.atMostSeqAuxCount
            (TailBoxDirect.thresholdVarsForCoord sizes 1)
            (TailBoxDirect.budgetExtra sizes budgets 1) =
          TailBoxDirect.atMostSeqAuxCount
            (TailBoxDirect.thresholdVarsForCoord sizes 1) bound := by
      simp [bound]
    have hlt1 :
        aux0 + rem <
          aux0 +
            TailBoxDirect.atMostSeqAuxCount
              (TailBoxDirect.thresholdVarsForCoord sizes 1)
              (TailBoxDirect.budgetExtra sizes budgets 1) := by
      rw [haux1]
      omega
    have hlt1Bound :
        aux0 + rem <
          aux0 +
            TailBoxDirect.atMostSeqAuxCount
              (TailBoxDirect.thresholdVarsForCoord sizes 1) bound := by
      rw [← haux1]
      exact hlt1
    have hoff : aux0 + rem - aux0 = rem := by omega
    simp [aux0, hnot0, hlt1Bound, haux1, hoff, bound, hremDiv, hremMod]
  ·
    let bound := TailBoxDirect.budgetExtra sizes budgets 2
    let rem := (i - 1) * bound + (count - 1)
    have hcountRem : count - 1 < bound := by
      dsimp [bound] at hbound hcount ⊢
      omega
    have hdecode := block_decode bound (i - 1) (count - 1) hbound hcountRem
    have hremDiv : rem / bound + 1 = i := by
      dsimp [rem]
      rw [hdecode.1]
      omega
    have hremMod : rem % bound + 1 = count := by
      dsimp [rem]
      rw [hdecode.2]
      omega
    have hidx_not_pair :
        ¬ TailBoxDirect.budgetCounterFirst sizes budgets 2 +
            (i - 1) * TailBoxDirect.budgetExtra sizes budgets 2 +
              (count - 1) - 1 <
          TailBoxDirect.pairVarCount sizes := by
      simp [TailBoxDirect.budgetCounterFirst]
      omega
    have hidx_not_threshold :
        ¬ TailBoxDirect.budgetCounterFirst sizes budgets 2 +
            (i - 1) * TailBoxDirect.budgetExtra sizes budgets 2 +
              (count - 1) - 1 <
          TailBoxDirect.pairVarCount sizes +
            TailBoxDirect.thresholdVarCount sizes := by
      simp [TailBoxDirect.budgetCounterFirst]
      omega
    let aux0 :=
      TailBoxDirect.atMostSeqAuxCount
        (TailBoxDirect.thresholdVarsForCoord sizes 0)
        (TailBoxDirect.budgetExtra sizes budgets 0)
    let aux1 :=
      TailBoxDirect.atMostSeqAuxCount
        (TailBoxDirect.thresholdVarsForCoord sizes 1)
        (TailBoxDirect.budgetExtra sizes budgets 1)
    have hidx_sub :
        TailBoxDirect.budgetCounterFirst sizes budgets 2 +
            (i - 1) * TailBoxDirect.budgetExtra sizes budgets 2 +
              (count - 1) - 1 -
          TailBoxDirect.pairVarCount sizes -
          TailBoxDirect.thresholdVarCount sizes =
            aux0 + aux1 + rem := by
      simp [TailBoxDirect.budgetCounterFirst, TailBoxDirect.thresholdVarCount,
        TailBoxDirect.coordCount, List.range, List.range.loop, aux0, aux1,
        bound, rem]
      omega
    rw [TailBoxProfile.valuation]
    rw [if_neg hidx_not_pair]
    rw [if_neg hidx_not_threshold]
    rw [TailBoxProfile.budgetAuxValuation]
    rw [hidx_sub]
    have hnot0 : ¬ aux0 + aux1 + rem < aux0 := by omega
    have hnot1 : ¬ aux0 + aux1 + rem < aux0 + aux1 := by omega
    have hoff : aux0 + aux1 + rem - aux0 - aux1 = rem := by omega
    simp [aux0, aux1, hnot0, hnot1, hoff, bound, hremDiv, hremMod]

theorem TailBoxProfile.valuation_p01Var
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets)
    {a b : Nat} (ha : a < sizes.1) (hb : b < sizes.2.1) :
    P.valuation (TailBoxDirect.p01Var sizes a b - 1) ↔
      P.p01 a b = true := by
  have hn1 : 0 < sizes.2.1 := by omega
  have hidx :
      TailBoxDirect.p01Var sizes a b - 1 = a * sizes.2.1 + b := by
    simp [TailBoxDirect.p01Var]
  have hlt :
      a * sizes.2.1 + b < TailBoxDirect.pairVarCount sizes := by
    simp [TailBoxDirect.pairVarCount]
    nlinarith [Nat.mul_lt_mul_of_pos_right ha hn1]
  have hlt01 : a * sizes.2.1 + b < sizes.1 * sizes.2.1 := by
    nlinarith [Nat.mul_lt_mul_of_pos_right ha hn1, hb]
  have hdecode := block_decode sizes.2.1 a b hn1 hb
  rw [TailBoxProfile.valuation, hidx]
  rw [if_pos hlt]
  rw [TailBoxProfile.pairValuation]
  rw [if_pos hlt01]
  simp [hdecode.1, hdecode.2]

theorem TailBoxProfile.valuation_p02Var
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets)
    {a c : Nat} (ha : a < sizes.1) (hc : c < sizes.2.2) :
    P.valuation (TailBoxDirect.p02Var sizes a c - 1) ↔
      P.p02 a c = true := by
  have hn2 : 0 < sizes.2.2 := by omega
  have hidx :
      TailBoxDirect.p02Var sizes a c - 1 =
        sizes.1 * sizes.2.1 + (a * sizes.2.2 + c) := by
    simp [TailBoxDirect.p02Var]
    omega
  have hnotlt01 :
      ¬ sizes.1 * sizes.2.1 + (a * sizes.2.2 + c) <
          sizes.1 * sizes.2.1 := by
    omega
  have hlt02 :
      sizes.1 * sizes.2.1 + (a * sizes.2.2 + c) <
        sizes.1 * sizes.2.1 + sizes.1 * sizes.2.2 := by
    have := Nat.mul_lt_mul_of_pos_right ha hn2
    nlinarith [hc]
  have hltPair :
      sizes.1 * sizes.2.1 + (a * sizes.2.2 + c) <
        TailBoxDirect.pairVarCount sizes := by
    simp [TailBoxDirect.pairVarCount]
    nlinarith [hlt02, Nat.zero_le (sizes.2.1 * sizes.2.2)]
  have hoff :
      sizes.1 * sizes.2.1 + (a * sizes.2.2 + c) -
          sizes.1 * sizes.2.1 =
        a * sizes.2.2 + c := by
    omega
  have hdecode := block_decode sizes.2.2 a c hn2 hc
  rw [TailBoxProfile.valuation, hidx]
  rw [if_pos hltPair]
  rw [TailBoxProfile.pairValuation]
  rw [if_neg hnotlt01]
  rw [if_pos hlt02]
  simp [hoff, hdecode.1, hdecode.2]

theorem TailBoxProfile.valuation_p12Var
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets)
    {b c : Nat} (hb : b < sizes.2.1) (hc : c < sizes.2.2) :
    P.valuation (TailBoxDirect.p12Var sizes b c - 1) ↔
      P.p12 b c = true := by
  have hn2 : 0 < sizes.2.2 := by omega
  have hidx :
      TailBoxDirect.p12Var sizes b c - 1 =
        sizes.1 * sizes.2.1 + sizes.1 * sizes.2.2 +
          (b * sizes.2.2 + c) := by
    simp [TailBoxDirect.p12Var]
    omega
  have hnotlt01 :
      ¬ sizes.1 * sizes.2.1 + sizes.1 * sizes.2.2 +
          (b * sizes.2.2 + c) < sizes.1 * sizes.2.1 := by
    omega
  have hnotlt02 :
      ¬ sizes.1 * sizes.2.1 + sizes.1 * sizes.2.2 +
          (b * sizes.2.2 + c) <
        sizes.1 * sizes.2.1 + sizes.1 * sizes.2.2 := by
    omega
  have hltPair :
      sizes.1 * sizes.2.1 + sizes.1 * sizes.2.2 +
          (b * sizes.2.2 + c) <
        TailBoxDirect.pairVarCount sizes := by
    have := Nat.mul_lt_mul_of_pos_right hb hn2
    have htail : b * sizes.2.2 + c < sizes.2.1 * sizes.2.2 := by
      nlinarith [hc]
    simp [TailBoxDirect.pairVarCount]
    nlinarith [htail]
  have hoff :
      sizes.1 * sizes.2.1 + sizes.1 * sizes.2.2 +
          (b * sizes.2.2 + c) -
        sizes.1 * sizes.2.1 - sizes.1 * sizes.2.2 =
        b * sizes.2.2 + c := by
    omega
  have hdecode := block_decode sizes.2.2 b c hn2 hc
  rw [TailBoxProfile.valuation, hidx]
  rw [if_pos hltPair]
  rw [TailBoxProfile.pairValuation]
  rw [if_neg hnotlt01]
  rw [if_neg hnotlt02]
  simp [hoff, hdecode.1, hdecode.2]

theorem TailBoxProfile.incidentLitCount_le_cap
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets)
    {coord symbol other : Nat}
    (hcoord : coord < 3)
    (hsymbol : symbol < TailBoxDirect.get3 sizes coord)
    (hother : other < 3)
    (hne : other ≠ coord) :
    (TailBoxDirect.incidentLits sizes coord symbol other).countP
        (TailBoxProfile.rawNegLitFalseBool P) ≤
      P.cap coord symbol := by
  have hdegree := P.degreeBound coord symbol other hcoord hsymbol hother hne
  interval_cases coord <;> interval_cases other
  · contradiction
  · simp [TailBoxDirect.incidentLits, TailBoxDirect.get3] at hdegree hsymbol ⊢
    rw [countP_range_comp_eq_finset_card_filter]
    have hcardEq :
        ((Finset.range sizes.2.1).filter (fun i =>
            P.rawNegLitFalseBool (TailBoxDirect.posP01Lit sizes symbol i) = true)).card =
          ((Finset.range sizes.2.1).filter (fun i =>
            P.p01 symbol i = true)).card := by
      apply congrArg Finset.card
      ext i
      by_cases hi : i < sizes.2.1
      · simp [hi, TailBoxProfile.rawNegLitFalseBool, Sat.Valuation.neg,
          P.valuation_p01Var hsymbol hi]
      · simp [hi]
    rw [hcardEq]
    exact hdegree
  · simp [TailBoxDirect.incidentLits, TailBoxDirect.get3] at hdegree hsymbol ⊢
    rw [countP_range_comp_eq_finset_card_filter]
    have hcardEq :
        ((Finset.range sizes.2.2).filter (fun i =>
            P.rawNegLitFalseBool (TailBoxDirect.posP02Lit sizes symbol i) = true)).card =
          ((Finset.range sizes.2.2).filter (fun i =>
            P.p02 symbol i = true)).card := by
      apply congrArg Finset.card
      ext i
      by_cases hi : i < sizes.2.2
      · simp [hi, TailBoxProfile.rawNegLitFalseBool, Sat.Valuation.neg,
          P.valuation_p02Var hsymbol hi]
      · simp [hi]
    rw [hcardEq]
    exact hdegree
  · simp [TailBoxDirect.incidentLits, TailBoxDirect.get3] at hdegree hsymbol ⊢
    rw [countP_range_comp_eq_finset_card_filter]
    have hcardEq :
        ((Finset.range sizes.1).filter (fun i =>
            P.rawNegLitFalseBool (TailBoxDirect.posP01Lit sizes i symbol) = true)).card =
          ((Finset.range sizes.1).filter (fun i =>
            P.p01 i symbol = true)).card := by
      apply congrArg Finset.card
      ext i
      by_cases hi : i < sizes.1
      · simp [hi, TailBoxProfile.rawNegLitFalseBool, Sat.Valuation.neg,
          P.valuation_p01Var hi hsymbol]
      · simp [hi]
    rw [hcardEq]
    exact hdegree
  · contradiction
  · simp [TailBoxDirect.incidentLits, TailBoxDirect.get3] at hdegree hsymbol ⊢
    rw [countP_range_comp_eq_finset_card_filter]
    have hcardEq :
        ((Finset.range sizes.2.2).filter (fun i =>
            P.rawNegLitFalseBool (TailBoxDirect.posP12Lit sizes symbol i) = true)).card =
          ((Finset.range sizes.2.2).filter (fun i =>
            P.p12 symbol i = true)).card := by
      apply congrArg Finset.card
      ext i
      by_cases hi : i < sizes.2.2
      · simp [hi, TailBoxProfile.rawNegLitFalseBool, Sat.Valuation.neg,
          P.valuation_p12Var hsymbol hi]
      · simp [hi]
    rw [hcardEq]
    exact hdegree
  · simp [TailBoxDirect.incidentLits, TailBoxDirect.get3] at hdegree hsymbol ⊢
    rw [countP_range_comp_eq_finset_card_filter]
    have hcardEq :
        ((Finset.range sizes.1).filter (fun i =>
            P.rawNegLitFalseBool (TailBoxDirect.posP02Lit sizes i symbol) = true)).card =
          ((Finset.range sizes.1).filter (fun i =>
            P.p02 i symbol = true)).card := by
      apply congrArg Finset.card
      ext i
      by_cases hi : i < sizes.1
      · simp [hi, TailBoxProfile.rawNegLitFalseBool, Sat.Valuation.neg,
          P.valuation_p02Var hi hsymbol]
      · simp [hi]
    rw [hcardEq]
    exact hdegree
  · simp [TailBoxDirect.incidentLits, TailBoxDirect.get3] at hdegree hsymbol ⊢
    rw [countP_range_comp_eq_finset_card_filter]
    have hcardEq :
        ((Finset.range sizes.2.1).filter (fun i =>
            P.rawNegLitFalseBool (TailBoxDirect.posP12Lit sizes i symbol) = true)).card =
          ((Finset.range sizes.2.1).filter (fun i =>
            P.p12 i symbol = true)).card := by
      apply congrArg Finset.card
      ext i
      by_cases hi : i < sizes.2.1
      · simp [hi, TailBoxProfile.rawNegLitFalseBool, Sat.Valuation.neg,
          P.valuation_p12Var hi hsymbol]
      · simp [hi]
    rw [hcardEq]
    exact hdegree
  · contradiction

theorem TailBoxProfile.valuation_satisfies_coverageClause
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets)
    {a b c : Nat} (ha : a < sizes.1) (hb : b < sizes.2.1) (hc : c < sizes.2.2) :
    Sat.Valuation.satisfies P.valuation
      (LRATNative.rawClauseToSat
        #[TailBoxDirect.posP01Lit sizes a b,
          TailBoxDirect.posP02Lit sizes a c,
          TailBoxDirect.posP12Lit sizes b c]) := by
  have hclause :
      Sat.Valuation.satisfies P.valuation
        [Sat.Literal.pos (TailBoxDirect.p01Var sizes a b - 1),
         Sat.Literal.pos (TailBoxDirect.p02Var sizes a c - 1),
         Sat.Literal.pos (TailBoxDirect.p12Var sizes b c - 1)] := by
    apply valuation_satisfies_three_pos
    rcases P.cover a b c ha hb hc with h | h | h
    · exact Or.inl ((P.valuation_p01Var ha hb).2 h)
    · exact Or.inr (Or.inl ((P.valuation_p02Var ha hc).2 h))
    · exact Or.inr (Or.inr ((P.valuation_p12Var hb hc).2 h))
  simpa [LRATNative.rawClauseToSat] using hclause

theorem TailBoxProfile.valuation_satisfies_coverageClauses
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets) :
    Sat.Valuation.satisfies_fmla P.valuation
      ((TailBoxDirect.coverageClauses sizes).map LRATNative.rawClauseToSat) := by
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨rawClause, hraw, rfl⟩
  simp [TailBoxDirect.coverageClauses, List.mem_flatMap, List.mem_map,
    List.mem_range] at hraw
  rcases hraw with ⟨a, ha, b, hb, c, hc, hrawEq⟩
  rw [← hrawEq]
  exact P.valuation_satisfies_coverageClause ha hb hc

theorem TailBoxProfile.valuation_thresholdVar
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets)
    {coord symbol threshold : Nat}
    (hcoord : coord < 3)
    (hsymbol : symbol < TailBoxDirect.get3 sizes coord)
    (hthreshold5 : 5 ≤ threshold)
    (hthreshold :
      threshold - 5 < TailBoxDirect.thresholdCountForCoord sizes coord) :
    P.valuation (TailBoxDirect.thresholdVar sizes coord symbol threshold - 1) ↔
      threshold ≤ P.cap coord symbol := by
  have htpos : 0 < TailBoxDirect.thresholdCountForCoord sizes coord := by
    omega
  have hpairCount :
      TailBoxDirect.pairVarCount sizes ≤
        TailBoxDirect.thresholdVar sizes coord symbol threshold - 1 := by
    simp [TailBoxDirect.thresholdVar]
    omega
  have hidx :
      TailBoxDirect.thresholdVar sizes coord symbol threshold - 1 =
        TailBoxDirect.pairVarCount sizes +
          TailBoxDirect.thresholdVarCountBeforeCoord sizes coord +
          (symbol * TailBoxDirect.thresholdCountForCoord sizes coord +
            (threshold - 5)) := by
    simp [TailBoxDirect.thresholdVar]
    omega
  have hthresholdDecode :=
    block_decode (TailBoxDirect.thresholdCountForCoord sizes coord)
      symbol (threshold - 5) htpos hthreshold
  have hthresholdBack : (threshold - 5) + 5 = threshold := by omega
  rw [TailBoxProfile.valuation, hidx]
  rw [if_neg (by omega : ¬ TailBoxDirect.pairVarCount sizes +
      TailBoxDirect.thresholdVarCountBeforeCoord sizes coord +
      (symbol * TailBoxDirect.thresholdCountForCoord sizes coord +
        (threshold - 5)) < TailBoxDirect.pairVarCount sizes)]
  have hltThreshold :
      TailBoxDirect.pairVarCount sizes +
          TailBoxDirect.thresholdVarCountBeforeCoord sizes coord +
          (symbol * TailBoxDirect.thresholdCountForCoord sizes coord +
            (threshold - 5)) <
        TailBoxDirect.pairVarCount sizes + TailBoxDirect.thresholdVarCount sizes := by
    interval_cases coord
    · simp [TailBoxDirect.get3] at hsymbol
      rw [thresholdVarCountBeforeCoord_zero, thresholdVarCount_eq_explicit]
      nlinarith [Nat.mul_lt_mul_of_pos_right hsymbol htpos, hthreshold]
    · simp [TailBoxDirect.get3] at hsymbol
      rw [thresholdVarCountBeforeCoord_one, thresholdVarCount_eq_explicit]
      nlinarith [Nat.mul_lt_mul_of_pos_right hsymbol htpos, hthreshold]
    · simp [TailBoxDirect.get3] at hsymbol
      rw [thresholdVarCountBeforeCoord_two, thresholdVarCount_eq_explicit]
      nlinarith [Nat.mul_lt_mul_of_pos_right hsymbol htpos, hthreshold]
  rw [if_pos hltThreshold]
  have hoffThreshold :
      TailBoxDirect.pairVarCount sizes +
          TailBoxDirect.thresholdVarCountBeforeCoord sizes coord +
          (symbol * TailBoxDirect.thresholdCountForCoord sizes coord +
            (threshold - 5)) -
          TailBoxDirect.pairVarCount sizes =
        TailBoxDirect.thresholdVarCountBeforeCoord sizes coord +
          (symbol * TailBoxDirect.thresholdCountForCoord sizes coord +
            (threshold - 5)) := by
    omega
  rw [hoffThreshold]
  rw [TailBoxProfile.thresholdValuation]
  interval_cases coord
  · simp [TailBoxDirect.get3] at hsymbol
    have hoff0 :
        TailBoxDirect.thresholdVarCountBeforeCoord sizes 0 +
            (symbol * TailBoxDirect.thresholdCountForCoord sizes 0 +
              (threshold - 5)) =
          symbol * TailBoxDirect.thresholdCountForCoord sizes 0 +
              (threshold - 5) := by
      rw [thresholdVarCountBeforeCoord_zero]
      omega
    rw [hoff0]
    have hlt0 :
        symbol * TailBoxDirect.thresholdCountForCoord sizes 0 + (threshold - 5) <
          TailBoxProfile.thresholdOffsetCount0 sizes := by
      simp [TailBoxProfile.thresholdOffsetCount0]
      nlinarith [Nat.mul_lt_mul_of_pos_right hsymbol htpos, hthreshold]
    simp [TailBoxProfile.thresholdCoordOfOffset,
      TailBoxProfile.thresholdRemOfOffset, hlt0, hthresholdDecode.1,
      hthresholdDecode.2, hthresholdBack]
  ·
    simp [TailBoxDirect.get3] at hsymbol
    have hnot0 :
        ¬ TailBoxDirect.thresholdVarCountBeforeCoord sizes 1 +
            (symbol * TailBoxDirect.thresholdCountForCoord sizes 1 +
              (threshold - 5)) <
          TailBoxProfile.thresholdOffsetCount0 sizes := by
      rw [thresholdVarCountBeforeCoord_one]
      simp [TailBoxProfile.thresholdOffsetCount0]
    have hlt1 :
        TailBoxDirect.thresholdVarCountBeforeCoord sizes 1 +
            (symbol * TailBoxDirect.thresholdCountForCoord sizes 1 +
              (threshold - 5)) <
          TailBoxProfile.thresholdOffsetCount0 sizes +
            TailBoxProfile.thresholdOffsetCount1 sizes := by
      rw [thresholdVarCountBeforeCoord_one]
      simp [TailBoxProfile.thresholdOffsetCount0, TailBoxProfile.thresholdOffsetCount1]
      nlinarith [Nat.mul_lt_mul_of_pos_right hsymbol htpos, hthreshold]
    have hoff1 :
        TailBoxDirect.thresholdVarCountBeforeCoord sizes 1 +
            (symbol * TailBoxDirect.thresholdCountForCoord sizes 1 +
              (threshold - 5)) -
          TailBoxProfile.thresholdOffsetCount0 sizes =
        symbol * TailBoxDirect.thresholdCountForCoord sizes 1 +
          (threshold - 5) := by
      rw [thresholdVarCountBeforeCoord_one]
      simp [TailBoxProfile.thresholdOffsetCount0]
    simp [TailBoxProfile.thresholdCoordOfOffset,
      TailBoxProfile.thresholdRemOfOffset, hnot0, hlt1, hoff1,
      hthresholdDecode.1, hthresholdDecode.2, hthresholdBack]
  ·
    simp [TailBoxDirect.get3] at hsymbol
    have hnot0 :
        ¬ TailBoxDirect.thresholdVarCountBeforeCoord sizes 2 +
            (symbol * TailBoxDirect.thresholdCountForCoord sizes 2 +
              (threshold - 5)) <
          TailBoxProfile.thresholdOffsetCount0 sizes := by
      rw [thresholdVarCountBeforeCoord_two]
      simp [TailBoxProfile.thresholdOffsetCount0]
      omega
    have hnot1 :
        ¬ TailBoxDirect.thresholdVarCountBeforeCoord sizes 2 +
            (symbol * TailBoxDirect.thresholdCountForCoord sizes 2 +
              (threshold - 5)) <
          TailBoxProfile.thresholdOffsetCount0 sizes +
            TailBoxProfile.thresholdOffsetCount1 sizes := by
      rw [thresholdVarCountBeforeCoord_two]
      simp [TailBoxProfile.thresholdOffsetCount0, TailBoxProfile.thresholdOffsetCount1]
    have hoff2 :
        TailBoxDirect.thresholdVarCountBeforeCoord sizes 2 +
            (symbol * TailBoxDirect.thresholdCountForCoord sizes 2 +
              (threshold - 5)) -
          TailBoxProfile.thresholdOffsetCount0 sizes -
          TailBoxProfile.thresholdOffsetCount1 sizes =
        symbol * TailBoxDirect.thresholdCountForCoord sizes 2 +
          (threshold - 5) := by
      rw [thresholdVarCountBeforeCoord_two]
      simp [TailBoxProfile.thresholdOffsetCount0, TailBoxProfile.thresholdOffsetCount1]
      omega
    simp [TailBoxProfile.thresholdCoordOfOffset,
      TailBoxProfile.thresholdRemOfOffset, hnot0, hnot1, hoff2,
      hthresholdDecode.1, hthresholdDecode.2, hthresholdBack]

theorem TailBoxProfile.budgetThresholdInput_of_thresholdVar
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets)
    {coord idx : Nat}
    (hcoord : coord < 3)
    (hcount : 0 < TailBoxDirect.thresholdCountForCoord sizes coord)
    (hidx : idx < (TailBoxDirect.thresholdVarsForCoord sizes coord).length)
    (hval :
      P.valuation
        (TailBoxDirect.thresholdVar sizes coord
          (idx / TailBoxDirect.thresholdCountForCoord sizes coord)
          (idx % TailBoxDirect.thresholdCountForCoord sizes coord + 5) - 1)) :
    P.budgetThresholdInput coord idx := by
  have hidx' :
      idx <
        TailBoxDirect.get3 sizes coord *
          TailBoxDirect.thresholdCountForCoord sizes coord := by
    simpa [thresholdVarsForCoord_length] using hidx
  have hsymbol :
      idx / TailBoxDirect.thresholdCountForCoord sizes coord <
        TailBoxDirect.get3 sizes coord := by
    exact Nat.div_lt_of_lt_mul (by simpa [Nat.mul_comm] using hidx')
  have hthreshold :
      (idx % TailBoxDirect.thresholdCountForCoord sizes coord + 5) - 5 <
        TailBoxDirect.thresholdCountForCoord sizes coord := by
    simpa using Nat.mod_lt idx hcount
  have hcap :=
    (P.valuation_thresholdVar hcoord hsymbol (by omega) hthreshold).1 hval
  simpa [TailBoxProfile.budgetThresholdInput] using hcap

theorem TailBoxProfile.valuation_satisfies_budgetSequentialClausesWithAuxFor
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets)
    {coord : Nat}
    (hcoord : coord < 3)
    (hbound : 0 < TailBoxDirect.budgetExtra sizes budgets coord)
    (hgt :
      TailBoxDirect.budgetExtra sizes budgets coord <
        (TailBoxDirect.thresholdVarsForCoord sizes coord).length)
    (htotal :
      P.budgetPrefixCount coord
          (TailBoxDirect.thresholdVarsForCoord sizes coord).length ≤
        TailBoxDirect.budgetExtra sizes budgets coord) :
    Sat.Valuation.satisfies_fmla P.valuation
      ((TailBoxDirect.atMostSeqClausesWithAux
          (TailBoxDirect.budgetCounterFirst sizes budgets coord)
          (TailBoxDirect.thresholdVarsForCoord sizes coord)
          (TailBoxDirect.budgetExtra sizes budgets coord)).map
        LRATNative.rawClauseToSat) := by
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨rawClause, hraw, rfl⟩
  let lits := TailBoxDirect.thresholdVarsForCoord sizes coord
  let bound := TailBoxDirect.budgetExtra sizes budgets coord
  let first := TailBoxDirect.budgetCounterFirst sizes budgets coord
  have hgt_lits : bound < lits.length := by
    simpa [lits, bound] using hgt
  have htotal_lits : P.budgetPrefixCount coord lits.length ≤ bound := by
    simpa [lits, bound] using htotal
  have hthresholdCountPos :
      0 < TailBoxDirect.thresholdCountForCoord sizes coord := by
    by_contra hnot
    have hzero : TailBoxDirect.thresholdCountForCoord sizes coord = 0 :=
      Nat.eq_zero_of_not_pos hnot
    have hlen0 : lits.length = 0 := by
      simp [lits, thresholdVarsForCoord_length, hzero]
    omega
  simp only [TailBoxDirect.atMostSeqClausesWithAux, List.mem_append,
    List.mem_map, List.mem_flatMap, List.mem_range] at hraw
  rcases hraw with ((hfirstClause | hcarryClause) | hoverflowClause) | hstepClause
  · rcases hfirstClause with ⟨i0, hi0Range, hrawEq⟩
    rw [← hrawEq]
    have hidx_lt : i0 < lits.length := by
      dsimp [lits] at hi0Range ⊢
      omega
    have hiAux : i0 + 1 < lits.length := by
      dsimp [lits] at hi0Range ⊢
      omega
    have hThresholdLit :
        Sat.Literal.ofInt (-(TailBoxDirect.litAt lits i0)) =
          Sat.Literal.neg
            (TailBoxDirect.thresholdVar sizes coord
              (i0 / TailBoxDirect.thresholdCountForCoord sizes coord)
              (i0 % TailBoxDirect.thresholdCountForCoord sizes coord + 5) - 1) := by
      dsimp [lits]
      rw [thresholdVarsForCoordLitAt_eq sizes coord i0 hthresholdCountPos hidx_lt]
      simp
    have hAuxLit :
        Sat.Literal.ofInt
            (TailBoxDirect.seqAux first bound (i0 + 1) 1) =
          Sat.Literal.pos
            (first + ((i0 + 1) - 1) * bound + (1 - 1) - 1) := by
      apply rawPosBudgetSeqAuxLiteral_eq
      simp [first, TailBoxDirect.budgetCounterFirst]
    have hclause :
        Sat.Valuation.satisfies P.valuation
          [Sat.Literal.neg
            (TailBoxDirect.thresholdVar sizes coord
              (i0 / TailBoxDirect.thresholdCountForCoord sizes coord)
              (i0 % TailBoxDirect.thresholdCountForCoord sizes coord + 5) - 1),
           Sat.Literal.pos
            (first + ((i0 + 1) - 1) * bound + (1 - 1) - 1)] := by
      apply valuation_satisfies_neg_pos
      intro hthreshold
      have hinput :=
        P.budgetThresholdInput_of_thresholdVar hcoord hthresholdCountPos
          hidx_lt hthreshold
      have hcount :=
        P.budgetPrefixCount_pos_of_input coord (i0 + 1) (by omega) hinput
      have haux :=
        (P.valuation_budgetSeqAux (coord := coord) (i := i0 + 1) (count := 1)
          hcoord (by omega) hiAux
          (by omega) (by simpa [bound] using hbound)
          (by simpa [bound] using hbound) (by simpa [lits, bound] using hgt)).2
          (by simpa [bound] using hcount)
      simpa [first, bound] using haux
    simpa [LRATNative.rawClauseToSat, lits, first, bound, hThresholdLit, hAuxLit] using hclause
  · rcases hcarryClause with ⟨i0, hi0Range, j0, hj0Range, hrawEq⟩
    rw [← hrawEq]
    have hiPrev : i0 + 1 < lits.length := by
      dsimp [lits] at hi0Range ⊢
      omega
    have hiCurr : i0 + 2 < lits.length := by
      dsimp [lits] at hi0Range ⊢
      omega
    have hcountLe : j0 + 1 ≤ bound := by
      simpa [bound] using Nat.succ_le_of_lt hj0Range
    have hPrevLit :
        Sat.Literal.ofInt
            (-(TailBoxDirect.seqAux first bound (i0 + 1) (j0 + 1))) =
          Sat.Literal.neg
            (first + ((i0 + 1) - 1) * bound + ((j0 + 1) - 1) - 1) := by
      apply rawNegBudgetSeqAuxLiteral_eq
      simp [first, TailBoxDirect.budgetCounterFirst]
    have hCurrLit :
        Sat.Literal.ofInt
            (TailBoxDirect.seqAux first bound (i0 + 2) (j0 + 1)) =
          Sat.Literal.pos
            (first + ((i0 + 2) - 1) * bound + ((j0 + 1) - 1) - 1) := by
      apply rawPosBudgetSeqAuxLiteral_eq
      simp [first, TailBoxDirect.budgetCounterFirst]
    have hclause :
        Sat.Valuation.satisfies P.valuation
          [Sat.Literal.neg
            (first + ((i0 + 1) - 1) * bound + ((j0 + 1) - 1) - 1),
           Sat.Literal.pos
            (first + ((i0 + 2) - 1) * bound + ((j0 + 1) - 1) - 1)] := by
      apply valuation_satisfies_neg_pos
      intro hprev
      have hprevCount :=
        (P.valuation_budgetSeqAux (coord := coord) (i := i0 + 1) (count := j0 + 1)
          hcoord (by omega) hiPrev
          (by omega) (by simpa [bound] using hcountLe)
          (by simpa [bound] using hbound) (by simpa [lits, bound] using hgt)).1
          (by simpa [first, bound] using hprev)
      have hcurrCount :
          j0 + 1 ≤ P.budgetPrefixCount coord (i0 + 2) :=
        le_trans (by simpa using hprevCount)
          (P.budgetPrefixCount_mono coord (by omega))
      have hcurr :=
        (P.valuation_budgetSeqAux (coord := coord) (i := i0 + 2) (count := j0 + 1)
          hcoord (by omega) hiCurr
          (by omega) (by simpa [bound] using hcountLe)
          (by simpa [bound] using hbound) (by simpa [lits, bound] using hgt)).2
          (by simpa [bound] using hcurrCount)
      simpa [first, bound] using hcurr
    simpa [LRATNative.rawClauseToSat, first, bound, hPrevLit, hCurrLit] using hclause
  · rcases hoverflowClause with ⟨i0, hi0Range, hrawEq⟩
    rw [← hrawEq]
    have hidx_lt : i0 + 1 < lits.length := by
      dsimp [lits] at hi0Range ⊢
      omega
    have hiPrev : i0 + 1 < lits.length := hidx_lt
    have hThresholdLit :
        Sat.Literal.ofInt (-(TailBoxDirect.litAt lits (i0 + 1))) =
          Sat.Literal.neg
            (TailBoxDirect.thresholdVar sizes coord
              ((i0 + 1) / TailBoxDirect.thresholdCountForCoord sizes coord)
              ((i0 + 1) % TailBoxDirect.thresholdCountForCoord sizes coord + 5) - 1) := by
      dsimp [lits]
      rw [thresholdVarsForCoordLitAt_eq sizes coord (i0 + 1)
        hthresholdCountPos hidx_lt]
      simp
    have hPrevLit :
        Sat.Literal.ofInt
            (-(TailBoxDirect.seqAux first bound (i0 + 1) bound)) =
          Sat.Literal.neg
            (first + ((i0 + 1) - 1) * bound + (bound - 1) - 1) := by
      apply rawNegBudgetSeqAuxLiteral_eq
      simp [first, TailBoxDirect.budgetCounterFirst]
    have hclause :
        Sat.Valuation.satisfies P.valuation
          [Sat.Literal.neg
            (TailBoxDirect.thresholdVar sizes coord
              ((i0 + 1) / TailBoxDirect.thresholdCountForCoord sizes coord)
              ((i0 + 1) % TailBoxDirect.thresholdCountForCoord sizes coord + 5) - 1),
           Sat.Literal.neg
            (first + ((i0 + 1) - 1) * bound + (bound - 1) - 1)] := by
      apply valuation_satisfies_neg_neg
      intro hthreshold hprev
      have hinput :=
        P.budgetThresholdInput_of_thresholdVar hcoord hthresholdCountPos
          hidx_lt hthreshold
      have hprevCount :=
        (P.valuation_budgetSeqAux (coord := coord) (i := i0 + 1) (count := bound)
          hcoord (by omega) hiPrev
          (by simpa [bound] using hbound) (by omega)
          (by simpa [bound] using hbound) (by simpa [lits, bound] using hgt)).1
          (by simpa [first, bound] using hprev)
      have hnextEq :
          P.budgetPrefixCount coord (i0 + 2) =
            P.budgetPrefixCount coord (i0 + 1) + 1 := by
        simpa [show i0 + 2 = (i0 + 1) + 1 by omega] using
          P.budgetPrefixCount_succ_of_input coord (i0 + 1) hinput
      have htotalFromNext :
          P.budgetPrefixCount coord (i0 + 2) ≤
            P.budgetPrefixCount coord lits.length :=
        P.budgetPrefixCount_mono coord (by omega)
      omega
    simpa [LRATNative.rawClauseToSat, lits, first, bound, hThresholdLit, hPrevLit] using hclause
  · rcases hstepClause with ⟨i0, hi0Range, j0, hj0Range, hrawEq⟩
    rw [← hrawEq]
    have hidx_lt : i0 + 1 < lits.length := by
      dsimp [lits] at hi0Range ⊢
      omega
    have hiPrev : i0 + 1 < lits.length := by
      dsimp [lits] at hi0Range ⊢
      omega
    have hiCurr : i0 + 2 < lits.length := by
      dsimp [lits] at hi0Range ⊢
      omega
    have hcountPrevLe : j0 + 1 ≤ bound := by
      have : j0 < bound := by
        dsimp [bound] at hj0Range ⊢
        omega
      exact Nat.succ_le_of_lt this
    have hcountCurrLe : j0 + 2 ≤ bound := by
      dsimp [bound] at hj0Range ⊢
      omega
    have hThresholdLit :
        Sat.Literal.ofInt (-(TailBoxDirect.litAt lits (i0 + 1))) =
          Sat.Literal.neg
            (TailBoxDirect.thresholdVar sizes coord
              ((i0 + 1) / TailBoxDirect.thresholdCountForCoord sizes coord)
              ((i0 + 1) % TailBoxDirect.thresholdCountForCoord sizes coord + 5) - 1) := by
      dsimp [lits]
      rw [thresholdVarsForCoordLitAt_eq sizes coord (i0 + 1)
        hthresholdCountPos hidx_lt]
      simp
    have hPrevLit :
        Sat.Literal.ofInt
            (-(TailBoxDirect.seqAux first bound (i0 + 1) (j0 + 1))) =
          Sat.Literal.neg
            (first + ((i0 + 1) - 1) * bound + ((j0 + 1) - 1) - 1) := by
      apply rawNegBudgetSeqAuxLiteral_eq
      simp [first, TailBoxDirect.budgetCounterFirst]
    have hCurrLit :
        Sat.Literal.ofInt
            (TailBoxDirect.seqAux first bound (i0 + 2) (j0 + 2)) =
          Sat.Literal.pos
            (first + ((i0 + 2) - 1) * bound + ((j0 + 2) - 1) - 1) := by
      apply rawPosBudgetSeqAuxLiteral_eq
      simp [first, TailBoxDirect.budgetCounterFirst]
    have hclause :
        Sat.Valuation.satisfies P.valuation
          [Sat.Literal.neg
            (TailBoxDirect.thresholdVar sizes coord
              ((i0 + 1) / TailBoxDirect.thresholdCountForCoord sizes coord)
              ((i0 + 1) % TailBoxDirect.thresholdCountForCoord sizes coord + 5) - 1),
           Sat.Literal.neg
            (first + ((i0 + 1) - 1) * bound + ((j0 + 1) - 1) - 1),
           Sat.Literal.pos
            (first + ((i0 + 2) - 1) * bound + ((j0 + 2) - 1) - 1)] := by
      apply valuation_satisfies_neg_neg_pos
      intro hthreshold hprev
      have hinput :=
        P.budgetThresholdInput_of_thresholdVar hcoord hthresholdCountPos
          hidx_lt hthreshold
      have hprevCount :=
        (P.valuation_budgetSeqAux (coord := coord) (i := i0 + 1) (count := j0 + 1)
          hcoord (by omega) hiPrev
          (by omega) (by simpa [bound] using hcountPrevLe)
          (by simpa [bound] using hbound) (by simpa [lits, bound] using hgt)).1
          (by simpa [first, bound] using hprev)
      have hnextEq :
          P.budgetPrefixCount coord (i0 + 2) =
            P.budgetPrefixCount coord (i0 + 1) + 1 := by
        simpa [show i0 + 2 = (i0 + 1) + 1 by omega] using
          P.budgetPrefixCount_succ_of_input coord (i0 + 1) hinput
      have hcurrCount :
          j0 + 2 ≤ P.budgetPrefixCount coord (i0 + 2) := by
        omega
      have hcurr :=
        (P.valuation_budgetSeqAux (coord := coord) (i := i0 + 2) (count := j0 + 2)
          hcoord (by omega) hiCurr
          (by omega) (by simpa [bound] using hcountCurrLe)
          (by simpa [bound] using hbound) (by simpa [lits, bound] using hgt)).2
          (by simpa [bound] using hcurrCount)
      simpa [first, bound] using hcurr
    simpa [LRATNative.rawClauseToSat, lits, first, bound, hThresholdLit, hPrevLit, hCurrLit] using hclause

theorem TailBoxProfile.valuation_satisfies_budgetSequentialClausesFor
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets)
    {coord : Nat}
    (hcoord : coord < 3)
    (hbound : 0 < TailBoxDirect.budgetExtra sizes budgets coord)
    (hgt :
      TailBoxDirect.budgetExtra sizes budgets coord <
        (TailBoxDirect.thresholdVarsForCoord sizes coord).length)
    (htotal :
      P.budgetPrefixCount coord
          (TailBoxDirect.thresholdVarsForCoord sizes coord).length ≤
        TailBoxDirect.budgetExtra sizes budgets coord) :
    Sat.Valuation.satisfies_fmla P.valuation
      ((TailBoxDirect.atMostSeqClauses
          (TailBoxDirect.budgetCounterFirst sizes budgets coord)
          (TailBoxDirect.thresholdVarsForCoord sizes coord)
          (TailBoxDirect.budgetExtra sizes budgets coord)).map
        LRATNative.rawClauseToSat) := by
  have hwithAux :=
    P.valuation_satisfies_budgetSequentialClausesWithAuxFor
      hcoord hbound hgt htotal
  have hnotLe :
      ¬ (TailBoxDirect.thresholdVarsForCoord sizes coord).length ≤
        TailBoxDirect.budgetExtra sizes budgets coord := by
    omega
  have hboundNe :
      ¬ TailBoxDirect.budgetExtra sizes budgets coord = 0 :=
    Nat.ne_of_gt hbound
  simpa [TailBoxDirect.atMostSeqClauses, hnotLe, hboundNe] using hwithAux

theorem TailBoxProfile.valuation_satisfies_capacityForcingClause
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets)
    {coord symbol threshold other : Nat} {edgeSubset : List Int}
    (hcoord : coord < 3)
    (hsymbol : symbol < TailBoxDirect.get3 sizes coord)
    (hother : other < 3)
    (hne : other ≠ coord)
    (hthreshold5 : 5 ≤ threshold)
    (hthreshold :
      threshold - 5 < TailBoxDirect.thresholdCountForCoord sizes coord)
    (hchoose :
      edgeSubset ∈
        TailBoxDirect.choose threshold
          (TailBoxDirect.incidentLits sizes coord symbol other)) :
    Sat.Valuation.satisfies P.valuation
      (LRATNative.rawClauseToSat
        (((edgeSubset.map (fun lit => -lit)) ++
          [TailBoxDirect.thresholdLit sizes coord symbol threshold]).toArray)) := by
  have hclause :
      Sat.Valuation.satisfies P.valuation
        ((edgeSubset.map (fun lit => Sat.Literal.ofInt (-lit))) ++
          [Sat.Literal.pos
            (TailBoxDirect.thresholdVar sizes coord symbol threshold - 1)]) := by
    apply valuation_satisfies_raw_neg_list_pos
    intro hallNeg
    have hallBool :
        ∀ lit, lit ∈ edgeSubset →
          P.rawNegLitFalseBool lit = true := by
      intro lit hlit
      classical
      simp [TailBoxProfile.rawNegLitFalseBool, hallNeg lit hlit]
    have hselected :=
      choose_mem_length_le_countP (TailBoxProfile.rawNegLitFalseBool P)
        hchoose hallBool
    have hcount :=
      P.incidentLitCount_le_cap hcoord hsymbol hother hne
    have hcap : threshold ≤ P.cap coord symbol := le_trans hselected hcount
    exact (P.valuation_thresholdVar hcoord hsymbol hthreshold5 hthreshold).2 hcap
  simpa [LRATNative.rawClauseToSat, List.map_append] using hclause

theorem TailBoxProfile.valuation_satisfies_capacityForcingClauses
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets) :
    Sat.Valuation.satisfies_fmla P.valuation
      ((TailBoxDirect.capacityForcingClauses sizes).map
        LRATNative.rawClauseToSat) := by
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨rawClause, hraw, rfl⟩
  simp [TailBoxDirect.capacityForcingClauses,
    TailBoxDirect.coordCount, List.mem_flatMap, List.mem_map, List.mem_range] at hraw
  rcases hraw with
    ⟨coord, hcoord, symbol, hsymbol, threshold, hthresholdMem,
      other, hother, hraw⟩
  have hthresholdMem' := hthresholdMem
  rw [TailBoxDirect.thresholdsForCoord] at hthresholdMem'
  rcases List.mem_map.mp hthresholdMem' with ⟨off, hoff, hthresholdEq⟩
  simp [List.mem_range] at hoff
  have hthreshold5 : 5 ≤ threshold := by omega
  have hthresholdBound :
      threshold - 5 < TailBoxDirect.thresholdCountForCoord sizes coord := by
    omega
  by_cases hsame : other = coord
  · simp [hsame] at hraw
  · by_cases htooLarge :
        threshold >
          (TailBoxDirect.incidentLits sizes coord symbol other).length
    · simp [hsame] at hraw
      omega
    · simp [hsame] at hraw
      rcases hraw with ⟨_, edgeSubset, hchoose, hrawEq⟩
      rw [← hrawEq]
      exact
        P.valuation_satisfies_capacityForcingClause
          hcoord hsymbol hother hsame
          hthreshold5 hthresholdBound hchoose

private theorem valuation_satisfies_neg
    (v : Sat.Valuation) (x : Nat) (hx : ¬ v x) :
    Sat.Valuation.satisfies v [Sat.Literal.neg x] := by
  intro h
  exact hx h

theorem TailBoxProfile.valuation_satisfies_fixedLowClause
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets)
    {coord threshold : Nat}
    (hcoord : coord < 3)
    (hthreshold6 : 6 ≤ threshold)
    (hthreshold :
      threshold - 5 < TailBoxDirect.thresholdCountForCoord sizes coord) :
    Sat.Valuation.satisfies P.valuation
      (LRATNative.rawClauseToSat
        #[-(TailBoxDirect.thresholdLit sizes coord 0 threshold)]) := by
  have hclause :
      Sat.Valuation.satisfies P.valuation
        [Sat.Literal.neg
          (TailBoxDirect.thresholdVar sizes coord 0 threshold - 1)] := by
    apply valuation_satisfies_neg
    intro hval
    have hthresholdVal :=
      (P.valuation_thresholdVar hcoord
        (P.size_pos coord hcoord)
        (by omega) hthreshold).1 hval
    have hlow := P.fixedLow coord hcoord
    omega
  simpa [LRATNative.rawClauseToSat] using hclause

theorem TailBoxProfile.valuation_satisfies_fixedLowClausesForCoord
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets)
    {coord : Nat} (hcoord : coord < 3) :
    Sat.Valuation.satisfies_fmla P.valuation
      ((TailBoxDirect.fixedLowClausesForCoord sizes coord).map
        LRATNative.rawClauseToSat) := by
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨rawClause, hraw, rfl⟩
  simp [TailBoxDirect.fixedLowClausesForCoord,
    TailBoxDirect.fixedLowThresholdsForCoord, List.mem_map, List.mem_range] at hraw
  rcases hraw with ⟨off, hoff, hrawEq⟩
  rw [← hrawEq]
  have hthreshold :
      off + 6 - 5 < TailBoxDirect.thresholdCountForCoord sizes coord := by
    have hoff' : off < TailBoxDirect.maxOther sizes coord - 5 := by
      simpa [TailBoxDirect.fixedLowThresholdsForCoord] using hoff
    have hgoal : off + 1 < TailBoxDirect.maxOther sizes coord - 4 := by
      omega
    simpa [TailBoxDirect.thresholdCountForCoord] using hgoal
  exact P.valuation_satisfies_fixedLowClause hcoord (by omega) hthreshold

theorem TailBoxProfile.valuation_satisfies_fixedLowClauses
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets) :
    Sat.Valuation.satisfies_fmla P.valuation
      ((TailBoxDirect.fixedLowClauses sizes).map LRATNative.rawClauseToSat) := by
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨rawClause, hraw, rfl⟩
  simp [TailBoxDirect.fixedLowClauses, List.mem_flatMap, List.mem_range] at hraw
  rcases hraw with ⟨coord, hcoord, hraw⟩
  exact
    (P.valuation_satisfies_fixedLowClausesForCoord hcoord).prop
      (LRATNative.rawClauseToSat rawClause)
      (List.mem_map.mpr ⟨rawClause, hraw, rfl⟩)

theorem TailBoxProfile.valuation_satisfies_budgetAndFixedLowClauses
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets)
    (hbound :
      ∀ coord, coord < 3 →
        0 < TailBoxDirect.budgetExtra sizes budgets coord)
    (hgt :
      ∀ coord, coord < 3 →
        TailBoxDirect.budgetExtra sizes budgets coord <
          (TailBoxDirect.thresholdVarsForCoord sizes coord).length)
    (htotal :
      ∀ coord, coord < 3 →
        P.budgetPrefixCount coord
            (TailBoxDirect.thresholdVarsForCoord sizes coord).length ≤
          TailBoxDirect.budgetExtra sizes budgets coord) :
    Sat.Valuation.satisfies_fmla P.valuation
      ((TailBoxDirect.budgetAndFixedLowClauses sizes budgets).map
        LRATNative.rawClauseToSat) := by
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨rawClause, hraw, rfl⟩
  simp [TailBoxDirect.budgetAndFixedLowClauses, TailBoxDirect.coordCount,
    List.mem_flatMap, List.mem_range] at hraw
  rcases hraw with ⟨coord, hcoord, hraw⟩
  have hbudget :=
    P.valuation_satisfies_budgetSequentialClausesFor
      hcoord (hbound coord hcoord) (hgt coord hcoord) (htotal coord hcoord)
  have hfixed := P.valuation_satisfies_fixedLowClausesForCoord hcoord
  have hcombined :=
    valuation_satisfies_fmla_append hbudget hfixed
  exact hcombined.prop (LRATNative.rawClauseToSat rawClause) (by
    rw [← List.map_append]
    exact List.mem_map.mpr ⟨rawClause, by
      simpa [List.mem_append] using hraw, rfl⟩)

theorem TailBoxProfile.valuation_satisfies_tailBoxClauseSections
    {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets)
    (hbound :
      ∀ coord, coord < 3 →
        0 < TailBoxDirect.budgetExtra sizes budgets coord)
    (hgt :
      ∀ coord, coord < 3 →
        TailBoxDirect.budgetExtra sizes budgets coord <
          (TailBoxDirect.thresholdVarsForCoord sizes coord).length)
    (htotal :
      ∀ coord, coord < 3 →
        P.budgetPrefixCount coord
            (TailBoxDirect.thresholdVarsForCoord sizes coord).length ≤
          TailBoxDirect.budgetExtra sizes budgets coord) :
    Sat.Valuation.satisfies_fmla P.valuation
      (((TailBoxDirect.coverageClauses sizes ++
          TailBoxDirect.capacityForcingClauses sizes ++
          TailBoxDirect.budgetAndFixedLowClauses sizes budgets).map
        LRATNative.rawClauseToSat)) := by
  have hcoverage := P.valuation_satisfies_coverageClauses
  have hcapacity := P.valuation_satisfies_capacityForcingClauses
  have hbudget :=
    P.valuation_satisfies_budgetAndFixedLowClauses hbound hgt htotal
  have hleft := valuation_satisfies_fmla_append hcoverage hcapacity
  have hall := valuation_satisfies_fmla_append hleft hbudget
  simpa [List.map_append, List.append_assoc] using hall

theorem TailBoxProfile.valuation_satisfies_tailBoxCnf
    {spread : Nat × Nat × Nat}
    (P : TailBoxProfile
      (TailBoxDirect.spreadToSizes spread)
      (TailBoxDirect.spreadToBudgets spread))
    (hbound :
      ∀ coord, coord < 3 →
        0 < TailBoxDirect.budgetExtra
          (TailBoxDirect.spreadToSizes spread)
          (TailBoxDirect.spreadToBudgets spread) coord)
    (hgt :
      ∀ coord, coord < 3 →
        TailBoxDirect.budgetExtra
            (TailBoxDirect.spreadToSizes spread)
            (TailBoxDirect.spreadToBudgets spread) coord <
          (TailBoxDirect.thresholdVarsForCoord
            (TailBoxDirect.spreadToSizes spread) coord).length)
    (htotal :
      ∀ coord, coord < 3 →
        P.budgetPrefixCount coord
            (TailBoxDirect.thresholdVarsForCoord
              (TailBoxDirect.spreadToSizes spread) coord).length ≤
          TailBoxDirect.budgetExtra
            (TailBoxDirect.spreadToSizes spread)
            (TailBoxDirect.spreadToBudgets spread) coord) :
    Sat.Valuation.satisfies_fmla P.valuation
      (LRATNative.rawCnfToSat (TailBoxDirect.tailBoxCnf spread)) := by
  have hsections :=
    P.valuation_satisfies_tailBoxClauseSections hbound hgt htotal
  simpa [LRATNative.rawCnfToSat,
    HexadecimaryFourTwoTailBoxDirect.tailBoxCnf_toList_eq_sections] using hsections

theorem TailBoxProfile.valuation_satisfies_tailBoxCnf_of_profile_budget
    {spread : Nat × Nat × Nat}
    (P : TailBoxProfile
      (TailBoxDirect.spreadToSizes spread)
      (TailBoxDirect.spreadToBudgets spread))
    (hbound :
      ∀ coord, coord < 3 →
        0 < TailBoxDirect.budgetExtra
          (TailBoxDirect.spreadToSizes spread)
          (TailBoxDirect.spreadToBudgets spread) coord)
    (hgt :
      ∀ coord, coord < 3 →
        TailBoxDirect.budgetExtra
            (TailBoxDirect.spreadToSizes spread)
            (TailBoxDirect.spreadToBudgets spread) coord <
          (TailBoxDirect.thresholdVarsForCoord
            (TailBoxDirect.spreadToSizes spread) coord).length) :
    Sat.Valuation.satisfies_fmla P.valuation
      (LRATNative.rawCnfToSat (TailBoxDirect.tailBoxCnf spread)) := by
  exact
    P.valuation_satisfies_tailBoxCnf hbound hgt
      (fun coord hcoord =>
        P.budgetPrefixCount_full_le_budgetExtra coord hcoord)

end Database
end CoveringCodes
