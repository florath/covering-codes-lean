import CoveringCodes.SDP.GijswijtPolak2025.BinaryTerwilliger
import CoveringCodes.SDP.GijswijtPolak2025.QaryOrbit
import CoveringCodes.SDP.GijswijtPolak2025.BorderedMatrix

/-!
# Nonbinary Terwilliger algebra targets
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

/-- Nonbinary Terwilliger matrix represented by orbit coefficients. -/
def qaryTerwilligerMatrix {q n : Nat}
    (hq : 0 < q) (x : QaryOrbitIndex q n -> Rat) :
    Matrix (QaryWord q n) (QaryWord q n) Rat :=
  fun u v => x (qaryOrbitOf hq u v)

@[simp]
theorem qaryTerwilligerMatrix_apply {q n : Nat}
    (hq : 0 < q) (x : QaryOrbitIndex q n -> Rat) (u v : QaryWord q n) :
    qaryTerwilligerMatrix hq x u v = x (qaryOrbitOf hq u v) := by
  rfl

/-- Nonbinary Terwilliger matrix as the finite orbit-matrix basis expansion. -/
noncomputable def qaryTerwilligerMatrixSum {q n : Nat}
    (hq : 0 < q) (x : QaryOrbitIndex q n -> Rat) :
    Matrix (QaryWord q n) (QaryWord q n) Rat :=
  Finset.univ.sum (fun idx : QaryOrbitIndex q n => x idx • qaryOrbitMatrix hq idx)

/-- The finite orbit-matrix basis expansion agrees with the pointwise coefficient form. -/
theorem qaryTerwilligerMatrixSum_eq {q n : Nat}
    (hq : 0 < q) (x : QaryOrbitIndex q n -> Rat) :
    qaryTerwilligerMatrixSum hq x = qaryTerwilligerMatrix hq x := by
  ext u v
  unfold qaryTerwilligerMatrixSum qaryTerwilligerMatrix
  simp only [Matrix.sum_apply, Matrix.smul_apply, smul_eq_mul]
  change
    (∑ idx : QaryOrbitIndex q n, x idx * qaryOrbitMatrix hq idx u v) =
      x (qaryOrbitOf hq u v)
  calc
    (∑ idx : QaryOrbitIndex q n, x idx * qaryOrbitMatrix hq idx u v) =
        x (qaryOrbitOf hq u v) * qaryOrbitMatrix hq (qaryOrbitOf hq u v) u v := by
          apply Finset.sum_eq_single (a := qaryOrbitOf hq u v)
          · intro idx _ hidx
            have hne : qaryOrbitOf hq u v ≠ idx := fun h => hidx h.symm
            simp [qaryOrbitMatrix, hne]
          · intro hnot
            simp at hnot
    _ = x (qaryOrbitOf hq u v) := by
          simp [qaryOrbitMatrix]

/-- Q-ary Terwilliger matrices are invariant under the zero-stabilizer action. -/
theorem qaryTerwilligerMatrix_act_of_stabilizesZero {q n : Nat}
    (hq : 0 < q) (g : QaryIsometry q n) (hg : StabilizesZero hq g)
    (x : QaryOrbitIndex q n -> Rat) (u v : QaryWord q n) :
    qaryTerwilligerMatrix hq x (g.act u) (g.act v) =
      qaryTerwilligerMatrix hq x u v := by
  simp [qaryTerwilligerMatrix, qaryOrbitOf_act_of_stabilizesZero hq g hg u v]

/-- Membership in the coefficient-parametrized q-ary Terwilliger matrices. -/
def QaryTerwilligerMember {q n : Nat} (hq : 0 < q)
    (A : Matrix (QaryWord q n) (QaryWord q n) Rat) : Prop :=
  exists x : QaryOrbitIndex q n -> Rat, A = qaryTerwilligerMatrix hq x

/-- Invariance under the q-ary Hamming-space zero stabilizer. -/
def QaryZeroStabilizerInvariant {q n : Nat} (hq : 0 < q)
    (A : Matrix (QaryWord q n) (QaryWord q n) Rat) : Prop :=
  forall g : QaryIsometry q n,
    StabilizesZero hq g ->
      forall u v : QaryWord q n, A (g.act u) (g.act v) = A u v

/-- Every coefficient-parametrized q-ary Terwilliger matrix is zero-stabilizer invariant. -/
theorem qaryTerwilligerMember_invariant {q n : Nat} (hq : 0 < q)
    {A : Matrix (QaryWord q n) (QaryWord q n) Rat}
    (hA : QaryTerwilligerMember hq A) :
    QaryZeroStabilizerInvariant hq A := by
  rcases hA with ⟨x, rfl⟩
  intro g hg u v
  exact qaryTerwilligerMatrix_act_of_stabilizesZero hq g hg x u v

