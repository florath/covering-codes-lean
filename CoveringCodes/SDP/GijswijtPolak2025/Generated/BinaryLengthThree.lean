import CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryLengthThreeSupport
import CoveringCodes.SmallCases.ZeroRadius

/-!
# Generated finite support for the binary length-three SDP

This file contains closed rational checks for the `(q,n,r) = (2,3,0)`
reduced SDP.
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

noncomputable section

set_option linter.unusedSimpArgs false
set_option maxHeartbeats 2000000

def binaryLengthThreeRankOneVector : Fin 4 -> Rat
  | ⟨0, _⟩ => 1
  | ⟨1, _⟩ => 3
  | ⟨2, _⟩ => 3
  | ⟨3, _⟩ => 1
  | ⟨n + 4, h⟩ => by omega

theorem binaryLengthThreeBlock0_rankOne :
    binaryBlock 3 0 binaryLengthThreeAllOnes =
      fun row col : Fin 4 =>
        binaryLengthThreeRankOneVector row * binaryLengthThreeRankOneVector col := by
  ext row col
  fin_cases row <;> fin_cases col <;> native_decide

theorem binaryLengthThreeBlock1_zero :
    binaryBlock 3 1 binaryLengthThreeAllOnes =
      (0 : Matrix (Fin 2) (Fin 2) Rat) := by
  ext row col
  fin_cases row <;> fin_cases col <;> native_decide

theorem binaryLengthThreeAllOnes_semidefinite :
    BinaryBlocksPSD binaryLengthThreeAllOnes := by
  intro idx
  rcases idx with ⟨k, hk⟩
  change RatPSD (binaryBlock 3 k binaryLengthThreeAllOnes)
  have hk1 : k <= 1 := by omega
  interval_cases k
  · rw [binaryLengthThreeBlock0_rankOne]
    exact RatPSD.rankOne binaryLengthThreeRankOneVector
  · rw [binaryLengthThreeBlock1_zero]
    exact RatPSD.zero

theorem binaryLengthThree_lasserreTarget_delta
    (source target : BinaryOrbitIndex 3) :
    binaryLasserreTargetCoeff (sphereLambda 3 0) source target =
      if target = source then 1 else 0 := by
  rcases binaryOrbitIndex_length_three_cases source with
    rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
    rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    rcases binaryOrbitIndex_length_three_cases target with
      rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
      rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    native_decide

theorem binaryLengthThreeAllOnes_lasserreX_zero :
    binaryLasserreX (sphereLambda 3 0) 1 binaryLengthThreeAllOnes = fun _ => 0 := by
  funext source
  rw [binaryLasserreX]
  simp [binaryLengthThree_lasserreTarget_delta, binaryLengthThreeAllOnes]
  have hd : binaryOrbitDistanceIndex source <= 3 := by
    unfold binaryOrbitDistanceIndex
    have ht_i := source.ht_i
    have ht_j := source.ht_j
    have hij := source.hij
    omega
  simp [binaryZeroCoeff, hd, binaryLengthThreeAllOnes]

theorem binaryLengthThreeZeroBlock_k0 :
    binaryBlock 3 0 (fun _ : BinaryOrbitIndex 3 => (0 : Rat)) =
      (0 : Matrix (Fin 4) (Fin 4) Rat) := by
  ext row col
  fin_cases row <;> fin_cases col <;> native_decide

theorem binaryLengthThreeZeroBlock_k1 :
    binaryBlock 3 1 (fun _ : BinaryOrbitIndex 3 => (0 : Rat)) =
      (0 : Matrix (Fin 2) (Fin 2) Rat) := by
  ext row col
  fin_cases row <;> fin_cases col <;> native_decide

theorem binaryLengthThreeAllOnes_lasserre :
    BinaryLasserreConstraints (sphereLambda 3 0) 1 binaryLengthThreeAllOnes := by
  intro idx
  rcases idx with ⟨k, hk⟩
  change RatPSD (binaryBlock 3 k
    (binaryLasserreX (sphereLambda 3 0) 1 binaryLengthThreeAllOnes))
  rw [binaryLengthThreeAllOnes_lasserreX_zero]
  have hk1 : k <= 1 := by omega
  interval_cases k
  · rw [binaryLengthThreeZeroBlock_k0]
    exact RatPSD.zero
  · rw [binaryLengthThreeZeroBlock_k1]
    exact RatPSD.zero

