import CoveringCodes.Relations.DirectProduct
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-!
# Colored product (Rule 15)

A colored or amalgamated product keeps only matching-color pairs from two families
of code classes.  The compatibility hypothesis says that every target pair can be
covered by some common color.
-/

namespace CoveringCodes

open scoped BigOperators

section ColoredProduct

variable {q n₁ n₂ r₁ r₂ : ℕ}
variable {Λ : Type} [Fintype Λ]

/-- The colored product code: union over colors of matching-color concatenations. -/
private def coloredProductCode
    (C₁ : Λ → Finset (QaryWord q n₁))
    (C₂ : Λ → Finset (QaryWord q n₂)) :
    Finset (QaryWord q (n₁ + n₂)) :=
  Finset.univ.biUnion fun l : Λ =>
    ((C₁ l) ×ˢ (C₂ l)).image (fun p => Fin.append p.1 p.2)

private theorem coloredProductCode_card_le
    (C₁ : Λ → Finset (QaryWord q n₁))
    (C₂ : Λ → Finset (QaryWord q n₂)) :
    (coloredProductCode C₁ C₂).card ≤
      ∑ l : Λ, (C₁ l).card * (C₂ l).card := by
  classical
  calc
    (coloredProductCode C₁ C₂).card
        ≤ ∑ l ∈ (Finset.univ : Finset Λ), (((C₁ l) ×ˢ (C₂ l)).image
            (fun p => Fin.append p.1 p.2)).card := by
          exact Finset.card_biUnion_le
    _ ≤ ∑ l : Λ, ((C₁ l) ×ˢ (C₂ l)).card := by
          apply Finset.sum_le_sum
          intro l _
          exact Finset.card_image_le
    _ = ∑ l : Λ, (C₁ l).card * (C₂ l).card := by
          apply Finset.sum_congr rfl
          intro l _
          exact Finset.card_product (C₁ l) (C₂ l)

private theorem coloredProductCode_covers
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
    CoversFinset (coloredProductCode C₁ C₂) (r₁ + r₂) := by
  classical
  intro x
  obtain ⟨l, c₁, hc₁, c₂, hc₂, hd₁, hd₂⟩ :=
    hcover (x ∘ Fin.castAdd n₂) (x ∘ Fin.natAdd n₁)
  refine ⟨Fin.append c₁ c₂, ?_, ?_⟩
  · exact Finset.mem_biUnion.mpr ⟨l, Finset.mem_univ _,
      Finset.mem_image.mpr ⟨(c₁, c₂), Finset.mem_product.mpr ⟨hc₁, hc₂⟩, rfl⟩⟩
  · simp only [dist, hammingDist_append]
    exact Nat.add_le_add hd₁ hd₂

/-- **Rule 15 (colored product).** -/
theorem upper_colored_product
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
      (∑ l : Λ, (C₁ l).card * (C₂ l).card) := by
  exact ⟨coloredProductCode C₁ C₂,
    coloredProductCode_card_le C₁ C₂,
    coloredProductCode_covers C₁ C₂ hcover⟩

end ColoredProduct

end CoveringCodes
