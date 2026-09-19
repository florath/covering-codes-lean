import Mathlib.Tactic.Sat.FromLRAT
import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial

/-!
# Explicit upper bound for `K_7(9,5)`, verified via SAT-UNSAT + LRAT

`K_7(9,5) <= 240` is reformulated as: no assignment of a symbol to each of
the 9 coordinates makes the assignment simultaneously "far" (Hamming
distance > 5) from every one of the 240 codewords. This is exactly UNSAT of
a CNF built from one-hot coordinate-symbol variables, plus, per codeword, a
"disagree in >= 6 positions" cardinality constraint (encoded directly as
clauses over the negated one-hot literals -- no auxiliary variables).

The 240-word code is due to Mark Marosi, "New upper and lower bounds on
covering codes K_q(n,R) for alphabets of size 5 <= q <= 21" (arXiv:2608.19872,
`lit_marosi_2026`). Same technique as `K_6_7_3.lean`, with q, n, r baked in as
literals throughout (kept fully hardcoded, rather than going through a generic
module, because the `rfl`-based CNF-reconciliation step below is only
tractable for the kernel when every function it must reduce has its
parameters as literals from the start, not substituted through generic
function arguments).
-/

namespace CoveringCodes
namespace Database

namespace Septenary795LRAT

def code : List (List Nat) :=
  [[3, 2, 4, 2, 3, 5, 1, 0, 5],
    [6, 3, 5, 6, 6, 6, 2, 6, 6],
    [2, 1, 5, 4, 6, 0, 5, 2, 5],
    [3, 0, 6, 6, 0, 1, 2, 2, 1],
    [5, 5, 1, 2, 5, 5, 1, 5, 3],
    [6, 1, 2, 1, 1, 4, 0, 4, 2],
    [6, 0, 6, 4, 5, 1, 4, 0, 2],
    [5, 6, 6, 6, 3, 3, 2, 4, 5],
    [1, 6, 1, 0, 3, 2, 6, 0, 0],
    [3, 4, 2, 3, 3, 5, 6, 0, 0],
    [0, 3, 4, 3, 2, 0, 4, 4, 6],
    [4, 6, 2, 6, 3, 1, 1, 5, 6],
    [0, 1, 4, 4, 5, 0, 2, 1, 6],
    [3, 2, 2, 0, 5, 5, 6, 5, 2],
    [0, 5, 0, 0, 0, 6, 6, 3, 1],
    [3, 3, 3, 0, 4, 6, 4, 3, 6],
    [6, 4, 3, 0, 0, 4, 4, 1, 1],
    [3, 5, 1, 0, 1, 4, 5, 0, 6],
    [6, 2, 0, 0, 6, 2, 0, 3, 1],
    [1, 1, 5, 2, 5, 5, 3, 3, 6],
    [2, 0, 4, 6, 0, 4, 6, 4, 5],
    [3, 6, 5, 6, 0, 1, 4, 5, 5],
    [0, 2, 5, 5, 0, 4, 3, 0, 5],
    [1, 3, 6, 3, 1, 1, 5, 3, 2],
    [2, 4, 5, 5, 2, 3, 6, 3, 2],
    [4, 6, 4, 2, 4, 6, 4, 1, 0],
    [1, 5, 0, 4, 0, 1, 1, 1, 0],
    [5, 0, 5, 3, 2, 0, 1, 1, 1],
    [6, 1, 1, 0, 5, 4, 1, 4, 3],
    [2, 5, 4, 3, 4, 6, 3, 6, 6],
    [4, 4, 0, 4, 5, 4, 5, 0, 1],
    [2, 3, 1, 2, 3, 1, 6, 2, 4],
    [1, 3, 3, 0, 5, 4, 2, 3, 5],
    [0, 3, 1, 4, 6, 4, 2, 4, 0],
    [5, 2, 6, 4, 4, 5, 4, 4, 4],
    [3, 1, 0, 6, 6, 4, 2, 5, 6],
    [1, 5, 2, 0, 2, 0, 5, 5, 2],
    [0, 0, 4, 2, 6, 2, 1, 5, 4],
    [5, 3, 2, 3, 0, 5, 2, 0, 3],
    [5, 5, 6, 4, 2, 6, 2, 5, 0],
    [3, 0, 0, 1, 4, 0, 3, 2, 5],
    [5, 5, 2, 4, 6, 4, 6, 6, 2],
    [0, 2, 3, 0, 6, 3, 6, 1, 4],
    [5, 0, 2, 5, 4, 3, 5, 3, 6],
    [1, 5, 3, 2, 1, 2, 0, 1, 1],
    [1, 2, 1, 5, 5, 0, 6, 1, 1],
    [2, 5, 3, 0, 3, 4, 0, 0, 3],
    [5, 0, 0, 0, 4, 2, 1, 1, 5],
    [5, 6, 0, 3, 1, 1, 3, 6, 4],
    [0, 0, 6, 6, 4, 2, 3, 0, 2],
    [3, 4, 4, 4, 4, 0, 0, 4, 1],
    [2, 6, 6, 1, 0, 5, 6, 5, 1],
    [3, 2, 2, 3, 0, 6, 1, 6, 6],
    [1, 3, 3, 2, 1, 0, 4, 0, 4],
    [6, 6, 1, 3, 4, 6, 1, 1, 2],
    [1, 2, 5, 4, 1, 3, 2, 0, 4],
    [6, 1, 0, 5, 1, 6, 4, 2, 2],
    [1, 5, 2, 6, 1, 0, 4, 6, 3],
    [4, 0, 3, 5, 0, 1, 6, 5, 3],
    [6, 5, 3, 1, 2, 2, 6, 4, 5],
    [2, 1, 6, 5, 1, 2, 3, 5, 3],
    [0, 6, 2, 6, 3, 0, 0, 3, 0],
    [6, 6, 3, 2, 0, 0, 0, 2, 6],
    [2, 5, 5, 2, 2, 3, 1, 2, 0],
    [5, 6, 0, 2, 6, 3, 0, 3, 5],
    [5, 6, 0, 5, 0, 2, 5, 6, 4],
    [0, 4, 6, 2, 0, 3, 5, 6, 2],
    [1, 6, 6, 3, 6, 4, 3, 2, 4],
    [0, 3, 1, 2, 1, 2, 5, 6, 1],
    [1, 2, 2, 5, 5, 5, 4, 2, 0],
    [5, 0, 5, 0, 4, 1, 0, 2, 3],
    [4, 6, 4, 3, 4, 4, 6, 2, 1],
    [4, 0, 4, 4, 3, 4, 4, 3, 2],
    [3, 0, 4, 0, 0, 6, 1, 4, 0],
    [4, 2, 1, 6, 6, 0, 5, 1, 4],
    [5, 2, 0, 2, 6, 0, 4, 6, 3],
    [0, 5, 2, 0, 1, 2, 2, 5, 6],
    [2, 2, 4, 6, 4, 2, 2, 4, 2],
    [1, 4, 6, 5, 6, 1, 2, 1, 5],
    [1, 4, 0, 5, 2, 3, 2, 6, 3],
    [1, 0, 1, 1, 6, 4, 5, 6, 0],
    [4, 6, 5, 0, 1, 5, 3, 4, 1],
    [2, 2, 6, 0, 5, 3, 0, 6, 5],
    [3, 3, 4, 0, 6, 0, 5, 3, 3],
    [5, 1, 4, 0, 2, 1, 6, 0, 4],
    [3, 3, 6, 3, 5, 2, 0, 0, 4],
    [2, 5, 4, 5, 2, 5, 2, 6, 1],
    [1, 3, 3, 6, 3, 5, 0, 2, 2],
    [2, 2, 1, 4, 0, 2, 5, 4, 2],
    [4, 6, 0, 4, 2, 5, 0, 6, 6],
    [2, 4, 4, 3, 1, 1, 0, 1, 3],
    [5, 2, 1, 6, 5, 2, 0, 2, 2],
    [4, 4, 6, 0, 2, 2, 4, 1, 2],
    [5, 5, 5, 1, 0, 0, 5, 0, 2],
    [0, 1, 1, 4, 2, 1, 0, 6, 5],
    [0, 4, 5, 0, 1, 4, 4, 2, 4],
    [6, 0, 1, 3, 3, 0, 6, 5, 5],
    [4, 3, 1, 4, 4, 2, 3, 4, 4],
    [1, 6, 3, 4, 5, 0, 1, 6, 2],
    [5, 6, 4, 4, 6, 2, 4, 0, 1],
    [6, 5, 4, 4, 0, 3, 2, 5, 4],
    [3, 5, 1, 6, 5, 3, 4, 2, 0],
    [4, 1, 2, 2, 3, 1, 2, 4, 1],
    [2, 2, 0, 2, 5, 4, 0, 5, 4],
    [0, 3, 0, 2, 3, 6, 3, 5, 1],
    [4, 1, 3, 2, 1, 0, 2, 1, 5],
    [4, 4, 2, 2, 6, 6, 3, 4, 3],
    [0, 1, 4, 1, 3, 5, 1, 3, 4],
    [0, 1, 5, 4, 4, 3, 0, 5, 0],
    [5, 1, 3, 6, 5, 1, 3, 1, 0],
    [3, 0, 5, 5, 3, 2, 4, 6, 3],
    [4, 0, 5, 1, 5, 1, 6, 0, 5],
    [3, 3, 2, 1, 5, 4, 0, 1, 3],
    [4, 0, 0, 0, 5, 3, 1, 0, 5],
    [5, 4, 3, 1, 6, 1, 2, 3, 2],
    [6, 6, 5, 2, 2, 4, 6, 0, 4],
    [1, 1, 0, 1, 2, 1, 4, 4, 6],
    [2, 4, 3, 4, 3, 2, 5, 3, 0],
    [3, 1, 3, 5, 6, 4, 3, 6, 4],
    [5, 2, 5, 6, 1, 4, 1, 5, 1],
    [5, 1, 6, 1, 3, 6, 5, 6, 1],
    [2, 6, 2, 0, 6, 1, 3, 1, 1],
    [5, 0, 1, 1, 0, 3, 3, 1, 6],
    [4, 5, 6, 1, 5, 3, 4, 3, 1],
    [3, 0, 3, 3, 1, 2, 0, 2, 5],
    [6, 3, 5, 2, 6, 5, 1, 4, 2],
    [6, 3, 2, 6, 5, 5, 1, 6, 4],
    [5, 3, 4, 5, 4, 0, 0, 0, 0],
    [6, 4, 0, 1, 6, 1, 1, 2, 0],
    [2, 0, 2, 3, 5, 3, 5, 4, 4],
    [4, 0, 5, 3, 4, 0, 2, 6, 0],
    [5, 4, 4, 6, 1, 2, 1, 0, 6],
    [6, 3, 6, 4, 0, 5, 0, 4, 5],
    [2, 0, 1, 0, 6, 5, 1, 2, 6],
    [3, 6, 1, 5, 4, 1, 2, 3, 4],
    [2, 2, 6, 1, 1, 0, 1, 6, 6],
    [3, 3, 4, 1, 1, 3, 6, 5, 0],
    [0, 0, 0, 6, 2, 5, 4, 3, 1],
    [1, 1, 2, 6, 4, 5, 5, 3, 5],
    [2, 1, 0, 6, 4, 4, 6, 6, 3],
    [1, 1, 4, 3, 6, 3, 6, 6, 1],
    [2, 1, 3, 4, 6, 6, 1, 0, 1],
    [2, 3, 0, 3, 6, 5, 2, 1, 2],
    [5, 4, 0, 2, 0, 2, 5, 2, 3],
    [4, 1, 3, 5, 4, 2, 1, 5, 2],
    [6, 0, 4, 5, 1, 5, 5, 1, 4],
    [0, 5, 6, 1, 3, 4, 1, 1, 4],
    [2, 4, 1, 1, 5, 6, 3, 3, 6],
    [6, 0, 6, 2, 3, 0, 1, 4, 3],
    [4, 0, 2, 2, 1, 3, 2, 6, 2],
    [6, 6, 5, 1, 3, 2, 5, 1, 5],
    [0, 1, 0, 1, 0, 5, 2, 0, 0],
    [0, 6, 3, 2, 4, 6, 2, 0, 2],
    [3, 6, 5, 1, 6, 5, 5, 5, 2],
    [6, 1, 0, 3, 5, 2, 2, 2, 1],
    [3, 2, 0, 6, 2, 6, 6, 1, 2],
    [4, 4, 2, 6, 0, 2, 6, 2, 0],
    [6, 3, 2, 1, 2, 0, 3, 0, 0],
    [1, 3, 4, 1, 0, 2, 1, 3, 5],
    [0, 2, 1, 3, 1, 3, 4, 4, 0],
    [0, 2, 4, 1, 2, 1, 5, 0, 3],
    [5, 1, 2, 4, 0, 0, 6, 1, 4],
    [6, 2, 4, 2, 5, 1, 3, 2, 5],
    [4, 3, 0, 3, 0, 4, 1, 6, 0],
    [1, 4, 5, 3, 0, 6, 0, 4, 3],
    [0, 1, 6, 6, 6, 0, 4, 0, 3],
    [0, 6, 3, 3, 2, 5, 5, 2, 3],
    [4, 5, 6, 6, 6, 5, 6, 4, 6],
    [3, 1, 5, 3, 3, 3, 5, 1, 6],
    [3, 5, 0, 2, 4, 0, 1, 3, 6],
    [2, 4, 5, 3, 0, 1, 4, 3, 6],
    [5, 4, 1, 1, 4, 5, 4, 5, 5],
    [3, 4, 5, 0, 1, 0, 2, 4, 2],
    [4, 3, 5, 5, 2, 1, 1, 1, 3],
    [5, 5, 0, 5, 3, 5, 6, 2, 6],
    [0, 0, 3, 4, 6, 5, 3, 3, 6],
    [4, 4, 1, 6, 1, 6, 5, 2, 4],
    [6, 1, 1, 6, 0, 6, 0, 3, 3],
    [0, 3, 5, 5, 5, 1, 6, 4, 1],
    [6, 4, 5, 4, 6, 6, 2, 3, 4],
    [6, 4, 1, 0, 1, 5, 2, 6, 0],
    [0, 4, 4, 0, 3, 1, 0, 6, 2],
    [5, 1, 3, 3, 4, 3, 1, 4, 3],
    [6, 4, 6, 2, 4, 2, 6, 6, 6],
    [3, 2, 6, 4, 2, 4, 1, 2, 6],
    [1, 2, 4, 0, 2, 6, 5, 5, 5],
    [1, 0, 0, 4, 1, 6, 6, 4, 5],
    [2, 3, 3, 2, 2, 3, 6, 5, 6],
    [0, 3, 2, 4, 1, 6, 6, 2, 1],
    [1, 5, 6, 2, 4, 1, 0, 0, 6],
    [2, 2, 2, 2, 2, 4, 5, 3, 0],
    [2, 6, 2, 1, 2, 4, 2, 4, 4],
    [4, 5, 4, 2, 5, 5, 0, 3, 4],
    [6, 2, 3, 4, 3, 3, 3, 6, 3],
    [6, 0, 1, 5, 2, 4, 2, 3, 3],
    [1, 2, 4, 1, 3, 6, 2, 2, 1],
    [3, 5, 5, 4, 5, 2, 4, 6, 4],
    [0, 4, 2, 5, 4, 0, 1, 2, 5],
    [6, 2, 2, 3, 6, 1, 0, 5, 6],
    [4, 3, 1, 0, 1, 4, 5, 1, 6],
    [1, 6, 4, 5, 5, 4, 3, 5, 2],
    [2, 3, 0, 6, 2, 6, 0, 0, 6],
    [4, 2, 0, 1, 1, 0, 6, 3, 3],
    [4, 2, 3, 1, 4, 1, 4, 6, 6],
    [5, 2, 5, 3, 3, 2, 3, 3, 0],
    [6, 6, 0, 6, 4, 3, 5, 4, 0],
    [0, 6, 6, 6, 5, 6, 6, 1, 3],
    [0, 0, 1, 5, 0, 0, 0, 3, 4],
    [4, 1, 4, 3, 0, 2, 4, 5, 2],
    [4, 5, 1, 3, 2, 0, 3, 6, 5],
    [5, 4, 2, 2, 2, 4, 4, 1, 5],
    [2, 5, 5, 6, 4, 5, 3, 1, 1],
    [6, 5, 0, 5, 3, 1, 5, 4, 4],
    [3, 6, 2, 4, 4, 2, 2, 1, 3],
    [6, 5, 2, 5, 6, 6, 0, 0, 5],
    [6, 5, 6, 3, 4, 4, 5, 5, 0],
    [5, 1, 4, 0, 2, 3, 3, 2, 2],
    [1, 0, 5, 1, 2, 6, 0, 5, 4],
    [3, 1, 1, 2, 2, 2, 0, 4, 0],
    [3, 5, 3, 2, 0, 1, 5, 6, 1],
    [2, 6, 5, 0, 5, 0, 6, 4, 0],
    [3, 5, 1, 4, 1, 1, 3, 3, 2],
    [1, 3, 1, 5, 3, 4, 4, 4, 2],
    [5, 3, 2, 0, 0, 6, 3, 2, 4],
    [4, 5, 5, 1, 4, 3, 2, 2, 3],
    [3, 4, 1, 0, 2, 0, 1, 5, 1],
    [4, 2, 6, 5, 3, 3, 0, 0, 1],
    [6, 3, 6, 6, 2, 3, 3, 3, 1],
    [2, 6, 1, 3, 6, 3, 4, 0, 3],
    [4, 3, 3, 5, 5, 6, 5, 5, 5],
    [4, 1, 6, 0, 3, 0, 4, 5, 4],
    [3, 6, 6, 5, 1, 6, 1, 3, 0],
    [1, 4, 0, 4, 3, 5, 3, 5, 3],
    [1, 4, 3, 6, 2, 3, 1, 4, 4],
    [0, 3, 0, 5, 6, 3, 4, 1, 5],
    [2, 0, 3, 1, 3, 6, 4, 5, 0],
    [1, 0, 2, 1, 4, 2, 3, 0, 1],
    [5, 0, 6, 2, 1, 6, 6, 3, 0],
    [5, 4, 3, 5, 5, 0, 5, 4, 6],
    [0, 4, 3, 6, 0, 0, 3, 1, 0]]

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