theorem qary_terwilliger_closed_transpose {q n : Nat}
    (hq : 0 < q) (x : QaryOrbitIndex q n -> Rat) :
    exists y : QaryOrbitIndex q n -> Rat,
      (qaryTerwilligerMatrix hq x).transpose = qaryTerwilligerMatrix hq y := by
  refine ⟨fun idx => x idx.swap, ?_⟩
  ext u v
  have hswap := qaryOrbitOf_swap hq u v
  simp [qaryTerwilligerMatrix, Matrix.transpose_apply, hswap]

/-- The rational inner sum in the paper's nonbinary `alpha` coefficient. -/
def alphaInnerCoeffTerm (q t p a g : Nat) : Rat :=
  if g <= a /\ g <= p /\ a <= t /\ p - g <= t - a then
    (-1 : Rat) ^ (a - g) *
    (Nat.choose a g : Rat) *
    (Nat.choose (t - a) (p - g) : Rat) *
    (((q - 2 : Nat) : Rat) ^ (t - a - p + g))
  else
    0

/--
The rational inner sum in the paper's nonbinary `alpha` coefficient.

The guard in `alphaInnerCoeffTerm` implements the vanishing convention for
binomial coefficients and powers whose displayed integer parameters would be
negative before translation to `Nat`.
-/
def alphaInnerCoeff (q t p a : Nat) : Rat :=
  (Finset.range (p + 1)).sum (fun g =>
    alphaInnerCoeffTerm q t p a g)

/--
Rationally scaled version of the paper's nonbinary `alpha(i,j,t,p,a,k)`.

The displayed coefficient in the paper contains the row/column square-root factor
`(q - 1)^((i + j) / 2)`.  This definition omits that positive diagonal congruence
factor and keeps the rational core used by exact certificate checking.
-/
def alphaCoeff (q n i j t p a k : Nat) : Rat :=
  if a <= n /\ a <= i /\ a <= j /\ a <= k /\ a <= t then
    betaCoeff (n - a) (i - a) (j - a) (k - a) (t - a) *
      alphaInnerCoeff q t p a / (((q - 1 : Nat) : Rat) ^ t)
  else
    0

/-- Entry of the rationally scaled nonbinary block for parameters `a,k`. -/
def qaryBlockEntry
    (q n a k : Nat) (x : QaryOrbitIndex q n -> Rat) (row col : Nat) : Rat :=
  let i := k + row
  let j := k + col
  (Finset.range (n + 1)).sum (fun t =>
    (Finset.range (n + 1)).sum (fun p =>
      if hp_t : p <= t then
        if ht_i : t <= i then
          if ht_j : t <= j then
            if hij : i + j <= n + t then
              alphaCoeff q n i j t p a k *
                x (QaryOrbitIndex.mk i j t p hp_t ht_i ht_j hij)
            else
              0
          else
            0
        else
          0
      else
        0))

/-- Nonbinary reduced block for parameters `a,k`. -/
def qaryBlock
    (q n a k : Nat) (x : QaryOrbitIndex q n -> Rat) :
    Matrix (Fin (n + a - 2 * k + 1)) (Fin (n + a - 2 * k + 1)) Rat :=
  fun row col => qaryBlockEntry q n a k x row.val col.val

theorem qaryBlock_ternary_length_one_allOnes_zeroBlock
    (row col : Fin 2) :
    qaryBlock 3 1 0 0 (fun _ : QaryOrbitIndex 3 1 => (1 : Rat)) row col = 1 := by
  fin_cases row <;> fin_cases col <;> native_decide

theorem qaryBlock_ternary_length_one_allOnes_singletonBlock :
    qaryBlock 3 1 1 1 (fun _ : QaryOrbitIndex 3 1 => (1 : Rat))
      ⟨0, by decide⟩ ⟨0, by decide⟩ = 0 := by
  native_decide

theorem qaryBlock_ternary_length_one_allOnes_zeroBlock_psd :
    RatPSD (qaryBlock 3 1 0 0 (fun _ : QaryOrbitIndex 3 1 => (1 : Rat))) := by
  convert (RatPSD.allOnes (ι := Fin 2)) using 1
  ext row col
  exact qaryBlock_ternary_length_one_allOnes_zeroBlock row col

@[simp]
theorem qaryBlock_apply {q n a k : Nat} (x : QaryOrbitIndex q n -> Rat)
    (row col : Fin (n + a - 2 * k + 1)) :
    qaryBlock q n a k x row col = qaryBlockEntry q n a k x row.val col.val := by
  rfl

/-- Finite index set for the nonbinary block diagonalization. -/
structure QaryBlockIndex (n : Nat) where
  a : Nat
  k : Nat
  ha : a <= k
  hk : k <= n + a - k
deriving DecidableEq

namespace QaryBlockIndex

theorem k_le_n {n : Nat} (idx : QaryBlockIndex n) : idx.k <= n := by
  have ha := idx.ha
  have hk := idx.hk
  omega

