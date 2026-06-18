import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_18(3,1)`

This module contains the standalone explicit-code certificate witnessing
`K_18(3,1)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f18_0 : Fin 18 := ⟨0, by decide⟩
private abbrev f18_1 : Fin 18 := ⟨1, by decide⟩
private abbrev f18_2 : Fin 18 := ⟨2, by decide⟩
private abbrev f18_3 : Fin 18 := ⟨3, by decide⟩
private abbrev f18_4 : Fin 18 := ⟨4, by decide⟩
private abbrev f18_5 : Fin 18 := ⟨5, by decide⟩
private abbrev f18_6 : Fin 18 := ⟨6, by decide⟩
private abbrev f18_7 : Fin 18 := ⟨7, by decide⟩
private abbrev f18_8 : Fin 18 := ⟨8, by decide⟩
private abbrev f18_9 : Fin 18 := ⟨9, by decide⟩
private abbrev f18_10 : Fin 18 := ⟨10, by decide⟩
private abbrev f18_11 : Fin 18 := ⟨11, by decide⟩
private abbrev f18_12 : Fin 18 := ⟨12, by decide⟩
private abbrev f18_13 : Fin 18 := ⟨13, by decide⟩
private abbrev f18_14 : Fin 18 := ⟨14, by decide⟩
private abbrev f18_15 : Fin 18 := ⟨15, by decide⟩
private abbrev f18_16 : Fin 18 := ⟨16, by decide⟩
private abbrev f18_17 : Fin 18 := ⟨17, by decide⟩

