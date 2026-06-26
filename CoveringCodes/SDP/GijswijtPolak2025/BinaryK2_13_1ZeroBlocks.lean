import CoveringCodes.SDP.GijswijtPolak2025.BinaryTableCodeCell
import CoveringCodes.SDP.GijswijtPolak2025.BinaryLengthThirteenBlockCompressionBridge

/-!
# Bordered zero-block side constraints for the K2(13,1) code-cell proof

This file isolates the length-13 `k = 0` transform used by the bordered
complement and Lasserre zero blocks.  It is intentionally not imported by the
main K2 path until the bordered PSD theorems are closed.
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

noncomputable section

/-- The length-13 Schrijver block with `k = 0`. -/
def binaryLengthThirteenBlockIndex0 : BinaryBlockIndex 13 where
  k := 0
  hk := by omega

/--
The length-13 `k = 0` compression matrix in the table/exporter row order.
The generated block-compression matrix uses paper row order, while Table 1
coordinates are reversed.
-/
def binaryLengthThirteenTableKZeroTransform :
    Matrix (QaryWord 2 13) (Fin 14) Rat :=
  fun w coord =>
    binaryLengthThirteenBlockCompressionMatrixFor
      binaryLengthThirteenBlockIndex0 w (Fin.rev coord)

@[simp]
theorem binaryLengthThirteenTableKZeroTransform_apply
    (w : QaryWord 2 13) (coord : Fin 14) :
    binaryLengthThirteenTableKZeroTransform w coord =
      if (binarySupport 13 w).card = 13 - coord.val then 1 else 0 := by
  unfold binaryLengthThirteenTableKZeroTransform
    binaryLengthThirteenBlockCompressionMatrixFor
  simp [binaryLengthThirteenBlockIndex0, Fin.rev]

/--
The bordered version of the length-13 `k = 0` transform.  The `none` coordinate
is the scalar border coordinate, and the `some` coordinates are the reversed
table block coordinates.
-/
def binaryLengthThirteenBorderedKZeroTransform :
    Matrix (Option (QaryWord 2 13)) (Option (Fin 14)) Rat
  | none, none => 1
  | none, some _ => 0
  | some _, none => 0
  | some w, some coord => binaryLengthThirteenTableKZeroTransform w coord

theorem binaryLengthThirteenTableKZeroTransform_congruence_eq_reindex
    (M : Matrix (QaryWord 2 13) (QaryWord 2 13) Rat) :
    congruenceMatrix binaryLengthThirteenTableKZeroTransform M =
      reindexMatrix (Fin.revPerm : Equiv.Perm (Fin 14))
        (congruenceMatrix
          (binaryLengthThirteenBlockCompressionMatrixFor
            binaryLengthThirteenBlockIndex0) M) := by
  ext row col
  rfl

/--
The generated length-13 compression certificate identifies the table-order
`k = 0` congruence with the evaluated table block.
-/
theorem binaryLengthThirteen_tableKZeroBlock_eval_eq_congruence
    (x : BinaryOrbitIndex 13 -> Rat) :
    MatrixLinExpr.eval
        (binaryTableBlockMatrixExpr 13 binaryLengthThirteenBlockIndex0
          (fun source => LinExpr.var source)) x =
      congruenceMatrix binaryLengthThirteenTableKZeroTransform
        (binaryTerwilligerMatrix x) := by
  rw [binaryTableBlockMatrixExpr_eval_reindex]
  rw [binaryLengthThirteenTableKZeroTransform_congruence_eq_reindex]
  have hraw :
      congruenceMatrix
          (binaryLengthThirteenBlockCompressionMatrixFor
            binaryLengthThirteenBlockIndex0)
          (binaryTerwilligerMatrix x) =
        binaryBlockForIndex x binaryLengthThirteenBlockIndex0 := by
    have h :=
      binaryLengthThirteenBlockCompression_congruence_eq_of_coeff_eq
        binaryLengthThirteenBlockIndex0 x
        (binaryLengthThirteenBlockCompression_const_eq
          binaryLengthThirteenBlockIndex0)
        (binaryLengthThirteenBlockCompressionEntryExpr_coeff_eq_scaledBlockEntryExpr
          binaryLengthThirteenBlockIndex0)
    have hscaleMatrix :
        binaryLengthThirteenBlockScale binaryLengthThirteenBlockIndex0 •
            binaryBlockForIndex x binaryLengthThirteenBlockIndex0 =
          binaryBlockForIndex x binaryLengthThirteenBlockIndex0 := by
      simpa [binaryLengthThirteenBlockScale, binaryLengthThirteenBlockIndex0]
        using (one_smul Rat (binaryBlockForIndex x binaryLengthThirteenBlockIndex0))
    exact h.trans hscaleMatrix
  apply congrArg (reindexMatrix (Fin.revPerm : Equiv.Perm (Fin 14)))
  calc
    binaryBlock 13 binaryLengthThirteenBlockIndex0.k
        (fun source => (LinExpr.var source).eval x) =
      binaryBlockForIndex x binaryLengthThirteenBlockIndex0 := by
        simp [binaryBlockForIndex]
    _ = congruenceMatrix
        (binaryLengthThirteenBlockCompressionMatrixFor
          binaryLengthThirteenBlockIndex0)
        (binaryTerwilligerMatrix x) := hraw.symm

theorem binaryLengthThirteen_borderedKZero_congruence_psd
    {c : Rat} {M : Matrix (QaryWord 2 13) (QaryWord 2 13) Rat}
    (hM : RatPSD (bordered c M)) :
    RatPSD
      (congruenceMatrix binaryLengthThirteenBorderedKZeroTransform
        (bordered c M)) :=
by
  intro x
  rw [quadraticForm_congruenceMatrix
    binaryLengthThirteenBorderedKZeroTransform (bordered c M) x]
  exact hM (matrixVectorMul binaryLengthThirteenBorderedKZeroTransform x)

/-- Lift an equivalence to optional indices, fixing the border coordinate. -/
def optionMapEquiv {α β : Type} (e : α ≃ β) : Option α ≃ Option β where
  toFun := fun x => x.map e
  invFun := fun x => x.map e.symm
  left_inv := by
    intro x
    cases x <;> simp
  right_inv := by
    intro x
    cases x <;> simp

/-- Coordinate permutation on bordered binary word indices. -/
def binaryBorderedWordPermEquiv {n : Nat} (sigma : Equiv.Perm (Fin n)) :
    Option (QaryWord 2 n) ≃ Option (QaryWord 2 n) :=
  optionMapEquiv (binaryWordPermEquiv sigma)

theorem binaryWordWeightCell_card (n d : Nat) :
    (binaryWordWeightCell n d).card = Nat.choose n d := by
  classical
  calc
    (binaryWordWeightCell n d).card =
        ((Finset.univ : Finset (Fin n)).powersetCard d).card := by
        apply Finset.card_bij (fun w _ => binarySupport n w)
        · intro w hw
          rw [Finset.mem_powersetCard]
          exact ⟨by simp, (mem_binaryWordWeightCell.mp hw)⟩
        · intro a _ b _ hab
          exact (binarySupportEquiv n).injective hab
        · intro S hS
          refine ⟨binaryWordOfSupport S, ?_, ?_⟩
          · rw [mem_binaryWordWeightCell]
            rw [binarySupport_wordOfSupport]
            exact (Finset.mem_powersetCard.mp hS).2
          · rw [binarySupport_wordOfSupport]
    _ = Nat.choose n d := by
        rw [Finset.card_powersetCard]
        simp

