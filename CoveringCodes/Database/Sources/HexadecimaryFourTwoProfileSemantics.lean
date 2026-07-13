import CoveringCodes.Database.Sources.HexadecimaryFourTwoLowerSemantics
import CoveringCodes.Database.Sources.HexadecimaryFourTwoProfileDirect

/-!
# Semantic bridge for the K16 profile CNFs

This file starts the bridge from abstract K16 profile graphs to valuations of
the direct raw CNFs generated in `HexadecimaryFourTwoProfileDirect`.
-/

namespace CoveringCodes
namespace Database

def fin16OfNatMod (n : Nat) : Fin 16 :=
  ⟨n % 16, by omega⟩

@[simp] theorem fin16OfNatMod_val (a : Fin 16) :
    fin16OfNatMod a.val = a := by
  ext
  simp [fin16OfNatMod, Nat.mod_eq_of_lt a.isLt]

@[simp] theorem fin16_mk_mod_val (a : Fin 16) (h : a.val % 16 < 16) :
    (⟨a.val % 16, h⟩ : Fin 16) = a := by
  ext
  simp [Nat.mod_eq_of_lt a.isLt]

def HexadecimaryFourTwoProfileGraph.edgeByPairIndex
    (G : HexadecimaryFourTwoProfileGraph)
    (pairIndex row col : Nat) : Prop :=
  match pairIndex with
  | 0 => G.E01 (fin16OfNatMod row) (fin16OfNatMod col) = true
  | 1 => G.E02 (fin16OfNatMod row) (fin16OfNatMod col) = true
  | 2 => G.E03 (fin16OfNatMod row) (fin16OfNatMod col) = true
  | 3 => G.E12 (fin16OfNatMod row) (fin16OfNatMod col) = true
  | 4 => G.E13 (fin16OfNatMod row) (fin16OfNatMod col) = true
  | 5 => G.E23 (fin16OfNatMod row) (fin16OfNatMod col) = true
  | _ => False

def HexadecimaryFourTwoProfileGraph.edgeByPairIndexBool
    (G : HexadecimaryFourTwoProfileGraph)
    (pairIndex row col : Nat) : Bool :=
  match pairIndex with
  | 0 => G.E01 (fin16OfNatMod row) (fin16OfNatMod col)
  | 1 => G.E02 (fin16OfNatMod row) (fin16OfNatMod col)
  | 2 => G.E03 (fin16OfNatMod row) (fin16OfNatMod col)
  | 3 => G.E12 (fin16OfNatMod row) (fin16OfNatMod col)
  | 4 => G.E13 (fin16OfNatMod row) (fin16OfNatMod col)
  | 5 => G.E23 (fin16OfNatMod row) (fin16OfNatMod col)
  | _ => false

def HexadecimaryFourTwoProfileGraph.edgeValuation
    (G : HexadecimaryFourTwoProfileGraph) : Sat.Valuation :=
  fun idx =>
    G.edgeByPairIndex (idx / (16 * 16)) ((idx % (16 * 16)) / 16) (idx % 16)

def HexadecimaryFourTwoProfileGraph.counterInputTrue
    (G : HexadecimaryFourTwoProfileGraph)
    (pairIndex : Nat) (isCol : Bool) (symbol idx : Nat) : Bool :=
  if isCol then
    !(G.edgeByPairIndexBool pairIndex idx symbol)
  else
    !(G.edgeByPairIndexBool pairIndex symbol idx)

def HexadecimaryFourTwoProfileGraph.counterPrefixFalseCount
    (G : HexadecimaryFourTwoProfileGraph)
    (pairIndex : Nat) (isCol : Bool) (symbol : Nat) : Nat → Nat
  | 0 => 0
  | n + 1 =>
      G.counterPrefixFalseCount pairIndex isCol symbol n +
        if G.counterInputTrue pairIndex isCol symbol n then 1 else 0

def HexadecimaryFourTwoProfileGraph.lowerProfileFalseBound
    (G : HexadecimaryFourTwoProfileGraph) : Prop :=
  ∀ pairIndex isCol symbol,
    pairIndex < HexadecimaryFourTwoProfileDirect.pairCount →
    symbol < HexadecimaryFourTwoProfileDirect.q →
    G.counterPrefixFalseCount pairIndex isCol symbol
        HexadecimaryFourTwoProfileDirect.q ≤
      HexadecimaryFourTwoProfileDirect.counterFalseBound symbol

def canonicalBalancedExcess16 (a : Fin 16) : Nat :=
  if a.val < 6 then 1 else 0

def HexadecimaryFourTwoProfileGraph.canonicalBalanced
    (G : HexadecimaryFourTwoProfileGraph) : Prop :=
  (∀ a, G.d0 a = canonicalBalancedExcess16 a) ∧
  (∀ a, G.d1 a = canonicalBalancedExcess16 a) ∧
  (∀ a, G.d2 a = canonicalBalancedExcess16 a) ∧
  (∀ a, G.d3 a = canonicalBalancedExcess16 a)

theorem profileDirect_rowBound_eq_canonicalBalancedMissingLower16
    (a : Fin 16) :
    HexadecimaryFourTwoProfileDirect.rowBound a.val =
      11 - canonicalBalancedExcess16 a := by
  fin_cases a <;> native_decide

theorem profileDirect_counterFalseBound_eq_canonicalBalancedFalseUpper16
    (a : Fin 16) :
    HexadecimaryFourTwoProfileDirect.counterFalseBound a.val =
      5 + canonicalBalancedExcess16 a := by
  fin_cases a <;> native_decide

def lowerProfileAuxSymbol (remSide : Nat) : Nat :=
  if remSide < 540 then remSide / 90 else 6 + (remSide - 540) / 75

def lowerProfileAuxWithinSymbol (remSide : Nat) : Nat :=
  if remSide < 540 then remSide % 90 else (remSide - 540) % 75

def HexadecimaryFourTwoProfileGraph.profileValuation
    (G : HexadecimaryFourTwoProfileGraph) : Sat.Valuation :=
  fun idx =>
    if idx < HexadecimaryFourTwoProfileDirect.edgeVarCount then
      G.edgeValuation idx
    else
      let off := idx - HexadecimaryFourTwoProfileDirect.edgeVarCount
      let pairIndex := off / HexadecimaryFourTwoProfileDirect.pairLowerProfileAuxCount
      let remPair := off % HexadecimaryFourTwoProfileDirect.pairLowerProfileAuxCount
      let isCol := decide (HexadecimaryFourTwoProfileDirect.rowCounterAuxTotal ≤ remPair)
      let remSide :=
        if isCol then
          remPair - HexadecimaryFourTwoProfileDirect.rowCounterAuxTotal
        else
          remPair
      let symbol := lowerProfileAuxSymbol remSide
      let within := lowerProfileAuxWithinSymbol remSide
      let bound := HexadecimaryFourTwoProfileDirect.counterFalseBound symbol
      let i := within / bound + 1
      let j := within % bound + 1
      j ≤ G.counterPrefixFalseCount pairIndex isCol symbol i

@[simp] private theorem direct_pairCount_eq :
    HexadecimaryFourTwoProfileDirect.pairCount = 6 := by
  native_decide

@[simp] private theorem direct_q_eq :
    HexadecimaryFourTwoProfileDirect.q = 16 := by
  native_decide

@[simp] private theorem direct_edgeVarCount_eq :
    HexadecimaryFourTwoProfileDirect.edgeVarCount = 1536 := by
  native_decide

@[simp] private theorem direct_rowCounterAuxTotal_eq :
    HexadecimaryFourTwoProfileDirect.rowCounterAuxTotal = 1290 := by
  native_decide

@[simp] private theorem direct_pairLowerProfileAuxCount_eq :
    HexadecimaryFourTwoProfileDirect.pairLowerProfileAuxCount = 2580 := by
  native_decide

theorem HexadecimaryFourTwoProfileGraph.counterPrefixFalseCount_succ_of_input
    (G : HexadecimaryFourTwoProfileGraph)
    (pairIndex : Nat) (isCol : Bool) (symbol n : Nat)
    (h : G.counterInputTrue pairIndex isCol symbol n = true) :
    G.counterPrefixFalseCount pairIndex isCol symbol (n + 1) =
      G.counterPrefixFalseCount pairIndex isCol symbol n + 1 := by
  simp [HexadecimaryFourTwoProfileGraph.counterPrefixFalseCount, h]

theorem HexadecimaryFourTwoProfileGraph.counterPrefixFalseCount_succ_le
    (G : HexadecimaryFourTwoProfileGraph)
    (pairIndex : Nat) (isCol : Bool) (symbol n : Nat) :
    G.counterPrefixFalseCount pairIndex isCol symbol n ≤
      G.counterPrefixFalseCount pairIndex isCol symbol (n + 1) := by
  cases h : G.counterInputTrue pairIndex isCol symbol n <;>
    simp [HexadecimaryFourTwoProfileGraph.counterPrefixFalseCount, h]

theorem HexadecimaryFourTwoProfileGraph.counterPrefixFalseCount_mono
    (G : HexadecimaryFourTwoProfileGraph)
    (pairIndex : Nat) (isCol : Bool) (symbol : Nat)
    {m n : Nat} (h : m ≤ n) :
    G.counterPrefixFalseCount pairIndex isCol symbol m ≤
      G.counterPrefixFalseCount pairIndex isCol symbol n := by
  induction n generalizing m with
  | zero =>
      have hm : m = 0 := by omega
      subst hm
      exact le_rfl
  | succ n ih =>
      by_cases hm : m ≤ n
      · exact le_trans (ih hm)
          (G.counterPrefixFalseCount_succ_le pairIndex isCol symbol n)
      · have hm' : m = n + 1 := by omega
        subst hm'
        exact le_rfl

theorem HexadecimaryFourTwoProfileGraph.counterPrefixFalseCount_pos_of_input
    (G : HexadecimaryFourTwoProfileGraph)
    (pairIndex : Nat) (isCol : Bool) (symbol i : Nat)
    (hi : 0 < i)
    (h : G.counterInputTrue pairIndex isCol symbol (i - 1) = true) :
    1 ≤ G.counterPrefixFalseCount pairIndex isCol symbol i := by
  have hi_eq : i = (i - 1) + 1 := by omega
  rw [hi_eq]
  rw [G.counterPrefixFalseCount_succ_of_input pairIndex isCol symbol (i - 1) h]
  omega

private def boolFin16List (f : Fin 16 → Bool) : List Bool :=
  [f 0, f 1, f 2, f 3, f 4, f 5, f 6, f 7,
   f 8, f 9, f 10, f 11, f 12, f 13, f 14, f 15]

private theorem boolFin16_true_count_eq_card_filter
    (f : Fin 16 → Bool) :
    ((boolFin16List f).filter (fun b => b = true)).length =
      (Finset.univ.filter (fun i : Fin 16 => f i = true)).card := by
  have hmap : boolFin16List f = (List.finRange 16).map f := by
    simp [boolFin16List, List.finRange_succ]
  rw [hmap]
  rw [Fin.univ_def 16]
  simp [Finset.card, Finset.filter, ← List.countP_eq_length_filter, List.countP_map,
    Function.comp_def]

private theorem boolFin16_true_count_add_false_count
    (f : Fin 16 → Bool) :
    ((boolFin16List f).filter (fun b => b = true)).length +
      ((boolFin16List (fun i => !(f i))).filter (fun b => b = true)).length =
        16 := by
  rw [boolFin16_true_count_eq_card_filter f]
  rw [boolFin16_true_count_eq_card_filter (fun i => !(f i))]
  simpa using
    (Finset.card_filter_add_card_filter_not
      (s := (Finset.univ : Finset (Fin 16))) (p := fun i : Fin 16 => f i = true))