-- `lrat_cnf_proof` calls `addDecl` directly inside its elaborator, which
-- triggers an immediate kernel type-check of the LRAT proof term (built by
-- `buildProof`) using whatever `maxHeartbeats` budget is active at this call
-- site -- NOT the `maxHeartbeats 0` set later before `coverFormula_eq_direct`,
-- which only covers that separate declaration. For cells with a large LRAT
-- proof (e.g. K_7(9,5): 80294 lines) the default budget isn't enough and the
-- kernel check hits "(kernel) deterministic timeout" right here.
set_option maxHeartbeats 0 in
lrat_cnf_proof coverFormula coverProof
  (include_str "../../../../data/K_7_9_5/cover.cnf")
  (include_str "../../../../data/K_7_9_5/cover.lrat")

open Mathlib.Tactic.Sat (buildConj buildClause)

/-- 0-indexed SAT variable for "position `j` has symbol `v`". -/
def satVar (j v : Nat) : Nat := j * 7 + v

def atLeastClause (j : Nat) : Sat.Clause :=
  (List.range 7).map (fun v => Sat.Literal.pos (satVar j v))

def atMostClauses (j : Nat) : Sat.Fmla :=
  (List.range 7).flatMap (fun v1 =>
    ((List.range 7).filter (v1 < ·)).map (fun v2 =>
      ([Sat.Literal.neg (satVar j v1), Sat.Literal.neg (satVar j v2)] : Sat.Clause)))

