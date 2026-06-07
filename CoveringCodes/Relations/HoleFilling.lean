import CoveringCodes.CoveringNumber

/-!
# Hole filling (Rule 14)

A code `C` may fail to cover some words at radius `rho`.  If an auxiliary code
`D` covers exactly those holes at radius `rho`, then `C ∪ D` covers the whole
space at radius `rho`.
-/

namespace CoveringCodes

section HoleFilling

/-- A word is covered by a finite code at radius `rho`. -/
def CoveredByFinset {q n : ℕ} (C : Finset (QaryWord q n)) (rho : ℕ)
    (x : QaryWord q n) : Prop :=
  ∃ c, c ∈ C ∧ dist x c ≤ rho

/-- The words not covered by `C` at radius `rho`. -/
noncomputable def HolesAtRadius {q n : ℕ} (C : Finset (QaryWord q n)) (rho : ℕ) :
    Finset (QaryWord q n) := by
  classical
  exact Finset.univ.filter (fun x => ¬ CoveredByFinset C rho x)

/-- For a radius-`r` code, the relevant holes for improving to radius `r-1`. -/
noncomputable def DeepHoles {q n : ℕ} (r : ℕ) (C : Finset (QaryWord q n)) :
    Finset (QaryWord q n) :=
  HolesAtRadius C (r - 1)

/-- A finite code `D` covers a finite set `S` at radius `rho`. -/
def CoversSet {q n : ℕ} (D : Finset (QaryWord q n)) (rho : ℕ)
    (S : Finset (QaryWord q n)) : Prop :=
  ∀ x, x ∈ S → ∃ d, d ∈ D ∧ dist x d ≤ rho

/-- **Rule 14 (hole filling).**

If `D` covers all holes of `C` at radius `r-1`, then `C ∪ D` covers the whole
space at radius `r-1`; the cardinality is bounded by `C.card + D.card`.
-/
theorem upper_hole_filling {q n r : ℕ}
    (_hr : 0 < r)
    (C D : Finset (QaryWord q n))
    (_hC : CoversFinset C r)
    (hD : CoversSet D (r - 1) (DeepHoles r C)) :
    QaryKUpper q n (r - 1) (C.card + D.card) := by
  classical
  refine ⟨C ∪ D, Finset.card_union_le C D, ?_⟩
  intro x
  by_cases hx : CoveredByFinset C (r - 1) x
  · rcases hx with ⟨c, hc, hd⟩
    exact ⟨c, Finset.mem_union.mpr (Or.inl hc), hd⟩
  · have hxhole : x ∈ DeepHoles r C := by
      simp [DeepHoles, HolesAtRadius, hx]
    obtain ⟨d, hdD, hdist⟩ := hD x hxhole
    exact ⟨d, Finset.mem_union.mpr (Or.inr hdD), hdist⟩

end HoleFilling

end CoveringCodes
