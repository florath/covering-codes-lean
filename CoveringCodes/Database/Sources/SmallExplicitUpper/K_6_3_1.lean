import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_6(3,1)`

This module contains the standalone explicit-code certificate witnessing
`K_6(3,1)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f6_0 : Fin 6 := ⟨0, by decide⟩
private abbrev f6_1 : Fin 6 := ⟨1, by decide⟩
private abbrev f6_2 : Fin 6 := ⟨2, by decide⟩
private abbrev f6_3 : Fin 6 := ⟨3, by decide⟩
private abbrev f6_4 : Fin 6 := ⟨4, by decide⟩
private abbrev f6_5 : Fin 6 := ⟨5, by decide⟩

private def senary631Code : Finset (QaryWord 6 3) :=
  {![f6_0, f6_0, f6_0],
    ![f6_1, f6_1, f6_0],
    ![f6_5, f6_2, f6_0],
    ![f6_4, f6_3, f6_1],
    ![f6_2, f6_4, f6_1],
    ![f6_3, f6_5, f6_1],
    ![f6_3, f6_3, f6_2],
    ![f6_4, f6_4, f6_2],
    ![f6_2, f6_5, f6_2],
    ![f6_5, f6_0, f6_3],
    ![f6_0, f6_1, f6_3],
    ![f6_1, f6_2, f6_3],
    ![f6_1, f6_0, f6_4],
    ![f6_5, f6_1, f6_4],
    ![f6_0, f6_2, f6_4],
    ![f6_2, f6_3, f6_5],
    ![f6_3, f6_4, f6_5],
    ![f6_4, f6_5, f6_5]}

private theorem senary631_card :
    senary631Code.card ≤ 18 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem senary631_covers :
    CoversFinset senary631Code 1 := by
  show ∀ x : QaryWord 6 3,
    ∃ c : QaryWord 6 3, c ∈ senary631Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitSenary631UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitSenary631Explicit : ExplicitQaryUpper 6 3 1 18 :=
  { code := senary631Code
    card_le := senary631_card
    covers := senary631_covers }

def smallExplicitSenary631Upper (q n r : Nat) : Nat :=
  if q = 6 ∧ n = 3 ∧ r = 1 then 18 else trivialUpper q n r

theorem smallExplicitSenary631Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitSenary631Upper q n r) := by
  by_cases h : q = 6 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitSenary631Upper] using
      smallExplicitSenary631Explicit.toUpper
  · simpa [smallExplicitSenary631Upper, h] using trivialUpper_valid q n r

def smallExplicitSenary631UpperSource : UpperBoundSource where
  value := smallExplicitSenary631Upper
  trace := fun q n r =>
    .primitive smallExplicitSenary631UpperName
      (smallExplicitSenary631Upper_valid q n r)

end Database
end CoveringCodes
