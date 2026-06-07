import CoveringCodes.Covers

/-!
# Covering-number certificates

This file introduces a certificate-style predicate saying that the minimum
size of a covering code at radius `r` is exactly `k`.

This avoids committing too early to a global noncomputable definition of the
covering number.
-/

universe u v

namespace CoveringCodes

section CoveringNumber

-- Same variable conventions as in `CoveringCodes.Basic` — see comments there for explanation.
-- Here `ι` plays the role of word length (`n`) and `β` plays the role of alphabet size (`q`).
-- Both are implicit; use `QaryKSpec` to make all four parameters explicit.
variable {ι : Type u} {β : ι → Type v}
variable [Fintype ι]
variable [(i : ι) → DecidableEq (β i)]

/--
`KSpec r k` means that the minimum size of a covering code with radius `r` is exactly `k`:
there exists a code of size `k` that covers, and no code of smaller size covers.

The word length and alphabet size are encoded in the implicit variables `ι` and `β`.
Use `QaryKSpec q n r k` for the concrete q-ary case where all four parameters are explicit.
-/
def KSpec (r k : ℕ) : Prop :=
  ∃ C : Finset (Word ι β),
    C.card = k ∧
    CoversFinset C r ∧
    ∀ D : Finset (Word ι β), CoversFinset D r → k ≤ D.card

/-- Certificate-style statement that `K_q(n,r)=k`. -/
abbrev QaryKSpec (q n r k : ℕ) : Prop :=
  KSpec (ι := Fin n) (β := fun _ : Fin n => Fin q) r k

/--
`KUpper r k` means that the covering number `K_q(n,r)` is at most `k`:
there exists a finite code of size at most `k` that covers with radius `r`.

The word length and alphabet size are encoded in the implicit variables `ι` and `β`.
Use `QaryKUpper q n r k` for the concrete q-ary case where all four parameters are explicit.
-/
def KUpper (r k : ℕ) : Prop :=
  ∃ C : Finset (Word ι β), C.card ≤ k ∧ CoversFinset C r

/-- Certificate-style statement that `K_q(n,r) ≤ k`. -/
abbrev QaryKUpper (q n r k : ℕ) : Prop :=
  KUpper (ι := Fin n) (β := fun _ : Fin n => Fin q) r k

/--
`KLower r k` means that the covering number `K_q(n,r)` is at least `k`:
every finite code that covers with radius `r` has size at least `k`.

The word length and alphabet size are encoded in the implicit variables `ι` and `β`.
Use `QaryKLower q n r k` for the concrete q-ary case where all four parameters are explicit.
-/
def KLower (r k : ℕ) : Prop :=
  ∀ C : Finset (Word ι β), CoversFinset C r → k ≤ C.card

/-- Certificate-style statement that `K_q(n,r) ≥ k`. -/
abbrev QaryKLower (q n r k : ℕ) : Prop :=
  KLower (ι := Fin n) (β := fun _ : Fin n => Fin q) r k

/-- A `KSpec` certificate implies the upper bound `KUpper`. -/
theorem KSpec.toUpper {r k : ℕ} (h : KSpec (ι := ι) (β := β) r k) :
    KUpper (ι := ι) (β := β) r k := by
  obtain ⟨C, hcard, hcov, _⟩ := h
  exact ⟨C, hcard.le, hcov⟩

/-- A `KSpec` certificate implies the lower bound `KLower`. -/
theorem KSpec.toLower {r k : ℕ} (h : KSpec (ι := ι) (β := β) r k) :
    KLower (ι := ι) (β := β) r k := by
  obtain ⟨_, _, _, hmin⟩ := h
  exact hmin

/--
Combining `KUpper r k` and `KLower r k` yields `KSpec r k`.

The `KUpper` witness satisfies `C.card ≤ k`; the `KLower` hypothesis forces `k ≤ C.card`,
so together they pin `C.card = k` exactly.
-/
theorem KSpec.ofUpperLower {r k : ℕ} (hu : KUpper (ι := ι) (β := β) r k)
    (hl : KLower (ι := ι) (β := β) r k) : KSpec (ι := ι) (β := β) r k := by
  obtain ⟨C, hcard_le, hcov⟩ := hu
  exact ⟨C, le_antisymm hcard_le (hl C hcov), hcov, hl⟩

/-- Exact covering-number certificates are unique in their numerical value. -/
theorem KSpec.unique {r k₁ k₂ : ℕ}
    (h₁ : KSpec (ι := ι) (β := β) r k₁)
    (h₂ : KSpec (ι := ι) (β := β) r k₂) :
    k₁ = k₂ := by
  obtain ⟨C₁, hcard₁, hcov₁, hmin₁⟩ := h₁
  obtain ⟨C₂, hcard₂, hcov₂, hmin₂⟩ := h₂
  have hk12 : k₁ ≤ k₂ := by
    rw [← hcard₂]
    exact hmin₁ C₂ hcov₂
  have hk21 : k₂ ≤ k₁ := by
    rw [← hcard₁]
    exact hmin₂ C₁ hcov₁
  exact le_antisymm hk12 hk21

/-- `KUpper` is monotone: a larger upper bound is also valid. -/
theorem KUpper.mono {r k k' : ℕ} (h : KUpper (ι := ι) (β := β) r k)
    (hle : k ≤ k') : KUpper (ι := ι) (β := β) r k' := by
  obtain ⟨C, hcard, hcov⟩ := h
  exact ⟨C, hcard.trans hle, hcov⟩

/-- `KLower` is antitone: a smaller lower bound is also valid. -/
theorem KLower.antitone {r k k' : ℕ} (h : KLower (ι := ι) (β := β) r k')
    (hle : k ≤ k') : KLower (ι := ι) (β := β) r k := by
  intro C hC
  exact hle.trans (h C hC)

/-- `0` is always a valid lower bound. -/
theorem KLower.zero {r : ℕ} :
    KLower (ι := ι) (β := β) r 0 := by
  intro C _
  exact Nat.zero_le C.card

/-- Combine two lower bounds by taking their maximum. -/
theorem KLower.max {r a b : ℕ}
    (ha : KLower (ι := ι) (β := β) r a)
    (hb : KLower (ι := ι) (β := β) r b) :
    KLower (ι := ι) (β := β) r (Nat.max a b) := by
  intro C hC
  exact max_le (ha C hC) (hb C hC)

/-- Combine two upper bounds by taking their minimum. -/
theorem KUpper.min {r a b : ℕ}
    (ha : KUpper (ι := ι) (β := β) r a)
    (hb : KUpper (ι := ι) (β := β) r b) :
    KUpper (ι := ι) (β := β) r (Nat.min a b) := by
  by_cases h : a ≤ b
  · simpa [Nat.min_eq_left h] using ha
  · have hba : b ≤ a := by omega
    simpa [Nat.min_eq_right hba] using hb

/-- A nonempty ambient space forces every covering code to have at least one codeword. -/
theorem KLower.one_of_nonempty {r : ℕ}
    (hspace : Nonempty (Word ι β)) :
    KLower (ι := ι) (β := β) r 1 := by
  intro C hC
  rcases hspace with ⟨x⟩
  rcases hC x with ⟨c, hc, _⟩
  exact Finset.card_pos.mpr ⟨c, hc⟩

end CoveringNumber

end CoveringCodes
