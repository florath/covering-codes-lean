import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_17(3,1)`

This module contains the standalone explicit-code certificate witnessing
`K_17(3,1)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f17_0 : Fin 17 := ⟨0, by decide⟩
private abbrev f17_1 : Fin 17 := ⟨1, by decide⟩
private abbrev f17_2 : Fin 17 := ⟨2, by decide⟩
private abbrev f17_3 : Fin 17 := ⟨3, by decide⟩
private abbrev f17_4 : Fin 17 := ⟨4, by decide⟩
private abbrev f17_5 : Fin 17 := ⟨5, by decide⟩
private abbrev f17_6 : Fin 17 := ⟨6, by decide⟩
private abbrev f17_7 : Fin 17 := ⟨7, by decide⟩
private abbrev f17_8 : Fin 17 := ⟨8, by decide⟩
private abbrev f17_9 : Fin 17 := ⟨9, by decide⟩
private abbrev f17_10 : Fin 17 := ⟨10, by decide⟩
private abbrev f17_11 : Fin 17 := ⟨11, by decide⟩
private abbrev f17_12 : Fin 17 := ⟨12, by decide⟩
private abbrev f17_13 : Fin 17 := ⟨13, by decide⟩
private abbrev f17_14 : Fin 17 := ⟨14, by decide⟩
private abbrev f17_15 : Fin 17 := ⟨15, by decide⟩
private abbrev f17_16 : Fin 17 := ⟨16, by decide⟩

private def seventeenary1731Code : Finset (QaryWord 17 3) :=
  {![f17_0, f17_0, f17_0],
    ![f17_1, f17_1, f17_0],
    ![f17_2, f17_2, f17_0],
    ![f17_3, f17_3, f17_0],
    ![f17_4, f17_4, f17_0],
    ![f17_5, f17_5, f17_0],
    ![f17_6, f17_6, f17_0],
    ![f17_7, f17_7, f17_0],
    ![f17_0, f17_1, f17_1],
    ![f17_1, f17_2, f17_1],
    ![f17_2, f17_3, f17_1],
    ![f17_3, f17_4, f17_1],
    ![f17_4, f17_5, f17_1],
    ![f17_5, f17_6, f17_1],
    ![f17_6, f17_7, f17_1],
    ![f17_7, f17_0, f17_1],
    ![f17_0, f17_2, f17_2],
    ![f17_1, f17_3, f17_2],
    ![f17_2, f17_4, f17_2],
    ![f17_3, f17_5, f17_2],
    ![f17_4, f17_6, f17_2],
    ![f17_5, f17_7, f17_2],
    ![f17_6, f17_0, f17_2],
    ![f17_7, f17_1, f17_2],
    ![f17_0, f17_3, f17_3],
    ![f17_1, f17_4, f17_3],
    ![f17_2, f17_5, f17_3],
    ![f17_3, f17_6, f17_3],
    ![f17_4, f17_7, f17_3],
    ![f17_5, f17_0, f17_3],
    ![f17_6, f17_1, f17_3],
    ![f17_7, f17_2, f17_3],
    ![f17_0, f17_4, f17_4],
    ![f17_1, f17_5, f17_4],
    ![f17_2, f17_6, f17_4],
    ![f17_3, f17_7, f17_4],
    ![f17_4, f17_0, f17_4],
    ![f17_5, f17_1, f17_4],
    ![f17_6, f17_2, f17_4],
    ![f17_7, f17_3, f17_4],
    ![f17_0, f17_5, f17_5],
    ![f17_1, f17_6, f17_5],
    ![f17_2, f17_7, f17_5],
    ![f17_3, f17_0, f17_5],
    ![f17_4, f17_1, f17_5],
    ![f17_5, f17_2, f17_5],
    ![f17_6, f17_3, f17_5],
    ![f17_7, f17_4, f17_5],
    ![f17_0, f17_6, f17_6],
    ![f17_1, f17_7, f17_6],
    ![f17_2, f17_0, f17_6],
    ![f17_3, f17_1, f17_6],
    ![f17_4, f17_2, f17_6],
    ![f17_5, f17_3, f17_6],
    ![f17_6, f17_4, f17_6],
    ![f17_7, f17_5, f17_6],
    ![f17_0, f17_7, f17_7],
    ![f17_1, f17_0, f17_7],
    ![f17_2, f17_1, f17_7],
    ![f17_3, f17_2, f17_7],
    ![f17_4, f17_3, f17_7],
    ![f17_5, f17_4, f17_7],
    ![f17_6, f17_5, f17_7],
    ![f17_7, f17_6, f17_7],
    ![f17_8, f17_8, f17_8],
    ![f17_9, f17_9, f17_8],
    ![f17_10, f17_10, f17_8],
    ![f17_11, f17_11, f17_8],
    ![f17_12, f17_12, f17_8],
    ![f17_13, f17_13, f17_8],
    ![f17_14, f17_14, f17_8],
    ![f17_15, f17_15, f17_8],
    ![f17_16, f17_16, f17_8],
    ![f17_8, f17_9, f17_9],
    ![f17_9, f17_10, f17_9],
    ![f17_10, f17_11, f17_9],
    ![f17_11, f17_12, f17_9],
    ![f17_12, f17_13, f17_9],
    ![f17_13, f17_14, f17_9],
    ![f17_14, f17_15, f17_9],
    ![f17_15, f17_16, f17_9],
    ![f17_16, f17_8, f17_9],
    ![f17_8, f17_10, f17_10],
    ![f17_9, f17_11, f17_10],
    ![f17_10, f17_12, f17_10],
    ![f17_11, f17_13, f17_10],
    ![f17_12, f17_14, f17_10],
    ![f17_13, f17_15, f17_10],
    ![f17_14, f17_16, f17_10],
    ![f17_15, f17_8, f17_10],
    ![f17_16, f17_9, f17_10],
    ![f17_8, f17_11, f17_11],
    ![f17_9, f17_12, f17_11],
    ![f17_10, f17_13, f17_11],
    ![f17_11, f17_14, f17_11],
    ![f17_12, f17_15, f17_11],
    ![f17_13, f17_16, f17_11],
    ![f17_14, f17_8, f17_11],
    ![f17_15, f17_9, f17_11],
    ![f17_16, f17_10, f17_11],
    ![f17_8, f17_12, f17_12],
    ![f17_9, f17_13, f17_12],
    ![f17_10, f17_14, f17_12],
    ![f17_11, f17_15, f17_12],
    ![f17_12, f17_16, f17_12],
    ![f17_13, f17_8, f17_12],
    ![f17_14, f17_9, f17_12],
    ![f17_15, f17_10, f17_12],
    ![f17_16, f17_11, f17_12],
    ![f17_8, f17_13, f17_13],
    ![f17_9, f17_14, f17_13],
    ![f17_10, f17_15, f17_13],
    ![f17_11, f17_16, f17_13],
    ![f17_12, f17_8, f17_13],
    ![f17_13, f17_9, f17_13],
    ![f17_14, f17_10, f17_13],
    ![f17_15, f17_11, f17_13],
    ![f17_16, f17_12, f17_13],
    ![f17_8, f17_14, f17_14],
    ![f17_9, f17_15, f17_14],
    ![f17_10, f17_16, f17_14],
    ![f17_11, f17_8, f17_14],
    ![f17_12, f17_9, f17_14],
    ![f17_13, f17_10, f17_14],
    ![f17_14, f17_11, f17_14],
    ![f17_15, f17_12, f17_14],
    ![f17_16, f17_13, f17_14],
    ![f17_8, f17_15, f17_15],
    ![f17_9, f17_16, f17_15],
    ![f17_10, f17_8, f17_15],
    ![f17_11, f17_9, f17_15],
    ![f17_12, f17_10, f17_15],
    ![f17_13, f17_11, f17_15],
    ![f17_14, f17_12, f17_15],
    ![f17_15, f17_13, f17_15],
    ![f17_16, f17_14, f17_15],
    ![f17_8, f17_16, f17_16],
    ![f17_9, f17_8, f17_16],
    ![f17_10, f17_9, f17_16],
    ![f17_11, f17_10, f17_16],
    ![f17_12, f17_11, f17_16],
    ![f17_13, f17_12, f17_16],
    ![f17_14, f17_13, f17_16],
    ![f17_15, f17_14, f17_16],
    ![f17_16, f17_15, f17_16]}