private theorem boolFin16_true_count_eq_counter_sum
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
      ((boolFin16List f).filter (fun b => b = true)).length := by
  simp [boolFin16List, ← List.countP_eq_length_filter, List.countP_cons]
  omega

private theorem boolFin16_false_count_le_counterFalseBound_of_true_count_ge
    (f : Fin 16 → Bool)
    (symbol : Fin 16)
    (hcount :
      HexadecimaryFourTwoProfileDirect.rowBound symbol.val ≤
        (Finset.univ.filter (fun i : Fin 16 => f i = true)).card) :
    ((boolFin16List (fun i => !(f i))).filter (fun b => b = true)).length ≤
      HexadecimaryFourTwoProfileDirect.counterFalseBound symbol.val := by
  have htrue_eq := boolFin16_true_count_eq_card_filter f
  have htrue_ge :
      HexadecimaryFourTwoProfileDirect.rowBound symbol.val ≤
        ((boolFin16List f).filter (fun b => b = true)).length := by
    rw [htrue_eq]
    exact hcount
  have hsum := boolFin16_true_count_add_false_count f
  rw [profileDirect_rowBound_eq_canonicalBalancedMissingLower16 symbol] at htrue_ge
  rw [profileDirect_counterFalseBound_eq_canonicalBalancedFalseUpper16 symbol]
  omega

private theorem HexadecimaryFourTwoProfileGraph.counterPrefixFalseCount_eq_boolFin16List
    (G : HexadecimaryFourTwoProfileGraph)
    (pairIndex : Nat) (isCol : Bool) (symbol : Nat) :
    G.counterPrefixFalseCount pairIndex isCol symbol 16 =
      ((boolFin16List
        (fun idx : Fin 16 =>
          G.counterInputTrue pairIndex isCol symbol idx.val)).filter
        (fun b => b = true)).length := by
  simpa [boolFin16List, HexadecimaryFourTwoProfileGraph.counterPrefixFalseCount]
    using
      (boolFin16_true_count_eq_counter_sum
        (fun idx : Fin 16 =>
          G.counterInputTrue pairIndex isCol symbol idx.val))

