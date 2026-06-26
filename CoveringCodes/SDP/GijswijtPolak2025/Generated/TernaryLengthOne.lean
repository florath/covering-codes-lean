import CoveringCodes.SDP.GijswijtPolak2025.QaryReducedSDP
import CoveringCodes.SmallCases.ZeroRadius

/-!
# Generated finite certificate for the ternary length-one SDP

This file contains finite checks for `(q,n,r) = (3,1,0)`.
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

noncomputable section

set_option linter.unusedSimpArgs false

def ternaryLengthOneIdx0000 : QaryOrbitIndex 3 1 where
  i := 0
  j := 0
  t := 0
  p := 0
  hp_t := by omega
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def ternaryLengthOneIdx0100 : QaryOrbitIndex 3 1 where
  i := 0
  j := 1
  t := 0
  p := 0
  hp_t := by omega
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def ternaryLengthOneIdx1000 : QaryOrbitIndex 3 1 where
  i := 1
  j := 0
  t := 0
  p := 0
  hp_t := by omega
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def ternaryLengthOneIdx1110 : QaryOrbitIndex 3 1 where
  i := 1
  j := 1
  t := 1
  p := 0
  hp_t := by omega
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def ternaryLengthOneIdx1111 : QaryOrbitIndex 3 1 where
  i := 1
  j := 1
  t := 1
  p := 1
  hp_t := by omega
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def ternaryLengthOneAllOnes : QaryX 3 1 := fun _ => 1

theorem qaryOrbitIndex_ternary_length_one_cases (idx : QaryOrbitIndex 3 1) :
    idx = ternaryLengthOneIdx0000 ∨ idx = ternaryLengthOneIdx0100 ∨
      idx = ternaryLengthOneIdx1000 ∨ idx = ternaryLengthOneIdx1110 ∨
      idx = ternaryLengthOneIdx1111 := by
  rcases idx with ⟨i, j, t, p, hp_t, ht_i, ht_j, hij⟩
  have hi : i <= 1 := by omega
  have hj : j <= 1 := by omega
  have ht : t <= 1 := by omega
  have hp : p <= 1 := by omega
  interval_cases i <;> interval_cases j <;> interval_cases t <;> interval_cases p
  · left
    apply QaryOrbitIndex.toFinTuple_injective
    simp [QaryOrbitIndex.toFinTuple, ternaryLengthOneIdx0000]
  · right; left
    apply QaryOrbitIndex.toFinTuple_injective
    simp [QaryOrbitIndex.toFinTuple, ternaryLengthOneIdx0100]
  · right; right; left
    apply QaryOrbitIndex.toFinTuple_injective
    simp [QaryOrbitIndex.toFinTuple, ternaryLengthOneIdx1000]
  · exfalso
    omega
  · right; right; right; left
    apply QaryOrbitIndex.toFinTuple_injective
    simp [QaryOrbitIndex.toFinTuple, ternaryLengthOneIdx1110]
  · right; right; right; right
    apply QaryOrbitIndex.toFinTuple_injective
    simp [QaryOrbitIndex.toFinTuple, ternaryLengthOneIdx1111]

theorem qaryOrbitIndex_univ_ternary_length_one :
    (Finset.univ : Finset (QaryOrbitIndex 3 1)) =
      {ternaryLengthOneIdx0000, ternaryLengthOneIdx0100,
        ternaryLengthOneIdx1000, ternaryLengthOneIdx1110,
        ternaryLengthOneIdx1111} := by
  ext idx
  constructor
  · intro _
    rcases qaryOrbitIndex_ternary_length_one_cases idx with
      rfl | rfl | rfl | rfl | rfl <;>
      simp
  · intro _
    simp

theorem ternaryLengthOneAllOnes_basic :
    QaryBasicConstraints ternaryLengthOneAllOnes := by
  refine ⟨?_, ?_, ?_⟩
  · intro idx
    rcases qaryOrbitIndex_ternary_length_one_cases idx with
      rfl | rfl | rfl | rfl | rfl <;>
      native_decide
  · intro idx
    rcases qaryOrbitIndex_ternary_length_one_cases idx with
      rfl | rfl | rfl | rfl | rfl <;>
      native_decide
  · intro idx idx' hp hgap
    rcases qaryOrbitIndex_ternary_length_one_cases idx with
      rfl | rfl | rfl | rfl | rfl <;>
      rcases qaryOrbitIndex_ternary_length_one_cases idx' with
        rfl | rfl | rfl | rfl | rfl <;>
      native_decide

