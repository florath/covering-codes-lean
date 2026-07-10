import CoveringCodes.Database.Sources.HexadecimaryFourTwoProfileSemantics
import CoveringCodes.Database.Sources.HexadecimaryFourTwoSupportDirect

/-!
# Semantic bridge for K16 support-defect CNFs

The support CNFs use pair-present variables.  The existing K16 profile graph
uses missing-pair variables, so the valuation below interprets present
variables as complements of `HexadecimaryFourTwoProfileGraph.edgeByPairIndex`.
-/

namespace CoveringCodes
namespace Database

open scoped BigOperators

def HexadecimaryFourTwoProfileGraph.dByCoord
    (G : HexadecimaryFourTwoProfileGraph) (coord symbol : Nat) : Nat :=
  match coord with
  | 0 => G.d0 (fin16OfNatMod symbol)
  | 1 => G.d1 (fin16OfNatMod symbol)
  | 2 => G.d2 (fin16OfNatMod symbol)
  | 3 => G.d3 (fin16OfNatMod symbol)
  | _ => 0

def HexadecimaryFourTwoProfileGraph.presentByPairIndex
    (G : HexadecimaryFourTwoProfileGraph) (pairIndex row col : Nat) : Prop :=
  ¬ G.edgeByPairIndex pairIndex row col

def HexadecimaryFourTwoProfileGraph.thresholdByCoord
    (G : HexadecimaryFourTwoProfileGraph) (coord symbol threshold : Nat) : Prop :=
  threshold ≤ 5 + G.dByCoord coord symbol

def HexadecimaryFourTwoProfileGraph.supportIncidentPresent
    (G : HexadecimaryFourTwoProfileGraph) (coord symbol other idx : Nat) : Prop :=
  if coord < other then
    G.presentByPairIndex
      (HexadecimaryFourTwoSupportDirect.pairIndexOf coord other) symbol idx
  else
    G.presentByPairIndex
      (HexadecimaryFourTwoSupportDirect.pairIndexOf other coord) idx symbol

noncomputable def HexadecimaryFourTwoProfileGraph.supportThresholdCounterPrefixPresentCount
    (G : HexadecimaryFourTwoProfileGraph)
    (coord symbol other : Nat) : Nat → Nat
  | 0 => 0
  | n + 1 => by
      classical
      exact
      G.supportThresholdCounterPrefixPresentCount coord symbol other n +
        if G.supportIncidentPresent coord symbol other n then 1 else 0

def HexadecimaryFourTwoProfileGraph.supportBudgetThresholdInput
    (G : HexadecimaryFourTwoProfileGraph) (coord idx : Nat) : Prop :=
  G.thresholdByCoord coord (idx / 11) (idx % 11 + 6)

noncomputable def HexadecimaryFourTwoProfileGraph.supportBudgetPrefixCount
    (G : HexadecimaryFourTwoProfileGraph) (coord : Nat) : Nat → Nat
  | 0 => 0
  | n + 1 => by
      classical
      exact
      G.supportBudgetPrefixCount coord n +
        if G.supportBudgetThresholdInput coord n then 1 else 0

def supportThresholdCounterDecodeAux : Nat → Nat → Nat → Nat × Nat
  | 0, i, within => (i, within + 1)
  | fuel + 1, i, within =>
      if within < i then
        (i, within + 1)
      else
        supportThresholdCounterDecodeAux fuel (i + 1) (within - i)

def supportThresholdCounterDecode (within : Nat) : Nat × Nat :=
  supportThresholdCounterDecodeAux 16 1 within

def supportOtherOfSlot (coord slot : Nat) : Nat :=
  if slot < coord then slot else slot + 1

def HexadecimaryFourTwoProfileGraph.presentValuation
    (G : HexadecimaryFourTwoProfileGraph) : Sat.Valuation :=
  fun idx =>
    G.presentByPairIndex (idx / (16 * 16)) ((idx % (16 * 16)) / 16) (idx % 16)

def HexadecimaryFourTwoProfileGraph.supportValuation
    (G : HexadecimaryFourTwoProfileGraph) : Sat.Valuation :=
  fun idx =>
    if idx < HexadecimaryFourTwoSupportDirect.presentVarCount then
      G.presentValuation idx
    else if idx < HexadecimaryFourTwoSupportDirect.presentVarCount + HexadecimaryFourTwoSupportDirect.thresholdVarCount then
      let off := idx - HexadecimaryFourTwoSupportDirect.presentVarCount
      let coord := off / (16 * 11)
      let remCoord := off % (16 * 11)
      let symbol := remCoord / 11
      let threshold := remCoord % 11 + 6
      G.thresholdByCoord coord symbol threshold
    else if idx < HexadecimaryFourTwoSupportDirect.budgetCounterStart - 1 then
      let off := idx - (HexadecimaryFourTwoSupportDirect.thresholdCounterStart - 1)
      let block := off / HexadecimaryFourTwoSupportDirect.thresholdCounterBlockCount
      let within := off % HexadecimaryFourTwoSupportDirect.thresholdCounterBlockCount
      let coord := block / (16 * 3)
      let remBlock := block % (16 * 3)
      let symbol := remBlock / 3
      let other := supportOtherOfSlot coord (remBlock % 3)
      let decoded := supportThresholdCounterDecode within
      decoded.2 ≤
        G.supportThresholdCounterPrefixPresentCount coord symbol other decoded.1
    else if idx < HexadecimaryFourTwoSupportDirect.supportSortedCoord0SequentialNVars then
      let off := idx - (HexadecimaryFourTwoSupportDirect.budgetCounterStart - 1)
      let coord := off / ((16 * 11 - 1) * 6)
      let remCoord := off % ((16 * 11 - 1) * 6)
      let i := remCoord / 6 + 1
      let count := remCoord % 6 + 1
      count ≤ G.supportBudgetPrefixCount coord i
    else
      False

def HexadecimaryFourTwoProfileGraph.sortedExcessProfiles
    (G : HexadecimaryFourTwoProfileGraph) : Prop :=
  ∀ coord symbol,
    coord < 4 → 0 < symbol → symbol < 16 →
      G.dByCoord coord symbol ≤ G.dByCoord coord (symbol - 1)

def HexadecimaryFourTwoProfileGraph.sortedCoord0SupportLeFive
    (G : HexadecimaryFourTwoProfileGraph) : Prop :=
  G.dByCoord 0 5 = 0

@[simp] private theorem supportDirect_q_eq : HexadecimaryFourTwoSupportDirect.q = 16 := by
  native_decide

@[simp] private theorem supportDirect_presentVarCount_eq :
    HexadecimaryFourTwoSupportDirect.presentVarCount = 1536 := by
  native_decide

@[simp] private theorem supportDirect_thresholdVarCount_eq :
    HexadecimaryFourTwoSupportDirect.thresholdVarCount = 704 := by
  native_decide

@[simp] private theorem supportDirect_thresholdCounterBlockCount_eq :
    HexadecimaryFourTwoSupportDirect.thresholdCounterBlockCount = 136 := by
  native_decide

@[simp] private theorem supportDirect_thresholdCounterStart_eq :
    HexadecimaryFourTwoSupportDirect.thresholdCounterStart = 2241 := by
  native_decide

@[simp] private theorem supportDirect_budgetCounterStart_eq :
    HexadecimaryFourTwoSupportDirect.budgetCounterStart = 28353 := by
  native_decide

@[simp] private theorem supportDirect_supportSortedCoord0SequentialNVars_eq :
    HexadecimaryFourTwoSupportDirect.supportSortedCoord0SequentialNVars = 32552 := by
  native_decide

private theorem block_decode (block k w : Nat)
    (hblock : 0 < block) (hw : w < block) :
    (k * block + w) / block = k ∧
      (k * block + w) % block = w := by
  have hdivw : w / block = 0 := Nat.div_eq_of_lt hw
  have hmodw : w % block = w := Nat.mod_eq_of_lt hw
  constructor
  · rw [Nat.mul_comm k block, Nat.add_comm, Nat.add_mul_div_left]
    · simp [hdivw]
    · exact hblock
  · rw [Nat.mul_comm k block, Nat.add_comm, Nat.add_mul_mod_self_left, hmodw]

set_option maxHeartbeats 0 in
theorem HexadecimaryFourTwoProfileGraph.presentValuation_presentVar
    (G : HexadecimaryFourTwoProfileGraph)
    (pairIndex : Fin 6)
    (row col : Fin 16) :
    G.presentValuation
        (HexadecimaryFourTwoSupportDirect.presentVar pairIndex.val row.val col.val - 1) ↔
      G.presentByPairIndex pairIndex.val row.val col.val := by
  have hp := pairIndex.isLt
  have hr := row.isLt
  have hc := col.isLt
  let remPair := row.val * 16 + col.val
  have hremPair : remPair < 16 * 16 := by
    dsimp [remPair]
    omega
  have hpair_decode :=
    block_decode (16 * 16) pairIndex.val remPair (by decide) hremPair
  have hrow_decode :=
    block_decode 16 row.val col.val (by decide) (by exact hc)
  have hidx :
      HexadecimaryFourTwoSupportDirect.presentVar
          pairIndex.val row.val col.val - 1 =
        pairIndex.val * (16 * 16) + remPair := by
    simp [HexadecimaryFourTwoSupportDirect.presentVar,
      HexadecimaryFourTwoSupportDirect.q, remPair]
    omega
  have hpair_div :
      (pairIndex.val * 256 + remPair) / 256 = pairIndex.val := by
    simpa using hpair_decode.1
  have hpair_mod :
      (pairIndex.val * 256 + remPair) % 256 = remPair := by
    simpa using hpair_decode.2
  have hrow_div : remPair / 16 = row.val := by
    simpa [remPair] using hrow_decode.1
  have hrow_mod : remPair % 16 = col.val := by
    exact hrow_decode.2
  have hidx_mod16 :
      (pairIndex.val * 256 + remPair) % 16 = col.val := by
    have hdecode :=
      block_decode 16 (pairIndex.val * 16 + row.val) col.val
        (by decide) (by exact hc)
    have heq :
        (pairIndex.val * 16 + row.val) * 16 + col.val =
          pairIndex.val * 256 + remPair := by
      dsimp [remPair]
      omega
    simpa [heq] using hdecode.2
  simp [HexadecimaryFourTwoProfileGraph.presentValuation,
    HexadecimaryFourTwoProfileGraph.presentByPairIndex,
    HexadecimaryFourTwoProfileGraph.edgeByPairIndex,
    hidx, hpair_div, hpair_mod, hrow_div, hidx_mod16,
    fin16OfNatMod]

theorem HexadecimaryFourTwoProfileGraph.supportValuation_presentVar
    (G : HexadecimaryFourTwoProfileGraph)
    (pairIndex : Fin 6)
    (row col : Fin 16) :
    G.supportValuation
        (HexadecimaryFourTwoSupportDirect.presentVar pairIndex.val row.val col.val - 1) ↔
      G.presentByPairIndex pairIndex.val row.val col.val := by
  have hlt :
      HexadecimaryFourTwoSupportDirect.presentVar pairIndex.val row.val col.val - 1 <
        HexadecimaryFourTwoSupportDirect.presentVarCount := by
    have hp := pairIndex.isLt
    have hr := row.isLt
    have hc := col.isLt
    simp [HexadecimaryFourTwoSupportDirect.presentVar, HexadecimaryFourTwoSupportDirect.presentVarCount, HexadecimaryFourTwoSupportDirect.pairCount, HexadecimaryFourTwoSupportDirect.q]
    omega
  have hlt' :
      HexadecimaryFourTwoSupportDirect.presentVar pairIndex.val row.val col.val - 1 < 1536 := by
    simpa using hlt
  simp [HexadecimaryFourTwoProfileGraph.supportValuation, hlt',
    G.presentValuation_presentVar pairIndex row col]

theorem HexadecimaryFourTwoProfileGraph.supportValuation_thresholdVar
    (G : HexadecimaryFourTwoProfileGraph)
    (coord : Fin 4)
    (symbol : Fin 16)
    (off : Fin 11) :
    G.supportValuation
        (HexadecimaryFourTwoSupportDirect.thresholdVar
          coord.val symbol.val (off.val + 6) - 1) ↔
      off.val + 6 ≤ 5 + G.dByCoord coord.val symbol.val := by
  have hcoord := coord.isLt
  have hsymbol := symbol.isLt
  have hoff := off.isLt
  let remCoord := symbol.val * 11 + off.val
  have hremCoord : remCoord < 16 * 11 := by
    dsimp [remCoord]
    omega
  have hcoord_decode :=
    block_decode (16 * 11) coord.val remCoord (by decide) hremCoord
  have hsymbol_decode :=
    block_decode 11 symbol.val off.val (by decide) (by exact hoff)
  have hidx_ge :
      ¬ HexadecimaryFourTwoSupportDirect.thresholdVar
          coord.val symbol.val (off.val + 6) - 1 <
        HexadecimaryFourTwoSupportDirect.presentVarCount := by
    simp [HexadecimaryFourTwoSupportDirect.thresholdVar,
      HexadecimaryFourTwoSupportDirect.presentVarCount,
      HexadecimaryFourTwoSupportDirect.q,
      HexadecimaryFourTwoSupportDirect.thresholdCount]
    omega
  have hidx_ge' :
      ¬ HexadecimaryFourTwoSupportDirect.thresholdVar
          coord.val symbol.val (off.val + 6) - 1 < 1536 := by
    simpa [HexadecimaryFourTwoSupportDirect.presentVarCount] using hidx_ge
  have hidx_lt :
      HexadecimaryFourTwoSupportDirect.thresholdVar
          coord.val symbol.val (off.val + 6) - 1 <
        HexadecimaryFourTwoSupportDirect.presentVarCount +
          HexadecimaryFourTwoSupportDirect.thresholdVarCount := by
    simp [HexadecimaryFourTwoSupportDirect.thresholdVar,
      HexadecimaryFourTwoSupportDirect.presentVarCount,
      HexadecimaryFourTwoSupportDirect.thresholdVarCount,
      HexadecimaryFourTwoSupportDirect.presentVarCount,
      HexadecimaryFourTwoSupportDirect.pairCount,
      HexadecimaryFourTwoSupportDirect.coordCount,
      HexadecimaryFourTwoSupportDirect.q,
      HexadecimaryFourTwoSupportDirect.thresholdCount]
    omega
  have hidx_lt' :
      HexadecimaryFourTwoSupportDirect.thresholdVar
          coord.val symbol.val (off.val + 6) - 1 < 2240 := by
    simpa [HexadecimaryFourTwoSupportDirect.presentVarCount,
      HexadecimaryFourTwoSupportDirect.thresholdVarCount] using hidx_lt
  have hoff_sub :
      HexadecimaryFourTwoSupportDirect.thresholdVar
          coord.val symbol.val (off.val + 6) - 1 -
        HexadecimaryFourTwoSupportDirect.presentVarCount =
          coord.val * (16 * 11) + remCoord := by
    simp [HexadecimaryFourTwoSupportDirect.thresholdVar,
      HexadecimaryFourTwoSupportDirect.presentVarCount,
      HexadecimaryFourTwoSupportDirect.q,
      HexadecimaryFourTwoSupportDirect.thresholdCount,
      remCoord]
    omega
  have hoff_sub' :
      HexadecimaryFourTwoSupportDirect.thresholdVar
          coord.val symbol.val (off.val + 6) - 1 - 1536 =
          coord.val * (16 * 11) + remCoord := by
    simpa [HexadecimaryFourTwoSupportDirect.presentVarCount] using hoff_sub
  have hcoord_decode' :
      (coord.val * 176 + remCoord) / 176 = coord.val ∧
        (coord.val * 176 + remCoord) % 176 = remCoord := by
    simpa using hcoord_decode
  have hrem_div : remCoord / 11 = symbol.val := by
    simpa [remCoord] using hsymbol_decode.1
  have hrem_mod : remCoord % 11 = off.val := by
    exact hsymbol_decode.2
  simp [HexadecimaryFourTwoProfileGraph.supportValuation, hidx_ge', hidx_lt',
    hoff_sub', hcoord_decode'.1, hcoord_decode'.2, hrem_div, hrem_mod,
    HexadecimaryFourTwoProfileGraph.thresholdByCoord]

