import CoveringCodes.CoveringNumber
import Mathlib.Logic.Equiv.Fin.Basic
import Mathlib.Data.Fintype.Card

/-!
# Block grouping/ungrouping (Rules 8, 9)

- **Rule 8 (Block grouping)**: Group every m consecutive q-ary symbols into one q^m-ary symbol.
  `K_{q^m}(N, r) ≤ K_q(m*N, r)`.

- **Rule 9 (Block ungrouping)**: Split each q^m-ary symbol into m q-ary symbols.
  `K_q(m*N, m*R) ≤ K_{q^m}(N, R)`.
-/

namespace CoveringCodes

section BlockTransforms

-- Bijection between m-tuples of q-ary symbols and Fin (q^m)
private noncomputable def blockEncode {q m : ℕ} : (Fin m → Fin q) ≃ Fin (q ^ m) :=
  (Fintype.equivFin (Fin m → Fin q)).trans
    (Fin.castOrderIso (by simp [Fintype.card_fin])).toEquiv

-- Group m consecutive q-ary positions into one q^m-ary symbol
private noncomputable def blockGroup {q m N : ℕ} (w : QaryWord q (m * N)) : QaryWord (q ^ m) N :=
  fun j => blockEncode (fun i => w (finProdFinEquiv ⟨i, j⟩))

-- Ungroup each q^m-ary symbol into m consecutive q-ary symbols
private noncomputable def blockUngroup {q m N : ℕ} (c : QaryWord (q ^ m) N) : QaryWord q (m * N) :=
  fun k =>
    let ij := finProdFinEquiv.symm k
    blockEncode.symm (c ij.2) ij.1

private theorem blockGroup_blockUngroup {q m N : ℕ} (c : QaryWord (q ^ m) N) :
    blockGroup (blockUngroup c) = c := by
  funext j
  simp only [blockGroup, blockUngroup]
  have hsimp : (fun i => blockEncode.symm (c (finProdFinEquiv.symm (finProdFinEquiv ⟨i, j⟩)).2)
                                           (finProdFinEquiv.symm (finProdFinEquiv ⟨i, j⟩)).1)
              = blockEncode.symm (c j) := by
    funext i; simp [finProdFinEquiv.symm_apply_apply]
  rw [hsimp, blockEncode.apply_symm_apply]

private theorem dist_blockGroup_le {q m N : ℕ} (w₁ w₂ : QaryWord q (m * N)) :
    dist (blockGroup w₁) (blockGroup w₂) ≤ dist w₁ w₂ := by
  simp only [dist, hammingDist]
  -- Each differing block contains a differing position; map j to it, then project.
  set S₂ := Finset.univ.filter (fun k : Fin (m * N) => w₁ k ≠ w₂ k)
  set π : Fin (m * N) → Fin N := fun k => (finProdFinEquiv.symm k).2
  calc (Finset.univ.filter (fun j : Fin N => blockGroup w₁ j ≠ blockGroup w₂ j)).card
      ≤ (S₂.image π).card := by
        apply Finset.card_le_card
        intro j hj
        simp only [Finset.mem_filter, Finset.mem_univ, true_and, blockGroup] at hj
        have hne : (fun i : Fin m => w₁ (finProdFinEquiv ⟨i, j⟩)) ≠
                   (fun i : Fin m => w₂ (finProdFinEquiv ⟨i, j⟩)) :=
          blockEncode.injective.ne_iff.mp hj
        rw [ne_eq, funext_iff, not_forall] at hne
        obtain ⟨i, hi⟩ := hne
        simp only [S₂, π, Finset.mem_image, Finset.mem_filter, Finset.mem_univ, true_and]
        exact ⟨finProdFinEquiv ⟨i, j⟩, hi, by simp⟩
    _ ≤ S₂.card := Finset.card_image_le

