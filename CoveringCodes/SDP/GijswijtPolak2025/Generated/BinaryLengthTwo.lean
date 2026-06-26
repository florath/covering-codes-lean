import CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryLengthTwoSupport
import CoveringCodes.SmallCases.ZeroRadius

/-!
# Generated finite certificate for the binary length-two SDP

This file contains the closed rational checks for `(q,n,r) = (2,2,0)`.
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

noncomputable section

set_option linter.unusedSimpArgs false

theorem binaryLengthTwoAllOnes_lasserreX_zero :
    binaryLasserreX (sphereLambda 2 0) 1 binaryLengthTwoAllOnes = fun _ => 0 := by
  funext source
  rcases binaryOrbitIndex_length_two_cases source with
    rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    (simp [binaryLasserreX, binaryLasserreTargetCoeff, binaryEtaCoeff,
      binaryEtaTerm, binaryZeroCoeff, binaryOrbitDistanceIndex,
      binaryOrbitIndex_univ_length_two, binaryLengthTwoAllOnes,
      binaryLengthTwoIdx000, binaryLengthTwoIdx010, binaryLengthTwoIdx020,
      binaryLengthTwoIdx100, binaryLengthTwoIdx110, binaryLengthTwoIdx111,
      binaryLengthTwoIdx121, binaryLengthTwoIdx200, binaryLengthTwoIdx211,
      binaryLengthTwoIdx222, sphereLambda, Finset.sum_range_succ];
     native_decide)

theorem binaryLengthTwoZeroBlock_k0 :
    binaryBlock 2 0 (fun _ : BinaryOrbitIndex 2 => (0 : Rat)) =
      (0 : Matrix (Fin 3) (Fin 3) Rat) := by
  ext row col
  fin_cases row
  · fin_cases col <;> native_decide
  · fin_cases col <;> native_decide
  · fin_cases col <;> native_decide

theorem binaryLengthTwoZeroBlock_k1 :
    binaryBlock 2 1 (fun _ : BinaryOrbitIndex 2 => (0 : Rat)) =
      (0 : Matrix (Fin 1) (Fin 1) Rat) := by
  ext row col
  fin_cases row
  fin_cases col
  native_decide

theorem binaryLengthTwoAllOnes_lasserre :
    BinaryLasserreConstraints (sphereLambda 2 0) 1 binaryLengthTwoAllOnes := by
  intro idx
  rcases idx with ⟨k, hk⟩
  change RatPSD (binaryBlock 2 k
    (binaryLasserreX (sphereLambda 2 0) 1 binaryLengthTwoAllOnes))
  rw [binaryLengthTwoAllOnes_lasserreX_zero]
  have hk1 : k <= 1 := by omega
  interval_cases k
  · rw [binaryLengthTwoZeroBlock_k0]
    exact RatPSD.zero
  · rw [binaryLengthTwoZeroBlock_k1]
    exact RatPSD.zero

def binaryLengthTwoAllOnesMatrixCutAt (source : BinaryOrbitIndex 2) : Prop :=
  let lhs1 := Finset.univ.sum (fun target : BinaryOrbitIndex 2 =>
    binaryLengthTwoAllOnes target *
      binaryMatrixCutLambda (sphereLambda 2 0) source target)
  let lhs2 := Finset.univ.sum (fun target : BinaryOrbitIndex 2 =>
    (binaryZeroCoeff binaryLengthTwoAllOnes target.j -
        binaryLengthTwoAllOnes target) *
      binaryMatrixCutLambda (sphereLambda 2 0) source target)
  let lhs3 := Finset.univ.sum (fun target : BinaryOrbitIndex 2 =>
    (binaryZeroCoeff binaryLengthTwoAllOnes (binaryOrbitDistanceIndex target) -
        binaryLengthTwoAllOnes target) *
      binaryMatrixCutLambda (sphereLambda 2 0) source target)
  let lhs4 := Finset.univ.sum (fun target : BinaryOrbitIndex 2 =>
    (binaryZeroCoeff binaryLengthTwoAllOnes 0 -
        binaryZeroCoeff binaryLengthTwoAllOnes target.j -
        binaryZeroCoeff binaryLengthTwoAllOnes (binaryOrbitDistanceIndex target) +
        binaryLengthTwoAllOnes target) *
      binaryMatrixCutLambda (sphereLambda 2 0) source target)
  binaryZeroCoeff binaryLengthTwoAllOnes source.i * 1 <= lhs1 /\
    (binaryZeroCoeff binaryLengthTwoAllOnes 0 -
        binaryZeroCoeff binaryLengthTwoAllOnes source.i) * 1 <= lhs2 /\
    (binaryZeroCoeff binaryLengthTwoAllOnes 0 -
        binaryZeroCoeff binaryLengthTwoAllOnes source.i) * 1 <= lhs3 /\
    (1 - 2 * binaryZeroCoeff binaryLengthTwoAllOnes 0 +
        binaryZeroCoeff binaryLengthTwoAllOnes source.i) * 1 <= lhs4