theorem HexadecimaryFourTwoProfileGraph.supportThresholdCounterPrefixPresentCount_succ_of_input
    (G : HexadecimaryFourTwoProfileGraph)
    (coord symbol other n : Nat)
    (h : G.supportIncidentPresent coord symbol other n) :
    G.supportThresholdCounterPrefixPresentCount coord symbol other (n + 1) =
      G.supportThresholdCounterPrefixPresentCount coord symbol other n + 1 := by
  classical
  simp [HexadecimaryFourTwoProfileGraph.supportThresholdCounterPrefixPresentCount, h]

theorem HexadecimaryFourTwoProfileGraph.supportThresholdCounterPrefixPresentCount_succ_le
    (G : HexadecimaryFourTwoProfileGraph)
    (coord symbol other n : Nat) :
    G.supportThresholdCounterPrefixPresentCount coord symbol other n ≤
      G.supportThresholdCounterPrefixPresentCount coord symbol other (n + 1) := by
  classical
  by_cases h : G.supportIncidentPresent coord symbol other n <;>
    simp [HexadecimaryFourTwoProfileGraph.supportThresholdCounterPrefixPresentCount, h]

theorem HexadecimaryFourTwoProfileGraph.supportThresholdCounterPrefixPresentCount_mono
    (G : HexadecimaryFourTwoProfileGraph)
    (coord symbol other : Nat)
    {m n : Nat} (h : m ≤ n) :
    G.supportThresholdCounterPrefixPresentCount coord symbol other m ≤
      G.supportThresholdCounterPrefixPresentCount coord symbol other n := by
  induction n generalizing m with
  | zero =>
      have hm : m = 0 := by omega
      subst hm
      exact le_rfl
  | succ n ih =>
      by_cases hm : m ≤ n
      · exact le_trans (ih hm)
          (G.supportThresholdCounterPrefixPresentCount_succ_le coord symbol other n)
      · have hm' : m = n + 1 := by omega
        subst hm'
        exact le_rfl

theorem HexadecimaryFourTwoProfileGraph.supportThresholdCounterPrefixPresentCount_pos_of_input
    (G : HexadecimaryFourTwoProfileGraph)
    (coord symbol other i : Nat)
    (hi : 0 < i)
    (h : G.supportIncidentPresent coord symbol other (i - 1)) :
    1 ≤ G.supportThresholdCounterPrefixPresentCount coord symbol other i := by
  have hi_eq : i = (i - 1) + 1 := by omega
  rw [hi_eq]
  rw [G.supportThresholdCounterPrefixPresentCount_succ_of_input coord symbol other (i - 1) h]
  omega

theorem HexadecimaryFourTwoProfileGraph.supportBudgetPrefixCount_succ_of_input
    (G : HexadecimaryFourTwoProfileGraph)
    (coord n : Nat)
    (h : G.supportBudgetThresholdInput coord n) :
    G.supportBudgetPrefixCount coord (n + 1) =
      G.supportBudgetPrefixCount coord n + 1 := by
  classical
  simp [HexadecimaryFourTwoProfileGraph.supportBudgetPrefixCount, h]

theorem HexadecimaryFourTwoProfileGraph.supportBudgetPrefixCount_succ_le
    (G : HexadecimaryFourTwoProfileGraph)
    (coord n : Nat) :
    G.supportBudgetPrefixCount coord n ≤
      G.supportBudgetPrefixCount coord (n + 1) := by
  classical
  by_cases h : G.supportBudgetThresholdInput coord n <;>
    simp [HexadecimaryFourTwoProfileGraph.supportBudgetPrefixCount, h]

theorem HexadecimaryFourTwoProfileGraph.supportBudgetPrefixCount_mono
    (G : HexadecimaryFourTwoProfileGraph)
    (coord : Nat)
    {m n : Nat} (h : m ≤ n) :
    G.supportBudgetPrefixCount coord m ≤
      G.supportBudgetPrefixCount coord n := by
  induction n generalizing m with
  | zero =>
      have hm : m = 0 := by omega
      subst hm
      exact le_rfl
  | succ n ih =>
      by_cases hm : m ≤ n
      · exact le_trans (ih hm) (G.supportBudgetPrefixCount_succ_le coord n)
      · have hm' : m = n + 1 := by omega
        subst hm'
        exact le_rfl

theorem HexadecimaryFourTwoProfileGraph.supportBudgetPrefixCount_pos_of_input
    (G : HexadecimaryFourTwoProfileGraph)
    (coord i : Nat)
    (hi : 0 < i)
    (h : G.supportBudgetThresholdInput coord (i - 1)) :
    1 ≤ G.supportBudgetPrefixCount coord i := by
  have hi_eq : i = (i - 1) + 1 := by omega
  rw [hi_eq]
  rw [G.supportBudgetPrefixCount_succ_of_input coord (i - 1) h]
  omega

def supportBudgetCounterFirst (coord : Nat) : Nat :=
  HexadecimaryFourTwoSupportDirect.budgetCounterStart +
    coord * ((16 * 11 - 1) * 6)

def supportBudgetCounterVar (coord i count : Nat) : Nat :=
  supportBudgetCounterFirst coord + (i - 1) * 6 + (count - 1)

@[simp] private theorem supportBudget_mul11_add_div_of_lt
    (symbol k : Nat) (hk : k < 11) :
    (symbol * 11 + k) / 11 = symbol := by
  rw [Nat.mul_comm symbol 11]
  rw [Nat.mul_add_div (by decide : 0 < 11)]
  rw [Nat.div_eq_of_lt hk]
  omega

@[simp] private theorem supportBudget_mul11_add_mod_of_lt
    (symbol k : Nat) (hk : k < 11) :
    (symbol * 11 + k) % 11 = k := by
  rw [Nat.mul_comm symbol 11]
  rw [Nat.mul_add_mod_self_left]
  exact Nat.mod_eq_of_lt hk

noncomputable def supportBudgetThresholdInputBool
    (G : HexadecimaryFourTwoProfileGraph) (coord idx : Nat) : Bool := by
  classical
  exact decide (G.supportBudgetThresholdInput coord idx)

noncomputable def supportBudgetBlockSum
    (G : HexadecimaryFourTwoProfileGraph) (coord base : Nat) : Nat :=
  (((((((((((if supportBudgetThresholdInputBool G coord base then 1 else 0) +
    if supportBudgetThresholdInputBool G coord (base + 1) then 1 else 0) +
    if supportBudgetThresholdInputBool G coord (base + 2) then 1 else 0) +
    if supportBudgetThresholdInputBool G coord (base + 3) then 1 else 0) +
    if supportBudgetThresholdInputBool G coord (base + 4) then 1 else 0) +
    if supportBudgetThresholdInputBool G coord (base + 5) then 1 else 0) +
    if supportBudgetThresholdInputBool G coord (base + 6) then 1 else 0) +
    if supportBudgetThresholdInputBool G coord (base + 7) then 1 else 0) +
    if supportBudgetThresholdInputBool G coord (base + 8) then 1 else 0) +
    if supportBudgetThresholdInputBool G coord (base + 9) then 1 else 0) +
    if supportBudgetThresholdInputBool G coord (base + 10) then 1 else 0)

private theorem supportThreshold11_count_le (d : Nat) :
    (((((((((((if 6 ≤ 5 + d then 1 else 0) +
              if 7 ≤ 5 + d then 1 else 0) +
             if 8 ≤ 5 + d then 1 else 0) +
            if 9 ≤ 5 + d then 1 else 0) +
           if 10 ≤ 5 + d then 1 else 0) +
          if 11 ≤ 5 + d then 1 else 0) +
         if 12 ≤ 5 + d then 1 else 0) +
        if 13 ≤ 5 + d then 1 else 0) +
       if 14 ≤ 5 + d then 1 else 0) +
      if 15 ≤ 5 + d then 1 else 0) +
     if 16 ≤ 5 + d then 1 else 0) ≤ d := by
  by_cases hle : d ≤ 10
  · interval_cases d <;> norm_num
  · have hge : 11 ≤ d := by omega
    have h6 : (if 6 ≤ 5 + d then 1 else 0) ≤ 1 := by split <;> omega
    have h7 : (if 7 ≤ 5 + d then 1 else 0) ≤ 1 := by split <;> omega
    have h8 : (if 8 ≤ 5 + d then 1 else 0) ≤ 1 := by split <;> omega
    have h9 : (if 9 ≤ 5 + d then 1 else 0) ≤ 1 := by split <;> omega
    have h10 : (if 10 ≤ 5 + d then 1 else 0) ≤ 1 := by split <;> omega
    have h11 : (if 11 ≤ 5 + d then 1 else 0) ≤ 1 := by split <;> omega
    have h12 : (if 12 ≤ 5 + d then 1 else 0) ≤ 1 := by split <;> omega
    have h13 : (if 13 ≤ 5 + d then 1 else 0) ≤ 1 := by split <;> omega
    have h14 : (if 14 ≤ 5 + d then 1 else 0) ≤ 1 := by split <;> omega
    have h15 : (if 15 ≤ 5 + d then 1 else 0) ≤ 1 := by split <;> omega
    have h16 : (if 16 ≤ 5 + d then 1 else 0) ≤ 1 := by split <;> omega
    omega

theorem HexadecimaryFourTwoProfileGraph.supportBudgetBlockSum_le_dByCoord
    (G : HexadecimaryFourTwoProfileGraph) (coord symbol : Nat) :
    supportBudgetBlockSum G coord (symbol * 11) ≤ G.dByCoord coord symbol := by
  have h := supportThreshold11_count_le (G.dByCoord coord symbol)
  simpa [supportBudgetBlockSum, supportBudgetThresholdInputBool,
    HexadecimaryFourTwoProfileGraph.supportBudgetThresholdInput,
    HexadecimaryFourTwoProfileGraph.thresholdByCoord] using h

set_option maxRecDepth 1000000 in
theorem HexadecimaryFourTwoProfileGraph.supportBudgetPrefixCount_add_11
    (G : HexadecimaryFourTwoProfileGraph) (coord base : Nat) :
    G.supportBudgetPrefixCount coord (base + 11) =
      G.supportBudgetPrefixCount coord base + supportBudgetBlockSum G coord base := by
  classical
  simp [supportBudgetBlockSum, supportBudgetThresholdInputBool,
    HexadecimaryFourTwoProfileGraph.supportBudgetPrefixCount]
  omega

set_option maxHeartbeats 2000000 in
private theorem HexadecimaryFourTwoProfileGraph.d0_sum_explicit
    (G : HexadecimaryFourTwoProfileGraph) :
    G.d0 0 + G.d0 1 + G.d0 2 + G.d0 3 + G.d0 4 + G.d0 5 + G.d0 6 + G.d0 7 +
    G.d0 8 + G.d0 9 + G.d0 10 + G.d0 11 + G.d0 12 + G.d0 13 + G.d0 14 + G.d0 15 = 6 := by
  have h := G.d0_sum
  simp [Fin.sum_univ_succ] at h
  omega

set_option maxHeartbeats 2000000 in
private theorem HexadecimaryFourTwoProfileGraph.d1_sum_explicit
    (G : HexadecimaryFourTwoProfileGraph) :
    G.d1 0 + G.d1 1 + G.d1 2 + G.d1 3 + G.d1 4 + G.d1 5 + G.d1 6 + G.d1 7 +
    G.d1 8 + G.d1 9 + G.d1 10 + G.d1 11 + G.d1 12 + G.d1 13 + G.d1 14 + G.d1 15 = 6 := by
  have h := G.d1_sum
  simp [Fin.sum_univ_succ] at h
  omega

set_option maxHeartbeats 2000000 in
private theorem HexadecimaryFourTwoProfileGraph.d2_sum_explicit
    (G : HexadecimaryFourTwoProfileGraph) :
    G.d2 0 + G.d2 1 + G.d2 2 + G.d2 3 + G.d2 4 + G.d2 5 + G.d2 6 + G.d2 7 +
    G.d2 8 + G.d2 9 + G.d2 10 + G.d2 11 + G.d2 12 + G.d2 13 + G.d2 14 + G.d2 15 = 6 := by
  have h := G.d2_sum
  simp [Fin.sum_univ_succ] at h
  omega

set_option maxHeartbeats 2000000 in
private theorem HexadecimaryFourTwoProfileGraph.d3_sum_explicit
    (G : HexadecimaryFourTwoProfileGraph) :
    G.d3 0 + G.d3 1 + G.d3 2 + G.d3 3 + G.d3 4 + G.d3 5 + G.d3 6 + G.d3 7 +
    G.d3 8 + G.d3 9 + G.d3 10 + G.d3 11 + G.d3 12 + G.d3 13 + G.d3 14 + G.d3 15 = 6 := by
  have h := G.d3_sum
  simp [Fin.sum_univ_succ] at h
  omega

