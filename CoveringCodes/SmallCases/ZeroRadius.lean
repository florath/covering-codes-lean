import CoveringCodes.CoveringNumber
import Mathlib.Data.Finset.Card
import Mathlib.Data.Fintype.Pi

/-!
# Zero-radius covering codes

A radius-zero covering code must contain every word.
-/

universe u v

namespace CoveringCodes

section ZeroRadius

variable {ι : Type u} {β : ι → Type v}
variable [DecidableEq ι]
variable [Fintype ι]
variable [(i : ι) → DecidableEq (β i)]
variable [(i : ι) → Fintype (β i)]

/-- A finite code covers with radius zero iff it contains every word. -/
theorem covers_zero_iff_univ_subset (C : Finset (Word ι β)) :
    CoversFinset C 0 ↔
      (Finset.univ : Finset (Word ι β)) ⊆ C := by
  constructor
  · intro hC x hx
    rcases hC x with ⟨c, hc, hdist_le⟩
    have hdist : dist x c = 0 := Nat.eq_zero_of_le_zero hdist_le
    have hxc : x = c := by
      -- This follows from mathlib's `hammingDist_eq_zero`.
      simpa [dist] using (hammingDist_eq_zero.mp hdist)
    simpa [hxc] using hc
  · intro hsub x
    refine ⟨x, ?_, ?_⟩
    · exact hsub (by simp)
    · simp [dist]

/-- Radius-zero exactness in certificate form. -/
theorem kSpec_zero_radius :
    KSpec (ι := ι) (β := β) 0 (Fintype.card (Word ι β)) := by
  refine ⟨Finset.univ, ?_, ?_, ?_⟩
  · simp
  · exact coversFinset_univ 0
  · intro D hD
    have hsub :
        (Finset.univ : Finset (Word ι β)) ⊆ D :=
      (covers_zero_iff_univ_subset D).mp hD
    simpa using Finset.card_le_card hsub

/-- Q-ary radius-zero exactness: `K_q(n,0) = q^n`. -/
theorem qaryKSpec_zero_radius (q n : ℕ) :
    QaryKSpec q n 0 (q ^ n) := by
  have h := kSpec_zero_radius (ι := Fin n) (β := fun _ : Fin n => Fin q)
  simpa [QaryWord, Fintype.card_fin] using h

/-- Q-ary radius-zero lower bound. -/
theorem qaryKLower_zero_radius (q n : ℕ) :
    QaryKLower q n 0 (q ^ n) :=
  (qaryKSpec_zero_radius q n).toLower

/-- Q-ary radius-zero upper bound. -/
theorem qaryKUpper_zero_radius (q n : ℕ) :
    QaryKUpper q n 0 (q ^ n) :=
  (qaryKSpec_zero_radius q n).toUpper

end ZeroRadius

end CoveringCodes
