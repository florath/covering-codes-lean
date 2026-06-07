import CoveringCodes.Balls
import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Fin

/-!
# Hamming-ball volume

This file defines the total arithmetic expression used for the q-ary
Hamming-ball volume. For `q ≥ 1`, it is the classical cardinality of a Hamming
ball. For `q = 0`, Lean's `Nat` subtraction makes `q - 1 = 0`; the expression is
still useful arithmetically, but there is no actual center when `n > 0`.
-/

namespace CoveringCodes

/--
The total q-ary Hamming-ball volume expression:

`V_q(n,r) = ∑_{i=0}^{min r n} C(n,i) * (q-1)^i`

For `q ≥ 1`, this is the classical number of words in a radius-`r` Hamming ball.
For `q = 0`, the subtraction `q - 1` is Lean `Nat` truncated subtraction, so it
equals `0`; in positive length there is no center word, and the expression should
not be read as the cardinality of an existing geometric ball.

The sum counts words at each possible distance `i` from the center when such a
center exists:
- `C(n,i)` — the number of ways to choose *which* `i` positions differ from the center
- `(q-1)^i` — the number of ways to fill those `i` positions with a non-center symbol

Example: `qaryBallVolume 2 4 1 = 5` because around any binary word of length 4,
there is 1 word at distance 0 (the center itself) and 4 words at distance 1,
giving `C(4,0)*(2-1)^0 + C(4,1)*(2-1)^1 = 1 + 4 = 5`.

The upper limit is `min r n` since a word of length `n` cannot differ in more
than `n` positions, so larger radii do not add new terms.

The `i = 0` summand is always `1`, which is useful for arithmetic bounds such as
sphere covering.
-/
def qaryBallVolume (q n r : ℕ) : ℕ :=
  ∑ i ∈ Finset.range (Nat.min r n + 1), Nat.choose n i * (q - 1) ^ i

/-! ## Hamming distance helpers -/

