import CoveringCodes.SDP.GijswijtPolak2025.BinaryReducedSDP
import CoveringCodes.SmallCases.ZeroRadius

/-!
# Generated finite certificate for the binary length-one SDP

This file contains the closed finite checks for the smallest binary reduced SDP
instance, `q = 2`, `n = 1`, `r = 0`.  The finite arithmetic checks use
`native_decide` only after all orbit sums have been reduced to explicit
four-element orbit lists.
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

noncomputable section

def binaryLengthOneIdx000 : BinaryOrbitIndex 1 where
  i := 0
  j := 0
  t := 0
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthOneIdx010 : BinaryOrbitIndex 1 where
  i := 0
  j := 1
  t := 0
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthOneIdx100 : BinaryOrbitIndex 1 where
  i := 1
  j := 0
  t := 0
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthOneIdx111 : BinaryOrbitIndex 1 where
  i := 1
  j := 1
  t := 1
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthOneAllOnes : BinaryX 1 := fun _ => 1

inductive BinaryLengthOneAtom where
  | cut4Zero
  | nonneg010
  | nonneg100
  | nonneg111
  deriving DecidableEq, Fintype

def binaryLengthOneAtomExpr : BinaryLengthOneAtom -> LinExpr (BinaryOrbitIndex 1)
  | .cut4Zero =>
      LinExpr.add (LinExpr.var binaryLengthOneIdx000)
        (LinExpr.constExpr (BinaryOrbitIndex 1) (-1))
  | .nonneg010 => LinExpr.var binaryLengthOneIdx010
  | .nonneg100 => LinExpr.var binaryLengthOneIdx100
  | .nonneg111 => LinExpr.var binaryLengthOneIdx111

def binaryLengthOneAffineMultiplier : BinaryLengthOneAtom -> Rat := fun _ => 2

def binaryLengthOneExactScalarMultiplier :
    BinaryScalarAtom 1 -> Rat
  | .nonneg idx =>
      if idx = binaryLengthOneIdx010 ∨ idx = binaryLengthOneIdx100 ∨
          idx = binaryLengthOneIdx111 then 2 else 0
  | .matrixCut4 source =>
      if source = binaryLengthOneIdx000 then 2 else 0
  | _ => 0

def binaryLengthOneZeroDualGram (atom : BinaryMatrixAtom 1) :
    GramEntryCertificate (BinaryMatrixAtom.Coord atom) PEmpty
      (0 : Matrix (BinaryMatrixAtom.Coord atom) (BinaryMatrixAtom.Coord atom) Rat) where
  B := fun empty _ => PEmpty.elim empty
  entry_eq := by
    intro i j
    simp

theorem binaryLengthOneExactScalarMultiplier_nonneg
    (atom : BinaryScalarAtom 1) :
    0 <= binaryLengthOneExactScalarMultiplier atom := by
  cases atom with
  | nonneg idx =>
      by_cases h : idx = binaryLengthOneIdx010 ∨ idx = binaryLengthOneIdx100 ∨
          idx = binaryLengthOneIdx111 <;>
        simp [binaryLengthOneExactScalarMultiplier, h]
  | matrixCut4 source =>
      by_cases h : source = binaryLengthOneIdx000 <;>
        simp [binaryLengthOneExactScalarMultiplier, h]
  | diagonalUpper idx =>
      simp [binaryLengthOneExactScalarMultiplier]
  | triangleLower idx =>
      simp [binaryLengthOneExactScalarMultiplier]
  | distanceUpper idx =>
      simp [binaryLengthOneExactScalarMultiplier]
  | symmetryLe idx idx' =>
      simp [binaryLengthOneExactScalarMultiplier]
  | symmetryGe idx idx' =>
      simp [binaryLengthOneExactScalarMultiplier]
  | matrixCut1 source =>
      simp [binaryLengthOneExactScalarMultiplier]
  | matrixCut2 source =>
      simp [binaryLengthOneExactScalarMultiplier]
  | matrixCut3 source =>
      simp [binaryLengthOneExactScalarMultiplier]

