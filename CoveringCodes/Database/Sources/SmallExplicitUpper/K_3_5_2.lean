import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_3(5,2)`

This module contains the standalone explicit-code certificate witnessing
`K_3(5,2)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f3_0 : Fin 3 := ⟨0, by decide⟩
private abbrev f3_1 : Fin 3 := ⟨1, by decide⟩
private abbrev f3_2 : Fin 3 := ⟨2, by decide⟩

private def ternaryFiveRadiusTwoCode : Finset (QaryWord 3 5) :=
  {![f3_0, f3_0, f3_0, f3_0, f3_0],
    ![f3_2, f3_0, f3_0, f3_1, f3_0],
    ![f3_1, f3_2, f3_1, f3_2, f3_0],
    ![f3_0, f3_2, f3_1, f3_1, f3_1],
    ![f3_1, f3_2, f3_0, f3_2, f3_1],
    ![f3_1, f3_0, f3_1, f3_2, f3_1],
    ![f3_2, f3_1, f3_2, f3_0, f3_2],
    ![f3_0, f3_1, f3_2, f3_1, f3_2]}

private theorem ternaryFiveRadiusTwo_card :
    ternaryFiveRadiusTwoCode.card ≤ 8 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem ternaryFiveRadiusTwo_covers :
    CoversFinset ternaryFiveRadiusTwoCode 2 := by
  show ∀ x : QaryWord 3 5,
    ∃ c : QaryWord 3 5, c ∈ ternaryFiveRadiusTwoCode ∧ hammingDist x c ≤ 2
  covering_decide

def smallExplicitTernaryFiveRadiusTwoUpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitTernaryFiveRadiusTwoExplicit : ExplicitQaryUpper 3 5 2 8 :=
  { code := ternaryFiveRadiusTwoCode
    card_le := ternaryFiveRadiusTwo_card
    covers := ternaryFiveRadiusTwo_covers }

def smallExplicitTernaryFiveRadiusTwoUpper (q n r : Nat) : Nat :=
  if q = 3 ∧ n = 5 ∧ r = 2 then 8 else trivialUpper q n r

theorem smallExplicitTernaryFiveRadiusTwoUpper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitTernaryFiveRadiusTwoUpper q n r) := by
  by_cases h : q = 3 ∧ n = 5 ∧ r = 2
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitTernaryFiveRadiusTwoUpper] using
      smallExplicitTernaryFiveRadiusTwoExplicit.toUpper
  · simpa [smallExplicitTernaryFiveRadiusTwoUpper, h] using trivialUpper_valid q n r

def smallExplicitTernaryFiveRadiusTwoUpperSource : UpperBoundSource where
  value := smallExplicitTernaryFiveRadiusTwoUpper
  trace := fun q n r =>
    .primitive smallExplicitTernaryFiveRadiusTwoUpperName
      (smallExplicitTernaryFiveRadiusTwoUpper_valid q n r)

end Database
end CoveringCodes
