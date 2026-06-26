import CoveringCodes.SDP.GijswijtPolak2025.MatrixUtil

/-!
# Exact rational positive semidefiniteness
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

/-- Rational positive semidefiniteness, checked by all rational test vectors. -/
def RatPSD {ι : Type} [Fintype ι] (A : Matrix ι ι Rat) : Prop :=
  forall x : ι -> Rat, 0 <= quadraticForm A x

theorem RatPSD.zero {ι : Type} [Fintype ι] :
    RatPSD (0 : Matrix ι ι Rat) := by
  intro x
  simp [quadraticForm]

theorem RatPSD.add {ι : Type} [Fintype ι]
    {A B : Matrix ι ι Rat} (hA : RatPSD A) (hB : RatPSD B) :
    RatPSD (A + B) := by
  intro x
  have hq :
      quadraticForm (A + B) x = quadraticForm A x + quadraticForm B x := by
    simp [quadraticForm, add_mul, mul_add, Finset.sum_add_distrib]
  rw [hq]
  exact add_nonneg (hA x) (hB x)

/-- A finite sum of PSD matrices is PSD. -/
theorem RatPSD.sum {ι κ : Type} [Fintype ι]
    (s : Finset κ) (A : κ -> Matrix ι ι Rat)
    (hA : forall k, k ∈ s -> RatPSD (A k)) :
    RatPSD (s.sum A) := by
  classical
  revert hA
  refine Finset.induction_on s ?_ ?_
  · simpa using (RatPSD.zero (ι := ι))
  · intro k s hks hs hA
    rw [Finset.sum_insert hks]
    exact RatPSD.add (hA k (Finset.mem_insert_self k s))
      (hs (fun b hb => hA b (Finset.mem_insert_of_mem hb)))

theorem RatPSD.smul {ι : Type} [Fintype ι]
    {A : Matrix ι ι Rat} {a : Rat} (ha : 0 <= a) (hA : RatPSD A) :
    RatPSD (a • A) := by
  intro x
  have hq : quadraticForm (a • A) x = a * quadraticForm A x := by
    simp [quadraticForm, Finset.mul_sum, mul_left_comm, mul_comm]
  rw [hq]
  exact mul_nonneg ha (hA x)

theorem RatPSD.smul_iff_of_pos {ι : Type} [Fintype ι]
    {A : Matrix ι ι Rat} {a : Rat} (ha : 0 < a) :
    RatPSD (a • A) <-> RatPSD A := by
  constructor
  · intro hA
    have hinv : 0 <= a⁻¹ := inv_nonneg.mpr (le_of_lt ha)
    have hscaled := RatPSD.smul (A := a • A) hinv hA
    convert hscaled using 1
    ext i j
    simp
    field_simp [ne_of_gt ha]
  · intro hA
    exact RatPSD.smul (le_of_lt ha) hA

theorem quadraticForm_allOnes {ι : Type} [Fintype ι] (x : ι -> Rat) :
    quadraticForm (fun _ _ : ι => (1 : Rat)) x =
      (Finset.univ.sum fun i : ι => x i) ^ 2 := by
  unfold quadraticForm
  rw [pow_two, Finset.sum_mul]
  simp [Finset.mul_sum]

theorem RatPSD.allOnes {ι : Type} [Fintype ι] :
    RatPSD (fun _ _ : ι => (1 : Rat)) := by
  intro x
  rw [quadraticForm_allOnes x]
  exact sq_nonneg _

theorem quadraticForm_rankOne {ι : Type} [Fintype ι]
    (v x : ι -> Rat) :
    quadraticForm (fun i j : ι => v i * v j) x =
      (Finset.univ.sum fun i : ι => v i * x i) ^ 2 := by
  unfold quadraticForm
  rw [pow_two, Finset.sum_mul]
  simp [Finset.mul_sum, mul_left_comm, mul_comm]

theorem RatPSD.rankOne {ι : Type} [Fintype ι] (v : ι -> Rat) :
    RatPSD (fun i j : ι => v i * v j) := by
  intro x
  rw [quadraticForm_rankOne v x]
  exact sq_nonneg _

