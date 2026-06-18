import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_4(4,2)`

This module contains the standalone explicit-code certificate witnessing
`K_4(4,2)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f4_0 : Fin 4 := ⟨0, by decide⟩
private abbrev f4_1 : Fin 4 := ⟨1, by decide⟩
private abbrev f4_2 : Fin 4 := ⟨2, by decide⟩
private abbrev f4_3 : Fin 4 := ⟨3, by decide⟩

private def quaternary442Code : Finset (QaryWord 4 4) :=
  {![f4_0, f4_0, f4_0, f4_0],
    ![f4_1, f4_2, f4_2, f4_0],
    ![f4_3, f4_0, f4_0, f4_1],
    ![f4_3, f4_1, f4_3, f4_1],
    ![f4_1, f4_0, f4_0, f4_2],
    ![f4_0, f4_2, f4_2, f4_2],
    ![f4_2, f4_3, f4_1, f4_3]}

private theorem quaternary442_card :
    quaternary442Code.card ≤ 7 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem quaternary442_covers :
    CoversFinset quaternary442Code 2 := by
  show ∀ x : QaryWord 4 4,
    ∃ c : QaryWord 4 4, c ∈ quaternary442Code ∧ hammingDist x c ≤ 2
  covering_decide

def smallExplicitQuaternary442UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitQuaternary442Explicit : ExplicitQaryUpper 4 4 2 7 :=
  { code := quaternary442Code
    card_le := quaternary442_card
    covers := quaternary442_covers }

def smallExplicitQuaternary442Upper (q n r : Nat) : Nat :=
  if q = 4 ∧ n = 4 ∧ r = 2 then 7 else trivialUpper q n r

theorem smallExplicitQuaternary442Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitQuaternary442Upper q n r) := by
  by_cases h : q = 4 ∧ n = 4 ∧ r = 2
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitQuaternary442Upper] using
      smallExplicitQuaternary442Explicit.toUpper
  · simpa [smallExplicitQuaternary442Upper, h] using trivialUpper_valid q n r

def smallExplicitQuaternary442UpperSource : UpperBoundSource where
  value := smallExplicitQuaternary442Upper
  trace := fun q n r =>
    .primitive smallExplicitQuaternary442UpperName
      (smallExplicitQuaternary442Upper_valid q n r)

end Database
end CoveringCodes