theorem ternaryLengthOneAllOnes_semidefinite :
    QaryBlocksPSD ternaryLengthOneAllOnes := by
  intro idx
  rcases idx with ⟨a, k, ha, hk⟩
  change RatPSD (qaryBlock 3 1 a k ternaryLengthOneAllOnes)
  have ha1 : a <= 1 := by omega
  have hk1 : k <= 1 := by omega
  interval_cases a <;> interval_cases k
  · simpa [ternaryLengthOneAllOnes] using
      qaryBlock_ternary_length_one_allOnes_zeroBlock_psd
  · exfalso
    omega
  · convert (RatPSD.zero : RatPSD (0 : Matrix (Fin 1) (Fin 1) Rat)) using 1
    ext row col
    fin_cases row
    fin_cases col
    exact qaryBlock_ternary_length_one_allOnes_singletonBlock

theorem ternaryLengthOneAllOnes_lasserreX_zero :
    qaryLasserreX (sphereLambda 1 0) 1 ternaryLengthOneAllOnes = fun _ => 0 := by
  funext source
  rcases qaryOrbitIndex_ternary_length_one_cases source with
    rfl | rfl | rfl | rfl | rfl <;>
    (simp [qaryLasserreX, qaryLasserreTargetCoeff, qaryEtaCoeff,
      qaryEtaTerm, qaryTenSum, qaryPartitionCoeff, chooseTwo, chooseThree,
      qaryZeroCoeff, qaryOrbitDistanceIndex, qaryOrbitIndex_univ_ternary_length_one,
      ternaryLengthOneAllOnes, ternaryLengthOneIdx0000, ternaryLengthOneIdx0100,
      ternaryLengthOneIdx1000, ternaryLengthOneIdx1110, ternaryLengthOneIdx1111,
      sphereLambda, Finset.sum_range_succ];
     native_decide)

theorem ternaryLengthOneZeroBlock_00 :
    qaryBlock 3 1 0 0 (fun _ : QaryOrbitIndex 3 1 => (0 : Rat)) =
      (0 : Matrix (Fin 2) (Fin 2) Rat) := by
  ext row col
  fin_cases row <;> fin_cases col <;> native_decide

theorem ternaryLengthOneZeroBlock_11 :
    qaryBlock 3 1 1 1 (fun _ : QaryOrbitIndex 3 1 => (0 : Rat)) =
      (0 : Matrix (Fin 1) (Fin 1) Rat) := by
  ext row col
  fin_cases row
  fin_cases col
  native_decide

theorem ternaryLengthOneAllOnes_lasserre :
    QaryLasserreConstraints (sphereLambda 1 0) 1 ternaryLengthOneAllOnes := by
  intro idx
  rcases idx with ⟨a, k, ha, hk⟩
  change RatPSD (qaryBlock 3 1 a k
    (qaryLasserreX (sphereLambda 1 0) 1 ternaryLengthOneAllOnes))
  rw [ternaryLengthOneAllOnes_lasserreX_zero]
  have ha1 : a <= 1 := by omega
  have hk1 : k <= 1 := by omega
  interval_cases a <;> interval_cases k
  · rw [ternaryLengthOneZeroBlock_00]
    exact RatPSD.zero
  · exfalso
    omega
  · rw [ternaryLengthOneZeroBlock_11]
    exact RatPSD.zero

