import CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryK2_13_1.Bridge
import CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryK2_13_1.Multiplier
import CoveringCodes.SDP.GijswijtPolak2025.Certificates.SparseLinExpr

/-!
# Compact quotient bridge for `(q,n,r) = (2,13,1)`

This file defines quotient scalar and matrix atoms through the finite
length-thirteen expressions from `Bridge.lean`.  The finite expressions are
definitionally computable for generated coefficient checks, while the bridge
proofs below relate them back to the generic full binary Table 1 constraints.
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

noncomputable section

set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

theorem binaryLengthThirteenQuotientLinExpr_constExpr (a : Rat) :
    binaryLengthThirteenQuotientLinExpr
      (LinExpr.constExpr (BinaryOrbitIndex 13) a) =
      LinExpr.constExpr binaryK2_13_1QVar a := by
  rw [LinExpr.mk.injEq]
  constructor
  · funext q
    unfold binaryLengthThirteenQuotientLinExpr LinExpr.constExpr
    simp
  · rfl

theorem binaryLengthThirteenQuotientLinExpr_add
    (e f : LinExpr (BinaryOrbitIndex 13)) :
    binaryLengthThirteenQuotientLinExpr (LinExpr.add e f) =
      LinExpr.add (binaryLengthThirteenQuotientLinExpr e)
        (binaryLengthThirteenQuotientLinExpr f) := by
  rw [LinExpr.mk.injEq]
  constructor
  · funext q
    unfold binaryLengthThirteenQuotientLinExpr LinExpr.add
    dsimp
    rw [Finset.sum_add_distrib]
  · rfl

theorem binaryLengthThirteenQuotientLinExpr_smul
    (a : Rat) (e : LinExpr (BinaryOrbitIndex 13)) :
    binaryLengthThirteenQuotientLinExpr (LinExpr.smul a e) =
      LinExpr.smul a (binaryLengthThirteenQuotientLinExpr e) := by
  rw [LinExpr.mk.injEq]
  constructor
  · funext q
    unfold binaryLengthThirteenQuotientLinExpr LinExpr.smul
    dsimp
    rw [Finset.mul_sum]
  · rfl

theorem binaryLengthThirteenQuotientLinExpr_sum {α : Type}
    (s : Finset α) (f : α -> LinExpr (BinaryOrbitIndex 13)) :
    binaryLengthThirteenQuotientLinExpr (LinExpr.sum s f) =
      LinExpr.sum s (fun a => binaryLengthThirteenQuotientLinExpr (f a)) := by
  rw [LinExpr.mk.injEq]
  constructor
  · funext q
    unfold binaryLengthThirteenQuotientLinExpr LinExpr.sum
    dsimp
    rw [Finset.sum_comm]
  · unfold binaryLengthThirteenQuotientLinExpr LinExpr.sum
    dsimp

theorem binaryLengthThirteenQuotientLinExpr_innerExpr
    {ι : Type} [Fintype ι]
    (S : Matrix ι ι Rat)
    (M : Matrix ι ι (LinExpr (BinaryOrbitIndex 13))) :
    binaryLengthThirteenQuotientLinExpr (MatrixLinExpr.innerExpr S M) =
      MatrixLinExpr.innerExpr S
        (fun row col => binaryLengthThirteenQuotientLinExpr (M row col)) := by
  unfold MatrixLinExpr.innerExpr
  rw [binaryLengthThirteenQuotientLinExpr_sum]
  apply congrArg
  funext row
  rw [binaryLengthThirteenQuotientLinExpr_sum]
  apply congrArg
  funext col
  rw [binaryLengthThirteenQuotientLinExpr_smul]

