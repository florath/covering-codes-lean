import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_3(6,2)`

This module contains the standalone explicit code certificate witnessing
`K_3(6,2) <= 17`.
-/

namespace CoveringCodes
namespace Database

private abbrev f3_0 : Fin 3 := ⟨0, by decide⟩
private abbrev f3_1 : Fin 3 := ⟨1, by decide⟩
private abbrev f3_2 : Fin 3 := ⟨2, by decide⟩

private def ternarySixRadiusTwoCode : Finset (QaryWord 3 6) :=
  {![f3_2, f3_0, f3_0, f3_1, f3_1, f3_0],
    ![f3_1, f3_0, f3_1, f3_0, f3_0, f3_1],
    ![f3_2, f3_1, f3_0, f3_2, f3_0, f3_2],
    ![f3_2, f3_2, f3_1, f3_2, f3_1, f3_2],
    ![f3_1, f3_0, f3_2, f3_2, f3_2, f3_0],
    ![f3_0, f3_2, f3_0, f3_2, f3_1, f3_1],
    ![f3_1, f3_1, f3_1, f3_2, f3_2, f3_1],
    ![f3_2, f3_2, f3_0, f3_1, f3_2, f3_1],
    ![f3_0, f3_1, f3_1, f3_0, f3_2, f3_0],
    ![f3_1, f3_2, f3_1, f3_1, f3_2, f3_2],
    ![f3_1, f3_1, f3_0, f3_1, f3_1, f3_2],
    ![f3_0, f3_0, f3_1, f3_1, f3_0, f3_0],
    ![f3_0, f3_0, f3_2, f3_0, f3_2, f3_2],
    ![f3_1, f3_2, f3_2, f3_0, f3_0, f3_0],
    ![f3_0, f3_2, f3_2, f3_1, f3_0, f3_2],
    ![f3_2, f3_1, f3_2, f3_1, f3_1, f3_1],
    ![f3_0, f3_1, f3_2, f3_2, f3_0, f3_1]}

private theorem ternarySixRadiusTwo_card :
    ternarySixRadiusTwoCode.card ≤ 17 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem ternarySixRadiusTwo_covers :
    CoversFinset ternarySixRadiusTwoCode 2 := by
  show ∀ x : QaryWord 3 6,
    ∃ c : QaryWord 3 6, c ∈ ternarySixRadiusTwoCode ∧ hammingDist x c ≤ 2
  covering_decide

def smallExplicitTernarySixRadiusTwoUpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitTernarySixRadiusTwoExplicit : ExplicitQaryUpper 3 6 2 17 :=
  { code := ternarySixRadiusTwoCode
    card_le := ternarySixRadiusTwo_card
    covers := ternarySixRadiusTwo_covers }

def smallExplicitTernarySixRadiusTwoUpper (q n r : Nat) : Nat :=
  if q = 3 ∧ n = 6 ∧ r = 2 then 17 else trivialUpper q n r

theorem smallExplicitTernarySixRadiusTwoUpper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitTernarySixRadiusTwoUpper q n r) := by
  by_cases h : q = 3 ∧ n = 6 ∧ r = 2
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitTernarySixRadiusTwoUpper] using
      smallExplicitTernarySixRadiusTwoExplicit.toUpper
  · simpa [smallExplicitTernarySixRadiusTwoUpper, h] using trivialUpper_valid q n r

def smallExplicitTernarySixRadiusTwoUpperSource : UpperBoundSource where
  value := smallExplicitTernarySixRadiusTwoUpper
  trace := fun q n r =>
    .primitive smallExplicitTernarySixRadiusTwoUpperName
      (smallExplicitTernarySixRadiusTwoUpper_valid q n r)

end Database
end CoveringCodes
