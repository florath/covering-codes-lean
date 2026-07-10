import Mathlib.Tactic.Sat.FromLRAT

/-!
# Native LRAT/RUP checker core

Mathlib's `FromLRAT` command turns an LRAT file into a large kernel proof term.
That is appropriate for the K8 certificates, but too large for the K16 LRAT
artifacts.  This file starts a Lean-facing checker designed for the opposite
tradeoff: prove the RUP-checking algorithm sound once, then use `native_decide`
to evaluate large proof logs.

The current checker intentionally supports only the RUP fragment used by the
`drat-trim` LRAT files generated for the K16 experiments.  RAT hints are
rejected.
-/

namespace CoveringCodes
namespace Database
namespace LRATNative

open Mathlib.Tactic.Sat
open Std.Internal

abbrev RawClause := Array Int
abbrev RawCnf := Array RawClause

def rawClauseToSat (c : RawClause) : Sat.Clause :=
  c.toList.map Sat.Literal.ofInt

def rawCnfToSat (f : RawCnf) : Sat.Fmla :=
  f.toList.map rawClauseToSat

def RawLitFalse (v : Sat.Valuation) (i : Int) : Prop :=
  Sat.Valuation.neg v (Sat.Literal.ofInt i)

def AssignmentSound (v : Sat.Valuation) (assignment : List Int) : Prop :=
  ∀ lit, lit ∈ assignment → RawLitFalse v lit

inductive ScanResult where
  | invalid
  | conflict
  | unit (lit : Int)
  | multiple
  deriving DecidableEq, Repr

def unknowns (assignment : List Int) (clause : RawClause) : List Int :=
  clause.toList.filter fun lit => ! decide (lit ∈ assignment)

def scanClause (assignment : List Int) (clause : RawClause) : ScanResult :=
  match unknowns assignment clause with
  | [] => .conflict
  | lit :: [] => if lit = 0 then .invalid else .unit lit
  | _ => .multiple

def litIndex? (lit : Int) : Option Nat :=
  if lit > 0 then
    some (2 * (lit.toNat - 1))
  else if lit < 0 then
    some (2 * ((-lit).toNat - 1) + 1)
  else
    none

structure Assignment where
  lits : List Int
  table : Array (Option Int)

namespace Assignment

inductive ScanAcc where
  | none
  | one (lit : Int)
  | multiple
  deriving DecidableEq, Repr

namespace ScanAcc

def push : ScanAcc → Int → ScanAcc
  | .none, lit => .one lit
  | .one _, _ => .multiple
  | .multiple, _ => .multiple

def finish : ScanAcc → ScanResult
  | .none => .conflict
  | .one lit => if lit = 0 then .invalid else .unit lit
  | .multiple => .multiple

end ScanAcc

def empty (capacity : Nat) : Assignment :=
  { lits := [], table := Array.replicate capacity none }

def contains (assignment : Assignment) (lit : Int) : Bool :=
  match litIndex? lit with
  | none => false
  | some idx =>
      match assignment.table[idx]? with
      | some (some stored) => stored == lit
      | _ => false

def add (assignment : Assignment) (lit : Int) : Assignment :=
  let table :=
    match litIndex? lit with
    | none => assignment.table
    | some idx =>
        if h : idx < assignment.table.size then
          assignment.table.set idx (some lit) h
        else
          assignment.table
  { lits := lit :: assignment.lits, table := table }

def ofList (capacity : Nat) (lits : List Int) : Assignment :=
  lits.foldr (fun lit assignment => assignment.add lit) (empty capacity)

def ContainsSound (assignment : Assignment) : Prop :=
  ∀ lit, assignment.contains lit = true → lit ∈ assignment.lits

theorem contains_sound_empty (capacity : Nat) :
    ContainsSound (empty capacity) := by
  intro lit hcontains
  have hfalse : (empty capacity).contains lit = false := by
    unfold contains empty
    cases hidx : litIndex? lit with
    | none =>
        simp
    | some idx =>
        simp
        by_cases hlt : idx < (Array.replicate capacity (none : Option Int)).size
        · have hget :
              (Array.replicate capacity (none : Option Int))[idx]? = some none := by
            rw [Array.getElem?_eq_getElem hlt]
            simp
          simp [hget]
        · have hget :
              (Array.replicate capacity (none : Option Int))[idx]? = none := by
            rw [Array.getElem?_eq_none_iff]
            exact Nat.le_of_not_gt hlt
          simp [hget]
  rw [hfalse] at hcontains
  cases hcontains

theorem contains_sound_add {assignment : Assignment}
    (hassignment : ContainsSound assignment) (lit : Int) :
    ContainsSound (assignment.add lit) := by
  intro x hcontains
  unfold add at hcontains
  cases hlit : litIndex? lit with
  | none =>
      simp [hlit, contains] at hcontains
      exact List.mem_cons_of_mem _ (hassignment x hcontains)
  | some idx =>
      by_cases hidx : idx < assignment.table.size
      · simp [hlit, hidx, contains] at hcontains
        cases hxidx : litIndex? x with
        | none =>
            simp [hxidx] at hcontains
        | some xidx =>
            simp [hxidx] at hcontains
            rw [Array.getElem?_set] at hcontains
            by_cases heq : idx = xidx
            · simp [heq] at hcontains
              simp [add, hcontains]
            · simp [heq] at hcontains
              exact List.mem_cons_of_mem lit
                (hassignment x (by simpa [contains, hxidx] using hcontains))
      · simp [hlit, hidx, contains] at hcontains
        exact List.mem_cons_of_mem lit (hassignment x hcontains)

theorem contains_sound_ofList (capacity : Nat) (lits : List Int) :
    ContainsSound (ofList capacity lits) := by
  induction lits with
  | nil =>
      simpa [ofList] using contains_sound_empty capacity
  | cons lit rest ih =>
      simpa [ofList] using contains_sound_add ih lit

theorem ofList_lits (capacity : Nat) :
    ∀ lits : List Int, (ofList capacity lits).lits = lits
  | [] => by simp [ofList, empty]
  | lit :: rest => by
      change ((ofList capacity rest).add lit).lits = lit :: rest
      simp [add, ofList_lits capacity rest]

def unknowns (assignment : Assignment) (clause : RawClause) : List Int :=
  clause.toList.filter fun lit => ! assignment.contains lit

def scanClause (assignment : Assignment) (clause : RawClause) : ScanResult :=
  match unknowns assignment clause with
  | [] => .conflict
  | lit :: [] => if lit = 0 then .invalid else .unit lit
  | _ => .multiple

def scanListAcc (assignment : Assignment) (acc : ScanAcc) : List Int → ScanAcc
  | [] => acc
  | lit :: rest =>
      if assignment.contains lit then
        scanListAcc assignment acc rest
      else
        scanListAcc assignment (acc.push lit) rest

def scanStep (assignment : Assignment) (acc : ScanAcc) (lit : Int) : ScanAcc :=
  if assignment.contains lit then acc else acc.push lit

def scanClauseFast (assignment : Assignment) (clause : RawClause) : ScanResult :=
  (clause.foldl (scanStep assignment) .none).finish

private def scanUnknowns (unknowns : List Int) : ScanResult :=
  match unknowns with
  | [] => .conflict
  | lit :: [] => if lit = 0 then .invalid else .unit lit
  | _ => .multiple

private theorem scanListAcc_eq_foldl_scanStep (assignment : Assignment) :
    ∀ (lits : List Int) (acc : ScanAcc),
      scanListAcc assignment acc lits = lits.foldl (scanStep assignment) acc
  | [], acc => rfl
  | lit :: rest, acc => by
      by_cases hcontains : assignment.contains lit = true
      · simp [scanListAcc, scanStep, hcontains,
          scanListAcc_eq_foldl_scanStep assignment rest acc]
      · have hfalse : assignment.contains lit = false := by
          cases h : assignment.contains lit <;> simp [h] at hcontains ⊢
        simp [scanListAcc, scanStep, hfalse,
          scanListAcc_eq_foldl_scanStep assignment rest (acc.push lit)]

private theorem scanListAcc_eq_foldl_unknowns (assignment : Assignment) :
    ∀ (lits : List Int) (acc : ScanAcc),
      scanListAcc assignment acc lits =
        (lits.filter fun lit => ! assignment.contains lit).foldl ScanAcc.push acc
  | [], acc => rfl
  | lit :: rest, acc => by
      by_cases hcontains : assignment.contains lit = true
      · simp [scanListAcc, hcontains, scanListAcc_eq_foldl_unknowns assignment rest acc]
      · have hfalse : assignment.contains lit = false := by
          cases h : assignment.contains lit <;> simp [h] at hcontains ⊢
        simp [scanListAcc, hfalse,
          scanListAcc_eq_foldl_unknowns assignment rest (acc.push lit)]

private theorem finish_foldl_push_none_eq_scanUnknowns :
    ∀ unknowns : List Int,
      (unknowns.foldl ScanAcc.push ScanAcc.none).finish = scanUnknowns unknowns
  | [] => rfl
  | lit :: [] => rfl
  | lit₁ :: lit₂ :: rest => by
      have hmulti : rest.foldl ScanAcc.push ScanAcc.multiple = ScanAcc.multiple := by
        induction rest with
        | nil => rfl
        | cons lit rest ih =>
            simpa [ScanAcc.push] using ih
      simp [ScanAcc.push, ScanAcc.finish, scanUnknowns, hmulti]

theorem scanClauseFast_eq_scanClause (assignment : Assignment) (clause : RawClause) :
    scanClauseFast assignment clause = scanClause assignment clause := by
  unfold scanClauseFast
  rw [← Array.foldl_toList]
  rw [← scanListAcc_eq_foldl_scanStep]
  change (scanListAcc assignment ScanAcc.none clause.toList).finish =
    scanUnknowns (clause.toList.filter fun lit => ! assignment.contains lit)
  rw [scanListAcc_eq_foldl_unknowns]
  exact finish_foldl_push_none_eq_scanUnknowns _

end Assignment

structure FastAssignment where
  table : Array (Option Int)

namespace FastAssignment

def empty (capacity : Nat) : FastAssignment :=
  { table := Array.replicate capacity none }

def contains (assignment : FastAssignment) (lit : Int) : Bool :=
  match litIndex? lit with
  | none => false
  | some idx =>
      match assignment.table[idx]? with
      | some (some stored) => stored == lit
      | _ => false

def add (assignment : FastAssignment) (lit : Int) : FastAssignment :=
  let table :=
    match litIndex? lit with
    | none => assignment.table
    | some idx =>
        if h : idx < assignment.table.size then
          assignment.table.set idx (some lit) h
        else
          assignment.table
  { table := table }

