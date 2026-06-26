import CoveringCodes.SDP.GijswijtPolak2025.BinaryTableCodeCell
import CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryK2_13_1.Instance

/-!
# Code-cell certificate boundary for `K_2(13,1) >= 607`

This file connects the generated exact quotient certificate for `(2,13,1)` to
the reusable full-table code-cell feasibility certificate.
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

noncomputable section

/--
The generated quotient certificate proves `K_2(13,1) >= 607` once every
radius-one binary covering code has a full Table 1 feasible code-cell vector.
-/
theorem binaryK2_13_1_lower_of_codeCellTableCertificates
    (certs :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 -> BinaryCodeCellTableConstraintCertificate 13 1 C) :
    QaryKLower 2 13 1 607 := by
  exact binaryK2_13_1_lower_of_codeCellTableConstraints
    (fun C hC => (certs C hC).toTableConstraints)

/--
K2-facing intrinsic full-table boundary.  This is the smallest current
certificate target: universal code-cell counting supplies the basic scalar
facts, and the generated quotient certificate consumes the resulting Table 1
feasibility theorem.
-/
theorem binaryK2_13_1_lower_of_intrinsicTableCodeCellCertificates
    (certs :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          BinaryCodeCellTableIntrinsicConstraintCertificate 13 1 C) :
    QaryKLower 2 13 1 607 := by
  apply binaryK2_13_1_lower_of_codeCellTableCertificates
  intro C hC
  exact (certs C hC).toTableConstraintCertificate

/--
Variant of the intrinsic full-table boundary where the primal code-cell PSD
field is supplied by a binary block-diagonalization certificate.
-/
theorem binaryK2_13_1_lower_of_tableCodeCellBlockDiagonalizationCertificates
    (blockCert :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          BinaryBlockDiagonalizationCertificate (binaryCodeCellX C))
    (complementZero :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          RatPSD (MatrixLinExpr.eval (binaryComplementZeroBlockExpr 13) (binaryCodeCellX C)))
    (complementPositive :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 -> BinaryComplementConstraints (binaryCodeCellX C))
    (lasserreZero :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          forall ineq : BinaryTableInequality,
            RatPSD (MatrixLinExpr.eval
              (binaryLasserreZeroBlockExpr
                (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq))
              (binaryCodeCellX C)))
    (lasserre :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          forall ineq : BinaryTableInequality,
            BinaryLasserreConstraints
              (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq)
              (binaryCodeCellX C))
    (matrixCuts :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          forall ineq : BinaryTableInequality,
            BinaryMatrixCutConstraints
              (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq)
              (binaryCodeCellX C)) :
    QaryKLower 2 13 1 607 := by
  apply binaryK2_13_1_lower_of_intrinsicTableCodeCellCertificates
  intro C hC
  exact BinaryCodeCellTableIntrinsicConstraintCertificate.ofBlockDiagonalization
    (blockCert C hC) (complementZero C hC) (complementPositive C hC)
    (lasserreZero C hC) (lasserre C hC) (matrixCuts C hC)

/--
Scaled block-diagonalization variant of
`binaryK2_13_1_lower_of_tableCodeCellBlockDiagonalizationCertificates`.
-/
theorem binaryK2_13_1_lower_of_tableCodeCellScaledBlockDiagonalizationCertificates
    (scale : BinaryBlockIndex 13 -> Rat)
    (blockCert :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          BinaryBlockDiagonalizationScaledMatrixCertificate scale (binaryCodeCellX C))
    (complementZero :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          RatPSD (MatrixLinExpr.eval (binaryComplementZeroBlockExpr 13) (binaryCodeCellX C)))
    (complementPositive :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 -> BinaryComplementConstraints (binaryCodeCellX C))
    (lasserreZero :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          forall ineq : BinaryTableInequality,
            RatPSD (MatrixLinExpr.eval
              (binaryLasserreZeroBlockExpr
                (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq))
              (binaryCodeCellX C)))
    (lasserre :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          forall ineq : BinaryTableInequality,
            BinaryLasserreConstraints
              (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq)
              (binaryCodeCellX C))
    (matrixCuts :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          forall ineq : BinaryTableInequality,
            BinaryMatrixCutConstraints
              (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq)
              (binaryCodeCellX C)) :
    QaryKLower 2 13 1 607 := by
  apply binaryK2_13_1_lower_of_intrinsicTableCodeCellCertificates
  intro C hC
  exact BinaryCodeCellTableIntrinsicConstraintCertificate.ofScaledBlockDiagonalization
    scale (blockCert C hC) (complementZero C hC) (complementPositive C hC)
    (lasserreZero C hC) (lasserre C hC) (matrixCuts C hC)