private theorem binaryLengthTwoAllOnes_matrixCut_000 :
    binaryLengthTwoAllOnesMatrixCutAt binaryLengthTwoIdx000 := by
  simp [binaryLengthTwoAllOnesMatrixCutAt, binaryOrbitIndex_univ_length_two,
    binaryLengthTwoAllOnes, binaryLengthTwoIdx000, binaryLengthTwoIdx010,
    binaryLengthTwoIdx020, binaryLengthTwoIdx100, binaryLengthTwoIdx110,
    binaryLengthTwoIdx111, binaryLengthTwoIdx121, binaryLengthTwoIdx200,
    binaryLengthTwoIdx211, binaryLengthTwoIdx222, binaryMatrixCutLambda,
    binaryMatrixCutCoeff, binaryMatrixCutTerm, binaryZeroCoeff,
    binaryOrbitDistanceIndex, sphereLambda, Finset.sum_range_succ]
  native_decide

private theorem binaryLengthTwoAllOnes_matrixCut_010 :
    binaryLengthTwoAllOnesMatrixCutAt binaryLengthTwoIdx010 := by
  simp [binaryLengthTwoAllOnesMatrixCutAt, binaryOrbitIndex_univ_length_two,
    binaryLengthTwoAllOnes, binaryLengthTwoIdx000, binaryLengthTwoIdx010,
    binaryLengthTwoIdx020, binaryLengthTwoIdx100, binaryLengthTwoIdx110,
    binaryLengthTwoIdx111, binaryLengthTwoIdx121, binaryLengthTwoIdx200,
    binaryLengthTwoIdx211, binaryLengthTwoIdx222, binaryMatrixCutLambda,
    binaryMatrixCutCoeff, binaryMatrixCutTerm, binaryZeroCoeff,
    binaryOrbitDistanceIndex, sphereLambda, Finset.sum_range_succ]
  native_decide

private theorem binaryLengthTwoAllOnes_matrixCut_020 :
    binaryLengthTwoAllOnesMatrixCutAt binaryLengthTwoIdx020 := by
  simp [binaryLengthTwoAllOnesMatrixCutAt, binaryOrbitIndex_univ_length_two,
    binaryLengthTwoAllOnes, binaryLengthTwoIdx000, binaryLengthTwoIdx010,
    binaryLengthTwoIdx020, binaryLengthTwoIdx100, binaryLengthTwoIdx110,
    binaryLengthTwoIdx111, binaryLengthTwoIdx121, binaryLengthTwoIdx200,
    binaryLengthTwoIdx211, binaryLengthTwoIdx222, binaryMatrixCutLambda,
    binaryMatrixCutCoeff, binaryMatrixCutTerm, binaryZeroCoeff,
    binaryOrbitDistanceIndex, sphereLambda, Finset.sum_range_succ]
  native_decide

private theorem binaryLengthTwoAllOnes_matrixCut_100 :
    binaryLengthTwoAllOnesMatrixCutAt binaryLengthTwoIdx100 := by
  simp [binaryLengthTwoAllOnesMatrixCutAt, binaryOrbitIndex_univ_length_two,
    binaryLengthTwoAllOnes, binaryLengthTwoIdx000, binaryLengthTwoIdx010,
    binaryLengthTwoIdx020, binaryLengthTwoIdx100, binaryLengthTwoIdx110,
    binaryLengthTwoIdx111, binaryLengthTwoIdx121, binaryLengthTwoIdx200,
    binaryLengthTwoIdx211, binaryLengthTwoIdx222, binaryMatrixCutLambda,
    binaryMatrixCutCoeff, binaryMatrixCutTerm, binaryZeroCoeff,
    binaryOrbitDistanceIndex, sphereLambda, Finset.sum_range_succ]
  native_decide