theorem binaryLengthThirteenQuotientLinExpr_sdpDualExpression
    {LinAtom Block : Type} {Idx : Block -> Type}
    [Fintype LinAtom] [Fintype Block] [forall b : Block, Fintype (Idx b)]
    (linearAtoms : LinAtom -> LinExpr (BinaryOrbitIndex 13))
    (matrixAtoms : forall b : Block,
      Matrix (Idx b) (Idx b) (LinExpr (BinaryOrbitIndex 13)))
    (linearMultiplier : LinAtom -> Rat)
    (slack : Rat)
    (dualMatrix : forall b : Block, Matrix (Idx b) (Idx b) Rat) :
    binaryLengthThirteenQuotientLinExpr
      (sdpDualExpression linearAtoms matrixAtoms linearMultiplier slack dualMatrix) =
      sdpDualExpression
        (fun a => binaryLengthThirteenQuotientLinExpr (linearAtoms a))
        (fun b row col =>
          binaryLengthThirteenQuotientLinExpr (matrixAtoms b row col))
        linearMultiplier slack dualMatrix := by
  unfold sdpDualExpression
  rw [binaryLengthThirteenQuotientLinExpr_add]
  rw [binaryLengthThirteenQuotientLinExpr_constExpr]
  rw [binaryLengthThirteenQuotientLinExpr_add]
  have hlinear :
      binaryLengthThirteenQuotientLinExpr
          (LinExpr.sum Finset.univ fun a =>
            LinExpr.smul (linearMultiplier a) (linearAtoms a)) =
        LinExpr.sum Finset.univ fun a =>
          LinExpr.smul (linearMultiplier a)
            (binaryLengthThirteenQuotientLinExpr (linearAtoms a)) := by
    rw [binaryLengthThirteenQuotientLinExpr_sum]
    apply congrArg
    funext a
    rw [binaryLengthThirteenQuotientLinExpr_smul]
  have hmatrix :
      binaryLengthThirteenQuotientLinExpr
          (LinExpr.sum Finset.univ fun b =>
            MatrixLinExpr.innerExpr (dualMatrix b) (matrixAtoms b)) =
        LinExpr.sum Finset.univ fun b =>
          MatrixLinExpr.innerExpr (dualMatrix b)
            (fun row col =>
              binaryLengthThirteenQuotientLinExpr (matrixAtoms b row col)) := by
    rw [binaryLengthThirteenQuotientLinExpr_sum]
    apply congrArg
    funext b
    rw [binaryLengthThirteenQuotientLinExpr_innerExpr]
  rw [hlinear, hmatrix]

def binaryK2_13_1CompactLinearAtomExpr :
    binaryK2_13_1LinAtom -> LinExpr binaryK2_13_1QVar :=
  fun atom =>
    binaryLengthThirteenQuotientLinExpr
      (binaryLengthThirteenTableScalarAtomExprFin
        (binaryK2_13_1FullScalarAtom atom))

def binaryK2_13_1MatrixAtomCoordEquiv : forall b : binaryK2_13_1Block,
    (binaryK2_13_1FullMatrixAtom b).Coord ≃ binaryK2_13_1BlockCoord b
  | ⟨0, _⟩ => Equiv.refl (Fin 14)
  | ⟨1, _⟩ => Equiv.refl (Fin 12)
  | ⟨2, _⟩ => Equiv.refl (Fin 10)
  | ⟨3, _⟩ => Equiv.refl (Fin 8)
  | ⟨4, _⟩ => Equiv.refl (Fin 6)
  | ⟨5, _⟩ => Equiv.refl (Fin 4)
  | ⟨6, _⟩ => Equiv.refl (Fin 2)
  | ⟨7, _⟩ => binaryK2_13_1BorderCoordEquiv
  | ⟨8, _⟩ => Equiv.refl (Fin 12)
  | ⟨9, _⟩ => Equiv.refl (Fin 10)
  | ⟨10, _⟩ => Equiv.refl (Fin 8)
  | ⟨11, _⟩ => Equiv.refl (Fin 6)
  | ⟨12, _⟩ => Equiv.refl (Fin 4)
  | ⟨13, _⟩ => Equiv.refl (Fin 2)
  | ⟨14, _⟩ => binaryK2_13_1BorderCoordEquiv
  | ⟨15, _⟩ => Equiv.refl (Fin 12)
  | ⟨16, _⟩ => Equiv.refl (Fin 10)
  | ⟨17, _⟩ => Equiv.refl (Fin 8)
  | ⟨18, _⟩ => Equiv.refl (Fin 6)
  | ⟨19, _⟩ => Equiv.refl (Fin 4)
  | ⟨20, _⟩ => Equiv.refl (Fin 2)
  | ⟨21, _⟩ => binaryK2_13_1BorderCoordEquiv
  | ⟨22, _⟩ => Equiv.refl (Fin 12)
  | ⟨23, _⟩ => Equiv.refl (Fin 10)
  | ⟨24, _⟩ => Equiv.refl (Fin 8)
  | ⟨25, _⟩ => Equiv.refl (Fin 6)
  | ⟨26, _⟩ => Equiv.refl (Fin 4)
  | ⟨27, _⟩ => Equiv.refl (Fin 2)
  | ⟨m + 28, h⟩ => by omega

