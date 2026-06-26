import CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryK2_13_1.Bridge
import CoveringCodes.SDP.GijswijtPolak2025.Certificates.Dual

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

def binaryLengthThirteenNonnegativeSourceAtomCoeffDirect
    (source target : BinaryOrbitIndex 13) : Rat :=
  if target = source then 1 else 0

theorem binaryLengthThirteenTableScalarNonnegativeAtomExprFin_coeff_direct
    (source target : BinaryOrbitIndex 13) :
    (binaryLengthThirteenTableScalarAtomExprFin
      (BinaryTableScalarAtom.nonneg source)).coeff target =
      binaryLengthThirteenNonnegativeSourceAtomCoeffDirect source target := by
  simp [binaryLengthThirteenTableScalarAtomExprFin,
    binaryLengthThirteenNonnegativeSourceAtomCoeffDirect, LinExpr.var]

def binaryLengthThirteenNonnegativeSourceContribution
    (source : BinaryOrbitIndex 13) (m : Fin 1 -> Rat) :
    LinExpr (BinaryOrbitIndex 13) :=
  LinExpr.sum Finset.univ (fun idx : Fin 1 =>
    LinExpr.smul (m idx)
      (binaryLengthThirteenTableScalarAtomExprFin
        (BinaryTableScalarAtom.nonneg source)))

theorem binaryLengthThirteenNonnegativeSourceContribution_coeff_direct
    (source target : BinaryOrbitIndex 13) (m : Fin 1 -> Rat) :
    (binaryLengthThirteenNonnegativeSourceContribution source m).coeff
        target =
      (Finset.univ : Finset (Fin 1)).sum (fun idx =>
        m idx *
          binaryLengthThirteenNonnegativeSourceAtomCoeffDirect source target) := by
  unfold binaryLengthThirteenNonnegativeSourceContribution
  simp [LinExpr.sum, LinExpr.smul,
    binaryLengthThirteenTableScalarNonnegativeAtomExprFin_coeff_direct]

theorem binaryLengthThirteenNonnegativeSourceContribution_eq_sumFinRange_of_shift
    {scalarCount start : Nat}
    (multiplier : Fin scalarCount -> Rat)
    (fullExpr : Fin scalarCount -> LinExpr (BinaryOrbitIndex 13))
    (source : BinaryOrbitIndex 13) (weight : Fin 1 -> Rat)
    (hstop : start + 1 <= scalarCount)
    (hmul : forall idx : Fin 1,
      multiplier ((LinExpr.finShiftEmbedding scalarCount start 1 hstop) idx) =
        weight idx)
    (hexpr : forall idx : Fin 1,
      fullExpr ((LinExpr.finShiftEmbedding scalarCount start 1 hstop) idx) =
        binaryLengthThirteenTableScalarAtomExprFin
          (BinaryTableScalarAtom.nonneg source)) :
    binaryLengthThirteenNonnegativeSourceContribution source weight =
      LinExpr.sumFinRange
        (fun atom : Fin scalarCount =>
          LinExpr.smul (multiplier atom) (fullExpr atom))
        start (start + 1) := by
  unfold binaryLengthThirteenNonnegativeSourceContribution
  exact LinExpr.sum_smul_eq_sumFinRange_of_shift
    multiplier
    fullExpr
    weight
    (fun _ : Fin 1 =>
      binaryLengthThirteenTableScalarAtomExprFin
        (BinaryTableScalarAtom.nonneg source))
    hstop
    hmul
    hexpr

def binaryLengthThirteenBasicSourceAtom
    (source : BinaryOrbitIndex 13) : Fin 3 -> BinaryTableScalarAtom 13 1
  | ⟨0, _⟩ => BinaryTableScalarAtom.diagonalUpper source
  | ⟨1, _⟩ => BinaryTableScalarAtom.basicTriangleLower source
  | _ => BinaryTableScalarAtom.basicDistanceUpper source

