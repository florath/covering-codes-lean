import CoveringCodes.Database.Sources.LRATNative

/-!
# Direct K16 4-fiber tail-box CNF mirrors

This file mirrors `scripts/k16_tail_box_profile_sat.py --fix-low-symbols`.
The instances are indexed by a deleted 4-fiber tail spread `(k₀,k₁,k₂)`.
The remaining tail box has sizes `(16-k₀,16-k₁,16-k₂)`, pair-present
variables for its three coordinate pairs, capacity threshold variables
`y(i,a,t)` for thresholds `t = 5..max(other sizes)`, one capacity-budget
sequential counter per coordinate, and the fixed-low-symbol symmetry break.
-/

namespace CoveringCodes
namespace Database
namespace HexadecimaryFourTwoTailBoxDirect

open LRATNative

def q : Nat := 16
def capBudget : Nat := 86
def coordCount : Nat := 3
def baseline : Nat := 4

def get3 (xs : Nat × Nat × Nat) (idx : Nat) : Nat :=
  match idx with
  | 0 => xs.1
  | 1 => xs.2.1
  | _ => xs.2.2

def spreadToSizes (spread : Nat × Nat × Nat) : Nat × Nat × Nat :=
  (q - spread.1, q - spread.2.1, q - spread.2.2)

def spreadToBudgets (spread : Nat × Nat × Nat) : Nat × Nat × Nat :=
  (capBudget - baseline * spread.1,
    capBudget - baseline * spread.2.1,
    capBudget - baseline * spread.2.2)

def maxOther (sizes : Nat × Nat × Nat) (coord : Nat) : Nat :=
  match coord with
  | 0 => max sizes.2.1 sizes.2.2
  | 1 => max sizes.1 sizes.2.2
  | _ => max sizes.1 sizes.2.1

def thresholdCountForCoord (sizes : Nat × Nat × Nat) (coord : Nat) : Nat :=
  maxOther sizes coord - 4

def pairVarCount (sizes : Nat × Nat × Nat) : Nat :=
  sizes.1 * sizes.2.1 + sizes.1 * sizes.2.2 + sizes.2.1 * sizes.2.2

def p01Var (sizes : Nat × Nat × Nat) (a b : Nat) : Nat :=
  a * sizes.2.1 + b + 1

def p02Var (sizes : Nat × Nat × Nat) (a c : Nat) : Nat :=
  sizes.1 * sizes.2.1 + a * sizes.2.2 + c + 1

def p12Var (sizes : Nat × Nat × Nat) (b c : Nat) : Nat :=
  sizes.1 * sizes.2.1 + sizes.1 * sizes.2.2 + b * sizes.2.2 + c + 1

def posP01Lit (sizes : Nat × Nat × Nat) (a b : Nat) : Int :=
  Int.ofNat (p01Var sizes a b)

def posP02Lit (sizes : Nat × Nat × Nat) (a c : Nat) : Int :=
  Int.ofNat (p02Var sizes a c)

def posP12Lit (sizes : Nat × Nat × Nat) (b c : Nat) : Int :=
  Int.ofNat (p12Var sizes b c)

def thresholdVarCountBeforeCoord (sizes : Nat × Nat × Nat) (coord : Nat) : Nat :=
  ((List.range coord).map (fun i =>
    get3 sizes i * thresholdCountForCoord sizes i)).sum

def thresholdVarCount (sizes : Nat × Nat × Nat) : Nat :=
  ((List.range coordCount).map (fun i =>
    get3 sizes i * thresholdCountForCoord sizes i)).sum

def thresholdVar (sizes : Nat × Nat × Nat) (coord symbol threshold : Nat) : Nat :=
  pairVarCount sizes + thresholdVarCountBeforeCoord sizes coord +
    symbol * thresholdCountForCoord sizes coord + (threshold - 5) + 1

