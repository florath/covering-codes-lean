import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_4(3,1)`

This module contains the standalone explicit-code certificate witnessing
`K_4(3,1)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f4_0 : Fin 4 := ⟨0, by decide⟩
private abbrev f4_1 : Fin 4 := ⟨1, by decide⟩
private abbrev f4_2 : Fin 4 := ⟨2, by decide⟩
private abbrev f4_3 : Fin 4 := ⟨3, by decide⟩

private def quaternary331Code : Finset (QaryWord 4 3) :=
  {![f4_0, f4_0, f4_0],
    ![f4_0, f4_2, f4_2],
    ![f4_1, f4_1, f4_1],
    ![f4_1, f4_3, f4_3],
    ![f4_2, f4_1, f4_3],
    ![f4_2, f4_3, f4_1],
    ![f4_3, f4_0, f4_2],
    ![f4_3, f4_2, f4_0]}

private theorem quaternary331_card :
    quaternary331Code.card ≤ 8 := by
  covering_decide

private theorem quaternary331_covers :
    CoversFinset quaternary331Code 1 := by
  show ∀ x : QaryWord 4 3,
    ∃ c : QaryWord 4 3, c ∈ quaternary331Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitQuaternary331UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitQuaternary331Explicit : ExplicitQaryUpper 4 3 1 8 :=
  { code := quaternary331Code
    card_le := quaternary331_card
    covers := quaternary331_covers }

def smallExplicitQuaternary331Upper (q n r : Nat) : Nat :=
  if q = 4 ∧ n = 3 ∧ r = 1 then 8 else trivialUpper q n r

theorem smallExplicitQuaternary331Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitQuaternary331Upper q n r) := by
  by_cases h : q = 4 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitQuaternary331Upper] using
      smallExplicitQuaternary331Explicit.toUpper
  · simpa [smallExplicitQuaternary331Upper, h] using trivialUpper_valid q n r

def smallExplicitQuaternary331UpperSource : UpperBoundSource where
  value := smallExplicitQuaternary331Upper
  trace := fun q n r =>
    .primitive smallExplicitQuaternary331UpperName
      (smallExplicitQuaternary331Upper_valid q n r)

end Database
end CoveringCodes
