import CoveringCodes.SDP.GijswijtPolak2025.Certificates.Linear
import CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryK2_13_1.QuotientFiber
import CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryK2_13_1.BridgeData

/-!
# Quotient bridge for the generated `(q,n,r) = (2,13,1)` SDP certificate

This file contains the instance-specific semantic bridge from the generated
quotient SDP variables back to the full binary Table 1 SDP variables.
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

noncomputable section

set_option maxRecDepth 20000
set_option maxHeartbeats 4000000

def linExprFinData {m : Nat} (expr : LinExpr (Fin m)) : List Rat × Rat :=
  (List.ofFn expr.coeff, expr.const)

theorem linExpr_eq_of_finData_eq {m : Nat} {lhs rhs : LinExpr (Fin m)}
    (h : linExprFinData lhs = linExprFinData rhs) : lhs = rhs := by
  rw [LinExpr.mk.injEq]
  constructor
  · exact List.ofFn_inj.mp (congrArg Prod.fst h)
  · exact congrArg Prod.snd h

def quotientLinExpr {Full Q : Type} [Fintype Full] [Fintype Q] [DecidableEq Q]
    (quotient : Full -> Q) (expr : LinExpr Full) : LinExpr Q where
  coeff q := Finset.univ.sum (fun idx : Full =>
    if quotient idx = q then expr.coeff idx else 0)
  const := expr.const

theorem quotientLinExpr_eval {Full Q : Type} [Fintype Full] [Fintype Q]
    [DecidableEq Q] (quotient : Full -> Q) (expr : LinExpr Full)
    (x : Q -> Rat) :
    (quotientLinExpr quotient expr).eval x =
      expr.eval (fun idx => x (quotient idx)) := by
  unfold quotientLinExpr LinExpr.eval
  simp only
  congr 1
  calc
    (∑ q : Q,
        (∑ idx : Full, (if quotient idx = q then expr.coeff idx else 0)) * x q) =
        ∑ q : Q, ∑ idx : Full,
          (if quotient idx = q then expr.coeff idx else 0) * x q := by
          apply Finset.sum_congr rfl
          intro q _
          rw [Finset.sum_mul]
    _ = ∑ idx : Full, ∑ q : Q,
          (if quotient idx = q then expr.coeff idx else 0) * x q := by
          rw [Finset.sum_comm]
    _ = ∑ idx : Full, expr.coeff idx * x (quotient idx) := by
          apply Finset.sum_congr rfl
          intro idx _
          rw [Finset.sum_eq_single (quotient idx)]
          · simp
          · intro q _ hq
            have hneq : quotient idx ≠ q := by
              intro h
              exact hq h.symm
            simp [hneq]
          · intro h
            exact (h (Finset.mem_univ (quotient idx))).elim

def quotientLinExprOfFin {Full Q : Type} {m : Nat} [Fintype Q] [DecidableEq Q]
    (ofFin : Fin m -> Full) (quotient : Fin m -> Q)
    (expr : LinExpr Full) : LinExpr Q where
  coeff q := Finset.univ.sum (fun idx : Fin m =>
    if quotient idx = q then expr.coeff (ofFin idx) else 0)
  const := expr.const

theorem binaryLengthThirteenQuotientLinExpr_eq_quotientLinExprOfFin
    (expr : LinExpr (BinaryOrbitIndex 13)) :
    binaryLengthThirteenQuotientLinExpr expr =
      quotientLinExprOfFin binaryLengthThirteenOrbitOfFin
        binaryLengthThirteenQuotientOfOrbitFin expr := by
  rw [LinExpr.mk.injEq]
  constructor
  · funext q
    unfold binaryLengthThirteenQuotientLinExpr quotientLinExprOfFin
    dsimp
    rw [binaryLengthThirteenQuotientFiber_eq_filter q]
    rw [Finset.sum_filter]
  · rfl

theorem quotientLinExprOfFin_eval {Full Q : Type} {m : Nat} [Fintype Q]
    [DecidableEq Q] (ofFin : Fin m -> Full) (quotient : Fin m -> Q)
    (expr : LinExpr Full) (x : Q -> Rat) :
    (quotientLinExprOfFin ofFin quotient expr).eval x =
      expr.const + Finset.univ.sum (fun idx : Fin m =>
        expr.coeff (ofFin idx) * x (quotient idx)) := by
  unfold quotientLinExprOfFin LinExpr.eval
  simp only
  congr 1
  calc
    (∑ q : Q,
        (∑ idx : Fin m, (if quotient idx = q then expr.coeff (ofFin idx) else 0)) *
          x q) =
        ∑ q : Q, ∑ idx : Fin m,
          (if quotient idx = q then expr.coeff (ofFin idx) else 0) * x q := by
          apply Finset.sum_congr rfl
          intro q _
          rw [Finset.sum_mul]
    _ = ∑ idx : Fin m, ∑ q : Q,
          (if quotient idx = q then expr.coeff (ofFin idx) else 0) * x q := by
          rw [Finset.sum_comm]
    _ = ∑ idx : Fin m, expr.coeff (ofFin idx) * x (quotient idx) := by
          apply Finset.sum_congr rfl
          intro idx _
          rw [Finset.sum_eq_single (quotient idx)]
          · simp
          · intro q _ hq
            have hneq : quotient idx ≠ q := by
              intro h
              exact hq h.symm
            simp [hneq]
          · intro h
            exact (h (Finset.mem_univ (quotient idx))).elim

def binaryLengthThirteenOrbitEquiv : Fin 560 ≃ BinaryOrbitIndex 13 where
  toFun := binaryLengthThirteenOrbitOfFin
  invFun := binaryLengthThirteenOrbitToFin
  left_inv := binaryLengthThirteenOrbitToFin_ofFin
  right_inv := binaryLengthThirteenOrbitOfFin_toFin

theorem binaryLengthThirteen_sum_orbit_eq_fin (f : BinaryOrbitIndex 13 -> Rat) :
    (∑ idx : BinaryOrbitIndex 13, f idx) =
      ∑ idx : Fin 560, f (binaryLengthThirteenOrbitOfFin idx) := by
  exact (Fintype.sum_equiv binaryLengthThirteenOrbitEquiv
    (fun idx : Fin 560 => f (binaryLengthThirteenOrbitOfFin idx)) f
    (fun _ => rfl)).symm

theorem quotientLinExprOfFin_eval_binaryLengthThirteen
    (expr : LinExpr (BinaryOrbitIndex 13)) (x : binaryK2_13_1QVar -> Rat) :
    (quotientLinExprOfFin binaryLengthThirteenOrbitOfFin
        binaryLengthThirteenQuotientOfOrbitFin expr).eval x =
      expr.eval (fun idx => x (binaryLengthThirteenQuotientOfOrbit idx)) := by
  rw [quotientLinExprOfFin_eval]
  unfold LinExpr.eval
  rw [binaryLengthThirteen_sum_orbit_eq_fin]
  simp [binaryLengthThirteenQuotientOfOrbit,
    binaryLengthThirteenOrbitToFin_ofFin]

theorem binaryLengthThirteenQuotientLinExpr_eval
    (expr : LinExpr (BinaryOrbitIndex 13)) (x : binaryK2_13_1QVar -> Rat) :
    (binaryLengthThirteenQuotientLinExpr expr).eval x =
      expr.eval (fun idx => x (binaryLengthThirteenQuotientOfOrbit idx)) := by
  rw [binaryLengthThirteenQuotientLinExpr_eq_quotientLinExprOfFin]
  exact quotientLinExprOfFin_eval_binaryLengthThirteen expr x

def binaryLengthThirteenReducedObjectiveExprFin :
    LinExpr (BinaryOrbitIndex 13) :=
  LinExpr.smul (((2 ^ 13 : Nat) : Rat))
    (LinExpr.sum Finset.univ (fun idx : Fin 560 =>
      LinExpr.smul
        (binaryOrbitMultiplicity 13 (binaryLengthThirteenOrbitOfFin idx))
        (LinExpr.var (binaryLengthThirteenOrbitOfFin idx))))

theorem binaryLengthThirteenReducedObjectiveExprFin_eval (x : BinaryX 13) :
    binaryLengthThirteenReducedObjectiveExprFin.eval x =
      binaryReducedObjective 13 x := by
  unfold binaryLengthThirteenReducedObjectiveExprFin binaryReducedObjective
  simp [binaryLengthThirteen_sum_orbit_eq_fin]

