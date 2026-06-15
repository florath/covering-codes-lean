import Mathlib.Tactic.Sat.FromLRAT

/-!
# LRAT certificates for the `K_8(4,2)` exact-42 block graph checks

These are kernel-checked LRAT certificates for the two finite SAT checks used
by the direct Lean formalization path:

* `profileBlockE01NotBlockProof`: the exact-42 balanced profile graph cannot
  have `E01` outside the `3+3+2` block form.
* `profileBlockNotGlobalProof`: once `E01` is canonical block form, the six
  exact-42 balanced profile graphs must share one common block system.

The generated theorems are small reflective LRAT facts of the form
`Sat.Fmla.proof formula []`, meaning that the displayed CNF formula derives the
empty clause.  `OctonaryFourTwo.lean` wraps these facts into the high-level
profile-graph classifier used by `octonaryFourRadiusTwoLowerTwentyThree`.
-/

open Lean Elab Term

namespace CoveringCodes
namespace Database

open Mathlib.Tactic.Sat
open Std.Internal

namespace LRAT

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

/-- Add a public CNF formula and an LRAT proof of the empty clause for it.

Mathlib's `lrat_proof` command additionally reifies the CNF into one very large
propositional theorem.  For these profile-classifier certificates the small
reflective object is a better integration point: downstream Lean code can prove
that a structured valuation satisfies the public CNF formula and then apply the
public `Sat.Fmla.proof` theorem to get `False`.
-/
elab "lrat_cnf_proof " fName:ident ppSpace pName:ident
    ppSpace cnf:term:max ppSpace lrat:term:max : command => do
  let formulaName := (← getCurrNamespace) ++ fName.1.getId
  let proofName := (← getCurrNamespace) ++ pName.1.getId
  Lean.Elab.Command.liftTermElabM do
    let cnf ← readLRATStringTerm cnf
    let lrat ← readLRATStringTerm lrat
    addLRATCNFProof formulaName proofName cnf lrat

end LRAT

open LRAT

namespace ProfileBlockDirect

def q : Nat := 8

def edgeVarIndex (pairIndex row col : Nat) : Nat :=
  pairIndex * 64 + row * 8 + col

def posEdgeLit (pairIndex row col : Nat) : Sat.Literal :=
  Sat.Literal.pos (edgeVarIndex pairIndex row col)

def negEdgeLit (pairIndex row col : Nat) : Sat.Literal :=
  Sat.Literal.neg (edgeVarIndex pairIndex row col)

def choose {α : Type} : Nat → List α → List (List α)
  | 0, _ => [[]]
  | _ + 1, [] => []
  | k + 1, x :: xs => (choose k xs).map (fun ys => x :: ys) ++ choose (k + 1) xs

def exactDegreeClauses (lits : List Sat.Literal) (bound : Nat) : Sat.Fmla :=
  choose (lits.length - bound + 1) lits ++
    (choose (bound + 1) lits).map (fun clause =>
      clause.map (fun
        | Sat.Literal.pos i => Sat.Literal.neg i
        | Sat.Literal.neg i => Sat.Literal.pos i))

def atLeastDegreeClauses (lits : List Sat.Literal) (bound : Nat) : Sat.Fmla :=
  choose (lits.length - bound + 1) lits

def rowBound (symbol : Nat) : Nat :=
  if symbol < 6 then 5 else 6

def rowLits (pairIndex row : Nat) : List Sat.Literal :=
  (List.range q).map (fun col => posEdgeLit pairIndex row col)

def colLits (pairIndex col : Nat) : List Sat.Literal :=
  (List.range q).map (fun row => posEdgeLit pairIndex row col)

def pairProfileClauses (pairIndex : Nat) : Sat.Fmla :=
  (List.range q).flatMap (fun row =>
    exactDegreeClauses (rowLits pairIndex row) (rowBound row)) ++
  (List.range q).flatMap (fun col =>
    exactDegreeClauses (colLits pairIndex col) (rowBound col))