def thresholdLit (sizes : Nat × Nat × Nat) (coord symbol threshold : Nat) : Int :=
  Int.ofNat (thresholdVar sizes coord symbol threshold)

def thresholdsForCoord (sizes : Nat × Nat × Nat) (coord : Nat) : List Nat :=
  (List.range (thresholdCountForCoord sizes coord)).map (fun off => off + 5)

def fixedLowThresholdsForCoord (sizes : Nat × Nat × Nat) (coord : Nat) : List Nat :=
  (List.range (maxOther sizes coord - 5)).map (fun off => off + 6)

def thresholdVarsForCoord (sizes : Nat × Nat × Nat) (coord : Nat) : List Int :=
  (List.range (get3 sizes coord)).flatMap (fun symbol =>
    (thresholdsForCoord sizes coord).map (fun threshold =>
      thresholdLit sizes coord symbol threshold))

def incidentLits (sizes : Nat × Nat × Nat) (coord symbol other : Nat) : List Int :=
  match coord, other with
  | 0, 1 => (List.range sizes.2.1).map (fun b => posP01Lit sizes symbol b)
  | 0, 2 => (List.range sizes.2.2).map (fun c => posP02Lit sizes symbol c)
  | 1, 0 => (List.range sizes.1).map (fun a => posP01Lit sizes a symbol)
  | 1, 2 => (List.range sizes.2.2).map (fun c => posP12Lit sizes symbol c)
  | 2, 0 => (List.range sizes.1).map (fun a => posP02Lit sizes a symbol)
  | 2, 1 => (List.range sizes.2.1).map (fun b => posP12Lit sizes b symbol)
  | _, _ => []

def coverageClauses (sizes : Nat × Nat × Nat) : List RawClause :=
  (List.range sizes.1).flatMap (fun a =>
    (List.range sizes.2.1).flatMap (fun b =>
      (List.range sizes.2.2).map (fun c =>
        [posP01Lit sizes a b, posP02Lit sizes a c,
          posP12Lit sizes b c].toArray)))

def choose {α : Type} : Nat → List α → List (List α)
  | 0, _ => [[]]
  | _ + 1, [] => []
  | k + 1, x :: xs => (choose k xs).map (fun ys => x :: ys) ++ choose (k + 1) xs

def capacityForcingClauses (sizes : Nat × Nat × Nat) : List RawClause :=
  (List.range coordCount).flatMap (fun coord =>
    (List.range (get3 sizes coord)).flatMap (fun symbol =>
      (thresholdsForCoord sizes coord).flatMap (fun threshold =>
        (List.range coordCount).flatMap (fun other =>
          if other = coord then
            []
          else
            let lits := incidentLits sizes coord symbol other
            if threshold > lits.length then
              []
            else
              (choose threshold lits).map (fun edgeSubset =>
                ((edgeSubset.map (fun lit => -lit)) ++
                  [thresholdLit sizes coord symbol threshold]).toArray)))))

def litAt (lits : List Int) (idx : Nat) : Int :=
  lits.getD idx 0

def seqAux (first bound i j : Nat) : Int :=
  Int.ofNat (first + (i - 1) * bound + (j - 1))

def atMostSeqClausesWithAux (first : Nat) (lits : List Int) (bound : Nat) :
    List RawClause :=
  let n := lits.length
  (List.range (n - 1)).map (fun i0 =>
    let i := i0 + 1
    [-(litAt lits (i - 1)), seqAux first bound i 1].toArray) ++
  (List.range (n - 2)).flatMap (fun i0 =>
    let i := i0 + 2
    (List.range bound).map (fun j0 =>
      let j := j0 + 1
      [-(seqAux first bound (i - 1) j), seqAux first bound i j].toArray)) ++
  (List.range (n - 1)).map (fun i0 =>
    let i := i0 + 2
    [-(litAt lits (i - 1)), -(seqAux first bound (i - 1) bound)].toArray) ++
  (List.range (n - 2)).flatMap (fun i0 =>
    let i := i0 + 2
    (List.range (bound - 1)).map (fun j0 =>
      let j := j0 + 2
      [-(litAt lits (i - 1)), -(seqAux first bound (i - 1) (j - 1)),
        seqAux first bound i j].toArray))