private theorem binaryLengthTwoAllOnes_matrixCut_110 :
    binaryLengthTwoAllOnesMatrixCutAt binaryLengthTwoIdx110 := by
  simp [binaryLengthTwoAllOnesMatrixCutAt, binaryOrbitIndex_univ_length_two,
    binaryLengthTwoAllOnes, binaryLengthTwoIdx000, binaryLengthTwoIdx010,
    binaryLengthTwoIdx020, binaryLengthTwoIdx100, binaryLengthTwoIdx110,
    binaryLengthTwoIdx111, binaryLengthTwoIdx121, binaryLengthTwoIdx200,
    binaryLengthTwoIdx211, binaryLengthTwoIdx222, binaryMatrixCutLambda,
    binaryMatrixCutCoeff, binaryMatrixCutTerm, binaryZeroCoeff,
    binaryOrbitDistanceIndex, sphereLambda, Finset.sum_range_succ]
  native_decide

private theorem binaryLengthTwoAllOnes_matrixCut_111 :
    binaryLengthTwoAllOnesMatrixCutAt binaryLengthTwoIdx111 := by
  simp [binaryLengthTwoAllOnesMatrixCutAt, binaryOrbitIndex_univ_length_two,
    binaryLengthTwoAllOnes, binaryLengthTwoIdx000, binaryLengthTwoIdx010,
    binaryLengthTwoIdx020, binaryLengthTwoIdx100, binaryLengthTwoIdx110,
    binaryLengthTwoIdx111, binaryLengthTwoIdx121, binaryLengthTwoIdx200,
    binaryLengthTwoIdx211, binaryLengthTwoIdx222, binaryMatrixCutLambda,
    binaryMatrixCutCoeff, binaryMatrixCutTerm, binaryZeroCoeff,
    binaryOrbitDistanceIndex, sphereLambda, Finset.sum_range_succ]
  native_decide

private theorem binaryLengthTwoAllOnes_matrixCut_121 :
    binaryLengthTwoAllOnesMatrixCutAt binaryLengthTwoIdx121 := by
  simp [binaryLengthTwoAllOnesMatrixCutAt, binaryOrbitIndex_univ_length_two,
    binaryLengthTwoAllOnes, binaryLengthTwoIdx000, binaryLengthTwoIdx010,
    binaryLengthTwoIdx020, binaryLengthTwoIdx100, binaryLengthTwoIdx110,
    binaryLengthTwoIdx111, binaryLengthTwoIdx121, binaryLengthTwoIdx200,
    binaryLengthTwoIdx211, binaryLengthTwoIdx222, binaryMatrixCutLambda,
    binaryMatrixCutCoeff, binaryMatrixCutTerm, binaryZeroCoeff,
    binaryOrbitDistanceIndex, sphereLambda, Finset.sum_range_succ]
  native_decide

private theorem binaryLengthTwoAllOnes_matrixCut_200 :
    binaryLengthTwoAllOnesMatrixCutAt binaryLengthTwoIdx200 := by
  simp [binaryLengthTwoAllOnesMatrixCutAt, binaryOrbitIndex_univ_length_two,
    binaryLengthTwoAllOnes, binaryLengthTwoIdx000, binaryLengthTwoIdx010,
    binaryLengthTwoIdx020, binaryLengthTwoIdx100, binaryLengthTwoIdx110,
    binaryLengthTwoIdx111, binaryLengthTwoIdx121, binaryLengthTwoIdx200,
    binaryLengthTwoIdx211, binaryLengthTwoIdx222, binaryMatrixCutLambda,
    binaryMatrixCutCoeff, binaryMatrixCutTerm, binaryZeroCoeff,
    binaryOrbitDistanceIndex, sphereLambda, Finset.sum_range_succ]
  native_decide