/-- Quadratic form after multiplying rows and columns by a diagonal vector. -/
theorem quadraticForm_diagonalCongr {ι : Type} [Fintype ι]
    (d : ι -> Rat) (A : Matrix ι ι Rat) (x : ι -> Rat) :
    quadraticForm (fun i j : ι => d i * A i j * d j) x =
      quadraticForm A (fun i => d i * x i) := by
  unfold quadraticForm
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- PSD is preserved by multiplying rows and columns by a diagonal vector. -/
theorem RatPSD.diagonalCongr {ι : Type} [Fintype ι]
    {A : Matrix ι ι Rat} (hA : RatPSD A) (d : ι -> Rat) :
    RatPSD (fun i j : ι => d i * A i j * d j) := by
  intro x
  rw [quadraticForm_diagonalCongr d A x]
  exact hA (fun i => d i * x i)

/-- Quadratic form of a diagonal matrix. -/
theorem quadraticForm_diagonal {ι : Type} [Fintype ι] [DecidableEq ι]
    (d : ι -> Rat) (x : ι -> Rat) :
    quadraticForm (fun i j : ι => if i = j then d i else 0) x =
      Finset.univ.sum (fun i : ι => d i * x i ^ 2) := by
  unfold quadraticForm
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.sum_eq_single i]
  · simp [pow_two]
    ring
  · intro j _ hj
    have hne : i ≠ j := fun h => hj h.symm
    simp [hne]
  · intro hi
    exact False.elim (hi (Finset.mem_univ i))

/-- A diagonal matrix with nonnegative rational entries is PSD. -/
theorem RatPSD.diagonal {ι : Type} [Fintype ι] [DecidableEq ι]
    {d : ι -> Rat} (hd : forall i, 0 <= d i) :
    RatPSD (fun i j : ι => if i = j then d i else 0) := by
  intro x
  rw [quadraticForm_diagonal d x]
  exact Finset.sum_nonneg (fun i _ => mul_nonneg (hd i) (sq_nonneg (x i)))

/-- A matrix with a checked sum-of-squares quadratic form is PSD. -/
theorem RatPSD.of_sum_squares
    {ι κ : Type} [Fintype ι] [Fintype κ]
    (B : Matrix κ ι Rat)
    (A : Matrix ι ι Rat)
    (hA : forall x : ι -> Rat,
      quadraticForm A x = ∑ k : κ, (∑ i : ι, B k i * x i) ^ 2) :
    RatPSD A := by
  intro x
  rw [hA x]
  exact Finset.sum_nonneg (fun k _ => sq_nonneg _)

/-- Reindex a matrix along a finite equivalence. -/
def reindexMatrix {ι κ : Type} (e : ι ≃ κ)
    (A : Matrix ι ι Rat) : Matrix κ κ Rat :=
  fun i j => A (e.symm i) (e.symm j)

/-- Reindexing a matrix composes the test vector in its quadratic form. -/
theorem quadraticForm_reindexMatrix
    {ι κ : Type} [Fintype ι] [Fintype κ]
    (e : ι ≃ κ) (A : Matrix ι ι Rat) (x : κ -> Rat) :
    quadraticForm (reindexMatrix e A) x =
      quadraticForm A (fun i : ι => x (e i)) := by
  unfold quadraticForm reindexMatrix
  rw [← e.sum_comp (fun a : κ =>
    ∑ b : κ, x a * A (e.symm a) (e.symm b) * x b)]
  apply Finset.sum_congr rfl
  intro i _
  simp only [Equiv.symm_apply_apply]
  rw [← e.sum_comp (fun b : κ => x (e i) * A i (e.symm b) * x b)]
  simp

/-- PSD is invariant under finite reindexing of rows and columns. -/
theorem RatPSD.reindex_iff
    {ι κ : Type} [Fintype ι] [Fintype κ]
    (e : ι ≃ κ) (A : Matrix ι ι Rat) :
    RatPSD (reindexMatrix e A) <-> RatPSD A := by
  constructor
  · intro h x
    have hx := h (fun k : κ => x (e.symm k))
    rw [quadraticForm_reindexMatrix e A] at hx
    simpa using hx
  · intro h x
    rw [quadraticForm_reindexMatrix e A x]
    exact h (fun i : ι => x (e i))

