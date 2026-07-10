import CoveringCodes.Database.Sources.HexadecimaryFourTwo
import Mathlib.Tactic

/-!
# Semantic lower-bound scaffolding for `K_16(4,2)`

This file contains the cover-to-profile facts that are independent of the SAT
certificate encodings.  They are the K16 analogues of the missing-pair profile
lemmas used in the K8 proof.
-/

namespace CoveringCodes
namespace Database

open scoped BigOperators

def coordFiber16 (C : Finset (QaryWord 16 4)) (i : Fin 4) (a : Fin 16) :
    Finset (QaryWord 16 4) :=
  C.filter (fun w => w i = a)

def pairValues16 (C : Finset (QaryWord 16 4)) (i j : Fin 4) :
    Finset (Fin 16 × Fin 16) :=
  C.image (fun w => (w i, w j))

abbrev pairMissing16 (C : Finset (QaryWord 16 4)) (i j : Fin 4)
    (a b : Fin 16) : Prop :=
  (a, b) ∉ pairValues16 C i j

theorem pairMissing16_comm
    (C : Finset (QaryWord 16 4))
    (i j : Fin 4)
    (a b : Fin 16) :
    pairMissing16 C i j a b ↔ pairMissing16 C j i b a := by
  simp [pairMissing16, pairValues16, Prod.ext_iff]
  constructor
  · intro h x hxC hxj hxi
    exact h x hxC hxi hxj
  · intro h x hxC hxi hxj
    exact h x hxC hxj hxi

theorem coordFiber16_card_sum (C : Finset (QaryWord 16 4)) (i : Fin 4) :
    C.card = ∑ a : Fin 16, (coordFiber16 C i a).card := by
  simpa [coordFiber16] using
    (Finset.card_eq_sum_card_fiberwise
      (s := C) (t := (Finset.univ : Finset (Fin 16)))
      (f := fun w : QaryWord 16 4 => w i) (by intro w _hw; simp))

def coordExcess16 (C : Finset (QaryWord 16 4)) (i : Fin 4) (a : Fin 16) : Nat :=
  (coordFiber16 C i a).card - 5

theorem coordExcess16_sum_eq_six_of_card_eq_eighty_six
    (C : Finset (QaryWord 16 4))
    (hge5 : ∀ i a, 5 ≤ (coordFiber16 C i a).card)
    (hcard : C.card = 86)
    (i : Fin 4) :
    (∑ a : Fin 16, coordExcess16 C i a) = 6 := by
  classical
  have hsum_add :
      (∑ a : Fin 16, coordExcess16 C i a) + (∑ _a : Fin 16, (5 : Nat)) =
        ∑ a : Fin 16, (coordFiber16 C i a).card := by
    calc
      (∑ a : Fin 16, coordExcess16 C i a) + (∑ _a : Fin 16, (5 : Nat))
          = ∑ a : Fin 16, (coordExcess16 C i a + 5) := by
            rw [Finset.sum_add_distrib]
      _ = ∑ a : Fin 16, (coordFiber16 C i a).card := by
            apply Finset.sum_congr rfl
            intro a _ha
            have h := hge5 i a
            simp [coordExcess16]
            omega
  have hconst : (∑ _a : Fin 16, (5 : Nat)) = 80 := by
    simp
  have hsum_fibers :
      ∑ a : Fin 16, (coordFiber16 C i a).card = C.card := by
    rw [← coordFiber16_card_sum C i]
  omega

theorem pairMissing16_row_card_ge_of_fiber_card_le
    (C : Finset (QaryWord 16 4))
    (i j : Fin 4)
    (a : Fin 16)
    (t : Nat)
    (hFle : (coordFiber16 C i a).card ≤ t) :
    16 - t ≤ (Finset.univ.filter (fun b => pairMissing16 C i j a b)).card := by
  classical
  let F : Finset (QaryWord 16 4) := coordFiber16 C i a
  let P : Finset (Fin 16) := F.image (fun w => w j)
  have hPle : P.card ≤ t := Finset.card_image_le.trans hFle
  have hset :
      (Finset.univ.filter (fun b => pairMissing16 C i j a b)) =
        (Finset.univ : Finset (Fin 16)) \ P := by
    ext b
    simp [pairMissing16, pairValues16, P, F, coordFiber16, Prod.ext_iff]
  rw [hset]
  have hPsub : P ⊆ (Finset.univ : Finset (Fin 16)) := by intro b _hb; simp
  rw [Finset.card_sdiff_of_subset hPsub]
  simp [Fintype.card_fin]
  omega