theorem HexadecimaryFourTwoProfileGraph.supportBudgetPrefixCount_le_six
    (G : HexadecimaryFourTwoProfileGraph)
    (coord : Fin 4) :
    G.supportBudgetPrefixCount coord.val 176 ≤ 6 := by
  have hb0 : supportBudgetBlockSum G coord.val 0 ≤ G.dByCoord coord.val 0 := by
    simpa using G.supportBudgetBlockSum_le_dByCoord coord.val 0
  have hb1 : supportBudgetBlockSum G coord.val 11 ≤ G.dByCoord coord.val 1 := by
    simpa using G.supportBudgetBlockSum_le_dByCoord coord.val 1
  have hb2 : supportBudgetBlockSum G coord.val 22 ≤ G.dByCoord coord.val 2 := by
    simpa using G.supportBudgetBlockSum_le_dByCoord coord.val 2
  have hb3 : supportBudgetBlockSum G coord.val 33 ≤ G.dByCoord coord.val 3 := by
    simpa using G.supportBudgetBlockSum_le_dByCoord coord.val 3
  have hb4 : supportBudgetBlockSum G coord.val 44 ≤ G.dByCoord coord.val 4 := by
    simpa using G.supportBudgetBlockSum_le_dByCoord coord.val 4
  have hb5 : supportBudgetBlockSum G coord.val 55 ≤ G.dByCoord coord.val 5 := by
    simpa using G.supportBudgetBlockSum_le_dByCoord coord.val 5
  have hb6 : supportBudgetBlockSum G coord.val 66 ≤ G.dByCoord coord.val 6 := by
    simpa using G.supportBudgetBlockSum_le_dByCoord coord.val 6
  have hb7 : supportBudgetBlockSum G coord.val 77 ≤ G.dByCoord coord.val 7 := by
    simpa using G.supportBudgetBlockSum_le_dByCoord coord.val 7
  have hb8 : supportBudgetBlockSum G coord.val 88 ≤ G.dByCoord coord.val 8 := by
    simpa using G.supportBudgetBlockSum_le_dByCoord coord.val 8
  have hb9 : supportBudgetBlockSum G coord.val 99 ≤ G.dByCoord coord.val 9 := by
    simpa using G.supportBudgetBlockSum_le_dByCoord coord.val 9
  have hb10 : supportBudgetBlockSum G coord.val 110 ≤ G.dByCoord coord.val 10 := by
    simpa using G.supportBudgetBlockSum_le_dByCoord coord.val 10
  have hb11 : supportBudgetBlockSum G coord.val 121 ≤ G.dByCoord coord.val 11 := by
    simpa using G.supportBudgetBlockSum_le_dByCoord coord.val 11
  have hb12 : supportBudgetBlockSum G coord.val 132 ≤ G.dByCoord coord.val 12 := by
    simpa using G.supportBudgetBlockSum_le_dByCoord coord.val 12
  have hb13 : supportBudgetBlockSum G coord.val 143 ≤ G.dByCoord coord.val 13 := by
    simpa using G.supportBudgetBlockSum_le_dByCoord coord.val 13
  have hb14 : supportBudgetBlockSum G coord.val 154 ≤ G.dByCoord coord.val 14 := by
    simpa using G.supportBudgetBlockSum_le_dByCoord coord.val 14
  have hb15 : supportBudgetBlockSum G coord.val 165 ≤ G.dByCoord coord.val 15 := by
    simpa using G.supportBudgetBlockSum_le_dByCoord coord.val 15
  have h0 := G.supportBudgetPrefixCount_add_11 coord.val 0
  have h1 := G.supportBudgetPrefixCount_add_11 coord.val 11
  have h2 := G.supportBudgetPrefixCount_add_11 coord.val 22
  have h3 := G.supportBudgetPrefixCount_add_11 coord.val 33
  have h4 := G.supportBudgetPrefixCount_add_11 coord.val 44
  have h5 := G.supportBudgetPrefixCount_add_11 coord.val 55
  have h6 := G.supportBudgetPrefixCount_add_11 coord.val 66
  have h7 := G.supportBudgetPrefixCount_add_11 coord.val 77
  have h8 := G.supportBudgetPrefixCount_add_11 coord.val 88
  have h9 := G.supportBudgetPrefixCount_add_11 coord.val 99
  have h10 := G.supportBudgetPrefixCount_add_11 coord.val 110
  have h11 := G.supportBudgetPrefixCount_add_11 coord.val 121
  have h12 := G.supportBudgetPrefixCount_add_11 coord.val 132
  have h13 := G.supportBudgetPrefixCount_add_11 coord.val 143
  have h14 := G.supportBudgetPrefixCount_add_11 coord.val 154
  have h15 := G.supportBudgetPrefixCount_add_11 coord.val 165
  have hzero : G.supportBudgetPrefixCount coord.val 0 = 0 := rfl
  have hsum0 := G.d0_sum_explicit
  have hsum1 := G.d1_sum_explicit
  have hsum2 := G.d2_sum_explicit
  have hsum3 := G.d3_sum_explicit
  fin_cases coord <;>
    simp [HexadecimaryFourTwoProfileGraph.dByCoord, fin16OfNatMod]
      at hb0 hb1 hb2 hb3 hb4 hb5 hb6 hb7 hb8 hb9 hb10 hb11 hb12 hb13
        hb14 hb15 hsum0 hsum1 hsum2 hsum3 h0 h1 h2 h3 h4 h5 h6 h7
        h8 h9 h10 h11 h12 h13 h14 h15 hzero ⊢ <;>
    omega

theorem HexadecimaryFourTwoProfileGraph.supportValuation_budgetSeqAux
    (G : HexadecimaryFourTwoProfileGraph)
    (coord : Fin 4)
    (i : Fin 175)
    (count : Fin 6) :
    G.supportValuation
        (supportBudgetCounterVar coord.val (i.val + 1) (count.val + 1) - 1) ↔
      count.val + 1 ≤ G.supportBudgetPrefixCount coord.val (i.val + 1) := by
  have hcoord := coord.isLt
  have hi := i.isLt
  have hcount := count.isLt
  let remCoord := i.val * 6 + count.val
  have hremCoord : remCoord < (16 * 11 - 1) * 6 := by
    dsimp [remCoord]
    omega
  have hcoord_decode :=
    block_decode ((16 * 11 - 1) * 6) coord.val remCoord (by decide) hremCoord
  have hcount_decode :=
    block_decode 6 i.val count.val (by decide) (by exact hcount)
  have hidx_ge_present :
      ¬ supportBudgetCounterVar coord.val (i.val + 1) (count.val + 1) - 1 <
        HexadecimaryFourTwoSupportDirect.presentVarCount := by
    simp [supportBudgetCounterVar, supportBudgetCounterFirst,
      supportDirect_budgetCounterStart_eq,
      HexadecimaryFourTwoSupportDirect.presentVarCount,
      HexadecimaryFourTwoSupportDirect.pairCount,
      HexadecimaryFourTwoSupportDirect.q]
    omega
  have hidx_ge_present' :
      ¬ supportBudgetCounterVar coord.val (i.val + 1) (count.val + 1) - 1 < 1536 := by
    simpa [HexadecimaryFourTwoSupportDirect.presentVarCount] using hidx_ge_present
  have hidx_ge_threshold :
      ¬ supportBudgetCounterVar coord.val (i.val + 1) (count.val + 1) - 1 <
        HexadecimaryFourTwoSupportDirect.presentVarCount +
          HexadecimaryFourTwoSupportDirect.thresholdVarCount := by
    simp [supportBudgetCounterVar, supportBudgetCounterFirst,
      supportDirect_budgetCounterStart_eq,
      HexadecimaryFourTwoSupportDirect.presentVarCount,
      HexadecimaryFourTwoSupportDirect.thresholdVarCount,
      HexadecimaryFourTwoSupportDirect.pairCount,
      HexadecimaryFourTwoSupportDirect.coordCount,
      HexadecimaryFourTwoSupportDirect.q,
      HexadecimaryFourTwoSupportDirect.thresholdCount]
    omega
  have hidx_ge_threshold' :
      ¬ supportBudgetCounterVar coord.val (i.val + 1) (count.val + 1) - 1 < 2240 := by
    simpa [HexadecimaryFourTwoSupportDirect.presentVarCount,
      HexadecimaryFourTwoSupportDirect.thresholdVarCount] using hidx_ge_threshold
  have hidx_ge_budget :
      ¬ supportBudgetCounterVar coord.val (i.val + 1) (count.val + 1) - 1 <
        HexadecimaryFourTwoSupportDirect.budgetCounterStart - 1 := by
    simp [supportBudgetCounterVar, supportBudgetCounterFirst,
      supportDirect_budgetCounterStart_eq]
    omega
  have hidx_ge_budget' :
      ¬ supportBudgetCounterVar coord.val (i.val + 1) (count.val + 1) - 1 < 28352 := by
    simpa [HexadecimaryFourTwoSupportDirect.budgetCounterStart] using hidx_ge_budget
  have hidx_lt_sorted :
      supportBudgetCounterVar coord.val (i.val + 1) (count.val + 1) - 1 <
        HexadecimaryFourTwoSupportDirect.supportSortedCoord0SequentialNVars := by
    rw [supportDirect_supportSortedCoord0SequentialNVars_eq]
    simp [supportBudgetCounterVar, supportBudgetCounterFirst,
      supportDirect_budgetCounterStart_eq]
    omega
  have hidx_lt_sorted' :
      supportBudgetCounterVar coord.val (i.val + 1) (count.val + 1) - 1 < 32552 := by
    simpa [supportDirect_supportSortedCoord0SequentialNVars_eq] using hidx_lt_sorted
  have hoff_sub :
      supportBudgetCounterVar coord.val (i.val + 1) (count.val + 1) - 1 -
        (HexadecimaryFourTwoSupportDirect.budgetCounterStart - 1) =
          coord.val * ((16 * 11 - 1) * 6) + remCoord := by
    simp [supportBudgetCounterVar, supportBudgetCounterFirst,
      supportDirect_budgetCounterStart_eq, remCoord]
    omega
  have hoff_sub' :
      supportBudgetCounterVar coord.val (i.val + 1) (count.val + 1) - 1 -
        28352 =
          coord.val * ((16 * 11 - 1) * 6) + remCoord := by
    simpa [HexadecimaryFourTwoSupportDirect.budgetCounterStart] using hoff_sub
  have hcoord_decode' :
      (coord.val * 1050 + remCoord) / 1050 = coord.val ∧
        (coord.val * 1050 + remCoord) % 1050 = remCoord := by
    simpa using hcoord_decode
  have hi_div : remCoord / 6 = i.val := by
    simpa [remCoord] using hcount_decode.1
  have hcount_mod : remCoord % 6 = count.val := by
    exact hcount_decode.2
  simp [HexadecimaryFourTwoProfileGraph.supportValuation, hidx_ge_present',
    hidx_ge_threshold', hidx_ge_budget', hidx_lt_sorted', hoff_sub',
    hcoord_decode'.1, hcoord_decode'.2, hi_div, hcount_mod]

set_option maxHeartbeats 200000 in
private theorem supportThresholdCounterDecode_triangular
    (i count : Nat)
    (hi0 : 0 < i) (hi16 : i ≤ 16)
    (hc0 : 0 < count) (hci : count ≤ i) :
    supportThresholdCounterDecode
        (HexadecimaryFourTwoSupportDirect.triangularPrefix i + (count - 1)) =
      (i, count) := by
  interval_cases i <;> interval_cases count <;> native_decide

private theorem supportOtherSlot_lt_three
    (coord other : Fin 4)
    (hne : other.val ≠ coord.val) :
    HexadecimaryFourTwoSupportDirect.otherSlot coord.val other.val < 3 := by
  fin_cases coord <;> fin_cases other <;>
    simp [HexadecimaryFourTwoSupportDirect.otherSlot] at hne ⊢

private theorem supportOtherOfSlot_otherSlot
    (coord other : Fin 4)
    (hne : other.val ≠ coord.val) :
    supportOtherOfSlot coord.val
        (HexadecimaryFourTwoSupportDirect.otherSlot coord.val other.val) =
      other.val := by
  fin_cases coord <;> fin_cases other <;>
    simp [supportOtherOfSlot, HexadecimaryFourTwoSupportDirect.otherSlot] at hne ⊢

theorem HexadecimaryFourTwoProfileGraph.supportValuation_thresholdCounterVar
    (G : HexadecimaryFourTwoProfileGraph)
    (coord : Fin 4)
    (symbol : Fin 16)
    (other : Fin 4)
    (hne : other.val ≠ coord.val)
    (i count : Nat)
    (hi0 : 0 < i) (hi16 : i ≤ 16)
    (hc0 : 0 < count) (hci : count ≤ i) :
    G.supportValuation
        (HexadecimaryFourTwoSupportDirect.thresholdCounterVar
          coord.val symbol.val other.val i count - 1) ↔
      count ≤
        G.supportThresholdCounterPrefixPresentCount
          coord.val symbol.val other.val i := by
  have hcoord := coord.isLt
  have hsymbol := symbol.isLt
  let slot := HexadecimaryFourTwoSupportDirect.otherSlot coord.val other.val
  have hslot : slot < 3 := by
    simpa [slot] using supportOtherSlot_lt_three coord other hne
  let remBlock := symbol.val * 3 + slot
  have hremBlock : remBlock < 16 * 3 := by
    dsimp [remBlock]
    omega
  let block := coord.val * (16 * 3) + remBlock
  have hblock_lt : block < 4 * (16 * 3) := by
    dsimp [block]
    omega
  let within := HexadecimaryFourTwoSupportDirect.triangularPrefix i + (count - 1)
  have hwithin_lt : within < 136 := by
    dsimp [within]
    interval_cases i <;>
      simp [HexadecimaryFourTwoSupportDirect.triangularPrefix] at * <;>
      omega
  have hblock_decode := block_decode 136 block within (by decide) hwithin_lt
  have hcoord_decode := block_decode (16 * 3) coord.val remBlock (by decide) hremBlock
  have hsymbol_decode := block_decode 3 symbol.val slot (by decide) hslot
  have htri :
      supportThresholdCounterDecode within = (i, count) := by
    simpa [within] using
      supportThresholdCounterDecode_triangular i count hi0 hi16 hc0 hci
  have hother :
      supportOtherOfSlot coord.val slot = other.val := by
    simpa [slot] using supportOtherOfSlot_otherSlot coord other hne
  have hidx_eq :
      HexadecimaryFourTwoSupportDirect.thresholdCounterVar
          coord.val symbol.val other.val i count - 1 =
        2240 + block * 136 + within := by
    simp [HexadecimaryFourTwoSupportDirect.thresholdCounterVar,
      HexadecimaryFourTwoSupportDirect.thresholdCounterFirst,
      supportDirect_thresholdCounterStart_eq,
      HexadecimaryFourTwoSupportDirect.thresholdCounterBlockCount,
      HexadecimaryFourTwoSupportDirect.q,
      HexadecimaryFourTwoSupportDirect.coordCount,
      HexadecimaryFourTwoSupportDirect.otherSlot,
      block, remBlock, slot, within]
    omega
  have hidx_ge_present' :
      ¬ HexadecimaryFourTwoSupportDirect.thresholdCounterVar
          coord.val symbol.val other.val i count - 1 < 1536 := by
    rw [hidx_eq]
    omega
  have hidx_ge_threshold' :
      ¬ HexadecimaryFourTwoSupportDirect.thresholdCounterVar
          coord.val symbol.val other.val i count - 1 < 2240 := by
    rw [hidx_eq]
    omega
  have hidx_lt_budget' :
      HexadecimaryFourTwoSupportDirect.thresholdCounterVar
          coord.val symbol.val other.val i count - 1 < 28352 := by
    rw [hidx_eq]
    omega
  have hoff_sub' :
      HexadecimaryFourTwoSupportDirect.thresholdCounterVar
          coord.val symbol.val other.val i count - 1 -
        2240 =
          block * 136 + within := by
    rw [hidx_eq]
    omega
  have hblock_decode' :
      (block * 136 + within) / 136 = block ∧
        (block * 136 + within) % 136 = within := by
    simpa using hblock_decode
  have hcoord_decode' :
      (coord.val * 48 + remBlock) / 48 = coord.val ∧
        (coord.val * 48 + remBlock) % 48 = remBlock := by
    simpa using hcoord_decode
  have hsymbol_decode' :
      remBlock / 3 = symbol.val ∧ remBlock % 3 = slot := by
    simpa [remBlock] using hsymbol_decode
  have hblock_div48 : block / 48 = coord.val := by
    simpa [block] using hcoord_decode'.1
  have hblock_mod48 : block % 48 = remBlock := by
    simpa [block] using hcoord_decode'.2
  have hblock_mod3 : block % 3 = slot := by
    have hdecode :=
      block_decode 3 (coord.val * 16 + symbol.val) slot (by decide) hslot
    have heq :
        (coord.val * 16 + symbol.val) * 3 + slot = block := by
      dsimp [block, remBlock]
      omega
    simpa [heq] using hdecode.2
  simp [HexadecimaryFourTwoProfileGraph.supportValuation, hidx_ge_present',
    hidx_ge_threshold', hidx_lt_budget', hoff_sub', hblock_decode'.1,
    hblock_decode'.2, hblock_div48, hblock_mod48,
    hsymbol_decode'.1, hsymbol_decode'.2, htri, hother]