def binaryK2_13_1CompactMatrixAtomExpr (b : binaryK2_13_1Block) :
    Matrix (binaryK2_13_1BlockCoord b) (binaryK2_13_1BlockCoord b)
      (LinExpr binaryK2_13_1QVar) :=
  fun row col =>
    binaryLengthThirteenQuotientLinExpr
      ((binaryLengthThirteenTableMatrixAtomExprFin
        (binaryK2_13_1FullMatrixAtom b))
        ((binaryK2_13_1MatrixAtomCoordEquiv b).symm row)
        ((binaryK2_13_1MatrixAtomCoordEquiv b).symm col))

theorem binaryK2_13_1CompactLinearAtoms_of_table
    (x : BinaryX 13) (hx : BinaryTableConstraints 13 1 x) :
    LinearConstraints binaryK2_13_1CompactLinearAtomExpr
      (binaryK2_13_1Project x) := by
  intro atom
  unfold binaryK2_13_1CompactLinearAtomExpr
  rw [binaryK2_13_1QuotientLinExpr_eval_project_eq _ x hx]
  rw [binaryLengthThirteenTableScalarAtomExprFin_eval_eq]
  exact hx.1 (binaryK2_13_1FullScalarAtom atom)

theorem binaryK2_13_1CompactMatrixAtoms_of_table
    (x : BinaryX 13) (hx : BinaryTableConstraints 13 1 x) :
    forall b : binaryK2_13_1Block,
      RatPSD (MatrixLinExpr.eval (binaryK2_13_1CompactMatrixAtomExpr b)
        (binaryK2_13_1Project x)) := by
  intro b
  let e := binaryK2_13_1MatrixAtomCoordEquiv b
  have hpsd : RatPSD (reindexMatrix e
      (MatrixLinExpr.eval
        (binaryTableMatrixAtomExpr (n := 13) (r := 1)
          (binaryK2_13_1FullMatrixAtom b)) x)) := by
    exact (RatPSD.reindex_iff e
      (MatrixLinExpr.eval
        (binaryTableMatrixAtomExpr (n := 13) (r := 1)
          (binaryK2_13_1FullMatrixAtom b)) x)).mpr
      (hx.2 (binaryK2_13_1FullMatrixAtom b))
  convert hpsd using 2
  ext row col
  change (binaryK2_13_1CompactMatrixAtomExpr b row col).eval
      (binaryK2_13_1Project x) =
    ((binaryTableMatrixAtomExpr (n := 13) (r := 1)
      (binaryK2_13_1FullMatrixAtom b)) (e.symm row) (e.symm col)).eval x
  unfold binaryK2_13_1CompactMatrixAtomExpr
  rw [binaryK2_13_1QuotientLinExpr_eval_project_eq _ x hx]
  rw [binaryLengthThirteenTableMatrixAtomExprFin_eval_eq]

def binaryK2_13_1CompactModel :
    BinaryQuotientTableModel 13 1 binaryK2_13_1QVar binaryK2_13_1LinAtom
      binaryK2_13_1Block binaryK2_13_1BlockCoord where
  objective := binaryK2_13_1Objective
  linearAtoms := binaryK2_13_1CompactLinearAtomExpr
  matrixAtoms := binaryK2_13_1CompactMatrixAtomExpr

