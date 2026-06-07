import CoveringCodes.CoveringNumber

/-!
# Radius monotonicity (Rule 1)

If a code covers with radius `r`, it also covers with any larger radius `r + s`.
Upper bounds propagate upward in radius; lower bounds propagate downward.
-/

namespace CoveringCodes

/-- **Rule 1 (upper)**: K_q(n, r+s) ≤ K_q(n, r).
    A code covering at radius `r` also covers at any larger radius. -/
theorem upper_radius_mono {q n r s U : ℕ}
    (h : QaryKUpper q n r U) :
    QaryKUpper q n (r + s) U := by
  obtain ⟨C, hcard, hcov⟩ := h
  exact ⟨C, hcard, hcov.mono_radius (Nat.le_add_right r s)⟩

/-- **Rule 1 (lower)**: K_q(n, r) ≥ L whenever K_q(n, r+s) ≥ L.
    Lower bounds propagate downward in radius. -/
theorem lower_radius_back {q n r s L : ℕ}
    (h : QaryKLower q n (r + s) L) :
    QaryKLower q n r L := by
  intro C hcov
  exact h C (hcov.mono_radius (Nat.le_add_right r s))

end CoveringCodes
