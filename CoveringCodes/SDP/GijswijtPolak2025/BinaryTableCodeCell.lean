import Mathlib.Data.Fin.Rev
import CoveringCodes.SDP.GijswijtPolak2025.BinaryTableSDP

/-!
# Code-cell feasibility boundary for the binary Table 1 SDP

This file isolates the remaining mathematical obligation needed to use a
canonical code-cell vector in the full binary Table 1 SDP.  The scalar basic
constraints are derived from the existing universal code-cell fiber bound; the
table-specific PSD atoms and valid-inequality cuts are left as explicit
certificate fields.
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

noncomputable section

/-- The Julia/exporter table coordinate is the reverse of the paper block coordinate. -/
theorem binaryTableCoordIndex_eq_add_rev {n : Nat} (idx : BinaryBlockIndex n)
    (coord : BinaryTableBlockCoord idx) :
    binaryTableCoordIndex idx coord = idx.k + (Fin.rev coord).val := by
  unfold binaryTableCoordIndex
  simp [Fin.rev]
  have hk := idx.hk
  have hc := coord.isLt
  omega

/-- Table block entries are ordinary Schrijver block entries with reversed rows. -/
theorem binaryTableBlockEntryExpr_eq_binaryBlockEntryExpr_rev {n : Nat}
    (idx : BinaryBlockIndex n)
    (coeffExpr : BinaryOrbitIndex n -> LinExpr (BinaryOrbitIndex n))
    (row col : BinaryTableBlockCoord idx) :
    binaryTableBlockEntryExpr n idx coeffExpr row col =
      binaryBlockEntryExpr n idx.k coeffExpr (Fin.rev row).val (Fin.rev col).val := by
  unfold binaryTableBlockEntryExpr binaryBlockEntryExpr
  rw [binaryTableCoordIndex_eq_add_rev, binaryTableCoordIndex_eq_add_rev]

/--
Evaluation of a table block is a finite row/column reindexing of the ordinary
Schrijver block.
-/
theorem binaryTableBlockMatrixExpr_eval_reindex {n : Nat}
    (idx : BinaryBlockIndex n)
    (coeffExpr : BinaryOrbitIndex n -> LinExpr (BinaryOrbitIndex n))
    (x : BinaryX n) :
    MatrixLinExpr.eval (binaryTableBlockMatrixExpr n idx coeffExpr) x =
      reindexMatrix (Fin.revPerm : Equiv.Perm (BinaryTableBlockCoord idx))
        (binaryBlock n idx.k (fun source => (coeffExpr source).eval x)) := by
  ext row col
  rw [MatrixLinExpr.eval]
  simp only [binaryTableBlockMatrixExpr, binaryTableBlockEntryExpr_eq_binaryBlockEntryExpr_rev,
    binaryBlockEntryExpr_eval]
  simp [reindexMatrix, binaryBlock]

/-- Complement coefficient vector from Proposition 4.3. -/
def binaryComplementX {n : Nat} (x : BinaryX n) : BinaryX n :=
  fun source => binaryZeroCoeff x (binaryOrbitDistanceIndex source) - x source

@[simp]
theorem binaryComplementCoeffExpr_eval {n : Nat}
    (source : BinaryOrbitIndex n) (x : BinaryX n) :
    (binaryComplementCoeffExpr n source).eval x = binaryComplementX x source := by
  simp [binaryComplementCoeffExpr, binaryComplementX]

/-- Positive complement block constraints from Proposition 4.3. -/
def BinaryComplementConstraints {n : Nat} (x : BinaryX n) : Prop :=
  BinaryBlocksPSD (binaryComplementX x)

/-- Indicator of a translate of `C` when the base word is outside `C`. -/
def binaryComplementTranslatedCodeIndicator {n : Nat}
    (C : Finset (QaryWord 2 n)) (base u : QaryWord 2 n) : Rat :=
  if base ∉ C ∧ binaryXorWord base u ∈ C then 1 else 0

/-- Base words contributing to one complement translated-code pair entry. -/
def binaryComplementTranslatedPairBaseCell {n : Nat}
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) :
    Finset (QaryWord 2 n) :=
  Finset.univ.filter (fun base =>
    base ∉ C ∧ binaryXorWord base u ∈ C ∧ binaryXorWord base v ∈ C)

@[simp]
theorem mem_binaryComplementTranslatedPairBaseCell {n : Nat}
    {C : Finset (QaryWord 2 n)} {base u v : QaryWord 2 n} :
    base ∈ binaryComplementTranslatedPairBaseCell C u v ↔
      base ∉ C ∧ binaryXorWord base u ∈ C ∧ binaryXorWord base v ∈ C := by
  simp [binaryComplementTranslatedPairBaseCell]

theorem binaryComplementTranslatedCodeIndicator_mul_eq_baseCellIndicator {n : Nat}
    (C : Finset (QaryWord 2 n)) (base u v : QaryWord 2 n) :
    binaryComplementTranslatedCodeIndicator C base u *
        binaryComplementTranslatedCodeIndicator C base v =
      if base ∈ binaryComplementTranslatedPairBaseCell C u v then 1 else 0 := by
  by_cases hbase : base ∈ C
  · simp [binaryComplementTranslatedCodeIndicator, hbase]
  · by_cases hu : binaryXorWord base u ∈ C
    · by_cases hv : binaryXorWord base v ∈ C <;>
        simp [binaryComplementTranslatedCodeIndicator, hbase, hu, hv]
    · simp [binaryComplementTranslatedCodeIndicator, hbase, hu]

/-- Rank-one matrix for a translated code seen from a non-code base word. -/
def binaryComplementTranslatedCodeMatrix {n : Nat}
    (C : Finset (QaryWord 2 n)) (base : QaryWord 2 n) :
    Matrix (QaryWord 2 n) (QaryWord 2 n) Rat :=
  fun u v => binaryComplementTranslatedCodeIndicator C base u *
    binaryComplementTranslatedCodeIndicator C base v

@[simp]
theorem binaryComplementTranslatedCodeMatrix_apply {n : Nat}
    (C : Finset (QaryWord 2 n)) (base u v : QaryWord 2 n) :
    binaryComplementTranslatedCodeMatrix C base u v =
      binaryComplementTranslatedCodeIndicator C base u *
        binaryComplementTranslatedCodeIndicator C base v := by
  rfl

/-- Each complement translated-code matrix is PSD. -/
theorem binaryComplementTranslatedCodeMatrix_psd {n : Nat}
    (C : Finset (QaryWord 2 n)) (base : QaryWord 2 n) :
    RatPSD (binaryComplementTranslatedCodeMatrix C base) := by
  simpa [binaryComplementTranslatedCodeMatrix] using
    RatPSD.rankOne (binaryComplementTranslatedCodeIndicator C base)

