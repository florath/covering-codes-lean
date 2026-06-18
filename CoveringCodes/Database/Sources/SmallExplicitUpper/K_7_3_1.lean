import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_7(3,1)`

This module contains the standalone explicit-code certificate witnessing
`K_7(3,1)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f7_0 : Fin 7 := ⟨0, by decide⟩
private abbrev f7_1 : Fin 7 := ⟨1, by decide⟩
private abbrev f7_2 : Fin 7 := ⟨2, by decide⟩
private abbrev f7_3 : Fin 7 := ⟨3, by decide⟩
private abbrev f7_4 : Fin 7 := ⟨4, by decide⟩
private abbrev f7_5 : Fin 7 := ⟨5, by decide⟩
private abbrev f7_6 : Fin 7 := ⟨6, by decide⟩

private def septenary731Code : Finset (QaryWord 7 3) :=
  {![f7_0, f7_0, f7_0],
    ![f7_4, f7_2, f7_0],
    ![f7_5, f7_5, f7_0],
    ![f7_6, f7_1, f7_1],
    ![f7_2, f7_3, f7_1],
    ![f7_1, f7_4, f7_1],
    ![f7_3, f7_6, f7_1],
    ![f7_1, f7_1, f7_2],
    ![f7_3, f7_3, f7_2],
    ![f7_6, f7_4, f7_2],
    ![f7_2, f7_6, f7_2],
    ![f7_5, f7_0, f7_3],
    ![f7_0, f7_2, f7_3],
    ![f7_4, f7_5, f7_3],
    ![f7_2, f7_1, f7_4],
    ![f7_1, f7_3, f7_4],
    ![f7_3, f7_4, f7_4],
    ![f7_6, f7_6, f7_4],
    ![f7_3, f7_1, f7_5],
    ![f7_6, f7_3, f7_5],
    ![f7_2, f7_4, f7_5],
    ![f7_1, f7_6, f7_5],
    ![f7_4, f7_0, f7_6],
    ![f7_5, f7_2, f7_6],
    ![f7_0, f7_5, f7_6]}

private theorem septenary731_card :
    septenary731Code.card ≤ 25 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem septenary731_covers :
    CoversFinset septenary731Code 1 := by
  show ∀ x : QaryWord 7 3,
    ∃ c : QaryWord 7 3, c ∈ septenary731Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitSeptenary731UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitSeptenary731Explicit : ExplicitQaryUpper 7 3 1 25 :=
  { code := septenary731Code
    card_le := septenary731_card
    covers := septenary731_covers }

def smallExplicitSeptenary731Upper (q n r : Nat) : Nat :=
  if q = 7 ∧ n = 3 ∧ r = 1 then 25 else trivialUpper q n r

theorem smallExplicitSeptenary731Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitSeptenary731Upper q n r) := by
  by_cases h : q = 7 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitSeptenary731Upper] using
      smallExplicitSeptenary731Explicit.toUpper
  · simpa [smallExplicitSeptenary731Upper, h] using trivialUpper_valid q n r

def smallExplicitSeptenary731UpperSource : UpperBoundSource where
  value := smallExplicitSeptenary731Upper
  trace := fun q n r =>
    .primitive smallExplicitSeptenary731UpperName
      (smallExplicitSeptenary731Upper_valid q n r)

end Database
end CoveringCodes