/--
A certificate that two quadratic forms are equivalent via an explicit change of
coordinates.  This is the rational finite-dimensional hook needed for
Terwilliger block diagonalization: generated or hand-written block
diagonalization data should provide the two vector maps and the checked
quadratic-form identity, not a raw PSD theorem.
-/
structure QuadraticFormEquivalence
    {ι κ : Type} [Fintype ι] [Fintype κ]
    (A : Matrix ι ι Rat) (B : Matrix κ κ Rat) where
  toSource : (κ -> Rat) -> (ι -> Rat)
  fromSource : (ι -> Rat) -> (κ -> Rat)
  quadratic_eq : forall x : κ -> Rat,
    quadraticForm B x = quadraticForm A (toSource x)
  right_inv : forall y : ι -> Rat, toSource (fromSource y) = y

/-- Equivalent quadratic forms have equivalent PSD predicates. -/
theorem QuadraticFormEquivalence.psd_iff
    {ι κ : Type} [Fintype ι] [Fintype κ]
    {A : Matrix ι ι Rat} {B : Matrix κ κ Rat}
    (cert : QuadraticFormEquivalence A B) :
    RatPSD B <-> RatPSD A := by
  constructor
  · intro hB y
    have h := hB (cert.fromSource y)
    rw [cert.quadratic_eq, cert.right_inv] at h
    exact h
  · intro hA x
    rw [cert.quadratic_eq]
    exact hA (cert.toSource x)

/-- Build a quadratic-form equivalence from a finite row/column reindexing. -/
def QuadraticFormEquivalence.ofReindexEq
    {ι κ : Type} [Fintype ι] [Fintype κ]
    (e : ι ≃ κ) (A : Matrix ι ι Rat) {B : Matrix κ κ Rat}
    (hB : reindexMatrix e A = B) :
    QuadraticFormEquivalence A B where
  toSource := fun x i => x (e i)
  fromSource := fun y k => y (e.symm k)
  quadratic_eq := by
    intro x
    rw [← hB]
    exact quadraticForm_reindexMatrix e A x
  right_inv := by
    intro y
    funext i
    simp

/-- Multiply a finite rational matrix by a finite rational vector. -/
def matrixVectorMul {ι κ : Type} [Fintype κ]
    (T : Matrix ι κ Rat) (x : κ -> Rat) : ι -> Rat :=
  fun i => Finset.univ.sum (fun k : κ => T i k * x k)

/-- Matrix congruence `Tᵀ A T`, written entrywise over `Rat`. -/
def congruenceMatrix {ι κ : Type} [Fintype ι]
    (T : Matrix ι κ Rat) (A : Matrix ι ι Rat) : Matrix κ κ Rat :=
  fun p q => Finset.univ.sum (fun i : ι =>
    Finset.univ.sum (fun j : ι => T i p * A i j * T j q))

/-- The quadratic form of `Tᵀ A T` is the quadratic form of `A` after applying `T`. -/
theorem quadraticForm_congruenceMatrix
    {ι κ : Type} [Fintype ι] [Fintype κ]
    (T : Matrix ι κ Rat) (A : Matrix ι ι Rat) (x : κ -> Rat) :
    quadraticForm (congruenceMatrix T A) x =
      quadraticForm A (matrixVectorMul T x) := by
  unfold quadraticForm congruenceMatrix matrixVectorMul
  simp only [Finset.mul_sum, Finset.sum_mul]
  calc
    (∑ p : κ, ∑ q : κ,
        ∑ i : ι, ∑ j : ι, x p * (T i p * A i j * T j q) * x q) =
        ∑ i : ι, ∑ j : ι,
          ∑ p : κ, ∑ q : κ, x p * (T i p * A i j * T j q) * x q := by
          calc
            (∑ p : κ, ∑ q : κ,
                ∑ i : ι, ∑ j : ι, x p * (T i p * A i j * T j q) * x q) =
                ∑ p : κ, ∑ i : ι,
                  ∑ q : κ, ∑ j : ι, x p * (T i p * A i j * T j q) * x q := by
                  apply Finset.sum_congr rfl
                  intro p _
                  rw [Finset.sum_comm]
            _ = ∑ i : ι, ∑ p : κ,
                  ∑ q : κ, ∑ j : ι, x p * (T i p * A i j * T j q) * x q := by
                  rw [Finset.sum_comm]
            _ = ∑ i : ι, ∑ j : ι,
                  ∑ p : κ, ∑ q : κ, x p * (T i p * A i j * T j q) * x q := by
                  apply Finset.sum_congr rfl
                  intro i _
                  calc
                    (∑ p : κ, ∑ q : κ, ∑ j : ι,
                        x p * (T i p * A i j * T j q) * x q) =
                        ∑ p : κ, ∑ j : ι, ∑ q : κ,
                          x p * (T i p * A i j * T j q) * x q := by
                          apply Finset.sum_congr rfl
                          intro p _
                          rw [Finset.sum_comm]
                    _ = ∑ j : ι, ∑ p : κ, ∑ q : κ,
                          x p * (T i p * A i j * T j q) * x q := by
                          rw [Finset.sum_comm]
    _ = ∑ i : ι, ∑ j : ι,
          ∑ p : κ, ∑ q : κ, T i p * x p * A i j * (T j q * x q) := by
          apply Finset.sum_congr rfl
          intro i _
          apply Finset.sum_congr rfl
          intro j _
          apply Finset.sum_congr rfl
          intro p _
          apply Finset.sum_congr rfl
          intro q _
          ring
    _ = ∑ i : ι, ∑ j : ι,
          ∑ q : κ, ∑ p : κ, T i p * x p * A i j * (T j q * x q) := by
          apply Finset.sum_congr rfl
          intro i _
          apply Finset.sum_congr rfl
          intro j _
          rw [Finset.sum_comm]

