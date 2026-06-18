import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_2(7,2)`

This module contains the standalone explicit-code certificate witnessing
`K_2(7,2)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f2_0 : Fin 2 := ⟨0, by decide⟩
private abbrev f2_1 : Fin 2 := ⟨1, by decide⟩

private def binarySevenRadiusTwoCode : Finset (QaryWord 2 7) :=
  {![f2_0, f2_0, f2_0, f2_0, f2_0, f2_0, f2_0],
    ![f2_1, f2_0, f2_1, f2_0, f2_1, f2_0, f2_0],
    ![f2_0, f2_0, f2_1, f2_0, f2_1, f2_1, f2_0],
    ![f2_1, f2_0, f2_1, f2_0, f2_1, f2_1, f2_0],
    ![f2_0, f2_1, f2_1, f2_1, f2_0, f2_0, f2_1],
    ![f2_0, f2_1, f2_0, f2_1, f2_1, f2_0, f2_1],
    ![f2_1, f2_1, f2_0, f2_1, f2_0, f2_1, f2_1]}

private theorem binarySevenRadiusTwo_card :
    binarySevenRadiusTwoCode.card ≤ 7 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem binarySevenRadiusTwo_covers :
    CoversFinset binarySevenRadiusTwoCode 2 := by
  show ∀ x : QaryWord 2 7,
    ∃ c : QaryWord 2 7, c ∈ binarySevenRadiusTwoCode ∧ hammingDist x c ≤ 2
  covering_decide

def smallExplicitBinarySevenRadiusTwoUpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitBinarySevenRadiusTwoExplicit : ExplicitQaryUpper 2 7 2 7 :=
  { code := binarySevenRadiusTwoCode
    card_le := binarySevenRadiusTwo_card
    covers := binarySevenRadiusTwo_covers }

def smallExplicitBinarySevenRadiusTwoUpper (q n r : Nat) : Nat :=
  if q = 2 ∧ n = 7 ∧ r = 2 then 7 else trivialUpper q n r

theorem smallExplicitBinarySevenRadiusTwoUpper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitBinarySevenRadiusTwoUpper q n r) := by
  by_cases h : q = 2 ∧ n = 7 ∧ r = 2
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitBinarySevenRadiusTwoUpper] using
      smallExplicitBinarySevenRadiusTwoExplicit.toUpper
  · simpa [smallExplicitBinarySevenRadiusTwoUpper, h] using trivialUpper_valid q n r

def smallExplicitBinarySevenRadiusTwoUpperSource : UpperBoundSource where
  value := smallExplicitBinarySevenRadiusTwoUpper
  trace := fun q n r =>
    .primitive smallExplicitBinarySevenRadiusTwoUpperName
      (smallExplicitBinarySevenRadiusTwoUpper_valid q n r)

end Database
end CoveringCodes