private theorem binaryLengthTwoAllOnes_matrixCut_211 :
    binaryLengthTwoAllOnesMatrixCutAt binaryLengthTwoIdx211 := by
  simp [binaryLengthTwoAllOnesMatrixCutAt, binaryOrbitIndex_univ_length_two,
    binaryLengthTwoAllOnes, binaryLengthTwoIdx000, binaryLengthTwoIdx010,
    binaryLengthTwoIdx020, binaryLengthTwoIdx100, binaryLengthTwoIdx110,
    binaryLengthTwoIdx111, binaryLengthTwoIdx121, binaryLengthTwoIdx200,
    binaryLengthTwoIdx211, binaryLengthTwoIdx222, binaryMatrixCutLambda,
    binaryMatrixCutCoeff, binaryMatrixCutTerm, binaryZeroCoeff,
    binaryOrbitDistanceIndex, sphereLambda, Finset.sum_range_succ]
  native_decide

private theorem binaryLengthTwoAllOnes_matrixCut_222 :
    binaryLengthTwoAllOnesMatrixCutAt binaryLengthTwoIdx222 := by
  simp [binaryLengthTwoAllOnesMatrixCutAt, binaryOrbitIndex_univ_length_two,
    binaryLengthTwoAllOnes, binaryLengthTwoIdx000, binaryLengthTwoIdx010,
    binaryLengthTwoIdx020, binaryLengthTwoIdx100, binaryLengthTwoIdx110,
    binaryLengthTwoIdx111, binaryLengthTwoIdx121, binaryLengthTwoIdx200,
    binaryLengthTwoIdx211, binaryLengthTwoIdx222, binaryMatrixCutLambda,
    binaryMatrixCutCoeff, binaryMatrixCutTerm, binaryZeroCoeff,
    binaryOrbitDistanceIndex, sphereLambda, Finset.sum_range_succ]
  native_decide

theorem binaryLengthTwoAllOnes_matrixCuts :
    BinaryMatrixCutConstraints (sphereLambda 2 0) 1 binaryLengthTwoAllOnes := by
  intro source
  change binaryLengthTwoAllOnesMatrixCutAt source
  rcases binaryOrbitIndex_length_two_cases source with
    rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact binaryLengthTwoAllOnes_matrixCut_000
  · exact binaryLengthTwoAllOnes_matrixCut_010
  · exact binaryLengthTwoAllOnes_matrixCut_020
  · exact binaryLengthTwoAllOnes_matrixCut_100
  · exact binaryLengthTwoAllOnes_matrixCut_110
  · exact binaryLengthTwoAllOnes_matrixCut_111
  · exact binaryLengthTwoAllOnes_matrixCut_121
  · exact binaryLengthTwoAllOnes_matrixCut_200
  · exact binaryLengthTwoAllOnes_matrixCut_211
  · exact binaryLengthTwoAllOnes_matrixCut_222

def binaryLengthTwoAllOnes_reducedConstraints :
    BinaryReducedConstraints 2 0 (sphereLambda 2 0) 1 binaryLengthTwoAllOnes where
  basic := binaryLengthTwoAllOnes_basic
  semidefinite := binaryLengthTwoAllOnes_semidefinite
  lasserre := binaryLengthTwoAllOnes_lasserre
  matrixCuts := binaryLengthTwoAllOnes_matrixCuts

inductive BinaryLengthTwoAtom where
  | triangle110
  | triangle211
  | distance010
  | distance020
  | symmetry010_111
  | symmetry020_222
  | cut4_000
  | cut1_010
  | cut1_020
  | cut1_121
  deriving DecidableEq, Fintype