def oneHotClauses : Sat.Fmla :=
  (List.range 9).flatMap (fun j => atLeastClause j :: atMostClauses j)

/-- `combinations l k` = all size-`k` sublists of `l`, in the same
lexicographic order as Python's `itertools.combinations`. -/
def combinations : List Nat → Nat → List (List Nat)
  | _, 0 => [[]]
  | [], _ + 1 => []
  | x :: xs, k + 1 => (combinations xs k).map (x :: ·) ++ combinations xs (k + 1)

/-- The 126 (= C(9,4)) "far from `c`" clauses: for every size-4 subset of
positions, at least one of them must disagree with `c`. -/
def farClauses (c : List Nat) : Sat.Fmla :=
  (combinations (List.range 9) 4).map (fun T =>
    (T.map (fun j => Sat.Literal.neg (satVar j (c.getD j 0))) : Sat.Clause))

def codeClauses (code : List (List Nat)) : Sat.Fmla :=
  code.flatMap farClauses

def directFormula : Sat.Fmla := oneHotClauses ++ codeClauses code

-- Reconcile the parsed-from-text formula with the hand-written generator.
-- Both are closed, concrete `List Clause` values of the same size, so in
-- principle a single `rfl` would do -- but empirically, comparing the whole
-- `coverFormula` (parsed via `buildConj`'s balanced-tree `Fmla.and` nesting)
-- against the whole `directFormula` (built via nested `flatMap`s) in one
-- `rfl` is catastrophically slow for some cells (confirmed pathological on
-- K_12(6,4): still running after 13+ minutes at 100% CPU, despite this being
-- a *smaller* instance -- fewer total clauses -- than K_6(7,3), which checks
-- in ~25s). Splitting the comparison at the natural oneHot/code boundary via
-- `take`/`drop`, each independently `rfl`-fast, and recombining via
-- `List.take_append_drop`, sidesteps whatever kernel-reduction pathology the
-- monolithic comparison triggers (confirmed: ~12s total for K_12(6,4), vs.
-- non-termination within any practical time for the single-`rfl` version).
set_option maxHeartbeats 0 in
set_option maxRecDepth 1000000 in
theorem coverFormula_eq_direct :
    coverFormula = directFormula := by
  have h1 : coverFormula.take 198 = oneHotClauses := by rfl
  have h2 : coverFormula.drop 198 = codeClauses code := by rfl
  have h := List.take_append_drop 198 coverFormula
  rw [h1, h2] at h
  exact h.symm

/-- The natural `Sat.Valuation` for a q-ary word: index `idx` is "on" iff
position `idx / 7` of `x` carries symbol `idx % 7`. -/
def qaryWordValuation (x : QaryWord 7 9) : Sat.Valuation :=
  fun idx => (x ⟨idx / 7 % 9, Nat.mod_lt _ (by decide)⟩).val = idx % 7

theorem qaryWordValuation_satVar (x : QaryWord 7 9) (j v : Nat) (hj : j < 9) (hv : v < 7) :
    qaryWordValuation x (satVar j v) ↔ (x ⟨j, hj⟩).val = v := by
  have hj' : (j * 7 + v) / 7 % 9 = j := by omega
  have hv' : (j * 7 + v) % 7 = v := by omega
  have hFin : (⟨(j * 7 + v) / 7 % 9, Nat.mod_lt _ (by decide)⟩ : Fin 9) = ⟨j, hj⟩ :=
    Fin.ext hj'
  show (x ⟨(j * 7 + v) / 7 % 9, Nat.mod_lt _ (by decide)⟩).val = (j * 7 + v) % 7 ↔
      (x ⟨j, hj⟩).val = v
  rw [hFin, hv']

theorem satisfies_atLeastClause (x : QaryWord 7 9) (j : Nat) (hj : j < 9) :
    (qaryWordValuation x).satisfies (atLeastClause j) := by
  have hlt : (x ⟨j, hj⟩).val < 7 := (x ⟨j, hj⟩).isLt
  show (qaryWordValuation x).neg (Sat.Literal.pos (satVar j 0)) →
       (qaryWordValuation x).neg (Sat.Literal.pos (satVar j 1)) →
       (qaryWordValuation x).neg (Sat.Literal.pos (satVar j 2)) →
       (qaryWordValuation x).neg (Sat.Literal.pos (satVar j 3)) →
       (qaryWordValuation x).neg (Sat.Literal.pos (satVar j 4)) →
       (qaryWordValuation x).neg (Sat.Literal.pos (satVar j 5)) →
       (qaryWordValuation x).neg (Sat.Literal.pos (satVar j 6)) →
       False
  simp only [Sat.Valuation.neg, qaryWordValuation_satVar x j 0 hj (by omega),
    qaryWordValuation_satVar x j 1 hj (by omega),
    qaryWordValuation_satVar x j 2 hj (by omega),
    qaryWordValuation_satVar x j 3 hj (by omega),
    qaryWordValuation_satVar x j 4 hj (by omega),
    qaryWordValuation_satVar x j 5 hj (by omega),
    qaryWordValuation_satVar x j 6 hj (by omega)]
  omega

theorem satisfies_atMostPair (x : QaryWord 7 9) (j v1 v2 : Nat) (hj : j < 9) (hv1 : v1 < 7)
    (hv2 : v2 < 7) (hne : v1 ≠ v2) :
    (qaryWordValuation x).satisfies
      ([Sat.Literal.neg (satVar j v1), Sat.Literal.neg (satVar j v2)] : Sat.Clause) := by
  show (qaryWordValuation x).neg (Sat.Literal.neg (satVar j v1)) →
       (qaryWordValuation x).neg (Sat.Literal.neg (satVar j v2)) → False
  simp only [Sat.Valuation.neg, qaryWordValuation_satVar x j v1 hj hv1,
    qaryWordValuation_satVar x j v2 hj hv2]
  omega

theorem satisfies_atMostClauses (x : QaryWord 7 9) (j : Nat) (hj : j < 9) (clause : Sat.Clause)
    (hmem : clause ∈ atMostClauses j) :
    (qaryWordValuation x).satisfies clause := by
  unfold atMostClauses at hmem
  obtain ⟨v1, hv1r, hclause⟩ := List.mem_flatMap.mp hmem
  obtain ⟨v2, hv2f, rfl⟩ := List.mem_map.mp hclause
  obtain ⟨hv2r, hlt⟩ := List.mem_filter.mp hv2f
  have hv1 : v1 < 7 := List.mem_range.mp hv1r
  have hv2 : v2 < 7 := List.mem_range.mp hv2r
  have hlt' : v1 < v2 := by simpa using hlt
  exact satisfies_atMostPair x j v1 v2 hj hv1 hv2 hlt'.ne

theorem satisfies_oneHotClauses (x : QaryWord 7 9) (clause : Sat.Clause)
    (hmem : clause ∈ oneHotClauses) :
    (qaryWordValuation x).satisfies clause := by
  unfold oneHotClauses at hmem
  obtain ⟨j, hjr, hclause⟩ := List.mem_flatMap.mp hmem
  have hj : j < 9 := List.mem_range.mp hjr
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

/-- Pigeonhole: if `f` and `g` disagree on at least 6 of the 9 positions,
every size-4 subset of positions contains a disagreement. -/
theorem length_filter_add_filter_not (p : Nat → Bool) (l : List Nat) :
    (l.filter p).length + (l.filter (fun x => !p x)).length = l.length := by
  induction l with
  | nil => rfl
  | cons a l ih =>
      simp only [List.filter_cons, List.length_cons]
      by_cases h : p a = true <;> simp [h, ← ih] <;> omega

theorem exists_disagree_of_far (f g : Nat → Nat)
    (hfar : 6 ≤ ((List.range 9).filter (fun j => decide (f j ≠ g j))).length) :
    ∀ T ∈ combinations (List.range 9) 4, ∃ j ∈ T, f j ≠ g j := by
  intro T hT
  by_contra hno
  push Not at hno
  obtain ⟨hsub, hlen⟩ := combinations_sublist (List.range 9) 4 T hT
  set p : Nat → Bool := fun j => decide (f j ≠ g j) with hp
  have hTfilter : T.filter (fun j => !p j) = T := by
    apply List.filter_eq_self.mpr
    intro j hj
    simp only [hp, Bool.not_eq_true', decide_eq_false_iff_not, not_not]
    exact hno j hj
  have hTsub' : List.Sublist (T.filter (fun j => !p j)) ((List.range 9).filter (fun j => !p j)) :=
    List.Sublist.filter _ hsub
  rw [hTfilter] at hTsub'
  have hlen' : T.length ≤ ((List.range 9).filter (fun j => !p j)).length := hTsub'.length_le
  have hpart := length_filter_add_filter_not p (List.range 9)
  simp only [List.length_range] at hpart
  omega

/-- Total Nat-valued accessor for a `QaryWord`'s symbol at position `j`
(`0` out of range) -- avoids threading `j < 9` proofs through existentials. -/
def xVal (x : QaryWord 7 9) (j : Nat) : Nat :=
  if h : j < 9 then (x ⟨j, h⟩).val else 0

theorem qaryWordValuation_satVar' (x : QaryWord 7 9) (j v : Nat) (hj : j < 9) (hv : v < 7) :
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

theorem satisfies_farClauseOne (x : QaryWord 7 9) (c : List Nat) (T : List Nat)
    (hTN : ∀ j ∈ T, j < 9) (hcQ : ∀ j, c.getD j 0 < 7)
    (hex : ∃ j ∈ T, xVal x j ≠ c.getD j 0) :
    (qaryWordValuation x).satisfies
      (T.map (fun j => Sat.Literal.neg (satVar j (c.getD j 0))) : Sat.Clause) := by
  obtain ⟨j, hjT, hne⟩ := hex
  refine satisfies_of_neg_mem _ (List.mem_map.mpr ⟨j, hjT, rfl⟩) ?_
  rw [qaryWordValuation_satVar' x j (c.getD j 0) (hTN j hjT) (hcQ j)]
  exact hne

theorem satisfies_farClauses (x : QaryWord 7 9) (c : List Nat) (hcQ : ∀ j, c.getD j 0 < 7)
    (hfar : 6 ≤ ((List.range 9).filter (fun j => decide (xVal x j ≠ c.getD j 0))).length)
    (clause : Sat.Clause) (hmem : clause ∈ farClauses c) :
    (qaryWordValuation x).satisfies clause := by
  unfold farClauses at hmem
  obtain ⟨T, hT, rfl⟩ := List.mem_map.mp hmem
  have hTN : ∀ j ∈ T, j < 9 := fun j hj =>
    List.mem_range.mp ((combinations_sublist _ _ _ hT).1.subset hj)
  exact satisfies_farClauseOne x c T hTN hcQ (exists_disagree_of_far (xVal x) (c.getD · 0) hfar T hT)

theorem satisfies_codeClauses (x : QaryWord 7 9) (code : List (List Nat))
    (hcQ : ∀ c ∈ code, ∀ j, c.getD j 0 < 7)
    (hfar : ∀ c ∈ code, 6 ≤ ((List.range 9).filter (fun j => decide (xVal x j ≠ c.getD j 0))).length)
    (clause : Sat.Clause) (hmem : clause ∈ codeClauses code) :
    (qaryWordValuation x).satisfies clause := by
  unfold codeClauses at hmem
  obtain ⟨c, hcMem, hclause⟩ := List.mem_flatMap.mp hmem
  exact satisfies_farClauses x c (hcQ c hcMem) (hfar c hcMem) clause hclause

/-- The actual covering theorem: every `QaryWord 7 9` is within Hamming
distance `5` of some codeword in `code` -- reached entirely via the
SAT-UNSAT/LRAT proof, no `decide`/`native_decide` anywhere in this chain. -/
theorem covers (hcQ : ∀ c ∈ code, ∀ j, c.getD j 0 < 7) (x : QaryWord 7 9) :
    ∃ c ∈ code, ((List.range 9).filter (fun j => decide (xVal x j ≠ c.getD j 0))).length ≤ 5 := by
  by_contra hno
  push Not at hno
  have hsat : (qaryWordValuation x).satisfies_fmla directFormula := by
    refine ⟨fun clause hmem => ?_⟩
    rcases List.mem_append.mp hmem with h1 | h2
    · exact satisfies_oneHotClauses x clause h1
    · exact satisfies_codeClauses x code hcQ (fun c hc => by have := hno c hc; omega) clause h2
  rw [← coverFormula_eq_direct] at hsat
  exact coverProof (qaryWordValuation x) hsat

/-- Convert a length-9, digits-`<7` `List Nat` codeword into an actual
`QaryWord 7 9`. The `% 7` is a safety net (irrelevant for well-formed
codewords, where `c.getD j 0 < 7` already). -/
def toQaryWord (c : List Nat) : QaryWord 7 9 :=
  fun i => ⟨c.getD i.val 0 % 7, Nat.mod_lt _ (by decide)⟩

theorem hammingDist_le_of_count_le (x : QaryWord 7 9) (c : List Nat) (hcQ : ∀ j, c.getD j 0 < 7)
    (n : Nat) (hcount : ((List.range 9).filter (fun j => decide (xVal x j ≠ c.getD j 0))).length ≤ n) :
    hammingDist x (toQaryWord c) ≤ n := by
  have hcard : (Finset.univ.filter (fun i : Fin 9 => x i ≠ toQaryWord c i)).card ≤ n := by
    have hinj : Set.InjOn Fin.val (Finset.univ.filter (fun i : Fin 9 => x i ≠ toQaryWord c i) : Set (Fin 9)) :=
      fun a _ b _ h => Fin.ext h
    have hmaps : ∀ i ∈ Finset.univ.filter (fun i : Fin 9 => x i ≠ toQaryWord c i),
        i.val ∈ ((List.range 9).filter (fun j => decide (xVal x j ≠ c.getD j 0))).toFinset := by
      intro i hi
      simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hi
      rw [List.mem_toFinset, List.mem_filter, List.mem_range, decide_eq_true_eq]
      refine ⟨i.isLt, ?_⟩
      intro heq
      apply hi
      have hxi : xVal x i.val = (x i).val := by
        unfold xVal; rw [dif_pos i.isLt]
      have hyi : (toQaryWord c) i = ⟨c.getD i.val 0 % 7, Nat.mod_lt _ (by decide)⟩ := rfl
      have hmod : c.getD i.val 0 % 7 = c.getD i.val 0 := Nat.mod_eq_of_lt (hcQ i.val)
      apply Fin.ext
      rw [hyi]
      simp only [hmod]
      rw [← hxi, heq]
    calc (Finset.univ.filter (fun i : Fin 9 => x i ≠ toQaryWord c i)).card
        ≤ ((List.range 9).filter (fun j => decide (xVal x j ≠ c.getD j 0))).toFinset.card :=
          Finset.card_le_card_of_injOn Fin.val hmaps hinj
      _ ≤ ((List.range 9).filter (fun j => decide (xVal x j ≠ c.getD j 0))).length :=
          List.toFinset_card_le _
      _ ≤ n := hcount
  exact hcard

theorem getD_lt_of_forall_mem_lt {c : List Nat} (h : ∀ d ∈ c, d < 7) : ∀ j, c.getD j 0 < 7 := by
  induction c with
  | nil => intro j; simp [List.getD]
  | cons a as ih =>
      intro j
      cases j with
      | zero => simpa using h a (List.mem_cons_self ..)
      | succ j =>
          rw [List.getD_cons_succ]
          exact ih (fun d hd => h d (List.mem_cons_of_mem _ hd)) j

set_option maxRecDepth 10000 in
theorem code_entries_ltQ : ∀ c ∈ code, ∀ d ∈ c, d < 7 := by decide

theorem code_getD_lt : ∀ c ∈ code, ∀ j, c.getD j 0 < 7 :=
  fun c hc => getD_lt_of_forall_mem_lt (code_entries_ltQ c hc)

def codeFinset : Finset (QaryWord 7 9) := (code.map toQaryWord).toFinset

set_option maxRecDepth 10000 in
theorem code_length : code.length = 240 := by decide

theorem codeFinset_card_le : codeFinset.card ≤ 240 := by
  calc codeFinset.card
      ≤ (code.map toQaryWord).length := List.toFinset_card_le _
    _ = code.length := by rw [List.length_map]
    _ = 240 := code_length

theorem codeFinset_covers : CoversFinset codeFinset 5 := by
  intro x
  obtain ⟨c, hc, hcount⟩ := covers code_getD_lt x
  refine ⟨toQaryWord c, ?_, ?_⟩
  · rw [codeFinset, List.mem_toFinset]
    exact List.mem_map_of_mem hc
  · exact hammingDist_le_of_count_le x c (code_getD_lt c hc) 5 hcount

def explicitUpper : ExplicitQaryUpper 7 9 5 240 :=
  { code := codeFinset
    card_le := codeFinset_card_le
    covers := codeFinset_covers }

def upperName : String := "lit_marosi_2026"

def upper (q n r : Nat) : Nat :=
  if q = 7 ∧ n = 9 ∧ r = 5 then 240 else trivialUpper q n r

theorem upper_valid (q n r : Nat) :
    QaryKUpper q n r (upper q n r) := by
  by_cases h : q = 7 ∧ n = 9 ∧ r = 5
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [upper] using explicitUpper.toUpper
  · simpa [upper, h] using trivialUpper_valid q n r

def upperSource : UpperBoundSource where
  value := upper
  trace := fun q n r => .primitive upperName (upper_valid q n r)

end Septenary795LRAT
end Database
end CoveringCodes