private theorem HexadecimaryFourTwoProfileGraph.counterPrefixFalseCount_bound_of_canonicalBalanced
    (G : HexadecimaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (pairIndex : Fin 6)
    (isCol : Bool)
    (symbol : Fin 16) :
    G.counterPrefixFalseCount pairIndex.val isCol symbol.val 16 ≤
      HexadecimaryFourTwoProfileDirect.counterFalseBound symbol.val := by
  fin_cases pairIndex <;> cases isCol
  · have hcount :
        HexadecimaryFourTwoProfileDirect.rowBound symbol.val ≤
          (Finset.univ.filter
            (fun col : Fin 16 => G.E01 symbol col = true)).card := by
      have h := G.row01 symbol
      rw [hbal.1 symbol] at h
      simpa [profileDirect_rowBound_eq_canonicalBalancedMissingLower16 symbol] using h
    have hfalse :=
      boolFin16_false_count_le_counterFalseBound_of_true_count_ge
        (fun col : Fin 16 => G.E01 symbol col) symbol hcount
    rw [G.counterPrefixFalseCount_eq_boolFin16List]
    simpa [boolFin16List, HexadecimaryFourTwoProfileGraph.counterInputTrue,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndexBool, fin16OfNatMod] using hfalse
  · have hcount :
        HexadecimaryFourTwoProfileDirect.rowBound symbol.val ≤
          (Finset.univ.filter
            (fun row : Fin 16 => G.E01 row symbol = true)).card := by
      have h := G.col01 symbol
      rw [hbal.2.1 symbol] at h
      simpa [profileDirect_rowBound_eq_canonicalBalancedMissingLower16 symbol] using h
    have hfalse :=
      boolFin16_false_count_le_counterFalseBound_of_true_count_ge
        (fun row : Fin 16 => G.E01 row symbol) symbol hcount
    rw [G.counterPrefixFalseCount_eq_boolFin16List]
    simpa [boolFin16List, HexadecimaryFourTwoProfileGraph.counterInputTrue,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndexBool, fin16OfNatMod] using hfalse
  · have hcount :
        HexadecimaryFourTwoProfileDirect.rowBound symbol.val ≤
          (Finset.univ.filter
            (fun col : Fin 16 => G.E02 symbol col = true)).card := by
      have h := G.row02 symbol
      rw [hbal.1 symbol] at h
      simpa [profileDirect_rowBound_eq_canonicalBalancedMissingLower16 symbol] using h
    have hfalse :=
      boolFin16_false_count_le_counterFalseBound_of_true_count_ge
        (fun col : Fin 16 => G.E02 symbol col) symbol hcount
    rw [G.counterPrefixFalseCount_eq_boolFin16List]
    simpa [boolFin16List, HexadecimaryFourTwoProfileGraph.counterInputTrue,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndexBool, fin16OfNatMod] using hfalse
  · have hcount :
        HexadecimaryFourTwoProfileDirect.rowBound symbol.val ≤
          (Finset.univ.filter
            (fun row : Fin 16 => G.E02 row symbol = true)).card := by
      have h := G.col02 symbol
      rw [hbal.2.2.1 symbol] at h
      simpa [profileDirect_rowBound_eq_canonicalBalancedMissingLower16 symbol] using h
    have hfalse :=
      boolFin16_false_count_le_counterFalseBound_of_true_count_ge
        (fun row : Fin 16 => G.E02 row symbol) symbol hcount
    rw [G.counterPrefixFalseCount_eq_boolFin16List]
    simpa [boolFin16List, HexadecimaryFourTwoProfileGraph.counterInputTrue,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndexBool, fin16OfNatMod] using hfalse
  · have hcount :
        HexadecimaryFourTwoProfileDirect.rowBound symbol.val ≤
          (Finset.univ.filter
            (fun col : Fin 16 => G.E03 symbol col = true)).card := by
      have h := G.row03 symbol
      rw [hbal.1 symbol] at h
      simpa [profileDirect_rowBound_eq_canonicalBalancedMissingLower16 symbol] using h
    have hfalse :=
      boolFin16_false_count_le_counterFalseBound_of_true_count_ge
        (fun col : Fin 16 => G.E03 symbol col) symbol hcount
    rw [G.counterPrefixFalseCount_eq_boolFin16List]
    simpa [boolFin16List, HexadecimaryFourTwoProfileGraph.counterInputTrue,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndexBool, fin16OfNatMod] using hfalse
  · have hcount :
        HexadecimaryFourTwoProfileDirect.rowBound symbol.val ≤
          (Finset.univ.filter
            (fun row : Fin 16 => G.E03 row symbol = true)).card := by
      have h := G.col03 symbol
      rw [hbal.2.2.2 symbol] at h
      simpa [profileDirect_rowBound_eq_canonicalBalancedMissingLower16 symbol] using h
    have hfalse :=
      boolFin16_false_count_le_counterFalseBound_of_true_count_ge
        (fun row : Fin 16 => G.E03 row symbol) symbol hcount
    rw [G.counterPrefixFalseCount_eq_boolFin16List]
    simpa [boolFin16List, HexadecimaryFourTwoProfileGraph.counterInputTrue,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndexBool, fin16OfNatMod] using hfalse
  · have hcount :
        HexadecimaryFourTwoProfileDirect.rowBound symbol.val ≤
          (Finset.univ.filter
            (fun col : Fin 16 => G.E12 symbol col = true)).card := by
      have h := G.row12 symbol
      rw [hbal.2.1 symbol] at h
      simpa [profileDirect_rowBound_eq_canonicalBalancedMissingLower16 symbol] using h
    have hfalse :=
      boolFin16_false_count_le_counterFalseBound_of_true_count_ge
        (fun col : Fin 16 => G.E12 symbol col) symbol hcount
    rw [G.counterPrefixFalseCount_eq_boolFin16List]
    simpa [boolFin16List, HexadecimaryFourTwoProfileGraph.counterInputTrue,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndexBool, fin16OfNatMod] using hfalse
  · have hcount :
        HexadecimaryFourTwoProfileDirect.rowBound symbol.val ≤
          (Finset.univ.filter
            (fun row : Fin 16 => G.E12 row symbol = true)).card := by
      have h := G.col12 symbol
      rw [hbal.2.2.1 symbol] at h
      simpa [profileDirect_rowBound_eq_canonicalBalancedMissingLower16 symbol] using h
    have hfalse :=
      boolFin16_false_count_le_counterFalseBound_of_true_count_ge
        (fun row : Fin 16 => G.E12 row symbol) symbol hcount
    rw [G.counterPrefixFalseCount_eq_boolFin16List]
    simpa [boolFin16List, HexadecimaryFourTwoProfileGraph.counterInputTrue,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndexBool, fin16OfNatMod] using hfalse
  · have hcount :
        HexadecimaryFourTwoProfileDirect.rowBound symbol.val ≤
          (Finset.univ.filter
            (fun col : Fin 16 => G.E13 symbol col = true)).card := by
      have h := G.row13 symbol
      rw [hbal.2.1 symbol] at h
      simpa [profileDirect_rowBound_eq_canonicalBalancedMissingLower16 symbol] using h
    have hfalse :=
      boolFin16_false_count_le_counterFalseBound_of_true_count_ge
        (fun col : Fin 16 => G.E13 symbol col) symbol hcount
    rw [G.counterPrefixFalseCount_eq_boolFin16List]
    simpa [boolFin16List, HexadecimaryFourTwoProfileGraph.counterInputTrue,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndexBool, fin16OfNatMod] using hfalse
  · have hcount :
        HexadecimaryFourTwoProfileDirect.rowBound symbol.val ≤
          (Finset.univ.filter
            (fun row : Fin 16 => G.E13 row symbol = true)).card := by
      have h := G.col13 symbol
      rw [hbal.2.2.2 symbol] at h
      simpa [profileDirect_rowBound_eq_canonicalBalancedMissingLower16 symbol] using h
    have hfalse :=
      boolFin16_false_count_le_counterFalseBound_of_true_count_ge
        (fun row : Fin 16 => G.E13 row symbol) symbol hcount
    rw [G.counterPrefixFalseCount_eq_boolFin16List]
    simpa [boolFin16List, HexadecimaryFourTwoProfileGraph.counterInputTrue,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndexBool, fin16OfNatMod] using hfalse
  · have hcount :
        HexadecimaryFourTwoProfileDirect.rowBound symbol.val ≤
          (Finset.univ.filter
            (fun col : Fin 16 => G.E23 symbol col = true)).card := by
      have h := G.row23 symbol
      rw [hbal.2.2.1 symbol] at h
      simpa [profileDirect_rowBound_eq_canonicalBalancedMissingLower16 symbol] using h
    have hfalse :=
      boolFin16_false_count_le_counterFalseBound_of_true_count_ge
        (fun col : Fin 16 => G.E23 symbol col) symbol hcount
    rw [G.counterPrefixFalseCount_eq_boolFin16List]
    simpa [boolFin16List, HexadecimaryFourTwoProfileGraph.counterInputTrue,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndexBool, fin16OfNatMod] using hfalse
  · have hcount :
        HexadecimaryFourTwoProfileDirect.rowBound symbol.val ≤
          (Finset.univ.filter
            (fun row : Fin 16 => G.E23 row symbol = true)).card := by
      have h := G.col23 symbol
      rw [hbal.2.2.2 symbol] at h
      simpa [profileDirect_rowBound_eq_canonicalBalancedMissingLower16 symbol] using h
    have hfalse :=
      boolFin16_false_count_le_counterFalseBound_of_true_count_ge
        (fun row : Fin 16 => G.E23 row symbol) symbol hcount
    rw [G.counterPrefixFalseCount_eq_boolFin16List]
    simpa [boolFin16List, HexadecimaryFourTwoProfileGraph.counterInputTrue,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndexBool, fin16OfNatMod] using hfalse

theorem HexadecimaryFourTwoProfileGraph.lowerProfileFalseBound_of_canonicalBalanced
    (G : HexadecimaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced) :
    G.lowerProfileFalseBound := by
  intro pairIndex isCol symbol hpair hsymbol
  let pairIndex6 : Fin 6 := ⟨pairIndex, by
    simpa [HexadecimaryFourTwoProfileDirect.pairCount] using hpair⟩
  let symbol16 : Fin 16 := ⟨symbol, by
    simpa [HexadecimaryFourTwoProfileDirect.q] using hsymbol⟩
  have h :=
    G.counterPrefixFalseCount_bound_of_canonicalBalanced
      hbal pairIndex6 isCol symbol16
  simpa [pairIndex6, symbol16, HexadecimaryFourTwoProfileDirect.q] using h

set_option maxHeartbeats 0 in
theorem HexadecimaryFourTwoProfileGraph.edgeValuation_edgeVar
    (G : HexadecimaryFourTwoProfileGraph)
    (pairIndex : Fin 6)
    (row col : Fin 16) :
    G.edgeValuation
        (HexadecimaryFourTwoProfileDirect.edgeVar pairIndex.val row.val col.val - 1) ↔
      G.edgeByPairIndex pairIndex.val row.val col.val := by
  fin_cases pairIndex <;> fin_cases row <;> fin_cases col <;>
    simp [HexadecimaryFourTwoProfileGraph.edgeValuation,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndex,
      HexadecimaryFourTwoProfileDirect.edgeVar,
      HexadecimaryFourTwoProfileDirect.q, fin16OfNatMod]

theorem HexadecimaryFourTwoProfileGraph.profileValuation_edgeVar
    (G : HexadecimaryFourTwoProfileGraph)
    (pairIndex : Fin 6)
    (row col : Fin 16) :
    G.profileValuation
        (HexadecimaryFourTwoProfileDirect.edgeVar pairIndex.val row.val col.val - 1) ↔
      G.edgeByPairIndex pairIndex.val row.val col.val := by
  have hlt :
      HexadecimaryFourTwoProfileDirect.edgeVar pairIndex.val row.val col.val - 1 <
        HexadecimaryFourTwoProfileDirect.edgeVarCount := by
    have hp := pairIndex.isLt
    have hr := row.isLt
    have hc := col.isLt
    simp [HexadecimaryFourTwoProfileDirect.edgeVar,
      HexadecimaryFourTwoProfileDirect.edgeVarCount,
      HexadecimaryFourTwoProfileDirect.pairCount,
      HexadecimaryFourTwoProfileDirect.q]
    omega
  have hlt' :
      HexadecimaryFourTwoProfileDirect.edgeVar pairIndex.val row.val col.val - 1 <
        1536 := by
    simpa using hlt
  simp [HexadecimaryFourTwoProfileGraph.profileValuation, hlt',
    G.edgeValuation_edgeVar pairIndex row col]

def seqAuxIndex (first bound i j : Nat) : Nat :=
  first + (i - 1) * bound + (j - 1) - 1

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

private theorem pairBlock_decode (pairIndex : Fin 6) {rem : Nat}
    (hrem : rem < 2580) :
    (pairIndex.val * 2580 + rem) / 2580 = pairIndex.val ∧
      (pairIndex.val * 2580 + rem) % 2580 = rem := by
  exact block_decode 2580 pairIndex.val rem (by decide) hrem

private theorem sideBlock_decode (isCol : Bool) {loc : Nat}
    (hloc : loc < 1290) :
    let remPair := if isCol then 1290 + loc else loc
    decide (1290 ≤ remPair) = isCol ∧
      (if decide (1290 ≤ remPair) then remPair - 1290 else remPair) = loc := by
  cases isCol <;> simp [hloc]

private theorem highSymbolBlock_decode (k w : Nat)
    (hk : k < 6) (hw : w < 90) :
    lowerProfileAuxSymbol (k * 90 + w) = k ∧
      lowerProfileAuxWithinSymbol (k * 90 + w) = w := by
  have hslot := block_decode 90 k w (by decide) hw
  have hlt : k * 90 + w < 540 := by omega
  simp [lowerProfileAuxSymbol, lowerProfileAuxWithinSymbol, hlt,
    hslot.1, hslot.2]

private theorem lowSymbolBlock_decode (k w : Nat)
    (hk : k < 10) (hw : w < 75) :
    lowerProfileAuxSymbol (540 + k * 75 + w) = 6 + k ∧
      lowerProfileAuxWithinSymbol (540 + k * 75 + w) = w := by
  have hslot := block_decode 75 k w (by decide) hw
  have hnot : ¬ 540 + k * 75 + w < 540 := by omega
  have hsub : 540 + k * 75 + w - 540 = k * 75 + w := by omega
  simp [lowerProfileAuxSymbol, lowerProfileAuxWithinSymbol, hnot, hsub,
    hslot.1, hslot.2]

private theorem symbolBlock_decode (symbol : Fin 16) {w : Nat}
    (hw : w < HexadecimaryFourTwoProfileDirect.counterAuxCount symbol.val) :
    let loc := HexadecimaryFourTwoProfileDirect.symbolAuxPrefix symbol.val + w
    lowerProfileAuxSymbol loc = symbol.val ∧
      lowerProfileAuxWithinSymbol loc = w := by
  fin_cases symbol <;>
    simp [HexadecimaryFourTwoProfileDirect.symbolAuxPrefix,
      HexadecimaryFourTwoProfileDirect.counterAuxCount,
      HexadecimaryFourTwoProfileDirect.atMostSeqAuxCount,
      HexadecimaryFourTwoProfileDirect.rowLits,
      HexadecimaryFourTwoProfileDirect.q] at hw ⊢
  · simpa using highSymbolBlock_decode 0 w (by decide) hw
  · simpa using highSymbolBlock_decode 1 w (by decide) hw
  · simpa using highSymbolBlock_decode 2 w (by decide) hw
  · simpa using highSymbolBlock_decode 3 w (by decide) hw
  · simpa using highSymbolBlock_decode 4 w (by decide) hw
  · simpa using highSymbolBlock_decode 5 w (by decide) hw
  · simpa using lowSymbolBlock_decode 0 w (by decide) hw
  · simpa [Nat.add_assoc] using lowSymbolBlock_decode 1 w (by decide) hw
  · simpa [Nat.add_assoc] using lowSymbolBlock_decode 2 w (by decide) hw
  · simpa [Nat.add_assoc] using lowSymbolBlock_decode 3 w (by decide) hw
  · simpa [Nat.add_assoc] using lowSymbolBlock_decode 4 w (by decide) hw
  · simpa [Nat.add_assoc] using lowSymbolBlock_decode 5 w (by decide) hw
  · simpa [Nat.add_assoc] using lowSymbolBlock_decode 6 w (by decide) hw
  · simpa [Nat.add_assoc] using lowSymbolBlock_decode 7 w (by decide) hw
  · simpa [Nat.add_assoc] using lowSymbolBlock_decode 8 w (by decide) hw
  · simpa [Nat.add_assoc] using lowSymbolBlock_decode 9 w (by decide) hw

set_option maxHeartbeats 0 in
theorem HexadecimaryFourTwoProfileGraph.profileValuation_seqAuxIndex
    (G : HexadecimaryFourTwoProfileGraph)
    (pairIndex : Fin 6)
    (isCol : Bool)
    (symbol : Fin 16)
    (i j : Nat)
    (hi0 : 0 < i) (hi : i < 16)
    (hj0 : 0 < j)
    (hj : j ≤ HexadecimaryFourTwoProfileDirect.counterFalseBound symbol.val) :
    G.profileValuation
        (seqAuxIndex
          (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
            pairIndex.val isCol symbol.val)
          (HexadecimaryFourTwoProfileDirect.counterFalseBound symbol.val)
          i j) ↔
      j ≤ G.counterPrefixFalseCount pairIndex.val isCol symbol.val i := by
    let bound := HexadecimaryFourTwoProfileDirect.counterFalseBound symbol.val
    let w := (i - 1) * bound + (j - 1)
    let loc := HexadecimaryFourTwoProfileDirect.symbolAuxPrefix symbol.val + w
    let rem := if isCol then 1290 + loc else loc
    let off := pairIndex.val * 2580 + rem
    have hbound_pos : 0 < bound := by
      dsimp [bound, HexadecimaryFourTwoProfileDirect.counterFalseBound,
        HexadecimaryFourTwoProfileDirect.rowBound]
      fin_cases symbol <;> native_decide
    have hj_lt_bound : j - 1 < bound := by omega
    have hslot := block_decode bound (i - 1) (j - 1) hbound_pos hj_lt_bound
    have hw_counter :
        w < HexadecimaryFourTwoProfileDirect.counterAuxCount symbol.val := by
      dsimp [w, bound]
      fin_cases symbol <;>
      simp [HexadecimaryFourTwoProfileDirect.counterAuxCount,
        HexadecimaryFourTwoProfileDirect.atMostSeqAuxCount,
        HexadecimaryFourTwoProfileDirect.rowLits,
        HexadecimaryFourTwoProfileDirect.counterFalseBound,
        HexadecimaryFourTwoProfileDirect.rowBound,
        HexadecimaryFourTwoProfileDirect.q] at hj ⊢ <;>
      omega
    have hsym := symbolBlock_decode symbol hw_counter
    have hloc_lt : loc < 1290 := by
      have hprefix :
          HexadecimaryFourTwoProfileDirect.symbolAuxPrefix symbol.val +
              HexadecimaryFourTwoProfileDirect.counterAuxCount symbol.val ≤
            1290 := by
        fin_cases symbol <;> native_decide
      dsimp [loc]
      exact Nat.lt_of_lt_of_le (Nat.add_lt_add_left hw_counter _) hprefix
    have hside := sideBlock_decode isCol hloc_lt
    have hrem_lt : rem < 2580 := by
      cases isCol <;> dsimp [rem] <;> omega
    have hpair := pairBlock_decode pairIndex hrem_lt
    have hpair_off :
        off / 2580 = pairIndex.val ∧ off % 2580 = rem := by
      simpa [off] using hpair
    have hside_rem :
        decide (1290 ≤ rem) = isCol ∧
          (if decide (1290 ≤ rem) then rem - 1290 else rem) = loc := by
      simpa [rem] using hside
    have hremSide_eq : (if isCol then rem - 1290 else rem) = loc := by
      cases isCol <;> simpa [hside_rem.1] using hside_rem.2
    have hsym_loc :
        lowerProfileAuxSymbol loc = symbol.val ∧
          lowerProfileAuxWithinSymbol loc = w := by
      simpa [loc] using hsym
    have hslot_w : w / bound = i - 1 ∧ w % bound = j - 1 := by
      simpa [w] using hslot
    have hidx :
        seqAuxIndex
            (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
              pairIndex.val isCol symbol.val)
            (HexadecimaryFourTwoProfileDirect.counterFalseBound symbol.val)
            i j =
          1536 + off := by
      cases isCol <;> fin_cases symbol <;>
        dsimp [seqAuxIndex, off, rem, loc, w, bound,
          HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst] <;>
        simp [HexadecimaryFourTwoProfileDirect.symbolAuxPrefix,
          HexadecimaryFourTwoProfileDirect.counterFalseBound,
          HexadecimaryFourTwoProfileDirect.rowBound] <;>
        omega
    have hidx_ge : ¬ seqAuxIndex
            (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
              pairIndex.val isCol symbol.val)
            (HexadecimaryFourTwoProfileDirect.counterFalseBound symbol.val)
            i j < 1536 := by
      rw [hidx]
      omega
    have hoff_sub :
        seqAuxIndex
            (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
              pairIndex.val isCol symbol.val)
            (HexadecimaryFourTwoProfileDirect.counterFalseBound symbol.val)
            i j - 1536 = off := by
      rw [hidx]
      omega
    have hi_pred : i - 1 + 1 = i := by omega
    simp [HexadecimaryFourTwoProfileGraph.profileValuation, hidx_ge,
      hoff_sub, hpair_off.1, hpair_off.2, hside_rem.1,
      hremSide_eq, hsym_loc.1, hsym_loc.2, hslot_w.1, hslot_w.2, hi_pred, bound]
    omega

private theorem valuation_satisfies_six_neg
    (v : Sat.Valuation)
    (x01 x02 x03 x12 x13 x23 : Nat)
    (hnot :
      ¬ (v x01 ∧ v x02 ∧ v x03 ∧ v x12 ∧ v x13 ∧ v x23)) :
    Sat.Valuation.satisfies v
      [Sat.Literal.neg x01, Sat.Literal.neg x02, Sat.Literal.neg x03,
       Sat.Literal.neg x12, Sat.Literal.neg x13, Sat.Literal.neg x23] := by
  intro h01 h02 h03 h12 h13 h23
  exact hnot ⟨h01, h02, h03, h12, h13, h23⟩

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

@[simp] private theorem rawPosLiteral_eq (x : Nat) (hx : 0 < x) :
    Sat.Literal.ofInt (x : Int) = Sat.Literal.pos (x - 1) := by
  unfold Sat.Literal.ofInt
  have hnot : ¬ (x : Int) < 0 := by omega
  simp only [hnot, ↓reduceIte]
  congr
  have hEqInt : (x : Int) - 1 = ((x - 1 : Nat) : Int) := by omega
  rw [hEqInt]
  simp

private theorem rowNegLitAt (pairIndex row idx : Nat) (hidx : idx < 16) :
    HexadecimaryFourTwoProfileDirect.litAt
        ((HexadecimaryFourTwoProfileDirect.rowLits pairIndex row).map
          (fun lit => -lit)) idx =
      -HexadecimaryFourTwoProfileDirect.posEdgeLit pairIndex row idx := by
  simp [HexadecimaryFourTwoProfileDirect.litAt,
    HexadecimaryFourTwoProfileDirect.rowLits,
    HexadecimaryFourTwoProfileDirect.q, hidx]

private theorem colNegLitAt (pairIndex col idx : Nat) (hidx : idx < 16) :
    HexadecimaryFourTwoProfileDirect.litAt
        ((HexadecimaryFourTwoProfileDirect.colLits pairIndex col).map
          (fun lit => -lit)) idx =
      -HexadecimaryFourTwoProfileDirect.posEdgeLit pairIndex idx col := by
  simp [HexadecimaryFourTwoProfileDirect.litAt,
    HexadecimaryFourTwoProfileDirect.colLits,
    HexadecimaryFourTwoProfileDirect.q, hidx]

@[simp] private theorem rawPosEdgeLiteral_eq (pairIndex row col : Nat) :
    Sat.Literal.ofInt
        (HexadecimaryFourTwoProfileDirect.posEdgeLit pairIndex row col) =
      Sat.Literal.pos
        (HexadecimaryFourTwoProfileDirect.edgeVar pairIndex row col - 1) := by
  simpa [HexadecimaryFourTwoProfileDirect.posEdgeLit] using
    rawPosLiteral_eq
      (HexadecimaryFourTwoProfileDirect.edgeVar pairIndex row col)
      (by simp [HexadecimaryFourTwoProfileDirect.edgeVar,
        HexadecimaryFourTwoProfileDirect.q])

private theorem lowerProfileCounterFirst_pos
    (pairIndex : Nat) (isCol : Bool) (symbol : Nat) :
    0 <
      HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
        pairIndex isCol symbol := by
  dsimp [HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst]
  omega

private theorem rawPosSeqAuxLiteral_eq
    (first bound i j : Nat) (hfirst : 0 < first) :
    Sat.Literal.ofInt
        (HexadecimaryFourTwoProfileDirect.seqAux first bound i j) =
      Sat.Literal.pos (seqAuxIndex first bound i j) := by
  have hpos : 0 < first + (i - 1) * bound + (j - 1) := by omega
  simpa [HexadecimaryFourTwoProfileDirect.seqAux, seqAuxIndex] using
    rawPosLiteral_eq (first + (i - 1) * bound + (j - 1)) hpos

private theorem rawNegSeqAuxLiteral_eq
    (first bound i j : Nat) (hfirst : 0 < first) :
    Sat.Literal.ofInt
        (-(HexadecimaryFourTwoProfileDirect.seqAux first bound i j)) =
      Sat.Literal.neg (seqAuxIndex first bound i j) := by
  have hpos : 0 < first + (i - 1) * bound + (j - 1) := by omega
  simpa [HexadecimaryFourTwoProfileDirect.seqAux, seqAuxIndex] using
    rawNegLiteral_eq (first + (i - 1) * bound + (j - 1)) hpos

private theorem counterFalseBound_pos (symbol : Fin 16) :
    0 < HexadecimaryFourTwoProfileDirect.counterFalseBound symbol.val := by
  fin_cases symbol <;> native_decide

private theorem edgeByPairIndex_of_bool
    (G : HexadecimaryFourTwoProfileGraph)
    (pairIndex : Fin 6)
    (row col : Nat)
    (h : G.edgeByPairIndexBool pairIndex.val row col = true) :
    G.edgeByPairIndex pairIndex.val row col := by
  fin_cases pairIndex <;>
    simpa [HexadecimaryFourTwoProfileGraph.edgeByPairIndex,
      HexadecimaryFourTwoProfileGraph.edgeByPairIndexBool] using h

private theorem HexadecimaryFourTwoProfileGraph.row_counterInputTrue_of_profile_edge_false
    (G : HexadecimaryFourTwoProfileGraph)
    (pairIndex : Fin 6)
    (row : Fin 16)
    (idx : Nat)
    (hidx : idx < 16)
    (hfalse :
      ¬ G.profileValuation
          (HexadecimaryFourTwoProfileDirect.edgeVar
            pairIndex.val row.val idx - 1)) :
    G.counterInputTrue pairIndex.val false row.val idx = true := by
  cases hbool : G.edgeByPairIndexBool pairIndex.val row.val idx with
  | false =>
      simp [HexadecimaryFourTwoProfileGraph.counterInputTrue, hbool]
  | true =>
      exfalso
      have hedge := edgeByPairIndex_of_bool G pairIndex row.val idx hbool
      have hprofile :
          G.profileValuation
            (HexadecimaryFourTwoProfileDirect.edgeVar
              pairIndex.val row.val idx - 1) :=
        (G.profileValuation_edgeVar pairIndex row ⟨idx, hidx⟩).mpr hedge
      exact hfalse hprofile

private theorem HexadecimaryFourTwoProfileGraph.col_counterInputTrue_of_profile_edge_false
    (G : HexadecimaryFourTwoProfileGraph)
    (pairIndex : Fin 6)
    (col : Fin 16)
    (idx : Nat)
    (hidx : idx < 16)
    (hfalse :
      ¬ G.profileValuation
          (HexadecimaryFourTwoProfileDirect.edgeVar
            pairIndex.val idx col.val - 1)) :
    G.counterInputTrue pairIndex.val true col.val idx = true := by
  cases hbool : G.edgeByPairIndexBool pairIndex.val idx col.val with
  | false =>
      simp [HexadecimaryFourTwoProfileGraph.counterInputTrue, hbool]
  | true =>
      exfalso
      have hedge := edgeByPairIndex_of_bool G pairIndex idx col.val hbool
      have hprofile :
          G.profileValuation
            (HexadecimaryFourTwoProfileDirect.edgeVar
              pairIndex.val idx col.val - 1) :=
        (G.profileValuation_edgeVar pairIndex ⟨idx, hidx⟩ col).mpr hedge
      exact hfalse hprofile

theorem HexadecimaryFourTwoProfileGraph.counterPrefixFalseCount_le_total
    (G : HexadecimaryFourTwoProfileGraph)
    {pairIndex : Nat} {isCol : Bool} {symbol i : Nat}
    (hi : i ≤ HexadecimaryFourTwoProfileDirect.q)
    (hbound : G.lowerProfileFalseBound)
    (hpair : pairIndex < HexadecimaryFourTwoProfileDirect.pairCount)
    (hsymbol : symbol < HexadecimaryFourTwoProfileDirect.q) :
    G.counterPrefixFalseCount pairIndex isCol symbol i ≤
      HexadecimaryFourTwoProfileDirect.counterFalseBound symbol :=
  le_trans
    (G.counterPrefixFalseCount_mono pairIndex isCol symbol hi)
    (hbound pairIndex isCol symbol hpair hsymbol)

private theorem HexadecimaryFourTwoProfileGraph.profileValuation_satisfies_lowerProfileRowSeqClauses
    (G : HexadecimaryFourTwoProfileGraph)
    (hbound : G.lowerProfileFalseBound)
    (pairIndex : Fin 6)
    (row : Fin 16) :
    Sat.Valuation.satisfies_fmla G.profileValuation
      ((HexadecimaryFourTwoProfileDirect.atMostSeqClausesWithAux
          (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
            pairIndex.val false row.val)
          ((HexadecimaryFourTwoProfileDirect.rowLits
            pairIndex.val row.val).map (fun lit => -lit))
          (HexadecimaryFourTwoProfileDirect.counterFalseBound row.val)).map
        LRATNative.rawClauseToSat) := by
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨rawClause, hraw, rfl⟩
  have hfirst :
      0 <
        HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
          pairIndex.val false row.val :=
    lowerProfileCounterFirst_pos pairIndex.val false row.val
  have hpair : pairIndex.val < HexadecimaryFourTwoProfileDirect.pairCount := by
    simp [HexadecimaryFourTwoProfileDirect.pairCount]
  have hrow : row.val < HexadecimaryFourTwoProfileDirect.q := by
    simp [HexadecimaryFourTwoProfileDirect.q]
  have hbound_pos : 0 < HexadecimaryFourTwoProfileDirect.counterFalseBound row.val :=
    counterFalseBound_pos row
  simp only [HexadecimaryFourTwoProfileDirect.atMostSeqClausesWithAux,
    List.mem_append, List.mem_map, List.mem_flatMap, List.mem_range] at hraw
  rcases hraw with ((hfirstClause | hmonoClause) | hoverflowClause) | hstepClause
  · rcases hfirstClause with ⟨i0, hi0Range, hrawEq⟩
    rw [← hrawEq]
    have hi0_lt15 : i0 < 15 := by
      simp [HexadecimaryFourTwoProfileDirect.rowLits,
        HexadecimaryFourTwoProfileDirect.q] at hi0Range
      omega
    have hi0_lt16 : i0 < 16 := by omega
    have hi_pos : 0 < i0 + 1 := by omega
    have hi_lt : i0 + 1 < 16 := by omega
    have hj_pos : 0 < 1 := by decide
    have hj_le : 1 ≤ HexadecimaryFourTwoProfileDirect.counterFalseBound row.val :=
      hbound_pos
    have hidx : i0 + 1 - 1 = i0 := by omega
    have hEdgeLit :
        Sat.Literal.ofInt
            (-HexadecimaryFourTwoProfileDirect.litAt
              ((HexadecimaryFourTwoProfileDirect.rowLits
                pairIndex.val row.val).map (fun lit => -lit)) i0) =
          Sat.Literal.pos
            (HexadecimaryFourTwoProfileDirect.edgeVar
              pairIndex.val row.val i0 - 1) := by
      rw [rowNegLitAt pairIndex.val row.val i0 hi0_lt16]
      simpa [HexadecimaryFourTwoProfileDirect.posEdgeLit] using
        rawPosLiteral_eq
          (HexadecimaryFourTwoProfileDirect.edgeVar pairIndex.val row.val i0)
          (by simp [HexadecimaryFourTwoProfileDirect.edgeVar,
            HexadecimaryFourTwoProfileDirect.q])
    have hAuxLit :
        Sat.Literal.ofInt
            (HexadecimaryFourTwoProfileDirect.seqAux
              (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
                pairIndex.val false row.val)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound row.val)
              (i0 + 1) 1) =
          Sat.Literal.pos
            (seqAuxIndex
              (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
                pairIndex.val false row.val)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound row.val)
              (i0 + 1) 1) :=
      rawPosSeqAuxLiteral_eq _ _ _ _ hfirst
    simp [LRATNative.rawClauseToSat, hidx, hEdgeLit, hAuxLit]
    intro hedgeFalse hauxFalse
    have hinput :=
      G.row_counterInputTrue_of_profile_edge_false pairIndex row i0 hi0_lt16
        hedgeFalse
    have hcount :=
      G.counterPrefixFalseCount_pos_of_input
        pairIndex.val false row.val (i0 + 1) hi_pos hinput
    have haux :=
      (G.profileValuation_seqAuxIndex pairIndex false row (i0 + 1) 1
        hi_pos hi_lt hj_pos hj_le).mpr hcount
    exact hauxFalse haux
  · rcases hmonoClause with ⟨i0, hi0Range, j0, hj0Range, hrawEq⟩
    rw [← hrawEq]
    have hi0_lt14 : i0 < 14 := by
      simp [HexadecimaryFourTwoProfileDirect.rowLits,
        HexadecimaryFourTwoProfileDirect.q] at hi0Range
      omega
    have hj0_lt : j0 < HexadecimaryFourTwoProfileDirect.counterFalseBound row.val :=
      hj0Range
    have hiPrev_pos : 0 < i0 + 1 := by omega
    have hiPrev_lt : i0 + 1 < 16 := by omega
    have hiCurr_pos : 0 < i0 + 2 := by omega
    have hiCurr_lt : i0 + 2 < 16 := by omega
    have hj_pos : 0 < j0 + 1 := by omega
    have hj_le : j0 + 1 ≤ HexadecimaryFourTwoProfileDirect.counterFalseBound row.val := by
      omega
    have hiPrevIdx : i0 + 2 - 1 = i0 + 1 := by omega
    have hPrevLit :
        Sat.Literal.ofInt
            (-(HexadecimaryFourTwoProfileDirect.seqAux
              (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
                pairIndex.val false row.val)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound row.val)
              (i0 + 1) (j0 + 1))) =
          Sat.Literal.neg
            (seqAuxIndex
              (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
                pairIndex.val false row.val)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound row.val)
              (i0 + 1) (j0 + 1)) :=
      rawNegSeqAuxLiteral_eq _ _ _ _ hfirst
    have hCurrLit :
        Sat.Literal.ofInt
            (HexadecimaryFourTwoProfileDirect.seqAux
              (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
                pairIndex.val false row.val)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound row.val)
              (i0 + 2) (j0 + 1)) =
          Sat.Literal.pos
            (seqAuxIndex
              (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
                pairIndex.val false row.val)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound row.val)
              (i0 + 2) (j0 + 1)) :=
      rawPosSeqAuxLiteral_eq _ _ _ _ hfirst
    simp [LRATNative.rawClauseToSat, hiPrevIdx, hPrevLit, hCurrLit]
    intro hprev hcurrFalse
    have hprevCount :=
      (G.profileValuation_seqAuxIndex pairIndex false row (i0 + 1) (j0 + 1)
        hiPrev_pos hiPrev_lt hj_pos hj_le).mp hprev
    have hcurrCount :
        j0 + 1 ≤
          G.counterPrefixFalseCount pairIndex.val false row.val (i0 + 2) :=
      le_trans hprevCount
        (G.counterPrefixFalseCount_mono pairIndex.val false row.val (by omega))
    have hcurr :=
      (G.profileValuation_seqAuxIndex pairIndex false row (i0 + 2) (j0 + 1)
        hiCurr_pos hiCurr_lt hj_pos hj_le).mpr hcurrCount
    exact hcurrFalse hcurr
  · rcases hoverflowClause with ⟨i0, hi0Range, hrawEq⟩
    rw [← hrawEq]
    have hi0_lt15 : i0 < 15 := by
      simp [HexadecimaryFourTwoProfileDirect.rowLits,
        HexadecimaryFourTwoProfileDirect.q] at hi0Range
      omega
    have hidx_lt16 : i0 + 1 < 16 := by omega
    have hiPrev_pos : 0 < i0 + 1 := by omega
    have hiPrev_lt : i0 + 1 < 16 := by omega
    have hiNext_le_q : i0 + 2 ≤ HexadecimaryFourTwoProfileDirect.q := by
      simpa [HexadecimaryFourTwoProfileDirect.q] using (by omega : i0 + 2 ≤ 16)
    have hbound_le :
        HexadecimaryFourTwoProfileDirect.counterFalseBound row.val ≤
          HexadecimaryFourTwoProfileDirect.counterFalseBound row.val := le_rfl
    have hidx : i0 + 2 - 1 = i0 + 1 := by omega
    have hEdgeLit :
        Sat.Literal.ofInt
            (-HexadecimaryFourTwoProfileDirect.litAt
              ((HexadecimaryFourTwoProfileDirect.rowLits
                pairIndex.val row.val).map (fun lit => -lit)) (i0 + 1)) =
          Sat.Literal.pos
            (HexadecimaryFourTwoProfileDirect.edgeVar
              pairIndex.val row.val (i0 + 1) - 1) := by
      rw [rowNegLitAt pairIndex.val row.val (i0 + 1) hidx_lt16]
      simpa [HexadecimaryFourTwoProfileDirect.posEdgeLit] using
        rawPosLiteral_eq
          (HexadecimaryFourTwoProfileDirect.edgeVar
            pairIndex.val row.val (i0 + 1))
          (by simp [HexadecimaryFourTwoProfileDirect.edgeVar,
            HexadecimaryFourTwoProfileDirect.q])
    have hPrevLit :
        Sat.Literal.ofInt
            (-(HexadecimaryFourTwoProfileDirect.seqAux
              (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
                pairIndex.val false row.val)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound row.val)
              (i0 + 1)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound row.val))) =
          Sat.Literal.neg
            (seqAuxIndex
              (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
                pairIndex.val false row.val)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound row.val)
              (i0 + 1)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound row.val)) :=
      rawNegSeqAuxLiteral_eq _ _ _ _ hfirst
    simp [LRATNative.rawClauseToSat, hidx, hEdgeLit, hPrevLit]
    intro hedgeFalse hprev
    have hinput :=
      G.row_counterInputTrue_of_profile_edge_false pairIndex row (i0 + 1)
        hidx_lt16 hedgeFalse
    have hprevCount :=
      (G.profileValuation_seqAuxIndex pairIndex false row (i0 + 1)
        (HexadecimaryFourTwoProfileDirect.counterFalseBound row.val)
        hiPrev_pos hiPrev_lt hbound_pos hbound_le).mp hprev
    have hnextEq :
        G.counterPrefixFalseCount pairIndex.val false row.val (i0 + 2) =
          G.counterPrefixFalseCount pairIndex.val false row.val (i0 + 1) + 1 := by
      simpa [show i0 + 2 = (i0 + 1) + 1 by omega] using
        G.counterPrefixFalseCount_succ_of_input
          pairIndex.val false row.val (i0 + 1) hinput
    have htotalFromNext :
        G.counterPrefixFalseCount pairIndex.val false row.val (i0 + 2) ≤
          G.counterPrefixFalseCount pairIndex.val false row.val
            HexadecimaryFourTwoProfileDirect.q :=
      G.counterPrefixFalseCount_mono pairIndex.val false row.val hiNext_le_q
    have htotalBound :=
      hbound pairIndex.val false row.val hpair hrow
    omega
  · rcases hstepClause with ⟨i0, hi0Range, j0, hj0Range, hrawEq⟩
    rw [← hrawEq]
    have hi0_lt14 : i0 < 14 := by
      simp [HexadecimaryFourTwoProfileDirect.rowLits,
        HexadecimaryFourTwoProfileDirect.q] at hi0Range
      omega
    have hj0_lt :
        j0 < HexadecimaryFourTwoProfileDirect.counterFalseBound row.val - 1 :=
      hj0Range
    have hidx_lt16 : i0 + 1 < 16 := by omega
    have hiPrev_pos : 0 < i0 + 1 := by omega
    have hiPrev_lt : i0 + 1 < 16 := by omega
    have hiCurr_pos : 0 < i0 + 2 := by omega
    have hiCurr_lt : i0 + 2 < 16 := by omega
    have hjPrev_pos : 0 < j0 + 1 := by omega
    have hjPrev_le :
        j0 + 1 ≤ HexadecimaryFourTwoProfileDirect.counterFalseBound row.val := by
      omega
    have hjCurr_pos : 0 < j0 + 2 := by omega
    have hjCurr_le :
        j0 + 2 ≤ HexadecimaryFourTwoProfileDirect.counterFalseBound row.val := by
      omega
    have hidx : i0 + 2 - 1 = i0 + 1 := by omega
    have hjidx : j0 + 2 - 1 = j0 + 1 := by omega
    have hEdgeLit :
        Sat.Literal.ofInt
            (-HexadecimaryFourTwoProfileDirect.litAt
              ((HexadecimaryFourTwoProfileDirect.rowLits
                pairIndex.val row.val).map (fun lit => -lit)) (i0 + 1)) =
          Sat.Literal.pos
            (HexadecimaryFourTwoProfileDirect.edgeVar
              pairIndex.val row.val (i0 + 1) - 1) := by
      rw [rowNegLitAt pairIndex.val row.val (i0 + 1) hidx_lt16]
      simpa [HexadecimaryFourTwoProfileDirect.posEdgeLit] using
        rawPosLiteral_eq
          (HexadecimaryFourTwoProfileDirect.edgeVar
            pairIndex.val row.val (i0 + 1))
          (by simp [HexadecimaryFourTwoProfileDirect.edgeVar,
            HexadecimaryFourTwoProfileDirect.q])
    have hPrevLit :
        Sat.Literal.ofInt
            (-(HexadecimaryFourTwoProfileDirect.seqAux
              (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
                pairIndex.val false row.val)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound row.val)
              (i0 + 1) (j0 + 1))) =
          Sat.Literal.neg
            (seqAuxIndex
              (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
                pairIndex.val false row.val)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound row.val)
              (i0 + 1) (j0 + 1)) :=
      rawNegSeqAuxLiteral_eq _ _ _ _ hfirst
    have hCurrLit :
        Sat.Literal.ofInt
            (HexadecimaryFourTwoProfileDirect.seqAux
              (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
                pairIndex.val false row.val)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound row.val)
              (i0 + 2) (j0 + 2)) =
          Sat.Literal.pos
            (seqAuxIndex
              (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
                pairIndex.val false row.val)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound row.val)
              (i0 + 2) (j0 + 2)) :=
      rawPosSeqAuxLiteral_eq _ _ _ _ hfirst
    simp [LRATNative.rawClauseToSat, hidx, hjidx, hEdgeLit, hPrevLit, hCurrLit]
    intro hedgeFalse hprev hcurrFalse
    have hinput :=
      G.row_counterInputTrue_of_profile_edge_false pairIndex row (i0 + 1)
        hidx_lt16 hedgeFalse
    have hprevCount :=
      (G.profileValuation_seqAuxIndex pairIndex false row (i0 + 1) (j0 + 1)
        hiPrev_pos hiPrev_lt hjPrev_pos hjPrev_le).mp hprev
    have hnextEq :
        G.counterPrefixFalseCount pairIndex.val false row.val (i0 + 2) =
          G.counterPrefixFalseCount pairIndex.val false row.val (i0 + 1) + 1 := by
      simpa [show i0 + 2 = (i0 + 1) + 1 by omega] using
        G.counterPrefixFalseCount_succ_of_input
          pairIndex.val false row.val (i0 + 1) hinput
    have hcurrCount :
        j0 + 2 ≤
          G.counterPrefixFalseCount pairIndex.val false row.val (i0 + 2) := by
      omega
    have hcurr :=
      (G.profileValuation_seqAuxIndex pairIndex false row (i0 + 2) (j0 + 2)
        hiCurr_pos hiCurr_lt hjCurr_pos hjCurr_le).mpr hcurrCount
    exact hcurrFalse hcurr

