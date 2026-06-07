import CoveringCodes.Bounds.Balls
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Sparse-slice lower bound for `K_q(3,1)`

This file formalizes the sparse-slice argument for q-ary length-three,
radius-one covering codes.  If a code has `m` words, some first-coordinate
fiber has at most `m / q` words.  Missing second- and third-coordinate values
inside that sparse fiber force `(q - m / q)^2` distinct last-two-coordinate
projections, so `(q - m / q)^2 <= m`.
-/

namespace CoveringCodes
namespace Database

private def coord0Fiber3 {q : Nat} (C : Finset (QaryWord q 3)) (a : Fin q) :
    Finset (QaryWord q 3) :=
  C.filter (fun w => w 0 = a)

private def secondValuesInFiber3 {q : Nat} (C : Finset (QaryWord q 3)) (a : Fin q) :
    Finset (Fin q) :=
  (coord0Fiber3 C a).image (fun w => w 1)

private def thirdValuesInFiber3 {q : Nat} (C : Finset (QaryWord q 3)) (a : Fin q) :
    Finset (Fin q) :=
  (coord0Fiber3 C a).image (fun w => w 2)

private def missingSecondInFiber3 {q : Nat} (C : Finset (QaryWord q 3)) (a : Fin q) :
    Finset (Fin q) :=
  Finset.univ \ secondValuesInFiber3 C a

private def missingThirdInFiber3 {q : Nat} (C : Finset (QaryWord q 3)) (a : Fin q) :
    Finset (Fin q) :=
  Finset.univ \ thirdValuesInFiber3 C a

private def pair23Values3 {q : Nat} (C : Finset (QaryWord q 3)) :
    Finset (Fin q × Fin q) :=
  C.image (fun w => (w 1, w 2))

/-- The sparse-slice lower bound for `K_q(3,1)`. -/
def sparseBound (q : Nat) : Nat :=
  (Finset.range (q + 1)).inf' ⟨0, Finset.mem_range.mpr (Nat.zero_lt_succ q)⟩
    (fun s => Nat.max (s * q) ((q - s) * (q - s)))

private theorem sparseBound_le_of_candidate {q s m : Nat} (hs : s ≤ q)
    (hsq : s * q ≤ m) (hmiss : (q - s) * (q - s) ≤ m) :
    sparseBound q ≤ m := by
  have hmem : s ∈ Finset.range (q + 1) :=
    Finset.mem_range.mpr (Nat.lt_succ_of_le hs)
  have hinf := Finset.inf'_le
    (s := Finset.range (q + 1))
    (f := fun s => Nat.max (s * q) ((q - s) * (q - s))) hmem
  have hmax : Nat.max (s * q) ((q - s) * (q - s)) ≤ m :=
    Nat.max_le.mpr ⟨hsq, hmiss⟩
  exact hinf.trans hmax

private theorem sparseBound_le_of_large_card {q m : Nat} (hlarge : q * q ≤ m) :
    sparseBound q ≤ m := by
  exact sparseBound_le_of_candidate (q := q) (s := q) (m := m) le_rfl
    (by simpa using hlarge) (by simp)

private theorem exists_sparse_fiber3 {q : Nat} (C : Finset (QaryWord q 3)) (hq : 0 < q) :
    ∃ a : Fin q, (coord0Fiber3 C a).card ≤ C.card / q := by
  by_contra h
  push Not at h
  have hsum : C.card = ∑ a : Fin q, (coord0Fiber3 C a).card := by
    unfold coord0Fiber3
    simpa using
      (Finset.card_eq_sum_card_fiberwise
        (s := C) (t := (Finset.univ : Finset (Fin q)))
        (f := fun w : QaryWord q 3 => w 0) (by intro w _hw; simp))
  have hsum_lower : q * (C.card / q + 1) ≤
      ∑ a : Fin q, (coord0Fiber3 C a).card := by
    calc
      q * (C.card / q + 1) = ∑ _a : Fin q, (C.card / q + 1) := by
        simp [Finset.sum_const, Fintype.card_fin]
      _ ≤ ∑ a : Fin q, (coord0Fiber3 C a).card := by
        exact Finset.sum_le_sum (fun a _ha => h a)
  have hlt : C.card < q * (C.card / q + 1) := by
    calc
      C.card = q * (C.card / q) + C.card % q := by
        exact (Nat.div_add_mod C.card q).symm
      _ < q * (C.card / q) + q := by
        exact Nat.add_lt_add_left (Nat.mod_lt C.card hq) _
      _ = q * (C.card / q + 1) := by ring
  omega