/-- A rational matrix congruence preserves positive semidefiniteness. -/
theorem RatPSD.congruenceMatrix
    {ι κ : Type} [Fintype ι] [Fintype κ]
    {A : Matrix ι ι Rat} (T : Matrix ι κ Rat) (hA : RatPSD A) :
    RatPSD (congruenceMatrix T A) := by
  intro x
  rw [quadraticForm_congruenceMatrix T A x]
  exact hA (matrixVectorMul T x)

/-- A matrix and its proposed right inverse multiply to the identity on source coordinates. -/
theorem matrixVectorMul_rightInverse
    {ι κ : Type} [Fintype ι] [Fintype κ] [DecidableEq ι]
    (T : Matrix ι κ Rat) (U : Matrix κ ι Rat)
    (hTU : forall i j : ι,
      Finset.univ.sum (fun k : κ => T i k * U k j) = if i = j then 1 else 0)
    (y : ι -> Rat) :
    matrixVectorMul T (matrixVectorMul U y) = y := by
  funext i
  unfold matrixVectorMul
  calc
    (∑ k : κ, T i k * (∑ j : ι, U k j * y j)) =
        ∑ j : ι, (∑ k : κ, T i k * U k j) * y j := by
        calc
          (∑ k : κ, T i k * (∑ j : ι, U k j * y j)) =
              ∑ k : κ, ∑ j : ι, T i k * (U k j * y j) := by
              apply Finset.sum_congr rfl
              intro k _
              rw [Finset.mul_sum]
          _ = ∑ j : ι, ∑ k : κ, T i k * (U k j * y j) := by
              rw [Finset.sum_comm]
          _ = ∑ j : ι, (∑ k : κ, T i k * U k j) * y j := by
              apply Finset.sum_congr rfl
              intro j _
              rw [Finset.sum_mul]
              apply Finset.sum_congr rfl
              intro k _
              ring
    _ = ∑ j : ι, (if i = j then 1 else 0) * y j := by
        apply Finset.sum_congr rfl
        intro j _
        rw [hTU]
    _ = y i := by
        calc
          (∑ j : ι, (if i = j then 1 else 0) * y j) =
              (if i = i then 1 else 0) * y i := by
              apply Finset.sum_eq_single (a := i)
              · intro j _ hj
                have hij : i ≠ j := fun h => hj h.symm
                simp [hij]
              · intro hnot
                simp at hnot
          _ = y i := by simp

/--
A generated block-diagonalization certificate in finite matrix form.

`toMatrix` realizes the source-space vector as a linear function of block
coordinates, and `fromMatrix` is a checked right inverse.  The congruence
identity says the block matrix is exactly `Tᵀ A T`.
-/
structure QuadraticFormMatrixEquivalence
    {ι κ : Type} [Fintype ι] [Fintype κ] [DecidableEq ι]
    (A : Matrix ι ι Rat) (B : Matrix κ κ Rat) where
  toMatrix : Matrix ι κ Rat
  fromMatrix : Matrix κ ι Rat
  congruence_eq : congruenceMatrix toMatrix A = B
  right_inv_entry : forall i j : ι,
    Finset.univ.sum (fun k : κ => toMatrix i k * fromMatrix k j) =
      if i = j then 1 else 0

