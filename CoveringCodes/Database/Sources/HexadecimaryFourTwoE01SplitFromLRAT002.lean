import Mathlib.Tactic.Sat.FromLRAT

/-!
# K16 E01 profile LRAT kernel certificate — split leaf 002 (cube [-1, 2])

Kernel-proved unsatisfiability of the E01 core CNF restricted to cube `[-1, 2]`
(variable 1 assigned false, variable 2 assigned true), via `lrat_cnf_proof`.

## CNF input requirement

`lrat_cnf_proof` requires a CNF file that is itself UNSAT; the LRAT file must
refute it from the listed clauses alone.  The split LRAT file
`e01_core_prefix_002_r00_c01.lrat` was generated to prove
`(e01CoreCnf ∧ [-1, 2]) → False`.  Therefore this file needs the **combined**
CNF as input:
  `e01_core_with_cube_002.cnf` = `profile_lower_e01_not_block_sequential_core.cnf`
    with extra lines `-1 0` and `2 0` appended.

## Data files needed
* `data/K_16_4_2/lrat/split_prefix_core/e01_core_with_cube_002.cnf`
* `data/K_16_4_2/lrat/split_prefix_core/e01_core_prefix_002_r00_c01.lrat` — 86.6 MB (exists)

Expected elaboration time: several hours (35.7 MB core CNF is ~70× the OA CNF).
All 5 leaves are independent and can elaborate in parallel.
-/

open Lean Elab Term

namespace CoveringCodes
namespace Database
namespace E01SplitFromLRAT002

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

-- Requires the combined CNF (core + unit clauses [-1 0] and [2 0]).
set_option maxHeartbeats 0 in
lrat_cnf_proof e01SplitFormula002 e01SplitProof002
  (include_str "../../../data/K_16_4_2/lrat/split_prefix_core/e01_core_with_cube_002.cnf")
  (include_str "../../../data/K_16_4_2/lrat/split_prefix_core/e01_core_prefix_002_r00_c01.lrat")

private theorem no_valuation_of_lrat_proof {f : Sat.Fmla}
    (h : Sat.Fmla.proof f Sat.Clause.nil) :
    ∀ v : Sat.Valuation, Sat.Valuation.satisfies_fmla v f → False :=
  fun v hv => h v hv

/-- Kernel-proved unsatisfiability of (E01 core CNF ∧ cube [-1, 2]).
    The LRAT certificate is verified by Lean's kernel at elaboration time. -/
theorem e01Split002_unsat :
    ∀ v : Sat.Valuation, Sat.Valuation.satisfies_fmla v e01SplitFormula002 → False :=
  no_valuation_of_lrat_proof e01SplitProof002

end E01SplitFromLRAT002
end Database
end CoveringCodes
