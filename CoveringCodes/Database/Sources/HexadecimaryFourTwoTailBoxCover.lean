import CoveringCodes.Database.Sources.HexadecimaryFourTwoLowerSemantics
import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxClassifier
import Mathlib.Tactic

/-!
# Cover-side geometry for the K16 4-fiber tail-box bridge

This file starts the structural bridge from a genuine exact 4-fiber in an
86-word cover to the abstract `TailBoxProfile` ruled out by the LRAT tail-box
classifier.  The first layer proves the geometry behind the tail-box coverage
clauses: a target whose three tail symbols avoid the 4-fiber's tail symbols
cannot be covered by a word in that 4-fiber, so a radius-two cover center must
match at least two tail coordinates.
-/

namespace CoveringCodes
namespace Database

open scoped BigOperators

def normalizedTailUsed16 (C : Finset (QaryWord 16 4)) (i : Fin 3) :
    Finset (Fin 16) :=
  (coordFiber16 C 0 0).image (fun w => deleteCoord (0 : Fin 4) w i)

def normalizedTailSpread16 (C : Finset (QaryWord 16 4)) : Nat × Nat × Nat :=
  ((normalizedTailUsed16 C 0).card,
    (normalizedTailUsed16 C 1).card,
    (normalizedTailUsed16 C 2).card)

def unusedSymbols16 (U : Finset (Fin 16)) : Finset (Fin 16) :=
  (Finset.univ : Finset (Fin 16)) \ U

theorem unusedSymbols16_card (U : Finset (Fin 16)) :
    (unusedSymbols16 U).card = 16 - U.card := by
  classical
  unfold unusedSymbols16
  rw [Finset.card_sdiff_of_subset]
  · simp
  · intro a _ha
    simp

noncomputable def lowFirstUnusedEnum
    (U : Finset (Fin 16)) (low : Fin 16) : Nat → Fin 16
  | 0 => low
  | n + 1 =>
      let rest := (unusedSymbols16 U).erase low
      if h : n < rest.card then
        (rest.equivFin.symm ⟨n, h⟩).1
      else
        low

@[simp] theorem lowFirstUnusedEnum_zero
    (U : Finset (Fin 16)) (low : Fin 16) :
    lowFirstUnusedEnum U low 0 = low := rfl

private theorem lowFirstUnusedEnum_succ_mem_rest
    (U : Finset (Fin 16)) (low : Fin 16) {n : Nat}
    (hn : n < ((unusedSymbols16 U).erase low).card) :
    lowFirstUnusedEnum U low (n + 1) ∈ (unusedSymbols16 U).erase low := by
  classical
  simp [lowFirstUnusedEnum, hn]

private theorem lowFirstUnusedEnum_rest_card
    (U : Finset (Fin 16)) (low : Fin 16) {k : Nat}
    (hU_card : U.card = k) (hlow : low ∉ U) :
    ((unusedSymbols16 U).erase low).card = 16 - k - 1 := by
  classical
  have hlow_unused : low ∈ unusedSymbols16 U := by
    simp [unusedSymbols16, hlow]
  rw [Finset.card_erase_of_mem hlow_unused]
  rw [unusedSymbols16_card, hU_card]

theorem lowFirstUnusedEnum_not_mem
    (U : Finset (Fin 16)) (low : Fin 16) {k : Nat}
    (hU_card : U.card = k) (hlow : low ∉ U) :
    ∀ i, i < 16 - k → lowFirstUnusedEnum U low i ∉ U := by
  classical
  intro i hi
  cases i with
  | zero =>
      simpa using hlow
  | succ n =>
      have hrest_card :=
        lowFirstUnusedEnum_rest_card U low hU_card hlow
      have hn : n < ((unusedSymbols16 U).erase low).card := by
        omega
      have hmem_rest := lowFirstUnusedEnum_succ_mem_rest U low hn
      have hmem_unused : lowFirstUnusedEnum U low (n + 1) ∈ unusedSymbols16 U :=
        (Finset.mem_erase.mp hmem_rest).2
      exact (Finset.mem_sdiff.mp hmem_unused).2

theorem lowFirstUnusedEnum_injective
    (U : Finset (Fin 16)) (low : Fin 16) {k : Nat}
    (hU_card : U.card = k) (hlow : low ∉ U) :
    ∀ i j,
      i < 16 - k →
      j < 16 - k →
      lowFirstUnusedEnum U low i = lowFirstUnusedEnum U low j →
        i = j := by
  classical
  intro i j hi hj hij
  cases i with
  | zero =>
      cases j with
      | zero => rfl
      | succ m =>
          have hrest_card :=
            lowFirstUnusedEnum_rest_card U low hU_card hlow
          have hm : m < ((unusedSymbols16 U).erase low).card := by
            omega
          have hmem_rest := lowFirstUnusedEnum_succ_mem_rest U low hm
          have hne_low : lowFirstUnusedEnum U low (m + 1) ≠ low :=
            (Finset.mem_erase.mp hmem_rest).1
          exact False.elim (hne_low hij.symm)
  | succ n =>
      cases j with
      | zero =>
          have hrest_card :=
            lowFirstUnusedEnum_rest_card U low hU_card hlow
          have hn : n < ((unusedSymbols16 U).erase low).card := by
            omega
          have hmem_rest := lowFirstUnusedEnum_succ_mem_rest U low hn
          have hne_low : lowFirstUnusedEnum U low (n + 1) ≠ low :=
            (Finset.mem_erase.mp hmem_rest).1
          exact False.elim (hne_low hij)
      | succ m =>
          let rest := (unusedSymbols16 U).erase low
          have hrest_card :=
            lowFirstUnusedEnum_rest_card U low hU_card hlow
          have hn : n < rest.card := by
            dsimp [rest]
            omega
          have hm : m < rest.card := by
            dsimp [rest]
            omega
          have hsub :
              rest.equivFin.symm ⟨n, hn⟩ =
                rest.equivFin.symm ⟨m, hm⟩ := by
            apply Subtype.ext
            simpa [rest, lowFirstUnusedEnum, hn, hm] using hij
          have hfin : (⟨n, hn⟩ : Fin rest.card) = ⟨m, hm⟩ :=
            rest.equivFin.symm.injective hsub
          have hnm : n = m := by
            exact Fin.ext_iff.mp hfin
          exact congrArg Nat.succ hnm

private theorem dist_eq_three_of_all_ne {q : Nat} (x y : QaryWord q 3)
    (h : ∀ i : Fin 3, x i ≠ y i) :
    dist x y = 3 := by
  classical
  simp only [dist, hammingDist]
  have hfilter :
      (Finset.univ.filter (fun i : Fin 3 => x i ≠ y i)) =
        (Finset.univ : Finset (Fin 3)) := by
    exact Finset.filter_true_of_mem (fun i _hi => h i)
  rw [hfilter]
  simp

theorem normalizedTailUsed16_tail_distance_eq_three
    (C : Finset (QaryWord 16 4))
    (x : QaryWord 16 3)
    (w : QaryWord 16 4)
    (hw : w ∈ coordFiber16 C 0 0)
    (havoid : ∀ i : Fin 3, x i ∉ normalizedTailUsed16 C i) :
    dist x (deleteCoord (0 : Fin 4) w) = 3 := by
  apply dist_eq_three_of_all_ne
  intro i hxi
  exact havoid i (by
    refine Finset.mem_image.mpr ⟨w, hw, ?_⟩
    exact hxi.symm)

theorem normalizedTailUsed16_fiber_center_distance_gt_two
    (C : Finset (QaryWord 16 4))
    (x : QaryWord 16 3)
    (w : QaryWord 16 4)
    (hw : w ∈ coordFiber16 C 0 0)
    (havoid : ∀ i : Fin 3, x i ∉ normalizedTailUsed16 C i) :
    2 < dist (insertCoord (0 : Fin 4) (0 : Fin 16) x) w := by
  have htail := normalizedTailUsed16_tail_distance_eq_three C x w hw havoid
  have hle :=
    dist_deleteCoord_le_dist_insertCoord (0 : Fin 4) (0 : Fin 16) x w
  omega

private theorem two_diffs_contra {q : Nat} (x d : QaryWord q 3)
    (hd : dist x d ≤ 1) {i j : Fin 3} (hij : i ≠ j)
    (hi : x i ≠ d i) (hj : x j ≠ d j) : False := by
  let F : Finset (Fin 3) := Finset.univ.filter (fun k => x k ≠ d k)
  have hFcard : F.card ≤ 1 := by simpa [F, dist, hammingDist] using hd
  have hmemi : i ∈ F := by simp [F, hi]
  have hmemj : j ∈ F := by simp [F, hj]
  have heq := (Finset.card_le_one.mp hFcard) i hmemi j hmemj
  exact hij heq

private theorem dist_le_one_agrees_tail_pair {q : Nat}
    (x d : QaryWord q 3)
    (hd : dist x d ≤ 1) :
    (d 0 = x 0 ∧ d 1 = x 1) ∨
      (d 0 = x 0 ∧ d 2 = x 2) ∨
      (d 1 = x 1 ∧ d 2 = x 2) := by
  by_cases h0 : d 0 = x 0
  · by_cases h1 : d 1 = x 1
    · exact Or.inl ⟨h0, h1⟩
    · by_cases h2 : d 2 = x 2
      · exact Or.inr (Or.inl ⟨h0, h2⟩)
      · exfalso
        exact two_diffs_contra x d hd (i := 1) (j := 2) (by decide)
          (by simpa using fun h : x 1 = d 1 => h1 h.symm)
          (by simpa using fun h : x 2 = d 2 => h2 h.symm)
  · by_cases h1 : d 1 = x 1
    · by_cases h2 : d 2 = x 2
      · exact Or.inr (Or.inr ⟨h1, h2⟩)
      · exfalso
        exact two_diffs_contra x d hd (i := 0) (j := 2) (by decide)
          (by simpa using fun h : x 0 = d 0 => h0 h.symm)
          (by simpa using fun h : x 2 = d 2 => h2 h.symm)
    · by_cases h2 : d 2 = x 2
      · exfalso
        exact two_diffs_contra x d hd (i := 0) (j := 1) (by decide)
          (by simpa using fun h : x 0 = d 0 => h0 h.symm)
          (by simpa using fun h : x 1 = d 1 => h1 h.symm)
      · exfalso
        exact two_diffs_contra x d hd (i := 0) (j := 1) (by decide)
          (by simpa using fun h : x 0 = d 0 => h0 h.symm)
          (by simpa using fun h : x 1 = d 1 => h1 h.symm)

