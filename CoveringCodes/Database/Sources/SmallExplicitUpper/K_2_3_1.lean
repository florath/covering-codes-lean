import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_2(3,1)`

This module contains the standalone explicit-code certificate witnessing
`K_2(3,1)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f2_0 : Fin 2 := ⟨0, by decide⟩
private abbrev f2_1 : Fin 2 := ⟨1, by decide⟩

private def binaryRepetition3Code : Finset (QaryWord 2 3) :=
  {![f2_0, f2_0, f2_0], ![f2_1, f2_1, f2_1]}

private theorem binaryRepetition3_card :
    binaryRepetition3Code.card ≤ 2 := by
  covering_decide

private theorem binaryRepetition3_covers :
    CoversFinset binaryRepetition3Code 1 := by
  show ∀ x : QaryWord 2 3,
    ∃ c : QaryWord 2 3, c ∈ binaryRepetition3Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitBinaryRepetition3UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitBinaryRepetition3Explicit : ExplicitQaryUpper 2 3 1 2 :=
  { code := binaryRepetition3Code
    card_le := binaryRepetition3_card
    covers := binaryRepetition3_covers }

def smallExplicitBinaryRepetition3Upper (q n r : Nat) : Nat :=
  if q = 2 ∧ n = 3 ∧ r = 1 then 2 else trivialUpper q n r

theorem smallExplicitBinaryRepetition3Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitBinaryRepetition3Upper q n r) := by
  by_cases h : q = 2 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitBinaryRepetition3Upper] using
      smallExplicitBinaryRepetition3Explicit.toUpper
  · simpa [smallExplicitBinaryRepetition3Upper, h] using trivialUpper_valid q n r

def smallExplicitBinaryRepetition3UpperSource : UpperBoundSource where
  value := smallExplicitBinaryRepetition3Upper
  trace := fun q n r =>
    .primitive smallExplicitBinaryRepetition3UpperName
      (smallExplicitBinaryRepetition3Upper_valid q n r)

end Database
end CoveringCodes