theorem binaryLengthThree_matrixCutLambda_delta
    (source target : BinaryOrbitIndex 3) :
    binaryMatrixCutLambda (sphereLambda 3 0) source target =
      if target = source then 1 else 0 := by
  rcases binaryOrbitIndex_length_three_cases source with
    rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
    rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    rcases binaryOrbitIndex_length_three_cases target with
      rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
      rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    native_decide

theorem binaryLengthThreeAllOnes_matrixCuts :
    BinaryMatrixCutConstraints (sphereLambda 3 0) 1 binaryLengthThreeAllOnes := by
  intro source
  dsimp [BinaryMatrixCutConstraints]
  simp [binaryLengthThree_matrixCutLambda_delta, binaryLengthThreeAllOnes]
  have hs_i : source.i <= 3 := source.i_le_n
  have hj : source.j <= 3 := source.j_le_n
  have hd : binaryOrbitDistanceIndex source <= 3 := by
    unfold binaryOrbitDistanceIndex
    have ht_i := source.ht_i
    have ht_j := source.ht_j
    have hij := source.hij
    omega
  simp [binaryZeroCoeff, hs_i, hj, hd, binaryLengthThreeAllOnes]
  norm_num

def binaryLengthThreeAllOnes_reducedConstraints :
    BinaryReducedConstraints 3 0 (sphereLambda 3 0) 1 binaryLengthThreeAllOnes where
  basic := binaryLengthThreeAllOnes_basic
  semidefinite := binaryLengthThreeAllOnes_semidefinite
  lasserre := binaryLengthThreeAllOnes_lasserre
  matrixCuts := binaryLengthThreeAllOnes_matrixCuts

theorem binaryLengthThree_zeroCoeff0_ge_one {x : BinaryX 3}
    (hx : BinaryReducedConstraints 3 0 (sphereLambda 3 0) 1 x) :
    1 <= x binaryLengthThreeIdx000 := by
  have hcut := (hx.matrixCuts binaryLengthThreeIdx000).2.2.2
  simp [binaryOrbitIndex_univ_length_three,
    binaryLengthThreeIdx000,
      binaryLengthThreeIdx010,
      binaryLengthThreeIdx020,
      binaryLengthThreeIdx030,
      binaryLengthThreeIdx100,
      binaryLengthThreeIdx110,
      binaryLengthThreeIdx111,
      binaryLengthThreeIdx120,
      binaryLengthThreeIdx121,
      binaryLengthThreeIdx131,
      binaryLengthThreeIdx200,
      binaryLengthThreeIdx210,
      binaryLengthThreeIdx211,
      binaryLengthThreeIdx221,
      binaryLengthThreeIdx222,
      binaryLengthThreeIdx232,
      binaryLengthThreeIdx300,
      binaryLengthThreeIdx311,
      binaryLengthThreeIdx322,
      binaryLengthThreeIdx333,
    binaryMatrixCutLambda, binaryMatrixCutCoeff, binaryMatrixCutTerm,
    binaryZeroCoeff, binaryOrbitDistanceIndex, sphereLambda, Finset.sum_range_succ] at hcut
  change 1 - 2 * x binaryLengthThreeIdx000 + x binaryLengthThreeIdx000 <= 0 at hcut
  linarith

