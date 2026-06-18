import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_3(4,1)`

This module contains the standalone explicit-code certificate witnessing
`K_3(4,1)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f3_0 : Fin 3 := ⟨0, by decide⟩
private abbrev f3_1 : Fin 3 := ⟨1, by decide⟩
private abbrev f3_2 : Fin 3 := ⟨2, by decide⟩

private def ternaryHamming4Code : Finset (QaryWord 3 4) :=
  {![f3_0, f3_0, f3_0, f3_0],
    ![f3_0, f3_1, f3_1, f3_1],
    ![f3_0, f3_2, f3_2, f3_2],
    ![f3_1, f3_0, f3_1, f3_2],
    ![f3_1, f3_1, f3_2, f3_0],
    ![f3_1, f3_2, f3_0, f3_1],
    ![f3_2, f3_0, f3_2, f3_1],
    ![f3_2, f3_1, f3_0, f3_2],
    ![f3_2, f3_2, f3_1, f3_0]}

private theorem ternaryHamming4_card :
    ternaryHamming4Code.card ≤ 9 := by
  covering_decide

private theorem ternaryHamming4_covers :
    CoversFinset ternaryHamming4Code 1 := by
  show ∀ x : QaryWord 3 4,
    ∃ c : QaryWord 3 4, c ∈ ternaryHamming4Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitTernaryHamming4UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitTernaryHamming4Explicit : ExplicitQaryUpper 3 4 1 9 :=
  { code := ternaryHamming4Code
    card_le := ternaryHamming4_card
    covers := ternaryHamming4_covers }

def smallExplicitTernaryHamming4Upper (q n r : Nat) : Nat :=
  if q = 3 ∧ n = 4 ∧ r = 1 then 9 else trivialUpper q n r

theorem smallExplicitTernaryHamming4Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitTernaryHamming4Upper q n r) := by
  by_cases h : q = 3 ∧ n = 4 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitTernaryHamming4Upper] using
      smallExplicitTernaryHamming4Explicit.toUpper
  · simpa [smallExplicitTernaryHamming4Upper, h] using trivialUpper_valid q n r

def smallExplicitTernaryHamming4UpperSource : UpperBoundSource where
  value := smallExplicitTernaryHamming4Upper
  trace := fun q n r =>
    .primitive smallExplicitTernaryHamming4UpperName
      (smallExplicitTernaryHamming4Upper_valid q n r)

end Database
end CoveringCodes