def pairLowerProfileClauses (pairIndex : Nat) : Sat.Fmla :=
  (List.range q).flatMap (fun row =>
    atLeastDegreeClauses (rowLits pairIndex row) (rowBound row)) ++
  (List.range q).flatMap (fun col =>
    atLeastDegreeClauses (colLits pairIndex col) (rowBound col))

def profileClauses : Sat.Fmla :=
  (List.range 6).flatMap pairProfileClauses

def lowerProfileClauses : Sat.Fmla :=
  (List.range 6).flatMap pairLowerProfileClauses

def noCliqueClauses : Sat.Fmla :=
  (List.range q).flatMap (fun a =>
    (List.range q).flatMap (fun b =>
      (List.range q).flatMap (fun c =>
        (List.range q).map (fun d =>
          [negEdgeLit 0 a b,
           negEdgeLit 1 a c,
           negEdgeLit 2 a d,
           negEdgeLit 3 b c,
           negEdgeLit 4 b d,
           negEdgeLit 5 c d]))))

def canonicalBlocks : List (List Nat) :=
  [[0, 1, 2], [3, 4, 5], [6, 7]]

def highPartitionsUnlabeled : List (List Nat × List Nat) :=
  [([0, 1, 2], [3, 4, 5]),
   ([0, 1, 3], [2, 4, 5]),
   ([0, 1, 4], [2, 3, 5]),
   ([0, 1, 5], [2, 3, 4]),
   ([0, 2, 3], [1, 4, 5]),
   ([0, 2, 4], [1, 3, 5]),
   ([0, 2, 5], [1, 3, 4]),
   ([0, 3, 4], [1, 2, 5]),
   ([0, 3, 5], [1, 2, 4]),
   ([0, 4, 5], [1, 2, 3])]

def highPartitionsLabeled : List (List (List Nat)) :=
  highPartitionsUnlabeled.flatMap (fun p =>
    [[p.1, p.2, [6, 7]], [p.2, p.1, [6, 7]]])

def blockIndex (blocks : List (List Nat)) (symbol : Nat) : Nat :=
  match blocks with
  | b0 :: b1 :: _ =>
      if symbol ∈ b0 then 0 else if symbol ∈ b1 then 1 else 2
  | _ => 2

def blockDifferenceClause
    (pairIndex : Nat) (leftBlocks rightBlocks : List (List Nat)) : Sat.Clause :=
  (List.range q).flatMap (fun row =>
    (List.range q).map (fun col =>
      if blockIndex leftBlocks row ≠ blockIndex rightBlocks col then
        negEdgeLit pairIndex row col
      else
        posEdgeLit pairIndex row col))

def forceBlockPairClauses
    (pairIndex : Nat) (leftBlocks rightBlocks : List (List Nat)) : Sat.Fmla :=
  (List.range q).flatMap (fun row =>
    (List.range q).map (fun col =>
      if blockIndex leftBlocks row ≠ blockIndex rightBlocks col then
        [posEdgeLit pairIndex row col]
      else
        [negEdgeLit pairIndex row col]))

def e01NotBlockClauses : Sat.Fmla :=
  highPartitionsUnlabeled.flatMap (fun rowHigh =>
    let rowOptions := [[rowHigh.1, rowHigh.2, [6, 7]], [rowHigh.2, rowHigh.1, [6, 7]]]
    highPartitionsUnlabeled.flatMap (fun colHigh =>
      let colOptions := [[colHigh.1, colHigh.2, [6, 7]], [colHigh.2, colHigh.1, [6, 7]]]
      rowOptions.flatMap (fun rowBlocks =>
        colOptions.map (fun colBlocks =>
          blockDifferenceClause 0 rowBlocks colBlocks))))

def profilePairs : List (Nat × Nat) :=
  [(0, 1), (0, 2), (0, 3), (1, 2), (1, 3), (2, 3)]

