import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_2(6,2)`

This module contains the standalone explicit-code certificate witnessing
`K_2(6,2)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f2_0 : Fin 2 := ⟨0, by decide⟩
private abbrev f2_1 : Fin 2 := ⟨1, by decide⟩

private def binarySixRadiusTwoCode : Finset (QaryWord 2 6) :=
  {![f2_0, f2_0, f2_0, f2_0, f2_0, f2_0],
    ![f2_1, f2_0, f2_0, f2_0, f2_0, f2_0],
    ![f2_0, f2_1, f2_1, f2_1, f2_1, f2_1],
    ![f2_1, f2_1, f2_1, f2_1, f2_1, f2_1]}

private theorem binarySixRadiusTwo_card :
    binarySixRadiusTwoCode.card ≤ 4 := by
  covering_decide

private theorem binarySixRadiusTwo_covers :
    CoversFinset binarySixRadiusTwoCode 2 := by
  show ∀ x : QaryWord 2 6,
    ∃ c : QaryWord 2 6, c ∈ binarySixRadiusTwoCode ∧ hammingDist x c ≤ 2
  covering_decide

def smallExplicitBinarySixRadiusTwoUpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitBinarySixRadiusTwoExplicit : ExplicitQaryUpper 2 6 2 4 :=
  { code := binarySixRadiusTwoCode
    card_le := binarySixRadiusTwo_card
    covers := binarySixRadiusTwo_covers }

def smallExplicitBinarySixRadiusTwoUpper (q n r : Nat) : Nat :=
  if q = 2 ∧ n = 6 ∧ r = 2 then 4 else trivialUpper q n r

theorem smallExplicitBinarySixRadiusTwoUpper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitBinarySixRadiusTwoUpper q n r) := by
  by_cases h : q = 2 ∧ n = 6 ∧ r = 2
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitBinarySixRadiusTwoUpper] using
      smallExplicitBinarySixRadiusTwoExplicit.toUpper
  · simpa [smallExplicitBinarySixRadiusTwoUpper, h] using trivialUpper_valid q n r

def smallExplicitBinarySixRadiusTwoUpperSource : UpperBoundSource where
  value := smallExplicitBinarySixRadiusTwoUpper
  trace := fun q n r =>
    .primitive smallExplicitBinarySixRadiusTwoUpperName
      (smallExplicitBinarySixRadiusTwoUpper_valid q n r)

end Database
end CoveringCodes