theorem binaryOrbitIndex_length_one_cases (idx : BinaryOrbitIndex 1) :
    idx = binaryLengthOneIdx000 ∨ idx = binaryLengthOneIdx010 ∨
      idx = binaryLengthOneIdx100 ∨ idx = binaryLengthOneIdx111 := by
  rcases idx with ⟨i, j, t, ht_i, ht_j, hij⟩
  have hi : i <= 1 := by omega
  have hj : j <= 1 := by omega
  have ht : t <= 1 := by omega
  interval_cases i <;> interval_cases j <;> interval_cases t
  · left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthOneIdx000]
  · right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthOneIdx010]
  · right; right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthOneIdx100]
  · exfalso
    omega
  · right; right; right
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthOneIdx111]

theorem binaryOrbitIndex_univ_length_one :
    (Finset.univ : Finset (BinaryOrbitIndex 1)) =
      {binaryLengthOneIdx000, binaryLengthOneIdx010,
        binaryLengthOneIdx100, binaryLengthOneIdx111} := by
  ext idx
  constructor
  · intro _
    rcases binaryOrbitIndex_length_one_cases idx with rfl | rfl | rfl | rfl <;>
      simp
  · intro _
    simp

theorem binaryLengthOneAllOnes_basic :
    BinaryBasicConstraints binaryLengthOneAllOnes := by
  refine ⟨?_, ?_, ?_⟩
  · intro idx
    rcases binaryOrbitIndex_length_one_cases idx with rfl | rfl | rfl | rfl <;>
      native_decide
  · intro idx
    rcases binaryOrbitIndex_length_one_cases idx with rfl | rfl | rfl | rfl <;>
      native_decide
  · intro _ _ _
    rfl

theorem binaryLengthOneAllOnes_semidefinite :
    BinaryBlocksPSD binaryLengthOneAllOnes := by
  intro idx
  rcases idx with ⟨k, hk⟩
  change RatPSD (binaryBlock 1 k binaryLengthOneAllOnes)
  have hk0 : k <= 0 := by omega
  interval_cases k
  simpa [binaryLengthOneAllOnes] using binaryBlock_length_one_allOnes_psd

theorem binaryLengthOneAllOnes_lasserre :
    BinaryLasserreConstraints (sphereLambda 1 0) 1 binaryLengthOneAllOnes := by
  intro idx
  rcases idx with ⟨k, hk⟩
  change
    RatPSD
      (binaryBlock 1 k
        (binaryLasserreX (sphereLambda 1 0) 1 binaryLengthOneAllOnes))
  have hk0 : k <= 0 := by omega
  interval_cases k
  convert (RatPSD.zero : RatPSD (0 : Matrix (Fin 2) (Fin 2) Rat)) using 1
  ext row col
  fin_cases row <;> fin_cases col <;>
    simp [binaryBlock, binaryBlockEntry, binaryLasserreX, binaryLasserreTargetCoeff,
      binaryEtaCoeff, binaryEtaTerm, binaryOrbitIndex_univ_length_one,
      binaryLengthOneAllOnes, binaryLengthOneIdx000, binaryLengthOneIdx010,
      binaryLengthOneIdx100, binaryLengthOneIdx111, sphereLambda, binaryZeroCoeff,
      binaryOrbitDistanceIndex, Finset.sum_range_succ] <;>
    native_decide

