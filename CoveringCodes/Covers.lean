import CoveringCodes.Balls
import Mathlib.Data.Finset.Basic

/-!
# Covering predicates

This file defines when a code covers the whole Hamming space with a given radius.
-/

universe u v

namespace CoveringCodes

section Covers

-- Same variable conventions as in `CoveringCodes.Basic` — see comments there for explanation.
variable {ι : Type u} {β : ι → Type v}
variable [Fintype ι]
variable [(i : ι) → DecidableEq (β i)]

/-- A set-valued code covers the ambient Hamming space with radius `r`. -/
def Covers (C : Set (Word ι β)) (r : ℕ) : Prop :=
  ∀ x : Word ι β, ∃ c : Word ι β, c ∈ C ∧ dist x c ≤ r

/-- A finite code covers the ambient Hamming space with radius `r`. -/
def CoversFinset (C : Finset (Word ι β)) (r : ℕ) : Prop :=
  ∀ x : Word ι β, ∃ c : Word ι β, c ∈ C ∧ dist x c ≤ r

/-- Finset covers agree with set covers after coercion. -/
theorem coversFinset_iff_coe (C : Finset (Word ι β)) (r : ℕ) :
    CoversFinset C r ↔ Covers (C : Set (Word ι β)) r := by
  rfl

/-- Radius monotonicity for set-valued codes. -/
theorem Covers.mono_radius {C : Set (Word ι β)} {r s : ℕ}
    (hC : Covers C r) (hrs : r ≤ s) :
    Covers C s := by
  intro x
  rcases hC x with ⟨c, hc, hdist⟩
  exact ⟨c, hc, le_trans hdist hrs⟩

/-- Radius monotonicity for finite codes. -/
theorem CoversFinset.mono_radius {C : Finset (Word ι β)} {r s : ℕ}
    (hC : CoversFinset C r) (hrs : r ≤ s) :
    CoversFinset C s :=
  (coversFinset_iff_coe C s).mpr (((coversFinset_iff_coe C r).mp hC).mono_radius hrs)

section Univ

variable [DecidableEq ι]
variable [(i : ι) → Fintype (β i)]

/-- The whole finite ambient space covers at every radius. -/
theorem coversFinset_univ (r : ℕ) :
    CoversFinset (Finset.univ : Finset (Word ι β)) r := by
  intro x
  refine ⟨x, ?_, ?_⟩
  · simp
  · simp [dist]

end Univ

end Covers

end CoveringCodes
