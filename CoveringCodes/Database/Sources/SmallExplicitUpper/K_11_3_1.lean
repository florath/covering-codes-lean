import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_11(3,1)`

This module contains the standalone explicit-code certificate witnessing
`K_11(3,1)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f11_0 : Fin 11 := ⟨0, by decide⟩
private abbrev f11_1 : Fin 11 := ⟨1, by decide⟩
private abbrev f11_2 : Fin 11 := ⟨2, by decide⟩
private abbrev f11_3 : Fin 11 := ⟨3, by decide⟩
private abbrev f11_4 : Fin 11 := ⟨4, by decide⟩
private abbrev f11_5 : Fin 11 := ⟨5, by decide⟩
private abbrev f11_6 : Fin 11 := ⟨6, by decide⟩
private abbrev f11_7 : Fin 11 := ⟨7, by decide⟩
private abbrev f11_8 : Fin 11 := ⟨8, by decide⟩
private abbrev f11_9 : Fin 11 := ⟨9, by decide⟩
private abbrev f11_10 : Fin 11 := ⟨10, by decide⟩

private def elevenary1131Code : Finset (QaryWord 11 3) :=
  {![f11_0, f11_0, f11_0],
    ![f11_1, f11_1, f11_0],
    ![f11_2, f11_2, f11_0],
    ![f11_3, f11_3, f11_0],
    ![f11_4, f11_4, f11_0],
    ![f11_0, f11_1, f11_1],
    ![f11_1, f11_2, f11_1],
    ![f11_2, f11_3, f11_1],
    ![f11_3, f11_4, f11_1],
    ![f11_4, f11_0, f11_1],
    ![f11_0, f11_2, f11_2],
    ![f11_1, f11_3, f11_2],
    ![f11_2, f11_4, f11_2],
    ![f11_3, f11_0, f11_2],
    ![f11_4, f11_1, f11_2],
    ![f11_0, f11_3, f11_3],
    ![f11_1, f11_4, f11_3],
    ![f11_2, f11_0, f11_3],
    ![f11_3, f11_1, f11_3],
    ![f11_4, f11_2, f11_3],
    ![f11_0, f11_4, f11_4],
    ![f11_1, f11_0, f11_4],
    ![f11_2, f11_1, f11_4],
    ![f11_3, f11_2, f11_4],
    ![f11_4, f11_3, f11_4],
    ![f11_5, f11_5, f11_5],
    ![f11_6, f11_6, f11_5],
    ![f11_7, f11_7, f11_5],
    ![f11_8, f11_8, f11_5],
    ![f11_9, f11_9, f11_5],
    ![f11_10, f11_10, f11_5],
    ![f11_5, f11_6, f11_6],
    ![f11_6, f11_7, f11_6],
    ![f11_7, f11_8, f11_6],
    ![f11_8, f11_9, f11_6],
    ![f11_9, f11_10, f11_6],
    ![f11_10, f11_5, f11_6],
    ![f11_5, f11_7, f11_7],
    ![f11_6, f11_8, f11_7],
    ![f11_7, f11_9, f11_7],
    ![f11_8, f11_10, f11_7],
    ![f11_9, f11_5, f11_7],
    ![f11_10, f11_6, f11_7],
    ![f11_5, f11_8, f11_8],
    ![f11_6, f11_9, f11_8],
    ![f11_7, f11_10, f11_8],
    ![f11_8, f11_5, f11_8],
    ![f11_9, f11_6, f11_8],
    ![f11_10, f11_7, f11_8],
    ![f11_5, f11_9, f11_9],
    ![f11_6, f11_10, f11_9],
    ![f11_7, f11_5, f11_9],
    ![f11_8, f11_6, f11_9],
    ![f11_9, f11_7, f11_9],
    ![f11_10, f11_8, f11_9],
    ![f11_5, f11_10, f11_10],
    ![f11_6, f11_5, f11_10],
    ![f11_7, f11_6, f11_10],
    ![f11_8, f11_7, f11_10],
    ![f11_9, f11_8, f11_10],
    ![f11_10, f11_9, f11_10]}

set_option maxRecDepth 10000 in
private theorem elevenary1131_card :
    elevenary1131Code.card ≤ 61 := by
  covering_decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 4000000 in
private theorem elevenary1131_covers :
    CoversFinset elevenary1131Code 1 := by
  show ∀ x : QaryWord 11 3,
    ∃ c : QaryWord 11 3, c ∈ elevenary1131Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitElevenary1131UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitElevenary1131Explicit : ExplicitQaryUpper 11 3 1 61 :=
  { code := elevenary1131Code
    card_le := elevenary1131_card
    covers := elevenary1131_covers }

def smallExplicitElevenary1131Upper (q n r : Nat) : Nat :=
  if q = 11 ∧ n = 3 ∧ r = 1 then 61 else trivialUpper q n r

theorem smallExplicitElevenary1131Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitElevenary1131Upper q n r) := by
  by_cases h : q = 11 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitElevenary1131Upper] using
      smallExplicitElevenary1131Explicit.toUpper
  · simpa [smallExplicitElevenary1131Upper, h] using trivialUpper_valid q n r

def smallExplicitElevenary1131UpperSource : UpperBoundSource where
  value := smallExplicitElevenary1131Upper
  trace := fun q n r =>
    .primitive smallExplicitElevenary1131UpperName
      (smallExplicitElevenary1131Upper_valid q n r)

end Database
end CoveringCodes
