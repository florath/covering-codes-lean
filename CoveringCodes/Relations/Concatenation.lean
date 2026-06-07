import CoveringCodes.CoveringNumber
import Mathlib.Logic.Equiv.Fin.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-!
# General concatenation (Rule 10)

An explicit inner `q`-ary covering family indexed by an outer alphabet `Fin Q`,
together with an outer `Q`-ary covering code, gives a concatenated `q`-ary
covering code.

This is the proof-carrying construction form of Rule 10 from
`covering_code_neighbor_relations.md`: the inner family is already padded to the
`Q` outer symbols by the map `inner : Fin Q -> QaryWord q m`.
-/

namespace CoveringCodes

open scoped BigOperators

section Concatenation

/-- The `j`-th length-`m` block of a word of length `m * N`. -/
private def blockOf {q m N : ℕ} (x : QaryWord q (m * N)) (j : Fin N) : QaryWord q m :=
  fun i => x (finProdFinEquiv ⟨i, j⟩)

/-- Replace every outer symbol by its corresponding inner `q`-ary block. -/
private def concatBlocks {q Q m N : ℕ} (inner : Fin Q → QaryWord q m)
    (w : QaryWord Q N) : QaryWord q (m * N) :=
  fun k =>
    let p := finProdFinEquiv.symm k
    inner (w p.2) p.1

/-- Hamming distance to a block-concatenated word is the sum of the block distances. -/
private theorem dist_concatBlocks_eq_sum {q Q m N : ℕ}
    (x : QaryWord q (m * N)) (inner : Fin Q → QaryWord q m) (w : QaryWord Q N) :
    dist x (concatBlocks inner w) =
      ∑ j : Fin N, dist (blockOf x j) (inner (w j)) := by
  classical
  simp only [dist, hammingDist, blockOf, concatBlocks]
  let e : Fin m × Fin N ≃ Fin (m * N) := finProdFinEquiv
  let P : Fin m × Fin N → Prop := fun p => x (e p) ≠ inner (w p.2) p.1
  have hmap :
      (Finset.univ.filter
        (fun k : Fin (m * N) => x k ≠ inner (w (e.symm k).2) (e.symm k).1)).card =
      ((Finset.univ : Finset (Fin m × Fin N)).filter P).card := by
    have hset :
        Finset.map e.toEmbedding (((Finset.univ : Finset (Fin m × Fin N)).filter P)) =
        (Finset.univ.filter
          (fun k : Fin (m * N) => x k ≠ inner (w (e.symm k).2) (e.symm k).1)) := by
      ext k
      constructor
      · intro hk
        rcases Finset.mem_map.mp hk with ⟨p, hp, hpk⟩
        simp only [Finset.mem_filter, Finset.mem_univ, true_and]
        rw [← hpk]
        have hpP : P p := by simpa using hp
        simpa [P, e] using hpP
      · intro hk
        simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hk
        refine Finset.mem_map.mpr ⟨e.symm k, ?_, e.apply_symm_apply k⟩
        simp only [Finset.mem_filter, Finset.mem_univ, true_and]
        change x (e (e.symm k)) ≠ inner (w (e.symm k).2) (e.symm k).1
        rw [e.apply_symm_apply k]
        exact hk
    rw [← hset, Finset.card_map]
  rw [hmap]
  calc
    ((Finset.univ : Finset (Fin m × Fin N)).filter P).card
        = ∑ p : Fin m × Fin N, if P p then 1 else 0 := by
          rw [Finset.card_eq_sum_ones]
          rw [Finset.sum_filter]
    _ = ((Finset.univ : Finset (Fin m)).product (Finset.univ : Finset (Fin N))).sum
          (fun p : Fin m × Fin N => if P p then 1 else 0) := by
          simp
    _ = (Finset.univ : Finset (Fin m)).sum
          (fun i => (Finset.univ : Finset (Fin N)).sum
            (fun j => if P (i, j) then 1 else 0)) := by
          exact Finset.sum_product (s := (Finset.univ : Finset (Fin m)))
            (t := (Finset.univ : Finset (Fin N)))
            (f := fun p : Fin m × Fin N => if P p then 1 else 0)
    _ = ∑ i : Fin m, ∑ j : Fin N, if P (i, j) then 1 else 0 := by
          rfl
    _ = ∑ j : Fin N, ∑ i : Fin m, if P (i, j) then 1 else 0 := by
          rw [Finset.sum_comm]
    _ = ∑ j : Fin N, ((Finset.univ.filter (fun i : Fin m => P (i, j))).card) := by
          apply Finset.sum_congr rfl
          intro j _
          rw [Finset.card_eq_sum_ones]
          rw [Finset.sum_filter]

