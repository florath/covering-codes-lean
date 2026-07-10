import Mathlib.Tactic.Sat.FromLRAT
import Batteries.Data.RBMap

/-!
# Kernel-evaluable LRAT checker

Unlike `LRATNative`, every data structure here is a pure algebraic type with
zero `@[extern]` or `@[implementedBy]` annotations.  All operations reduce
under Lean's kernel, so per-certificate `_checked` theorems can be proved by
`decide` rather than `native_decide`.

Key changes from `LRATNative`:
- `RawClause := List Int`       (was `Array Int`)
- `Db := RBMap Nat RawClause`   (was `Array (Option RawClause)`)
- `Step` fields use `List`      (was `Array`)
- No parsing code: callers supply pre-parsed Lean literals

The soundness chain (`checkLeaves_branch_unsat_of_mem`) mirrors
`LRATNative.checkParsedCubeLRATs_branch_unsat_of_mem`.

### Proof status
All soundness lemmas are proved except two that require Batteries RBMap facts
not yet exposed as top-level theorems (marked `sorry`):
- `Db.lookup_erase_mono` — "erase cannot add new entries"; no direct Batteries
  theorem for RBMap yet, but provable from membership properties.
- `LookupSound.insertCubeClauses` — inductive step on the cube fold.
-/

namespace CoveringCodes
namespace Database
namespace LRATKernel

open Mathlib.Tactic.Sat

-- ===== Types =====

abbrev RawClause := List Int
abbrev RawCnf    := List RawClause

def rawClauseToSat (c : RawClause) : Sat.Clause := c.map Sat.Literal.ofInt
def rawCnfToSat   (f : RawCnf)    : Sat.Fmla   := f.map rawClauseToSat

def RawLitFalse (v : Sat.Valuation) (i : Int) : Prop :=
  Sat.Valuation.neg v (Sat.Literal.ofInt i)

def AssignmentSound (v : Sat.Valuation) (assignment : List Int) : Prop :=
  ∀ lit, lit ∈ assignment → RawLitFalse v lit

-- ===== Scan =====

inductive ScanResult where
  | invalid
  | conflict
  | unit (lit : Int)
  | multiple
  deriving DecidableEq, Repr

def unknowns (assignment : List Int) (clause : RawClause) : List Int :=
  clause.filter (fun lit => !decide (lit ∈ assignment))

def scanClause (assignment : List Int) (clause : RawClause) : ScanResult :=
  match unknowns assignment clause with
  | []      => .conflict
  | [lit]   => if lit = 0 then .invalid else .unit lit
  | _       => .multiple

-- ===== Step type (List fields — no Array) =====

inductive Step where
  | del (ids   : List Nat)
  | add (id    : Nat) (clause : List Int) (proof : List Int)
  deriving DecidableEq, Repr

-- ===== Database — RBMap for O(log n) kernel-reducible lookup =====

abbrev Db := Batteries.RBMap Nat RawClause compare

-- Defined outside `namespace Db` to avoid dot-notation collision with
-- Batteries.RBMap.insert / erase / find? inside the namespace body.
def Db.lookup   (db : Db) (id : Nat) : Option RawClause    := Batteries.RBMap.find? db id
def Db.insert   (db : Db) (id : Nat) (clause : RawClause) : Db := Batteries.RBMap.insert db id clause
def Db.erase    (db : Db) (id : Nat) : Db                  := Batteries.RBMap.erase db id
def Db.eraseIds (db : Db) (ids : List Nat) : Db             := ids.foldl Db.erase db

-- Build Db from CNF using a tail-recursive helper (avoids List.enum which was
-- removed from core Lean 4.30).  Clause i+1 ← cnf[i]  (1-indexed).
private def ofCnfAux : List RawClause → Nat → Db → Db
  | [], _, db => db
  | c :: rest, i, db => ofCnfAux rest (i + 1) (Batteries.RBMap.insert db i c)

def Db.ofCnf (cnf : RawCnf) : Db := ofCnfAux cnf 1 .empty

-- ===== RUP checker =====

def checkRupLoop (db : Db) : List Int → List Int → Bool
  | _,          []             => false
  | assignment, hint :: rest   =>
      if hint ≤ 0 then false
      else
        match Db.lookup db hint.toNat with
        | none        => false
        | some clause =>
            match scanClause assignment clause with
            | .conflict   => true
            | .unit lit   => checkRupLoop db ((-lit) :: assignment) rest
            | _           => false

