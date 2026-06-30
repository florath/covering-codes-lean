import CoveringCodes.Bounds.Balls
import CoveringCodes.Constructions.CoordinateDeletion
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

/-! ## A sharpened `7`-ary length-three lower bound -/

private def coordFiber3 {q : Nat} (C : Finset (QaryWord q 3)) (j : Fin 3)
    (a : Fin q) : Finset (QaryWord q 3) :=
  C.filter (fun w => w j = a)

private def tailFirstValuesInFiber3 {q : Nat} (C : Finset (QaryWord q 3))
    (j : Fin 3) (a : Fin q) : Finset (Fin q) :=
  (coordFiber3 C j a).image (fun w => deleteCoord j w 0)

private def tailSecondValuesInFiber3 {q : Nat} (C : Finset (QaryWord q 3))
    (j : Fin 3) (a : Fin q) : Finset (Fin q) :=
  (coordFiber3 C j a).image (fun w => deleteCoord j w 1)

private def missingTailFirstInFiber3 {q : Nat} (C : Finset (QaryWord q 3))
    (j : Fin 3) (a : Fin q) : Finset (Fin q) :=
  Finset.univ \ tailFirstValuesInFiber3 C j a

private def missingTailSecondInFiber3 {q : Nat} (C : Finset (QaryWord q 3))
    (j : Fin 3) (a : Fin q) : Finset (Fin q) :=
  Finset.univ \ tailSecondValuesInFiber3 C j a

private def tailPairValues3 {q : Nat} (C : Finset (QaryWord q 3)) (j : Fin 3) :
    Finset (Fin q × Fin q) :=
  C.image (fun w => (deleteCoord j w 0, deleteCoord j w 1))

private def tailPairValuesOutsideBox3 {q : Nat} (C : Finset (QaryWord q 3))
    (j : Fin 3) (a : Fin q) (R S : Finset (Fin q)) :
    Finset (Fin q × Fin q) :=
  (C.filter (fun w => w j ≠ a ∧ deleteCoord j w 0 ∈ R ∧ deleteCoord j w 1 ∈ S)).image
    (fun w => (deleteCoord j w 0, deleteCoord j w 1))

private def tailFirstRows3 {q : Nat} (C : Finset (QaryWord q 3))
    (j : Fin 3) (T : Finset (Fin q)) : Finset (QaryWord q 3) :=
  C.filter (fun w => deleteCoord j w 0 ∈ T)

private theorem missingTailFirst_card_ge_of_small_fiber {q s : Nat}
    (C : Finset (QaryWord q 3)) (j : Fin 3) (a : Fin q)
    (hrow : (coordFiber3 C j a).card ≤ s) :
    q - s ≤ (missingTailFirstInFiber3 C j a).card := by
  have hval : (tailFirstValuesInFiber3 C j a).card ≤ s := by
    exact Finset.card_image_le.trans hrow
  have hsub : tailFirstValuesInFiber3 C j a ⊆ (Finset.univ : Finset (Fin q)) := by
    intro x _hx
    simp
  rw [missingTailFirstInFiber3, Finset.card_sdiff_of_subset hsub]
  simp [Fintype.card_fin]
  omega

private theorem missingTailSecond_card_ge_of_small_fiber {q s : Nat}
    (C : Finset (QaryWord q 3)) (j : Fin 3) (a : Fin q)
    (hrow : (coordFiber3 C j a).card ≤ s) :
    q - s ≤ (missingTailSecondInFiber3 C j a).card := by
  have hval : (tailSecondValuesInFiber3 C j a).card ≤ s := by
    exact Finset.card_image_le.trans hrow
  have hsub : tailSecondValuesInFiber3 C j a ⊆ (Finset.univ : Finset (Fin q)) := by
    intro x _hx
    simp
  rw [missingTailSecondInFiber3, Finset.card_sdiff_of_subset hsub]
  simp [Fintype.card_fin]
  omega

private theorem dist_fin_two_eq_two_of_both_ne {q : Nat} (x y : QaryWord q 2)
    (h0 : x 0 ≠ y 0) (h1 : x 1 ≠ y 1) : dist x y = 2 := by
  classical
  simp only [dist, hammingDist]
  have hfilter :
      (Finset.univ.filter (fun i : Fin 2 => x i ≠ y i)) =
        (Finset.univ : Finset (Fin 2)) := by
    exact Finset.filter_true_of_mem (fun i _hi => by
      fin_cases i
      · exact h0
      · exact h1)
  rw [hfilter]
  simp

