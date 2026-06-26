import CoveringCodes.SDP.GijswijtPolak2025.BinaryOrbit
import CoveringCodes.SDP.GijswijtPolak2025.BorderedMatrix

/-!
# Binary Terwilliger algebra targets
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

/-- Binary Terwilliger matrix represented by orbit coefficients. -/
def binaryTerwilligerMatrix {n : Nat}
    (x : BinaryOrbitIndex n -> Rat) :
    Matrix (QaryWord 2 n) (QaryWord 2 n) Rat :=
  fun u v => x (binaryOrbitOf u v)

@[simp]
theorem binaryTerwilligerMatrix_apply {n : Nat}
    (x : BinaryOrbitIndex n -> Rat) (u v : QaryWord 2 n) :
    binaryTerwilligerMatrix x u v = x (binaryOrbitOf u v) := by
  rfl

/-- Binary Terwilliger matrix as the finite orbit-matrix basis expansion. -/
noncomputable def binaryTerwilligerMatrixSum {n : Nat}
    (x : BinaryOrbitIndex n -> Rat) :
    Matrix (QaryWord 2 n) (QaryWord 2 n) Rat :=
  Finset.univ.sum (fun idx : BinaryOrbitIndex n => x idx • binaryOrbitMatrix idx)

/-- The finite orbit-matrix basis expansion agrees with the pointwise coefficient form. -/
theorem binaryTerwilligerMatrixSum_eq {n : Nat}
    (x : BinaryOrbitIndex n -> Rat) :
    binaryTerwilligerMatrixSum x = binaryTerwilligerMatrix x := by
  ext u v
  unfold binaryTerwilligerMatrixSum binaryTerwilligerMatrix
  simp only [Matrix.sum_apply, Matrix.smul_apply, smul_eq_mul]
  change
    (∑ idx : BinaryOrbitIndex n, x idx * binaryOrbitMatrix idx u v) =
      x (binaryOrbitOf u v)
  calc
    (∑ idx : BinaryOrbitIndex n, x idx * binaryOrbitMatrix idx u v) =
        x (binaryOrbitOf u v) * binaryOrbitMatrix (binaryOrbitOf u v) u v := by
          apply Finset.sum_eq_single (a := binaryOrbitOf u v)
          · intro idx _ hidx
            have hne : binaryOrbitOf u v ≠ idx := fun h => hidx h.symm
            simp [binaryOrbitMatrix, hne]
          · intro hnot
            simp at hnot
    _ = x (binaryOrbitOf u v) := by
          simp [binaryOrbitMatrix]

/-- Binary Terwilliger matrices are invariant under the zero-stabilizer action. -/
theorem binaryTerwilligerMatrix_act_of_stabilizesZero {n : Nat}
    (g : QaryIsometry 2 n) (hg : StabilizesZero (by decide : 0 < 2) g)
    (x : BinaryOrbitIndex n -> Rat) (u v : QaryWord 2 n) :
    binaryTerwilligerMatrix x (g.act u) (g.act v) =
      binaryTerwilligerMatrix x u v := by
  simp [binaryTerwilligerMatrix, binaryOrbitOf_act_of_stabilizesZero g hg u v]

/-- Membership in the coefficient-parametrized binary Terwilliger matrices. -/
def BinaryTerwilligerMember {n : Nat}
    (A : Matrix (QaryWord 2 n) (QaryWord 2 n) Rat) : Prop :=
  exists x : BinaryOrbitIndex n -> Rat, A = binaryTerwilligerMatrix x

/-- Invariance under the binary Hamming-space zero stabilizer. -/
def BinaryZeroStabilizerInvariant {n : Nat}
    (A : Matrix (QaryWord 2 n) (QaryWord 2 n) Rat) : Prop :=
  forall g : QaryIsometry 2 n,
    StabilizesZero (by decide : 0 < 2) g ->
      forall u v : QaryWord 2 n, A (g.act u) (g.act v) = A u v

/-- Every coefficient-parametrized binary Terwilliger matrix is zero-stabilizer invariant. -/
theorem binaryTerwilligerMember_invariant {n : Nat}
    {A : Matrix (QaryWord 2 n) (QaryWord 2 n) Rat}
    (hA : BinaryTerwilligerMember A) :
    BinaryZeroStabilizerInvariant A := by
  rcases hA with ⟨x, rfl⟩
  intro g hg u v
  exact binaryTerwilligerMatrix_act_of_stabilizesZero g hg x u v

theorem binary_orbit_matrices_span_invariant_matrices {n : Nat}
    (A : Matrix (QaryWord 2 n) (QaryWord 2 n) Rat) :
    BinaryTerwilligerMember A ->
      exists x : BinaryOrbitIndex n -> Rat, A = binaryTerwilligerMatrix x := by
  intro h
  exact h

/-- Witness that a product of two coefficient-parametrized matrices remains coefficient-parametrized. -/
structure BinaryTerwilligerMulCertificate {n : Nat}
    (x y : BinaryOrbitIndex n -> Rat) where
  z : BinaryOrbitIndex n -> Rat
  eq_mul :
    binaryTerwilligerMatrix x * binaryTerwilligerMatrix y =
      binaryTerwilligerMatrix z

theorem binary_terwilliger_closed_mul {n : Nat}
    (x y : BinaryOrbitIndex n -> Rat)
    (cert : BinaryTerwilligerMulCertificate x y) :
    exists z : BinaryOrbitIndex n -> Rat,
      binaryTerwilligerMatrix x * binaryTerwilligerMatrix y =
        binaryTerwilligerMatrix z := by
  exact ⟨cert.z, cert.eq_mul⟩

theorem binary_terwilliger_closed_transpose {n : Nat}
    (x : BinaryOrbitIndex n -> Rat) :
    exists y : BinaryOrbitIndex n -> Rat,
      (binaryTerwilligerMatrix x).transpose = binaryTerwilligerMatrix y := by
  refine ⟨fun idx => x idx.swap, ?_⟩
  ext u v
  have hswap : binaryOrbitOf v u = (binaryOrbitOf u v).swap := by
    simp [binaryOrbitOf, BinaryOrbitIndex.swap, Finset.inter_comm]
  simp [binaryTerwilligerMatrix, Matrix.transpose_apply, hswap]