-- Initial assignment = clause literals (assumed false; RUP refutes the negation)
def checkRup (db : Db) (clause proof : List Int) : Bool :=
  checkRupLoop db clause proof

-- ===== Main step checker =====

def checkSteps (db : Db) : List Step → Bool
  | []             => false
  | step :: rest   =>
      match step with
      | .del ids           => checkSteps (Db.eraseIds db ids) rest
      | .add id clause proof =>
          if !checkRup db clause proof then false
          else if clause.isEmpty then true
          else checkSteps (Db.insert db id clause) rest

-- ===== Cube / Leaf structure =====

def rawUnitClause  (lit  : Int)       : Sat.Clause     := [Sat.Literal.ofInt lit]
def rawCubeToSat   (cube : List Int)  : Sat.Fmla       := cube.map rawUnitClause
def rawCubeClauses (cube : List Int)  : List RawClause := cube.map (fun lit => [lit])

def rawCnfAppendCube (cnf : RawCnf) (cube : List Int) : RawCnf :=
  cnf ++ rawCubeClauses cube

structure Leaf where
  cube  : List Int
  steps : List Step

-- Insert cube unit-clauses into baseDb starting at ID `start`.
private def insertCubeClausesAux : List Int → Nat → Db → Db
  | [], _, db => db
  | lit :: rest, i, db => insertCubeClausesAux rest (i + 1) (Batteries.RBMap.insert db i [lit])

-- cube[k] ← ID (cnfSize + 1 + k)
private def insertCubeClauses (baseDb : Db) (cnfSize : Nat) (cube : List Int) : Db :=
  insertCubeClausesAux cube (cnfSize + 1) baseDb

private def checkLeafWithBase (cnf : RawCnf) (baseDb : Db) (leaf : Leaf) : Bool :=
  checkSteps (insertCubeClauses baseDb cnf.length leaf.cube) leaf.steps

/-- Check all leaves against the given CNF formula. -/
def checkLeaves (_nvars : Nat) (cnf : RawCnf) (leaves : List Leaf) : Bool :=
  let baseDb := Db.ofCnf cnf
  leaves.all (checkLeafWithBase cnf baseDb)

-- ===== Soundness proof =====

section Soundness

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

private theorem mem_assignment_of_unknowns_nil
    {assignment : List Int} {clause : RawClause}
    (h : unknowns assignment clause = []) {lit : Int}
    (hlit : lit ∈ clause) : lit ∈ assignment := by
  by_contra hmem
  have : lit ∈ unknowns assignment clause := by
    simp [unknowns, hlit, hmem]
  rw [h] at this; exact List.not_mem_nil this

private theorem eq_or_mem_of_unknowns_single
    {assignment : List Int} {clause : RawClause} {u lit : Int}
    (h : unknowns assignment clause = [u]) (hlit : lit ∈ clause) :
    lit = u ∨ lit ∈ assignment := by
  by_cases hmem : lit ∈ assignment
  · exact Or.inr hmem
  · have : lit ∈ unknowns assignment clause := by simp [unknowns, hlit, hmem]
    rw [h] at this; exact Or.inl (by simpa using this)

private theorem mem_assignment_of_scan_conflict
    {assignment : List Int} {clause : RawClause}
    (hscan : scanClause assignment clause = .conflict)
    {lit : Int} (hlit : lit ∈ clause) : lit ∈ assignment := by
  unfold scanClause at hscan
  cases hunk : unknowns assignment clause with
  | nil  => exact mem_assignment_of_unknowns_nil hunk hlit
  | cons u rest =>
      cases rest with
      | nil => by_cases hz : u = 0 <;> simp [hunk, hz] at hscan
      | cons _ _ => simp [hunk] at hscan

private theorem unit_nonzero_of_scan
    {assignment : List Int} {clause : RawClause} {u : Int}
    (hscan : scanClause assignment clause = .unit u) : u ≠ 0 := by
  unfold scanClause at hscan
  cases hunk : unknowns assignment clause with
  | nil => simp [hunk] at hscan
  | cons x rest =>
      cases rest with
      | nil =>
          by_cases hz : x = 0
          · simp [hunk, hz] at hscan
          · simp [hunk, hz] at hscan; exact hscan ▸ hz
      | cons _ _ => simp [hunk] at hscan