/--
K2-facing full-table boundary where positive primal, complement, and Lasserre
blocks are supplied as block-diagonalization certificates.  The universal
code-cell orbit-average identities turn those certificates into the PSD fields;
the bordered zero blocks and scalar matrix cuts remain explicit obligations.
-/
theorem binaryK2_13_1_lower_of_tableCodeCellBlockDiagonalizationCertificateData
    (primalCert :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          BinaryBlockDiagonalizationCertificate (binaryCodeCellX C))
    (complementZero :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          RatPSD (MatrixLinExpr.eval (binaryComplementZeroBlockExpr 13) (binaryCodeCellX C)))
    (complementCert :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          BinaryBlockDiagonalizationCertificate
            (binaryComplementX (binaryCodeCellX C)))
    (lasserreZero :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          forall ineq : BinaryTableInequality,
            RatPSD (MatrixLinExpr.eval
              (binaryLasserreZeroBlockExpr
                (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq))
              (binaryCodeCellX C)))
    (lasserreCert :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          forall ineq : BinaryTableInequality,
            BinaryBlockDiagonalizationCertificate
              (binaryLasserreX
                (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq)
                (binaryCodeCellX C)))
    (matrixCuts :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          forall ineq : BinaryTableInequality,
            BinaryMatrixCutConstraints
              (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq)
              (binaryCodeCellX C)) :
    QaryKLower 2 13 1 607 := by
  apply binaryK2_13_1_lower_of_intrinsicTableCodeCellCertificates
  intro C hC
  exact BinaryCodeCellTableIntrinsicConstraintCertificate.ofBlockDiagonalizationCertificates
    binaryTable_13_1_inequality_valid hC (primalCert C hC)
    (complementZero C hC) (complementCert C hC) (lasserreZero C hC)
    (lasserreCert C hC) (matrixCuts C hC)

/--
Scaled variant of
`binaryK2_13_1_lower_of_tableCodeCellBlockDiagonalizationCertificateData`.
-/
theorem binaryK2_13_1_lower_of_tableCodeCellScaledBlockDiagonalizationCertificateData
    (primalScale : BinaryBlockIndex 13 -> Rat)
    (complementScale : BinaryBlockIndex 13 -> Rat)
    (lasserreScale : BinaryTableInequality -> BinaryBlockIndex 13 -> Rat)
    (primalCert :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          BinaryBlockDiagonalizationScaledMatrixCertificate primalScale
            (binaryCodeCellX C))
    (complementZero :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          RatPSD (MatrixLinExpr.eval (binaryComplementZeroBlockExpr 13) (binaryCodeCellX C)))
    (complementCert :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          BinaryBlockDiagonalizationScaledMatrixCertificate complementScale
            (binaryComplementX (binaryCodeCellX C)))
    (lasserreZero :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          forall ineq : BinaryTableInequality,
            RatPSD (MatrixLinExpr.eval
              (binaryLasserreZeroBlockExpr
                (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq))
              (binaryCodeCellX C)))
    (lasserreCert :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          forall ineq : BinaryTableInequality,
            BinaryBlockDiagonalizationScaledMatrixCertificate
              (lasserreScale ineq)
              (binaryLasserreX
                (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq)
                (binaryCodeCellX C)))
    (matrixCuts :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          forall ineq : BinaryTableInequality,
            BinaryMatrixCutConstraints
              (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq)
              (binaryCodeCellX C)) :
    QaryKLower 2 13 1 607 := by
  apply binaryK2_13_1_lower_of_intrinsicTableCodeCellCertificates
  intro C hC
  exact BinaryCodeCellTableIntrinsicConstraintCertificate.ofScaledBlockDiagonalizationCertificates
    binaryTable_13_1_inequality_valid hC primalScale complementScale
    lasserreScale (primalCert C hC) (complementZero C hC)
    (complementCert C hC) (lasserreZero C hC)
    (lasserreCert C hC) (matrixCuts C hC)

