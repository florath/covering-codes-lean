import CoveringCodes.CoveringNumber
import CoveringCodes.Database.Arithmetic
import Mathlib.Data.Fin.Tuple.Basic

/-!
# Direct product and repeated product (Rule 7)

K_q(n₁+n₂, r₁+r₂) ≤ K_q(n₁,r₁) · K_q(n₂,r₂).

We work entirely within `QaryWord` using `Fin.append`, `Fin.castAdd`, and `Fin.natAdd`.
`Fin.append c₁ c₂` puts the left block first (positions `Fin.castAdd n₂ i`)
and the right block second (positions `Fin.natAdd n₁ j`).
-/

namespace CoveringCodes

section DirectProduct

variable {q n₁ n₂ : ℕ}

/-- Hamming distance to a concatenated word splits as the sum of left and right distances. -/
theorem hammingDist_append (x : QaryWord q (n₁ + n₂))
    (c₁ : QaryWord q n₁) (c₂ : QaryWord q n₂) :
    hammingDist x (Fin.append c₁ c₂) =
    hammingDist (x ∘ Fin.castAdd n₂) c₁ +
    hammingDist (x ∘ Fin.natAdd n₁) c₂ := by
  simp only [hammingDist]
  -- Show the filter over Fin (n₁+n₂) splits into disjoint left and right images
  have hfilter : Finset.univ.filter (fun i : Fin (n₁ + n₂) => x i ≠ Fin.append c₁ c₂ i) =
      (Finset.univ.filter (fun i : Fin n₁ => x (Fin.castAdd n₂ i) ≠ c₁ i)).image
          (Fin.castAdd n₂) ∪
      (Finset.univ.filter (fun j : Fin n₂ => x (Fin.natAdd n₁ j) ≠ c₂ j)).image
          (Fin.natAdd n₁) := by
    ext i
    simp only [Finset.mem_filter, Finset.mem_univ, true_and,
               Finset.mem_union, Finset.mem_image]
    cases i using Fin.addCases with
    | left a =>
      simp only [Fin.append_left]
      constructor
      · intro h
        exact Or.inl ⟨a, h, rfl⟩
      · rintro (⟨b, hb, hba⟩ | ⟨b, _, hba⟩)
        · exact Fin.castAdd_injective n₁ n₂ hba ▸ hb
        · have hv := congr_arg Fin.val hba; simp [Fin.natAdd, Fin.castAdd] at hv; omega
    | right b =>
      simp only [Fin.append_right]
      constructor
      · intro h
        exact Or.inr ⟨b, h, rfl⟩
      · rintro (⟨a, _, hba⟩ | ⟨a, ha, hba⟩)
        · have hv := congr_arg Fin.val hba; simp [Fin.natAdd, Fin.castAdd] at hv; omega
        · exact Fin.natAdd_injective n₂ n₁ hba ▸ ha
  -- The two images are disjoint: castAdd values are < n₁, natAdd values are ≥ n₁
  have hdisj : Disjoint
      ((Finset.univ.filter (fun i : Fin n₁ => x (Fin.castAdd n₂ i) ≠ c₁ i)).image
          (Fin.castAdd n₂))
      ((Finset.univ.filter (fun j : Fin n₂ => x (Fin.natAdd n₁ j) ≠ c₂ j)).image
          (Fin.natAdd n₁)) := by
    simp only [Finset.disjoint_left, Finset.mem_image, Finset.mem_filter,
               Finset.mem_univ, true_and]
    rintro _ ⟨i, _, rfl⟩ ⟨j, _, h⟩
    have hv := congr_arg Fin.val h; simp [Fin.natAdd, Fin.castAdd] at hv; omega
  simp only [Function.comp_apply] at *
  rw [hfilter, Finset.card_union_of_disjoint hdisj,
      Finset.card_image_of_injective _ (Fin.castAdd_injective n₁ n₂),
      Finset.card_image_of_injective _ (Fin.natAdd_injective n₂ n₁)]

/-- The product code: all concatenations of a left codeword and a right codeword. -/
private def qaryProductCode
    (C₁ : Finset (QaryWord q n₁)) (C₂ : Finset (QaryWord q n₂)) :
    Finset (QaryWord q (n₁ + n₂)) :=
  (C₁ ×ˢ C₂).image (fun p => Fin.append p.1 p.2)

private theorem qaryProductCode_covers
    (C₁ : Finset (QaryWord q n₁)) (C₂ : Finset (QaryWord q n₂))
    {r₁ r₂ : ℕ} (h₁ : CoversFinset C₁ r₁) (h₂ : CoversFinset C₂ r₂) :
    CoversFinset (qaryProductCode C₁ C₂) (r₁ + r₂) := by
  intro x
  obtain ⟨c₁, hc₁, hd₁⟩ := h₁ (x ∘ Fin.castAdd n₂)
  obtain ⟨c₂, hc₂, hd₂⟩ := h₂ (x ∘ Fin.natAdd n₁)
  refine ⟨Fin.append c₁ c₂,
          Finset.mem_image.mpr ⟨(c₁, c₂), Finset.mem_product.mpr ⟨hc₁, hc₂⟩, rfl⟩, ?_⟩
  simp only [dist, hammingDist_append]
  exact Nat.add_le_add hd₁ hd₂