theorem binaryLengthThree_zeroCoeff_ge_zero {x : BinaryX 3}
    (hx : BinaryReducedConstraints 3 0 (sphereLambda 3 0) 1 x)
    (d : Nat) (hd : d <= 3) :
    x binaryLengthThreeIdx000 <= binaryZeroCoeff x d := by
  interval_cases d
  · simp [binaryZeroCoeff, binaryLengthThreeIdx000]
  · have hcut := (hx.matrixCuts binaryLengthThreeIdx010).1
    simp [binaryOrbitIndex_univ_length_three,
      binaryLengthThreeIdx000,
      binaryLengthThreeIdx010,
      binaryLengthThreeIdx020,
      binaryLengthThreeIdx030,
      binaryLengthThreeIdx100,
      binaryLengthThreeIdx110,
      binaryLengthThreeIdx111,
      binaryLengthThreeIdx120,
      binaryLengthThreeIdx121,
      binaryLengthThreeIdx131,
      binaryLengthThreeIdx200,
      binaryLengthThreeIdx210,
      binaryLengthThreeIdx211,
      binaryLengthThreeIdx221,
      binaryLengthThreeIdx222,
      binaryLengthThreeIdx232,
      binaryLengthThreeIdx300,
      binaryLengthThreeIdx311,
      binaryLengthThreeIdx322,
      binaryLengthThreeIdx333,
      binaryMatrixCutLambda, binaryMatrixCutCoeff, binaryMatrixCutTerm,
      binaryZeroCoeff, binaryOrbitDistanceIndex, sphereLambda, Finset.sum_range_succ] at hcut
    change x binaryLengthThreeIdx000 <= x binaryLengthThreeIdx010 at hcut
    have heq := hx.basic.2.2 binaryLengthThreeIdx010 binaryLengthThreeIdx100 (by native_decide)
    change x binaryLengthThreeIdx000 <= x binaryLengthThreeIdx100
    linarith
  · have hcut := (hx.matrixCuts binaryLengthThreeIdx020).1
    simp [binaryOrbitIndex_univ_length_three,
      binaryLengthThreeIdx000,
      binaryLengthThreeIdx010,
      binaryLengthThreeIdx020,
      binaryLengthThreeIdx030,
      binaryLengthThreeIdx100,
      binaryLengthThreeIdx110,
      binaryLengthThreeIdx111,
      binaryLengthThreeIdx120,
      binaryLengthThreeIdx121,
      binaryLengthThreeIdx131,
      binaryLengthThreeIdx200,
      binaryLengthThreeIdx210,
      binaryLengthThreeIdx211,
      binaryLengthThreeIdx221,
      binaryLengthThreeIdx222,
      binaryLengthThreeIdx232,
      binaryLengthThreeIdx300,
      binaryLengthThreeIdx311,
      binaryLengthThreeIdx322,
      binaryLengthThreeIdx333,
      binaryMatrixCutLambda, binaryMatrixCutCoeff, binaryMatrixCutTerm,
      binaryZeroCoeff, binaryOrbitDistanceIndex, sphereLambda, Finset.sum_range_succ] at hcut
    change x binaryLengthThreeIdx000 <= x binaryLengthThreeIdx020 at hcut
    have heq := hx.basic.2.2 binaryLengthThreeIdx020 binaryLengthThreeIdx200 (by native_decide)
    change x binaryLengthThreeIdx000 <= x binaryLengthThreeIdx200
    linarith
  · have hcut := (hx.matrixCuts binaryLengthThreeIdx030).1
    simp [binaryOrbitIndex_univ_length_three,
      binaryLengthThreeIdx000,
      binaryLengthThreeIdx010,
      binaryLengthThreeIdx020,
      binaryLengthThreeIdx030,
      binaryLengthThreeIdx100,
      binaryLengthThreeIdx110,
      binaryLengthThreeIdx111,
      binaryLengthThreeIdx120,
      binaryLengthThreeIdx121,
      binaryLengthThreeIdx131,
      binaryLengthThreeIdx200,
      binaryLengthThreeIdx210,
      binaryLengthThreeIdx211,
      binaryLengthThreeIdx221,
      binaryLengthThreeIdx222,
      binaryLengthThreeIdx232,
      binaryLengthThreeIdx300,
      binaryLengthThreeIdx311,
      binaryLengthThreeIdx322,
      binaryLengthThreeIdx333,
      binaryMatrixCutLambda, binaryMatrixCutCoeff, binaryMatrixCutTerm,
      binaryZeroCoeff, binaryOrbitDistanceIndex, sphereLambda, Finset.sum_range_succ] at hcut
    change x binaryLengthThreeIdx000 <= x binaryLengthThreeIdx030 at hcut
    have heq := hx.basic.2.2 binaryLengthThreeIdx030 binaryLengthThreeIdx300 (by native_decide)
    change x binaryLengthThreeIdx000 <= x binaryLengthThreeIdx300
    linarith

theorem binaryLengthThree_one_le_all {x : BinaryX 3}
    (hx : BinaryReducedConstraints 3 0 (sphereLambda 3 0) 1 x)
    (idx : BinaryOrbitIndex 3) :
    1 <= x idx := by
  have hx0 := binaryLengthThree_zeroCoeff0_ge_one hx
  have htri := (hx.basic.2.1 idx).1
  have hzi := binaryLengthThree_zeroCoeff_ge_zero hx idx.i idx.i_le_n
  have hdist_le : binaryOrbitDistanceIndex idx <= 3 := by
    unfold binaryOrbitDistanceIndex
    have ht_i := idx.ht_i
    have ht_j := idx.ht_j
    have hij := idx.hij
    omega
  have hzd := binaryLengthThree_zeroCoeff_ge_zero hx (binaryOrbitDistanceIndex idx) hdist_le
  have hz0 : binaryZeroCoeff x 0 = x binaryLengthThreeIdx000 := by
    simp [binaryZeroCoeff, binaryLengthThreeIdx000]
  rw [hz0] at htri
  linarith