private theorem forced_tail_pair_subset_of_fiber_cover {q : Nat}
    (C : Finset (QaryWord q 3)) (hC : CoversFinset C 1)
    (j : Fin 3) (a : Fin q) :
    (missingTailFirstInFiber3 C j a ×ˢ missingTailSecondInFiber3 C j a) ⊆
      tailPairValues3 C j := by
  intro p hp
  rw [Finset.mem_product] at hp
  rcases hp with ⟨hp0, hp1⟩
  have hp0' := hp0
  have hp1' := hp1
  rw [missingTailFirstInFiber3, Finset.mem_sdiff] at hp0'
  rw [missingTailSecondInFiber3, Finset.mem_sdiff] at hp1'
  let x : QaryWord q 2 := ![p.1, p.2]
  obtain ⟨d, hdC, hdist⟩ := hC (insertCoord j a x)
  by_cases hdj : d j = a
  · have hdFiber : d ∈ coordFiber3 C j a := by
      simp [coordFiber3, hdC, hdj]
    have htail0 : x 0 ≠ deleteCoord j d 0 := by
      intro h
      exact hp0'.2 (by
        refine Finset.mem_image.mpr ⟨d, hdFiber, ?_⟩
        simpa [x] using h.symm)
    have htail1 : x 1 ≠ deleteCoord j d 1 := by
      intro h
      exact hp1'.2 (by
        refine Finset.mem_image.mpr ⟨d, hdFiber, ?_⟩
        simpa [x] using h.symm)
    have htail_two : dist x (deleteCoord j d) = 2 :=
      dist_fin_two_eq_two_of_both_ne x (deleteCoord j d) htail0 htail1
    have htail_le := dist_deleteCoord_le_dist_insertCoord j a x d
    have hfull_ge : 2 ≤ dist (insertCoord j a x) d := by
      calc
        2 = dist x (deleteCoord j d) := htail_two.symm
        _ ≤ dist (insertCoord j a x) d := htail_le
    omega
  · have hdrop := dist_deleteCoord_insertCoord_add_one_le j a x d hdj
    have htail_zero : dist x (deleteCoord j d) = 0 := by
      have hle : dist x (deleteCoord j d) + 1 ≤ 1 := hdrop.trans hdist
      omega
    have htail_eq : x = deleteCoord j d := dist_eq_zero.mp htail_zero
    refine Finset.mem_image.mpr ⟨d, hdC, ?_⟩
    apply Prod.ext
    · have h0 := congrFun htail_eq.symm (0 : Fin 2)
      simpa [x] using h0
    · have h1 := congrFun htail_eq.symm (1 : Fin 2)
      simpa [x] using h1

