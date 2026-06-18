import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_13(3,1)`

This module contains the standalone explicit-code certificate witnessing
`K_13(3,1)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f13_0 : Fin 13 := ⟨0, by decide⟩
private abbrev f13_1 : Fin 13 := ⟨1, by decide⟩
private abbrev f13_2 : Fin 13 := ⟨2, by decide⟩
private abbrev f13_3 : Fin 13 := ⟨3, by decide⟩
private abbrev f13_4 : Fin 13 := ⟨4, by decide⟩
private abbrev f13_5 : Fin 13 := ⟨5, by decide⟩
private abbrev f13_6 : Fin 13 := ⟨6, by decide⟩
private abbrev f13_7 : Fin 13 := ⟨7, by decide⟩
private abbrev f13_8 : Fin 13 := ⟨8, by decide⟩
private abbrev f13_9 : Fin 13 := ⟨9, by decide⟩
private abbrev f13_10 : Fin 13 := ⟨10, by decide⟩
private abbrev f13_11 : Fin 13 := ⟨11, by decide⟩
private abbrev f13_12 : Fin 13 := ⟨12, by decide⟩

private def thirteenary1331Code : Finset (QaryWord 13 3) :=
  {![f13_0, f13_0, f13_0],
    ![f13_1, f13_1, f13_0],
    ![f13_2, f13_2, f13_0],
    ![f13_3, f13_3, f13_0],
    ![f13_4, f13_4, f13_0],
    ![f13_5, f13_5, f13_0],
    ![f13_0, f13_1, f13_1],
    ![f13_1, f13_2, f13_1],
    ![f13_2, f13_3, f13_1],
    ![f13_3, f13_4, f13_1],
    ![f13_4, f13_5, f13_1],
    ![f13_5, f13_0, f13_1],
    ![f13_0, f13_2, f13_2],
    ![f13_1, f13_3, f13_2],
    ![f13_2, f13_4, f13_2],
    ![f13_3, f13_5, f13_2],
    ![f13_4, f13_0, f13_2],
    ![f13_5, f13_1, f13_2],
    ![f13_0, f13_3, f13_3],
    ![f13_1, f13_4, f13_3],
    ![f13_2, f13_5, f13_3],
    ![f13_3, f13_0, f13_3],
    ![f13_4, f13_1, f13_3],
    ![f13_5, f13_2, f13_3],
    ![f13_0, f13_4, f13_4],
    ![f13_1, f13_5, f13_4],
    ![f13_2, f13_0, f13_4],
    ![f13_3, f13_1, f13_4],
    ![f13_4, f13_2, f13_4],
    ![f13_5, f13_3, f13_4],
    ![f13_0, f13_5, f13_5],
    ![f13_1, f13_0, f13_5],
    ![f13_2, f13_1, f13_5],
    ![f13_3, f13_2, f13_5],
    ![f13_4, f13_3, f13_5],
    ![f13_5, f13_4, f13_5],
    ![f13_6, f13_6, f13_6],
    ![f13_7, f13_7, f13_6],
    ![f13_8, f13_8, f13_6],
    ![f13_9, f13_9, f13_6],
    ![f13_10, f13_10, f13_6],
    ![f13_11, f13_11, f13_6],
    ![f13_12, f13_12, f13_6],
    ![f13_6, f13_7, f13_7],
    ![f13_7, f13_8, f13_7],
    ![f13_8, f13_9, f13_7],
    ![f13_9, f13_10, f13_7],
    ![f13_10, f13_11, f13_7],
    ![f13_11, f13_12, f13_7],
    ![f13_12, f13_6, f13_7],
    ![f13_6, f13_8, f13_8],
    ![f13_7, f13_9, f13_8],
    ![f13_8, f13_10, f13_8],
    ![f13_9, f13_11, f13_8],
    ![f13_10, f13_12, f13_8],
    ![f13_11, f13_6, f13_8],
    ![f13_12, f13_7, f13_8],
    ![f13_6, f13_9, f13_9],
    ![f13_7, f13_10, f13_9],
    ![f13_8, f13_11, f13_9],
    ![f13_9, f13_12, f13_9],
    ![f13_10, f13_6, f13_9],
    ![f13_11, f13_7, f13_9],
    ![f13_12, f13_8, f13_9],
    ![f13_6, f13_10, f13_10],
    ![f13_7, f13_11, f13_10],
    ![f13_8, f13_12, f13_10],
    ![f13_9, f13_6, f13_10],
    ![f13_10, f13_7, f13_10],
    ![f13_11, f13_8, f13_10],
    ![f13_12, f13_9, f13_10],
    ![f13_6, f13_11, f13_11],
    ![f13_7, f13_12, f13_11],
    ![f13_8, f13_6, f13_11],
    ![f13_9, f13_7, f13_11],
    ![f13_10, f13_8, f13_11],
    ![f13_11, f13_9, f13_11],
    ![f13_12, f13_10, f13_11],
    ![f13_6, f13_12, f13_12],
    ![f13_7, f13_6, f13_12],
    ![f13_8, f13_7, f13_12],
    ![f13_9, f13_8, f13_12],
    ![f13_10, f13_9, f13_12],
    ![f13_11, f13_10, f13_12],
    ![f13_12, f13_11, f13_12]}

set_option maxRecDepth 10000 in
private theorem thirteenary1331_card :
    thirteenary1331Code.card ≤ 85 := by
  covering_decide

set_option maxRecDepth 10000 in
set_option maxHeartbeats 16000000 in
private theorem thirteenary1331_covers :
    CoversFinset thirteenary1331Code 1 := by
  show ∀ x : QaryWord 13 3,
    ∃ c : QaryWord 13 3, c ∈ thirteenary1331Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitThirteenary1331UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitThirteenary1331Explicit : ExplicitQaryUpper 13 3 1 85 :=
  { code := thirteenary1331Code
    card_le := thirteenary1331_card
    covers := thirteenary1331_covers }

def smallExplicitThirteenary1331Upper (q n r : Nat) : Nat :=
  if q = 13 ∧ n = 3 ∧ r = 1 then 85 else trivialUpper q n r

theorem smallExplicitThirteenary1331Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitThirteenary1331Upper q n r) := by
  by_cases h : q = 13 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitThirteenary1331Upper] using
      smallExplicitThirteenary1331Explicit.toUpper
  · simpa [smallExplicitThirteenary1331Upper, h] using trivialUpper_valid q n r

def smallExplicitThirteenary1331UpperSource : UpperBoundSource where
  value := smallExplicitThirteenary1331Upper
  trace := fun q n r =>
    .primitive smallExplicitThirteenary1331UpperName
      (smallExplicitThirteenary1331Upper_valid q n r)

end Database
end CoveringCodes