theorem binaryLengthThree_objective_ge {x : BinaryX 3}
    (hx : BinaryReducedConstraints 3 0 (sphereLambda 3 0) 1 x) :
    512 <= binaryReducedObjective 3 x := by
  unfold binaryReducedObjective
  have hsum_ge :
      (64 : Rat) <= Finset.univ.sum (fun idx : BinaryOrbitIndex 3 =>
        binaryOrbitMultiplicity 3 idx * x idx) := by
    calc
      (64 : Rat) = Finset.univ.sum (fun idx : BinaryOrbitIndex 3 =>
          binaryOrbitMultiplicity 3 idx) := by
        norm_num [binaryOrbitIndex_univ_length_three,
          binaryLengthThreeIdx000,
      binaryLengthThreeIdx010,
      binaryLengthThreeIdx020,
      binaryLengthThreeIdx030,
      binaryLengthThreeIdx100,
      binaryLengthThreeIdx110,
      binaryLengthThreeIdx111,
      binaryLengthThreeIdx120,
      binaryLengthThreeIdx121,
      binaryLengthThreeIdx131,
      binaryLengthThreeIdx200,
      binaryLengthThreeIdx210,
      binaryLengthThreeIdx211,
      binaryLengthThreeIdx221,
      binaryLengthThreeIdx222,
      binaryLengthThreeIdx232,
      binaryLengthThreeIdx300,
      binaryLengthThreeIdx311,
      binaryLengthThreeIdx322,
      binaryLengthThreeIdx333, binaryOrbitMultiplicity]
      _ <= Finset.univ.sum (fun idx : BinaryOrbitIndex 3 =>
          binaryOrbitMultiplicity 3 idx * x idx) := by
        apply Finset.sum_le_sum
        intro idx _
        have hmult_nonneg : 0 <= binaryOrbitMultiplicity 3 idx :=
          le_of_lt (binaryOrbitMultiplicity_pos 3 idx)
        have hxi : 1 <= x idx := binaryLengthThree_one_le_all hx idx
        nlinarith
  norm_num
  nlinarith

def binaryLengthThree_objectiveCertificate :
    ObjectiveLowerCertificate (BinaryOrbitIndex 3)
      (BinaryReducedConstraints 3 0 (sphereLambda 3 0) 1)
      (binaryReducedObjective 3) 512 where
  gap x := binaryReducedObjective 3 x - 512
  gap_nonneg := by
    intro _ hx
    exact sub_nonneg.mpr (binaryLengthThree_objective_ge hx)
  identity := by
    intro _
    rfl

theorem binaryLengthThree_codeObjectiveBound (C : Finset (QaryWord 2 3))
    (hC : CoversFinset C 0) :
    exists x : BinaryX 3,
      BinaryReducedConstraints 3 0 (sphereLambda 3 0) 1 x /\
        binaryReducedObjective 3 x <= (C.card : Rat) ^ 3 := by
  refine ⟨binaryLengthThreeAllOnes, binaryLengthThreeAllOnes_reducedConstraints, ?_⟩
  have hCeq : C = Finset.univ := by
    ext x
    constructor
    · intro _
      simp
    · intro _
      exact ((covers_zero_iff_univ_subset C).mp hC) (Finset.mem_univ x)
  subst C
  norm_num [binaryReducedObjective, binaryOrbitIndex_univ_length_three,
    binaryLengthThreeAllOnes, binaryLengthThreeIdx000, binaryLengthThreeIdx010,
    binaryLengthThreeIdx020, binaryLengthThreeIdx030, binaryLengthThreeIdx100,
    binaryLengthThreeIdx110, binaryLengthThreeIdx111, binaryLengthThreeIdx120,
    binaryLengthThreeIdx121, binaryLengthThreeIdx131, binaryLengthThreeIdx200,
    binaryLengthThreeIdx210, binaryLengthThreeIdx211, binaryLengthThreeIdx221,
    binaryLengthThreeIdx222, binaryLengthThreeIdx232, binaryLengthThreeIdx300,
    binaryLengthThreeIdx311, binaryLengthThreeIdx322, binaryLengthThreeIdx333,
    binaryOrbitMultiplicity]

def binaryLengthThreeReducedDualCertificate :
    BinaryReducedDualCertificate 3 0 (sphereLambda 3 0) 1 8 where
  bound := 512
  cubeThreshold := by norm_num
  objectiveCertificate := binaryLengthThree_objectiveCertificate
  codeObjectiveBound := binaryLengthThree_codeObjectiveBound

end

end GijswijtPolak2025
end SDP
end CoveringCodes