private theorem forced_tail_pair_subset_of_outside_box {q : Nat}
    (C : Finset (QaryWord q 3)) (hC : CoversFinset C 1)
    (j : Fin 3) (a : Fin q) {R S : Finset (Fin q)}
    (hR : R ⊆ missingTailFirstInFiber3 C j a)
    (hS : S ⊆ missingTailSecondInFiber3 C j a) :
    R ×ˢ S ⊆ tailPairValuesOutsideBox3 C j a R S := by
  intro p hp
  rw [Finset.mem_product] at hp
  rcases hp with ⟨hpR, hpS⟩
  have hp0 : p.1 ∈ missingTailFirstInFiber3 C j a := hR hpR
  have hp1 : p.2 ∈ missingTailSecondInFiber3 C j a := hS hpS
  have hp0' := hp0
  have hp1' := hp1
  rw [missingTailFirstInFiber3, Finset.mem_sdiff] at hp0'
  rw [missingTailSecondInFiber3, Finset.mem_sdiff] at hp1'
  let x : QaryWord q 2 := ![p.1, p.2]
  obtain ⟨d, hdC, hdist⟩ := hC (insertCoord j a x)
  by_cases hdj : d j = a
  · have hdFiber : d ∈ coordFiber3 C j a := by
      simp [coordFiber3, hdC, hdj]
    have htail0 : x 0 ≠ deleteCoord j d 0 := by
      intro h
      exact hp0'.2 (by
        refine Finset.mem_image.mpr ⟨d, hdFiber, ?_⟩
        simpa [x] using h.symm)
    have htail1 : x 1 ≠ deleteCoord j d 1 := by
      intro h
      exact hp1'.2 (by
        refine Finset.mem_image.mpr ⟨d, hdFiber, ?_⟩
        simpa [x] using h.symm)
    have htail_two : dist x (deleteCoord j d) = 2 :=
      dist_fin_two_eq_two_of_both_ne x (deleteCoord j d) htail0 htail1
    have htail_le := dist_deleteCoord_le_dist_insertCoord j a x d
    have hfull_ge : 2 ≤ dist (insertCoord j a x) d := by
      calc
        2 = dist x (deleteCoord j d) := htail_two.symm
        _ ≤ dist (insertCoord j a x) d := htail_le
    omega
  · have hdrop := dist_deleteCoord_insertCoord_add_one_le j a x d hdj
    have htail_zero : dist x (deleteCoord j d) = 0 := by
      have hle : dist x (deleteCoord j d) + 1 ≤ 1 := hdrop.trans hdist
      omega
    have htail_eq : x = deleteCoord j d := dist_eq_zero.mp htail_zero
    refine Finset.mem_image.mpr ⟨d, ?_, ?_⟩
    · simp [hdC, hdj]
      constructor
      · have h0 := congrFun htail_eq (0 : Fin 2)
        have h0' : p.1 = d (j.succAbove 0) := by
          simpa [x, deleteCoord] using h0
        exact h0' ▸ hpR
      · have h1 := congrFun htail_eq (1 : Fin 2)
        have h1' : p.2 = d (j.succAbove 1) := by
          simpa [x, deleteCoord] using h1
        exact h1' ▸ hpS
    · apply Prod.ext
      · have h0 := congrFun htail_eq.symm (0 : Fin 2)
        simpa [x] using h0
      · have h1 := congrFun htail_eq.symm (1 : Fin 2)
        simpa [x] using h1

private theorem tailFirstRows_card_eq_sum {q : Nat}
    (C : Finset (QaryWord q 3)) (j : Fin 3) (T : Finset (Fin q)) :
    (tailFirstRows3 C j T).card =
      ∑ b ∈ T, ((tailFirstRows3 C j T).filter
        (fun w => deleteCoord j w 0 = b)).card := by
  unfold tailFirstRows3
  simpa using
    (Finset.card_eq_sum_card_fiberwise
      (s := C.filter (fun w => deleteCoord j w 0 ∈ T)) (t := T)
      (f := fun w : QaryWord q 3 => deleteCoord j w 0)
      (by
        intro w hw
        exact (Finset.mem_filter.mp hw).2))

private theorem tailFirstRows_card_lower {q m : Nat}
    (C : Finset (QaryWord q 3)) (j : Fin 3) (T : Finset (Fin q))
    (hT : T.card = m)
    (hmin : ∀ b ∈ T, m ≤ ((tailFirstRows3 C j T).filter
      (fun w => deleteCoord j w 0 = b)).card) :
    m * m ≤ (tailFirstRows3 C j T).card := by
  rw [tailFirstRows_card_eq_sum C j T]
  calc
    m * m = T.card * m := by rw [hT]
    _ = ∑ _b ∈ T, m := by simp [Finset.sum_const]
    _ ≤ ∑ b ∈ T, ((tailFirstRows3 C j T).filter
        (fun w => deleteCoord j w 0 = b)).card := by
      exact Finset.sum_le_sum (fun b hb => hmin b hb)

