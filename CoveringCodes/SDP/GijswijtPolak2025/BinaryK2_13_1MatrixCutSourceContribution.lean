import CoveringCodes.SDP.GijswijtPolak2025.BinaryK2_13_1MatrixCutDirect
import CoveringCodes.SDP.GijswijtPolak2025.Certificates.Dual

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

def binaryLengthThirteenMatrixCutAtomCoeffDirect
    (ineq : BinaryTableInequality) (cut : Fin 4)
    (source target : BinaryOrbitIndex 13) : Rat :=
  let lambda := binaryTableLambda 13 1 ineq
  let beta := binaryTableBeta 13 1 ineq
  match cut.val with
  | 0 =>
      binaryLengthThirteenMatrixCutLambdaFast lambda source target -
        beta * (binaryZeroCoeffExpr 13 source.i).coeff target
  | 1 =>
      binaryLengthThirteenMatrixCutLhs2CoeffDirect lambda source target -
        beta * ((binaryZeroCoeffExpr 13 0).coeff target -
          (binaryZeroCoeffExpr 13 source.i).coeff target)
  | 2 =>
      binaryLengthThirteenMatrixCutLhs3CoeffDirect lambda source target -
        beta * ((binaryZeroCoeffExpr 13 0).coeff target -
          (binaryZeroCoeffExpr 13 source.i).coeff target)
  | _ =>
      binaryLengthThirteenMatrixCutLhs4CoeffDirect lambda source target -
        beta * ((-2) * (binaryZeroCoeffExpr 13 0).coeff target +
          (binaryZeroCoeffExpr 13 source.i).coeff target)

theorem binaryLengthThirteenTableScalarMatrixCutAtomExprFin_coeff_direct
    (ineq : BinaryTableInequality) (cut : Fin 4)
    (source target : BinaryOrbitIndex 13) :
    (binaryLengthThirteenTableScalarAtomExprFin
      (BinaryTableScalarAtom.matrixCut ineq cut source)).coeff target =
      binaryLengthThirteenMatrixCutAtomCoeffDirect ineq cut source target := by
  fin_cases cut <;>
    simp [binaryLengthThirteenMatrixCutAtomCoeffDirect,
      binaryLengthThirteenTableScalarAtomExprFin,
      binaryLengthThirteenMatrixCutLhs1ExprFin,
      binaryLengthThirteenMatrixCutLhs2ExprFin_coeff_direct,
      binaryLengthThirteenMatrixCutLhs3ExprFin_coeff_direct,
      binaryLengthThirteenMatrixCutLhs4ExprFin_coeff_direct,
      LinExpr.sub, LinExpr.add, LinExpr.smul, LinExpr.constExpr] <;>
    ring

def binaryLengthThirteenMatrixCutSourceContribution
    (ineq : BinaryTableInequality) (source : BinaryOrbitIndex 13)
    (m : Fin 4 -> Rat) : LinExpr (BinaryOrbitIndex 13) :=
  LinExpr.sum Finset.univ (fun cut : Fin 4 =>
    LinExpr.smul (m cut)
      (binaryLengthThirteenTableScalarAtomExprFin
        (BinaryTableScalarAtom.matrixCut ineq cut source)))

theorem binaryLengthThirteenMatrixCutSourceContribution_coeff_direct
    (ineq : BinaryTableInequality) (source target : BinaryOrbitIndex 13)
    (m : Fin 4 -> Rat) :
    (binaryLengthThirteenMatrixCutSourceContribution ineq source m).coeff
        target =
      (Finset.univ : Finset (Fin 4)).sum (fun cut =>
        m cut *
          binaryLengthThirteenMatrixCutAtomCoeffDirect ineq cut source target) := by
  unfold binaryLengthThirteenMatrixCutSourceContribution
  simp [LinExpr.sum, LinExpr.smul,
    binaryLengthThirteenTableScalarMatrixCutAtomExprFin_coeff_direct]

theorem binaryLengthThirteenMatrixCutSourceContribution_eq_sumFinRange_of_shift
    {scalarCount start : Nat}
    (multiplier : Fin scalarCount -> Rat)
    (fullExpr : Fin scalarCount -> LinExpr (BinaryOrbitIndex 13))
    (ineq : BinaryTableInequality) (source : BinaryOrbitIndex 13)
    (weight : Fin 4 -> Rat)
    (hstop : start + 4 <= scalarCount)
    (hmul : forall cut : Fin 4,
      multiplier ((LinExpr.finShiftEmbedding scalarCount start 4 hstop) cut) =
        weight cut)
    (hexpr : forall cut : Fin 4,
      fullExpr ((LinExpr.finShiftEmbedding scalarCount start 4 hstop) cut) =
        binaryLengthThirteenTableScalarAtomExprFin
          (BinaryTableScalarAtom.matrixCut ineq cut source)) :
    binaryLengthThirteenMatrixCutSourceContribution ineq source weight =
      LinExpr.sumFinRange
        (fun atom : Fin scalarCount =>
          LinExpr.smul (multiplier atom) (fullExpr atom))
        start (start + 4) := by
  unfold binaryLengthThirteenMatrixCutSourceContribution
  exact LinExpr.sum_smul_eq_sumFinRange_of_shift
    multiplier
    fullExpr
    weight
    (fun cut : Fin 4 =>
      binaryLengthThirteenTableScalarAtomExprFin
        (BinaryTableScalarAtom.matrixCut ineq cut source))
    hstop
    hmul
    hexpr

end GijswijtPolak2025
end SDP
end CoveringCodes