/-- Summing a `rho` cost on matching outer symbols and an `m` cost on changed outer
symbols gives the Rule 10 radius formula. -/
private theorem sum_match_mismatch_le {Q N rho m R : ℕ} (hrho : rho ≤ m)
    {y z : QaryWord Q N} (hyz : dist y z ≤ R) :
    (∑ j : Fin N, if y j = z j then rho else m) ≤ N * rho + R * (m - rho) := by
  classical
  have hsum :
      (∑ j : Fin N, if y j = z j then rho else m) =
        N * rho + dist y z * (m - rho) := by
    have hrewrite : ∀ j : Fin N,
        (if y j = z j then rho else m) =
          rho + (if y j = z j then 0 else m - rho) := by
      intro j
      by_cases h : y j = z j
      · simp [h]
      · simp [h, Nat.add_sub_of_le hrho]
    calc
      (∑ j : Fin N, if y j = z j then rho else m)
          = ∑ j : Fin N, (rho + (if y j = z j then 0 else m - rho)) := by
            apply Finset.sum_congr rfl
            intro j _
            exact hrewrite j
      _ = (∑ _j : Fin N, rho) +
            ∑ j : Fin N, (if y j = z j then 0 else m - rho) := by
            rw [Finset.sum_add_distrib]
      _ = N * rho + dist y z * (m - rho) := by
            congr
            · simp
            · calc
                (∑ j : Fin N, (if y j = z j then 0 else m - rho))
                    = ∑ j : Fin N, (if y j ≠ z j then m - rho else 0) := by
                        apply Finset.sum_congr rfl
                        intro j _
                        by_cases h : y j = z j
                        · simp [h]
                        · simp [h]
                _ = (Finset.univ.filter (fun j : Fin N => y j ≠ z j)).sum
                        (fun _j => m - rho) := by
                        rw [← Finset.sum_filter]
                _ = dist y z * (m - rho) := by
                        simp [dist, hammingDist, Finset.sum_const]
  calc
    (∑ j : Fin N, if y j = z j then rho else m)
        = N * rho + dist y z * (m - rho) := hsum
    _ ≤ N * rho + R * (m - rho) :=
        Nat.add_le_add_left (Nat.mul_le_mul_right (m - rho) hyz) (N * rho)

/-- **Rule 10 (upper, explicit inner alphabet).**

Assume every length-`m` `q`-ary block is within distance `rho` of one of the
inner blocks indexed by `Fin Q`. If an outer `Q`-ary length-`N` code covers with
radius `R` and size at most `U`, then concatenating outer codewords through the
inner blocks gives a `q`-ary code of length `m * N`, size at most `U`, and radius
`N * rho + R * (m - rho)`.
-/
theorem upper_concatenation {q m rho Q N R U : ℕ}
    (hrho : rho ≤ m)
    (inner : Fin Q → QaryWord q m)
    (hInner : ∀ x : QaryWord q m, ∃ a : Fin Q, dist x (inner a) ≤ rho)
    (hOuter : QaryKUpper Q N R U) :
    QaryKUpper q (m * N) (N * rho + R * (m - rho)) U := by
  classical
  obtain ⟨C, hcard, hcov⟩ := hOuter
  refine ⟨C.image (concatBlocks inner), Finset.card_image_le.trans hcard, ?_⟩
  intro x
  let y : QaryWord Q N := fun j => Classical.choose (hInner (blockOf x j))
  have hy : ∀ j : Fin N, dist (blockOf x j) (inner (y j)) ≤ rho := by
    intro j
    exact Classical.choose_spec (hInner (blockOf x j))
  obtain ⟨z, hz, hyz⟩ := hcov y
  refine ⟨concatBlocks inner z, Finset.mem_image.mpr ⟨z, hz, rfl⟩, ?_⟩
  rw [dist_concatBlocks_eq_sum]
  calc
    (∑ j : Fin N, dist (blockOf x j) (inner (z j)))
        ≤ ∑ j : Fin N, if y j = z j then rho else m := by
          apply Finset.sum_le_sum
          intro j _
          by_cases h : y j = z j
          · simp [h]
            simpa [h] using hy j
          · simp [h]
            exact (dist_le_card (blockOf x j) (inner (z j))).trans_eq (Fintype.card_fin m)
    _ ≤ N * rho + R * (m - rho) :=
          sum_match_mismatch_le hrho hyz

end Concatenation

end CoveringCodes