private theorem cross_section_quadratic_lower {q : Nat}
    (C : Finset (QaryWord q 3)) (hC : CoversFinset C 1)
    (j : Fin 3) (a : Fin q)
    (hmin : ∀ j' a', (coordFiber3 C j a).card ≤ (coordFiber3 C j' a').card)
    (hsmall : (coordFiber3 C j a).card ≤ q) :
    (coordFiber3 C j a).card * (coordFiber3 C j a).card +
        (q - (coordFiber3 C j a).card) * (q - (coordFiber3 C j a).card) ≤ C.card := by
  let m := (coordFiber3 C j a).card
  have hmissFirst : q - m ≤ (missingTailFirstInFiber3 C j a).card := by
    simpa [m] using
      missingTailFirst_card_ge_of_small_fiber (q := q) (s := m) C j a le_rfl
  have hmissSecond : q - m ≤ (missingTailSecondInFiber3 C j a).card := by
    simpa [m] using
      missingTailSecond_card_ge_of_small_fiber (q := q) (s := m) C j a le_rfl
  obtain ⟨R, hRsubset, hRcard⟩ := Finset.exists_subset_card_eq hmissFirst
  obtain ⟨S, hSsubset, hScard⟩ := Finset.exists_subset_card_eq hmissSecond
  let T : Finset (Fin q) := Finset.univ \ R
  have hTcard : T.card = m := by
    have hR_univ : R ⊆ (Finset.univ : Finset (Fin q)) := by intro x _; simp
    change (Finset.univ \ R).card = m
    rw [Finset.card_sdiff_of_subset hR_univ, hRcard]
    simp [Fintype.card_fin]
    omega
  have hbox_subset :
      R ×ˢ S ⊆ tailPairValuesOutsideBox3 C j a R S :=
    forced_tail_pair_subset_of_outside_box C hC j a hRsubset hSsubset
  have hbox_card :
      (q - m) * (q - m) ≤
        (C.filter (fun w => w j ≠ a ∧ deleteCoord j w 0 ∈ R ∧ deleteCoord j w 1 ∈ S)).card := by
    calc
      (q - m) * (q - m) = (R ×ˢ S).card := by simp [Finset.card_product, hRcard, hScard]
      _ ≤ (tailPairValuesOutsideBox3 C j a R S).card := Finset.card_le_card hbox_subset
      _ ≤ (C.filter (fun w => w j ≠ a ∧ deleteCoord j w 0 ∈ R ∧ deleteCoord j w 1 ∈ S)).card :=
        Finset.card_image_le
  have hrow_min :
      ∀ b ∈ T, m ≤ ((tailFirstRows3 C j T).filter
        (fun w => deleteCoord j w 0 = b)).card := by
    intro b hb
    have h := hmin (j.succAbove 0) b
    have heq :
        (tailFirstRows3 C j T).filter (fun w => deleteCoord j w 0 = b) =
          C.filter (fun w => deleteCoord j w 0 = b) := by
      ext w
      simp only [tailFirstRows3, Finset.mem_filter]
      constructor
      · rintro ⟨⟨hwC, _hwT⟩, hwb⟩
        exact ⟨hwC, hwb⟩
      · rintro ⟨hwC, hwb⟩
        exact ⟨⟨hwC, by rw [hwb]; exact hb⟩, hwb⟩
    have h' : m ≤ (C.filter (fun w => deleteCoord j w 0 = b)).card := by
      simpa [m, coordFiber3, deleteCoord] using h
    rw [heq]
    exact h'
  have hrows_card : m * m ≤ (tailFirstRows3 C j T).card :=
    tailFirstRows_card_lower C j T hTcard hrow_min
  have hdisjoint :
      Disjoint
        (C.filter (fun w => w j ≠ a ∧ deleteCoord j w 0 ∈ R ∧ deleteCoord j w 1 ∈ S))
        (tailFirstRows3 C j T) := by
    rw [Finset.disjoint_left]
    intro w hwbox hwrow
    have hwrow' : w ∈ C ∧ deleteCoord j w 0 ∈ T := by
      simpa [tailFirstRows3] using hwrow
    have hrowT : deleteCoord j w 0 ∈ T := hwrow'.2
    have hboxR : deleteCoord j w 0 ∈ R :=
      (Finset.mem_filter.mp hwbox).2.2.1
    change deleteCoord j w 0 ∈ Finset.univ \ R at hrowT
    rw [Finset.mem_sdiff] at hrowT
    exact hrowT.2 hboxR
  have hunion_subset :
      (C.filter (fun w => w j ≠ a ∧ deleteCoord j w 0 ∈ R ∧ deleteCoord j w 1 ∈ S)) ∪
          tailFirstRows3 C j T ⊆ C := by
    intro w hw
    rcases Finset.mem_union.mp hw with h | h
    · exact (Finset.mem_filter.mp h).1
    · have h' : w ∈ C ∧ deleteCoord j w 0 ∈ T := by
        simpa [tailFirstRows3] using h
      exact h'.1
  have htotal :
      (C.filter (fun w => w j ≠ a ∧ deleteCoord j w 0 ∈ R ∧ deleteCoord j w 1 ∈ S)).card +
          (tailFirstRows3 C j T).card ≤ C.card := by
    rw [← Finset.card_union_of_disjoint hdisjoint]
    exact Finset.card_le_card hunion_subset
  change m * m + (q - m) * (q - m) ≤ C.card
  omega