private theorem dist_blockUngroup_le {q m N : ℕ} (w : QaryWord q (m * N))
    (c : QaryWord (q ^ m) N) :
    dist w (blockUngroup c) ≤ m * dist (blockGroup w) c := by
  simp only [dist, hammingDist]
  set S_pos := Finset.univ.filter (fun k : Fin (m * N) => w k ≠ blockUngroup c k)
  set S_blk := Finset.univ.filter (fun j : Fin N => blockGroup w j ≠ c j)
  -- Key: if block j agrees, every position in block j agrees.
  have hkey : ∀ k : Fin (m * N),
      blockGroup w (finProdFinEquiv.symm k).2 = c (finProdFinEquiv.symm k).2 →
      w k = blockUngroup c k := by
    intro k hj
    simp only [blockGroup, blockUngroup] at *
    -- Apply blockEncode.symm to get the pointwise equality of the inner functions.
    have hfun : ∀ i : Fin m, w (finProdFinEquiv ⟨i, (finProdFinEquiv.symm k).2⟩) =
        blockEncode.symm (c (finProdFinEquiv.symm k).2) i := by
      intro i
      have := congr_arg blockEncode.symm hj
      simp only [blockEncode.symm_apply_apply] at this
      exact congr_fun this i
    -- Evaluate at i = (finProdFinEquiv.symm k).1; use Prod.mk.eta + apply_symm_apply.
    have h1 := hfun (finProdFinEquiv.symm k).1
    rwa [Prod.mk.eta, Equiv.apply_symm_apply] at h1
  -- finProdFinEquiv.symm injects S_pos into Fin m × S_blk.
  have hprod : ∀ k ∈ S_pos, finProdFinEquiv.symm k ∈ Finset.univ.product S_blk := by
    intro k hk
    simp only [S_pos, Finset.mem_filter, Finset.mem_univ, true_and] at hk
    refine Finset.mem_product.mpr ⟨Finset.mem_univ _, ?_⟩
    simp only [S_blk, Finset.mem_filter, Finset.mem_univ, true_and]
    exact fun h => hk (hkey k h)
  calc S_pos.card
      = (S_pos.image finProdFinEquiv.symm).card :=
          (Finset.card_image_of_injective _ finProdFinEquiv.symm.injective).symm
    _ ≤ (Finset.univ.product S_blk).card :=
          Finset.card_le_card (fun p hp => by
            obtain ⟨k, hk, rfl⟩ := Finset.mem_image.mp hp
            exact hprod k hk)
    _ = m * S_blk.card := by
          simp [Finset.card_product, Finset.card_univ, Fintype.card_fin]

/-- **Rule 8 (upper)**: K_{q^m}(N, r) ≤ K_q(m*N, r).
    Group each m consecutive q-ary symbols into one q^m-ary symbol. -/
theorem upper_block_group {q m N r U : ℕ}
    (h : QaryKUpper q (m * N) r U) :
    QaryKUpper (q ^ m) N r U := by
  obtain ⟨C, hcard, hcov⟩ := h
  refine ⟨C.image blockGroup, Finset.card_image_le.trans hcard, fun x => ?_⟩
  obtain ⟨c, hc, hd⟩ := hcov (blockUngroup x)
  exact ⟨blockGroup c, Finset.mem_image.mpr ⟨c, hc, rfl⟩,
         (blockGroup_blockUngroup x ▸ dist_blockGroup_le (blockUngroup x) c).trans hd⟩

/-- **Rule 8 (lower)**: K_q(m*N, r) ≥ L whenever K_{q^m}(N, r) ≥ L. -/
theorem lower_of_block_group {q m N r L : ℕ}
    (h : QaryKLower (q ^ m) N r L) :
    QaryKLower q (m * N) r L := by
  intro C hcov
  have hcov' : CoversFinset (C.image blockGroup) r := by
    intro x
    obtain ⟨c, hc, hd⟩ := hcov (blockUngroup x)
    exact ⟨blockGroup c, Finset.mem_image.mpr ⟨c, hc, rfl⟩,
           (blockGroup_blockUngroup x ▸ dist_blockGroup_le (blockUngroup x) c).trans hd⟩
  exact le_trans (h _ hcov') Finset.card_image_le

/-- **Rule 9 (upper)**: K_q(m*N, m*R) ≤ K_{q^m}(N, R).
    Replace each q^m-ary symbol with its m q-ary components. -/
theorem upper_block_ungroup {q m N R U : ℕ}
    (h : QaryKUpper (q ^ m) N R U) :
    QaryKUpper q (m * N) (m * R) U := by
  obtain ⟨C, hcard, hcov⟩ := h
  refine ⟨C.image blockUngroup, Finset.card_image_le.trans hcard, fun x => ?_⟩
  obtain ⟨c, hc, hd⟩ := hcov (blockGroup x)
  exact ⟨blockUngroup c, Finset.mem_image.mpr ⟨c, hc, rfl⟩,
         (dist_blockUngroup_le x c).trans (Nat.mul_le_mul_left m hd)⟩

/-- **Rule 9 (lower)**: K_{q^m}(N, R) ≥ L whenever K_q(m*N, m*R) ≥ L. -/
theorem lower_of_block_ungroup {q m N R L : ℕ}
    (h : QaryKLower q (m * N) (m * R) L) :
    QaryKLower (q ^ m) N R L := by
  intro C hcov
  have hcov' : CoversFinset (C.image blockUngroup) (m * R) := by
    intro x
    obtain ⟨c, hc, hd⟩ := hcov (blockGroup x)
    exact ⟨blockUngroup c, Finset.mem_image.mpr ⟨c, hc, rfl⟩,
           (dist_blockUngroup_le x c).trans (Nat.mul_le_mul_left m hd)⟩
  exact le_trans (h _ hcov') Finset.card_image_le

end BlockTransforms

end CoveringCodes