@[simp] private theorem rawPosLiteral_eq (x : Nat) (hx : 0 < x) :
    Sat.Literal.ofInt (x : Int) = Sat.Literal.pos (x - 1) := by
  unfold Sat.Literal.ofInt
  have hnot : ¬ (x : Int) < 0 := by omega
  simp only [hnot, ↓reduceIte]
  congr
  have hEqInt : (x : Int) - 1 = ((x - 1 : Nat) : Int) := by omega
  rw [hEqInt]
  simp

@[simp] private theorem rawNegLiteral_eq (x : Nat) (hx : 0 < x) :
    Sat.Literal.ofInt (-(x : Int)) = Sat.Literal.neg (x - 1) := by
  unfold Sat.Literal.ofInt
  have hxInt : (0 : Int) < (x : Int) := by exact_mod_cast hx
  have hneg : -(x : Int) < 0 := by omega
  simp only [hneg, ↓reduceIte]
  congr
  have hEqInt : -(-(x : Int)) - 1 = ((x - 1 : Nat) : Int) := by omega
  rw [hEqInt]
  simp

@[simp] private theorem rawPosPresentLiteral_eq (pairIndex row col : Nat) :
    Sat.Literal.ofInt (HexadecimaryFourTwoSupportDirect.posPresentLit pairIndex row col) =
      Sat.Literal.pos (HexadecimaryFourTwoSupportDirect.presentVar pairIndex row col - 1) := by
  apply rawPosLiteral_eq
  simp [HexadecimaryFourTwoSupportDirect.presentVar, HexadecimaryFourTwoSupportDirect.q]

@[simp] private theorem rawNegPresentLiteral_eq (pairIndex row col : Nat) :
    Sat.Literal.ofInt (-(HexadecimaryFourTwoSupportDirect.posPresentLit pairIndex row col)) =
      Sat.Literal.neg (HexadecimaryFourTwoSupportDirect.presentVar pairIndex row col - 1) := by
  apply rawNegLiteral_eq
  simp [HexadecimaryFourTwoSupportDirect.presentVar,
    HexadecimaryFourTwoSupportDirect.q]

@[simp] private theorem rawPosThresholdLiteral_eq (coord symbol threshold : Nat) :
    Sat.Literal.ofInt
        (HexadecimaryFourTwoSupportDirect.thresholdLit coord symbol threshold) =
      Sat.Literal.pos
        (HexadecimaryFourTwoSupportDirect.thresholdVar coord symbol threshold - 1) := by
  apply rawPosLiteral_eq
  simp [HexadecimaryFourTwoSupportDirect.thresholdVar,
    HexadecimaryFourTwoSupportDirect.presentVarCount]

@[simp] private theorem rawNegThresholdLiteral_eq (coord symbol threshold : Nat) :
    Sat.Literal.ofInt
        (-(HexadecimaryFourTwoSupportDirect.thresholdLit coord symbol threshold)) =
      Sat.Literal.neg
        (HexadecimaryFourTwoSupportDirect.thresholdVar coord symbol threshold - 1) := by
  apply rawNegLiteral_eq
  simp [HexadecimaryFourTwoSupportDirect.thresholdVar,
    HexadecimaryFourTwoSupportDirect.presentVarCount]

@[simp] private theorem rawPosThresholdCounterLiteral_eq
    (coord symbol other i count : Nat) :
    Sat.Literal.ofInt
        (HexadecimaryFourTwoSupportDirect.thresholdCounterLit coord symbol other i count) =
      Sat.Literal.pos
        (HexadecimaryFourTwoSupportDirect.thresholdCounterVar coord symbol other i count - 1) := by
  apply rawPosLiteral_eq
  simp [HexadecimaryFourTwoSupportDirect.thresholdCounterVar,
    HexadecimaryFourTwoSupportDirect.thresholdCounterFirst,
    supportDirect_thresholdCounterStart_eq]

@[simp] private theorem rawNegThresholdCounterLiteral_eq
    (coord symbol other i count : Nat) :
    Sat.Literal.ofInt
        (-(HexadecimaryFourTwoSupportDirect.thresholdCounterLit coord symbol other i count)) =
      Sat.Literal.neg
        (HexadecimaryFourTwoSupportDirect.thresholdCounterVar coord symbol other i count - 1) := by
  apply rawNegLiteral_eq
  simp [HexadecimaryFourTwoSupportDirect.thresholdCounterVar,
    HexadecimaryFourTwoSupportDirect.thresholdCounterFirst,
    supportDirect_thresholdCounterStart_eq]

@[simp] private theorem rawPosBudgetSeqAuxLiteral_eq
    (coord i count : Nat) :
    Sat.Literal.ofInt
        (HexadecimaryFourTwoSupportDirect.seqAux
          (supportBudgetCounterFirst coord) 6 i count) =
      Sat.Literal.pos (supportBudgetCounterVar coord i count - 1) := by
  have hseq :
      HexadecimaryFourTwoSupportDirect.seqAux
          (supportBudgetCounterFirst coord) 6 i count =
        (supportBudgetCounterVar coord i count : Int) := by
    simp [HexadecimaryFourTwoSupportDirect.seqAux, supportBudgetCounterVar]
  rw [hseq]
  apply rawPosLiteral_eq
  simp [supportBudgetCounterVar, supportBudgetCounterFirst,
    supportDirect_budgetCounterStart_eq]

@[simp] private theorem rawNegBudgetSeqAuxLiteral_eq
    (coord i count : Nat) :
    Sat.Literal.ofInt
        (-(HexadecimaryFourTwoSupportDirect.seqAux
          (supportBudgetCounterFirst coord) 6 i count)) =
      Sat.Literal.neg (supportBudgetCounterVar coord i count - 1) := by
  have hseq :
      HexadecimaryFourTwoSupportDirect.seqAux
          (supportBudgetCounterFirst coord) 6 i count =
        (supportBudgetCounterVar coord i count : Int) := by
    simp [HexadecimaryFourTwoSupportDirect.seqAux, supportBudgetCounterVar]
  rw [hseq]
  apply rawNegLiteral_eq
  simp [supportBudgetCounterVar, supportBudgetCounterFirst,
    supportDirect_budgetCounterStart_eq]

private theorem valuation_satisfies_neg_pos
    (v : Sat.Valuation) (x y : Nat) (hxy : v x → v y) :
    Sat.Valuation.satisfies v [Sat.Literal.neg x, Sat.Literal.pos y] := by
  intro hx hy
  exact hy (hxy hx)

private theorem valuation_satisfies_neg
    (v : Sat.Valuation) (x : Nat) (hx : ¬ v x) :
    Sat.Valuation.satisfies v [Sat.Literal.neg x] := by
  intro h
  exact hx h

private theorem valuation_satisfies_neg_neg
    (v : Sat.Valuation) (x y : Nat)
    (hxy : v x → v y → False) :
    Sat.Valuation.satisfies v [Sat.Literal.neg x, Sat.Literal.neg y] := by
  intro hx hy
  exact hxy hx hy

private theorem valuation_satisfies_fmla_append
    {v : Sat.Valuation} {left right : Sat.Fmla}
    (hleft : Sat.Valuation.satisfies_fmla v left)
    (hright : Sat.Valuation.satisfies_fmla v right) :
    Sat.Valuation.satisfies_fmla v (left ++ right) := by
  constructor
  intro clause hclause
  rw [List.mem_append] at hclause
  rcases hclause with hclause | hclause
  · exact hleft.prop clause hclause
  · exact hright.prop clause hclause

private theorem valuation_satisfies_six_pos
    (v : Sat.Valuation)
    (x01 x02 x03 x12 x13 x23 : Nat)
    (h :
      v x01 ∨ v x02 ∨ v x03 ∨ v x12 ∨ v x13 ∨ v x23) :
    Sat.Valuation.satisfies v
      [Sat.Literal.pos x01, Sat.Literal.pos x02, Sat.Literal.pos x03,
       Sat.Literal.pos x12, Sat.Literal.pos x13, Sat.Literal.pos x23] := by
  intro h01 h02 h03 h12 h13 h23
  rcases h with h | h | h | h | h | h
  · exact h01 h
  · exact h02 h
  · exact h03 h
  · exact h12 h
  · exact h13 h
  · exact h23 h

private theorem valuation_satisfies_neg_neg_pos
    (v : Sat.Valuation) (x y z : Nat)
    (hxyz : v x → v y → v z) :
    Sat.Valuation.satisfies v
      [Sat.Literal.neg x, Sat.Literal.neg y, Sat.Literal.pos z] := by
  intro hx hy hz
  exact hz (hxyz hx hy)

private theorem incidentPresentLitAt_eq
    (coord symbol other idx : Nat)
    (hidx : idx < 16) :
    HexadecimaryFourTwoSupportDirect.litAt
        (HexadecimaryFourTwoSupportDirect.incidentPresentLits coord symbol other)
        idx =
      if coord < other then
        HexadecimaryFourTwoSupportDirect.posPresentLit
          (HexadecimaryFourTwoSupportDirect.pairIndexOf coord other) symbol idx
      else
      HexadecimaryFourTwoSupportDirect.posPresentLit
          (HexadecimaryFourTwoSupportDirect.pairIndexOf other coord) idx symbol := by
  by_cases hlt : coord < other
  · simp [HexadecimaryFourTwoSupportDirect.incidentPresentLits,
      HexadecimaryFourTwoSupportDirect.litAt, HexadecimaryFourTwoSupportDirect.q,
      hlt, hidx]
  · simp [HexadecimaryFourTwoSupportDirect.incidentPresentLits,
      HexadecimaryFourTwoSupportDirect.litAt, HexadecimaryFourTwoSupportDirect.q,
      hlt, hidx]

set_option maxHeartbeats 2000000 in
private theorem thresholdVarsForCoordLitAt_eq
    (coord idx : Nat)
    (hidx : idx < 176) :
    HexadecimaryFourTwoSupportDirect.litAt
        (HexadecimaryFourTwoSupportDirect.thresholdVarsForCoord coord) idx =
      HexadecimaryFourTwoSupportDirect.thresholdLit
        coord (idx / 11) (idx % 11 + 6) := by
  interval_cases idx <;> rfl

private theorem HexadecimaryFourTwoProfileGraph.supportBudgetThresholdInput_of_thresholdVar
    (G : HexadecimaryFourTwoProfileGraph)
    (coord : Fin 4)
    (idx : Nat)
    (hidx : idx < 176)
    (hval :
      G.supportValuation
        (HexadecimaryFourTwoSupportDirect.thresholdVar
          coord.val (idx / 11) (idx % 11 + 6) - 1)) :
    G.supportBudgetThresholdInput coord.val idx := by
  have hsymbol : idx / 11 < 16 := by
    exact Nat.div_lt_of_lt_mul (by omega : idx < 11 * 16)
  let symbol16 : Fin 16 := ⟨idx / 11, hsymbol⟩
  let off11 : Fin 11 := ⟨idx % 11, Nat.mod_lt idx (by decide : 0 < 11)⟩
  have hthreshold :=
    (G.supportValuation_thresholdVar coord symbol16 off11).1 (by
      simpa [symbol16, off11] using hval)
  simpa [HexadecimaryFourTwoProfileGraph.supportBudgetThresholdInput,
    HexadecimaryFourTwoProfileGraph.thresholdByCoord, symbol16, off11] using hthreshold

private theorem pairIndexOf_lt_six
    (coord other : Fin 4)
    (hne : other.val ≠ coord.val) :
    HexadecimaryFourTwoSupportDirect.pairIndexOf coord.val other.val < 6 := by
  fin_cases coord <;> fin_cases other <;>
    simp [HexadecimaryFourTwoSupportDirect.pairIndexOf] at hne ⊢