theorem binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin
    (idx : Fin 560) :
    binaryLengthThirteenReducedObjectiveExprFin.coeff
      (binaryLengthThirteenOrbitOfFin idx) =
      (((2 ^ 13 : Nat) : Rat) *
        binaryOrbitMultiplicity 13 (binaryLengthThirteenOrbitOfFin idx)) := by
  have hinj : Function.Injective binaryLengthThirteenOrbitOfFin := by
    intro a b h
    have ht := congrArg binaryLengthThirteenOrbitToFin h
    simpa [binaryLengthThirteenOrbitToFin_ofFin] using ht
  unfold binaryLengthThirteenReducedObjectiveExprFin
  change ((2 ^ 13 : Nat) : Rat) *
      (LinExpr.sum Finset.univ
        (fun idx : Fin 560 =>
          LinExpr.smul
            (binaryOrbitMultiplicity 13 (binaryLengthThirteenOrbitOfFin idx))
            (LinExpr.var (binaryLengthThirteenOrbitOfFin idx)))).coeff
        (binaryLengthThirteenOrbitOfFin idx) =
      ((2 ^ 13 : Nat) : Rat) *
        binaryOrbitMultiplicity 13 (binaryLengthThirteenOrbitOfFin idx)
  rw [LinExpr.sum_smul_var_coeff_of_injective Finset.univ
      binaryLengthThirteenOrbitOfFin
      (fun idx => binaryOrbitMultiplicity 13 (binaryLengthThirteenOrbitOfFin idx)) hinj idx]
  simp

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_0 :
    binaryK2_13_1Objective.coeff (⟨0, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨0, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_0_0_0]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_1 :
    binaryK2_13_1Objective.coeff (⟨1, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨1, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_0_1_0,
      binaryLengthThirteenIdx_1_0_0,
      binaryLengthThirteenIdx_1_1_1]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_2 :
    binaryK2_13_1Objective.coeff (⟨2, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨2, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_0_2_0,
      binaryLengthThirteenIdx_2_0_0,
      binaryLengthThirteenIdx_2_2_2]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_3 :
    binaryK2_13_1Objective.coeff (⟨3, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨3, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_0_3_0,
      binaryLengthThirteenIdx_3_0_0,
      binaryLengthThirteenIdx_3_3_3]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_4 :
    binaryK2_13_1Objective.coeff (⟨4, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨4, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_0_4_0,
      binaryLengthThirteenIdx_4_0_0,
      binaryLengthThirteenIdx_4_4_4]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_5 :
    binaryK2_13_1Objective.coeff (⟨5, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨5, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_0_5_0,
      binaryLengthThirteenIdx_5_0_0,
      binaryLengthThirteenIdx_5_5_5]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_6 :
    binaryK2_13_1Objective.coeff (⟨6, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨6, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_0_6_0,
      binaryLengthThirteenIdx_6_0_0,
      binaryLengthThirteenIdx_6_6_6]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_7 :
    binaryK2_13_1Objective.coeff (⟨7, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨7, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_0_7_0,
      binaryLengthThirteenIdx_7_0_0,
      binaryLengthThirteenIdx_7_7_7]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_8 :
    binaryK2_13_1Objective.coeff (⟨8, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨8, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_0_8_0,
      binaryLengthThirteenIdx_8_0_0,
      binaryLengthThirteenIdx_8_8_8]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_9 :
    binaryK2_13_1Objective.coeff (⟨9, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨9, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_0_9_0,
      binaryLengthThirteenIdx_9_0_0,
      binaryLengthThirteenIdx_9_9_9]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_10 :
    binaryK2_13_1Objective.coeff (⟨10, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨10, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_0_10_0,
      binaryLengthThirteenIdx_10_0_0,
      binaryLengthThirteenIdx_10_10_10]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_11 :
    binaryK2_13_1Objective.coeff (⟨11, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨11, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_0_11_0,
      binaryLengthThirteenIdx_11_0_0,
      binaryLengthThirteenIdx_11_11_11]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_12 :
    binaryK2_13_1Objective.coeff (⟨12, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨12, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_0_12_0,
      binaryLengthThirteenIdx_12_0_0,
      binaryLengthThirteenIdx_12_12_12]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_13 :
    binaryK2_13_1Objective.coeff (⟨13, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨13, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_0_13_0,
      binaryLengthThirteenIdx_13_0_0,
      binaryLengthThirteenIdx_13_13_13]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_14 :
    binaryK2_13_1Objective.coeff (⟨14, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨14, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_1_1_0,
      binaryLengthThirteenIdx_1_2_1,
      binaryLengthThirteenIdx_2_1_1]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_15 :
    binaryK2_13_1Objective.coeff (⟨15, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨15, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_1_2_0,
      binaryLengthThirteenIdx_1_3_1,
      binaryLengthThirteenIdx_2_1_0,
      binaryLengthThirteenIdx_2_3_2,
      binaryLengthThirteenIdx_3_1_1,
      binaryLengthThirteenIdx_3_2_2]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_16 :
    binaryK2_13_1Objective.coeff (⟨16, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨16, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_1_3_0,
      binaryLengthThirteenIdx_1_4_1,
      binaryLengthThirteenIdx_3_1_0,
      binaryLengthThirteenIdx_3_4_3,
      binaryLengthThirteenIdx_4_1_1,
      binaryLengthThirteenIdx_4_3_3]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_17 :
    binaryK2_13_1Objective.coeff (⟨17, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨17, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_1_4_0,
      binaryLengthThirteenIdx_1_5_1,
      binaryLengthThirteenIdx_4_1_0,
      binaryLengthThirteenIdx_4_5_4,
      binaryLengthThirteenIdx_5_1_1,
      binaryLengthThirteenIdx_5_4_4]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_18 :
    binaryK2_13_1Objective.coeff (⟨18, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨18, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_1_5_0,
      binaryLengthThirteenIdx_1_6_1,
      binaryLengthThirteenIdx_5_1_0,
      binaryLengthThirteenIdx_5_6_5,
      binaryLengthThirteenIdx_6_1_1,
      binaryLengthThirteenIdx_6_5_5]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_19 :
    binaryK2_13_1Objective.coeff (⟨19, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨19, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_1_6_0,
      binaryLengthThirteenIdx_1_7_1,
      binaryLengthThirteenIdx_6_1_0,
      binaryLengthThirteenIdx_6_7_6,
      binaryLengthThirteenIdx_7_1_1,
      binaryLengthThirteenIdx_7_6_6]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_20 :
    binaryK2_13_1Objective.coeff (⟨20, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨20, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_1_7_0,
      binaryLengthThirteenIdx_1_8_1,
      binaryLengthThirteenIdx_7_1_0,
      binaryLengthThirteenIdx_7_8_7,
      binaryLengthThirteenIdx_8_1_1,
      binaryLengthThirteenIdx_8_7_7]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_21 :
    binaryK2_13_1Objective.coeff (⟨21, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨21, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_1_8_0,
      binaryLengthThirteenIdx_1_9_1,
      binaryLengthThirteenIdx_8_1_0,
      binaryLengthThirteenIdx_8_9_8,
      binaryLengthThirteenIdx_9_1_1,
      binaryLengthThirteenIdx_9_8_8]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_22 :
    binaryK2_13_1Objective.coeff (⟨22, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨22, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_1_9_0,
      binaryLengthThirteenIdx_1_10_1,
      binaryLengthThirteenIdx_9_1_0,
      binaryLengthThirteenIdx_9_10_9,
      binaryLengthThirteenIdx_10_1_1,
      binaryLengthThirteenIdx_10_9_9]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_23 :
    binaryK2_13_1Objective.coeff (⟨23, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨23, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_1_10_0,
      binaryLengthThirteenIdx_1_11_1,
      binaryLengthThirteenIdx_10_1_0,
      binaryLengthThirteenIdx_10_11_10,
      binaryLengthThirteenIdx_11_1_1,
      binaryLengthThirteenIdx_11_10_10]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_24 :
    binaryK2_13_1Objective.coeff (⟨24, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨24, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_1_11_0,
      binaryLengthThirteenIdx_1_12_1,
      binaryLengthThirteenIdx_11_1_0,
      binaryLengthThirteenIdx_11_12_11,
      binaryLengthThirteenIdx_12_1_1,
      binaryLengthThirteenIdx_12_11_11]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_25 :
    binaryK2_13_1Objective.coeff (⟨25, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨25, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_1_12_0,
      binaryLengthThirteenIdx_1_13_1,
      binaryLengthThirteenIdx_12_1_0,
      binaryLengthThirteenIdx_12_13_12,
      binaryLengthThirteenIdx_13_1_1,
      binaryLengthThirteenIdx_13_12_12]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_26 :
    binaryK2_13_1Objective.coeff (⟨26, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨26, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_2_2_0,
      binaryLengthThirteenIdx_2_4_2,
      binaryLengthThirteenIdx_4_2_2]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_27 :
    binaryK2_13_1Objective.coeff (⟨27, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨27, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_2_3_0,
      binaryLengthThirteenIdx_2_5_2,
      binaryLengthThirteenIdx_3_2_0,
      binaryLengthThirteenIdx_3_5_3,
      binaryLengthThirteenIdx_5_2_2,
      binaryLengthThirteenIdx_5_3_3]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_28 :
    binaryK2_13_1Objective.coeff (⟨28, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨28, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_2_4_0,
      binaryLengthThirteenIdx_2_6_2,
      binaryLengthThirteenIdx_4_2_0,
      binaryLengthThirteenIdx_4_6_4,
      binaryLengthThirteenIdx_6_2_2,
      binaryLengthThirteenIdx_6_4_4]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_29 :
    binaryK2_13_1Objective.coeff (⟨29, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨29, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_2_5_0,
      binaryLengthThirteenIdx_2_7_2,
      binaryLengthThirteenIdx_5_2_0,
      binaryLengthThirteenIdx_5_7_5,
      binaryLengthThirteenIdx_7_2_2,
      binaryLengthThirteenIdx_7_5_5]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_30 :
    binaryK2_13_1Objective.coeff (⟨30, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨30, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_2_6_0,
      binaryLengthThirteenIdx_2_8_2,
      binaryLengthThirteenIdx_6_2_0,
      binaryLengthThirteenIdx_6_8_6,
      binaryLengthThirteenIdx_8_2_2,
      binaryLengthThirteenIdx_8_6_6]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_31 :
    binaryK2_13_1Objective.coeff (⟨31, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨31, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_2_7_0,
      binaryLengthThirteenIdx_2_9_2,
      binaryLengthThirteenIdx_7_2_0,
      binaryLengthThirteenIdx_7_9_7,
      binaryLengthThirteenIdx_9_2_2,
      binaryLengthThirteenIdx_9_7_7]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_32 :
    binaryK2_13_1Objective.coeff (⟨32, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨32, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_2_8_0,
      binaryLengthThirteenIdx_2_10_2,
      binaryLengthThirteenIdx_8_2_0,
      binaryLengthThirteenIdx_8_10_8,
      binaryLengthThirteenIdx_10_2_2,
      binaryLengthThirteenIdx_10_8_8]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_33 :
    binaryK2_13_1Objective.coeff (⟨33, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨33, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_2_9_0,
      binaryLengthThirteenIdx_2_11_2,
      binaryLengthThirteenIdx_9_2_0,
      binaryLengthThirteenIdx_9_11_9,
      binaryLengthThirteenIdx_11_2_2,
      binaryLengthThirteenIdx_11_9_9]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_34 :
    binaryK2_13_1Objective.coeff (⟨34, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨34, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_2_10_0,
      binaryLengthThirteenIdx_2_12_2,
      binaryLengthThirteenIdx_10_2_0,
      binaryLengthThirteenIdx_10_12_10,
      binaryLengthThirteenIdx_12_2_2,
      binaryLengthThirteenIdx_12_10_10]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_35 :
    binaryK2_13_1Objective.coeff (⟨35, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨35, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_2_11_0,
      binaryLengthThirteenIdx_2_13_2,
      binaryLengthThirteenIdx_11_2_0,
      binaryLengthThirteenIdx_11_13_11,
      binaryLengthThirteenIdx_13_2_2,
      binaryLengthThirteenIdx_13_11_11]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_36 :
    binaryK2_13_1Objective.coeff (⟨36, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨36, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_3_3_0,
      binaryLengthThirteenIdx_3_6_3,
      binaryLengthThirteenIdx_6_3_3]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_37 :
    binaryK2_13_1Objective.coeff (⟨37, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨37, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_3_4_0,
      binaryLengthThirteenIdx_3_7_3,
      binaryLengthThirteenIdx_4_3_0,
      binaryLengthThirteenIdx_4_7_4,
      binaryLengthThirteenIdx_7_3_3,
      binaryLengthThirteenIdx_7_4_4]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_38 :
    binaryK2_13_1Objective.coeff (⟨38, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨38, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_3_5_0,
      binaryLengthThirteenIdx_3_8_3,
      binaryLengthThirteenIdx_5_3_0,
      binaryLengthThirteenIdx_5_8_5,
      binaryLengthThirteenIdx_8_3_3,
      binaryLengthThirteenIdx_8_5_5]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_39 :
    binaryK2_13_1Objective.coeff (⟨39, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨39, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_3_6_0,
      binaryLengthThirteenIdx_3_9_3,
      binaryLengthThirteenIdx_6_3_0,
      binaryLengthThirteenIdx_6_9_6,
      binaryLengthThirteenIdx_9_3_3,
      binaryLengthThirteenIdx_9_6_6]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_40 :
    binaryK2_13_1Objective.coeff (⟨40, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨40, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_3_7_0,
      binaryLengthThirteenIdx_3_10_3,
      binaryLengthThirteenIdx_7_3_0,
      binaryLengthThirteenIdx_7_10_7,
      binaryLengthThirteenIdx_10_3_3,
      binaryLengthThirteenIdx_10_7_7]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_41 :
    binaryK2_13_1Objective.coeff (⟨41, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨41, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_3_8_0,
      binaryLengthThirteenIdx_3_11_3,
      binaryLengthThirteenIdx_8_3_0,
      binaryLengthThirteenIdx_8_11_8,
      binaryLengthThirteenIdx_11_3_3,
      binaryLengthThirteenIdx_11_8_8]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_42 :
    binaryK2_13_1Objective.coeff (⟨42, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨42, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_3_9_0,
      binaryLengthThirteenIdx_3_12_3,
      binaryLengthThirteenIdx_9_3_0,
      binaryLengthThirteenIdx_9_12_9,
      binaryLengthThirteenIdx_12_3_3,
      binaryLengthThirteenIdx_12_9_9]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_43 :
    binaryK2_13_1Objective.coeff (⟨43, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨43, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_3_10_0,
      binaryLengthThirteenIdx_3_13_3,
      binaryLengthThirteenIdx_10_3_0,
      binaryLengthThirteenIdx_10_13_10,
      binaryLengthThirteenIdx_13_3_3,
      binaryLengthThirteenIdx_13_10_10]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_44 :
    binaryK2_13_1Objective.coeff (⟨44, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨44, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_4_4_0,
      binaryLengthThirteenIdx_4_8_4,
      binaryLengthThirteenIdx_8_4_4]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_45 :
    binaryK2_13_1Objective.coeff (⟨45, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨45, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_4_5_0,
      binaryLengthThirteenIdx_4_9_4,
      binaryLengthThirteenIdx_5_4_0,
      binaryLengthThirteenIdx_5_9_5,
      binaryLengthThirteenIdx_9_4_4,
      binaryLengthThirteenIdx_9_5_5]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_46 :
    binaryK2_13_1Objective.coeff (⟨46, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨46, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_4_6_0,
      binaryLengthThirteenIdx_4_10_4,
      binaryLengthThirteenIdx_6_4_0,
      binaryLengthThirteenIdx_6_10_6,
      binaryLengthThirteenIdx_10_4_4,
      binaryLengthThirteenIdx_10_6_6]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_47 :
    binaryK2_13_1Objective.coeff (⟨47, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨47, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_4_7_0,
      binaryLengthThirteenIdx_4_11_4,
      binaryLengthThirteenIdx_7_4_0,
      binaryLengthThirteenIdx_7_11_7,
      binaryLengthThirteenIdx_11_4_4,
      binaryLengthThirteenIdx_11_7_7]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_48 :
    binaryK2_13_1Objective.coeff (⟨48, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨48, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_4_8_0,
      binaryLengthThirteenIdx_4_12_4,
      binaryLengthThirteenIdx_8_4_0,
      binaryLengthThirteenIdx_8_12_8,
      binaryLengthThirteenIdx_12_4_4,
      binaryLengthThirteenIdx_12_8_8]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_49 :
    binaryK2_13_1Objective.coeff (⟨49, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨49, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_4_9_0,
      binaryLengthThirteenIdx_4_13_4,
      binaryLengthThirteenIdx_9_4_0,
      binaryLengthThirteenIdx_9_13_9,
      binaryLengthThirteenIdx_13_4_4,
      binaryLengthThirteenIdx_13_9_9]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_50 :
    binaryK2_13_1Objective.coeff (⟨50, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨50, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_5_5_0,
      binaryLengthThirteenIdx_5_10_5,
      binaryLengthThirteenIdx_10_5_5]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_51 :
    binaryK2_13_1Objective.coeff (⟨51, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨51, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_5_6_0,
      binaryLengthThirteenIdx_5_11_5,
      binaryLengthThirteenIdx_6_5_0,
      binaryLengthThirteenIdx_6_11_6,
      binaryLengthThirteenIdx_11_5_5,
      binaryLengthThirteenIdx_11_6_6]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_52 :
    binaryK2_13_1Objective.coeff (⟨52, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨52, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_5_7_0,
      binaryLengthThirteenIdx_5_12_5,
      binaryLengthThirteenIdx_7_5_0,
      binaryLengthThirteenIdx_7_12_7,
      binaryLengthThirteenIdx_12_5_5,
      binaryLengthThirteenIdx_12_7_7]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_53 :
    binaryK2_13_1Objective.coeff (⟨53, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨53, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_5_8_0,
      binaryLengthThirteenIdx_5_13_5,
      binaryLengthThirteenIdx_8_5_0,
      binaryLengthThirteenIdx_8_13_8,
      binaryLengthThirteenIdx_13_5_5,
      binaryLengthThirteenIdx_13_8_8]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_54 :
    binaryK2_13_1Objective.coeff (⟨54, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨54, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_6_6_0,
      binaryLengthThirteenIdx_6_12_6,
      binaryLengthThirteenIdx_12_6_6]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_55 :
    binaryK2_13_1Objective.coeff (⟨55, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨55, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_6_7_0,
      binaryLengthThirteenIdx_6_13_6,
      binaryLengthThirteenIdx_7_6_0,
      binaryLengthThirteenIdx_7_13_7,
      binaryLengthThirteenIdx_13_6_6,
      binaryLengthThirteenIdx_13_7_7]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_56 :
    binaryK2_13_1Objective.coeff (⟨56, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨56, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_2_2_1]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_57 :
    binaryK2_13_1Objective.coeff (⟨57, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨57, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_2_3_1,
      binaryLengthThirteenIdx_3_2_1,
      binaryLengthThirteenIdx_3_3_2]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_58 :
    binaryK2_13_1Objective.coeff (⟨58, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨58, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_2_4_1,
      binaryLengthThirteenIdx_4_2_1,
      binaryLengthThirteenIdx_4_4_3]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_59 :
    binaryK2_13_1Objective.coeff (⟨59, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨59, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_2_5_1,
      binaryLengthThirteenIdx_5_2_1,
      binaryLengthThirteenIdx_5_5_4]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_60 :
    binaryK2_13_1Objective.coeff (⟨60, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨60, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_2_6_1,
      binaryLengthThirteenIdx_6_2_1,
      binaryLengthThirteenIdx_6_6_5]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_61 :
    binaryK2_13_1Objective.coeff (⟨61, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨61, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_2_7_1,
      binaryLengthThirteenIdx_7_2_1,
      binaryLengthThirteenIdx_7_7_6]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_62 :
    binaryK2_13_1Objective.coeff (⟨62, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨62, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_2_8_1,
      binaryLengthThirteenIdx_8_2_1,
      binaryLengthThirteenIdx_8_8_7]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_63 :
    binaryK2_13_1Objective.coeff (⟨63, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨63, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_2_9_1,
      binaryLengthThirteenIdx_9_2_1,
      binaryLengthThirteenIdx_9_9_8]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_64 :
    binaryK2_13_1Objective.coeff (⟨64, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨64, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_2_10_1,
      binaryLengthThirteenIdx_10_2_1,
      binaryLengthThirteenIdx_10_10_9]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_65 :
    binaryK2_13_1Objective.coeff (⟨65, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨65, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_2_11_1,
      binaryLengthThirteenIdx_11_2_1,
      binaryLengthThirteenIdx_11_11_10]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_66 :
    binaryK2_13_1Objective.coeff (⟨66, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨66, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_2_12_1,
      binaryLengthThirteenIdx_12_2_1,
      binaryLengthThirteenIdx_12_12_11]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_67 :
    binaryK2_13_1Objective.coeff (⟨67, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨67, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_3_3_1,
      binaryLengthThirteenIdx_3_4_2,
      binaryLengthThirteenIdx_4_3_2]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_68 :
    binaryK2_13_1Objective.coeff (⟨68, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨68, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_3_4_1,
      binaryLengthThirteenIdx_3_5_2,
      binaryLengthThirteenIdx_4_3_1,
      binaryLengthThirteenIdx_4_5_3,
      binaryLengthThirteenIdx_5_3_2,
      binaryLengthThirteenIdx_5_4_3]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_69 :
    binaryK2_13_1Objective.coeff (⟨69, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨69, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_3_5_1,
      binaryLengthThirteenIdx_3_6_2,
      binaryLengthThirteenIdx_5_3_1,
      binaryLengthThirteenIdx_5_6_4,
      binaryLengthThirteenIdx_6_3_2,
      binaryLengthThirteenIdx_6_5_4]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_70 :
    binaryK2_13_1Objective.coeff (⟨70, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨70, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_3_6_1,
      binaryLengthThirteenIdx_3_7_2,
      binaryLengthThirteenIdx_6_3_1,
      binaryLengthThirteenIdx_6_7_5,
      binaryLengthThirteenIdx_7_3_2,
      binaryLengthThirteenIdx_7_6_5]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_71 :
    binaryK2_13_1Objective.coeff (⟨71, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨71, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_3_7_1,
      binaryLengthThirteenIdx_3_8_2,
      binaryLengthThirteenIdx_7_3_1,
      binaryLengthThirteenIdx_7_8_6,
      binaryLengthThirteenIdx_8_3_2,
      binaryLengthThirteenIdx_8_7_6]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_72 :
    binaryK2_13_1Objective.coeff (⟨72, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨72, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_3_8_1,
      binaryLengthThirteenIdx_3_9_2,
      binaryLengthThirteenIdx_8_3_1,
      binaryLengthThirteenIdx_8_9_7,
      binaryLengthThirteenIdx_9_3_2,
      binaryLengthThirteenIdx_9_8_7]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_73 :
    binaryK2_13_1Objective.coeff (⟨73, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨73, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_3_9_1,
      binaryLengthThirteenIdx_3_10_2,
      binaryLengthThirteenIdx_9_3_1,
      binaryLengthThirteenIdx_9_10_8,
      binaryLengthThirteenIdx_10_3_2,
      binaryLengthThirteenIdx_10_9_8]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_74 :
    binaryK2_13_1Objective.coeff (⟨74, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨74, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_3_10_1,
      binaryLengthThirteenIdx_3_11_2,
      binaryLengthThirteenIdx_10_3_1,
      binaryLengthThirteenIdx_10_11_9,
      binaryLengthThirteenIdx_11_3_2,
      binaryLengthThirteenIdx_11_10_9]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_75 :
    binaryK2_13_1Objective.coeff (⟨75, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨75, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_3_11_1,
      binaryLengthThirteenIdx_3_12_2,
      binaryLengthThirteenIdx_11_3_1,
      binaryLengthThirteenIdx_11_12_10,
      binaryLengthThirteenIdx_12_3_2,
      binaryLengthThirteenIdx_12_11_10]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_76 :
    binaryK2_13_1Objective.coeff (⟨76, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨76, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_4_4_1,
      binaryLengthThirteenIdx_4_6_3,
      binaryLengthThirteenIdx_6_4_3]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_77 :
    binaryK2_13_1Objective.coeff (⟨77, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨77, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_4_5_1,
      binaryLengthThirteenIdx_4_7_3,
      binaryLengthThirteenIdx_5_4_1,
      binaryLengthThirteenIdx_5_7_4,
      binaryLengthThirteenIdx_7_4_3,
      binaryLengthThirteenIdx_7_5_4]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_78 :
    binaryK2_13_1Objective.coeff (⟨78, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨78, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_4_6_1,
      binaryLengthThirteenIdx_4_8_3,
      binaryLengthThirteenIdx_6_4_1,
      binaryLengthThirteenIdx_6_8_5,
      binaryLengthThirteenIdx_8_4_3,
      binaryLengthThirteenIdx_8_6_5]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_79 :
    binaryK2_13_1Objective.coeff (⟨79, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨79, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_4_7_1,
      binaryLengthThirteenIdx_4_9_3,
      binaryLengthThirteenIdx_7_4_1,
      binaryLengthThirteenIdx_7_9_6,
      binaryLengthThirteenIdx_9_4_3,
      binaryLengthThirteenIdx_9_7_6]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_80 :
    binaryK2_13_1Objective.coeff (⟨80, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨80, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_4_8_1,
      binaryLengthThirteenIdx_4_10_3,
      binaryLengthThirteenIdx_8_4_1,
      binaryLengthThirteenIdx_8_10_7,
      binaryLengthThirteenIdx_10_4_3,
      binaryLengthThirteenIdx_10_8_7]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_81 :
    binaryK2_13_1Objective.coeff (⟨81, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨81, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_4_9_1,
      binaryLengthThirteenIdx_4_11_3,
      binaryLengthThirteenIdx_9_4_1,
      binaryLengthThirteenIdx_9_11_8,
      binaryLengthThirteenIdx_11_4_3,
      binaryLengthThirteenIdx_11_9_8]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_82 :
    binaryK2_13_1Objective.coeff (⟨82, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨82, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_4_10_1,
      binaryLengthThirteenIdx_4_12_3,
      binaryLengthThirteenIdx_10_4_1,
      binaryLengthThirteenIdx_10_12_9,
      binaryLengthThirteenIdx_12_4_3,
      binaryLengthThirteenIdx_12_10_9]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_83 :
    binaryK2_13_1Objective.coeff (⟨83, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨83, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_5_5_1,
      binaryLengthThirteenIdx_5_8_4,
      binaryLengthThirteenIdx_8_5_4]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_84 :
    binaryK2_13_1Objective.coeff (⟨84, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨84, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_5_6_1,
      binaryLengthThirteenIdx_5_9_4,
      binaryLengthThirteenIdx_6_5_1,
      binaryLengthThirteenIdx_6_9_5,
      binaryLengthThirteenIdx_9_5_4,
      binaryLengthThirteenIdx_9_6_5]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_85 :
    binaryK2_13_1Objective.coeff (⟨85, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨85, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_5_7_1,
      binaryLengthThirteenIdx_5_10_4,
      binaryLengthThirteenIdx_7_5_1,
      binaryLengthThirteenIdx_7_10_6,
      binaryLengthThirteenIdx_10_5_4,
      binaryLengthThirteenIdx_10_7_6]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_86 :
    binaryK2_13_1Objective.coeff (⟨86, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨86, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_5_8_1,
      binaryLengthThirteenIdx_5_11_4,
      binaryLengthThirteenIdx_8_5_1,
      binaryLengthThirteenIdx_8_11_7,
      binaryLengthThirteenIdx_11_5_4,
      binaryLengthThirteenIdx_11_8_7]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_87 :
    binaryK2_13_1Objective.coeff (⟨87, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨87, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_5_9_1,
      binaryLengthThirteenIdx_5_12_4,
      binaryLengthThirteenIdx_9_5_1,
      binaryLengthThirteenIdx_9_12_8,
      binaryLengthThirteenIdx_12_5_4,
      binaryLengthThirteenIdx_12_9_8]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_88 :
    binaryK2_13_1Objective.coeff (⟨88, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨88, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_6_6_1,
      binaryLengthThirteenIdx_6_10_5,
      binaryLengthThirteenIdx_10_6_5]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_89 :
    binaryK2_13_1Objective.coeff (⟨89, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨89, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_6_7_1,
      binaryLengthThirteenIdx_6_11_5,
      binaryLengthThirteenIdx_7_6_1,
      binaryLengthThirteenIdx_7_11_6,
      binaryLengthThirteenIdx_11_6_5,
      binaryLengthThirteenIdx_11_7_6]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_90 :
    binaryK2_13_1Objective.coeff (⟨90, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨90, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_6_8_1,
      binaryLengthThirteenIdx_6_12_5,
      binaryLengthThirteenIdx_8_6_1,
      binaryLengthThirteenIdx_8_12_7,
      binaryLengthThirteenIdx_12_6_5,
      binaryLengthThirteenIdx_12_8_7]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_91 :
    binaryK2_13_1Objective.coeff (⟨91, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨91, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_7_7_1,
      binaryLengthThirteenIdx_7_12_6,
      binaryLengthThirteenIdx_12_7_6]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_92 :
    binaryK2_13_1Objective.coeff (⟨92, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨92, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_4_4_2]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_93 :
    binaryK2_13_1Objective.coeff (⟨93, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨93, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_4_5_2,
      binaryLengthThirteenIdx_5_4_2,
      binaryLengthThirteenIdx_5_5_3]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_94 :
    binaryK2_13_1Objective.coeff (⟨94, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨94, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_4_6_2,
      binaryLengthThirteenIdx_6_4_2,
      binaryLengthThirteenIdx_6_6_4]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_95 :
    binaryK2_13_1Objective.coeff (⟨95, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨95, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_4_7_2,
      binaryLengthThirteenIdx_7_4_2,
      binaryLengthThirteenIdx_7_7_5]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_96 :
    binaryK2_13_1Objective.coeff (⟨96, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨96, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_4_8_2,
      binaryLengthThirteenIdx_8_4_2,
      binaryLengthThirteenIdx_8_8_6]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_97 :
    binaryK2_13_1Objective.coeff (⟨97, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨97, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_4_9_2,
      binaryLengthThirteenIdx_9_4_2,
      binaryLengthThirteenIdx_9_9_7]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_98 :
    binaryK2_13_1Objective.coeff (⟨98, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨98, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_4_10_2,
      binaryLengthThirteenIdx_10_4_2,
      binaryLengthThirteenIdx_10_10_8]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_99 :
    binaryK2_13_1Objective.coeff (⟨99, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨99, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_4_11_2,
      binaryLengthThirteenIdx_11_4_2,
      binaryLengthThirteenIdx_11_11_9]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_100 :
    binaryK2_13_1Objective.coeff (⟨100, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨100, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_5_5_2,
      binaryLengthThirteenIdx_5_6_3,
      binaryLengthThirteenIdx_6_5_3]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_101 :
    binaryK2_13_1Objective.coeff (⟨101, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨101, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_5_6_2,
      binaryLengthThirteenIdx_5_7_3,
      binaryLengthThirteenIdx_6_5_2,
      binaryLengthThirteenIdx_6_7_4,
      binaryLengthThirteenIdx_7_5_3,
      binaryLengthThirteenIdx_7_6_4]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_102 :
    binaryK2_13_1Objective.coeff (⟨102, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨102, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_5_7_2,
      binaryLengthThirteenIdx_5_8_3,
      binaryLengthThirteenIdx_7_5_2,
      binaryLengthThirteenIdx_7_8_5,
      binaryLengthThirteenIdx_8_5_3,
      binaryLengthThirteenIdx_8_7_5]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_103 :
    binaryK2_13_1Objective.coeff (⟨103, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨103, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_5_8_2,
      binaryLengthThirteenIdx_5_9_3,
      binaryLengthThirteenIdx_8_5_2,
      binaryLengthThirteenIdx_8_9_6,
      binaryLengthThirteenIdx_9_5_3,
      binaryLengthThirteenIdx_9_8_6]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_104 :
    binaryK2_13_1Objective.coeff (⟨104, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨104, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_5_9_2,
      binaryLengthThirteenIdx_5_10_3,
      binaryLengthThirteenIdx_9_5_2,
      binaryLengthThirteenIdx_9_10_7,
      binaryLengthThirteenIdx_10_5_3,
      binaryLengthThirteenIdx_10_9_7]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_105 :
    binaryK2_13_1Objective.coeff (⟨105, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨105, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_5_10_2,
      binaryLengthThirteenIdx_5_11_3,
      binaryLengthThirteenIdx_10_5_2,
      binaryLengthThirteenIdx_10_11_8,
      binaryLengthThirteenIdx_11_5_3,
      binaryLengthThirteenIdx_11_10_8]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_106 :
    binaryK2_13_1Objective.coeff (⟨106, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨106, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_6_6_2,
      binaryLengthThirteenIdx_6_8_4,
      binaryLengthThirteenIdx_8_6_4]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_107 :
    binaryK2_13_1Objective.coeff (⟨107, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨107, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_6_7_2,
      binaryLengthThirteenIdx_6_9_4,
      binaryLengthThirteenIdx_7_6_2,
      binaryLengthThirteenIdx_7_9_5,
      binaryLengthThirteenIdx_9_6_4,
      binaryLengthThirteenIdx_9_7_5]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_108 :
    binaryK2_13_1Objective.coeff (⟨108, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨108, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_6_8_2,
      binaryLengthThirteenIdx_6_10_4,
      binaryLengthThirteenIdx_8_6_2,
      binaryLengthThirteenIdx_8_10_6,
      binaryLengthThirteenIdx_10_6_4,
      binaryLengthThirteenIdx_10_8_6]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_109 :
    binaryK2_13_1Objective.coeff (⟨109, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨109, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_6_9_2,
      binaryLengthThirteenIdx_6_11_4,
      binaryLengthThirteenIdx_9_6_2,
      binaryLengthThirteenIdx_9_11_7,
      binaryLengthThirteenIdx_11_6_4,
      binaryLengthThirteenIdx_11_9_7]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_110 :
    binaryK2_13_1Objective.coeff (⟨110, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨110, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_7_7_2,
      binaryLengthThirteenIdx_7_10_5,
      binaryLengthThirteenIdx_10_7_5]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_111 :
    binaryK2_13_1Objective.coeff (⟨111, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨111, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_7_8_2,
      binaryLengthThirteenIdx_7_11_5,
      binaryLengthThirteenIdx_8_7_2,
      binaryLengthThirteenIdx_8_11_6,
      binaryLengthThirteenIdx_11_7_5,
      binaryLengthThirteenIdx_11_8_6]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_112 :
    binaryK2_13_1Objective.coeff (⟨112, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨112, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_6_6_3]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_113 :
    binaryK2_13_1Objective.coeff (⟨113, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨113, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_6_7_3,
      binaryLengthThirteenIdx_7_6_3,
      binaryLengthThirteenIdx_7_7_4]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_114 :
    binaryK2_13_1Objective.coeff (⟨114, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨114, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_6_8_3,
      binaryLengthThirteenIdx_8_6_3,
      binaryLengthThirteenIdx_8_8_5]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_115 :
    binaryK2_13_1Objective.coeff (⟨115, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨115, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_6_9_3,
      binaryLengthThirteenIdx_9_6_3,
      binaryLengthThirteenIdx_9_9_6]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_116 :
    binaryK2_13_1Objective.coeff (⟨116, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨116, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_6_10_3,
      binaryLengthThirteenIdx_10_6_3,
      binaryLengthThirteenIdx_10_10_7]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_117 :
    binaryK2_13_1Objective.coeff (⟨117, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨117, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_7_7_3,
      binaryLengthThirteenIdx_7_8_4,
      binaryLengthThirteenIdx_8_7_4]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_118 :
    binaryK2_13_1Objective.coeff (⟨118, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨118, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_7_8_3,
      binaryLengthThirteenIdx_7_9_4,
      binaryLengthThirteenIdx_8_7_3,
      binaryLengthThirteenIdx_8_9_5,
      binaryLengthThirteenIdx_9_7_4,
      binaryLengthThirteenIdx_9_8_5]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_119 :
    binaryK2_13_1Objective.coeff (⟨119, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨119, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_7_9_3,
      binaryLengthThirteenIdx_7_10_4,
      binaryLengthThirteenIdx_9_7_3,
      binaryLengthThirteenIdx_9_10_6,
      binaryLengthThirteenIdx_10_7_4,
      binaryLengthThirteenIdx_10_9_6]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_120 :
    binaryK2_13_1Objective.coeff (⟨120, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨120, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_8_8_3,
      binaryLengthThirteenIdx_8_10_5,
      binaryLengthThirteenIdx_10_8_5]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_121 :
    binaryK2_13_1Objective.coeff (⟨121, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨121, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_8_8_4]