theorem a_le_n {n : Nat} (idx : QaryBlockIndex n) : idx.a <= n :=
  idx.ha.trans idx.k_le_n

def toFinPair {n : Nat} (idx : QaryBlockIndex n) : Fin (n + 1) × Fin (n + 1) :=
  (⟨idx.a, Nat.lt_succ_of_le idx.a_le_n⟩,
   ⟨idx.k, Nat.lt_succ_of_le idx.k_le_n⟩)

theorem toFinPair_injective {n : Nat} :
    Function.Injective (@toFinPair n) := by
  intro a b h
  cases a
  cases b
  simp [toFinPair] at h ⊢
  exact h

noncomputable instance (n : Nat) : Fintype (QaryBlockIndex n) :=
  Fintype.ofInjective (@toFinPair n) toFinPair_injective

end QaryBlockIndex

/-- Row/column type of a nonbinary block. -/
abbrev QaryBlockCoord {n : Nat} (idx : QaryBlockIndex n) :=
  Fin (n + idx.a - 2 * idx.k + 1)

/-- Nonbinary block as a dependent finite block family. -/
def qaryBlockForIndex {q n : Nat} (x : QaryOrbitIndex q n -> Rat)
    (idx : QaryBlockIndex n) :
    Matrix (QaryBlockCoord idx) (QaryBlockCoord idx) Rat :=
  qaryBlock q n idx.a idx.k x

/-- Blockwise PSD predicate for all nonbinary blocks. -/
def QaryBlocksPSD {q n : Nat} (x : QaryOrbitIndex q n -> Rat) : Prop :=
  BlocksPSD (fun idx : QaryBlockIndex n => QaryBlockCoord idx) (qaryBlockForIndex x)

/-- The sigma-indexed block-diagonal matrix formed from all nonbinary blocks. -/
def qaryBlockDiagonalMatrix {q n : Nat} (x : QaryOrbitIndex q n -> Rat) :
    Matrix (Sigma (fun idx : QaryBlockIndex n => QaryBlockCoord idx))
      (Sigma (fun idx : QaryBlockIndex n => QaryBlockCoord idx)) Rat :=
  sigmaBlockDiagonal (fun idx : QaryBlockIndex n => QaryBlockCoord idx)
    (qaryBlockForIndex x)

def qaryScaledBlockDiagonalMatrix {q n : Nat}
    (scale : QaryBlockIndex n -> Rat) (x : QaryOrbitIndex q n -> Rat) :
    Matrix (Sigma (fun idx : QaryBlockIndex n => QaryBlockCoord idx))
      (Sigma (fun idx : QaryBlockIndex n => QaryBlockCoord idx)) Rat :=
  sigmaBlockDiagonal (fun idx : QaryBlockIndex n => QaryBlockCoord idx)
    (fun idx i j => scale idx * qaryBlockForIndex x idx i j)

/-- PSD of the q-ary block-diagonal matrix is exactly blockwise PSD. -/
theorem qaryBlockDiagonalMatrix_psd_iff {q n : Nat}
    (x : QaryOrbitIndex q n -> Rat) :
    RatPSD (qaryBlockDiagonalMatrix x) <-> QaryBlocksPSD x := by
  exact RatPSD.sigmaBlockDiagonal_iff (qaryBlockForIndex x)

/-- Certificate for the nonbinary block diagonalization quadratic-form equivalence. -/
structure QaryBlockDiagonalizationCertificate {q n : Nat}
    (hq : 2 <= q) (x : QaryOrbitIndex q n -> Rat) where
  quadraticEquivalence :
    QuadraticFormEquivalence
      (qaryTerwilligerMatrix (Nat.lt_of_lt_of_le (by decide : 0 < 2) hq) x)
      (qaryBlockDiagonalMatrix x)

/-- Matrix-form certificate for generated q-ary block diagonalizations. -/
structure QaryBlockDiagonalizationMatrixCertificate {q n : Nat}
    (hq : 2 <= q) (x : QaryOrbitIndex q n -> Rat) where
  matrixEquivalence :
    QuadraticFormMatrixEquivalence
      (qaryTerwilligerMatrix (Nat.lt_of_lt_of_le (by decide : 0 < 2) hq) x)
      (qaryBlockDiagonalMatrix x)

/--
Matrix-form q-ary block diagonalization certificate whose generated congruence
targets a positive rational scaling of each block.
-/
structure QaryBlockDiagonalizationScaledMatrixCertificate {q n : Nat}
    (hq : 2 <= q) (scale : QaryBlockIndex n -> Rat)
    (x : QaryOrbitIndex q n -> Rat) where
  scale_pos : forall idx, 0 < scale idx
  matrixEquivalence :
    QuadraticFormMatrixEquivalence
      (qaryTerwilligerMatrix (Nat.lt_of_lt_of_le (by decide : 0 < 2) hq) x)
      (qaryScaledBlockDiagonalMatrix scale x)