private theorem HexadecimaryFourTwoProfileGraph.profileValuation_satisfies_lowerProfileColSeqClauses
    (G : HexadecimaryFourTwoProfileGraph)
    (hbound : G.lowerProfileFalseBound)
    (pairIndex : Fin 6)
    (col : Fin 16) :
    Sat.Valuation.satisfies_fmla G.profileValuation
      ((HexadecimaryFourTwoProfileDirect.atMostSeqClausesWithAux
          (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
            pairIndex.val true col.val)
          ((HexadecimaryFourTwoProfileDirect.colLits
            pairIndex.val col.val).map (fun lit => -lit))
          (HexadecimaryFourTwoProfileDirect.counterFalseBound col.val)).map
        LRATNative.rawClauseToSat) := by
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨rawClause, hraw, rfl⟩
  have hfirst :
      0 <
        HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
          pairIndex.val true col.val :=
    lowerProfileCounterFirst_pos pairIndex.val true col.val
  have hpair : pairIndex.val < HexadecimaryFourTwoProfileDirect.pairCount := by
    simp [HexadecimaryFourTwoProfileDirect.pairCount]
  have hcol : col.val < HexadecimaryFourTwoProfileDirect.q := by
    simp [HexadecimaryFourTwoProfileDirect.q]
  have hbound_pos : 0 < HexadecimaryFourTwoProfileDirect.counterFalseBound col.val :=
    counterFalseBound_pos col
  simp only [HexadecimaryFourTwoProfileDirect.atMostSeqClausesWithAux,
    List.mem_append, List.mem_map, List.mem_flatMap, List.mem_range] at hraw
  rcases hraw with ((hfirstClause | hmonoClause) | hoverflowClause) | hstepClause
  · rcases hfirstClause with ⟨i0, hi0Range, hrawEq⟩
    rw [← hrawEq]
    have hi0_lt15 : i0 < 15 := by
      simp [HexadecimaryFourTwoProfileDirect.colLits,
        HexadecimaryFourTwoProfileDirect.q] at hi0Range
      omega
    have hi0_lt16 : i0 < 16 := by omega
    have hi_pos : 0 < i0 + 1 := by omega
    have hi_lt : i0 + 1 < 16 := by omega
    have hj_pos : 0 < 1 := by decide
    have hj_le : 1 ≤ HexadecimaryFourTwoProfileDirect.counterFalseBound col.val :=
      hbound_pos
    have hidx : i0 + 1 - 1 = i0 := by omega
    have hEdgeLit :
        Sat.Literal.ofInt
            (-HexadecimaryFourTwoProfileDirect.litAt
              ((HexadecimaryFourTwoProfileDirect.colLits
                pairIndex.val col.val).map (fun lit => -lit)) i0) =
          Sat.Literal.pos
            (HexadecimaryFourTwoProfileDirect.edgeVar
              pairIndex.val i0 col.val - 1) := by
      rw [colNegLitAt pairIndex.val col.val i0 hi0_lt16]
      simpa [HexadecimaryFourTwoProfileDirect.posEdgeLit] using
        rawPosLiteral_eq
          (HexadecimaryFourTwoProfileDirect.edgeVar pairIndex.val i0 col.val)
          (by simp [HexadecimaryFourTwoProfileDirect.edgeVar,
            HexadecimaryFourTwoProfileDirect.q])
    have hAuxLit :
        Sat.Literal.ofInt
            (HexadecimaryFourTwoProfileDirect.seqAux
              (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
                pairIndex.val true col.val)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound col.val)
              (i0 + 1) 1) =
          Sat.Literal.pos
            (seqAuxIndex
              (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
                pairIndex.val true col.val)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound col.val)
              (i0 + 1) 1) :=
      rawPosSeqAuxLiteral_eq _ _ _ _ hfirst
    simp [LRATNative.rawClauseToSat, hidx, hEdgeLit, hAuxLit]
    intro hedgeFalse hauxFalse
    have hinput :=
      G.col_counterInputTrue_of_profile_edge_false pairIndex col i0 hi0_lt16
        hedgeFalse
    have hcount :=
      G.counterPrefixFalseCount_pos_of_input
        pairIndex.val true col.val (i0 + 1) hi_pos hinput
    have haux :=
      (G.profileValuation_seqAuxIndex pairIndex true col (i0 + 1) 1
        hi_pos hi_lt hj_pos hj_le).mpr hcount
    exact hauxFalse haux
  · rcases hmonoClause with ⟨i0, hi0Range, j0, hj0Range, hrawEq⟩
    rw [← hrawEq]
    have hi0_lt14 : i0 < 14 := by
      simp [HexadecimaryFourTwoProfileDirect.colLits,
        HexadecimaryFourTwoProfileDirect.q] at hi0Range
      omega
    have hj0_lt : j0 < HexadecimaryFourTwoProfileDirect.counterFalseBound col.val :=
      hj0Range
    have hiPrev_pos : 0 < i0 + 1 := by omega
    have hiPrev_lt : i0 + 1 < 16 := by omega
    have hiCurr_pos : 0 < i0 + 2 := by omega
    have hiCurr_lt : i0 + 2 < 16 := by omega
    have hj_pos : 0 < j0 + 1 := by omega
    have hj_le : j0 + 1 ≤ HexadecimaryFourTwoProfileDirect.counterFalseBound col.val := by
      omega
    have hiPrevIdx : i0 + 2 - 1 = i0 + 1 := by omega
    have hPrevLit :
        Sat.Literal.ofInt
            (-(HexadecimaryFourTwoProfileDirect.seqAux
              (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
                pairIndex.val true col.val)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound col.val)
              (i0 + 1) (j0 + 1))) =
          Sat.Literal.neg
            (seqAuxIndex
              (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
                pairIndex.val true col.val)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound col.val)
              (i0 + 1) (j0 + 1)) :=
      rawNegSeqAuxLiteral_eq _ _ _ _ hfirst
    have hCurrLit :
        Sat.Literal.ofInt
            (HexadecimaryFourTwoProfileDirect.seqAux
              (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
                pairIndex.val true col.val)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound col.val)
              (i0 + 2) (j0 + 1)) =
          Sat.Literal.pos
            (seqAuxIndex
              (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
                pairIndex.val true col.val)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound col.val)
              (i0 + 2) (j0 + 1)) :=
      rawPosSeqAuxLiteral_eq _ _ _ _ hfirst
    simp [LRATNative.rawClauseToSat, hiPrevIdx, hPrevLit, hCurrLit]
    intro hprev hcurrFalse
    have hprevCount :=
      (G.profileValuation_seqAuxIndex pairIndex true col (i0 + 1) (j0 + 1)
        hiPrev_pos hiPrev_lt hj_pos hj_le).mp hprev
    have hcurrCount :
        j0 + 1 ≤
          G.counterPrefixFalseCount pairIndex.val true col.val (i0 + 2) :=
      le_trans hprevCount
        (G.counterPrefixFalseCount_mono pairIndex.val true col.val (by omega))
    have hcurr :=
      (G.profileValuation_seqAuxIndex pairIndex true col (i0 + 2) (j0 + 1)
        hiCurr_pos hiCurr_lt hj_pos hj_le).mpr hcurrCount
    exact hcurrFalse hcurr
  · rcases hoverflowClause with ⟨i0, hi0Range, hrawEq⟩
    rw [← hrawEq]
    have hi0_lt15 : i0 < 15 := by
      simp [HexadecimaryFourTwoProfileDirect.colLits,
        HexadecimaryFourTwoProfileDirect.q] at hi0Range
      omega
    have hidx_lt16 : i0 + 1 < 16 := by omega
    have hiPrev_pos : 0 < i0 + 1 := by omega
    have hiPrev_lt : i0 + 1 < 16 := by omega
    have hiNext_le_q : i0 + 2 ≤ HexadecimaryFourTwoProfileDirect.q := by
      simpa [HexadecimaryFourTwoProfileDirect.q] using (by omega : i0 + 2 ≤ 16)
    have hbound_le :
        HexadecimaryFourTwoProfileDirect.counterFalseBound col.val ≤
          HexadecimaryFourTwoProfileDirect.counterFalseBound col.val := le_rfl
    have hidx : i0 + 2 - 1 = i0 + 1 := by omega
    have hEdgeLit :
        Sat.Literal.ofInt
            (-HexadecimaryFourTwoProfileDirect.litAt
              ((HexadecimaryFourTwoProfileDirect.colLits
                pairIndex.val col.val).map (fun lit => -lit)) (i0 + 1)) =
          Sat.Literal.pos
            (HexadecimaryFourTwoProfileDirect.edgeVar
              pairIndex.val (i0 + 1) col.val - 1) := by
      rw [colNegLitAt pairIndex.val col.val (i0 + 1) hidx_lt16]
      simpa [HexadecimaryFourTwoProfileDirect.posEdgeLit] using
        rawPosLiteral_eq
          (HexadecimaryFourTwoProfileDirect.edgeVar
            pairIndex.val (i0 + 1) col.val)
          (by simp [HexadecimaryFourTwoProfileDirect.edgeVar,
            HexadecimaryFourTwoProfileDirect.q])
    have hPrevLit :
        Sat.Literal.ofInt
            (-(HexadecimaryFourTwoProfileDirect.seqAux
              (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
                pairIndex.val true col.val)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound col.val)
              (i0 + 1)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound col.val))) =
          Sat.Literal.neg
            (seqAuxIndex
              (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
                pairIndex.val true col.val)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound col.val)
              (i0 + 1)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound col.val)) :=
      rawNegSeqAuxLiteral_eq _ _ _ _ hfirst
    simp [LRATNative.rawClauseToSat, hidx, hEdgeLit, hPrevLit]
    intro hedgeFalse hprev
    have hinput :=
      G.col_counterInputTrue_of_profile_edge_false pairIndex col (i0 + 1)
        hidx_lt16 hedgeFalse
    have hprevCount :=
      (G.profileValuation_seqAuxIndex pairIndex true col (i0 + 1)
        (HexadecimaryFourTwoProfileDirect.counterFalseBound col.val)
        hiPrev_pos hiPrev_lt hbound_pos hbound_le).mp hprev
    have hnextEq :
        G.counterPrefixFalseCount pairIndex.val true col.val (i0 + 2) =
          G.counterPrefixFalseCount pairIndex.val true col.val (i0 + 1) + 1 := by
      simpa [show i0 + 2 = (i0 + 1) + 1 by omega] using
        G.counterPrefixFalseCount_succ_of_input
          pairIndex.val true col.val (i0 + 1) hinput
    have htotalFromNext :
        G.counterPrefixFalseCount pairIndex.val true col.val (i0 + 2) ≤
          G.counterPrefixFalseCount pairIndex.val true col.val
            HexadecimaryFourTwoProfileDirect.q :=
      G.counterPrefixFalseCount_mono pairIndex.val true col.val hiNext_le_q
    have htotalBound :=
      hbound pairIndex.val true col.val hpair hcol
    omega
  · rcases hstepClause with ⟨i0, hi0Range, j0, hj0Range, hrawEq⟩
    rw [← hrawEq]
    have hi0_lt14 : i0 < 14 := by
      simp [HexadecimaryFourTwoProfileDirect.colLits,
        HexadecimaryFourTwoProfileDirect.q] at hi0Range
      omega
    have hj0_lt :
        j0 < HexadecimaryFourTwoProfileDirect.counterFalseBound col.val - 1 :=
      hj0Range
    have hidx_lt16 : i0 + 1 < 16 := by omega
    have hiPrev_pos : 0 < i0 + 1 := by omega
    have hiPrev_lt : i0 + 1 < 16 := by omega
    have hiCurr_pos : 0 < i0 + 2 := by omega
    have hiCurr_lt : i0 + 2 < 16 := by omega
    have hjPrev_pos : 0 < j0 + 1 := by omega
    have hjPrev_le :
        j0 + 1 ≤ HexadecimaryFourTwoProfileDirect.counterFalseBound col.val := by
      omega
    have hjCurr_pos : 0 < j0 + 2 := by omega
    have hjCurr_le :
        j0 + 2 ≤ HexadecimaryFourTwoProfileDirect.counterFalseBound col.val := by
      omega
    have hidx : i0 + 2 - 1 = i0 + 1 := by omega
    have hjidx : j0 + 2 - 1 = j0 + 1 := by omega
    have hEdgeLit :
        Sat.Literal.ofInt
            (-HexadecimaryFourTwoProfileDirect.litAt
              ((HexadecimaryFourTwoProfileDirect.colLits
                pairIndex.val col.val).map (fun lit => -lit)) (i0 + 1)) =
          Sat.Literal.pos
            (HexadecimaryFourTwoProfileDirect.edgeVar
              pairIndex.val (i0 + 1) col.val - 1) := by
      rw [colNegLitAt pairIndex.val col.val (i0 + 1) hidx_lt16]
      simpa [HexadecimaryFourTwoProfileDirect.posEdgeLit] using
        rawPosLiteral_eq
          (HexadecimaryFourTwoProfileDirect.edgeVar
            pairIndex.val (i0 + 1) col.val)
          (by simp [HexadecimaryFourTwoProfileDirect.edgeVar,
            HexadecimaryFourTwoProfileDirect.q])
    have hPrevLit :
        Sat.Literal.ofInt
            (-(HexadecimaryFourTwoProfileDirect.seqAux
              (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
                pairIndex.val true col.val)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound col.val)
              (i0 + 1) (j0 + 1))) =
          Sat.Literal.neg
            (seqAuxIndex
              (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
                pairIndex.val true col.val)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound col.val)
              (i0 + 1) (j0 + 1)) :=
      rawNegSeqAuxLiteral_eq _ _ _ _ hfirst
    have hCurrLit :
        Sat.Literal.ofInt
            (HexadecimaryFourTwoProfileDirect.seqAux
              (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
                pairIndex.val true col.val)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound col.val)
              (i0 + 2) (j0 + 2)) =
          Sat.Literal.pos
            (seqAuxIndex
              (HexadecimaryFourTwoProfileDirect.lowerProfileCounterFirst
                pairIndex.val true col.val)
              (HexadecimaryFourTwoProfileDirect.counterFalseBound col.val)
              (i0 + 2) (j0 + 2)) :=
      rawPosSeqAuxLiteral_eq _ _ _ _ hfirst
    simp [LRATNative.rawClauseToSat, hidx, hjidx, hEdgeLit, hPrevLit, hCurrLit]
    intro hedgeFalse hprev hcurrFalse
    have hinput :=
      G.col_counterInputTrue_of_profile_edge_false pairIndex col (i0 + 1)
        hidx_lt16 hedgeFalse
    have hprevCount :=
      (G.profileValuation_seqAuxIndex pairIndex true col (i0 + 1) (j0 + 1)
        hiPrev_pos hiPrev_lt hjPrev_pos hjPrev_le).mp hprev
    have hnextEq :
        G.counterPrefixFalseCount pairIndex.val true col.val (i0 + 2) =
          G.counterPrefixFalseCount pairIndex.val true col.val (i0 + 1) + 1 := by
      simpa [show i0 + 2 = (i0 + 1) + 1 by omega] using
        G.counterPrefixFalseCount_succ_of_input
          pairIndex.val true col.val (i0 + 1) hinput
    have hcurrCount :
        j0 + 2 ≤
          G.counterPrefixFalseCount pairIndex.val true col.val (i0 + 2) := by
      omega
    have hcurr :=
      (G.profileValuation_seqAuxIndex pairIndex true col (i0 + 2) (j0 + 2)
        hiCurr_pos hiCurr_lt hjCurr_pos hjCurr_le).mpr hcurrCount
    exact hcurrFalse hcurr

