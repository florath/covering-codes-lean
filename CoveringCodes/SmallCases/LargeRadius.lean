import CoveringCodes.CoveringNumber

/-!
# Large-radius covering codes

A singleton covers the whole Hamming space when the radius is at least the
number of coordinates.

## Intuition

Two words of length `n` can differ in at most `n` positions, so their Hamming
distance is always ≤ `n`.  This means that a ball of radius `n` around *any*
single word already contains *every* word in the space — the ball is the whole
space.  Therefore one codeword is enough to cover everything once the radius
reaches `n`.
-/

universe u v

namespace CoveringCodes

section LargeRadius

variable {ι : Type u} {β : ι → Type v}
variable [Fintype ι]
variable [(i : ι) → DecidableEq (β i)]

/-- A singleton `{center}` covers the whole space at radius `n = Fintype.card ι`.

    For any word `x`, the distance `dist x center` is at most `n` (two words of
    length `n` can differ in at most `n` positions).  So `x` is always within the
    ball of radius `n` around `center`. -/
theorem singleton_covers_card (center : Word ι β) :
    Covers ({center} : Set (Word ι β)) (Fintype.card ι) := by
  intro x
  refine ⟨center, ?_, ?_⟩
  · simp
  · exact dist_le_card x center

/-- Any nonempty code covers with radius `n = Fintype.card ι`.

    As long as the code contains at least one word `c`, every other word `x` is
    within distance `n` of `c` — so the single codeword `c` suffices to cover `x`.
    The rest of the code is irrelevant. -/
theorem nonempty_covers_card {C : Set (Word ι β)}
    (hC : ∃ c : Word ι β, c ∈ C) :
    Covers C (Fintype.card ι) := by
  intro x
  rcases hC with ⟨c, hc⟩
  exact ⟨c, hc, dist_le_card x c⟩

/-- A singleton covers at every radius `r ≥ n`.

    If radius `n` already covers everything (by `singleton_covers_card`), then any
    larger radius covers everything too — a bigger ball can only contain more words.
    This uses `Covers.mono_radius` from `CoveringCodes.Covers`. -/
theorem singleton_covers_of_card_le {r : ℕ} (center : Word ι β)
    (hr : Fintype.card ι ≤ r) :
    Covers ({center} : Set (Word ι β)) r :=
  (singleton_covers_card center).mono_radius hr

end LargeRadius

end CoveringCodes