private theorem binaryK2_13_1Objective_quotientReducedObjective_coeff_122 :
    binaryK2_13_1Objective.coeff (⟨122, by omega⟩ : binaryK2_13_1QVar) =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff
        (⟨122, by omega⟩ : binaryK2_13_1QVar) := by
  unfold binaryLengthThirteenQuotientLinExpr binaryLengthThirteenQuotientFiber
  simp [binaryLengthThirteenQuotientFiberList,
    binaryLengthThirteenReducedObjectiveExprFin_coeff_ofFin]
  norm_num [binaryK2_13_1Objective,
      sparseLinExpr,
      binaryOrbitMultiplicity,
      binaryLengthThirteenOrbitOfFin,
      Nat.choose,
      binaryLengthThirteenIdx_8_9_4,
      binaryLengthThirteenIdx_9_8_4,
      binaryLengthThirteenIdx_9_9_5]

theorem binaryK2_13_1Objective_quotientReducedObjective_coeff
    (q : binaryK2_13_1QVar) :
    binaryK2_13_1Objective.coeff q =
      (binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin).coeff q := by
  rcases q with ⟨idx, hidx⟩
  interval_cases idx
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_0
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_1
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_2
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_3
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_4
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_5
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_6
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_7
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_8
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_9
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_10
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_11
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_12
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_13
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_14
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_15
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_16
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_17
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_18
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_19
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_20
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_21
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_22
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_23
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_24
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_25
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_26
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_27
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_28
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_29
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_30
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_31
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_32
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_33
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_34
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_35
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_36
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_37
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_38
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_39
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_40
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_41
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_42
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_43
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_44
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_45
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_46
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_47
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_48
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_49
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_50
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_51
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_52
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_53
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_54
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_55
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_56
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_57
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_58
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_59
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_60
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_61
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_62
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_63
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_64
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_65
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_66
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_67
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_68
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_69
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_70
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_71
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_72
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_73
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_74
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_75
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_76
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_77
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_78
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_79
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_80
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_81
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_82
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_83
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_84
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_85
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_86
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_87
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_88
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_89
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_90
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_91
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_92
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_93
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_94
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_95
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_96
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_97
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_98
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_99
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_100
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_101
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_102
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_103
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_104
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_105
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_106
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_107
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_108
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_109
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_110
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_111
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_112
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_113
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_114
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_115
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_116
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_117
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_118
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_119
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_120
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_121
  · exact binaryK2_13_1Objective_quotientReducedObjective_coeff_122