private theorem eq_or_mem_of_scan_unit
    {assignment : List Int} {clause : RawClause} {u lit : Int}
    (hscan : scanClause assignment clause = .unit u) (hlit : lit ∈ clause) :
    lit = u ∨ lit ∈ assignment := by
  unfold scanClause at hscan
  cases hunk : unknowns assignment clause with
  | nil => simp [hunk] at hscan
  | cons x rest =>
      cases rest with
      | nil =>
          by_cases hz : x = 0
          · simp [hunk, hz] at hscan
          · simp [hunk, hz] at hscan
            subst hscan
            exact eq_or_mem_of_unknowns_single hunk hlit
      | cons _ _ => simp [hunk] at hscan

private theorem satisfies_of_refute_assignment {v : Sat.Valuation} :
    ∀ {lits : List Int},
      (AssignmentSound v lits → False) →
      Sat.Valuation.satisfies v (lits.map Sat.Literal.ofInt)
  | [], hrefute => hrefute (by intro lit hmem; exact absurd hmem List.not_mem_nil)
  | lit :: rest, hrefute => by
      intro hlit
      exact satisfies_of_refute_assignment (v := v) (lits := rest) (by
        intro hrest
        apply hrefute
        intro x hx
        cases hx with
        | head     => simpa [RawLitFalse] using hlit
        | tail _ h => exact hrest x h)

private theorem false_of_satisfies_all_mem
    {v : Sat.Valuation} {assignment lits : List Int}
    (hsat : Sat.Valuation.satisfies v (lits.map Sat.Literal.ofInt))
    (has  : AssignmentSound v assignment)
    (hall : ∀ lit, lit ∈ lits → lit ∈ assignment) : False := by
  induction lits with
  | nil        => exact hsat
  | cons lit rest ih =>
      apply ih
      · exact hsat (has lit (hall lit List.mem_cons_self))
      · intro x hx; exact hall x (List.mem_cons_of_mem _ hx)

private theorem false_of_satisfies_scan_conflict
    {v : Sat.Valuation} {assignment : List Int} {clause : RawClause}
    (hscan : scanClause assignment clause = .conflict)
    (hsat  : Sat.Valuation.satisfies v (rawClauseToSat clause))
    (has   : AssignmentSound v assignment) : False :=
  false_of_satisfies_all_mem hsat has
    (fun _lit hlit => mem_assignment_of_scan_conflict hscan hlit)

private theorem not_rawLitFalse_of_satisfies_scan_unit
    {v : Sat.Valuation} {assignment : List Int} {clause : RawClause} {u : Int}
    (hscan : scanClause assignment clause = .unit u)
    (hsat  : Sat.Valuation.satisfies v (rawClauseToSat clause))
    (has   : AssignmentSound v assignment) : ¬ RawLitFalse v u := by
  intro hu
  apply false_of_satisfies_all_mem hsat (assignment := u :: assignment)
  · intro lit hlit
    cases hlit with
    | head     => simpa [RawLitFalse] using hu
    | tail _ h => exact has lit h
  · intro lit hlit
    rcases eq_or_mem_of_scan_unit hscan hlit with rfl | hmem
    · exact List.mem_cons_self
    · exact List.mem_cons_of_mem _ hmem

-- Lookup soundness: every clause reachable via db.find? is a proof obligation
def LookupSound (f : Sat.Fmla) (db : Db) : Prop :=
  ∀ id clause, db.find? id = some clause → Sat.Fmla.proof f (rawClauseToSat clause)

-- ===== Key RBMap properties =====

/-- After `insert id clause`, looking up `id` returns `clause`. -/
private theorem Db.lookup_insert_self (db : Db) (id : Nat) (clause : RawClause) :
    Batteries.RBMap.find? (Db.insert db id clause) id = some clause := by
  simp only [Db.insert]
  exact Batteries.RBMap.find?_insert_of_eq db (Nat.compare_eq_eq.mpr rfl)