/-- Convert a generated matrix-form certificate to the functional certificate API. -/
noncomputable def QaryBlockDiagonalizationMatrixCertificate.toCertificate
    {q n : Nat} {hq : 2 <= q} {x : QaryOrbitIndex q n -> Rat}
    (cert : QaryBlockDiagonalizationMatrixCertificate hq x) :
    QaryBlockDiagonalizationCertificate hq x where
  quadraticEquivalence := cert.matrixEquivalence.toQuadraticFormEquivalence

/-- Matrix-form q-ary block diagonalization certificates imply the block PSD criterion. -/
theorem QaryBlockDiagonalizationMatrixCertificate.psd_iff_blockDiagonal
    {q n : Nat} {hq : 2 <= q} {x : QaryOrbitIndex q n -> Rat}
    (cert : QaryBlockDiagonalizationMatrixCertificate hq x) :
    RatPSD (qaryTerwilligerMatrix (Nat.lt_of_lt_of_le (by decide : 0 < 2) hq) x) <->
      RatPSD (qaryBlockDiagonalMatrix x) :=
  cert.toCertificate.quadraticEquivalence.psd_iff.symm

/-- Scaled matrix-form q-ary certificates still prove PSD equivalence with the unscaled blocks. -/
theorem QaryBlockDiagonalizationScaledMatrixCertificate.psd_iff_blockDiagonal
    {q n : Nat} {hq : 2 <= q} {scale : QaryBlockIndex n -> Rat}
    {x : QaryOrbitIndex q n -> Rat}
    (cert : QaryBlockDiagonalizationScaledMatrixCertificate hq scale x) :
    RatPSD (qaryTerwilligerMatrix (Nat.lt_of_lt_of_le (by decide : 0 < 2) hq) x) <->
      RatPSD (qaryBlockDiagonalMatrix x) := by
  have hscaled :
      RatPSD (qaryTerwilligerMatrix (Nat.lt_of_lt_of_le (by decide : 0 < 2) hq) x) <->
        RatPSD (qaryScaledBlockDiagonalMatrix scale x) :=
    cert.matrixEquivalence.toQuadraticFormEquivalence.psd_iff.symm
  have hscale :
      RatPSD (qaryScaledBlockDiagonalMatrix scale x) <->
        RatPSD (qaryBlockDiagonalMatrix x) := by
    exact RatPSD.sigmaBlockDiagonal_posScale_iff scale cert.scale_pos (qaryBlockForIndex x)
  exact hscaled.trans hscale

/-- A q-ary block diagonalization certificate gives the corresponding PSD equivalence. -/
theorem QaryBlockDiagonalizationCertificate.psd_iff_blockDiagonal
    {q n : Nat} {hq : 2 <= q} {x : QaryOrbitIndex q n -> Rat}
    (cert : QaryBlockDiagonalizationCertificate hq x) :
    RatPSD (qaryTerwilligerMatrix (Nat.lt_of_lt_of_le (by decide : 0 < 2) hq) x) <->
      RatPSD (qaryBlockDiagonalMatrix x) :=
  cert.quadraticEquivalence.psd_iff.symm

theorem qary_block_diagonalization_psd {q n : Nat}
    (hq : 2 <= q) (x : QaryOrbitIndex q n -> Rat)
    (cert : QaryBlockDiagonalizationCertificate hq x) :
    RatPSD (qaryTerwilligerMatrix (Nat.lt_of_lt_of_le (by decide : 0 < 2) hq) x) <->
      forall a k, a <= k -> k <= n + a - k -> RatPSD (qaryBlock q n a k x) := by
  constructor
  · intro hM a k ha hk
    exact (qaryBlockDiagonalMatrix_psd_iff x).mp
      (cert.psd_iff_blockDiagonal.mp hM) ⟨a, k, ha, hk⟩
  · intro hblocks
    exact cert.psd_iff_blockDiagonal.mpr
      ((qaryBlockDiagonalMatrix_psd_iff x).mpr
        (fun idx => hblocks idx.a idx.k idx.ha idx.hk))

theorem qary_scaled_block_diagonalization_psd {q n : Nat}
    (hq : 2 <= q) (scale : QaryBlockIndex n -> Rat)
    (x : QaryOrbitIndex q n -> Rat)
    (cert : QaryBlockDiagonalizationScaledMatrixCertificate hq scale x) :
    RatPSD (qaryTerwilligerMatrix (Nat.lt_of_lt_of_le (by decide : 0 < 2) hq) x) <->
      forall a k, a <= k -> k <= n + a - k -> RatPSD (qaryBlock q n a k x) := by
  constructor
  · intro hM a k ha hk
    exact (qaryBlockDiagonalMatrix_psd_iff x).mp
      (cert.psd_iff_blockDiagonal.mp hM) ⟨a, k, ha, hk⟩
  · intro hblocks
    exact cert.psd_iff_blockDiagonal.mpr
      ((qaryBlockDiagonalMatrix_psd_iff x).mpr
        (fun idx => hblocks idx.a idx.k idx.ha idx.hk))