/-- One guarded summand in Equation (11) from the binary block diagonalization. -/
def betaCoeffTerm (n i j k t u : Nat) : Rat :=
  if t <= u /\ k <= u /\ u <= i /\ u <= j /\ k + u <= n then
    (-1 : Rat) ^ (u - t) *
    (Nat.choose u t : Rat) *
    (Nat.choose (n - 2 * k) (u - k) : Rat) *
    (Nat.choose (n - k - u) (i - u) : Rat) *
    (Nat.choose (n - k - u) (j - u) : Rat)
  else
    0

/--
Equation (11) coefficient from the binary block diagonalization.

The guards encode the usual convention that binomial coefficients with negative
arguments vanish.  This avoids accidental nonzero terms caused by `Nat`
saturated subtraction.
-/
def betaCoeff (n i j k t : Nat) : Rat :=
  (Finset.range (n + 1)).sum (fun u =>
    betaCoeffTerm n i j k t u)

/-- Entry of the binary Schrijver block before optional positive diagonal rescaling. -/
def binaryBlockEntry
    (n k : Nat) (x : BinaryOrbitIndex n -> Rat) (row col : Nat) : Rat :=
  let i := k + row
  let j := k + col
  (Finset.range (n + 1)).sum (fun t =>
    if ht_i : t <= i then
      if ht_j : t <= j then
        if hij : i + j <= n + t then
          betaCoeff n i j k t *
            x { i := i, j := j, t := t, ht_i := ht_i, ht_j := ht_j, hij := hij }
        else
          0
      else
        0
    else
      0)

/-- Binary block indexed by `k`; rows/columns correspond to `i,j = k, ..., n-k`. -/
def binaryBlock
    (n k : Nat) (x : BinaryOrbitIndex n -> Rat) :
    Matrix (Fin (n - 2 * k + 1)) (Fin (n - 2 * k + 1)) Rat :=
  fun row col => binaryBlockEntry n k x row.val col.val

theorem betaCoeff_length_one_sanity_00 :
    betaCoeff 1 0 0 0 0 = 1 := by
  native_decide

theorem betaCoeff_length_one_sanity_11_zero :
    betaCoeff 1 1 1 0 0 = 0 := by
  native_decide

theorem betaCoeff_length_one_sanity_11_one :
    betaCoeff 1 1 1 0 1 = 1 := by
  native_decide

theorem binaryBlock_length_one_allOnes
    (row col : Fin 2) :
    binaryBlock 1 0 (fun _ : BinaryOrbitIndex 1 => (1 : Rat)) row col = 1 := by
  fin_cases row <;> fin_cases col <;> native_decide

theorem binaryBlock_length_one_allOnes_psd :
    RatPSD (binaryBlock 1 0 (fun _ : BinaryOrbitIndex 1 => (1 : Rat))) := by
  convert (RatPSD.allOnes (ι := Fin 2)) using 1
  ext row col
  exact binaryBlock_length_one_allOnes row col

@[simp]
theorem binaryBlock_apply {n k : Nat} (x : BinaryOrbitIndex n -> Rat)
    (row col : Fin (n - 2 * k + 1)) :
    binaryBlock n k x row col = binaryBlockEntry n k x row.val col.val := by
  rfl

/-- Finite index set for the binary Schrijver blocks. -/
structure BinaryBlockIndex (n : Nat) where
  k : Nat
  hk : 2 * k <= n
deriving DecidableEq

namespace BinaryBlockIndex

theorem k_le_n {n : Nat} (idx : BinaryBlockIndex n) : idx.k <= n := by
  have hk := idx.hk
  omega

def toFin {n : Nat} (idx : BinaryBlockIndex n) : Fin (n + 1) :=
  ⟨idx.k, Nat.lt_succ_of_le idx.k_le_n⟩

theorem toFin_injective {n : Nat} :
    Function.Injective (@toFin n) := by
  intro a b h
  cases a
  cases b
  simp [toFin] at h ⊢
  exact h

noncomputable instance (n : Nat) : Fintype (BinaryBlockIndex n) :=
  Fintype.ofInjective (@toFin n) toFin_injective

end BinaryBlockIndex

/-- Row/column type of a binary block. -/
abbrev BinaryBlockCoord {n : Nat} (idx : BinaryBlockIndex n) :=
  Fin (n - 2 * idx.k + 1)

/-- Binary block as a dependent finite block family. -/
def binaryBlockForIndex {n : Nat} (x : BinaryOrbitIndex n -> Rat)
    (idx : BinaryBlockIndex n) :
    Matrix (BinaryBlockCoord idx) (BinaryBlockCoord idx) Rat :=
  binaryBlock n idx.k x

/-- Blockwise PSD predicate for all binary Schrijver blocks. -/
def BinaryBlocksPSD {n : Nat} (x : BinaryOrbitIndex n -> Rat) : Prop :=
  BlocksPSD (fun idx : BinaryBlockIndex n => BinaryBlockCoord idx) (binaryBlockForIndex x)

/-- The sigma-indexed block-diagonal matrix formed from all binary Schrijver blocks. -/
def binaryBlockDiagonalMatrix {n : Nat} (x : BinaryOrbitIndex n -> Rat) :
    Matrix (Sigma (fun idx : BinaryBlockIndex n => BinaryBlockCoord idx))
      (Sigma (fun idx : BinaryBlockIndex n => BinaryBlockCoord idx)) Rat :=
  sigmaBlockDiagonal (fun idx : BinaryBlockIndex n => BinaryBlockCoord idx)
    (binaryBlockForIndex x)

def binaryScaledBlockDiagonalMatrix {n : Nat}
    (scale : BinaryBlockIndex n -> Rat) (x : BinaryOrbitIndex n -> Rat) :
    Matrix (Sigma (fun idx : BinaryBlockIndex n => BinaryBlockCoord idx))
      (Sigma (fun idx : BinaryBlockIndex n => BinaryBlockCoord idx)) Rat :=
  sigmaBlockDiagonal (fun idx : BinaryBlockIndex n => BinaryBlockCoord idx)
    (fun idx i j => scale idx * binaryBlockForIndex x idx i j)

/-- PSD of the binary block-diagonal matrix is exactly blockwise PSD. -/
theorem binaryBlockDiagonalMatrix_psd_iff {n : Nat}
    (x : BinaryOrbitIndex n -> Rat) :
    RatPSD (binaryBlockDiagonalMatrix x) <-> BinaryBlocksPSD x := by
  exact RatPSD.sigmaBlockDiagonal_iff (binaryBlockForIndex x)

