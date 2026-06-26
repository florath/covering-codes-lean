import CoveringCodes.Bounds.Balls
import Mathlib.Tactic

/-!
# Paper-local q-ary notation for Gijswijt--Polak 2025

This file introduces notation used by the paper without changing the project's
core covering-code definitions.
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

/-- The all-zero q-ary word. -/
def zeroWord (q n : Nat) (hq : 0 < q) : QaryWord q n :=
  fun _ => ⟨0, hq⟩

/-- Hamming weight relative to the all-zero word. -/
def weight (q n : Nat) (hq : 0 < q) (x : QaryWord q n) : Nat :=
  dist x (zeroWord q n hq)

/-- The exact sphere of radius `i` around `center`. -/
def sphereFinset (q n : Nat) (center : QaryWord q n) (i : Nat) :
    Finset (QaryWord q n) :=
  Finset.univ.filter (fun x => dist x center = i)

/-- Number of codewords in `C` at distance exactly `i` from `u`. -/
def shellCount (q n : Nat) (C : Finset (QaryWord q n))
    (u : QaryWord q n) (i : Nat) : Nat :=
  (C.filter (fun c => dist u c = i)).card

/-- The q-ary sphere-size formula as a natural number. -/
def sphereSize (q n i : Nat) : Nat :=
  Nat.choose n i * (q - 1) ^ i

@[simp]
theorem mem_sphereFinset {q n i : Nat} {center x : QaryWord q n} :
    x ∈ sphereFinset q n center i ↔ dist x center = i := by
  simp [sphereFinset]

/-- The cardinality of `{v : Fin q | v ≠ a}` is `q - 1`. -/
private lemma card_ne (q : Nat) (a : Fin q) :
    (Finset.univ.filter (fun v : Fin q => v ≠ a)).card = q - 1 := by
  rw [Finset.filter_ne', Finset.card_erase_of_mem (Finset.mem_univ _),
      Finset.card_univ, Fintype.card_fin]

/-- A zero-radius sphere contains only its center. -/
private lemma card_sphereFinset_zero {q n : Nat} (center : QaryWord q n) :
    (sphereFinset q n center 0).card = 1 := by
  have h : sphereFinset q n center 0 = {center} := by
    ext x
    simp [sphereFinset]
  rw [h]
  simp

/-- The sphere recurrence obtained by splitting on the first coordinate. -/
private lemma card_sphereFinset_succ_succ {q n : Nat}
    (center : QaryWord q (n + 1)) (i : Nat) :
    (sphereFinset q (n + 1) center (i + 1)).card =
      (sphereFinset q n (Fin.tail center) (i + 1)).card +
        (q - 1) * (sphereFinset q n (Fin.tail center) i).card := by
  let M := (sphereFinset q (n + 1) center (i + 1)).filter
    (fun x => x 0 = center 0)
  let D := (sphereFinset q (n + 1) center (i + 1)).filter
    (fun x => x 0 ≠ center 0)
  have hdisjoint : Disjoint M D :=
    Finset.disjoint_filter.mpr (fun _ _ h1 h2 => h2 h1)
  have hunion : sphereFinset q (n + 1) center (i + 1) = M ∪ D := by
    ext x
    simp only [M, D, Finset.mem_union, Finset.mem_filter]
    constructor
    · intro hx
      by_cases h : x 0 = center 0
      · exact Or.inl ⟨hx, h⟩
      · exact Or.inr ⟨hx, h⟩
    · rintro (⟨hx, _⟩ | ⟨hx, _⟩) <;> exact hx
  rw [hunion, Finset.card_union_of_disjoint hdisjoint]
  congr 1
  · apply Finset.card_bij (fun x _ => Fin.tail x)
    · intro x hx
      simp only [M, Finset.mem_filter, mem_sphereFinset] at hx
      rw [mem_sphereFinset]
      have hdist := hx.1
      rw [dist, hammingDist_eq_tail, if_pos hx.2, zero_add] at hdist
      exact hdist
    · intro x₁ hx₁ x₂ hx₂ htail
      simp only [M, Finset.mem_filter] at hx₁ hx₂
      have h0 : x₁ 0 = x₂ 0 := hx₁.2.trans hx₂.2.symm
      calc
        x₁ = Fin.cons (x₁ 0) (Fin.tail x₁) := (Fin.cons_self_tail x₁).symm
        _ = Fin.cons (x₂ 0) (Fin.tail x₂) := by rw [h0, htail]
        _ = x₂ := Fin.cons_self_tail x₂
    · intro y hy
      refine ⟨Fin.cons (center 0) y, ?_, Fin.tail_cons _ _⟩
      simp only [M, Finset.mem_filter, Fin.cons_zero, and_true]
      rw [mem_sphereFinset, dist, hammingDist_eq_tail, Fin.cons_zero, if_pos rfl,
        zero_add, Fin.tail_cons]
      simpa using hy
  · have hbij : D.card =
        ((Finset.univ.filter (fun v : Fin q => v ≠ center 0)) ×ˢ
          sphereFinset q n (Fin.tail center) i).card := by
      apply Finset.card_bij (fun x _ => (x 0, Fin.tail x))
      · intro x hx
        simp only [D, Finset.mem_filter, mem_sphereFinset] at hx
        simp only [Finset.mem_product, Finset.mem_filter, Finset.mem_univ, true_and,
          mem_sphereFinset]
        refine ⟨hx.2, ?_⟩
        have hdist := hx.1
        rw [dist, hammingDist_eq_tail, if_neg hx.2] at hdist
        change hammingDist (Fin.tail x) (Fin.tail center) = i
        omega
      · intro x₁ _ x₂ _ h
        simp only [Prod.mk.injEq] at h
        calc
          x₁ = Fin.cons (x₁ 0) (Fin.tail x₁) := (Fin.cons_self_tail x₁).symm
          _ = Fin.cons (x₂ 0) (Fin.tail x₂) := by rw [h.1, h.2]
          _ = x₂ := Fin.cons_self_tail x₂
      · intro ⟨v, y⟩ hvy
        simp only [Finset.mem_product, Finset.mem_filter, Finset.mem_univ, true_and,
          mem_sphereFinset] at hvy
        refine ⟨Fin.cons v y, ?_, by simp [Fin.cons_zero, Fin.tail_cons]⟩
        simp only [D, Finset.mem_filter, Fin.cons_zero]
        refine ⟨?_, hvy.1⟩
        rw [mem_sphereFinset, dist, hammingDist_eq_tail, Fin.cons_zero,
          if_neg hvy.1, Fin.tail_cons]
        have hy : hammingDist y (Fin.tail center) = i := by
          simpa [dist] using hvy.2
        omega
    rw [hbij, Finset.card_product, card_ne q (center 0)]