private theorem coordFiber3_card_sum {q : Nat} (C : Finset (QaryWord q 3))
    (j : Fin 3) :
    C.card = ∑ a : Fin q, (coordFiber3 C j a).card := by
  unfold coordFiber3
  simpa using
    (Finset.card_eq_sum_card_fiberwise
      (s := C) (t := (Finset.univ : Finset (Fin q)))
      (f := fun w : QaryWord q 3 => w j) (by intro w _hw; simp))

private theorem exists_min_coord_fiber3 {q : Nat} (C : Finset (QaryWord q 3))
    (hq : 0 < q) :
    ∃ j : Fin 3, ∃ a : Fin q,
      ∀ j' a', (coordFiber3 C j a).card ≤ (coordFiber3 C j' a').card := by
  let I : Finset (Fin 3 × Fin q) := Finset.univ
  have hI : I.Nonempty := by
    refine ⟨((0 : Fin 3), ⟨0, hq⟩), ?_⟩
    simp [I]
  obtain ⟨p, _hp, hpmin⟩ :=
    Finset.exists_min_image I (fun p : Fin 3 × Fin q => (coordFiber3 C p.1 p.2).card) hI
  refine ⟨p.1, p.2, ?_⟩
  intro j' a'
  exact hpmin (j', a') (by simp [I])

private theorem half_square_le_quadratic {q m : Nat} (hm : m ≤ q) :
    (q * q + 1) / 2 ≤ m * m + (q - m) * (q - m) := by
  let t := q - m
  let X := m * m + t * t
  have htq : m + t = q := by
    dsimp [t]
    omega
  have h2 : q * q ≤ 2 * X := by
    have h2z : (q * q : Int) ≤ (2 * X : Int) := by
      have hs := sq_nonneg ((m : Int) - (t : Int))
      have htqz : (q : Int) = (m : Int) + (t : Int) := by exact_mod_cast htq.symm
      dsimp [X]
      norm_num at hs ⊢
      nlinarith
    exact_mod_cast h2z
  have hceil : (q * q + 1) / 2 ≤ X := by
    omega
  simpa [X, t] using hceil

theorem qaryThreeOneHalfSquareLower_valid (q : Nat) (hq : 0 < q) :
    QaryKLower q 3 1 ((q * q + 1) / 2) := by
  intro C hC
  by_contra hnot
  have hcard_lt : C.card < (q * q + 1) / 2 := Nat.lt_of_not_ge hnot
  obtain ⟨j, a, hmin⟩ := exists_min_coord_fiber3 C hq
  let m := (coordFiber3 C j a).card
  have hqm : q * m ≤ C.card := by
    calc
      q * m = ∑ _b : Fin q, m := by simp [Finset.sum_const, Fintype.card_fin]
      _ ≤ ∑ b : Fin q, (coordFiber3 C 0 b).card := by
        exact Finset.sum_le_sum (fun b _hb => hmin 0 b)
      _ = C.card := (coordFiber3_card_sum C 0).symm
  have hsmall : m ≤ q := by
    have htarget : (q * q + 1) / 2 ≤ q * q := by omega
    by_contra hnot_small
    have hgt : q < m := by omega
    have hqm_gt : q * q < q * m := by nlinarith
    omega
  have hquad := cross_section_quadratic_lower C hC j a hmin hsmall
  have harith : (q * q + 1) / 2 ≤ m * m + (q - m) * (q - m) :=
    half_square_le_quadratic hsmall
  exact hnot (harith.trans hquad)

def qaryThreeOneHalfSquareLowerName : String :=
  "lean_qary_three_one_half_square_lower"

def qaryThreeOneHalfSquareLower (q n r : Nat) : Nat :=
  if 0 < q ∧ n = 3 ∧ r = 1 then (q * q + 1) / 2 else zeroLower q n r

theorem qaryThreeOneHalfSquareLower_source_valid (q n r : Nat) :
    QaryKLower q n r (qaryThreeOneHalfSquareLower q n r) := by
  by_cases h : 0 < q ∧ n = 3 ∧ r = 1
  · rcases h with ⟨hq, rfl, rfl⟩
    simpa [qaryThreeOneHalfSquareLower, hq] using
      qaryThreeOneHalfSquareLower_valid q hq
  · simpa [qaryThreeOneHalfSquareLower, h] using zeroLower_valid q n r

