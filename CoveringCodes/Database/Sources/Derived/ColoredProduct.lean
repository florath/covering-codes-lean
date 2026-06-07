import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Relations.ColoredProduct

/-!
# Colored-product helper for explicit code certificates

**Status: manual explicit-code helper.**

This wrapper applies Rule 15 (colored product) via `colored_product_upper`.
It requires an explicit coloring setup: families `C₁ : Λ → Finset (QaryWord q n₁)`
and `C₂ : Λ → Finset (QaryWord q n₂)` indexed by a finite color type `Λ`, plus
an explicit covering hypothesis.  This cannot be derived numerically and must not
be added to the automatic closure pipeline in `BoundTable.lean`.
-/

namespace CoveringCodes
namespace Database

open scoped BigOperators

/-- **Rule 15**: Colored product.
    Given families `C₁ : Λ → Finset (QaryWord q n₁)` and
    `C₂ : Λ → Finset (QaryWord q n₂)` with a compatible covering hypothesis,
    their colored product gives an upper bound for `K_q(n₁ + n₂, r₁ + r₂)`. -/
theorem colored_product_upper
    {q n₁ n₂ r₁ r₂ : ℕ}
    {Λ : Type} [Fintype Λ]
    (C₁ : Λ → Finset (QaryWord q n₁))
    (C₂ : Λ → Finset (QaryWord q n₂))
    (hcover :
      ∀ x₁ : QaryWord q n₁,
      ∀ x₂ : QaryWord q n₂,
        ∃ l : Λ,
        ∃ c₁, c₁ ∈ C₁ l ∧
        ∃ c₂, c₂ ∈ C₂ l ∧
          dist x₁ c₁ ≤ r₁ ∧
          dist x₂ c₂ ≤ r₂) :
    QaryKUpper q (n₁ + n₂) (r₁ + r₂)
      (∑ l : Λ, (C₁ l).card * (C₂ l).card) :=
  upper_colored_product C₁ C₂ hcover

end Database
end CoveringCodes