set_option maxRecDepth 10000 in
private theorem seventeenary1731_card :
    seventeenary1731Code.card ≤ 145 := by
  covering_decide

set_option maxRecDepth 120000 in
set_option maxHeartbeats 256000000 in
private theorem seventeenary1731_covers :
    CoversFinset seventeenary1731Code 1 := by
  show ∀ x : QaryWord 17 3,
    ∃ c : QaryWord 17 3, c ∈ seventeenary1731Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitSeventeenary1731UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitSeventeenary1731Explicit : ExplicitQaryUpper 17 3 1 145 :=
  { code := seventeenary1731Code
    card_le := seventeenary1731_card
    covers := seventeenary1731_covers }

def smallExplicitSeventeenary1731Upper (q n r : Nat) : Nat :=
  if q = 17 ∧ n = 3 ∧ r = 1 then 145 else trivialUpper q n r

theorem smallExplicitSeventeenary1731Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitSeventeenary1731Upper q n r) := by
  by_cases h : q = 17 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitSeventeenary1731Upper] using
      smallExplicitSeventeenary1731Explicit.toUpper
  · simpa [smallExplicitSeventeenary1731Upper, h] using trivialUpper_valid q n r

def smallExplicitSeventeenary1731UpperSource : UpperBoundSource where
  value := smallExplicitSeventeenary1731Upper
  trace := fun q n r =>
    .primitive smallExplicitSeventeenary1731UpperName
      (smallExplicitSeventeenary1731Upper_valid q n r)

end Database
end CoveringCodes
