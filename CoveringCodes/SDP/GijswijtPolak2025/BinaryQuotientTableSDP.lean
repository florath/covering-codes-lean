import CoveringCodes.SDP.GijswijtPolak2025.BinaryTableSDP

/-!
# Binary quotient Table 1 SDP interface

The public Julia implementation solves the binary Table 1 SDP after quotienting
the full orbit variables by the paper's symmetry.  This file provides the
proof-carrying interface for those quotient certificates without committing to a
particular generated quotient enumeration.

The intended generated instance for `K_2(13,1)` uses `QVar = Fin 123`.
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

noncomputable section

/-- A finite quotient SDP model for the binary Table 1 constraints. -/
structure BinaryQuotientTableModel
    (n r : Nat) (QVar LinAtom Block : Type) (Idx : Block -> Type)
    [Fintype QVar] [Fintype LinAtom] [Fintype Block]
    [forall b : Block, Fintype (Idx b)] where
  objective : LinExpr QVar
  linearAtoms : LinAtom -> LinExpr QVar
  matrixAtoms : forall b : Block, Matrix (Idx b) (Idx b) (LinExpr QVar)

/--
A projection from the full Table 1 SDP variables to a finite quotient model.

The projection only has to be proved once for the generated Julia row/variable
ordering.  It is separate from the numerical dual certificate.
-/
structure BinaryQuotientTableBridge
    (n r : Nat) {QVar LinAtom Block : Type} {Idx : Block -> Type}
    [Fintype QVar] [Fintype LinAtom] [Fintype Block]
    [forall b : Block, Fintype (Idx b)]
    (model : BinaryQuotientTableModel n r QVar LinAtom Block Idx) where
  project : BinaryX n -> QVar -> Rat
  objective_eq :
    forall x : BinaryX n,
      BinaryTableConstraints n r x ->
        model.objective.eval (project x) = binaryReducedObjective n x
  constraints_of_table :
    forall x : BinaryX n,
      BinaryTableConstraints n r x ->
        SDPConstraints model.linearAtoms model.matrixAtoms (project x)

/-- Exact weighted-dual certificate for a finite quotient Table 1 SDP model. -/
structure BinaryQuotientTableDualCertificate
    (n r L : Nat) {QVar LinAtom Block : Type} {Idx WeightIdx : Block -> Type}
    [Fintype QVar] [Fintype LinAtom] [Fintype Block]
    [forall b : Block, Fintype (Idx b)]
    [forall b : Block, Fintype (WeightIdx b)]
    (model : BinaryQuotientTableModel n r QVar LinAtom Block Idx) where
  bound : Rat
  cubeThreshold : ((L - 1 : Nat) : Rat) ^ 3 < bound
  objectiveCertificate :
    SDPObjectiveLowerWeightedCertificate QVar LinAtom Block Idx WeightIdx
      model.linearAtoms model.matrixAtoms model.objective bound

/--
Exact weighted-dual certificate for a finite quotient Table 1 SDP model, with
an explicit normalized aggregate dual expression.
-/
structure BinaryQuotientTableExpressionDualCertificate
    (n r L : Nat) {QVar LinAtom Block : Type} {Idx WeightIdx : Block -> Type}
    [Fintype QVar] [Fintype LinAtom] [Fintype Block]
    [forall b : Block, Fintype (Idx b)]
    [forall b : Block, Fintype (WeightIdx b)]
    (model : BinaryQuotientTableModel n r QVar LinAtom Block Idx) where
  bound : Rat
  cubeThreshold : ((L - 1 : Nat) : Rat) ^ 3 < bound
  objectiveCertificate :
    SDPObjectiveLowerWeightedExpressionCertificate QVar LinAtom Block Idx WeightIdx
      model.linearAtoms model.matrixAtoms model.objective bound

def BinaryQuotientTableExpressionDualCertificate.toDualCertificate
    {n r L : Nat} {QVar LinAtom Block : Type} {Idx WeightIdx : Block -> Type}
    [Fintype QVar] [Fintype LinAtom] [Fintype Block]
    [forall b : Block, Fintype (Idx b)]
    [forall b : Block, Fintype (WeightIdx b)]
    {model : BinaryQuotientTableModel n r QVar LinAtom Block Idx}
    (cert : BinaryQuotientTableExpressionDualCertificate (WeightIdx := WeightIdx)
      n r L model) :
    BinaryQuotientTableDualCertificate (WeightIdx := WeightIdx) n r L model where
  bound := cert.bound
  cubeThreshold := cert.cubeThreshold
  objectiveCertificate := cert.objectiveCertificate.toWeightedCertificate

/-- Quotient weak duality transported back through the full Table 1 variables. -/
theorem binary_quotient_table_sdp_lower_bound
    {n r L : Nat} {QVar LinAtom Block : Type} {Idx WeightIdx : Block -> Type}
    [Fintype QVar] [Fintype LinAtom] [Fintype Block]
    [forall b : Block, Fintype (Idx b)]
    [forall b : Block, Fintype (WeightIdx b)]
    {model : BinaryQuotientTableModel n r QVar LinAtom Block Idx}
    (bridge : BinaryQuotientTableBridge n r model)
    (cert : BinaryQuotientTableDualCertificate (WeightIdx := WeightIdx) n r L model)
    (codeObjectiveBound :
      forall C : Finset (QaryWord 2 n),
        CoversFinset C r ->
          exists x : BinaryX n,
            BinaryTableConstraints n r x /\
              binaryReducedObjective n x <= (C.card : Rat) ^ 3) :
    QaryKLower 2 n r L := by
  apply lower_of_cube_objective_bound cert.cubeThreshold
  intro C hC
  rcases codeObjectiveBound C hC with ⟨x, hx, hobj⟩
  have hq :
      cert.bound <= model.objective.eval (bridge.project x) :=
    SDPObjectiveLowerWeightedCertificate.sound cert.objectiveCertificate
      (bridge.project x) (bridge.constraints_of_table x hx)
  rw [bridge.objective_eq x hx] at hq
  exact le_trans hq hobj

/--
Quotient weak duality for certificates that carry an explicit normalized dual
expression.
-/
theorem binary_quotient_table_sdp_lower_bound_expression
    {n r L : Nat} {QVar LinAtom Block : Type} {Idx WeightIdx : Block -> Type}
    [Fintype QVar] [Fintype LinAtom] [Fintype Block]
    [forall b : Block, Fintype (Idx b)]
    [forall b : Block, Fintype (WeightIdx b)]
    {model : BinaryQuotientTableModel n r QVar LinAtom Block Idx}
    (bridge : BinaryQuotientTableBridge n r model)
    (cert : BinaryQuotientTableExpressionDualCertificate (WeightIdx := WeightIdx)
      n r L model)
    (codeObjectiveBound :
      forall C : Finset (QaryWord 2 n),
        CoversFinset C r ->
          exists x : BinaryX n,
            BinaryTableConstraints n r x /\
              binaryReducedObjective n x <= (C.card : Rat) ^ 3) :
    QaryKLower 2 n r L :=
  binary_quotient_table_sdp_lower_bound bridge cert.toDualCertificate
    codeObjectiveBound

end

end GijswijtPolak2025
end SDP
end CoveringCodes