theorem exists_tail_pair_match_of_cover_avoids_normalized_fiber
    (C : Finset (QaryWord 16 4))
    (hC : CoversFinset C 2)
    (x : QaryWord 16 3)
    (havoid : ∀ i : Fin 3, x i ∉ normalizedTailUsed16 C i) :
    ∃ w : QaryWord 16 4,
      w ∈ C ∧ w (0 : Fin 4) ≠ 0 ∧
        ((deleteCoord (0 : Fin 4) w 0 = x 0 ∧
            deleteCoord (0 : Fin 4) w 1 = x 1) ∨
          (deleteCoord (0 : Fin 4) w 0 = x 0 ∧
            deleteCoord (0 : Fin 4) w 2 = x 2) ∨
          (deleteCoord (0 : Fin 4) w 1 = x 1 ∧
            deleteCoord (0 : Fin 4) w 2 = x 2)) := by
  obtain ⟨w, hwC, hdist⟩ := hC (insertCoord (0 : Fin 4) (0 : Fin 16) x)
  have hw_not_fiber : w ∉ coordFiber16 C 0 0 := by
    intro hwfiber
    have hgt :=
      normalizedTailUsed16_fiber_center_distance_gt_two C x w hwfiber havoid
    omega
  have hw0_ne : w (0 : Fin 4) ≠ 0 := by
    intro hw0
    exact hw_not_fiber (by simp [coordFiber16, hwC, hw0])
  have hdrop :=
    dist_deleteCoord_insertCoord_add_one_le (0 : Fin 4) (0 : Fin 16) x w hw0_ne
  have htail_le_one : dist x (deleteCoord (0 : Fin 4) w) ≤ 1 := by
    have hle : dist x (deleteCoord (0 : Fin 4) w) + 1 ≤ 2 :=
      hdrop.trans hdist
    omega
  refine ⟨w, hwC, hw0_ne, ?_⟩
  exact dist_le_one_agrees_tail_pair x (deleteCoord (0 : Fin 4) w) htail_le_one

def normalizedTailP01
    (C : Finset (QaryWord 16 4))
    (e0 e1 : Nat → Fin 16) (a b : Nat) : Bool :=
  decide
    (∃ w : QaryWord 16 4,
      w ∈ C ∧
        deleteCoord (0 : Fin 4) w 0 = e0 a ∧
        deleteCoord (0 : Fin 4) w 1 = e1 b)

def normalizedTailP02
    (C : Finset (QaryWord 16 4))
    (e0 e2 : Nat → Fin 16) (a c : Nat) : Bool :=
  decide
    (∃ w : QaryWord 16 4,
      w ∈ C ∧
        deleteCoord (0 : Fin 4) w 0 = e0 a ∧
        deleteCoord (0 : Fin 4) w 2 = e2 c)

def normalizedTailP12
    (C : Finset (QaryWord 16 4))
    (e1 e2 : Nat → Fin 16) (b c : Nat) : Bool :=
  decide
    (∃ w : QaryWord 16 4,
      w ∈ C ∧
        deleteCoord (0 : Fin 4) w 1 = e1 b ∧
        deleteCoord (0 : Fin 4) w 2 = e2 c)

theorem normalizedTailPair_cover
    (C : Finset (QaryWord 16 4))
    (hC : CoversFinset C 2)
    (e0 e1 e2 : Nat → Fin 16)
    {a b c : Nat}
    (ha_unused : e0 a ∉ normalizedTailUsed16 C 0)
    (hb_unused : e1 b ∉ normalizedTailUsed16 C 1)
    (hc_unused : e2 c ∉ normalizedTailUsed16 C 2) :
    normalizedTailP01 C e0 e1 a b = true ∨
      normalizedTailP02 C e0 e2 a c = true ∨
      normalizedTailP12 C e1 e2 b c = true := by
  let x : QaryWord 16 3 := ![e0 a, e1 b, e2 c]
  have havoid : ∀ i : Fin 3, x i ∉ normalizedTailUsed16 C i := by
    intro i
    fin_cases i <;> simpa [x] using
      (by first | exact ha_unused | exact hb_unused | exact hc_unused)
  obtain ⟨w, hwC, _hw0, hpair⟩ :=
    exists_tail_pair_match_of_cover_avoids_normalized_fiber C hC x havoid
  rcases hpair with h01 | h02 | h12
  · left
    rw [normalizedTailP01]
    apply decide_eq_true
    exact ⟨w, hwC, by simpa [x, deleteCoord] using h01.1,
      by simpa [x, deleteCoord] using h01.2⟩
  · right
    left
    rw [normalizedTailP02]
    apply decide_eq_true
    exact ⟨w, hwC, by simpa [x, deleteCoord] using h02.1,
      by simpa [x, deleteCoord] using h02.2⟩
  · right
    right
    rw [normalizedTailP12]
    apply decide_eq_true
    exact ⟨w, hwC, by simpa [x, deleteCoord] using h12.1,
      by simpa [x, deleteCoord] using h12.2⟩

def normalizedTailCap
    (C : Finset (QaryWord 16 4))
    (e0 e1 e2 : Nat → Fin 16) (coord symbol : Nat) : Nat :=
  match coord with
  | 0 => (coordFiber16 C 1 (e0 symbol)).card
  | 1 => (coordFiber16 C 2 (e1 symbol)).card
  | _ => (coordFiber16 C 3 (e2 symbol)).card

theorem normalizedTailCap_baseline
    (C : Finset (QaryWord 16 4))
    (e0 e1 e2 : Nat → Fin 16)
    (hge4 : ∀ i a, 4 ≤ (coordFiber16 C i a).card)
    {coord symbol : Nat} (hcoord : coord < 3) :
    4 ≤ normalizedTailCap C e0 e1 e2 coord symbol := by
  interval_cases coord <;>
    simp [normalizedTailCap, hge4]

theorem normalizedTailCap_fixedLow
    (C : Finset (QaryWord 16 4))
    (e0 e1 e2 : Nat → Fin 16)
    (hlow0 : (coordFiber16 C 1 (e0 0)).card ≤ 5)
    (hlow1 : (coordFiber16 C 2 (e1 0)).card ≤ 5)
    (hlow2 : (coordFiber16 C 3 (e2 0)).card ≤ 5)
    {coord : Nat} (hcoord : coord < 3) :
    normalizedTailCap C e0 e1 e2 coord 0 ≤ 5 := by
  interval_cases coord <;>
    simpa [normalizedTailCap] using
      (by first | exact hlow0 | exact hlow1 | exact hlow2)

theorem normalizedTailP01_row_count_le_cap
    (C : Finset (QaryWord 16 4))
    (e0 e1 : Nat → Fin 16) {size1 a : Nat}
    (he1_inj : ∀ i j, i < size1 → j < size1 → e1 i = e1 j → i = j) :
    ((Finset.range size1).filter
        (fun b => normalizedTailP01 C e0 e1 a b = true)).card ≤
      (coordFiber16 C 1 (e0 a)).card := by
  classical
  let S : Finset Nat :=
    (Finset.range size1).filter
      (fun b => normalizedTailP01 C e0 e1 a b = true)
  let V : Finset (Fin 16) := S.image e1
  have hcardV : V.card = S.card := by
    dsimp [V]
    rw [Finset.card_image_iff]
    intro i hi j hj hij
    apply he1_inj i j
    · simpa [Finset.mem_range] using (Finset.mem_filter.mp hi).1
    · simpa [Finset.mem_range] using (Finset.mem_filter.mp hj).1
    · exact hij
  have hV_subset : V ⊆ (coordFiber16 C 1 (e0 a)).image (fun w => w 2) := by
    intro y hy
    rcases Finset.mem_image.mp hy with ⟨b, hbS, rfl⟩
    have hbool : normalizedTailP01 C e0 e1 a b = true :=
      (Finset.mem_filter.mp hbS).2
    have hp : ∃ w : QaryWord 16 4,
        w ∈ C ∧ deleteCoord (0 : Fin 4) w 0 = e0 a ∧
          deleteCoord (0 : Fin 4) w 1 = e1 b := by
      simpa [normalizedTailP01] using of_decide_eq_true hbool
    rcases hp with ⟨w, hwC, hw0, hw1⟩
    refine Finset.mem_image.mpr ⟨w, ?_, ?_⟩
    · simp [coordFiber16, hwC]
      simpa [deleteCoord] using hw0
    · simpa [deleteCoord] using hw1
  calc
    S.card = V.card := hcardV.symm
    _ ≤ ((coordFiber16 C 1 (e0 a)).image (fun w => w 2)).card :=
      Finset.card_le_card hV_subset
    _ ≤ (coordFiber16 C 1 (e0 a)).card := Finset.card_image_le

theorem normalizedTailP01_col_count_le_cap
    (C : Finset (QaryWord 16 4))
    (e0 e1 : Nat → Fin 16) {size0 b : Nat}
    (he0_inj : ∀ i j, i < size0 → j < size0 → e0 i = e0 j → i = j) :
    ((Finset.range size0).filter
        (fun a => normalizedTailP01 C e0 e1 a b = true)).card ≤
      (coordFiber16 C 2 (e1 b)).card := by
  classical
  let S : Finset Nat :=
    (Finset.range size0).filter
      (fun a => normalizedTailP01 C e0 e1 a b = true)
  let V : Finset (Fin 16) := S.image e0
  have hcardV : V.card = S.card := by
    dsimp [V]
    rw [Finset.card_image_iff]
    intro i hi j hj hij
    apply he0_inj i j
    · simpa [Finset.mem_range] using (Finset.mem_filter.mp hi).1
    · simpa [Finset.mem_range] using (Finset.mem_filter.mp hj).1
    · exact hij
  have hV_subset : V ⊆ (coordFiber16 C 2 (e1 b)).image (fun w => w 1) := by
    intro y hy
    rcases Finset.mem_image.mp hy with ⟨a, haS, rfl⟩
    have hbool : normalizedTailP01 C e0 e1 a b = true :=
      (Finset.mem_filter.mp haS).2
    have hp : ∃ w : QaryWord 16 4,
        w ∈ C ∧ deleteCoord (0 : Fin 4) w 0 = e0 a ∧
          deleteCoord (0 : Fin 4) w 1 = e1 b := by
      simpa [normalizedTailP01] using of_decide_eq_true hbool
    rcases hp with ⟨w, hwC, hw0, hw1⟩
    refine Finset.mem_image.mpr ⟨w, ?_, ?_⟩
    · simp [coordFiber16, hwC]
      simpa [deleteCoord] using hw1
    · simpa [deleteCoord] using hw0
  calc
    S.card = V.card := hcardV.symm
    _ ≤ ((coordFiber16 C 2 (e1 b)).image (fun w => w 1)).card :=
      Finset.card_le_card hV_subset
    _ ≤ (coordFiber16 C 2 (e1 b)).card := Finset.card_image_le

