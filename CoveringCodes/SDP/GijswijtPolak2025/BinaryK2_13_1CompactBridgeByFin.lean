import CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryK2_13_1.CompactBridge

/-!
# Compact K2 byFin bridge helper

This non-generated helper keeps the sampled full-sparse semantic wrapper out of
the generated `CompactBridge.lean` overwrite zone.
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

noncomputable section

theorem binaryK2_13_1CompactDualExpression_semantic_of_fullSparseDataByFin
    (dualExpression : LinExpr binaryK2_13_1QVar)
    (fullData : SparseLinExprData 560)
    (hconstCompact :
      dualExpression.const = (linExprOfSparseData fullData).const)
    (hcoeffCompact : forall q : binaryK2_13_1QVar,
      dualExpression.coeff q =
        fullData.coeffSum (binaryLengthThirteenQuotientFiber q))
    (hfull :
      linExprOfSparseDataByFin binaryLengthThirteenOrbitToFin fullData =
        binaryK2_13_1FullDualExpression) :
    dualExpression =
      sdpDualExpression
        binaryK2_13_1CompactLinearAtomExpr
        binaryK2_13_1CompactMatrixAtomExpr
        binaryK2_13_1LinearMultiplier
        0
        binaryK2_13_1DualMatrix := by
  apply binaryK2_13_1CompactDualExpression_semantic_of_fullSparseData
    dualExpression fullData hconstCompact hcoeffCompact
  · have h := congrArg (fun e => e.const) hfull
    simpa [linExprOfSparseDataByFin, linExprOfSparseData] using h
  · intro idx
    have h := congrArg (fun e => e.coeff (binaryLengthThirteenOrbitOfFin idx)) hfull
    simpa [linExprOfSparseDataByFin, linExprOfSparseData,
      binaryLengthThirteenOrbitToFin_ofFin] using h

end

end GijswijtPolak2025
end SDP
end CoveringCodes