/-- Certificate for the binary block diagonalization quadratic-form equivalence. -/
structure BinaryBlockDiagonalizationCertificate {n : Nat}
    (x : BinaryOrbitIndex n -> Rat) where
  quadraticEquivalence :
    QuadraticFormEquivalence (binaryTerwilligerMatrix x) (binaryBlockDiagonalMatrix x)

/-- Matrix-form certificate for generated binary block diagonalizations. -/
structure BinaryBlockDiagonalizationMatrixCertificate {n : Nat}
    (x : BinaryOrbitIndex n -> Rat) where
  matrixEquivalence :
    QuadraticFormMatrixEquivalence (binaryTerwilligerMatrix x) (binaryBlockDiagonalMatrix x)

/--
Matrix-form binary block diagonalization certificate whose generated congruence
targets a positive rational scaling of each block.
-/
structure BinaryBlockDiagonalizationScaledMatrixCertificate {n : Nat}
    (scale : BinaryBlockIndex n -> Rat) (x : BinaryOrbitIndex n -> Rat) where
  scale_pos : forall idx, 0 < scale idx
  matrixEquivalence :
    QuadraticFormMatrixEquivalence (binaryTerwilligerMatrix x)
      (binaryScaledBlockDiagonalMatrix scale x)

/--
One-way matrix-form compression certificate for binary block diagonalization.

For code-cell feasibility, the needed direction is only
`RatPSD (binaryTerwilligerMatrix x) -> BinaryBlocksPSD x`.  A checked
congruence identity `Tᵀ A T = scaled blocks` is enough for that direction and
does not require a right inverse from the compressed block coordinates back to
the full word space.
-/
structure BinaryBlockDiagonalizationScaledCompressionCertificate {n : Nat}
    (scale : BinaryBlockIndex n -> Rat) (x : BinaryOrbitIndex n -> Rat) where
  scale_pos : forall idx, 0 < scale idx
  toMatrix :
    Matrix (QaryWord 2 n)
      (Sigma (fun idx : BinaryBlockIndex n => BinaryBlockCoord idx)) Rat
  congruence_eq :
    congruenceMatrix toMatrix (binaryTerwilligerMatrix x) =
      binaryScaledBlockDiagonalMatrix scale x

/--
One-way compression certificate for a single binary Schrijver block.

This is the local form of the scaled compression argument: to prove one block
PSD, it is enough to exhibit a matrix `T` with `T^T A T = scale * block`.
Using this blockwise shape avoids proving cross-block zero identities when the
certificate consumer only needs each block to be PSD.
-/
structure BinaryBlockScaledCompressionCertificate {n : Nat}
    (idx : BinaryBlockIndex n) (scale : Rat)
    (x : BinaryOrbitIndex n -> Rat) where
  scale_pos : 0 < scale
  toMatrix : Matrix (QaryWord 2 n) (BinaryBlockCoord idx) Rat
  congruence_eq :
    congruenceMatrix toMatrix (binaryTerwilligerMatrix x) =
      scale • binaryBlockForIndex x idx

/-- Blockwise one-way scaled compression certificates for every Schrijver block. -/
structure BinaryBlockDiagonalizationScaledBlockCompressionCertificate {n : Nat}
    (scale : BinaryBlockIndex n -> Rat) (x : BinaryOrbitIndex n -> Rat) where
  blockCert :
    forall idx : BinaryBlockIndex n,
      BinaryBlockScaledCompressionCertificate idx (scale idx) x

/-- Convert a generated matrix-form certificate to the functional certificate API. -/
noncomputable def BinaryBlockDiagonalizationMatrixCertificate.toCertificate
    {n : Nat} {x : BinaryOrbitIndex n -> Rat}
    (cert : BinaryBlockDiagonalizationMatrixCertificate x) :
    BinaryBlockDiagonalizationCertificate x where
  quadraticEquivalence := cert.matrixEquivalence.toQuadraticFormEquivalence

/-- Matrix-form binary block diagonalization certificates imply the block PSD criterion. -/
theorem BinaryBlockDiagonalizationMatrixCertificate.psd_iff_blockDiagonal
    {n : Nat} {x : BinaryOrbitIndex n -> Rat}
    (cert : BinaryBlockDiagonalizationMatrixCertificate x) :
    RatPSD (binaryTerwilligerMatrix x) <-> RatPSD (binaryBlockDiagonalMatrix x) :=
  cert.toCertificate.quadraticEquivalence.psd_iff.symm

/-- Scaled matrix-form certificates still prove PSD equivalence with the unscaled blocks. -/
theorem BinaryBlockDiagonalizationScaledMatrixCertificate.psd_iff_blockDiagonal
    {n : Nat} {scale : BinaryBlockIndex n -> Rat} {x : BinaryOrbitIndex n -> Rat}
    (cert : BinaryBlockDiagonalizationScaledMatrixCertificate scale x) :
    RatPSD (binaryTerwilligerMatrix x) <-> RatPSD (binaryBlockDiagonalMatrix x) := by
  have hscaled :
      RatPSD (binaryTerwilligerMatrix x) <->
        RatPSD (binaryScaledBlockDiagonalMatrix scale x) :=
    cert.matrixEquivalence.toQuadraticFormEquivalence.psd_iff.symm
  have hscale :
      RatPSD (binaryScaledBlockDiagonalMatrix scale x) <->
        RatPSD (binaryBlockDiagonalMatrix x) := by
    exact RatPSD.sigmaBlockDiagonal_posScale_iff scale cert.scale_pos (binaryBlockForIndex x)
  exact hscaled.trans hscale

/-- A one-way scaled compression certificate turns Terwilliger PSD into block PSD. -/
theorem BinaryBlockDiagonalizationScaledCompressionCertificate.blocksPSD_of_terwilligerPSD
    {n : Nat} {scale : BinaryBlockIndex n -> Rat} {x : BinaryOrbitIndex n -> Rat}
    (cert : BinaryBlockDiagonalizationScaledCompressionCertificate scale x)
    (hM : RatPSD (binaryTerwilligerMatrix x)) :
    BinaryBlocksPSD x := by
  have hscaled :
      RatPSD (binaryScaledBlockDiagonalMatrix scale x) := by
    rw [← cert.congruence_eq]
    exact RatPSD.congruenceMatrix cert.toMatrix hM
  have hblockDiag : RatPSD (binaryBlockDiagonalMatrix x) := by
    exact (RatPSD.sigmaBlockDiagonal_posScale_iff
      scale cert.scale_pos (binaryBlockForIndex x)).mp hscaled
  exact (binaryBlockDiagonalMatrix_psd_iff x).mp hblockDiag

