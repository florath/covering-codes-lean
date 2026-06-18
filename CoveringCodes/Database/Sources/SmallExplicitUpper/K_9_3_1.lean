import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_9(3,1)`

This module contains the standalone explicit-code certificate witnessing
`K_9(3,1)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f9_0 : Fin 9 := ⟨0, by decide⟩
private abbrev f9_1 : Fin 9 := ⟨1, by decide⟩
private abbrev f9_2 : Fin 9 := ⟨2, by decide⟩
private abbrev f9_3 : Fin 9 := ⟨3, by decide⟩
private abbrev f9_4 : Fin 9 := ⟨4, by decide⟩
private abbrev f9_5 : Fin 9 := ⟨5, by decide⟩
private abbrev f9_6 : Fin 9 := ⟨6, by decide⟩
private abbrev f9_7 : Fin 9 := ⟨7, by decide⟩
private abbrev f9_8 : Fin 9 := ⟨8, by decide⟩

private def nonary931Code : Finset (QaryWord 9 3) :=
  {![f9_0, f9_0, f9_0],
    ![f9_3, f9_1, f9_0],
    ![f9_5, f9_3, f9_0],
    ![f9_2, f9_8, f9_0],
    ![f9_5, f9_0, f9_1],
    ![f9_2, f9_1, f9_1],
    ![f9_0, f9_3, f9_1],
    ![f9_3, f9_8, f9_1],
    ![f9_4, f9_2, f9_2],
    ![f9_6, f9_4, f9_2],
    ![f9_1, f9_5, f9_2],
    ![f9_8, f9_6, f9_2],
    ![f9_7, f9_7, f9_2],
    ![f9_1, f9_2, f9_3],
    ![f9_7, f9_4, f9_3],
    ![f9_6, f9_5, f9_3],
    ![f9_4, f9_6, f9_3],
    ![f9_8, f9_7, f9_3],
    ![f9_6, f9_2, f9_4],
    ![f9_1, f9_4, f9_4],
    ![f9_8, f9_5, f9_4],
    ![f9_7, f9_6, f9_4],
    ![f9_4, f9_7, f9_4],
    ![f9_7, f9_2, f9_5],
    ![f9_8, f9_4, f9_5],
    ![f9_4, f9_5, f9_5],
    ![f9_6, f9_6, f9_5],
    ![f9_1, f9_7, f9_5],
    ![f9_2, f9_0, f9_6],
    ![f9_0, f9_1, f9_6],
    ![f9_3, f9_3, f9_6],
    ![f9_5, f9_8, f9_6],
    ![f9_8, f9_2, f9_7],
    ![f9_4, f9_4, f9_7],
    ![f9_7, f9_5, f9_7],
    ![f9_1, f9_6, f9_7],
    ![f9_6, f9_7, f9_7],
    ![f9_3, f9_0, f9_8],
    ![f9_5, f9_1, f9_8],
    ![f9_2, f9_3, f9_8],
    ![f9_0, f9_8, f9_8]}

private theorem nonary931_card :
    nonary931Code.card ≤ 41 := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem nonary931_covers :
    CoversFinset nonary931Code 1 := by
  show ∀ x : QaryWord 9 3,
    ∃ c : QaryWord 9 3, c ∈ nonary931Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitNonary931UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitNonary931Explicit : ExplicitQaryUpper 9 3 1 41 :=
  { code := nonary931Code
    card_le := nonary931_card
    covers := nonary931_covers }

def smallExplicitNonary931Upper (q n r : Nat) : Nat :=
  if q = 9 ∧ n = 3 ∧ r = 1 then 41 else trivialUpper q n r

theorem smallExplicitNonary931Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitNonary931Upper q n r) := by
  by_cases h : q = 9 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitNonary931Upper] using
      smallExplicitNonary931Explicit.toUpper
  · simpa [smallExplicitNonary931Upper, h] using trivialUpper_valid q n r

def smallExplicitNonary931UpperSource : UpperBoundSource where
  value := smallExplicitNonary931Upper
  trace := fun q n r =>
    .primitive smallExplicitNonary931UpperName
      (smallExplicitNonary931Upper_valid q n r)

end Database
end CoveringCodes
