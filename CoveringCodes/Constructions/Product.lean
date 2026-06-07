import CoveringCodes.CoveringNumber

/-!
# Product constructions

This file proves the product construction for covering codes.

## The idea

If `C₁` covers the left coordinate block (index type `ι`) at radius `r₁`, and
`C₂` covers the right coordinate block (index type `κ`) at radius `r₂`, then the
**product code** `{sumWord c₁ c₂ | c₁ ∈ C₁, c₂ ∈ C₂}` covers the combined
coordinate block `ι ⊕ κ` at radius `r₁ + r₂`.

## Key fact

The Hamming distance on the sum type splits additively:

  `dist(sumWord x₁ x₂, sumWord y₁ y₂) = dist(x₁, y₁) + dist(x₂, y₂)`

because the `ι ⊕ κ` positions decompose into the left positions (where the `ι`
distance is counted) and the right positions (where the `κ` distance is counted).
-/

universe u v w

namespace CoveringCodes

section Product

variable {ι : Type u} {κ : Type v}
variable {β₁ : ι → Type w} {β₂ : κ → Type w}
variable [Fintype ι] [Fintype κ]
variable [DecidableEq ι] [DecidableEq κ]
variable [(i : ι) → DecidableEq (β₁ i)] [(j : κ) → DecidableEq (β₂ j)]
variable [(s : ι ⊕ κ) → DecidableEq (Sum.elim β₁ β₂ s)]

/--
A product word over `Sum ι κ`, built from one word on the left block and one
word on the right block.
-/
def sumWord (x₁ : (i : ι) → β₁ i) (x₂ : (j : κ) → β₂ j) :
    (s : Sum ι κ) → Sum.elim β₁ β₂ s :=
  fun s =>
    match s with
    | Sum.inl i => x₁ i
    | Sum.inr j => x₂ j

/-- The Hamming distance on the sum type splits as the sum of the two distances. -/
lemma hammingDist_sumWord (x₁ y₁ : Word ι β₁) (x₂ y₂ : Word κ β₂) :
    hammingDist (sumWord x₁ x₂) (sumWord y₁ y₂) =
    hammingDist x₁ y₁ + hammingDist x₂ y₂ := by
  simp only [hammingDist]
  -- The filter over `ι ⊕ κ` splits into the left and right parts
  have hfilter : Finset.univ.filter (fun s : ι ⊕ κ =>
        sumWord x₁ x₂ s ≠ sumWord y₁ y₂ s) =
      (Finset.univ.filter (fun i : ι => x₁ i ≠ y₁ i)).image Sum.inl ∪
      (Finset.univ.filter (fun j : κ => x₂ j ≠ y₂ j)).image Sum.inr := by
    ext s; cases s with
    | inl i => simp [sumWord, Finset.mem_union, Finset.mem_image, Finset.mem_filter]
    | inr j => simp [sumWord, Finset.mem_union, Finset.mem_image, Finset.mem_filter]
  -- The two image sets are disjoint (inl and inr are disjoint constructors)
  have hdisj : Disjoint
      ((Finset.univ.filter (fun i : ι => x₁ i ≠ y₁ i)).image Sum.inl)
      ((Finset.univ.filter (fun j : κ => x₂ j ≠ y₂ j)).image Sum.inr) := by
    simp only [Finset.disjoint_left, Finset.mem_image, Finset.mem_filter]
    rintro _ ⟨i, -, rfl⟩ ⟨j, -, h⟩
    exact Sum.inl_ne_inr h.symm
  rw [hfilter, Finset.card_union_of_disjoint hdisj,
      Finset.card_image_of_injective _ (fun a b h => Sum.inl.inj h),
      Finset.card_image_of_injective _ (fun a b h => Sum.inr.inj h)]

/-- The product of two finite codes in the sum-type word space. -/
def productCode (C₁ : Finset (Word ι β₁)) (C₂ : Finset (Word κ β₂)) :
    Finset (Word (ι ⊕ κ) (Sum.elim β₁ β₂)) :=
  (C₁ ×ˢ C₂).image (fun p => sumWord p.1 p.2)

/-- **Product covering theorem**: if `C₁` covers radius `r₁` and `C₂` covers
    radius `r₂`, then their product code covers radius `r₁ + r₂`. -/
theorem productCode_covers (C₁ : Finset (Word ι β₁)) (C₂ : Finset (Word κ β₂))
    (r₁ r₂ : ℕ) (h₁ : CoversFinset C₁ r₁) (h₂ : CoversFinset C₂ r₂) :
    CoversFinset (productCode C₁ C₂) (r₁ + r₂) := by
  intro x
  -- Decompose x into its left and right projections
  let x₁ : Word ι β₁ := fun i => x (Sum.inl i)
  let x₂ : Word κ β₂ := fun j => x (Sum.inr j)
  -- x reassembles from its projections
  have hx : x = sumWord x₁ x₂ := funext fun s => by cases s <;> rfl
  -- Cover each projection separately
  obtain ⟨c₁, hc₁, hd₁⟩ := h₁ x₁
  obtain ⟨c₂, hc₂, hd₂⟩ := h₂ x₂
  -- The product codeword sumWord c₁ c₂ covers x
  refine ⟨sumWord c₁ c₂, ?_, ?_⟩
  · -- Membership: (c₁, c₂) ∈ C₁ ×ˢ C₂, so sumWord c₁ c₂ is in the image
    exact Finset.mem_image.mpr ⟨(c₁, c₂), Finset.mem_product.mpr ⟨hc₁, hc₂⟩, rfl⟩
  · -- Distance bound: dist splits additively, and each part is bounded
    rw [hx]
    show hammingDist (sumWord x₁ x₂) (sumWord c₁ c₂) ≤ r₁ + r₂
    rw [hammingDist_sumWord]
    exact Nat.add_le_add hd₁ hd₂

end Product

end CoveringCodes