theorem HexadecimaryFourTwoProfileGraph.supportValuation_satisfies_thresholdCounterHeadClause
    (G : HexadecimaryFourTwoProfileGraph)
    (coord symbol other idx : Nat)
    (hcoord : coord < 4)
    (hsymbol : symbol < 16)
    (hother : other < 4)
    (hidx : idx < 16)
    (hne : other ≠ coord) :
    Sat.Valuation.satisfies G.supportValuation
      (LRATNative.rawClauseToSat
        #[-(HexadecimaryFourTwoSupportDirect.litAt
              (HexadecimaryFourTwoSupportDirect.incidentPresentLits coord symbol other)
              idx),
          HexadecimaryFourTwoSupportDirect.thresholdCounterLit
              coord symbol other (idx + 1) 1]) := by
  let coord4 : Fin 4 := ⟨coord, hcoord⟩
  let other4 : Fin 4 := ⟨other, hother⟩
  let symbol16 : Fin 16 := ⟨symbol, hsymbol⟩
  let idx16 : Fin 16 := ⟨idx, hidx⟩
  have hneFin : other4.val ≠ coord4.val := by
    simpa [coord4, other4] using hne
  by_cases hlt : coord < other
  · let pairIndex : Fin 6 :=
      ⟨HexadecimaryFourTwoSupportDirect.pairIndexOf coord other,
        by
          simpa [coord4, other4] using
            pairIndexOf_lt_six coord4 other4 hneFin⟩
    have hclause :
        Sat.Valuation.satisfies G.supportValuation
          [Sat.Literal.neg
            (HexadecimaryFourTwoSupportDirect.presentVar
              (HexadecimaryFourTwoSupportDirect.pairIndexOf coord other) symbol idx - 1),
           Sat.Literal.pos
            (HexadecimaryFourTwoSupportDirect.thresholdCounterVar
              coord symbol other (idx + 1) 1 - 1)] := by
      apply valuation_satisfies_neg_pos
      intro hpresent
      have hincident :
          G.supportIncidentPresent coord symbol other idx := by
        have hpresent' :=
          (G.supportValuation_presentVar pairIndex symbol16 idx16).1 (by
            simpa [pairIndex, symbol16, idx16] using hpresent)
        simpa [HexadecimaryFourTwoProfileGraph.supportIncidentPresent, hlt,
          pairIndex, symbol16, idx16] using hpresent'
      have hprefix :
          1 ≤
            G.supportThresholdCounterPrefixPresentCount
              coord symbol other (idx + 1) :=
        G.supportThresholdCounterPrefixPresentCount_pos_of_input
          coord symbol other (idx + 1) (by omega) (by simpa using hincident)
      exact
        (G.supportValuation_thresholdCounterVar coord4 symbol16 other4 hneFin
          (idx + 1) 1 (by omega) (by omega) (by omega) (by omega)).2
          (by simpa [coord4, symbol16, other4] using hprefix)
    simpa [LRATNative.rawClauseToSat, incidentPresentLitAt_eq, hidx, hlt,
      rawPosPresentLiteral_eq, rawNegLiteral_eq,
      rawPosThresholdCounterLiteral_eq] using hclause
  · let pairIndex : Fin 6 :=
      ⟨HexadecimaryFourTwoSupportDirect.pairIndexOf other coord,
        by
          have hneSym : coord4.val ≠ other4.val := by
            exact fun h => hneFin h.symm
          simpa [coord4, other4] using
            pairIndexOf_lt_six other4 coord4 hneSym⟩
    have hclause :
        Sat.Valuation.satisfies G.supportValuation
          [Sat.Literal.neg
            (HexadecimaryFourTwoSupportDirect.presentVar
              (HexadecimaryFourTwoSupportDirect.pairIndexOf other coord) idx symbol - 1),
           Sat.Literal.pos
            (HexadecimaryFourTwoSupportDirect.thresholdCounterVar
              coord symbol other (idx + 1) 1 - 1)] := by
      apply valuation_satisfies_neg_pos
      intro hpresent
      have hincident :
          G.supportIncidentPresent coord symbol other idx := by
        have hpresent' :=
          (G.supportValuation_presentVar pairIndex idx16 symbol16).1 (by
            simpa [pairIndex, symbol16, idx16] using hpresent)
        simpa [HexadecimaryFourTwoProfileGraph.supportIncidentPresent, hlt,
          pairIndex, symbol16, idx16] using hpresent'
      have hprefix :
          1 ≤
            G.supportThresholdCounterPrefixPresentCount
              coord symbol other (idx + 1) :=
        G.supportThresholdCounterPrefixPresentCount_pos_of_input
          coord symbol other (idx + 1) (by omega) (by simpa using hincident)
      exact
        (G.supportValuation_thresholdCounterVar coord4 symbol16 other4 hneFin
          (idx + 1) 1 (by omega) (by omega) (by omega) (by omega)).2
          (by simpa [coord4, symbol16, other4] using hprefix)
    simpa [LRATNative.rawClauseToSat, incidentPresentLitAt_eq, hidx, hlt,
      rawPosPresentLiteral_eq, rawNegLiteral_eq,
      rawPosThresholdCounterLiteral_eq] using hclause

theorem HexadecimaryFourTwoProfileGraph.supportValuation_satisfies_thresholdCounterCarryClause
    (G : HexadecimaryFourTwoProfileGraph)
    (coord symbol other i count : Nat)
    (hcoord : coord < 4)
    (hsymbol : symbol < 16)
    (hother : other < 4)
    (hne : other ≠ coord)
    (hi2 : 2 ≤ i)
    (hi16 : i ≤ 16)
    (hc0 : 0 < count)
    (hci : count ≤ i - 1) :
    Sat.Valuation.satisfies G.supportValuation
      (LRATNative.rawClauseToSat
        #[-(HexadecimaryFourTwoSupportDirect.thresholdCounterLit
              coord symbol other (i - 1) count),
          HexadecimaryFourTwoSupportDirect.thresholdCounterLit
              coord symbol other i count]) := by
  let coord4 : Fin 4 := ⟨coord, hcoord⟩
  let other4 : Fin 4 := ⟨other, hother⟩
  let symbol16 : Fin 16 := ⟨symbol, hsymbol⟩
  have hneFin : other4.val ≠ coord4.val := by
    simpa [coord4, other4] using hne
  have hclause :
      Sat.Valuation.satisfies G.supportValuation
        [Sat.Literal.neg
          (HexadecimaryFourTwoSupportDirect.thresholdCounterVar
            coord symbol other (i - 1) count - 1),
         Sat.Literal.pos
          (HexadecimaryFourTwoSupportDirect.thresholdCounterVar
            coord symbol other i count - 1)] := by
    apply valuation_satisfies_neg_pos
    intro hprev
    have hprevNat :=
      (G.supportValuation_thresholdCounterVar coord4 symbol16 other4 hneFin
        (i - 1) count (by omega) (by omega) hc0 hci).1
        (by simpa [coord4, symbol16, other4] using hprev)
    have hcurrNat :
        count ≤
          G.supportThresholdCounterPrefixPresentCount coord symbol other i := by
      exact le_trans hprevNat
        (G.supportThresholdCounterPrefixPresentCount_mono coord symbol other (by omega))
    exact
      (G.supportValuation_thresholdCounterVar coord4 symbol16 other4 hneFin
        i count (by omega) hi16 hc0 (by omega)).2
        (by simpa [coord4, symbol16, other4] using hcurrNat)
  simpa [LRATNative.rawClauseToSat, rawNegThresholdCounterLiteral_eq,
    rawPosThresholdCounterLiteral_eq] using hclause

theorem HexadecimaryFourTwoProfileGraph.supportValuation_satisfies_thresholdCounterIncrementClause
    (G : HexadecimaryFourTwoProfileGraph)
    (coord symbol other i count : Nat)
    (hcoord : coord < 4)
    (hsymbol : symbol < 16)
    (hother : other < 4)
    (hne : other ≠ coord)
    (hi2 : 2 ≤ i)
    (hi16 : i ≤ 16)
    (hc2 : 2 ≤ count)
    (hci : count ≤ i) :
    Sat.Valuation.satisfies G.supportValuation
      (LRATNative.rawClauseToSat
        #[-(HexadecimaryFourTwoSupportDirect.litAt
              (HexadecimaryFourTwoSupportDirect.incidentPresentLits coord symbol other)
              (i - 1)),
          -(HexadecimaryFourTwoSupportDirect.thresholdCounterLit
              coord symbol other (i - 1) (count - 1)),
          HexadecimaryFourTwoSupportDirect.thresholdCounterLit
              coord symbol other i count]) := by
  let coord4 : Fin 4 := ⟨coord, hcoord⟩
  let other4 : Fin 4 := ⟨other, hother⟩
  let symbol16 : Fin 16 := ⟨symbol, hsymbol⟩
  have hidx : i - 1 < 16 := by omega
  let idx16 : Fin 16 := ⟨i - 1, hidx⟩
  have hneFin : other4.val ≠ coord4.val := by
    simpa [coord4, other4] using hne
  by_cases hlt : coord < other
  · let pairIndex : Fin 6 :=
      ⟨HexadecimaryFourTwoSupportDirect.pairIndexOf coord other,
        by
          simpa [coord4, other4] using
            pairIndexOf_lt_six coord4 other4 hneFin⟩
    have hclause :
        Sat.Valuation.satisfies G.supportValuation
          [Sat.Literal.neg
            (HexadecimaryFourTwoSupportDirect.presentVar
              (HexadecimaryFourTwoSupportDirect.pairIndexOf coord other)
              symbol (i - 1) - 1),
           Sat.Literal.neg
            (HexadecimaryFourTwoSupportDirect.thresholdCounterVar
              coord symbol other (i - 1) (count - 1) - 1),
           Sat.Literal.pos
            (HexadecimaryFourTwoSupportDirect.thresholdCounterVar
              coord symbol other i count - 1)] := by
      apply valuation_satisfies_neg_neg_pos
      intro hpresent hprev
      have hincident :
          G.supportIncidentPresent coord symbol other (i - 1) := by
        have hpresent' :=
          (G.supportValuation_presentVar pairIndex symbol16 idx16).1 (by
            simpa [pairIndex, symbol16, idx16] using hpresent)
        simpa [HexadecimaryFourTwoProfileGraph.supportIncidentPresent, hlt,
          pairIndex, symbol16, idx16] using hpresent'
      have hprevNat :=
        (G.supportValuation_thresholdCounterVar coord4 symbol16 other4 hneFin
          (i - 1) (count - 1) (by omega) (by omega) (by omega) (by omega)).1
          (by simpa [coord4, symbol16, other4] using hprev)
      have hprevNat' :
          count - 1 ≤
            G.supportThresholdCounterPrefixPresentCount coord symbol other (i - 1) := by
        simpa [coord4, symbol16, other4] using hprevNat
      have hsucc :=
        G.supportThresholdCounterPrefixPresentCount_succ_of_input
          coord symbol other (i - 1) (by simpa using hincident)
      have hcurrNat :
          count ≤
            G.supportThresholdCounterPrefixPresentCount coord symbol other i := by
        have hi_eq : i = (i - 1) + 1 := by omega
        rw [hi_eq, hsucc]
        omega
      exact
        (G.supportValuation_thresholdCounterVar coord4 symbol16 other4 hneFin
          i count (by omega) hi16 (by omega) hci).2
          (by simpa [coord4, symbol16, other4] using hcurrNat)
    simpa [LRATNative.rawClauseToSat, incidentPresentLitAt_eq, hidx, hlt,
      rawNegPresentLiteral_eq, rawNegThresholdCounterLiteral_eq,
      rawPosThresholdCounterLiteral_eq] using hclause
  · let pairIndex : Fin 6 :=
      ⟨HexadecimaryFourTwoSupportDirect.pairIndexOf other coord,
        by
          have hneSym : coord4.val ≠ other4.val := by
            exact fun h => hneFin h.symm
          simpa [coord4, other4] using
            pairIndexOf_lt_six other4 coord4 hneSym⟩
    have hclause :
        Sat.Valuation.satisfies G.supportValuation
          [Sat.Literal.neg
            (HexadecimaryFourTwoSupportDirect.presentVar
              (HexadecimaryFourTwoSupportDirect.pairIndexOf other coord)
              (i - 1) symbol - 1),
           Sat.Literal.neg
            (HexadecimaryFourTwoSupportDirect.thresholdCounterVar
              coord symbol other (i - 1) (count - 1) - 1),
           Sat.Literal.pos
            (HexadecimaryFourTwoSupportDirect.thresholdCounterVar
              coord symbol other i count - 1)] := by
      apply valuation_satisfies_neg_neg_pos
      intro hpresent hprev
      have hincident :
          G.supportIncidentPresent coord symbol other (i - 1) := by
        have hpresent' :=
          (G.supportValuation_presentVar pairIndex idx16 symbol16).1 (by
            simpa [pairIndex, symbol16, idx16] using hpresent)
        simpa [HexadecimaryFourTwoProfileGraph.supportIncidentPresent, hlt,
          pairIndex, symbol16, idx16] using hpresent'
      have hprevNat :=
        (G.supportValuation_thresholdCounterVar coord4 symbol16 other4 hneFin
          (i - 1) (count - 1) (by omega) (by omega) (by omega) (by omega)).1
          (by simpa [coord4, symbol16, other4] using hprev)
      have hprevNat' :
          count - 1 ≤
            G.supportThresholdCounterPrefixPresentCount coord symbol other (i - 1) := by
        simpa [coord4, symbol16, other4] using hprevNat
      have hsucc :=
        G.supportThresholdCounterPrefixPresentCount_succ_of_input
          coord symbol other (i - 1) (by simpa using hincident)
      have hcurrNat :
          count ≤
            G.supportThresholdCounterPrefixPresentCount coord symbol other i := by
        have hi_eq : i = (i - 1) + 1 := by omega
        rw [hi_eq, hsucc]
        omega
      exact
        (G.supportValuation_thresholdCounterVar coord4 symbol16 other4 hneFin
          i count (by omega) hi16 (by omega) hci).2
          (by simpa [coord4, symbol16, other4] using hcurrNat)
    simpa [LRATNative.rawClauseToSat, incidentPresentLitAt_eq, hidx, hlt,
      rawNegPresentLiteral_eq, rawNegThresholdCounterLiteral_eq,
      rawPosThresholdCounterLiteral_eq] using hclause

private def supportBoolFin16List (f : Fin 16 → Bool) : List Bool :=
  [f 0, f 1, f 2, f 3, f 4, f 5, f 6, f 7,
   f 8, f 9, f 10, f 11, f 12, f 13, f 14, f 15]

private theorem supportBoolFin16_true_count_eq_card_filter
    (f : Fin 16 → Bool) :
    ((supportBoolFin16List f).filter (fun b => b = true)).length =
      (Finset.univ.filter (fun i : Fin 16 => f i = true)).card := by
  have hmap : supportBoolFin16List f = (List.finRange 16).map f := by
    simp [supportBoolFin16List, List.finRange_succ]
  rw [hmap]
  rw [Fin.univ_def 16]
  simp [Finset.card, Finset.filter, ← List.countP_eq_length_filter, List.countP_map,
    Function.comp_def]

private theorem supportBoolFin16_true_count_add_false_count
    (f : Fin 16 → Bool) :
    ((supportBoolFin16List f).filter (fun b => b = true)).length +
      ((supportBoolFin16List (fun i => !(f i))).filter
        (fun b => b = true)).length =
        16 := by
  rw [supportBoolFin16_true_count_eq_card_filter f]
  rw [supportBoolFin16_true_count_eq_card_filter (fun i => !(f i))]
  simpa using
    (Finset.card_filter_add_card_filter_not
      (s := (Finset.univ : Finset (Fin 16))) (p := fun i : Fin 16 => f i = true))

