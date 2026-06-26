import CoveringCodes.SDP.GijswijtPolak2025.Basic
import CoveringCodes.CoveringNumber
import CoveringCodes.Database.Arithmetic

/-!
# Valid linear inequalities

This file formalizes the paper's linear inequality family
`(lambda_0, ..., lambda_n)_beta` and the Proposition 1.1 proof target.
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

/-- A rational-coefficient valid linear inequality for covered q-ary spaces. -/
def ValidLinearInequality
    (q n r : Nat) (lambda : Fin (n + 1) -> Rat) (beta : Rat) : Prop :=
  0 < beta /\
  (forall i, 0 <= lambda i) /\
  forall C : Finset (QaryWord q n),
    CoversFinset C r ->
    forall u : QaryWord q n,
      beta <= Finset.univ.sum
        (fun i : Fin (n + 1) =>
          lambda i * (shellCount q n C u i.val : Rat))

/--
Summing a valid linear inequality over the whole ambient space gives the
global product bound used by the paper's Proposition 1.1 and by the bordered
SDP constraints.
-/
theorem validLinearInequality_sum_sphere_bound
    {q n r : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality q n r lambda beta)
    (C : Finset (QaryWord q n)) (hC : CoversFinset C r) :
    (beta * (q ^ n : Rat)) <=
      (C.card : Rat) *
        (Finset.univ.sum
          (fun i : Fin (n + 1) =>
            lambda i * (sphereSize q n i.val : Rat))) := by
  rcases hvalid with ⟨_, _, hineq⟩
  have hsum_le :
      (∑ u : QaryWord q n, beta) <=
        ∑ u : QaryWord q n,
          Finset.univ.sum
            (fun i : Fin (n + 1) =>
              lambda i * (shellCount q n C u i.val : Rat)) := by
    apply Finset.sum_le_sum
    intro u _
    exact hineq C hC u
  have hleft : (∑ _u : QaryWord q n, beta) = beta * (q ^ n : Rat) := by
    rw [Finset.sum_const, Finset.card_univ, qaryWord_card]
    simp [nsmul_eq_mul]
    ring
  have hright :
      (∑ u : QaryWord q n,
          Finset.univ.sum
            (fun i : Fin (n + 1) =>
              lambda i * (shellCount q n C u i.val : Rat))) =
        (C.card : Rat) *
          (Finset.univ.sum
            (fun i : Fin (n + 1) =>
              lambda i * (sphereSize q n i.val : Rat))) := by
    calc
      (∑ u : QaryWord q n,
          Finset.univ.sum
            (fun i : Fin (n + 1) =>
              lambda i * (shellCount q n C u i.val : Rat)))
          = ∑ i : Fin (n + 1), ∑ u : QaryWord q n,
              lambda i * (shellCount q n C u i.val : Rat) := by
            rw [Finset.sum_comm]
      _ = ∑ i : Fin (n + 1), lambda i *
            (∑ u : QaryWord q n, (shellCount q n C u i.val : Rat)) := by
            apply Finset.sum_congr rfl
            intro i _
            rw [Finset.mul_sum]
      _ = ∑ i : Fin (n + 1), lambda i *
            ((C.card * sphereSize q n i.val : Nat) : Rat) := by
            apply Finset.sum_congr rfl
            intro i _
            congr 1
            exact_mod_cast sum_shellCount_over_space q n i.val C
      _ = (C.card : Rat) *
          (Finset.univ.sum
            (fun i : Fin (n + 1) =>
              lambda i * (sphereSize q n i.val : Rat))) := by
            calc
              (∑ i : Fin (n + 1), lambda i *
                  ((C.card * sphereSize q n i.val : Nat) : Rat))
                  = ∑ i : Fin (n + 1), (C.card : Rat) *
                      (lambda i * (sphereSize q n i.val : Rat)) := by
                    apply Finset.sum_congr rfl
                    intro i _
                    simp only [Nat.cast_mul]
                    ring
              _ = (C.card : Rat) *
                  (Finset.univ.sum
                    (fun i : Fin (n + 1) =>
                      lambda i * (sphereSize q n i.val : Rat))) := by
                    rw [Finset.mul_sum]
  rwa [hleft, hright] at hsum_le

/-- Proposition 1.1 in a product-inequality shape avoiding division. -/
theorem lower_bound_of_valid_linear_inequality
    {q n r L : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality q n r lambda beta)
    (hthreshold :
      forall K : Nat,
        (beta * (q ^ n : Rat)) <=
          (K : Rat) *
            (Finset.univ.sum
              (fun i : Fin (n + 1) =>
                lambda i * (sphereSize q n i.val : Rat))) ->
        L <= K) :
    QaryKLower q n r L := by
  intro C hC
  apply hthreshold C.card
  exact validLinearInequality_sum_sphere_bound hvalid C hC

/-- Coefficients for the ordinary sphere-covering inequality. -/
def sphereLambda (n r : Nat) : Fin (n + 1) -> Rat :=
  fun i => if i.val <= r then 1 else 0

/-- Validity of the ordinary sphere-covering inequality in the new framework. -/
theorem sphereLambda_valid (q n r : Nat) :
    ValidLinearInequality q n r (sphereLambda n r) 1 := by
  refine ⟨by norm_num, ?_, ?_⟩
  · intro i
    by_cases hi : i.val <= r
    · simp [sphereLambda, hi]
    · simp [sphereLambda, hi]
  · intro C hC u
    rcases hC u with ⟨c, hc, hd⟩
    have hdist_le_n : dist u c <= n := by
      simpa [QaryWord] using dist_le_card u c
    let idx : Fin (n + 1) := ⟨dist u c, Nat.lt_succ_of_le hdist_le_n⟩
    have hidx_le_r : idx.val <= r := by
      exact hd
    have hshell : 1 <= shellCount q n C u idx.val := by
      unfold shellCount
      have hmem : c ∈ C.filter (fun c => dist u c = idx.val) := by
        simp [hc, idx]
      exact Nat.succ_le_of_lt (Finset.card_pos.mpr ⟨c, hmem⟩)
    have hterm :
        (1 : Rat) <= sphereLambda n r idx *
          (shellCount q n C u idx.val : Rat) := by
      have hlambda : sphereLambda n r idx = 1 := by
        simp [sphereLambda, hidx_le_r]
      rw [hlambda, one_mul]
      exact_mod_cast hshell
    refine hterm.trans ?_
    simpa using
      (Finset.single_le_sum
        (s := (Finset.univ : Finset (Fin (n + 1))))
        (f := fun i : Fin (n + 1) =>
          sphereLambda n r i * (shellCount q n C u i.val : Rat))
        (by
          intro i _
          by_cases hi : i.val <= r
          · simp [sphereLambda, hi]
          · simp [sphereLambda, hi])
        (Finset.mem_univ idx))

end GijswijtPolak2025
end SDP
end CoveringCodes