theorem normalizedTailP02_row_count_le_cap
    (C : Finset (QaryWord 16 4))
    (e0 e2 : Nat → Fin 16) {size2 a : Nat}
    (he2_inj : ∀ i j, i < size2 → j < size2 → e2 i = e2 j → i = j) :
    ((Finset.range size2).filter
        (fun c => normalizedTailP02 C e0 e2 a c = true)).card ≤
      (coordFiber16 C 1 (e0 a)).card := by
  classical
  let S : Finset Nat :=
    (Finset.range size2).filter
      (fun c => normalizedTailP02 C e0 e2 a c = true)
  let V : Finset (Fin 16) := S.image e2
  have hcardV : V.card = S.card := by
    dsimp [V]
    rw [Finset.card_image_iff]
    intro i hi j hj hij
    apply he2_inj i j
    · simpa [Finset.mem_range] using (Finset.mem_filter.mp hi).1
    · simpa [Finset.mem_range] using (Finset.mem_filter.mp hj).1
    · exact hij
  have hV_subset : V ⊆ (coordFiber16 C 1 (e0 a)).image (fun w => w 3) := by
    intro y hy
    rcases Finset.mem_image.mp hy with ⟨c, hcS, rfl⟩
    have hbool : normalizedTailP02 C e0 e2 a c = true :=
      (Finset.mem_filter.mp hcS).2
    have hp : ∃ w : QaryWord 16 4,
        w ∈ C ∧ deleteCoord (0 : Fin 4) w 0 = e0 a ∧
          deleteCoord (0 : Fin 4) w 2 = e2 c := by
      simpa [normalizedTailP02] using of_decide_eq_true hbool
    rcases hp with ⟨w, hwC, hw0, hw2⟩
    refine Finset.mem_image.mpr ⟨w, ?_, ?_⟩
    · simp [coordFiber16, hwC]
      simpa [deleteCoord] using hw0
    · simpa [deleteCoord] using hw2
  calc
    S.card = V.card := hcardV.symm
    _ ≤ ((coordFiber16 C 1 (e0 a)).image (fun w => w 3)).card :=
      Finset.card_le_card hV_subset
    _ ≤ (coordFiber16 C 1 (e0 a)).card := Finset.card_image_le

theorem normalizedTailP02_col_count_le_cap
    (C : Finset (QaryWord 16 4))
    (e0 e2 : Nat → Fin 16) {size0 c : Nat}
    (he0_inj : ∀ i j, i < size0 → j < size0 → e0 i = e0 j → i = j) :
    ((Finset.range size0).filter
        (fun a => normalizedTailP02 C e0 e2 a c = true)).card ≤
      (coordFiber16 C 3 (e2 c)).card := by
  classical
  let S : Finset Nat :=
    (Finset.range size0).filter
      (fun a => normalizedTailP02 C e0 e2 a c = true)
  let V : Finset (Fin 16) := S.image e0
  have hcardV : V.card = S.card := by
    dsimp [V]
    rw [Finset.card_image_iff]
    intro i hi j hj hij
    apply he0_inj i j
    · simpa [Finset.mem_range] using (Finset.mem_filter.mp hi).1
    · simpa [Finset.mem_range] using (Finset.mem_filter.mp hj).1
    · exact hij
  have hV_subset : V ⊆ (coordFiber16 C 3 (e2 c)).image (fun w => w 1) := by
    intro y hy
    rcases Finset.mem_image.mp hy with ⟨a, haS, rfl⟩
    have hbool : normalizedTailP02 C e0 e2 a c = true :=
      (Finset.mem_filter.mp haS).2
    have hp : ∃ w : QaryWord 16 4,
        w ∈ C ∧ deleteCoord (0 : Fin 4) w 0 = e0 a ∧
          deleteCoord (0 : Fin 4) w 2 = e2 c := by
      simpa [normalizedTailP02] using of_decide_eq_true hbool
    rcases hp with ⟨w, hwC, hw0, hw2⟩
    refine Finset.mem_image.mpr ⟨w, ?_, ?_⟩
    · simp [coordFiber16, hwC]
      simpa [deleteCoord] using hw2
    · simpa [deleteCoord] using hw0
  calc
    S.card = V.card := hcardV.symm
    _ ≤ ((coordFiber16 C 3 (e2 c)).image (fun w => w 1)).card :=
      Finset.card_le_card hV_subset
    _ ≤ (coordFiber16 C 3 (e2 c)).card := Finset.card_image_le

theorem normalizedTailP12_row_count_le_cap
    (C : Finset (QaryWord 16 4))
    (e1 e2 : Nat → Fin 16) {size2 b : Nat}
    (he2_inj : ∀ i j, i < size2 → j < size2 → e2 i = e2 j → i = j) :
    ((Finset.range size2).filter
        (fun c => normalizedTailP12 C e1 e2 b c = true)).card ≤
      (coordFiber16 C 2 (e1 b)).card := by
  classical
  let S : Finset Nat :=
    (Finset.range size2).filter
      (fun c => normalizedTailP12 C e1 e2 b c = true)
  let V : Finset (Fin 16) := S.image e2
  have hcardV : V.card = S.card := by
    dsimp [V]
    rw [Finset.card_image_iff]
    intro i hi j hj hij
    apply he2_inj i j
    · simpa [Finset.mem_range] using (Finset.mem_filter.mp hi).1
    · simpa [Finset.mem_range] using (Finset.mem_filter.mp hj).1
    · exact hij
  have hV_subset : V ⊆ (coordFiber16 C 2 (e1 b)).image (fun w => w 3) := by
    intro y hy
    rcases Finset.mem_image.mp hy with ⟨c, hcS, rfl⟩
    have hbool : normalizedTailP12 C e1 e2 b c = true :=
      (Finset.mem_filter.mp hcS).2
    have hp : ∃ w : QaryWord 16 4,
        w ∈ C ∧ deleteCoord (0 : Fin 4) w 1 = e1 b ∧
          deleteCoord (0 : Fin 4) w 2 = e2 c := by
      simpa [normalizedTailP12] using of_decide_eq_true hbool
    rcases hp with ⟨w, hwC, hw1, hw2⟩
    refine Finset.mem_image.mpr ⟨w, ?_, ?_⟩
    · simp [coordFiber16, hwC]
      simpa [deleteCoord] using hw1
    · simpa [deleteCoord] using hw2
  calc
    S.card = V.card := hcardV.symm
    _ ≤ ((coordFiber16 C 2 (e1 b)).image (fun w => w 3)).card :=
      Finset.card_le_card hV_subset
    _ ≤ (coordFiber16 C 2 (e1 b)).card := Finset.card_image_le

theorem normalizedTailP12_col_count_le_cap
    (C : Finset (QaryWord 16 4))
    (e1 e2 : Nat → Fin 16) {size1 c : Nat}
    (he1_inj : ∀ i j, i < size1 → j < size1 → e1 i = e1 j → i = j) :
    ((Finset.range size1).filter
        (fun b => normalizedTailP12 C e1 e2 b c = true)).card ≤
      (coordFiber16 C 3 (e2 c)).card := by
  classical
  let S : Finset Nat :=
    (Finset.range size1).filter
      (fun b => normalizedTailP12 C e1 e2 b c = true)
  let V : Finset (Fin 16) := S.image e1
  have hcardV : V.card = S.card := by
    dsimp [V]
    rw [Finset.card_image_iff]
    intro i hi j hj hij
    apply he1_inj i j
    · simpa [Finset.mem_range] using (Finset.mem_filter.mp hi).1
    · simpa [Finset.mem_range] using (Finset.mem_filter.mp hj).1
    · exact hij
  have hV_subset : V ⊆ (coordFiber16 C 3 (e2 c)).image (fun w => w 2) := by
    intro y hy
    rcases Finset.mem_image.mp hy with ⟨b, hbS, rfl⟩
    have hbool : normalizedTailP12 C e1 e2 b c = true :=
      (Finset.mem_filter.mp hbS).2
    have hp : ∃ w : QaryWord 16 4,
        w ∈ C ∧ deleteCoord (0 : Fin 4) w 1 = e1 b ∧
          deleteCoord (0 : Fin 4) w 2 = e2 c := by
      simpa [normalizedTailP12] using of_decide_eq_true hbool
    rcases hp with ⟨w, hwC, hw1, hw2⟩
    refine Finset.mem_image.mpr ⟨w, ?_, ?_⟩
    · simp [coordFiber16, hwC]
      simpa [deleteCoord] using hw2
    · simpa [deleteCoord] using hw1
  calc
    S.card = V.card := hcardV.symm
    _ ≤ ((coordFiber16 C 3 (e2 c)).image (fun w => w 2)).card :=
      Finset.card_le_card hV_subset
    _ ≤ (coordFiber16 C 3 (e2 c)).card := Finset.card_image_le