def binaryK2_13_1CompactBridge :
    BinaryQuotientTableBridge 13 1 binaryK2_13_1CompactModel where
  project := binaryK2_13_1Project
  objective_eq := by
    intro x hx
    exact binaryK2_13_1Objective_eval_eq x hx
  constraints_of_table := by
    intro x hx
    exact ⟨binaryK2_13_1CompactLinearAtoms_of_table x hx,
      binaryK2_13_1CompactMatrixAtoms_of_table x hx⟩

def binaryK2_13_1FullLinearAtomExpr
    (atom : binaryK2_13_1LinAtom) : LinExpr (BinaryOrbitIndex 13) :=
  binaryLengthThirteenTableScalarAtomExprFin
    (binaryK2_13_1FullScalarAtom atom)

def binaryK2_13_1FullMatrixAtomExpr (b : binaryK2_13_1Block) :
    Matrix (binaryK2_13_1BlockCoord b) (binaryK2_13_1BlockCoord b)
      (LinExpr (BinaryOrbitIndex 13)) :=
  fun row col =>
    (binaryLengthThirteenTableMatrixAtomExprFin
      (binaryK2_13_1FullMatrixAtom b))
      ((binaryK2_13_1MatrixAtomCoordEquiv b).symm row)
      ((binaryK2_13_1MatrixAtomCoordEquiv b).symm col)

def binaryK2_13_1FullDualExpression : LinExpr (BinaryOrbitIndex 13) :=
  sdpDualExpression
    binaryK2_13_1FullLinearAtomExpr
    binaryK2_13_1FullMatrixAtomExpr
    binaryK2_13_1LinearMultiplier
    0
    binaryK2_13_1DualMatrix

theorem binaryK2_13_1CompactDualExpression_eq_quotientFull :
    sdpDualExpression
      binaryK2_13_1CompactLinearAtomExpr
      binaryK2_13_1CompactMatrixAtomExpr
      binaryK2_13_1LinearMultiplier
      0
      binaryK2_13_1DualMatrix =
      binaryLengthThirteenQuotientLinExpr
        binaryK2_13_1FullDualExpression := by
  rw [binaryK2_13_1FullDualExpression]
  rw [binaryLengthThirteenQuotientLinExpr_sdpDualExpression]
  rfl

theorem binaryK2_13_1CompactDualExpression_const_eq_full :
    (sdpDualExpression
      binaryK2_13_1CompactLinearAtomExpr
      binaryK2_13_1CompactMatrixAtomExpr
      binaryK2_13_1LinearMultiplier
      0
      binaryK2_13_1DualMatrix).const =
      binaryK2_13_1FullDualExpression.const := by
  rw [binaryK2_13_1CompactDualExpression_eq_quotientFull]
  rfl

theorem binaryK2_13_1CompactDualExpression_coeff_eq_fullFiber
    (q : binaryK2_13_1QVar) :
    (sdpDualExpression
      binaryK2_13_1CompactLinearAtomExpr
      binaryK2_13_1CompactMatrixAtomExpr
      binaryK2_13_1LinearMultiplier
      0
      binaryK2_13_1DualMatrix).coeff q =
      (binaryLengthThirteenQuotientFiber q).sum
        (fun idx =>
          binaryK2_13_1FullDualExpression.coeff
            (binaryLengthThirteenOrbitOfFin idx)) := by
  rw [binaryK2_13_1CompactDualExpression_eq_quotientFull]
  rfl

theorem binaryK2_13_1CompactDualExpression_const_semantic_of_fullFiber
    (dualExpression : LinExpr binaryK2_13_1QVar)
    (hconst : dualExpression.const = binaryK2_13_1FullDualExpression.const) :
    dualExpression.const =
      (sdpDualExpression
        binaryK2_13_1CompactLinearAtomExpr
        binaryK2_13_1CompactMatrixAtomExpr
        binaryK2_13_1LinearMultiplier
        0
        binaryK2_13_1DualMatrix).const := by
  rw [binaryK2_13_1CompactDualExpression_const_eq_full]
  exact hconst