/-- Cardinality of a q-ary Hamming sphere. -/
theorem card_sphereFinset (q n i : Nat) (center : QaryWord q n) :
    (sphereFinset q n center i).card = sphereSize q n i := by
  unfold sphereSize
  induction n generalizing i with
  | zero =>
      have hsub : Subsingleton (QaryWord q 0) := by infer_instance
      cases i with
      | zero =>
          have hs : sphereFinset q 0 center 0 = Finset.univ := by
            ext x
            simp [sphereFinset, dist, Subsingleton.elim x center]
          simp [hs]
      | succ i =>
          have hs : sphereFinset q 0 center (i + 1) = ∅ := by
            ext x
            simp [sphereFinset, dist, Subsingleton.elim x center]
          simp [hs]
  | succ n ih =>
      cases i with
      | zero =>
          rw [card_sphereFinset_zero]
          simp
      | succ i =>
          rw [card_sphereFinset_succ_succ, ih (i + 1) (Fin.tail center),
            ih i (Fin.tail center), Nat.choose_succ_succ']
          ring

/-- Double-counting shell incidences over the whole ambient space. -/
theorem sum_shellCount_over_space
    (q n i : Nat) (C : Finset (QaryWord q n)) :
    (Finset.univ.sum (fun u : QaryWord q n => shellCount q n C u i))
      = C.card * sphereSize q n i := by
  calc
    (Finset.univ.sum (fun u : QaryWord q n => shellCount q n C u i))
        = ∑ u : QaryWord q n, ∑ c ∈ C, if dist u c = i then 1 else 0 := by
          apply Finset.sum_congr rfl
          intro u _
          unfold shellCount
          rw [Finset.card_eq_sum_ones, Finset.sum_filter]
    _ = ∑ c ∈ C, ∑ u : QaryWord q n, if dist u c = i then 1 else 0 := by
          rw [Finset.sum_comm]
    _ = ∑ c ∈ C, (sphereFinset q n c i).card := by
          apply Finset.sum_congr rfl
          intro c _
          symm
          unfold sphereFinset
          rw [Finset.card_eq_sum_ones, Finset.sum_filter]
    _ = ∑ _c ∈ C, sphereSize q n i := by
          apply Finset.sum_congr rfl
          intro c _
          exact card_sphereFinset q n i c
    _ = C.card * sphereSize q n i := by
          rw [Finset.sum_const, smul_eq_mul]

end GijswijtPolak2025
end SDP
end CoveringCodes