theorem normalizedTail_degreeBound
    (C : Finset (QaryWord 16 4))
    (sizes : Nat × Nat × Nat)
    (e0 e1 e2 : Nat → Fin 16)
    (he0_inj :
      ∀ i j, i < sizes.1 → j < sizes.1 → e0 i = e0 j → i = j)
    (he1_inj :
      ∀ i j, i < sizes.2.1 → j < sizes.2.1 → e1 i = e1 j → i = j)
    (he2_inj :
      ∀ i j, i < sizes.2.2 → j < sizes.2.2 → e2 i = e2 j → i = j)
    {coord symbol other : Nat}
    (hcoord : coord < 3)
    (_hsymbol : symbol < TailBoxDirect.get3 sizes coord)
    (hother : other < 3)
    (hne : other ≠ coord) :
    ((Finset.range (TailBoxDirect.get3 sizes other)).filter
      (fun idx =>
        (match coord, other, idx with
        | 0, 1, idx => normalizedTailP01 C e0 e1 symbol idx
        | 0, 2, idx => normalizedTailP02 C e0 e2 symbol idx
        | 1, 0, idx => normalizedTailP01 C e0 e1 idx symbol
        | 1, 2, idx => normalizedTailP12 C e1 e2 symbol idx
        | 2, 0, idx => normalizedTailP02 C e0 e2 idx symbol
        | 2, 1, idx => normalizedTailP12 C e1 e2 idx symbol
        | _, _, _ => false) = true)).card ≤
      normalizedTailCap C e0 e1 e2 coord symbol := by
  interval_cases coord <;> interval_cases other <;> try contradiction
  · simp [TailBoxDirect.get3, normalizedTailCap]
    exact normalizedTailP01_row_count_le_cap C e0 e1 he1_inj
  · simp [TailBoxDirect.get3, normalizedTailCap]
    exact normalizedTailP02_row_count_le_cap C e0 e2 he2_inj
  · simp [TailBoxDirect.get3, normalizedTailCap]
    exact normalizedTailP01_col_count_le_cap C e0 e1 he0_inj
  · simp [TailBoxDirect.get3, normalizedTailCap]
    exact normalizedTailP12_row_count_le_cap C e1 e2 he2_inj
  · simp [TailBoxDirect.get3, normalizedTailCap]
    exact normalizedTailP02_col_count_le_cap C e0 e2 he0_inj
  · simp [TailBoxDirect.get3, normalizedTailCap]
    exact normalizedTailP12_col_count_le_cap C e1 e2 he1_inj

private theorem selected_fiber_sum_le_card_sub_four_used
    (C : Finset (QaryWord 16 4))
    (coord : Fin 4)
    (U : Finset (Fin 16))
    (e : Nat → Fin 16) {size k : Nat}
    (he_unused : ∀ i, i < size → e i ∉ U)
    (he_inj : ∀ i j, i < size → j < size → e i = e j → i = j)
    (hU_card : U.card = k)
    (hU_lower : ∀ a, a ∈ U → 4 ≤ (coordFiber16 C coord a).card) :
    (Finset.range size).sum (fun i => (coordFiber16 C coord (e i)).card) ≤
      C.card - 4 * k := by
  classical
  let I : Finset Nat := Finset.range size
  let S : Finset (Fin 16) := I.image e
  let f : Fin 16 → Nat := fun a => (coordFiber16 C coord a).card
  have hinjOn : Set.InjOn e ↑I := by
    intro i hi j hj hij
    apply he_inj i j
    · simpa [I, Finset.mem_range] using hi
    · simpa [I, Finset.mem_range] using hj
    · exact hij
  have hsumS : (∑ a ∈ S, f a) = ∑ i ∈ I, f (e i) := by
    simpa [S] using (Finset.sum_image (s := I) (g := e) (f := f) hinjOn)
  have hdisj : Disjoint S U := by
    rw [Finset.disjoint_left]
    intro a haS haU
    rcases Finset.mem_image.mp haS with ⟨i, hiI, rfl⟩
    exact he_unused i (by simpa [I, Finset.mem_range] using hiI) haU
  have hsubset_univ : S ∪ U ⊆ (Finset.univ : Finset (Fin 16)) := by
    intro a _ha
    simp
  have hsum_union_le_total :
      (∑ a ∈ S ∪ U, f a) ≤ ∑ a : Fin 16, f a := by
    exact Finset.sum_le_sum_of_subset_of_nonneg hsubset_univ
      (by intro a ha hnot; exact Nat.zero_le _)
  have hused_lower : 4 * k ≤ ∑ a ∈ U, f a := by
    have hle : (∑ a ∈ U, (4 : Nat)) ≤ ∑ a ∈ U, f a := by
      apply Finset.sum_le_sum
      intro a ha
      exact hU_lower a ha
    have hconst : (∑ a ∈ U, (4 : Nat)) = U.card * 4 := by
      simp
    omega
  have htotal_eq : (∑ a : Fin 16, f a) = C.card := by
    simpa [f] using (coordFiber16_card_sum C coord).symm
  have hsel_used_le : (∑ a ∈ S, f a) + (∑ a ∈ U, f a) ≤ C.card := by
    have hsum_union := Finset.sum_union hdisj (f := f)
    rw [← hsum_union]
    exact hsum_union_le_total.trans_eq htotal_eq
  have hsel_plus : (∑ a ∈ S, f a) + 4 * k ≤ C.card := by
    omega
  have hsel_le : (∑ a ∈ S, f a) ≤ C.card - 4 * k := by
    omega
  calc
    (Finset.range size).sum (fun i => (coordFiber16 C coord (e i)).card)
        = ∑ i ∈ I, f (e i) := by simp [I, f]
    _ = ∑ a ∈ S, f a := hsumS.symm
    _ ≤ C.card - 4 * k := hsel_le

theorem normalizedTail_budgetBound
    (C : Finset (QaryWord 16 4))
    (hcard : C.card ≤ 86)
    (spread : Nat × Nat × Nat)
    (e0 e1 e2 : Nat → Fin 16)
    (he0_unused :
      ∀ i, i < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 0 →
        e0 i ∉ normalizedTailUsed16 C 0)
    (he1_unused :
      ∀ i, i < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 1 →
        e1 i ∉ normalizedTailUsed16 C 1)
    (he2_unused :
      ∀ i, i < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 2 →
        e2 i ∉ normalizedTailUsed16 C 2)
    (he0_inj :
      ∀ i j,
        i < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 0 →
        j < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 0 →
        e0 i = e0 j → i = j)
    (he1_inj :
      ∀ i j,
        i < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 1 →
        j < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 1 →
        e1 i = e1 j → i = j)
    (he2_inj :
      ∀ i j,
        i < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 2 →
        j < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 2 →
        e2 i = e2 j → i = j)
    (hused0_card : (normalizedTailUsed16 C 0).card = spread.1)
    (hused1_card : (normalizedTailUsed16 C 1).card = spread.2.1)
    (hused2_card : (normalizedTailUsed16 C 2).card = spread.2.2)
    (hge4 : ∀ i a, 4 ≤ (coordFiber16 C i a).card) :
    ∀ coord, coord < 3 →
      (Finset.range (TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) coord)).sum
        (fun symbol => normalizedTailCap C e0 e1 e2 coord symbol) ≤
      TailBoxDirect.get3 (TailBoxDirect.spreadToBudgets spread) coord := by
  intro coord hcoord
  interval_cases coord
  ·
    have hsel :=
      selected_fiber_sum_le_card_sub_four_used C 1
        (normalizedTailUsed16 C 0) e0
        he0_unused he0_inj hused0_card
        (by intro a _ha; exact hge4 1 a)
    have hle : C.card - 4 * spread.1 ≤ 86 - 4 * spread.1 :=
      Nat.sub_le_sub_right hcard (4 * spread.1)
    exact le_trans (by
      simpa [normalizedTailCap] using hsel) (by
        simpa [TailBoxDirect.spreadToBudgets, TailBoxDirect.get3,
          HexadecimaryFourTwoTailBoxDirect.capBudget,
          HexadecimaryFourTwoTailBoxDirect.baseline] using hle)
  ·
    have hsel :=
      selected_fiber_sum_le_card_sub_four_used C 2
        (normalizedTailUsed16 C 1) e1
        he1_unused he1_inj hused1_card
        (by intro a _ha; exact hge4 2 a)
    have hle : C.card - 4 * spread.2.1 ≤ 86 - 4 * spread.2.1 :=
      Nat.sub_le_sub_right hcard (4 * spread.2.1)
    exact le_trans (by
      simpa [normalizedTailCap] using hsel) (by
        simpa [TailBoxDirect.spreadToBudgets, TailBoxDirect.get3,
          HexadecimaryFourTwoTailBoxDirect.capBudget,
          HexadecimaryFourTwoTailBoxDirect.baseline] using hle)
  ·
    have hsel :=
      selected_fiber_sum_le_card_sub_four_used C 3
        (normalizedTailUsed16 C 2) e2
        he2_unused he2_inj hused2_card
        (by intro a _ha; exact hge4 3 a)
    have hle : C.card - 4 * spread.2.2 ≤ 86 - 4 * spread.2.2 :=
      Nat.sub_le_sub_right hcard (4 * spread.2.2)
    exact le_trans (by
      simpa [normalizedTailCap] using hsel) (by
        simpa [TailBoxDirect.spreadToBudgets, TailBoxDirect.get3,
          HexadecimaryFourTwoTailBoxDirect.capBudget,
          HexadecimaryFourTwoTailBoxDirect.baseline] using hle)