theorem binaryK2_13_1Objective_eq_quotientReducedObjective :
    binaryK2_13_1Objective =
      binaryLengthThirteenQuotientLinExpr
        binaryLengthThirteenReducedObjectiveExprFin := by
  rw [LinExpr.mk.injEq]
  constructor
  · funext q
    exact binaryK2_13_1Objective_quotientReducedObjective_coeff q
  · simp [binaryK2_13_1Objective, sparseLinExpr,
      binaryLengthThirteenQuotientLinExpr,
      binaryLengthThirteenReducedObjectiveExprFin, LinExpr.smul, LinExpr.sum,
      LinExpr.var]

def binaryK2_13_1Project (x : BinaryX 13) : binaryK2_13_1QVar -> Rat :=
  fun idx => x (binaryLengthThirteenRepresentativeOrbit idx)

theorem binaryK2_13_1_project_eq_of_symmetry
    (x : BinaryX 13) (hx : BinaryTableConstraints 13 1 x)
    (idx : BinaryOrbitIndex 13) :
    x idx = binaryK2_13_1Project x (binaryLengthThirteenQuotientOfOrbit idx) := by
  let rep :=
    binaryLengthThirteenRepresentativeOrbit (binaryLengthThirteenQuotientOfOrbit idx)
  have hperm :
      List.Perm [idx.i, idx.j, binaryOrbitDistanceIndex idx]
        [rep.i, rep.j, binaryOrbitDistanceIndex rep] := by
    simpa [rep, binaryLengthThirteenQuotientOfOrbit,
      binaryLengthThirteenOrbitOfFin_toFin idx] using
      binaryLengthThirteenRepresentative_perm_of_fin
        (binaryLengthThirteenOrbitToFin idx)
  have hle := hx.1 (BinaryTableScalarAtom.symmetryLe idx rep)
  have hge := hx.1 (BinaryTableScalarAtom.symmetryGe idx rep)
  simp [binaryTableScalarAtomExpr, hperm] at hle hge
  dsimp [binaryK2_13_1Project, rep]
  linarith

theorem binaryK2_13_1QuotientLinExpr_eval_project_eq
    (expr : LinExpr (BinaryOrbitIndex 13))
    (x : BinaryX 13) (hx : BinaryTableConstraints 13 1 x) :
    (binaryLengthThirteenQuotientLinExpr expr).eval (binaryK2_13_1Project x) =
      expr.eval x := by
  rw [binaryLengthThirteenQuotientLinExpr_eval]
  unfold LinExpr.eval
  congr 1
  apply Finset.sum_congr rfl
  intro idx _
  change expr.coeff idx *
      binaryK2_13_1Project x (binaryLengthThirteenQuotientOfOrbit idx) =
    expr.coeff idx * x idx
  rw [← binaryK2_13_1_project_eq_of_symmetry x hx idx]

theorem binaryK2_13_1Objective_eval_eq
    (x : BinaryX 13) (hx : BinaryTableConstraints 13 1 x) :
    binaryK2_13_1Objective.eval (binaryK2_13_1Project x) =
      binaryReducedObjective 13 x := by
  rw [binaryK2_13_1Objective_eq_quotientReducedObjective]
  rw [binaryK2_13_1QuotientLinExpr_eval_project_eq _ x hx]
  rw [← binaryLengthThirteenReducedObjectiveExprFin_eval x]

private theorem sum_range_eq_sum_range_restrict {α : Type} [AddCommMonoid α]
    {M N : Nat} (hMN : M <= N) (f : Nat -> α)
    (hzero : forall a, a ∈ Finset.range N -> a ∉ Finset.range M -> f a = 0) :
    (Finset.range N).sum f = (Finset.range M).sum f := by
  exact (Finset.sum_subset
    (by
      intro a ha
      exact Finset.mem_range.mpr
        (Nat.lt_of_lt_of_le (Finset.mem_range.mp ha) hMN))
    hzero).symm

private theorem binaryMatrixCutTerm13_zero_of_a00_out
    (source target : BinaryOrbitIndex 13) (d a00 a01 a10 a11 : Nat)
    (hout : a00 ∉ Finset.range (13 + source.t - source.i - source.j + 1)) :
    binaryMatrixCutTerm 13 source target d a00 a01 a10 a11 = 0 := by
  unfold binaryMatrixCutTerm
  by_cases h :
      a00 + source.i + source.j <= 13 + source.t /\
        a01 + source.t <= source.j /\
        a10 + source.t <= source.i /\
        a11 <= source.t /\
        target.i = source.i /\
        target.j = a00 + a01 + a10 + a11 /\
        target.t = a10 + a11 /\
        d + a01 + a11 = source.j + a00 + a10
  · have ha : a00 < 13 + source.t - source.i - source.j + 1 := by
      omega
    exact (hout (Finset.mem_range.mpr ha)).elim
  · simp [h]

private theorem binaryMatrixCutTerm13_zero_of_a01_out
    (source target : BinaryOrbitIndex 13) (d a00 a01 a10 a11 : Nat)
    (hout : a01 ∉ Finset.range (source.j - source.t + 1)) :
    binaryMatrixCutTerm 13 source target d a00 a01 a10 a11 = 0 := by
  unfold binaryMatrixCutTerm
  by_cases h :
      a00 + source.i + source.j <= 13 + source.t /\
        a01 + source.t <= source.j /\
        a10 + source.t <= source.i /\
        a11 <= source.t /\
        target.i = source.i /\
        target.j = a00 + a01 + a10 + a11 /\
        target.t = a10 + a11 /\
        d + a01 + a11 = source.j + a00 + a10
  · have ha : a01 < source.j - source.t + 1 := by
      omega
    exact (hout (Finset.mem_range.mpr ha)).elim
  · simp [h]