/-- A one-block scaled compression certificate turns Terwilliger PSD into that block's PSD. -/
theorem BinaryBlockScaledCompressionCertificate.blockPSD_of_terwilligerPSD
    {n : Nat} {idx : BinaryBlockIndex n} {scale : Rat}
    {x : BinaryOrbitIndex n -> Rat}
    (cert : BinaryBlockScaledCompressionCertificate idx scale x)
    (hM : RatPSD (binaryTerwilligerMatrix x)) :
    RatPSD (binaryBlockForIndex x idx) := by
  have hscaled : RatPSD (scale • binaryBlockForIndex x idx) := by
    rw [← cert.congruence_eq]
    exact RatPSD.congruenceMatrix cert.toMatrix hM
  exact (RatPSD.smul_iff_of_pos cert.scale_pos).mp hscaled

/-- Blockwise one-way scaled compression certificates turn Terwilliger PSD into block PSD. -/
theorem BinaryBlockDiagonalizationScaledBlockCompressionCertificate.blocksPSD_of_terwilligerPSD
    {n : Nat} {scale : BinaryBlockIndex n -> Rat} {x : BinaryOrbitIndex n -> Rat}
    (cert : BinaryBlockDiagonalizationScaledBlockCompressionCertificate scale x)
    (hM : RatPSD (binaryTerwilligerMatrix x)) :
    BinaryBlocksPSD x := by
  intro idx
  exact (cert.blockCert idx).blockPSD_of_terwilligerPSD hM

/-- A binary block diagonalization certificate gives the corresponding PSD equivalence. -/
theorem BinaryBlockDiagonalizationCertificate.psd_iff_blockDiagonal
    {n : Nat} {x : BinaryOrbitIndex n -> Rat}
    (cert : BinaryBlockDiagonalizationCertificate x) :
    RatPSD (binaryTerwilligerMatrix x) <-> RatPSD (binaryBlockDiagonalMatrix x) :=
  cert.quadraticEquivalence.psd_iff.symm

theorem binary_block_diagonalization_psd {n : Nat}
    (x : BinaryOrbitIndex n -> Rat)
    (cert : BinaryBlockDiagonalizationCertificate x) :
    RatPSD (binaryTerwilligerMatrix x) <->
      forall k, 2 * k <= n -> RatPSD (binaryBlock n k x) := by
  constructor
  · intro hM k hk
    exact (binaryBlockDiagonalMatrix_psd_iff x).mp
      (cert.psd_iff_blockDiagonal.mp hM) ⟨k, hk⟩
  · intro hblocks
    exact cert.psd_iff_blockDiagonal.mpr
      ((binaryBlockDiagonalMatrix_psd_iff x).mpr (fun idx => hblocks idx.k idx.hk))

theorem binary_scaled_block_diagonalization_psd {n : Nat}
    (scale : BinaryBlockIndex n -> Rat) (x : BinaryOrbitIndex n -> Rat)
    (cert : BinaryBlockDiagonalizationScaledMatrixCertificate scale x) :
    RatPSD (binaryTerwilligerMatrix x) <->
      forall k, 2 * k <= n -> RatPSD (binaryBlock n k x) := by
  constructor
  · intro hM k hk
    exact (binaryBlockDiagonalMatrix_psd_iff x).mp
      (cert.psd_iff_blockDiagonal.mp hM) ⟨k, hk⟩
  · intro hblocks
    exact cert.psd_iff_blockDiagonal.mpr
      ((binaryBlockDiagonalMatrix_psd_iff x).mpr (fun idx => hblocks idx.k idx.hk))

def binaryLengthOneBlockIndex0 : BinaryBlockIndex 1 where
  k := 0
  hk := by omega

/-- The length-one binary words, ordered by the unique Schrijver block coordinate. -/
def binaryLengthOneWordBlockEquiv : QaryWord 2 1 ≃
    Sigma (fun idx : BinaryBlockIndex 1 => BinaryBlockCoord idx) where
  toFun w :=
    ⟨binaryLengthOneBlockIndex0, ⟨(w ⟨0, by decide⟩).val, by
      have hw := (w ⟨0, by decide⟩).isLt
      simpa [binaryLengthOneBlockIndex0, BinaryBlockCoord] using hw⟩⟩
  invFun p := fun _ =>
    ⟨p.2.val, by
      have hk0 : p.1.k = 0 := by
        have hk := p.1.hk
        omega
      have hp := p.2.isLt
      simp [BinaryBlockCoord, hk0] at hp
      omega⟩
  left_inv w := by
    funext a
    fin_cases a
    simp
  right_inv p := by
    rcases p with ⟨idx, coord⟩
    have hidx : idx = binaryLengthOneBlockIndex0 := by
      rcases idx with ⟨k, hk⟩
      have hk0 : k = 0 := by omega
      subst k
      simp [binaryLengthOneBlockIndex0]
    subst idx
    apply Sigma.ext rfl
    simp

/-- In length one, the binary block diagonalization matrix is just a reindexing. -/
theorem binaryLengthOne_reindex_terwilliger_eq_blockDiagonal
    (x : BinaryOrbitIndex 1 -> Rat) :
    reindexMatrix binaryLengthOneWordBlockEquiv (binaryTerwilligerMatrix x) =
      binaryBlockDiagonalMatrix x := by
  ext p q
  rcases p with ⟨idx, row⟩
  rcases q with ⟨idx2, col⟩
  have hidx : idx = binaryLengthOneBlockIndex0 := by
    rcases idx with ⟨k, hk⟩
    have hk0 : k = 0 := by omega
    subst k
    simp [binaryLengthOneBlockIndex0]
  have hidx2 : idx2 = binaryLengthOneBlockIndex0 := by
    rcases idx2 with ⟨k, hk⟩
    have hk0 : k = 0 := by omega
    subst k
    simp [binaryLengthOneBlockIndex0]
  subst idx
  subst idx2
  fin_cases row <;> fin_cases col <;>
    simp [reindexMatrix, binaryBlockDiagonalMatrix, binaryLengthOneWordBlockEquiv,
      binaryLengthOneBlockIndex0, binaryTerwilligerMatrix, binaryBlockForIndex,
      sigmaBlockDiagonal, binaryBlock, binaryBlockEntry, betaCoeff, betaCoeffTerm,
      binaryOrbitOf, binarySupport, Finset.sum_range_succ]

