import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_2(5,1)`

This module contains the standalone explicit-code certificate witnessing
`K_2(5,1)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f2_0 : Fin 2 := ⟨0, by decide⟩
private abbrev f2_1 : Fin 2 := ⟨1, by decide⟩

private def binaryFiveRadiusOneCode : Finset (QaryWord 2 5) :=
  {![f2_0, f2_0, f2_0, f2_0, f2_0],
    ![f2_0, f2_0, f2_1, f2_1, f2_1],
    ![f2_0, f2_1, f2_0, f2_1, f2_0],
    ![f2_1, f2_0, f2_0, f2_1, f2_0],
    ![f2_1, f2_1, f2_0, f2_0, f2_1],
    ![f2_1, f2_1, f2_1, f2_0, f2_0],
    ![f2_1, f2_1, f2_1, f2_0, f2_1]}

private theorem binaryFiveRadiusOne_card :
    binaryFiveRadiusOneCode.card ≤ 7 := by
  covering_decide

private theorem binaryFiveRadiusOne_covers :
    CoversFinset binaryFiveRadiusOneCode 1 := by
  show ∀ x : QaryWord 2 5,
    ∃ c : QaryWord 2 5, c ∈ binaryFiveRadiusOneCode ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitBinaryFiveRadiusOneUpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitBinaryFiveRadiusOneExplicit : ExplicitQaryUpper 2 5 1 7 :=
  { code := binaryFiveRadiusOneCode
    card_le := binaryFiveRadiusOne_card
    covers := binaryFiveRadiusOne_covers }

def smallExplicitBinaryFiveRadiusOneUpper (q n r : Nat) : Nat :=
  if q = 2 ∧ n = 5 ∧ r = 1 then 7 else trivialUpper q n r

theorem smallExplicitBinaryFiveRadiusOneUpper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitBinaryFiveRadiusOneUpper q n r) := by
  by_cases h : q = 2 ∧ n = 5 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitBinaryFiveRadiusOneUpper] using
      smallExplicitBinaryFiveRadiusOneExplicit.toUpper
  · simpa [smallExplicitBinaryFiveRadiusOneUpper, h] using trivialUpper_valid q n r

def smallExplicitBinaryFiveRadiusOneUpperSource : UpperBoundSource where
  value := smallExplicitBinaryFiveRadiusOneUpper
  trace := fun q n r =>
    .primitive smallExplicitBinaryFiveRadiusOneUpperName
      (smallExplicitBinaryFiveRadiusOneUpper_valid q n r)

end Database
end CoveringCodes