private theorem binaryMatrixCutTerm13_zero_of_a10_out
    (source target : BinaryOrbitIndex 13) (d a00 a01 a10 a11 : Nat)
    (hout : a10 ∉ Finset.range (source.i - source.t + 1)) :
    binaryMatrixCutTerm 13 source target d a00 a01 a10 a11 = 0 := by
  unfold binaryMatrixCutTerm
  by_cases h :
      a00 + source.i + source.j <= 13 + source.t /\
        a01 + source.t <= source.j /\
        a10 + source.t <= source.i /\
        a11 <= source.t /\
        target.i = source.i /\
        target.j = a00 + a01 + a10 + a11 /\
        target.t = a10 + a11 /\
        d + a01 + a11 = source.j + a00 + a10
  · have ha : a10 < source.i - source.t + 1 := by
      omega
    exact (hout (Finset.mem_range.mpr ha)).elim
  · simp [h]

private theorem binaryMatrixCutTerm13_zero_of_a11_out
    (source target : BinaryOrbitIndex 13) (d a00 a01 a10 a11 : Nat)
    (hout : a11 ∉ Finset.range (source.t + 1)) :
    binaryMatrixCutTerm 13 source target d a00 a01 a10 a11 = 0 := by
  unfold binaryMatrixCutTerm
  by_cases h :
      a00 + source.i + source.j <= 13 + source.t /\
        a01 + source.t <= source.j /\
        a10 + source.t <= source.i /\
        a11 <= source.t /\
        target.i = source.i /\
        target.j = a00 + a01 + a10 + a11 /\
        target.t = a10 + a11 /\
        d + a01 + a11 = source.j + a00 + a10
  · have ha : a11 < source.t + 1 := by
      omega
    exact (hout (Finset.mem_range.mpr ha)).elim
  · simp [h]

def binaryLengthThirteenMatrixCutCoeffRestricted
    (source target : BinaryOrbitIndex 13) (d : Nat) : Rat :=
  (Finset.range (13 + source.t - source.i - source.j + 1)).sum (fun a00 =>
    (Finset.range (source.j - source.t + 1)).sum (fun a01 =>
      (Finset.range (source.i - source.t + 1)).sum (fun a10 =>
        (Finset.range (source.t + 1)).sum (fun a11 =>
          binaryMatrixCutTerm 13 source target d a00 a01 a10 a11))))

theorem binaryLengthThirteenMatrixCutCoeffRestricted_eq
    (source target : BinaryOrbitIndex 13) (d : Nat) :
    binaryLengthThirteenMatrixCutCoeffRestricted source target d =
      binaryMatrixCutCoeff 13 source target d := by
  unfold binaryLengthThirteenMatrixCutCoeffRestricted binaryMatrixCutCoeff
  symm
  calc
    (Finset.range (13 + 1)).sum (fun a00 =>
        (Finset.range (13 + 1)).sum (fun a01 =>
          (Finset.range (13 + 1)).sum (fun a10 =>
            (Finset.range (13 + 1)).sum (fun a11 =>
              binaryMatrixCutTerm 13 source target d a00 a01 a10 a11)))) =
      (Finset.range (13 + source.t - source.i - source.j + 1)).sum (fun a00 =>
        (Finset.range (13 + 1)).sum (fun a01 =>
          (Finset.range (13 + 1)).sum (fun a10 =>
            (Finset.range (13 + 1)).sum (fun a11 =>
              binaryMatrixCutTerm 13 source target d a00 a01 a10 a11)))) := by
        apply sum_range_eq_sum_range_restrict
        · have ht := source.t_le_n
          have hi := source.i_le_n
          have hj := source.j_le_n
          have hti := source.ht_i
          have hrest_le : 13 + source.t - source.i - source.j <= 13 := by
            have h1 : 13 + source.t - source.i <= 13 := by
              rw [Nat.sub_le_iff_le_add]
              omega
            exact le_trans (Nat.sub_le _ _) h1
          omega
        · intro a00 _ hout
          apply Finset.sum_eq_zero
          intro a01 _
          apply Finset.sum_eq_zero
          intro a10 _
          apply Finset.sum_eq_zero
          intro a11 _
          exact binaryMatrixCutTerm13_zero_of_a00_out source target d a00 a01 a10 a11 hout
    _ =
      (Finset.range (13 + source.t - source.i - source.j + 1)).sum (fun a00 =>
        (Finset.range (source.j - source.t + 1)).sum (fun a01 =>
          (Finset.range (13 + 1)).sum (fun a10 =>
            (Finset.range (13 + 1)).sum (fun a11 =>
              binaryMatrixCutTerm 13 source target d a00 a01 a10 a11)))) := by
        apply Finset.sum_congr rfl
        intro a00 _
        apply sum_range_eq_sum_range_restrict
        · have hj := source.j_le_n
          omega
        · intro a01 _ hout
          apply Finset.sum_eq_zero
          intro a10 _
          apply Finset.sum_eq_zero
          intro a11 _
          exact binaryMatrixCutTerm13_zero_of_a01_out source target d a00 a01 a10 a11 hout
    _ =
      (Finset.range (13 + source.t - source.i - source.j + 1)).sum (fun a00 =>
        (Finset.range (source.j - source.t + 1)).sum (fun a01 =>
          (Finset.range (source.i - source.t + 1)).sum (fun a10 =>
            (Finset.range (13 + 1)).sum (fun a11 =>
              binaryMatrixCutTerm 13 source target d a00 a01 a10 a11)))) := by
        apply Finset.sum_congr rfl
        intro a00 _
        apply Finset.sum_congr rfl
        intro a01 _
        apply sum_range_eq_sum_range_restrict
        · have hi := source.i_le_n
          omega
        · intro a10 _ hout
          apply Finset.sum_eq_zero
          intro a11 _
          exact binaryMatrixCutTerm13_zero_of_a10_out source target d a00 a01 a10 a11 hout
    _ =
      (Finset.range (13 + source.t - source.i - source.j + 1)).sum (fun a00 =>
        (Finset.range (source.j - source.t + 1)).sum (fun a01 =>
          (Finset.range (source.i - source.t + 1)).sum (fun a10 =>
            (Finset.range (source.t + 1)).sum (fun a11 =>
              binaryMatrixCutTerm 13 source target d a00 a01 a10 a11)))) := by
        apply Finset.sum_congr rfl
        intro a00 _
        apply Finset.sum_congr rfl
        intro a01 _
        apply Finset.sum_congr rfl
        intro a10 _
        apply sum_range_eq_sum_range_restrict
        · have ht := source.t_le_n
          omega
        · intro a11 _ hout
          exact binaryMatrixCutTerm13_zero_of_a11_out source target d a00 a01 a10 a11 hout

def binaryLengthThirteenMatrixCutLambdaRestricted
    (lambda : Fin 14 -> Rat) (source target : BinaryOrbitIndex 13) : Rat :=
  Finset.univ.sum (fun d : Fin 14 =>
    lambda d * binaryLengthThirteenMatrixCutCoeffRestricted source target d.val)

theorem binaryLengthThirteenMatrixCutLambdaRestricted_eq
    (lambda : Fin 14 -> Rat) (source target : BinaryOrbitIndex 13) :
    binaryLengthThirteenMatrixCutLambdaRestricted lambda source target =
      binaryMatrixCutLambda lambda source target := by
  unfold binaryLengthThirteenMatrixCutLambdaRestricted binaryMatrixCutLambda
  apply Finset.sum_congr rfl
  intro d _
  rw [binaryLengthThirteenMatrixCutCoeffRestricted_eq]

def binaryLengthThirteenMatrixCutDist
    (source : BinaryOrbitIndex 13) (a00 a01 a10 a11 : Nat) : Nat :=
  source.j + a00 + a10 - a01 - a11

def binaryLengthThirteenMatrixCutCond
    (source target : BinaryOrbitIndex 13) (d a00 a01 a10 a11 : Nat) : Prop :=
  a00 + source.i + source.j <= 13 + source.t /\
    a01 + source.t <= source.j /\
    a10 + source.t <= source.i /\
    a11 <= source.t /\
    target.i = source.i /\
    target.j = a00 + a01 + a10 + a11 /\
    target.t = a10 + a11 /\
    d + a01 + a11 = source.j + a00 + a10

def binaryLengthThirteenMatrixCutWeight
    (source : BinaryOrbitIndex 13) (a00 a01 a10 a11 : Nat) : Rat :=
  (Nat.choose (source.i - source.t) a10 : Rat) *
    (Nat.choose (source.j - source.t) a01 : Rat) *
    (Nat.choose source.t a11 : Rat) *
    (Nat.choose (13 + source.t - source.i - source.j) a00 : Rat)

private instance binaryLengthThirteenMatrixCutCondDecidable
    (source target : BinaryOrbitIndex 13) (d a00 a01 a10 a11 : Nat) :
    Decidable (binaryLengthThirteenMatrixCutCond source target d a00 a01 a10 a11) := by
  unfold binaryLengthThirteenMatrixCutCond
  infer_instance

private theorem binaryLengthThirteenMatrixCutTerm_eq_cond
    (source target : BinaryOrbitIndex 13) (d a00 a01 a10 a11 : Nat) :
    binaryMatrixCutTerm 13 source target d a00 a01 a10 a11 =
      if binaryLengthThirteenMatrixCutCond source target d a00 a01 a10 a11 then
        binaryLengthThirteenMatrixCutWeight source a00 a01 a10 a11
      else
        0 := by
  unfold binaryMatrixCutTerm binaryLengthThirteenMatrixCutCond
    binaryLengthThirteenMatrixCutWeight
  rfl

private theorem binaryLengthThirteenMatrixCutDist_eq_of_cond
    {source target : BinaryOrbitIndex 13} {d a00 a01 a10 a11 : Nat}
    (h : binaryLengthThirteenMatrixCutCond source target d a00 a01 a10 a11) :
    binaryLengthThirteenMatrixCutDist source a00 a01 a10 a11 = d := by
  unfold binaryLengthThirteenMatrixCutCond at h
  unfold binaryLengthThirteenMatrixCutDist
  omega

private theorem binaryLengthThirteenMatrixCutCond_dist_of_cond
    {source target : BinaryOrbitIndex 13} {d a00 a01 a10 a11 : Nat}
    (h : binaryLengthThirteenMatrixCutCond source target d a00 a01 a10 a11) :
    binaryLengthThirteenMatrixCutCond source target
      (binaryLengthThirteenMatrixCutDist source a00 a01 a10 a11)
      a00 a01 a10 a11 := by
  have hdist := binaryLengthThirteenMatrixCutDist_eq_of_cond h
  unfold binaryLengthThirteenMatrixCutCond at h ⊢
  omega

def binaryLengthThirteenMatrixCutFastTerm
    (lambda : Fin 14 -> Rat) (source target : BinaryOrbitIndex 13)
    (a00 a01 a10 a11 : Nat) : Rat :=
  let dist := binaryLengthThirteenMatrixCutDist source a00 a01 a10 a11
    if hdist : dist < 14 then
    if binaryLengthThirteenMatrixCutCond source target dist a00 a01 a10 a11 then
      lambda ⟨dist, hdist⟩ *
        binaryLengthThirteenMatrixCutWeight source a00 a01 a10 a11
    else
      0
  else
    0

