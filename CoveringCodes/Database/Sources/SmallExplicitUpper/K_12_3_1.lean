import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_12(3,1)`

This module contains the standalone explicit-code certificate witnessing
`K_12(3,1)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f12_0 : Fin 12 := ⟨0, by decide⟩
private abbrev f12_1 : Fin 12 := ⟨1, by decide⟩
private abbrev f12_2 : Fin 12 := ⟨2, by decide⟩
private abbrev f12_3 : Fin 12 := ⟨3, by decide⟩
private abbrev f12_4 : Fin 12 := ⟨4, by decide⟩
private abbrev f12_5 : Fin 12 := ⟨5, by decide⟩
private abbrev f12_6 : Fin 12 := ⟨6, by decide⟩
private abbrev f12_7 : Fin 12 := ⟨7, by decide⟩
private abbrev f12_8 : Fin 12 := ⟨8, by decide⟩
private abbrev f12_9 : Fin 12 := ⟨9, by decide⟩
private abbrev f12_10 : Fin 12 := ⟨10, by decide⟩
private abbrev f12_11 : Fin 12 := ⟨11, by decide⟩

private def duodenary1231Code : Finset (QaryWord 12 3) :=
  {![f12_0, f12_0, f12_0],
    ![f12_1, f12_1, f12_0],
    ![f12_2, f12_2, f12_0],
    ![f12_3, f12_3, f12_0],
    ![f12_4, f12_4, f12_0],
    ![f12_5, f12_5, f12_0],
    ![f12_0, f12_1, f12_1],
    ![f12_1, f12_2, f12_1],
    ![f12_2, f12_3, f12_1],
    ![f12_3, f12_4, f12_1],
    ![f12_4, f12_5, f12_1],
    ![f12_5, f12_0, f12_1],
    ![f12_0, f12_2, f12_2],
    ![f12_1, f12_3, f12_2],
    ![f12_2, f12_4, f12_2],
    ![f12_3, f12_5, f12_2],
    ![f12_4, f12_0, f12_2],
    ![f12_5, f12_1, f12_2],
    ![f12_0, f12_3, f12_3],
    ![f12_1, f12_4, f12_3],
    ![f12_2, f12_5, f12_3],
    ![f12_3, f12_0, f12_3],
    ![f12_4, f12_1, f12_3],
    ![f12_5, f12_2, f12_3],
    ![f12_0, f12_4, f12_4],
    ![f12_1, f12_5, f12_4],
    ![f12_2, f12_0, f12_4],
    ![f12_3, f12_1, f12_4],
    ![f12_4, f12_2, f12_4],
    ![f12_5, f12_3, f12_4],
    ![f12_0, f12_5, f12_5],
    ![f12_1, f12_0, f12_5],
    ![f12_2, f12_1, f12_5],
    ![f12_3, f12_2, f12_5],
    ![f12_4, f12_3, f12_5],
    ![f12_5, f12_4, f12_5],
    ![f12_6, f12_6, f12_6],
    ![f12_7, f12_7, f12_6],
    ![f12_8, f12_8, f12_6],
    ![f12_9, f12_9, f12_6],
    ![f12_10, f12_10, f12_6],
    ![f12_11, f12_11, f12_6],
    ![f12_6, f12_7, f12_7],
    ![f12_7, f12_8, f12_7],
    ![f12_8, f12_9, f12_7],
    ![f12_9, f12_10, f12_7],
    ![f12_10, f12_11, f12_7],
    ![f12_11, f12_6, f12_7],
    ![f12_6, f12_8, f12_8],
    ![f12_7, f12_9, f12_8],
    ![f12_8, f12_10, f12_8],
    ![f12_9, f12_11, f12_8],
    ![f12_10, f12_6, f12_8],
    ![f12_11, f12_7, f12_8],
    ![f12_6, f12_9, f12_9],
    ![f12_7, f12_10, f12_9],
    ![f12_8, f12_11, f12_9],
    ![f12_9, f12_6, f12_9],
    ![f12_10, f12_7, f12_9],
    ![f12_11, f12_8, f12_9],
    ![f12_6, f12_10, f12_10],
    ![f12_7, f12_11, f12_10],
    ![f12_8, f12_6, f12_10],
    ![f12_9, f12_7, f12_10],
    ![f12_10, f12_8, f12_10],
    ![f12_11, f12_9, f12_10],
    ![f12_6, f12_11, f12_11],
    ![f12_7, f12_6, f12_11],
    ![f12_8, f12_7, f12_11],
    ![f12_9, f12_8, f12_11],
    ![f12_10, f12_9, f12_11],
    ![f12_11, f12_10, f12_11]}

set_option maxRecDepth 10000 in
private theorem duodenary1231_card :
    duodenary1231Code.card ≤ 72 := by
  covering_decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 8000000 in
private theorem duodenary1231_covers :
    CoversFinset duodenary1231Code 1 := by
  show ∀ x : QaryWord 12 3,
    ∃ c : QaryWord 12 3, c ∈ duodenary1231Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitDuodenary1231UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitDuodenary1231Explicit : ExplicitQaryUpper 12 3 1 72 :=
  { code := duodenary1231Code
    card_le := duodenary1231_card
    covers := duodenary1231_covers }

def smallExplicitDuodenary1231Upper (q n r : Nat) : Nat :=
  if q = 12 ∧ n = 3 ∧ r = 1 then 72 else trivialUpper q n r

theorem smallExplicitDuodenary1231Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitDuodenary1231Upper q n r) := by
  by_cases h : q = 12 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitDuodenary1231Upper] using
      smallExplicitDuodenary1231Explicit.toUpper
  · simpa [smallExplicitDuodenary1231Upper, h] using trivialUpper_valid q n r

def smallExplicitDuodenary1231UpperSource : UpperBoundSource where
  value := smallExplicitDuodenary1231Upper
  trace := fun q n r =>
    .primitive smallExplicitDuodenary1231UpperName
      (smallExplicitDuodenary1231Upper_valid q n r)

end Database
end CoveringCodes
