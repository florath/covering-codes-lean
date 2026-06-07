import Mathlib.InformationTheory.Hamming
import Mathlib.Data.Fintype.Pi

/-!
# Basic definitions for finite Hamming-space covering codes

The primary type used throughout this project is `QaryWord q n`,
representing words of length `n` over an alphabet of size `q` (`Fin n → Fin q`).

Where definitions and theorems can be stated for the more general `Word ι β`
(dependent alphabets, arbitrary finite index type) at no extra proof effort,
we prefer that form — `QaryWord` instances then follow for free.
-/

universe u v

namespace CoveringCodes

/-- A word over a coordinate type ι with coordinate alphabet β i. -/
abbrev Word (ι : Type u) (β : ι → Type v) : Type _ :=
  (i : ι) → β i

/-- Ordinary q-ary words of length `n`. -/
abbrev QaryWord (q n : ℕ) : Type :=
  Fin n → Fin q

section Hamming

-- `ι` is the index type (word positions, e.g. `Fin n`); `β i` is the alphabet at position `i`
-- (e.g. `fun _ => Fin q` for a uniform q-ary alphabet). Both are inferred implicitly.
variable {ι : Type u} {β : ι → Type v}
-- The index type must be finite so that Hamming distance (a count over positions) is
-- well-defined. For `Fin n` this instance is provided by Mathlib.
variable [Fintype ι]
-- Equality at each coordinate must be decidable so that we can computably determine which
-- positions two words differ in. For `Fin q` this instance is provided by Mathlib.
variable [(i : ι) → DecidableEq (β i)]

/-- 
The Hamming distance between two words.

This is just mathlib's `hammingDist`, exposed through the project namespace.
-/
abbrev dist (x y : Word ι β) : ℕ :=
  hammingDist x y

@[simp]
theorem dist_self (x : Word ι β) : dist x x = 0 := by
  simp [dist]

theorem dist_comm (x y : Word ι β) : dist x y = dist y x := by
  simpa [dist] using hammingDist_comm x y

/-- The Hamming distance is at most the word length: two words can differ in at most as many
    positions as they have. For `QaryWord q n` this specialises to `dist x y ≤ n`. -/
theorem dist_le_card (x y : Word ι β) :
    dist x y ≤ Fintype.card ι := by
  simpa [dist] using hammingDist_le_card_fintype

/-- The triangle inequality: the Hamming distance from `x` to `z` is at most the sum of the
    distances via any intermediate word `y`.

    Note on argument order: Mathlib's `hammingDist_triangle x y z` has the intermediate point
    as the *second* argument and states `dist x z ≤ dist x y + dist y z`. Here we follow the
    more readable convention `dist x z ≤ dist x y + dist y z` with `y` explicit as the
    middle point, delegating directly to Mathlib. -/
theorem dist_triangle (x y z : Word ι β) :
    dist x z ≤ dist x y + dist y z := by
  simpa [dist] using hammingDist_triangle x y z

/-- The Hamming distance is zero if and only if the two words are equal. -/
theorem dist_eq_zero {x y : Word ι β} : dist x y = 0 ↔ x = y :=
  hammingDist_eq_zero

end Hamming

/-! ## Q-ary word space utility lemmas -/

/-- The cardinality of the q-ary word space is `q ^ n`. -/
@[simp]
theorem qaryWord_card (q n : ℕ) :
    Fintype.card (QaryWord q n) = q ^ n := by
  simp [QaryWord, Fintype.card_fin]

/-- `QaryWord q n` is nonempty iff `n = 0` (the empty-word case) or `0 < q`. -/
theorem qaryWord_nonempty_iff (q n : ℕ) :
    Nonempty (QaryWord q n) ↔ n = 0 ∨ 0 < q := by
  constructor
  · intro h
    by_cases hn : n = 0
    · exact Or.inl hn
    · have hnpos : 0 < n := Nat.pos_of_ne_zero hn
      rcases h with ⟨x⟩
      have hval := (x ⟨0, hnpos⟩).isLt
      exact Or.inr (by omega)
  · intro h
    rcases h with hn | hq
    · subst n
      exact ⟨fun i => nomatch i⟩
    · exact ⟨fun _ => ⟨0, hq⟩⟩

end CoveringCodes