/-- Hamming distance decomposes along the first coordinate via `Fin.cons`. -/
lemma hammingDist_cons {q n : ℕ} (a b : Fin q) (x y : Fin n → Fin q) :
    hammingDist (Fin.cons a x : Fin (n + 1) → Fin q) (Fin.cons b y) =
    (if a = b then 0 else 1) + hammingDist x y := by
  unfold hammingDist
  rw [Fin.card_filter_univ_succ']
  simp only [Fin.cons_zero, Fin.cons_succ, ne_eq]
  split_ifs with h
  · simp
  · simp

/-- Hamming distance decomposes into the first-coordinate contribution and the tail. -/
lemma hammingDist_eq_tail {q n : ℕ} (x center : Fin (n + 1) → Fin q) :
    hammingDist x center =
    (if x 0 = center 0 then 0 else 1) + hammingDist (Fin.tail x) (Fin.tail center) := by
  conv_lhs => rw [← Fin.cons_self_tail x, ← Fin.cons_self_tail center]
  exact hammingDist_cons (x 0) (center 0) (Fin.tail x) (Fin.tail center)

/-! ## Ball as a Finset -/

/-- The ball of radius `r` around `center` as a `Finset`. -/
def ballFinset {q n : ℕ} (center : QaryWord q n) (r : ℕ) : Finset (QaryWord q n) :=
  Finset.univ.filter (fun x => hammingDist x center ≤ r)

@[simp]
lemma mem_ballFinset {q n : ℕ} (x center : QaryWord q n) (r : ℕ) :
    x ∈ ballFinset center r ↔ hammingDist x center ≤ r := by
  simp [ballFinset]

/-! ## Base cases -/

/-- `V_q(0, r) = 1`: only the empty word exists. -/
lemma qaryBallVolume_zero_left (q r : ℕ) : qaryBallVolume q 0 r = 1 := by
  simp [qaryBallVolume]

/-- `V_q(n, 0) = 1`: only the center is within distance 0. -/
lemma qaryBallVolume_zero_right (q n : ℕ) : qaryBallVolume q n 0 = 1 := by
  simp [qaryBallVolume]

/-- Ball of radius 0 contains only the center. -/
lemma card_ballFinset_zero {q n : ℕ} (center : QaryWord q n) :
    (ballFinset center 0).card = 1 := by
  have h : ballFinset center 0 = {center} := by
    ext x; simp [hammingDist_eq_zero]
  rw [h]; simp

/-- For `n = 0`, the entire space has one element, so the ball has cardinality 1. -/
lemma card_ballFinset_zero_left {q : ℕ} (center : QaryWord q 0) (r : ℕ) :
    (ballFinset center r).card = 1 := by
  have hcard : Fintype.card (QaryWord q 0) = 1 := by simp [QaryWord]
  have hle : (ballFinset center r).card ≤ 1 :=
    (Finset.card_le_card (Finset.filter_subset _ _)).trans
      (by rw [Finset.card_univ]; exact hcard.le)
  have hge : 1 ≤ (ballFinset center r).card :=
    Finset.card_pos.mpr ⟨center,
      (mem_ballFinset center center r).mpr (by simp)⟩
  omega

/-! ## Ball volume positivity -/

/--
The total arithmetic expression `qaryBallVolume q n r` is always positive: the
`i = 0` summand contributes `1`.

When an actual center exists, this agrees with the center belonging to its own
ball. For `q = 0` and `n > 0`, there is no center, so this is positivity of the
total arithmetic expression rather than a geometric cardinality statement.
-/
lemma qaryBallVolume_pos (q n r : ℕ) :
    0 < qaryBallVolume q n r := by
  unfold qaryBallVolume
  refine Finset.sum_pos' (fun i _ => Nat.zero_le _) ?_
  refine ⟨0, ?_, ?_⟩
  · simp
  · simp

/-! ## Volume formula: equivalent form without the min -/

/-- The volume formula is unchanged when the sum range is extended beyond `n`,
    since `C(n, i) = 0` for `i > n`. This avoids the `min` in later proofs. -/
lemma qaryBallVolume_eq_sum (q n r : ℕ) :
    qaryBallVolume q n r = ∑ i ∈ Finset.range (r + 1), Nat.choose n i * (q - 1) ^ i := by
  unfold qaryBallVolume
  apply Finset.sum_subset (Finset.range_mono (Nat.succ_le_succ (Nat.min_le_left r n)))
  intro i hi_t hi_s
  simp only [Finset.mem_range] at hi_t
  simp only [Finset.mem_range, not_lt] at hi_s
  -- hi_t : i < r + 1  (i.e. i ≤ r)
  -- hi_s : Nat.min r n + 1 ≤ i  (i.e. min r n < i)
  have hn : n < i := by
    rcases Nat.lt_or_ge n r with h | h
    · -- n < r, so min r n = n; then n + 1 ≤ i
      have heq : Nat.min r n = n := Nat.min_eq_right (Nat.le_of_lt h)
      omega
    · -- r ≤ n, so min r n = r; but then r < i contradicts i ≤ r
      have heq : Nat.min r n = r := Nat.min_eq_left h
      omega
  simp [Nat.choose_eq_zero_of_lt hn]

/-! ## Volume recurrence -/

/-- Helper: the sum `∑_{i=0}^{m+1} C(n+1,i)*(q-1)^i` satisfies the Pascal recurrence. -/
private lemma sum_choose_recur (q n m : ℕ) :
    ∑ i ∈ Finset.range (m + 2), Nat.choose (n + 1) i * (q - 1) ^ i =
    ∑ i ∈ Finset.range (m + 2), Nat.choose n i * (q - 1) ^ i +
    (q - 1) * ∑ i ∈ Finset.range (m + 1), Nat.choose n i * (q - 1) ^ i := by
  induction m with
  | zero => simp [Finset.sum_range_succ, Nat.choose_succ_succ']; ring
  | succ m ih =>
    -- Peel off the last term from the LHS (using ih for the rest)
    have lhs_eq :
        ∑ i ∈ Finset.range (m + 1 + 2), Nat.choose (n + 1) i * (q - 1) ^ i =
        ∑ i ∈ Finset.range (m + 2), Nat.choose n i * (q - 1) ^ i +
        (q - 1) * ∑ i ∈ Finset.range (m + 1), Nat.choose n i * (q - 1) ^ i +
        Nat.choose (n + 1) (m + 2) * (q - 1) ^ (m + 2) := by
      have : m + 1 + 2 = (m + 2) + 1 := by omega
      rw [this, Finset.sum_range_succ, ih]
    -- Peel off last terms from both RHS sums
    have rhs_eq :
        ∑ i ∈ Finset.range (m + 1 + 2), Nat.choose n i * (q - 1) ^ i +
        (q - 1) * ∑ i ∈ Finset.range (m + 1 + 1), Nat.choose n i * (q - 1) ^ i =
        ∑ i ∈ Finset.range (m + 2), Nat.choose n i * (q - 1) ^ i +
        Nat.choose n (m + 2) * (q - 1) ^ (m + 2) +
        (q - 1) * (∑ i ∈ Finset.range (m + 1), Nat.choose n i * (q - 1) ^ i +
                   Nat.choose n (m + 1) * (q - 1) ^ (m + 1)) := by
      have h1 : m + 1 + 2 = (m + 2) + 1 := by omega
      have h2 : m + 1 + 1 = (m + 1) + 1 := rfl
      rw [h1, Finset.sum_range_succ, h2, Finset.sum_range_succ]
    rw [lhs_eq, rhs_eq, Nat.choose_succ_succ' n (m + 1)]
    ring

/-- `V_q(n+1, r+1) = V_q(n, r+1) + (q-1) * V_q(n, r)`. -/
lemma qaryBallVolume_succ_succ (q n r : ℕ) :
    qaryBallVolume q (n + 1) (r + 1) =
    qaryBallVolume q n (r + 1) + (q - 1) * qaryBallVolume q n r := by
  rw [qaryBallVolume_eq_sum q (n + 1) (r + 1), qaryBallVolume_eq_sum q n (r + 1),
      qaryBallVolume_eq_sum q n r]
  exact sum_choose_recur q n r

/-! ## Ball cardinality recurrence -/

/-- The cardinality of `{v : Fin q | v ≠ a}` is `q - 1`. -/
private lemma card_ne (q : ℕ) (a : Fin q) :
    (Finset.univ.filter (fun v : Fin q => v ≠ a)).card = q - 1 := by
  rw [Finset.filter_ne', Finset.card_erase_of_mem (Finset.mem_univ _),
      Finset.card_univ, Fintype.card_fin]

/-- The ball of radius `r+1` around `center : QaryWord q (n+1)` splits by the value at
    position 0: words matching the center contribute a full ball of radius `r+1`, and
    each of the `q-1` differing values contributes a ball of radius `r`. -/
lemma card_ballFinset_succ_succ {q n : ℕ}
    (center : QaryWord q (n + 1)) (r : ℕ) :
    (ballFinset center (r + 1)).card =
    (ballFinset (Fin.tail center) (r + 1)).card +
    (q - 1) * (ballFinset (Fin.tail center) r).card := by
  -- Split by whether x 0 = center 0 (matching) or x 0 ≠ center 0 (differing)
  let M := (ballFinset center (r + 1)).filter (fun x => x 0 = center 0)
  let D := (ballFinset center (r + 1)).filter (fun x => x 0 ≠ center 0)
  have hdisjoint : Disjoint M D := Finset.disjoint_filter.mpr (fun _ _ h1 h2 => h2 h1)
  have hunion : ballFinset center (r + 1) = M ∪ D := by
    ext x; simp only [M, D, Finset.mem_union, Finset.mem_filter]
    constructor
    · intro hx
      by_cases h : x 0 = center 0
      · exact Or.inl ⟨hx, h⟩
      · exact Or.inr ⟨hx, h⟩
    · rintro (⟨hx, _⟩ | ⟨hx, _⟩) <;> exact hx
  rw [hunion, Finset.card_union_of_disjoint hdisjoint]
  congr 1
  · -- M ≃ ballFinset (Fin.tail center) (r+1) via Fin.tail
    apply Finset.card_bij (fun x _ => Fin.tail x)
    · intro x hx
      simp only [M, Finset.mem_filter, mem_ballFinset] at hx
      rw [mem_ballFinset]
      have hdist := hx.1
      rw [hammingDist_eq_tail x center, if_pos hx.2, zero_add] at hdist
      exact hdist
    · intro x₁ hx₁ x₂ hx₂ h
      simp only [M, Finset.mem_filter] at hx₁ hx₂
      have h0 : x₁ 0 = x₂ 0 := hx₁.2.trans hx₂.2.symm
      calc x₁ = Fin.cons (x₁ 0) (Fin.tail x₁) := (Fin.cons_self_tail x₁).symm
           _ = Fin.cons (x₂ 0) (Fin.tail x₂) := by rw [h0, h]
           _ = x₂ := Fin.cons_self_tail x₂
    · intro y hy
      refine ⟨Fin.cons (center 0) y, ?_, Fin.tail_cons _ _⟩
      simp only [M, Finset.mem_filter, Fin.cons_zero, and_true]
      rw [mem_ballFinset, hammingDist_eq_tail, Fin.cons_zero, if_pos rfl, zero_add, Fin.tail_cons]
      simpa using hy
  · -- D ≃ {v ≠ center 0} ×ˢ ballFinset (Fin.tail center) r via x ↦ (x 0, Fin.tail x)
    have hbij : D.card =
        ((Finset.univ.filter (fun v : Fin q => v ≠ center 0)) ×ˢ
          ballFinset (Fin.tail center) r).card := by
      apply Finset.card_bij (fun x _ => (x 0, Fin.tail x))
      · intro x hx
        simp only [D, Finset.mem_filter, mem_ballFinset] at hx
        simp only [Finset.mem_product, Finset.mem_filter, Finset.mem_univ, true_and, mem_ballFinset]
        refine ⟨hx.2, ?_⟩
        have hdist := hx.1
        rw [hammingDist_eq_tail x center, if_neg hx.2] at hdist
        omega
      · intro x₁ _ x₂ _ h
        simp only [Prod.mk.injEq] at h
        calc x₁ = Fin.cons (x₁ 0) (Fin.tail x₁) := (Fin.cons_self_tail x₁).symm
             _ = Fin.cons (x₂ 0) (Fin.tail x₂) := by rw [h.1, h.2]
             _ = x₂ := Fin.cons_self_tail x₂
      · intro ⟨v, y⟩ hvy
        simp only [Finset.mem_product, Finset.mem_filter, Finset.mem_univ, true_and,
          mem_ballFinset] at hvy
        refine ⟨Fin.cons v y, ?_, by simp [Fin.cons_zero, Fin.tail_cons]⟩
        simp only [D, Finset.mem_filter, Fin.cons_zero]
        refine ⟨?_, hvy.1⟩
        rw [mem_ballFinset, hammingDist_eq_tail, Fin.cons_zero, if_neg hvy.1, Fin.tail_cons]
        omega
    rw [hbij, Finset.card_product, card_ne q (center 0)]

/-! ## Main theorem -/

/-- **Ball volume theorem**: the number of words in a Hamming ball of radius `r` around any
    center in `QaryWord q n` equals `qaryBallVolume q n r`.

    For `q = 0` and `n ≥ 1` the type `QaryWord 0 n` is empty, so the theorem holds
    vacuously (there is no center to instantiate). -/
theorem qaryBallVolume_eq_card {q n : ℕ}
    (center : QaryWord q n) (r : ℕ) :
    (ballFinset center r).card = qaryBallVolume q n r := by
  induction n generalizing r with
  | zero =>
    rw [card_ballFinset_zero_left, qaryBallVolume_zero_left]
  | succ n ih =>
    cases r with
    | zero =>
      rw [card_ballFinset_zero, qaryBallVolume_zero_right]
    | succ r =>
      rw [card_ballFinset_succ_succ, qaryBallVolume_succ_succ,
          ih (Fin.tail center) (r + 1), ih (Fin.tail center) r]

end CoveringCodes