private theorem binaryLengthThirteenMatrixCutFastTerm_eq_sum
    (lambda : Fin 14 -> Rat) (source target : BinaryOrbitIndex 13)
    (a00 a01 a10 a11 : Nat) :
    binaryLengthThirteenMatrixCutFastTerm lambda source target a00 a01 a10 a11 =
      Finset.univ.sum (fun d : Fin 14 =>
        lambda d * binaryMatrixCutTerm 13 source target d.val a00 a01 a10 a11) := by
  unfold binaryLengthThirteenMatrixCutFastTerm
  let dist := binaryLengthThirteenMatrixCutDist source a00 a01 a10 a11
  by_cases hdist : dist < 14
  · by_cases hcond : binaryLengthThirteenMatrixCutCond source target dist a00 a01 a10 a11
    · simp [dist, hdist, hcond, binaryLengthThirteenMatrixCutTerm_eq_cond]
      symm
      refine (Finset.sum_eq_single (M := Rat) (s := Finset.univ)
        (f := fun d : Fin 14 =>
          if binaryLengthThirteenMatrixCutCond source target d.val a00 a01 a10 a11 then
            lambda d * binaryLengthThirteenMatrixCutWeight source a00 a01 a10 a11
          else
            0)
        (⟨dist, hdist⟩ : Fin 14) ?_ ?_).trans ?_
      · intro d _ hdne
        have hnot :
            ¬ binaryLengthThirteenMatrixCutCond source target d.val a00 a01 a10 a11 := by
          intro hd
          have hdist_eq := binaryLengthThirteenMatrixCutDist_eq_of_cond hd
          apply hdne
          ext
          exact hdist_eq.symm
        simp [hnot]
      · intro hmissing
        exact (hmissing (Finset.mem_univ _)).elim
      · have hcond' :
            binaryLengthThirteenMatrixCutCond source target
              (↑(⟨dist, hdist⟩ : Fin 14)) a00 a01 a10 a11 := by
          simpa using hcond
        have hdist_def :
            binaryLengthThirteenMatrixCutDist source a00 a01 a10 a11 = dist := rfl
        simp [hcond', hdist_def]
    · simp [dist, hdist, hcond, binaryLengthThirteenMatrixCutTerm_eq_cond]
      symm
      apply Finset.sum_eq_zero
      intro d _
      have hnot :
          ¬ binaryLengthThirteenMatrixCutCond source target d.val a00 a01 a10 a11 := by
        intro hd
        exact hcond (binaryLengthThirteenMatrixCutCond_dist_of_cond hd)
      simp [hnot]
  · simp [dist, hdist, binaryLengthThirteenMatrixCutTerm_eq_cond]
    symm
    apply Finset.sum_eq_zero
    intro d _
    have hnot :
        ¬ binaryLengthThirteenMatrixCutCond source target d.val a00 a01 a10 a11 := by
      intro hd
      have hdist_eq := binaryLengthThirteenMatrixCutDist_eq_of_cond hd
      have : dist < 14 := by
        change binaryLengthThirteenMatrixCutDist source a00 a01 a10 a11 < 14
        rw [hdist_eq]
        exact d.isLt
      exact hdist this
    simp [hnot]

def binaryLengthThirteenMatrixCutLambdaFast
    (lambda : Fin 14 -> Rat) (source target : BinaryOrbitIndex 13) : Rat :=
  (Finset.range (13 + source.t - source.i - source.j + 1)).sum (fun a00 =>
    (Finset.range (source.j - source.t + 1)).sum (fun a01 =>
      (Finset.range (source.i - source.t + 1)).sum (fun a10 =>
        (Finset.range (source.t + 1)).sum (fun a11 =>
          binaryLengthThirteenMatrixCutFastTerm lambda source target a00 a01 a10 a11))))

theorem binaryLengthThirteenMatrixCutLambdaFast_eq
    (lambda : Fin 14 -> Rat) (source target : BinaryOrbitIndex 13) :
    binaryLengthThirteenMatrixCutLambdaFast lambda source target =
      binaryMatrixCutLambda lambda source target := by
  rw [← binaryLengthThirteenMatrixCutLambdaRestricted_eq]
  unfold binaryLengthThirteenMatrixCutLambdaFast
  unfold binaryLengthThirteenMatrixCutLambdaRestricted
  unfold binaryLengthThirteenMatrixCutCoeffRestricted
  symm
  simp only [Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro a00 _
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro a01 _
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro a10 _
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro a11 _
  rw [← binaryLengthThirteenMatrixCutFastTerm_eq_sum]

def binaryLengthThirteenMatrixCutLhs1ExprFin
    (lambda : Fin 14 -> Rat) (source : BinaryOrbitIndex 13) :
    LinExpr (BinaryOrbitIndex 13) where
  coeff target := binaryLengthThirteenMatrixCutLambdaFast lambda source target
  const := 0

def binaryLengthThirteenMatrixCutLhs2ExprFin
    (lambda : Fin 14 -> Rat) (source : BinaryOrbitIndex 13) :
    LinExpr (BinaryOrbitIndex 13) :=
  LinExpr.sum Finset.univ (fun target : Fin 560 =>
    LinExpr.smul
      (binaryLengthThirteenMatrixCutLambdaFast lambda source
        (binaryLengthThirteenOrbitOfFin target))
      (LinExpr.sub
        (binaryZeroCoeffExpr 13 (binaryLengthThirteenOrbitOfFin target).j)
        (LinExpr.var (binaryLengthThirteenOrbitOfFin target))))

def binaryLengthThirteenMatrixCutLhs3ExprFin
    (lambda : Fin 14 -> Rat) (source : BinaryOrbitIndex 13) :
    LinExpr (BinaryOrbitIndex 13) :=
  LinExpr.sum Finset.univ (fun target : Fin 560 =>
    LinExpr.smul
      (binaryLengthThirteenMatrixCutLambdaFast lambda source
        (binaryLengthThirteenOrbitOfFin target))
      (LinExpr.sub
        (binaryZeroCoeffExpr 13
          (binaryOrbitDistanceIndex (binaryLengthThirteenOrbitOfFin target)))
        (LinExpr.var (binaryLengthThirteenOrbitOfFin target))))

def binaryLengthThirteenMatrixCutLhs4TargetExprFin
    (target : BinaryOrbitIndex 13) : LinExpr (BinaryOrbitIndex 13) :=
  LinExpr.add
    (LinExpr.sub (binaryZeroCoeffExpr 13 0)
      (binaryZeroCoeffExpr 13 target.j))
    (LinExpr.sub (LinExpr.var target)
      (binaryZeroCoeffExpr 13 (binaryOrbitDistanceIndex target)))

def binaryLengthThirteenMatrixCutLhs4ExprFin
    (lambda : Fin 14 -> Rat) (source : BinaryOrbitIndex 13) :
    LinExpr (BinaryOrbitIndex 13) :=
  LinExpr.sum Finset.univ (fun target : Fin 560 =>
    LinExpr.smul
      (binaryLengthThirteenMatrixCutLambdaFast lambda source
        (binaryLengthThirteenOrbitOfFin target))
      (binaryLengthThirteenMatrixCutLhs4TargetExprFin
        (binaryLengthThirteenOrbitOfFin target)))

def binaryLengthThirteenTableScalarAtomExprFin :
    BinaryTableScalarAtom 13 1 -> LinExpr (BinaryOrbitIndex 13)
  | .nonneg idx => LinExpr.var idx
  | .diagonalUpper idx =>
      LinExpr.sub (binaryDiagonalCoeffExpr 13 idx.i) (LinExpr.var idx)
  | .basicTriangleLower idx =>
      LinExpr.add
        (LinExpr.sub (LinExpr.var idx) (binaryZeroCoeffExpr 13 idx.i))
        (LinExpr.sub (binaryZeroCoeffExpr 13 0)
          (binaryZeroCoeffExpr 13 (binaryOrbitDistanceIndex idx)))
  | .basicDistanceUpper idx =>
      LinExpr.sub (binaryZeroCoeffExpr 13 (binaryOrbitDistanceIndex idx))
        (LinExpr.var idx)
  | .symmetryLe idx idx' =>
      if List.Perm [idx.i, idx.j, binaryOrbitDistanceIndex idx]
          [idx'.i, idx'.j, binaryOrbitDistanceIndex idx'] then
        LinExpr.sub (LinExpr.var idx') (LinExpr.var idx)
      else
        LinExpr.constExpr (BinaryOrbitIndex 13) 0
  | .symmetryGe idx idx' =>
      if List.Perm [idx.i, idx.j, binaryOrbitDistanceIndex idx]
          [idx'.i, idx'.j, binaryOrbitDistanceIndex idx'] then
        LinExpr.sub (LinExpr.var idx) (LinExpr.var idx')
      else
        LinExpr.constExpr (BinaryOrbitIndex 13) 0
  | .matrixCut ineq cut source =>
      let lambda := binaryTableLambda 13 1 ineq
      let beta := binaryTableBeta 13 1 ineq
      match cut.val with
      | 0 =>
          LinExpr.sub (binaryLengthThirteenMatrixCutLhs1ExprFin lambda source)
            (LinExpr.smul beta (binaryZeroCoeffExpr 13 source.i))
      | 1 =>
          LinExpr.sub (binaryLengthThirteenMatrixCutLhs2ExprFin lambda source)
            (LinExpr.smul beta
              (LinExpr.sub (binaryZeroCoeffExpr 13 0)
                (binaryZeroCoeffExpr 13 source.i)))
      | 2 =>
          LinExpr.sub (binaryLengthThirteenMatrixCutLhs3ExprFin lambda source)
            (LinExpr.smul beta
              (LinExpr.sub (binaryZeroCoeffExpr 13 0)
                (binaryZeroCoeffExpr 13 source.i)))
      | _ =>
          LinExpr.sub (binaryLengthThirteenMatrixCutLhs4ExprFin lambda source)
            (LinExpr.smul beta
              (LinExpr.add (LinExpr.constExpr (BinaryOrbitIndex 13) 1)
                (LinExpr.add
                  (LinExpr.smul (-2) (binaryZeroCoeffExpr 13 0))
                  (binaryZeroCoeffExpr 13 source.i))))

theorem binaryLengthThirteenMatrixCutLhs1ExprFin_eval_eq
    (lambda : Fin 14 -> Rat) (source : BinaryOrbitIndex 13) (x : BinaryX 13) :
    (binaryLengthThirteenMatrixCutLhs1ExprFin lambda source).eval x =
      (binaryMatrixCutLhs1Expr lambda source).eval x := by
  rw [binaryMatrixCutLhs1Expr_eval]
  unfold binaryLengthThirteenMatrixCutLhs1ExprFin
  unfold LinExpr.eval
  simp [binaryLengthThirteen_sum_orbit_eq_fin,
    binaryLengthThirteenMatrixCutLambdaFast_eq, mul_comm]

theorem binaryLengthThirteenMatrixCutLhs2ExprFin_eval_eq
    (lambda : Fin 14 -> Rat) (source : BinaryOrbitIndex 13) (x : BinaryX 13) :
    (binaryLengthThirteenMatrixCutLhs2ExprFin lambda source).eval x =
      (binaryMatrixCutLhs2Expr lambda source).eval x := by
  rw [binaryMatrixCutLhs2Expr_eval]
  unfold binaryLengthThirteenMatrixCutLhs2ExprFin
  simp [binaryLengthThirteen_sum_orbit_eq_fin,
    binaryLengthThirteenMatrixCutLambdaFast_eq, mul_comm]

theorem binaryLengthThirteenMatrixCutLhs3ExprFin_eval_eq
    (lambda : Fin 14 -> Rat) (source : BinaryOrbitIndex 13) (x : BinaryX 13) :
    (binaryLengthThirteenMatrixCutLhs3ExprFin lambda source).eval x =
      (binaryMatrixCutLhs3Expr lambda source).eval x := by
  rw [binaryMatrixCutLhs3Expr_eval]
  unfold binaryLengthThirteenMatrixCutLhs3ExprFin
  simp [binaryLengthThirteen_sum_orbit_eq_fin,
    binaryLengthThirteenMatrixCutLambdaFast_eq, mul_comm]

theorem binaryLengthThirteenMatrixCutLhs4ExprFin_eval_eq
    (lambda : Fin 14 -> Rat) (source : BinaryOrbitIndex 13) (x : BinaryX 13) :
    (binaryLengthThirteenMatrixCutLhs4ExprFin lambda source).eval x =
      (binaryMatrixCutLhs4Expr lambda source).eval x := by
  rw [binaryMatrixCutLhs4Expr_eval]
  unfold binaryLengthThirteenMatrixCutLhs4ExprFin
  simp [binaryLengthThirteen_sum_orbit_eq_fin,
    binaryLengthThirteenMatrixCutLhs4TargetExprFin,
    binaryLengthThirteenMatrixCutLambdaFast_eq, mul_comm]
  apply Finset.sum_congr rfl
  intro idx _
  ring_nf

theorem binaryLengthThirteenTableScalarAtomExprFin_eval_eq
    (atom : BinaryTableScalarAtom 13 1) (x : BinaryX 13) :
    (binaryLengthThirteenTableScalarAtomExprFin atom).eval x =
      (binaryTableScalarAtomExpr atom).eval x := by
  cases atom with
  | nonneg idx => rfl
  | diagonalUpper idx => rfl
  | basicTriangleLower idx => rfl
  | basicDistanceUpper idx => rfl
  | symmetryLe idx idx' => rfl
  | symmetryGe idx idx' => rfl
  | matrixCut ineq cut source =>
      fin_cases cut <;>
        simp [binaryLengthThirteenTableScalarAtomExprFin, binaryTableScalarAtomExpr,
          binaryLengthThirteenMatrixCutLhs1ExprFin_eval_eq,
          binaryLengthThirteenMatrixCutLhs2ExprFin_eval_eq,
          binaryLengthThirteenMatrixCutLhs3ExprFin_eval_eq,
          binaryLengthThirteenMatrixCutLhs4ExprFin_eval_eq]

private theorem binaryEtaTerm13_zero_of_a00_out
    (source target : BinaryOrbitIndex 13) (d a00 a01 a10 a11 : Nat)
    (hout : a00 ∉ Finset.range (13 + source.t - source.i - source.j + 1)) :
    binaryEtaTerm 13 source target d a00 a01 a10 a11 = 0 := by
  unfold binaryEtaTerm
  by_cases h :
      binaryEtaTermCondition 13 source target d a00 a01 a10 a11
  · have ha : a00 < 13 + source.t - source.i - source.j + 1 := by
      unfold binaryEtaTermCondition at h
      omega
    exact (hout (Finset.mem_range.mpr ha)).elim
  · simp [h]

private theorem binaryEtaTerm13_zero_of_a01_out
    (source target : BinaryOrbitIndex 13) (d a00 a01 a10 a11 : Nat)
    (hout : a01 ∉ Finset.range (source.j - source.t + 1)) :
    binaryEtaTerm 13 source target d a00 a01 a10 a11 = 0 := by
  unfold binaryEtaTerm
  by_cases h :
      binaryEtaTermCondition 13 source target d a00 a01 a10 a11
  · have ha : a01 < source.j - source.t + 1 := by
      unfold binaryEtaTermCondition at h
      omega
    exact (hout (Finset.mem_range.mpr ha)).elim
  · simp [h]

private theorem binaryEtaTerm13_zero_of_a10_out
    (source target : BinaryOrbitIndex 13) (d a00 a01 a10 a11 : Nat)
    (hout : a10 ∉ Finset.range (source.i - source.t + 1)) :
    binaryEtaTerm 13 source target d a00 a01 a10 a11 = 0 := by
  unfold binaryEtaTerm
  by_cases h :
      binaryEtaTermCondition 13 source target d a00 a01 a10 a11
  · have ha : a10 < source.i - source.t + 1 := by
      unfold binaryEtaTermCondition at h
      omega
    exact (hout (Finset.mem_range.mpr ha)).elim
  · simp [h]

private theorem binaryEtaTerm13_zero_of_a11_out
    (source target : BinaryOrbitIndex 13) (d a00 a01 a10 a11 : Nat)
    (hout : a11 ∉ Finset.range (source.t + 1)) :
    binaryEtaTerm 13 source target d a00 a01 a10 a11 = 0 := by
  unfold binaryEtaTerm
  by_cases h :
      binaryEtaTermCondition 13 source target d a00 a01 a10 a11
  · have ha : a11 < source.t + 1 := by
      unfold binaryEtaTermCondition at h
      omega
    exact (hout (Finset.mem_range.mpr ha)).elim
  · simp [h]

def binaryLengthThirteenEtaCoeffRestricted
    (source target : BinaryOrbitIndex 13) (d : Nat) : Rat :=
  (Finset.range (13 + source.t - source.i - source.j + 1)).sum (fun a00 =>
    (Finset.range (source.j - source.t + 1)).sum (fun a01 =>
      (Finset.range (source.i - source.t + 1)).sum (fun a10 =>
        (Finset.range (source.t + 1)).sum (fun a11 =>
          binaryEtaTerm 13 source target d a00 a01 a10 a11))))

theorem binaryLengthThirteenEtaCoeffRestricted_eq
    (source target : BinaryOrbitIndex 13) (d : Nat) :
    binaryLengthThirteenEtaCoeffRestricted source target d =
      binaryEtaCoeff 13 source target d := by
  unfold binaryLengthThirteenEtaCoeffRestricted binaryEtaCoeff
  symm
  calc
    (Finset.range (13 + 1)).sum (fun a00 =>
        (Finset.range (13 + 1)).sum (fun a01 =>
          (Finset.range (13 + 1)).sum (fun a10 =>
            (Finset.range (13 + 1)).sum (fun a11 =>
              binaryEtaTerm 13 source target d a00 a01 a10 a11)))) =
      (Finset.range (13 + source.t - source.i - source.j + 1)).sum (fun a00 =>
        (Finset.range (13 + 1)).sum (fun a01 =>
          (Finset.range (13 + 1)).sum (fun a10 =>
            (Finset.range (13 + 1)).sum (fun a11 =>
              binaryEtaTerm 13 source target d a00 a01 a10 a11)))) := by
        apply sum_range_eq_sum_range_restrict
        · have hrest_le : 13 + source.t - source.i - source.j <= 13 := by
            have h1 : 13 + source.t - source.i <= 13 := by
              have hti := source.ht_i
              rw [Nat.sub_le_iff_le_add]
              omega
            exact le_trans (Nat.sub_le _ _) h1
          omega
        · intro a00 _ hout
          apply Finset.sum_eq_zero
          intro a01 _
          apply Finset.sum_eq_zero
          intro a10 _
          apply Finset.sum_eq_zero
          intro a11 _
          exact binaryEtaTerm13_zero_of_a00_out source target d a00 a01 a10 a11 hout
    _ =
      (Finset.range (13 + source.t - source.i - source.j + 1)).sum (fun a00 =>
        (Finset.range (source.j - source.t + 1)).sum (fun a01 =>
          (Finset.range (13 + 1)).sum (fun a10 =>
            (Finset.range (13 + 1)).sum (fun a11 =>
              binaryEtaTerm 13 source target d a00 a01 a10 a11)))) := by
        apply Finset.sum_congr rfl
        intro a00 _
        apply sum_range_eq_sum_range_restrict
        · have hj := source.j_le_n
          omega
        · intro a01 _ hout
          apply Finset.sum_eq_zero
          intro a10 _
          apply Finset.sum_eq_zero
          intro a11 _
          exact binaryEtaTerm13_zero_of_a01_out source target d a00 a01 a10 a11 hout
    _ =
      (Finset.range (13 + source.t - source.i - source.j + 1)).sum (fun a00 =>
        (Finset.range (source.j - source.t + 1)).sum (fun a01 =>
          (Finset.range (source.i - source.t + 1)).sum (fun a10 =>
            (Finset.range (13 + 1)).sum (fun a11 =>
              binaryEtaTerm 13 source target d a00 a01 a10 a11)))) := by
        apply Finset.sum_congr rfl
        intro a00 _
        apply Finset.sum_congr rfl
        intro a01 _
        apply sum_range_eq_sum_range_restrict
        · have hi := source.i_le_n
          omega
        · intro a10 _ hout
          apply Finset.sum_eq_zero
          intro a11 _
          exact binaryEtaTerm13_zero_of_a10_out source target d a00 a01 a10 a11 hout
    _ =
      (Finset.range (13 + source.t - source.i - source.j + 1)).sum (fun a00 =>
        (Finset.range (source.j - source.t + 1)).sum (fun a01 =>
          (Finset.range (source.i - source.t + 1)).sum (fun a10 =>
            (Finset.range (source.t + 1)).sum (fun a11 =>
              binaryEtaTerm 13 source target d a00 a01 a10 a11)))) := by
        apply Finset.sum_congr rfl
        intro a00 _
        apply Finset.sum_congr rfl
        intro a01 _
        apply Finset.sum_congr rfl
        intro a10 _
        apply sum_range_eq_sum_range_restrict
        · have ht := source.t_le_n
          omega
        · intro a11 _ hout
          exact binaryEtaTerm13_zero_of_a11_out source target d a00 a01 a10 a11 hout

def binaryLengthThirteenLasserreTargetCoeffRestricted
    (lambda : Fin 14 -> Rat) (source target : BinaryOrbitIndex 13) : Rat :=
  Finset.univ.sum (fun d : Fin 14 =>
    lambda d * binaryLengthThirteenEtaCoeffRestricted source target d.val)

theorem binaryLengthThirteenLasserreTargetCoeffRestricted_eq
    (lambda : Fin 14 -> Rat) (source target : BinaryOrbitIndex 13) :
    binaryLengthThirteenLasserreTargetCoeffRestricted lambda source target =
      binaryLasserreTargetCoeff lambda source target := by
  unfold binaryLengthThirteenLasserreTargetCoeffRestricted binaryLasserreTargetCoeff
  apply Finset.sum_congr rfl
  intro d _
  rw [binaryLengthThirteenEtaCoeffRestricted_eq]

def binaryLengthThirteenEtaDist
    (_source : BinaryOrbitIndex 13) (a00 a01 a10 a11 : Nat) : Nat :=
  a00 + a01 + a10 + a11

def binaryLengthThirteenEtaCond
    (source target : BinaryOrbitIndex 13) (d a00 a01 a10 a11 : Nat) : Prop :=
  a00 + source.i + source.j <= 13 + source.t /\
    a01 + source.t <= source.j /\
    a10 + source.t <= source.i /\
    a11 <= source.t /\
    d = a00 + a01 + a10 + a11 /\
    target.i + a11 + a10 = source.i + a00 + a01 /\
    target.j + a11 + a01 = source.j + a00 + a10 /\
    target.t + a11 = source.t + a00

private instance binaryLengthThirteenEtaCondDecidable
    (source target : BinaryOrbitIndex 13) (d a00 a01 a10 a11 : Nat) :
    Decidable (binaryLengthThirteenEtaCond source target d a00 a01 a10 a11) := by
  unfold binaryLengthThirteenEtaCond
  infer_instance

private theorem binaryLengthThirteenEtaTerm_eq_cond
    (source target : BinaryOrbitIndex 13) (d a00 a01 a10 a11 : Nat) :
    binaryEtaTerm 13 source target d a00 a01 a10 a11 =
      if binaryLengthThirteenEtaCond source target d a00 a01 a10 a11 then
        binaryLengthThirteenMatrixCutWeight source a00 a01 a10 a11
      else
        0 := by
  unfold binaryEtaTerm binaryLengthThirteenEtaCond binaryLengthThirteenMatrixCutWeight
  rfl

private theorem binaryLengthThirteenEtaDist_eq_of_cond
    {source target : BinaryOrbitIndex 13} {d a00 a01 a10 a11 : Nat}
    (h : binaryLengthThirteenEtaCond source target d a00 a01 a10 a11) :
    binaryLengthThirteenEtaDist source a00 a01 a10 a11 = d := by
  unfold binaryLengthThirteenEtaCond at h
  unfold binaryLengthThirteenEtaDist
  omega

private theorem binaryLengthThirteenEtaCond_dist_of_cond
    {source target : BinaryOrbitIndex 13} {d a00 a01 a10 a11 : Nat}
    (h : binaryLengthThirteenEtaCond source target d a00 a01 a10 a11) :
    binaryLengthThirteenEtaCond source target
      (binaryLengthThirteenEtaDist source a00 a01 a10 a11)
      a00 a01 a10 a11 := by
  have hdist := binaryLengthThirteenEtaDist_eq_of_cond h
  unfold binaryLengthThirteenEtaCond at h ⊢
  omega

def binaryLengthThirteenLasserreFastTerm
    (lambda : Fin 14 -> Rat) (source target : BinaryOrbitIndex 13)
    (a00 a01 a10 a11 : Nat) : Rat :=
  let dist := binaryLengthThirteenEtaDist source a00 a01 a10 a11
  if hdist : dist < 14 then
    if binaryLengthThirteenEtaCond source target dist a00 a01 a10 a11 then
      lambda ⟨dist, hdist⟩ *
        binaryLengthThirteenMatrixCutWeight source a00 a01 a10 a11
    else
      0
  else
    0

private theorem binaryLengthThirteenLasserreFastTerm_eq_sum
    (lambda : Fin 14 -> Rat) (source target : BinaryOrbitIndex 13)
    (a00 a01 a10 a11 : Nat) :
    binaryLengthThirteenLasserreFastTerm lambda source target a00 a01 a10 a11 =
      Finset.univ.sum (fun d : Fin 14 =>
        lambda d * binaryEtaTerm 13 source target d.val a00 a01 a10 a11) := by
  unfold binaryLengthThirteenLasserreFastTerm
  let dist := binaryLengthThirteenEtaDist source a00 a01 a10 a11
  by_cases hdist : dist < 14
  · by_cases hcond : binaryLengthThirteenEtaCond source target dist a00 a01 a10 a11
    · simp [dist, hdist, hcond, binaryLengthThirteenEtaTerm_eq_cond]
      symm
      refine (Finset.sum_eq_single (M := Rat) (s := Finset.univ)
        (f := fun d : Fin 14 =>
          if binaryLengthThirteenEtaCond source target d.val a00 a01 a10 a11 then
            lambda d * binaryLengthThirteenMatrixCutWeight source a00 a01 a10 a11
          else
            0)
        (⟨dist, hdist⟩ : Fin 14) ?_ ?_).trans ?_
      · intro d _ hdne
        have hnot :
            ¬ binaryLengthThirteenEtaCond source target d.val a00 a01 a10 a11 := by
          intro hd
          have hdist_eq := binaryLengthThirteenEtaDist_eq_of_cond hd
          apply hdne
          ext
          exact hdist_eq.symm
        simp [hnot]
      · intro hmissing
        exact (hmissing (Finset.mem_univ _)).elim
      · have hcond' :
            binaryLengthThirteenEtaCond source target
              (↑(⟨dist, hdist⟩ : Fin 14)) a00 a01 a10 a11 := by
          simpa using hcond
        have hdist_def :
            binaryLengthThirteenEtaDist source a00 a01 a10 a11 = dist := rfl
        simp [hcond', hdist_def]
    · simp [dist, hdist, hcond, binaryLengthThirteenEtaTerm_eq_cond]
      symm
      apply Finset.sum_eq_zero
      intro d _
      have hnot :
          ¬ binaryLengthThirteenEtaCond source target d.val a00 a01 a10 a11 := by
        intro hd
        exact hcond (binaryLengthThirteenEtaCond_dist_of_cond hd)
      simp [hnot]
  · simp [dist, hdist, binaryLengthThirteenEtaTerm_eq_cond]
    symm
    apply Finset.sum_eq_zero
    intro d _
    have hnot :
        ¬ binaryLengthThirteenEtaCond source target d.val a00 a01 a10 a11 := by
      intro hd
      have hdist_eq := binaryLengthThirteenEtaDist_eq_of_cond hd
      have : dist < 14 := by
        change binaryLengthThirteenEtaDist source a00 a01 a10 a11 < 14
        rw [hdist_eq]
        exact d.isLt
      exact hdist this
    simp [hnot]

def binaryLengthThirteenLasserreTargetCoeffFast
    (lambda : Fin 14 -> Rat) (source target : BinaryOrbitIndex 13) : Rat :=
  (Finset.range (13 + source.t - source.i - source.j + 1)).sum (fun a00 =>
    (Finset.range (source.j - source.t + 1)).sum (fun a01 =>
      (Finset.range (source.i - source.t + 1)).sum (fun a10 =>
        (Finset.range (source.t + 1)).sum (fun a11 =>
          binaryLengthThirteenLasserreFastTerm lambda source target a00 a01 a10 a11))))

theorem binaryLengthThirteenLasserreTargetCoeffFast_eq
    (lambda : Fin 14 -> Rat) (source target : BinaryOrbitIndex 13) :
    binaryLengthThirteenLasserreTargetCoeffFast lambda source target =
      binaryLasserreTargetCoeff lambda source target := by
  rw [← binaryLengthThirteenLasserreTargetCoeffRestricted_eq]
  unfold binaryLengthThirteenLasserreTargetCoeffFast
  unfold binaryLengthThirteenLasserreTargetCoeffRestricted
  unfold binaryLengthThirteenEtaCoeffRestricted
  symm
  simp only [Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro a00 _
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro a01 _
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro a10 _
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro a11 _
  rw [← binaryLengthThirteenLasserreFastTerm_eq_sum]

def binaryLengthThirteenLasserreCoeffExprFin
    (lambda : Fin 14 -> Rat) (beta : Rat)
    (source : BinaryOrbitIndex 13) : LinExpr (BinaryOrbitIndex 13) :=
  { coeff := fun target =>
      binaryLengthThirteenLasserreTargetCoeffFast lambda source target -
        beta * (binaryZeroCoeffExpr 13 (binaryOrbitDistanceIndex source)).coeff target
    const := 0 }

theorem binaryLengthThirteenLasserreCoeffExprFin_eval_eq
    (lambda : Fin 14 -> Rat) (beta : Rat)
    (source : BinaryOrbitIndex 13) (x : BinaryX 13) :
    (binaryLengthThirteenLasserreCoeffExprFin lambda beta source).eval x =
      (binaryLasserreCoeffExpr lambda beta source).eval x := by
  rw [binaryLasserreCoeffExpr_eval]
  unfold binaryLengthThirteenLasserreCoeffExprFin
  unfold LinExpr.eval
  simp only
  simp_rw [sub_mul]
  simp_rw [binaryLengthThirteenLasserreTargetCoeffFast_eq]
  rw [Finset.sum_sub_distrib]
  simp_rw [mul_assoc]
  rw [← Finset.mul_sum]
  have hzero_const :
      (binaryZeroCoeffExpr 13 (binaryOrbitDistanceIndex source)).const = 0 := by
    unfold binaryZeroCoeffExpr
    split <;> rfl
  have hzero_eval :
      (∑ target : BinaryOrbitIndex 13,
          (binaryZeroCoeffExpr 13 (binaryOrbitDistanceIndex source)).coeff target * x target) =
        binaryZeroCoeff x (binaryOrbitDistanceIndex source) := by
    have h := binaryZeroCoeffExpr_eval (n:=13) (binaryOrbitDistanceIndex source) x
    unfold LinExpr.eval at h
    rw [hzero_const] at h
    simpa using h
  rw [hzero_eval]
  ring

def binaryLengthThirteenTableBlockEntryExprFin
    (idx : BinaryBlockIndex 13)
    (coeffExpr : BinaryOrbitIndex 13 -> LinExpr (BinaryOrbitIndex 13))
    (row col : BinaryTableBlockCoord idx) : LinExpr (BinaryOrbitIndex 13) :=
  let i := binaryTableCoordIndex idx row
  let j := binaryTableCoordIndex idx col
  LinExpr.sum (Finset.range 14) (fun t =>
    if ht_i : t <= i then
      if ht_j : t <= j then
        if hij : i + j <= 13 + t then
          LinExpr.smul (betaCoeff 13 i j idx.k t)
            (coeffExpr
              { i := i, j := j, t := t, ht_i := ht_i, ht_j := ht_j, hij := hij })
        else
          LinExpr.constExpr (BinaryOrbitIndex 13) 0
      else
        LinExpr.constExpr (BinaryOrbitIndex 13) 0
    else
      LinExpr.constExpr (BinaryOrbitIndex 13) 0)

theorem binaryLengthThirteenTableBlockEntryExprFin_eval_eq
    (idx : BinaryBlockIndex 13)
    (coeffExpr coeffExpr' :
      BinaryOrbitIndex 13 -> LinExpr (BinaryOrbitIndex 13))
    (hcoeff : forall source,
      (coeffExpr source).eval x = (coeffExpr' source).eval x)
    (row col : BinaryTableBlockCoord idx) :
    (binaryLengthThirteenTableBlockEntryExprFin idx coeffExpr row col).eval x =
      (binaryTableBlockEntryExpr 13 idx coeffExpr' row col).eval x := by
  unfold binaryLengthThirteenTableBlockEntryExprFin binaryTableBlockEntryExpr
  simp only [LinExpr.eval_sum]
  apply Finset.sum_congr rfl
  intro t _
  by_cases ht_i : t <= binaryTableCoordIndex idx row
  · by_cases ht_j : t <= binaryTableCoordIndex idx col
    · by_cases hij :
        binaryTableCoordIndex idx row + binaryTableCoordIndex idx col <= 13 + t
      · simp [ht_i, ht_j, hij, hcoeff]
      · simp [ht_i, ht_j, hij]
    · simp [ht_i, ht_j]
  · simp [ht_i]

def binaryLengthThirteenComplementZeroBlockExprFin :
    Matrix (Option (Fin 14)) (Option (Fin 14)) (LinExpr (BinaryOrbitIndex 13))
  | none, none =>
      LinExpr.sub (LinExpr.constExpr (BinaryOrbitIndex 13) 1)
        (binaryZeroCoeffExpr 13 0)
  | none, some col => binaryComplementBorderExpr 13 col
  | some row, none => binaryComplementBorderExpr 13 row
  | some row, some col =>
      binaryLengthThirteenTableBlockEntryExprFin
        ({ k := 0, hk := by omega } : BinaryBlockIndex 13)
        (binaryComplementCoeffExpr 13) row col

theorem binaryLengthThirteenComplementZeroBlockExprFin_eval_eq
    (row col : Option (Fin 14)) (x : BinaryX 13) :
    (binaryLengthThirteenComplementZeroBlockExprFin row col).eval x =
      (binaryComplementZeroBlockExpr 13 row col).eval x := by
  cases row <;> cases col
  · rfl
  · rfl
  · rfl
  · exact binaryLengthThirteenTableBlockEntryExprFin_eval_eq
      ({ k := 0, hk := by omega } : BinaryBlockIndex 13)
      (binaryComplementCoeffExpr 13) (binaryComplementCoeffExpr 13)
      (fun _ => rfl) _ _

def binaryLengthThirteenLasserreBorderExprFin
    (lambda : Fin 14 -> Rat) (beta : Rat) (coord : Fin 14) :
    LinExpr (BinaryOrbitIndex 13) :=
  let i := 13 - coord.val
  LinExpr.smul (Nat.choose 13 i)
    (binaryLengthThirteenLasserreCoeffExprFin lambda beta
      { i := i, j := i, t := i, ht_i := Nat.le_refl i,
        ht_j := Nat.le_refl i, hij := by omega })

theorem binaryLengthThirteenLasserreBorderExprFin_eval_eq
    (lambda : Fin 14 -> Rat) (beta : Rat) (coord : Fin 14) (x : BinaryX 13) :
    (binaryLengthThirteenLasserreBorderExprFin lambda beta coord).eval x =
      (binaryLasserreBorderExpr lambda beta coord).eval x := by
  unfold binaryLengthThirteenLasserreBorderExprFin binaryLasserreBorderExpr
  simp [binaryLengthThirteenLasserreCoeffExprFin_eval_eq]

def binaryLengthThirteenLasserreZeroBlockExprFin
    (lambda : Fin 14 -> Rat) (beta : Rat) :
    Matrix (Option (Fin 14)) (Option (Fin 14)) (LinExpr (BinaryOrbitIndex 13))
  | none, none =>
      LinExpr.sub
        (LinExpr.smul
          (Finset.univ.sum (fun i : Fin 14 =>
            (Nat.choose 13 i.val : Rat) * lambda i))
          (binaryZeroCoeffExpr 13 0))
        (LinExpr.constExpr (BinaryOrbitIndex 13) beta)
  | none, some col => binaryLengthThirteenLasserreBorderExprFin lambda beta col
  | some row, none => binaryLengthThirteenLasserreBorderExprFin lambda beta row
  | some row, some col =>
      binaryLengthThirteenTableBlockEntryExprFin
        ({ k := 0, hk := by omega } : BinaryBlockIndex 13)
        (binaryLengthThirteenLasserreCoeffExprFin lambda beta) row col

theorem binaryLengthThirteenLasserreZeroBlockExprFin_eval_eq
    (lambda : Fin 14 -> Rat) (beta : Rat)
    (row col : Option (Fin 14)) (x : BinaryX 13) :
    (binaryLengthThirteenLasserreZeroBlockExprFin lambda beta row col).eval x =
      (binaryLasserreZeroBlockExpr lambda beta row col).eval x := by
  cases row <;> cases col
  · rfl
  · exact binaryLengthThirteenLasserreBorderExprFin_eval_eq lambda beta _ x
  · exact binaryLengthThirteenLasserreBorderExprFin_eval_eq lambda beta _ x
  · exact binaryLengthThirteenTableBlockEntryExprFin_eval_eq
      ({ k := 0, hk := by omega } : BinaryBlockIndex 13)
      (binaryLengthThirteenLasserreCoeffExprFin lambda beta)
      (binaryLasserreCoeffExpr lambda beta)
      (fun source => binaryLengthThirteenLasserreCoeffExprFin_eval_eq
        lambda beta source x) _ _

def binaryLengthThirteenTableMatrixAtomExprFin :
    forall atom : BinaryTableMatrixAtom 13 1,
      Matrix (BinaryTableMatrixAtom.Coord atom) (BinaryTableMatrixAtom.Coord atom)
        (LinExpr (BinaryOrbitIndex 13))
  | .primal idx =>
      fun row col =>
        binaryLengthThirteenTableBlockEntryExprFin idx
          (fun source => LinExpr.var source) row col
  | .complementZero =>
      binaryLengthThirteenComplementZeroBlockExprFin
  | .complementPositive idx =>
      fun row col =>
        binaryLengthThirteenTableBlockEntryExprFin idx.val
          (binaryComplementCoeffExpr 13) row col
  | .lasserreZero ineq =>
      binaryLengthThirteenLasserreZeroBlockExprFin
        (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq)
  | .lasserrePositive ineq idx =>
      fun row col =>
        binaryLengthThirteenTableBlockEntryExprFin idx.val
          (binaryLengthThirteenLasserreCoeffExprFin
            (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq))
          row col

theorem binaryLengthThirteenTableMatrixAtomExprFin_eval_eq
    (atom : BinaryTableMatrixAtom 13 1)
    (row col : BinaryTableMatrixAtom.Coord atom) (x : BinaryX 13) :
    (binaryLengthThirteenTableMatrixAtomExprFin atom row col).eval x =
      ((binaryTableMatrixAtomExpr atom) row col).eval x := by
  cases atom with
  | primal idx =>
      exact binaryLengthThirteenTableBlockEntryExprFin_eval_eq idx
        (fun source => LinExpr.var source) (fun source => LinExpr.var source)
        (fun _ => rfl) row col
  | complementZero =>
      exact binaryLengthThirteenComplementZeroBlockExprFin_eval_eq row col x
  | complementPositive idx =>
      exact binaryLengthThirteenTableBlockEntryExprFin_eval_eq idx.val
        (binaryComplementCoeffExpr 13) (binaryComplementCoeffExpr 13)
        (fun _ => rfl) row col
  | lasserreZero ineq =>
      exact binaryLengthThirteenLasserreZeroBlockExprFin_eval_eq
        (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq) row col x
  | lasserrePositive ineq idx =>
      exact binaryLengthThirteenTableBlockEntryExprFin_eval_eq idx.val
        (binaryLengthThirteenLasserreCoeffExprFin
          (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq))
        (binaryLasserreCoeffExpr
          (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq))
        (fun source => binaryLengthThirteenLasserreCoeffExprFin_eval_eq
          (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq) source x)
        row col

def binaryK2_13_1BorderCoordToFin : Option (Fin 14) -> Fin 15
  | none => ⟨0, by decide⟩
  | some idx => ⟨idx.val + 1, by omega⟩

def binaryK2_13_1BorderCoordOfFin (coord : Fin 15) : Option (Fin 14) :=
  if h : coord.val = 0 then none else some ⟨coord.val - 1, by omega⟩

def binaryK2_13_1BorderCoordEquiv : Option (Fin 14) ≃ Fin 15 where
  toFun := binaryK2_13_1BorderCoordToFin
  invFun := binaryK2_13_1BorderCoordOfFin
  left_inv := by
    intro coord
    cases coord with
    | none => rfl
    | some idx =>
        simp [binaryK2_13_1BorderCoordToFin, binaryK2_13_1BorderCoordOfFin]
  right_inv := by
    intro coord
    rcases coord with ⟨v, hv⟩
    by_cases h : v = 0
    · subst v
      rfl
    · simp [binaryK2_13_1BorderCoordToFin, binaryK2_13_1BorderCoordOfFin, h]
      omega

end

end GijswijtPolak2025
end SDP
end CoveringCodes