theorem binaryLengthOneAllOnes_matrixCuts :
    BinaryMatrixCutConstraints (sphereLambda 1 0) 1 binaryLengthOneAllOnes := by
  intro source
  rcases binaryOrbitIndex_length_one_cases source with rfl | rfl | rfl | rfl <;>
    simp [binaryOrbitIndex_univ_length_one, binaryLengthOneAllOnes,
      binaryLengthOneIdx000, binaryLengthOneIdx010, binaryLengthOneIdx100,
      binaryLengthOneIdx111, binaryMatrixCutLambda, sphereLambda,
      binaryMatrixCutCoeff, binaryMatrixCutTerm, Finset.sum_range_succ,
      binaryZeroCoeff, binaryOrbitDistanceIndex] <;>
    native_decide

def binaryLengthOneAllOnes_reducedConstraints :
    BinaryReducedConstraints 1 0 (sphereLambda 1 0) 1 binaryLengthOneAllOnes where
  basic := binaryLengthOneAllOnes_basic
  semidefinite := binaryLengthOneAllOnes_semidefinite
  lasserre := binaryLengthOneAllOnes_lasserre
  matrixCuts := binaryLengthOneAllOnes_matrixCuts

theorem binaryLengthOne_zeroCoeff_ge_one {x : BinaryX 1}
    (hx : BinaryReducedConstraints 1 0 (sphereLambda 1 0) 1 x) :
    1 <= x binaryLengthOneIdx000 := by
  have hcut := (hx.matrixCuts binaryLengthOneIdx000).2.2.2
  simp [binaryOrbitIndex_univ_length_one, binaryLengthOneIdx000,
    binaryLengthOneIdx010, binaryLengthOneIdx100, binaryLengthOneIdx111,
    binaryMatrixCutLambda, sphereLambda, binaryMatrixCutCoeff,
    binaryMatrixCutTerm, Finset.sum_range_succ, binaryZeroCoeff,
    binaryOrbitDistanceIndex] at hcut
  change 1 - 2 * x binaryLengthOneIdx000 + x binaryLengthOneIdx000 <= 0 at hcut
  linarith

def binaryLengthOneAffineCertificate :
    LinearObjectiveLowerCertificate (BinaryOrbitIndex 1) BinaryLengthOneAtom
      binaryLengthOneAtomExpr (binaryReducedObjectiveExpr 1) 2 where
  multiplier := binaryLengthOneAffineMultiplier
  multiplier_nonneg := by
    intro atom
    cases atom <;> norm_num [binaryLengthOneAffineMultiplier]
  slack := 0
  slack_nonneg := by norm_num
  const_identity := by
    norm_num [binaryReducedObjectiveExpr, binaryOrbitIndex_univ_length_one,
      binaryLengthOneIdx000, binaryLengthOneIdx010, binaryLengthOneIdx100,
      binaryLengthOneIdx111, binaryLengthOneAtomExpr,
      binaryLengthOneAffineMultiplier, LinExpr.add, LinExpr.var, LinExpr.smul,
      LinExpr.sum, LinExpr.constExpr, binaryOrbitMultiplicity]
    native_decide
  coeff_identity := by
    intro idx
    rcases binaryOrbitIndex_length_one_cases idx with rfl | rfl | rfl | rfl <;>
      (norm_num [binaryReducedObjectiveExpr, binaryOrbitIndex_univ_length_one,
        binaryLengthOneIdx000, binaryLengthOneIdx010, binaryLengthOneIdx100,
        binaryLengthOneIdx111, binaryLengthOneAtomExpr,
        binaryLengthOneAffineMultiplier, LinExpr.add, LinExpr.var, LinExpr.smul,
        LinExpr.sum, LinExpr.constExpr, binaryOrbitMultiplicity];
       native_decide)

