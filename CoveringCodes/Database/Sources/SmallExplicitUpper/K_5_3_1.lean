import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_5(3,1)`

This module contains the standalone explicit-code certificate witnessing
`K_5(3,1)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f5_0 : Fin 5 := ⟨0, by decide⟩
private abbrev f5_1 : Fin 5 := ⟨1, by decide⟩
private abbrev f5_2 : Fin 5 := ⟨2, by decide⟩
private abbrev f5_3 : Fin 5 := ⟨3, by decide⟩
private abbrev f5_4 : Fin 5 := ⟨4, by decide⟩

private def quinary531Code : Finset (QaryWord 5 3) :=
  {![f5_0, f5_0, f5_0],
    ![f5_1, f5_2, f5_0],
    ![f5_4, f5_3, f5_0],
    ![f5_1, f5_0, f5_1],
    ![f5_4, f5_2, f5_1],
    ![f5_0, f5_3, f5_1],
    ![f5_4, f5_0, f5_2],
    ![f5_0, f5_2, f5_2],
    ![f5_1, f5_3, f5_2],
    ![f5_3, f5_1, f5_3],
    ![f5_2, f5_4, f5_3],
    ![f5_2, f5_1, f5_4],
    ![f5_3, f5_4, f5_4]}

private theorem quinary531_card :
    quinary531Code.card ≤ 13 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem quinary531_covers :
    CoversFinset quinary531Code 1 := by
  show ∀ x : QaryWord 5 3,
    ∃ c : QaryWord 5 3, c ∈ quinary531Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitQuinary531UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitQuinary531Explicit : ExplicitQaryUpper 5 3 1 13 :=
  { code := quinary531Code
    card_le := quinary531_card
    covers := quinary531_covers }

def smallExplicitQuinary531Upper (q n r : Nat) : Nat :=
  if q = 5 ∧ n = 3 ∧ r = 1 then 13 else trivialUpper q n r

theorem smallExplicitQuinary531Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitQuinary531Upper q n r) := by
  by_cases h : q = 5 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitQuinary531Upper] using
      smallExplicitQuinary531Explicit.toUpper
  · simpa [smallExplicitQuinary531Upper, h] using trivialUpper_valid q n r

def smallExplicitQuinary531UpperSource : UpperBoundSource where
  value := smallExplicitQuinary531Upper
  trace := fun q n r =>
    .primitive smallExplicitQuinary531UpperName
      (smallExplicitQuinary531Upper_valid q n r)

end Database
end CoveringCodes