/-- Average of complement translated-code matrices over all base words. -/
def binaryComplementTranslatedCodeAverageMatrix {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    Matrix (QaryWord 2 n) (QaryWord 2 n) Rat :=
  (((2 ^ n : Nat) : Rat)⁻¹) •
    (Finset.univ.sum (fun base : QaryWord 2 n =>
      binaryComplementTranslatedCodeMatrix C base))

@[simp]
theorem binaryComplementTranslatedCodeAverageMatrix_apply {n : Nat}
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) :
    binaryComplementTranslatedCodeAverageMatrix C u v =
      (((2 ^ n : Nat) : Rat)⁻¹) *
        Finset.univ.sum (fun base : QaryWord 2 n =>
          binaryComplementTranslatedCodeIndicator C base u *
            binaryComplementTranslatedCodeIndicator C base v) := by
  simp [binaryComplementTranslatedCodeAverageMatrix, Matrix.sum_apply]

theorem binaryComplementTranslatedCodeAverageMatrix_apply_card {n : Nat}
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) :
    binaryComplementTranslatedCodeAverageMatrix C u v =
      (((2 ^ n : Nat) : Rat)⁻¹) *
        ((binaryComplementTranslatedPairBaseCell C u v).card : Rat) := by
  rw [binaryComplementTranslatedCodeAverageMatrix_apply]
  congr 1
  calc
    (∑ base : QaryWord 2 n,
        binaryComplementTranslatedCodeIndicator C base u *
          binaryComplementTranslatedCodeIndicator C base v) =
        ∑ base : QaryWord 2 n,
          (if base ∈ binaryComplementTranslatedPairBaseCell C u v then (1 : Rat) else 0) := by
          apply Finset.sum_congr rfl
          intro base _
          rw [binaryComplementTranslatedCodeIndicator_mul_eq_baseCellIndicator]
    _ = ((binaryComplementTranslatedPairBaseCell C u v).card : Rat) := by
          rw [← Finset.natCast_card_filter
            (R := Rat)
            (p := fun base : QaryWord 2 n =>
              base ∈ binaryComplementTranslatedPairBaseCell C u v)
            (s := (Finset.univ : Finset (QaryWord 2 n)))]
          have hfilter :
              (Finset.univ.filter (fun base : QaryWord 2 n =>
                base ∈ binaryComplementTranslatedPairBaseCell C u v)) =
                binaryComplementTranslatedPairBaseCell C u v := by
            ext base
            simp [binaryComplementTranslatedPairBaseCell]
          rw [hfilter]

/--
The translated pair count splits into base words inside `C` and outside `C`.
This is the cardinality form of the complement/relative decomposition.
-/
theorem binaryComplementTranslatedPairBaseCell_card_add_relativeCodeBaseCell_card
    {n : Nat} (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) :
    (binaryComplementTranslatedPairBaseCell C u v).card +
      (binaryRelativeCodeBaseCell C u v).card =
        (binaryTranslatedPairBaseCell C u v).card := by
  classical
  have hyes :
      (binaryTranslatedPairBaseCell C u v).filter
          (fun base : QaryWord 2 n => base ∈ C) =
        binaryRelativeCodeBaseCell C u v := by
    ext base
    by_cases hbase : base ∈ C <;>
      simp [binaryTranslatedPairBaseCell, binaryRelativeCodeBaseCell,
        hbase]
  have hnot :
      (binaryTranslatedPairBaseCell C u v).filter
          (fun base : QaryWord 2 n => base ∉ C) =
        binaryComplementTranslatedPairBaseCell C u v := by
    ext base
    by_cases hbase : base ∈ C <;>
      simp [binaryTranslatedPairBaseCell, binaryComplementTranslatedPairBaseCell,
        hbase]
  have hcard := Finset.card_filter_add_card_filter_not
    (s := binaryTranslatedPairBaseCell C u v)
    (p := fun base : QaryWord 2 n => base ∈ C)
  rw [hyes, hnot] at hcard
  simpa [Nat.add_comm] using hcard

/--
At the fixed base-average level, translated pairs decompose into pairs whose
base is inside `C` and pairs whose base is outside `C`.
-/
theorem binaryComplementTranslatedCodeAverageMatrix_add_relativeCodeAverageMatrix
    {n : Nat} (C : Finset (QaryWord 2 n)) :
    binaryComplementTranslatedCodeAverageMatrix C + binaryRelativeCodeAverageMatrix C =
      binaryTranslatedCodeAverageMatrix C := by
  ext u v
  change binaryComplementTranslatedCodeAverageMatrix C u v +
      binaryRelativeCodeAverageMatrix C u v =
    binaryTranslatedCodeAverageMatrix C u v
  rw [binaryComplementTranslatedCodeAverageMatrix_apply_card,
    binaryRelativeCodeAverageMatrix_apply_card,
    binaryTranslatedCodeAverageMatrix_apply_card]
  rw [← mul_add]
  have hcard :
      ((binaryComplementTranslatedPairBaseCell C u v).card : Rat) +
        ((binaryRelativeCodeBaseCell C u v).card : Rat) =
          ((binaryTranslatedPairBaseCell C u v).card : Rat) := by
    exact_mod_cast
      binaryComplementTranslatedPairBaseCell_card_add_relativeCodeBaseCell_card C u v
  rw [hcard]