def atMostSeqClauses (first : Nat) (lits : List Int) (bound : Nat) :
    List RawClause :=
  let n := lits.length
  if n ≤ bound then
    []
  else if bound = 0 then
    lits.map (fun lit => [-lit].toArray)
  else
    atMostSeqClausesWithAux first lits bound

def atMostSeqAuxCount (lits : List Int) (bound : Nat) : Nat :=
  let n := lits.length
  if n ≤ bound then 0 else if bound = 0 then 0 else (n - 1) * bound

def budgetExtra (sizes budgets : Nat × Nat × Nat) (coord : Nat) : Nat :=
  get3 budgets coord - baseline * get3 sizes coord

def budgetCounterFirst (sizes budgets : Nat × Nat × Nat) (coord : Nat) : Nat :=
  pairVarCount sizes + thresholdVarCount sizes + 1 +
    ((List.range coord).map (fun i =>
      atMostSeqAuxCount (thresholdVarsForCoord sizes i)
        (budgetExtra sizes budgets i))).sum

def budgetSequentialClauses (sizes budgets : Nat × Nat × Nat) : List RawClause :=
  (List.range coordCount).flatMap (fun coord =>
    atMostSeqClauses (budgetCounterFirst sizes budgets coord)
      (thresholdVarsForCoord sizes coord) (budgetExtra sizes budgets coord))

def fixedLowClausesForCoord (sizes : Nat × Nat × Nat) (coord : Nat) : List RawClause :=
  (fixedLowThresholdsForCoord sizes coord).map (fun threshold =>
    [-(thresholdLit sizes coord 0 threshold)].toArray)

def fixedLowClauses (sizes : Nat × Nat × Nat) : List RawClause :=
  (List.range coordCount).flatMap (fun coord =>
    fixedLowClausesForCoord sizes coord)

def budgetAndFixedLowClauses (sizes budgets : Nat × Nat × Nat) : List RawClause :=
  (List.range coordCount).flatMap (fun coord =>
    atMostSeqClauses (budgetCounterFirst sizes budgets coord)
      (thresholdVarsForCoord sizes coord) (budgetExtra sizes budgets coord) ++
    fixedLowClausesForCoord sizes coord)

def tailBoxClauses (sizes budgets : Nat × Nat × Nat) : List RawClause :=
  coverageClauses sizes ++ capacityForcingClauses sizes ++
    budgetAndFixedLowClauses sizes budgets

def tailBoxCnf (spread : Nat × Nat × Nat) : RawCnf :=
  tailBoxClauses (spreadToSizes spread) (spreadToBudgets spread) |>.toArray

def tailBoxNVars (spread : Nat × Nat × Nat) : Nat :=
  let sizes := spreadToSizes spread
  let budgets := spreadToBudgets spread
  pairVarCount sizes + thresholdVarCount sizes +
    ((List.range coordCount).map (fun coord =>
      atMostSeqAuxCount (thresholdVarsForCoord sizes coord)
        (budgetExtra sizes budgets coord))).sum

theorem tailBoxCnf_toList_eq_sections (spread : Nat × Nat × Nat) :
    (tailBoxCnf spread).toList =
      let sizes := spreadToSizes spread
      let budgets := spreadToBudgets spread
      coverageClauses sizes ++ capacityForcingClauses sizes ++
        budgetAndFixedLowClauses sizes budgets := by
  simp [tailBoxCnf, tailBoxClauses]

