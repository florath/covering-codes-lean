import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_10(3,1)`

This module contains the standalone explicit-code certificate witnessing
`K_10(3,1)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f10_0 : Fin 10 := ⟨0, by decide⟩
private abbrev f10_1 : Fin 10 := ⟨1, by decide⟩
private abbrev f10_2 : Fin 10 := ⟨2, by decide⟩
private abbrev f10_3 : Fin 10 := ⟨3, by decide⟩
private abbrev f10_4 : Fin 10 := ⟨4, by decide⟩
private abbrev f10_5 : Fin 10 := ⟨5, by decide⟩
private abbrev f10_6 : Fin 10 := ⟨6, by decide⟩
private abbrev f10_7 : Fin 10 := ⟨7, by decide⟩
private abbrev f10_8 : Fin 10 := ⟨8, by decide⟩
private abbrev f10_9 : Fin 10 := ⟨9, by decide⟩

private def denary1031Code : Finset (QaryWord 10 3) :=
  {![f10_0, f10_0, f10_0],
    ![f10_1, f10_1, f10_0],
    ![f10_2, f10_2, f10_0],
    ![f10_3, f10_3, f10_0],
    ![f10_4, f10_4, f10_0],
    ![f10_0, f10_1, f10_1],
    ![f10_1, f10_2, f10_1],
    ![f10_2, f10_3, f10_1],
    ![f10_3, f10_4, f10_1],
    ![f10_4, f10_0, f10_1],
    ![f10_0, f10_2, f10_2],
    ![f10_1, f10_3, f10_2],
    ![f10_2, f10_4, f10_2],
    ![f10_3, f10_0, f10_2],
    ![f10_4, f10_1, f10_2],
    ![f10_0, f10_3, f10_3],
    ![f10_1, f10_4, f10_3],
    ![f10_2, f10_0, f10_3],
    ![f10_3, f10_1, f10_3],
    ![f10_4, f10_2, f10_3],
    ![f10_0, f10_4, f10_4],
    ![f10_1, f10_0, f10_4],
    ![f10_2, f10_1, f10_4],
    ![f10_3, f10_2, f10_4],
    ![f10_4, f10_3, f10_4],
    ![f10_5, f10_5, f10_5],
    ![f10_6, f10_6, f10_5],
    ![f10_7, f10_7, f10_5],
    ![f10_8, f10_8, f10_5],
    ![f10_9, f10_9, f10_5],
    ![f10_5, f10_6, f10_6],
    ![f10_6, f10_7, f10_6],
    ![f10_7, f10_8, f10_6],
    ![f10_8, f10_9, f10_6],
    ![f10_9, f10_5, f10_6],
    ![f10_5, f10_7, f10_7],
    ![f10_6, f10_8, f10_7],
    ![f10_7, f10_9, f10_7],
    ![f10_8, f10_5, f10_7],
    ![f10_9, f10_6, f10_7],
    ![f10_5, f10_8, f10_8],
    ![f10_6, f10_9, f10_8],
    ![f10_7, f10_5, f10_8],
    ![f10_8, f10_6, f10_8],
    ![f10_9, f10_7, f10_8],
    ![f10_5, f10_9, f10_9],
    ![f10_6, f10_5, f10_9],
    ![f10_7, f10_6, f10_9],
    ![f10_8, f10_7, f10_9],
    ![f10_9, f10_8, f10_9]}

set_option maxRecDepth 10000 in
private theorem denary1031_card :
    denary1031Code.card ≤ 50 := by
  covering_decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 2000000 in
private theorem denary1031_covers :
    CoversFinset denary1031Code 1 := by
  show ∀ x : QaryWord 10 3,
    ∃ c : QaryWord 10 3, c ∈ denary1031Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitDenary1031UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitDenary1031Explicit : ExplicitQaryUpper 10 3 1 50 :=
  { code := denary1031Code
    card_le := denary1031_card
    covers := denary1031_covers }

def smallExplicitDenary1031Upper (q n r : Nat) : Nat :=
  if q = 10 ∧ n = 3 ∧ r = 1 then 50 else trivialUpper q n r

theorem smallExplicitDenary1031Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitDenary1031Upper q n r) := by
  by_cases h : q = 10 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitDenary1031Upper] using
      smallExplicitDenary1031Explicit.toUpper
  · simpa [smallExplicitDenary1031Upper, h] using trivialUpper_valid q n r

def smallExplicitDenary1031UpperSource : UpperBoundSource where
  value := smallExplicitDenary1031Upper
  trace := fun q n r =>
    .primitive smallExplicitDenary1031UpperName
      (smallExplicitDenary1031Upper_valid q n r)

end Database
end CoveringCodes
