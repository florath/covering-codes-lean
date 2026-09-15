import Mathlib.Tactic.Sat.FromLRAT
import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial

/-!
# Explicit upper bound for `K_6(7,3)`, verified via SAT-UNSAT + LRAT

`K_6(7,3) <= 227` is reformulated as: no assignment of a symbol to each of
the 7 coordinates makes the assignment simultaneously "far" (Hamming
distance > 3) from every one of the 227 codewords. This is exactly UNSAT of
a CNF built from one-hot coordinate-symbol variables, plus, per codeword, a
"disagree in >= 4 positions" cardinality constraint (encoded directly as
clauses over the negated one-hot literals -- no auxiliary variables).

The code (found by local search, transcribed from `coldcase`'s
`K6_7_3_M227.txt`) is unchanged from the earlier `covering_decide`-based
formalization of this cell. What changed is the *proof strategy*: that
version needed `Finset`/`Fintype` enumeration over the full 6^7 = 279,936
point space, which is proof-mode-dependent (`native_decide`: ~613s; kernel
`decide`: infeasible -- hits `maxRecDepth` after 91 minutes with no compiled
code to fall back on). This version reformulates the covering check as a
SAT-UNSAT instance and checks a native LRAT proof (from `cadical --lrat`)
through the same reflective LRAT checker (`Mathlib.Tactic.Sat.FromLRAT`)
already used and proven scalable in `OctonaryFourTwoBlockLRAT.lean` for the
K_8(4,2) lower bound. `buildProof` constructs an actual proof term from the
LRAT resolution steps -- no `decide`/`native_decide` anywhere in this file --
so kernel-checking cost is proportional to proof size (~7445 LRAT steps),
not search-space size: the whole file (parse CNF, replay LRAT, build the
`Fmla.proof` term, and kernel-check it) takes ~25s in the *default* (kernel)
proof mode, unconditionally.

Validated numerically in Python before any Lean work: the real 227-word code
gives UNSAT; dropping one codeword gives SAT with a genuine counterexample
point at Hamming distance exactly 4 from all 226 remaining codewords.

Structure:
1. `k673Code` -- the 227-word code as `List Nat` digit-lists.
2. `lrat_cnf_proof` (the elaborator, copied verbatim from
   `OctonaryFourTwoBlockLRAT.lean` -- fully generic, not cell-specific) plus
   the invocation, giving `k673CoverProof : k673CoverFormula.proof
   Sat.Clause.nil` from `data/K_6_7_3/cover.{cnf,lrat}`.
3. A hand-written CNF generator (`k673DirectFormula`) mirroring the exact
   loop order used to produce `cover.cnf`, proved *definitionally* equal
   (`rfl`) to the parsed formula -- so the encoding actually matches what was
   solved, not merely a plausible reformulation.
4. A `Sat.Valuation` built from an arbitrary `QaryWord 6 7`, with the
   semantic argument (pigeonhole: >=4 disagreements out of 7 positions
   forces a disagreement in every 4-subset) that being far from every
   codeword would satisfy the formula -- contradicting step 2's UNSAT fact.
5. The translation from that `List Nat`-based covering statement back to
   the project's own `Finset (QaryWord 6 7)` / `CoversFinset` /
   `ExplicitQaryUpper` idiom, and the `UpperBoundSource` registration.
-/

namespace CoveringCodes
namespace Database

namespace Senary673LRAT