def ternaryLengthOneWord0 : QaryWord 3 1 :=
  fun _ => 0

def ternaryLengthOneWord1 : QaryWord 3 1 :=
  fun _ => 1

def ternaryLengthOneWord2 : QaryWord 3 1 :=
  fun _ => 2

theorem qaryWord_ternary_length_one_cases (w : QaryWord 3 1) :
    w = ternaryLengthOneWord0 ∨ w = ternaryLengthOneWord1 ∨
      w = ternaryLengthOneWord2 := by
  have hval_lt : (w ⟨0, by decide⟩).val < 3 := (w ⟨0, by decide⟩).isLt
  interval_cases hval : (w ⟨0, by decide⟩).val
  · left
    funext a
    fin_cases a
    apply Fin.ext
    simpa [ternaryLengthOneWord0] using hval
  · right; left
    funext a
    fin_cases a
    apply Fin.ext
    simpa [ternaryLengthOneWord1] using hval
  · right; right
    funext a
    fin_cases a
    apply Fin.ext
    simpa [ternaryLengthOneWord2] using hval

@[simp]
theorem ternaryLengthOneWord0_ne_word1 :
    ternaryLengthOneWord0 ≠ ternaryLengthOneWord1 := by
  intro h
  have h0 := congrFun h ⟨0, by decide⟩
  norm_num [ternaryLengthOneWord0, ternaryLengthOneWord1] at h0

@[simp]
theorem ternaryLengthOneWord0_ne_word2 :
    ternaryLengthOneWord0 ≠ ternaryLengthOneWord2 := by
  intro h
  have h0 := congrFun h ⟨0, by decide⟩
  norm_num [ternaryLengthOneWord0, ternaryLengthOneWord2] at h0
  omega

@[simp]
theorem ternaryLengthOneWord1_ne_word0 :
    ternaryLengthOneWord1 ≠ ternaryLengthOneWord0 := by
  exact fun h => ternaryLengthOneWord0_ne_word1 h.symm

@[simp]
theorem ternaryLengthOneWord1_ne_word2 :
    ternaryLengthOneWord1 ≠ ternaryLengthOneWord2 := by
  intro h
  have h0 := congrFun h ⟨0, by decide⟩
  norm_num [ternaryLengthOneWord1, ternaryLengthOneWord2] at h0
  omega

@[simp]
theorem ternaryLengthOneWord2_ne_word0 :
    ternaryLengthOneWord2 ≠ ternaryLengthOneWord0 := by
  exact fun h => ternaryLengthOneWord0_ne_word2 h.symm

@[simp]
theorem ternaryLengthOneWord2_ne_word1 :
    ternaryLengthOneWord2 ≠ ternaryLengthOneWord1 := by
  exact fun h => ternaryLengthOneWord1_ne_word2 h.symm

theorem qaryWord_univ_ternary_length_one :
    (Finset.univ : Finset (QaryWord 3 1)) =
      {ternaryLengthOneWord0, ternaryLengthOneWord1, ternaryLengthOneWord2} := by
  ext w
  constructor
  · intro _
    rcases qaryWord_ternary_length_one_cases w with rfl | rfl | rfl <;> simp
  · intro _
    simp

def ternaryLengthOneBlockIndex00 : QaryBlockIndex 1 where
  a := 0
  k := 0
  ha := by omega
  hk := by omega

def ternaryLengthOneBlockIndex11 : QaryBlockIndex 1 where
  a := 1
  k := 1
  ha := by omega
  hk := by omega

theorem qaryBlockIndex_ternary_length_one_cases (idx : QaryBlockIndex 1) :
    idx = ternaryLengthOneBlockIndex00 ∨ idx = ternaryLengthOneBlockIndex11 := by
  rcases idx with ⟨a, k, ha, hk⟩
  have ha1 : a <= 1 := by omega
  have hk1 : k <= 1 := by omega
  interval_cases a <;> interval_cases k
  · left
    simp [ternaryLengthOneBlockIndex00]
  · exfalso
    omega
  · right
    simp [ternaryLengthOneBlockIndex11]

theorem qaryBlockIndex_univ_ternary_length_one :
    (Finset.univ : Finset (QaryBlockIndex 1)) =
      {ternaryLengthOneBlockIndex00, ternaryLengthOneBlockIndex11} := by
  ext idx
  constructor
  · intro _
    rcases qaryBlockIndex_ternary_length_one_cases idx with rfl | rfl <;> simp
  · intro _
    simp