/-- Concrete matrix-form binary Schrijver block diagonalization certificate for length one. -/
noncomputable def binaryLengthOneBlockDiagonalizationMatrixCertificate
    (x : BinaryOrbitIndex 1 -> Rat) :
    BinaryBlockDiagonalizationMatrixCertificate x where
  matrixEquivalence :=
    QuadraticFormMatrixEquivalence.ofReindexEq binaryLengthOneWordBlockEquiv
      (binaryTerwilligerMatrix x)
      (binaryLengthOne_reindex_terwilliger_eq_blockDiagonal x)

/-- Concrete binary Schrijver block diagonalization certificate for length one. -/
noncomputable def binaryLengthOneBlockDiagonalizationCertificate
    (x : BinaryOrbitIndex 1 -> Rat) :
    BinaryBlockDiagonalizationCertificate x :=
  (binaryLengthOneBlockDiagonalizationMatrixCertificate x).toCertificate

/-- The binary block diagonalization theorem, closed concretely for `n = 1`. -/
theorem binaryLengthOne_block_diagonalization_psd
    (x : BinaryOrbitIndex 1 -> Rat) :
    RatPSD (binaryTerwilligerMatrix x) <->
      forall k, 2 * k <= 1 -> RatPSD (binaryBlock 1 k x) := by
  exact binary_block_diagonalization_psd x
    (binaryLengthOneBlockDiagonalizationCertificate x)

def binaryLengthTwoWord00 : QaryWord 2 2 :=
  fun _ => 0

def binaryLengthTwoWord10 : QaryWord 2 2 :=
  fun a => if a = 0 then 1 else 0

def binaryLengthTwoWord01 : QaryWord 2 2 :=
  fun a => if a = 1 then 1 else 0

def binaryLengthTwoWord11 : QaryWord 2 2 :=
  fun _ => 1

theorem binaryWord_length_two_cases (w : QaryWord 2 2) :
    w = binaryLengthTwoWord00 ∨ w = binaryLengthTwoWord10 ∨
      w = binaryLengthTwoWord01 ∨ w = binaryLengthTwoWord11 := by
  have h0_lt : (w ⟨0, by decide⟩).val < 2 := (w ⟨0, by decide⟩).isLt
  have h1_lt : (w ⟨1, by decide⟩).val < 2 := (w ⟨1, by decide⟩).isLt
  interval_cases h0 : (w ⟨0, by decide⟩).val <;>
    interval_cases h1 : (w ⟨1, by decide⟩).val
  · left
    funext a
    fin_cases a
    · apply Fin.ext
      simpa [binaryLengthTwoWord00] using h0
    · apply Fin.ext
      simpa [binaryLengthTwoWord00] using h1
  · right; right; left
    funext a
    fin_cases a
    · apply Fin.ext
      simpa [binaryLengthTwoWord01] using h0
    · apply Fin.ext
      simpa [binaryLengthTwoWord01] using h1
  · right; left
    funext a
    fin_cases a
    · apply Fin.ext
      simpa [binaryLengthTwoWord10] using h0
    · apply Fin.ext
      simpa [binaryLengthTwoWord10] using h1
  · right; right; right
    funext a
    fin_cases a
    · apply Fin.ext
      simpa [binaryLengthTwoWord11] using h0
    · apply Fin.ext
      simpa [binaryLengthTwoWord11] using h1

private theorem binaryLengthTwoWord_ne_of_coord
    {u v : QaryWord 2 2} (a : Fin 2) (hval : (u a).val ≠ (v a).val) :
    u ≠ v := by
  intro h
  exact hval (congrArg Fin.val (congrFun h a))

@[simp] theorem binaryLengthTwoWord00_ne_word10 :
    binaryLengthTwoWord00 ≠ binaryLengthTwoWord10 := by
  exact binaryLengthTwoWord_ne_of_coord ⟨0, by decide⟩ (by decide)

@[simp] theorem binaryLengthTwoWord10_ne_word00 :
    binaryLengthTwoWord10 ≠ binaryLengthTwoWord00 :=
  fun h => binaryLengthTwoWord00_ne_word10 h.symm

@[simp] theorem binaryLengthTwoWord00_ne_word01 :
    binaryLengthTwoWord00 ≠ binaryLengthTwoWord01 := by
  exact binaryLengthTwoWord_ne_of_coord ⟨1, by decide⟩ (by decide)

@[simp] theorem binaryLengthTwoWord01_ne_word00 :
    binaryLengthTwoWord01 ≠ binaryLengthTwoWord00 :=
  fun h => binaryLengthTwoWord00_ne_word01 h.symm

@[simp] theorem binaryLengthTwoWord00_ne_word11 :
    binaryLengthTwoWord00 ≠ binaryLengthTwoWord11 := by
  exact binaryLengthTwoWord_ne_of_coord ⟨0, by decide⟩ (by decide)

@[simp] theorem binaryLengthTwoWord11_ne_word00 :
    binaryLengthTwoWord11 ≠ binaryLengthTwoWord00 :=
  fun h => binaryLengthTwoWord00_ne_word11 h.symm

@[simp] theorem binaryLengthTwoWord10_ne_word01 :
    binaryLengthTwoWord10 ≠ binaryLengthTwoWord01 := by
  exact binaryLengthTwoWord_ne_of_coord ⟨0, by decide⟩ (by decide)

@[simp] theorem binaryLengthTwoWord01_ne_word10 :
    binaryLengthTwoWord01 ≠ binaryLengthTwoWord10 :=
  fun h => binaryLengthTwoWord10_ne_word01 h.symm

@[simp] theorem binaryLengthTwoWord10_ne_word11 :
    binaryLengthTwoWord10 ≠ binaryLengthTwoWord11 := by
  exact binaryLengthTwoWord_ne_of_coord ⟨1, by decide⟩ (by decide)