def normalizedTailProfile_of_cover_explicit
    (C : Finset (QaryWord 16 4))
    (hC : CoversFinset C 2)
    (hcard : C.card ≤ 86)
    (spread : Nat × Nat × Nat)
    (e0 e1 e2 : Nat → Fin 16)
    (hsize_pos :
      ∀ coord, coord < 3 →
        0 < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) coord)
    (he0_unused :
      ∀ i, i < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 0 →
        e0 i ∉ normalizedTailUsed16 C 0)
    (he1_unused :
      ∀ i, i < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 1 →
        e1 i ∉ normalizedTailUsed16 C 1)
    (he2_unused :
      ∀ i, i < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 2 →
        e2 i ∉ normalizedTailUsed16 C 2)
    (he0_inj :
      ∀ i j,
        i < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 0 →
        j < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 0 →
        e0 i = e0 j → i = j)
    (he1_inj :
      ∀ i j,
        i < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 1 →
        j < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 1 →
        e1 i = e1 j → i = j)
    (he2_inj :
      ∀ i j,
        i < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 2 →
        j < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 2 →
        e2 i = e2 j → i = j)
    (hused0_card : (normalizedTailUsed16 C 0).card = spread.1)
    (hused1_card : (normalizedTailUsed16 C 1).card = spread.2.1)
    (hused2_card : (normalizedTailUsed16 C 2).card = spread.2.2)
    (hge4 : ∀ i a, 4 ≤ (coordFiber16 C i a).card)
    (hlow0 : (coordFiber16 C 1 (e0 0)).card ≤ 5)
    (hlow1 : (coordFiber16 C 2 (e1 0)).card ≤ 5)
    (hlow2 : (coordFiber16 C 3 (e2 0)).card ≤ 5) :
    TailBoxProfile
      (TailBoxDirect.spreadToSizes spread)
      (TailBoxDirect.spreadToBudgets spread) := by
  refine
    { p01 := normalizedTailP01 C e0 e1
      p02 := normalizedTailP02 C e0 e2
      p12 := normalizedTailP12 C e1 e2
      cap := normalizedTailCap C e0 e1 e2
      size_pos := ?_
      cover := ?_
      degreeBound := ?_
      baselineBound := ?_
      budgetBound := ?_
      fixedLow := ?_ }
  · intro coord hcoord
    exact hsize_pos coord hcoord
  · intro a b c ha hb hc
    exact normalizedTailPair_cover C hC e0 e1 e2
      (he0_unused a ha)
      (he1_unused b hb)
      (he2_unused c hc)
  · intro coord symbol other hcoord hsymbol hother hne
    interval_cases coord <;> interval_cases other <;> try contradiction
    · simp [TailBoxDirect.get3, normalizedTailCap]
      exact normalizedTailP01_row_count_le_cap C e0 e1 he1_inj
    · simp [TailBoxDirect.get3, normalizedTailCap]
      exact normalizedTailP02_row_count_le_cap C e0 e2 he2_inj
    · simp [TailBoxDirect.get3, normalizedTailCap]
      exact normalizedTailP01_col_count_le_cap C e0 e1 he0_inj
    · simp [TailBoxDirect.get3, normalizedTailCap]
      exact normalizedTailP12_row_count_le_cap C e1 e2 he2_inj
    · simp [TailBoxDirect.get3, normalizedTailCap]
      exact normalizedTailP02_col_count_le_cap C e0 e2 he0_inj
    · simp [TailBoxDirect.get3, normalizedTailCap]
      exact normalizedTailP12_col_count_le_cap C e1 e2 he1_inj
  · intro coord symbol hcoord _hsymbol
    exact normalizedTailCap_baseline C e0 e1 e2 hge4 hcoord
  · exact
      normalizedTail_budgetBound C hcard spread e0 e1 e2
        he0_unused he1_unused he2_unused
        he0_inj he1_inj he2_inj
        hused0_card hused1_card hused2_card hge4
  · intro coord hcoord
    exact normalizedTailCap_fixedLow C e0 e1 e2 hlow0 hlow1 hlow2 hcoord

theorem no_normalizedTailProfile_of_cover_explicit
    (C : Finset (QaryWord 16 4))
    (hC : CoversFinset C 2)
    (hcard : C.card ≤ 86)
    (spread : Nat × Nat × Nat)
    (hspread : spread ∈ TailBoxDirect.canonicalFourFiberSpreads)
    (e0 e1 e2 : Nat → Fin 16)
    (hsize_pos :
      ∀ coord, coord < 3 →
        0 < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) coord)
    (he0_unused :
      ∀ i, i < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 0 →
        e0 i ∉ normalizedTailUsed16 C 0)
    (he1_unused :
      ∀ i, i < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 1 →
        e1 i ∉ normalizedTailUsed16 C 1)
    (he2_unused :
      ∀ i, i < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 2 →
        e2 i ∉ normalizedTailUsed16 C 2)
    (he0_inj :
      ∀ i j,
        i < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 0 →
        j < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 0 →
        e0 i = e0 j → i = j)
    (he1_inj :
      ∀ i j,
        i < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 1 →
        j < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 1 →
        e1 i = e1 j → i = j)
    (he2_inj :
      ∀ i j,
        i < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 2 →
        j < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 2 →
        e2 i = e2 j → i = j)
    (hused0_card : (normalizedTailUsed16 C 0).card = spread.1)
    (hused1_card : (normalizedTailUsed16 C 1).card = spread.2.1)
    (hused2_card : (normalizedTailUsed16 C 2).card = spread.2.2)
    (hge4 : ∀ i a, 4 ≤ (coordFiber16 C i a).card)
    (hlow0 : (coordFiber16 C 1 (e0 0)).card ≤ 5)
    (hlow1 : (coordFiber16 C 2 (e1 0)).card ≤ 5)
    (hlow2 : (coordFiber16 C 3 (e2 0)).card ≤ 5) :
    False := by
  let P :=
    normalizedTailProfile_of_cover_explicit C hC hcard spread e0 e1 e2
      hsize_pos he0_unused he1_unused he2_unused
      he0_inj he1_inj he2_inj
      hused0_card hused1_card hused2_card hge4
      hlow0 hlow1 hlow2
  exact P.no_tailBox_of_canonical_spread hspread

theorem TailBoxDirect.fourFiberSpread_size_pos_of_components_le_four
    {spread : Nat × Nat × Nat}
    (hle0 : spread.1 ≤ 4)
    (hle1 : spread.2.1 ≤ 4)
    (hle2 : spread.2.2 ≤ 4) :
    ∀ coord, coord < 3 →
      0 < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) coord := by
  intro coord hcoord
  interval_cases coord <;>
    simp [TailBoxDirect.spreadToSizes, TailBoxDirect.get3,
      HexadecimaryFourTwoTailBoxDirect.q] <;>
    omega

theorem no_normalizedTailProfile_of_cover_explicit_fourFiberSpread
    (C : Finset (QaryWord 16 4))
    (hC : CoversFinset C 2)
    (hcard : C.card ≤ 86)
    (spread : Nat × Nat × Nat)
    (hpos0 : 0 < spread.1)
    (hpos1 : 0 < spread.2.1)
    (hpos2 : 0 < spread.2.2)
    (hle0 : spread.1 ≤ 4)
    (hle1 : spread.2.1 ≤ 4)
    (hle2 : spread.2.2 ≤ 4)
    (hprod : 4 ≤ spread.1 * spread.2.1 * spread.2.2)
    (e0 e1 e2 : Nat → Fin 16)
    (he0_unused :
      ∀ i, i < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 0 →
        e0 i ∉ normalizedTailUsed16 C 0)
    (he1_unused :
      ∀ i, i < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 1 →
        e1 i ∉ normalizedTailUsed16 C 1)
    (he2_unused :
      ∀ i, i < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 2 →
        e2 i ∉ normalizedTailUsed16 C 2)
    (he0_inj :
      ∀ i j,
        i < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 0 →
        j < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 0 →
        e0 i = e0 j → i = j)
    (he1_inj :
      ∀ i j,
        i < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 1 →
        j < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 1 →
        e1 i = e1 j → i = j)
    (he2_inj :
      ∀ i j,
        i < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 2 →
        j < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 2 →
        e2 i = e2 j → i = j)
    (hused0_card : (normalizedTailUsed16 C 0).card = spread.1)
    (hused1_card : (normalizedTailUsed16 C 1).card = spread.2.1)
    (hused2_card : (normalizedTailUsed16 C 2).card = spread.2.2)
    (hge4 : ∀ i a, 4 ≤ (coordFiber16 C i a).card)
    (hlow0 : (coordFiber16 C 1 (e0 0)).card ≤ 5)
    (hlow1 : (coordFiber16 C 2 (e1 0)).card ≤ 5)
    (hlow2 : (coordFiber16 C 3 (e2 0)).card ≤ 5) :
    False := by
  let P :=
    normalizedTailProfile_of_cover_explicit C hC hcard spread e0 e1 e2
      (TailBoxDirect.fourFiberSpread_size_pos_of_components_le_four
        hle0 hle1 hle2)
      he0_unused he1_unused he2_unused
      he0_inj he1_inj he2_inj
      hused0_card hused1_card hused2_card hge4
      hlow0 hlow1 hlow2
  exact P.no_tailBox_of_four_fiber_spread
    hpos0 hpos1 hpos2 hle0 hle1 hle2 hprod

theorem TailBoxDirect.canonicalFourFiberSpread_size_pos
    {spread : Nat × Nat × Nat}
    (hspread : spread ∈ TailBoxDirect.canonicalFourFiberSpreads) :
    ∀ coord, coord < 3 →
      0 < TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) coord := by
  intro coord hcoord
  simp [TailBoxDirect.canonicalFourFiberSpreads,
    HexadecimaryFourTwoTailBoxDirect.spread114,
    HexadecimaryFourTwoTailBoxDirect.spread122,
    HexadecimaryFourTwoTailBoxDirect.spread123,
    HexadecimaryFourTwoTailBoxDirect.spread124,
    HexadecimaryFourTwoTailBoxDirect.spread133,
    HexadecimaryFourTwoTailBoxDirect.spread134,
    HexadecimaryFourTwoTailBoxDirect.spread144,
    HexadecimaryFourTwoTailBoxDirect.spread222,
    HexadecimaryFourTwoTailBoxDirect.spread223,
    HexadecimaryFourTwoTailBoxDirect.spread224,
    HexadecimaryFourTwoTailBoxDirect.spread233,
    HexadecimaryFourTwoTailBoxDirect.spread234,
    HexadecimaryFourTwoTailBoxDirect.spread244,
    HexadecimaryFourTwoTailBoxDirect.spread333,
    HexadecimaryFourTwoTailBoxDirect.spread334,
    HexadecimaryFourTwoTailBoxDirect.spread344,
    HexadecimaryFourTwoTailBoxDirect.spread444] at hspread
  rcases hspread with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
    rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    interval_cases coord <;>
    native_decide