def ofList (capacity : Nat) (lits : List Int) : FastAssignment :=
  lits.foldr (fun lit assignment => assignment.add lit) (empty capacity)

def scanStep (assignment : FastAssignment) (acc : Assignment.ScanAcc) (lit : Int) :
    Assignment.ScanAcc :=
  if assignment.contains lit then acc else acc.push lit

def scanClauseFast (assignment : FastAssignment) (clause : RawClause) : ScanResult :=
  (clause.foldl (scanStep assignment) .none).finish

theorem contains_eq_assignment {fast : FastAssignment} {assignment : Assignment}
    (h : fast.table = assignment.table) (lit : Int) :
    fast.contains lit = assignment.contains lit := by
  simp [contains, Assignment.contains, h]

theorem add_table_eq_assignment {fast : FastAssignment} {assignment : Assignment}
    (h : fast.table = assignment.table) (lit : Int) :
    (fast.add lit).table = (assignment.add lit).table := by
  unfold add Assignment.add
  simp [h]

theorem ofList_table_eq_assignment (capacity : Nat) :
    ∀ lits : List Int,
      (ofList capacity lits).table = (Assignment.ofList capacity lits).table
  | [] => by simp [ofList, empty, Assignment.ofList, Assignment.empty]
  | lit :: rest => by
      change ((ofList capacity rest).add lit).table =
        ((Assignment.ofList capacity rest).add lit).table
      exact add_table_eq_assignment (ofList_table_eq_assignment capacity rest) lit

private theorem scanStep_eq_assignment {fast : FastAssignment} {assignment : Assignment}
    (h : fast.table = assignment.table) (acc : Assignment.ScanAcc) (lit : Int) :
    scanStep fast acc lit = Assignment.scanStep assignment acc lit := by
  unfold scanStep Assignment.scanStep
  rw [contains_eq_assignment h]

private theorem scanFold_eq_assignment {fast : FastAssignment} {assignment : Assignment}
    (h : fast.table = assignment.table) :
    ∀ (lits : List Int) (acc : Assignment.ScanAcc),
      lits.foldl (scanStep fast) acc =
        lits.foldl (Assignment.scanStep assignment) acc
  | [], _ => rfl
  | lit :: rest, acc => by
      change rest.foldl (scanStep fast) (scanStep fast acc lit) =
        rest.foldl (Assignment.scanStep assignment)
          (Assignment.scanStep assignment acc lit)
      rw [scanStep_eq_assignment h]
      exact scanFold_eq_assignment h rest (Assignment.scanStep assignment acc lit)

theorem scanClauseFast_eq_assignment {fast : FastAssignment} {assignment : Assignment}
    (h : fast.table = assignment.table) (clause : RawClause) :
    fast.scanClauseFast clause = Assignment.scanClauseFast assignment clause := by
  unfold scanClauseFast Assignment.scanClauseFast
  rw [← Array.foldl_toList]
  rw [← Array.foldl_toList]
  rw [scanFold_eq_assignment h]

end FastAssignment

abbrev Lookup := Nat → Option RawClause

def checkRupLoop (lookup : Lookup) : List Int → List Int → Bool
  | _assignment, [] => false
  | assignment, step :: rest =>
      if step < 0 then
        false
      else
        match lookup step.toNat with
        | none => false
        | some clause =>
            match scanClause assignment clause with
            | .conflict => true
            | .unit lit => checkRupLoop lookup ((-lit) :: assignment) rest
            | .invalid => false
            | .multiple => false

def checkRup (lookup : Lookup) (clause proof : RawClause) : Bool :=
  checkRupLoop lookup clause.toList proof.toList

def checkRupLoopFast (lookup : Lookup) : Assignment → List Int → Bool
  | _assignment, [] => false
  | assignment, step :: rest =>
      if step < 0 then
        false
      else
        match lookup step.toNat with
        | none => false
        | some clause =>
            match Assignment.scanClauseFast assignment clause with
            | .conflict => true
            | .unit lit => checkRupLoopFast lookup (assignment.add (-lit)) rest
            | .invalid => false
            | .multiple => false

inductive RupState where
  | failed
  | done
  | running (assignment : Assignment)

namespace RupState

def step (lookup : Lookup) : RupState → Int → RupState
  | .failed, _ => .failed
  | .done, _ => .done
  | .running assignment, proofStep =>
      if proofStep < 0 then
        .failed
      else
        match lookup proofStep.toNat with
        | none => .failed
        | some clause =>
            match Assignment.scanClauseFast assignment clause with
            | .conflict => .done
            | .unit lit => .running (assignment.add (-lit))
            | .invalid => .failed
            | .multiple => .failed

def accepts : RupState → Bool
  | .done => true
  | _ => false

end RupState

private theorem foldl_rup_failed (lookup : Lookup) :
    ∀ proof : List Int,
      proof.foldl (RupState.step lookup) RupState.failed = RupState.failed
  | [] => rfl
  | _ :: rest => foldl_rup_failed lookup rest

private theorem foldl_rup_done (lookup : Lookup) :
    ∀ proof : List Int,
      proof.foldl (RupState.step lookup) RupState.done = RupState.done
  | [] => rfl
  | _ :: rest => foldl_rup_done lookup rest

private def checkRupLoopFastFold (lookup : Lookup)
    (assignment : Assignment) (proof : List Int) : Bool :=
  (proof.foldl (RupState.step lookup) (RupState.running assignment)).accepts

private theorem checkRupLoopFast_eq_fold (lookup : Lookup) :
    ∀ (proof : List Int) (assignment : Assignment),
      checkRupLoopFast lookup assignment proof =
        checkRupLoopFastFold lookup assignment proof
  | [], assignment => rfl
  | proofStep :: rest, assignment => by
      unfold checkRupLoopFast checkRupLoopFastFold
      by_cases hneg : proofStep < 0
      · simp [hneg, RupState.step, foldl_rup_failed, RupState.accepts]
      · simp [hneg, RupState.step]
        cases hdb : lookup proofStep.toNat with
        | none =>
            simp [foldl_rup_failed, RupState.accepts]
        | some clause =>
            simp
            cases hscan : Assignment.scanClauseFast assignment clause with
            | invalid =>
                simp [foldl_rup_failed, RupState.accepts]
            | conflict =>
                simp [foldl_rup_done, RupState.accepts]
            | unit lit =>
                change checkRupLoopFast lookup (assignment.add (-lit)) rest =
                  (List.foldl (RupState.step lookup)
                    (RupState.running (assignment.add (-lit))) rest).accepts
                exact checkRupLoopFast_eq_fold lookup rest (assignment.add (-lit))
            | multiple =>
                simp [foldl_rup_failed, RupState.accepts]

inductive FastRupState where
  | failed
  | done
  | running (assignment : FastAssignment)

namespace FastRupState

def step (lookup : Lookup) : FastRupState → Int → FastRupState
  | .failed, _ => .failed
  | .done, _ => .done
  | .running assignment, proofStep =>
      if proofStep < 0 then
        .failed
      else
        match lookup proofStep.toNat with
        | none => .failed
        | some clause =>
            match FastAssignment.scanClauseFast assignment clause with
            | .conflict => .done
            | .unit lit => .running (assignment.add (-lit))
            | .invalid => .failed
            | .multiple => .failed

def accepts : FastRupState → Bool
  | .done => true
  | _ => false

end FastRupState

private theorem foldl_fast_rup_failed (lookup : Lookup) :
    ∀ proof : List Int,
      proof.foldl (FastRupState.step lookup) FastRupState.failed = FastRupState.failed
  | [] => rfl
  | _ :: rest => foldl_fast_rup_failed lookup rest

private theorem foldl_fast_rup_done (lookup : Lookup) :
    ∀ proof : List Int,
      proof.foldl (FastRupState.step lookup) FastRupState.done = FastRupState.done
  | [] => rfl
  | _ :: rest => foldl_fast_rup_done lookup rest

private theorem fast_rup_fold_accepts_eq_assignment (lookup : Lookup) :
    ∀ (proof : List Int) (fast : FastAssignment) (assignment : Assignment),
      fast.table = assignment.table →
        (proof.foldl (FastRupState.step lookup) (FastRupState.running fast)).accepts =
          (proof.foldl (RupState.step lookup) (RupState.running assignment)).accepts
  | [], _fast, _assignment, _htable => rfl
  | proofStep :: rest, fast, assignment, htable => by
      by_cases hneg : proofStep < 0
      · simp [FastRupState.step, RupState.step, hneg, foldl_fast_rup_failed,
          foldl_rup_failed, FastRupState.accepts, RupState.accepts]
      · simp [FastRupState.step, RupState.step, hneg]
        cases hdb : lookup proofStep.toNat with
        | none =>
            simp [foldl_fast_rup_failed, foldl_rup_failed,
              FastRupState.accepts, RupState.accepts]
        | some clause =>
            simp
            have hscanEq :
                FastAssignment.scanClauseFast fast clause =
                  Assignment.scanClauseFast assignment clause :=
              FastAssignment.scanClauseFast_eq_assignment htable clause
            cases hscan : Assignment.scanClauseFast assignment clause with
            | invalid =>
                have hfast : FastAssignment.scanClauseFast fast clause = .invalid := by
                  simpa [hscan] using hscanEq
                simp [hfast, foldl_fast_rup_failed, foldl_rup_failed,
                  FastRupState.accepts, RupState.accepts]
            | conflict =>
                have hfast : FastAssignment.scanClauseFast fast clause = .conflict := by
                  simpa [hscan] using hscanEq
                simp [hfast, foldl_fast_rup_done, foldl_rup_done,
                  FastRupState.accepts, RupState.accepts]
            | unit lit =>
                have hfast : FastAssignment.scanClauseFast fast clause = .unit lit := by
                  simpa [hscan] using hscanEq
                simp [hfast]
                exact fast_rup_fold_accepts_eq_assignment lookup rest (fast.add (-lit))
                  (assignment.add (-lit))
                  (FastAssignment.add_table_eq_assignment htable (-lit))
            | multiple =>
                have hfast : FastAssignment.scanClauseFast fast clause = .multiple := by
                  simpa [hscan] using hscanEq
                simp [hfast, foldl_fast_rup_failed, foldl_rup_failed,
                  FastRupState.accepts, RupState.accepts]

def checkRupFast (litCapacity : Nat) (lookup : Lookup) (clause proof : RawClause) : Bool :=
  (proof.foldl (FastRupState.step lookup)
    (FastRupState.running (FastAssignment.ofList litCapacity clause.toList))).accepts

abbrev Db := Array (Option RawClause)

namespace Db

def lookup (db : Db) (id : Nat) : Option RawClause :=
  (db[id]?).join