@[simp] theorem binaryLengthTwoWord11_ne_word10 :
    binaryLengthTwoWord11 ≠ binaryLengthTwoWord10 :=
  fun h => binaryLengthTwoWord10_ne_word11 h.symm

@[simp] theorem binaryLengthTwoWord01_ne_word11 :
    binaryLengthTwoWord01 ≠ binaryLengthTwoWord11 := by
  exact binaryLengthTwoWord_ne_of_coord ⟨0, by decide⟩ (by decide)

@[simp] theorem binaryLengthTwoWord11_ne_word01 :
    binaryLengthTwoWord11 ≠ binaryLengthTwoWord01 :=
  fun h => binaryLengthTwoWord01_ne_word11 h.symm

@[simp]
theorem binarySupport_length_two_word00 :
    binarySupport 2 binaryLengthTwoWord00 = ∅ := by
  ext a
  fin_cases a <;> simp [binarySupport, binaryLengthTwoWord00]

@[simp]
theorem binarySupport_length_two_word10 :
    binarySupport 2 binaryLengthTwoWord10 = {⟨0, by decide⟩} := by
  ext a
  fin_cases a <;> simp [binarySupport, binaryLengthTwoWord10]

@[simp]
theorem binarySupport_length_two_word01 :
    binarySupport 2 binaryLengthTwoWord01 = {⟨1, by decide⟩} := by
  ext a
  fin_cases a <;> simp [binarySupport, binaryLengthTwoWord01]

@[simp]
theorem binarySupport_length_two_word11 :
    binarySupport 2 binaryLengthTwoWord11 = Finset.univ := by
  ext a
  fin_cases a <;> simp [binarySupport, binaryLengthTwoWord11]

theorem binaryWord_univ_length_two :
    (Finset.univ : Finset (QaryWord 2 2)) =
      {binaryLengthTwoWord00, binaryLengthTwoWord10, binaryLengthTwoWord01,
        binaryLengthTwoWord11} := by
  ext w
  constructor
  · intro _
    rcases binaryWord_length_two_cases w with rfl | rfl | rfl | rfl <;> simp
  · intro _
    simp

def binaryLengthTwoBlockIndex0 : BinaryBlockIndex 2 where
  k := 0
  hk := by omega

def binaryLengthTwoBlockIndex1 : BinaryBlockIndex 2 where
  k := 1
  hk := by omega

theorem binaryBlockIndex_length_two_cases (idx : BinaryBlockIndex 2) :
    idx = binaryLengthTwoBlockIndex0 ∨ idx = binaryLengthTwoBlockIndex1 := by
  rcases idx with ⟨k, hk⟩
  have hk1 : k <= 1 := by omega
  interval_cases k
  · left
    simp [binaryLengthTwoBlockIndex0]
  · right
    simp [binaryLengthTwoBlockIndex1]

theorem binaryBlockIndex_univ_length_two :
    (Finset.univ : Finset (BinaryBlockIndex 2)) =
      {binaryLengthTwoBlockIndex0, binaryLengthTwoBlockIndex1} := by
  ext idx
  constructor
  · intro _
    rcases binaryBlockIndex_length_two_cases idx with rfl | rfl <;> simp
  · intro _
    simp

def binaryLengthTwoBlockCoord0Zero :
    Sigma (fun idx : BinaryBlockIndex 2 => BinaryBlockCoord idx) :=
  ⟨binaryLengthTwoBlockIndex0, ⟨0, by decide⟩⟩

def binaryLengthTwoBlockCoord0One :
    Sigma (fun idx : BinaryBlockIndex 2 => BinaryBlockCoord idx) :=
  ⟨binaryLengthTwoBlockIndex0, ⟨1, by decide⟩⟩

def binaryLengthTwoBlockCoord0Two :
    Sigma (fun idx : BinaryBlockIndex 2 => BinaryBlockCoord idx) :=
  ⟨binaryLengthTwoBlockIndex0, ⟨2, by decide⟩⟩

def binaryLengthTwoBlockCoord1Zero :
    Sigma (fun idx : BinaryBlockIndex 2 => BinaryBlockCoord idx) :=
  ⟨binaryLengthTwoBlockIndex1, ⟨0, by decide⟩⟩

theorem binaryLengthTwoBlockCoord_cases
    (p : Sigma (fun idx : BinaryBlockIndex 2 => BinaryBlockCoord idx)) :
    p = binaryLengthTwoBlockCoord0Zero ∨ p = binaryLengthTwoBlockCoord0One ∨
      p = binaryLengthTwoBlockCoord0Two ∨ p = binaryLengthTwoBlockCoord1Zero := by
  rcases p with ⟨idx, coord⟩
  rcases binaryBlockIndex_length_two_cases idx with rfl | rfl
  · fin_cases coord
    · left
      apply Sigma.ext rfl
      simp
    · right; left
      apply Sigma.ext rfl
      simp
    · right; right; left
      apply Sigma.ext rfl
      simp
  · fin_cases coord
    · right; right; right
      apply Sigma.ext rfl
      simp

theorem binaryLengthTwoBlockCoord_univ :
    (Finset.univ : Finset (Sigma (fun idx : BinaryBlockIndex 2 => BinaryBlockCoord idx))) =
      {binaryLengthTwoBlockCoord0Zero, binaryLengthTwoBlockCoord0One,
        binaryLengthTwoBlockCoord0Two, binaryLengthTwoBlockCoord1Zero} := by
  ext p
  constructor
  · intro _
    rcases binaryLengthTwoBlockCoord_cases p with rfl | rfl | rfl | rfl <;> simp
  · intro _
    simp

def binaryLengthTwoBlockScale : BinaryBlockIndex 2 -> Rat :=
  fun idx => if idx.k = 0 then 1 else 2

theorem binaryLengthTwoBlockScale_pos (idx : BinaryBlockIndex 2) :
    0 < binaryLengthTwoBlockScale idx := by
  rcases binaryBlockIndex_length_two_cases idx with rfl | rfl <;>
    norm_num [binaryLengthTwoBlockScale, binaryLengthTwoBlockIndex0,
      binaryLengthTwoBlockIndex1]