def ternaryLengthOneAllOnesMatrixCutAt (source : QaryOrbitIndex 3 1) : Prop :=
  let lhs1 := Finset.univ.sum (fun target : QaryOrbitIndex 3 1 =>
    ternaryLengthOneAllOnes target *
      qaryMatrixCutLambda (sphereLambda 1 0) source target)
  let lhs2 := Finset.univ.sum (fun target : QaryOrbitIndex 3 1 =>
    (qaryZeroCoeff ternaryLengthOneAllOnes target.j -
        ternaryLengthOneAllOnes target) *
      qaryMatrixCutLambda (sphereLambda 1 0) source target)
  let lhs3 := Finset.univ.sum (fun target : QaryOrbitIndex 3 1 =>
    (qaryZeroCoeff ternaryLengthOneAllOnes (qaryOrbitDistanceIndex target) -
        ternaryLengthOneAllOnes target) *
      qaryMatrixCutLambda (sphereLambda 1 0) source target)
  let lhs4 := Finset.univ.sum (fun target : QaryOrbitIndex 3 1 =>
    (qaryZeroCoeff ternaryLengthOneAllOnes 0 -
        qaryZeroCoeff ternaryLengthOneAllOnes target.j -
        qaryZeroCoeff ternaryLengthOneAllOnes (qaryOrbitDistanceIndex target) +
        ternaryLengthOneAllOnes target) *
      qaryMatrixCutLambda (sphereLambda 1 0) source target)
  qaryZeroCoeff ternaryLengthOneAllOnes source.i * 1 <= lhs1 /\
    (qaryZeroCoeff ternaryLengthOneAllOnes 0 -
        qaryZeroCoeff ternaryLengthOneAllOnes source.i) * 1 <= lhs2 /\
    (qaryZeroCoeff ternaryLengthOneAllOnes 0 -
        qaryZeroCoeff ternaryLengthOneAllOnes source.i) * 1 <= lhs3 /\
    (1 - 2 * qaryZeroCoeff ternaryLengthOneAllOnes 0 +
        qaryZeroCoeff ternaryLengthOneAllOnes source.i) * 1 <= lhs4

private theorem ternaryLengthOneAllOnes_matrixCut_0000 :
    ternaryLengthOneAllOnesMatrixCutAt ternaryLengthOneIdx0000 := by
  simp [ternaryLengthOneAllOnesMatrixCutAt, qaryOrbitIndex_univ_ternary_length_one,
    ternaryLengthOneAllOnes, ternaryLengthOneIdx0000, ternaryLengthOneIdx0100,
    ternaryLengthOneIdx1000, ternaryLengthOneIdx1110, ternaryLengthOneIdx1111,
    qaryMatrixCutLambda, qaryMatrixCutCoeff, qaryMatrixCutTerm, qaryTenSum,
    qaryPartitionCoeff, chooseTwo, chooseThree, qaryZeroCoeff,
    qaryOrbitDistanceIndex, sphereLambda, Finset.sum_range_succ]
  native_decide

private theorem ternaryLengthOneAllOnes_matrixCut_0100 :
    ternaryLengthOneAllOnesMatrixCutAt ternaryLengthOneIdx0100 := by
  simp [ternaryLengthOneAllOnesMatrixCutAt, qaryOrbitIndex_univ_ternary_length_one,
    ternaryLengthOneAllOnes, ternaryLengthOneIdx0000, ternaryLengthOneIdx0100,
    ternaryLengthOneIdx1000, ternaryLengthOneIdx1110, ternaryLengthOneIdx1111,
    qaryMatrixCutLambda, qaryMatrixCutCoeff, qaryMatrixCutTerm, qaryTenSum,
    qaryPartitionCoeff, chooseTwo, chooseThree, qaryZeroCoeff,
    qaryOrbitDistanceIndex, sphereLambda, Finset.sum_range_succ]
  native_decide

private theorem ternaryLengthOneAllOnes_matrixCut_1000 :
    ternaryLengthOneAllOnesMatrixCutAt ternaryLengthOneIdx1000 := by
  simp [ternaryLengthOneAllOnesMatrixCutAt, qaryOrbitIndex_univ_ternary_length_one,
    ternaryLengthOneAllOnes, ternaryLengthOneIdx0000, ternaryLengthOneIdx0100,
    ternaryLengthOneIdx1000, ternaryLengthOneIdx1110, ternaryLengthOneIdx1111,
    qaryMatrixCutLambda, qaryMatrixCutCoeff, qaryMatrixCutTerm, qaryTenSum,
    qaryPartitionCoeff, chooseTwo, chooseThree, qaryZeroCoeff,
    qaryOrbitDistanceIndex, sphereLambda, Finset.sum_range_succ]
  native_decide

