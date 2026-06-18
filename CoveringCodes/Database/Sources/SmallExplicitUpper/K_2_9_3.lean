import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_2(9,3)`

This module contains the standalone explicit-code certificate witnessing
`K_2(9,3)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f2_0 : Fin 2 := ⟨0, by decide⟩
private abbrev f2_1 : Fin 2 := ⟨1, by decide⟩

private def binaryNineRadiusThreeCode : Finset (QaryWord 2 9) :=
  {![f2_0, f2_0, f2_0, f2_0, f2_0, f2_0, f2_0, f2_0, f2_0],
    ![f2_0, f2_0, f2_0, f2_1, f2_1, f2_1, f2_1, f2_0, f2_0],
    ![f2_1, f2_1, f2_1, f2_1, f2_0, f2_1, f2_1, f2_1, f2_0],
    ![f2_1, f2_1, f2_1, f2_0, f2_1, f2_0, f2_0, f2_0, f2_1],
    ![f2_0, f2_0, f2_0, f2_1, f2_0, f2_1, f2_1, f2_0, f2_1],
    ![f2_0, f2_1, f2_0, f2_0, f2_1, f2_0, f2_0, f2_1, f2_1],
    ![f2_1, f2_0, f2_1, f2_0, f2_1, f2_0, f2_0, f2_1, f2_1]}

private theorem binaryNineRadiusThree_card :
    binaryNineRadiusThreeCode.card ≤ 7 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem binaryNineRadiusThree_covers :
    CoversFinset binaryNineRadiusThreeCode 3 := by
  show ∀ x : QaryWord 2 9,
    ∃ c : QaryWord 2 9, c ∈ binaryNineRadiusThreeCode ∧ hammingDist x c ≤ 3
  covering_decide

def smallExplicitBinaryNineRadiusThreeUpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitBinaryNineRadiusThreeExplicit : ExplicitQaryUpper 2 9 3 7 :=
  { code := binaryNineRadiusThreeCode
    card_le := binaryNineRadiusThree_card
    covers := binaryNineRadiusThree_covers }

def smallExplicitBinaryNineRadiusThreeUpper (q n r : Nat) : Nat :=
  if q = 2 ∧ n = 9 ∧ r = 3 then 7 else trivialUpper q n r

theorem smallExplicitBinaryNineRadiusThreeUpper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitBinaryNineRadiusThreeUpper q n r) := by
  by_cases h : q = 2 ∧ n = 9 ∧ r = 3
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitBinaryNineRadiusThreeUpper] using
      smallExplicitBinaryNineRadiusThreeExplicit.toUpper
  · simpa [smallExplicitBinaryNineRadiusThreeUpper, h] using trivialUpper_valid q n r

def smallExplicitBinaryNineRadiusThreeUpperSource : UpperBoundSource where
  value := smallExplicitBinaryNineRadiusThreeUpper
  trace := fun q n r =>
    .primitive smallExplicitBinaryNineRadiusThreeUpperName
      (smallExplicitBinaryNineRadiusThreeUpper_valid q n r)

end Database
end CoveringCodes
