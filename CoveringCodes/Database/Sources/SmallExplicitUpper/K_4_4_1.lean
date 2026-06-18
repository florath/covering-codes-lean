import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_4(4,1)`

This module contains the standalone explicit-code certificate witnessing
`K_4(4,1)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f4_0 : Fin 4 := ⟨0, by decide⟩
private abbrev f4_1 : Fin 4 := ⟨1, by decide⟩
private abbrev f4_2 : Fin 4 := ⟨2, by decide⟩
private abbrev f4_3 : Fin 4 := ⟨3, by decide⟩

private def quaternary441Code : Finset (QaryWord 4 4) :=
  {![f4_0, f4_0, f4_0, f4_0],
    ![f4_0, f4_1, f4_0, f4_0],
    ![f4_2, f4_3, f4_1, f4_0],
    ![f4_3, f4_3, f4_1, f4_0],
    ![f4_1, f4_2, f4_2, f4_0],
    ![f4_1, f4_2, f4_3, f4_0],
    ![f4_1, f4_3, f4_0, f4_1],
    ![f4_0, f4_2, f4_1, f4_1],
    ![f4_3, f4_0, f4_2, f4_1],
    ![f4_2, f4_1, f4_2, f4_1],
    ![f4_2, f4_0, f4_3, f4_1],
    ![f4_3, f4_1, f4_3, f4_1],
    ![f4_2, f4_2, f4_0, f4_2],
    ![f4_3, f4_2, f4_0, f4_2],
    ![f4_1, f4_0, f4_1, f4_2],
    ![f4_1, f4_1, f4_1, f4_2],
    ![f4_0, f4_3, f4_2, f4_2],
    ![f4_0, f4_3, f4_3, f4_2],
    ![f4_1, f4_3, f4_0, f4_3],
    ![f4_0, f4_2, f4_1, f4_3],
    ![f4_2, f4_0, f4_2, f4_3],
    ![f4_3, f4_1, f4_2, f4_3],
    ![f4_3, f4_0, f4_3, f4_3],
    ![f4_2, f4_1, f4_3, f4_3]}

private theorem quaternary441_card :
    quaternary441Code.card ≤ 24 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem quaternary441_covers :
    CoversFinset quaternary441Code 1 := by
  show ∀ x : QaryWord 4 4,
    ∃ c : QaryWord 4 4, c ∈ quaternary441Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitQuaternary441UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitQuaternary441Explicit : ExplicitQaryUpper 4 4 1 24 :=
  { code := quaternary441Code
    card_le := quaternary441_card
    covers := quaternary441_covers }

def smallExplicitQuaternary441Upper (q n r : Nat) : Nat :=
  if q = 4 ∧ n = 4 ∧ r = 1 then 24 else trivialUpper q n r

theorem smallExplicitQuaternary441Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitQuaternary441Upper q n r) := by
  by_cases h : q = 4 ∧ n = 4 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitQuaternary441Upper] using
      smallExplicitQuaternary441Explicit.toUpper
  · simpa [smallExplicitQuaternary441Upper, h] using trivialUpper_valid q n r

def smallExplicitQuaternary441UpperSource : UpperBoundSource where
  value := smallExplicitQuaternary441Upper
  trace := fun q n r =>
    .primitive smallExplicitQuaternary441UpperName
      (smallExplicitQuaternary441Upper_valid q n r)

end Database
end CoveringCodes