private theorem ternaryLengthOneAllOnes_matrixCut_1110 :
    ternaryLengthOneAllOnesMatrixCutAt ternaryLengthOneIdx1110 := by
  simp [ternaryLengthOneAllOnesMatrixCutAt, qaryOrbitIndex_univ_ternary_length_one,
    ternaryLengthOneAllOnes, ternaryLengthOneIdx0000, ternaryLengthOneIdx0100,
    ternaryLengthOneIdx1000, ternaryLengthOneIdx1110, ternaryLengthOneIdx1111,
    qaryMatrixCutLambda, qaryMatrixCutCoeff, qaryMatrixCutTerm, qaryTenSum,
    qaryPartitionCoeff, chooseTwo, chooseThree, qaryZeroCoeff,
    qaryOrbitDistanceIndex, sphereLambda, Finset.sum_range_succ]
  native_decide

private theorem ternaryLengthOneAllOnes_matrixCut_1111 :
    ternaryLengthOneAllOnesMatrixCutAt ternaryLengthOneIdx1111 := by
  simp [ternaryLengthOneAllOnesMatrixCutAt, qaryOrbitIndex_univ_ternary_length_one,
    ternaryLengthOneAllOnes, ternaryLengthOneIdx0000, ternaryLengthOneIdx0100,
    ternaryLengthOneIdx1000, ternaryLengthOneIdx1110, ternaryLengthOneIdx1111,
    qaryMatrixCutLambda, qaryMatrixCutCoeff, qaryMatrixCutTerm, qaryTenSum,
    qaryPartitionCoeff, chooseTwo, chooseThree, qaryZeroCoeff,
    qaryOrbitDistanceIndex, sphereLambda, Finset.sum_range_succ]
  native_decide

theorem ternaryLengthOneAllOnes_matrixCuts :
    QaryMatrixCutConstraints (sphereLambda 1 0) 1 ternaryLengthOneAllOnes := by
  intro source
  change ternaryLengthOneAllOnesMatrixCutAt source
  rcases qaryOrbitIndex_ternary_length_one_cases source with
    rfl | rfl | rfl | rfl | rfl
  · exact ternaryLengthOneAllOnes_matrixCut_0000
  · exact ternaryLengthOneAllOnes_matrixCut_0100
  · exact ternaryLengthOneAllOnes_matrixCut_1000
  · exact ternaryLengthOneAllOnes_matrixCut_1110
  · exact ternaryLengthOneAllOnes_matrixCut_1111

def ternaryLengthOneAllOnes_reducedConstraints :
    QaryReducedConstraints 3 1 0 (sphereLambda 1 0) 1 ternaryLengthOneAllOnes where
  basic := ternaryLengthOneAllOnes_basic
  semidefinite := ternaryLengthOneAllOnes_semidefinite
  lasserre := ternaryLengthOneAllOnes_lasserre
  matrixCuts := ternaryLengthOneAllOnes_matrixCuts

inductive TernaryLengthOneAtom where
  | distance0100
  | distance1110
  | symmetry0100_1111
  | cut1_0100
  | cut4_1110
  deriving DecidableEq, Fintype

def ternaryLengthOneAtomExpr : TernaryLengthOneAtom -> LinExpr (QaryOrbitIndex 3 1)
  | .distance0100 =>
      LinExpr.sub (LinExpr.var ternaryLengthOneIdx1000)
        (LinExpr.var ternaryLengthOneIdx0100)
  | .distance1110 =>
      LinExpr.sub (LinExpr.var ternaryLengthOneIdx1000)
        (LinExpr.var ternaryLengthOneIdx1110)
  | .symmetry0100_1111 =>
      LinExpr.sub (LinExpr.var ternaryLengthOneIdx1111)
        (LinExpr.var ternaryLengthOneIdx0100)
  | .cut1_0100 =>
      LinExpr.sub (LinExpr.var ternaryLengthOneIdx0100)
        (LinExpr.var ternaryLengthOneIdx0000)
  | .cut4_1110 =>
      LinExpr.add
        (LinExpr.add
          (LinExpr.smul 3 (LinExpr.var ternaryLengthOneIdx0000))
          (LinExpr.smul (-3) (LinExpr.var ternaryLengthOneIdx1000)))
        (LinExpr.add (LinExpr.var ternaryLengthOneIdx1110)
          (LinExpr.constExpr (QaryOrbitIndex 3 1) (-1)))