def k673Code : List (List Nat) :=
  [[0, 2, 5, 4, 2, 3, 3],
    [1, 3, 0, 5, 3, 4, 4],
    [2, 4, 1, 0, 4, 5, 5],
    [3, 5, 2, 1, 5, 0, 0],
    [4, 0, 3, 2, 0, 1, 1],
    [5, 1, 4, 3, 1, 2, 2],
    [0, 3, 4, 3, 5, 4, 5],
    [1, 4, 5, 4, 0, 5, 0],
    [2, 5, 0, 5, 1, 0, 1],
    [3, 0, 1, 0, 2, 1, 2],
    [4, 1, 2, 1, 3, 2, 3],
    [5, 2, 3, 2, 4, 3, 4],
    [0, 4, 3, 1, 2, 2, 0],
    [1, 5, 4, 2, 3, 3, 5],
    [2, 0, 5, 3, 4, 4, 2],
    [3, 1, 0, 4, 5, 5, 3],
    [4, 2, 1, 5, 0, 0, 4],
    [5, 3, 2, 0, 1, 1, 5],
    [0, 5, 0, 0, 4, 1, 3],
    [1, 0, 1, 1, 0, 2, 0],
    [2, 1, 2, 2, 1, 3, 1],
    [3, 2, 3, 3, 2, 4, 2],
    [4, 3, 4, 4, 3, 5, 3],
    [5, 4, 5, 5, 4, 0, 4],
    [0, 4, 0, 2, 2, 5, 4],
    [1, 5, 1, 3, 3, 0, 5],
    [2, 0, 2, 4, 4, 1, 0],
    [3, 1, 3, 5, 5, 2, 1],
    [4, 2, 4, 0, 0, 3, 2],
    [5, 3, 5, 1, 1, 4, 3],
    [0, 2, 1, 0, 5, 2, 0],
    [1, 3, 2, 1, 0, 3, 1],
    [2, 4, 3, 2, 1, 4, 2],
    [3, 5, 4, 3, 2, 5, 3],
    [4, 0, 5, 4, 3, 0, 4],
    [5, 1, 0, 5, 4, 1, 5],
    [0, 3, 2, 2, 5, 2, 3],
    [1, 4, 3, 3, 0, 3, 4],
    [2, 5, 4, 4, 1, 3, 5],
    [3, 0, 5, 5, 2, 5, 0],
    [4, 1, 0, 0, 3, 0, 1],
    [5, 2, 1, 1, 4, 2, 2],
    [0, 5, 3, 5, 0, 4, 5],
    [1, 0, 4, 0, 1, 5, 0],
    [2, 1, 5, 1, 2, 0, 1],
    [3, 2, 0, 2, 3, 1, 2],
    [4, 3, 1, 3, 4, 2, 3],
    [5, 4, 2, 4, 5, 3, 4],
    [0, 5, 0, 4, 3, 2, 1],
    [1, 0, 1, 5, 4, 3, 0],
    [2, 1, 2, 0, 5, 4, 3],
    [3, 2, 3, 1, 0, 5, 4],
    [4, 4, 4, 2, 1, 0, 5],
    [5, 4, 5, 3, 2, 1, 0],
    [0, 0, 0, 1, 4, 0, 2],
    [1, 1, 1, 2, 5, 1, 3],
    [2, 2, 2, 3, 0, 2, 4],
    [3, 3, 3, 4, 1, 3, 5],
    [4, 4, 4, 5, 2, 4, 0],
    [5, 5, 5, 0, 3, 5, 1],
    [0, 0, 4, 2, 4, 2, 4],
    [1, 1, 5, 3, 5, 3, 5],
    [2, 2, 0, 4, 0, 4, 0],
    [3, 3, 1, 5, 1, 5, 1],
    [4, 4, 2, 0, 2, 0, 2],
    [5, 5, 3, 1, 3, 1, 3],
    [0, 0, 5, 5, 5, 2, 3],
    [1, 1, 0, 0, 0, 3, 4],
    [2, 2, 1, 1, 1, 4, 5],
    [3, 3, 2, 2, 2, 5, 0],
    [4, 4, 3, 3, 3, 0, 1],
    [5, 5, 4, 4, 4, 1, 2],
    [0, 5, 2, 0, 2, 5, 2],
    [1, 0, 3, 1, 3, 0, 3],
    [2, 1, 4, 2, 4, 1, 4],
    [3, 2, 5, 3, 5, 2, 5],
    [4, 3, 0, 4, 0, 3, 0],
    [5, 4, 1, 5, 1, 4, 1],
    [0, 3, 5, 2, 0, 2, 2],
    [1, 4, 0, 3, 1, 3, 3],
    [2, 5, 1, 4, 2, 4, 4],
    [3, 0, 2, 3, 3, 5, 5],
    [4, 1, 3, 0, 4, 0, 0],
    [5, 2, 4, 1, 5, 1, 1],
    [0, 5, 5, 1, 5, 0, 2],
    [1, 0, 0, 2, 0, 1, 3],
    [2, 1, 1, 3, 1, 2, 4],
    [3, 2, 2, 4, 2, 3, 5],
    [4, 3, 3, 5, 3, 4, 0],
    [5, 4, 4, 0, 4, 5, 1],
    [0, 0, 1, 3, 0, 5, 1],
    [1, 1, 2, 4, 1, 0, 2],
    [2, 2, 3, 5, 2, 1, 3],
    [3, 3, 4, 0, 3, 2, 4],
    [4, 4, 5, 1, 4, 3, 5],
    [5, 5, 0, 2, 5, 4, 0],
    [0, 4, 5, 0, 1, 1, 1],
    [1, 5, 0, 3, 2, 2, 2],
    [2, 0, 1, 2, 3, 3, 3],
    [3, 1, 2, 3, 4, 4, 4],
    [4, 2, 3, 4, 5, 5, 5],
    [5, 3, 4, 2, 0, 0, 1],
    [0, 3, 1, 4, 1, 1, 4],
    [1, 4, 2, 5, 2, 2, 5],
    [2, 5, 3, 0, 3, 3, 0],
    [3, 0, 4, 1, 4, 4, 1],
    [4, 1, 5, 2, 5, 5, 2],
    [5, 2, 0, 3, 0, 0, 3],
    [0, 1, 0, 1, 1, 4, 0],
    [1, 2, 1, 2, 2, 5, 1],
    [2, 3, 2, 3, 3, 0, 2],
    [3, 4, 3, 4, 4, 1, 3],
    [4, 5, 4, 5, 5, 2, 4],
    [5, 0, 5, 0, 0, 3, 5],
    [0, 0, 3, 4, 2, 3, 1],
    [1, 1, 4, 5, 3, 4, 2],
    [2, 2, 5, 0, 4, 5, 3],
    [3, 3, 0, 1, 5, 0, 4],
    [4, 4, 1, 4, 0, 1, 4],
    [1, 5, 2, 3, 1, 2, 0],
    [0, 2, 2, 5, 1, 3, 0],
    [1, 3, 3, 0, 2, 4, 1],
    [2, 4, 4, 1, 3, 5, 2],
    [3, 5, 5, 2, 4, 0, 3],
    [4, 0, 0, 3, 5, 1, 4],
    [5, 1, 1, 4, 0, 2, 5],
    [0, 2, 3, 0, 1, 0, 3],
    [1, 3, 4, 1, 2, 1, 4],
    [2, 4, 5, 2, 3, 2, 5],
    [3, 5, 0, 3, 4, 3, 0],
    [4, 0, 1, 4, 5, 4, 1],
    [5, 1, 2, 5, 0, 5, 2],
    [0, 4, 1, 4, 3, 4, 3],
    [1, 5, 2, 5, 4, 5, 4],
    [2, 0, 3, 0, 5, 0, 5],
    [3, 1, 4, 1, 0, 2, 0],
    [4, 2, 5, 2, 1, 2, 1],
    [5, 3, 0, 3, 2, 3, 2],
    [0, 1, 4, 5, 2, 0, 5],
    [1, 2, 5, 0, 3, 1, 0],
    [2, 3, 0, 1, 4, 2, 1],
    [3, 4, 1, 2, 5, 3, 2],
    [4, 5, 2, 3, 0, 4, 3],
    [5, 0, 3, 4, 1, 5, 4],
    [0, 5, 1, 2, 4, 5, 0],
    [1, 0, 2, 3, 5, 0, 1],
    [2, 1, 3, 4, 0, 1, 2],
    [3, 2, 4, 5, 1, 2, 3],
    [4, 3, 5, 0, 2, 3, 4],
    [5, 4, 0, 1, 3, 4, 5],
    [0, 5, 4, 1, 0, 1, 4],
    [1, 0, 5, 2, 1, 0, 5],
    [2, 1, 0, 3, 2, 4, 0],
    [3, 2, 1, 4, 3, 4, 1],
    [4, 3, 2, 5, 4, 0, 2],
    [5, 4, 3, 0, 5, 0, 3],
    [0, 2, 0, 5, 3, 3, 1],
    [1, 3, 1, 0, 4, 4, 2],
    [2, 4, 2, 1, 5, 5, 3],
    [3, 5, 3, 2, 0, 0, 4],
    [4, 0, 4, 3, 1, 1, 5],
    [5, 1, 5, 4, 2, 2, 0],
    [0, 3, 3, 5, 4, 5, 5],
    [1, 4, 4, 4, 5, 0, 0],
    [2, 5, 5, 5, 0, 1, 1],
    [3, 0, 0, 2, 1, 2, 2],
    [4, 1, 1, 1, 2, 3, 3],
    [5, 2, 2, 2, 3, 4, 4],
    [0, 1, 5, 2, 0, 4, 1],
    [1, 2, 0, 3, 1, 5, 2],
    [2, 3, 1, 4, 2, 0, 3],
    [3, 4, 2, 5, 3, 1, 4],
    [4, 5, 3, 0, 4, 2, 5],
    [5, 0, 4, 1, 5, 3, 0],
    [0, 2, 4, 3, 3, 5, 0],
    [1, 3, 5, 4, 4, 0, 1],
    [2, 4, 0, 5, 5, 1, 2],
    [3, 5, 1, 0, 0, 2, 3],
    [4, 0, 2, 1, 1, 3, 4],
    [5, 1, 3, 2, 2, 4, 5],
    [0, 1, 4, 0, 4, 3, 3],
    [1, 2, 5, 1, 5, 4, 4],
    [2, 3, 0, 2, 0, 5, 5],
    [3, 4, 1, 3, 1, 0, 0],
    [4, 5, 2, 4, 2, 1, 1],
    [5, 0, 3, 5, 3, 2, 2],
    [0, 3, 1, 1, 3, 1, 5],
    [1, 4, 2, 2, 4, 2, 0],
    [2, 5, 3, 3, 5, 3, 1],
    [3, 0, 4, 4, 0, 4, 2],
    [4, 1, 5, 5, 1, 5, 3],
    [5, 2, 0, 0, 2, 0, 4],
    [0, 2, 2, 3, 4, 1, 1],
    [1, 3, 3, 4, 5, 2, 2],
    [2, 4, 4, 5, 0, 3, 3],
    [3, 5, 5, 0, 1, 4, 4],
    [4, 0, 0, 1, 2, 5, 5],
    [5, 1, 1, 2, 3, 0, 0],
    [0, 4, 2, 0, 0, 0, 2],
    [1, 5, 3, 1, 1, 1, 0],
    [2, 0, 4, 2, 2, 2, 4],
    [3, 1, 5, 3, 3, 3, 2],
    [4, 2, 0, 4, 4, 4, 3],
    [5, 3, 1, 5, 5, 5, 4],
    [0, 1, 3, 3, 3, 5, 4],
    [1, 2, 4, 4, 4, 0, 5],
    [2, 3, 5, 5, 5, 1, 0],
    [3, 4, 0, 0, 0, 2, 1],
    [4, 5, 1, 1, 1, 3, 2],
    [5, 0, 2, 2, 2, 4, 3],
    [2, 3, 3, 3, 0, 0, 0],
    [1, 4, 3, 1, 4, 2, 4],
    [1, 4, 3, 4, 1, 5, 2],
    [2, 0, 0, 0, 5, 5, 1],
    [5, 5, 5, 5, 2, 3, 2],
    [0, 0, 1, 0, 3, 3, 5],
    [1, 2, 2, 4, 0, 4, 5],
    [3, 1, 4, 4, 1, 1, 1],
    [5, 5, 2, 2, 5, 1, 5],
    [3, 0, 0, 5, 3, 0, 2],
    [5, 3, 0, 1, 2, 2, 0],
    [0, 5, 2, 5, 3, 4, 3],
    [5, 1, 1, 2, 0, 3, 0],
    [3, 1, 4, 2, 5, 0, 5],
    [3, 1, 5, 0, 0, 1, 5],
    [4, 2, 5, 1, 4, 1, 2],
    [0, 3, 0, 3, 1, 2, 5]]