private theorem HexadecimaryFourTwoProfileGraph.profileValuation_satisfies_lowerProfileRowClauses
    (G : HexadecimaryFourTwoProfileGraph)
    (hbound : G.lowerProfileFalseBound)
    (pairIndex : Fin 6)
    (row : Fin 16) :
    Sat.Valuation.satisfies_fmla G.profileValuation
      ((HexadecimaryFourTwoProfileDirect.lowerProfileRowClauses
          pairIndex.val row.val).map LRATNative.rawClauseToSat) := by
  have hseq :=
    G.profileValuation_satisfies_lowerProfileRowSeqClauses
      hbound pairIndex row
  fin_cases row <;>
    simpa [HexadecimaryFourTwoProfileDirect.lowerProfileRowClauses,
      HexadecimaryFourTwoProfileDirect.atMostSeqClauses,
      HexadecimaryFourTwoProfileDirect.rowLits,
      HexadecimaryFourTwoProfileDirect.counterFalseBound,
      HexadecimaryFourTwoProfileDirect.rowBound,
      HexadecimaryFourTwoProfileDirect.q] using hseq

private theorem HexadecimaryFourTwoProfileGraph.profileValuation_satisfies_lowerProfileColClauses
    (G : HexadecimaryFourTwoProfileGraph)
    (hbound : G.lowerProfileFalseBound)
    (pairIndex : Fin 6)
    (col : Fin 16) :
    Sat.Valuation.satisfies_fmla G.profileValuation
      ((HexadecimaryFourTwoProfileDirect.lowerProfileColClauses
          pairIndex.val col.val).map LRATNative.rawClauseToSat) := by
  have hseq :=
    G.profileValuation_satisfies_lowerProfileColSeqClauses
      hbound pairIndex col
  fin_cases col <;>
    simpa [HexadecimaryFourTwoProfileDirect.lowerProfileColClauses,
      HexadecimaryFourTwoProfileDirect.atMostSeqClauses,
      HexadecimaryFourTwoProfileDirect.colLits,
      HexadecimaryFourTwoProfileDirect.counterFalseBound,
      HexadecimaryFourTwoProfileDirect.rowBound,
      HexadecimaryFourTwoProfileDirect.q] using hseq

