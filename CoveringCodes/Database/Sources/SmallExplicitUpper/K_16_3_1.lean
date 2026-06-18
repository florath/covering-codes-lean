import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Explicit upper bound for `K_16(3,1)`

This module contains the standalone explicit-code certificate witnessing
`K_16(3,1)` at the registered small explicit upper-bound value.
-/

namespace CoveringCodes
namespace Database

private abbrev f16_0 : Fin 16 := ⟨0, by decide⟩
private abbrev f16_1 : Fin 16 := ⟨1, by decide⟩
private abbrev f16_2 : Fin 16 := ⟨2, by decide⟩
private abbrev f16_3 : Fin 16 := ⟨3, by decide⟩
private abbrev f16_4 : Fin 16 := ⟨4, by decide⟩
private abbrev f16_5 : Fin 16 := ⟨5, by decide⟩
private abbrev f16_6 : Fin 16 := ⟨6, by decide⟩
private abbrev f16_7 : Fin 16 := ⟨7, by decide⟩
private abbrev f16_8 : Fin 16 := ⟨8, by decide⟩
private abbrev f16_9 : Fin 16 := ⟨9, by decide⟩
private abbrev f16_10 : Fin 16 := ⟨10, by decide⟩
private abbrev f16_11 : Fin 16 := ⟨11, by decide⟩
private abbrev f16_12 : Fin 16 := ⟨12, by decide⟩
private abbrev f16_13 : Fin 16 := ⟨13, by decide⟩
private abbrev f16_14 : Fin 16 := ⟨14, by decide⟩
private abbrev f16_15 : Fin 16 := ⟨15, by decide⟩

private def hexadecimal1631Code : Finset (QaryWord 16 3) :=
  {![f16_0, f16_0, f16_0],
    ![f16_1, f16_1, f16_0],
    ![f16_2, f16_2, f16_0],
    ![f16_3, f16_3, f16_0],
    ![f16_4, f16_4, f16_0],
    ![f16_5, f16_5, f16_0],
    ![f16_6, f16_6, f16_0],
    ![f16_7, f16_7, f16_0],
    ![f16_0, f16_1, f16_1],
    ![f16_1, f16_2, f16_1],
    ![f16_2, f16_3, f16_1],
    ![f16_3, f16_4, f16_1],
    ![f16_4, f16_5, f16_1],
    ![f16_5, f16_6, f16_1],
    ![f16_6, f16_7, f16_1],
    ![f16_7, f16_0, f16_1],
    ![f16_0, f16_2, f16_2],
    ![f16_1, f16_3, f16_2],
    ![f16_2, f16_4, f16_2],
    ![f16_3, f16_5, f16_2],
    ![f16_4, f16_6, f16_2],
    ![f16_5, f16_7, f16_2],
    ![f16_6, f16_0, f16_2],
    ![f16_7, f16_1, f16_2],
    ![f16_0, f16_3, f16_3],
    ![f16_1, f16_4, f16_3],
    ![f16_2, f16_5, f16_3],
    ![f16_3, f16_6, f16_3],
    ![f16_4, f16_7, f16_3],
    ![f16_5, f16_0, f16_3],
    ![f16_6, f16_1, f16_3],
    ![f16_7, f16_2, f16_3],
    ![f16_0, f16_4, f16_4],
    ![f16_1, f16_5, f16_4],
    ![f16_2, f16_6, f16_4],
    ![f16_3, f16_7, f16_4],
    ![f16_4, f16_0, f16_4],
    ![f16_5, f16_1, f16_4],
    ![f16_6, f16_2, f16_4],
    ![f16_7, f16_3, f16_4],
    ![f16_0, f16_5, f16_5],
    ![f16_1, f16_6, f16_5],
    ![f16_2, f16_7, f16_5],
    ![f16_3, f16_0, f16_5],
    ![f16_4, f16_1, f16_5],
    ![f16_5, f16_2, f16_5],
    ![f16_6, f16_3, f16_5],
    ![f16_7, f16_4, f16_5],
    ![f16_0, f16_6, f16_6],
    ![f16_1, f16_7, f16_6],
    ![f16_2, f16_0, f16_6],
    ![f16_3, f16_1, f16_6],
    ![f16_4, f16_2, f16_6],
    ![f16_5, f16_3, f16_6],
    ![f16_6, f16_4, f16_6],
    ![f16_7, f16_5, f16_6],
    ![f16_0, f16_7, f16_7],
    ![f16_1, f16_0, f16_7],
    ![f16_2, f16_1, f16_7],
    ![f16_3, f16_2, f16_7],
    ![f16_4, f16_3, f16_7],
    ![f16_5, f16_4, f16_7],
    ![f16_6, f16_5, f16_7],
    ![f16_7, f16_6, f16_7],
    ![f16_8, f16_8, f16_8],
    ![f16_9, f16_9, f16_8],
    ![f16_10, f16_10, f16_8],
    ![f16_11, f16_11, f16_8],
    ![f16_12, f16_12, f16_8],
    ![f16_13, f16_13, f16_8],
    ![f16_14, f16_14, f16_8],
    ![f16_15, f16_15, f16_8],
    ![f16_8, f16_9, f16_9],
    ![f16_9, f16_10, f16_9],
    ![f16_10, f16_11, f16_9],
    ![f16_11, f16_12, f16_9],
    ![f16_12, f16_13, f16_9],
    ![f16_13, f16_14, f16_9],
    ![f16_14, f16_15, f16_9],
    ![f16_15, f16_8, f16_9],
    ![f16_8, f16_10, f16_10],
    ![f16_9, f16_11, f16_10],
    ![f16_10, f16_12, f16_10],
    ![f16_11, f16_13, f16_10],
    ![f16_12, f16_14, f16_10],
    ![f16_13, f16_15, f16_10],
    ![f16_14, f16_8, f16_10],
    ![f16_15, f16_9, f16_10],
    ![f16_8, f16_11, f16_11],
    ![f16_9, f16_12, f16_11],
    ![f16_10, f16_13, f16_11],
    ![f16_11, f16_14, f16_11],
    ![f16_12, f16_15, f16_11],
    ![f16_13, f16_8, f16_11],
    ![f16_14, f16_9, f16_11],
    ![f16_15, f16_10, f16_11],
    ![f16_8, f16_12, f16_12],
    ![f16_9, f16_13, f16_12],
    ![f16_10, f16_14, f16_12],
    ![f16_11, f16_15, f16_12],
    ![f16_12, f16_8, f16_12],
    ![f16_13, f16_9, f16_12],
    ![f16_14, f16_10, f16_12],
    ![f16_15, f16_11, f16_12],
    ![f16_8, f16_13, f16_13],
    ![f16_9, f16_14, f16_13],
    ![f16_10, f16_15, f16_13],
    ![f16_11, f16_8, f16_13],
    ![f16_12, f16_9, f16_13],
    ![f16_13, f16_10, f16_13],
    ![f16_14, f16_11, f16_13],
    ![f16_15, f16_12, f16_13],
    ![f16_8, f16_14, f16_14],
    ![f16_9, f16_15, f16_14],
    ![f16_10, f16_8, f16_14],
    ![f16_11, f16_9, f16_14],
    ![f16_12, f16_10, f16_14],
    ![f16_13, f16_11, f16_14],
    ![f16_14, f16_12, f16_14],
    ![f16_15, f16_13, f16_14],
    ![f16_8, f16_15, f16_15],
    ![f16_9, f16_8, f16_15],
    ![f16_10, f16_9, f16_15],
    ![f16_11, f16_10, f16_15],
    ![f16_12, f16_11, f16_15],
    ![f16_13, f16_12, f16_15],
    ![f16_14, f16_13, f16_15],
    ![f16_15, f16_14, f16_15]}