/-- Rational transform from binary length-two block coordinates to word coordinates. -/
def binaryLengthTwoBlockTransform :
    Matrix (QaryWord 2 2)
      (Sigma (fun idx : BinaryBlockIndex 2 => BinaryBlockCoord idx)) Rat :=
  fun w p =>
    if p.1.k = 0 then
      if p.2.val = 0 then
        if w = binaryLengthTwoWord00 then 1 else 0
      else if p.2.val = 1 then
        if w = binaryLengthTwoWord10 then 1
        else if w = binaryLengthTwoWord01 then 1
        else 0
      else
        if w = binaryLengthTwoWord11 then 1 else 0
    else
      if w = binaryLengthTwoWord10 then 1
      else if w = binaryLengthTwoWord01 then -1
      else 0

def binaryLengthTwoBlockTransformInverse :
    Matrix (Sigma (fun idx : BinaryBlockIndex 2 => BinaryBlockCoord idx))
      (QaryWord 2 2) Rat :=
  fun p w =>
    if p.1.k = 0 then
      if p.2.val = 0 then
        if w = binaryLengthTwoWord00 then 1 else 0
      else if p.2.val = 1 then
        if w = binaryLengthTwoWord10 then 1 / 2
        else if w = binaryLengthTwoWord01 then 1 / 2
        else 0
      else
        if w = binaryLengthTwoWord11 then 1 else 0
    else
      if w = binaryLengthTwoWord10 then 1 / 2
      else if w = binaryLengthTwoWord01 then -1 / 2
      else 0

theorem binaryLengthTwoBlockTransform_rightInverse :
    forall i j : QaryWord 2 2,
      Finset.univ.sum (fun k : Sigma (fun idx : BinaryBlockIndex 2 => BinaryBlockCoord idx) =>
        binaryLengthTwoBlockTransform i k *
          binaryLengthTwoBlockTransformInverse k j) =
        if i = j then 1 else 0 := by
  intro i j
  rw [binaryLengthTwoBlockCoord_univ]
  rcases binaryWord_length_two_cases i with rfl | rfl | rfl | rfl <;>
    rcases binaryWord_length_two_cases j with rfl | rfl | rfl | rfl <;>
    norm_num [binaryLengthTwoBlockTransform, binaryLengthTwoBlockTransformInverse,
      binaryLengthTwoBlockIndex0, binaryLengthTwoBlockIndex1,
      binaryLengthTwoBlockCoord0Zero, binaryLengthTwoBlockCoord0One,
      binaryLengthTwoBlockCoord0Two, binaryLengthTwoBlockCoord1Zero,
      binaryLengthTwoWord00, binaryLengthTwoWord10, binaryLengthTwoWord01,
      binaryLengthTwoWord11]

set_option linter.unusedSimpArgs false in
set_option linter.unnecessarySeqFocus false in
set_option linter.unreachableTactic false in
set_option linter.unusedTactic false in
theorem binaryLengthTwo_congruence_terwilliger_eq_scaledBlockDiagonal
    (x : BinaryOrbitIndex 2 -> Rat) :
    congruenceMatrix binaryLengthTwoBlockTransform (binaryTerwilligerMatrix x) =
      binaryScaledBlockDiagonalMatrix binaryLengthTwoBlockScale x := by
  ext p q
  rcases p with ⟨idx, row⟩
  rcases q with ⟨idx2, col⟩
  rcases binaryBlockIndex_length_two_cases idx with rfl | rfl <;>
    rcases binaryBlockIndex_length_two_cases idx2 with rfl | rfl
  · fin_cases row <;> fin_cases col <;>
      simp [congruenceMatrix, binaryWord_univ_length_two,
        binaryLengthTwoBlockTransform, binaryTerwilligerMatrix, binaryOrbitOf,
        zeroWord, weight, binaryScaledBlockDiagonalMatrix,
        binaryBlockForIndex, sigmaBlockDiagonal, binaryBlock, binaryBlockEntry,
        betaCoeff, betaCoeffTerm, Finset.sum_range_succ, binaryLengthTwoBlockScale,
        Matrix.smul_apply, Pi.smul_apply, smul_eq_mul,
        binaryLengthTwoBlockIndex0, binaryLengthTwoBlockIndex1,
        binaryLengthTwoWord00, binaryLengthTwoWord10, binaryLengthTwoWord01,
        binaryLengthTwoWord11] <;> ring
  · fin_cases row <;> fin_cases col <;>
      simp [congruenceMatrix, binaryWord_univ_length_two,
        binaryLengthTwoBlockTransform, binaryTerwilligerMatrix, binaryOrbitOf,
        zeroWord, weight, binaryScaledBlockDiagonalMatrix,
        binaryBlockForIndex, sigmaBlockDiagonal, binaryBlock, binaryBlockEntry,
        betaCoeff, betaCoeffTerm, Finset.sum_range_succ, binaryLengthTwoBlockScale,
        Matrix.smul_apply, Pi.smul_apply, smul_eq_mul,
        binaryLengthTwoBlockIndex0, binaryLengthTwoBlockIndex1,
        binaryLengthTwoWord00, binaryLengthTwoWord10, binaryLengthTwoWord01,
        binaryLengthTwoWord11] <;> ring
  · fin_cases row <;> fin_cases col <;>
      simp [congruenceMatrix, binaryWord_univ_length_two,
        binaryLengthTwoBlockTransform, binaryTerwilligerMatrix, binaryOrbitOf,
        zeroWord, weight, binaryScaledBlockDiagonalMatrix,
        binaryBlockForIndex, sigmaBlockDiagonal, binaryBlock, binaryBlockEntry,
        betaCoeff, betaCoeffTerm, Finset.sum_range_succ, binaryLengthTwoBlockScale,
        Matrix.smul_apply, Pi.smul_apply, smul_eq_mul,
        binaryLengthTwoBlockIndex0, binaryLengthTwoBlockIndex1,
        binaryLengthTwoWord00, binaryLengthTwoWord10, binaryLengthTwoWord01,
        binaryLengthTwoWord11] <;> ring
  · fin_cases row <;> fin_cases col <;>
      simp [congruenceMatrix, binaryWord_univ_length_two,
        binaryLengthTwoBlockTransform, binaryTerwilligerMatrix, binaryOrbitOf,
        zeroWord, weight, binaryScaledBlockDiagonalMatrix,
        binaryBlockForIndex, sigmaBlockDiagonal, binaryBlock, binaryBlockEntry,
        betaCoeff, betaCoeffTerm, Finset.sum_range_succ, binaryLengthTwoBlockScale,
        Matrix.smul_apply, Pi.smul_apply, smul_eq_mul,
        binaryLengthTwoBlockIndex0, binaryLengthTwoBlockIndex1,
        binaryLengthTwoWord00, binaryLengthTwoWord10, binaryLengthTwoWord01,
        binaryLengthTwoWord11] <;> ring