theorem no_normalizedTailProfile_of_cover_lowFirst
    (C : Finset (QaryWord 16 4))
    (hC : CoversFinset C 2)
    (hcard : C.card ≤ 86)
    (spread : Nat × Nat × Nat)
    (hspread : spread ∈ TailBoxDirect.canonicalFourFiberSpreads)
    (low0 low1 low2 : Fin 16)
    (hused0_card : (normalizedTailUsed16 C 0).card = spread.1)
    (hused1_card : (normalizedTailUsed16 C 1).card = spread.2.1)
    (hused2_card : (normalizedTailUsed16 C 2).card = spread.2.2)
    (hlow0_unused : low0 ∉ normalizedTailUsed16 C 0)
    (hlow1_unused : low1 ∉ normalizedTailUsed16 C 1)
    (hlow2_unused : low2 ∉ normalizedTailUsed16 C 2)
    (hge4 : ∀ i a, 4 ≤ (coordFiber16 C i a).card)
    (hlow0 : (coordFiber16 C 1 low0).card ≤ 5)
    (hlow1 : (coordFiber16 C 2 low1).card ≤ 5)
    (hlow2 : (coordFiber16 C 3 low2).card ≤ 5) :
    False := by
  let e0 := lowFirstUnusedEnum (normalizedTailUsed16 C 0) low0
  let e1 := lowFirstUnusedEnum (normalizedTailUsed16 C 1) low1
  let e2 := lowFirstUnusedEnum (normalizedTailUsed16 C 2) low2
  have hsize0 :
      TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 0 =
        16 - spread.1 := by
    simp [TailBoxDirect.spreadToSizes, TailBoxDirect.get3,
      HexadecimaryFourTwoTailBoxDirect.q]
  have hsize1 :
      TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 1 =
        16 - spread.2.1 := by
    simp [TailBoxDirect.spreadToSizes, TailBoxDirect.get3,
      HexadecimaryFourTwoTailBoxDirect.q]
  have hsize2 :
      TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 2 =
        16 - spread.2.2 := by
    simp [TailBoxDirect.spreadToSizes, TailBoxDirect.get3,
      HexadecimaryFourTwoTailBoxDirect.q]
  exact
    no_normalizedTailProfile_of_cover_explicit
      C hC hcard spread hspread e0 e1 e2
      (TailBoxDirect.canonicalFourFiberSpread_size_pos hspread)
      (by
        intro i hi
        exact lowFirstUnusedEnum_not_mem
          (normalizedTailUsed16 C 0) low0 hused0_card hlow0_unused
          i (by simpa [hsize0] using hi))
      (by
        intro i hi
        exact lowFirstUnusedEnum_not_mem
          (normalizedTailUsed16 C 1) low1 hused1_card hlow1_unused
          i (by simpa [hsize1] using hi))
      (by
        intro i hi
        exact lowFirstUnusedEnum_not_mem
          (normalizedTailUsed16 C 2) low2 hused2_card hlow2_unused
          i (by simpa [hsize2] using hi))
      (by
        intro i j hi hj hij
        exact lowFirstUnusedEnum_injective
          (normalizedTailUsed16 C 0) low0 hused0_card hlow0_unused
          i j (by simpa [hsize0] using hi) (by simpa [hsize0] using hj) hij)
      (by
        intro i j hi hj hij
        exact lowFirstUnusedEnum_injective
          (normalizedTailUsed16 C 1) low1 hused1_card hlow1_unused
          i j (by simpa [hsize1] using hi) (by simpa [hsize1] using hj) hij)
      (by
        intro i j hi hj hij
        exact lowFirstUnusedEnum_injective
          (normalizedTailUsed16 C 2) low2 hused2_card hlow2_unused
          i j (by simpa [hsize2] using hi) (by simpa [hsize2] using hj) hij)
      hused0_card hused1_card hused2_card hge4
      (by simpa [e0] using hlow0)
      (by simpa [e1] using hlow1)
      (by simpa [e2] using hlow2)

theorem exists_low_unused_cap_le_five
    (C : Finset (QaryWord 16 4))
    (hcard : C.card ≤ 86)
    (hge4 : ∀ i a, 4 ≤ (coordFiber16 C i a).card)
    (coord : Fin 4)
    (U : Finset (Fin 16)) {k : Nat}
    (hU_card : U.card = k)
    (hk : k ≤ 4) :
    ∃ low : Fin 16, low ∉ U ∧ (coordFiber16 C coord low).card ≤ 5 := by
  classical
  let V : Finset (Fin 16) := unusedSymbols16 U
  let f : Fin 16 → Nat := fun a => (coordFiber16 C coord a).card
  by_contra hnone
  have hunused_ge6 : ∀ a, a ∈ V → 6 ≤ f a := by
    intro a haV
    have ha_notU : a ∉ U := by
      simpa [V, unusedSymbols16] using haV
    have hnot_le5 : ¬ f a ≤ 5 := by
      intro hle
      exact hnone ⟨a, ha_notU, by simpa [f] using hle⟩
    omega
  have hused_lower : 4 * k ≤ ∑ a ∈ U, f a := by
    have hle : (∑ a ∈ U, (4 : Nat)) ≤ ∑ a ∈ U, f a := by
      apply Finset.sum_le_sum
      intro a _ha
      exact hge4 coord a
    have hconst : (∑ a ∈ U, (4 : Nat)) = U.card * 4 := by simp
    omega
  have hV_card : V.card = 16 - k := by
    simpa [V, hU_card] using unusedSymbols16_card U
  have hunused_lower : 6 * (16 - k) ≤ ∑ a ∈ V, f a := by
    have hle : (∑ a ∈ V, (6 : Nat)) ≤ ∑ a ∈ V, f a := by
      apply Finset.sum_le_sum
      intro a ha
      exact hunused_ge6 a ha
    have hconst : (∑ a ∈ V, (6 : Nat)) = V.card * 6 := by simp
    omega
  have hdisj : Disjoint U V := by
    rw [Finset.disjoint_left]
    intro a haU haV
    have ha_notU : a ∉ U := by
      simpa [V, unusedSymbols16] using haV
    exact ha_notU haU
  have hsubset_univ : U ∪ V ⊆ (Finset.univ : Finset (Fin 16)) := by
    intro a _ha
    simp
  have hsum_union_le_total :
      (∑ a ∈ U ∪ V, f a) ≤ ∑ a : Fin 16, f a := by
    exact Finset.sum_le_sum_of_subset_of_nonneg hsubset_univ
      (by intro a ha hnot; exact Nat.zero_le _)
  have htotal_eq : (∑ a : Fin 16, f a) = C.card := by
    simpa [f] using (coordFiber16_card_sum C coord).symm
  have hsum_pair_le : (∑ a ∈ U, f a) + (∑ a ∈ V, f a) ≤ C.card := by
    have hsum_union := Finset.sum_union hdisj (f := f)
    rw [← hsum_union]
    exact hsum_union_le_total.trans_eq htotal_eq
  have hbudget : 4 * k + 6 * (16 - k) ≤ 86 := by
    omega
  omega

theorem coordFiber16_card_ge_four_of_card_le_eighty_six
    (C : Finset (QaryWord 16 4))
    (hC : CoversFinset C 2)
    (hcard : C.card ≤ 86) :
    ∀ i a, 4 ≤ (coordFiber16 C i a).card := by
  intro i a
  simpa [coordFiber16] using
    hexadecimaryFourRadiusTwo_symbol_fiber_card_ge_four_of_card_le_eighty_six
      C hC hcard i a

theorem TailBoxDirect.canonicalFourFiberSpread_components_le_four
    {spread : Nat × Nat × Nat}
    (hspread : spread ∈ TailBoxDirect.canonicalFourFiberSpreads) :
    spread.1 ≤ 4 ∧ spread.2.1 ≤ 4 ∧ spread.2.2 ≤ 4 := by
  simp [TailBoxDirect.canonicalFourFiberSpreads,
    HexadecimaryFourTwoTailBoxDirect.spread114,
    HexadecimaryFourTwoTailBoxDirect.spread122,
    HexadecimaryFourTwoTailBoxDirect.spread123,
    HexadecimaryFourTwoTailBoxDirect.spread124,
    HexadecimaryFourTwoTailBoxDirect.spread133,
    HexadecimaryFourTwoTailBoxDirect.spread134,
    HexadecimaryFourTwoTailBoxDirect.spread144,
    HexadecimaryFourTwoTailBoxDirect.spread222,
    HexadecimaryFourTwoTailBoxDirect.spread223,
    HexadecimaryFourTwoTailBoxDirect.spread224,
    HexadecimaryFourTwoTailBoxDirect.spread233,
    HexadecimaryFourTwoTailBoxDirect.spread234,
    HexadecimaryFourTwoTailBoxDirect.spread244,
    HexadecimaryFourTwoTailBoxDirect.spread333,
    HexadecimaryFourTwoTailBoxDirect.spread334,
    HexadecimaryFourTwoTailBoxDirect.spread344,
    HexadecimaryFourTwoTailBoxDirect.spread444] at hspread
  rcases hspread with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
    rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
    native_decide

theorem no_normalizedTailProfile_of_cover_used_cards
    (C : Finset (QaryWord 16 4))
    (hC : CoversFinset C 2)
    (hcard : C.card ≤ 86)
    (spread : Nat × Nat × Nat)
    (hspread : spread ∈ TailBoxDirect.canonicalFourFiberSpreads)
    (hused0_card : (normalizedTailUsed16 C 0).card = spread.1)
    (hused1_card : (normalizedTailUsed16 C 1).card = spread.2.1)
    (hused2_card : (normalizedTailUsed16 C 2).card = spread.2.2)
    (hge4 : ∀ i a, 4 ≤ (coordFiber16 C i a).card) :
    False := by
  have hle4 := TailBoxDirect.canonicalFourFiberSpread_components_le_four hspread
  obtain ⟨low0, hlow0_unused, hlow0⟩ :=
    exists_low_unused_cap_le_five C hcard hge4 1
      (normalizedTailUsed16 C 0) hused0_card hle4.1
  obtain ⟨low1, hlow1_unused, hlow1⟩ :=
    exists_low_unused_cap_le_five C hcard hge4 2
      (normalizedTailUsed16 C 1) hused1_card hle4.2.1
  obtain ⟨low2, hlow2_unused, hlow2⟩ :=
    exists_low_unused_cap_le_five C hcard hge4 3
      (normalizedTailUsed16 C 2) hused2_card hle4.2.2
  exact
    no_normalizedTailProfile_of_cover_lowFirst
      C hC hcard spread hspread low0 low1 low2
      hused0_card hused1_card hused2_card
      hlow0_unused hlow1_unused hlow2_unused
      hge4 hlow0 hlow1 hlow2

