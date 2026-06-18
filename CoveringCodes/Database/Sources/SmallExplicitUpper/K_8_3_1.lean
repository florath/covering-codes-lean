import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_8(3,1)`

This module contains the standalone explicit-code certificate witnessing
`K_8(3,1)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f8_0 : Fin 8 := ⟨0, by decide⟩
private abbrev f8_1 : Fin 8 := ⟨1, by decide⟩
private abbrev f8_2 : Fin 8 := ⟨2, by decide⟩
private abbrev f8_3 : Fin 8 := ⟨3, by decide⟩
private abbrev f8_4 : Fin 8 := ⟨4, by decide⟩
private abbrev f8_5 : Fin 8 := ⟨5, by decide⟩
private abbrev f8_6 : Fin 8 := ⟨6, by decide⟩
private abbrev f8_7 : Fin 8 := ⟨7, by decide⟩

private def octonary831Code : Finset (QaryWord 8 3) :=
  {![f8_0, f8_0, f8_0],
    ![f8_2, f8_1, f8_0],
    ![f8_3, f8_2, f8_0],
    ![f8_6, f8_3, f8_0],
    ![f8_7, f8_4, f8_1],
    ![f8_4, f8_5, f8_1],
    ![f8_1, f8_6, f8_1],
    ![f8_5, f8_7, f8_1],
    ![f8_5, f8_4, f8_2],
    ![f8_1, f8_5, f8_2],
    ![f8_7, f8_6, f8_2],
    ![f8_4, f8_7, f8_2],
    ![f8_3, f8_0, f8_3],
    ![f8_0, f8_1, f8_3],
    ![f8_6, f8_2, f8_3],
    ![f8_2, f8_3, f8_3],
    ![f8_6, f8_0, f8_4],
    ![f8_3, f8_1, f8_4],
    ![f8_2, f8_2, f8_4],
    ![f8_0, f8_3, f8_4],
    ![f8_4, f8_4, f8_5],
    ![f8_7, f8_5, f8_5],
    ![f8_5, f8_6, f8_5],
    ![f8_1, f8_7, f8_5],
    ![f8_2, f8_0, f8_6],
    ![f8_6, f8_1, f8_6],
    ![f8_0, f8_2, f8_6],
    ![f8_3, f8_3, f8_6],
    ![f8_1, f8_4, f8_7],
    ![f8_5, f8_5, f8_7],
    ![f8_4, f8_6, f8_7],
    ![f8_7, f8_7, f8_7]}

private theorem octonary831_card :
    octonary831Code.card ≤ 32 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem octonary831_covers :
    CoversFinset octonary831Code 1 := by
  show ∀ x : QaryWord 8 3,
    ∃ c : QaryWord 8 3, c ∈ octonary831Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitOctonary831UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitOctonary831Explicit : ExplicitQaryUpper 8 3 1 32 :=
  { code := octonary831Code
    card_le := octonary831_card
    covers := octonary831_covers }

def smallExplicitOctonary831Upper (q n r : Nat) : Nat :=
  if q = 8 ∧ n = 3 ∧ r = 1 then 32 else trivialUpper q n r

theorem smallExplicitOctonary831Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitOctonary831Upper q n r) := by
  by_cases h : q = 8 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitOctonary831Upper] using
      smallExplicitOctonary831Explicit.toUpper
  · simpa [smallExplicitOctonary831Upper, h] using trivialUpper_valid q n r

def smallExplicitOctonary831UpperSource : UpperBoundSource where
  value := smallExplicitOctonary831Upper
  trace := fun q n r =>
    .primitive smallExplicitOctonary831UpperName
      (smallExplicitOctonary831Upper_valid q n r)

end Database
end CoveringCodes