def commonBlockDifferenceClause
    (blocks2 blocks3 : List (List Nat)) : Sat.Clause :=
  let coordBlocks := [canonicalBlocks, canonicalBlocks, blocks2, blocks3]
  (List.range 6).flatMap (fun pairIndex =>
    match profilePairs[pairIndex]? with
    | some pair =>
        let leftBlocks :=
          match coordBlocks[pair.1]? with
          | some blocks => blocks
          | none => []
        let rightBlocks :=
          match coordBlocks[pair.2]? with
          | some blocks => blocks
          | none => []
        blockDifferenceClause pairIndex leftBlocks rightBlocks
    | none => [])

def notGlobalBlockClauses : Sat.Fmla :=
  forceBlockPairClauses 0 canonicalBlocks canonicalBlocks ++
  highPartitionsLabeled.flatMap (fun blocks2 =>
    highPartitionsLabeled.map (fun blocks3 =>
      commonBlockDifferenceClause blocks2 blocks3))

def e01NotBlockFormula : Sat.Fmla :=
  profileClauses ++ noCliqueClauses ++ e01NotBlockClauses

def notGlobalBlockFormula : Sat.Fmla :=
  profileClauses ++ noCliqueClauses ++ notGlobalBlockClauses

def lowerE01NotBlockFormula : Sat.Fmla :=
  lowerProfileClauses ++ noCliqueClauses ++ e01NotBlockClauses

def lowerNotGlobalBlockFormula : Sat.Fmla :=
  lowerProfileClauses ++ noCliqueClauses ++ notGlobalBlockClauses

set_option maxRecDepth 100000 in
theorem e01NotBlockFormula_clause_count :
    e01NotBlockFormula.length = 13088 := by
  decide

set_option maxRecDepth 100000 in
theorem notGlobalBlockFormula_clause_count :
    notGlobalBlockFormula.length = 13152 := by
  decide

set_option maxRecDepth 100000 in
theorem lowerE01NotBlockFormula_clause_count :
    lowerE01NotBlockFormula.length = 10880 := by
  decide

set_option maxRecDepth 100000 in
theorem lowerNotGlobalBlockFormula_clause_count :
    lowerNotGlobalBlockFormula.length = 10944 := by
  decide

end ProfileBlockDirect

private theorem no_valuation_of_lrat_proof {f : Sat.Fmla}
    (h : Sat.Fmla.proof f Sat.Clause.nil) :
    ∀ v : Sat.Valuation, Sat.Valuation.satisfies_fmla v f → False := by
  intro v hv
  exact h v hv

lrat_cnf_proof profileBlockE01NotBlockFormula profileBlockE01NotBlockProof
  (include_str "../../../data/K_8_4_2/lrat/profile_block_e01_not_block.cnf")
  (include_str "../../../data/K_8_4_2/lrat/profile_block_e01_not_block.lrat")

lrat_cnf_proof profileBlockNotGlobalFormula profileBlockNotGlobalProof
  (include_str "../../../data/K_8_4_2/lrat/profile_block_not_global.cnf")
  (include_str "../../../data/K_8_4_2/lrat/profile_block_not_global.lrat")

lrat_cnf_proof profileBlockLowerE01NotBlockFormula profileBlockLowerE01NotBlockProof
  (include_str "../../../data/K_8_4_2/lrat/profile_block_lower_e01_not_block.cnf")
  (include_str "../../../data/K_8_4_2/lrat/profile_block_lower_e01_not_block.lrat")

lrat_cnf_proof profileBlockLowerNotGlobalFormula profileBlockLowerNotGlobalProof
  (include_str "../../../data/K_8_4_2/lrat/profile_block_lower_not_global.cnf")
  (include_str "../../../data/K_8_4_2/lrat/profile_block_lower_not_global.lrat")

