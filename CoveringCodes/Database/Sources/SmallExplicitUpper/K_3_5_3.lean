import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_3(5,3)`

This module contains the standalone explicit-code certificate witnessing
`K_3(5,3)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f3_0 : Fin 3 := ⟨0, by decide⟩
private abbrev f3_1 : Fin 3 := ⟨1, by decide⟩
private abbrev f3_2 : Fin 3 := ⟨2, by decide⟩

private def ternaryFiveRadiusThreeCode : Finset (QaryWord 3 5) :=
  {![f3_0, f3_0, f3_0, f3_0, f3_0],
    ![f3_1, f3_1, f3_1, f3_1, f3_1],
    ![f3_2, f3_2, f3_2, f3_2, f3_2]}

private theorem ternaryFiveRadiusThree_card :
    ternaryFiveRadiusThreeCode.card ≤ 3 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem ternaryFiveRadiusThree_covers :
    CoversFinset ternaryFiveRadiusThreeCode 3 := by
  show ∀ x : QaryWord 3 5,
    ∃ c : QaryWord 3 5, c ∈ ternaryFiveRadiusThreeCode ∧ hammingDist x c ≤ 3
  covering_decide

def smallExplicitTernaryFiveRadiusThreeUpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitTernaryFiveRadiusThreeExplicit : ExplicitQaryUpper 3 5 3 3 :=
  { code := ternaryFiveRadiusThreeCode
    card_le := ternaryFiveRadiusThree_card
    covers := ternaryFiveRadiusThree_covers }

def smallExplicitTernaryFiveRadiusThreeUpper (q n r : Nat) : Nat :=
  if q = 3 ∧ n = 5 ∧ r = 3 then 3 else trivialUpper q n r

theorem smallExplicitTernaryFiveRadiusThreeUpper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitTernaryFiveRadiusThreeUpper q n r) := by
  by_cases h : q = 3 ∧ n = 5 ∧ r = 3
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitTernaryFiveRadiusThreeUpper] using
      smallExplicitTernaryFiveRadiusThreeExplicit.toUpper
  · simpa [smallExplicitTernaryFiveRadiusThreeUpper, h] using trivialUpper_valid q n r

def smallExplicitTernaryFiveRadiusThreeUpperSource : UpperBoundSource where
  value := smallExplicitTernaryFiveRadiusThreeUpper
  trace := fun q n r =>
    .primitive smallExplicitTernaryFiveRadiusThreeUpperName
      (smallExplicitTernaryFiveRadiusThreeUpper_valid q n r)

end Database
end CoveringCodes