def binaryLengthTwoAtomExpr : BinaryLengthTwoAtom -> LinExpr (BinaryOrbitIndex 2)
  | .triangle110 =>
      LinExpr.add
        (LinExpr.sub (LinExpr.var binaryLengthTwoIdx110)
          (LinExpr.var binaryLengthTwoIdx100))
        (LinExpr.sub (LinExpr.var binaryLengthTwoIdx000)
          (LinExpr.var binaryLengthTwoIdx200))
  | .triangle211 =>
      LinExpr.add
        (LinExpr.sub (LinExpr.var binaryLengthTwoIdx211)
          (LinExpr.var binaryLengthTwoIdx200))
        (LinExpr.sub (LinExpr.var binaryLengthTwoIdx000)
          (LinExpr.var binaryLengthTwoIdx100))
  | .distance010 =>
      LinExpr.sub (LinExpr.var binaryLengthTwoIdx100)
        (LinExpr.var binaryLengthTwoIdx010)
  | .distance020 =>
      LinExpr.sub (LinExpr.var binaryLengthTwoIdx200)
        (LinExpr.var binaryLengthTwoIdx020)
  | .symmetry010_111 =>
      LinExpr.sub (LinExpr.var binaryLengthTwoIdx111)
        (LinExpr.var binaryLengthTwoIdx010)
  | .symmetry020_222 =>
      LinExpr.sub (LinExpr.var binaryLengthTwoIdx222)
        (LinExpr.var binaryLengthTwoIdx020)
  | .cut4_000 =>
      LinExpr.add (LinExpr.var binaryLengthTwoIdx000)
        (LinExpr.constExpr (BinaryOrbitIndex 2) (-1))
  | .cut1_010 =>
      LinExpr.sub (LinExpr.var binaryLengthTwoIdx010)
        (LinExpr.var binaryLengthTwoIdx000)
  | .cut1_020 =>
      LinExpr.sub (LinExpr.var binaryLengthTwoIdx020)
        (LinExpr.var binaryLengthTwoIdx000)
  | .cut1_121 =>
      LinExpr.sub (LinExpr.var binaryLengthTwoIdx121)
        (LinExpr.var binaryLengthTwoIdx100)

def binaryLengthTwoAtomMultiplier : BinaryLengthTwoAtom -> Rat
  | .triangle110 => 8
  | .triangle211 => 8
  | .distance010 => 32
  | .distance020 => 20
  | .symmetry010_111 => 8
  | .symmetry020_222 => 4
  | .cut4_000 => 64
  | .cut1_010 => 48
  | .cut1_020 => 28
  | .cut1_121 => 8

theorem binaryLengthTwoAtomMultiplier_nonneg (atom : BinaryLengthTwoAtom) :
    0 <= binaryLengthTwoAtomMultiplier atom := by
  cases atom <;> norm_num [binaryLengthTwoAtomMultiplier]

def binaryLengthTwoAffineCertificate :
    LinearObjectiveLowerCertificate (BinaryOrbitIndex 2) BinaryLengthTwoAtom
      binaryLengthTwoAtomExpr (binaryReducedObjectiveExpr 2) 64 where
  multiplier := binaryLengthTwoAtomMultiplier
  multiplier_nonneg := binaryLengthTwoAtomMultiplier_nonneg
  slack := 0
  slack_nonneg := by norm_num
  const_identity := by
    norm_num [binaryReducedObjectiveExpr, binaryOrbitIndex_univ_length_two,
      binaryLengthTwoIdx000, binaryLengthTwoIdx010, binaryLengthTwoIdx020,
      binaryLengthTwoIdx100, binaryLengthTwoIdx110, binaryLengthTwoIdx111,
      binaryLengthTwoIdx121, binaryLengthTwoIdx200, binaryLengthTwoIdx211,
      binaryLengthTwoIdx222, binaryLengthTwoAtomExpr,
      binaryLengthTwoAtomMultiplier, LinExpr.add, LinExpr.var, LinExpr.smul,
      LinExpr.sum, LinExpr.constExpr, LinExpr.sub, binaryOrbitMultiplicity]
    native_decide
  coeff_identity := by
    intro idx
    rcases binaryOrbitIndex_length_two_cases idx with
      rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      (norm_num [binaryReducedObjectiveExpr, binaryOrbitIndex_univ_length_two,
        binaryLengthTwoIdx000, binaryLengthTwoIdx010, binaryLengthTwoIdx020,
        binaryLengthTwoIdx100, binaryLengthTwoIdx110, binaryLengthTwoIdx111,
        binaryLengthTwoIdx121, binaryLengthTwoIdx200, binaryLengthTwoIdx211,
        binaryLengthTwoIdx222, binaryLengthTwoAtomExpr,
        binaryLengthTwoAtomMultiplier, LinExpr.add, LinExpr.var, LinExpr.smul,
        LinExpr.sum, LinExpr.constExpr, LinExpr.sub, binaryOrbitMultiplicity];
       native_decide)