noncomputable def binaryLengthTwoBlockDiagonalizationScaledMatrixCertificate
    (x : BinaryOrbitIndex 2 -> Rat) :
    BinaryBlockDiagonalizationScaledMatrixCertificate binaryLengthTwoBlockScale x where
  scale_pos := binaryLengthTwoBlockScale_pos
  matrixEquivalence := {
    toMatrix := binaryLengthTwoBlockTransform
    fromMatrix := binaryLengthTwoBlockTransformInverse
    congruence_eq := binaryLengthTwo_congruence_terwilliger_eq_scaledBlockDiagonal x
    right_inv_entry := binaryLengthTwoBlockTransform_rightInverse
  }

theorem binaryLengthTwo_block_diagonalization_psd
    (x : BinaryOrbitIndex 2 -> Rat) :
    RatPSD (binaryTerwilligerMatrix x) <->
      forall k, 2 * k <= 2 -> RatPSD (binaryBlock 2 k x) := by
  exact binary_scaled_block_diagonalization_psd binaryLengthTwoBlockScale x
    (binaryLengthTwoBlockDiagonalizationScaledMatrixCertificate x)

private theorem BinaryOrbitIndex.swap_swap {n : Nat} (idx : BinaryOrbitIndex n) :
    idx.swap.swap = idx := by
  cases idx
  simp [BinaryOrbitIndex.swap]

theorem binaryOrbitMatrix_transpose {n : Nat} (idx : BinaryOrbitIndex n) :
    (binaryOrbitMatrix idx).transpose = binaryOrbitMatrix idx.swap := by
  ext u v
  have hswap : binaryOrbitOf v u = (binaryOrbitOf u v).swap := by
    simp [binaryOrbitOf, BinaryOrbitIndex.swap, Finset.inter_comm]
  have hiff : ((binaryOrbitOf u v).swap = idx) ↔ binaryOrbitOf u v = idx.swap := by
    constructor
    · intro h
      have hh := congrArg BinaryOrbitIndex.swap h
      simpa [BinaryOrbitIndex.swap_swap] using hh
    · intro h
      rw [h, BinaryOrbitIndex.swap_swap]
  simp [binaryOrbitMatrix, Matrix.transpose_apply, hswap, hiff]

/-- Indicator vector of the binary shell `S_i(0)`. -/
def binarySphereVector (n i : Nat) : QaryWord 2 n -> Rat :=
  fun u => if weight 2 n (by decide : 0 < 2) u = i then 1 else 0

/-- Outer product of two binary zero-centered shell indicators. -/
def binarySphereOuterProduct (n i j : Nat) :
    Matrix (QaryWord 2 n) (QaryWord 2 n) Rat :=
  fun u v => binarySphereVector n i u * binarySphereVector n j v

/-- Sum of all binary orbit matrices with fixed first two orbit parameters. -/
noncomputable def binarySphereOuterOrbitSum (n i j : Nat) :
    Matrix (QaryWord 2 n) (QaryWord 2 n) Rat :=
  fun u v =>
    Finset.univ.sum (fun idx : BinaryOrbitIndex n =>
      if idx.i = i /\ idx.j = j /\ binaryOrbitOf u v = idx then (1 : Rat) else 0)

/-- The shell-indicator outer product is the sum of orbit matrices with fixed `i,j`. -/
theorem binary_sphere_vector_block_image {n i j : Nat} :
    binarySphereOuterOrbitSum n i j = binarySphereOuterProduct n i j := by
  ext u v
  unfold binarySphereOuterOrbitSum binarySphereOuterProduct binarySphereVector
  calc
    (∑ idx : BinaryOrbitIndex n,
      if idx.i = i /\ idx.j = j /\ binaryOrbitOf u v = idx then (1 : Rat) else 0) =
        (if (binaryOrbitOf u v).i = i /\ (binaryOrbitOf u v).j = j /\
            binaryOrbitOf u v = binaryOrbitOf u v then (1 : Rat) else 0) := by
          apply Finset.sum_eq_single (a := binaryOrbitOf u v)
          · intro idx _ hidx
            have hne : binaryOrbitOf u v ≠ idx := fun h => hidx h.symm
            simp [hne]
          · intro hnot
            simp at hnot
    _ = (if weight 2 n (by decide : 0 < 2) u = i then 1 else 0) *
          (if weight 2 n (by decide : 0 < 2) v = j then 1 else 0) := by
          rw [binaryOrbitOf_i u v, binaryOrbitOf_j u v]
          by_cases hu : weight 2 n (by decide : 0 < 2) u = i
          · by_cases hv : weight 2 n (by decide : 0 < 2) v = j
            · simp [hu, hv]
            · simp [hu, hv]
          · simp [hu]

theorem prop_3_3_binary_bordered_psd_reduction {n : Nat}
    (c : Rat) (x : BinaryOrbitIndex n -> Rat) :
    RatPSD (bordered c (binaryTerwilligerMatrix x)) ->
      0 <= c ∧ RatPSD (binaryTerwilligerMatrix x) := by
  intro h
  exact ⟨RatPSD.bordered_corner_nonneg h, RatPSD.of_bordered h⟩

theorem binary_bordered_psd_implies_blocks {n : Nat}
    (c : Rat) (x : BinaryOrbitIndex n -> Rat)
    (cert : BinaryBlockDiagonalizationCertificate x) :
    RatPSD (bordered c (binaryTerwilligerMatrix x)) ->
      0 <= c ∧ forall k, 2 * k <= n -> RatPSD (binaryBlock n k x) := by
  intro h
  have hred := prop_3_3_binary_bordered_psd_reduction c x h
  exact ⟨hred.1, (binary_block_diagonalization_psd x cert).mp hred.2⟩

end GijswijtPolak2025
end SDP
end CoveringCodes