theorem pairMissing16_row_card_ge_eleven_sub_coordExcess16
    (C : Finset (QaryWord 16 4))
    (hge5 : ∀ i a, 5 ≤ (coordFiber16 C i a).card)
    (i j : Fin 4)
    (a : Fin 16) :
    11 - coordExcess16 C i a ≤
      (Finset.univ.filter (fun b => pairMissing16 C i j a b)).card := by
  classical
  have hFle :
      (coordFiber16 C i a).card ≤ 5 + coordExcess16 C i a := by
    have h := hge5 i a
    simp [coordExcess16]
    omega
  have hrow :=
    pairMissing16_row_card_ge_of_fiber_card_le C i j a
      (5 + coordExcess16 C i a) hFle
  have hcmp :
      11 - coordExcess16 C i a ≤ 16 - (5 + coordExcess16 C i a) := by
    omega
  exact hcmp.trans hrow

theorem pairMissing16_col_card_ge_eleven_sub_coordExcess16
    (C : Finset (QaryWord 16 4))
    (hge5 : ∀ i a, 5 ≤ (coordFiber16 C i a).card)
    (i j : Fin 4)
    (b : Fin 16) :
    11 - coordExcess16 C j b ≤
      (Finset.univ.filter (fun a => pairMissing16 C i j a b)).card := by
  have hset :
      (Finset.univ.filter (fun a => pairMissing16 C i j a b)) =
        (Finset.univ.filter (fun a => pairMissing16 C j i b a)) := by
    ext a
    simp [pairMissing16_comm C i j a b]
  rw [hset]
  exact pairMissing16_row_card_ge_eleven_sub_coordExcess16 C hge5 j i b

private theorem dist_le_two_agrees_pair16 (x c : QaryWord 16 4)
    (hd : dist x c ≤ 2) :
    (x 0 = c 0 ∧ x 1 = c 1) ∨
    (x 0 = c 0 ∧ x 2 = c 2) ∨
    (x 0 = c 0 ∧ x 3 = c 3) ∨
    (x 1 = c 1 ∧ x 2 = c 2) ∨
    (x 1 = c 1 ∧ x 3 = c 3) ∨
    (x 2 = c 2 ∧ x 3 = c 3) := by
  classical
  let M : Finset (Fin 4) := Finset.univ.filter (fun i => x i = c i)
  let D : Finset (Fin 4) := Finset.univ.filter (fun i => x i ≠ c i)
  have hDcard : D.card ≤ 2 := by
    simpa [D, dist, hammingDist] using hd
  have hM_eq : M = (Finset.univ : Finset (Fin 4)) \ D := by
    ext i
    by_cases h : x i = c i <;> simp [M, D, h]
  have hMcard : M.card = 4 - D.card := by
    rw [hM_eq, Finset.card_sdiff_of_subset]
    · simp
    · intro i _hi
      simp
  have hMgt : 1 < M.card := by omega
  have hMnontrivial : M.Nontrivial :=
    Finset.one_lt_card_iff_nontrivial.mp hMgt
  rcases Finset.nontrivial_def.mp hMnontrivial with ⟨i, hi, j, hj, hij⟩
  simp [M] at hi hj
  fin_cases i <;> fin_cases j <;> tauto