theorem binaryK2_13_1CompactDualExpression_coeff_semantic_of_fullFiber
    (dualExpression : LinExpr binaryK2_13_1QVar)
    (hcoeff : forall q : binaryK2_13_1QVar,
      dualExpression.coeff q =
        (binaryLengthThirteenQuotientFiber q).sum
          (fun idx =>
            binaryK2_13_1FullDualExpression.coeff
              (binaryLengthThirteenOrbitOfFin idx)))
    (q : binaryK2_13_1QVar) :
    dualExpression.coeff q =
      (sdpDualExpression
        binaryK2_13_1CompactLinearAtomExpr
        binaryK2_13_1CompactMatrixAtomExpr
        binaryK2_13_1LinearMultiplier
        0
        binaryK2_13_1DualMatrix).coeff q := by
  rw [binaryK2_13_1CompactDualExpression_coeff_eq_fullFiber q]
  exact hcoeff q

theorem binaryK2_13_1CompactDualExpression_semantic_of_fullFiber
    (dualExpression : LinExpr binaryK2_13_1QVar)
    (hconst : dualExpression.const = binaryK2_13_1FullDualExpression.const)
    (hcoeff : forall q : binaryK2_13_1QVar,
      dualExpression.coeff q =
        (binaryLengthThirteenQuotientFiber q).sum
          (fun idx =>
            binaryK2_13_1FullDualExpression.coeff
              (binaryLengthThirteenOrbitOfFin idx))) :
    dualExpression =
      sdpDualExpression
        binaryK2_13_1CompactLinearAtomExpr
        binaryK2_13_1CompactMatrixAtomExpr
        binaryK2_13_1LinearMultiplier
        0
        binaryK2_13_1DualMatrix := by
  rw [binaryK2_13_1CompactDualExpression_eq_quotientFull]
  rw [LinExpr.mk.injEq]
  constructor
  · funext q
    exact hcoeff q
  · exact hconst

theorem binaryK2_13_1CompactDualExpression_semantic_of_fullSparseData
    (dualExpression : LinExpr binaryK2_13_1QVar)
    (fullData : SparseLinExprData 560)
    (hconstCompact :
      dualExpression.const = (linExprOfSparseData fullData).const)
    (hcoeffCompact : forall q : binaryK2_13_1QVar,
      dualExpression.coeff q =
        fullData.coeffSum (binaryLengthThirteenQuotientFiber q))
    (hconstFull :
      (linExprOfSparseData fullData).const =
        binaryK2_13_1FullDualExpression.const)
    (hcoeffFull : forall idx : Fin 560,
      (linExprOfSparseData fullData).coeff idx =
        binaryK2_13_1FullDualExpression.coeff
          (binaryLengthThirteenOrbitOfFin idx)) :
    dualExpression =
      sdpDualExpression
        binaryK2_13_1CompactLinearAtomExpr
        binaryK2_13_1CompactMatrixAtomExpr
        binaryK2_13_1LinearMultiplier
        0
        binaryK2_13_1DualMatrix := by
  apply binaryK2_13_1CompactDualExpression_semantic_of_fullFiber
  · exact hconstCompact.trans hconstFull
  · intro q
    calc
      dualExpression.coeff q =
          fullData.coeffSum (binaryLengthThirteenQuotientFiber q) := hcoeffCompact q
      _ = (binaryLengthThirteenQuotientFiber q).sum
            (fun idx => (linExprOfSparseData fullData).coeff idx) := by
              exact SparseLinExprData.coeffSum_eq_sum_coeff
                fullData (binaryLengthThirteenQuotientFiber q)
      _ = (binaryLengthThirteenQuotientFiber q).sum
            (fun idx =>
              binaryK2_13_1FullDualExpression.coeff
                (binaryLengthThirteenOrbitOfFin idx)) := by
              apply Finset.sum_congr rfl
              intro idx _
              exact hcoeffFull idx

end

end GijswijtPolak2025
end SDP
end CoveringCodes
