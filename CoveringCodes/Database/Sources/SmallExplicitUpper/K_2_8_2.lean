import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_2(8,2)`

This module contains the standalone explicit-code certificate witnessing
`K_2(8,2)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f2_0 : Fin 2 := ⟨0, by decide⟩
private abbrev f2_1 : Fin 2 := ⟨1, by decide⟩

private def binaryEightRadiusTwoCode : Finset (QaryWord 2 8) :=
  {![f2_0, f2_0, f2_0, f2_0, f2_0, f2_0, f2_0, f2_0],
    ![f2_1, f2_1, f2_1, f2_1, f2_0, f2_1, f2_0, f2_0],
    ![f2_1, f2_1, f2_0, f2_0, f2_1, f2_1, f2_0, f2_0],
    ![f2_0, f2_1, f2_0, f2_0, f2_1, f2_0, f2_1, f2_0],
    ![f2_0, f2_1, f2_0, f2_1, f2_1, f2_0, f2_1, f2_0],
    ![f2_0, f2_0, f2_1, f2_1, f2_1, f2_1, f2_1, f2_0],
    ![f2_1, f2_1, f2_1, f2_1, f2_0, f2_0, f2_0, f2_1],
    ![f2_1, f2_0, f2_1, f2_1, f2_1, f2_0, f2_0, f2_1],
    ![f2_0, f2_0, f2_0, f2_1, f2_0, f2_1, f2_0, f2_1],
    ![f2_1, f2_0, f2_1, f2_0, f2_0, f2_0, f2_1, f2_1],
    ![f2_1, f2_0, f2_0, f2_1, f2_0, f2_1, f2_1, f2_1],
    ![f2_0, f2_1, f2_1, f2_0, f2_1, f2_1, f2_1, f2_1]}

private theorem binaryEightRadiusTwo_card :
    binaryEightRadiusTwoCode.card ≤ 12 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem binaryEightRadiusTwo_covers :
    CoversFinset binaryEightRadiusTwoCode 2 := by
  show ∀ x : QaryWord 2 8,
    ∃ c : QaryWord 2 8, c ∈ binaryEightRadiusTwoCode ∧ hammingDist x c ≤ 2
  covering_decide

def smallExplicitBinaryEightRadiusTwoUpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitBinaryEightRadiusTwoExplicit : ExplicitQaryUpper 2 8 2 12 :=
  { code := binaryEightRadiusTwoCode
    card_le := binaryEightRadiusTwo_card
    covers := binaryEightRadiusTwo_covers }

def smallExplicitBinaryEightRadiusTwoUpper (q n r : Nat) : Nat :=
  if q = 2 ∧ n = 8 ∧ r = 2 then 12 else trivialUpper q n r

theorem smallExplicitBinaryEightRadiusTwoUpper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitBinaryEightRadiusTwoUpper q n r) := by
  by_cases h : q = 2 ∧ n = 8 ∧ r = 2
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitBinaryEightRadiusTwoUpper] using
      smallExplicitBinaryEightRadiusTwoExplicit.toUpper
  · simpa [smallExplicitBinaryEightRadiusTwoUpper, h] using trivialUpper_valid q n r

def smallExplicitBinaryEightRadiusTwoUpperSource : UpperBoundSource where
  value := smallExplicitBinaryEightRadiusTwoUpper
  trace := fun q n r =>
    .primitive smallExplicitBinaryEightRadiusTwoUpperName
      (smallExplicitBinaryEightRadiusTwoUpper_valid q n r)

end Database
end CoveringCodes