private theorem binaryZeroBlocksOrbitIndex_ext {n : Nat}
    {idx idx' : BinaryOrbitIndex n}
    (hi : idx.i = idx'.i) (hj : idx.j = idx'.j) (ht : idx.t = idx'.t) :
    idx = idx' := by
  cases idx with
  | mk i j t ht_i ht_j hij =>
      cases idx' with
      | mk i' j' t' ht_i' ht_j' hij' =>
          simp at hi hj ht
          subst i'
          subst j'
          subst t'
          simp

theorem binaryTerwilligerMatrix_diag_eq_diagonalCoeff {n : Nat}
    (x : BinaryX n) (w : QaryWord 2 n) :
    binaryTerwilligerMatrix x w w =
      binaryDiagonalCoeff x (binarySupport n w).card := by
  unfold binaryTerwilligerMatrix binaryDiagonalCoeff
  have hle : (binarySupport n w).card <= n := by
    calc
      (binarySupport n w).card <= (Finset.univ : Finset (Fin n)).card := by
        apply Finset.card_le_card
        intro a _
        simp
      _ = n := by simp
  rw [dif_pos hle]
  congr 1
  apply binaryZeroBlocksOrbitIndex_ext
  · rw [binaryOrbitOf_i]
    unfold weight zeroWord binarySupport dist hammingDist
    rfl
  · rw [binaryOrbitOf_j]
    unfold weight zeroWord binarySupport dist hammingDist
    rfl
  · rw [binaryOrbitOf_t]
    simp

theorem binaryComplementX_diagonalCoeff_of_le {n i : Nat}
    (x : BinaryX n) (hi : i <= n) :
    binaryDiagonalCoeff (binaryComplementX x) i =
      binaryZeroCoeff x 0 - binaryDiagonalCoeff x i := by
  unfold binaryDiagonalCoeff binaryComplementX
  rw [dif_pos hi]
  rw [dif_pos hi]
  have hdist : i + i - 2 * i = 0 := by omega
  simp [binaryOrbitDistanceIndex, hdist]

theorem binaryLengthThirteen_complementKZero_border_sum
    (C : Finset (QaryWord 2 13)) (coord : Fin 14) :
    Finset.univ.sum (fun w : QaryWord 2 13 =>
      binaryLengthThirteenTableKZeroTransform w coord *
        binaryTerwilligerMatrix
          (binaryComplementX (binaryCodeCellX C)) w w) =
      (Nat.choose 13 (13 - coord.val) : Rat) *
        (binaryZeroCoeff (binaryCodeCellX C) 0 -
          binaryZeroCoeff (binaryCodeCellX C) (13 - coord.val)) := by
  classical
  let i := 13 - coord.val
  have hsum :
      Finset.univ.sum (fun w : QaryWord 2 13 =>
        binaryLengthThirteenTableKZeroTransform w coord *
          binaryTerwilligerMatrix
            (binaryComplementX (binaryCodeCellX C)) w w) =
        Finset.univ.sum (fun w : QaryWord 2 13 =>
          if w ∈ binaryWordWeightCell 13 i then
            binaryZeroCoeff (binaryCodeCellX C) 0 -
              binaryZeroCoeff (binaryCodeCellX C) i
          else 0) := by
    apply Finset.sum_congr rfl
    intro w _
    have hle : (binarySupport 13 w).card <= 13 := by
      calc
        (binarySupport 13 w).card <= (Finset.univ : Finset (Fin 13)).card := by
          apply Finset.card_le_card
          intro a _
          simp
        _ = 13 := by simp
    by_cases hw : (binarySupport 13 w).card = i
    · have hdiag :
          binaryTerwilligerMatrix
              (binaryComplementX (binaryCodeCellX C)) w w =
            binaryZeroCoeff (binaryCodeCellX C) 0 -
              binaryZeroCoeff (binaryCodeCellX C) i := by
        rw [binaryTerwilligerMatrix_diag_eq_diagonalCoeff]
        rw [binaryComplementX_diagonalCoeff_of_le (binaryCodeCellX C) hle]
        rw [binaryCodeCellX_diagonalCoeff_eq_zeroCoeff]
        rw [hw]
      simpa [binaryLengthThirteenTableKZeroTransform_apply, i, hw,
        mem_binaryWordWeightCell] using hdiag
    · have hnot : w ∉ binaryWordWeightCell 13 i := by
        rw [mem_binaryWordWeightCell]
        exact hw
      simp [binaryLengthThirteenTableKZeroTransform_apply, i, hw,
        hnot]
  rw [hsum]
  rw [← Finset.sum_filter]
  have hfilter :
      (Finset.univ.filter (fun w : QaryWord 2 13 =>
        w ∈ binaryWordWeightCell 13 i)) =
        binaryWordWeightCell 13 i := by
    ext w
    simp [binaryWordWeightCell]
  rw [hfilter, Finset.sum_const, nsmul_eq_mul,
    binaryWordWeightCell_card]

theorem binaryLengthThirteen_lasserreKZero_border_sum
    (lambda : Fin 14 -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 13)) (coord : Fin 14) :
    Finset.univ.sum (fun w : QaryWord 2 13 =>
      binaryLengthThirteenTableKZeroTransform w coord *
        binaryTerwilligerMatrix
          (binaryLasserreX lambda beta (binaryCodeCellX C)) w w) =
      (Nat.choose 13 (13 - coord.val) : Rat) *
        binaryLasserreX lambda beta (binaryCodeCellX C)
          { i := 13 - coord.val, j := 13 - coord.val,
            t := 13 - coord.val, ht_i := Nat.le_refl _,
            ht_j := Nat.le_refl _, hij := by omega } := by
  classical
  let i := 13 - coord.val
  let idx : BinaryOrbitIndex 13 :=
    { i := i, j := i, t := i, ht_i := Nat.le_refl i,
      ht_j := Nat.le_refl i, hij := by omega }
  have hi : i <= 13 := by
    unfold i
    omega
  have hsum :
      Finset.univ.sum (fun w : QaryWord 2 13 =>
        binaryLengthThirteenTableKZeroTransform w coord *
          binaryTerwilligerMatrix
            (binaryLasserreX lambda beta (binaryCodeCellX C)) w w) =
        Finset.univ.sum (fun w : QaryWord 2 13 =>
          if w ∈ binaryWordWeightCell 13 i then
            binaryLasserreX lambda beta (binaryCodeCellX C) idx
          else 0) := by
    apply Finset.sum_congr rfl
    intro w _
    have hle : (binarySupport 13 w).card <= 13 := by
      calc
        (binarySupport 13 w).card <= (Finset.univ : Finset (Fin 13)).card := by
          apply Finset.card_le_card
          intro a _
          simp
        _ = 13 := by simp
    by_cases hw : (binarySupport 13 w).card = i
    · have hdiag :
          binaryTerwilligerMatrix
              (binaryLasserreX lambda beta (binaryCodeCellX C)) w w =
            binaryLasserreX lambda beta (binaryCodeCellX C) idx := by
        rw [binaryTerwilligerMatrix_diag_eq_diagonalCoeff]
        unfold binaryDiagonalCoeff
        rw [dif_pos hle]
        have hidx :
            { i := (binarySupport 13 w).card,
              j := (binarySupport 13 w).card,
              t := (binarySupport 13 w).card,
              ht_i := Nat.le_refl (binarySupport 13 w).card,
              ht_j := Nat.le_refl (binarySupport 13 w).card,
              hij := by omega } = idx := by
          apply binaryZeroBlocksOrbitIndex_ext <;> simp [idx, hw]
        rw [hidx]
      simpa [binaryLengthThirteenTableKZeroTransform_apply, i, hw,
        mem_binaryWordWeightCell] using hdiag
    · have hnot : w ∉ binaryWordWeightCell 13 i := by
        rw [mem_binaryWordWeightCell]
        exact hw
      simp [binaryLengthThirteenTableKZeroTransform_apply, i, hw,
        hnot]
  rw [hsum]
  rw [← Finset.sum_filter]
  have hfilter :
      (Finset.univ.filter (fun w : QaryWord 2 13 =>
        w ∈ binaryWordWeightCell 13 i)) =
        binaryWordWeightCell 13 i := by
    ext w
    simp [binaryWordWeightCell]
  rw [hfilter, Finset.sum_const, nsmul_eq_mul,
    binaryWordWeightCell_card]

/-- Bordered complement vector for one base word. -/
def binaryComplementBorderedTranslatedCodeIndicator {n : Nat}
    (C : Finset (QaryWord 2 n)) (base : QaryWord 2 n) :
    Option (QaryWord 2 n) -> Rat
  | none => if base ∈ C then 0 else 1
  | some u => binaryComplementTranslatedCodeIndicator C base u

/-- Rank-one bordered complement Gram matrix for one base word. -/
def binaryComplementBorderedTranslatedCodeMatrix {n : Nat}
    (C : Finset (QaryWord 2 n)) (base : QaryWord 2 n) :
    Matrix (Option (QaryWord 2 n)) (Option (QaryWord 2 n)) Rat :=
  fun row col =>
    binaryComplementBorderedTranslatedCodeIndicator C base row *
      binaryComplementBorderedTranslatedCodeIndicator C base col

theorem binaryComplementBorderedTranslatedCodeMatrix_psd {n : Nat}
    (C : Finset (QaryWord 2 n)) (base : QaryWord 2 n) :
    RatPSD (binaryComplementBorderedTranslatedCodeMatrix C base) := by
  simpa [binaryComplementBorderedTranslatedCodeMatrix] using
    RatPSD.rankOne (binaryComplementBorderedTranslatedCodeIndicator C base)

/-- Average of bordered complement Gram matrices over all base words. -/
def binaryComplementBorderedTranslatedCodeAverageMatrix {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    Matrix (Option (QaryWord 2 n)) (Option (QaryWord 2 n)) Rat :=
  (((2 ^ n : Nat) : Rat)⁻¹) •
    (Finset.univ.sum (fun base : QaryWord 2 n =>
      binaryComplementBorderedTranslatedCodeMatrix C base))

theorem binaryComplementBorderedTranslatedCodeAverageMatrix_psd {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    RatPSD (binaryComplementBorderedTranslatedCodeAverageMatrix C) := by
  have hscale : 0 <= (((2 ^ n : Nat) : Rat)⁻¹) := by
    exact inv_nonneg.mpr (by exact_mod_cast Nat.zero_le (2 ^ n))
  unfold binaryComplementBorderedTranslatedCodeAverageMatrix
  exact RatPSD.smul hscale
    (RatPSD.sum Finset.univ
      (fun base : QaryWord 2 n =>
        binaryComplementBorderedTranslatedCodeMatrix C base)
      (fun base _ => binaryComplementBorderedTranslatedCodeMatrix_psd C base))

theorem binaryComplementBorderedTranslatedCodeAverageMatrix_none_none
    {n : Nat} (C : Finset (QaryWord 2 n)) :
    binaryComplementBorderedTranslatedCodeAverageMatrix C none none =
      1 - binaryZeroCoeff (binaryCodeCellX C) 0 := by
  classical
  let outside :=
    (Finset.univ.filter (fun base : QaryWord 2 n => base ∉ C))
  have hsum :
      (Finset.univ.sum (fun base : QaryWord 2 n =>
        binaryComplementBorderedTranslatedCodeMatrix C base none none)) =
        (outside.card : Rat) := by
    calc
      (Finset.univ.sum (fun base : QaryWord 2 n =>
          binaryComplementBorderedTranslatedCodeMatrix C base none none)) =
        Finset.univ.sum (fun base : QaryWord 2 n =>
          if base ∉ C then (1 : Rat) else 0) := by
          apply Finset.sum_congr rfl
          intro base _
          by_cases hbase : base ∈ C <;>
            simp [binaryComplementBorderedTranslatedCodeMatrix,
              binaryComplementBorderedTranslatedCodeIndicator, hbase]
      _ = (outside.card : Rat) := by
          rw [← Finset.natCast_card_filter
            (R := Rat)
            (p := fun base : QaryWord 2 n => base ∉ C)
            (s := (Finset.univ : Finset (QaryWord 2 n)))]
  have hin :
      (Finset.univ.filter (fun base : QaryWord 2 n => base ∈ C)) = C := by
    ext base
    simp
  have hpartition := Finset.card_filter_add_card_filter_not
    (s := (Finset.univ : Finset (QaryWord 2 n)))
    (p := fun base : QaryWord 2 n => base ∈ C)
  rw [hin] at hpartition
  have hcardRat :
      (C.card : Rat) + (outside.card : Rat) = ((2 ^ n : Nat) : Rat) := by
    have hcardNat :
        C.card + outside.card = (2 ^ n : Nat) := by
      simpa [outside, qaryWord_card] using hpartition
    exact_mod_cast hcardNat
  unfold binaryComplementBorderedTranslatedCodeAverageMatrix
  simp only [Matrix.smul_apply, smul_eq_mul, Matrix.sum_apply]
  rw [hsum, binaryCodeCellX_zeroCoeff_zero C]
  have hden : (((2 ^ n : Nat) : Rat) ≠ 0) := by
    exact_mod_cast (pow_ne_zero n (by norm_num : (2 : Nat) ≠ 0))
  field_simp [hden]
  linarith

/-- Reindex the bordered complement average by a coordinate permutation. -/
def binaryComplementBorderedTranslatedCodePermutedAverageMatrix {n : Nat}
    (C : Finset (QaryWord 2 n)) (sigma : Equiv.Perm (Fin n)) :
    Matrix (Option (QaryWord 2 n)) (Option (QaryWord 2 n)) Rat :=
  reindexMatrix (binaryBorderedWordPermEquiv sigma)
    (binaryComplementBorderedTranslatedCodeAverageMatrix C)

theorem binaryComplementBorderedTranslatedCodePermutedAverageMatrix_psd
    {n : Nat} (C : Finset (QaryWord 2 n)) (sigma : Equiv.Perm (Fin n)) :
    RatPSD
      (binaryComplementBorderedTranslatedCodePermutedAverageMatrix C sigma) := by
  unfold binaryComplementBorderedTranslatedCodePermutedAverageMatrix
  exact (RatPSD.reindex_iff (binaryBorderedWordPermEquiv sigma)
    (binaryComplementBorderedTranslatedCodeAverageMatrix C)).2
    (binaryComplementBorderedTranslatedCodeAverageMatrix_psd C)

/-- Coordinate-orbit average of the bordered complement matrices. -/
def binaryComplementBorderedTranslatedCodeOrbitAverageMatrix {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    Matrix (Option (QaryWord 2 n)) (Option (QaryWord 2 n)) Rat :=
  (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) •
    (Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
      binaryComplementBorderedTranslatedCodePermutedAverageMatrix C sigma))

theorem binaryComplementBorderedTranslatedCodeOrbitAverageMatrix_psd {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    RatPSD (binaryComplementBorderedTranslatedCodeOrbitAverageMatrix C) := by
  have hscale :
      0 <= (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) := by
    exact inv_nonneg.mpr
      (by exact_mod_cast Nat.zero_le (Fintype.card (Equiv.Perm (Fin n))))
  unfold binaryComplementBorderedTranslatedCodeOrbitAverageMatrix
  exact RatPSD.smul hscale
    (RatPSD.sum Finset.univ
      (fun sigma : Equiv.Perm (Fin n) =>
        binaryComplementBorderedTranslatedCodePermutedAverageMatrix C sigma)
      (fun sigma _ =>
        binaryComplementBorderedTranslatedCodePermutedAverageMatrix_psd C sigma))

theorem binaryComplementBorderedTranslatedCodeOrbitAverageMatrix_none_none
    {n : Nat} (C : Finset (QaryWord 2 n)) :
    binaryComplementBorderedTranslatedCodeOrbitAverageMatrix C none none =
      1 - binaryZeroCoeff (binaryCodeCellX C) 0 := by
  unfold binaryComplementBorderedTranslatedCodeOrbitAverageMatrix
  simp only [Matrix.smul_apply, smul_eq_mul, Matrix.sum_apply]
  calc
    (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) *
        Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
          binaryComplementBorderedTranslatedCodePermutedAverageMatrix C sigma none none) =
      (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) *
        Finset.univ.sum (fun _sigma : Equiv.Perm (Fin n) =>
          binaryComplementBorderedTranslatedCodeAverageMatrix C none none) := by
        congr 1
    _ =
      (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) *
        ((Fintype.card (Equiv.Perm (Fin n)) : Rat) *
          binaryComplementBorderedTranslatedCodeAverageMatrix C none none) := by
        rw [Finset.sum_const, nsmul_eq_mul]
        norm_num
    _ = binaryComplementBorderedTranslatedCodeAverageMatrix C none none := by
        have hcard :
            ((Fintype.card (Equiv.Perm (Fin n)) : Rat) ≠ 0) := by
          exact_mod_cast (Fintype.card_ne_zero : Fintype.card (Equiv.Perm (Fin n)) ≠ 0)
        field_simp [hcard]
    _ = 1 - binaryZeroCoeff (binaryCodeCellX C) 0 :=
        binaryComplementBorderedTranslatedCodeAverageMatrix_none_none C

theorem binaryComplementBorderedTranslatedCodeIndicator_none_mul_some
    {n : Nat} (C : Finset (QaryWord 2 n))
    (base u : QaryWord 2 n) :
    binaryComplementBorderedTranslatedCodeIndicator C base none *
        binaryComplementBorderedTranslatedCodeIndicator C base (some u) =
      binaryComplementTranslatedCodeIndicator C base u *
        binaryComplementTranslatedCodeIndicator C base u := by
  by_cases hbase : base ∈ C
  · simp [binaryComplementBorderedTranslatedCodeIndicator,
      binaryComplementTranslatedCodeIndicator, hbase]
  · by_cases hu : binaryXorWord base u ∈ C <;>
      simp [binaryComplementBorderedTranslatedCodeIndicator,
        binaryComplementTranslatedCodeIndicator, hbase, hu]

theorem binaryComplementBorderedTranslatedCodeOrbitAverageMatrix_some_some
    {n : Nat} (C : Finset (QaryWord 2 n))
    (u v : QaryWord 2 n) :
    binaryComplementBorderedTranslatedCodeOrbitAverageMatrix C
        (some u) (some v) =
      binaryComplementTranslatedCodeOrbitAverageMatrix C u v := by
  unfold binaryComplementBorderedTranslatedCodeOrbitAverageMatrix
  unfold binaryComplementTranslatedCodeOrbitAverageMatrix
  simp only [Matrix.smul_apply, smul_eq_mul, Matrix.sum_apply]
  congr 1
  apply Finset.sum_congr rfl
  intro sigma _
  unfold binaryComplementBorderedTranslatedCodePermutedAverageMatrix
  unfold binaryComplementTranslatedCodePermutedAverageMatrix
  unfold reindexMatrix binaryBorderedWordPermEquiv optionMapEquiv
  unfold binaryComplementBorderedTranslatedCodeAverageMatrix
  unfold binaryComplementTranslatedCodeAverageMatrix
  simp [Matrix.smul_apply, Matrix.sum_apply,
    binaryComplementBorderedTranslatedCodeMatrix,
    binaryComplementBorderedTranslatedCodeIndicator,
    binaryComplementTranslatedCodeMatrix]

theorem binaryComplementBorderedTranslatedCodeOrbitAverageMatrix_none_some
    {n : Nat} (C : Finset (QaryWord 2 n)) (u : QaryWord 2 n) :
    binaryComplementBorderedTranslatedCodeOrbitAverageMatrix C none (some u) =
      binaryComplementTranslatedCodeOrbitAverageMatrix C u u := by
  unfold binaryComplementBorderedTranslatedCodeOrbitAverageMatrix
  unfold binaryComplementTranslatedCodeOrbitAverageMatrix
  simp only [Matrix.smul_apply, smul_eq_mul, Matrix.sum_apply]
  congr 1
  apply Finset.sum_congr rfl
  intro sigma _
  unfold binaryComplementBorderedTranslatedCodePermutedAverageMatrix
  unfold binaryComplementTranslatedCodePermutedAverageMatrix
  unfold reindexMatrix binaryBorderedWordPermEquiv optionMapEquiv
  unfold binaryComplementBorderedTranslatedCodeAverageMatrix
  unfold binaryComplementTranslatedCodeAverageMatrix
  simp only [Matrix.smul_apply, smul_eq_mul, Matrix.sum_apply]
  congr 1
  apply Finset.sum_congr rfl
  intro base _
  exact binaryComplementBorderedTranslatedCodeIndicator_none_mul_some
    C base ((binaryWordPermEquiv sigma).symm u)

theorem binaryComplementBorderedTranslatedCodeOrbitAverageMatrix_some_none
    {n : Nat} (C : Finset (QaryWord 2 n)) (u : QaryWord 2 n) :
    binaryComplementBorderedTranslatedCodeOrbitAverageMatrix C (some u) none =
      binaryComplementTranslatedCodeOrbitAverageMatrix C u u := by
  unfold binaryComplementBorderedTranslatedCodeOrbitAverageMatrix
  unfold binaryComplementTranslatedCodeOrbitAverageMatrix
  simp only [Matrix.smul_apply, smul_eq_mul, Matrix.sum_apply]
  congr 1
  apply Finset.sum_congr rfl
  intro sigma _
  unfold binaryComplementBorderedTranslatedCodePermutedAverageMatrix
  unfold binaryComplementTranslatedCodePermutedAverageMatrix
  unfold reindexMatrix binaryBorderedWordPermEquiv optionMapEquiv
  unfold binaryComplementBorderedTranslatedCodeAverageMatrix
  unfold binaryComplementTranslatedCodeAverageMatrix
  simp only [Matrix.smul_apply, smul_eq_mul, Matrix.sum_apply]
  congr 1
  apply Finset.sum_congr rfl
  intro base _
  simpa [binaryComplementBorderedTranslatedCodeMatrix,
    binaryComplementTranslatedCodeMatrix, binaryBorderedWordPermEquiv,
    optionMapEquiv, mul_comm] using
    (binaryComplementBorderedTranslatedCodeIndicator_none_mul_some
      C base ((binaryWordPermEquiv sigma).symm u))

theorem binaryComplementBorderedTranslatedCodeOrbitAverageMatrix_eq_bordered
    {n : Nat} (C : Finset (QaryWord 2 n)) :
    binaryComplementBorderedTranslatedCodeOrbitAverageMatrix C =
      bordered (1 - binaryZeroCoeff (binaryCodeCellX C) 0)
        (binaryComplementTranslatedCodeOrbitAverageMatrix C) := by
  ext row col
  cases row <;> cases col <;>
    simp [bordered,
      binaryComplementBorderedTranslatedCodeOrbitAverageMatrix_none_none,
      binaryComplementBorderedTranslatedCodeOrbitAverageMatrix_none_some,
      binaryComplementBorderedTranslatedCodeOrbitAverageMatrix_some_none,
      binaryComplementBorderedTranslatedCodeOrbitAverageMatrix_some_some]

theorem binaryComplement_borderedTerwilliger_psd {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    RatPSD
      (bordered (1 - binaryZeroCoeff (binaryCodeCellX C) 0)
        (binaryTerwilligerMatrix
          (binaryComplementX (binaryCodeCellX C)))) := by
  have hpsd :=
    binaryComplementBorderedTranslatedCodeOrbitAverageMatrix_psd C
  rw [binaryComplementBorderedTranslatedCodeOrbitAverageMatrix_eq_bordered,
    binaryComplementTranslatedCodeOrbitAverageMatrix_eq_terwilliger] at hpsd
  exact hpsd

theorem binaryLengthThirteen_complementZeroBlock_eval_eq_congruence
    (C : Finset (QaryWord 2 13)) :
    MatrixLinExpr.eval (binaryComplementZeroBlockExpr 13) (binaryCodeCellX C) =
      congruenceMatrix binaryLengthThirteenBorderedKZeroTransform
        (bordered (1 - binaryZeroCoeff (binaryCodeCellX C) 0)
          (binaryTerwilligerMatrix
            (binaryComplementX (binaryCodeCellX C)))) := by
  have hlower :
      MatrixLinExpr.eval
          (binaryTableBlockMatrixExpr 13 binaryLengthThirteenBlockIndex0
            (binaryComplementCoeffExpr 13))
          (binaryCodeCellX C) =
        congruenceMatrix binaryLengthThirteenTableKZeroTransform
          (binaryTerwilligerMatrix
            (binaryComplementX (binaryCodeCellX C))) := by
    calc
      MatrixLinExpr.eval
          (binaryTableBlockMatrixExpr 13 binaryLengthThirteenBlockIndex0
            (binaryComplementCoeffExpr 13))
          (binaryCodeCellX C) =
        MatrixLinExpr.eval
          (binaryTableBlockMatrixExpr 13 binaryLengthThirteenBlockIndex0
            (fun source => LinExpr.var source))
          (binaryComplementX (binaryCodeCellX C)) := by
          ext row col
          rw [MatrixLinExpr.eval, MatrixLinExpr.eval]
          simp only [binaryTableBlockMatrixExpr]
          rw [binaryTableBlockEntryExpr_eq_binaryBlockEntryExpr_rev]
          rw [binaryTableBlockEntryExpr_eq_binaryBlockEntryExpr_rev]
          simp [binaryComplementCoeffExpr_eval]
      _ = congruenceMatrix binaryLengthThirteenTableKZeroTransform
          (binaryTerwilligerMatrix
            (binaryComplementX (binaryCodeCellX C))) :=
          binaryLengthThirteen_tableKZeroBlock_eval_eq_congruence
            (binaryComplementX (binaryCodeCellX C))
  ext row col
  cases row <;> cases col
  · simp [MatrixLinExpr.eval, binaryComplementZeroBlockExpr,
      congruenceMatrix, binaryLengthThirteenBorderedKZeroTransform,
      bordered]
  · rename_i coord
    simp [MatrixLinExpr.eval, binaryComplementZeroBlockExpr,
      binaryComplementBorderExpr,
      congruenceMatrix, binaryLengthThirteenBorderedKZeroTransform,
      bordered]
    simpa [binaryLengthThirteenTableKZeroTransform_apply,
      binaryTerwilligerMatrix] using
      (binaryLengthThirteen_complementKZero_border_sum C coord).symm
  · rename_i coord
    simp [MatrixLinExpr.eval, binaryComplementZeroBlockExpr,
      binaryComplementBorderExpr,
      congruenceMatrix, binaryLengthThirteenBorderedKZeroTransform,
      bordered]
    simpa [binaryLengthThirteenTableKZeroTransform_apply,
      binaryTerwilligerMatrix] using
      (binaryLengthThirteen_complementKZero_border_sum C coord).symm
  · rename_i row col
    have hentry := congrFun (congrFun hlower row) col
    simpa [MatrixLinExpr.eval, binaryComplementZeroBlockExpr,
      congruenceMatrix, binaryLengthThirteenBorderedKZeroTransform,
      bordered] using hentry

theorem binaryLengthThirteen_complementZeroBlock_codeCell_psd
    (C : Finset (QaryWord 2 13)) :
    RatPSD
      (MatrixLinExpr.eval (binaryComplementZeroBlockExpr 13)
        (binaryCodeCellX C)) := by
  rw [binaryLengthThirteen_complementZeroBlock_eval_eq_congruence]
  exact binaryLengthThirteen_borderedKZero_congruence_psd
    (binaryComplement_borderedTerwilliger_psd C)

/-- Bordered slack-weighted translated-code vector for one base word. -/
def binaryLasserreBorderedTranslatedCodeIndicator {n : Nat}
    (C : Finset (QaryWord 2 n)) (base : QaryWord 2 n) :
    Option (QaryWord 2 n) -> Rat
  | none => 1
  | some u => binaryTranslatedCodeIndicator C base u

/-- Rank-one bordered translated-code matrix weighted by valid-inequality slack. -/
def binaryLasserreBorderedTranslatedCodeMatrix {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 n)) (base : QaryWord 2 n) :
    Matrix (Option (QaryWord 2 n)) (Option (QaryWord 2 n)) Rat :=
  binaryValidLinearInequalitySlack lambda beta C base •
    (fun row col =>
      binaryLasserreBorderedTranslatedCodeIndicator C base row *
        binaryLasserreBorderedTranslatedCodeIndicator C base col)

theorem binaryLasserreBorderedTranslatedCodeMatrix_psd {n r : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (C : Finset (QaryWord 2 n)) (hC : CoversFinset C r)
    (base : QaryWord 2 n) :
    RatPSD (binaryLasserreBorderedTranslatedCodeMatrix lambda beta C base) := by
  unfold binaryLasserreBorderedTranslatedCodeMatrix
  exact RatPSD.smul
    (binaryValidLinearInequalitySlack_nonneg hvalid C hC base)
    (RatPSD.rankOne (binaryLasserreBorderedTranslatedCodeIndicator C base))

/-- Average of bordered Lasserre Gram matrices over all base words. -/
def binaryLasserreBorderedTranslatedCodeAverageMatrix {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 n)) :
    Matrix (Option (QaryWord 2 n)) (Option (QaryWord 2 n)) Rat :=
  (((2 ^ n : Nat) : Rat)⁻¹) •
    (Finset.univ.sum (fun base : QaryWord 2 n =>
      binaryLasserreBorderedTranslatedCodeMatrix lambda beta C base))

theorem binaryLasserreBorderedTranslatedCodeAverageMatrix_psd {n r : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (C : Finset (QaryWord 2 n)) (hC : CoversFinset C r) :
    RatPSD (binaryLasserreBorderedTranslatedCodeAverageMatrix
      lambda beta C) := by
  have hscale : 0 <= (((2 ^ n : Nat) : Rat)⁻¹) := by
    exact inv_nonneg.mpr (by exact_mod_cast Nat.zero_le (2 ^ n))
  unfold binaryLasserreBorderedTranslatedCodeAverageMatrix
  exact RatPSD.smul hscale
    (RatPSD.sum Finset.univ
      (fun base : QaryWord 2 n =>
        binaryLasserreBorderedTranslatedCodeMatrix lambda beta C base)
      (fun base _ =>
        binaryLasserreBorderedTranslatedCodeMatrix_psd hvalid C hC base))

theorem binaryLasserreBorderedTranslatedCodeAverageMatrix_none_none_lengthThirteen
    (lambda : Fin 14 -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 13)) :
    binaryLasserreBorderedTranslatedCodeAverageMatrix lambda beta C none none =
      (Finset.univ.sum (fun i : Fin 14 =>
        (Nat.choose 13 i.val : Rat) * lambda i)) *
        binaryZeroCoeff (binaryCodeCellX C) 0 - beta := by
  classical
  have hmatrix :
      Finset.univ.sum (fun base : QaryWord 2 13 =>
        binaryLasserreBorderedTranslatedCodeMatrix lambda beta C base none none) =
      Finset.univ.sum (fun base : QaryWord 2 13 =>
        binaryValidLinearInequalitySlack lambda beta C base) := by
    apply Finset.sum_congr rfl
    intro base _
    simp [binaryLasserreBorderedTranslatedCodeMatrix,
      binaryLasserreBorderedTranslatedCodeIndicator]
  have hslack :
      Finset.univ.sum (fun base : QaryWord 2 13 =>
        binaryValidLinearInequalitySlack lambda beta C base) =
      (C.card : Rat) *
          (Finset.univ.sum (fun i : Fin 14 =>
            lambda i * (Nat.choose 13 i.val : Rat))) -
        ((2 ^ 13 : Nat) : Rat) * beta := by
    unfold binaryValidLinearInequalitySlack
    calc
      (Finset.univ.sum (fun base : QaryWord 2 13 =>
          Finset.univ.sum
              (fun i : Fin 14 =>
                lambda i * (shellCount 2 13 C base i.val : Rat)) -
            beta)) =
        (Finset.univ.sum (fun base : QaryWord 2 13 =>
          Finset.univ.sum
              (fun i : Fin 14 =>
                lambda i * (shellCount 2 13 C base i.val : Rat)))) -
          Finset.univ.sum (fun _base : QaryWord 2 13 => beta) := by
          rw [Finset.sum_sub_distrib]
      _ =
        (Finset.univ.sum (fun i : Fin 14 =>
          Finset.univ.sum (fun base : QaryWord 2 13 =>
            lambda i * (shellCount 2 13 C base i.val : Rat)))) -
          ((2 ^ 13 : Nat) : Rat) * beta := by
          rw [Finset.sum_comm]
          simp [Finset.sum_const, nsmul_eq_mul]
      _ =
        (Finset.univ.sum (fun i : Fin 14 =>
          lambda i * ((C.card * sphereSize 2 13 i.val : Nat) : Rat))) -
          ((2 ^ 13 : Nat) : Rat) * beta := by
          congr 1
          apply Finset.sum_congr rfl
          intro i _
          rw [← Finset.mul_sum]
          congr 1
          exact_mod_cast sum_shellCount_over_space 2 13 i.val C
      _ =
        (C.card : Rat) *
            (Finset.univ.sum (fun i : Fin 14 =>
              lambda i * (Nat.choose 13 i.val : Rat))) -
          ((2 ^ 13 : Nat) : Rat) * beta := by
          congr 2
          calc
            Finset.univ.sum (fun i : Fin 14 =>
                lambda i * ((C.card * sphereSize 2 13 i.val : Nat) : Rat)) =
              Finset.univ.sum (fun i : Fin 14 =>
                (C.card : Rat) *
                  (lambda i * (Nat.choose 13 i.val : Rat))) := by
                apply Finset.sum_congr rfl
                intro i _
                simp [sphereSize]
                ring
            _ =
              (C.card : Rat) *
                (Finset.univ.sum (fun i : Fin 14 =>
                  lambda i * (Nat.choose 13 i.val : Rat))) := by
                rw [Finset.mul_sum]
  have hsum_comm :
      (Finset.univ.sum (fun i : Fin 14 =>
        lambda i * (Nat.choose 13 i.val : Rat))) =
      (Finset.univ.sum (fun i : Fin 14 =>
        (Nat.choose 13 i.val : Rat) * lambda i)) := by
    apply Finset.sum_congr rfl
    intro i _
    ring
  unfold binaryLasserreBorderedTranslatedCodeAverageMatrix
  simp only [Matrix.smul_apply, smul_eq_mul, Matrix.sum_apply]
  rw [hmatrix, hslack, hsum_comm, binaryCodeCellX_zeroCoeff_zero C]
  have hden : (((2 ^ 13 : Nat) : Rat) ≠ 0) := by
    norm_num
  field_simp [hden]

/-- Reindex the bordered Lasserre average by a coordinate permutation. -/
def binaryLasserreBorderedTranslatedCodePermutedAverageMatrix {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 n)) (sigma : Equiv.Perm (Fin n)) :
    Matrix (Option (QaryWord 2 n)) (Option (QaryWord 2 n)) Rat :=
  reindexMatrix (binaryBorderedWordPermEquiv sigma)
    (binaryLasserreBorderedTranslatedCodeAverageMatrix lambda beta C)

theorem binaryLasserreBorderedTranslatedCodePermutedAverageMatrix_psd
    {n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (C : Finset (QaryWord 2 n)) (hC : CoversFinset C r)
    (sigma : Equiv.Perm (Fin n)) :
    RatPSD
      (binaryLasserreBorderedTranslatedCodePermutedAverageMatrix
        lambda beta C sigma) := by
  unfold binaryLasserreBorderedTranslatedCodePermutedAverageMatrix
  exact (RatPSD.reindex_iff (binaryBorderedWordPermEquiv sigma)
    (binaryLasserreBorderedTranslatedCodeAverageMatrix lambda beta C)).2
    (binaryLasserreBorderedTranslatedCodeAverageMatrix_psd hvalid C hC)

/-- Coordinate-orbit average of the bordered Lasserre matrices. -/
def binaryLasserreBorderedTranslatedCodeOrbitAverageMatrix {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 n)) :
    Matrix (Option (QaryWord 2 n)) (Option (QaryWord 2 n)) Rat :=
  (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) •
    (Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
      binaryLasserreBorderedTranslatedCodePermutedAverageMatrix
        lambda beta C sigma))

theorem binaryLasserreBorderedTranslatedCodeOrbitAverageMatrix_psd {n r : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (C : Finset (QaryWord 2 n)) (hC : CoversFinset C r) :
    RatPSD
      (binaryLasserreBorderedTranslatedCodeOrbitAverageMatrix
        lambda beta C) := by
  have hscale :
      0 <= (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) := by
    exact inv_nonneg.mpr
      (by exact_mod_cast Nat.zero_le (Fintype.card (Equiv.Perm (Fin n))))
  unfold binaryLasserreBorderedTranslatedCodeOrbitAverageMatrix
  exact RatPSD.smul hscale
    (RatPSD.sum Finset.univ
      (fun sigma : Equiv.Perm (Fin n) =>
        binaryLasserreBorderedTranslatedCodePermutedAverageMatrix
          lambda beta C sigma)
      (fun sigma _ =>
        binaryLasserreBorderedTranslatedCodePermutedAverageMatrix_psd
          hvalid C hC sigma))

theorem binaryLasserreBorderedTranslatedCodeOrbitAverageMatrix_none_none_lengthThirteen
    (lambda : Fin 14 -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 13)) :
    binaryLasserreBorderedTranslatedCodeOrbitAverageMatrix lambda beta C none none =
      (Finset.univ.sum (fun i : Fin 14 =>
        (Nat.choose 13 i.val : Rat) * lambda i)) *
        binaryZeroCoeff (binaryCodeCellX C) 0 - beta := by
  unfold binaryLasserreBorderedTranslatedCodeOrbitAverageMatrix
  simp only [Matrix.smul_apply, smul_eq_mul, Matrix.sum_apply]
  calc
    (((Fintype.card (Equiv.Perm (Fin 13))) : Rat)⁻¹) *
        Finset.univ.sum (fun sigma : Equiv.Perm (Fin 13) =>
          binaryLasserreBorderedTranslatedCodePermutedAverageMatrix
            lambda beta C sigma none none) =
      (((Fintype.card (Equiv.Perm (Fin 13))) : Rat)⁻¹) *
        Finset.univ.sum (fun _sigma : Equiv.Perm (Fin 13) =>
          binaryLasserreBorderedTranslatedCodeAverageMatrix
            lambda beta C none none) := by
        congr 1
    _ =
      (((Fintype.card (Equiv.Perm (Fin 13))) : Rat)⁻¹) *
        ((Fintype.card (Equiv.Perm (Fin 13)) : Rat) *
          binaryLasserreBorderedTranslatedCodeAverageMatrix
            lambda beta C none none) := by
        rw [Finset.sum_const, nsmul_eq_mul]
        norm_num
    _ = binaryLasserreBorderedTranslatedCodeAverageMatrix
          lambda beta C none none := by
        have hcard :
            ((Fintype.card (Equiv.Perm (Fin 13)) : Rat) ≠ 0) := by
          exact_mod_cast (Fintype.card_ne_zero :
            Fintype.card (Equiv.Perm (Fin 13)) ≠ 0)
        field_simp [hcard]
    _ =
      (Finset.univ.sum (fun i : Fin 14 =>
        (Nat.choose 13 i.val : Rat) * lambda i)) *
        binaryZeroCoeff (binaryCodeCellX C) 0 - beta :=
        binaryLasserreBorderedTranslatedCodeAverageMatrix_none_none_lengthThirteen
          lambda beta C

theorem binaryLasserreBorderedTranslatedCodeIndicator_none_mul_some
    {n : Nat} (C : Finset (QaryWord 2 n))
    (base u : QaryWord 2 n) :
    binaryLasserreBorderedTranslatedCodeIndicator C base none *
        binaryLasserreBorderedTranslatedCodeIndicator C base (some u) =
      binaryTranslatedCodeIndicator C base u *
        binaryTranslatedCodeIndicator C base u := by
  by_cases hu : binaryXorWord base u ∈ C <;>
    simp [binaryLasserreBorderedTranslatedCodeIndicator,
      binaryTranslatedCodeIndicator, hu]

theorem binaryLasserreBorderedTranslatedCodeOrbitAverageMatrix_some_some
    {n : Nat} (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) :
    binaryLasserreBorderedTranslatedCodeOrbitAverageMatrix lambda beta C
        (some u) (some v) =
      binarySlackWeightedTranslatedCodeOrbitAverageMatrix lambda beta C u v := by
  unfold binaryLasserreBorderedTranslatedCodeOrbitAverageMatrix
  unfold binarySlackWeightedTranslatedCodeOrbitAverageMatrix
  simp only [Matrix.smul_apply, smul_eq_mul, Matrix.sum_apply]
  congr 1
  apply Finset.sum_congr rfl
  intro sigma _
  unfold binaryLasserreBorderedTranslatedCodePermutedAverageMatrix
  unfold binarySlackWeightedTranslatedCodePermutedAverageMatrix
  unfold reindexMatrix binaryBorderedWordPermEquiv optionMapEquiv
  unfold binaryLasserreBorderedTranslatedCodeAverageMatrix
  unfold binarySlackWeightedTranslatedCodeAverageMatrix
  simp [Matrix.smul_apply, Matrix.sum_apply,
    binaryLasserreBorderedTranslatedCodeMatrix,
    binaryLasserreBorderedTranslatedCodeIndicator,
    binarySlackWeightedTranslatedCodeMatrix,
    binaryTranslatedCodeMatrix]

theorem binaryLasserreBorderedTranslatedCodeOrbitAverageMatrix_none_some
    {n : Nat} (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 n)) (u : QaryWord 2 n) :
    binaryLasserreBorderedTranslatedCodeOrbitAverageMatrix lambda beta C
        none (some u) =
      binarySlackWeightedTranslatedCodeOrbitAverageMatrix lambda beta C u u := by
  unfold binaryLasserreBorderedTranslatedCodeOrbitAverageMatrix
  unfold binarySlackWeightedTranslatedCodeOrbitAverageMatrix
  simp only [Matrix.smul_apply, smul_eq_mul, Matrix.sum_apply]
  congr 1
  apply Finset.sum_congr rfl
  intro sigma _
  unfold binaryLasserreBorderedTranslatedCodePermutedAverageMatrix
  unfold binarySlackWeightedTranslatedCodePermutedAverageMatrix
  unfold reindexMatrix binaryBorderedWordPermEquiv optionMapEquiv
  unfold binaryLasserreBorderedTranslatedCodeAverageMatrix
  unfold binarySlackWeightedTranslatedCodeAverageMatrix
  simp only [Matrix.smul_apply, smul_eq_mul, Matrix.sum_apply]
  congr 1
  apply Finset.sum_congr rfl
  intro base _
  simp [binaryLasserreBorderedTranslatedCodeMatrix,
    binarySlackWeightedTranslatedCodeMatrix, binaryTranslatedCodeMatrix,
    binaryLasserreBorderedTranslatedCodeIndicator_none_mul_some]