theorem no_pairMissing16_clique_of_covers
    (C : Finset (QaryWord 16 4))
    (hC : CoversFinset C 2) :
    ¬ ∃ a b c d,
      pairMissing16 C 0 1 a b ∧ pairMissing16 C 0 2 a c ∧
      pairMissing16 C 0 3 a d ∧ pairMissing16 C 1 2 b c ∧
      pairMissing16 C 1 3 b d ∧ pairMissing16 C 2 3 c d := by
  rintro ⟨a, b, c, d, h01, h02, h03, h12, h13, h23⟩
  let x : QaryWord 16 4 := ![a, b, c, d]
  obtain ⟨center, hcenterC, hdist⟩ := hC x
  have hagree := dist_le_two_agrees_pair16 x center hdist
  rcases hagree with h01eq | h02eq | h03eq | h12eq | h13eq | h23eq
  · exact h01 (by
      refine Finset.mem_image.mpr ⟨center, hcenterC, ?_⟩
      exact Prod.ext h01eq.1.symm h01eq.2.symm)
  · exact h02 (by
      refine Finset.mem_image.mpr ⟨center, hcenterC, ?_⟩
      exact Prod.ext h02eq.1.symm h02eq.2.symm)
  · exact h03 (by
      refine Finset.mem_image.mpr ⟨center, hcenterC, ?_⟩
      exact Prod.ext h03eq.1.symm h03eq.2.symm)
  · exact h12 (by
      refine Finset.mem_image.mpr ⟨center, hcenterC, ?_⟩
      exact Prod.ext h12eq.1.symm h12eq.2.symm)
  · exact h13 (by
      refine Finset.mem_image.mpr ⟨center, hcenterC, ?_⟩
      exact Prod.ext h13eq.1.symm h13eq.2.symm)
  · exact h23 (by
      refine Finset.mem_image.mpr ⟨center, hcenterC, ?_⟩
      exact Prod.ext h23eq.1.symm h23eq.2.symm)

/-- The abstract six-pair missing-profile graph forced by a hypothetical
86-word K16 cover once every coordinate-symbol fiber has size at least five. -/
structure HexadecimaryFourTwoProfileGraph where
  E01 : Fin 16 → Fin 16 → Bool
  E02 : Fin 16 → Fin 16 → Bool
  E03 : Fin 16 → Fin 16 → Bool
  E12 : Fin 16 → Fin 16 → Bool
  E13 : Fin 16 → Fin 16 → Bool
  E23 : Fin 16 → Fin 16 → Bool
  d0 : Fin 16 → Nat
  d1 : Fin 16 → Nat
  d2 : Fin 16 → Nat
  d3 : Fin 16 → Nat
  d0_sum : (∑ a : Fin 16, d0 a) = 6
  d1_sum : (∑ a : Fin 16, d1 a) = 6
  d2_sum : (∑ a : Fin 16, d2 a) = 6
  d3_sum : (∑ a : Fin 16, d3 a) = 6
  row01 : ∀ a, 11 - d0 a ≤ (Finset.univ.filter (fun b => E01 a b = true)).card
  row02 : ∀ a, 11 - d0 a ≤ (Finset.univ.filter (fun c => E02 a c = true)).card
  row03 : ∀ a, 11 - d0 a ≤ (Finset.univ.filter (fun d => E03 a d = true)).card
  row12 : ∀ b, 11 - d1 b ≤ (Finset.univ.filter (fun c => E12 b c = true)).card
  row13 : ∀ b, 11 - d1 b ≤ (Finset.univ.filter (fun d => E13 b d = true)).card
  row23 : ∀ c, 11 - d2 c ≤ (Finset.univ.filter (fun d => E23 c d = true)).card
  col01 : ∀ b, 11 - d1 b ≤ (Finset.univ.filter (fun a => E01 a b = true)).card
  col02 : ∀ c, 11 - d2 c ≤ (Finset.univ.filter (fun a => E02 a c = true)).card
  col03 : ∀ d, 11 - d3 d ≤ (Finset.univ.filter (fun a => E03 a d = true)).card
  col12 : ∀ c, 11 - d2 c ≤ (Finset.univ.filter (fun b => E12 b c = true)).card
  col13 : ∀ d, 11 - d3 d ≤ (Finset.univ.filter (fun b => E13 b d = true)).card
  col23 : ∀ d, 11 - d3 d ≤ (Finset.univ.filter (fun c => E23 c d = true)).card
  no_clique :
    ¬ ∃ a b c d,
      E01 a b = true ∧ E02 a c = true ∧ E03 a d = true ∧
      E12 b c = true ∧ E13 b d = true ∧ E23 c d = true

