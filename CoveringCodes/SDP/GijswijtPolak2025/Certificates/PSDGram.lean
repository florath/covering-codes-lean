import CoveringCodes.SDP.GijswijtPolak2025.PSD

/-!
# Gram certificates for rational PSD matrices
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

structure GramCertificate (ι κ : Type) [Fintype ι] [Fintype κ]
    (A : Matrix ι ι Rat) where
  B : Matrix κ ι Rat
  quadratic_eq_sum_squares :
    forall x : ι -> Rat,
      quadraticForm A x = ∑ k : κ, (∑ i : ι, B k i * x i) ^ 2

theorem GramCertificate.psd {ι κ : Type} [Fintype ι] [Fintype κ]
    {A : Matrix ι ι Rat} (cert : GramCertificate ι κ A) :
    RatPSD A :=
  RatPSD.of_sum_squares cert.B A cert.quadratic_eq_sum_squares

/-- Entrywise Gram certificate `A = Bᵀ B`, written without relying on matrix multiplication. -/
structure GramEntryCertificate (ι κ : Type) [Fintype ι] [Fintype κ]
    (A : Matrix ι ι Rat) where
  B : Matrix κ ι Rat
  entry_eq :
    forall i j : ι, A i j = ∑ k : κ, B k i * B k j

theorem GramEntryCertificate.quadratic_eq_sum_squares
    {ι κ : Type} [Fintype ι] [Fintype κ]
    {A : Matrix ι ι Rat} (cert : GramEntryCertificate ι κ A)
    (x : ι -> Rat) :
    quadraticForm A x = ∑ k : κ, (∑ i : ι, cert.B k i * x i) ^ 2 := by
  unfold quadraticForm
  simp_rw [cert.entry_eq]
  calc
    (∑ i : ι, ∑ j : ι, x i * (∑ k : κ, cert.B k i * cert.B k j) * x j) =
        ∑ i : ι, ∑ j : ι, ∑ k : κ,
          x i * (cert.B k i * cert.B k j) * x j := by
          simp [Finset.mul_sum, Finset.sum_mul]
    _ = ∑ i : ι, ∑ k : κ, ∑ j : ι,
          x i * (cert.B k i * cert.B k j) * x j := by
          apply Finset.sum_congr rfl
          intro i _
          rw [Finset.sum_comm]
    _ = ∑ k : κ, ∑ i : ι, ∑ j : ι,
          x i * (cert.B k i * cert.B k j) * x j := by
          rw [Finset.sum_comm]
    _ =
        ∑ k : κ, (∑ i : ι, cert.B k i * x i) *
          (∑ j : ι, cert.B k j * x j) := by
          apply Finset.sum_congr rfl
          intro k _
          rw [Finset.sum_mul]
          apply Finset.sum_congr rfl
          intro i _
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro j _
          ring
    _ = ∑ k : κ, (∑ i : ι, cert.B k i * x i) ^ 2 := by
          simp [pow_two]

def GramEntryCertificate.toGramCertificate
    {ι κ : Type} [Fintype ι] [Fintype κ]
    {A : Matrix ι ι Rat} (cert : GramEntryCertificate ι κ A) :
    GramCertificate ι κ A where
  B := cert.B
  quadratic_eq_sum_squares := cert.quadratic_eq_sum_squares

theorem GramEntryCertificate.psd {ι κ : Type} [Fintype ι] [Fintype κ]
    {A : Matrix ι ι Rat} (cert : GramEntryCertificate ι κ A) :
    RatPSD A :=
  cert.toGramCertificate.psd

