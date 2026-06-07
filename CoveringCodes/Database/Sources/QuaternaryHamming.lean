import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Quaternary Hamming upper source

This source adds the quaternary length-five radius-one Hamming code witnessing
`K_4(5,1) <= 64`.  The code is written explicitly and checked by kernel
reduction (`decide`).
-/

namespace CoveringCodes
namespace Database

private abbrev f4_0 : Fin 4 := ⟨0, by decide⟩
private abbrev f4_1 : Fin 4 := ⟨1, by decide⟩
private abbrev f4_2 : Fin 4 := ⟨2, by decide⟩
private abbrev f4_3 : Fin 4 := ⟨3, by decide⟩

private def quaternaryHammingFiveCode : Finset (QaryWord 4 5) :=
  {![f4_0, f4_0, f4_0, f4_0, f4_0],
    ![f4_1, f4_3, f4_0, f4_0, f4_1],
    ![f4_2, f4_1, f4_0, f4_0, f4_2],
    ![f4_3, f4_2, f4_0, f4_0, f4_3],
    ![f4_1, f4_2, f4_0, f4_1, f4_0],
    ![f4_0, f4_1, f4_0, f4_1, f4_1],
    ![f4_3, f4_3, f4_0, f4_1, f4_2],
    ![f4_2, f4_0, f4_0, f4_1, f4_3],
    ![f4_2, f4_3, f4_0, f4_2, f4_0],
    ![f4_3, f4_0, f4_0, f4_2, f4_1],
    ![f4_0, f4_2, f4_0, f4_2, f4_2],
    ![f4_1, f4_1, f4_0, f4_2, f4_3],
    ![f4_3, f4_1, f4_0, f4_3, f4_0],
    ![f4_2, f4_2, f4_0, f4_3, f4_1],
    ![f4_1, f4_0, f4_0, f4_3, f4_2],
    ![f4_0, f4_3, f4_0, f4_3, f4_3],
    ![f4_1, f4_1, f4_1, f4_0, f4_0],
    ![f4_0, f4_2, f4_1, f4_0, f4_1],
    ![f4_3, f4_0, f4_1, f4_0, f4_2],
    ![f4_2, f4_3, f4_1, f4_0, f4_3],
    ![f4_0, f4_3, f4_1, f4_1, f4_0],
    ![f4_1, f4_0, f4_1, f4_1, f4_1],
    ![f4_2, f4_2, f4_1, f4_1, f4_2],
    ![f4_3, f4_1, f4_1, f4_1, f4_3],
    ![f4_3, f4_2, f4_1, f4_2, f4_0],
    ![f4_2, f4_1, f4_1, f4_2, f4_1],
    ![f4_1, f4_3, f4_1, f4_2, f4_2],
    ![f4_0, f4_0, f4_1, f4_2, f4_3],
    ![f4_2, f4_0, f4_1, f4_3, f4_0],
    ![f4_3, f4_3, f4_1, f4_3, f4_1],
    ![f4_0, f4_1, f4_1, f4_3, f4_2],
    ![f4_1, f4_2, f4_1, f4_3, f4_3],
    ![f4_2, f4_2, f4_2, f4_0, f4_0],
    ![f4_3, f4_1, f4_2, f4_0, f4_1],
    ![f4_0, f4_3, f4_2, f4_0, f4_2],
    ![f4_1, f4_0, f4_2, f4_0, f4_3],
    ![f4_3, f4_0, f4_2, f4_1, f4_0],
    ![f4_2, f4_3, f4_2, f4_1, f4_1],
    ![f4_1, f4_1, f4_2, f4_1, f4_2],
    ![f4_0, f4_2, f4_2, f4_1, f4_3],
    ![f4_0, f4_1, f4_2, f4_2, f4_0],
    ![f4_1, f4_2, f4_2, f4_2, f4_1],
    ![f4_2, f4_0, f4_2, f4_2, f4_2],
    ![f4_3, f4_3, f4_2, f4_2, f4_3],
    ![f4_1, f4_3, f4_2, f4_3, f4_0],
    ![f4_0, f4_0, f4_2, f4_3, f4_1],
    ![f4_3, f4_2, f4_2, f4_3, f4_2],
    ![f4_2, f4_1, f4_2, f4_3, f4_3],
    ![f4_3, f4_3, f4_3, f4_0, f4_0],
    ![f4_2, f4_0, f4_3, f4_0, f4_1],
    ![f4_1, f4_2, f4_3, f4_0, f4_2],
    ![f4_0, f4_1, f4_3, f4_0, f4_3],
    ![f4_2, f4_1, f4_3, f4_1, f4_0],
    ![f4_3, f4_2, f4_3, f4_1, f4_1],
    ![f4_0, f4_0, f4_3, f4_1, f4_2],
    ![f4_1, f4_3, f4_3, f4_1, f4_3],
    ![f4_1, f4_0, f4_3, f4_2, f4_0],
    ![f4_0, f4_3, f4_3, f4_2, f4_1],
    ![f4_3, f4_1, f4_3, f4_2, f4_2],
    ![f4_2, f4_2, f4_3, f4_2, f4_3],
    ![f4_0, f4_2, f4_3, f4_3, f4_0],
    ![f4_1, f4_1, f4_3, f4_3, f4_1],
    ![f4_2, f4_3, f4_3, f4_3, f4_2],
    ![f4_3, f4_0, f4_3, f4_3, f4_3]}

set_option maxRecDepth 10000 in
private theorem quaternaryHammingFive_card :
    quaternaryHammingFiveCode.card ≤ 64 := by
  decide

set_option maxRecDepth 30000 in
set_option maxHeartbeats 64000000 in
private theorem quaternaryHammingFive_covers :
    CoversFinset quaternaryHammingFiveCode 1 := by
  show ∀ x : QaryWord 4 5,
    ∃ c : QaryWord 4 5, c ∈ quaternaryHammingFiveCode ∧ hammingDist x c ≤ 1
  decide

def quaternaryHammingFiveUpperName : String :=
  "lean_quaternary_hamming"

def quaternaryHammingFiveExplicit : ExplicitQaryUpper 4 5 1 64 :=
  { code := quaternaryHammingFiveCode
    card_le := quaternaryHammingFive_card
    covers := quaternaryHammingFive_covers }

def quaternaryHammingFiveUpper (q n r : Nat) : Nat :=
  if q = 4 ∧ n = 5 ∧ r = 1 then 64 else trivialUpper q n r

theorem quaternaryHammingFiveUpper_valid (q n r : Nat) :
    QaryKUpper q n r (quaternaryHammingFiveUpper q n r) := by
  by_cases h : q = 4 ∧ n = 5 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [quaternaryHammingFiveUpper] using
      quaternaryHammingFiveExplicit.toUpper
  · simpa [quaternaryHammingFiveUpper, h] using trivialUpper_valid q n r

def quaternaryHammingFiveUpperSource : UpperBoundSource where
  value := quaternaryHammingFiveUpper
  trace := fun q n r =>
    .primitive quaternaryHammingFiveUpperName
      (quaternaryHammingFiveUpper_valid q n r)

end Database
end CoveringCodes
