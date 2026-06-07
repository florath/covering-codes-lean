import CoveringCodes.Basic

/-!
# Hamming balls

This file defines closed Hamming balls in finite Hamming spaces.
-/

universe u v

namespace CoveringCodes

section Balls

-- Same variable conventions as in `CoveringCodes.Basic` — see comments there for explanation.
variable {ι : Type u} {β : ι → Type v}
variable [Fintype ι]
variable [(i : ι) → DecidableEq (β i)]

/-- The closed Hamming ball of radius `r` around `center`. -/
def ball (center : Word ι β) (r : ℕ) : Set (Word ι β) :=
  {x | dist x center ≤ r}

/-- Membership in a ball is equivalent to the distance condition: `x` is in the ball around
    `center` with radius `r` iff its Hamming distance to `center` is at most `r`.
    This just unfolds the definition of `ball` and exists as a convenience for rewriting. -/
@[simp]
theorem mem_ball_iff (x center : Word ι β) (r : ℕ) :
    x ∈ ball center r ↔ dist x center ≤ r := by
  rfl

/-- A ball of radius 0 contains only the center. -/
theorem ball_zero (center : Word ι β) :
    ball center 0 = {center} := by
  ext x
  simp [mem_ball_iff]

/-- Every center belongs to its own ball. -/
theorem center_mem_ball (center : Word ι β) (r : ℕ) :
    center ∈ ball center r := by
  simp [ball]

/-- Balls are monotone in the radius. -/
theorem ball_subset_ball_of_le {center : Word ι β} {r s : ℕ}
    (hrs : r ≤ s) :
    ball center r ⊆ ball center s := by
  intro x hx
  exact le_trans hx hrs

end Balls

end CoveringCodes
