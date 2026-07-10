import Mathlib.Tactic.Sat.FromLRAT

/-!
# K16 support-defect profile kernel LRAT certificate via FromLRAT

Kernel-proved unsatisfiability of the support-defect profile CNF.

Same infrastructure as `HexadecimaryFourTwoOAFromLRAT`; see that file for a
full description of the approach.  No `native_decide` is involved; the proof
is kernel-checked during elaboration (~20 min on one core).

Data files used:
* `data/K_16_4_2/lrat/present_profile_support_le5_sorted_coord0_sequential.cnf`
  — 2.8 MB CNF
* `data/K_16_4_2/lrat/present_profile_support_le5_sorted_coord0_sequential.lrat`
  — 20 MB LRAT
-/

open Lean Elab Term

namespace CoveringCodes
namespace Database
namespace SupportFromLRAT

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

-- The kernel proof is constructed here.  Elaboration time is the experiment.
set_option maxHeartbeats 0 in
lrat_cnf_proof supportProfileFormula supportProfileProof
  (include_str "../../../data/K_16_4_2/lrat/present_profile_support_le5_sorted_coord0_sequential.cnf")
  (include_str "../../../data/K_16_4_2/lrat/present_profile_support_le5_sorted_coord0_sequential.lrat")

private theorem no_valuation_of_lrat_proof {f : Sat.Fmla}
    (h : Sat.Fmla.proof f Sat.Clause.nil) :
    ∀ v : Sat.Valuation, Sat.Valuation.satisfies_fmla v f → False :=
  fun v hv => h v hv

/-- No valuation satisfies the support-defect profile CNF.  Kernel-proved via FromLRAT. -/
theorem supportProfile_unsat :
    ∀ v : Sat.Valuation, Sat.Valuation.satisfies_fmla v supportProfileFormula → False :=
  no_valuation_of_lrat_proof supportProfileProof

end SupportFromLRAT
end Database
end CoveringCodes
