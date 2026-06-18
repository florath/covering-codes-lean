import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_15(3,1)`

This module contains the standalone explicit-code certificate witnessing
`K_15(3,1)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f15_0 : Fin 15 := ⟨0, by decide⟩
private abbrev f15_1 : Fin 15 := ⟨1, by decide⟩
private abbrev f15_2 : Fin 15 := ⟨2, by decide⟩
private abbrev f15_3 : Fin 15 := ⟨3, by decide⟩
private abbrev f15_4 : Fin 15 := ⟨4, by decide⟩
private abbrev f15_5 : Fin 15 := ⟨5, by decide⟩
private abbrev f15_6 : Fin 15 := ⟨6, by decide⟩
private abbrev f15_7 : Fin 15 := ⟨7, by decide⟩
private abbrev f15_8 : Fin 15 := ⟨8, by decide⟩
private abbrev f15_9 : Fin 15 := ⟨9, by decide⟩
private abbrev f15_10 : Fin 15 := ⟨10, by decide⟩
private abbrev f15_11 : Fin 15 := ⟨11, by decide⟩
private abbrev f15_12 : Fin 15 := ⟨12, by decide⟩
private abbrev f15_13 : Fin 15 := ⟨13, by decide⟩
private abbrev f15_14 : Fin 15 := ⟨14, by decide⟩

private def fifteenary1531Code : Finset (QaryWord 15 3) :=
  {![f15_0, f15_0, f15_0],
    ![f15_1, f15_1, f15_0],
    ![f15_2, f15_2, f15_0],
    ![f15_3, f15_3, f15_0],
    ![f15_4, f15_4, f15_0],
    ![f15_5, f15_5, f15_0],
    ![f15_6, f15_6, f15_0],
    ![f15_0, f15_1, f15_1],
    ![f15_1, f15_2, f15_1],
    ![f15_2, f15_3, f15_1],
    ![f15_3, f15_4, f15_1],
    ![f15_4, f15_5, f15_1],
    ![f15_5, f15_6, f15_1],
    ![f15_6, f15_0, f15_1],
    ![f15_0, f15_2, f15_2],
    ![f15_1, f15_3, f15_2],
    ![f15_2, f15_4, f15_2],
    ![f15_3, f15_5, f15_2],
    ![f15_4, f15_6, f15_2],
    ![f15_5, f15_0, f15_2],
    ![f15_6, f15_1, f15_2],
    ![f15_0, f15_3, f15_3],
    ![f15_1, f15_4, f15_3],
    ![f15_2, f15_5, f15_3],
    ![f15_3, f15_6, f15_3],
    ![f15_4, f15_0, f15_3],
    ![f15_5, f15_1, f15_3],
    ![f15_6, f15_2, f15_3],
    ![f15_0, f15_4, f15_4],
    ![f15_1, f15_5, f15_4],
    ![f15_2, f15_6, f15_4],
    ![f15_3, f15_0, f15_4],
    ![f15_4, f15_1, f15_4],
    ![f15_5, f15_2, f15_4],
    ![f15_6, f15_3, f15_4],
    ![f15_0, f15_5, f15_5],
    ![f15_1, f15_6, f15_5],
    ![f15_2, f15_0, f15_5],
    ![f15_3, f15_1, f15_5],
    ![f15_4, f15_2, f15_5],
    ![f15_5, f15_3, f15_5],
    ![f15_6, f15_4, f15_5],
    ![f15_0, f15_6, f15_6],
    ![f15_1, f15_0, f15_6],
    ![f15_2, f15_1, f15_6],
    ![f15_3, f15_2, f15_6],
    ![f15_4, f15_3, f15_6],
    ![f15_5, f15_4, f15_6],
    ![f15_6, f15_5, f15_6],
    ![f15_7, f15_7, f15_7],
    ![f15_8, f15_8, f15_7],
    ![f15_9, f15_9, f15_7],
    ![f15_10, f15_10, f15_7],
    ![f15_11, f15_11, f15_7],
    ![f15_12, f15_12, f15_7],
    ![f15_13, f15_13, f15_7],
    ![f15_14, f15_14, f15_7],
    ![f15_7, f15_8, f15_8],
    ![f15_8, f15_9, f15_8],
    ![f15_9, f15_10, f15_8],
    ![f15_10, f15_11, f15_8],
    ![f15_11, f15_12, f15_8],
    ![f15_12, f15_13, f15_8],
    ![f15_13, f15_14, f15_8],
    ![f15_14, f15_7, f15_8],
    ![f15_7, f15_9, f15_9],
    ![f15_8, f15_10, f15_9],
    ![f15_9, f15_11, f15_9],
    ![f15_10, f15_12, f15_9],
    ![f15_11, f15_13, f15_9],
    ![f15_12, f15_14, f15_9],
    ![f15_13, f15_7, f15_9],
    ![f15_14, f15_8, f15_9],
    ![f15_7, f15_10, f15_10],
    ![f15_8, f15_11, f15_10],
    ![f15_9, f15_12, f15_10],
    ![f15_10, f15_13, f15_10],
    ![f15_11, f15_14, f15_10],
    ![f15_12, f15_7, f15_10],
    ![f15_13, f15_8, f15_10],
    ![f15_14, f15_9, f15_10],
    ![f15_7, f15_11, f15_11],
    ![f15_8, f15_12, f15_11],
    ![f15_9, f15_13, f15_11],
    ![f15_10, f15_14, f15_11],
    ![f15_11, f15_7, f15_11],
    ![f15_12, f15_8, f15_11],
    ![f15_13, f15_9, f15_11],
    ![f15_14, f15_10, f15_11],
    ![f15_7, f15_12, f15_12],
    ![f15_8, f15_13, f15_12],
    ![f15_9, f15_14, f15_12],
    ![f15_10, f15_7, f15_12],
    ![f15_11, f15_8, f15_12],
    ![f15_12, f15_9, f15_12],
    ![f15_13, f15_10, f15_12],
    ![f15_14, f15_11, f15_12],
    ![f15_7, f15_13, f15_13],
    ![f15_8, f15_14, f15_13],
    ![f15_9, f15_7, f15_13],
    ![f15_10, f15_8, f15_13],
    ![f15_11, f15_9, f15_13],
    ![f15_12, f15_10, f15_13],
    ![f15_13, f15_11, f15_13],
    ![f15_14, f15_12, f15_13],
    ![f15_7, f15_14, f15_14],
    ![f15_8, f15_7, f15_14],
    ![f15_9, f15_8, f15_14],
    ![f15_10, f15_9, f15_14],
    ![f15_11, f15_10, f15_14],
    ![f15_12, f15_11, f15_14],
    ![f15_13, f15_12, f15_14],
    ![f15_14, f15_13, f15_14]}