def binaryLengthThirteenBasicSourceAtomCoeffDirect
    (idx : Fin 3) (source target : BinaryOrbitIndex 13) : Rat :=
  match idx.val with
  | 0 =>
      (binaryDiagonalCoeffExpr 13 source.i).coeff target -
        (if target = source then 1 else 0)
  | 1 =>
      ((if target = source then 1 else 0) -
          (binaryZeroCoeffExpr 13 source.i).coeff target) +
        ((binaryZeroCoeffExpr 13 0).coeff target -
          (binaryZeroCoeffExpr 13 (binaryOrbitDistanceIndex source)).coeff target)
  | _ =>
      (binaryZeroCoeffExpr 13 (binaryOrbitDistanceIndex source)).coeff target -
        (if target = source then 1 else 0)

theorem binaryLengthThirteenTableScalarBasicSourceAtomExprFin_coeff_direct
    (idx : Fin 3) (source target : BinaryOrbitIndex 13) :
    (binaryLengthThirteenTableScalarAtomExprFin
      (binaryLengthThirteenBasicSourceAtom source idx)).coeff target =
      binaryLengthThirteenBasicSourceAtomCoeffDirect idx source target := by
  fin_cases idx <;>
    by_cases h : target = source <;>
      simp [binaryLengthThirteenBasicSourceAtom,
        binaryLengthThirteenBasicSourceAtomCoeffDirect,
        binaryLengthThirteenTableScalarAtomExprFin,
        LinExpr.sub, LinExpr.add, LinExpr.smul, LinExpr.var, h] <;>
      ring

def binaryLengthThirteenBasicSourceContribution
    (source : BinaryOrbitIndex 13) (m : Fin 3 -> Rat) :
    LinExpr (BinaryOrbitIndex 13) :=
  LinExpr.sum Finset.univ (fun idx : Fin 3 =>
    LinExpr.smul (m idx)
      (binaryLengthThirteenTableScalarAtomExprFin
        (binaryLengthThirteenBasicSourceAtom source idx)))

theorem binaryLengthThirteenBasicSourceContribution_coeff_direct
    (source target : BinaryOrbitIndex 13) (m : Fin 3 -> Rat) :
    (binaryLengthThirteenBasicSourceContribution source m).coeff
        target =
      (Finset.univ : Finset (Fin 3)).sum (fun idx =>
        m idx *
          binaryLengthThirteenBasicSourceAtomCoeffDirect idx source target) := by
  unfold binaryLengthThirteenBasicSourceContribution
  simp [LinExpr.sum, LinExpr.smul,
    binaryLengthThirteenTableScalarBasicSourceAtomExprFin_coeff_direct]

theorem binaryLengthThirteenBasicSourceContribution_eq_sumFinRange_of_shift
    {scalarCount start : Nat}
    (multiplier : Fin scalarCount -> Rat)
    (fullExpr : Fin scalarCount -> LinExpr (BinaryOrbitIndex 13))
    (source : BinaryOrbitIndex 13) (weight : Fin 3 -> Rat)
    (hstop : start + 3 <= scalarCount)
    (hmul : forall idx : Fin 3,
      multiplier ((LinExpr.finShiftEmbedding scalarCount start 3 hstop) idx) =
        weight idx)
    (hexpr : forall idx : Fin 3,
      fullExpr ((LinExpr.finShiftEmbedding scalarCount start 3 hstop) idx) =
        binaryLengthThirteenTableScalarAtomExprFin
          (binaryLengthThirteenBasicSourceAtom source idx)) :
    binaryLengthThirteenBasicSourceContribution source weight =
      LinExpr.sumFinRange
        (fun atom : Fin scalarCount =>
          LinExpr.smul (multiplier atom) (fullExpr atom))
        start (start + 3) := by
  unfold binaryLengthThirteenBasicSourceContribution
  exact LinExpr.sum_smul_eq_sumFinRange_of_shift
    multiplier
    fullExpr
    weight
    (fun idx : Fin 3 =>
      binaryLengthThirteenTableScalarAtomExprFin
        (binaryLengthThirteenBasicSourceAtom source idx))
    hstop
    hmul
    hexpr

end GijswijtPolak2025
end SDP
end CoveringCodes