/--
K2-facing full-table boundary using one-way scaled compression certificates.
This is the certificate shape needed by the length-13 Schrijver block data:
the generated congruence proves that each exported block is a scaled
compression of a PSD Terwilliger matrix, without needing an impossible
right-inverse from the compressed block space to all binary words.
-/
theorem binaryK2_13_1_lower_of_tableCodeCellScaledCompressionCertificateData
    (primalScale : BinaryBlockIndex 13 -> Rat)
    (complementScale : BinaryBlockIndex 13 -> Rat)
    (lasserreScale : BinaryTableInequality -> BinaryBlockIndex 13 -> Rat)
    (primalCert :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          BinaryBlockDiagonalizationScaledCompressionCertificate primalScale
            (binaryCodeCellX C))
    (complementZero :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          RatPSD (MatrixLinExpr.eval (binaryComplementZeroBlockExpr 13) (binaryCodeCellX C)))
    (complementCert :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          BinaryBlockDiagonalizationScaledCompressionCertificate complementScale
            (binaryComplementX (binaryCodeCellX C)))
    (lasserreZero :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          forall ineq : BinaryTableInequality,
            RatPSD (MatrixLinExpr.eval
              (binaryLasserreZeroBlockExpr
                (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq))
              (binaryCodeCellX C)))
    (lasserreCert :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          forall ineq : BinaryTableInequality,
            BinaryBlockDiagonalizationScaledCompressionCertificate
              (lasserreScale ineq)
              (binaryLasserreX
                (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq)
                (binaryCodeCellX C)))
    (matrixCuts :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          forall ineq : BinaryTableInequality,
            BinaryMatrixCutConstraints
              (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq)
              (binaryCodeCellX C)) :
    QaryKLower 2 13 1 607 := by
  apply binaryK2_13_1_lower_of_intrinsicTableCodeCellCertificates
  intro C hC
  exact BinaryCodeCellTableIntrinsicConstraintCertificate.ofScaledCompressionCertificates
    binaryTable_13_1_inequality_valid hC primalScale complementScale
    lasserreScale (primalCert C hC) (complementZero C hC)
    (complementCert C hC) (lasserreZero C hC)
    (lasserreCert C hC) (matrixCuts C hC)

/--
K2-facing full-table boundary using blockwise one-way scaled compression
certificates.  This is the preferred shape for the length-13 exporter: each
Schrijver block has its own congruence certificate, and no cross-block zero
identity is required.
-/
theorem binaryK2_13_1_lower_of_tableCodeCellScaledBlockCompressionCertificateData
    (primalScale : BinaryBlockIndex 13 -> Rat)
    (complementScale : BinaryBlockIndex 13 -> Rat)
    (lasserreScale : BinaryTableInequality -> BinaryBlockIndex 13 -> Rat)
    (primalCert :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          BinaryBlockDiagonalizationScaledBlockCompressionCertificate primalScale
            (binaryCodeCellX C))
    (complementZero :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          RatPSD (MatrixLinExpr.eval (binaryComplementZeroBlockExpr 13) (binaryCodeCellX C)))
    (complementCert :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          BinaryBlockDiagonalizationScaledBlockCompressionCertificate complementScale
            (binaryComplementX (binaryCodeCellX C)))
    (lasserreZero :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          forall ineq : BinaryTableInequality,
            RatPSD (MatrixLinExpr.eval
              (binaryLasserreZeroBlockExpr
                (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq))
              (binaryCodeCellX C)))
    (lasserreCert :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          forall ineq : BinaryTableInequality,
            BinaryBlockDiagonalizationScaledBlockCompressionCertificate
              (lasserreScale ineq)
              (binaryLasserreX
                (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq)
                (binaryCodeCellX C)))
    (matrixCuts :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          forall ineq : BinaryTableInequality,
            BinaryMatrixCutConstraints
              (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq)
              (binaryCodeCellX C)) :
    QaryKLower 2 13 1 607 := by
  apply binaryK2_13_1_lower_of_intrinsicTableCodeCellCertificates
  intro C hC
  exact BinaryCodeCellTableIntrinsicConstraintCertificate.ofScaledBlockCompressionCertificates
    binaryTable_13_1_inequality_valid hC primalScale complementScale
    lasserreScale (primalCert C hC) (complementZero C hC)
    (complementCert C hC) (lasserreZero C hC)
    (lasserreCert C hC) (matrixCuts C hC)

