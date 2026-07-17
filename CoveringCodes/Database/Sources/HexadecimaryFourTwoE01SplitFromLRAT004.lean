import Mathlib.Tactic.Sat.FromLRAT

/-!
# K16 E01 profile LRAT kernel certificate — split leaf 004 (cube [-1, -2, -3, 4])

Kernel-proved unsatisfiability of the E01 core CNF restricted to cube `[-1, -2, -3, 4]`
(variables 1,2,3 false, variable 4 true), via `lrat_cnf_proof`.

## Data files needed
* `data/K_16_4_2/lrat/split_prefix_core/e01_core_with_cube_004.cnf`
* `data/K_16_4_2/lrat/split_prefix_core/e01_core_prefix_004_r00_c03.lrat` — 41.4 MB (exists)

Expected elaboration time: several hours. All 5 leaves are independent.
-/

open Lean Elab Term

namespace CoveringCodes
namespace Database
namespace E01SplitFromLRAT004

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

set_option maxHeartbeats 0 in
lrat_cnf_proof e01SplitFormula004 e01SplitProof004
  (include_str "../../../data/K_16_4_2/lrat/split_prefix_core/e01_core_with_cube_004.cnf")
  (include_str "../../../data/K_16_4_2/lrat/split_prefix_core/e01_core_prefix_004_r00_c03.lrat")

private theorem no_valuation_of_lrat_proof {f : Sat.Fmla}
    (h : Sat.Fmla.proof f Sat.Clause.nil) :
    ∀ v : Sat.Valuation, Sat.Valuation.satisfies_fmla v f → False :=
  fun v hv => h v hv

/-- Kernel-proved unsatisfiability of (E01 core CNF ∧ cube [-1, -2, -3, 4]).
    The LRAT certificate is verified by Lean's kernel at elaboration time. -/
theorem e01Split004_unsat :
    ∀ v : Sat.Valuation, Sat.Valuation.satisfies_fmla v e01SplitFormula004 → False :=
  no_valuation_of_lrat_proof e01SplitProof004

end E01SplitFromLRAT004
end Database
end CoveringCodes