@[simp] private theorem supportBoolFin16_true_count_eq_counter_sum
    (f : Fin 16 → Bool) :
    ((((((((((((((((if f 0 = true then 1 else 0) +
                                  if f 1 = true then 1 else 0) +
                                if f 2 = true then 1 else 0) +
                              if f 3 = true then 1 else 0) +
                            if f 4 = true then 1 else 0) +
                          if f 5 = true then 1 else 0) +
                        if f 6 = true then 1 else 0) +
                      if f 7 = true then 1 else 0) +
                    if f 8 = true then 1 else 0) +
                  if f 9 = true then 1 else 0) +
                if f 10 = true then 1 else 0) +
              if f 11 = true then 1 else 0) +
            if f 12 = true then 1 else 0) +
          if f 13 = true then 1 else 0) +
        if f 14 = true then 1 else 0) +
      if f 15 = true then 1 else 0) =
      ((supportBoolFin16List f).filter (fun b => b = true)).length := by
  simp [supportBoolFin16List, ← List.countP_eq_length_filter, List.countP_cons]
  omega

private theorem supportBoolFin16_false_count_le_five_add_of_true_count_ge
    (f : Fin 16 → Bool)
    (d : Nat)
    (hcount :
      11 - d ≤ (Finset.univ.filter (fun i : Fin 16 => f i = true)).card) :
    ((supportBoolFin16List (fun i => !(f i))).filter
        (fun b => b = true)).length ≤
      5 + d := by
  have htrue_eq := supportBoolFin16_true_count_eq_card_filter f
  have htrue_ge :
      11 - d ≤ ((supportBoolFin16List f).filter (fun b => b = true)).length := by
    rw [htrue_eq]
    exact hcount
  have hsum := supportBoolFin16_true_count_add_false_count f
  omega

private theorem supportBoolFin16_false_counter_sum_le_five_add_of_true_count_ge
    (f : Fin 16 → Bool)
    (d : Nat)
    (hcount :
      11 - d ≤ (Finset.univ.filter (fun i : Fin 16 => f i = true)).card) :
    ((((((((((((((((if f 0 = false then 1 else 0) +
                                  if f 1 = false then 1 else 0) +
                                if f 2 = false then 1 else 0) +
                              if f 3 = false then 1 else 0) +
                            if f 4 = false then 1 else 0) +
                          if f 5 = false then 1 else 0) +
                        if f 6 = false then 1 else 0) +
                      if f 7 = false then 1 else 0) +
                    if f 8 = false then 1 else 0) +
                  if f 9 = false then 1 else 0) +
                if f 10 = false then 1 else 0) +
              if f 11 = false then 1 else 0) +
            if f 12 = false then 1 else 0) +
          if f 13 = false then 1 else 0) +
        if f 14 = false then 1 else 0) +
      if f 15 = false then 1 else 0) ≤
      5 + d := by
  have hfalse :=
    supportBoolFin16_false_count_le_five_add_of_true_count_ge f d hcount
  have hsum :=
    supportBoolFin16_true_count_eq_counter_sum (fun i : Fin 16 => !(f i))
  rw [← hsum] at hfalse
  simpa using hfalse

theorem HexadecimaryFourTwoProfileGraph.supportThresholdCounterPrefixPresentCount_le_five_add_d
    (G : HexadecimaryFourTwoProfileGraph)
    (coord : Fin 4)
    (symbol : Fin 16)
    (other : Fin 4)
    (hne : other.val ≠ coord.val) :
    G.supportThresholdCounterPrefixPresentCount coord.val symbol.val other.val 16 ≤
      5 + G.dByCoord coord.val symbol.val := by
  fin_cases coord <;> fin_cases other <;> simp at hne
  · have hfalse :=
      supportBoolFin16_false_counter_sum_le_five_add_of_true_count_ge
        (fun b : Fin 16 => G.E01 symbol b) (G.d0 symbol) (G.row01 symbol)
    simpa [HexadecimaryFourTwoProfileGraph.supportThresholdCounterPrefixPresentCount,
      HexadecimaryFourTwoProfileGraph.supportIncidentPresent,
      HexadecimaryFourTwoProfileGraph.presentByPairIndex,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndex,
      HexadecimaryFourTwoProfileGraph.dByCoord,
      HexadecimaryFourTwoSupportDirect.pairIndexOf, supportBoolFin16List,
      fin16OfNatMod] using hfalse
  · have hfalse :=
      supportBoolFin16_false_counter_sum_le_five_add_of_true_count_ge
        (fun c : Fin 16 => G.E02 symbol c) (G.d0 symbol) (G.row02 symbol)
    simpa [HexadecimaryFourTwoProfileGraph.supportThresholdCounterPrefixPresentCount,
      HexadecimaryFourTwoProfileGraph.supportIncidentPresent,
      HexadecimaryFourTwoProfileGraph.presentByPairIndex,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndex,
      HexadecimaryFourTwoProfileGraph.dByCoord,
      HexadecimaryFourTwoSupportDirect.pairIndexOf, supportBoolFin16List,
      fin16OfNatMod] using hfalse
  · have hfalse :=
      supportBoolFin16_false_counter_sum_le_five_add_of_true_count_ge
        (fun d : Fin 16 => G.E03 symbol d) (G.d0 symbol) (G.row03 symbol)
    simpa [HexadecimaryFourTwoProfileGraph.supportThresholdCounterPrefixPresentCount,
      HexadecimaryFourTwoProfileGraph.supportIncidentPresent,
      HexadecimaryFourTwoProfileGraph.presentByPairIndex,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndex,
      HexadecimaryFourTwoProfileGraph.dByCoord,
      HexadecimaryFourTwoSupportDirect.pairIndexOf, supportBoolFin16List,
      fin16OfNatMod] using hfalse
  · have hfalse :=
      supportBoolFin16_false_counter_sum_le_five_add_of_true_count_ge
        (fun a : Fin 16 => G.E01 a symbol) (G.d1 symbol) (G.col01 symbol)
    simpa [HexadecimaryFourTwoProfileGraph.supportThresholdCounterPrefixPresentCount,
      HexadecimaryFourTwoProfileGraph.supportIncidentPresent,
      HexadecimaryFourTwoProfileGraph.presentByPairIndex,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndex,
      HexadecimaryFourTwoProfileGraph.dByCoord,
      HexadecimaryFourTwoSupportDirect.pairIndexOf, supportBoolFin16List,
      fin16OfNatMod] using hfalse
  · have hfalse :=
      supportBoolFin16_false_counter_sum_le_five_add_of_true_count_ge
        (fun c : Fin 16 => G.E12 symbol c) (G.d1 symbol) (G.row12 symbol)
    simpa [HexadecimaryFourTwoProfileGraph.supportThresholdCounterPrefixPresentCount,
      HexadecimaryFourTwoProfileGraph.supportIncidentPresent,
      HexadecimaryFourTwoProfileGraph.presentByPairIndex,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndex,
      HexadecimaryFourTwoProfileGraph.dByCoord,
      HexadecimaryFourTwoSupportDirect.pairIndexOf, supportBoolFin16List,
      fin16OfNatMod] using hfalse
  · have hfalse :=
      supportBoolFin16_false_counter_sum_le_five_add_of_true_count_ge
        (fun d : Fin 16 => G.E13 symbol d) (G.d1 symbol) (G.row13 symbol)
    simpa [HexadecimaryFourTwoProfileGraph.supportThresholdCounterPrefixPresentCount,
      HexadecimaryFourTwoProfileGraph.supportIncidentPresent,
      HexadecimaryFourTwoProfileGraph.presentByPairIndex,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndex,
      HexadecimaryFourTwoProfileGraph.dByCoord,
      HexadecimaryFourTwoSupportDirect.pairIndexOf, supportBoolFin16List,
      fin16OfNatMod] using hfalse
  · have hfalse :=
      supportBoolFin16_false_counter_sum_le_five_add_of_true_count_ge
        (fun a : Fin 16 => G.E02 a symbol) (G.d2 symbol) (G.col02 symbol)
    simpa [HexadecimaryFourTwoProfileGraph.supportThresholdCounterPrefixPresentCount,
      HexadecimaryFourTwoProfileGraph.supportIncidentPresent,
      HexadecimaryFourTwoProfileGraph.presentByPairIndex,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndex,
      HexadecimaryFourTwoProfileGraph.dByCoord,
      HexadecimaryFourTwoSupportDirect.pairIndexOf, supportBoolFin16List,
      fin16OfNatMod] using hfalse
  · have hfalse :=
      supportBoolFin16_false_counter_sum_le_five_add_of_true_count_ge
        (fun b : Fin 16 => G.E12 b symbol) (G.d2 symbol) (G.col12 symbol)
    simpa [HexadecimaryFourTwoProfileGraph.supportThresholdCounterPrefixPresentCount,
      HexadecimaryFourTwoProfileGraph.supportIncidentPresent,
      HexadecimaryFourTwoProfileGraph.presentByPairIndex,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndex,
      HexadecimaryFourTwoProfileGraph.dByCoord,
      HexadecimaryFourTwoSupportDirect.pairIndexOf, supportBoolFin16List,
      fin16OfNatMod] using hfalse
  · have hfalse :=
      supportBoolFin16_false_counter_sum_le_five_add_of_true_count_ge
        (fun d : Fin 16 => G.E23 symbol d) (G.d2 symbol) (G.row23 symbol)
    simpa [HexadecimaryFourTwoProfileGraph.supportThresholdCounterPrefixPresentCount,
      HexadecimaryFourTwoProfileGraph.supportIncidentPresent,
      HexadecimaryFourTwoProfileGraph.presentByPairIndex,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndex,
      HexadecimaryFourTwoProfileGraph.dByCoord,
      HexadecimaryFourTwoSupportDirect.pairIndexOf, supportBoolFin16List,
      fin16OfNatMod] using hfalse
  · have hfalse :=
      supportBoolFin16_false_counter_sum_le_five_add_of_true_count_ge
        (fun a : Fin 16 => G.E03 a symbol) (G.d3 symbol) (G.col03 symbol)
    simpa [HexadecimaryFourTwoProfileGraph.supportThresholdCounterPrefixPresentCount,
      HexadecimaryFourTwoProfileGraph.supportIncidentPresent,
      HexadecimaryFourTwoProfileGraph.presentByPairIndex,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndex,
      HexadecimaryFourTwoProfileGraph.dByCoord,
      HexadecimaryFourTwoSupportDirect.pairIndexOf, supportBoolFin16List,
      fin16OfNatMod] using hfalse
  · have hfalse :=
      supportBoolFin16_false_counter_sum_le_five_add_of_true_count_ge
        (fun b : Fin 16 => G.E13 b symbol) (G.d3 symbol) (G.col13 symbol)
    simpa [HexadecimaryFourTwoProfileGraph.supportThresholdCounterPrefixPresentCount,
      HexadecimaryFourTwoProfileGraph.supportIncidentPresent,
      HexadecimaryFourTwoProfileGraph.presentByPairIndex,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndex,
      HexadecimaryFourTwoProfileGraph.dByCoord,
      HexadecimaryFourTwoSupportDirect.pairIndexOf, supportBoolFin16List,
      fin16OfNatMod] using hfalse
  · have hfalse :=
      supportBoolFin16_false_counter_sum_le_five_add_of_true_count_ge
        (fun c : Fin 16 => G.E23 c symbol) (G.d3 symbol) (G.col23 symbol)
    simpa [HexadecimaryFourTwoProfileGraph.supportThresholdCounterPrefixPresentCount,
      HexadecimaryFourTwoProfileGraph.supportIncidentPresent,
      HexadecimaryFourTwoProfileGraph.presentByPairIndex,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndex,
      HexadecimaryFourTwoProfileGraph.dByCoord,
      HexadecimaryFourTwoSupportDirect.pairIndexOf, supportBoolFin16List,
      fin16OfNatMod] using hfalse

theorem HexadecimaryFourTwoProfileGraph.supportValuation_satisfies_thresholdCounterOutputClause
    (G : HexadecimaryFourTwoProfileGraph)
    (coord symbol other threshold : Nat)
    (hcoord : coord < 4)
    (hsymbol : symbol < 16)
    (hother : other < 4)
    (hne : other ≠ coord)
    (hthreshold6 : 6 ≤ threshold)
    (hthreshold16 : threshold ≤ 16) :
    Sat.Valuation.satisfies G.supportValuation
      (LRATNative.rawClauseToSat
        #[-(HexadecimaryFourTwoSupportDirect.thresholdCounterLit
              coord symbol other 16 threshold),
          HexadecimaryFourTwoSupportDirect.thresholdLit
              coord symbol threshold]) := by
  let coord4 : Fin 4 := ⟨coord, hcoord⟩
  let other4 : Fin 4 := ⟨other, hother⟩
  let symbol16 : Fin 16 := ⟨symbol, hsymbol⟩
  let off : Fin 11 := ⟨threshold - 6, by omega⟩
  have hneFin : other4.val ≠ coord4.val := by
    simpa [coord4, other4] using hne
  have hoff : off.val + 6 = threshold := by
    dsimp [off]
    omega
  have hclause :
      Sat.Valuation.satisfies G.supportValuation
        [Sat.Literal.neg
          (HexadecimaryFourTwoSupportDirect.thresholdCounterVar
            coord symbol other 16 threshold - 1),
         Sat.Literal.pos
          (HexadecimaryFourTwoSupportDirect.thresholdVar
            coord symbol threshold - 1)] := by
    apply valuation_satisfies_neg_pos
    intro hcounter
    have hcounterNat :=
      (G.supportValuation_thresholdCounterVar coord4 symbol16 other4 hneFin
        16 threshold (by omega) (by omega) (by omega) (by omega)).1
        (by simpa [coord4, symbol16, other4] using hcounter)
    have hupper :=
      G.supportThresholdCounterPrefixPresentCount_le_five_add_d
        coord4 symbol16 other4 hneFin
    have hthresholdNat :
        threshold ≤ 5 + G.dByCoord coord symbol := by
      simpa [coord4, symbol16] using le_trans hcounterNat hupper
    have hthresholdVal :=
      (G.supportValuation_thresholdVar coord4 symbol16 off).2 (by
        simpa [coord4, symbol16, off, hoff] using hthresholdNat)
    simpa [coord4, symbol16, off, hoff] using hthresholdVal
  simpa [LRATNative.rawClauseToSat, rawNegThresholdCounterLiteral_eq,
    rawPosThresholdLiteral_eq] using hclause