theorem binaryLengthTwoAtom_nonneg_of_constraints {x : BinaryX 2}
    (hx : BinaryReducedConstraints 2 0 (sphereLambda 2 0) 1 x) :
    LinearConstraints binaryLengthTwoAtomExpr x := by
  intro atom
  cases atom with
  | triangle110 =>
      have hle := (hx.basic.2.1 binaryLengthTwoIdx110).1
      simp [binaryLengthTwoAtomExpr, binaryZeroCoeff, binaryOrbitDistanceIndex,
        binaryLengthTwoIdx000, binaryLengthTwoIdx100, binaryLengthTwoIdx110,
        binaryLengthTwoIdx200] at hle ⊢
      linarith
  | triangle211 =>
      have hle := (hx.basic.2.1 binaryLengthTwoIdx211).1
      simp [binaryLengthTwoAtomExpr, binaryZeroCoeff, binaryOrbitDistanceIndex,
        binaryLengthTwoIdx000, binaryLengthTwoIdx100, binaryLengthTwoIdx200,
        binaryLengthTwoIdx211] at hle ⊢
      linarith
  | distance010 =>
      have hle := (hx.basic.2.1 binaryLengthTwoIdx010).2
      simp [binaryLengthTwoAtomExpr, binaryZeroCoeff, binaryOrbitDistanceIndex,
        binaryLengthTwoIdx010, binaryLengthTwoIdx100] at hle ⊢
      linarith
  | distance020 =>
      have hle := (hx.basic.2.1 binaryLengthTwoIdx020).2
      simp [binaryLengthTwoAtomExpr, binaryZeroCoeff, binaryOrbitDistanceIndex,
        binaryLengthTwoIdx020, binaryLengthTwoIdx200] at hle ⊢
      linarith
  | symmetry010_111 =>
      have heq := hx.basic.2.2 binaryLengthTwoIdx010 binaryLengthTwoIdx111 (by native_decide)
      simp [binaryLengthTwoAtomExpr, heq]
  | symmetry020_222 =>
      have heq := hx.basic.2.2 binaryLengthTwoIdx020 binaryLengthTwoIdx222 (by native_decide)
      simp [binaryLengthTwoAtomExpr, heq]
  | cut4_000 =>
      have hcut := (hx.matrixCuts binaryLengthTwoIdx000).2.2.2
      simp [binaryOrbitIndex_univ_length_two, binaryLengthTwoAllOnes,
        binaryLengthTwoIdx000, binaryLengthTwoIdx010, binaryLengthTwoIdx020,
        binaryLengthTwoIdx100, binaryLengthTwoIdx110, binaryLengthTwoIdx111,
        binaryLengthTwoIdx121, binaryLengthTwoIdx200, binaryLengthTwoIdx211,
        binaryLengthTwoIdx222, binaryMatrixCutLambda, binaryMatrixCutCoeff,
        binaryMatrixCutTerm, binaryZeroCoeff, binaryOrbitDistanceIndex,
        sphereLambda, Finset.sum_range_succ] at hcut
      change 1 - 2 * x binaryLengthTwoIdx000 + x binaryLengthTwoIdx000 <= 0 at hcut
      simp [binaryLengthTwoAtomExpr]
      linarith
  | cut1_010 =>
      have hcut := (hx.matrixCuts binaryLengthTwoIdx010).1
      simp [binaryOrbitIndex_univ_length_two, binaryLengthTwoAllOnes,
        binaryLengthTwoIdx000, binaryLengthTwoIdx010, binaryLengthTwoIdx020,
        binaryLengthTwoIdx100, binaryLengthTwoIdx110, binaryLengthTwoIdx111,
        binaryLengthTwoIdx121, binaryLengthTwoIdx200, binaryLengthTwoIdx211,
        binaryLengthTwoIdx222, binaryMatrixCutLambda, binaryMatrixCutCoeff,
        binaryMatrixCutTerm, binaryZeroCoeff, binaryOrbitDistanceIndex,
        sphereLambda, Finset.sum_range_succ] at hcut
      simpa [binaryLengthTwoAtomExpr] using hcut
  | cut1_020 =>
      have hcut := (hx.matrixCuts binaryLengthTwoIdx020).1
      simp [binaryOrbitIndex_univ_length_two, binaryLengthTwoAllOnes,
        binaryLengthTwoIdx000, binaryLengthTwoIdx010, binaryLengthTwoIdx020,
        binaryLengthTwoIdx100, binaryLengthTwoIdx110, binaryLengthTwoIdx111,
        binaryLengthTwoIdx121, binaryLengthTwoIdx200, binaryLengthTwoIdx211,
        binaryLengthTwoIdx222, binaryMatrixCutLambda, binaryMatrixCutCoeff,
        binaryMatrixCutTerm, binaryZeroCoeff, binaryOrbitDistanceIndex,
        sphereLambda, Finset.sum_range_succ] at hcut
      simpa [binaryLengthTwoAtomExpr] using hcut
  | cut1_121 =>
      have hcut := (hx.matrixCuts binaryLengthTwoIdx121).1
      simp [binaryOrbitIndex_univ_length_two, binaryLengthTwoAllOnes,
        binaryLengthTwoIdx000, binaryLengthTwoIdx010, binaryLengthTwoIdx020,
        binaryLengthTwoIdx100, binaryLengthTwoIdx110, binaryLengthTwoIdx111,
        binaryLengthTwoIdx121, binaryLengthTwoIdx200, binaryLengthTwoIdx211,
        binaryLengthTwoIdx222, binaryMatrixCutLambda, binaryMatrixCutCoeff,
        binaryMatrixCutTerm, binaryZeroCoeff, binaryOrbitDistanceIndex,
        sphereLambda, Finset.sum_range_succ] at hcut
      simpa [binaryLengthTwoAtomExpr] using hcut