theorem HexadecimaryFourTwoProfileGraph.profileValuation_satisfies_lowerProfileClauses
    (G : HexadecimaryFourTwoProfileGraph)
    (hbound : G.lowerProfileFalseBound) :
    Sat.Valuation.satisfies_fmla G.profileValuation
      (HexadecimaryFourTwoProfileDirect.lowerProfileClauses.map
        LRATNative.rawClauseToSat) := by
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨rawClause, hraw, rfl⟩
  simp [HexadecimaryFourTwoProfileDirect.lowerProfileClauses,
    HexadecimaryFourTwoProfileDirect.pairCount,
    HexadecimaryFourTwoProfileDirect.q] at hraw
  rcases hraw with ⟨pairIndex, hpairIndex, hraw⟩
  let pairIndex6 : Fin 6 := ⟨pairIndex, by omega⟩
  rcases hraw with hrowClause | hcolClause
  · rcases hrowClause with ⟨row, hrow, hrawClause⟩
    let row16 : Fin 16 := ⟨row, by omega⟩
    exact
      (G.profileValuation_satisfies_lowerProfileRowClauses
        hbound pairIndex6 row16).prop
        (LRATNative.rawClauseToSat rawClause)
        (List.mem_map.mpr ⟨rawClause, by simpa [pairIndex6, row16] using hrawClause, rfl⟩)
  · rcases hcolClause with ⟨col, hcol, hrawClause⟩
    let col16 : Fin 16 := ⟨col, by omega⟩
    exact
      (G.profileValuation_satisfies_lowerProfileColClauses
        hbound pairIndex6 col16).prop
        (LRATNative.rawClauseToSat rawClause)
        (List.mem_map.mpr ⟨rawClause, by simpa [pairIndex6, col16] using hrawClause, rfl⟩)

