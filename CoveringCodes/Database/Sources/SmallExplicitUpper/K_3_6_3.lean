import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_3(6,3)`

This module contains the standalone explicit-code certificate witnessing
`K_3(6,3)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f3_0 : Fin 3 := ⟨0, by decide⟩
private abbrev f3_1 : Fin 3 := ⟨1, by decide⟩
private abbrev f3_2 : Fin 3 := ⟨2, by decide⟩

private def ternarySixRadiusThreeCode : Finset (QaryWord 3 6) :=
  {![f3_0, f3_0, f3_0, f3_0, f3_0, f3_0],
    ![f3_1, f3_2, f3_0, f3_1, f3_2, f3_0],
    ![f3_1, f3_0, f3_1, f3_1, f3_2, f3_0],
    ![f3_0, f3_2, f3_1, f3_0, f3_0, f3_1],
    ![f3_2, f3_1, f3_2, f3_2, f3_1, f3_1],
    ![f3_2, f3_1, f3_2, f3_2, f3_1, f3_2]}

private theorem ternarySixRadiusThree_card :
    ternarySixRadiusThreeCode.card ≤ 6 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem ternarySixRadiusThree_covers :
    CoversFinset ternarySixRadiusThreeCode 3 := by
  show ∀ x : QaryWord 3 6,
    ∃ c : QaryWord 3 6, c ∈ ternarySixRadiusThreeCode ∧ hammingDist x c ≤ 3
  covering_decide

def smallExplicitTernarySixRadiusThreeUpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitTernarySixRadiusThreeExplicit : ExplicitQaryUpper 3 6 3 6 :=
  { code := ternarySixRadiusThreeCode
    card_le := ternarySixRadiusThree_card
    covers := ternarySixRadiusThree_covers }

def smallExplicitTernarySixRadiusThreeUpper (q n r : Nat) : Nat :=
  if q = 3 ∧ n = 6 ∧ r = 3 then 6 else trivialUpper q n r

theorem smallExplicitTernarySixRadiusThreeUpper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitTernarySixRadiusThreeUpper q n r) := by
  by_cases h : q = 3 ∧ n = 6 ∧ r = 3
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitTernarySixRadiusThreeUpper] using
      smallExplicitTernarySixRadiusThreeExplicit.toUpper
  · simpa [smallExplicitTernarySixRadiusThreeUpper, h] using trivialUpper_valid q n r

def smallExplicitTernarySixRadiusThreeUpperSource : UpperBoundSource where
  value := smallExplicitTernarySixRadiusThreeUpper
  trace := fun q n r =>
    .primitive smallExplicitTernarySixRadiusThreeUpperName
      (smallExplicitTernarySixRadiusThreeUpper_valid q n r)

end Database
end CoveringCodes