/-- Rational transform from ternary length-one block coordinates to word coordinates. -/
def ternaryLengthOneBlockTransform :
    Matrix (QaryWord 3 1)
      (Sigma (fun idx : QaryBlockIndex 1 => QaryBlockCoord idx)) Rat :=
  fun w p =>
    if p.1.a = 0 then
      if p.2.val = 0 then
        if w = ternaryLengthOneWord0 then 1 else 0
      else
        if w = ternaryLengthOneWord0 then 0 else 1 / 2
    else
      if w = ternaryLengthOneWord1 then 1 / 2
      else if w = ternaryLengthOneWord2 then -1 / 2
      else 0

/-- Right inverse of the ternary length-one block transform. -/
def ternaryLengthOneBlockTransformInverse :
    Matrix (Sigma (fun idx : QaryBlockIndex 1 => QaryBlockCoord idx))
      (QaryWord 3 1) Rat :=
  fun p w =>
    if p.1.a = 0 then
      if p.2.val = 0 then
        if w = ternaryLengthOneWord0 then 1 else 0
      else
        if w = ternaryLengthOneWord0 then 0 else 1
    else
      if w = ternaryLengthOneWord1 then 1
      else if w = ternaryLengthOneWord2 then -1
      else 0

def ternaryLengthOneBlockCoord00Zero :
    Sigma (fun idx : QaryBlockIndex 1 => QaryBlockCoord idx) :=
  ⟨ternaryLengthOneBlockIndex00, ⟨0, by decide⟩⟩

def ternaryLengthOneBlockCoord00One :
    Sigma (fun idx : QaryBlockIndex 1 => QaryBlockCoord idx) :=
  ⟨ternaryLengthOneBlockIndex00, ⟨1, by decide⟩⟩

def ternaryLengthOneBlockCoord11Zero :
    Sigma (fun idx : QaryBlockIndex 1 => QaryBlockCoord idx) :=
  ⟨ternaryLengthOneBlockIndex11, ⟨0, by decide⟩⟩

theorem ternaryLengthOneBlockCoord_cases
    (p : Sigma (fun idx : QaryBlockIndex 1 => QaryBlockCoord idx)) :
    p = ternaryLengthOneBlockCoord00Zero ∨
      p = ternaryLengthOneBlockCoord00One ∨
        p = ternaryLengthOneBlockCoord11Zero := by
  rcases p with ⟨idx, coord⟩
  rcases qaryBlockIndex_ternary_length_one_cases idx with rfl | rfl
  · fin_cases coord
    · left
      apply Sigma.ext rfl
      simp
    · right; left
      apply Sigma.ext rfl
      simp
  · fin_cases coord
    · right; right
      apply Sigma.ext rfl
      simp

theorem ternaryLengthOneBlockCoord_univ :
    (Finset.univ : Finset (Sigma (fun idx : QaryBlockIndex 1 => QaryBlockCoord idx))) =
      {ternaryLengthOneBlockCoord00Zero, ternaryLengthOneBlockCoord00One,
        ternaryLengthOneBlockCoord11Zero} := by
  ext p
  constructor
  · intro _
    rcases ternaryLengthOneBlockCoord_cases p with rfl | rfl | rfl <;> simp
  · intro _
    simp

theorem ternaryLengthOneBlockTransform_rightInverse :
    forall i j : QaryWord 3 1,
      Finset.univ.sum (fun k : Sigma (fun idx : QaryBlockIndex 1 => QaryBlockCoord idx) =>
        ternaryLengthOneBlockTransform i k *
          ternaryLengthOneBlockTransformInverse k j) =
        if i = j then 1 else 0 := by
  intro i j
  rw [ternaryLengthOneBlockCoord_univ]
  rcases qaryWord_ternary_length_one_cases i with rfl | rfl | rfl <;>
    rcases qaryWord_ternary_length_one_cases j with rfl | rfl | rfl <;>
    norm_num [ternaryLengthOneBlockTransform, ternaryLengthOneBlockTransformInverse,
      ternaryLengthOneBlockIndex00, ternaryLengthOneBlockIndex11,
      ternaryLengthOneBlockCoord00Zero, ternaryLengthOneBlockCoord00One,
      ternaryLengthOneBlockCoord11Zero, ternaryLengthOneWord0, ternaryLengthOneWord1,
      ternaryLengthOneWord2]