private theorem missingSecond_card_ge_of_sparse_fiber {q s : Nat}
    (C : Finset (QaryWord q 3)) (a : Fin q)
    (hrow : (coord0Fiber3 C a).card ≤ s) :
    q - s ≤ (missingSecondInFiber3 C a).card := by
  have hval : (secondValuesInFiber3 C a).card ≤ s := by
    exact Finset.card_image_le.trans hrow
  have hsub : secondValuesInFiber3 C a ⊆ (Finset.univ : Finset (Fin q)) := by
    intro x _hx
    simp
  rw [missingSecondInFiber3, Finset.card_sdiff_of_subset hsub]
  simp [Fintype.card_fin]
  omega

private theorem missingThird_card_ge_of_sparse_fiber {q s : Nat}
    (C : Finset (QaryWord q 3)) (a : Fin q)
    (hrow : (coord0Fiber3 C a).card ≤ s) :
    q - s ≤ (missingThirdInFiber3 C a).card := by
  have hval : (thirdValuesInFiber3 C a).card ≤ s := by
    exact Finset.card_image_le.trans hrow
  have hsub : thirdValuesInFiber3 C a ⊆ (Finset.univ : Finset (Fin q)) := by
    intro x _hx
    simp
  rw [missingThirdInFiber3, Finset.card_sdiff_of_subset hsub]
  simp [Fintype.card_fin]
  omega

private theorem two_diffs_contra {q : Nat} (x d : QaryWord q 3)
    (hd : hammingDist x d ≤ 1) {i j : Fin 3} (hij : i ≠ j)
    (hi : x i ≠ d i) (hj : x j ≠ d j) : False := by
  let F : Finset (Fin 3) := Finset.univ.filter (fun k => x k ≠ d k)
  have hFcard : F.card ≤ 1 := by simpa [F, hammingDist] using hd
  have hmemi : i ∈ F := by simp [F, hi]
  have hmemj : j ∈ F := by simp [F, hj]
  have heq := (Finset.card_le_one.mp hFcard) i hmemi j hmemj
  exact hij heq

private theorem dist_le_one_agrees_pair {q : Nat} (a b c : Fin q) (d : QaryWord q 3)
    (hd : hammingDist ![a, b, c] d ≤ 1) :
    (d 0 = a ∧ d 1 = b) ∨ (d 0 = a ∧ d 2 = c) ∨ (d 1 = b ∧ d 2 = c) := by
  by_cases h0 : d 0 = a
  · by_cases h1 : d 1 = b
    · exact Or.inl ⟨h0, h1⟩
    · by_cases h2 : d 2 = c
      · exact Or.inr (Or.inl ⟨h0, h2⟩)
      · exfalso
        exact two_diffs_contra ![a, b, c] d hd (i := 1) (j := 2) (by decide)
          (by simpa using fun h : b = d 1 => h1 h.symm)
          (by simpa using fun h : c = d 2 => h2 h.symm)
  · by_cases h1 : d 1 = b
    · by_cases h2 : d 2 = c
      · exact Or.inr (Or.inr ⟨h1, h2⟩)
      · exfalso
        exact two_diffs_contra ![a, b, c] d hd (i := 0) (j := 2) (by decide)
          (by simpa using fun h : a = d 0 => h0 h.symm)
          (by simpa using fun h : c = d 2 => h2 h.symm)
    · by_cases h2 : d 2 = c
      · exfalso
        exact two_diffs_contra ![a, b, c] d hd (i := 0) (j := 1) (by decide)
          (by simpa using fun h : a = d 0 => h0 h.symm)
          (by simpa using fun h : b = d 1 => h1 h.symm)
      · exfalso
        exact two_diffs_contra ![a, b, c] d hd (i := 0) (j := 1) (by decide)
          (by simpa using fun h : a = d 0 => h0 h.symm)
          (by simpa using fun h : b = d 1 => h1 h.symm)