def qaryThreeOneHalfSquareLowerSource : LowerBoundSource where
  value := qaryThreeOneHalfSquareLower
  trace := fun q n r =>
    .primitive qaryThreeOneHalfSquareLowerName
      (qaryThreeOneHalfSquareLower_source_valid q n r)

/-- In a `7`-ary length-three radius-one cover with at most `21` words, no
coordinate-symbol fiber can have size at most two. -/
theorem qarySevenThreeOne_fiber_card_gt_two_of_card_le_twenty_one
    (C : Finset (QaryWord 7 3)) (hC : CoversFinset C 1)
    (hcard : C.card ≤ 21) (j : Fin 3) (a : Fin 7) :
    2 < (C.filter (fun w => w j = a)).card := by
  change 2 < (coordFiber3 C j a).card
  by_contra hnot
  have hrow : (coordFiber3 C j a).card ≤ 2 := by omega
  let B := missingTailFirstInFiber3 C j a
  let D := missingTailSecondInFiber3 C j a
  have hB : 5 ≤ B.card := by
    simpa [B] using
      missingTailFirst_card_ge_of_small_fiber (q := 7) (s := 2) C j a hrow
  have hD : 5 ≤ D.card := by
    simpa [D] using
      missingTailSecond_card_ge_of_small_fiber (q := 7) (s := 2) C j a hrow
  have hprod : 25 ≤ (B ×ˢ D).card := by
    rw [Finset.card_product]
    exact (by
      have hmul := Nat.mul_le_mul hB hD
      simpa using hmul)
  have hsubset : B ×ˢ D ⊆ tailPairValues3 C j := by
    simpa [B, D] using forced_tail_pair_subset_of_fiber_cover C hC j a
  have hforced : (B ×ˢ D).card ≤ (tailPairValues3 C j).card :=
    Finset.card_le_card hsubset
  have hpairCard : (tailPairValues3 C j).card ≤ C.card := Finset.card_image_le
  omega

private theorem qarySevenThreeOne_fiber_card_eq_three_of_card_le_twenty_one
    (C : Finset (QaryWord 7 3)) (hC : CoversFinset C 1)
    (hcard : C.card ≤ 21) (j : Fin 3) (a : Fin 7) :
    (coordFiber3 C j a).card = 3 := by
  have hgt :=
    qarySevenThreeOne_fiber_card_gt_two_of_card_le_twenty_one C hC hcard j a
  change 2 < (coordFiber3 C j a).card at hgt
  have hge : 3 ≤ (coordFiber3 C j a).card := by omega
  have hle : (coordFiber3 C j a).card ≤ 3 := by
    by_contra hnot
    have hge4 : 4 ≤ (coordFiber3 C j a).card := by omega
    have hsum_lower :
        (∑ b : Fin 7, (if b = a then 4 else 3 : Nat)) ≤
          ∑ b : Fin 7, (coordFiber3 C j b).card := by
      exact Finset.sum_le_sum (fun b _hb => by
        by_cases hba : b = a
        · subst b
          simpa using hge4
        · have hgtb :=
            qarySevenThreeOne_fiber_card_gt_two_of_card_le_twenty_one C hC hcard j b
          change 2 < (coordFiber3 C j b).card at hgtb
          have hgeb : 3 ≤ (coordFiber3 C j b).card := by omega
          simpa [hba] using hgeb)
    have hconst : (∑ b : Fin 7, (if b = a then 4 else 3 : Nat)) = 22 := by
      fin_cases a <;> decide
    have htotal : 22 ≤ C.card := by
      rw [coordFiber3_card_sum C j]
      exact hconst.symm ▸ hsum_lower
    omega
  exact le_antisymm hle hge