theorem no_normalizedTailProfile_of_cover_used_cards_autoGe4
    (C : Finset (QaryWord 16 4))
    (hC : CoversFinset C 2)
    (hcard : C.card ≤ 86)
    (spread : Nat × Nat × Nat)
    (hspread : spread ∈ TailBoxDirect.canonicalFourFiberSpreads)
    (hused0_card : (normalizedTailUsed16 C 0).card = spread.1)
    (hused1_card : (normalizedTailUsed16 C 1).card = spread.2.1)
    (hused2_card : (normalizedTailUsed16 C 2).card = spread.2.2) :
    False := by
  exact no_normalizedTailProfile_of_cover_used_cards
    C hC hcard spread hspread hused0_card hused1_card hused2_card
    (coordFiber16_card_ge_four_of_card_le_eighty_six C hC hcard)

theorem no_normalizedTailProfile_of_cover_used_cards_fourFiberSpread_autoGe4
    (C : Finset (QaryWord 16 4))
    (hC : CoversFinset C 2)
    (hcard : C.card ≤ 86)
    (spread : Nat × Nat × Nat)
    (hpos0 : 0 < spread.1)
    (hpos1 : 0 < spread.2.1)
    (hpos2 : 0 < spread.2.2)
    (hle0 : spread.1 ≤ 4)
    (hle1 : spread.2.1 ≤ 4)
    (hle2 : spread.2.2 ≤ 4)
    (hprod : 4 ≤ spread.1 * spread.2.1 * spread.2.2)
    (hused0_card : (normalizedTailUsed16 C 0).card = spread.1)
    (hused1_card : (normalizedTailUsed16 C 1).card = spread.2.1)
    (hused2_card : (normalizedTailUsed16 C 2).card = spread.2.2) :
    False := by
  let hge4 := coordFiber16_card_ge_four_of_card_le_eighty_six C hC hcard
  obtain ⟨low0, hlow0_unused, hlow0⟩ :=
    exists_low_unused_cap_le_five C hcard hge4 1
      (normalizedTailUsed16 C 0) hused0_card hle0
  obtain ⟨low1, hlow1_unused, hlow1⟩ :=
    exists_low_unused_cap_le_five C hcard hge4 2
      (normalizedTailUsed16 C 1) hused1_card hle1
  obtain ⟨low2, hlow2_unused, hlow2⟩ :=
    exists_low_unused_cap_le_five C hcard hge4 3
      (normalizedTailUsed16 C 2) hused2_card hle2
  let e0 := lowFirstUnusedEnum (normalizedTailUsed16 C 0) low0
  let e1 := lowFirstUnusedEnum (normalizedTailUsed16 C 1) low1
  let e2 := lowFirstUnusedEnum (normalizedTailUsed16 C 2) low2
  have hsize0 :
      TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 0 =
        16 - spread.1 := by
    simp [TailBoxDirect.spreadToSizes, TailBoxDirect.get3,
      HexadecimaryFourTwoTailBoxDirect.q]
  have hsize1 :
      TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 1 =
        16 - spread.2.1 := by
    simp [TailBoxDirect.spreadToSizes, TailBoxDirect.get3,
      HexadecimaryFourTwoTailBoxDirect.q]
  have hsize2 :
      TailBoxDirect.get3 (TailBoxDirect.spreadToSizes spread) 2 =
        16 - spread.2.2 := by
    simp [TailBoxDirect.spreadToSizes, TailBoxDirect.get3,
      HexadecimaryFourTwoTailBoxDirect.q]
  exact
    no_normalizedTailProfile_of_cover_explicit_fourFiberSpread
      C hC hcard spread
      hpos0 hpos1 hpos2 hle0 hle1 hle2 hprod
      e0 e1 e2
      (by
        intro i hi
        exact lowFirstUnusedEnum_not_mem
          (normalizedTailUsed16 C 0) low0 hused0_card hlow0_unused
          i (by simpa [hsize0] using hi))
      (by
        intro i hi
        exact lowFirstUnusedEnum_not_mem
          (normalizedTailUsed16 C 1) low1 hused1_card hlow1_unused
          i (by simpa [hsize1] using hi))
      (by
        intro i hi
        exact lowFirstUnusedEnum_not_mem
          (normalizedTailUsed16 C 2) low2 hused2_card hlow2_unused
          i (by simpa [hsize2] using hi))
      (by
        intro i j hi hj hij
        exact lowFirstUnusedEnum_injective
          (normalizedTailUsed16 C 0) low0 hused0_card hlow0_unused
          i j (by simpa [hsize0] using hi) (by simpa [hsize0] using hj) hij)
      (by
        intro i j hi hj hij
        exact lowFirstUnusedEnum_injective
          (normalizedTailUsed16 C 1) low1 hused1_card hlow1_unused
          i j (by simpa [hsize1] using hi) (by simpa [hsize1] using hj) hij)
      (by
        intro i j hi hj hij
        exact lowFirstUnusedEnum_injective
          (normalizedTailUsed16 C 2) low2 hused2_card hlow2_unused
          i j (by simpa [hsize2] using hi) (by simpa [hsize2] using hj) hij)
      hused0_card hused1_card hused2_card hge4
      (by simpa [e0] using hlow0)
      (by simpa [e1] using hlow1)
      (by simpa [e2] using hlow2)

theorem normalizedTailUsed16_card_pos_of_exact_four
    (C : Finset (QaryWord 16 4))
    (hfiber : (coordFiber16 C 0 0).card = 4)
    (i : Fin 3) :
    0 < (normalizedTailUsed16 C i).card := by
  classical
  have hfiber_pos : 0 < (coordFiber16 C 0 0).card := by omega
  obtain ⟨w, hw⟩ := Finset.card_pos.mp hfiber_pos
  exact Finset.card_pos.mpr
    ⟨deleteCoord (0 : Fin 4) w i,
      Finset.mem_image.mpr ⟨w, hw, rfl⟩⟩

theorem normalizedTailUsed16_card_le_four_of_exact_four
    (C : Finset (QaryWord 16 4))
    (hfiber : (coordFiber16 C 0 0).card = 4)
    (i : Fin 3) :
    (normalizedTailUsed16 C i).card ≤ 4 := by
  calc
    (normalizedTailUsed16 C i).card ≤ (coordFiber16 C 0 0).card :=
      Finset.card_image_le
    _ = 4 := hfiber

theorem normalizedTailSpread16_product_ge_four_of_exact_four
    (C : Finset (QaryWord 16 4))
    (hfiber : (coordFiber16 C 0 0).card = 4) :
    4 ≤
      (normalizedTailUsed16 C 0).card *
        (normalizedTailUsed16 C 1).card *
        (normalizedTailUsed16 C 2).card := by
  classical
  let F : Finset (QaryWord 16 4) := coordFiber16 C 0 0
  let triple : QaryWord 16 4 → Fin 16 × (Fin 16 × Fin 16) :=
    fun w =>
      (deleteCoord (0 : Fin 4) w 0,
        (deleteCoord (0 : Fin 4) w 1,
          deleteCoord (0 : Fin 4) w 2))
  let T : Finset (Fin 16 × (Fin 16 × Fin 16)) := F.image triple
  let Box : Finset (Fin 16 × (Fin 16 × Fin 16)) :=
    (normalizedTailUsed16 C 0).product
      ((normalizedTailUsed16 C 1).product (normalizedTailUsed16 C 2))
  have hinj : Set.InjOn triple (↑F) := by
    intro x hx y hy hxy
    have hxF : x ∈ coordFiber16 C 0 0 := by simpa [F] using hx
    have hyF : y ∈ coordFiber16 C 0 0 := by simpa [F] using hy
    have hx0 : x 0 = 0 := by
      simpa [coordFiber16] using (Finset.mem_filter.mp hxF).2
    have hy0 : y 0 = 0 := by
      simpa [coordFiber16] using (Finset.mem_filter.mp hyF).2
    have h0 :
        deleteCoord (0 : Fin 4) x 0 =
          deleteCoord (0 : Fin 4) y 0 :=
      congrArg Prod.fst hxy
    have h1 :
        deleteCoord (0 : Fin 4) x 1 =
          deleteCoord (0 : Fin 4) y 1 :=
      congrArg Prod.fst (congrArg Prod.snd hxy)
    have h2 :
        deleteCoord (0 : Fin 4) x 2 =
          deleteCoord (0 : Fin 4) y 2 :=
      congrArg Prod.snd (congrArg Prod.snd hxy)
    funext coord
    fin_cases coord
    · exact hx0.trans hy0.symm
    · simpa [deleteCoord] using h0
    · simpa [deleteCoord] using h1
    · simpa [deleteCoord] using h2
  have hT_card : T.card = F.card := by
    simpa [T] using Finset.card_image_of_injOn hinj
  have hT_subset : T ⊆ Box := by
    intro p hp
    rcases Finset.mem_image.mp hp with ⟨w, hwF, rfl⟩
    refine Finset.mem_product.mpr ⟨?_, ?_⟩
    · exact Finset.mem_image.mpr ⟨w, by simpa [F] using hwF, rfl⟩
    · refine Finset.mem_product.mpr ⟨?_, ?_⟩
      · exact Finset.mem_image.mpr ⟨w, by simpa [F] using hwF, rfl⟩
      · exact Finset.mem_image.mpr ⟨w, by simpa [F] using hwF, rfl⟩
  have hT_le_box : T.card ≤ Box.card :=
    Finset.card_le_card hT_subset
  have hBox_card :
      Box.card =
        (normalizedTailUsed16 C 0).card *
          (normalizedTailUsed16 C 1).card *
          (normalizedTailUsed16 C 2).card := by
    simp [Box, Nat.mul_assoc]
  have hF_card : F.card = 4 := by simpa [F] using hfiber
  omega