/-- Turn a finite matrix-form equivalence certificate into the functional form. -/
def QuadraticFormMatrixEquivalence.toQuadraticFormEquivalence
    {ι κ : Type} [Fintype ι] [Fintype κ] [DecidableEq ι]
    {A : Matrix ι ι Rat} {B : Matrix κ κ Rat}
    (cert : QuadraticFormMatrixEquivalence A B) :
    QuadraticFormEquivalence A B where
  toSource := matrixVectorMul cert.toMatrix
  fromSource := matrixVectorMul cert.fromMatrix
  quadratic_eq := by
    intro x
    let T := cert.toMatrix
    have hcon : congruenceMatrix T A = B := by
      simpa [T] using cert.congruence_eq
    change quadraticForm B x = quadraticForm A (matrixVectorMul T x)
    rw [← hcon]
    exact quadraticForm_congruenceMatrix T A x
  right_inv := by
    intro y
    exact matrixVectorMul_rightInverse cert.toMatrix cert.fromMatrix cert.right_inv_entry y

/-- The permutation matrix implementing a finite reindexing. -/
def reindexTransformMatrix {ι κ : Type} [DecidableEq κ]
    (e : ι ≃ κ) : Matrix ι κ Rat :=
  fun i k => if k = e i then 1 else 0

/-- Congruence by the reindexing permutation matrix is row/column reindexing. -/
theorem congruenceMatrix_reindexTransformMatrix
    {ι κ : Type} [Fintype ι] [Fintype κ] [DecidableEq κ]
    (e : ι ≃ κ) (A : Matrix ι ι Rat) :
    congruenceMatrix (reindexTransformMatrix e) A = reindexMatrix e A := by
  ext p q
  unfold congruenceMatrix reindexTransformMatrix reindexMatrix
  calc
    (∑ i : ι, ∑ j : ι,
        (if p = e i then 1 else 0) * A i j * if q = e j then 1 else 0) =
        ∑ j : ι,
          (if p = e (e.symm p) then 1 else 0) *
            A (e.symm p) j * if q = e j then 1 else 0 := by
        apply Finset.sum_eq_single (a := e.symm p)
        · intro i _ hi
          have hne : p ≠ e i := by
            intro hp
            apply hi
            calc
              i = e.symm (e i) := by simp
              _ = e.symm p := by rw [← hp]
          simp [hne]
        · intro hnot
          simp at hnot
    _ = A (e.symm p) (e.symm q) := by
        simp
        calc
          (∑ x : ι, if q = e x then A (e.symm p) x else 0) =
              (if q = e (e.symm q) then A (e.symm p) (e.symm q) else 0) := by
              apply Finset.sum_eq_single (a := e.symm q)
              · intro j _ hj
                have hne : q ≠ e j := by
                  intro hq
                  apply hj
                  calc
                    j = e.symm (e j) := by simp
                    _ = e.symm q := by rw [← hq]
                simp [hne]
              · intro hnot
                simp at hnot
          _ = A (e.symm p) (e.symm q) := by simp

/-- The reindexing permutation matrix has its transpose as a checked right inverse. -/
theorem reindexTransformMatrix_rightInverse
    {ι κ : Type} [Fintype κ] [DecidableEq ι] [DecidableEq κ]
    (e : ι ≃ κ) :
    forall i j : ι,
      Finset.univ.sum (fun k : κ =>
        reindexTransformMatrix e i k * reindexTransformMatrix e j k) =
        if i = j then 1 else 0 := by
  intro i j
  unfold reindexTransformMatrix
  by_cases hij : i = j
  · subst j
    simp
  · have hji : j ≠ i := fun h => hij h.symm
    simp [hij, hji]

/-- Build a matrix-form quadratic equivalence from a finite row/column reindexing. -/
def QuadraticFormMatrixEquivalence.ofReindexEq
    {ι κ : Type} [Fintype ι] [Fintype κ] [DecidableEq ι] [DecidableEq κ]
    (e : ι ≃ κ) (A : Matrix ι ι Rat) {B : Matrix κ κ Rat}
    (hB : reindexMatrix e A = B) :
    QuadraticFormMatrixEquivalence A B where
  toMatrix := reindexTransformMatrix e
  fromMatrix := fun k i => reindexTransformMatrix e i k
  congruence_eq := by
    rw [congruenceMatrix_reindexTransformMatrix e A]
    exact hB
  right_inv_entry := by
    exact reindexTransformMatrix_rightInverse e