theorem GramEntryCertificate.matrixInner_eq_sum_quadratic
    {ι κ : Type} [Fintype ι] [Fintype κ]
    {A X : Matrix ι ι Rat} (cert : GramEntryCertificate ι κ A) :
    matrixInner A X =
      ∑ k : κ, quadraticForm X (fun i : ι => cert.B k i) := by
  unfold matrixInner quadraticForm
  simp_rw [cert.entry_eq]
  calc
    (∑ i : ι, ∑ j : ι, (∑ k : κ, cert.B k i * cert.B k j) * X i j) =
        ∑ i : ι, ∑ j : ι, ∑ k : κ,
          (cert.B k i * cert.B k j) * X i j := by
          simp [Finset.sum_mul]
    _ = ∑ i : ι, ∑ k : κ, ∑ j : ι,
          (cert.B k i * cert.B k j) * X i j := by
          apply Finset.sum_congr rfl
          intro i _
          rw [Finset.sum_comm]
    _ = ∑ k : κ, ∑ i : ι, ∑ j : ι,
          (cert.B k i * cert.B k j) * X i j := by
          rw [Finset.sum_comm]
    _ = ∑ k : κ, ∑ i : ι, ∑ j : ι,
          cert.B k i * X i j * cert.B k j := by
          apply Finset.sum_congr rfl
          intro k _
          apply Finset.sum_congr rfl
          intro i _
          apply Finset.sum_congr rfl
          intro j _
          ring

theorem GramEntryCertificate.matrixInner_nonneg_of_psd
    {ι κ : Type} [Fintype ι] [Fintype κ]
    {A X : Matrix ι ι Rat} (cert : GramEntryCertificate ι κ A)
    (hX : RatPSD X) :
    0 <= matrixInner A X := by
  rw [cert.matrixInner_eq_sum_quadratic]
  exact Finset.sum_nonneg (fun k _ => hX (fun i => cert.B k i))

/--
Entrywise weighted Gram certificate
`A = Lᵀ diag(d) L`, written without matrix multiplication.

This is the rational certificate format produced by LDL decompositions: the
diagonal weights only need to be nonnegative rationals, not rational squares.
-/
structure WeightedGramEntryCertificate (ι κ : Type) [Fintype ι] [Fintype κ]
    (A : Matrix ι ι Rat) where
  L : Matrix κ ι Rat
  diag : κ -> Rat
  diag_nonneg : forall k, 0 <= diag k
  entry_eq :
    forall i j : ι, A i j = ∑ k : κ, diag k * L k i * L k j

/-- Matrix represented by weighted LDL Gram data. -/
def weightedGramMatrix {ι κ : Type} [Fintype κ]
    (L : Matrix κ ι Rat) (diag : κ -> Rat) : Matrix ι ι Rat :=
  fun i j => ∑ k : κ, diag k * L k i * L k j

@[simp]
theorem weightedGramMatrix_apply {ι κ : Type} [Fintype κ]
    (L : Matrix κ ι Rat) (diag : κ -> Rat) (i j : ι) :
    weightedGramMatrix L diag i j =
      ∑ k : κ, diag k * L k i * L k j := rfl

def WeightedGramEntryCertificate.ofWeightedGramMatrix
    {ι κ : Type} [Fintype ι] [Fintype κ]
    (L : Matrix κ ι Rat) (diag : κ -> Rat)
    (diag_nonneg : forall k, 0 <= diag k) :
    WeightedGramEntryCertificate ι κ (weightedGramMatrix L diag) where
  L := L
  diag := diag
  diag_nonneg := diag_nonneg
  entry_eq := by
    intro i j
    rfl