private instance satLiteralDecidableEq : DecidableEq Sat.Literal
  | Sat.Literal.pos a, Sat.Literal.pos b =>
      if h : a = b then isTrue (by subst b; rfl)
      else isFalse (by intro hxy; cases hxy; exact h rfl)
  | Sat.Literal.neg a, Sat.Literal.neg b =>
      if h : a = b then isTrue (by subst b; rfl)
      else isFalse (by intro hxy; cases hxy; exact h rfl)
  | Sat.Literal.pos _, Sat.Literal.neg _ =>
      isFalse (by intro hxy; cases hxy)
  | Sat.Literal.neg _, Sat.Literal.pos _ =>
      isFalse (by intro hxy; cases hxy)

private instance satClauseDecidableEq : DecidableEq Sat.Clause :=
  inferInstanceAs (DecidableEq (List Sat.Literal))

set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
private theorem profileBlockE01NotBlockFormula_profileClauses_eq :
    profileBlockE01NotBlockFormula.take 8592 =
      ProfileBlockDirect.profileClauses := by
  decide

set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
private theorem profileBlockE01NotBlockFormula_noCliqueClauses_eq :
    (profileBlockE01NotBlockFormula.drop 8592).take 4096 =
      ProfileBlockDirect.noCliqueClauses := by
  decide

set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
private theorem profileBlockE01NotBlockFormula_obstructionClauses_eq :
    profileBlockE01NotBlockFormula.drop 12688 =
      ProfileBlockDirect.e01NotBlockClauses := by
  decide

/-- The parsed LRAT `e01-not-block` CNF is exactly the direct Lean mirror. -/
theorem profileBlockE01NotBlockFormula_eq_direct :
    profileBlockE01NotBlockFormula =
      ProfileBlockDirect.e01NotBlockFormula := by
  calc
    profileBlockE01NotBlockFormula
        = profileBlockE01NotBlockFormula.take 8592 ++
          profileBlockE01NotBlockFormula.drop 8592 := by
            rw [List.take_append_drop]
    _ = ProfileBlockDirect.profileClauses ++
          profileBlockE01NotBlockFormula.drop 8592 := by
            rw [profileBlockE01NotBlockFormula_profileClauses_eq]
    _ = ProfileBlockDirect.profileClauses ++
          ((profileBlockE01NotBlockFormula.drop 8592).take 4096 ++
            (profileBlockE01NotBlockFormula.drop 8592).drop 4096) := by
            rw [List.take_append_drop]
    _ = ProfileBlockDirect.profileClauses ++
          (ProfileBlockDirect.noCliqueClauses ++
            profileBlockE01NotBlockFormula.drop 12688) := by
            rw [profileBlockE01NotBlockFormula_noCliqueClauses_eq]
            simp [List.drop_drop]
    _ = ProfileBlockDirect.profileClauses ++
          (ProfileBlockDirect.noCliqueClauses ++
            ProfileBlockDirect.e01NotBlockClauses) := by
            rw [profileBlockE01NotBlockFormula_obstructionClauses_eq]
    _ = ProfileBlockDirect.e01NotBlockFormula := by
            simp [ProfileBlockDirect.e01NotBlockFormula, List.append_assoc]

set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
private theorem profileBlockNotGlobalFormula_profileClauses_eq :
    profileBlockNotGlobalFormula.take 8592 =
      ProfileBlockDirect.profileClauses := by
  decide

set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
private theorem profileBlockNotGlobalFormula_noCliqueClauses_eq :
    (profileBlockNotGlobalFormula.drop 8592).take 4096 =
      ProfileBlockDirect.noCliqueClauses := by
  decide

set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
private theorem profileBlockNotGlobalFormula_obstructionClauses_eq :
    profileBlockNotGlobalFormula.drop 12688 =
      ProfileBlockDirect.notGlobalBlockClauses := by
  decide