/-- Block-wise PSD predicate for a family of rational matrix blocks. -/
def BlocksPSD {κ : Type} (ι : κ -> Type)
    [Fintype κ] [forall k, Fintype (ι k)]
    (A : forall k, Matrix (ι k) (ι k) Rat) : Prop :=
  forall k, RatPSD (A k)

/-- A dependent block-diagonal matrix over a sigma index. -/
def sigmaBlockDiagonal {κ : Type} (ι : κ -> Type) [DecidableEq κ]
    (A : forall k, Matrix (ι k) (ι k) Rat) : Matrix (Sigma ι) (Sigma ι) Rat :=
  fun p q =>
    match p, q with
    | Sigma.mk k i, Sigma.mk l j =>
        if h : k = l then by
          subst l
          exact A k i j
        else
          0

@[simp]
theorem sigmaBlockDiagonal_same {κ : Type} (ι : κ -> Type) [DecidableEq κ]
    (A : forall k, Matrix (ι k) (ι k) Rat) (k : κ) (i j : ι k) :
    sigmaBlockDiagonal ι A ⟨k, i⟩ ⟨k, j⟩ = A k i j := by
  simp [sigmaBlockDiagonal]

@[simp]
theorem sigmaBlockDiagonal_diff {κ : Type} (ι : κ -> Type) [DecidableEq κ]
    (A : forall k, Matrix (ι k) (ι k) Rat) {k l : κ} (hkl : k ≠ l)
    (i : ι k) (j : ι l) :
    sigmaBlockDiagonal ι A ⟨k, i⟩ ⟨l, j⟩ = 0 := by
  simp [sigmaBlockDiagonal, hkl]

/-- The quadratic form of a dependent block-diagonal matrix splits over its blocks. -/
theorem quadraticForm_sigmaBlockDiagonal
    {κ : Type} {ι : κ -> Type}
    [Fintype κ] [forall k, Fintype (ι k)] [DecidableEq κ]
    (A : forall k, Matrix (ι k) (ι k) Rat) (x : Sigma ι -> Rat) :
    quadraticForm (sigmaBlockDiagonal ι A) x =
      ∑ k : κ, quadraticForm (A k) (fun i : ι k => x ⟨k, i⟩) := by
  unfold quadraticForm
  rw [Fintype.sum_sigma]
  apply Finset.sum_congr rfl
  intro k _
  apply Finset.sum_congr rfl
  intro i _
  rw [Fintype.sum_sigma]
  calc
    (∑ l : κ, ∑ j : ι l,
        x ⟨k, i⟩ * sigmaBlockDiagonal ι A ⟨k, i⟩ ⟨l, j⟩ * x ⟨l, j⟩) =
        ∑ j : ι k,
          x ⟨k, i⟩ * sigmaBlockDiagonal ι A ⟨k, i⟩ ⟨k, j⟩ * x ⟨k, j⟩ := by
          apply Finset.sum_eq_single (a := k)
          · intro l _ hl
            simp [sigmaBlockDiagonal_diff ι A hl.symm]
          · intro hnot
            simp at hnot
    _ = ∑ j : ι k, x ⟨k, i⟩ * A k i j * x ⟨k, j⟩ := by
          simp_rw [sigmaBlockDiagonal_same]

/-- PSD of a dependent block-diagonal matrix is equivalent to PSD of every block. -/
theorem RatPSD.sigmaBlockDiagonal_iff
    {κ : Type} {ι : κ -> Type}
    [Fintype κ] [forall k, Fintype (ι k)] [DecidableEq κ]
    (A : forall k, Matrix (ι k) (ι k) Rat) :
    RatPSD (sigmaBlockDiagonal ι A) <-> BlocksPSD ι A := by
  constructor
  · intro h k x
    let y : Sigma ι -> Rat := fun p =>
      match p with
      | Sigma.mk l i =>
          if hlk : l = k then by
            subst l
            exact x i
          else
            0
    have hy := h y
    rw [quadraticForm_sigmaBlockDiagonal A y] at hy
    have hsum0 :
        (∑ l : κ, quadraticForm (A l) (fun i : ι l => y ⟨l, i⟩)) =
          quadraticForm (A k) (fun i : ι k => y ⟨k, i⟩) := by
      apply Finset.sum_eq_single (a := k)
      · intro l _ hl
        have hz : (fun i : ι l => y ⟨l, i⟩) = fun _ => 0 := by
          funext i
          simp [y, hl]
        rw [hz]
        simp [quadraticForm]
      · intro hnot
        simp at hnot
    have hyk : (fun i : ι k => y ⟨k, i⟩) = x := by
      funext i
      simp [y]
    rw [hsum0, hyk] at hy
    exact hy
  · intro h x
    rw [quadraticForm_sigmaBlockDiagonal A x]
    exact Finset.sum_nonneg (fun k _ => h k (fun i : ι k => x ⟨k, i⟩))

