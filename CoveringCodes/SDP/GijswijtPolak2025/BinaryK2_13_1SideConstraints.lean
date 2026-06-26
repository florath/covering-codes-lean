import CoveringCodes.SDP.GijswijtPolak2025.BinaryK2_13_1CodeCell
import CoveringCodes.SDP.GijswijtPolak2025.BinaryLengthThirteenBlockCompressionBridge
import CoveringCodes.SDP.GijswijtPolak2025.BinaryMatrixCutsCodeCell
import CoveringCodes.SDP.GijswijtPolak2025.BinaryK2_13_1ZeroBlocks

/-!
# Side-constraint boundary for `K_2(13,1) >= 607`

This file isolates the remaining non-compression obligations needed after the
length-13 block-compression certificate has been closed.
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

noncomputable section

/--
The remaining code-cell obligations for the block-compression route to
`K_2(13,1) >= 607`.

The primal, complement-positive, and Lasserre-positive PSD blocks are supplied
by the reusable length-13 block-compression certificate.  The bordered zero
blocks are closed in `BinaryK2_13_1ZeroBlocks`, so this proposition keeps only
the scalar matrix cuts explicit.
-/
def BinaryK2_13_1CodeCellSideConstraints : Prop :=
  forall C : Finset (QaryWord 2 13),
    CoversFinset C 1 ->
      (forall ineq : BinaryTableInequality,
        BinaryMatrixCutConstraints
          (binaryTableLambda 13 1 ineq)
          (binaryTableBeta 13 1 ineq)
          (binaryCodeCellX C))

/-- Universal code-cell side constraints for the `K_2(13,1)` route. -/
theorem binaryK2_13_1_codeCellSideConstraints :
    BinaryK2_13_1CodeCellSideConstraints := by
  intro C hC ineq
  exact binaryCodeCellX_matrixCuts_universal
    (binaryTable_13_1_inequality_valid ineq) C hC

/--
Close the generated `K_2(13,1)` lower-bound path from the remaining
side-constraint provider.
-/
theorem binaryK2_13_1_lower_of_codeCellSideConstraints
    (side : BinaryK2_13_1CodeCellSideConstraints) :
    QaryKLower 2 13 1 607 := by
  refine
    binaryK2_13_1_lower_of_tableCodeCellScaledBlockCompressionCertificateData
      binaryLengthThirteenBlockScale
      binaryLengthThirteenBlockScale
      (fun _ineq => binaryLengthThirteenBlockScale)
      ?primalCert ?complementZero ?complementCert
      ?lasserreZero ?lasserreCert ?matrixCuts
  · intro C _hC
    exact binaryLengthThirteenScaledBlockCompressionCertificate
      (binaryCodeCellX C)
  · intro C _hC
    exact binaryLengthThirteen_complementZeroBlock_codeCell_psd C
  · intro C _hC
    exact binaryLengthThirteenScaledBlockCompressionCertificate
      (binaryComplementX (binaryCodeCellX C))
  · intro C hC ineq
    exact binaryLengthThirteen_lasserreZeroBlock_codeCell_psd
      (binaryTable_13_1_inequality_valid ineq) C hC
  · intro C _hC ineq
    exact binaryLengthThirteenScaledBlockCompressionCertificate
      (binaryLasserreX
        (binaryTableLambda 13 1 ineq)
        (binaryTableBeta 13 1 ineq)
        (binaryCodeCellX C))
  · intro C hC ineq
    exact side C hC ineq

end

end GijswijtPolak2025
end SDP
end CoveringCodes