/-- The parsed LRAT `not-global-block` CNF is exactly the direct Lean mirror. -/
theorem profileBlockNotGlobalFormula_eq_direct :
    profileBlockNotGlobalFormula =
      ProfileBlockDirect.notGlobalBlockFormula := by
  calc
    profileBlockNotGlobalFormula
        = profileBlockNotGlobalFormula.take 8592 ++
          profileBlockNotGlobalFormula.drop 8592 := by
            rw [List.take_append_drop]
    _ = ProfileBlockDirect.profileClauses ++
          profileBlockNotGlobalFormula.drop 8592 := by
            rw [profileBlockNotGlobalFormula_profileClauses_eq]
    _ = ProfileBlockDirect.profileClauses ++
          ((profileBlockNotGlobalFormula.drop 8592).take 4096 ++
            (profileBlockNotGlobalFormula.drop 8592).drop 4096) := by
            rw [List.take_append_drop]
    _ = ProfileBlockDirect.profileClauses ++
          (ProfileBlockDirect.noCliqueClauses ++
            profileBlockNotGlobalFormula.drop 12688) := by
            rw [profileBlockNotGlobalFormula_noCliqueClauses_eq]
            simp [List.drop_drop]
    _ = ProfileBlockDirect.profileClauses ++
          (ProfileBlockDirect.noCliqueClauses ++
            ProfileBlockDirect.notGlobalBlockClauses) := by
            rw [profileBlockNotGlobalFormula_obstructionClauses_eq]
    _ = ProfileBlockDirect.notGlobalBlockFormula := by
            simp [ProfileBlockDirect.notGlobalBlockFormula, List.append_assoc]

set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
private theorem profileBlockLowerE01NotBlockFormula_profileClauses_eq :
    profileBlockLowerE01NotBlockFormula.take 6384 =
      ProfileBlockDirect.lowerProfileClauses := by
  decide

set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
private theorem profileBlockLowerE01NotBlockFormula_noCliqueClauses_eq :
    (profileBlockLowerE01NotBlockFormula.drop 6384).take 4096 =
      ProfileBlockDirect.noCliqueClauses := by
  decide

set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
private theorem profileBlockLowerE01NotBlockFormula_obstructionClauses_eq :
    profileBlockLowerE01NotBlockFormula.drop 10480 =
      ProfileBlockDirect.e01NotBlockClauses := by
  decide

/-- The parsed lower-bound LRAT `e01-not-block` CNF is exactly the direct Lean mirror. -/
theorem profileBlockLowerE01NotBlockFormula_eq_direct :
    profileBlockLowerE01NotBlockFormula =
      ProfileBlockDirect.lowerE01NotBlockFormula := by
  calc
    profileBlockLowerE01NotBlockFormula
        = profileBlockLowerE01NotBlockFormula.take 6384 ++
          profileBlockLowerE01NotBlockFormula.drop 6384 := by
            rw [List.take_append_drop]
    _ = ProfileBlockDirect.lowerProfileClauses ++
          profileBlockLowerE01NotBlockFormula.drop 6384 := by
            rw [profileBlockLowerE01NotBlockFormula_profileClauses_eq]
    _ = ProfileBlockDirect.lowerProfileClauses ++
          ((profileBlockLowerE01NotBlockFormula.drop 6384).take 4096 ++
            (profileBlockLowerE01NotBlockFormula.drop 6384).drop 4096) := by
            rw [List.take_append_drop]
    _ = ProfileBlockDirect.lowerProfileClauses ++
          (ProfileBlockDirect.noCliqueClauses ++
            profileBlockLowerE01NotBlockFormula.drop 10480) := by
            rw [profileBlockLowerE01NotBlockFormula_noCliqueClauses_eq]
            simp [List.drop_drop]
    _ = ProfileBlockDirect.lowerProfileClauses ++
          (ProfileBlockDirect.noCliqueClauses ++
            ProfileBlockDirect.e01NotBlockClauses) := by
            rw [profileBlockLowerE01NotBlockFormula_obstructionClauses_eq]
    _ = ProfileBlockDirect.lowerE01NotBlockFormula := by
            simp [ProfileBlockDirect.lowerE01NotBlockFormula, List.append_assoc]