set_option maxRecDepth 10000 in
private theorem hexadecimal1631_card :
    hexadecimal1631Code.card ≤ 128 := by
  covering_decide

set_option maxRecDepth 80000 in
set_option maxHeartbeats 128000000 in
private theorem hexadecimal1631_covers :
    CoversFinset hexadecimal1631Code 1 := by
  show ∀ x : QaryWord 16 3,
    ∃ c : QaryWord 16 3, c ∈ hexadecimal1631Code ∧ hammingDist x c ≤ 1
  covering_decide

def smallExplicitHexadecimal1631UpperName : String :=
  "lean_small_explicit_upper"

def smallExplicitHexadecimal1631Explicit : ExplicitQaryUpper 16 3 1 128 :=
  { code := hexadecimal1631Code
    card_le := hexadecimal1631_card
    covers := hexadecimal1631_covers }

def smallExplicitHexadecimal1631Upper (q n r : Nat) : Nat :=
  if q = 16 ∧ n = 3 ∧ r = 1 then 128 else trivialUpper q n r

theorem smallExplicitHexadecimal1631Upper_valid (q n r : Nat) :
    QaryKUpper q n r (smallExplicitHexadecimal1631Upper q n r) := by
  by_cases h : q = 16 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallExplicitHexadecimal1631Upper] using
      smallExplicitHexadecimal1631Explicit.toUpper
  · simpa [smallExplicitHexadecimal1631Upper, h] using trivialUpper_valid q n r

def smallExplicitHexadecimal1631UpperSource : UpperBoundSource where
  value := smallExplicitHexadecimal1631Upper
  trace := fun q n r =>
    .primitive smallExplicitHexadecimal1631UpperName
      (smallExplicitHexadecimal1631Upper_valid q n r)

end Database
end CoveringCodes