set_option maxRecDepth 10000 in
private theorem fifteenary1531_card :
    fifteenary1531Code.card ≤ 113 := by
  covering_decide

set_option maxRecDepth 50000 in
set_option maxHeartbeats 64000000 in
private theorem fifteenary1531_covers :
    CoversFinset fifteenary1531Code 1 := by
  show ∀ x : QaryWord 15 3,
    ∃ c : QaryWord 15 3, c ∈ fifteenary1531Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitFifteenary1531UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitFifteenary1531Explicit : ExplicitQaryUpper 15 3 1 113 :=
  { code := fifteenary1531Code
    card_le := fifteenary1531_card
    covers := fifteenary1531_covers }

def smallExplicitFifteenary1531Upper (q n r : Nat) : Nat :=
  if q = 15 ∧ n = 3 ∧ r = 1 then 113 else trivialUpper q n r

theorem smallExplicitFifteenary1531Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitFifteenary1531Upper q n r) := by
  by_cases h : q = 15 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitFifteenary1531Upper] using
      smallExplicitFifteenary1531Explicit.toUpper
  · simpa [smallExplicitFifteenary1531Upper, h] using trivialUpper_valid q n r

def smallExplicitFifteenary1531UpperSource : UpperBoundSource where
  value := smallExplicitFifteenary1531Upper
  trace := fun q n r =>
    .primitive smallExplicitFifteenary1531UpperName
      (smallExplicitFifteenary1531Upper_valid q n r)

end Database
end CoveringCodes