abbrev spread114 : Nat × Nat × Nat := (1, 1, 4)
abbrev spread122 : Nat × Nat × Nat := (1, 2, 2)
abbrev spread123 : Nat × Nat × Nat := (1, 2, 3)
abbrev spread124 : Nat × Nat × Nat := (1, 2, 4)
abbrev spread133 : Nat × Nat × Nat := (1, 3, 3)
abbrev spread134 : Nat × Nat × Nat := (1, 3, 4)
abbrev spread144 : Nat × Nat × Nat := (1, 4, 4)
abbrev spread222 : Nat × Nat × Nat := (2, 2, 2)
abbrev spread223 : Nat × Nat × Nat := (2, 2, 3)
abbrev spread224 : Nat × Nat × Nat := (2, 2, 4)
abbrev spread233 : Nat × Nat × Nat := (2, 3, 3)
abbrev spread234 : Nat × Nat × Nat := (2, 3, 4)
abbrev spread244 : Nat × Nat × Nat := (2, 4, 4)
abbrev spread333 : Nat × Nat × Nat := (3, 3, 3)
abbrev spread334 : Nat × Nat × Nat := (3, 3, 4)
abbrev spread344 : Nat × Nat × Nat := (3, 4, 4)
abbrev spread444 : Nat × Nat × Nat := (4, 4, 4)

abbrev tailBox114Cnf : RawCnf := tailBoxCnf spread114
abbrev tailBox122Cnf : RawCnf := tailBoxCnf spread122
abbrev tailBox123Cnf : RawCnf := tailBoxCnf spread123
abbrev tailBox124Cnf : RawCnf := tailBoxCnf spread124
abbrev tailBox133Cnf : RawCnf := tailBoxCnf spread133
abbrev tailBox134Cnf : RawCnf := tailBoxCnf spread134
abbrev tailBox144Cnf : RawCnf := tailBoxCnf spread144
abbrev tailBox222Cnf : RawCnf := tailBoxCnf spread222
abbrev tailBox223Cnf : RawCnf := tailBoxCnf spread223
abbrev tailBox224Cnf : RawCnf := tailBoxCnf spread224
abbrev tailBox233Cnf : RawCnf := tailBoxCnf spread233
abbrev tailBox234Cnf : RawCnf := tailBoxCnf spread234
abbrev tailBox244Cnf : RawCnf := tailBoxCnf spread244
abbrev tailBox333Cnf : RawCnf := tailBoxCnf spread333
abbrev tailBox334Cnf : RawCnf := tailBoxCnf spread334
abbrev tailBox344Cnf : RawCnf := tailBoxCnf spread344
abbrev tailBox444Cnf : RawCnf := tailBoxCnf spread444

abbrev tailBox114NVars : Nat := tailBoxNVars spread114
abbrev tailBox122NVars : Nat := tailBoxNVars spread122
abbrev tailBox123NVars : Nat := tailBoxNVars spread123
abbrev tailBox124NVars : Nat := tailBoxNVars spread124
abbrev tailBox133NVars : Nat := tailBoxNVars spread133
abbrev tailBox134NVars : Nat := tailBoxNVars spread134
abbrev tailBox144NVars : Nat := tailBoxNVars spread144
abbrev tailBox222NVars : Nat := tailBoxNVars spread222
abbrev tailBox223NVars : Nat := tailBoxNVars spread223
abbrev tailBox224NVars : Nat := tailBoxNVars spread224
abbrev tailBox233NVars : Nat := tailBoxNVars spread233
abbrev tailBox234NVars : Nat := tailBoxNVars spread234
abbrev tailBox244NVars : Nat := tailBoxNVars spread244
abbrev tailBox333NVars : Nat := tailBoxNVars spread333
abbrev tailBox334NVars : Nat := tailBoxNVars spread334
abbrev tailBox344NVars : Nat := tailBoxNVars spread344
abbrev tailBox444NVars : Nat := tailBoxNVars spread444

end HexadecimaryFourTwoTailBoxDirect
end Database
end CoveringCodes