private theorem forced_pair23_subset_of_sparse_fiber_cover {q : Nat}
    (C : Finset (QaryWord q 3)) (hC : CoversFinset C 1) (a : Fin q) :
    (missingSecondInFiber3 C a ×ˢ missingThirdInFiber3 C a) ⊆ pair23Values3 C := by
  intro p hp
  rw [Finset.mem_product] at hp
  rcases hp with ⟨hb, hc⟩
  have hb' := hb
  have hc' := hc
  rw [missingSecondInFiber3, Finset.mem_sdiff] at hb'
  rw [missingThirdInFiber3, Finset.mem_sdiff] at hc'
  let x : QaryWord q 3 := ![a, p.1, p.2]
  obtain ⟨d, hdC, hdist⟩ := hC x
  have hagree := dist_le_one_agrees_pair a p.1 p.2 d hdist
  rcases hagree with h01 | h02 | h12
  · exfalso
    exact hb'.2 (by
      refine Finset.mem_image.mpr ⟨d, ?_, h01.2⟩
      simp [coord0Fiber3, hdC, h01.1])
  · exfalso
    exact hc'.2 (by
      refine Finset.mem_image.mpr ⟨d, ?_, h02.2⟩
      simp [coord0Fiber3, hdC, h02.1])
  · refine Finset.mem_image.mpr ⟨d, hdC, ?_⟩
    exact Prod.ext h12.1 h12.2

private theorem sparse_slice_card_inequality {q : Nat}
    (C : Finset (QaryWord q 3)) (hC : CoversFinset C 1) (hq : 0 < q) :
    (q - C.card / q) * (q - C.card / q) ≤ C.card := by
  obtain ⟨a, hrow⟩ := exists_sparse_fiber3 C hq
  let B := missingSecondInFiber3 C a
  let D := missingThirdInFiber3 C a
  have hB : q - C.card / q ≤ B.card := by
    simpa [B] using missingSecond_card_ge_of_sparse_fiber C a hrow
  have hD : q - C.card / q ≤ D.card := by
    simpa [D] using missingThird_card_ge_of_sparse_fiber C a hrow
  have hprod : (q - C.card / q) * (q - C.card / q) ≤ (B ×ˢ D).card := by
    rw [Finset.card_product]
    exact Nat.mul_le_mul hB hD
  have hsubset : B ×ˢ D ⊆ pair23Values3 C := by
    simpa [B, D] using forced_pair23_subset_of_sparse_fiber_cover C hC a
  have hcardForced : (B ×ˢ D).card ≤ (pair23Values3 C).card :=
    Finset.card_le_card hsubset
  have hpairCard : (pair23Values3 C).card ≤ C.card := Finset.card_image_le
  omega

theorem sparseBound_valid (q : Nat) (hq : 2 ≤ q) :
    QaryKLower q 3 1 (sparseBound q) := by
  intro C hC
  have hqpos : 0 < q := by omega
  by_cases hlarge : q * q ≤ C.card
  · exact sparseBound_le_of_large_card hlarge
  · have hmiss := sparse_slice_card_inequality C hC hqpos
    have hsmall : C.card < q * q := Nat.lt_of_not_ge hlarge
    have hslt : C.card / q < q := by
      rw [Nat.div_lt_iff_lt_mul hqpos]
      exact hsmall
    exact sparseBound_le_of_candidate (q := q) (s := C.card / q) (m := C.card)
      (Nat.le_of_lt hslt) (Nat.div_mul_le_self C.card q) hmiss

def sparseSliceLowerName : String :=
  "lean_sparse_slicer"

def sparseSliceLower (q n r : Nat) : Nat :=
  if n = 3 ∧ r = 1 ∧ 2 ≤ q then sparseBound q else zeroLower q n r

theorem sparseSliceLower_source_valid (q n r : Nat) :
    QaryKLower q n r (sparseSliceLower q n r) := by
  by_cases h : n = 3 ∧ r = 1 ∧ 2 ≤ q
  · rcases h with ⟨rfl, rfl, hq⟩
    simpa [sparseSliceLower, hq] using sparseBound_valid q hq
  · simpa [sparseSliceLower, h] using zeroLower_valid q n r

def sparseSliceLowerSource : LowerBoundSource where
  value := sparseSliceLower
  trace := fun q n r =>
    .primitive sparseSliceLowerName (sparseSliceLower_source_valid q n r)

end Database
end CoveringCodes