set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
private theorem profileBlockLowerNotGlobalFormula_profileClauses_eq :
    profileBlockLowerNotGlobalFormula.take 6384 =
      ProfileBlockDirect.lowerProfileClauses := by
  decide

set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
private theorem profileBlockLowerNotGlobalFormula_noCliqueClauses_eq :
    (profileBlockLowerNotGlobalFormula.drop 6384).take 4096 =
      ProfileBlockDirect.noCliqueClauses := by
  decide

set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
private theorem profileBlockLowerNotGlobalFormula_obstructionClauses_eq :
    profileBlockLowerNotGlobalFormula.drop 10480 =
      ProfileBlockDirect.notGlobalBlockClauses := by
  decide

/-- The parsed lower-bound LRAT `not-global-block` CNF is exactly the direct Lean mirror. -/
theorem profileBlockLowerNotGlobalFormula_eq_direct :
    profileBlockLowerNotGlobalFormula =
      ProfileBlockDirect.lowerNotGlobalBlockFormula := by
  calc
    profileBlockLowerNotGlobalFormula
        = profileBlockLowerNotGlobalFormula.take 6384 ++
          profileBlockLowerNotGlobalFormula.drop 6384 := by
            rw [List.take_append_drop]
    _ = ProfileBlockDirect.lowerProfileClauses ++
          profileBlockLowerNotGlobalFormula.drop 6384 := by
            rw [profileBlockLowerNotGlobalFormula_profileClauses_eq]
    _ = ProfileBlockDirect.lowerProfileClauses ++
          ((profileBlockLowerNotGlobalFormula.drop 6384).take 4096 ++
            (profileBlockLowerNotGlobalFormula.drop 6384).drop 4096) := by
            rw [List.take_append_drop]
    _ = ProfileBlockDirect.lowerProfileClauses ++
          (ProfileBlockDirect.noCliqueClauses ++
            profileBlockLowerNotGlobalFormula.drop 10480) := by
            rw [profileBlockLowerNotGlobalFormula_noCliqueClauses_eq]
            simp [List.drop_drop]
    _ = ProfileBlockDirect.lowerProfileClauses ++
          (ProfileBlockDirect.noCliqueClauses ++
            ProfileBlockDirect.notGlobalBlockClauses) := by
            rw [profileBlockLowerNotGlobalFormula_obstructionClauses_eq]
    _ = ProfileBlockDirect.lowerNotGlobalBlockFormula := by
            simp [ProfileBlockDirect.lowerNotGlobalBlockFormula, List.append_assoc]

/-- No valuation satisfies the `e01-not-block` profile-classifier CNF. -/
theorem profileBlockE01NotBlockUnsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v profileBlockE01NotBlockFormula → False :=
  no_valuation_of_lrat_proof profileBlockE01NotBlockProof

/-- No valuation satisfies the `not-global-block` profile-classifier CNF. -/
theorem profileBlockNotGlobalUnsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v profileBlockNotGlobalFormula → False :=
  no_valuation_of_lrat_proof profileBlockNotGlobalProof

/-- No valuation satisfies the lower-bound `e01-not-block` profile-classifier CNF. -/
theorem profileBlockLowerE01NotBlockUnsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v profileBlockLowerE01NotBlockFormula → False :=
  no_valuation_of_lrat_proof profileBlockLowerE01NotBlockProof

/-- No valuation satisfies the lower-bound `not-global-block` profile-classifier CNF. -/
theorem profileBlockLowerNotGlobalUnsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v profileBlockLowerNotGlobalFormula → False :=
  no_valuation_of_lrat_proof profileBlockLowerNotGlobalProof

end Database
end CoveringCodes