/--
K2-facing reduced-certificate boundary: the generated quotient certificate is
enough once the sphere and van Wee reduced code-cell certificates are proved,
together with the bordered Table 1 PSD constraints.
-/
theorem binaryK2_13_1_lower_of_reducedCodeCellCertificates
    (sphere :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          BinaryCodeCellReducedConstraintCertificate 13
            (binaryTableLambda 13 1 BinaryTableInequality.sphere)
            (binaryTableBeta 13 1 BinaryTableInequality.sphere) C)
    (vanWee :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          BinaryCodeCellReducedConstraintCertificate 13
            (binaryTableLambda 13 1 BinaryTableInequality.vanWee)
            (binaryTableBeta 13 1 BinaryTableInequality.vanWee) C)
    (complementZero :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          RatPSD (MatrixLinExpr.eval (binaryComplementZeroBlockExpr 13) (binaryCodeCellX C)))
    (complementPositive :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 -> BinaryComplementConstraints (binaryCodeCellX C))
    (lasserreZero :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          forall ineq : BinaryTableInequality,
            RatPSD (MatrixLinExpr.eval
              (binaryLasserreZeroBlockExpr
                (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq))
              (binaryCodeCellX C))) :
    QaryKLower 2 13 1 607 := by
  apply binaryK2_13_1_lower_of_codeCellTableCertificates
  intro C hC
  exact BinaryCodeCellTableConstraintCertificate.ofReducedCertificates
    (sphere C hC) (vanWee C hC) (complementZero C hC)
    (complementPositive C hC) (lasserreZero C hC)

/--
Same K2 boundary using intrinsic reduced-code-cell certificates, so the
universal fiber-cardinality proof is not a remaining case-specific obligation.
-/
theorem binaryK2_13_1_lower_of_intrinsicCodeCellCertificates
    (sphere :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          BinaryCodeCellIntrinsicReducedConstraintCertificate 13
            (binaryTableLambda 13 1 BinaryTableInequality.sphere)
            (binaryTableBeta 13 1 BinaryTableInequality.sphere) C)
    (vanWee :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          BinaryCodeCellIntrinsicReducedConstraintCertificate 13
            (binaryTableLambda 13 1 BinaryTableInequality.vanWee)
            (binaryTableBeta 13 1 BinaryTableInequality.vanWee) C)
    (complementZero :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          RatPSD (MatrixLinExpr.eval (binaryComplementZeroBlockExpr 13) (binaryCodeCellX C)))
    (complementPositive :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 -> BinaryComplementConstraints (binaryCodeCellX C))
    (lasserreZero :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          forall ineq : BinaryTableInequality,
            RatPSD (MatrixLinExpr.eval
              (binaryLasserreZeroBlockExpr
                (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq))
              (binaryCodeCellX C))) :
    QaryKLower 2 13 1 607 := by
  apply binaryK2_13_1_lower_of_codeCellTableCertificates
  intro C hC
  exact BinaryCodeCellTableConstraintCertificate.ofIntrinsicCertificates
    (sphere C hC) (vanWee C hC) (complementZero C hC)
    (complementPositive C hC) (lasserreZero C hC)

end

end GijswijtPolak2025
end SDP
end CoveringCodes