theorem binaryLasserreBorderedTranslatedCodeOrbitAverageMatrix_some_none
    {n : Nat} (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 n)) (u : QaryWord 2 n) :
    binaryLasserreBorderedTranslatedCodeOrbitAverageMatrix lambda beta C
        (some u) none =
      binarySlackWeightedTranslatedCodeOrbitAverageMatrix lambda beta C u u := by
  unfold binaryLasserreBorderedTranslatedCodeOrbitAverageMatrix
  unfold binarySlackWeightedTranslatedCodeOrbitAverageMatrix
  simp only [Matrix.smul_apply, smul_eq_mul, Matrix.sum_apply]
  congr 1
  apply Finset.sum_congr rfl
  intro sigma _
  unfold binaryLasserreBorderedTranslatedCodePermutedAverageMatrix
  unfold binarySlackWeightedTranslatedCodePermutedAverageMatrix
  unfold reindexMatrix binaryBorderedWordPermEquiv optionMapEquiv
  unfold binaryLasserreBorderedTranslatedCodeAverageMatrix
  unfold binarySlackWeightedTranslatedCodeAverageMatrix
  simp only [Matrix.smul_apply, smul_eq_mul, Matrix.sum_apply]
  congr 1
  apply Finset.sum_congr rfl
  intro base _
  let u' := (binaryWordPermEquiv sigma).symm u
  change
    binaryValidLinearInequalitySlack lambda beta C base *
        (binaryLasserreBorderedTranslatedCodeIndicator C base (some u') *
          binaryLasserreBorderedTranslatedCodeIndicator C base none) =
      binaryValidLinearInequalitySlack lambda beta C base *
        (binaryTranslatedCodeIndicator C base u' *
          binaryTranslatedCodeIndicator C base u')
  rw [mul_comm (binaryLasserreBorderedTranslatedCodeIndicator C base (some u'))
    (binaryLasserreBorderedTranslatedCodeIndicator C base none)]
  rw [binaryLasserreBorderedTranslatedCodeIndicator_none_mul_some]

theorem binaryLasserreBorderedTranslatedCodeOrbitAverageMatrix_eq_bordered_lengthThirteen
    (lambda : Fin 14 -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 13)) :
    binaryLasserreBorderedTranslatedCodeOrbitAverageMatrix lambda beta C =
      bordered
        ((Finset.univ.sum (fun i : Fin 14 =>
          (Nat.choose 13 i.val : Rat) * lambda i)) *
          binaryZeroCoeff (binaryCodeCellX C) 0 - beta)
        (binarySlackWeightedTranslatedCodeOrbitAverageMatrix lambda beta C) := by
  ext row col
  cases row <;> cases col <;>
    simp [bordered,
      binaryLasserreBorderedTranslatedCodeOrbitAverageMatrix_none_none_lengthThirteen,
      binaryLasserreBorderedTranslatedCodeOrbitAverageMatrix_none_some,
      binaryLasserreBorderedTranslatedCodeOrbitAverageMatrix_some_none,
      binaryLasserreBorderedTranslatedCodeOrbitAverageMatrix_some_some]

theorem binaryLasserre_borderedTerwilliger_psd_lengthThirteen
    {lambda : Fin 14 -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality 2 13 1 lambda beta)
    (C : Finset (QaryWord 2 13)) (hC : CoversFinset C 1) :
    RatPSD
      (bordered
        ((Finset.univ.sum (fun i : Fin 14 =>
          (Nat.choose 13 i.val : Rat) * lambda i)) *
          binaryZeroCoeff (binaryCodeCellX C) 0 - beta)
        (binaryTerwilligerMatrix
          (binaryLasserreX lambda beta (binaryCodeCellX C)))) := by
  have hpsd :=
    binaryLasserreBorderedTranslatedCodeOrbitAverageMatrix_psd
      hvalid C hC
  rw [binaryLasserreBorderedTranslatedCodeOrbitAverageMatrix_eq_bordered_lengthThirteen,
    binarySlackWeightedTranslatedCodeOrbitAverageMatrix_eq_lasserreTerwilliger
      lambda beta C
      (binaryWeightedTranslatedPairShellOrbitAverageCardIdentity_holds
        lambda C)] at hpsd
  exact hpsd

theorem binaryLengthThirteen_lasserreZeroBlock_eval_eq_congruence
    (lambda : Fin 14 -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 13)) :
    MatrixLinExpr.eval (binaryLasserreZeroBlockExpr lambda beta)
        (binaryCodeCellX C) =
      congruenceMatrix binaryLengthThirteenBorderedKZeroTransform
        (bordered
          ((Finset.univ.sum (fun i : Fin 14 =>
            (Nat.choose 13 i.val : Rat) * lambda i)) *
            binaryZeroCoeff (binaryCodeCellX C) 0 - beta)
          (binaryTerwilligerMatrix
            (binaryLasserreX lambda beta (binaryCodeCellX C)))) := by
  have hlower :
      MatrixLinExpr.eval
          (binaryTableBlockMatrixExpr 13 binaryLengthThirteenBlockIndex0
            (binaryLasserreCoeffExpr lambda beta))
          (binaryCodeCellX C) =
        congruenceMatrix binaryLengthThirteenTableKZeroTransform
          (binaryTerwilligerMatrix
            (binaryLasserreX lambda beta (binaryCodeCellX C))) := by
    calc
      MatrixLinExpr.eval
          (binaryTableBlockMatrixExpr 13 binaryLengthThirteenBlockIndex0
            (binaryLasserreCoeffExpr lambda beta))
          (binaryCodeCellX C) =
        MatrixLinExpr.eval
          (binaryTableBlockMatrixExpr 13 binaryLengthThirteenBlockIndex0
            (fun source => LinExpr.var source))
          (binaryLasserreX lambda beta (binaryCodeCellX C)) := by
          ext row col
          rw [MatrixLinExpr.eval, MatrixLinExpr.eval]
          simp only [binaryTableBlockMatrixExpr]
          rw [binaryTableBlockEntryExpr_eq_binaryBlockEntryExpr_rev]
          rw [binaryTableBlockEntryExpr_eq_binaryBlockEntryExpr_rev]
          simp [binaryLasserreCoeffExpr_eval, binaryLasserreX]
      _ = congruenceMatrix binaryLengthThirteenTableKZeroTransform
          (binaryTerwilligerMatrix
            (binaryLasserreX lambda beta (binaryCodeCellX C))) :=
          binaryLengthThirteen_tableKZeroBlock_eval_eq_congruence
            (binaryLasserreX lambda beta (binaryCodeCellX C))
  ext row col
  cases row <;> cases col
  · simp [MatrixLinExpr.eval, binaryLasserreZeroBlockExpr,
      congruenceMatrix, binaryLengthThirteenBorderedKZeroTransform,
      bordered]
  · rename_i coord
    simp [MatrixLinExpr.eval, binaryLasserreZeroBlockExpr,
      binaryLasserreBorderExpr, binaryLasserreCoeffExpr_eval,
      congruenceMatrix, binaryLengthThirteenBorderedKZeroTransform,
      bordered]
    simpa [binaryLengthThirteenTableKZeroTransform_apply,
      binaryTerwilligerMatrix] using
      (binaryLengthThirteen_lasserreKZero_border_sum
        lambda beta C coord).symm
  · rename_i coord
    simp [MatrixLinExpr.eval, binaryLasserreZeroBlockExpr,
      binaryLasserreBorderExpr, binaryLasserreCoeffExpr_eval,
      congruenceMatrix, binaryLengthThirteenBorderedKZeroTransform,
      bordered]
    simpa [binaryLengthThirteenTableKZeroTransform_apply,
      binaryTerwilligerMatrix] using
      (binaryLengthThirteen_lasserreKZero_border_sum
        lambda beta C coord).symm
  · rename_i row col
    have hentry := congrFun (congrFun hlower row) col
    simpa [MatrixLinExpr.eval, binaryLasserreZeroBlockExpr,
      congruenceMatrix, binaryLengthThirteenBorderedKZeroTransform,
      bordered] using hentry

theorem binaryLengthThirteen_lasserreZeroBlock_codeCell_psd
    {lambda : Fin 14 -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality 2 13 1 lambda beta)
    (C : Finset (QaryWord 2 13)) (hC : CoversFinset C 1) :
    RatPSD
      (MatrixLinExpr.eval (binaryLasserreZeroBlockExpr lambda beta)
        (binaryCodeCellX C)) := by
  rw [binaryLengthThirteen_lasserreZeroBlock_eval_eq_congruence]
  exact binaryLengthThirteen_borderedKZero_congruence_psd
    (binaryLasserre_borderedTerwilliger_psd_lengthThirteen hvalid C hC)

end

end GijswijtPolak2025
end SDP
end CoveringCodes