theorem lookup_set (db : Db) (id : Nat) (h : id < db.size) (val : Option RawClause)
    (j : Nat) :
    lookup (db.set id val h) j = if id = j then val else lookup db j := by
  by_cases hij : id = j
  · simp [lookup, hij]
  · simp [lookup, hij]

def growToIndex (db : Db) (id : Nat) : Db :=
  (List.range (id + 1 - db.size)).foldl (fun acc _ => acc.push none) db

def insert (db : Db) (id : Nat) (clause : RawClause) : Db :=
  let db := growToIndex db id
  if h : id < db.size then
    db.set id (some clause) h
  else
    db

def erase (db : Db) (id : Nat) : Db :=
  if h : id < db.size then
    db.set id none h
  else
    db

def insert? (db : Db) (id : Nat) (clause : RawClause) : Option Db :=
  if h : id < db.size then
    some (db.set id (some clause) h)
  else
    none

def eraseIds (db : Db) (ids : Array Nat) : Db :=
  ids.toList.foldl erase db

def setInitialClauses : Db → Nat → List RawClause → Option Db
  | db, _id, [] => some db
  | db, id, clause :: clauses =>
      if h : id < db.size then
        setInitialClauses (db.set id (some clause) h) (id + 1) clauses
      else
        none

def insertClauses? : Db → Nat → List RawClause → Option Db
  | db, _id, [] => some db
  | db, id, clause :: clauses =>
      match insert? db id clause with
      | some db' => insertClauses? db' (id + 1) clauses
      | none => none

def ofCnfWithCapacity (capacity : Nat) (cnf : RawCnf) : Option Db :=
  if cnf.size + 1 ≤ capacity then
    some <|
      (none :: cnf.toList.map some ++
        List.replicate (capacity - (cnf.size + 1)) none).toArray
  else
    none

end Db

def maxStepId (steps : Array LRATStep) : Nat :=
  steps.foldl
    (fun acc step =>
      match step with
      | .add id _ _ => max acc id
      | .del ids => ids.foldl max acc)
    0

def dbCapacity (cnf : RawCnf) (steps : Array LRATStep) : Nat :=
  max (cnf.size + 1) (maxStepId steps + 1)

def checkSteps (litCapacity : Nat) (db : Db) : List LRATStep → Bool
  | [] => false
  | step :: rest =>
      match step with
      | .del ids =>
          checkSteps litCapacity (Db.eraseIds db ids) rest
      | .add id clause proof =>
          if checkRupFast litCapacity (Db.lookup db) clause proof then
            if clause.isEmpty then
              true
            else
              match Db.insert? db id clause with
              | some db => checkSteps litCapacity db rest
              | none => false
          else
            false

inductive StepState where
  | failed
  | done
  | running (db : Db)

namespace StepState

def step (litCapacity : Nat) : StepState → LRATStep → StepState
  | .failed, _ => .failed
  | .done, _ => .done
  | .running db, .del ids => .running (Db.eraseIds db ids)
  | .running db, .add id clause proof =>
      if checkRupFast litCapacity (Db.lookup db) clause proof then
        if clause.isEmpty then
          .done
        else
          match Db.insert? db id clause with
          | some db' => .running db'
          | none => .failed
      else
        .failed

def accepts : StepState → Bool
  | .done => true
  | _ => false

end StepState

private theorem foldl_step_failed (litCapacity : Nat) :
    ∀ steps : List LRATStep,
      steps.foldl (StepState.step litCapacity) StepState.failed = StepState.failed
  | [] => rfl
  | _ :: rest => foldl_step_failed litCapacity rest

private theorem foldl_step_done (litCapacity : Nat) :
    ∀ steps : List LRATStep,
      steps.foldl (StepState.step litCapacity) StepState.done = StepState.done
  | [] => rfl
  | _ :: rest => foldl_step_done litCapacity rest

private def checkStepsFold (litCapacity : Nat) (db : Db)
    (steps : List LRATStep) : Bool :=
  (steps.foldl (StepState.step litCapacity) (StepState.running db)).accepts

private theorem checkSteps_eq_fold (litCapacity : Nat) :
    ∀ (steps : List LRATStep) (db : Db),
      checkSteps litCapacity db steps = checkStepsFold litCapacity db steps
  | [], db => rfl
  | step :: rest, db => by
      cases step with
      | del ids =>
          unfold checkSteps checkStepsFold
          change checkSteps litCapacity (Db.eraseIds db ids) rest =
            (List.foldl (StepState.step litCapacity)
              (StepState.running (Db.eraseIds db ids)) rest).accepts
          exact checkSteps_eq_fold litCapacity rest (Db.eraseIds db ids)
      | add id clause proof =>
          by_cases hrup : checkRupFast litCapacity (Db.lookup db) clause proof = true
          · by_cases hempty : clause.isEmpty = true
            · simp [checkSteps, checkStepsFold, StepState.step, hrup, hempty,
                foldl_step_done, StepState.accepts]
            · cases hinsert : Db.insert? db id clause with
              | none =>
                  simp [checkSteps, checkStepsFold, StepState.step, hrup, hempty,
                    hinsert, foldl_step_failed, StepState.accepts]
              | some db' =>
                  simp [checkSteps, checkStepsFold, StepState.step, hrup, hempty,
                    hinsert]
                  exact checkSteps_eq_fold litCapacity rest db'
          · simp [checkSteps, checkStepsFold, StepState.step, hrup, foldl_step_failed,
              StepState.accepts]

def checkStepsArray (litCapacity : Nat) (db : Db) (steps : Array LRATStep) : Bool :=
  (steps.foldl (StepState.step litCapacity) (StepState.running db)).accepts

namespace FastParser

abbrev It := String.Legacy.Iterator

def hasNext (it : It) : Bool :=
  String.Legacy.Iterator.hasNext it

def curr (it : It) : Char :=
  String.Legacy.Iterator.curr it

def next (it : It) : It :=
  String.Legacy.Iterator.next it

def isWs (c : Char) : Bool :=
  c = ' ' || c = '\n' || c = '\t' || c = '\r'

partial def skipWs (it : It) : It :=
  if hasNext it && isWs (curr it) then
    skipWs (next it)
  else
    it

def digit? (c : Char) : Option Nat :=
  let n := c.toNat
  if n < 48 then
    none
  else if n < 58 then
    some (n - 48)
  else
    none

partial def parseNatDigits? (it : It) (acc : Nat) (seen : Bool) :
    Option (Nat × It) :=
  if hasNext it then
    match digit? (curr it) with
    | some d => parseNatDigits? (next it) (10 * acc + d) true
    | none => if seen then some (acc, it) else none
  else
    if seen then some (acc, it) else none

def parseNat? (it : It) : Option (Nat × It) :=
  parseNatDigits? (skipWs it) 0 false

def parseInt? (it : It) : Option (Int × It) :=
  let it := skipWs it
  if hasNext it && curr it = '-' then
    match parseNatDigits? (next it) 0 false with
    | some (n, it') => some (-Int.ofNat n, it')
    | none => none
  else
    match parseNatDigits? it 0 false with
    | some (n, it') => some (Int.ofNat n, it')
    | none => none