@[simp] private theorem rawNegEdgeLiteral_eq (pairIndex row col : Nat) :
    Sat.Literal.ofInt
        (-(HexadecimaryFourTwoProfileDirect.edgeVar pairIndex row col : Int)) =
      Sat.Literal.neg
        (HexadecimaryFourTwoProfileDirect.edgeVar pairIndex row col - 1) := by
  apply rawNegLiteral_eq
  simp [HexadecimaryFourTwoProfileDirect.edgeVar,
    HexadecimaryFourTwoProfileDirect.q]

private theorem edgeByPairIndex_eq_of_edgeValuation
    (G : HexadecimaryFourTwoProfileGraph)
    (pairIndex : Fin 6)
    (row col : Nat)
    (hrow : row < 16)
    (hcol : col < 16)
    (hval :
      G.edgeValuation
        (HexadecimaryFourTwoProfileDirect.edgeVar pairIndex.val row col - 1)) :
    G.edgeByPairIndex pairIndex.val row col := by
  let r : Fin 16 := ⟨row, hrow⟩
  let c : Fin 16 := ⟨col, hcol⟩
  have hval' :
      G.edgeValuation
        (HexadecimaryFourTwoProfileDirect.edgeVar pairIndex.val r.val c.val - 1) := by
    simpa [r, c] using hval
  have hedge :=
    (G.edgeValuation_edgeVar pairIndex r c).mp hval'
  simpa [HexadecimaryFourTwoProfileGraph.edgeByPairIndex, r, c,
    fin16OfNatMod, Nat.mod_eq_of_lt hrow, Nat.mod_eq_of_lt hcol] using hedge