/-- A certified strengthening of the sparse-slice bound in the single case
needed by the `K_8(4,2)` singleton-fiber reduction. -/
theorem qarySevenThreeOneLowerTwentyTwo : QaryKLower 7 3 1 22 := by
  intro C hC
  by_contra hnot
  have hcard : C.card ≤ 21 := by omega
  let firstSymbolsWithSecond (y : Fin 7) : Finset (Fin 7) :=
    (coordFiber3 C 1 y).image (fun w => w 0)
  let firstSymbolsWithThird (z : Fin 7) : Finset (Fin 7) :=
    (coordFiber3 C 2 z).image (fun w => w 0)
  have hfirstSecond_card (y : Fin 7) : (firstSymbolsWithSecond y).card ≤ 3 := by
    calc
      (firstSymbolsWithSecond y).card ≤ (coordFiber3 C 1 y).card := Finset.card_image_le
      _ = 3 := qarySevenThreeOne_fiber_card_eq_three_of_card_le_twenty_one
        C hC hcard 1 y
  have hfirstThird_card (z : Fin 7) : (firstSymbolsWithThird z).card ≤ 3 := by
    calc
      (firstSymbolsWithThird z).card ≤ (coordFiber3 C 2 z).card := Finset.card_image_le
      _ = 3 := qarySevenThreeOne_fiber_card_eq_three_of_card_le_twenty_one
        C hC hcard 2 z
  have hallPairs : (Finset.univ : Finset (Fin 7 × Fin 7)) ⊆ pair23Values3 C := by
    intro p _hp
    let A := firstSymbolsWithSecond p.1
    let B := firstSymbolsWithThird p.2
    have hA : A.card ≤ 3 := by simpa [A] using hfirstSecond_card p.1
    have hB : B.card ≤ 3 := by simpa [B] using hfirstThird_card p.2
    have hUnion_lt : (A ∪ B).card < (Finset.univ : Finset (Fin 7)).card := by
      have hUnion := Finset.card_union_le A B
      simp [Fintype.card_fin]
      omega
    obtain ⟨a, _ha_univ, ha_not⟩ :=
      Finset.exists_mem_notMem_of_card_lt_card hUnion_lt
    have hmissSecond : p.1 ∈ missingSecondInFiber3 C a := by
      rw [missingSecondInFiber3, Finset.mem_sdiff]
      refine ⟨by simp, ?_⟩
      intro hpSecond
      exact ha_not (by
        rw [Finset.mem_union]
        left
        change a ∈ (coordFiber3 C 1 p.1).image (fun w => w 0)
        rcases Finset.mem_image.mp hpSecond with ⟨c, hcFiber, hcSecond⟩
        refine Finset.mem_image.mpr ⟨c, ?_, ?_⟩
        · have hcFiber' := hcFiber
          simp [coord0Fiber3] at hcFiber'
          simp [coordFiber3, hcFiber'.1, hcSecond]
        · have hcFiber' := hcFiber
          simp [coord0Fiber3] at hcFiber'
          exact hcFiber'.2)
    have hmissThird : p.2 ∈ missingThirdInFiber3 C a := by
      rw [missingThirdInFiber3, Finset.mem_sdiff]
      refine ⟨by simp, ?_⟩
      intro hpThird
      exact ha_not (by
        rw [Finset.mem_union]
        right
        change a ∈ (coordFiber3 C 2 p.2).image (fun w => w 0)
        rcases Finset.mem_image.mp hpThird with ⟨c, hcFiber, hcThird⟩
        refine Finset.mem_image.mpr ⟨c, ?_, ?_⟩
        · have hcFiber' := hcFiber
          simp [coord0Fiber3] at hcFiber'
          simp [coordFiber3, hcFiber'.1, hcThird]
        · have hcFiber' := hcFiber
          simp [coord0Fiber3] at hcFiber'
          exact hcFiber'.2)
    have hforced := forced_pair23_subset_of_sparse_fiber_cover C hC a
    exact hforced (by
      rw [Finset.mem_product]
      exact ⟨hmissSecond, hmissThird⟩)
  have hfull : 49 ≤ (pair23Values3 C).card := by
    have hcard_univ := Finset.card_le_card hallPairs
    simpa [Fintype.card_fin] using hcard_univ
  have hpairCard : (pair23Values3 C).card ≤ C.card := Finset.card_image_le
  omega

def qarySevenThreeOneLowerName : String :=
  "lean_qary_seven_three_one_structural_lower"

def qarySevenThreeOneLower (q n r : Nat) : Nat :=
  if q = 7 ∧ n = 3 ∧ r = 1 then 22 else zeroLower q n r

theorem qarySevenThreeOneLower_source_valid (q n r : Nat) :
    QaryKLower q n r (qarySevenThreeOneLower q n r) := by
  by_cases h : q = 7 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [qarySevenThreeOneLower] using qarySevenThreeOneLowerTwentyTwo
  · simpa [qarySevenThreeOneLower, h] using zeroLower_valid q n r

def qarySevenThreeOneLowerSource : LowerBoundSource where
  value := qarySevenThreeOneLower
  trace := fun q n r =>
    .primitive qarySevenThreeOneLowerName
      (qarySevenThreeOneLower_source_valid q n r)

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