open Lean Elab Term


open Mathlib.Tactic.Sat
open Std.Internal


private def readSourceRelativeFile (path : String) : TermElabM String := do
  let ctx ← readThe Lean.Core.Context
  let srcPath := System.FilePath.mk ctx.fileName
  let some srcDir := srcPath.parent
    | throwError "cannot compute parent directory of `{srcPath}`"
  IO.FS.readFile (srcDir / System.FilePath.mk path)

private def readLRATStringTermCore (stx : Term) : TermElabM String := do
  match stx with
  | `($s:str) => pure s.getString
  | `(include_str $path:term) =>
      match path with
      | `($s:str) => readSourceRelativeFile s.getString
      | _ => throwError "expected a string literal path in `include_str`"
  | _ => throwError "expected a string literal or `(include_str \"path\")`"

private def readLRATStringTerm (stx : Term) : TermElabM String := do
  match stx with
  | `(($inner:term)) => readLRATStringTermCore inner
  | _ => readLRATStringTermCore stx

private def addLRATCNFProof
    (formulaName proofName : Name)
    (cnf lrat : String) : TermElabM Unit := do
  let Parsec.ParseResult.success _ (_nvars, clauses) :=
      Parser.parseDimacs ⟨cnf, cnf.startPos⟩
    | throwError "parse CNF failed"
  if clauses.isEmpty then
    throwError "empty CNF"
  let formulaValue := buildConj clauses 0 clauses.size
  addDecl <| Declaration.defnDecl {
    name := formulaName
    levelParams := []
    type := Lean.mkConst ``Sat.Fmla
    value := formulaValue
    hints := ReducibilityHints.regular 0
    safety := DefinitionSafety.safe
  }
  let formula := Lean.mkConst formulaName
  let Parsec.ParseResult.success _ steps := Parser.parseLRAT ⟨lrat, lrat.startPos⟩
    | throwError "parse LRAT failed"
  let proof ← buildProof clauses formula formulaValue steps
  addDecl <| Declaration.thmDecl {
    name := proofName
    levelParams := []
    type := mkApp2 (Lean.mkConst ``Sat.Fmla.proof) formula (buildClause #[])
    value := proof
  }

elab "lrat_cnf_proof " fName:ident ppSpace pName:ident
    ppSpace cnf:term:max ppSpace lrat:term:max : command => do
  let formulaName := (← getCurrNamespace) ++ fName.1.getId
  let proofName := (← getCurrNamespace) ++ pName.1.getId
  Lean.Elab.Command.liftTermElabM do
    let cnf ← readLRATStringTerm cnf
    let lrat ← readLRATStringTerm lrat
    addLRATCNFProof formulaName proofName cnf lrat

lrat_cnf_proof k673CoverFormula k673CoverProof
  (include_str "../../../../data/K_6_7_3/cover.cnf")
  (include_str "../../../../data/K_6_7_3/cover.lrat")

open Mathlib.Tactic.Sat (buildConj buildClause)

/-- 0-indexed SAT variable for "position `j` has symbol `v`" (matches the
Python encoder's `j*6+v+1`, 1-indexed DIMACS, after `Literal.ofInt`'s `-1`
offset back to 0-indexed). -/
def satVar (j v : Nat) : Nat := j * 6 + v

def atLeastClause (j : Nat) : Sat.Clause :=
  (List.range 6).map (fun v => Sat.Literal.pos (satVar j v))

def atMostClauses (j : Nat) : Sat.Fmla :=
  (List.range 6).flatMap (fun v1 =>
    ((List.range 6).filter (v1 < ·)).map (fun v2 =>
      ([Sat.Literal.neg (satVar j v1), Sat.Literal.neg (satVar j v2)] : Sat.Clause)))

def oneHotClauses : Sat.Fmla :=
  (List.range 7).flatMap (fun j => atLeastClause j :: atMostClauses j)

/-- `combinations l k` = all size-`k` sublists of `l`, in the same
lexicographic order as Python's `itertools.combinations`. -/
def combinations : List Nat → Nat → List (List Nat)
  | _, 0 => [[]]
  | [], _ + 1 => []
  | x :: xs, k + 1 => (combinations xs k).map (x :: ·) ++ combinations xs (k + 1)

/-- The 35 (= C(7,4)) "far from `c`" clauses: for every size-4 subset of
positions, at least one of them must disagree with `c`. -/
def farClauses (c : List Nat) : Sat.Fmla :=
  (combinations (List.range 7) 4).map (fun T =>
    (T.map (fun j => Sat.Literal.neg (satVar j (c.getD j 0))) : Sat.Clause))

def codeClauses (code : List (List Nat)) : Sat.Fmla :=
  code.flatMap farClauses

def k673DirectFormula : Sat.Fmla := oneHotClauses ++ codeClauses k673Code

-- Reconcile the parsed-from-text formula with the hand-written generator.
-- Both are closed, concrete `List Clause` values of the same size (~8057
-- clauses); `rfl` checks definitional equality directly, no `Decidable`
-- instance needed (unlike `decide`).
set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
theorem k673CoverFormula_eq_direct :
    k673CoverFormula = k673DirectFormula := by
  rfl

/-- The natural `Sat.Valuation` for a q-ary word: index `idx` is "on" iff
position `idx / 6` of `x` carries symbol `idx % 6`. -/
def qaryWordValuation (x : QaryWord 6 7) : Sat.Valuation :=
  fun idx => (x ⟨idx / 6 % 7, Nat.mod_lt _ (by decide)⟩).val = idx % 6

theorem qaryWordValuation_satVar (x : QaryWord 6 7) (j v : Nat) (hj : j < 7) (hv : v < 6) :
    qaryWordValuation x (satVar j v) ↔ (x ⟨j, hj⟩).val = v := by
  have hj' : (j * 6 + v) / 6 % 7 = j := by omega
  have hv' : (j * 6 + v) % 6 = v := by omega
  have hFin : (⟨(j * 6 + v) / 6 % 7, Nat.mod_lt _ (by decide)⟩ : Fin 7) = ⟨j, hj⟩ :=
    Fin.ext hj'
  show (x ⟨(j * 6 + v) / 6 % 7, Nat.mod_lt _ (by decide)⟩).val = (j * 6 + v) % 6 ↔
      (x ⟨j, hj⟩).val = v
  rw [hFin, hv']

theorem satisfies_atLeastClause (x : QaryWord 6 7) (j : Nat) (hj : j < 7) :
    (qaryWordValuation x).satisfies (atLeastClause j) := by
  have hlt : (x ⟨j, hj⟩).val < 6 := (x ⟨j, hj⟩).isLt
  show (qaryWordValuation x).neg (Sat.Literal.pos (satVar j 0)) →
       (qaryWordValuation x).neg (Sat.Literal.pos (satVar j 1)) →
       (qaryWordValuation x).neg (Sat.Literal.pos (satVar j 2)) →
       (qaryWordValuation x).neg (Sat.Literal.pos (satVar j 3)) →
       (qaryWordValuation x).neg (Sat.Literal.pos (satVar j 4)) →
       (qaryWordValuation x).neg (Sat.Literal.pos (satVar j 5)) →
       False
  simp only [Sat.Valuation.neg, qaryWordValuation_satVar x j 0 hj (by omega),
    qaryWordValuation_satVar x j 1 hj (by omega), qaryWordValuation_satVar x j 2 hj (by omega),
    qaryWordValuation_satVar x j 3 hj (by omega), qaryWordValuation_satVar x j 4 hj (by omega),
    qaryWordValuation_satVar x j 5 hj (by omega)]
  omega

theorem satisfies_atMostPair (x : QaryWord 6 7) (j v1 v2 : Nat) (hj : j < 7) (hv1 : v1 < 6)
    (hv2 : v2 < 6) (hne : v1 ≠ v2) :
    (qaryWordValuation x).satisfies
      ([Sat.Literal.neg (satVar j v1), Sat.Literal.neg (satVar j v2)] : Sat.Clause) := by
  show (qaryWordValuation x).neg (Sat.Literal.neg (satVar j v1)) →
       (qaryWordValuation x).neg (Sat.Literal.neg (satVar j v2)) → False
  simp only [Sat.Valuation.neg, qaryWordValuation_satVar x j v1 hj hv1,
    qaryWordValuation_satVar x j v2 hj hv2]
  omega

theorem satisfies_atMostClauses (x : QaryWord 6 7) (j : Nat) (hj : j < 7) (clause : Sat.Clause)
    (hmem : clause ∈ atMostClauses j) :
    (qaryWordValuation x).satisfies clause := by
  unfold atMostClauses at hmem
  obtain ⟨v1, hv1r, hclause⟩ := List.mem_flatMap.mp hmem
  obtain ⟨v2, hv2f, rfl⟩ := List.mem_map.mp hclause
  obtain ⟨hv2r, hlt⟩ := List.mem_filter.mp hv2f
  have hv1 : v1 < 6 := List.mem_range.mp hv1r
  have hv2 : v2 < 6 := List.mem_range.mp hv2r
  have hlt' : v1 < v2 := by simpa using hlt
  exact satisfies_atMostPair x j v1 v2 hj hv1 hv2 hlt'.ne

theorem satisfies_oneHotClauses (x : QaryWord 6 7) (clause : Sat.Clause)
    (hmem : clause ∈ oneHotClauses) :
    (qaryWordValuation x).satisfies clause := by
  unfold oneHotClauses at hmem
  obtain ⟨j, hjr, hclause⟩ := List.mem_flatMap.mp hmem
  have hj : j < 7 := List.mem_range.mp hjr
  rcases List.mem_cons.mp hclause with rfl | hclause'
  · exact satisfies_atLeastClause x j hj
  · exact satisfies_atMostClauses x j hj clause hclause'

theorem combinations_sublist :
    ∀ (l : List Nat) (k : Nat) (T : List Nat), T ∈ combinations l k → List.Sublist T l ∧ T.length = k := by
  intro l
  induction l with
  | nil =>
      intro k T hT
      cases k with
      | zero => simp only [combinations, List.mem_singleton] at hT; subst hT; exact ⟨.slnil, rfl⟩
      | succ k => simp [combinations] at hT
  | cons a as ih =>
      intro k T hT
      cases k with
      | zero => simp only [combinations, List.mem_singleton] at hT; subst hT
                exact ⟨List.nil_sublist _, rfl⟩
      | succ k =>
        rw [combinations] at hT
        rcases List.mem_append.mp hT with h1 | h2
        · obtain ⟨T', hT', rfl⟩ := List.mem_map.mp h1
          obtain ⟨hsub, hlen⟩ := ih k T' hT'
          exact ⟨(List.Sublist.cons_cons a hsub), by simpa using hlen⟩
        · obtain ⟨hsub, hlen⟩ := ih (k + 1) T h2
          exact ⟨(List.Sublist.cons a hsub), hlen⟩

theorem combinations_nodup {l : List Nat} (hl : l.Nodup) (k : Nat) (T : List Nat)
    (hT : T ∈ combinations l k) : T.Nodup :=
  List.Sublist.nodup (combinations_sublist l k T hT).1 hl

/-- Pigeonhole: if `f` and `g` disagree on at least 4 of the 7 positions,
every size-4 subset of positions contains a disagreement. -/
theorem length_filter_add_filter_not (p : Nat → Bool) (l : List Nat) :
    (l.filter p).length + (l.filter (fun x => !p x)).length = l.length := by
  induction l with
  | nil => rfl
  | cons a l ih =>
      simp only [List.filter_cons, List.length_cons]
      by_cases h : p a = true <;> simp [h, ← ih] <;> omega

theorem exists_disagree_of_far (f g : Nat → Nat)
    (hfar : 4 ≤ ((List.range 7).filter (fun j => decide (f j ≠ g j))).length) :
    ∀ T ∈ combinations (List.range 7) 4, ∃ j ∈ T, f j ≠ g j := by
  intro T hT
  by_contra hno
  push Not at hno
  obtain ⟨hsub, hlen⟩ := combinations_sublist (List.range 7) 4 T hT
  set p : Nat → Bool := fun j => decide (f j ≠ g j) with hp
  have hTfilter : T.filter (fun j => !p j) = T := by
    apply List.filter_eq_self.mpr
    intro j hj
    simp only [hp, Bool.not_eq_true', decide_eq_false_iff_not, not_not]
    exact hno j hj
  have hTsub' : List.Sublist (T.filter (fun j => !p j)) ((List.range 7).filter (fun j => !p j)) :=
    List.Sublist.filter _ hsub
  rw [hTfilter] at hTsub'
  have hlen' : T.length ≤ ((List.range 7).filter (fun j => !p j)).length := hTsub'.length_le
  have hpart := length_filter_add_filter_not p (List.range 7)
  simp only [List.length_range] at hpart
  omega

/-- Total Nat-valued accessor for a `QaryWord`'s symbol at position `j`
(`0` out of range) -- avoids threading `j < 7` proofs through existentials. -/
def xVal (x : QaryWord 6 7) (j : Nat) : Nat :=
  if h : j < 7 then (x ⟨j, h⟩).val else 0

theorem qaryWordValuation_satVar' (x : QaryWord 6 7) (j v : Nat) (hj : j < 7) (hv : v < 6) :
    qaryWordValuation x (satVar j v) ↔ xVal x j = v := by
  unfold xVal
  rw [dif_pos hj]
  exact qaryWordValuation_satVar x j v hj hv

theorem satisfies_of_neg_mem {v : Sat.Valuation} :
    ∀ (c : List Sat.Literal) {i}, Sat.Literal.neg i ∈ c → ¬ v i → v.satisfies c
  | l :: c, i, hmem, hv => by
      rcases List.mem_cons.mp hmem with rfl | hmem'
      · exact fun hVi => absurd hVi hv
      · exact fun _ => satisfies_of_neg_mem c hmem' hv

theorem satisfies_farClauseOne (x : QaryWord 6 7) (c : List Nat) (T : List Nat)
    (hT7 : ∀ j ∈ T, j < 7) (hc6 : ∀ j, c.getD j 0 < 6)
    (hex : ∃ j ∈ T, xVal x j ≠ c.getD j 0) :
    (qaryWordValuation x).satisfies
      (T.map (fun j => Sat.Literal.neg (satVar j (c.getD j 0))) : Sat.Clause) := by
  obtain ⟨j, hjT, hne⟩ := hex
  refine satisfies_of_neg_mem _ (List.mem_map.mpr ⟨j, hjT, rfl⟩) ?_
  rw [qaryWordValuation_satVar' x j (c.getD j 0) (hT7 j hjT) (hc6 j)]
  exact hne

theorem satisfies_farClauses (x : QaryWord 6 7) (c : List Nat) (hc6 : ∀ j, c.getD j 0 < 6)
    (hfar : 4 ≤ ((List.range 7).filter (fun j => decide (xVal x j ≠ c.getD j 0))).length)
    (clause : Sat.Clause) (hmem : clause ∈ farClauses c) :
    (qaryWordValuation x).satisfies clause := by
  unfold farClauses at hmem
  obtain ⟨T, hT, rfl⟩ := List.mem_map.mp hmem
  have hT7 : ∀ j ∈ T, j < 7 := fun j hj =>
    List.mem_range.mp ((combinations_sublist _ _ _ hT).1.subset hj)
  exact satisfies_farClauseOne x c T hT7 hc6 (exists_disagree_of_far (xVal x) (c.getD · 0) hfar T hT)

theorem satisfies_codeClauses (x : QaryWord 6 7) (code : List (List Nat))
    (hc6 : ∀ c ∈ code, ∀ j, c.getD j 0 < 6)
    (hfar : ∀ c ∈ code, 4 ≤ ((List.range 7).filter (fun j => decide (xVal x j ≠ c.getD j 0))).length)
    (clause : Sat.Clause) (hmem : clause ∈ codeClauses code) :
    (qaryWordValuation x).satisfies clause := by
  unfold codeClauses at hmem
  obtain ⟨c, hcMem, hclause⟩ := List.mem_flatMap.mp hmem
  exact satisfies_farClauses x c (hc6 c hcMem) (hfar c hcMem) clause hclause

/-- The actual covering theorem: every `QaryWord 6 7` is within Hamming
distance `3` of some codeword in `k673Code` -- reached entirely via the
SAT-UNSAT/LRAT proof, no `decide`/`native_decide` anywhere in this chain. -/
theorem k673_covers (hc6 : ∀ c ∈ k673Code, ∀ j, c.getD j 0 < 6) (x : QaryWord 6 7) :
    ∃ c ∈ k673Code, ((List.range 7).filter (fun j => decide (xVal x j ≠ c.getD j 0))).length ≤ 3 := by
  by_contra hno
  push Not at hno
  have hsat : (qaryWordValuation x).satisfies_fmla k673DirectFormula := by
    refine ⟨fun clause hmem => ?_⟩
    rcases List.mem_append.mp hmem with h1 | h2
    · exact satisfies_oneHotClauses x clause h1
    · exact satisfies_codeClauses x k673Code hc6 (fun c hc => by have := hno c hc; omega) clause h2
  rw [← k673CoverFormula_eq_direct] at hsat
  exact k673CoverProof (qaryWordValuation x) hsat

/-- Convert a length-7, digits-`<6` `List Nat` codeword into an actual
`QaryWord 6 7`. The `% 6` is a safety net (irrelevant for well-formed
codewords, where `c.getD j 0 < 6` already). -/
def toQaryWord (c : List Nat) : QaryWord 6 7 :=
  fun i => ⟨c.getD i.val 0 % 6, Nat.mod_lt _ (by decide)⟩

theorem hammingDist_le_of_count_le (x : QaryWord 6 7) (c : List Nat) (hc6 : ∀ j, c.getD j 0 < 6)
    (n : Nat) (hcount : ((List.range 7).filter (fun j => decide (xVal x j ≠ c.getD j 0))).length ≤ n) :
    hammingDist x (toQaryWord c) ≤ n := by
  have hcard : (Finset.univ.filter (fun i : Fin 7 => x i ≠ toQaryWord c i)).card ≤ n := by
    have hinj : Set.InjOn Fin.val (Finset.univ.filter (fun i : Fin 7 => x i ≠ toQaryWord c i) : Set (Fin 7)) :=
      fun a _ b _ h => Fin.ext h
    have hmaps : ∀ i ∈ Finset.univ.filter (fun i : Fin 7 => x i ≠ toQaryWord c i),
        i.val ∈ ((List.range 7).filter (fun j => decide (xVal x j ≠ c.getD j 0))).toFinset := by
      intro i hi
      simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hi
      rw [List.mem_toFinset, List.mem_filter, List.mem_range, decide_eq_true_eq]
      refine ⟨i.isLt, ?_⟩
      intro heq
      apply hi
      have hxi : xVal x i.val = (x i).val := by
        unfold xVal; rw [dif_pos i.isLt]
      have hyi : (toQaryWord c) i = ⟨c.getD i.val 0 % 6, Nat.mod_lt _ (by decide)⟩ := rfl
      have hmod : c.getD i.val 0 % 6 = c.getD i.val 0 := Nat.mod_eq_of_lt (hc6 i.val)
      apply Fin.ext
      rw [hyi]
      simp only [hmod]
      rw [← hxi, heq]
    calc (Finset.univ.filter (fun i : Fin 7 => x i ≠ toQaryWord c i)).card
        ≤ ((List.range 7).filter (fun j => decide (xVal x j ≠ c.getD j 0))).toFinset.card :=
          Finset.card_le_card_of_injOn Fin.val hmaps hinj
      _ ≤ ((List.range 7).filter (fun j => decide (xVal x j ≠ c.getD j 0))).length :=
          List.toFinset_card_le _
      _ ≤ n := hcount
  exact hcard

theorem getD_lt_of_forall_mem_lt {c : List Nat} (h : ∀ d ∈ c, d < 6) : ∀ j, c.getD j 0 < 6 := by
  induction c with
  | nil => intro j; simp [List.getD]
  | cons a as ih =>
      intro j
      cases j with
      | zero => simpa using h a (List.mem_cons_self ..)
      | succ j =>
          rw [List.getD_cons_succ]
          exact ih (fun d hd => h d (List.mem_cons_of_mem _ hd)) j

set_option maxRecDepth 4000 in
theorem k673Code_entries_lt6 : ∀ c ∈ k673Code, ∀ d ∈ c, d < 6 := by decide

theorem k673Code_getD_lt : ∀ c ∈ k673Code, ∀ j, c.getD j 0 < 6 :=
  fun c hc => getD_lt_of_forall_mem_lt (k673Code_entries_lt6 c hc)

def k673CodeFinset : Finset (QaryWord 6 7) := (k673Code.map toQaryWord).toFinset

set_option maxRecDepth 4000 in
theorem k673Code_length : k673Code.length = 227 := by decide

theorem k673CodeFinset_card_le : k673CodeFinset.card ≤ 227 := by
  calc k673CodeFinset.card
      ≤ (k673Code.map toQaryWord).length := List.toFinset_card_le _
    _ = k673Code.length := by rw [List.length_map]
    _ = 227 := k673Code_length

theorem k673CodeFinset_covers : CoversFinset k673CodeFinset 3 := by
  intro x
  obtain ⟨c, hc, hcount⟩ := k673_covers k673Code_getD_lt x
  refine ⟨toQaryWord c, ?_, ?_⟩
  · rw [k673CodeFinset, List.mem_toFinset]
    exact List.mem_map_of_mem hc
  · exact hammingDist_le_of_count_le x c (k673Code_getD_lt c hc) 3 hcount

def k673Explicit : ExplicitQaryUpper 6 7 3 227 :=
  { code := k673CodeFinset
    card_le := k673CodeFinset_card_le
    covers := k673CodeFinset_covers }

def lratSenary673UpperName : String := "lean_lrat_sat_upper"

def lratSenary673Upper (q n r : Nat) : Nat :=
  if q = 6 ∧ n = 7 ∧ r = 3 then 227 else trivialUpper q n r

theorem lratSenary673Upper_valid (q n r : Nat) :
    QaryKUpper q n r (lratSenary673Upper q n r) := by
  by_cases h : q = 6 ∧ n = 7 ∧ r = 3
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [lratSenary673Upper] using k673Explicit.toUpper
  · simpa [lratSenary673Upper, h] using trivialUpper_valid q n r

def lratSenary673UpperSource : UpperBoundSource where
  value := lratSenary673Upper
  trace := fun q n r =>
    .primitive lratSenary673UpperName (lratSenary673Upper_valid q n r)

end Senary673LRAT
end Database
end CoveringCodes