theorem HexadecimaryFourTwoProfileGraph.supportValuation_satisfies_thresholdSequentialClausesFor
    (G : HexadecimaryFourTwoProfileGraph)
    (coord symbol other : Nat)
    (hcoord : coord < 4)
    (hsymbol : symbol < 16)
    (hother : other < 4)
    (hne : other ≠ coord) :
    Sat.Valuation.satisfies_fmla G.supportValuation
      ((HexadecimaryFourTwoSupportDirect.thresholdSequentialClausesFor
          coord symbol other).map LRATNative.rawClauseToSat) := by
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨rawClause, hraw, rfl⟩
  simp only [HexadecimaryFourTwoSupportDirect.thresholdSequentialClausesFor,
    HexadecimaryFourTwoSupportDirect.q,
    HexadecimaryFourTwoSupportDirect.thresholdCount,
    List.mem_append, List.mem_flatMap, List.mem_map, List.mem_range,
    List.mem_singleton] at hraw
  rcases hraw with hmain | hout
  · rcases hmain with ⟨i0, hi0, hraw⟩
    have hi0lt : i0 < 16 := by simpa using hi0
    have hi16 : i0 + 1 ≤ 16 := by omega
    rcases hraw with (hhead | hcarry) | hincrement
    · rw [hhead]
      simpa [show i0 + 1 - 1 = i0 by omega] using
        G.supportValuation_satisfies_thresholdCounterHeadClause
          coord symbol other i0 hcoord hsymbol hother hi0lt hne
    · simp [List.mem_map, List.mem_range] at hcarry
      rcases hcarry with ⟨_, hcarry⟩
      rcases hcarry with ⟨c0, hcarry⟩
      rcases hcarry with ⟨hc0, hrawEq⟩
      rw [← hrawEq]
      simpa [show i0 + 1 - 1 = i0 by omega] using
        G.supportValuation_satisfies_thresholdCounterCarryClause
          coord symbol other (i0 + 1) (c0 + 1)
          hcoord hsymbol hother hne
          (by omega) hi16 (by omega) (by omega)
    · simp [List.mem_map, List.mem_range] at hincrement
      rcases hincrement with ⟨_, hincrement⟩
      rcases hincrement with ⟨c0, hincrement⟩
      rcases hincrement with ⟨hc0, hrawEq⟩
      rw [← hrawEq]
      simpa [show i0 + 1 - 1 = i0 by omega] using
        G.supportValuation_satisfies_thresholdCounterIncrementClause
          coord symbol other (i0 + 1) (c0 + 2)
          hcoord hsymbol hother hne
          (by omega) hi16 (by omega) (by omega)
  · rcases hout with ⟨off, hoff, hrawEq⟩
    rw [← hrawEq]
    exact
      G.supportValuation_satisfies_thresholdCounterOutputClause
        coord symbol other (off + 6)
        hcoord hsymbol hother hne (by omega) (by omega)

theorem HexadecimaryFourTwoProfileGraph.supportValuation_satisfies_thresholdSequentialClauses
    (G : HexadecimaryFourTwoProfileGraph) :
    Sat.Valuation.satisfies_fmla G.supportValuation
      (HexadecimaryFourTwoSupportDirect.thresholdSequentialClauses.map
        LRATNative.rawClauseToSat) := by
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨rawClause, hraw, rfl⟩
  simp only [HexadecimaryFourTwoSupportDirect.thresholdSequentialClauses,
    HexadecimaryFourTwoSupportDirect.coordCount,
    HexadecimaryFourTwoSupportDirect.q,
    List.mem_flatMap, List.mem_range] at hraw
  rcases hraw with ⟨coord, hcoord, hraw⟩
  rcases hraw with ⟨symbol, hsymbol, hraw⟩
  rcases hraw with ⟨other, hother, hraw⟩
  by_cases hsame : other = coord
  · simp [hsame] at hraw
  · exact
      (G.supportValuation_satisfies_thresholdSequentialClausesFor
        coord symbol other hcoord hsymbol hother hsame).prop
        (LRATNative.rawClauseToSat rawClause)
        (List.mem_map.mpr ⟨rawClause, by simpa [hsame] using hraw, rfl⟩)

theorem HexadecimaryFourTwoProfileGraph.supportValuation_satisfies_budgetSequentialClausesFor
    (G : HexadecimaryFourTwoProfileGraph)
    (coord : Fin 4) :
    Sat.Valuation.satisfies_fmla G.supportValuation
      ((HexadecimaryFourTwoSupportDirect.atMostSeqClausesWithAux
          (supportBudgetCounterFirst coord.val)
          (HexadecimaryFourTwoSupportDirect.thresholdVarsForCoord coord.val)
          6).map LRATNative.rawClauseToSat) := by
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨rawClause, hraw, rfl⟩
  have htotal := G.supportBudgetPrefixCount_le_six coord
  simp only [HexadecimaryFourTwoSupportDirect.atMostSeqClausesWithAux,
    List.mem_append, List.mem_map, List.mem_flatMap, List.mem_range] at hraw
  rcases hraw with ((hfirstClause | hcarryClause) | hoverflowClause) | hstepClause
  · rcases hfirstClause with ⟨i0, hi0Range, hrawEq⟩
    rw [← hrawEq]
    have hi0_lt175 : i0 < 175 := by
      simp [HexadecimaryFourTwoSupportDirect.thresholdVarsForCoord,
        HexadecimaryFourTwoSupportDirect.q,
        HexadecimaryFourTwoSupportDirect.thresholdCount] at hi0Range
      omega
    have hidx_lt176 : i0 < 176 := by omega
    let iFin : Fin 175 := ⟨i0, hi0_lt175⟩
    let cFin : Fin 6 := ⟨0, by decide⟩
    have hidx : i0 + 1 - 1 = i0 := by omega
    have hThresholdLit :
        Sat.Literal.ofInt
            (-(HexadecimaryFourTwoSupportDirect.litAt
              (HexadecimaryFourTwoSupportDirect.thresholdVarsForCoord coord.val)
              i0)) =
          Sat.Literal.neg
            (HexadecimaryFourTwoSupportDirect.thresholdVar
              coord.val (i0 / 11) (i0 % 11 + 6) - 1) := by
      rw [thresholdVarsForCoordLitAt_eq coord.val i0 hidx_lt176]
      simp
    have hAuxLit :
        Sat.Literal.ofInt
            (HexadecimaryFourTwoSupportDirect.seqAux
              (supportBudgetCounterFirst coord.val) 6 (i0 + 1) 1) =
          Sat.Literal.pos
            (supportBudgetCounterVar coord.val (i0 + 1) 1 - 1) := by
      simp
    simp [LRATNative.rawClauseToSat, hidx, hThresholdLit, hAuxLit]
    intro hthreshold hauxFalse
    have hinput :=
      G.supportBudgetThresholdInput_of_thresholdVar coord i0 hidx_lt176
        hthreshold
    have hcount :=
      G.supportBudgetPrefixCount_pos_of_input coord.val (i0 + 1)
        (by omega) hinput
    have haux :=
      (G.supportValuation_budgetSeqAux coord iFin cFin).2 (by
        simpa [iFin, cFin] using hcount)
    exact hauxFalse haux
  · rcases hcarryClause with ⟨i0, hi0Range, j0, hj0Range, hrawEq⟩
    rw [← hrawEq]
    have hi0_lt174 : i0 < 174 := by
      simp [HexadecimaryFourTwoSupportDirect.thresholdVarsForCoord,
        HexadecimaryFourTwoSupportDirect.q,
        HexadecimaryFourTwoSupportDirect.thresholdCount] at hi0Range
      omega
    have hj0_lt6 : j0 < 6 := hj0Range
    let iPrevFin : Fin 175 := ⟨i0, by omega⟩
    let iCurrFin : Fin 175 := ⟨i0 + 1, by omega⟩
    let cFin : Fin 6 := ⟨j0, hj0_lt6⟩
    have hiPrevIdx : i0 + 2 - 1 = i0 + 1 := by omega
    have hPrevLit :
        Sat.Literal.ofInt
            (-(HexadecimaryFourTwoSupportDirect.seqAux
              (supportBudgetCounterFirst coord.val) 6
              (i0 + 1) (j0 + 1))) =
          Sat.Literal.neg
            (supportBudgetCounterVar coord.val (i0 + 1) (j0 + 1) - 1) := by
      simp
    have hCurrLit :
        Sat.Literal.ofInt
            (HexadecimaryFourTwoSupportDirect.seqAux
              (supportBudgetCounterFirst coord.val) 6
              (i0 + 2) (j0 + 1)) =
          Sat.Literal.pos
            (supportBudgetCounterVar coord.val (i0 + 2) (j0 + 1) - 1) := by
      simp
    simp [LRATNative.rawClauseToSat, hiPrevIdx, hPrevLit, hCurrLit]
    intro hprev hcurrFalse
    have hprevCount :=
      (G.supportValuation_budgetSeqAux coord iPrevFin cFin).1 (by
        simpa [iPrevFin, cFin] using hprev)
    have hprevCount' :
        j0 + 1 ≤ G.supportBudgetPrefixCount coord.val (i0 + 1) := by
      simpa [iPrevFin, cFin] using hprevCount
    have hcurrCount :
        j0 + 1 ≤ G.supportBudgetPrefixCount coord.val (i0 + 2) :=
      le_trans hprevCount'
        (G.supportBudgetPrefixCount_mono coord.val (by omega))
    have hcurr :=
      (G.supportValuation_budgetSeqAux coord iCurrFin cFin).2 (by
        simpa [iCurrFin, cFin] using hcurrCount)
    exact hcurrFalse hcurr
  · rcases hoverflowClause with ⟨i0, hi0Range, hrawEq⟩
    rw [← hrawEq]
    have hi0_lt175 : i0 < 175 := by
      simp [HexadecimaryFourTwoSupportDirect.thresholdVarsForCoord,
        HexadecimaryFourTwoSupportDirect.q,
        HexadecimaryFourTwoSupportDirect.thresholdCount] at hi0Range
      omega
    have hidx_lt176 : i0 + 1 < 176 := by omega
    let iPrevFin : Fin 175 := ⟨i0, hi0_lt175⟩
    let cMaxFin : Fin 6 := ⟨5, by decide⟩
    have hidx : i0 + 2 - 1 = i0 + 1 := by omega
    have hThresholdLit :
        Sat.Literal.ofInt
            (-(HexadecimaryFourTwoSupportDirect.litAt
              (HexadecimaryFourTwoSupportDirect.thresholdVarsForCoord coord.val)
              (i0 + 1))) =
          Sat.Literal.neg
            (HexadecimaryFourTwoSupportDirect.thresholdVar
              coord.val ((i0 + 1) / 11) ((i0 + 1) % 11 + 6) - 1) := by
      rw [thresholdVarsForCoordLitAt_eq coord.val (i0 + 1) hidx_lt176]
      simp
    have hPrevLit :
        Sat.Literal.ofInt
            (-(HexadecimaryFourTwoSupportDirect.seqAux
              (supportBudgetCounterFirst coord.val) 6 (i0 + 1) 6)) =
          Sat.Literal.neg
            (supportBudgetCounterVar coord.val (i0 + 1) 6 - 1) := by
      simp
    have hclause :
        Sat.Valuation.satisfies G.supportValuation
          [Sat.Literal.neg
            (HexadecimaryFourTwoSupportDirect.thresholdVar
              coord.val ((i0 + 1) / 11) ((i0 + 1) % 11 + 6) - 1),
           Sat.Literal.neg
            (supportBudgetCounterVar coord.val (i0 + 1) 6 - 1)] := by
      apply valuation_satisfies_neg_neg
      intro hthreshold hprev
      have hinput :=
        G.supportBudgetThresholdInput_of_thresholdVar coord (i0 + 1)
          hidx_lt176 hthreshold
      have hprevCount :=
        (G.supportValuation_budgetSeqAux coord iPrevFin cMaxFin).1 (by
          simpa [iPrevFin, cMaxFin] using hprev)
      have hprevCount' :
          6 ≤ G.supportBudgetPrefixCount coord.val (i0 + 1) := by
        simpa [iPrevFin, cMaxFin] using hprevCount
      have hnextEq :
          G.supportBudgetPrefixCount coord.val (i0 + 2) =
            G.supportBudgetPrefixCount coord.val (i0 + 1) + 1 := by
        simpa [show i0 + 2 = (i0 + 1) + 1 by omega] using
          G.supportBudgetPrefixCount_succ_of_input coord.val (i0 + 1) hinput
      have htotalFromNext :
          G.supportBudgetPrefixCount coord.val (i0 + 2) ≤
            G.supportBudgetPrefixCount coord.val 176 :=
        G.supportBudgetPrefixCount_mono coord.val (by omega)
      omega
    simpa [LRATNative.rawClauseToSat, hidx, hThresholdLit, hPrevLit] using hclause
  · rcases hstepClause with ⟨i0, hi0Range, j0, hj0Range, hrawEq⟩
    rw [← hrawEq]
    have hi0_lt174 : i0 < 174 := by
      simp [HexadecimaryFourTwoSupportDirect.thresholdVarsForCoord,
        HexadecimaryFourTwoSupportDirect.q,
        HexadecimaryFourTwoSupportDirect.thresholdCount] at hi0Range
      omega
    have hj0_lt5 : j0 < 5 := by
      simpa using hj0Range
    have hidx_lt176 : i0 + 1 < 176 := by omega
    let iPrevFin : Fin 175 := ⟨i0, by omega⟩
    let iCurrFin : Fin 175 := ⟨i0 + 1, by omega⟩
    let cPrevFin : Fin 6 := ⟨j0, by omega⟩
    let cCurrFin : Fin 6 := ⟨j0 + 1, by omega⟩
    have hidx : i0 + 2 - 1 = i0 + 1 := by omega
    have hjidx : j0 + 2 - 1 = j0 + 1 := by omega
    have hThresholdLit :
        Sat.Literal.ofInt
            (-(HexadecimaryFourTwoSupportDirect.litAt
              (HexadecimaryFourTwoSupportDirect.thresholdVarsForCoord coord.val)
              (i0 + 1))) =
          Sat.Literal.neg
            (HexadecimaryFourTwoSupportDirect.thresholdVar
              coord.val ((i0 + 1) / 11) ((i0 + 1) % 11 + 6) - 1) := by
      rw [thresholdVarsForCoordLitAt_eq coord.val (i0 + 1) hidx_lt176]
      simp
    have hPrevLit :
        Sat.Literal.ofInt
            (-(HexadecimaryFourTwoSupportDirect.seqAux
              (supportBudgetCounterFirst coord.val) 6
              (i0 + 1) (j0 + 1))) =
          Sat.Literal.neg
            (supportBudgetCounterVar coord.val (i0 + 1) (j0 + 1) - 1) := by
      simp
    have hCurrLit :
        Sat.Literal.ofInt
            (HexadecimaryFourTwoSupportDirect.seqAux
              (supportBudgetCounterFirst coord.val) 6
              (i0 + 2) (j0 + 2)) =
          Sat.Literal.pos
            (supportBudgetCounterVar coord.val (i0 + 2) (j0 + 2) - 1) := by
      simp
    simp [LRATNative.rawClauseToSat, hidx, hjidx, hThresholdLit, hPrevLit, hCurrLit]
    intro hthreshold hprev hcurrFalse
    have hinput :=
      G.supportBudgetThresholdInput_of_thresholdVar coord (i0 + 1)
        hidx_lt176 hthreshold
    have hprevCount :=
      (G.supportValuation_budgetSeqAux coord iPrevFin cPrevFin).1 (by
        simpa [iPrevFin, cPrevFin] using hprev)
    have hprevCount' :
        j0 + 1 ≤ G.supportBudgetPrefixCount coord.val (i0 + 1) := by
      simpa [iPrevFin, cPrevFin] using hprevCount
    have hnextEq :
        G.supportBudgetPrefixCount coord.val (i0 + 2) =
          G.supportBudgetPrefixCount coord.val (i0 + 1) + 1 := by
      simpa [show i0 + 2 = (i0 + 1) + 1 by omega] using
        G.supportBudgetPrefixCount_succ_of_input coord.val (i0 + 1) hinput
    have hcurrCount :
        j0 + 2 ≤ G.supportBudgetPrefixCount coord.val (i0 + 2) := by
      omega
    have hcurr :=
      (G.supportValuation_budgetSeqAux coord iCurrFin cCurrFin).2 (by
        simpa [iCurrFin, cCurrFin] using hcurrCount)
    exact hcurrFalse hcurr

