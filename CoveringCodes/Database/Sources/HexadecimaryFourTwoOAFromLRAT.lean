import Mathlib.Tactic.Sat.FromLRAT

/-!
# K16 OA(36,4,6,2) kernel LRAT certificate via FromLRAT

Kernel-proved unsatisfiability of the OA(36,4,6,2) exclusion CNF.

The `lrat_cnf_proof` command reads the CNF and LRAT files at elaboration time,
parses them with Mathlib's `Parser.parseDimacs` / `Parser.parseLRAT`, and
constructs a kernel proof term of type `Sat.Fmla.proof formula Sat.Clause.nil`.
No `native_decide` is involved; the proof is kernel-checked during elaboration
(~28 min on one core).

Data files used:
* `data/K_16_4_2/lrat/oa_36_4_6_2.cnf`  — 507 KB CNF
* `data/K_16_4_2/lrat/oa_36_4_6_2.lrat` — 21 MB LRAT (≈ 134 K lines)
-/

open Lean Elab Term

namespace CoveringCodes
namespace Database
namespace OAFromLRAT

open Mathlib.Tactic.Sat
open Std.Internal

-- Infrastructure copied from OctonaryFourTwoBlockLRAT.lean (LRAT namespace).
-- Extracted here so this spike has no K8 dependency.

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
lrat_cnf_proof oa36Formula oa36Proof
  (include_str "../../../data/K_16_4_2/lrat/oa_36_4_6_2.cnf")
  (include_str "../../../data/K_16_4_2/lrat/oa_36_4_6_2.lrat")

private theorem no_valuation_of_lrat_proof {f : Sat.Fmla}
    (h : Sat.Fmla.proof f Sat.Clause.nil) :
    ∀ v : Sat.Valuation, Sat.Valuation.satisfies_fmla v f → False :=
  fun v hv => h v hv

/-- No valuation satisfies the OA(36,4,6,2) CNF.  Kernel-proved via FromLRAT. -/
theorem oa36_unsat :
    ∀ v : Sat.Valuation, Sat.Valuation.satisfies_fmla v oa36Formula → False :=
  no_valuation_of_lrat_proof oa36Proof

end OAFromLRAT
end Database
end CoveringCodes