def ternaryLengthOneAtomMultiplier : TernaryLengthOneAtom -> Rat
  | .distance0100 => 66
  | .distance1110 => 21
  | .symmetry0100_1111 => 6
  | .cut1_0100 => 78
  | .cut4_1110 => 27

theorem ternaryLengthOneAtomMultiplier_nonneg (atom : TernaryLengthOneAtom) :
    0 <= ternaryLengthOneAtomMultiplier atom := by
  cases atom <;> norm_num [ternaryLengthOneAtomMultiplier]

def ternaryLengthOneAffineCertificate :
    LinearObjectiveLowerCertificate (QaryOrbitIndex 3 1) TernaryLengthOneAtom
      ternaryLengthOneAtomExpr (qaryReducedObjectiveExpr 3 1) 27 where
  multiplier := ternaryLengthOneAtomMultiplier
  multiplier_nonneg := ternaryLengthOneAtomMultiplier_nonneg
  slack := 0
  slack_nonneg := by norm_num
  const_identity := by
    norm_num [qaryReducedObjectiveExpr, qaryOrbitIndex_univ_ternary_length_one,
      ternaryLengthOneIdx0000, ternaryLengthOneIdx0100, ternaryLengthOneIdx1000,
      ternaryLengthOneIdx1110, ternaryLengthOneIdx1111, ternaryLengthOneAtomExpr,
      ternaryLengthOneAtomMultiplier, LinExpr.add, LinExpr.var, LinExpr.smul,
      LinExpr.sum, LinExpr.constExpr, LinExpr.sub, qaryOrbitMultiplicity]
    native_decide
  coeff_identity := by
    intro idx
    rcases qaryOrbitIndex_ternary_length_one_cases idx with
      rfl | rfl | rfl | rfl | rfl <;>
      (norm_num [qaryReducedObjectiveExpr, qaryOrbitIndex_univ_ternary_length_one,
        ternaryLengthOneIdx0000, ternaryLengthOneIdx0100, ternaryLengthOneIdx1000,
        ternaryLengthOneIdx1110, ternaryLengthOneIdx1111, ternaryLengthOneAtomExpr,
        ternaryLengthOneAtomMultiplier, LinExpr.add, LinExpr.var, LinExpr.smul,
        LinExpr.sum, LinExpr.constExpr, LinExpr.sub, qaryOrbitMultiplicity];
       native_decide)