theorem binaryLengthOneAtom_nonneg_of_constraints {x : BinaryX 1}
    (hx : BinaryReducedConstraints 1 0 (sphereLambda 1 0) 1 x) :
    LinearConstraints binaryLengthOneAtomExpr x := by
  intro atom
  cases atom with
  | cut4Zero =>
      have hx0 := binaryLengthOne_zeroCoeff_ge_one hx
      simpa [binaryLengthOneAtomExpr, LinExpr.eval, LinExpr.add, LinExpr.var,
        LinExpr.constExpr] using hx0
  | nonneg010 =>
      simpa [binaryLengthOneAtomExpr] using (hx.basic.1 binaryLengthOneIdx010).1
  | nonneg100 =>
      simpa [binaryLengthOneAtomExpr] using (hx.basic.1 binaryLengthOneIdx100).1
  | nonneg111 =>
      simpa [binaryLengthOneAtomExpr] using (hx.basic.1 binaryLengthOneIdx111).1

theorem binaryLengthOne_objective_lower {x : BinaryX 1}
    (hx : BinaryReducedConstraints 1 0 (sphereLambda 1 0) 1 x) :
    2 <= binaryReducedObjective 1 x := by
  let summand := fun idx : BinaryOrbitIndex 1 =>
    binaryOrbitMultiplicity 1 idx * x idx
  have hnonneg : forall idx : BinaryOrbitIndex 1, 0 <= summand idx := by
    intro idx
    exact mul_nonneg (le_of_lt (binaryOrbitMultiplicity_pos 1 idx))
      (hx.basic.1 idx).1
  have hsingle :
      summand binaryLengthOneIdx000 <= Finset.univ.sum summand := by
    exact Finset.single_le_sum (fun idx _ => hnonneg idx) (Finset.mem_univ _)
  have hx0 := binaryLengthOne_zeroCoeff_ge_one hx
  have hterm :
      2 <= ((2 ^ 1 : Nat) : Rat) * summand binaryLengthOneIdx000 := by
    dsimp [summand]
    norm_num [binaryLengthOneIdx000, binaryOrbitMultiplicity]
    exact hx0
  unfold binaryReducedObjective
  exact hterm.trans (mul_le_mul_of_nonneg_left hsingle (by norm_num))

def binaryLengthOne_objectiveCertificate :
    ObjectiveLowerCertificate (BinaryOrbitIndex 1)
      (BinaryReducedConstraints 1 0 (sphereLambda 1 0) 1)
      (binaryReducedObjective 1) 2 where
  gap x := binaryReducedObjective 1 x - 2
  gap_nonneg := by
    intro _ hx
    have h :=
      LinearObjectiveLowerCertificate.sound binaryLengthOneAffineCertificate _
        (binaryLengthOneAtom_nonneg_of_constraints hx)
    rw [binaryReducedObjectiveExpr_eval] at h
    exact sub_nonneg.mpr h
  identity := by
    intro _
    rfl

theorem binaryLengthOne_codeObjectiveBound (C : Finset (QaryWord 2 1))
    (hC : CoversFinset C 0) :
    exists x : BinaryX 1,
      BinaryReducedConstraints 1 0 (sphereLambda 1 0) 1 x ∧
        binaryReducedObjective 1 x <= (C.card : Rat) ^ 3 := by
  refine ⟨binaryLengthOneAllOnes, binaryLengthOneAllOnes_reducedConstraints, ?_⟩
  have hCeq : C = Finset.univ := by
    ext x
    constructor
    · intro _
      simp
    · intro _
      exact ((covers_zero_iff_univ_subset C).mp hC) (Finset.mem_univ x)
  subst C
  norm_num [binaryReducedObjective, binaryOrbitIndex_univ_length_one,
    binaryLengthOneAllOnes, binaryLengthOneIdx000, binaryLengthOneIdx010,
    binaryLengthOneIdx100, binaryLengthOneIdx111, binaryOrbitMultiplicity]

def binaryLengthOneReducedDualCertificate :
    BinaryReducedDualCertificate 1 0 (sphereLambda 1 0) 1 2 where
  bound := 2
  cubeThreshold := by norm_num
  objectiveCertificate := binaryLengthOne_objectiveCertificate
  codeObjectiveBound := binaryLengthOne_codeObjectiveBound

end

end GijswijtPolak2025
end SDP
end CoveringCodes