/-- **Rule 7 (upper)**: K_q(n₁+n₂, r₁+r₂) ≤ K_q(n₁,r₁) · K_q(n₂,r₂). -/
theorem upper_direct_product {r₁ r₂ U₁ U₂ : ℕ}
    (h₁ : QaryKUpper q n₁ r₁ U₁)
    (h₂ : QaryKUpper q n₂ r₂ U₂) :
    QaryKUpper q (n₁ + n₂) (r₁ + r₂) (U₁ * U₂) := by
  obtain ⟨C₁, hc₁, hcov₁⟩ := h₁
  obtain ⟨C₂, hc₂, hcov₂⟩ := h₂
  exact ⟨qaryProductCode C₁ C₂,
         Finset.card_image_le.trans (by rw [Finset.card_product]; exact Nat.mul_le_mul hc₁ hc₂),
         qaryProductCode_covers C₁ C₂ hcov₁ hcov₂⟩


/-- **Rule 7 (lower, left factor)**: a lower bound on the product instance and an upper
bound on the right factor give a lower bound on the left factor.

This is the proof-carrying version of
`K_q(n₁+n₂,r₁+r₂) ≥ L` and `K_q(n₂,r₂) ≤ U₂` implying
`K_q(n₁,r₁) ≥ ⌈L / U₂⌉`.
-/
theorem lower_of_direct_product_left {r₁ r₂ L U₂ : ℕ}
    (hU₂pos : 0 < U₂)
    (hLarge : QaryKLower q (n₁ + n₂) (r₁ + r₂) L)
    (h₂ : QaryKUpper q n₂ r₂ U₂) :
    QaryKLower q n₁ r₁ (Database.natCeilDiv L U₂) := by
  intro C₁ hcov₁
  obtain ⟨C₂, hcard₂, hcov₂⟩ := h₂
  have hprod_cov : CoversFinset (qaryProductCode C₁ C₂) (r₁ + r₂) :=
    qaryProductCode_covers C₁ C₂ hcov₁ hcov₂
  have hprod_card : (qaryProductCode C₁ C₂).card ≤ C₁.card * U₂ := by
    calc
      (qaryProductCode C₁ C₂).card
          ≤ (C₁ ×ˢ C₂).card := Finset.card_image_le
      _ = C₁.card * C₂.card := Finset.card_product C₁ C₂
      _ ≤ C₁.card * U₂ := Nat.mul_le_mul_left C₁.card hcard₂
  exact Database.natCeilDiv_le_of_le_mul hU₂pos ((hLarge _ hprod_cov).trans hprod_card)

/-- **Rule 7 (lower, right factor)**: a lower bound on the product instance and an upper
bound on the left factor give a lower bound on the right factor.

This is the symmetric counterpart to `lower_of_direct_product_left`.
-/
theorem lower_of_direct_product_right {r₁ r₂ L U₁ : ℕ}
    (hU₁pos : 0 < U₁)
    (hLarge : QaryKLower q (n₁ + n₂) (r₁ + r₂) L)
    (h₁ : QaryKUpper q n₁ r₁ U₁) :
    QaryKLower q n₂ r₂ (Database.natCeilDiv L U₁) := by
  intro C₂ hcov₂
  obtain ⟨C₁, hcard₁, hcov₁⟩ := h₁
  have hprod_cov : CoversFinset (qaryProductCode C₁ C₂) (r₁ + r₂) :=
    qaryProductCode_covers C₁ C₂ hcov₁ hcov₂
  have hprod_card : (qaryProductCode C₁ C₂).card ≤ C₂.card * U₁ := by
    calc
      (qaryProductCode C₁ C₂).card
          ≤ (C₁ ×ˢ C₂).card := Finset.card_image_le
      _ = C₁.card * C₂.card := Finset.card_product C₁ C₂
      _ = C₂.card * C₁.card := Nat.mul_comm C₁.card C₂.card
      _ ≤ C₂.card * U₁ := Nat.mul_le_mul_left C₂.card hcard₁
  exact Database.natCeilDiv_le_of_le_mul hU₁pos ((hLarge _ hprod_cov).trans hprod_card)

/-- **Rule 7 (repeated product)**: K_q(m·n, m·r) ≤ K_q(n,r)^m. -/
theorem upper_repeated_product {n r m U : ℕ}
    (h : QaryKUpper q n r U) :
    QaryKUpper q (m * n) (m * r) (U ^ m) := by
  induction m with
  | zero =>
    simp only [Nat.zero_mul, pow_zero]
    exact ⟨Finset.univ, by simp,
           fun x => ⟨x, Finset.mem_univ _, (dist_self x).le⟩⟩
  | succ m ih =>
    rw [Nat.succ_mul, Nat.succ_mul, pow_succ]
    exact upper_direct_product ih h

end DirectProduct

end CoveringCodes