theorem ternaryLengthOneAtom_nonneg_of_constraints {x : QaryX 3 1}
    (hx : QaryReducedConstraints 3 1 0 (sphereLambda 1 0) 1 x) :
    LinearConstraints ternaryLengthOneAtomExpr x := by
  intro atom
  cases atom with
  | distance0100 =>
      have hle := (hx.basic.2.1 ternaryLengthOneIdx0100).2
      simp [ternaryLengthOneAtomExpr, qaryZeroCoeff, qaryOrbitDistanceIndex,
        ternaryLengthOneIdx0100, ternaryLengthOneIdx1000] at hle ⊢
      linarith
  | distance1110 =>
      have hle := (hx.basic.2.1 ternaryLengthOneIdx1110).2
      simp [ternaryLengthOneAtomExpr, qaryZeroCoeff, qaryOrbitDistanceIndex,
        ternaryLengthOneIdx1000, ternaryLengthOneIdx1110] at hle ⊢
      linarith
  | symmetry0100_1111 =>
      have heq := hx.basic.2.2 ternaryLengthOneIdx0100 ternaryLengthOneIdx1111
        (by native_decide) (by native_decide)
      simp [ternaryLengthOneAtomExpr, heq]
  | cut1_0100 =>
      have hcut := (hx.matrixCuts ternaryLengthOneIdx0100).1
      simp [qaryOrbitIndex_univ_ternary_length_one, ternaryLengthOneIdx0000,
        ternaryLengthOneIdx0100, ternaryLengthOneIdx1000, ternaryLengthOneIdx1110,
        ternaryLengthOneIdx1111, qaryMatrixCutLambda, qaryMatrixCutCoeff,
        qaryMatrixCutTerm, qaryTenSum, qaryPartitionCoeff, chooseTwo, chooseThree,
        qaryZeroCoeff, qaryOrbitDistanceIndex, sphereLambda, Finset.sum_range_succ] at hcut
      simpa [ternaryLengthOneAtomExpr] using hcut
  | cut4_1110 =>
      have hcut := (hx.matrixCuts ternaryLengthOneIdx1110).2.2.2
      simp [qaryOrbitIndex_univ_ternary_length_one, ternaryLengthOneIdx0000,
        ternaryLengthOneIdx0100, ternaryLengthOneIdx1000, ternaryLengthOneIdx1110,
        ternaryLengthOneIdx1111, qaryMatrixCutLambda, qaryMatrixCutCoeff,
        qaryMatrixCutTerm, qaryTenSum, qaryPartitionCoeff, chooseTwo, chooseThree,
        qaryZeroCoeff, qaryOrbitDistanceIndex, sphereLambda, Finset.sum_range_succ] at hcut
      change 1 - 2 * x ternaryLengthOneIdx0000 + x ternaryLengthOneIdx1000 <=
        x ternaryLengthOneIdx0000 - x ternaryLengthOneIdx1000 -
          x ternaryLengthOneIdx1000 + x ternaryLengthOneIdx1110 at hcut
      simp [ternaryLengthOneAtomExpr]
      linarith

def ternaryLengthOne_objectiveCertificate :
    ObjectiveLowerCertificate (QaryOrbitIndex 3 1)
      (QaryReducedConstraints 3 1 0 (sphereLambda 1 0) 1)
      (qaryReducedObjective 3 1) 27 where
  gap x := qaryReducedObjective 3 1 x - 27
  gap_nonneg := by
    intro _ hx
    have h :=
      LinearObjectiveLowerCertificate.sound ternaryLengthOneAffineCertificate _
        (ternaryLengthOneAtom_nonneg_of_constraints hx)
    rw [qaryReducedObjectiveExpr_eval] at h
    exact sub_nonneg.mpr h
  identity := by
    intro _
    rfl

theorem ternaryLengthOne_codeObjectiveBound (C : Finset (QaryWord 3 1))
    (hC : CoversFinset C 0) :
    exists x : QaryX 3 1,
      QaryReducedConstraints 3 1 0 (sphereLambda 1 0) 1 x /\
        qaryReducedObjective 3 1 x <= (C.card : Rat) ^ 3 := by
  refine ⟨ternaryLengthOneAllOnes, ternaryLengthOneAllOnes_reducedConstraints, ?_⟩
  have hCeq : C = Finset.univ := by
    ext x
    constructor
    · intro _
      simp
    · intro _
      exact ((covers_zero_iff_univ_subset C).mp hC) (Finset.mem_univ x)
  subst C
  norm_num [qaryReducedObjective, qaryOrbitIndex_univ_ternary_length_one,
    ternaryLengthOneAllOnes, ternaryLengthOneIdx0000, ternaryLengthOneIdx0100,
    ternaryLengthOneIdx1000, ternaryLengthOneIdx1110, ternaryLengthOneIdx1111,
    qaryOrbitMultiplicity]

def ternaryLengthOneReducedDualCertificate :
    QaryReducedDualCertificate 3 1 0 (sphereLambda 1 0) 1 3 where
  bound := 27
  cubeThreshold := by norm_num
  objectiveCertificate := ternaryLengthOne_objectiveCertificate
  codeObjectiveBound := ternaryLengthOne_codeObjectiveBound

end

end GijswijtPolak2025
end SDP
end CoveringCodes