partial def parseInts0? (it : It) (arr : Array Int := #[]) :
    Option (Array Int × It) :=
  match parseInt? it with
  | none => none
  | some (0, it') => some (arr, it')
  | some (n, it') => parseInts0? it' (arr.push n)

partial def parseNats0? (it : It) (arr : Array Nat := #[]) :
    Option (Array Nat × It) :=
  match parseNat? it with
  | none => none
  | some (0, it') => some (arr, it')
  | some (n, it') => parseNats0? it' (arr.push n)

def consumeChar? (expected : Char) (it : It) : Option It :=
  let it := skipWs it
  if hasNext it && curr it = expected then
    some (next it)
  else
    none

def consumeCnf? (it : It) : Option It :=
  let it := skipWs it
  if hasNext it && curr it = 'c' then
    let it := next it
    if hasNext it && curr it = 'n' then
      let it := next it
      if hasNext it && curr it = 'f' then
        some (next it)
      else
        none
    else
      none
  else
    none

partial def parseClauseLoop? : Nat → It → Array RawClause → Option (Array RawClause × It)
  | 0, it, clauses => some (clauses, it)
  | n + 1, it, clauses =>
      match parseInts0? it with
      | none => none
      | some (clause, it') => parseClauseLoop? n it' (clauses.push clause)

def parseDimacsFull? (cnf : String) : Option (Nat × RawCnf) := do
  let it := String.Legacy.mkIterator cnf
  let it ← consumeChar? 'p' it
  let it ← consumeCnf? it
  let (nvars, it) ← parseNat? it
  let (nclauses, it) ← parseNat? it
  let (clauses, _it) ← parseClauseLoop? nclauses it (Array.mkEmpty nclauses)
  some (nvars, clauses)

partial def parseLRATLoop? (it : It) (steps : Array LRATStep) :
    Option (Array LRATStep) :=
  let it := skipWs it
  if hasNext it then
    match parseNat? it with
    | none => none
    | some (stepId, it') =>
        let it' := skipWs it'
        if hasNext it' && curr it' = 'd' then
          match parseNats0? (next it') with
          | none => none
          | some (ids, it'') => parseLRATLoop? it'' (steps.push (LRATStep.del ids))
        else
          match parseInts0? it' with
          | none => none
          | some (lits, it'') =>
              match parseInts0? it'' with
              | none => none
              | some (proof, it''') =>
                  parseLRATLoop? it''' (steps.push (LRATStep.add stepId lits proof))
  else
    some steps

def parseLRAT? (lrat : String) : Option (Array LRATStep) :=
  parseLRATLoop? (String.Legacy.mkIterator lrat) #[]

end FastParser

def parseDimacsFull? (cnf : String) : Option (Nat × RawCnf) :=
  match FastParser.parseDimacsFull? cnf with
  | some parsed => some parsed
  | none =>
      match Parser.parseDimacs ⟨cnf, cnf.startPos⟩ with
      | Std.Internal.Parsec.ParseResult.success _ parsed => some parsed
      | _ => none

def parseDimacs? (cnf : String) : Option RawCnf :=
  (parseDimacsFull? cnf).map Prod.snd

def parseLRAT? (lrat : String) : Option (Array LRATStep) :=
  match FastParser.parseLRAT? lrat with
  | some steps => some steps
  | none =>
      match Parser.parseLRAT ⟨lrat, lrat.startPos⟩ with
      | Std.Internal.Parsec.ParseResult.success _ steps => some steps
      | _ => none

def checkDimacsLRAT (cnf lrat : String) : Bool :=
  match parseDimacsFull? cnf, parseLRAT? lrat with
  | some (nvars, clauses), some steps =>
      match Db.ofCnfWithCapacity (dbCapacity clauses steps) clauses with
      | some db => checkStepsArray (2 * nvars + 2) db steps
      | none => false
  | _, _ => false

private theorem rawLitFalse_neg_of_not (v : Sat.Valuation) {u : Int} (hu : u ≠ 0)
    (h : ¬ RawLitFalse v u) : RawLitFalse v (-u) := by
  cases u with
  | ofNat n =>
      cases n with
      | zero => contradiction
      | succ k =>
          simp [RawLitFalse, Sat.Literal.ofInt]
          by_cases hv : v k
          · exact hv
          · exact False.elim (h (by simpa [RawLitFalse, Sat.Literal.ofInt] using hv))
  | negSucc k =>
      simpa [RawLitFalse, Sat.Literal.ofInt] using h

private theorem mem_assignment_of_unknowns_nil {assignment : List Int} {clause : RawClause}
    (h : unknowns assignment clause = []) {lit : Int} (hlit : lit ∈ clause.toList) :
    lit ∈ assignment := by
  by_cases hmem : lit ∈ assignment
  · exact hmem
  · have hunk : lit ∈ unknowns assignment clause := by
      simp [unknowns, hlit, hmem]
    rw [h] at hunk
    cases hunk

private theorem eq_or_mem_assignment_of_unknowns_single {assignment : List Int}
    {clause : RawClause} {u lit : Int} (h : unknowns assignment clause = [u])
    (hlit : lit ∈ clause.toList) : lit = u ∨ lit ∈ assignment := by
  by_cases hmem : lit ∈ assignment
  · exact Or.inr hmem
  · have hunk : lit ∈ unknowns assignment clause := by
      simp [unknowns, hlit, hmem]
    rw [h] at hunk
    exact Or.inl (by simpa using hunk)

private theorem mem_assignment_of_scan_conflict {assignment : List Int} {clause : RawClause}
    (hscan : scanClause assignment clause = .conflict) {lit : Int}
    (hlit : lit ∈ clause.toList) : lit ∈ assignment := by
  unfold scanClause at hscan
  cases hunk : unknowns assignment clause with
  | nil =>
      exact mem_assignment_of_unknowns_nil hunk hlit
  | cons u rest =>
      cases rest with
      | nil =>
          by_cases hz : u = 0 <;> simp [hunk, hz] at hscan
      | cons v rest =>
          simp [hunk] at hscan

private theorem unit_nonzero_of_scan {assignment : List Int} {clause : RawClause}
    {u : Int} (hscan : scanClause assignment clause = .unit u) : u ≠ 0 := by
  unfold scanClause at hscan
  cases hunk : unknowns assignment clause with
  | nil =>
      simp [hunk] at hscan
  | cons x rest =>
      cases rest with
      | nil =>
          by_cases hz : x = 0
          · simp [hunk, hz] at hscan
          · simp [hunk, hz] at hscan
            exact hscan ▸ hz
      | cons y rest =>
          simp [hunk] at hscan

private theorem eq_or_mem_assignment_of_scan_unit {assignment : List Int}
    {clause : RawClause} {u lit : Int} (hscan : scanClause assignment clause = .unit u)
    (hlit : lit ∈ clause.toList) : lit = u ∨ lit ∈ assignment := by
  unfold scanClause at hscan
  cases hunk : unknowns assignment clause with
  | nil =>
      simp [hunk] at hscan
  | cons x rest =>
      cases rest with
      | nil =>
          by_cases hz : x = 0
          · simp [hunk, hz] at hscan
          · simp [hunk, hz] at hscan
            subst hscan
            exact eq_or_mem_assignment_of_unknowns_single hunk hlit
      | cons y rest =>
          simp [hunk] at hscan

private theorem satisfies_of_refute_assignment {v : Sat.Valuation} :
    ∀ {lits : List Int}, (AssignmentSound v lits → False) →
      Sat.Valuation.satisfies v (lits.map Sat.Literal.ofInt)
  | [], hrefute => hrefute (by intro lit hmem; cases hmem)
  | lit :: rest, hrefute => by
      intro hlit
      exact satisfies_of_refute_assignment (v := v) (lits := rest) (by
        intro hrest
        apply hrefute
        intro x hx
        cases hx with
        | head =>
            simpa [RawLitFalse]
              using hlit
        | tail _ hxrest =>
            exact hrest x hxrest)

private theorem false_of_satisfies_of_all_mem_assignment {v : Sat.Valuation}
    {assignment lits : List Int}
    (hsat : Sat.Valuation.satisfies v (lits.map Sat.Literal.ofInt))
    (has : AssignmentSound v assignment)
    (hall : ∀ lit, lit ∈ lits → lit ∈ assignment) : False := by
  induction lits with
  | nil =>
      exact hsat
  | cons lit rest ih =>
      apply ih
      · exact hsat (has lit (hall lit (by simp)))
      · intro x hx
        exact hall x (by simp [hx])

private theorem false_of_satisfies_of_scan_conflict {v : Sat.Valuation}
    {assignment : List Int} {clause : RawClause}
    (hscan : scanClause assignment clause = .conflict)
    (hsat : Sat.Valuation.satisfies v (rawClauseToSat clause))
    (has : AssignmentSound v assignment) : False := by
  exact false_of_satisfies_of_all_mem_assignment hsat has
    (by intro lit hlit; exact mem_assignment_of_scan_conflict hscan hlit)

private theorem not_rawLitFalse_of_satisfies_of_scan_unit {v : Sat.Valuation}
    {assignment : List Int} {clause : RawClause} {u : Int}
    (hscan : scanClause assignment clause = .unit u)
    (hsat : Sat.Valuation.satisfies v (rawClauseToSat clause))
    (has : AssignmentSound v assignment) : ¬ RawLitFalse v u := by
  intro hu
  apply false_of_satisfies_of_all_mem_assignment hsat
    (assignment := u :: assignment)
  · intro lit hlit
    cases hlit with
    | head =>
        simpa [RawLitFalse] using hu
    | tail _ htail =>
        exact has lit htail
  · intro lit hlit
    rcases eq_or_mem_assignment_of_scan_unit hscan hlit with rfl | hmem
    · simp
    · simp [hmem]

private theorem mem_lits_of_fast_unknowns_nil {assignment : Assignment} {clause : RawClause}
    (hcontains : assignment.ContainsSound)
    (h : Assignment.unknowns assignment clause = []) {lit : Int}
    (hlit : lit ∈ clause.toList) : lit ∈ assignment.lits := by
  by_cases hc : assignment.contains lit = true
  · exact hcontains lit hc
  · have hcfalse : assignment.contains lit = false := by
      cases hcontains' : assignment.contains lit <;> simp [hcontains'] at hc ⊢
    have hunk : lit ∈ Assignment.unknowns assignment clause := by
      simp [Assignment.unknowns, hlit, hcfalse]
    rw [h] at hunk
    cases hunk

private theorem eq_or_mem_lits_of_fast_unknowns_single {assignment : Assignment}
    {clause : RawClause} {u lit : Int} (hcontains : assignment.ContainsSound)
    (h : Assignment.unknowns assignment clause = [u])
    (hlit : lit ∈ clause.toList) : lit = u ∨ lit ∈ assignment.lits := by
  by_cases hc : assignment.contains lit = true
  · exact Or.inr (hcontains lit hc)
  · have hcfalse : assignment.contains lit = false := by
      cases hcontains' : assignment.contains lit <;> simp [hcontains'] at hc ⊢
    have hunk : lit ∈ Assignment.unknowns assignment clause := by
      simp [Assignment.unknowns, hlit, hcfalse]
    rw [h] at hunk
    exact Or.inl (by simpa using hunk)

private theorem mem_lits_of_fast_scan_conflict {assignment : Assignment} {clause : RawClause}
    (hcontains : assignment.ContainsSound)
    (hscan : Assignment.scanClause assignment clause = .conflict) {lit : Int}
    (hlit : lit ∈ clause.toList) : lit ∈ assignment.lits := by
  unfold Assignment.scanClause at hscan
  cases hunk : Assignment.unknowns assignment clause with
  | nil =>
      exact mem_lits_of_fast_unknowns_nil hcontains hunk hlit
  | cons u rest =>
      cases rest with
      | nil =>
          by_cases hz : u = 0 <;> simp [hunk, hz] at hscan
      | cons v rest =>
          simp [hunk] at hscan

private theorem fast_unit_nonzero_of_scan {assignment : Assignment} {clause : RawClause}
    {u : Int} (hscan : Assignment.scanClause assignment clause = .unit u) :
    u ≠ 0 := by
  unfold Assignment.scanClause at hscan
  cases hunk : Assignment.unknowns assignment clause with
  | nil =>
      simp [hunk] at hscan
  | cons x rest =>
      cases rest with
      | nil =>
          by_cases hz : x = 0
          · simp [hunk, hz] at hscan
          · simp [hunk, hz] at hscan
            exact hscan ▸ hz
      | cons y rest =>
          simp [hunk] at hscan

private theorem eq_or_mem_lits_of_fast_scan_unit {assignment : Assignment}
    {clause : RawClause} {u lit : Int} (hcontains : assignment.ContainsSound)
    (hscan : Assignment.scanClause assignment clause = .unit u)
    (hlit : lit ∈ clause.toList) : lit = u ∨ lit ∈ assignment.lits := by
  unfold Assignment.scanClause at hscan
  cases hunk : Assignment.unknowns assignment clause with
  | nil =>
      simp [hunk] at hscan
  | cons x rest =>
      cases rest with
      | nil =>
          by_cases hz : x = 0
          · simp [hunk, hz] at hscan
          · simp [hunk, hz] at hscan
            subst hscan
            exact eq_or_mem_lits_of_fast_unknowns_single hcontains hunk hlit
      | cons y rest =>
          simp [hunk] at hscan

private theorem false_of_satisfies_of_fast_scan_conflict {v : Sat.Valuation}
    {assignment : Assignment} {clause : RawClause}
    (hcontains : assignment.ContainsSound)
    (hscan : Assignment.scanClause assignment clause = .conflict)
    (hsat : Sat.Valuation.satisfies v (rawClauseToSat clause))
    (has : AssignmentSound v assignment.lits) : False := by
  exact false_of_satisfies_of_all_mem_assignment hsat has
    (by intro lit hlit; exact mem_lits_of_fast_scan_conflict hcontains hscan hlit)

private theorem not_rawLitFalse_of_satisfies_of_fast_scan_unit {v : Sat.Valuation}
    {assignment : Assignment} {clause : RawClause} {u : Int}
    (hcontains : assignment.ContainsSound)
    (hscan : Assignment.scanClause assignment clause = .unit u)
    (hsat : Sat.Valuation.satisfies v (rawClauseToSat clause))
    (has : AssignmentSound v assignment.lits) : ¬ RawLitFalse v u := by
  intro hu
  apply false_of_satisfies_of_all_mem_assignment hsat
    (assignment := u :: assignment.lits)
  · intro lit hlit
    cases hlit with
    | head =>
        simpa [RawLitFalse] using hu
    | tail _ htail =>
        exact has lit htail
  · intro lit hlit
    rcases eq_or_mem_lits_of_fast_scan_unit hcontains hscan hlit with rfl | hmem
    · simp
    · simp [hmem]

def LookupSound (f : Sat.Fmla) (lookup : Lookup) : Prop :=
  ∀ id clause, lookup id = some clause → Sat.Fmla.proof f (rawClauseToSat clause)

def DbSound (f : Sat.Fmla) (db : Db) : Prop :=
  LookupSound f (Db.lookup db)

private theorem some_mem_toList_of_lookup {db : Db} {id : Nat} {clause : RawClause}
    (hlookup : Db.lookup db id = some clause) : some clause ∈ db.toList := by
  unfold Db.lookup at hlookup
  cases hget : db[id]? with
  | none =>
      simp [hget] at hlookup
  | some opt =>
      cases opt with
      | none =>
          simp [hget] at hlookup
      | some clause' =>
          simp [hget] at hlookup
          cases hlookup
          rcases Array.getElem?_eq_some_iff.mp hget with ⟨hid, hval⟩
          have hmem : db[id] ∈ db := Array.getElem_mem hid
          rw [hval] at hmem
          exact Array.mem_def.mp hmem

private theorem proof_of_rawClause_mem {cnf : RawCnf} {clause : RawClause}
    (hmem : clause ∈ cnf.toList) :
    Sat.Fmla.proof (rawCnfToSat cnf) (rawClauseToSat clause) := by
  apply Sat.Fmla.proof_of_subsumes
  constructor
  intro c hc
  simp [Sat.Fmla.one] at hc
  subst c
  exact List.mem_map.mpr ⟨clause, hmem, rfl⟩

theorem DbSound.ofCnfWithCapacity {capacity : Nat} {cnf : RawCnf} {db : Db}
    (hdb : Db.ofCnfWithCapacity capacity cnf = some db) :
    DbSound (rawCnfToSat cnf) db := by
  intro id clause hlookup
  unfold Db.ofCnfWithCapacity at hdb
  split at hdb
  next =>
    cases hdb
    have hmemLoaded : some clause ∈
        (none :: cnf.toList.map some ++
          List.replicate (capacity - (cnf.size + 1)) none) := by
      simpa using some_mem_toList_of_lookup hlookup
    exact proof_of_rawClause_mem (by simpa using hmemLoaded)
  next =>
    cases hdb

private theorem DbSound.erase {f : Sat.Fmla} {db : Db} (hdb : DbSound f db)
    (id : Nat) : DbSound f (Db.erase db id) := by
  intro j clause hlookup
  unfold Db.erase at hlookup
  split at hlookup
  next h =>
    rw [Db.lookup_set] at hlookup
    by_cases hid : id = j
    · simp [hid] at hlookup
    · simp [hid] at hlookup
      exact hdb j clause hlookup
  next =>
    exact hdb j clause hlookup

private theorem DbSound.eraseIds {f : Sat.Fmla} {db : Db} (hdb : DbSound f db)
    (ids : Array Nat) : DbSound f (Db.eraseIds db ids) := by
  unfold Db.eraseIds
  induction ids.toList generalizing db with
  | nil =>
      simpa using hdb
  | cons id rest ih =>
      exact ih (DbSound.erase hdb id)

private theorem DbSound.insert?_of_some {f : Sat.Fmla} {db db' : Db}
    {id : Nat} {clause : RawClause}
    (hinsert : Db.insert? db id clause = some db')
    (hdb : DbSound f db)
    (hclause : Sat.Fmla.proof f (rawClauseToSat clause)) :
    DbSound f db' := by
  intro j clause' hlookup
  unfold Db.insert? at hinsert
  split at hinsert
  next h =>
    cases hinsert
    rw [Db.lookup_set] at hlookup
    by_cases hid : id = j
    · simp [hid] at hlookup
      cases hlookup
      exact hclause
    · simp [hid] at hlookup
      exact hdb j clause' hlookup
  next =>
    cases hinsert

private theorem DbSound.insertClauses?_of_forall {f : Sat.Fmla} :
    ∀ {clauses : List RawClause} {db db' : Db} {id : Nat},
      Db.insertClauses? db id clauses = some db' →
      DbSound f db →
      (∀ clause, clause ∈ clauses → Sat.Fmla.proof f (rawClauseToSat clause)) →
      DbSound f db'
  | [], db, db', id, hinsert, hdb, _hclauses => by
      simp [Db.insertClauses?] at hinsert
      cases hinsert
      exact hdb
  | clause :: rest, db, db', id, hinsert, hdb, hclauses => by
      unfold Db.insertClauses? at hinsert
      cases hfirst : Db.insert? db id clause with
      | none =>
          simp [hfirst] at hinsert
      | some db1 =>
          simp [hfirst] at hinsert
          have hdb1 : DbSound f db1 :=
            DbSound.insert?_of_some hfirst hdb (hclauses clause (by simp))
          exact DbSound.insertClauses?_of_forall hinsert hdb1 (by
            intro c hc
            exact hclauses c (by simp [hc]))

theorem checkRupLoop_sound {f : Sat.Fmla} {lookup : Lookup} {assignment proof : List Int}
    (hlookup : LookupSound f lookup) (hcheck : checkRupLoop lookup assignment proof = true)
    {v : Sat.Valuation} (hv : Sat.Valuation.satisfies_fmla v f)
    (has : AssignmentSound v assignment) : False := by
  induction proof generalizing assignment with
  | nil =>
      simp [checkRupLoop] at hcheck
  | cons step rest ih =>
      unfold checkRupLoop at hcheck
      by_cases hneg : step < 0
      · simp [hneg] at hcheck
      · simp [hneg] at hcheck
        cases hdb : lookup step.toNat with
        | none =>
            simp [hdb] at hcheck
        | some clause =>
            simp [hdb] at hcheck
            cases hscan : scanClause assignment clause with
            | invalid =>
                simp [hscan] at hcheck
            | conflict =>
                exact false_of_satisfies_of_scan_conflict hscan
                  (hlookup step.toNat clause hdb v hv) has
            | unit lit =>
                simp [hscan] at hcheck
                have hnot : ¬ RawLitFalse v lit :=
                  not_rawLitFalse_of_satisfies_of_scan_unit hscan
                    (hlookup step.toNat clause hdb v hv) has
                have hnonzero : lit ≠ 0 := unit_nonzero_of_scan hscan
                have hnegLit : RawLitFalse v (-lit) :=
                  rawLitFalse_neg_of_not v hnonzero hnot
                exact ih hcheck (by
                  intro x hx
                  cases hx with
                  | head =>
                      simpa [RawLitFalse] using hnegLit
                  | tail _ htail =>
                      exact has x htail)
            | multiple =>
                simp [hscan] at hcheck

theorem checkRup_sound {f : Sat.Fmla} {lookup : Lookup} {clause proof : RawClause}
    (hlookup : LookupSound f lookup) (hcheck : checkRup lookup clause proof = true) :
    Sat.Fmla.proof f (rawClauseToSat clause) := by
  intro v hv
  exact satisfies_of_refute_assignment (v := v) (lits := clause.toList) (by
    intro has
    exact checkRupLoop_sound hlookup hcheck hv has)

theorem checkRupLoopFast_sound {f : Sat.Fmla} {lookup : Lookup}
    {assignment : Assignment} {proof : List Int}
    (hlookup : LookupSound f lookup)
    (hcontains : assignment.ContainsSound)
    (hcheck : checkRupLoopFast lookup assignment proof = true)
    {v : Sat.Valuation} (hv : Sat.Valuation.satisfies_fmla v f)
    (has : AssignmentSound v assignment.lits) : False := by
  induction proof generalizing assignment with
  | nil =>
      simp [checkRupLoopFast] at hcheck
  | cons step rest ih =>
      unfold checkRupLoopFast at hcheck
      by_cases hneg : step < 0
      · simp [hneg] at hcheck
      · simp [hneg] at hcheck
        cases hdb : lookup step.toNat with
        | none =>
            simp [hdb] at hcheck
        | some clause =>
            simp [hdb] at hcheck
            cases hscanFast : Assignment.scanClauseFast assignment clause with
            | invalid =>
                have hscan : Assignment.scanClause assignment clause = .invalid := by
                  simpa [Assignment.scanClauseFast_eq_scanClause] using hscanFast
                simp [hscanFast] at hcheck
            | conflict =>
                have hscan : Assignment.scanClause assignment clause = .conflict := by
                  simpa [Assignment.scanClauseFast_eq_scanClause] using hscanFast
                exact false_of_satisfies_of_fast_scan_conflict hcontains hscan
                  (hlookup step.toNat clause hdb v hv) has
            | unit lit =>
                have hscan : Assignment.scanClause assignment clause = .unit lit := by
                  simpa [Assignment.scanClauseFast_eq_scanClause] using hscanFast
                simp [hscanFast] at hcheck
                have hnot : ¬ RawLitFalse v lit :=
                  not_rawLitFalse_of_satisfies_of_fast_scan_unit hcontains hscan
                    (hlookup step.toNat clause hdb v hv) has
                have hnonzero : lit ≠ 0 := fast_unit_nonzero_of_scan hscan
                have hnegLit : RawLitFalse v (-lit) :=
                  rawLitFalse_neg_of_not v hnonzero hnot
                exact ih (Assignment.contains_sound_add hcontains (-lit)) hcheck (by
                  intro x hx
                  simp [Assignment.add] at hx
                  rcases hx with rfl | hx
                  · simpa [RawLitFalse] using hnegLit
                  · exact has x hx)
            | multiple =>
                have hscan : Assignment.scanClause assignment clause = .multiple := by
                  simpa [Assignment.scanClauseFast_eq_scanClause] using hscanFast
                simp [hscanFast] at hcheck

theorem checkRupFast_sound {f : Sat.Fmla} {lookup : Lookup}
    {litCapacity : Nat} {clause proof : RawClause}
    (hlookup : LookupSound f lookup)
    (hcheck : checkRupFast litCapacity lookup clause proof = true) :
    Sat.Fmla.proof f (rawClauseToSat clause) := by
  have hloop :
      checkRupLoopFast lookup (Assignment.ofList litCapacity clause.toList)
        proof.toList = true := by
    rw [checkRupLoopFast_eq_fold]
    unfold checkRupLoopFastFold
    unfold checkRupFast at hcheck
    rw [← fast_rup_fold_accepts_eq_assignment lookup proof.toList
      (FastAssignment.ofList litCapacity clause.toList)
      (Assignment.ofList litCapacity clause.toList)
      (FastAssignment.ofList_table_eq_assignment litCapacity clause.toList)]
    rw [Array.foldl_toList]
    exact hcheck
  intro v hv
  exact satisfies_of_refute_assignment (v := v) (lits := clause.toList) (by
    intro has
    exact checkRupLoopFast_sound hlookup
      (Assignment.contains_sound_ofList litCapacity clause.toList)
      hloop hv (by
        rw [Assignment.ofList_lits]
        exact has))

private theorem rawClauseToSat_eq_nil_of_isEmpty {clause : RawClause}
    (h : clause.isEmpty = true) : rawClauseToSat clause = [] := by
  rw [Array.isEmpty_iff] at h
  simp [rawClauseToSat, h]

theorem checkSteps_sound {f : Sat.Fmla} {litCapacity : Nat} {db : Db}
    {steps : List LRATStep}
    (hdb : DbSound f db) (hcheck : checkSteps litCapacity db steps = true) :
    Sat.Fmla.proof f Sat.Clause.nil := by
  induction steps generalizing db with
  | nil =>
      simp [checkSteps] at hcheck
  | cons step rest ih =>
      cases step with
      | del ids =>
          exact ih (DbSound.eraseIds hdb ids) hcheck
      | add id clause proof =>
          unfold checkSteps at hcheck
          change
              (if checkRupFast litCapacity (Db.lookup db) clause proof = true then
                if clause.isEmpty = true then
                  true
                else
                  match Db.insert? db id clause with
                  | some db' => checkSteps litCapacity db' rest
                  | none => false
              else
                false) = true at hcheck
          by_cases hrup : checkRupFast litCapacity (Db.lookup db) clause proof
          · rw [if_pos hrup] at hcheck
            have hclause : Sat.Fmla.proof f (rawClauseToSat clause) :=
              checkRupFast_sound hdb hrup
            split at hcheck
            · rename_i hempty
              simpa [rawClauseToSat_eq_nil_of_isEmpty hempty] using hclause
            · rename_i hnotempty
              cases hinsert : Db.insert? db id clause with
              | none =>
                  rw [hinsert] at hcheck
                  cases hcheck
              | some db' =>
                  rw [hinsert] at hcheck
                  exact ih (DbSound.insert?_of_some hinsert hdb hclause) hcheck
          · rw [if_neg hrup] at hcheck
            cases hcheck

theorem checkSteps_ofCnfWithCapacity_sound {capacity : Nat} {cnf : RawCnf}
    {litCapacity : Nat} {db : Db} {steps : Array LRATStep}
    (hdb : Db.ofCnfWithCapacity capacity cnf = some db)
    (hcheck : checkSteps litCapacity db steps.toList = true) :
    Sat.Fmla.proof (rawCnfToSat cnf) Sat.Clause.nil :=
  checkSteps_sound (DbSound.ofCnfWithCapacity hdb) hcheck

theorem checkDimacsLRAT_sound {cnfText lratText : String} {nvars : Nat} {cnf : RawCnf}
    {steps : Array LRATStep} {db : Db}
    (hcnf : parseDimacsFull? cnfText = some (nvars, cnf))
    (hlrat : parseLRAT? lratText = some steps)
    (hdb : Db.ofCnfWithCapacity (dbCapacity cnf steps) cnf = some db)
    (hcheck : checkDimacsLRAT cnfText lratText = true) :
    Sat.Fmla.proof (rawCnfToSat cnf) Sat.Clause.nil := by
  unfold checkDimacsLRAT at hcheck
  rw [hcnf, hlrat] at hcheck
  simp [hdb] at hcheck
  have hsteps : checkSteps (2 * nvars + 2) db steps.toList = true := by
    rw [checkSteps_eq_fold]
    unfold checkStepsFold
    unfold checkStepsArray at hcheck
    rw [Array.foldl_toList]
    exact hcheck
  exact checkSteps_ofCnfWithCapacity_sound hdb hsteps

theorem no_valuation_of_proof_nil {f : Sat.Fmla}
    (hproof : Sat.Fmla.proof f Sat.Clause.nil) :
    ∀ v : Sat.Valuation, Sat.Valuation.satisfies_fmla v f → False := by
  intro v hv
  exact hproof v hv

theorem checkDimacsLRAT_unsat {cnfText lratText : String} {nvars : Nat} {cnf : RawCnf}
    {steps : Array LRATStep} {db : Db}
    (hcnf : parseDimacsFull? cnfText = some (nvars, cnf))
    (hlrat : parseLRAT? lratText = some steps)
    (hdb : Db.ofCnfWithCapacity (dbCapacity cnf steps) cnf = some db)
    (hcheck : checkDimacsLRAT cnfText lratText = true) :
    ∀ v : Sat.Valuation, Sat.Valuation.satisfies_fmla v (rawCnfToSat cnf) → False :=
  no_valuation_of_proof_nil
    (checkDimacsLRAT_sound hcnf hlrat hdb hcheck)

theorem satisfies_fmla_append {v : Sat.Valuation} {f g : Sat.Fmla} :
    Sat.Valuation.satisfies_fmla v (f ++ g) ↔
      Sat.Valuation.satisfies_fmla v f ∧ Sat.Valuation.satisfies_fmla v g := by
  constructor
  · intro h
    constructor
    · exact ⟨fun c hc => h.prop c (List.mem_append.mpr (Or.inl hc))⟩
    · exact ⟨fun c hc => h.prop c (List.mem_append.mpr (Or.inr hc))⟩
  · intro h
    rcases h with ⟨hf, hg⟩
    exact ⟨fun c hc =>
      match List.mem_append.mp hc with
      | Or.inl hcf => hf.prop c hcf
      | Or.inr hcg => hg.prop c hcg⟩

def rawUnitClause (lit : Int) : Sat.Clause :=
  [Sat.Literal.ofInt lit]

def rawCubeToSat (cube : List Int) : Sat.Fmla :=
  cube.map rawUnitClause

def rawCubeClauses (cube : List Int) : List RawClause :=
  cube.map fun lit => #[lit]

def rawCnfAppendCube (cnf : RawCnf) (cube : List Int) : RawCnf :=
  (cnf.toList ++ rawCubeClauses cube).toArray

def checkDimacsLRATWithCube (cnf : String) (cube : List Int) (lrat : String) : Bool :=
  match parseDimacsFull? cnf, parseLRAT? lrat with
  | some (nvars, clauses), some steps =>
      let branch := rawCnfAppendCube clauses cube
      match Db.ofCnfWithCapacity (dbCapacity branch steps) branch with
      | some db => checkStepsArray (2 * nvars + 2) db steps
      | none => false
  | _, _ => false

def checkRawCnfLRATWithCube (nvars : Nat) (cnf : RawCnf) (cube : List Int)
    (lrat : String) : Bool :=
  match parseLRAT? lrat with
  | some steps =>
      let branch := rawCnfAppendCube cnf cube
      match Db.ofCnfWithCapacity (dbCapacity branch steps) branch with
      | some db => checkStepsArray (2 * nvars + 2) db steps
      | none => false
  | none => false

def literalUnitClause (lit : Sat.Literal) : Sat.Clause :=
  [lit]

theorem literal_ofInt_neg_eq_negate_of_ne_zero {lit : Int} (hlit : lit ≠ 0) :
    Sat.Literal.ofInt (-lit) = (Sat.Literal.ofInt lit).negate := by
  unfold Sat.Literal.ofInt
  by_cases hneg : lit < 0
  · have hneg_neg : ¬ -lit < 0 := by omega
    simp [hneg, Sat.Literal.negate]
    omega
  · have hpos : 0 < lit := by omega
    have hneg_neg : -lit < 0 := by omega
    simp [hneg, Sat.Literal.negate]
    omega

theorem satisfies_unit_or_negate_literal (v : Sat.Valuation) (lit : Sat.Literal) :
    Sat.Valuation.satisfies v (literalUnitClause lit) ∨
      Sat.Valuation.satisfies v (literalUnitClause lit.negate) := by
  classical
  cases lit with
  | pos k =>
      by_cases hv : v k
      · left
        intro hneg
        exact hneg hv
      · right
        intro hpos
        exact hv hpos
  | neg k =>
      by_cases hv : v k
      · right
        intro hneg
        exact hneg hv
      · left
        intro hpos
        exact hv hpos

def prefixDeviationRawCubes : List Int → List (List Int)
  | [] => [[]]
  | lit :: rest => [-lit] :: (prefixDeviationRawCubes rest).map (fun cube => lit :: cube)

theorem rawCubeToSat_nil :
    Sat.Valuation.satisfies_fmla v (rawCubeToSat []) := by
  exact ⟨fun c hc => by cases hc⟩

theorem rawCubeToSat_cons {v : Sat.Valuation} {lit : Int} {cube : List Int}
    (hlit : Sat.Valuation.satisfies v (rawUnitClause lit))
    (hcube : Sat.Valuation.satisfies_fmla v (rawCubeToSat cube)) :
    Sat.Valuation.satisfies_fmla v (rawCubeToSat (lit :: cube)) := by
  refine ⟨fun c hc => ?_⟩
  simp [rawCubeToSat, rawUnitClause] at hc
  rcases hc with hc | hc
  · simpa [hc, rawUnitClause] using hlit
  · exact hcube.prop c (by simpa [rawCubeToSat] using hc)

theorem rawCubeToSat_append {v : Sat.Valuation} {a b : List Int} :
    Sat.Valuation.satisfies_fmla v (rawCubeToSat (a ++ b)) ↔
      Sat.Valuation.satisfies_fmla v (rawCubeToSat a) ∧
        Sat.Valuation.satisfies_fmla v (rawCubeToSat b) := by
  simpa [rawCubeToSat, List.map_append] using
    (satisfies_fmla_append (v := v) (f := rawCubeToSat a) (g := rawCubeToSat b))

theorem rawCnfToSat_rawCnfAppendCube (cnf : RawCnf) (cube : List Int) :
    rawCnfToSat (rawCnfAppendCube cnf cube) =
      rawCnfToSat cnf ++ rawCubeToSat cube := by
  simp [rawCnfAppendCube, rawCubeClauses, rawCnfToSat, rawCubeToSat,
    rawUnitClause, rawClauseToSat]

private theorem proof_mono_append_left {f g : Sat.Fmla} {clause : Sat.Clause}
    (h : Sat.Fmla.proof f clause) :
    Sat.Fmla.proof (f ++ g) clause := by
  intro v hv
  exact h v (satisfies_fmla_append.mp hv).1

private theorem proof_mono_append_right {f g : Sat.Fmla} {clause : Sat.Clause}
    (h : Sat.Fmla.proof g clause) :
    Sat.Fmla.proof (f ++ g) clause := by
  intro v hv
  exact h v (satisfies_fmla_append.mp hv).2

private theorem proof_of_rawCubeClause_mem {cnf : RawCnf} {cube : List Int}
    {clause : RawClause} (hmem : clause ∈ rawCubeClauses cube) :
    Sat.Fmla.proof (rawCnfToSat cnf ++ rawCubeToSat cube) (rawClauseToSat clause) := by
  rcases List.mem_map.mp hmem with ⟨lit, hlit, rfl⟩
  apply proof_mono_append_right (f := rawCnfToSat cnf)
  apply Sat.Fmla.proof_of_subsumes
  constructor
  intro c hc
  simp [Sat.Fmla.one] at hc
  subst c
  exact List.mem_map.mpr ⟨lit, hlit, by simp [rawUnitClause, rawClauseToSat]⟩

private theorem DbSound.ofCnfWithCapacity_append_cube {capacity : Nat}
    {cnf : RawCnf} {cube : List Int} {db : Db}
    (hdb : Db.ofCnfWithCapacity capacity cnf = some db) :
    DbSound (rawCnfToSat cnf ++ rawCubeToSat cube) db := by
  have hcore : DbSound (rawCnfToSat cnf) db :=
    DbSound.ofCnfWithCapacity hdb
  intro id clause hlookup
  exact proof_mono_append_left (g := rawCubeToSat cube) (hcore id clause hlookup)

theorem checkDimacsLRATWithCube_unsat {cnfText lratText : String} {cube : List Int}
    {nvars : Nat} {cnf : RawCnf} {steps : Array LRATStep} {db : Db}
    (hcnf : parseDimacsFull? cnfText = some (nvars, cnf))
    (hlrat : parseLRAT? lratText = some steps)
    (hdb : Db.ofCnfWithCapacity
        (dbCapacity (rawCnfAppendCube cnf cube) steps)
        (rawCnfAppendCube cnf cube) = some db)
    (hcheck : checkDimacsLRATWithCube cnfText cube lratText = true) :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (rawCnfToSat cnf ++ rawCubeToSat cube) → False := by
  have hproof : Sat.Fmla.proof
      (rawCnfToSat (rawCnfAppendCube cnf cube)) Sat.Clause.nil := by
    unfold checkDimacsLRATWithCube at hcheck
    rw [hcnf, hlrat] at hcheck
    simp [hdb] at hcheck
    have hsteps :
        checkSteps (2 * nvars + 2) db steps.toList = true := by
      rw [checkSteps_eq_fold]
      unfold checkStepsFold
      unfold checkStepsArray at hcheck
      rw [Array.foldl_toList]
      exact hcheck
    exact checkSteps_ofCnfWithCapacity_sound hdb hsteps
  intro v hv
  exact hproof v (by
    simpa [rawCnfToSat_rawCnfAppendCube cnf cube] using hv)

theorem checkDimacsLRATWithCube_unsat_of_check {cnfText lratText : String}
    {cube : List Int} {nvars : Nat} {cnf : RawCnf}
    (hcnf : parseDimacsFull? cnfText = some (nvars, cnf))
    (hcheck : checkDimacsLRATWithCube cnfText cube lratText = true) :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (rawCnfToSat cnf ++ rawCubeToSat cube) → False := by
  unfold checkDimacsLRATWithCube at hcheck
  rw [hcnf] at hcheck
  cases hlrat : parseLRAT? lratText with
  | none =>
      simp [hlrat] at hcheck
  | some steps =>
      let branch := rawCnfAppendCube cnf cube
      cases hdb : Db.ofCnfWithCapacity (dbCapacity branch steps) branch with
      | none =>
          simp [hlrat, branch, hdb] at hcheck
      | some db =>
          simp [hlrat, branch, hdb] at hcheck
          have hproof : Sat.Fmla.proof (rawCnfToSat branch) Sat.Clause.nil := by
            have hsteps : checkSteps (2 * nvars + 2) db steps.toList = true := by
              rw [checkSteps_eq_fold]
              unfold checkStepsFold
              unfold checkStepsArray at hcheck
              rw [Array.foldl_toList]
              exact hcheck
            exact checkSteps_ofCnfWithCapacity_sound hdb hsteps
          intro v hv
          exact hproof v (by
            simpa [branch, rawCnfToSat_rawCnfAppendCube cnf cube] using hv)

theorem checkRawCnfLRATWithCube_unsat_of_check {lratText : String}
    {cube : List Int} {nvars : Nat} {cnf : RawCnf}
    (hcheck : checkRawCnfLRATWithCube nvars cnf cube lratText = true) :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (rawCnfToSat cnf ++ rawCubeToSat cube) → False := by
  unfold checkRawCnfLRATWithCube at hcheck
  cases hlrat : parseLRAT? lratText with
  | none =>
      simp [hlrat] at hcheck
  | some steps =>
      let branch := rawCnfAppendCube cnf cube
      cases hdb : Db.ofCnfWithCapacity (dbCapacity branch steps) branch with
      | none =>
          simp [hlrat, branch, hdb] at hcheck
      | some db =>
          simp [hlrat, branch, hdb] at hcheck
          have hproof : Sat.Fmla.proof (rawCnfToSat branch) Sat.Clause.nil := by
            have hsteps : checkSteps (2 * nvars + 2) db steps.toList = true := by
              rw [checkSteps_eq_fold]
              unfold checkStepsFold
              unfold checkStepsArray at hcheck
              rw [Array.foldl_toList]
              exact hcheck
            exact checkSteps_ofCnfWithCapacity_sound hdb hsteps
          intro v hv
          exact hproof v (by
            simpa [branch, rawCnfToSat_rawCnfAppendCube cnf cube] using hv)

theorem checkRawCnfLRATWithCube_branch_unsat_of_check {lratText : String}
    {cube : List Int} {nvars : Nat} {cnf : RawCnf}
    (hcheck : checkRawCnfLRATWithCube nvars cnf cube lratText = true) :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (rawCnfToSat (rawCnfAppendCube cnf cube)) →
        False := by
  unfold checkRawCnfLRATWithCube at hcheck
  cases hlrat : parseLRAT? lratText with
  | none =>
      simp [hlrat] at hcheck
  | some steps =>
      let branch := rawCnfAppendCube cnf cube
      cases hdb : Db.ofCnfWithCapacity (dbCapacity branch steps) branch with
      | none =>
          simp [hlrat, branch, hdb] at hcheck
      | some db =>
          simp [hlrat, branch, hdb] at hcheck
          have hproof : Sat.Fmla.proof (rawCnfToSat branch) Sat.Clause.nil := by
            have hsteps : checkSteps (2 * nvars + 2) db steps.toList = true := by
              rw [checkSteps_eq_fold]
              unfold checkStepsFold
              unfold checkStepsArray at hcheck
              rw [Array.foldl_toList]
              exact hcheck
            exact checkSteps_ofCnfWithCapacity_sound hdb hsteps
          intro v hv
          exact hproof v (by simpa [branch] using hv)

structure CubeLRAT where
  cube : List Int
  lrat : String

def checkCubeLRAT (nvars : Nat) (cnf : RawCnf) (leaf : CubeLRAT) : Bool :=
  checkRawCnfLRATWithCube nvars cnf leaf.cube leaf.lrat

def checkCubeLRATs (nvars : Nat) (cnf : RawCnf) : List CubeLRAT → Bool
  | [] => true
  | leaf :: rest => checkCubeLRAT nvars cnf leaf && checkCubeLRATs nvars cnf rest

theorem checkCubeLRAT_of_mem {nvars : Nat} {cnf : RawCnf}
    {leaf : CubeLRAT} :
    ∀ {leaves : List CubeLRAT},
      checkCubeLRATs nvars cnf leaves = true →
      leaf ∈ leaves →
      checkCubeLRAT nvars cnf leaf = true
  | [], _hcheck, hmem => by cases hmem
  | head :: rest, hcheck, hmem => by
      simp [checkCubeLRATs] at hcheck
      rcases hcheck with ⟨hhead, hrest⟩
      cases hmem with
      | head =>
          simpa using hhead
      | tail _ htail =>
          exact checkCubeLRAT_of_mem hrest htail

theorem checkCubeLRATs_branch_unsat_of_mem {nvars : Nat} {cnf : RawCnf}
    {leaf : CubeLRAT} {leaves : List CubeLRAT}
    (hcheck : checkCubeLRATs nvars cnf leaves = true)
    (hmem : leaf ∈ leaves) :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v
        (rawCnfToSat (rawCnfAppendCube cnf leaf.cube)) →
        False :=
  checkRawCnfLRATWithCube_branch_unsat_of_check
    (lratText := leaf.lrat) (cube := leaf.cube) (nvars := nvars) (cnf := cnf)
    (checkCubeLRAT_of_mem hcheck hmem)

structure ParsedCubeLRAT where
  cube : List Int
  steps : Array LRATStep

def cubeDbCapacity (cnfSize : Nat) (leaf : ParsedCubeLRAT) : Nat :=
  max (cnfSize + leaf.cube.length + 1) (maxStepId leaf.steps + 1)

def cubeLRATsCapacity (cnf : RawCnf) : List ParsedCubeLRAT → Nat
  | [] => cnf.size + 1
  | leaf :: rest => max (cubeDbCapacity cnf.size leaf) (cubeLRATsCapacity cnf rest)

def checkParsedCubeLRATWithBase (nvars cnfSize : Nat) (baseDb : Db)
    (leaf : ParsedCubeLRAT) : Bool :=
  match Db.insertClauses? baseDb (cnfSize + 1) (rawCubeClauses leaf.cube) with
  | some db => checkStepsArray (2 * nvars + 2) db leaf.steps
  | none => false

def checkParsedCubeLRATsWithBase (nvars cnfSize : Nat) (baseDb : Db) :
    List ParsedCubeLRAT → Bool
  | [] => true
  | leaf :: rest =>
      checkParsedCubeLRATWithBase nvars cnfSize baseDb leaf &&
        checkParsedCubeLRATsWithBase nvars cnfSize baseDb rest

def checkParsedCubeLRATs (nvars : Nat) (cnf : RawCnf)
    (leaves : List ParsedCubeLRAT) : Bool :=
  match Db.ofCnfWithCapacity (cubeLRATsCapacity cnf leaves) cnf with
  | some baseDb => checkParsedCubeLRATsWithBase nvars cnf.size baseDb leaves
  | none => false

theorem checkParsedCubeLRATWithBase_of_mem {nvars cnfSize : Nat} {baseDb : Db}
    {leaf : ParsedCubeLRAT} :
    ∀ {leaves : List ParsedCubeLRAT},
      checkParsedCubeLRATsWithBase nvars cnfSize baseDb leaves = true →
      leaf ∈ leaves →
      checkParsedCubeLRATWithBase nvars cnfSize baseDb leaf = true
  | [], _hcheck, hmem => by cases hmem
  | head :: rest, hcheck, hmem => by
      simp [checkParsedCubeLRATsWithBase] at hcheck
      rcases hcheck with ⟨hhead, hrest⟩
      cases hmem with
      | head =>
          simpa using hhead
      | tail _ htail =>
          exact checkParsedCubeLRATWithBase_of_mem hrest htail

theorem checkParsedCubeLRATWithBase_branch_unsat_of_check {nvars capacity : Nat}
    {cnf : RawCnf} {baseDb : Db} {leaf : ParsedCubeLRAT}
    (hbase : Db.ofCnfWithCapacity capacity cnf = some baseDb)
    (hcheck : checkParsedCubeLRATWithBase nvars cnf.size baseDb leaf = true) :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v
        (rawCnfToSat (rawCnfAppendCube cnf leaf.cube)) →
        False := by
  unfold checkParsedCubeLRATWithBase at hcheck
  cases hbranch :
      Db.insertClauses? baseDb (cnf.size + 1) (rawCubeClauses leaf.cube) with
  | none =>
      simp [hbranch] at hcheck
  | some db =>
      simp [hbranch] at hcheck
      have hdbsound :
          DbSound (rawCnfToSat cnf ++ rawCubeToSat leaf.cube) db := by
        exact DbSound.insertClauses?_of_forall hbranch
          (DbSound.ofCnfWithCapacity_append_cube (cube := leaf.cube) hbase)
          (by
            intro clause hmem
            exact proof_of_rawCubeClause_mem (cnf := cnf) hmem)
      have hproof :
          Sat.Fmla.proof (rawCnfToSat cnf ++ rawCubeToSat leaf.cube)
            Sat.Clause.nil := by
        have hsteps : checkSteps (2 * nvars + 2) db leaf.steps.toList = true := by
          rw [checkSteps_eq_fold]
          unfold checkStepsFold
          unfold checkStepsArray at hcheck
          rw [Array.foldl_toList]
          exact hcheck
        exact checkSteps_sound hdbsound hsteps
      intro v hv
      exact hproof v (by
        simpa [rawCnfToSat_rawCnfAppendCube cnf leaf.cube] using hv)

theorem checkParsedCubeLRATs_branch_unsat_of_mem {nvars : Nat} {cnf : RawCnf}
    {leaf : ParsedCubeLRAT} {leaves : List ParsedCubeLRAT}
    (hcheck : checkParsedCubeLRATs nvars cnf leaves = true)
    (hmem : leaf ∈ leaves) :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v
        (rawCnfToSat (rawCnfAppendCube cnf leaf.cube)) →
        False := by
  unfold checkParsedCubeLRATs at hcheck
  cases hbase : Db.ofCnfWithCapacity (cubeLRATsCapacity cnf leaves) cnf with
  | none =>
      simp [hbase] at hcheck
  | some baseDb =>
      simp [hbase] at hcheck
      exact checkParsedCubeLRATWithBase_branch_unsat_of_check
        (nvars := nvars) (capacity := cubeLRATsCapacity cnf leaves)
        (cnf := cnf) (baseDb := baseDb) (leaf := leaf) hbase
        (checkParsedCubeLRATWithBase_of_mem hcheck hmem)

def rawClauseImplies (original core : RawClause) : Bool :=
  original.toList.all fun lit => decide (lit ∈ core.toList)

private theorem mem_core_of_rawClauseImplies {original core : RawClause} {lit : Int}
    (h : rawClauseImplies original core = true)
    (hlit : lit ∈ original.toList) :
    lit ∈ core.toList := by
  have hdec : decide (lit ∈ core.toList) = true := by
    simpa [rawClauseImplies] using (List.all_eq_true.mp h lit hlit)
  exact of_decide_eq_true hdec

private theorem rawClauseImplies_satisfies {original core : RawClause}
    (h : rawClauseImplies original core = true)
    {v : Sat.Valuation}
    (horiginal : Sat.Valuation.satisfies v (rawClauseToSat original)) :
    Sat.Valuation.satisfies v (rawClauseToSat core) := by
  apply satisfies_of_refute_assignment (v := v) (lits := core.toList)
  intro hcoreFalse
  exact false_of_satisfies_of_all_mem_assignment horiginal hcoreFalse (by
    intro lit hlit
    exact mem_core_of_rawClauseImplies h hlit)

def rawCnfMappedByList (original : List RawClause) :
    List RawClause → List Nat → Bool
  | [], [] => true
  | coreClause :: coreRest, index :: indexRest =>
      match original[index - 1]? with
      | some originalClause =>
          if rawClauseImplies originalClause coreClause then
            rawCnfMappedByList original coreRest indexRest
          else
            false
      | none => false
  | _, _ => false

def rawCnfMappedBy (original core : RawCnf) (indices : List Nat) : Bool :=
  rawCnfMappedByList original.toList core.toList indices

private theorem rawCnfMappedByList_clause_satisfies {original core : List RawClause}
    {indices : List Nat}
    (hmap : rawCnfMappedByList original core indices = true)
    {v : Sat.Valuation}
    (horiginal : Sat.Valuation.satisfies_fmla v (original.map rawClauseToSat)) :
    ∀ rawCoreClause, rawCoreClause ∈ core →
      Sat.Valuation.satisfies v (rawClauseToSat rawCoreClause) := by
  induction core generalizing indices with
  | nil =>
      intro rawCoreClause hrawCore
      cases hrawCore
  | cons coreClause coreRest ih =>
      cases indices with
      | nil =>
          simp [rawCnfMappedByList] at hmap
      | cons index indexRest =>
          unfold rawCnfMappedByList at hmap
          cases hget : original[index - 1]? with
          | none =>
              simp [hget] at hmap
          | some originalClause =>
              cases himp : rawClauseImplies originalClause coreClause with
              | false =>
                  simp [hget, himp] at hmap
              | true =>
                simp [hget, himp] at hmap
                intro rawCoreClause hrawCore
                cases hrawCore with
                | head =>
                    have horiginalClause :
                        Sat.Valuation.satisfies v (rawClauseToSat originalClause) :=
                      horiginal.prop (rawClauseToSat originalClause)
                        (List.mem_map.mpr
                          ⟨originalClause, List.mem_of_getElem? hget, rfl⟩)
                    exact rawClauseImplies_satisfies himp horiginalClause
                | tail _ htail =>
                    exact ih hmap rawCoreClause htail

theorem rawCnfMappedByList_satisfies {original core : List RawClause}
    {indices : List Nat}
    (hmap : rawCnfMappedByList original core indices = true)
    {v : Sat.Valuation}
    (horiginal : Sat.Valuation.satisfies_fmla v (original.map rawClauseToSat)) :
    Sat.Valuation.satisfies_fmla v (core.map rawClauseToSat) := by
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨rawCoreClause, hrawCore, rfl⟩
  exact rawCnfMappedByList_clause_satisfies hmap horiginal rawCoreClause hrawCore

theorem rawCnfMappedBy_satisfies {original core : RawCnf} {indices : List Nat}
    (hmap : rawCnfMappedBy original core indices = true)
    {v : Sat.Valuation}
    (horiginal : Sat.Valuation.satisfies_fmla v (rawCnfToSat original)) :
    Sat.Valuation.satisfies_fmla v (rawCnfToSat core) := by
  exact rawCnfMappedByList_satisfies hmap horiginal

theorem exists_satisfies_prefixDeviationRawCubes
    (v : Sat.Valuation) :
    ∀ lits : List Int,
      (∀ lit, lit ∈ lits → lit ≠ 0) →
      ∃ cube, cube ∈ prefixDeviationRawCubes lits ∧
        Sat.Valuation.satisfies_fmla v (rawCubeToSat cube)
  | [], _ => ⟨[], by simp [prefixDeviationRawCubes], rawCubeToSat_nil⟩
  | lit :: rest, hnonzero => by
      have hlit_ne : lit ≠ 0 := hnonzero lit (by simp)
      have hrest_nonzero : ∀ x, x ∈ rest → x ≠ 0 := by
        intro x hx
        exact hnonzero x (by simp [hx])
      have hcases := satisfies_unit_or_negate_literal v (Sat.Literal.ofInt lit)
      rcases hcases with hlit_sat | hneg_sat
      · obtain ⟨cube, hcube_mem, hcube_sat⟩ :=
          exists_satisfies_prefixDeviationRawCubes v rest hrest_nonzero
        refine ⟨lit :: cube, ?_, rawCubeToSat_cons hlit_sat hcube_sat⟩
        simp [prefixDeviationRawCubes, hcube_mem]
      · refine ⟨[-lit], ?_, ?_⟩
        · simp [prefixDeviationRawCubes]
        · have hunit :
              Sat.Valuation.satisfies v (rawUnitClause (-lit)) := by
            simpa [rawUnitClause, literalUnitClause,
              literal_ofInt_neg_eq_negate_of_ne_zero hlit_ne] using hneg_sat
          exact rawCubeToSat_cons hunit rawCubeToSat_nil

theorem exists_satisfies_prefixedPrefixDeviationRawCubes
    (v : Sat.Valuation) (pref suffix : List Int)
    (hprefix : Sat.Valuation.satisfies_fmla v (rawCubeToSat pref))
    (hsuffix : ∀ lit, lit ∈ suffix → lit ≠ 0) :
    ∃ cube, cube ∈ (prefixDeviationRawCubes suffix).map (fun cube => pref ++ cube) ∧
      Sat.Valuation.satisfies_fmla v (rawCubeToSat cube) := by
  obtain ⟨cube, hcube_mem, hcube_sat⟩ :=
    exists_satisfies_prefixDeviationRawCubes v suffix hsuffix
  refine ⟨pref ++ cube, ?_, ?_⟩
  · exact List.mem_map.mpr ⟨cube, hcube_mem, rfl⟩
  · exact rawCubeToSat_append.mpr ⟨hprefix, hcube_sat⟩

example :
    checkDimacsLRAT
      "p cnf 2 4  1 2 0  -1 2 0  1 -2 0  -1 -2 0"
      "5 -2 0 4 3 0  5 d 3 4 0  6 1 0 5 1 0  6 d 1 0  7 0 5 2 6 0" = true := by
  native_decide

end LRATNative
end Database
end CoveringCodes
