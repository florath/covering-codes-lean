import CoveringCodes.Database.Sources.LRATNative

/-!
# Direct no-symmetry OA(36,4,6,2) CNF

This module mirrors `scripts/oa_6_4_2_sat.py` with the symmetry-breaking
clauses removed.  The variables encode two Latin squares `L` and `M` of order
`6`; orthogonality excludes repeated ordered pairs `(L(r,c), M(r,c))`.
-/

namespace CoveringCodes
namespace Database
namespace HexadecimaryFourTwoOANoSymDirect

open LRATNative

def n : Nat := 6
def nvars : Nat := 2 * n * n * n

def lVar (r c v : Nat) : Nat :=
  r * n * n + c * n + v + 1

def mVar (r c v : Nat) : Nat :=
  n * n * n + r * n * n + c * n + v + 1

def posLit (x : Nat) : Int :=
  Int.ofNat x

def choosePairs : List α → List (α × α)
  | [] => []
  | x :: xs => xs.map (fun y => (x, y)) ++ choosePairs xs

def pairwiseAtMostClauses (lits : List Int) : List RawClause :=
  choosePairs lits |>.map (fun p => [-p.1, -p.2].toArray)

def exactlyOneClauses (lits : List Int) : List RawClause :=
  [lits.toArray] ++ pairwiseAtMostClauses lits

def latinSquareClauses (var : Nat → Nat → Nat → Nat) : List RawClause :=
  (List.range n).flatMap (fun r =>
    (List.range n).flatMap (fun c =>
      exactlyOneClauses ((List.range n).map (fun v => posLit (var r c v))))) ++
  (List.range n).flatMap (fun r =>
    (List.range n).flatMap (fun v =>
      exactlyOneClauses ((List.range n).map (fun c => posLit (var r c v))))) ++
  (List.range n).flatMap (fun c =>
    (List.range n).flatMap (fun v =>
      exactlyOneClauses ((List.range n).map (fun r => posLit (var r c v)))))

def cells : List (Nat × Nat) :=
  (List.range n).flatMap (fun r =>
    (List.range n).map (fun c => (r, c)))

def orthogonalityClauses : List RawClause :=
  (List.range n).flatMap (fun a =>
    (List.range n).flatMap (fun b =>
      (choosePairs cells).map (fun p =>
        let r1 := p.1.1
        let c1 := p.1.2
        let r2 := p.2.1
        let c2 := p.2.2
        [-(posLit (lVar r1 c1 a)), -(posLit (mVar r1 c1 b)),
          -(posLit (lVar r2 c2 a)), -(posLit (mVar r2 c2 b))].toArray)))

def oa36NoSymClauses : List RawClause :=
  latinSquareClauses lVar ++ latinSquareClauses mVar ++ orthogonalityClauses

def oa36NoSymCnf : RawCnf :=
  oa36NoSymClauses.toArray

def symmetryBreakingClauses : List RawClause :=
  (List.range n).flatMap (fun i =>
    [#[posLit (lVar 0 i i)],
      #[posLit (lVar i 0 i)],
      #[posLit (mVar 0 i i)]])

def oa36OriginalClauses : List RawClause :=
  oa36NoSymClauses ++ symmetryBreakingClauses

def oa36OriginalCnf : RawCnf :=
  oa36OriginalClauses.toArray

def oa36NoSymCnfText : String :=
  include_str "../../../data/K_16_4_2/lrat/oa_36_4_6_2_no_sym.cnf"

def oa36NoSymParsed : Prod Nat RawCnf :=
  (LRATNative.parseDimacsFull? oa36NoSymCnfText).getD (0, #[])

abbrev oa36NoSymParsedNVars : Nat := oa36NoSymParsed.1
abbrev oa36NoSymParsedCnf : RawCnf := oa36NoSymParsed.2

set_option maxHeartbeats 2000000 in
theorem oa36NoSym_nvars_eq_direct :
    oa36NoSymParsedNVars = nvars := by
  native_decide

set_option maxHeartbeats 2000000 in
theorem oa36NoSym_cnf_eq_direct :
    oa36NoSymParsedCnf = oa36NoSymCnf := by
  native_decide

def oa36OriginalCnfText : String :=
  include_str "../../../data/K_16_4_2/lrat/oa_36_4_6_2.cnf"

def oa36OriginalParsed : Prod Nat RawCnf :=
  (LRATNative.parseDimacsFull? oa36OriginalCnfText).getD (0, #[])

abbrev oa36OriginalParsedNVars : Nat := oa36OriginalParsed.1
abbrev oa36OriginalParsedCnf : RawCnf := oa36OriginalParsed.2

set_option maxHeartbeats 2000000 in
theorem oa36Original_nvars_eq_direct :
    oa36OriginalParsedNVars = nvars := by
  native_decide

set_option maxHeartbeats 2000000 in
theorem oa36Original_cnf_eq_direct :
    oa36OriginalParsedCnf = oa36OriginalCnf := by
  native_decide

end HexadecimaryFourTwoOANoSymDirect
end Database
end CoveringCodes