def binaryLengthTwo_objectiveCertificate :
    ObjectiveLowerCertificate (BinaryOrbitIndex 2)
      (BinaryReducedConstraints 2 0 (sphereLambda 2 0) 1)
      (binaryReducedObjective 2) 64 where
  gap x := binaryReducedObjective 2 x - 64
  gap_nonneg := by
    intro _ hx
    have h :=
      LinearObjectiveLowerCertificate.sound binaryLengthTwoAffineCertificate _
        (binaryLengthTwoAtom_nonneg_of_constraints hx)
    rw [binaryReducedObjectiveExpr_eval] at h
    exact sub_nonneg.mpr h
  identity := by
    intro _
    rfl

theorem binaryLengthTwo_codeObjectiveBound (C : Finset (QaryWord 2 2))
    (hC : CoversFinset C 0) :
    exists x : BinaryX 2,
      BinaryReducedConstraints 2 0 (sphereLambda 2 0) 1 x /\
        binaryReducedObjective 2 x <= (C.card : Rat) ^ 3 := by
  refine ⟨binaryLengthTwoAllOnes, binaryLengthTwoAllOnes_reducedConstraints, ?_⟩
  have hCeq : C = Finset.univ := by
    ext x
    constructor
    · intro _
      simp
    · intro _
      exact ((covers_zero_iff_univ_subset C).mp hC) (Finset.mem_univ x)
  subst C
  norm_num [binaryReducedObjective, binaryOrbitIndex_univ_length_two,
    binaryLengthTwoAllOnes, binaryLengthTwoIdx000, binaryLengthTwoIdx010,
    binaryLengthTwoIdx020, binaryLengthTwoIdx100, binaryLengthTwoIdx110,
    binaryLengthTwoIdx111, binaryLengthTwoIdx121, binaryLengthTwoIdx200,
    binaryLengthTwoIdx211, binaryLengthTwoIdx222, binaryOrbitMultiplicity]

def binaryLengthTwoReducedDualCertificate :
    BinaryReducedDualCertificate 2 0 (sphereLambda 2 0) 1 4 where
  bound := 64
  cubeThreshold := by norm_num
  objectiveCertificate := binaryLengthTwo_objectiveCertificate
  codeObjectiveBound := binaryLengthTwo_codeObjectiveBound

end

end GijswijtPolak2025
end SDP
end CoveringCodes