set_option linter.unusedSimpArgs false in
set_option linter.unnecessarySeqFocus false in
theorem ternaryLengthOne_congruence_terwilliger_eq_blockDiagonal
    (x : QaryOrbitIndex 3 1 -> Rat) :
    congruenceMatrix ternaryLengthOneBlockTransform
        (qaryTerwilligerMatrix (by decide : 0 < 3) x) =
      qaryBlockDiagonalMatrix x := by
  ext p q
  rcases p with ⟨idx, row⟩
  rcases q with ⟨idx2, col⟩
  rcases qaryBlockIndex_ternary_length_one_cases idx with rfl | rfl <;>
    rcases qaryBlockIndex_ternary_length_one_cases idx2 with rfl | rfl
  · fin_cases row <;> fin_cases col <;>
      simp [congruenceMatrix, qaryWord_univ_ternary_length_one,
        ternaryLengthOneBlockTransform, qaryTerwilligerMatrix, qaryOrbitOf,
        qarySupport, qaryEqualNonzeroSupport, zeroWord, weight,
        qaryBlockDiagonalMatrix, qaryBlockForIndex, sigmaBlockDiagonal,
        qaryBlock, qaryBlockEntry, alphaCoeff, alphaInnerCoeff,
        alphaInnerCoeffTerm, betaCoeff, betaCoeffTerm, Finset.sum_range_succ,
        ternaryLengthOneBlockIndex00, ternaryLengthOneBlockIndex11,
        ternaryLengthOneWord0, ternaryLengthOneWord1, ternaryLengthOneWord2] <;> ring
  · fin_cases row <;> fin_cases col <;>
      simp [congruenceMatrix, qaryWord_univ_ternary_length_one,
        ternaryLengthOneBlockTransform, qaryTerwilligerMatrix, qaryOrbitOf,
        qarySupport, qaryEqualNonzeroSupport, zeroWord, weight,
        qaryBlockDiagonalMatrix, qaryBlockForIndex, sigmaBlockDiagonal,
        qaryBlock, qaryBlockEntry, alphaCoeff, alphaInnerCoeff,
        alphaInnerCoeffTerm, betaCoeff, betaCoeffTerm, Finset.sum_range_succ,
        ternaryLengthOneBlockIndex00, ternaryLengthOneBlockIndex11,
        ternaryLengthOneWord0, ternaryLengthOneWord1, ternaryLengthOneWord2] <;> ring
  · fin_cases row <;> fin_cases col <;>
      simp [congruenceMatrix, qaryWord_univ_ternary_length_one,
        ternaryLengthOneBlockTransform, qaryTerwilligerMatrix, qaryOrbitOf,
        qarySupport, qaryEqualNonzeroSupport, zeroWord, weight,
        qaryBlockDiagonalMatrix, qaryBlockForIndex, sigmaBlockDiagonal,
        qaryBlock, qaryBlockEntry, alphaCoeff, alphaInnerCoeff,
        alphaInnerCoeffTerm, betaCoeff, betaCoeffTerm, Finset.sum_range_succ,
        ternaryLengthOneBlockIndex00, ternaryLengthOneBlockIndex11,
        ternaryLengthOneWord0, ternaryLengthOneWord1, ternaryLengthOneWord2] <;> ring
  · fin_cases row <;> fin_cases col <;>
      simp [congruenceMatrix, qaryWord_univ_ternary_length_one,
        ternaryLengthOneBlockTransform, qaryTerwilligerMatrix, qaryOrbitOf,
        qarySupport, qaryEqualNonzeroSupport, zeroWord, weight,
        qaryBlockDiagonalMatrix, qaryBlockForIndex, sigmaBlockDiagonal,
        qaryBlock, qaryBlockEntry, alphaCoeff, alphaInnerCoeff,
        alphaInnerCoeffTerm, betaCoeff, betaCoeffTerm, Finset.sum_range_succ,
        ternaryLengthOneBlockIndex00, ternaryLengthOneBlockIndex11,
        ternaryLengthOneWord0, ternaryLengthOneWord1, ternaryLengthOneWord2] <;> ring

/-- Concrete matrix-form q-ary block diagonalization certificate for ternary length one. -/
noncomputable def ternaryLengthOneBlockDiagonalizationMatrixCertificate
    (x : QaryOrbitIndex 3 1 -> Rat) :
    QaryBlockDiagonalizationMatrixCertificate (q := 3) (n := 1) (by decide : 2 <= 3) x where
  matrixEquivalence := {
    toMatrix := ternaryLengthOneBlockTransform
    fromMatrix := ternaryLengthOneBlockTransformInverse
    congruence_eq := ternaryLengthOne_congruence_terwilliger_eq_blockDiagonal x
    right_inv_entry := ternaryLengthOneBlockTransform_rightInverse
  }

/-- Concrete q-ary block diagonalization certificate for ternary length one. -/
noncomputable def ternaryLengthOneBlockDiagonalizationCertificate
    (x : QaryOrbitIndex 3 1 -> Rat) :
    QaryBlockDiagonalizationCertificate (q := 3) (n := 1) (by decide : 2 <= 3) x :=
  (ternaryLengthOneBlockDiagonalizationMatrixCertificate x).toCertificate

