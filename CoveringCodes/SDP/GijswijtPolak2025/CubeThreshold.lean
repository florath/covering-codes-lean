import CoveringCodes.CoveringNumber
import Mathlib.Tactic

/-!
# Integer cube-threshold bridge
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

/-- Convert a strict cubic cardinality threshold into an integer lower bound. -/
theorem lower_of_card_cube_gt
    {q n r L : Nat}
    (h : forall C : Finset (QaryWord q n),
      CoversFinset C r -> ((L - 1 : Nat) : Rat) ^ 3 < (C.card : Rat) ^ 3) :
    QaryKLower q n r L := by
  intro C hC
  by_cases hgoal : L <= C.card
  · exact hgoal
  · have hlt : C.card < L := Nat.lt_of_not_ge hgoal
    have hle_pred : C.card <= L - 1 := by omega
    have hle_rat : (C.card : Rat) <= ((L - 1 : Nat) : Rat) := by
      exact_mod_cast hle_pred
    have hnonneg : (0 : Rat) <= C.card := by
      exact_mod_cast Nat.zero_le C.card
    have hpow : (C.card : Rat) ^ 3 <= ((L - 1 : Nat) : Rat) ^ 3 :=
      pow_le_pow_left₀ hnonneg hle_rat 3
    have hstrict := h C hC
    linarith

/-- Variant using a rational objective lower bound. -/
theorem lower_of_cube_objective_bound
    {q n r L : Nat} {bound : Rat}
    (hthreshold : ((L - 1 : Nat) : Rat) ^ 3 < bound)
    (h : forall C : Finset (QaryWord q n),
      CoversFinset C r -> bound <= (C.card : Rat) ^ 3) :
    QaryKLower q n r L := by
  apply lower_of_card_cube_gt
  intro C hC
  exact lt_of_lt_of_le hthreshold (h C hC)

end GijswijtPolak2025
end SDP
end CoveringCodes