def hexadecimaryFourRadiusTwo_profile_graph_of_card_eq_eighty_six
    (C : Finset (QaryWord 16 4))
    (hC : CoversFinset C 2)
    (hcard : C.card = 86)
    (hge5 : ∀ i a, 5 ≤ (coordFiber16 C i a).card) :
    HexadecimaryFourTwoProfileGraph := by
  refine
    { E01 := fun a b => decide (pairMissing16 C 0 1 a b)
      E02 := fun a c => decide (pairMissing16 C 0 2 a c)
      E03 := fun a d => decide (pairMissing16 C 0 3 a d)
      E12 := fun b c => decide (pairMissing16 C 1 2 b c)
      E13 := fun b d => decide (pairMissing16 C 1 3 b d)
      E23 := fun c d => decide (pairMissing16 C 2 3 c d)
      d0 := coordExcess16 C 0
      d1 := coordExcess16 C 1
      d2 := coordExcess16 C 2
      d3 := coordExcess16 C 3
      d0_sum := coordExcess16_sum_eq_six_of_card_eq_eighty_six C hge5 hcard 0
      d1_sum := coordExcess16_sum_eq_six_of_card_eq_eighty_six C hge5 hcard 1
      d2_sum := coordExcess16_sum_eq_six_of_card_eq_eighty_six C hge5 hcard 2
      d3_sum := coordExcess16_sum_eq_six_of_card_eq_eighty_six C hge5 hcard 3
      row01 := ?_
      row02 := ?_
      row03 := ?_
      row12 := ?_
      row13 := ?_
      row23 := ?_
      col01 := ?_
      col02 := ?_
      col03 := ?_
      col12 := ?_
      col13 := ?_
      col23 := ?_
      no_clique := ?_ }
  · intro a
    simpa using pairMissing16_row_card_ge_eleven_sub_coordExcess16 C hge5 0 1 a
  · intro a
    simpa using pairMissing16_row_card_ge_eleven_sub_coordExcess16 C hge5 0 2 a
  · intro a
    simpa using pairMissing16_row_card_ge_eleven_sub_coordExcess16 C hge5 0 3 a
  · intro b
    simpa using pairMissing16_row_card_ge_eleven_sub_coordExcess16 C hge5 1 2 b
  · intro b
    simpa using pairMissing16_row_card_ge_eleven_sub_coordExcess16 C hge5 1 3 b
  · intro c
    simpa using pairMissing16_row_card_ge_eleven_sub_coordExcess16 C hge5 2 3 c
  · intro b
    simpa using pairMissing16_col_card_ge_eleven_sub_coordExcess16 C hge5 0 1 b
  · intro c
    simpa using pairMissing16_col_card_ge_eleven_sub_coordExcess16 C hge5 0 2 c
  · intro d
    simpa using pairMissing16_col_card_ge_eleven_sub_coordExcess16 C hge5 0 3 d
  · intro c
    simpa using pairMissing16_col_card_ge_eleven_sub_coordExcess16 C hge5 1 2 c
  · intro d
    simpa using pairMissing16_col_card_ge_eleven_sub_coordExcess16 C hge5 1 3 d
  · intro d
    simpa using pairMissing16_col_card_ge_eleven_sub_coordExcess16 C hge5 2 3 d
  · intro h
    rcases h with ⟨a, b, c, d, h01, h02, h03, h12, h13, h23⟩
    exact no_pairMissing16_clique_of_covers C hC
      ⟨a, b, c, d,
        by simpa using h01,
        by simpa using h02,
        by simpa using h03,
        by simpa using h12,
        by simpa using h13,
        by simpa using h23⟩

end Database
end CoveringCodes
