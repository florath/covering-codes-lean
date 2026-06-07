import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Quaternary length-five radius-two upper source

This source adds a 16-word quaternary code witnessing `K_4(5,2) <= 16`.
The code was found by local set-cover search and is checked by kernel reduction
(`decide`).
-/

namespace CoveringCodes
namespace Database

private abbrev f4_0 : Fin 4 := ⟨0, by decide⟩
private abbrev f4_1 : Fin 4 := ⟨1, by decide⟩
private abbrev f4_2 : Fin 4 := ⟨2, by decide⟩
private abbrev f4_3 : Fin 4 := ⟨3, by decide⟩

private def quaternaryFiveRadiusTwoCode : Finset (QaryWord 4 5) :=
  {![f4_0, f4_0, f4_0, f4_0, f4_0],
    ![f4_1, f4_1, f4_1, f4_1, f4_1],
    ![f4_2, f4_2, f4_2, f4_2, f4_2],
    ![f4_3, f4_3, f4_3, f4_3, f4_3],
    ![f4_0, f4_0, f4_1, f4_2, f4_3],
    ![f4_1, f4_1, f4_0, f4_3, f4_2],
    ![f4_2, f4_2, f4_3, f4_0, f4_1],
    ![f4_3, f4_3, f4_2, f4_1, f4_0],
    ![f4_0, f4_0, f4_2, f4_3, f4_1],
    ![f4_1, f4_1, f4_3, f4_2, f4_0],
    ![f4_2, f4_2, f4_0, f4_1, f4_3],
    ![f4_3, f4_3, f4_1, f4_0, f4_2],
    ![f4_0, f4_0, f4_3, f4_1, f4_2],
    ![f4_1, f4_1, f4_2, f4_0, f4_3],
    ![f4_2, f4_2, f4_1, f4_3, f4_0],
    ![f4_3, f4_3, f4_0, f4_2, f4_1]}

private theorem quaternaryFiveRadiusTwo_card :
    quaternaryFiveRadiusTwoCode.card ≤ 16 := by
  decide

set_option maxRecDepth 10000 in
private theorem quaternaryFiveRadiusTwo_covers :
    CoversFinset quaternaryFiveRadiusTwoCode 2 := by
  show ∀ x : QaryWord 4 5,
    ∃ c : QaryWord 4 5, c ∈ quaternaryFiveRadiusTwoCode ∧ hammingDist x c ≤ 2
  decide

def quaternaryFiveRadiusTwoUpperName : String :=
  "lean_quaternary_radius_two"

def quaternaryFiveRadiusTwoExplicit : ExplicitQaryUpper 4 5 2 16 :=
  { code := quaternaryFiveRadiusTwoCode
    card_le := quaternaryFiveRadiusTwo_card
    covers := quaternaryFiveRadiusTwo_covers }

def quaternaryFiveRadiusTwoUpper (q n r : Nat) : Nat :=
  if q = 4 ∧ n = 5 ∧ r = 2 then 16 else trivialUpper q n r

theorem quaternaryFiveRadiusTwoUpper_valid (q n r : Nat) :
    QaryKUpper q n r (quaternaryFiveRadiusTwoUpper q n r) := by
  by_cases h : q = 4 ∧ n = 5 ∧ r = 2
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [quaternaryFiveRadiusTwoUpper] using
      quaternaryFiveRadiusTwoExplicit.toUpper
  · simpa [quaternaryFiveRadiusTwoUpper, h] using trivialUpper_valid q n r

def quaternaryFiveRadiusTwoUpperSource : UpperBoundSource where
  value := quaternaryFiveRadiusTwoUpper
  trace := fun q n r =>
    .primitive quaternaryFiveRadiusTwoUpperName
      (quaternaryFiveRadiusTwoUpper_valid q n r)

end Database
end CoveringCodes