/-- The q-ary block diagonalization theorem, closed concretely for `(q,n) = (3,1)`. -/
theorem ternaryLengthOne_block_diagonalization_psd
    (x : QaryOrbitIndex 3 1 -> Rat) :
    RatPSD (qaryTerwilligerMatrix (by decide : 0 < 3) x) <->
      forall a k, a <= k -> k <= 1 + a - k -> RatPSD (qaryBlock 3 1 a k x) := by
  exact qary_block_diagonalization_psd (q := 3) (n := 1) (by decide : 2 <= 3) x
    (ternaryLengthOneBlockDiagonalizationCertificate x)

/-- Indicator vector of the q-ary shell `S_i(0)`. -/
def qarySphereVector (q n : Nat) (hq : 0 < q) (i : Nat) : QaryWord q n -> Rat :=
  fun u => if weight q n hq u = i then 1 else 0

/-- Outer product of two q-ary zero-centered shell indicators. -/
def qarySphereOuterProduct (q n : Nat) (hq : 0 < q) (i j : Nat) :
    Matrix (QaryWord q n) (QaryWord q n) Rat :=
  fun u v => qarySphereVector q n hq i u * qarySphereVector q n hq j v

/-- Sum of all q-ary orbit matrices with fixed first two orbit parameters. -/
noncomputable def qarySphereOuterOrbitSum (q n : Nat) (hq : 0 < q) (i j : Nat) :
    Matrix (QaryWord q n) (QaryWord q n) Rat :=
  fun u v =>
    Finset.univ.sum (fun idx : QaryOrbitIndex q n =>
      if idx.i = i /\ idx.j = j /\ qaryOrbitOf hq u v = idx then (1 : Rat) else 0)

/-- The q-ary shell-indicator outer product is the sum of orbit matrices with fixed `i,j`. -/
theorem lemma_3_5_qary_block_image {q n : Nat} (hq : 0 < q) (i j : Nat) :
    qarySphereOuterOrbitSum q n hq i j = qarySphereOuterProduct q n hq i j := by
  ext u v
  unfold qarySphereOuterOrbitSum qarySphereOuterProduct qarySphereVector
  calc
    (∑ idx : QaryOrbitIndex q n,
      if idx.i = i /\ idx.j = j /\ qaryOrbitOf hq u v = idx then (1 : Rat) else 0) =
        (if (qaryOrbitOf hq u v).i = i /\ (qaryOrbitOf hq u v).j = j /\
            qaryOrbitOf hq u v = qaryOrbitOf hq u v then (1 : Rat) else 0) := by
          apply Finset.sum_eq_single (a := qaryOrbitOf hq u v)
          · intro idx _ hidx
            have hne : qaryOrbitOf hq u v ≠ idx := fun h => hidx h.symm
            simp [hne]
          · intro hnot
            simp at hnot
    _ = (if weight q n hq u = i then 1 else 0) *
          (if weight q n hq v = j then 1 else 0) := by
          rw [qaryOrbitOf_i hq u v, qaryOrbitOf_j hq u v]
          by_cases hu : weight q n hq u = i
          · by_cases hv : weight q n hq v = j
            · simp [hu, hv]
            · simp [hu, hv]
          · simp [hu]

/-- Alias for the same shell-orbit image identity used by the bordered q-ary reduction. -/
theorem lemma_3_6_qary_block_image {q n : Nat} (hq : 0 < q) (i j : Nat) :
    qarySphereOuterOrbitSum q n hq i j = qarySphereOuterProduct q n hq i j := by
  exact lemma_3_5_qary_block_image hq i j

theorem prop_3_7_qary_bordered_psd_reduction {q n : Nat}
    (hq : 0 < q) (c : Rat) (x : QaryOrbitIndex q n -> Rat) :
    RatPSD (bordered c (qaryTerwilligerMatrix hq x)) ->
      0 <= c ∧ RatPSD (qaryTerwilligerMatrix hq x) := by
  intro h
  exact ⟨RatPSD.bordered_corner_nonneg h, RatPSD.of_bordered h⟩

theorem qary_bordered_psd_implies_blocks {q n : Nat}
    (hq : 2 <= q) (c : Rat) (x : QaryOrbitIndex q n -> Rat)
    (cert : QaryBlockDiagonalizationCertificate hq x) :
    RatPSD (bordered c
      (qaryTerwilligerMatrix (Nat.lt_of_lt_of_le (by decide : 0 < 2) hq) x)) ->
      0 <= c ∧
        forall a k, a <= k -> k <= n + a - k -> RatPSD (qaryBlock q n a k x) := by
  intro h
  have hred :=
    prop_3_7_qary_bordered_psd_reduction
      (Nat.lt_of_lt_of_le (by decide : 0 < 2) hq) c x h
  exact ⟨hred.1, (qary_block_diagonalization_psd hq x cert).mp hred.2⟩

end GijswijtPolak2025
end SDP
end CoveringCodes