theorem WeightedGramEntryCertificate.quadratic_eq_weighted_sum_squares
    {ι κ : Type} [Fintype ι] [Fintype κ]
    {A : Matrix ι ι Rat} (cert : WeightedGramEntryCertificate ι κ A)
    (x : ι -> Rat) :
    quadraticForm A x =
      ∑ k : κ, cert.diag k * (∑ i : ι, cert.L k i * x i) ^ 2 := by
  unfold quadraticForm
  simp_rw [cert.entry_eq]
  calc
    (∑ i : ι, ∑ j : ι,
        x i * (∑ k : κ, cert.diag k * cert.L k i * cert.L k j) * x j) =
        ∑ i : ι, ∑ j : ι, ∑ k : κ,
          x i * (cert.diag k * cert.L k i * cert.L k j) * x j := by
          simp [Finset.mul_sum, Finset.sum_mul]
    _ = ∑ i : ι, ∑ k : κ, ∑ j : ι,
          x i * (cert.diag k * cert.L k i * cert.L k j) * x j := by
          apply Finset.sum_congr rfl
          intro i _
          rw [Finset.sum_comm]
    _ = ∑ k : κ, ∑ i : ι, ∑ j : ι,
          x i * (cert.diag k * cert.L k i * cert.L k j) * x j := by
          rw [Finset.sum_comm]
    _ = ∑ k : κ, cert.diag k *
          (∑ i : ι, ∑ j : ι, x i * (cert.L k i * cert.L k j) * x j) := by
          apply Finset.sum_congr rfl
          intro k _
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro i _
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro j _
          ring
    _ =
        ∑ k : κ, cert.diag k *
          ((∑ i : ι, cert.L k i * x i) *
            (∑ j : ι, cert.L k j * x j)) := by
          apply Finset.sum_congr rfl
          intro k _
          rw [show (∑ j : ι, cert.L k j * x j) =
            (∑ i : ι, cert.L k i * x i) by rfl]
          rw [← pow_two]
          rw [← quadraticForm_rankOne (fun i : ι => cert.L k i) x]
          rfl
    _ = ∑ k : κ, cert.diag k * (∑ i : ι, cert.L k i * x i) ^ 2 := by
          simp [pow_two]

theorem WeightedGramEntryCertificate.psd
    {ι κ : Type} [Fintype ι] [Fintype κ]
    {A : Matrix ι ι Rat} (cert : WeightedGramEntryCertificate ι κ A) :
    RatPSD A := by
  intro x
  rw [cert.quadratic_eq_weighted_sum_squares]
  exact Finset.sum_nonneg (fun k _ =>
    mul_nonneg (cert.diag_nonneg k) (sq_nonneg _))

theorem WeightedGramEntryCertificate.matrixInner_eq_weighted_sum_quadratic
    {ι κ : Type} [Fintype ι] [Fintype κ]
    {A X : Matrix ι ι Rat} (cert : WeightedGramEntryCertificate ι κ A) :
    matrixInner A X =
      ∑ k : κ, cert.diag k * quadraticForm X (fun i : ι => cert.L k i) := by
  unfold matrixInner quadraticForm
  simp_rw [cert.entry_eq]
  calc
    (∑ i : ι, ∑ j : ι,
        (∑ k : κ, cert.diag k * cert.L k i * cert.L k j) * X i j) =
        ∑ i : ι, ∑ j : ι, ∑ k : κ,
          (cert.diag k * cert.L k i * cert.L k j) * X i j := by
          simp [Finset.sum_mul]
    _ = ∑ i : ι, ∑ k : κ, ∑ j : ι,
          (cert.diag k * cert.L k i * cert.L k j) * X i j := by
          apply Finset.sum_congr rfl
          intro i _
          rw [Finset.sum_comm]
    _ = ∑ k : κ, ∑ i : ι, ∑ j : ι,
          (cert.diag k * cert.L k i * cert.L k j) * X i j := by
          rw [Finset.sum_comm]
    _ =
        ∑ k : κ, cert.diag k *
          (∑ i : ι, ∑ j : ι, cert.L k i * X i j * cert.L k j) := by
          apply Finset.sum_congr rfl
          intro k _
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro i _
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro j _
          ring

theorem WeightedGramEntryCertificate.matrixInner_nonneg_of_psd
    {ι κ : Type} [Fintype ι] [Fintype κ]
    {A X : Matrix ι ι Rat} (cert : WeightedGramEntryCertificate ι κ A)
    (hX : RatPSD X) :
    0 <= matrixInner A X := by
  rw [cert.matrixInner_eq_weighted_sum_quadratic]
  exact Finset.sum_nonneg (fun k _ =>
    mul_nonneg (cert.diag_nonneg k) (hX (fun i => cert.L k i)))

end GijswijtPolak2025
end SDP
end CoveringCodes
