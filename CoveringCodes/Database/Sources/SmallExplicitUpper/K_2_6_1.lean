import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_2(6,1)`

This module contains the standalone explicit-code certificate witnessing
`K_2(6,1)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f2_0 : Fin 2 := ⟨0, by decide⟩
private abbrev f2_1 : Fin 2 := ⟨1, by decide⟩

private def binarySixRadiusOneCode : Finset (QaryWord 2 6) :=
  {![f2_0, f2_0, f2_0, f2_0, f2_0, f2_0],
    ![f2_1, f2_1, f2_1, f2_0, f2_0, f2_0],
    ![f2_1, f2_0, f2_1, f2_1, f2_0, f2_0],
    ![f2_0, f2_1, f2_0, f2_0, f2_1, f2_0],
    ![f2_0, f2_0, f2_0, f2_1, f2_1, f2_0],
    ![f2_1, f2_1, f2_1, f2_1, f2_1, f2_0],
    ![f2_0, f2_1, f2_0, f2_1, f2_0, f2_1],
    ![f2_1, f2_1, f2_0, f2_1, f2_0, f2_1],
    ![f2_0, f2_1, f2_1, f2_1, f2_0, f2_1],
    ![f2_1, f2_0, f2_0, f2_0, f2_1, f2_1],
    ![f2_0, f2_0, f2_1, f2_0, f2_1, f2_1],
    ![f2_1, f2_0, f2_1, f2_0, f2_1, f2_1]}

private theorem binarySixRadiusOne_card :
    binarySixRadiusOneCode.card ≤ 12 := by
  covering_decide

private theorem binarySixRadiusOne_covers :
    CoversFinset binarySixRadiusOneCode 1 := by
  show ∀ x : QaryWord 2 6,
    ∃ c : QaryWord 2 6, c ∈ binarySixRadiusOneCode ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitBinarySixRadiusOneUpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitBinarySixRadiusOneExplicit : ExplicitQaryUpper 2 6 1 12 :=
  { code := binarySixRadiusOneCode
    card_le := binarySixRadiusOne_card
    covers := binarySixRadiusOne_covers }

def smallExplicitBinarySixRadiusOneUpper (q n r : Nat) : Nat :=
  if q = 2 ∧ n = 6 ∧ r = 1 then 12 else trivialUpper q n r

theorem smallExplicitBinarySixRadiusOneUpper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitBinarySixRadiusOneUpper q n r) := by
  by_cases h : q = 2 ∧ n = 6 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitBinarySixRadiusOneUpper] using
      smallExplicitBinarySixRadiusOneExplicit.toUpper
  · simpa [smallExplicitBinarySixRadiusOneUpper, h] using trivialUpper_valid q n r

def smallExplicitBinarySixRadiusOneUpperSource : UpperBoundSource where
  value := smallExplicitBinarySixRadiusOneUpper
  trace := fun q n r =>
    .primitive smallExplicitBinarySixRadiusOneUpperName
      (smallExplicitBinarySixRadiusOneUpper_valid q n r)

end Database
end CoveringCodes
