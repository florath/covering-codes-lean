import CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryK2_13_1.Bridge

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

def binaryLengthThirteenMatrixCutLhs2CoeffDirect
    (lambda : Fin 14 -> Rat) (source target : BinaryOrbitIndex 13) : Rat :=
  (Finset.univ : Finset (Fin 560)).sum (fun idx =>
    let orbit := binaryLengthThirteenOrbitOfFin idx
    binaryLengthThirteenMatrixCutLambdaFast lambda source orbit *
      ((binaryZeroCoeffExpr 13 orbit.j).coeff target -
        if target = orbit then 1 else 0))

theorem binaryLengthThirteenMatrixCutLhs2ExprFin_coeff_direct
    (lambda : Fin 14 -> Rat) (source target : BinaryOrbitIndex 13) :
    (binaryLengthThirteenMatrixCutLhs2ExprFin lambda source).coeff target =
      binaryLengthThirteenMatrixCutLhs2CoeffDirect lambda source target := by
  unfold binaryLengthThirteenMatrixCutLhs2CoeffDirect
  unfold binaryLengthThirteenMatrixCutLhs2ExprFin
  simp [LinExpr.sum, LinExpr.smul, LinExpr.sub, LinExpr.add, LinExpr.var]
  apply Finset.sum_congr rfl
  intro idx _
  by_cases h : target = binaryLengthThirteenOrbitOfFin idx
  · rw [if_pos h, if_pos h]
    ring
  · rw [if_neg h, if_neg h]
    ring

def binaryLengthThirteenMatrixCutLhs3CoeffDirect
    (lambda : Fin 14 -> Rat) (source target : BinaryOrbitIndex 13) : Rat :=
  (Finset.univ : Finset (Fin 560)).sum (fun idx =>
    let orbit := binaryLengthThirteenOrbitOfFin idx
    binaryLengthThirteenMatrixCutLambdaFast lambda source orbit *
      ((binaryZeroCoeffExpr 13 (binaryOrbitDistanceIndex orbit)).coeff target -
        if target = orbit then 1 else 0))

theorem binaryLengthThirteenMatrixCutLhs3ExprFin_coeff_direct
    (lambda : Fin 14 -> Rat) (source target : BinaryOrbitIndex 13) :
    (binaryLengthThirteenMatrixCutLhs3ExprFin lambda source).coeff target =
      binaryLengthThirteenMatrixCutLhs3CoeffDirect lambda source target := by
  unfold binaryLengthThirteenMatrixCutLhs3CoeffDirect
  unfold binaryLengthThirteenMatrixCutLhs3ExprFin
  simp [LinExpr.sum, LinExpr.smul, LinExpr.sub, LinExpr.add, LinExpr.var]
  apply Finset.sum_congr rfl
  intro idx _
  by_cases h : target = binaryLengthThirteenOrbitOfFin idx
  · rw [if_pos h, if_pos h]
    ring
  · rw [if_neg h, if_neg h]
    ring

def binaryLengthThirteenMatrixCutLhs4CoeffDirect
    (lambda : Fin 14 -> Rat) (source target : BinaryOrbitIndex 13) : Rat :=
  (Finset.univ : Finset (Fin 560)).sum (fun idx =>
    let orbit := binaryLengthThirteenOrbitOfFin idx
    binaryLengthThirteenMatrixCutLambdaFast lambda source orbit *
      ((binaryZeroCoeffExpr 13 0).coeff target -
        (binaryZeroCoeffExpr 13 orbit.j).coeff target -
        (binaryZeroCoeffExpr 13 (binaryOrbitDistanceIndex orbit)).coeff target +
        if target = orbit then 1 else 0))

theorem binaryLengthThirteenMatrixCutLhs4ExprFin_coeff_direct
    (lambda : Fin 14 -> Rat) (source target : BinaryOrbitIndex 13) :
    (binaryLengthThirteenMatrixCutLhs4ExprFin lambda source).coeff target =
      binaryLengthThirteenMatrixCutLhs4CoeffDirect lambda source target := by
  unfold binaryLengthThirteenMatrixCutLhs4CoeffDirect
  unfold binaryLengthThirteenMatrixCutLhs4ExprFin
  unfold binaryLengthThirteenMatrixCutLhs4TargetExprFin
  simp [LinExpr.sum, LinExpr.smul, LinExpr.sub, LinExpr.add, LinExpr.var]
  apply Finset.sum_congr rfl
  intro idx _
  by_cases h : target = binaryLengthThirteenOrbitOfFin idx
  · rw [if_pos h]
    ring
  · rw [if_neg h]
    ring

end GijswijtPolak2025
end SDP
end CoveringCodes