theorem HexadecimaryFourTwoProfileGraph.supportValuation_satisfies_budgetSequentialClauses
    (G : HexadecimaryFourTwoProfileGraph) :
    Sat.Valuation.satisfies_fmla G.supportValuation
      (HexadecimaryFourTwoSupportDirect.budgetSequentialClauses.map
        LRATNative.rawClauseToSat) := by
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨rawClause, hraw, rfl⟩
  simp [HexadecimaryFourTwoSupportDirect.budgetSequentialClauses,
    HexadecimaryFourTwoSupportDirect.coordCount,
    HexadecimaryFourTwoSupportDirect.atMostSeqClauses,
    HexadecimaryFourTwoSupportDirect.thresholdVarsForCoord,
    HexadecimaryFourTwoSupportDirect.q,
    HexadecimaryFourTwoSupportDirect.thresholdCount,
    HexadecimaryFourTwoSupportDirect.excessBudget,
    List.mem_flatMap, List.mem_range] at hraw
  rcases hraw with ⟨coord, hcoord, hraw⟩
  let coord4 : Fin 4 := ⟨coord, by omega⟩
  exact
    (G.supportValuation_satisfies_budgetSequentialClausesFor coord4).prop
      (LRATNative.rawClauseToSat rawClause)
      (List.mem_map.mpr ⟨rawClause, by
        simpa [coord4, supportBudgetCounterFirst,
          HexadecimaryFourTwoSupportDirect.q,
          HexadecimaryFourTwoSupportDirect.thresholdCount,
          HexadecimaryFourTwoSupportDirect.excessBudget] using hraw, rfl⟩)

private theorem HexadecimaryFourTwoProfileGraph.exists_present_pair_of_no_clique
    (G : HexadecimaryFourTwoProfileGraph)
    (a b c d : Fin 16) :
    G.presentByPairIndex 0 a.val b.val ∨
    G.presentByPairIndex 1 a.val c.val ∨
    G.presentByPairIndex 2 a.val d.val ∨
    G.presentByPairIndex 3 b.val c.val ∨
    G.presentByPairIndex 4 b.val d.val ∨
    G.presentByPairIndex 5 c.val d.val := by
  by_contra hnone
  push Not at hnone
  rcases hnone with ⟨h01, h02, h03, h12, h13, h23⟩
  exact G.no_clique ⟨a, b, c, d, by
    simpa [HexadecimaryFourTwoProfileGraph.presentByPairIndex,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndex] using h01, by
    simpa [HexadecimaryFourTwoProfileGraph.presentByPairIndex,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndex] using h02, by
    simpa [HexadecimaryFourTwoProfileGraph.presentByPairIndex,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndex] using h03, by
    simpa [HexadecimaryFourTwoProfileGraph.presentByPairIndex,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndex] using h12, by
    simpa [HexadecimaryFourTwoProfileGraph.presentByPairIndex,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndex] using h13, by
    simpa [HexadecimaryFourTwoProfileGraph.presentByPairIndex,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndex] using h23⟩

theorem HexadecimaryFourTwoProfileGraph.supportValuation_satisfies_coverageClause
    (G : HexadecimaryFourTwoProfileGraph)
    (a b c d : Fin 16) :
    Sat.Valuation.satisfies G.supportValuation
      (LRATNative.rawClauseToSat
        #[HexadecimaryFourTwoSupportDirect.posPresentLit 0 a.val b.val,
          HexadecimaryFourTwoSupportDirect.posPresentLit 1 a.val c.val,
          HexadecimaryFourTwoSupportDirect.posPresentLit 2 a.val d.val,
          HexadecimaryFourTwoSupportDirect.posPresentLit 3 b.val c.val,
          HexadecimaryFourTwoSupportDirect.posPresentLit 4 b.val d.val,
          HexadecimaryFourTwoSupportDirect.posPresentLit 5 c.val d.val]) := by
  have hsix :
      Sat.Valuation.satisfies G.supportValuation
        [Sat.Literal.pos (HexadecimaryFourTwoSupportDirect.presentVar 0 a.val b.val - 1),
         Sat.Literal.pos (HexadecimaryFourTwoSupportDirect.presentVar 1 a.val c.val - 1),
         Sat.Literal.pos (HexadecimaryFourTwoSupportDirect.presentVar 2 a.val d.val - 1),
         Sat.Literal.pos (HexadecimaryFourTwoSupportDirect.presentVar 3 b.val c.val - 1),
         Sat.Literal.pos (HexadecimaryFourTwoSupportDirect.presentVar 4 b.val d.val - 1),
         Sat.Literal.pos (HexadecimaryFourTwoSupportDirect.presentVar 5 c.val d.val - 1)] := by
    apply valuation_satisfies_six_pos
    have hpresent := G.exists_present_pair_of_no_clique a b c d
    rcases hpresent with h | h | h | h | h | h
    · exact Or.inl ((G.supportValuation_presentVar 0 a b).2 h)
    · exact Or.inr (Or.inl ((G.supportValuation_presentVar 1 a c).2 h))
    · exact Or.inr (Or.inr (Or.inl ((G.supportValuation_presentVar 2 a d).2 h)))
    · exact Or.inr (Or.inr (Or.inr (Or.inl ((G.supportValuation_presentVar 3 b c).2 h))))
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inl ((G.supportValuation_presentVar 4 b d).2 h)))))
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr ((G.supportValuation_presentVar 5 c d).2 h)))))
  simpa [LRATNative.rawClauseToSat, rawPosPresentLiteral_eq] using hsix

theorem HexadecimaryFourTwoProfileGraph.supportValuation_satisfies_sortedThresholdClause
    (G : HexadecimaryFourTwoProfileGraph)
    (hsorted : G.sortedExcessProfiles)
    (coord : Fin 4)
    (prev : Fin 15)
    (off : Fin 11) :
    Sat.Valuation.satisfies G.supportValuation
      (LRATNative.rawClauseToSat
        #[-(HexadecimaryFourTwoSupportDirect.thresholdLit
              coord.val (prev.val + 1) (off.val + 6)),
          HexadecimaryFourTwoSupportDirect.thresholdLit
              coord.val prev.val (off.val + 6)]) := by
  have hclause :
      Sat.Valuation.satisfies G.supportValuation
        [Sat.Literal.neg
            (HexadecimaryFourTwoSupportDirect.thresholdVar
              coord.val (prev.val + 1) (off.val + 6) - 1),
         Sat.Literal.pos
            (HexadecimaryFourTwoSupportDirect.thresholdVar
              coord.val prev.val (off.val + 6) - 1)] := by
    apply valuation_satisfies_neg_pos
    intro hnext
    have hnext' :=
      (G.supportValuation_thresholdVar coord ⟨prev.val + 1, by
        have hp := prev.isLt
        omega⟩ off).1 hnext
    have hnextNat :
        off.val + 6 ≤ 5 + G.dByCoord coord.val (prev.val + 1) := by
      simpa using hnext'
    have hmono :
        G.dByCoord coord.val (prev.val + 1) ≤ G.dByCoord coord.val prev.val := by
      simpa [Nat.add_sub_cancel] using
        hsorted coord.val (prev.val + 1) coord.isLt (by omega) (by
          have hp := prev.isLt
          omega)
    have hprevNat :
        off.val + 6 ≤ 5 + G.dByCoord coord.val prev.val := by
      omega
    exact (G.supportValuation_thresholdVar coord ⟨prev.val, by
        have hp := prev.isLt
        omega⟩ off).2 (by
          simpa using hprevNat)
  simpa [LRATNative.rawClauseToSat, rawNegThresholdLiteral_eq,
    rawPosThresholdLiteral_eq] using hclause

theorem HexadecimaryFourTwoProfileGraph.supportValuation_satisfies_sortedCoord0SupportLeFiveClause
    (G : HexadecimaryFourTwoProfileGraph)
    (hsupport : G.sortedCoord0SupportLeFive) :
    Sat.Valuation.satisfies G.supportValuation
      (LRATNative.rawClauseToSat
        #[-(HexadecimaryFourTwoSupportDirect.thresholdLit 0 5 6)]) := by
  have hclause :
      Sat.Valuation.satisfies G.supportValuation
        [Sat.Literal.neg
          (HexadecimaryFourTwoSupportDirect.thresholdVar 0 5 6 - 1)] := by
    apply valuation_satisfies_neg
    intro hthreshold
    have hthreshold' :=
      (G.supportValuation_thresholdVar 0 5 ⟨0, by decide⟩).1 hthreshold
    have hzero : G.dByCoord 0 5 = 0 := by
      simpa [HexadecimaryFourTwoProfileGraph.sortedCoord0SupportLeFive] using hsupport
    have hthresholdNat : 6 ≤ 5 + G.dByCoord 0 5 := by
      simpa using hthreshold'
    rw [hzero] at hthresholdNat
    omega
  simpa [LRATNative.rawClauseToSat, rawNegThresholdLiteral_eq] using hclause

theorem HexadecimaryFourTwoProfileGraph.supportValuation_satisfies_coverageClauses
    (G : HexadecimaryFourTwoProfileGraph) :
    Sat.Valuation.satisfies_fmla G.supportValuation
      (HexadecimaryFourTwoSupportDirect.coverageClauses.map
        LRATNative.rawClauseToSat) := by
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨rawClause, hraw, rfl⟩
  simp [HexadecimaryFourTwoSupportDirect.coverageClauses,
    HexadecimaryFourTwoSupportDirect.q, List.mem_flatMap, List.mem_map,
    List.mem_range] at hraw
  rcases hraw with ⟨a, ha, b, hb, c, hc, d, hd, hrawEq⟩
  rw [← hrawEq]
  exact
    G.supportValuation_satisfies_coverageClause
      ⟨a, by omega⟩ ⟨b, by omega⟩ ⟨c, by omega⟩ ⟨d, by omega⟩

theorem HexadecimaryFourTwoProfileGraph.supportValuation_satisfies_sortedThresholdProfileClauses
    (G : HexadecimaryFourTwoProfileGraph)
    (hsorted : G.sortedExcessProfiles) :
    Sat.Valuation.satisfies_fmla G.supportValuation
      (HexadecimaryFourTwoSupportDirect.sortedThresholdProfileClauses.map
        LRATNative.rawClauseToSat) := by
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨rawClause, hraw, rfl⟩
  simp [HexadecimaryFourTwoSupportDirect.sortedThresholdProfileClauses,
    HexadecimaryFourTwoSupportDirect.coordCount,
    HexadecimaryFourTwoSupportDirect.q,
    HexadecimaryFourTwoSupportDirect.thresholdCount,
    List.mem_flatMap, List.mem_map, List.mem_range] at hraw
  rcases hraw with ⟨coord, hcoord, prev, hprev, off, hoff, hrawEq⟩
  rw [← hrawEq]
  exact
    G.supportValuation_satisfies_sortedThresholdClause hsorted
      ⟨coord, by omega⟩ ⟨prev, by omega⟩ ⟨off, by omega⟩

theorem HexadecimaryFourTwoProfileGraph.supportValuation_satisfies_sortedCoord0SupportLeFiveClauses
    (G : HexadecimaryFourTwoProfileGraph)
    (hsupport : G.sortedCoord0SupportLeFive) :
    Sat.Valuation.satisfies_fmla G.supportValuation
      (HexadecimaryFourTwoSupportDirect.sortedSupportLe5Coord0Clauses.map
        LRATNative.rawClauseToSat) := by
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨rawClause, hraw, rfl⟩
  simp [HexadecimaryFourTwoSupportDirect.sortedSupportLe5Coord0Clauses] at hraw
  rw [hraw]
  exact G.supportValuation_satisfies_sortedCoord0SupportLeFiveClause hsupport

theorem HexadecimaryFourTwoProfileGraph.supportValuation_satisfies_supportSortedCoord0SequentialCnf
    (G : HexadecimaryFourTwoProfileGraph)
    (hsorted : G.sortedExcessProfiles)
    (hsupport : G.sortedCoord0SupportLeFive) :
    Sat.Valuation.satisfies_fmla G.supportValuation
      (LRATNative.rawCnfToSat
        HexadecimaryFourTwoSupportDirect.supportSortedCoord0SequentialCnf) := by
  have hcoverage := G.supportValuation_satisfies_coverageClauses
  have hthreshold := G.supportValuation_satisfies_thresholdSequentialClauses
  have hbudget := G.supportValuation_satisfies_budgetSequentialClauses
  have hsortedClauses :=
    G.supportValuation_satisfies_sortedThresholdProfileClauses hsorted
  have hsupportClauses :=
    G.supportValuation_satisfies_sortedCoord0SupportLeFiveClauses hsupport
  have hleft :=
    valuation_satisfies_fmla_append hcoverage hthreshold
  have hleft :=
    valuation_satisfies_fmla_append hleft hbudget
  have hleft :=
    valuation_satisfies_fmla_append hleft hsortedClauses
  have hall :=
    valuation_satisfies_fmla_append hleft hsupportClauses
  simpa [LRATNative.rawCnfToSat,
    HexadecimaryFourTwoSupportDirect.supportSortedCoord0SequentialCnf_toList_eq_sections,
    List.map_append, List.append_assoc] using hall

end Database
end CoveringCodes