theorem RatPSD.sigmaBlockDiagonal_posScale_iff
    {κ : Type} {ι : κ -> Type}
    [Fintype κ] [forall k, Fintype (ι k)] [DecidableEq κ]
    (scale : κ -> Rat) (hscale : forall k, 0 < scale k)
    (A : forall k, Matrix (ι k) (ι k) Rat) :
    RatPSD (sigmaBlockDiagonal ι (fun k i j => scale k * A k i j)) <->
      RatPSD (sigmaBlockDiagonal ι A) := by
  rw [RatPSD.sigmaBlockDiagonal_iff, RatPSD.sigmaBlockDiagonal_iff]
  constructor
  · intro h k
    have hk : RatPSD (scale k • A k) := by
      convert h k using 1
    exact (RatPSD.smul_iff_of_pos (A := A k) (hscale k)).mp hk
  · intro h k
    have hk := (RatPSD.smul_iff_of_pos (A := A k) (hscale k)).mpr (h k)
    convert hk using 1

/-- A block-diagonal matrix whose blocks share the same row/column index type. -/
def uniformBlockDiagonal {κ ι : Type} [DecidableEq κ]
    (A : κ -> Matrix ι ι Rat) : Matrix (κ × ι) (κ × ι) Rat :=
  fun p q => if p.1 = q.1 then A p.1 p.2 q.2 else 0

/-- The quadratic form of a uniform block-diagonal matrix splits over its blocks. -/
theorem quadraticForm_uniformBlockDiagonal
    {κ ι : Type} [Fintype κ] [Fintype ι] [DecidableEq κ]
    (A : κ -> Matrix ι ι Rat) (x : κ × ι -> Rat) :
    quadraticForm (uniformBlockDiagonal A) x =
      ∑ k : κ, quadraticForm (A k) (fun i : ι => x (k, i)) := by
  unfold quadraticForm uniformBlockDiagonal
  rw [Fintype.sum_prod_type]
  apply Finset.sum_congr rfl
  intro k _
  apply Finset.sum_congr rfl
  intro i _
  rw [Fintype.sum_prod_type]
  simp

/-- PSD of a uniform block-diagonal matrix is equivalent to PSD of every block. -/
theorem RatPSD.uniformBlockDiagonal_iff
    {κ ι : Type} [Fintype κ] [Fintype ι] [DecidableEq κ]
    (A : κ -> Matrix ι ι Rat) :
    RatPSD (uniformBlockDiagonal A) <-> forall k, RatPSD (A k) := by
  constructor
  · intro h k x
    let y : κ × ι -> Rat := fun p => if p.1 = k then x p.2 else 0
    have hy := h y
    rw [quadraticForm_uniformBlockDiagonal A y] at hy
    have hsum0 :
        (∑ l : κ, quadraticForm (A l) (fun i : ι => y (l, i))) =
          quadraticForm (A k) (fun i : ι => y (k, i)) := by
      simpa using
        (Finset.sum_eq_single (s := (Finset.univ : Finset κ)) (a := k)
          (f := fun l : κ => quadraticForm (A l) (fun i : ι => y (l, i)))
          (by
            intro l _ hlk
            have hz : (fun i : ι => y (l, i)) = fun _ => 0 := by
              funext i
              simp [y, hlk]
            change quadraticForm (A l) (fun i : ι => y (l, i)) = 0
            rw [hz]
            simp [quadraticForm])
          (by intro hknot; simp at hknot))
    have hyk : (fun i : ι => y (k, i)) = x := by
      funext i
      simp [y]
    rw [hsum0, hyk] at hy
    exact hy
  · intro h x
    rw [quadraticForm_uniformBlockDiagonal A x]
    exact Finset.sum_nonneg (fun k _ => h k (fun i => x (k, i)))

end GijswijtPolak2025
end SDP
end CoveringCodes