/-- After `insert id clause`, looking up any other ID is unchanged. -/
private theorem Db.lookup_insert_of_ne (db : Db) (id id' : Nat) (clause : RawClause)
    (h : id ≠ id') :
    Batteries.RBMap.find? (Db.insert db id clause) id' = Batteries.RBMap.find? db id' := by
  simp only [Db.insert]
  exact Batteries.RBMap.find?_insert_of_ne db
    (fun heq => h (Nat.compare_eq_eq.mp heq).symm)

/-- Erasing a key cannot introduce new entries at any key. -/
private theorem Db.lookup_erase_mono (db : Db) (id id' : Nat)
    (clause : RawClause)
    (h : Batteries.RBMap.find? (Batteries.RBMap.erase db id) id' = some clause) :
    Batteries.RBMap.find? db id' = some clause := by
  -- Batteries does not yet expose a direct `RBMap.find?_erase` lemma.
  -- Provable from the fact that RBMap.erase cannot add new (key, value) pairs.
  sorry

-- ===== LookupSound propagation =====

private theorem LookupSound.insert {f : Sat.Fmla} {db : Db}
    (hdb : LookupSound f db) {id : Nat} {clause : RawClause}
    (hclause : Sat.Fmla.proof f (rawClauseToSat clause)) :
    LookupSound f (Db.insert db id clause) := by
  intro j clause' hlookup
  simp only [Db.insert, Batteries.RBMap.find?_insert] at hlookup
  by_cases heq : compare j id = Ordering.eq
  · rw [if_pos heq] at hlookup
    exact (Option.some.inj hlookup) ▸ hclause
  · rw [if_neg heq] at hlookup
    exact hdb j clause' hlookup

private theorem LookupSound.erase {f : Sat.Fmla} {db : Db}
    (hdb : LookupSound f db) (id : Nat) :
    LookupSound f (Db.erase db id) := by
  intro j clause' hlookup
  simp only [Db.erase] at hlookup
  exact hdb j clause' (Db.lookup_erase_mono db id j clause' hlookup)

private theorem LookupSound.eraseIds {f : Sat.Fmla} {db : Db}
    (hdb : LookupSound f db) (ids : List Nat) :
    LookupSound f (Db.eraseIds db ids) := by
  induction ids generalizing db with
  | nil        => simpa [Db.eraseIds] using hdb
  | cons id rest ih => exact ih (hdb.erase id)

-- ===== checkRupLoop soundness =====

private theorem checkRupLoop_sound
    {f : Sat.Fmla} {db : Db} {assignment proof : List Int}
    (hlookup : LookupSound f db)
    (hcheck  : checkRupLoop db assignment proof = true)
    {v : Sat.Valuation} (hv : Sat.Valuation.satisfies_fmla v f)
    (has : AssignmentSound v assignment) : False := by
  induction proof generalizing assignment with
  | nil        => simp [checkRupLoop] at hcheck
  | cons hint rest ih =>
      unfold checkRupLoop at hcheck
      by_cases hle : hint ≤ 0
      · simp [hle] at hcheck
      · simp [hle] at hcheck
        cases hdb : Db.lookup db hint.toNat with
        | none        => simp [hdb] at hcheck
        | some clause =>
            simp [hdb] at hcheck
            cases hscan : scanClause assignment clause with
            | invalid  => simp [hscan] at hcheck
            | multiple => simp [hscan] at hcheck
            | conflict =>
                exact false_of_satisfies_scan_conflict hscan
                  (hlookup hint.toNat clause hdb v hv) has
            | unit lit =>
                simp [hscan] at hcheck
                have hnot     := not_rawLitFalse_of_satisfies_scan_unit hscan
                                   (hlookup hint.toNat clause hdb v hv) has
                have hnonzero := unit_nonzero_of_scan hscan
                have hnegLit  := rawLitFalse_neg_of_not v hnonzero hnot
                exact ih hcheck (by
                  intro x hx
                  cases hx with
                  | head     => simpa [RawLitFalse] using hnegLit
                  | tail _ h => exact has x h)

private theorem checkRup_sound
    {f : Sat.Fmla} {db : Db} {clause proof : List Int}
    (hlookup : LookupSound f db)
    (hcheck  : checkRup db clause proof = true) :
    Sat.Fmla.proof f (rawClauseToSat clause) := by
  intro v hv
  exact satisfies_of_refute_assignment (v := v) (lits := clause) (by
    intro has
    exact checkRupLoop_sound hlookup hcheck hv has)

-- ===== checkSteps soundness =====

private theorem rawClauseToSat_nil_of_isEmpty {clause : RawClause}
    (h : clause.isEmpty = true) : rawClauseToSat clause = [] := by
  simp [List.isEmpty_iff] at h; simp [rawClauseToSat, h]

private theorem checkSteps_sound
    {f : Sat.Fmla} {db : Db} {steps : List Step}
    (hdb    : LookupSound f db)
    (hcheck : checkSteps db steps = true) :
    Sat.Fmla.proof f Sat.Clause.nil := by
  induction steps generalizing db with
  | nil       => simp [checkSteps] at hcheck
  | cons step rest ih =>
      cases step with
      | del ids =>
          exact ih (hdb.eraseIds ids) hcheck
      | add id clause proof =>
          unfold checkSteps at hcheck
          by_cases hrup : checkRup db clause proof = true
          · simp only [hrup] at hcheck
            have hclause : Sat.Fmla.proof f (rawClauseToSat clause) :=
              checkRup_sound hdb hrup
            by_cases hempty : clause.isEmpty = true
            · simp only [hempty, ite_true] at hcheck
              simpa [rawClauseToSat_nil_of_isEmpty hempty] using hclause
            · have hf := Bool.of_not_eq_true hempty
              simp only [hf] at hcheck
              exact ih (hdb.insert hclause) hcheck
          · have hf := Bool.of_not_eq_true hrup
            simp only [hf, Bool.not_false, ite_true, Bool.false_eq_true] at hcheck

-- ===== Initial DB soundness =====

private theorem proof_of_clause_mem_cnf {cnf : RawCnf} {clause : RawClause}
    (hmem : clause ∈ cnf) :
    Sat.Fmla.proof (rawCnfToSat cnf) (rawClauseToSat clause) := by
  apply Sat.Fmla.proof_of_subsumes
  constructor
  intro c hc
  simp only [Sat.Fmla.one, List.mem_singleton] at hc; subst hc
  exact List.mem_map.mpr ⟨clause, hmem, rfl⟩

/-- `find?` on the empty RBMap always returns `none`. -/
private theorem find?_empty_db (id : Nat) :
    (Batteries.RBMap.find? (∅ : Db) id) = none := rfl

/-- The initial DB built from a CNF is sound with respect to that CNF. -/
private theorem LookupSound.ofCnf (cnf : RawCnf) :
    LookupSound (rawCnfToSat cnf) (Db.ofCnf cnf) := by
  intro id clause hlookup
  simp only [Db.ofCnf] at hlookup
  -- Key induction: for ofCnfAux pfx start db,
  -- if find? = some clause then either clause is at some index of pfx, or it's in db.
  suffices h_ind : ∀ (pfx : List RawClause) (db : Db) (start : Nat),
      Batteries.RBMap.find? (ofCnfAux pfx start db) id = some clause →
      (∃ j : Fin pfx.length, pfx[j] = clause ∧ start + j.val = id) ∨
      Batteries.RBMap.find? db id = some clause by
    rcases h_ind cnf .empty 1 hlookup with ⟨⟨j, hj⟩, hcj, hid⟩ | hbot
    · exact proof_of_clause_mem_cnf (hcj ▸ List.getElem_mem hj)
    · simp [find?_empty_db] at hbot
  intro pfx
  induction pfx with
  | nil =>
      intro db start h
      exact Or.inr h
  | cons head tail ih =>
      intro db start h
      -- ofCnfAux (head :: tail) start db = ofCnfAux tail (start+1) (RBMap.insert db start head)
      -- by definitional reduction
      rcases ih (Batteries.RBMap.insert db start head) (start + 1) h with
        ⟨⟨j, hj⟩, hcj, hid⟩ | hbot
      · -- clause is tail[j] and id = (start+1) + j = start + (j+1)
        -- (head :: tail)[j+1] = tail[j] holds by rfl (List.getElem_cons_succ is definitional)
        refine Or.inl ⟨⟨j + 1, Nat.succ_lt_succ hj⟩, ?_, ?_⟩
        · exact hcj
        · exact (Nat.add_assoc start j 1).symm.trans ((Nat.add_right_comm start j 1).trans hid)
      · -- clause is from (RBMap.insert db start head)
        by_cases heq : start = id
        · rw [heq, Batteries.RBMap.find?_insert_of_eq db (Nat.compare_eq_eq.mpr rfl)] at hbot
          exact Or.inl ⟨⟨0, Nat.zero_lt_succ _⟩, by exact Option.some.inj hbot, by omega⟩
        · -- need compare id start ≠ .eq (k'=id, k=start) for find?_insert_of_ne
          rw [Batteries.RBMap.find?_insert_of_ne db
                (fun h' => heq (Nat.compare_eq_eq.mp h').symm)] at hbot
          exact Or.inr hbot

-- ===== Cube clauses soundness =====

private theorem satisfies_fmla_append {v : Sat.Valuation} {f g : Sat.Fmla} :
    Sat.Valuation.satisfies_fmla v (f ++ g) ↔
      Sat.Valuation.satisfies_fmla v f ∧ Sat.Valuation.satisfies_fmla v g :=
  ⟨fun h => ⟨⟨fun c hc => h.prop c (List.mem_append.mpr (Or.inl hc))⟩,
              ⟨fun c hc => h.prop c (List.mem_append.mpr (Or.inr hc))⟩⟩,
   fun ⟨hf, hg⟩ => ⟨fun c hc =>
     match List.mem_append.mp hc with
     | Or.inl hcf => hf.prop c hcf
     | Or.inr hcg => hg.prop c hcg⟩⟩

private theorem proof_mono_append_right {f g : Sat.Fmla} {clause : Sat.Clause}
    (h : Sat.Fmla.proof g clause) : Sat.Fmla.proof (f ++ g) clause :=
  fun v hv => h v (satisfies_fmla_append.mp hv).2

private theorem proof_mono_append_left {f g : Sat.Fmla} {clause : Sat.Clause}
    (h : Sat.Fmla.proof f clause) : Sat.Fmla.proof (f ++ g) clause :=
  fun v hv => h v (satisfies_fmla_append.mp hv).1

private theorem proof_of_cubeClause_mem {cnf : RawCnf} {cube : List Int}
    {clause : RawClause} (hmem : clause ∈ rawCubeClauses cube) :
    Sat.Fmla.proof (rawCnfToSat cnf ++ rawCubeToSat cube) (rawClauseToSat clause) := by
  rcases List.mem_map.mp hmem with ⟨lit, hlit, rfl⟩
  apply proof_mono_append_right (f := rawCnfToSat cnf)
  apply Sat.Fmla.proof_of_subsumes
  constructor
  intro c hc
  simp only [Sat.Fmla.one, List.mem_singleton] at hc; subst hc
  exact List.mem_map.mpr ⟨lit, hlit, by simp [rawUnitClause, rawClauseToSat]⟩

private theorem LookupSound.ofCnf_append_cube (cnf : RawCnf) (cube : List Int) :
    LookupSound (rawCnfToSat cnf ++ rawCubeToSat cube) (Db.ofCnf cnf) :=
  fun id clause h =>
    proof_mono_append_left (g := rawCubeToSat cube) (LookupSound.ofCnf cnf id clause h)

private theorem rawCnfToSat_rawCnfAppendCube (cnf : RawCnf) (cube : List Int) :
    rawCnfToSat (rawCnfAppendCube cnf cube) = rawCnfToSat cnf ++ rawCubeToSat cube := by
  simp [rawCnfAppendCube, rawCubeClauses, rawCnfToSat, rawCubeToSat,
    rawUnitClause, rawClauseToSat]

/-- The base + cube DB is sound for the extended formula. -/
private theorem LookupSound.insertCubeClauses
    (cnf : RawCnf) (baseDb : Db)
    (hbase : LookupSound (rawCnfToSat cnf ++ rawCubeToSat cube) baseDb)
    (cube : List Int) :
    LookupSound (rawCnfToSat cnf ++ rawCubeToSat cube)
      (insertCubeClauses baseDb cnf.length cube) := by
  sorry  -- TODO: inductive step on insertCubeClausesAux fold; same pattern as ofCnf proof

-- ===== Main soundness theorem =====

/-- If `checkLeaves` accepts, every leaf's branch is unsatisfiable. -/
theorem checkLeaves_branch_unsat_of_mem
    {nvars : Nat} {cnf : RawCnf} {leaf : Leaf} {leaves : List Leaf}
    (hcheck : checkLeaves nvars cnf leaves = true)
    (hmem   : leaf ∈ leaves) :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (rawCnfToSat (rawCnfAppendCube cnf leaf.cube)) →
      False := by
  simp [checkLeaves, List.all_eq_true] at hcheck
  have hleaf : checkLeafWithBase cnf (Db.ofCnf cnf) leaf = true :=
    hcheck leaf hmem
  unfold checkLeafWithBase at hleaf
  have hbase : LookupSound (rawCnfToSat cnf ++ rawCubeToSat leaf.cube) (Db.ofCnf cnf) :=
    LookupSound.ofCnf_append_cube cnf leaf.cube
  have hcubeDb : LookupSound (rawCnfToSat cnf ++ rawCubeToSat leaf.cube)
      (insertCubeClauses (Db.ofCnf cnf) cnf.length leaf.cube) :=
    LookupSound.insertCubeClauses cnf _ hbase leaf.cube
  have hproof : Sat.Fmla.proof (rawCnfToSat cnf ++ rawCubeToSat leaf.cube) Sat.Clause.nil :=
    checkSteps_sound hcubeDb hleaf
  intro v hv
  exact hproof v (by rwa [rawCnfToSat_rawCnfAppendCube] at hv)

end Soundness

end LRATKernel
end Database
end CoveringCodes
