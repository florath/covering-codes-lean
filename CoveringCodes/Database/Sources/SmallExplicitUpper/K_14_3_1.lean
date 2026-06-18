import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_14(3,1)`

This module contains the standalone explicit-code certificate witnessing
`K_14(3,1)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f14_0 : Fin 14 := ⟨0, by decide⟩
private abbrev f14_1 : Fin 14 := ⟨1, by decide⟩
private abbrev f14_2 : Fin 14 := ⟨2, by decide⟩
private abbrev f14_3 : Fin 14 := ⟨3, by decide⟩
private abbrev f14_4 : Fin 14 := ⟨4, by decide⟩
private abbrev f14_5 : Fin 14 := ⟨5, by decide⟩
private abbrev f14_6 : Fin 14 := ⟨6, by decide⟩
private abbrev f14_7 : Fin 14 := ⟨7, by decide⟩
private abbrev f14_8 : Fin 14 := ⟨8, by decide⟩
private abbrev f14_9 : Fin 14 := ⟨9, by decide⟩
private abbrev f14_10 : Fin 14 := ⟨10, by decide⟩
private abbrev f14_11 : Fin 14 := ⟨11, by decide⟩
private abbrev f14_12 : Fin 14 := ⟨12, by decide⟩
private abbrev f14_13 : Fin 14 := ⟨13, by decide⟩

private def fourteenary1431Code : Finset (QaryWord 14 3) :=
  {![f14_0, f14_0, f14_0],
    ![f14_1, f14_1, f14_0],
    ![f14_2, f14_2, f14_0],
    ![f14_3, f14_3, f14_0],
    ![f14_4, f14_4, f14_0],
    ![f14_5, f14_5, f14_0],
    ![f14_6, f14_6, f14_0],
    ![f14_0, f14_1, f14_1],
    ![f14_1, f14_2, f14_1],
    ![f14_2, f14_3, f14_1],
    ![f14_3, f14_4, f14_1],
    ![f14_4, f14_5, f14_1],
    ![f14_5, f14_6, f14_1],
    ![f14_6, f14_0, f14_1],
    ![f14_0, f14_2, f14_2],
    ![f14_1, f14_3, f14_2],
    ![f14_2, f14_4, f14_2],
    ![f14_3, f14_5, f14_2],
    ![f14_4, f14_6, f14_2],
    ![f14_5, f14_0, f14_2],
    ![f14_6, f14_1, f14_2],
    ![f14_0, f14_3, f14_3],
    ![f14_1, f14_4, f14_3],
    ![f14_2, f14_5, f14_3],
    ![f14_3, f14_6, f14_3],
    ![f14_4, f14_0, f14_3],
    ![f14_5, f14_1, f14_3],
    ![f14_6, f14_2, f14_3],
    ![f14_0, f14_4, f14_4],
    ![f14_1, f14_5, f14_4],
    ![f14_2, f14_6, f14_4],
    ![f14_3, f14_0, f14_4],
    ![f14_4, f14_1, f14_4],
    ![f14_5, f14_2, f14_4],
    ![f14_6, f14_3, f14_4],
    ![f14_0, f14_5, f14_5],
    ![f14_1, f14_6, f14_5],
    ![f14_2, f14_0, f14_5],
    ![f14_3, f14_1, f14_5],
    ![f14_4, f14_2, f14_5],
    ![f14_5, f14_3, f14_5],
    ![f14_6, f14_4, f14_5],
    ![f14_0, f14_6, f14_6],
    ![f14_1, f14_0, f14_6],
    ![f14_2, f14_1, f14_6],
    ![f14_3, f14_2, f14_6],
    ![f14_4, f14_3, f14_6],
    ![f14_5, f14_4, f14_6],
    ![f14_6, f14_5, f14_6],
    ![f14_7, f14_7, f14_7],
    ![f14_8, f14_8, f14_7],
    ![f14_9, f14_9, f14_7],
    ![f14_10, f14_10, f14_7],
    ![f14_11, f14_11, f14_7],
    ![f14_12, f14_12, f14_7],
    ![f14_13, f14_13, f14_7],
    ![f14_7, f14_8, f14_8],
    ![f14_8, f14_9, f14_8],
    ![f14_9, f14_10, f14_8],
    ![f14_10, f14_11, f14_8],
    ![f14_11, f14_12, f14_8],
    ![f14_12, f14_13, f14_8],
    ![f14_13, f14_7, f14_8],
    ![f14_7, f14_9, f14_9],
    ![f14_8, f14_10, f14_9],
    ![f14_9, f14_11, f14_9],
    ![f14_10, f14_12, f14_9],
    ![f14_11, f14_13, f14_9],
    ![f14_12, f14_7, f14_9],
    ![f14_13, f14_8, f14_9],
    ![f14_7, f14_10, f14_10],
    ![f14_8, f14_11, f14_10],
    ![f14_9, f14_12, f14_10],
    ![f14_10, f14_13, f14_10],
    ![f14_11, f14_7, f14_10],
    ![f14_12, f14_8, f14_10],
    ![f14_13, f14_9, f14_10],
    ![f14_7, f14_11, f14_11],
    ![f14_8, f14_12, f14_11],
    ![f14_9, f14_13, f14_11],
    ![f14_10, f14_7, f14_11],
    ![f14_11, f14_8, f14_11],
    ![f14_12, f14_9, f14_11],
    ![f14_13, f14_10, f14_11],
    ![f14_7, f14_12, f14_12],
    ![f14_8, f14_13, f14_12],
    ![f14_9, f14_7, f14_12],
    ![f14_10, f14_8, f14_12],
    ![f14_11, f14_9, f14_12],
    ![f14_12, f14_10, f14_12],
    ![f14_13, f14_11, f14_12],
    ![f14_7, f14_13, f14_13],
    ![f14_8, f14_7, f14_13],
    ![f14_9, f14_8, f14_13],
    ![f14_10, f14_9, f14_13],
    ![f14_11, f14_10, f14_13],
    ![f14_12, f14_11, f14_13],
    ![f14_13, f14_12, f14_13]}

set_option maxRecDepth 10000 in
private theorem fourteenary1431_card :
    fourteenary1431Code.card ≤ 98 := by
  covering_decide

set_option maxRecDepth 30000 in
set_option maxHeartbeats 32000000 in
private theorem fourteenary1431_covers :
    CoversFinset fourteenary1431Code 1 := by
  show ∀ x : QaryWord 14 3,
    ∃ c : QaryWord 14 3, c ∈ fourteenary1431Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitFourteenary1431UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitFourteenary1431Explicit : ExplicitQaryUpper 14 3 1 98 :=
  { code := fourteenary1431Code
    card_le := fourteenary1431_card
    covers := fourteenary1431_covers }

def smallExplicitFourteenary1431Upper (q n r : Nat) : Nat :=
  if q = 14 ∧ n = 3 ∧ r = 1 then 98 else trivialUpper q n r

theorem smallExplicitFourteenary1431Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitFourteenary1431Upper q n r) := by
  by_cases h : q = 14 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitFourteenary1431Upper] using
      smallExplicitFourteenary1431Explicit.toUpper
  · simpa [smallExplicitFourteenary1431Upper, h] using trivialUpper_valid q n r

def smallExplicitFourteenary1431UpperSource : UpperBoundSource where
  value := smallExplicitFourteenary1431Upper
  trace := fun q n r =>
    .primitive smallExplicitFourteenary1431UpperName
      (smallExplicitFourteenary1431Upper_valid q n r)

end Database
end CoveringCodes