theorem no_cover_of_normalized_exact_four_fiber
    (C : Finset (QaryWord 16 4))
    (hC : CoversFinset C 2)
    (hcard : C.card ≤ 86)
    (hfiber : (coordFiber16 C 0 0).card = 4) :
    False := by
  let spread := normalizedTailSpread16 C
  have hused0_card : (normalizedTailUsed16 C 0).card = spread.1 := by
    simp [spread, normalizedTailSpread16]
  have hused1_card : (normalizedTailUsed16 C 1).card = spread.2.1 := by
    simp [spread, normalizedTailSpread16]
  have hused2_card : (normalizedTailUsed16 C 2).card = spread.2.2 := by
    simp [spread, normalizedTailSpread16]
  have hpos0 : 0 < spread.1 := by
    simpa [spread, normalizedTailSpread16] using
      normalizedTailUsed16_card_pos_of_exact_four C hfiber 0
  have hpos1 : 0 < spread.2.1 := by
    simpa [spread, normalizedTailSpread16] using
      normalizedTailUsed16_card_pos_of_exact_four C hfiber 1
  have hpos2 : 0 < spread.2.2 := by
    simpa [spread, normalizedTailSpread16] using
      normalizedTailUsed16_card_pos_of_exact_four C hfiber 2
  have hle0 : spread.1 ≤ 4 := by
    simpa [spread, normalizedTailSpread16] using
      normalizedTailUsed16_card_le_four_of_exact_four C hfiber 0
  have hle1 : spread.2.1 ≤ 4 := by
    simpa [spread, normalizedTailSpread16] using
      normalizedTailUsed16_card_le_four_of_exact_four C hfiber 1
  have hle2 : spread.2.2 ≤ 4 := by
    simpa [spread, normalizedTailSpread16] using
      normalizedTailUsed16_card_le_four_of_exact_four C hfiber 2
  have hprod : 4 ≤ spread.1 * spread.2.1 * spread.2.2 := by
    simpa [spread, normalizedTailSpread16] using
      normalizedTailSpread16_product_ge_four_of_exact_four C hfiber
  exact
    no_normalizedTailProfile_of_cover_used_cards_fourFiberSpread_autoGe4
      C hC hcard spread
      hpos0 hpos1 hpos2 hle0 hle1 hle2 hprod
      hused0_card hused1_card hused2_card

def relabelWord16 (π : Fin 4 ≃ Fin 4) (σ : Fin 16 ≃ Fin 16)
    (w : QaryWord 16 4) : QaryWord 16 4 :=
  fun i => σ (w (π i))

def relabelCode16 (C : Finset (QaryWord 16 4))
    (π : Fin 4 ≃ Fin 4) (σ : Fin 16 ≃ Fin 16) :
    Finset (QaryWord 16 4) :=
  C.image (relabelWord16 π σ)

theorem hammingDist_comp_coordEquiv16
    (π : Fin 4 ≃ Fin 4) (x y : QaryWord 16 4) :
    hammingDist (fun i => x (π i)) (fun i => y (π i)) =
      hammingDist x y := by
  classical
  let Snew : Finset (Fin 4) :=
    Finset.univ.filter (fun i => x (π i) ≠ y (π i))
  let Sold : Finset (Fin 4) :=
    Finset.univ.filter (fun i => x i ≠ y i)
  have himage : Snew.image π = Sold := by
    ext k
    simp [Snew, Sold]
    constructor
    · rintro ⟨i, hi, hik⟩
      simpa [← hik] using hi
    · intro hk
      exact ⟨π.symm k, by simpa using hk, by simp⟩
  calc
    hammingDist (fun i => x (π i)) (fun i => y (π i)) = Snew.card := by
      rfl
    _ = (Snew.image π).card := (Finset.card_image_of_injective _ π.injective).symm
    _ = Sold.card := by rw [himage]
    _ = hammingDist x y := rfl

theorem dist_relabelWord16
    (π : Fin 4 ≃ Fin 4) (σ : Fin 16 ≃ Fin 16)
    (x y : QaryWord 16 4) :
    dist (relabelWord16 π σ x) (relabelWord16 π σ y) = dist x y := by
  unfold dist relabelWord16
  calc
    hammingDist (fun i => σ (x (π i))) (fun i => σ (y (π i))) =
        hammingDist (fun i => x (π i)) (fun i => y (π i)) := by
      exact hammingDist_comp (fun _ => σ) (fun _ => σ.injective)
    _ = hammingDist x y := hammingDist_comp_coordEquiv16 π x y

theorem relabelWord16_injective
    (π : Fin 4 ≃ Fin 4) (σ : Fin 16 ≃ Fin 16) :
    Function.Injective (relabelWord16 π σ) := by
  intro x y hxy
  funext k
  have hcoord := congrFun hxy (π.symm k)
  apply σ.injective
  simpa [relabelWord16] using hcoord

theorem relabelCode16_card
    (C : Finset (QaryWord 16 4))
    (π : Fin 4 ≃ Fin 4) (σ : Fin 16 ≃ Fin 16) :
    (relabelCode16 C π σ).card = C.card := by
  simpa [relabelCode16] using
    Finset.card_image_of_injective C (relabelWord16_injective π σ)

theorem relabelCode16_covers
    (C : Finset (QaryWord 16 4))
    (hC : CoversFinset C 2)
    (π : Fin 4 ≃ Fin 4) (σ : Fin 16 ≃ Fin 16) :
    CoversFinset (relabelCode16 C π σ) 2 := by
  intro x
  let xOld : QaryWord 16 4 := relabelWord16 π.symm σ.symm x
  obtain ⟨c, hcC, hdist⟩ := hC xOld
  refine ⟨relabelWord16 π σ c, ?_, ?_⟩
  · exact Finset.mem_image.mpr ⟨c, hcC, rfl⟩
  · have hx : relabelWord16 π σ xOld = x := by
      funext i
      have hidx : π.symm (π i) = i := Equiv.symm_apply_apply π i
      simpa [xOld, relabelWord16] using congrArg x hidx
    have hdist' :
        dist (relabelWord16 π σ xOld) (relabelWord16 π σ c) =
          dist xOld c :=
      dist_relabelWord16 π σ xOld c
    calc
      dist x (relabelWord16 π σ c) =
          dist (relabelWord16 π σ xOld) (relabelWord16 π σ c) := by
        rw [hx]
      _ = dist xOld c := hdist'
      _ ≤ 2 := hdist

theorem coordFiber16_relabelCode16_zero_zero_card
    (C : Finset (QaryWord 16 4))
    (π : Fin 4 ≃ Fin 4) (σ : Fin 16 ≃ Fin 16)
    (j : Fin 4) (a : Fin 16)
    (hπ : π 0 = j)
    (hσ : σ a = 0) :
    (coordFiber16 (relabelCode16 C π σ) 0 0).card =
      (coordFiber16 C j a).card := by
  classical
  have hset :
      coordFiber16 (relabelCode16 C π σ) 0 0 =
        (coordFiber16 C j a).image (relabelWord16 π σ) := by
    ext w'
    constructor
    · intro hw'
      have hw'C : w' ∈ relabelCode16 C π σ := by
        simpa [coordFiber16] using (Finset.mem_filter.mp hw').1
      rcases Finset.mem_image.mp hw'C with ⟨w, hwC, rfl⟩
      have hw0 : σ (w (π 0)) = 0 := by
        simpa [coordFiber16, relabelWord16] using (Finset.mem_filter.mp hw').2
      have hwja : w j = a := by
        apply σ.injective
        simpa [hπ, hσ] using hw0
      exact Finset.mem_image.mpr
        ⟨w, by simp [coordFiber16, hwC, hwja], rfl⟩
    · intro hw'
      rcases Finset.mem_image.mp hw' with ⟨w, hwF, rfl⟩
      have hwC : w ∈ C := by
        simpa [coordFiber16] using (Finset.mem_filter.mp hwF).1
      have hwja : w j = a := by
        simpa [coordFiber16] using (Finset.mem_filter.mp hwF).2
      exact Finset.mem_filter.mpr
        ⟨Finset.mem_image.mpr ⟨w, hwC, rfl⟩,
          by simp [relabelWord16, hπ, hwja, hσ]⟩
  rw [hset]
  exact Finset.card_image_of_injective
    (coordFiber16 C j a) (relabelWord16_injective π σ)

theorem no_cover_of_exact_four_fiber
    (C : Finset (QaryWord 16 4))
    (hC : CoversFinset C 2)
    (hcard : C.card ≤ 86)
    (j : Fin 4) (a : Fin 16)
    (hfiber : (coordFiber16 C j a).card = 4) :
    False := by
  let π : Fin 4 ≃ Fin 4 := Equiv.swap (0 : Fin 4) j
  let σ : Fin 16 ≃ Fin 16 := Equiv.swap a 0
  let C' := relabelCode16 C π σ
  have hC' : CoversFinset C' 2 := by
    simpa [C'] using relabelCode16_covers C hC π σ
  have hcard' : C'.card ≤ 86 := by
    simpa [C', relabelCode16_card] using hcard
  have hπ : π 0 = j := by
    simp [π]
  have hσ : σ a = 0 := by
    simp [σ]
  have hfiber' : (coordFiber16 C' 0 0).card = 4 := by
    change (coordFiber16 (relabelCode16 C π σ) 0 0).card = 4
    rw [coordFiber16_relabelCode16_zero_zero_card C π σ j a hπ hσ]
    exact hfiber
  exact no_cover_of_normalized_exact_four_fiber C' hC' hcard' hfiber'

theorem coordFiber16_card_ge_five_of_card_le_eighty_six
    (C : Finset (QaryWord 16 4))
    (hC : CoversFinset C 2)
    (hcard : C.card ≤ 86) :
    ∀ i a, 5 ≤ (coordFiber16 C i a).card := by
  intro i a
  have hge4 :=
    coordFiber16_card_ge_four_of_card_le_eighty_six C hC hcard i a
  by_contra hnot
  have hfiber : (coordFiber16 C i a).card = 4 := by omega
  exact no_cover_of_exact_four_fiber C hC hcard i a hfiber

end Database
end CoveringCodes