private def eighteenary1831Code : Finset (QaryWord 18 3) :=
  {![f18_0, f18_0, f18_0],
    ![f18_1, f18_1, f18_0],
    ![f18_2, f18_2, f18_0],
    ![f18_3, f18_3, f18_0],
    ![f18_4, f18_4, f18_0],
    ![f18_5, f18_5, f18_0],
    ![f18_6, f18_6, f18_0],
    ![f18_7, f18_7, f18_0],
    ![f18_8, f18_8, f18_0],
    ![f18_0, f18_1, f18_1],
    ![f18_1, f18_2, f18_1],
    ![f18_2, f18_3, f18_1],
    ![f18_3, f18_4, f18_1],
    ![f18_4, f18_5, f18_1],
    ![f18_5, f18_6, f18_1],
    ![f18_6, f18_7, f18_1],
    ![f18_7, f18_8, f18_1],
    ![f18_8, f18_0, f18_1],
    ![f18_0, f18_2, f18_2],
    ![f18_1, f18_3, f18_2],
    ![f18_2, f18_4, f18_2],
    ![f18_3, f18_5, f18_2],
    ![f18_4, f18_6, f18_2],
    ![f18_5, f18_7, f18_2],
    ![f18_6, f18_8, f18_2],
    ![f18_7, f18_0, f18_2],
    ![f18_8, f18_1, f18_2],
    ![f18_0, f18_3, f18_3],
    ![f18_1, f18_4, f18_3],
    ![f18_2, f18_5, f18_3],
    ![f18_3, f18_6, f18_3],
    ![f18_4, f18_7, f18_3],
    ![f18_5, f18_8, f18_3],
    ![f18_6, f18_0, f18_3],
    ![f18_7, f18_1, f18_3],
    ![f18_8, f18_2, f18_3],
    ![f18_0, f18_4, f18_4],
    ![f18_1, f18_5, f18_4],
    ![f18_2, f18_6, f18_4],
    ![f18_3, f18_7, f18_4],
    ![f18_4, f18_8, f18_4],
    ![f18_5, f18_0, f18_4],
    ![f18_6, f18_1, f18_4],
    ![f18_7, f18_2, f18_4],
    ![f18_8, f18_3, f18_4],
    ![f18_0, f18_5, f18_5],
    ![f18_1, f18_6, f18_5],
    ![f18_2, f18_7, f18_5],
    ![f18_3, f18_8, f18_5],
    ![f18_4, f18_0, f18_5],
    ![f18_5, f18_1, f18_5],
    ![f18_6, f18_2, f18_5],
    ![f18_7, f18_3, f18_5],
    ![f18_8, f18_4, f18_5],
    ![f18_0, f18_6, f18_6],
    ![f18_1, f18_7, f18_6],
    ![f18_2, f18_8, f18_6],
    ![f18_3, f18_0, f18_6],
    ![f18_4, f18_1, f18_6],
    ![f18_5, f18_2, f18_6],
    ![f18_6, f18_3, f18_6],
    ![f18_7, f18_4, f18_6],
    ![f18_8, f18_5, f18_6],
    ![f18_0, f18_7, f18_7],
    ![f18_1, f18_8, f18_7],
    ![f18_2, f18_0, f18_7],
    ![f18_3, f18_1, f18_7],
    ![f18_4, f18_2, f18_7],
    ![f18_5, f18_3, f18_7],
    ![f18_6, f18_4, f18_7],
    ![f18_7, f18_5, f18_7],
    ![f18_8, f18_6, f18_7],
    ![f18_0, f18_8, f18_8],
    ![f18_1, f18_0, f18_8],
    ![f18_2, f18_1, f18_8],
    ![f18_3, f18_2, f18_8],
    ![f18_4, f18_3, f18_8],
    ![f18_5, f18_4, f18_8],
    ![f18_6, f18_5, f18_8],
    ![f18_7, f18_6, f18_8],
    ![f18_8, f18_7, f18_8],
    ![f18_9, f18_9, f18_9],
    ![f18_10, f18_10, f18_9],
    ![f18_11, f18_11, f18_9],
    ![f18_12, f18_12, f18_9],
    ![f18_13, f18_13, f18_9],
    ![f18_14, f18_14, f18_9],
    ![f18_15, f18_15, f18_9],
    ![f18_16, f18_16, f18_9],
    ![f18_17, f18_17, f18_9],
    ![f18_9, f18_10, f18_10],
    ![f18_10, f18_11, f18_10],
    ![f18_11, f18_12, f18_10],
    ![f18_12, f18_13, f18_10],
    ![f18_13, f18_14, f18_10],
    ![f18_14, f18_15, f18_10],
    ![f18_15, f18_16, f18_10],
    ![f18_16, f18_17, f18_10],
    ![f18_17, f18_9, f18_10],
    ![f18_9, f18_11, f18_11],
    ![f18_10, f18_12, f18_11],
    ![f18_11, f18_13, f18_11],
    ![f18_12, f18_14, f18_11],
    ![f18_13, f18_15, f18_11],
    ![f18_14, f18_16, f18_11],
    ![f18_15, f18_17, f18_11],
    ![f18_16, f18_9, f18_11],
    ![f18_17, f18_10, f18_11],
    ![f18_9, f18_12, f18_12],
    ![f18_10, f18_13, f18_12],
    ![f18_11, f18_14, f18_12],
    ![f18_12, f18_15, f18_12],
    ![f18_13, f18_16, f18_12],
    ![f18_14, f18_17, f18_12],
    ![f18_15, f18_9, f18_12],
    ![f18_16, f18_10, f18_12],
    ![f18_17, f18_11, f18_12],
    ![f18_9, f18_13, f18_13],
    ![f18_10, f18_14, f18_13],
    ![f18_11, f18_15, f18_13],
    ![f18_12, f18_16, f18_13],
    ![f18_13, f18_17, f18_13],
    ![f18_14, f18_9, f18_13],
    ![f18_15, f18_10, f18_13],
    ![f18_16, f18_11, f18_13],
    ![f18_17, f18_12, f18_13],
    ![f18_9, f18_14, f18_14],
    ![f18_10, f18_15, f18_14],
    ![f18_11, f18_16, f18_14],
    ![f18_12, f18_17, f18_14],
    ![f18_13, f18_9, f18_14],
    ![f18_14, f18_10, f18_14],
    ![f18_15, f18_11, f18_14],
    ![f18_16, f18_12, f18_14],
    ![f18_17, f18_13, f18_14],
    ![f18_9, f18_15, f18_15],
    ![f18_10, f18_16, f18_15],
    ![f18_11, f18_17, f18_15],
    ![f18_12, f18_9, f18_15],
    ![f18_13, f18_10, f18_15],
    ![f18_14, f18_11, f18_15],
    ![f18_15, f18_12, f18_15],
    ![f18_16, f18_13, f18_15],
    ![f18_17, f18_14, f18_15],
    ![f18_9, f18_16, f18_16],
    ![f18_10, f18_17, f18_16],
    ![f18_11, f18_9, f18_16],
    ![f18_12, f18_10, f18_16],
    ![f18_13, f18_11, f18_16],
    ![f18_14, f18_12, f18_16],
    ![f18_15, f18_13, f18_16],
    ![f18_16, f18_14, f18_16],
    ![f18_17, f18_15, f18_16],
    ![f18_9, f18_17, f18_17],
    ![f18_10, f18_9, f18_17],
    ![f18_11, f18_10, f18_17],
    ![f18_12, f18_11, f18_17],
    ![f18_13, f18_12, f18_17],
    ![f18_14, f18_13, f18_17],
    ![f18_15, f18_14, f18_17],
    ![f18_16, f18_15, f18_17],
    ![f18_17, f18_16, f18_17]}

set_option maxRecDepth 20000 in
private theorem eighteenary1831_card :
    eighteenary1831Code.card ≤ 162 := by
  covering_decide

set_option maxRecDepth 240000 in
set_option maxHeartbeats 512000000 in
private theorem eighteenary1831_covers :
    CoversFinset eighteenary1831Code 1 := by
  show ∀ x : QaryWord 18 3,
    ∃ c : QaryWord 18 3, c ∈ eighteenary1831Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitEighteenary1831UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitEighteenary1831Explicit : ExplicitQaryUpper 18 3 1 162 :=
  { code := eighteenary1831Code
    card_le := eighteenary1831_card
    covers := eighteenary1831_covers }

def smallExplicitEighteenary1831Upper (q n r : Nat) : Nat :=
  if q = 18 ∧ n = 3 ∧ r = 1 then 162 else trivialUpper q n r

theorem smallExplicitEighteenary1831Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitEighteenary1831Upper q n r) := by
  by_cases h : q = 18 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitEighteenary1831Upper] using
      smallExplicitEighteenary1831Explicit.toUpper
  · simpa [smallExplicitEighteenary1831Upper, h] using trivialUpper_valid q n r

def smallExplicitEighteenary1831UpperSource : UpperBoundSource where
  value := smallExplicitEighteenary1831Upper
  trace := fun q n r =>
    .primitive smallExplicitEighteenary1831UpperName
      (smallExplicitEighteenary1831Upper_valid q n r)

end Database
end CoveringCodes
