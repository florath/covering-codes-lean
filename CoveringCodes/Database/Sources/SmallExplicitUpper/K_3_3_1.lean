import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_3(3,1)`

This module contains the standalone explicit-code certificate witnessing
`K_3(3,1)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f3_0 : Fin 3 := ⟨0, by decide⟩
private abbrev f3_1 : Fin 3 := ⟨1, by decide⟩
private abbrev f3_2 : Fin 3 := ⟨2, by decide⟩

private def ternary331Code : Finset (QaryWord 3 3) :=
  {![f3_0, f3_0, f3_0],
    ![f3_0, f3_1, f3_1],
    ![f3_1, f3_0, f3_1],
    ![f3_1, f3_1, f3_0],
    ![f3_2, f3_2, f3_2]}

private theorem ternary331_card :
    ternary331Code.card ≤ 5 := by
  covering_decide

private theorem ternary331_covers :
    CoversFinset ternary331Code 1 := by
  show ∀ x : QaryWord 3 3,
    ∃ c : QaryWord 3 3, c ∈ ternary331Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitTernary331UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitTernary331Explicit : ExplicitQaryUpper 3 3 1 5 :=
  { code := ternary331Code
    card_le := ternary331_card
    covers := ternary331_covers }

def smallExplicitTernary331Upper (q n r : Nat) : Nat :=
  if q = 3 ∧ n = 3 ∧ r = 1 then 5 else trivialUpper q n r

theorem smallExplicitTernary331Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitTernary331Upper q n r) := by
  by_cases h : q = 3 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitTernary331Upper] using
      smallExplicitTernary331Explicit.toUpper
  · simpa [smallExplicitTernary331Upper, h] using trivialUpper_valid q n r

def smallExplicitTernary331UpperSource : UpperBoundSource where
  value := smallExplicitTernary331Upper
  trace := fun q n r =>
    .primitive smallExplicitTernary331UpperName
      (smallExplicitTernary331Upper_valid q n r)

end Database
end CoveringCodes
