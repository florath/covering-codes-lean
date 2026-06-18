import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_2(7,1)`

This module contains the standalone explicit-code certificate witnessing
`K_2(7,1)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f2_0 : Fin 2 := ⟨0, by decide⟩
private abbrev f2_1 : Fin 2 := ⟨1, by decide⟩

private def binaryHamming7Code : Finset (QaryWord 2 7) :=
  {![f2_0, f2_0, f2_0, f2_0, f2_0, f2_0, f2_0],
    ![f2_1, f2_1, f2_1, f2_0, f2_0, f2_0, f2_0],
    ![f2_1, f2_0, f2_0, f2_1, f2_1, f2_0, f2_0],
    ![f2_0, f2_1, f2_1, f2_1, f2_1, f2_0, f2_0],
    ![f2_0, f2_1, f2_0, f2_1, f2_0, f2_1, f2_0],
    ![f2_1, f2_0, f2_1, f2_1, f2_0, f2_1, f2_0],
    ![f2_1, f2_1, f2_0, f2_0, f2_1, f2_1, f2_0],
    ![f2_0, f2_0, f2_1, f2_0, f2_1, f2_1, f2_0],
    ![f2_1, f2_1, f2_0, f2_1, f2_0, f2_0, f2_1],
    ![f2_0, f2_0, f2_1, f2_1, f2_0, f2_0, f2_1],
    ![f2_0, f2_1, f2_0, f2_0, f2_1, f2_0, f2_1],
    ![f2_1, f2_0, f2_1, f2_0, f2_1, f2_0, f2_1],
    ![f2_1, f2_0, f2_0, f2_0, f2_0, f2_1, f2_1],
    ![f2_0, f2_1, f2_1, f2_0, f2_0, f2_1, f2_1],
    ![f2_0, f2_0, f2_0, f2_1, f2_1, f2_1, f2_1],
    ![f2_1, f2_1, f2_1, f2_1, f2_1, f2_1, f2_1]}

private theorem binaryHamming7_card :
    binaryHamming7Code.card ≤ 16 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem binaryHamming7_covers :
    CoversFinset binaryHamming7Code 1 := by
  show ∀ x : QaryWord 2 7,
    ∃ c : QaryWord 2 7, c ∈ binaryHamming7Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitBinaryHamming7UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitBinaryHamming7Explicit : ExplicitQaryUpper 2 7 1 16 :=
  { code := binaryHamming7Code
    card_le := binaryHamming7_card
    covers := binaryHamming7_covers }

def smallExplicitBinaryHamming7Upper (q n r : Nat) : Nat :=
  if q = 2 ∧ n = 7 ∧ r = 1 then 16 else trivialUpper q n r

theorem smallExplicitBinaryHamming7Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitBinaryHamming7Upper q n r) := by
  by_cases h : q = 2 ∧ n = 7 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitBinaryHamming7Upper] using
      smallExplicitBinaryHamming7Explicit.toUpper
  · simpa [smallExplicitBinaryHamming7Upper, h] using trivialUpper_valid q n r

def smallExplicitBinaryHamming7UpperSource : UpperBoundSource where
  value := smallExplicitBinaryHamming7Upper
  trace := fun q n r =>
    .primitive smallExplicitBinaryHamming7UpperName
      (smallExplicitBinaryHamming7Upper_valid q n r)

end Database
end CoveringCodes