private theorem edgeByPairIndex_eq_of_profileValuation
    (G : HexadecimaryFourTwoProfileGraph)
    (pairIndex : Fin 6)
    (row col : Nat)
    (hrow : row < 16)
    (hcol : col < 16)
    (hval :
      G.profileValuation
        (HexadecimaryFourTwoProfileDirect.edgeVar pairIndex.val row col - 1)) :
    G.edgeByPairIndex pairIndex.val row col := by
  let r : Fin 16 := ⟨row, hrow⟩
  let c : Fin 16 := ⟨col, hcol⟩
  have hval' :
      G.profileValuation
        (HexadecimaryFourTwoProfileDirect.edgeVar pairIndex.val r.val c.val - 1) := by
    simpa [r, c] using hval
  have hedge :=
    (G.profileValuation_edgeVar pairIndex r c).mp hval'
  simpa [HexadecimaryFourTwoProfileGraph.edgeByPairIndex, r, c,
    fin16OfNatMod, Nat.mod_eq_of_lt hrow, Nat.mod_eq_of_lt hcol] using hedge

theorem HexadecimaryFourTwoProfileGraph.edgeValuation_satisfies_noCliqueClauses
    (G : HexadecimaryFourTwoProfileGraph) :
    Sat.Valuation.satisfies_fmla G.edgeValuation
      (HexadecimaryFourTwoProfileDirect.noCliqueClauses.map LRATNative.rawClauseToSat) := by
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨rawClause, hraw, rfl⟩
  simp [HexadecimaryFourTwoProfileDirect.noCliqueClauses] at hraw
  rcases hraw with ⟨a, ha, b, hb, c, hc, d, hd, rfl⟩
  have ha_lt : a < 16 := by simpa [HexadecimaryFourTwoProfileDirect.q] using ha
  have hb_lt : b < 16 := by simpa [HexadecimaryFourTwoProfileDirect.q] using hb
  have hc_lt : c < 16 := by simpa [HexadecimaryFourTwoProfileDirect.q] using hc
  have hd_lt : d < 16 := by simpa [HexadecimaryFourTwoProfileDirect.q] using hd
  have hnot :
      ¬ (G.edgeValuation (HexadecimaryFourTwoProfileDirect.edgeVar 0 a b - 1) ∧
         G.edgeValuation (HexadecimaryFourTwoProfileDirect.edgeVar 1 a c - 1) ∧
         G.edgeValuation (HexadecimaryFourTwoProfileDirect.edgeVar 2 a d - 1) ∧
         G.edgeValuation (HexadecimaryFourTwoProfileDirect.edgeVar 3 b c - 1) ∧
         G.edgeValuation (HexadecimaryFourTwoProfileDirect.edgeVar 4 b d - 1) ∧
         G.edgeValuation (HexadecimaryFourTwoProfileDirect.edgeVar 5 c d - 1)) := by
    intro hall
    apply G.no_clique
    refine
      ⟨⟨a, ha_lt⟩, ⟨b, hb_lt⟩, ⟨c, hc_lt⟩, ⟨d, hd_lt⟩, ?_, ?_, ?_, ?_, ?_, ?_⟩
    · simpa [HexadecimaryFourTwoProfileGraph.edgeByPairIndex, fin16OfNatMod,
        Nat.mod_eq_of_lt ha_lt, Nat.mod_eq_of_lt hb_lt] using
        edgeByPairIndex_eq_of_edgeValuation G 0 a b ha_lt hb_lt hall.1
    · simpa [HexadecimaryFourTwoProfileGraph.edgeByPairIndex, fin16OfNatMod,
        Nat.mod_eq_of_lt ha_lt, Nat.mod_eq_of_lt hc_lt] using
        edgeByPairIndex_eq_of_edgeValuation G 1 a c ha_lt hc_lt hall.2.1
    · simpa [HexadecimaryFourTwoProfileGraph.edgeByPairIndex, fin16OfNatMod,
        Nat.mod_eq_of_lt ha_lt, Nat.mod_eq_of_lt hd_lt] using
        edgeByPairIndex_eq_of_edgeValuation G 2 a d ha_lt hd_lt hall.2.2.1
    · simpa [HexadecimaryFourTwoProfileGraph.edgeByPairIndex, fin16OfNatMod,
        Nat.mod_eq_of_lt hb_lt, Nat.mod_eq_of_lt hc_lt] using
        edgeByPairIndex_eq_of_edgeValuation G 3 b c hb_lt hc_lt hall.2.2.2.1
    · simpa [HexadecimaryFourTwoProfileGraph.edgeByPairIndex, fin16OfNatMod,
        Nat.mod_eq_of_lt hb_lt, Nat.mod_eq_of_lt hd_lt] using
        edgeByPairIndex_eq_of_edgeValuation G 4 b d hb_lt hd_lt hall.2.2.2.2.1
    · simpa [HexadecimaryFourTwoProfileGraph.edgeByPairIndex, fin16OfNatMod,
        Nat.mod_eq_of_lt hc_lt, Nat.mod_eq_of_lt hd_lt] using
        edgeByPairIndex_eq_of_edgeValuation G 5 c d hc_lt hd_lt hall.2.2.2.2.2
  simpa [LRATNative.rawClauseToSat, HexadecimaryFourTwoProfileDirect.negEdgeLit,
    HexadecimaryFourTwoProfileDirect.posEdgeLit] using
    valuation_satisfies_six_neg G.edgeValuation
      (HexadecimaryFourTwoProfileDirect.edgeVar 0 a b - 1)
      (HexadecimaryFourTwoProfileDirect.edgeVar 1 a c - 1)
      (HexadecimaryFourTwoProfileDirect.edgeVar 2 a d - 1)
      (HexadecimaryFourTwoProfileDirect.edgeVar 3 b c - 1)
      (HexadecimaryFourTwoProfileDirect.edgeVar 4 b d - 1)
      (HexadecimaryFourTwoProfileDirect.edgeVar 5 c d - 1)
      hnot

theorem HexadecimaryFourTwoProfileGraph.profileValuation_satisfies_noCliqueClauses
    (G : HexadecimaryFourTwoProfileGraph) :
    Sat.Valuation.satisfies_fmla G.profileValuation
      (HexadecimaryFourTwoProfileDirect.noCliqueClauses.map LRATNative.rawClauseToSat) := by
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨rawClause, hraw, rfl⟩
  simp [HexadecimaryFourTwoProfileDirect.noCliqueClauses] at hraw
  rcases hraw with ⟨a, ha, b, hb, c, hc, d, hd, rfl⟩
  have ha_lt : a < 16 := by simpa [HexadecimaryFourTwoProfileDirect.q] using ha
  have hb_lt : b < 16 := by simpa [HexadecimaryFourTwoProfileDirect.q] using hb
  have hc_lt : c < 16 := by simpa [HexadecimaryFourTwoProfileDirect.q] using hc
  have hd_lt : d < 16 := by simpa [HexadecimaryFourTwoProfileDirect.q] using hd
  have hnot :
      ¬ (G.profileValuation (HexadecimaryFourTwoProfileDirect.edgeVar 0 a b - 1) ∧
         G.profileValuation (HexadecimaryFourTwoProfileDirect.edgeVar 1 a c - 1) ∧
         G.profileValuation (HexadecimaryFourTwoProfileDirect.edgeVar 2 a d - 1) ∧
         G.profileValuation (HexadecimaryFourTwoProfileDirect.edgeVar 3 b c - 1) ∧
         G.profileValuation (HexadecimaryFourTwoProfileDirect.edgeVar 4 b d - 1) ∧
         G.profileValuation (HexadecimaryFourTwoProfileDirect.edgeVar 5 c d - 1)) := by
    intro hall
    apply G.no_clique
    refine
      ⟨⟨a, ha_lt⟩, ⟨b, hb_lt⟩, ⟨c, hc_lt⟩, ⟨d, hd_lt⟩, ?_, ?_, ?_, ?_, ?_, ?_⟩
    · simpa [HexadecimaryFourTwoProfileGraph.edgeByPairIndex, fin16OfNatMod,
        Nat.mod_eq_of_lt ha_lt, Nat.mod_eq_of_lt hb_lt] using
        edgeByPairIndex_eq_of_profileValuation G 0 a b ha_lt hb_lt hall.1
    · simpa [HexadecimaryFourTwoProfileGraph.edgeByPairIndex, fin16OfNatMod,
        Nat.mod_eq_of_lt ha_lt, Nat.mod_eq_of_lt hc_lt] using
        edgeByPairIndex_eq_of_profileValuation G 1 a c ha_lt hc_lt hall.2.1
    · simpa [HexadecimaryFourTwoProfileGraph.edgeByPairIndex, fin16OfNatMod,
        Nat.mod_eq_of_lt ha_lt, Nat.mod_eq_of_lt hd_lt] using
        edgeByPairIndex_eq_of_profileValuation G 2 a d ha_lt hd_lt hall.2.2.1
    · simpa [HexadecimaryFourTwoProfileGraph.edgeByPairIndex, fin16OfNatMod,
        Nat.mod_eq_of_lt hb_lt, Nat.mod_eq_of_lt hc_lt] using
        edgeByPairIndex_eq_of_profileValuation G 3 b c hb_lt hc_lt hall.2.2.2.1
    · simpa [HexadecimaryFourTwoProfileGraph.edgeByPairIndex, fin16OfNatMod,
        Nat.mod_eq_of_lt hb_lt, Nat.mod_eq_of_lt hd_lt] using
        edgeByPairIndex_eq_of_profileValuation G 4 b d hb_lt hd_lt hall.2.2.2.2.1
    · simpa [HexadecimaryFourTwoProfileGraph.edgeByPairIndex, fin16OfNatMod,
        Nat.mod_eq_of_lt hc_lt, Nat.mod_eq_of_lt hd_lt] using
        edgeByPairIndex_eq_of_profileValuation G 5 c d hc_lt hd_lt hall.2.2.2.2.2
  simpa [LRATNative.rawClauseToSat, HexadecimaryFourTwoProfileDirect.negEdgeLit,
    HexadecimaryFourTwoProfileDirect.posEdgeLit] using
    valuation_satisfies_six_neg G.profileValuation
      (HexadecimaryFourTwoProfileDirect.edgeVar 0 a b - 1)
      (HexadecimaryFourTwoProfileDirect.edgeVar 1 a c - 1)
      (HexadecimaryFourTwoProfileDirect.edgeVar 2 a d - 1)
      (HexadecimaryFourTwoProfileDirect.edgeVar 3 b c - 1)
      (HexadecimaryFourTwoProfileDirect.edgeVar 4 b d - 1)
      (HexadecimaryFourTwoProfileDirect.edgeVar 5 c d - 1)
      hnot

end Database
end CoveringCodes