/-- The complement translated-code average is PSD. -/
theorem binaryComplementTranslatedCodeAverageMatrix_psd {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    RatPSD (binaryComplementTranslatedCodeAverageMatrix C) := by
  have hscale : 0 <= (((2 ^ n : Nat) : Rat)⁻¹) := by
    exact inv_nonneg.mpr (by exact_mod_cast Nat.zero_le (2 ^ n))
  unfold binaryComplementTranslatedCodeAverageMatrix
  exact RatPSD.smul hscale
    (RatPSD.sum Finset.univ
      (fun base : QaryWord 2 n => binaryComplementTranslatedCodeMatrix C base)
      (fun base _ => binaryComplementTranslatedCodeMatrix_psd C base))

/-- Reindex the complement translated-code average by a coordinate permutation. -/
def binaryComplementTranslatedCodePermutedAverageMatrix {n : Nat}
    (C : Finset (QaryWord 2 n)) (sigma : Equiv.Perm (Fin n)) :
    Matrix (QaryWord 2 n) (QaryWord 2 n) Rat :=
  reindexMatrix (binaryWordPermEquiv sigma)
    (binaryComplementTranslatedCodeAverageMatrix C)

/-- Coordinate reindexing preserves PSD of the complement translated-code average. -/
theorem binaryComplementTranslatedCodePermutedAverageMatrix_psd {n : Nat}
    (C : Finset (QaryWord 2 n)) (sigma : Equiv.Perm (Fin n)) :
    RatPSD (binaryComplementTranslatedCodePermutedAverageMatrix C sigma) := by
  unfold binaryComplementTranslatedCodePermutedAverageMatrix
  exact (RatPSD.reindex_iff (binaryWordPermEquiv sigma)
    (binaryComplementTranslatedCodeAverageMatrix C)).2
    (binaryComplementTranslatedCodeAverageMatrix_psd C)

/--
Coordinate-orbit average of the complement translated-code matrix.  The
remaining combinatorial identity should identify this matrix with the
Terwilliger matrix of `binaryComplementX (binaryCodeCellX C)`.
-/
def binaryComplementTranslatedCodeOrbitAverageMatrix {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    Matrix (QaryWord 2 n) (QaryWord 2 n) Rat :=
  (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) •
    (Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
      binaryComplementTranslatedCodePermutedAverageMatrix C sigma))

/-- The coordinate-orbit averaged complement translated-code matrix is PSD. -/
theorem binaryComplementTranslatedCodeOrbitAverageMatrix_psd {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    RatPSD (binaryComplementTranslatedCodeOrbitAverageMatrix C) := by
  have hscale :
      0 <= (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) := by
    exact inv_nonneg.mpr
      (by exact_mod_cast Nat.zero_le (Fintype.card (Equiv.Perm (Fin n))))
  unfold binaryComplementTranslatedCodeOrbitAverageMatrix
  exact RatPSD.smul hscale
    (RatPSD.sum Finset.univ
      (fun sigma : Equiv.Perm (Fin n) =>
        binaryComplementTranslatedCodePermutedAverageMatrix C sigma)
      (fun sigma _ => binaryComplementTranslatedCodePermutedAverageMatrix_psd C sigma))

/-- The complement/relative decomposition is preserved under coordinate reindexing. -/
theorem binaryComplementTranslatedCodePermutedAverageMatrix_add_relativeCodePermutedAverageMatrix
    {n : Nat} (C : Finset (QaryWord 2 n)) (sigma : Equiv.Perm (Fin n)) :
    binaryComplementTranslatedCodePermutedAverageMatrix C sigma +
        binaryRelativeCodePermutedAverageMatrix C sigma =
      binaryTranslatedCodePermutedAverageMatrix C sigma := by
  ext u v
  change binaryComplementTranslatedCodePermutedAverageMatrix C sigma u v +
      binaryRelativeCodePermutedAverageMatrix C sigma u v =
    binaryTranslatedCodePermutedAverageMatrix C sigma u v
  simp only [binaryComplementTranslatedCodePermutedAverageMatrix,
    binaryRelativeCodePermutedAverageMatrix,
    binaryTranslatedCodePermutedAverageMatrix, reindexMatrix]
  exact congrFun
    (congrFun
      (binaryComplementTranslatedCodeAverageMatrix_add_relativeCodeAverageMatrix C)
      ((binaryWordPermEquiv sigma).symm u))
    ((binaryWordPermEquiv sigma).symm v)

/-- The complement/relative decomposition is preserved by orbit averaging. -/
theorem binaryComplementTranslatedCodeOrbitAverageMatrix_add_relativeCodeOrbitAverageMatrix
    {n : Nat} (C : Finset (QaryWord 2 n)) :
    binaryComplementTranslatedCodeOrbitAverageMatrix C + binaryRelativeCodeOrbitAverageMatrix C =
      binaryTranslatedCodeOrbitAverageMatrix C := by
  ext u v
  change binaryComplementTranslatedCodeOrbitAverageMatrix C u v +
      binaryRelativeCodeOrbitAverageMatrix C u v =
    binaryTranslatedCodeOrbitAverageMatrix C u v
  simp only [binaryComplementTranslatedCodeOrbitAverageMatrix,
    binaryRelativeCodeOrbitAverageMatrix, binaryTranslatedCodeOrbitAverageMatrix,
    Matrix.smul_apply, smul_eq_mul, Matrix.sum_apply]
  rw [← mul_add, ← Finset.sum_add_distrib]
  congr 1
  apply Finset.sum_congr rfl
  intro sigma _
  exact congrFun
    (congrFun
      (binaryComplementTranslatedCodePermutedAverageMatrix_add_relativeCodePermutedAverageMatrix
        C sigma)
      u)
    v

/--
The complement translated-code orbit average has exactly the expected
Terwilliger entries for the complement coefficient vector.
-/
theorem binaryComplementTranslatedCodeOrbitAverageMatrix_eq_terwilliger {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    binaryComplementTranslatedCodeOrbitAverageMatrix C =
      binaryTerwilligerMatrix (binaryComplementX (binaryCodeCellX C)) := by
  have hsum :=
    binaryComplementTranslatedCodeOrbitAverageMatrix_add_relativeCodeOrbitAverageMatrix C
  have hrel :
      binaryRelativeCodeOrbitAverageMatrix C =
        binaryTerwilligerMatrix (binaryCodeCellX C) :=
    binaryRelativeCodeOrbitAverageMatrix_eq_terwilliger_of_card_identity C
      (binaryRelativeOrbitAverageCardIdentity_universal C)
  have htrans :
      binaryTranslatedCodeOrbitAverageMatrix C =
        binaryTerwilligerMatrix
          (fun idx : BinaryOrbitIndex n =>
            binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex idx)) :=
    binaryTranslatedCodeOrbitAverageMatrix_eq_zeroCoeffTerwilliger C
  ext u v
  have hentry := congrFun (congrFun hsum u) v
  change binaryComplementTranslatedCodeOrbitAverageMatrix C u v +
      binaryRelativeCodeOrbitAverageMatrix C u v =
    binaryTranslatedCodeOrbitAverageMatrix C u v at hentry
  rw [hrel, htrans] at hentry
  simp [binaryComplementX, binaryTerwilligerMatrix] at hentry ⊢
  linarith

/--
If the complement translated-code orbit average has the expected Terwilliger
entries, then the positive complement block constraints follow.
-/
theorem binaryComplementConstraints_of_orbitAverage_eq {n : Nat}
    (C : Finset (QaryWord 2 n))
    (cert :
      BinaryBlockDiagonalizationCertificate
        (binaryComplementX (binaryCodeCellX C)))
    (horbit :
      binaryComplementTranslatedCodeOrbitAverageMatrix C =
        binaryTerwilligerMatrix (binaryComplementX (binaryCodeCellX C))) :
    BinaryComplementConstraints (binaryCodeCellX C) := by
  have hM :
      RatPSD
        (binaryTerwilligerMatrix
          (binaryComplementX (binaryCodeCellX C))) := by
    rw [← horbit]
    exact binaryComplementTranslatedCodeOrbitAverageMatrix_psd C
  exact (binaryBlockDiagonalMatrix_psd_iff
    (binaryComplementX (binaryCodeCellX C))).mp
    (cert.psd_iff_blockDiagonal.mp hM)

/-- Scaled block-diagonalization variant of
`binaryComplementConstraints_of_orbitAverage_eq`. -/
theorem binaryComplementConstraints_of_orbitAverage_eq_scaled {n : Nat}
    (C : Finset (QaryWord 2 n)) (scale : BinaryBlockIndex n -> Rat)
    (cert :
      BinaryBlockDiagonalizationScaledMatrixCertificate scale
        (binaryComplementX (binaryCodeCellX C)))
    (horbit :
      binaryComplementTranslatedCodeOrbitAverageMatrix C =
        binaryTerwilligerMatrix (binaryComplementX (binaryCodeCellX C))) :
    BinaryComplementConstraints (binaryCodeCellX C) := by
  have hM :
      RatPSD
        (binaryTerwilligerMatrix
          (binaryComplementX (binaryCodeCellX C))) := by
    rw [← horbit]
    exact binaryComplementTranslatedCodeOrbitAverageMatrix_psd C
  exact (binaryBlockDiagonalMatrix_psd_iff
    (binaryComplementX (binaryCodeCellX C))).mp
    (cert.psd_iff_blockDiagonal.mp hM)

theorem binaryComplementConstraints_of_blockDiagonalizationCertificate {n : Nat}
    (C : Finset (QaryWord 2 n))
    (cert :
      BinaryBlockDiagonalizationCertificate
        (binaryComplementX (binaryCodeCellX C))) :
    BinaryComplementConstraints (binaryCodeCellX C) :=
  binaryComplementConstraints_of_orbitAverage_eq C cert
    (binaryComplementTranslatedCodeOrbitAverageMatrix_eq_terwilliger C)

theorem binaryComplementConstraints_of_scaledBlockDiagonalizationCertificate {n : Nat}
    (C : Finset (QaryWord 2 n)) (scale : BinaryBlockIndex n -> Rat)
    (cert :
      BinaryBlockDiagonalizationScaledMatrixCertificate scale
        (binaryComplementX (binaryCodeCellX C))) :
    BinaryComplementConstraints (binaryCodeCellX C) :=
  binaryComplementConstraints_of_orbitAverage_eq_scaled C scale cert
    (binaryComplementTranslatedCodeOrbitAverageMatrix_eq_terwilliger C)

theorem binaryComplementConstraints_of_scaledCompressionCertificate {n : Nat}
    (C : Finset (QaryWord 2 n)) (scale : BinaryBlockIndex n -> Rat)
    (cert :
      BinaryBlockDiagonalizationScaledCompressionCertificate scale
        (binaryComplementX (binaryCodeCellX C))) :
    BinaryComplementConstraints (binaryCodeCellX C) := by
  have hM :
      RatPSD
        (binaryTerwilligerMatrix
          (binaryComplementX (binaryCodeCellX C))) := by
    rw [← binaryComplementTranslatedCodeOrbitAverageMatrix_eq_terwilliger C]
    exact binaryComplementTranslatedCodeOrbitAverageMatrix_psd C
  exact cert.blocksPSD_of_terwilligerPSD hM

theorem binaryComplementConstraints_of_scaledBlockCompressionCertificate {n : Nat}
    (C : Finset (QaryWord 2 n)) (scale : BinaryBlockIndex n -> Rat)
    (cert :
      BinaryBlockDiagonalizationScaledBlockCompressionCertificate scale
        (binaryComplementX (binaryCodeCellX C))) :
    BinaryComplementConstraints (binaryCodeCellX C) := by
  have hM :
      RatPSD
        (binaryTerwilligerMatrix
          (binaryComplementX (binaryCodeCellX C))) := by
    rw [← binaryComplementTranslatedCodeOrbitAverageMatrix_eq_terwilliger C]
    exact binaryComplementTranslatedCodeOrbitAverageMatrix_psd C
  exact cert.blocksPSD_of_terwilligerPSD hM

/-- Ordinary binary block PSD implies PSD in the table/exporter row order. -/
theorem BinaryBlocksPSD.tableBlockMatrixExpr {n : Nat} {x : BinaryX n}
    (h : BinaryBlocksPSD x) (idx : BinaryBlockIndex n) :
    RatPSD (MatrixLinExpr.eval
      (binaryTableBlockMatrixExpr n idx (fun source => LinExpr.var source)) x) := by
  rw [binaryTableBlockMatrixExpr_eval_reindex]
  rw [show
    (fun source : BinaryOrbitIndex n => ((fun source => LinExpr.var source) source).eval x) =
      x by
      funext source
      simp]
  have hblock : RatPSD (binaryBlock n idx.k x) := by
    simpa [binaryBlockForIndex] using h idx
  exact (RatPSD.reindex_iff
    (Fin.revPerm : Equiv.Perm (BinaryTableBlockCoord idx))
    (binaryBlock n idx.k x)).2 hblock

/-- Positive complement blocks in the table/exporter row order. -/
theorem BinaryComplementConstraints.tablePositive {n : Nat} {x : BinaryX n}
    (h : BinaryComplementConstraints x) (idx : BinaryPositiveBlockIndex n) :
    RatPSD (MatrixLinExpr.eval
      (binaryTableBlockMatrixExpr n idx.val (binaryComplementCoeffExpr n)) x) := by
  rw [binaryTableBlockMatrixExpr_eval_reindex]
  rw [show
    (fun source : BinaryOrbitIndex n => (binaryComplementCoeffExpr n source).eval x) =
      binaryComplementX x by
      funext source
      simp]
  have hblocks : BinaryBlocksPSD (binaryComplementX x) := h
  have hblock : RatPSD (binaryBlock n idx.val.k (binaryComplementX x)) := by
    simpa [binaryBlockForIndex] using hblocks idx.val
  exact (RatPSD.reindex_iff
    (Fin.revPerm : Equiv.Perm (BinaryTableBlockCoord idx.val))
    (binaryBlock n idx.val.k (binaryComplementX x))).2 hblock

/-- Positive Lasserre blocks in the table/exporter row order. -/
theorem BinaryLasserreConstraints.tablePositive {n : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat} {x : BinaryX n}
    (h : BinaryLasserreConstraints lambda beta x) (idx : BinaryPositiveBlockIndex n) :
    RatPSD (MatrixLinExpr.eval
      (binaryTableBlockMatrixExpr n idx.val (binaryLasserreCoeffExpr lambda beta)) x) := by
  rw [binaryTableBlockMatrixExpr_eval_reindex]
  rw [show
    (fun source : BinaryOrbitIndex n => (binaryLasserreCoeffExpr lambda beta source).eval x) =
      binaryLasserreX lambda beta x by
      funext source
      simp [binaryLasserreX]]
  have hblocks : BinaryBlocksPSD (binaryLasserreX lambda beta x) := h
  have hblock : RatPSD (binaryBlock n idx.val.k (binaryLasserreX lambda beta x)) := by
    simpa [binaryBlockForIndex] using hblocks idx.val
  exact (RatPSD.reindex_iff
    (Fin.revPerm : Equiv.Perm (BinaryTableBlockCoord idx.val))
    (binaryBlock n idx.val.k (binaryLasserreX lambda beta x))).2 hblock

/--
Certificate that the canonical code-cell vector attached to `C` is feasible for
the full binary Table 1 SDP at parameters `(n,r)`.

The basic scalar constraints are intentionally not duplicated: nonnegativity,
upper bounds, distance upper bounds, and symmetry follow from the existing
code-cell orbit-count infrastructure once `triangleLower` is supplied.
-/
structure BinaryCodeCellTableConstraintCertificate
    (n r : Nat) (C : Finset (QaryWord 2 n)) : Prop where
  triangleLower : BinaryCodeCellTriangleLowerBound C
  semidefinite : BinaryBlocksPSD (binaryCodeCellX C)
  complementZero :
    RatPSD (MatrixLinExpr.eval (binaryComplementZeroBlockExpr n) (binaryCodeCellX C))
  complementPositive : BinaryComplementConstraints (binaryCodeCellX C)
  lasserreZero :
    forall ineq : BinaryTableInequality,
      RatPSD (MatrixLinExpr.eval
        (binaryLasserreZeroBlockExpr
          (binaryTableLambda n r ineq) (binaryTableBeta n r ineq))
        (binaryCodeCellX C))
  lasserre :
    forall ineq : BinaryTableInequality,
      BinaryLasserreConstraints
        (binaryTableLambda n r ineq) (binaryTableBeta n r ineq)
        (binaryCodeCellX C)
  matrixCuts :
    forall ineq : BinaryTableInequality,
      BinaryMatrixCutConstraints
        (binaryTableLambda n r ineq) (binaryTableBeta n r ineq)
        (binaryCodeCellX C)

/--
Intrinsic full-table code-cell feasibility certificate.

The universal code-cell counting lemmas supply the basic scalar constraints, so
this certificate exposes only the Table 1 matrix and valid-inequality
obligations that still need direct proofs or generated witnesses.
-/
structure BinaryCodeCellTableIntrinsicConstraintCertificate
    (n r : Nat) (C : Finset (QaryWord 2 n)) : Prop where
  semidefinite : BinaryBlocksPSD (binaryCodeCellX C)
  complementZero :
    RatPSD (MatrixLinExpr.eval (binaryComplementZeroBlockExpr n) (binaryCodeCellX C))
  complementPositive : BinaryComplementConstraints (binaryCodeCellX C)
  lasserreZero :
    forall ineq : BinaryTableInequality,
      RatPSD (MatrixLinExpr.eval
        (binaryLasserreZeroBlockExpr
          (binaryTableLambda n r ineq) (binaryTableBeta n r ineq))
        (binaryCodeCellX C))
  lasserre :
    forall ineq : BinaryTableInequality,
      BinaryLasserreConstraints
        (binaryTableLambda n r ineq) (binaryTableBeta n r ineq)
        (binaryCodeCellX C)
  matrixCuts :
    forall ineq : BinaryTableInequality,
      BinaryMatrixCutConstraints
        (binaryTableLambda n r ineq) (binaryTableBeta n r ineq)
        (binaryCodeCellX C)

def BinaryCodeCellTableIntrinsicConstraintCertificate.toTableConstraintCertificate
    {n r : Nat} {C : Finset (QaryWord 2 n)}
    (cert : BinaryCodeCellTableIntrinsicConstraintCertificate n r C) :
    BinaryCodeCellTableConstraintCertificate n r C where
  triangleLower := binaryCodeCellTriangleLowerBound_universal C
  semidefinite := cert.semidefinite
  complementZero := cert.complementZero
  complementPositive := cert.complementPositive
  lasserreZero := cert.lasserreZero
  lasserre := cert.lasserre
  matrixCuts := cert.matrixCuts

def BinaryCodeCellTableIntrinsicConstraintCertificate.ofBlockDiagonalization
    {n r : Nat} {C : Finset (QaryWord 2 n)}
    (blockCert : BinaryBlockDiagonalizationCertificate (binaryCodeCellX C))
    (complementZero :
      RatPSD (MatrixLinExpr.eval (binaryComplementZeroBlockExpr n) (binaryCodeCellX C)))
    (complementPositive : BinaryComplementConstraints (binaryCodeCellX C))
    (lasserreZero :
      forall ineq : BinaryTableInequality,
        RatPSD (MatrixLinExpr.eval
          (binaryLasserreZeroBlockExpr
            (binaryTableLambda n r ineq) (binaryTableBeta n r ineq))
          (binaryCodeCellX C)))
    (lasserre :
      forall ineq : BinaryTableInequality,
        BinaryLasserreConstraints
          (binaryTableLambda n r ineq) (binaryTableBeta n r ineq)
          (binaryCodeCellX C))
    (matrixCuts :
      forall ineq : BinaryTableInequality,
        BinaryMatrixCutConstraints
          (binaryTableLambda n r ineq) (binaryTableBeta n r ineq)
          (binaryCodeCellX C)) :
    BinaryCodeCellTableIntrinsicConstraintCertificate n r C where
  semidefinite :=
    binaryCodeCellX_semidefinite_of_orbitAverage_universal C blockCert
  complementZero := complementZero
  complementPositive := complementPositive
  lasserreZero := lasserreZero
  lasserre := lasserre
  matrixCuts := matrixCuts

def BinaryCodeCellTableIntrinsicConstraintCertificate.ofScaledBlockDiagonalization
    {n r : Nat} {C : Finset (QaryWord 2 n)}
    (scale : BinaryBlockIndex n -> Rat)
    (blockCert :
      BinaryBlockDiagonalizationScaledMatrixCertificate scale (binaryCodeCellX C))
    (complementZero :
      RatPSD (MatrixLinExpr.eval (binaryComplementZeroBlockExpr n) (binaryCodeCellX C)))
    (complementPositive : BinaryComplementConstraints (binaryCodeCellX C))
    (lasserreZero :
      forall ineq : BinaryTableInequality,
        RatPSD (MatrixLinExpr.eval
          (binaryLasserreZeroBlockExpr
            (binaryTableLambda n r ineq) (binaryTableBeta n r ineq))
          (binaryCodeCellX C)))
    (lasserre :
      forall ineq : BinaryTableInequality,
        BinaryLasserreConstraints
          (binaryTableLambda n r ineq) (binaryTableBeta n r ineq)
          (binaryCodeCellX C))
    (matrixCuts :
      forall ineq : BinaryTableInequality,
        BinaryMatrixCutConstraints
          (binaryTableLambda n r ineq) (binaryTableBeta n r ineq)
          (binaryCodeCellX C)) :
    BinaryCodeCellTableIntrinsicConstraintCertificate n r C where
  semidefinite :=
    binaryCodeCellX_semidefinite_of_orbitAverage_universal_scaled
      C scale blockCert
  complementZero := complementZero
  complementPositive := complementPositive
  lasserreZero := lasserreZero
  lasserre := lasserre
  matrixCuts := matrixCuts

/--
Build a full-table intrinsic certificate from block-diagonalization certificates
for the primal, complement-positive, and Lasserre-positive blocks.  The bordered
`k = 0` blocks and matrix cuts remain explicit obligations.
-/
def BinaryCodeCellTableIntrinsicConstraintCertificate.ofBlockDiagonalizationCertificates
    {n r : Nat} {C : Finset (QaryWord 2 n)}
    (hvalid :
      forall ineq : BinaryTableInequality,
        ValidLinearInequality 2 n r
          (binaryTableLambda n r ineq) (binaryTableBeta n r ineq))
    (hC : CoversFinset C r)
    (primalCert : BinaryBlockDiagonalizationCertificate (binaryCodeCellX C))
    (complementZero :
      RatPSD (MatrixLinExpr.eval (binaryComplementZeroBlockExpr n) (binaryCodeCellX C)))
    (complementCert :
      BinaryBlockDiagonalizationCertificate
        (binaryComplementX (binaryCodeCellX C)))
    (lasserreZero :
      forall ineq : BinaryTableInequality,
        RatPSD (MatrixLinExpr.eval
          (binaryLasserreZeroBlockExpr
            (binaryTableLambda n r ineq) (binaryTableBeta n r ineq))
          (binaryCodeCellX C)))
    (lasserreCert :
      forall ineq : BinaryTableInequality,
        BinaryBlockDiagonalizationCertificate
          (binaryLasserreX
            (binaryTableLambda n r ineq) (binaryTableBeta n r ineq)
            (binaryCodeCellX C)))
    (matrixCuts :
      forall ineq : BinaryTableInequality,
        BinaryMatrixCutConstraints
          (binaryTableLambda n r ineq) (binaryTableBeta n r ineq)
          (binaryCodeCellX C)) :
    BinaryCodeCellTableIntrinsicConstraintCertificate n r C where
  semidefinite :=
    binaryCodeCellX_semidefinite_of_orbitAverage_universal C primalCert
  complementZero := complementZero
  complementPositive :=
    binaryComplementConstraints_of_blockDiagonalizationCertificate C complementCert
  lasserreZero := lasserreZero
  lasserre := by
    intro ineq
    exact binaryCodeCellX_lasserre_universal
      (hvalid ineq) C hC (lasserreCert ineq)
  matrixCuts := matrixCuts

/--
Scaled block-diagonalization variant of
`BinaryCodeCellTableIntrinsicConstraintCertificate.ofBlockDiagonalizationCertificates`.
-/
def BinaryCodeCellTableIntrinsicConstraintCertificate.ofScaledBlockDiagonalizationCertificates
    {n r : Nat} {C : Finset (QaryWord 2 n)}
    (hvalid :
      forall ineq : BinaryTableInequality,
        ValidLinearInequality 2 n r
          (binaryTableLambda n r ineq) (binaryTableBeta n r ineq))
    (hC : CoversFinset C r)
    (primalScale : BinaryBlockIndex n -> Rat)
    (complementScale : BinaryBlockIndex n -> Rat)
    (lasserreScale : BinaryTableInequality -> BinaryBlockIndex n -> Rat)
    (primalCert :
      BinaryBlockDiagonalizationScaledMatrixCertificate primalScale
        (binaryCodeCellX C))
    (complementZero :
      RatPSD (MatrixLinExpr.eval (binaryComplementZeroBlockExpr n) (binaryCodeCellX C)))
    (complementCert :
      BinaryBlockDiagonalizationScaledMatrixCertificate complementScale
        (binaryComplementX (binaryCodeCellX C)))
    (lasserreZero :
      forall ineq : BinaryTableInequality,
        RatPSD (MatrixLinExpr.eval
          (binaryLasserreZeroBlockExpr
            (binaryTableLambda n r ineq) (binaryTableBeta n r ineq))
          (binaryCodeCellX C)))
    (lasserreCert :
      forall ineq : BinaryTableInequality,
        BinaryBlockDiagonalizationScaledMatrixCertificate (lasserreScale ineq)
          (binaryLasserreX
            (binaryTableLambda n r ineq) (binaryTableBeta n r ineq)
            (binaryCodeCellX C)))
    (matrixCuts :
      forall ineq : BinaryTableInequality,
        BinaryMatrixCutConstraints
          (binaryTableLambda n r ineq) (binaryTableBeta n r ineq)
          (binaryCodeCellX C)) :
    BinaryCodeCellTableIntrinsicConstraintCertificate n r C where
  semidefinite :=
    binaryCodeCellX_semidefinite_of_orbitAverage_universal_scaled
      C primalScale primalCert
  complementZero := complementZero
  complementPositive :=
    binaryComplementConstraints_of_scaledBlockDiagonalizationCertificate
      C complementScale complementCert
  lasserreZero := lasserreZero
  lasserre := by
    intro ineq
    exact binaryCodeCellX_lasserre_universal_scaled
      (hvalid ineq) C hC (lasserreScale ineq) (lasserreCert ineq)
  matrixCuts := matrixCuts

/--
Build a full-table intrinsic certificate from one-way scaled compression
certificates for the primal, complement-positive, and Lasserre-positive blocks.
The bordered `k = 0` blocks and matrix cuts remain explicit obligations.
-/
def BinaryCodeCellTableIntrinsicConstraintCertificate.ofScaledCompressionCertificates
    {n r : Nat} {C : Finset (QaryWord 2 n)}
    (hvalid :
      forall ineq : BinaryTableInequality,
        ValidLinearInequality 2 n r
          (binaryTableLambda n r ineq) (binaryTableBeta n r ineq))
    (hC : CoversFinset C r)
    (primalScale : BinaryBlockIndex n -> Rat)
    (complementScale : BinaryBlockIndex n -> Rat)
    (lasserreScale : BinaryTableInequality -> BinaryBlockIndex n -> Rat)
    (primalCert :
      BinaryBlockDiagonalizationScaledCompressionCertificate primalScale
        (binaryCodeCellX C))
    (complementZero :
      RatPSD (MatrixLinExpr.eval (binaryComplementZeroBlockExpr n) (binaryCodeCellX C)))
    (complementCert :
      BinaryBlockDiagonalizationScaledCompressionCertificate complementScale
        (binaryComplementX (binaryCodeCellX C)))
    (lasserreZero :
      forall ineq : BinaryTableInequality,
        RatPSD (MatrixLinExpr.eval
          (binaryLasserreZeroBlockExpr
            (binaryTableLambda n r ineq) (binaryTableBeta n r ineq))
          (binaryCodeCellX C)))
    (lasserreCert :
      forall ineq : BinaryTableInequality,
        BinaryBlockDiagonalizationScaledCompressionCertificate (lasserreScale ineq)
          (binaryLasserreX
            (binaryTableLambda n r ineq) (binaryTableBeta n r ineq)
            (binaryCodeCellX C)))
    (matrixCuts :
      forall ineq : BinaryTableInequality,
        BinaryMatrixCutConstraints
          (binaryTableLambda n r ineq) (binaryTableBeta n r ineq)
          (binaryCodeCellX C)) :
    BinaryCodeCellTableIntrinsicConstraintCertificate n r C where
  semidefinite :=
    binaryCodeCellX_semidefinite_of_orbitAverage_universal_scaledCompression
      C primalScale primalCert
  complementZero := complementZero
  complementPositive :=
    binaryComplementConstraints_of_scaledCompressionCertificate
      C complementScale complementCert
  lasserreZero := lasserreZero
  lasserre := by
    intro ineq
    exact binaryCodeCellX_lasserre_universal_scaledCompression
      (hvalid ineq) C hC (lasserreScale ineq) (lasserreCert ineq)
  matrixCuts := matrixCuts

/--
Build a full-table intrinsic certificate from blockwise one-way scaled
compression certificates.  This is the preferred target for generated
Schrijver block exporters, because each block certificate is independent.
-/
def BinaryCodeCellTableIntrinsicConstraintCertificate.ofScaledBlockCompressionCertificates
    {n r : Nat} {C : Finset (QaryWord 2 n)}
    (hvalid :
      forall ineq : BinaryTableInequality,
        ValidLinearInequality 2 n r
          (binaryTableLambda n r ineq) (binaryTableBeta n r ineq))
    (hC : CoversFinset C r)
    (primalScale : BinaryBlockIndex n -> Rat)
    (complementScale : BinaryBlockIndex n -> Rat)
    (lasserreScale : BinaryTableInequality -> BinaryBlockIndex n -> Rat)
    (primalCert :
      BinaryBlockDiagonalizationScaledBlockCompressionCertificate primalScale
        (binaryCodeCellX C))
    (complementZero :
      RatPSD (MatrixLinExpr.eval (binaryComplementZeroBlockExpr n) (binaryCodeCellX C)))
    (complementCert :
      BinaryBlockDiagonalizationScaledBlockCompressionCertificate complementScale
        (binaryComplementX (binaryCodeCellX C)))
    (lasserreZero :
      forall ineq : BinaryTableInequality,
        RatPSD (MatrixLinExpr.eval
          (binaryLasserreZeroBlockExpr
            (binaryTableLambda n r ineq) (binaryTableBeta n r ineq))
          (binaryCodeCellX C)))
    (lasserreCert :
      forall ineq : BinaryTableInequality,
        BinaryBlockDiagonalizationScaledBlockCompressionCertificate (lasserreScale ineq)
          (binaryLasserreX
            (binaryTableLambda n r ineq) (binaryTableBeta n r ineq)
            (binaryCodeCellX C)))
    (matrixCuts :
      forall ineq : BinaryTableInequality,
        BinaryMatrixCutConstraints
          (binaryTableLambda n r ineq) (binaryTableBeta n r ineq)
          (binaryCodeCellX C)) :
    BinaryCodeCellTableIntrinsicConstraintCertificate n r C where
  semidefinite :=
    binaryCodeCellX_semidefinite_of_orbitAverage_universal_scaledBlockCompression
      C primalScale primalCert
  complementZero := complementZero
  complementPositive :=
    binaryComplementConstraints_of_scaledBlockCompressionCertificate
      C complementScale complementCert
  lasserreZero := lasserreZero
  lasserre := by
    intro ineq
    exact binaryCodeCellX_lasserre_universal_scaledBlockCompression
      (hvalid ineq) C hC (lasserreScale ineq) (lasserreCert ineq)
  matrixCuts := matrixCuts

/--
Build a full table code-cell certificate from the two reduced certificates used
in the binary table, plus the bordered table-only PSD constraints.
-/
def BinaryCodeCellTableConstraintCertificate.ofReducedCertificates
    {n r : Nat} {C : Finset (QaryWord 2 n)}
    (sphere :
      BinaryCodeCellReducedConstraintCertificate n
        (binaryTableLambda n r BinaryTableInequality.sphere)
        (binaryTableBeta n r BinaryTableInequality.sphere) C)
    (vanWee :
      BinaryCodeCellReducedConstraintCertificate n
        (binaryTableLambda n r BinaryTableInequality.vanWee)
        (binaryTableBeta n r BinaryTableInequality.vanWee) C)
    (complementZero :
      RatPSD (MatrixLinExpr.eval (binaryComplementZeroBlockExpr n) (binaryCodeCellX C)))
    (complementPositive : BinaryComplementConstraints (binaryCodeCellX C))
    (lasserreZero :
      forall ineq : BinaryTableInequality,
        RatPSD (MatrixLinExpr.eval
          (binaryLasserreZeroBlockExpr
            (binaryTableLambda n r ineq) (binaryTableBeta n r ineq))
          (binaryCodeCellX C))) :
    BinaryCodeCellTableConstraintCertificate n r C where
  triangleLower := sphere.triangleLower
  semidefinite := sphere.semidefinite
  complementZero := complementZero
  complementPositive := complementPositive
  lasserreZero := lasserreZero
  lasserre := by
    intro ineq
    cases ineq with
    | sphere => exact sphere.lasserre
    | vanWee => exact vanWee.lasserre
  matrixCuts := by
    intro ineq
    cases ineq with
    | sphere => exact sphere.matrixCuts
    | vanWee => exact vanWee.matrixCuts

/--
Variant of `ofReducedCertificates` using the intrinsic reduced-code-cell
certificate format.  This discharges the reduced `fiberCard` field with the
universal projection-counting theorem.
-/
def BinaryCodeCellTableConstraintCertificate.ofIntrinsicCertificates
    {n r : Nat} {C : Finset (QaryWord 2 n)}
    (sphere :
      BinaryCodeCellIntrinsicReducedConstraintCertificate n
        (binaryTableLambda n r BinaryTableInequality.sphere)
        (binaryTableBeta n r BinaryTableInequality.sphere) C)
    (vanWee :
      BinaryCodeCellIntrinsicReducedConstraintCertificate n
        (binaryTableLambda n r BinaryTableInequality.vanWee)
        (binaryTableBeta n r BinaryTableInequality.vanWee) C)
    (complementZero :
      RatPSD (MatrixLinExpr.eval (binaryComplementZeroBlockExpr n) (binaryCodeCellX C)))
    (complementPositive : BinaryComplementConstraints (binaryCodeCellX C))
    (lasserreZero :
      forall ineq : BinaryTableInequality,
        RatPSD (MatrixLinExpr.eval
          (binaryLasserreZeroBlockExpr
            (binaryTableLambda n r ineq) (binaryTableBeta n r ineq))
          (binaryCodeCellX C))) :
    BinaryCodeCellTableConstraintCertificate n r C :=
  BinaryCodeCellTableConstraintCertificate.ofReducedCertificates
    sphere.toCodeCellReducedConstraintCertificate
    vanWee.toCodeCellReducedConstraintCertificate
    complementZero complementPositive lasserreZero

/-- Scalar Table 1 atoms are nonnegative for a certified code-cell vector. -/
theorem binaryTableScalarAtomExpr_nonneg_of_codeCellTableCertificate
    {n r : Nat} {C : Finset (QaryWord 2 n)}
    (cert : BinaryCodeCellTableConstraintCertificate n r C) :
    LinearConstraints (binaryTableScalarAtomExpr (n := n) (r := r))
      (binaryCodeCellX C) := by
  intro atom
  have hbasic : BinaryBasicConstraints (binaryCodeCellX C) :=
    binaryCodeCellX_basicConstraints_of_card_bounds C
      (binaryCodeCellFiberCardBound_universal C) cert.triangleLower
  cases atom with
  | nonneg idx =>
      simpa [binaryTableScalarAtomExpr] using (hbasic.1 idx).1
  | diagonalUpper idx =>
      have hle := (hbasic.1 idx).2
      simp [binaryTableScalarAtomExpr]
      linarith
  | basicTriangleLower idx =>
      have hle := (hbasic.2.1 idx).1
      simp [binaryTableScalarAtomExpr]
      linarith
  | basicDistanceUpper idx =>
      have hle := (hbasic.2.1 idx).2
      simp [binaryTableScalarAtomExpr]
      linarith
  | symmetryLe idx idx' =>
      unfold binaryTableScalarAtomExpr
      by_cases hp : List.Perm [idx.i, idx.j, binaryOrbitDistanceIndex idx]
          [idx'.i, idx'.j, binaryOrbitDistanceIndex idx']
      · have heq := hbasic.2.2 idx idx' hp
        simp [hp]
        linarith
      · simp [hp]
  | symmetryGe idx idx' =>
      unfold binaryTableScalarAtomExpr
      by_cases hp : List.Perm [idx.i, idx.j, binaryOrbitDistanceIndex idx]
          [idx'.i, idx'.j, binaryOrbitDistanceIndex idx']
      · have heq := hbasic.2.2 idx idx' hp
        simp [hp]
        linarith
      · simp [hp]
  | matrixCut ineq cut source =>
      have hcut := cert.matrixCuts ineq source
      dsimp [BinaryMatrixCutConstraints] at hcut
      fin_cases cut
      · simpa [binaryTableScalarAtomExpr, sub_nonneg, mul_comm] using hcut.1
      · simpa [binaryTableScalarAtomExpr, sub_nonneg, mul_comm] using hcut.2.1
      · simpa [binaryTableScalarAtomExpr, sub_nonneg, mul_comm] using hcut.2.2.1
      · simpa [binaryTableScalarAtomExpr, sub_nonneg, mul_comm, sub_eq_add_neg,
          add_assoc, add_comm, add_left_comm] using hcut.2.2.2

/-- A code-cell table certificate gives the exact full Table 1 SDP constraints. -/
theorem BinaryCodeCellTableConstraintCertificate.toTableConstraints
    {n r : Nat} {C : Finset (QaryWord 2 n)}
    (cert : BinaryCodeCellTableConstraintCertificate n r C) :
    BinaryTableConstraints n r (binaryCodeCellX C) := by
  constructor
  · exact binaryTableScalarAtomExpr_nonneg_of_codeCellTableCertificate cert
  · intro atom
    cases atom with
    | primal idx =>
        simpa [binaryTableMatrixAtomExpr] using cert.semidefinite.tableBlockMatrixExpr idx
    | complementZero =>
        simpa [binaryTableMatrixAtomExpr] using cert.complementZero
    | complementPositive idx =>
        simpa [binaryTableMatrixAtomExpr] using cert.complementPositive.tablePositive idx
    | lasserreZero ineq =>
        simpa [binaryTableMatrixAtomExpr] using cert.lasserreZero ineq
    | lasserrePositive ineq idx =>
        simpa [binaryTableMatrixAtomExpr] using (cert.lasserre ineq).tablePositive idx

/--
Convert per-code code-cell table certificates into the objective bridge used by
the quotient Table 1 dual certificates.
-/
theorem binaryTableCodeObjectiveBound_of_codeCellTableCertificates {n r : Nat}
    (certs :
      forall C : Finset (QaryWord 2 n),
        CoversFinset C r -> BinaryCodeCellTableConstraintCertificate n r C) :
    forall C : Finset (QaryWord 2 n),
      CoversFinset C r ->
        exists x : BinaryX n,
          BinaryTableConstraints n r x /\
            binaryReducedObjective n x <= (C.card : Rat) ^ 3 := by
  intro C hC
  exact binaryTableCodeObjectiveBound_of_codeCellConstraints
    (fun C hC => (certs C hC).toTableConstraints) C hC

end

end GijswijtPolak2025
end SDP
end CoveringCodes
