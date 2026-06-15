import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.OctonaryFourTwoBlockLRAT
import CoveringCodes.Database.Sources.SparseSlicer
import CoveringCodes.Database.Sources.Trivial
import CoveringCodes.Relations.StructuralShortening
import Mathlib.Tactic

/-!
# Octonary length-four radius-two source

This file contains a direct explicit-code certificate for `K_8(4,2) <= 23`.
The code was found by local search and then translated so that `0000` is one of
the centers.  The Lean proof below checks the full radius-two coverage relation
over all `8^4 = 4096` words.
-/

namespace CoveringCodes
namespace Database

open scoped BigOperators

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

private abbrev f8_0 : Fin 8 := ⟨0, by decide⟩
private abbrev f8_1 : Fin 8 := ⟨1, by decide⟩
private abbrev f8_2 : Fin 8 := ⟨2, by decide⟩
private abbrev f8_3 : Fin 8 := ⟨3, by decide⟩
private abbrev f8_4 : Fin 8 := ⟨4, by decide⟩
private abbrev f8_5 : Fin 8 := ⟨5, by decide⟩
private abbrev f8_6 : Fin 8 := ⟨6, by decide⟩
private abbrev f8_7 : Fin 8 := ⟨7, by decide⟩

private def octonaryFourRadiusTwoCode : Finset (QaryWord 8 4) :=
  {![f8_0, f8_0, f8_0, f8_0],
    ![f8_4, f8_4, f8_6, f8_5],
    ![f8_4, f8_5, f8_7, f8_6],
    ![f8_7, f8_6, f8_0, f8_7],
    ![f8_7, f8_7, f8_1, f8_0],
    ![f8_7, f8_0, f8_2, f8_1],
    ![f8_1, f8_1, f8_3, f8_2],
    ![f8_1, f8_2, f8_3, f8_3],
    ![f8_6, f8_5, f8_6, f8_4],
    ![f8_6, f8_3, f8_7, f8_5],
    ![f8_6, f8_4, f8_5, f8_6],
    ![f8_5, f8_0, f8_1, f8_7],
    ![f8_5, f8_6, f8_2, f8_0],
    ![f8_5, f8_7, f8_0, f8_1],
    ![f8_2, f8_2, f8_3, f8_2],
    ![f8_2, f8_1, f8_4, f8_3],
    ![f8_1, f8_2, f8_4, f8_2],
    ![f8_4, f8_3, f8_5, f8_4],
    ![f8_3, f8_5, f8_5, f8_5],
    ![f8_3, f8_4, f8_7, f8_4],
    ![f8_3, f8_3, f8_6, f8_6],
    ![f8_0, f8_7, f8_2, f8_7],
    ![f8_0, f8_6, f8_1, f8_1]}

private theorem octonaryFourRadiusTwo_card :
    octonaryFourRadiusTwoCode.card ≤ 23 := by
  covering_decide

set_option maxRecDepth 1000000 in
private theorem octonaryFourRadiusTwo_covers :
    CoversFinset octonaryFourRadiusTwoCode 2 := by
  show ∀ x : QaryWord 8 4,
    ∃ c : QaryWord 8 4, c ∈ octonaryFourRadiusTwoCode ∧ hammingDist x c ≤ 2
  covering_decide

def octonaryFourRadiusTwoUpperName : String :=
  "lean_octonary_four_two_explicit_upper"

def octonaryFourRadiusTwoExplicit : ExplicitQaryUpper 8 4 2 23 :=
  { code := octonaryFourRadiusTwoCode
    card_le := octonaryFourRadiusTwo_card
    covers := octonaryFourRadiusTwo_covers }

def octonaryFourRadiusTwoUpper (q n r : Nat) : Nat :=
  if q = 8 ∧ n = 4 ∧ r = 2 then 23 else trivialUpper q n r

theorem octonaryFourRadiusTwoUpper_valid (q n r : Nat) :
    QaryKUpper q n r (octonaryFourRadiusTwoUpper q n r) := by
  by_cases h : q = 8 ∧ n = 4 ∧ r = 2
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [octonaryFourRadiusTwoUpper] using
      octonaryFourRadiusTwoExplicit.toUpper
  · simpa [octonaryFourRadiusTwoUpper, h] using trivialUpper_valid q n r

def octonaryFourRadiusTwoUpperSource : UpperBoundSource where
  value := octonaryFourRadiusTwoUpper
  trace := fun q n r =>
    .primitive octonaryFourRadiusTwoUpperName
      (octonaryFourRadiusTwoUpper_valid q n r)

/-! ## Structural constraints for the remaining lower-bound search -/

private theorem sparseBound_eight : sparseBound 8 = 25 := by
  covering_decide

private def alternateOctonarySymbol (a : Fin 8) : Fin 8 :=
  if a = f8_0 then f8_1 else f8_0

private theorem alternateOctonarySymbol_ne (a : Fin 8) :
    alternateOctonarySymbol a ≠ a := by
  by_cases h : a = f8_0
  · simp [alternateOctonarySymbol, h, f8_0, f8_1]
  · rw [alternateOctonarySymbol]
    simp only [if_neg h]
    exact fun h0 => h h0.symm

private def avoidOctonarySymbol (forbidden a : Fin 8) :
    {b : Fin 8 // b ≠ forbidden} :=
  if h : a = forbidden then
    ⟨alternateOctonarySymbol forbidden, alternateOctonarySymbol_ne forbidden⟩
  else
    ⟨a, h⟩

private theorem avoidOctonarySymbol_eq_of_ne {forbidden a : Fin 8}
    (h : a ≠ forbidden) :
    avoidOctonarySymbol forbidden a = ⟨a, h⟩ := by
  simp [avoidOctonarySymbol, h]

private theorem dist_avoidOctonarySymbol_le {forbidden : QaryWord 8 3}
    (x : (i : Fin 3) → {a : Fin 8 // a ≠ forbidden i})
    (y : QaryWord 8 3) :
    dist x (fun i => avoidOctonarySymbol (forbidden i) (y i)) ≤
      dist (fun i => (x i).val) y := by
  classical
  simp only [dist, hammingDist]
  let Ssmall : Finset (Fin 3) :=
    Finset.univ.filter
      (fun i : Fin 3 => x i ≠ avoidOctonarySymbol (forbidden i) (y i))
  let Sbig : Finset (Fin 3) :=
    Finset.univ.filter (fun i : Fin 3 => (x i).val ≠ y i)
  have hsub : Ssmall ⊆ Sbig := by
    intro i hi
    simp only [Ssmall, Sbig, Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
    intro hxy
    have hy_ne : y i ≠ forbidden i := by
      rw [← hxy]
      exact (x i).property
    have hcollapse :
        avoidOctonarySymbol (forbidden i) (y i) = ⟨y i, hy_ne⟩ :=
      avoidOctonarySymbol_eq_of_ne hy_ne
    apply hi
    rw [hcollapse]
    exact Subtype.ext hxy
  exact Finset.card_le_card hsub

private theorem dist_deleteCoord_le_dist_insertCoord (j : Fin 4) (a : Fin 8)
    (x : QaryWord 8 3) (c : QaryWord 8 4) :
    dist x (deleteCoord j c) ≤ dist (insertCoord j a x) c := by
  classical
  simp only [dist, hammingDist]
  let Sdel : Finset (Fin 3) :=
    Finset.univ.filter (fun i : Fin 3 => x i ≠ deleteCoord j c i)
  let Sfull : Finset (Fin 4) :=
    Finset.univ.filter (fun k : Fin 4 => insertCoord j a x k ≠ c k)
  have hinj : Function.Injective (fun i : Fin 3 => j.succAbove i) := by
    intro i k h
    exact Fin.succAbove_right_injective h
  have hsub : Sdel.image (fun i : Fin 3 => j.succAbove i) ⊆ Sfull := by
    intro k hk
    rcases Finset.mem_image.mp hk with ⟨i, hi, rfl⟩
    simp only [Sdel, Sfull, Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
    simpa [deleteCoord, insertCoord] using hi
  calc
    Sdel.card = (Sdel.image (fun i : Fin 3 => j.succAbove i)).card := by
      rw [Finset.card_image_of_injective _ hinj]
    _ ≤ Sfull.card := Finset.card_le_card hsub

private theorem dist_three_of_all_tail_different (forbidden : QaryWord 8 3)
    (x : (i : Fin 3) → {a : Fin 8 // a ≠ forbidden i}) :
    dist (fun i => (x i).val) forbidden = 3 := by
  classical
  simp only [dist, hammingDist]
  have hfilter :
      (Finset.univ.filter (fun i : Fin 3 => (x i).val ≠ forbidden i)) =
        (Finset.univ : Finset (Fin 3)) := by
    exact Finset.filter_true_of_mem (fun i _hi => (x i).property)
  rw [hfilter]
  simp

private theorem forbiddenOctonarySymbol_card (forbidden : Fin 8) :
    Fintype.card {a : Fin 8 // a ≠ forbidden} = 7 := by
  rw [Fintype.card_subtype]
  rw [Finset.filter_ne']
  rw [Finset.card_erase_of_mem]
  · simp
  · simp

private noncomputable def finSevenForbiddenOctonaryEquiv (forbidden : Fin 8) :
    Fin 7 ≃ {a : Fin 8 // a ≠ forbidden} :=
  (Fin.castOrderIso (forbiddenOctonarySymbol_card forbidden).symm).toEquiv.trans
    (Fintype.equivFin {a : Fin 8 // a ≠ forbidden}).symm

private theorem dist_forbiddenSubbox_toFinSeven (forbidden : QaryWord 8 3)
    (x y : (i : Fin 3) → {a : Fin 8 // a ≠ forbidden i}) :
    dist (fun i => (finSevenForbiddenOctonaryEquiv (forbidden i)).symm (x i))
        (fun i => (finSevenForbiddenOctonaryEquiv (forbidden i)).symm (y i)) =
      dist x y := by
  classical
  simp only [dist, hammingDist]
  congr 1
  ext i
  simp only [Finset.mem_filter, Finset.mem_univ, true_and]
  exact (finSevenForbiddenOctonaryEquiv (forbidden i)).symm.injective.ne_iff

/-- A standard `7`-ary length-three lower bound transfers to any coordinatewise
octonary subbox obtained by forbidding one symbol in each coordinate. -/
theorem forbiddenOctonarySubboxLower_of_qarySevenLower
    (hseven : QaryKLower 7 3 1 22)
    (forbidden : QaryWord 8 3) :
    KLower (ι := Fin 3)
      (β := fun i : Fin 3 => {a : Fin 8 // a ≠ forbidden i}) 1 22 := by
  classical
  intro C hC
  let toFinSeven :
      ((i : Fin 3) → {a : Fin 8 // a ≠ forbidden i}) → QaryWord 7 3 :=
    fun w i => (finSevenForbiddenOctonaryEquiv (forbidden i)).symm (w i)
  let fromFinSeven :
      QaryWord 7 3 → ((i : Fin 3) → {a : Fin 8 // a ≠ forbidden i}) :=
    fun w i => finSevenForbiddenOctonaryEquiv (forbidden i) (w i)
  have hcov7 : CoversFinset (C.image toFinSeven) 1 := by
    intro x
    obtain ⟨c, hc, hd⟩ := hC (fromFinSeven x)
    refine ⟨toFinSeven c, Finset.mem_image.mpr ⟨c, hc, rfl⟩, ?_⟩
    have hdist :
        dist x (toFinSeven c) = dist (fromFinSeven x) c := by
      calc
        dist x (toFinSeven c)
            = dist
                (fun i => (finSevenForbiddenOctonaryEquiv (forbidden i)).symm
                  (fromFinSeven x i))
                (fun i => (finSevenForbiddenOctonaryEquiv (forbidden i)).symm
                  (c i)) := by
                  simp [toFinSeven, fromFinSeven]
        _ = dist (fromFinSeven x) c :=
            dist_forbiddenSubbox_toFinSeven forbidden (fromFinSeven x) c
    rw [hdist]
    exact hd
  exact (hseven _ hcov7).trans Finset.card_image_le

/-- A radius-two octonary length-four code with at most 22 words cannot omit a
symbol in any coordinate.  Otherwise missing-symbol shortening would project it
to an `8`-ary length-three radius-one cover with at most 22 words, contradicting
the certified sparse-slice bound `K_8(3,1) >= 25`. -/
theorem octonaryFourRadiusTwo_no_empty_symbol_of_card_le_twenty_two
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card ≤ 22)
    (j : Fin 4)
    (a : Fin 8) :
    ∃ c, c ∈ C ∧ c j = a := by
  by_contra hnone
  have hmiss : ∀ c, c ∈ C → c j ≠ a := by
    intro c hc hca
    exact hnone ⟨c, hc, hca⟩
  have hupper : QaryKUpper 8 3 1 C.card := by
    simpa using
      upper_shortening_missing_symbol (q := 8) (n := 3) (r := 2)
        (by decide) C hC j a hmiss
  obtain ⟨D, hDcard, hDcovers⟩ := hupper
  have hlower : QaryKLower 8 3 1 (sparseBound 8) :=
    sparseBound_valid 8 (by decide)
  have hsparse_le : sparseBound 8 ≤ C.card :=
    (hlower D hDcovers).trans hDcard
  rw [sparseBound_eight] at hsparse_le
  omega

/-- Conditional singleton-fiber exclusion.

The remaining mathematical input is a lower bound for every coordinatewise
`7^3` subbox obtained by forbidding one octonary symbol in each coordinate.
Rodemich's `K_7(3,1) >= 25` will imply this hypothesis by alphabet equivalence.
Under that input, a radius-two octonary length-four cover of size at most 22
cannot use a coordinate-symbol pair exactly once. -/
theorem octonaryFourRadiusTwo_no_singleton_symbol_of_subbox_lower
    (hsubbox :
      ∀ forbidden : QaryWord 8 3,
        KLower (ι := Fin 3)
          (β := fun i : Fin 3 => {a : Fin 8 // a ≠ forbidden i}) 1 22)
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card ≤ 22)
    (j : Fin 4)
    (a : Fin 8)
    (c0 : QaryWord 8 4)
    (hc0 : c0 ∈ C)
    (_hc0j : c0 j = a)
    (hunique : ∀ c, c ∈ C → c j = a → c = c0) :
    False := by
  classical
  let forbidden : QaryWord 8 3 := deleteCoord j c0
  let D : Finset ((i : Fin 3) → {a : Fin 8 // a ≠ forbidden i}) :=
    (C.erase c0).image
      (fun c i => avoidOctonarySymbol (forbidden i) (deleteCoord j c i))
  have hDcovers : CoversFinset D 1 := by
    intro x
    let x8 : QaryWord 8 3 := fun i => (x i).val
    obtain ⟨c, hc, hdist⟩ := hC (insertCoord j a x8)
    have hc_ne_c0 : c ≠ c0 := by
      intro hceq
      have htail0 : dist x8 (deleteCoord j c0) = 3 := by
        simpa [forbidden, x8] using dist_three_of_all_tail_different forbidden x
      have hproj := dist_deleteCoord_le_dist_insertCoord j a x8 c
      have hproj0 : dist x8 (deleteCoord j c0) ≤
          dist (insertCoord j a x8) c0 := by
        simpa [hceq] using hproj
      have hfull_ge : 3 ≤ dist (insertCoord j a x8) c0 := by
        calc
          3 = dist x8 (deleteCoord j c0) := htail0.symm
          _ ≤ dist (insertCoord j a x8) c0 := hproj0
      have hdist0 : dist (insertCoord j a x8) c0 ≤ 2 := by
        simpa [hceq] using hdist
      omega
    have hcj_ne : c j ≠ a := by
      intro hcj
      exact hc_ne_c0 (hunique c hc hcj)
    have hdrop := dist_deleteCoord_insertCoord_add_one_le j a x8 c hcj_ne
    have htail_le : dist x8 (deleteCoord j c) ≤ 1 := by
      have hle : dist x8 (deleteCoord j c) + 1 ≤ 2 := hdrop.trans hdist
      omega
    refine ⟨(fun i => avoidOctonarySymbol (forbidden i) (deleteCoord j c i)), ?_, ?_⟩
    · exact Finset.mem_image.mpr ⟨c, Finset.mem_erase.mpr ⟨hc_ne_c0, hc⟩, rfl⟩
    · exact (dist_avoidOctonarySymbol_le x (deleteCoord j c)).trans htail_le
  have hDcard_le : D.card ≤ 21 := by
    have himage : D.card ≤ (C.erase c0).card := Finset.card_image_le
    have herase : (C.erase c0).card = C.card - 1 := Finset.card_erase_of_mem hc0
    omega
  have hlower := hsubbox forbidden D hDcovers
  omega

/-- A more convenient singleton-fiber exclusion interface.  It packages the
coordinatewise alphabet-equivalence step, so the only remaining input is a
standard `7`-ary length-three radius-one lower bound. -/
theorem octonaryFourRadiusTwo_no_singleton_symbol_of_qarySevenLower
    (hseven : QaryKLower 7 3 1 22)
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card ≤ 22)
    (j : Fin 4)
    (a : Fin 8)
    (c0 : QaryWord 8 4)
    (hc0 : c0 ∈ C)
    (hc0j : c0 j = a)
    (hunique : ∀ c, c ∈ C → c j = a → c = c0) :
    False :=
  octonaryFourRadiusTwo_no_singleton_symbol_of_subbox_lower
    (fun forbidden => forbiddenOctonarySubboxLower_of_qarySevenLower hseven forbidden)
    C hC hcard j a c0 hc0 hc0j hunique

/-- Certified singleton-fiber exclusion for the remaining `K_8(4,2)` lower-bound
search.  The needed `7`-ary length-three radius-one lower bound is proved in
`SparseSlicer.lean`. -/
theorem octonaryFourRadiusTwo_no_singleton_symbol_of_card_le_twenty_two
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card ≤ 22)
    (j : Fin 4)
    (a : Fin 8)
    (c0 : QaryWord 8 4)
    (hc0 : c0 ∈ C)
    (hc0j : c0 j = a)
    (hunique : ∀ c, c ∈ C → c j = a → c = c0) :
    False :=
  octonaryFourRadiusTwo_no_singleton_symbol_of_qarySevenLower
    qarySevenThreeOneLowerTwentyTwo C hC hcard j a c0 hc0 hc0j hunique

/-- Any radius-two octonary length-four cover with at most `22` words must use
each coordinate-symbol pair at least twice. -/
theorem octonaryFourRadiusTwo_symbol_fiber_card_ge_two_of_card_le_twenty_two
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card ≤ 22)
    (j : Fin 4)
    (a : Fin 8) :
    2 ≤ (C.filter (fun c => c j = a)).card := by
  classical
  by_contra hnot
  have hle_one : (C.filter (fun c => c j = a)).card ≤ 1 := by omega
  obtain ⟨c0, hc0, hc0j⟩ :=
    octonaryFourRadiusTwo_no_empty_symbol_of_card_le_twenty_two
      C hC hcard j a
  have hunique : ∀ c, c ∈ C → c j = a → c = c0 := by
    intro c hc hcj
    let F : Finset (QaryWord 8 4) := C.filter (fun c => c j = a)
    have hcF : c ∈ F := by
      simp [F, hc, hcj]
    have hc0F : c0 ∈ F := by
      simp [F, hc0, hc0j]
    exact (Finset.card_le_one.mp hle_one) c hcF c0 hc0F
  exact octonaryFourRadiusTwo_no_singleton_symbol_of_card_le_twenty_two
    C hC hcard j a c0 hc0 hc0j hunique

private theorem inter_card_ge_four_of_card_ge_six_fin8 (A B : Finset (Fin 8))
    (hA : 6 ≤ A.card) (hB : 6 ≤ B.card) :
    4 ≤ (A ∩ B).card := by
  have hU : (A ∪ B).card ≤ 8 := by
    calc
      (A ∪ B).card ≤ (Finset.univ : Finset (Fin 8)).card := by
        exact Finset.card_le_card (by intro x _hx; simp)
      _ = 8 := by simp
  have hIE := Finset.card_union_add_card_inter A B
  omega

private theorem inter_card_ge_two_of_card_ge_six_four_fin8 (A B : Finset (Fin 8))
    (hA : 6 ≤ A.card) (hB : 4 ≤ B.card) :
    2 ≤ (A ∩ B).card := by
  have hU : (A ∪ B).card ≤ 8 := by
    calc
      (A ∪ B).card ≤ (Finset.univ : Finset (Fin 8)).card := by
        exact Finset.card_le_card (by intro x _hx; simp)
      _ = 8 := by simp
  have hIE := Finset.card_union_add_card_inter A B
  omega

private theorem inter_card_ge_one_of_card_ge_five_four_fin8 (A B : Finset (Fin 8))
    (hA : 5 ≤ A.card) (hB : 4 ≤ B.card) :
    1 ≤ (A ∩ B).card := by
  have hU : (A ∪ B).card ≤ 8 := by
    calc
      (A ∪ B).card ≤ (Finset.univ : Finset (Fin 8)).card := by
        exact Finset.card_le_card (by intro x _hx; simp)
      _ = 8 := by simp
  have hIE := Finset.card_union_add_card_inter A B
  omega

private theorem exists_mem_deficit_zero_of_card_gt_sum_fin8
    (S : Finset (Fin 8))
    (d : Fin 8 → Nat)
    (htotal : (∑ a : Fin 8, d a) < S.card) :
    ∃ a, a ∈ S ∧ d a = 0 := by
  classical
  by_contra hnone
  push Not at hnone
  have hcard_le_sumS : S.card ≤ ∑ a ∈ S, d a := by
    calc
      S.card = ∑ a ∈ S, (1 : Nat) := by simp
      _ ≤ ∑ a ∈ S, d a := by
        exact Finset.sum_le_sum (fun a ha => by
          have hne : d a ≠ 0 := hnone a ha
          omega)
  have hsumS_le_total : (∑ a ∈ S, d a) ≤ ∑ a : Fin 8, d a := by
    exact Finset.sum_le_sum_of_subset_of_nonneg
      (by intro a _ha; simp)
      (by intro _x _hxuniv _hxnot; exact Nat.zero_le _)
  omega

private theorem exists_mem_deficit_le_one_of_card_ge_four_sum_le_five_fin8
    (S : Finset (Fin 8))
    (d : Fin 8 → Nat)
    (hS : 4 ≤ S.card)
    (htotal : (∑ a : Fin 8, d a) ≤ 5) :
    ∃ a, a ∈ S ∧ d a ≤ 1 := by
  classical
  by_contra hnone
  push Not at hnone
  have htwo_card_le_sumS : 2 * S.card ≤ ∑ a ∈ S, d a := by
    calc
      2 * S.card = ∑ a ∈ S, (2 : Nat) := by simp [mul_comm]
      _ ≤ ∑ a ∈ S, d a := by
        exact Finset.sum_le_sum (fun a ha => by
          have hgt : 1 < d a := hnone a ha
          omega)
  have hsumS_le_total : (∑ a ∈ S, d a) ≤ ∑ a : Fin 8, d a := by
    exact Finset.sum_le_sum_of_subset_of_nonneg
      (by intro a _ha; simp)
      (by intro _x _hxuniv _hxnot; exact Nat.zero_le _)
  omega

private theorem exists_mem_deficit_zero_of_card_gt_positive_support_fin8
    (S : Finset (Fin 8))
    (d : Fin 8 → Nat)
    (hsupport : (Finset.univ.filter (fun a : Fin 8 => 0 < d a)).card < S.card) :
    ∃ a, a ∈ S ∧ d a = 0 := by
  classical
  obtain ⟨a, haS, haSupport⟩ :=
    Finset.exists_mem_notMem_of_card_lt_card hsupport
  refine ⟨a, haS, ?_⟩
  have hnot : ¬ 0 < d a := by
    simpa using haSupport
  omega

private theorem exists_mem_deficit_le_one_of_card_ge_four_sum_le_six_fin8
    (S : Finset (Fin 8))
    (d : Fin 8 → Nat)
    (hS : 4 ≤ S.card)
    (htotal : (∑ a : Fin 8, d a) ≤ 6) :
    ∃ a, a ∈ S ∧ d a ≤ 1 := by
  classical
  by_contra hnone
  push Not at hnone
  have htwo_card_le_sumS : 2 * S.card ≤ ∑ a ∈ S, d a := by
    calc
      2 * S.card = ∑ a ∈ S, (2 : Nat) := by simp [mul_comm]
      _ ≤ ∑ a ∈ S, d a := by
        exact Finset.sum_le_sum (fun a ha => by
          have hgt : 1 < d a := hnone a ha
          omega)
  have hsumS_le_total : (∑ a ∈ S, d a) ≤ ∑ a : Fin 8, d a := by
    exact Finset.sum_le_sum_of_subset_of_nonneg
      (by intro a _ha; simp)
      (by intro _x _hxuniv _hxnot; exact Nat.zero_le _)
  omega

private theorem positive_support_card_le_sum_fin8
    (d : Fin 8 → Nat) :
    (Finset.univ.filter (fun a : Fin 8 => 0 < d a)).card ≤
      ∑ a : Fin 8, d a := by
  classical
  let S : Finset (Fin 8) := Finset.univ.filter (fun a : Fin 8 => 0 < d a)
  have hcard_le_sumS : S.card ≤ ∑ a ∈ S, d a := by
    calc
      S.card = ∑ a ∈ S, (1 : Nat) := by simp
      _ ≤ ∑ a ∈ S, d a := by
        exact Finset.sum_le_sum (fun a ha => by
          have hpos : 0 < d a := by simpa [S] using ha
          omega)
  have hsumS_le_total : (∑ a ∈ S, d a) ≤ ∑ a : Fin 8, d a := by
    exact Finset.sum_le_sum_of_subset_of_nonneg
      (by intro a _ha; simp)
      (by intro _x _hxuniv _hxnot; exact Nat.zero_le _)
  exact hcard_le_sumS.trans hsumS_le_total

private theorem exists_four_partite_clique_of_min_degree_six
    (E01 E02 E03 E12 E13 E23 : Fin 8 → Fin 8 → Prop)
    [DecidableRel E01] [DecidableRel E02] [DecidableRel E03]
    [DecidableRel E12] [DecidableRel E13] [DecidableRel E23]
    (h01 : ∀ a, 6 ≤ (Finset.univ.filter (fun b => E01 a b)).card)
    (h02 : ∀ a, 6 ≤ (Finset.univ.filter (fun c => E02 a c)).card)
    (h03 : ∀ a, 6 ≤ (Finset.univ.filter (fun d => E03 a d)).card)
    (h12 : ∀ b, 6 ≤ (Finset.univ.filter (fun c => E12 b c)).card)
    (h13 : ∀ b, 6 ≤ (Finset.univ.filter (fun d => E13 b d)).card)
    (h23 : ∀ c, 6 ≤ (Finset.univ.filter (fun d => E23 c d)).card) :
    ∃ a b c d,
      E01 a b ∧ E02 a c ∧ E03 a d ∧ E12 b c ∧ E13 b d ∧ E23 c d := by
  classical
  let a : Fin 8 := f8_0
  let B : Finset (Fin 8) := Finset.univ.filter (fun b => E01 a b)
  have hBcard : 6 ≤ B.card := by simpa [B] using h01 a
  obtain ⟨b, hbB⟩ : B.Nonempty := Finset.card_pos.mp (by omega)
  have hb01 : E01 a b := by simpa [B] using hbB
  let C02 : Finset (Fin 8) := Finset.univ.filter (fun c => E02 a c)
  let C12 : Finset (Fin 8) := Finset.univ.filter (fun c => E12 b c)
  let Cgood : Finset (Fin 8) := C02 ∩ C12
  have hC02 : 6 ≤ C02.card := by simpa [C02] using h02 a
  have hC12 : 6 ≤ C12.card := by simpa [C12] using h12 b
  have hCgood : 4 ≤ Cgood.card := by
    simpa [Cgood] using inter_card_ge_four_of_card_ge_six_fin8 C02 C12 hC02 hC12
  obtain ⟨c, hcCgood⟩ : Cgood.Nonempty := Finset.card_pos.mp (by omega)
  have hcC := Finset.mem_inter.mp (by simpa [Cgood] using hcCgood)
  have hc02 : E02 a c := by simpa [C02] using hcC.1
  have hc12 : E12 b c := by simpa [C12] using hcC.2
  let D03 : Finset (Fin 8) := Finset.univ.filter (fun d => E03 a d)
  let D13 : Finset (Fin 8) := Finset.univ.filter (fun d => E13 b d)
  let Dgood : Finset (Fin 8) := D03 ∩ D13
  have hD03 : 6 ≤ D03.card := by simpa [D03] using h03 a
  have hD13 : 6 ≤ D13.card := by simpa [D13] using h13 b
  have hDgood : 4 ≤ Dgood.card := by
    simpa [Dgood] using inter_card_ge_four_of_card_ge_six_fin8 D03 D13 hD03 hD13
  let N23 : Finset (Fin 8) := Finset.univ.filter (fun d => E23 c d)
  have hN23 : 6 ≤ N23.card := by simpa [N23] using h23 c
  have hND : 2 ≤ (N23 ∩ Dgood).card :=
    inter_card_ge_two_of_card_ge_six_four_fin8 N23 Dgood hN23 hDgood
  obtain ⟨d, hdND⟩ : (N23 ∩ Dgood).Nonempty := Finset.card_pos.mp (by omega)
  have hdN := Finset.mem_inter.mp hdND
  have hdD := Finset.mem_inter.mp (by simpa [Dgood] using hdN.2)
  have hd23 : E23 c d := by simpa [N23] using hdN.1
  have hd03 : E03 a d := by simpa [D03] using hdD.1
  have hd13 : E13 b d := by simpa [D13] using hdD.2
  exact ⟨a, b, c, d, hb01, hc02, hd03, hc12, hd13, hd23⟩

private theorem exists_four_partite_clique_of_one_weak_row
    (E01 E02 E03 E12 E13 E23 : Fin 8 → Fin 8 → Prop)
    [DecidableRel E01] [DecidableRel E02] [DecidableRel E03]
    [DecidableRel E12] [DecidableRel E13] [DecidableRel E23]
    (s0 s1 s2 : Fin 8)
    (h01 : ∀ a, (if a = s0 then 5 else 6) ≤
      (Finset.univ.filter (fun b => E01 a b)).card)
    (h02 : ∀ a, (if a = s0 then 5 else 6) ≤
      (Finset.univ.filter (fun c => E02 a c)).card)
    (h03 : ∀ a, (if a = s0 then 5 else 6) ≤
      (Finset.univ.filter (fun d => E03 a d)).card)
    (h12 : ∀ b, (if b = s1 then 5 else 6) ≤
      (Finset.univ.filter (fun c => E12 b c)).card)
    (h13 : ∀ b, (if b = s1 then 5 else 6) ≤
      (Finset.univ.filter (fun d => E13 b d)).card)
    (h23 : ∀ c, (if c = s2 then 5 else 6) ≤
      (Finset.univ.filter (fun d => E23 c d)).card) :
    ∃ a b c d,
      E01 a b ∧ E02 a c ∧ E03 a d ∧ E12 b c ∧ E13 b d ∧ E23 c d := by
  classical
  let a : Fin 8 := alternateOctonarySymbol s0
  have ha_ne : a ≠ s0 := alternateOctonarySymbol_ne s0
  let N01 : Finset (Fin 8) := Finset.univ.filter (fun b => E01 a b)
  have hN01 : 6 ≤ N01.card := by
    have h := h01 a
    simpa [N01, ha_ne] using h
  have hsingleB : ({s1} : Finset (Fin 8)).card < N01.card := by
    simp
    omega
  obtain ⟨b, hbN01, hbNotSingle⟩ :=
    Finset.exists_mem_notMem_of_card_lt_card hsingleB
  have hb_ne : b ≠ s1 := by
    simpa using hbNotSingle
  have hb01 : E01 a b := by simpa [N01] using hbN01
  let C02 : Finset (Fin 8) := Finset.univ.filter (fun c => E02 a c)
  let C12 : Finset (Fin 8) := Finset.univ.filter (fun c => E12 b c)
  let Cgood : Finset (Fin 8) := C02 ∩ C12
  have hC02 : 6 ≤ C02.card := by
    have h := h02 a
    simpa [C02, ha_ne] using h
  have hC12 : 6 ≤ C12.card := by
    have h := h12 b
    simpa [C12, hb_ne] using h
  have hCgood : 4 ≤ Cgood.card := by
    simpa [Cgood] using inter_card_ge_four_of_card_ge_six_fin8 C02 C12 hC02 hC12
  have hsingleC : ({s2} : Finset (Fin 8)).card < Cgood.card := by
    simp
    omega
  obtain ⟨c, hcCgood, hcNotSingle⟩ :=
    Finset.exists_mem_notMem_of_card_lt_card hsingleC
  have hc_ne : c ≠ s2 := by
    simpa using hcNotSingle
  have hcC := Finset.mem_inter.mp (by simpa [Cgood] using hcCgood)
  have hc02 : E02 a c := by simpa [C02] using hcC.1
  have hc12 : E12 b c := by simpa [C12] using hcC.2
  let D03 : Finset (Fin 8) := Finset.univ.filter (fun d => E03 a d)
  let D13 : Finset (Fin 8) := Finset.univ.filter (fun d => E13 b d)
  let Dgood : Finset (Fin 8) := D03 ∩ D13
  have hD03 : 6 ≤ D03.card := by
    have h := h03 a
    simpa [D03, ha_ne] using h
  have hD13 : 6 ≤ D13.card := by
    have h := h13 b
    simpa [D13, hb_ne] using h
  have hDgood : 4 ≤ Dgood.card := by
    simpa [Dgood] using inter_card_ge_four_of_card_ge_six_fin8 D03 D13 hD03 hD13
  let N23 : Finset (Fin 8) := Finset.univ.filter (fun d => E23 c d)
  have hN23 : 6 ≤ N23.card := by
    have h := h23 c
    simpa [N23, hc_ne] using h
  have hND : 2 ≤ (N23 ∩ Dgood).card :=
    inter_card_ge_two_of_card_ge_six_four_fin8 N23 Dgood hN23 hDgood
  obtain ⟨d, hdND⟩ : (N23 ∩ Dgood).Nonempty := Finset.card_pos.mp (by omega)
  have hdN := Finset.mem_inter.mp hdND
  have hdD := Finset.mem_inter.mp (by simpa [Dgood] using hdN.2)
  have hd23 : E23 c d := by simpa [N23] using hdN.1
  have hd03 : E03 a d := by simpa [D03] using hdD.1
  have hd13 : E13 b d := by simpa [D13] using hdD.2
  exact ⟨a, b, c, d, hb01, hc02, hd03, hc12, hd13, hd23⟩

private theorem exists_four_partite_clique_of_deficit_budget_five
    (E01 E02 E03 E12 E13 E23 : Fin 8 → Fin 8 → Prop)
    [DecidableRel E01] [DecidableRel E02] [DecidableRel E03]
    [DecidableRel E12] [DecidableRel E13] [DecidableRel E23]
    (d0 d1 d2 : Fin 8 → Nat)
    (hd0sum : (∑ a : Fin 8, d0 a) ≤ 5)
    (hd1sum : (∑ b : Fin 8, d1 b) ≤ 5)
    (hd2sum : (∑ c : Fin 8, d2 c) ≤ 5)
    (h01 : ∀ a, 6 - d0 a ≤
      (Finset.univ.filter (fun b => E01 a b)).card)
    (h02 : ∀ a, 6 - d0 a ≤
      (Finset.univ.filter (fun c => E02 a c)).card)
    (h03 : ∀ a, 6 - d0 a ≤
      (Finset.univ.filter (fun d => E03 a d)).card)
    (h12 : ∀ b, 6 - d1 b ≤
      (Finset.univ.filter (fun c => E12 b c)).card)
    (h13 : ∀ b, 6 - d1 b ≤
      (Finset.univ.filter (fun d => E13 b d)).card)
    (h23 : ∀ c, 6 - d2 c ≤
      (Finset.univ.filter (fun d => E23 c d)).card) :
    ∃ a b c d,
      E01 a b ∧ E02 a c ∧ E03 a d ∧ E12 b c ∧ E13 b d ∧ E23 c d := by
  classical
  obtain ⟨a, _ha_univ, ha_zero⟩ :
      ∃ a, a ∈ (Finset.univ : Finset (Fin 8)) ∧ d0 a = 0 := by
    apply exists_mem_deficit_zero_of_card_gt_sum_fin8
    simp
    omega
  let N01 : Finset (Fin 8) := Finset.univ.filter (fun b => E01 a b)
  have hN01 : 6 ≤ N01.card := by simpa [N01, ha_zero] using h01 a
  obtain ⟨b, hbN01, hb_zero⟩ :
      ∃ b, b ∈ N01 ∧ d1 b = 0 := by
    apply exists_mem_deficit_zero_of_card_gt_sum_fin8
    omega
  have hb01 : E01 a b := by simpa [N01] using hbN01
  let C02 : Finset (Fin 8) := Finset.univ.filter (fun c => E02 a c)
  let C12 : Finset (Fin 8) := Finset.univ.filter (fun c => E12 b c)
  let Cgood : Finset (Fin 8) := C02 ∩ C12
  have hC02 : 6 ≤ C02.card := by simpa [C02, ha_zero] using h02 a
  have hC12 : 6 ≤ C12.card := by simpa [C12, hb_zero] using h12 b
  have hCgood : 4 ≤ Cgood.card := by
    simpa [Cgood] using inter_card_ge_four_of_card_ge_six_fin8 C02 C12 hC02 hC12
  obtain ⟨c, hcCgood, hc_deficit⟩ :=
    exists_mem_deficit_le_one_of_card_ge_four_sum_le_five_fin8 Cgood d2 hCgood hd2sum
  have hcC := Finset.mem_inter.mp (by simpa [Cgood] using hcCgood)
  have hc02 : E02 a c := by simpa [C02] using hcC.1
  have hc12 : E12 b c := by simpa [C12] using hcC.2
  let D03 : Finset (Fin 8) := Finset.univ.filter (fun d => E03 a d)
  let D13 : Finset (Fin 8) := Finset.univ.filter (fun d => E13 b d)
  let Dgood : Finset (Fin 8) := D03 ∩ D13
  have hD03 : 6 ≤ D03.card := by simpa [D03, ha_zero] using h03 a
  have hD13 : 6 ≤ D13.card := by simpa [D13, hb_zero] using h13 b
  have hDgood : 4 ≤ Dgood.card := by
    simpa [Dgood] using inter_card_ge_four_of_card_ge_six_fin8 D03 D13 hD03 hD13
  let N23 : Finset (Fin 8) := Finset.univ.filter (fun d => E23 c d)
  have hN23 : 5 ≤ N23.card := by
    have h : 6 - d2 c ≤ N23.card := by simpa [N23] using h23 c
    omega
  have hND : 1 ≤ (N23 ∩ Dgood).card :=
    inter_card_ge_one_of_card_ge_five_four_fin8 N23 Dgood hN23 hDgood
  obtain ⟨d, hdND⟩ : (N23 ∩ Dgood).Nonempty := Finset.card_pos.mp (by omega)
  have hdN := Finset.mem_inter.mp hdND
  have hdD := Finset.mem_inter.mp (by simpa [Dgood] using hdN.2)
  have hd23 : E23 c d := by simpa [N23] using hdN.1
  have hd03 : E03 a d := by simpa [D03] using hdD.1
  have hd13 : E13 b d := by simpa [D13] using hdD.2
  exact ⟨a, b, c, d, hb01, hc02, hd03, hc12, hd13, hd23⟩

private theorem exists_four_partite_clique_of_middle_support_le_five_budget_six
    (E01 E02 E03 E12 E13 E23 : Fin 8 → Fin 8 → Prop)
    [DecidableRel E01] [DecidableRel E02] [DecidableRel E03]
    [DecidableRel E12] [DecidableRel E13] [DecidableRel E23]
    (d0 d1 d2 : Fin 8 → Nat)
    (hd0sum : (∑ a : Fin 8, d0 a) ≤ 6)
    (hd1support : (Finset.univ.filter (fun b : Fin 8 => 0 < d1 b)).card ≤ 5)
    (hd2sum : (∑ c : Fin 8, d2 c) ≤ 6)
    (h01 : ∀ a, 6 - d0 a ≤
      (Finset.univ.filter (fun b => E01 a b)).card)
    (h02 : ∀ a, 6 - d0 a ≤
      (Finset.univ.filter (fun c => E02 a c)).card)
    (h03 : ∀ a, 6 - d0 a ≤
      (Finset.univ.filter (fun d => E03 a d)).card)
    (h12 : ∀ b, 6 - d1 b ≤
      (Finset.univ.filter (fun c => E12 b c)).card)
    (h13 : ∀ b, 6 - d1 b ≤
      (Finset.univ.filter (fun d => E13 b d)).card)
    (h23 : ∀ c, 6 - d2 c ≤
      (Finset.univ.filter (fun d => E23 c d)).card) :
    ∃ a b c d,
      E01 a b ∧ E02 a c ∧ E03 a d ∧ E12 b c ∧ E13 b d ∧ E23 c d := by
  classical
  obtain ⟨a, _ha_univ, ha_zero⟩ :
      ∃ a, a ∈ (Finset.univ : Finset (Fin 8)) ∧ d0 a = 0 := by
    apply exists_mem_deficit_zero_of_card_gt_sum_fin8
    simp
    omega
  let N01 : Finset (Fin 8) := Finset.univ.filter (fun b => E01 a b)
  have hN01 : 6 ≤ N01.card := by simpa [N01, ha_zero] using h01 a
  obtain ⟨b, hbN01, hb_zero⟩ :
      ∃ b, b ∈ N01 ∧ d1 b = 0 := by
    apply exists_mem_deficit_zero_of_card_gt_positive_support_fin8
    omega
  have hb01 : E01 a b := by simpa [N01] using hbN01
  let C02 : Finset (Fin 8) := Finset.univ.filter (fun c => E02 a c)
  let C12 : Finset (Fin 8) := Finset.univ.filter (fun c => E12 b c)
  let Cgood : Finset (Fin 8) := C02 ∩ C12
  have hC02 : 6 ≤ C02.card := by simpa [C02, ha_zero] using h02 a
  have hC12 : 6 ≤ C12.card := by simpa [C12, hb_zero] using h12 b
  have hCgood : 4 ≤ Cgood.card := by
    simpa [Cgood] using inter_card_ge_four_of_card_ge_six_fin8 C02 C12 hC02 hC12
  obtain ⟨c, hcCgood, hc_deficit⟩ :=
    exists_mem_deficit_le_one_of_card_ge_four_sum_le_six_fin8 Cgood d2 hCgood hd2sum
  have hcC := Finset.mem_inter.mp (by simpa [Cgood] using hcCgood)
  have hc02 : E02 a c := by simpa [C02] using hcC.1
  have hc12 : E12 b c := by simpa [C12] using hcC.2
  let D03 : Finset (Fin 8) := Finset.univ.filter (fun d => E03 a d)
  let D13 : Finset (Fin 8) := Finset.univ.filter (fun d => E13 b d)
  let Dgood : Finset (Fin 8) := D03 ∩ D13
  have hD03 : 6 ≤ D03.card := by simpa [D03, ha_zero] using h03 a
  have hD13 : 6 ≤ D13.card := by simpa [D13, hb_zero] using h13 b
  have hDgood : 4 ≤ Dgood.card := by
    simpa [Dgood] using inter_card_ge_four_of_card_ge_six_fin8 D03 D13 hD03 hD13
  let N23 : Finset (Fin 8) := Finset.univ.filter (fun d => E23 c d)
  have hN23 : 5 ≤ N23.card := by
    have h : 6 - d2 c ≤ N23.card := by simpa [N23] using h23 c
    omega
  have hND : 1 ≤ (N23 ∩ Dgood).card :=
    inter_card_ge_one_of_card_ge_five_four_fin8 N23 Dgood hN23 hDgood
  obtain ⟨d, hdND⟩ : (N23 ∩ Dgood).Nonempty := Finset.card_pos.mp (by omega)
  have hdN := Finset.mem_inter.mp hdND
  have hdD := Finset.mem_inter.mp (by simpa [Dgood] using hdN.2)
  have hd23 : E23 c d := by simpa [N23] using hdN.1
  have hd03 : E03 a d := by simpa [D03] using hdD.1
  have hd13 : E13 b d := by simpa [D13] using hdD.2
  exact ⟨a, b, c, d, hb01, hc02, hd03, hc12, hd13, hd23⟩

private theorem exists_four_partite_clique_avoiding_weak_rows
    (E01 E02 E03 E12 E13 E23 : Fin 8 → Fin 8 → Prop)
    [DecidableRel E01] [DecidableRel E02] [DecidableRel E03]
    [DecidableRel E12] [DecidableRel E13] [DecidableRel E23]
    (W0 W1 W2 : Finset (Fin 8))
    (hW0 : W0.card ≤ 3) (hW1 : W1.card ≤ 3) (hW2 : W2.card ≤ 3)
    (h01 : ∀ a, a ∉ W0 → 6 ≤ (Finset.univ.filter (fun b => E01 a b)).card)
    (h02 : ∀ a, a ∉ W0 → 6 ≤ (Finset.univ.filter (fun c => E02 a c)).card)
    (h03 : ∀ a, a ∉ W0 → 6 ≤ (Finset.univ.filter (fun d => E03 a d)).card)
    (h12 : ∀ b, b ∉ W1 → 6 ≤ (Finset.univ.filter (fun c => E12 b c)).card)
    (h13 : ∀ b, b ∉ W1 → 6 ≤ (Finset.univ.filter (fun d => E13 b d)).card)
    (h23 : ∀ c, c ∉ W2 → 6 ≤ (Finset.univ.filter (fun d => E23 c d)).card) :
    ∃ a b c d,
      E01 a b ∧ E02 a c ∧ E03 a d ∧ E12 b c ∧ E13 b d ∧ E23 c d := by
  classical
  have hW0lt : W0.card < (Finset.univ : Finset (Fin 8)).card := by
    simp
    omega
  obtain ⟨a, _ha_univ, ha_notW0⟩ :=
    Finset.exists_mem_notMem_of_card_lt_card hW0lt
  let N01 : Finset (Fin 8) := Finset.univ.filter (fun b => E01 a b)
  have hN01 : 6 ≤ N01.card := by simpa [N01] using h01 a ha_notW0
  have hW1ltN : W1.card < N01.card := by omega
  obtain ⟨b, hbN01, hb_notW1⟩ :=
    Finset.exists_mem_notMem_of_card_lt_card hW1ltN
  have hb01 : E01 a b := by simpa [N01] using hbN01
  let C02 : Finset (Fin 8) := Finset.univ.filter (fun c => E02 a c)
  let C12 : Finset (Fin 8) := Finset.univ.filter (fun c => E12 b c)
  let Cgood : Finset (Fin 8) := C02 ∩ C12
  have hC02 : 6 ≤ C02.card := by simpa [C02] using h02 a ha_notW0
  have hC12 : 6 ≤ C12.card := by simpa [C12] using h12 b hb_notW1
  have hCgood : 4 ≤ Cgood.card := by
    simpa [Cgood] using inter_card_ge_four_of_card_ge_six_fin8 C02 C12 hC02 hC12
  have hW2ltC : W2.card < Cgood.card := by omega
  obtain ⟨c, hcCgood, hc_notW2⟩ :=
    Finset.exists_mem_notMem_of_card_lt_card hW2ltC
  have hcC := Finset.mem_inter.mp (by simpa [Cgood] using hcCgood)
  have hc02 : E02 a c := by simpa [C02] using hcC.1
  have hc12 : E12 b c := by simpa [C12] using hcC.2
  let D03 : Finset (Fin 8) := Finset.univ.filter (fun d => E03 a d)
  let D13 : Finset (Fin 8) := Finset.univ.filter (fun d => E13 b d)
  let Dgood : Finset (Fin 8) := D03 ∩ D13
  have hD03 : 6 ≤ D03.card := by simpa [D03] using h03 a ha_notW0
  have hD13 : 6 ≤ D13.card := by simpa [D13] using h13 b hb_notW1
  have hDgood : 4 ≤ Dgood.card := by
    simpa [Dgood] using inter_card_ge_four_of_card_ge_six_fin8 D03 D13 hD03 hD13
  let N23 : Finset (Fin 8) := Finset.univ.filter (fun d => E23 c d)
  have hN23 : 6 ≤ N23.card := by simpa [N23] using h23 c hc_notW2
  have hND : 2 ≤ (N23 ∩ Dgood).card :=
    inter_card_ge_two_of_card_ge_six_four_fin8 N23 Dgood hN23 hDgood
  obtain ⟨d, hdND⟩ : (N23 ∩ Dgood).Nonempty := Finset.card_pos.mp (by omega)
  have hdN := Finset.mem_inter.mp hdND
  have hdD := Finset.mem_inter.mp (by simpa [Dgood] using hdN.2)
  have hd23 : E23 c d := by simpa [N23] using hdN.1
  have hd03 : E03 a d := by simpa [D03] using hdD.1
  have hd13 : E13 b d := by simpa [D13] using hdD.2
  exact ⟨a, b, c, d, hb01, hc02, hd03, hc12, hd13, hd23⟩

private def pairValues4 (C : Finset (QaryWord 8 4)) (i j : Fin 4) :
    Finset (Fin 8 × Fin 8) :=
  C.image (fun w => (w i, w j))

private def pairValuesBinary4 (C : Finset (QaryWord 2 4)) (i j : Fin 4) :
    Finset (Fin 2 × Fin 2) :=
  C.image (fun w => (w i, w j))

set_option maxRecDepth 1000000 in
private theorem no_binary_four_column_strength_two_four_rows :
    ¬ ∃ C : Finset (QaryWord 2 4),
      C.card = 4 ∧
      (∀ i j : Fin 4, i < j → (pairValuesBinary4 C i j).card = 4) := by
  covering_decide

private theorem pairValuesBinary4_card_eq_four_of_full
    (C : Finset (QaryWord 2 4))
    (i j : Fin 4)
    (hfull : ∀ a b : Fin 2, ∃ w, w ∈ C ∧ w i = a ∧ w j = b) :
    (pairValuesBinary4 C i j).card = 4 := by
  classical
  have hset : pairValuesBinary4 C i j = (Finset.univ : Finset (Fin 2 × Fin 2)) := by
    ext p
    constructor
    · intro _hp
      simp
    · intro _hp
      obtain ⟨w, hwC, hwi, hwj⟩ := hfull p.1 p.2
      exact Finset.mem_image.mpr ⟨w, hwC, by exact Prod.ext hwi hwj⟩
  rw [hset]
  covering_decide

private theorem no_binary_four_column_strength_two_at_most_four_rows :
    ¬ ∃ C : Finset (QaryWord 2 4),
      C.card ≤ 4 ∧
      (∀ i j : Fin 4, i < j →
        ∀ a b : Fin 2, ∃ w, w ∈ C ∧ w i = a ∧ w j = b) := by
  rintro ⟨C, hcard_le, hfull⟩
  have hpair_card :
      ∀ i j : Fin 4, i < j → (pairValuesBinary4 C i j).card = 4 := by
    intro i j hij
    exact pairValuesBinary4_card_eq_four_of_full C i j (hfull i j hij)
  have hcard_ge : 4 ≤ C.card := by
    have himage : (pairValuesBinary4 C 0 1).card ≤ C.card := Finset.card_image_le
    have h01 := hpair_card 0 1 (by decide)
    omega
  have hcard_eq : C.card = 4 := by omega
  exact no_binary_four_column_strength_two_four_rows
    ⟨C, hcard_eq, hpair_card⟩

private def liftBinaryBlock
    (small : (i : Fin 4) → Fin 2 → Fin 8)
    (x : QaryWord 2 4) : QaryWord 8 4 :=
  fun i => small i (x i)

private def binaryPreimageCode
    (C : Finset (QaryWord 8 4))
    (small : (i : Fin 4) → Fin 2 → Fin 8) :
    Finset (QaryWord 2 4) :=
  (Finset.univ : Finset (QaryWord 2 4)).filter
    (fun x => liftBinaryBlock small x ∈ C)

private theorem binaryPreimageCode_full_of_small_component_full
    (C : Finset (QaryWord 8 4))
    (small : (i : Fin 4) → Fin 2 → Fin 8)
    (hinj : ∀ i : Fin 4, Function.Injective (small i))
    (hfull :
      ∀ i j : Fin 4, i < j → ∀ a b : Fin 2,
        ∃ w : QaryWord 8 4,
          w ∈ C ∧
          (∀ k : Fin 4, ∃ x : Fin 2, w k = small k x) ∧
          w i = small i a ∧
          w j = small j b) :
    ∀ i j : Fin 4, i < j → ∀ a b : Fin 2,
      ∃ x, x ∈ binaryPreimageCode C small ∧ x i = a ∧ x j = b := by
  classical
  intro i j hij a b
  obtain ⟨w, hwC, hwSmall, hwi, hwj⟩ := hfull i j hij a b
  let x : QaryWord 2 4 := fun k => Classical.choose (hwSmall k)
  have hxw : liftBinaryBlock small x = w := by
    funext k
    exact (Classical.choose_spec (hwSmall k)).symm
  have hxC : x ∈ binaryPreimageCode C small := by
    simp [binaryPreimageCode, hxw, hwC]
  have hxia : x i = a := by
    apply hinj i
    calc
      small i (x i) = liftBinaryBlock small x i := rfl
      _ = w i := by rw [hxw]
      _ = small i a := hwi
  have hxjb : x j = b := by
    apply hinj j
    calc
      small j (x j) = liftBinaryBlock small x j := rfl
      _ = w j := by rw [hxw]
      _ = small j b := hwj
  exact ⟨x, hxC, hxia, hxjb⟩

private theorem no_octonary_binary_component_at_most_four_rows
    (C : Finset (QaryWord 8 4))
    (small : (i : Fin 4) → Fin 2 → Fin 8)
    (hinj : ∀ i : Fin 4, Function.Injective (small i))
    (hcard_le : (binaryPreimageCode C small).card ≤ 4)
    (hfull :
      ∀ i j : Fin 4, i < j → ∀ a b : Fin 2,
        ∃ w : QaryWord 8 4,
          w ∈ C ∧
          (∀ k : Fin 4, ∃ x : Fin 2, w k = small k x) ∧
          w i = small i a ∧
          w j = small j b) :
    False := by
  exact no_binary_four_column_strength_two_at_most_four_rows
    ⟨binaryPreimageCode C small, hcard_le,
      binaryPreimageCode_full_of_small_component_full C small hinj hfull⟩

private abbrev pairMissing4 (C : Finset (QaryWord 8 4)) (i j : Fin 4)
    (a b : Fin 8) : Prop :=
  (a, b) ∉ pairValues4 C i j

private theorem pairMissing4_comm
    (C : Finset (QaryWord 8 4))
    (i j : Fin 4)
    (a b : Fin 8) :
    pairMissing4 C i j a b ↔ pairMissing4 C j i b a := by
  simp [pairMissing4, pairValues4, Prod.ext_iff]
  constructor
  · intro h x hxC hxj hxi
    exact h x hxC hxi hxj
  · intro h x hxC hxi hxj
    exact h x hxC hxj hxi

/-- The abstract six-pair-graph profile forced by a hypothetical 22-word
octonary length-four radius-two cover.

The Boolean edge predicates represent missing coordinate-pair values.  The
profile functions `d0`, ..., `d3` are the excesses over the guaranteed two
codewords in each coordinate-symbol fiber.  For a 22-word cover each excess
profile has sum six, and every missing-pair graph has the two-sided degree
lower bounds shown below. -/
structure OctonaryFourTwoProfileGraph where
  E01 : Fin 8 → Fin 8 → Bool
  E02 : Fin 8 → Fin 8 → Bool
  E03 : Fin 8 → Fin 8 → Bool
  E12 : Fin 8 → Fin 8 → Bool
  E13 : Fin 8 → Fin 8 → Bool
  E23 : Fin 8 → Fin 8 → Bool
  d0 : Fin 8 → Nat
  d1 : Fin 8 → Nat
  d2 : Fin 8 → Nat
  d3 : Fin 8 → Nat
  d0_sum : (∑ a : Fin 8, d0 a) = 6
  d1_sum : (∑ a : Fin 8, d1 a) = 6
  d2_sum : (∑ a : Fin 8, d2 a) = 6
  d3_sum : (∑ a : Fin 8, d3 a) = 6
  row01 : ∀ a, 6 - d0 a ≤ (Finset.univ.filter (fun b => E01 a b = true)).card
  row02 : ∀ a, 6 - d0 a ≤ (Finset.univ.filter (fun c => E02 a c = true)).card
  row03 : ∀ a, 6 - d0 a ≤ (Finset.univ.filter (fun d => E03 a d = true)).card
  row12 : ∀ b, 6 - d1 b ≤ (Finset.univ.filter (fun c => E12 b c = true)).card
  row13 : ∀ b, 6 - d1 b ≤ (Finset.univ.filter (fun d => E13 b d = true)).card
  row23 : ∀ c, 6 - d2 c ≤ (Finset.univ.filter (fun d => E23 c d = true)).card
  col01 : ∀ b, 6 - d1 b ≤ (Finset.univ.filter (fun a => E01 a b = true)).card
  col02 : ∀ c, 6 - d2 c ≤ (Finset.univ.filter (fun a => E02 a c = true)).card
  col03 : ∀ d, 6 - d3 d ≤ (Finset.univ.filter (fun a => E03 a d = true)).card
  col12 : ∀ c, 6 - d2 c ≤ (Finset.univ.filter (fun b => E12 b c = true)).card
  col13 : ∀ d, 6 - d3 d ≤ (Finset.univ.filter (fun b => E13 b d = true)).card
  col23 : ∀ d, 6 - d3 d ≤ (Finset.univ.filter (fun c => E23 c d = true)).card
  no_clique :
    ¬ ∃ a b c d,
      E01 a b = true ∧ E02 a c = true ∧ E03 a d = true ∧
      E12 b c = true ∧ E13 b d = true ∧ E23 c d = true

private def boolEdgeSet8 (E : Fin 8 → Fin 8 → Bool) :
    Finset (Fin 8 × Fin 8) :=
  (Finset.univ : Finset (Fin 8 × Fin 8)).filter (fun p => E p.1 p.2 = true)

private def boolRowSet8 (E : Fin 8 → Fin 8 → Bool) (a : Fin 8) :
    Finset (Fin 8) :=
  Finset.univ.filter (fun b => E a b = true)

private def boolColSet8 (E : Fin 8 → Fin 8 → Bool) (b : Fin 8) :
    Finset (Fin 8) :=
  Finset.univ.filter (fun a => E a b = true)

private theorem boolEdgeSet8_card_eq_sum_rows
    (E : Fin 8 → Fin 8 → Bool) :
    (boolEdgeSet8 E).card = ∑ a : Fin 8, (boolRowSet8 E a).card := by
  classical
  rw [Finset.card_eq_sum_card_fiberwise
    (s := boolEdgeSet8 E)
    (t := (Finset.univ : Finset (Fin 8)))
    (f := fun p : Fin 8 × Fin 8 => p.1)
    (by intro p _hp; simp)]
  apply Finset.sum_congr rfl
  intro a _ha
  let toPair : Fin 8 → Fin 8 × Fin 8 := fun b => (a, b)
  have hinj : Function.Injective toPair := by
    intro b c h
    exact congrArg Prod.snd h
  have himage :
      (boolRowSet8 E a).image toPair =
        (boolEdgeSet8 E).filter (fun p : Fin 8 × Fin 8 => p.1 = a) := by
    ext p
    rcases p with ⟨x, y⟩
    constructor
    · intro hp
      rcases Finset.mem_image.mp hp with ⟨b, hb, hpair⟩
      have hbE : E a b = true := by simpa [boolRowSet8] using hb
      have hx : x = a := by simpa [toPair] using congrArg Prod.fst hpair.symm
      have hy : y = b := by simpa [toPair] using congrArg Prod.snd hpair.symm
      simp [boolEdgeSet8, hx, hy, hbE]
    · intro hp
      have hp' :
          E x y = true ∧ x = a := by
        simpa [boolEdgeSet8] using hp
      have hE : E x y = true := hp'.1
      have hx : x = a := hp'.2
      refine Finset.mem_image.mpr ⟨y, ?_, ?_⟩
      · simpa [boolRowSet8, hx] using hE
      · ext <;> simp [toPair, hx]
  calc
    ((boolEdgeSet8 E).filter (fun p : Fin 8 × Fin 8 => p.1 = a)).card
        = ((boolRowSet8 E a).image toPair).card := by rw [himage]
    _ = (boolRowSet8 E a).card := by
      rw [Finset.card_image_of_injective _ hinj]

private theorem boolEdgeSet8_card_eq_sum_cols
    (E : Fin 8 → Fin 8 → Bool) :
    (boolEdgeSet8 E).card = ∑ b : Fin 8, (boolColSet8 E b).card := by
  classical
  rw [Finset.card_eq_sum_card_fiberwise
    (s := boolEdgeSet8 E)
    (t := (Finset.univ : Finset (Fin 8)))
    (f := fun p : Fin 8 × Fin 8 => p.2)
    (by intro p _hp; simp)]
  apply Finset.sum_congr rfl
  intro b _hb
  let toPair : Fin 8 → Fin 8 × Fin 8 := fun a => (a, b)
  have hinj : Function.Injective toPair := by
    intro a c h
    exact congrArg Prod.fst h
  have himage :
      (boolColSet8 E b).image toPair =
        (boolEdgeSet8 E).filter (fun p : Fin 8 × Fin 8 => p.2 = b) := by
    ext p
    rcases p with ⟨x, y⟩
    constructor
    · intro hp
      rcases Finset.mem_image.mp hp with ⟨a, ha, hpair⟩
      have haE : E a b = true := by simpa [boolColSet8] using ha
      have hx : x = a := by simpa [toPair] using congrArg Prod.fst hpair.symm
      have hy : y = b := by simpa [toPair] using congrArg Prod.snd hpair.symm
      simp [boolEdgeSet8, hx, hy, haE]
    · intro hp
      have hp' :
          E x y = true ∧ y = b := by
        simpa [boolEdgeSet8] using hp
      have hE : E x y = true := hp'.1
      have hy : y = b := hp'.2
      refine Finset.mem_image.mpr ⟨x, ?_, ?_⟩
      · simpa [boolColSet8, hy] using hE
      · ext <;> simp [toPair, hy]
  calc
    ((boolEdgeSet8 E).filter (fun p : Fin 8 × Fin 8 => p.2 = b)).card
        = ((boolColSet8 E b).image toPair).card := by rw [himage]
    _ = (boolColSet8 E b).card := by
      rw [Finset.card_image_of_injective _ hinj]

private theorem eq_of_le_and_sum_eq_fin8
    (lower actual : Fin 8 → Nat)
    (hle : ∀ a, lower a ≤ actual a)
    (hsum : (∑ a : Fin 8, actual a) = ∑ a : Fin 8, lower a)
    (a : Fin 8) :
    actual a = lower a := by
  by_contra hne
  have hne' : lower a ≠ actual a := fun h => hne h.symm
  have hlt : lower a < actual a := lt_of_le_of_ne (hle a) hne'
  have hsum_lt : (∑ x : Fin 8, lower x) < ∑ x : Fin 8, actual x := by
    exact Finset.sum_lt_sum (fun x _hx => hle x) ⟨a, Finset.mem_univ a, hlt⟩
  omega

private theorem deficit_eq_positive_support_indicator_of_card_eq_sum_fin8
    (d : Fin 8 → Nat)
    (hcard_sum :
      (Finset.univ.filter (fun a : Fin 8 => 0 < d a)).card =
        ∑ a : Fin 8, d a)
    (a : Fin 8) :
    d a =
      if a ∈ Finset.univ.filter (fun a : Fin 8 => 0 < d a) then 1 else 0 := by
  classical
  let S : Finset (Fin 8) := Finset.univ.filter (fun a : Fin 8 => 0 < d a)
  let lower : Fin 8 → Nat := fun a => if a ∈ S then 1 else 0
  have hle : ∀ a, lower a ≤ d a := by
    intro a
    by_cases ha : a ∈ S
    · have hpos : 0 < d a := by simpa [S] using ha
      simp [lower, ha]
      omega
    · simp [lower, ha]
  have hsumLower : (∑ a : Fin 8, lower a) = S.card := by
    simp [lower, S]
  have hsum : (∑ a : Fin 8, d a) = ∑ a : Fin 8, lower a := by
    rw [hsumLower]
    exact hcard_sum.symm
  simpa [lower, S] using
    eq_of_le_and_sum_eq_fin8 lower d hle hsum a

private theorem boolRowSet8_card_eq_lower_of_exact
    (E : Fin 8 → Fin 8 → Bool)
    (lower : Fin 8 → Nat)
    (hrow : ∀ a, lower a ≤ (boolRowSet8 E a).card)
    (hedges : (boolEdgeSet8 E).card = ∑ a : Fin 8, lower a)
    (a : Fin 8) :
    (boolRowSet8 E a).card = lower a := by
  have hsum : (∑ a : Fin 8, (boolRowSet8 E a).card) = ∑ a : Fin 8, lower a := by
    rw [← boolEdgeSet8_card_eq_sum_rows E]
    exact hedges
  exact eq_of_le_and_sum_eq_fin8 lower (fun a => (boolRowSet8 E a).card) hrow hsum a

private theorem boolColSet8_card_eq_lower_of_exact
    (E : Fin 8 → Fin 8 → Bool)
    (lower : Fin 8 → Nat)
    (hcol : ∀ b, lower b ≤ (boolColSet8 E b).card)
    (hedges : (boolEdgeSet8 E).card = ∑ b : Fin 8, lower b)
    (b : Fin 8) :
    (boolColSet8 E b).card = lower b := by
  have hsum : (∑ b : Fin 8, (boolColSet8 E b).card) = ∑ b : Fin 8, lower b := by
    rw [← boolEdgeSet8_card_eq_sum_cols E]
    exact hedges
  exact eq_of_le_and_sum_eq_fin8 lower (fun b => (boolColSet8 E b).card) hcol hsum b

private def canonicalBalancedExcess8 (a : Fin 8) : Nat :=
  if a = f8_6 ∨ a = f8_7 then 0 else 1

private theorem canonicalBalancedExcess8_sum :
    (∑ a : Fin 8, canonicalBalancedExcess8 a) = 6 := by
  covering_decide

private def canonicalHighSupport8 : Finset (Fin 8) :=
  Finset.univ.filter (fun a : Fin 8 => canonicalBalancedExcess8 a = 1)

private theorem canonicalHighSupport8_card :
    canonicalHighSupport8.card = 6 := by
  covering_decide

private theorem canonicalBalancedExcess8_eq_highSupport_indicator
    (a : Fin 8) :
    canonicalBalancedExcess8 a =
      if a ∈ canonicalHighSupport8 then 1 else 0 := by
  covering_decide +revert

private theorem fin8FinsetSubtype_card (S : Finset (Fin 8)) :
    Fintype.card {a : Fin 8 // a ∈ S} = S.card := by
  rw [Fintype.card_of_subtype S]
  intro a
  simp

private theorem fin8FinsetComplementSubtype_card (S : Finset (Fin 8)) :
    Fintype.card {a : Fin 8 // a ∉ S} = (Sᶜ).card := by
  rw [Fintype.card_of_subtype Sᶜ]
  intro a
  simp

private noncomputable def fin8FinsetSubtypeEquiv
    (S T : Finset (Fin 8))
    (hcard : S.card = T.card) :
    {a : Fin 8 // a ∈ S} ≃ {a : Fin 8 // a ∈ T} :=
  Fintype.equivOfCardEq (by
    rw [fin8FinsetSubtype_card S, fin8FinsetSubtype_card T]
    exact hcard)

private noncomputable def fin8FinsetComplementSubtypeEquiv
    (S T : Finset (Fin 8))
    (hcard : S.card = T.card) :
    {a : Fin 8 // a ∉ S} ≃ {a : Fin 8 // a ∉ T} :=
  Fintype.equivOfCardEq (by
    rw [fin8FinsetComplementSubtype_card S,
      fin8FinsetComplementSubtype_card T]
    rw [Finset.card_compl, Finset.card_compl, hcard])

private noncomputable def fin8EquivOfFinsetCardEq
    (S T : Finset (Fin 8))
    (hcard : S.card = T.card) :
    Fin 8 ≃ Fin 8 where
  toFun a :=
    if ha : a ∈ S then
      (fin8FinsetSubtypeEquiv S T hcard ⟨a, ha⟩).val
    else
      (fin8FinsetComplementSubtypeEquiv S T hcard ⟨a, ha⟩).val
  invFun a :=
    if ha : a ∈ T then
      ((fin8FinsetSubtypeEquiv S T hcard).symm ⟨a, ha⟩).val
    else
      ((fin8FinsetComplementSubtypeEquiv S T hcard).symm ⟨a, ha⟩).val
  left_inv a := by
    by_cases ha : a ∈ S
    · have hT :
          (fin8FinsetSubtypeEquiv S T hcard ⟨a, ha⟩).val ∈ T :=
        (fin8FinsetSubtypeEquiv S T hcard ⟨a, ha⟩).property
      simp [ha, hT]
    · have hT :
          (fin8FinsetComplementSubtypeEquiv S T hcard ⟨a, ha⟩).val ∉ T :=
        (fin8FinsetComplementSubtypeEquiv S T hcard ⟨a, ha⟩).property
      simp [ha, hT]
  right_inv a := by
    by_cases ha : a ∈ T
    · have hS :
          ((fin8FinsetSubtypeEquiv S T hcard).symm ⟨a, ha⟩).val ∈ S :=
        ((fin8FinsetSubtypeEquiv S T hcard).symm ⟨a, ha⟩).property
      simp [ha, hS]
    · have hS :
          ((fin8FinsetComplementSubtypeEquiv S T hcard).symm ⟨a, ha⟩).val ∉ S :=
        ((fin8FinsetComplementSubtypeEquiv S T hcard).symm ⟨a, ha⟩).property
      simp [ha, hS]

private theorem fin8EquivOfFinsetCardEq_symm_mem_iff
    (S T : Finset (Fin 8))
    (hcard : S.card = T.card)
    (a : Fin 8) :
    (fin8EquivOfFinsetCardEq S T hcard).symm a ∈ S ↔ a ∈ T := by
  by_cases ha : a ∈ T
  · have hS :
        ((fin8FinsetSubtypeEquiv S T hcard).symm ⟨a, ha⟩).val ∈ S :=
      ((fin8FinsetSubtypeEquiv S T hcard).symm ⟨a, ha⟩).property
    simp [fin8EquivOfFinsetCardEq, ha, hS]
  · have hS :
        ((fin8FinsetComplementSubtypeEquiv S T hcard).symm ⟨a, ha⟩).val ∉ S :=
      ((fin8FinsetComplementSubtypeEquiv S T hcard).symm ⟨a, ha⟩).property
    simp [fin8EquivOfFinsetCardEq, ha, hS]

private theorem canonicalBalancedMissingLower_sum :
    (∑ a : Fin 8, (6 - canonicalBalancedExcess8 a)) = 42 := by
  covering_decide

private theorem boolRowSet8_card_eq_balanced_missing_lower_of_exact42
    (E : Fin 8 → Fin 8 → Bool)
    (hrow : ∀ a, 6 - canonicalBalancedExcess8 a ≤ (boolRowSet8 E a).card)
    (hedges : (boolEdgeSet8 E).card = 42)
    (a : Fin 8) :
    (boolRowSet8 E a).card = 6 - canonicalBalancedExcess8 a := by
  apply boolRowSet8_card_eq_lower_of_exact E
    (fun a => 6 - canonicalBalancedExcess8 a) hrow
  rw [canonicalBalancedMissingLower_sum]
  exact hedges

private theorem boolColSet8_card_eq_balanced_missing_lower_of_exact42
    (E : Fin 8 → Fin 8 → Bool)
    (hcol : ∀ b, 6 - canonicalBalancedExcess8 b ≤ (boolColSet8 E b).card)
    (hedges : (boolEdgeSet8 E).card = 42)
    (b : Fin 8) :
    (boolColSet8 E b).card = 6 - canonicalBalancedExcess8 b := by
  apply boolColSet8_card_eq_lower_of_exact E
    (fun b => 6 - canonicalBalancedExcess8 b) hcol
  rw [canonicalBalancedMissingLower_sum]
  exact hedges

private def OctonaryFourTwoProfileGraph.canonicalBalanced
    (G : OctonaryFourTwoProfileGraph) : Prop :=
  (∀ a, G.d0 a = canonicalBalancedExcess8 a) ∧
  (∀ a, G.d1 a = canonicalBalancedExcess8 a) ∧
  (∀ a, G.d2 a = canonicalBalancedExcess8 a) ∧
  (∀ a, G.d3 a = canonicalBalancedExcess8 a)

private def OctonaryFourTwoProfileGraph.exact42
    (G : OctonaryFourTwoProfileGraph) : Prop :=
  (boolEdgeSet8 G.E01).card = 42 ∧
  (boolEdgeSet8 G.E02).card = 42 ∧
  (boolEdgeSet8 G.E03).card = 42 ∧
  (boolEdgeSet8 G.E12).card = 42 ∧
  (boolEdgeSet8 G.E13).card = 42 ∧
  (boolEdgeSet8 G.E23).card = 42

private theorem profileGraph_row01_tight_of_canonicalBalanced_exact42
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42)
    (a : Fin 8) :
    (boolRowSet8 G.E01 a).card = 6 - canonicalBalancedExcess8 a := by
  apply boolRowSet8_card_eq_balanced_missing_lower_of_exact42
  · intro x
    have h := G.row01 x
    simpa [boolRowSet8, hbal.1 x] using h
  · exact hexact.1

private theorem profileGraph_col01_tight_of_canonicalBalanced_exact42
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42)
    (b : Fin 8) :
    (boolColSet8 G.E01 b).card = 6 - canonicalBalancedExcess8 b := by
  apply boolColSet8_card_eq_balanced_missing_lower_of_exact42
  · intro y
    have h := G.col01 y
    simpa [boolColSet8, hbal.2.1 y] using h
  · exact hexact.1

private theorem profileGraph_row02_tight_of_canonicalBalanced_exact42
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42)
    (a : Fin 8) :
    (boolRowSet8 G.E02 a).card = 6 - canonicalBalancedExcess8 a := by
  apply boolRowSet8_card_eq_balanced_missing_lower_of_exact42
  · intro x
    have h := G.row02 x
    simpa [boolRowSet8, hbal.1 x] using h
  · exact hexact.2.1

private theorem profileGraph_col02_tight_of_canonicalBalanced_exact42
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42)
    (c : Fin 8) :
    (boolColSet8 G.E02 c).card = 6 - canonicalBalancedExcess8 c := by
  apply boolColSet8_card_eq_balanced_missing_lower_of_exact42
  · intro y
    have h := G.col02 y
    simpa [boolColSet8, hbal.2.2.1 y] using h
  · exact hexact.2.1

private theorem profileGraph_row03_tight_of_canonicalBalanced_exact42
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42)
    (a : Fin 8) :
    (boolRowSet8 G.E03 a).card = 6 - canonicalBalancedExcess8 a := by
  apply boolRowSet8_card_eq_balanced_missing_lower_of_exact42
  · intro x
    have h := G.row03 x
    simpa [boolRowSet8, hbal.1 x] using h
  · exact hexact.2.2.1

private theorem profileGraph_col03_tight_of_canonicalBalanced_exact42
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42)
    (d : Fin 8) :
    (boolColSet8 G.E03 d).card = 6 - canonicalBalancedExcess8 d := by
  apply boolColSet8_card_eq_balanced_missing_lower_of_exact42
  · intro y
    have h := G.col03 y
    simpa [boolColSet8, hbal.2.2.2 y] using h
  · exact hexact.2.2.1

private theorem profileGraph_row12_tight_of_canonicalBalanced_exact42
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42)
    (b : Fin 8) :
    (boolRowSet8 G.E12 b).card = 6 - canonicalBalancedExcess8 b := by
  apply boolRowSet8_card_eq_balanced_missing_lower_of_exact42
  · intro x
    have h := G.row12 x
    simpa [boolRowSet8, hbal.2.1 x] using h
  · exact hexact.2.2.2.1

private theorem profileGraph_col12_tight_of_canonicalBalanced_exact42
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42)
    (c : Fin 8) :
    (boolColSet8 G.E12 c).card = 6 - canonicalBalancedExcess8 c := by
  apply boolColSet8_card_eq_balanced_missing_lower_of_exact42
  · intro y
    have h := G.col12 y
    simpa [boolColSet8, hbal.2.2.1 y] using h
  · exact hexact.2.2.2.1

private theorem profileGraph_row13_tight_of_canonicalBalanced_exact42
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42)
    (b : Fin 8) :
    (boolRowSet8 G.E13 b).card = 6 - canonicalBalancedExcess8 b := by
  apply boolRowSet8_card_eq_balanced_missing_lower_of_exact42
  · intro x
    have h := G.row13 x
    simpa [boolRowSet8, hbal.2.1 x] using h
  · exact hexact.2.2.2.2.1

private theorem profileGraph_col13_tight_of_canonicalBalanced_exact42
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42)
    (d : Fin 8) :
    (boolColSet8 G.E13 d).card = 6 - canonicalBalancedExcess8 d := by
  apply boolColSet8_card_eq_balanced_missing_lower_of_exact42
  · intro y
    have h := G.col13 y
    simpa [boolColSet8, hbal.2.2.2 y] using h
  · exact hexact.2.2.2.2.1

private theorem profileGraph_row23_tight_of_canonicalBalanced_exact42
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42)
    (c : Fin 8) :
    (boolRowSet8 G.E23 c).card = 6 - canonicalBalancedExcess8 c := by
  apply boolRowSet8_card_eq_balanced_missing_lower_of_exact42
  · intro x
    have h := G.row23 x
    simpa [boolRowSet8, hbal.2.2.1 x] using h
  · exact hexact.2.2.2.2.2

private theorem profileGraph_col23_tight_of_canonicalBalanced_exact42
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42)
    (d : Fin 8) :
    (boolColSet8 G.E23 d).card = 6 - canonicalBalancedExcess8 d := by
  apply boolColSet8_card_eq_balanced_missing_lower_of_exact42
  · intro y
    have h := G.col23 y
    simpa [boolColSet8, hbal.2.2.2 y] using h
  · exact hexact.2.2.2.2.2

private def fin8OfNatMod (n : Nat) : Fin 8 :=
  ⟨n % 8, Nat.mod_lt n (by decide : 0 < 8)⟩

private theorem fin8OfNatMod_val (a : Fin 8) :
    fin8OfNatMod a.val = a := by
  ext
  simp [fin8OfNatMod, Nat.mod_eq_of_lt a.isLt]

private def OctonaryFourTwoProfileGraph.edgeByPairIndex
    (G : OctonaryFourTwoProfileGraph)
    (pairIndex row col : Nat) : Prop :=
  match pairIndex with
  | 0 => G.E01 (fin8OfNatMod row) (fin8OfNatMod col) = true
  | 1 => G.E02 (fin8OfNatMod row) (fin8OfNatMod col) = true
  | 2 => G.E03 (fin8OfNatMod row) (fin8OfNatMod col) = true
  | 3 => G.E12 (fin8OfNatMod row) (fin8OfNatMod col) = true
  | 4 => G.E13 (fin8OfNatMod row) (fin8OfNatMod col) = true
  | 5 => G.E23 (fin8OfNatMod row) (fin8OfNatMod col) = true
  | _ => False

private def OctonaryFourTwoProfileGraph.profileBlockValuation
    (G : OctonaryFourTwoProfileGraph) : Sat.Valuation :=
  fun idx =>
    G.edgeByPairIndex (idx / 64) ((idx % 64) / 8) (idx % 8)

private theorem valuation_satisfies_fmla_append
    {v : Sat.Valuation} {left right : Sat.Fmla}
    (hleft : Sat.Valuation.satisfies_fmla v left)
    (hright : Sat.Valuation.satisfies_fmla v right) :
    Sat.Valuation.satisfies_fmla v (left ++ right) := by
  constructor
  intro clause hclause
  rw [List.mem_append] at hclause
  rcases hclause with hclause | hclause
  · exact hleft.prop clause hclause
  · exact hright.prop clause hclause

private theorem valuation_satisfies_fmla_nil (v : Sat.Valuation) :
    Sat.Valuation.satisfies_fmla v [] := by
  constructor
  intro clause hclause
  simp at hclause

private theorem valuation_satisfies_fmla_cons
    {v : Sat.Valuation} {clause : Sat.Clause} {formula : Sat.Fmla}
    (hclause : Sat.Valuation.satisfies v clause)
    (hformula : Sat.Valuation.satisfies_fmla v formula) :
    Sat.Valuation.satisfies_fmla v (clause :: formula) := by
  constructor
  intro clause' hclause'
  rcases List.mem_cons.mp hclause' with rfl | htail
  · exact hclause
  · exact hformula.prop clause' htail

private theorem valuation_neg_of_not_satisfies_clause
    {v : Sat.Valuation} {clause : Sat.Clause}
    (hnot : ¬ Sat.Valuation.satisfies v clause)
    {lit : Sat.Literal}
    (hmem : List.Mem lit clause) :
    Sat.Valuation.neg v lit := by
  induction clause with
  | nil =>
      cases hmem
  | cons head tail ih =>
      rcases List.mem_cons.mp hmem with rfl | htail
      · by_contra hhead
        apply hnot
        intro hneg
        exact False.elim (hhead hneg)
      · apply ih
        · intro htailSat
          apply hnot
          intro _hhead
          exact htailSat
        · exact htail

set_option maxRecDepth 1000000 in
private theorem boolFin8_true_count_eq_card_filter
    (f : Fin 8 → Bool) :
    ([f 0, f 1, f 2, f 3, f 4, f 5, f 6, f 7].filter
        (fun b => b = true)).length =
      (Finset.univ.filter (fun i : Fin 8 => f i = true)).card := by
  covering_decide +revert

private theorem profileDirect_rowBound_eq_canonicalBalancedMissingLower
    (a : Fin 8) :
    ProfileBlockDirect.rowBound a.val = 6 - canonicalBalancedExcess8 a := by
  covering_decide +revert

set_option maxHeartbeats 0 in
set_option linter.unusedSimpArgs false in
private theorem valuation_satisfies_exactDegreeClauses_eight_of_count_five
    (v : Sat.Valuation)
    (x0 x1 x2 x3 x4 x5 x6 x7 : Nat)
    (b0 b1 b2 b3 b4 b5 b6 b7 : Bool)
    (h0 : v x0 ↔ b0 = true) (h1 : v x1 ↔ b1 = true)
    (h2 : v x2 ↔ b2 = true) (h3 : v x3 ↔ b3 = true)
    (h4 : v x4 ↔ b4 = true) (h5 : v x5 ↔ b5 = true)
    (h6 : v x6 ↔ b6 = true) (h7 : v x7 ↔ b7 = true)
    (hcount :
      ([b0, b1, b2, b3, b4, b5, b6, b7].filter (fun b => b = true)).length = 5) :
    Sat.Valuation.satisfies_fmla v
      (ProfileBlockDirect.exactDegreeClauses
        [Sat.Literal.pos x0, Sat.Literal.pos x1, Sat.Literal.pos x2, Sat.Literal.pos x3,
         Sat.Literal.pos x4, Sat.Literal.pos x5, Sat.Literal.pos x6, Sat.Literal.pos x7] 5) := by
  cases b0 <;> cases b1 <;> cases b2 <;> cases b3 <;>
    cases b4 <;> cases b5 <;> cases b6 <;> cases b7 <;>
    simp [ProfileBlockDirect.exactDegreeClauses, ProfileBlockDirect.choose] at hcount ⊢
  all_goals
    repeat first
      | apply valuation_satisfies_fmla_cons
      | apply valuation_satisfies_fmla_nil
      | simp [Sat.Valuation.satisfies, Sat.Valuation.neg, h0, h1, h2, h3, h4, h5, h6, h7]

set_option maxHeartbeats 0 in
set_option linter.unusedSimpArgs false in
private theorem valuation_satisfies_exactDegreeClauses_eight_of_count_six
    (v : Sat.Valuation)
    (x0 x1 x2 x3 x4 x5 x6 x7 : Nat)
    (b0 b1 b2 b3 b4 b5 b6 b7 : Bool)
    (h0 : v x0 ↔ b0 = true) (h1 : v x1 ↔ b1 = true)
    (h2 : v x2 ↔ b2 = true) (h3 : v x3 ↔ b3 = true)
    (h4 : v x4 ↔ b4 = true) (h5 : v x5 ↔ b5 = true)
    (h6 : v x6 ↔ b6 = true) (h7 : v x7 ↔ b7 = true)
    (hcount :
      ([b0, b1, b2, b3, b4, b5, b6, b7].filter (fun b => b = true)).length = 6) :
    Sat.Valuation.satisfies_fmla v
      (ProfileBlockDirect.exactDegreeClauses
        [Sat.Literal.pos x0, Sat.Literal.pos x1, Sat.Literal.pos x2, Sat.Literal.pos x3,
         Sat.Literal.pos x4, Sat.Literal.pos x5, Sat.Literal.pos x6, Sat.Literal.pos x7] 6) := by
  cases b0 <;> cases b1 <;> cases b2 <;> cases b3 <;>
    cases b4 <;> cases b5 <;> cases b6 <;> cases b7 <;>
    simp [ProfileBlockDirect.exactDegreeClauses, ProfileBlockDirect.choose] at hcount ⊢
  all_goals
    repeat first
      | apply valuation_satisfies_fmla_cons
      | apply valuation_satisfies_fmla_nil
      | simp [Sat.Valuation.satisfies, Sat.Valuation.neg, h0, h1, h2, h3, h4, h5, h6, h7]

set_option maxHeartbeats 0 in
set_option linter.unusedSimpArgs false in
private theorem valuation_satisfies_atLeastDegreeClauses_eight_of_count_ge_five
    (v : Sat.Valuation)
    (x0 x1 x2 x3 x4 x5 x6 x7 : Nat)
    (b0 b1 b2 b3 b4 b5 b6 b7 : Bool)
    (h0 : v x0 ↔ b0 = true) (h1 : v x1 ↔ b1 = true)
    (h2 : v x2 ↔ b2 = true) (h3 : v x3 ↔ b3 = true)
    (h4 : v x4 ↔ b4 = true) (h5 : v x5 ↔ b5 = true)
    (h6 : v x6 ↔ b6 = true) (h7 : v x7 ↔ b7 = true)
    (hcount :
      5 ≤ ([b0, b1, b2, b3, b4, b5, b6, b7].filter (fun b => b = true)).length) :
    Sat.Valuation.satisfies_fmla v
      (ProfileBlockDirect.atLeastDegreeClauses
        [Sat.Literal.pos x0, Sat.Literal.pos x1, Sat.Literal.pos x2, Sat.Literal.pos x3,
         Sat.Literal.pos x4, Sat.Literal.pos x5, Sat.Literal.pos x6, Sat.Literal.pos x7] 5) := by
  cases b0 <;> cases b1 <;> cases b2 <;> cases b3 <;>
    cases b4 <;> cases b5 <;> cases b6 <;> cases b7 <;>
    simp [ProfileBlockDirect.atLeastDegreeClauses, ProfileBlockDirect.choose] at hcount ⊢
  all_goals
    repeat first
      | apply valuation_satisfies_fmla_cons
      | apply valuation_satisfies_fmla_nil
      | simp [Sat.Valuation.satisfies, Sat.Valuation.neg, h0, h1, h2, h3, h4, h5, h6, h7]

set_option maxHeartbeats 0 in
set_option linter.unusedSimpArgs false in
private theorem valuation_satisfies_atLeastDegreeClauses_eight_of_count_ge_six
    (v : Sat.Valuation)
    (x0 x1 x2 x3 x4 x5 x6 x7 : Nat)
    (b0 b1 b2 b3 b4 b5 b6 b7 : Bool)
    (h0 : v x0 ↔ b0 = true) (h1 : v x1 ↔ b1 = true)
    (h2 : v x2 ↔ b2 = true) (h3 : v x3 ↔ b3 = true)
    (h4 : v x4 ↔ b4 = true) (h5 : v x5 ↔ b5 = true)
    (h6 : v x6 ↔ b6 = true) (h7 : v x7 ↔ b7 = true)
    (hcount :
      6 ≤ ([b0, b1, b2, b3, b4, b5, b6, b7].filter (fun b => b = true)).length) :
    Sat.Valuation.satisfies_fmla v
      (ProfileBlockDirect.atLeastDegreeClauses
        [Sat.Literal.pos x0, Sat.Literal.pos x1, Sat.Literal.pos x2, Sat.Literal.pos x3,
         Sat.Literal.pos x4, Sat.Literal.pos x5, Sat.Literal.pos x6, Sat.Literal.pos x7] 6) := by
  cases b0 <;> cases b1 <;> cases b2 <;> cases b3 <;>
    cases b4 <;> cases b5 <;> cases b6 <;> cases b7 <;>
    simp [ProfileBlockDirect.atLeastDegreeClauses, ProfileBlockDirect.choose] at hcount ⊢
  all_goals
    repeat first
      | apply valuation_satisfies_fmla_cons
      | apply valuation_satisfies_fmla_nil
      | simp [Sat.Valuation.satisfies, Sat.Valuation.neg, h0, h1, h2, h3, h4, h5, h6, h7]

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_edgeVarIndex
    (G : OctonaryFourTwoProfileGraph)
    (pairIndex : Fin 6)
    (row col : Fin 8) :
    G.profileBlockValuation
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val col.val) ↔
      G.edgeByPairIndex pairIndex.val row.val col.val := by
  fin_cases pairIndex <;> fin_cases row <;> fin_cases col <;>
    simp [OctonaryFourTwoProfileGraph.profileBlockValuation,
      OctonaryFourTwoProfileGraph.edgeByPairIndex,
      ProfileBlockDirect.edgeVarIndex, fin8OfNatMod]

private theorem profileDirect_posEdgeLit_mem_blockDifferenceClause_of_same
    (pairIndex : Nat)
    (leftBlocks rightBlocks : List (List Nat))
    (row col : Fin 8)
    (hsame :
      ProfileBlockDirect.blockIndex leftBlocks row.val =
        ProfileBlockDirect.blockIndex rightBlocks col.val) :
    List.Mem
      (ProfileBlockDirect.posEdgeLit pairIndex row.val col.val)
      (ProfileBlockDirect.blockDifferenceClause
        pairIndex leftBlocks rightBlocks) := by
  unfold ProfileBlockDirect.blockDifferenceClause
  apply List.mem_flatMap.mpr
  refine ⟨row.val, ?_, ?_⟩
  · simp [ProfileBlockDirect.q, row.isLt]
  · apply List.mem_map.mpr
    refine ⟨col.val, ?_, ?_⟩
    · simp [ProfileBlockDirect.q, col.isLt]
    · simp [hsame]

private theorem profileDirect_negEdgeLit_mem_blockDifferenceClause_of_diff
    (pairIndex : Nat)
    (leftBlocks rightBlocks : List (List Nat))
    (row col : Fin 8)
    (hdiff :
      ProfileBlockDirect.blockIndex leftBlocks row.val ≠
        ProfileBlockDirect.blockIndex rightBlocks col.val) :
    List.Mem
      (ProfileBlockDirect.negEdgeLit pairIndex row.val col.val)
      (ProfileBlockDirect.blockDifferenceClause
        pairIndex leftBlocks rightBlocks) := by
  unfold ProfileBlockDirect.blockDifferenceClause
  apply List.mem_flatMap.mpr
  refine ⟨row.val, ?_, ?_⟩
  · simp [ProfileBlockDirect.q, row.isLt]
  · apply List.mem_map.mpr
    refine ⟨col.val, ?_, ?_⟩
    · simp [ProfileBlockDirect.q, col.isLt]
    · simp [hdiff]

private def profileDirectCommonLeftBlocks
    (blocks2 _blocks3 : List (List Nat))
    (pairIndex : Fin 6) : List (List Nat) :=
  match pairIndex.val with
  | 5 => blocks2
  | _ => ProfileBlockDirect.canonicalBlocks

private def profileDirectCommonRightBlocks
    (blocks2 blocks3 : List (List Nat))
    (pairIndex : Fin 6) : List (List Nat) :=
  match pairIndex.val with
  | 0 => ProfileBlockDirect.canonicalBlocks
  | 1 => blocks2
  | 2 => blocks3
  | 3 => blocks2
  | 4 => blocks3
  | _ => blocks3

private theorem profileDirect_posEdgeLit_mem_commonBlockDifferenceClause_of_same
    (blocks2 blocks3 : List (List Nat))
    (pairIndex : Fin 6)
    (row col : Fin 8)
    (hsame :
      ProfileBlockDirect.blockIndex
          (profileDirectCommonLeftBlocks blocks2 blocks3 pairIndex) row.val =
        ProfileBlockDirect.blockIndex
          (profileDirectCommonRightBlocks blocks2 blocks3 pairIndex) col.val) :
    List.Mem
      (ProfileBlockDirect.posEdgeLit pairIndex.val row.val col.val)
      (ProfileBlockDirect.commonBlockDifferenceClause blocks2 blocks3) := by
  fin_cases pairIndex
  · unfold ProfileBlockDirect.commonBlockDifferenceClause
    apply List.mem_flatMap.mpr
    refine ⟨0, by simp, ?_⟩
    simpa [ProfileBlockDirect.profilePairs, profileDirectCommonLeftBlocks,
      profileDirectCommonRightBlocks] using
      profileDirect_posEdgeLit_mem_blockDifferenceClause_of_same
        0 ProfileBlockDirect.canonicalBlocks ProfileBlockDirect.canonicalBlocks
        row col (by simpa [profileDirectCommonLeftBlocks,
          profileDirectCommonRightBlocks] using hsame)
  · unfold ProfileBlockDirect.commonBlockDifferenceClause
    apply List.mem_flatMap.mpr
    refine ⟨1, by simp, ?_⟩
    simpa [ProfileBlockDirect.profilePairs, profileDirectCommonLeftBlocks,
      profileDirectCommonRightBlocks] using
      profileDirect_posEdgeLit_mem_blockDifferenceClause_of_same
        1 ProfileBlockDirect.canonicalBlocks blocks2 row col
        (by simpa [profileDirectCommonLeftBlocks,
          profileDirectCommonRightBlocks] using hsame)
  · unfold ProfileBlockDirect.commonBlockDifferenceClause
    apply List.mem_flatMap.mpr
    refine ⟨2, by simp, ?_⟩
    simpa [ProfileBlockDirect.profilePairs, profileDirectCommonLeftBlocks,
      profileDirectCommonRightBlocks] using
      profileDirect_posEdgeLit_mem_blockDifferenceClause_of_same
        2 ProfileBlockDirect.canonicalBlocks blocks3 row col
        (by simpa [profileDirectCommonLeftBlocks,
          profileDirectCommonRightBlocks] using hsame)
  · unfold ProfileBlockDirect.commonBlockDifferenceClause
    apply List.mem_flatMap.mpr
    refine ⟨3, by simp, ?_⟩
    simpa [ProfileBlockDirect.profilePairs, profileDirectCommonLeftBlocks,
      profileDirectCommonRightBlocks] using
      profileDirect_posEdgeLit_mem_blockDifferenceClause_of_same
        3 ProfileBlockDirect.canonicalBlocks blocks2 row col
        (by simpa [profileDirectCommonLeftBlocks,
          profileDirectCommonRightBlocks] using hsame)
  · unfold ProfileBlockDirect.commonBlockDifferenceClause
    apply List.mem_flatMap.mpr
    refine ⟨4, by simp, ?_⟩
    simpa [ProfileBlockDirect.profilePairs, profileDirectCommonLeftBlocks,
      profileDirectCommonRightBlocks] using
      profileDirect_posEdgeLit_mem_blockDifferenceClause_of_same
        4 ProfileBlockDirect.canonicalBlocks blocks3 row col
        (by simpa [profileDirectCommonLeftBlocks,
          profileDirectCommonRightBlocks] using hsame)
  · unfold ProfileBlockDirect.commonBlockDifferenceClause
    apply List.mem_flatMap.mpr
    refine ⟨5, by simp, ?_⟩
    simpa [ProfileBlockDirect.profilePairs, profileDirectCommonLeftBlocks,
      profileDirectCommonRightBlocks] using
      profileDirect_posEdgeLit_mem_blockDifferenceClause_of_same
        5 blocks2 blocks3 row col
        (by simpa [profileDirectCommonLeftBlocks,
          profileDirectCommonRightBlocks] using hsame)

private theorem profileDirect_negEdgeLit_mem_commonBlockDifferenceClause_of_diff
    (blocks2 blocks3 : List (List Nat))
    (pairIndex : Fin 6)
    (row col : Fin 8)
    (hdiff :
      ProfileBlockDirect.blockIndex
          (profileDirectCommonLeftBlocks blocks2 blocks3 pairIndex) row.val ≠
        ProfileBlockDirect.blockIndex
          (profileDirectCommonRightBlocks blocks2 blocks3 pairIndex) col.val) :
    List.Mem
      (ProfileBlockDirect.negEdgeLit pairIndex.val row.val col.val)
      (ProfileBlockDirect.commonBlockDifferenceClause blocks2 blocks3) := by
  fin_cases pairIndex
  · unfold ProfileBlockDirect.commonBlockDifferenceClause
    apply List.mem_flatMap.mpr
    refine ⟨0, by simp, ?_⟩
    simpa [ProfileBlockDirect.profilePairs, profileDirectCommonLeftBlocks,
      profileDirectCommonRightBlocks] using
      profileDirect_negEdgeLit_mem_blockDifferenceClause_of_diff
        0 ProfileBlockDirect.canonicalBlocks ProfileBlockDirect.canonicalBlocks
        row col (by simpa [profileDirectCommonLeftBlocks,
          profileDirectCommonRightBlocks] using hdiff)
  · unfold ProfileBlockDirect.commonBlockDifferenceClause
    apply List.mem_flatMap.mpr
    refine ⟨1, by simp, ?_⟩
    simpa [ProfileBlockDirect.profilePairs, profileDirectCommonLeftBlocks,
      profileDirectCommonRightBlocks] using
      profileDirect_negEdgeLit_mem_blockDifferenceClause_of_diff
        1 ProfileBlockDirect.canonicalBlocks blocks2 row col
        (by simpa [profileDirectCommonLeftBlocks,
          profileDirectCommonRightBlocks] using hdiff)
  · unfold ProfileBlockDirect.commonBlockDifferenceClause
    apply List.mem_flatMap.mpr
    refine ⟨2, by simp, ?_⟩
    simpa [ProfileBlockDirect.profilePairs, profileDirectCommonLeftBlocks,
      profileDirectCommonRightBlocks] using
      profileDirect_negEdgeLit_mem_blockDifferenceClause_of_diff
        2 ProfileBlockDirect.canonicalBlocks blocks3 row col
        (by simpa [profileDirectCommonLeftBlocks,
          profileDirectCommonRightBlocks] using hdiff)
  · unfold ProfileBlockDirect.commonBlockDifferenceClause
    apply List.mem_flatMap.mpr
    refine ⟨3, by simp, ?_⟩
    simpa [ProfileBlockDirect.profilePairs, profileDirectCommonLeftBlocks,
      profileDirectCommonRightBlocks] using
      profileDirect_negEdgeLit_mem_blockDifferenceClause_of_diff
        3 ProfileBlockDirect.canonicalBlocks blocks2 row col
        (by simpa [profileDirectCommonLeftBlocks,
          profileDirectCommonRightBlocks] using hdiff)
  · unfold ProfileBlockDirect.commonBlockDifferenceClause
    apply List.mem_flatMap.mpr
    refine ⟨4, by simp, ?_⟩
    simpa [ProfileBlockDirect.profilePairs, profileDirectCommonLeftBlocks,
      profileDirectCommonRightBlocks] using
      profileDirect_negEdgeLit_mem_blockDifferenceClause_of_diff
        4 ProfileBlockDirect.canonicalBlocks blocks3 row col
        (by simpa [profileDirectCommonLeftBlocks,
          profileDirectCommonRightBlocks] using hdiff)
  · unfold ProfileBlockDirect.commonBlockDifferenceClause
    apply List.mem_flatMap.mpr
    refine ⟨5, by simp, ?_⟩
    simpa [ProfileBlockDirect.profilePairs, profileDirectCommonLeftBlocks,
      profileDirectCommonRightBlocks] using
      profileDirect_negEdgeLit_mem_blockDifferenceClause_of_diff
        5 blocks2 blocks3 row col
        (by simpa [profileDirectCommonLeftBlocks,
          profileDirectCommonRightBlocks] using hdiff)

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_blockDifferenceClause_of_not_cross
    (G : OctonaryFourTwoProfileGraph)
    (pairIndex : Fin 6)
    (leftBlocks rightBlocks : List (List Nat))
    (hnotCross : ¬ ∀ row col : Fin 8,
      G.edgeByPairIndex pairIndex.val row.val col.val ↔
        ProfileBlockDirect.blockIndex leftBlocks row.val ≠
          ProfileBlockDirect.blockIndex rightBlocks col.val) :
    Sat.Valuation.satisfies G.profileBlockValuation
      (ProfileBlockDirect.blockDifferenceClause
        pairIndex.val leftBlocks rightBlocks) := by
  by_contra hnotSat
  apply hnotCross
  intro row col
  constructor
  · intro hedge
    by_contra hdiff
    have hmem : List.Mem
        (ProfileBlockDirect.posEdgeLit pairIndex.val row.val col.val)
        (ProfileBlockDirect.blockDifferenceClause
          pairIndex.val leftBlocks rightBlocks) :=
      profileDirect_posEdgeLit_mem_blockDifferenceClause_of_same
        pairIndex.val leftBlocks rightBlocks row col hdiff
    have hneg :=
      valuation_neg_of_not_satisfies_clause hnotSat hmem
    have hnotVal :
        ¬ G.profileBlockValuation
          (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val col.val) := by
      simpa [ProfileBlockDirect.posEdgeLit, Sat.Valuation.neg] using hneg
    exact hnotVal ((G.profileBlockValuation_edgeVarIndex pairIndex row col).mpr hedge)
  · intro hdiff
    have hmem : List.Mem
        (ProfileBlockDirect.negEdgeLit pairIndex.val row.val col.val)
        (ProfileBlockDirect.blockDifferenceClause
          pairIndex.val leftBlocks rightBlocks) :=
      profileDirect_negEdgeLit_mem_blockDifferenceClause_of_diff
        pairIndex.val leftBlocks rightBlocks row col hdiff
    have hneg :=
      valuation_neg_of_not_satisfies_clause hnotSat hmem
    have hval :
        G.profileBlockValuation
          (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val col.val) := by
      simpa [ProfileBlockDirect.negEdgeLit, Sat.Valuation.neg] using hneg
    exact (G.profileBlockValuation_edgeVarIndex pairIndex row col).mp hval

private theorem OctonaryFourTwoProfileGraph.edgeByPairIndex_iff_of_not_satisfies_commonBlockDifferenceClause
    (G : OctonaryFourTwoProfileGraph)
    (blocks2 blocks3 : List (List Nat))
    (hnotSat :
      ¬ Sat.Valuation.satisfies G.profileBlockValuation
        (ProfileBlockDirect.commonBlockDifferenceClause blocks2 blocks3))
    (pairIndex : Fin 6)
    (row col : Fin 8) :
    G.edgeByPairIndex pairIndex.val row.val col.val ↔
      ProfileBlockDirect.blockIndex
          (profileDirectCommonLeftBlocks blocks2 blocks3 pairIndex) row.val ≠
        ProfileBlockDirect.blockIndex
          (profileDirectCommonRightBlocks blocks2 blocks3 pairIndex) col.val := by
  constructor
  · intro hedge
    by_contra hdiff
    have hmem : List.Mem
        (ProfileBlockDirect.posEdgeLit pairIndex.val row.val col.val)
        (ProfileBlockDirect.commonBlockDifferenceClause blocks2 blocks3) :=
      profileDirect_posEdgeLit_mem_commonBlockDifferenceClause_of_same
        blocks2 blocks3 pairIndex row col hdiff
    have hneg :=
      valuation_neg_of_not_satisfies_clause hnotSat hmem
    have hnotVal :
        ¬ G.profileBlockValuation
          (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val col.val) := by
      simpa [ProfileBlockDirect.posEdgeLit, Sat.Valuation.neg] using hneg
    exact hnotVal ((G.profileBlockValuation_edgeVarIndex pairIndex row col).mpr hedge)
  · intro hdiff
    have hmem : List.Mem
        (ProfileBlockDirect.negEdgeLit pairIndex.val row.val col.val)
        (ProfileBlockDirect.commonBlockDifferenceClause blocks2 blocks3) :=
      profileDirect_negEdgeLit_mem_commonBlockDifferenceClause_of_diff
        blocks2 blocks3 pairIndex row col hdiff
    have hneg :=
      valuation_neg_of_not_satisfies_clause hnotSat hmem
    have hval :
        G.profileBlockValuation
          (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val col.val) := by
      simpa [ProfileBlockDirect.negEdgeLit, Sat.Valuation.neg] using hneg
    exact (G.profileBlockValuation_edgeVarIndex pairIndex row col).mp hval

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_rowExactDegreeClauses_of_count
    (G : OctonaryFourTwoProfileGraph)
    (pairIndex : Fin 6)
    (row : Fin 8)
    (f : Fin 8 → Bool)
    (hvar : ∀ col : Fin 8,
      G.profileBlockValuation
          (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val col.val) ↔
        f col = true)
    (hcount : (Finset.univ.filter (fun col : Fin 8 => f col = true)).card =
      ProfileBlockDirect.rowBound row.val) :
    Sat.Valuation.satisfies_fmla G.profileBlockValuation
      (ProfileBlockDirect.exactDegreeClauses
        (ProfileBlockDirect.rowLits pairIndex.val row.val)
        (ProfileBlockDirect.rowBound row.val)) := by
  have hlist :
      ([f 0, f 1, f 2, f 3, f 4, f 5, f 6, f 7].filter
          (fun b => b = true)).length =
        ProfileBlockDirect.rowBound row.val := by
    simpa [hcount] using boolFin8_true_count_eq_card_filter f
  by_cases hrow : row.val < 6
  · have hcount5 :
        ([f 0, f 1, f 2, f 3, f 4, f 5, f 6, f 7].filter
            (fun b => b = true)).length = 5 := by
      simpa [ProfileBlockDirect.rowBound, hrow] using hlist
    simpa [ProfileBlockDirect.rowLits, ProfileBlockDirect.posEdgeLit,
      ProfileBlockDirect.q, ProfileBlockDirect.rowBound, hrow] using
      valuation_satisfies_exactDegreeClauses_eight_of_count_five
        G.profileBlockValuation
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 0)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 1)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 2)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 3)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 4)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 5)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 6)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 7)
        (f 0) (f 1) (f 2) (f 3) (f 4) (f 5) (f 6) (f 7)
        (hvar 0) (hvar 1) (hvar 2) (hvar 3)
        (hvar 4) (hvar 5) (hvar 6) (hvar 7)
        hcount5
  · have hcount6 :
        ([f 0, f 1, f 2, f 3, f 4, f 5, f 6, f 7].filter
            (fun b => b = true)).length = 6 := by
      simpa [ProfileBlockDirect.rowBound, hrow] using hlist
    simpa [ProfileBlockDirect.rowLits, ProfileBlockDirect.posEdgeLit,
      ProfileBlockDirect.q, ProfileBlockDirect.rowBound, hrow] using
      valuation_satisfies_exactDegreeClauses_eight_of_count_six
        G.profileBlockValuation
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 0)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 1)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 2)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 3)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 4)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 5)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 6)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 7)
        (f 0) (f 1) (f 2) (f 3) (f 4) (f 5) (f 6) (f 7)
        (hvar 0) (hvar 1) (hvar 2) (hvar 3)
        (hvar 4) (hvar 5) (hvar 6) (hvar 7)
        hcount6

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_colExactDegreeClauses_of_count
    (G : OctonaryFourTwoProfileGraph)
    (pairIndex : Fin 6)
    (col : Fin 8)
    (f : Fin 8 → Bool)
    (hvar : ∀ row : Fin 8,
      G.profileBlockValuation
          (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val col.val) ↔
        f row = true)
    (hcount : (Finset.univ.filter (fun row : Fin 8 => f row = true)).card =
      ProfileBlockDirect.rowBound col.val) :
    Sat.Valuation.satisfies_fmla G.profileBlockValuation
      (ProfileBlockDirect.exactDegreeClauses
        (ProfileBlockDirect.colLits pairIndex.val col.val)
        (ProfileBlockDirect.rowBound col.val)) := by
  have hlist :
      ([f 0, f 1, f 2, f 3, f 4, f 5, f 6, f 7].filter
          (fun b => b = true)).length =
        ProfileBlockDirect.rowBound col.val := by
    simpa [hcount] using boolFin8_true_count_eq_card_filter f
  by_cases hcol : col.val < 6
  · have hcount5 :
        ([f 0, f 1, f 2, f 3, f 4, f 5, f 6, f 7].filter
            (fun b => b = true)).length = 5 := by
      simpa [ProfileBlockDirect.rowBound, hcol] using hlist
    simpa [ProfileBlockDirect.colLits, ProfileBlockDirect.posEdgeLit,
      ProfileBlockDirect.q, ProfileBlockDirect.rowBound, hcol] using
      valuation_satisfies_exactDegreeClauses_eight_of_count_five
        G.profileBlockValuation
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 0 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 1 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 2 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 3 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 4 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 5 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 6 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 7 col.val)
        (f 0) (f 1) (f 2) (f 3) (f 4) (f 5) (f 6) (f 7)
        (hvar 0) (hvar 1) (hvar 2) (hvar 3)
        (hvar 4) (hvar 5) (hvar 6) (hvar 7)
        hcount5
  · have hcount6 :
        ([f 0, f 1, f 2, f 3, f 4, f 5, f 6, f 7].filter
            (fun b => b = true)).length = 6 := by
      simpa [ProfileBlockDirect.rowBound, hcol] using hlist
    simpa [ProfileBlockDirect.colLits, ProfileBlockDirect.posEdgeLit,
      ProfileBlockDirect.q, ProfileBlockDirect.rowBound, hcol] using
      valuation_satisfies_exactDegreeClauses_eight_of_count_six
        G.profileBlockValuation
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 0 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 1 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 2 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 3 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 4 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 5 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 6 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 7 col.val)
        (f 0) (f 1) (f 2) (f 3) (f 4) (f 5) (f 6) (f 7)
        (hvar 0) (hvar 1) (hvar 2) (hvar 3)
        (hvar 4) (hvar 5) (hvar 6) (hvar 7)
        hcount6

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_rowAtLeastDegreeClauses_of_count_ge
    (G : OctonaryFourTwoProfileGraph)
    (pairIndex : Fin 6)
    (row : Fin 8)
    (f : Fin 8 → Bool)
    (hvar : ∀ col : Fin 8,
      G.profileBlockValuation
          (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val col.val) ↔
        f col = true)
    (hcount : ProfileBlockDirect.rowBound row.val ≤
      (Finset.univ.filter (fun col : Fin 8 => f col = true)).card) :
    Sat.Valuation.satisfies_fmla G.profileBlockValuation
      (ProfileBlockDirect.atLeastDegreeClauses
        (ProfileBlockDirect.rowLits pairIndex.val row.val)
        (ProfileBlockDirect.rowBound row.val)) := by
  have hlist_eq :
      ([f 0, f 1, f 2, f 3, f 4, f 5, f 6, f 7].filter
          (fun b => b = true)).length =
        (Finset.univ.filter (fun col : Fin 8 => f col = true)).card :=
    boolFin8_true_count_eq_card_filter f
  have hlist :
      ProfileBlockDirect.rowBound row.val ≤
        ([f 0, f 1, f 2, f 3, f 4, f 5, f 6, f 7].filter
          (fun b => b = true)).length := by
    rw [hlist_eq]
    exact hcount
  by_cases hrow : row.val < 6
  · have hcount5 :
        5 ≤ ([f 0, f 1, f 2, f 3, f 4, f 5, f 6, f 7].filter
            (fun b => b = true)).length := by
      simpa [ProfileBlockDirect.rowBound, hrow] using hlist
    simpa [ProfileBlockDirect.rowLits, ProfileBlockDirect.posEdgeLit,
      ProfileBlockDirect.q, ProfileBlockDirect.rowBound, hrow] using
      valuation_satisfies_atLeastDegreeClauses_eight_of_count_ge_five
        G.profileBlockValuation
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 0)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 1)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 2)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 3)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 4)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 5)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 6)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 7)
        (f 0) (f 1) (f 2) (f 3) (f 4) (f 5) (f 6) (f 7)
        (hvar 0) (hvar 1) (hvar 2) (hvar 3)
        (hvar 4) (hvar 5) (hvar 6) (hvar 7)
        hcount5
  · have hcount6 :
        6 ≤ ([f 0, f 1, f 2, f 3, f 4, f 5, f 6, f 7].filter
            (fun b => b = true)).length := by
      simpa [ProfileBlockDirect.rowBound, hrow] using hlist
    simpa [ProfileBlockDirect.rowLits, ProfileBlockDirect.posEdgeLit,
      ProfileBlockDirect.q, ProfileBlockDirect.rowBound, hrow] using
      valuation_satisfies_atLeastDegreeClauses_eight_of_count_ge_six
        G.profileBlockValuation
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 0)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 1)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 2)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 3)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 4)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 5)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 6)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val 7)
        (f 0) (f 1) (f 2) (f 3) (f 4) (f 5) (f 6) (f 7)
        (hvar 0) (hvar 1) (hvar 2) (hvar 3)
        (hvar 4) (hvar 5) (hvar 6) (hvar 7)
        hcount6

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_colAtLeastDegreeClauses_of_count_ge
    (G : OctonaryFourTwoProfileGraph)
    (pairIndex : Fin 6)
    (col : Fin 8)
    (f : Fin 8 → Bool)
    (hvar : ∀ row : Fin 8,
      G.profileBlockValuation
          (ProfileBlockDirect.edgeVarIndex pairIndex.val row.val col.val) ↔
        f row = true)
    (hcount : ProfileBlockDirect.rowBound col.val ≤
      (Finset.univ.filter (fun row : Fin 8 => f row = true)).card) :
    Sat.Valuation.satisfies_fmla G.profileBlockValuation
      (ProfileBlockDirect.atLeastDegreeClauses
        (ProfileBlockDirect.colLits pairIndex.val col.val)
        (ProfileBlockDirect.rowBound col.val)) := by
  have hlist_eq :
      ([f 0, f 1, f 2, f 3, f 4, f 5, f 6, f 7].filter
          (fun b => b = true)).length =
        (Finset.univ.filter (fun row : Fin 8 => f row = true)).card :=
    boolFin8_true_count_eq_card_filter f
  have hlist :
      ProfileBlockDirect.rowBound col.val ≤
        ([f 0, f 1, f 2, f 3, f 4, f 5, f 6, f 7].filter
          (fun b => b = true)).length := by
    rw [hlist_eq]
    exact hcount
  by_cases hcol : col.val < 6
  · have hcount5 :
        5 ≤ ([f 0, f 1, f 2, f 3, f 4, f 5, f 6, f 7].filter
            (fun b => b = true)).length := by
      simpa [ProfileBlockDirect.rowBound, hcol] using hlist
    simpa [ProfileBlockDirect.colLits, ProfileBlockDirect.posEdgeLit,
      ProfileBlockDirect.q, ProfileBlockDirect.rowBound, hcol] using
      valuation_satisfies_atLeastDegreeClauses_eight_of_count_ge_five
        G.profileBlockValuation
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 0 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 1 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 2 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 3 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 4 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 5 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 6 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 7 col.val)
        (f 0) (f 1) (f 2) (f 3) (f 4) (f 5) (f 6) (f 7)
        (hvar 0) (hvar 1) (hvar 2) (hvar 3)
        (hvar 4) (hvar 5) (hvar 6) (hvar 7)
        hcount5
  · have hcount6 :
        6 ≤ ([f 0, f 1, f 2, f 3, f 4, f 5, f 6, f 7].filter
            (fun b => b = true)).length := by
      simpa [ProfileBlockDirect.rowBound, hcol] using hlist
    simpa [ProfileBlockDirect.colLits, ProfileBlockDirect.posEdgeLit,
      ProfileBlockDirect.q, ProfileBlockDirect.rowBound, hcol] using
      valuation_satisfies_atLeastDegreeClauses_eight_of_count_ge_six
        G.profileBlockValuation
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 0 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 1 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 2 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 3 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 4 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 5 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 6 col.val)
        (ProfileBlockDirect.edgeVarIndex pairIndex.val 7 col.val)
        (f 0) (f 1) (f 2) (f 3) (f 4) (f 5) (f 6) (f 7)
        (hvar 0) (hvar 1) (hvar 2) (hvar 3)
        (hvar 4) (hvar 5) (hvar 6) (hvar 7)
        hcount6

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_rowExactDegreeClauses
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42)
    (pairIndex : Fin 6)
    (row : Fin 8) :
    Sat.Valuation.satisfies_fmla G.profileBlockValuation
      (ProfileBlockDirect.exactDegreeClauses
        (ProfileBlockDirect.rowLits pairIndex.val row.val)
        (ProfileBlockDirect.rowBound row.val)) := by
  fin_cases pairIndex
  · apply G.profileBlockValuation_satisfies_rowExactDegreeClauses_of_count
      (pairIndex := (0 : Fin 6)) (row := row) (f := fun col => G.E01 row col)
    · intro col
      simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
        G.profileBlockValuation_edgeVarIndex (0 : Fin 6) row col
    · rw [profileDirect_rowBound_eq_canonicalBalancedMissingLower row]
      simpa [boolRowSet8] using
        profileGraph_row01_tight_of_canonicalBalanced_exact42 G hbal hexact row
  · apply G.profileBlockValuation_satisfies_rowExactDegreeClauses_of_count
      (pairIndex := (1 : Fin 6)) (row := row) (f := fun col => G.E02 row col)
    · intro col
      simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
        G.profileBlockValuation_edgeVarIndex (1 : Fin 6) row col
    · rw [profileDirect_rowBound_eq_canonicalBalancedMissingLower row]
      simpa [boolRowSet8] using
        profileGraph_row02_tight_of_canonicalBalanced_exact42 G hbal hexact row
  · apply G.profileBlockValuation_satisfies_rowExactDegreeClauses_of_count
      (pairIndex := (2 : Fin 6)) (row := row) (f := fun col => G.E03 row col)
    · intro col
      simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
        G.profileBlockValuation_edgeVarIndex (2 : Fin 6) row col
    · rw [profileDirect_rowBound_eq_canonicalBalancedMissingLower row]
      simpa [boolRowSet8] using
        profileGraph_row03_tight_of_canonicalBalanced_exact42 G hbal hexact row
  · apply G.profileBlockValuation_satisfies_rowExactDegreeClauses_of_count
      (pairIndex := (3 : Fin 6)) (row := row) (f := fun col => G.E12 row col)
    · intro col
      simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
        G.profileBlockValuation_edgeVarIndex (3 : Fin 6) row col
    · rw [profileDirect_rowBound_eq_canonicalBalancedMissingLower row]
      simpa [boolRowSet8] using
        profileGraph_row12_tight_of_canonicalBalanced_exact42 G hbal hexact row
  · apply G.profileBlockValuation_satisfies_rowExactDegreeClauses_of_count
      (pairIndex := (4 : Fin 6)) (row := row) (f := fun col => G.E13 row col)
    · intro col
      simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
        G.profileBlockValuation_edgeVarIndex (4 : Fin 6) row col
    · rw [profileDirect_rowBound_eq_canonicalBalancedMissingLower row]
      simpa [boolRowSet8] using
        profileGraph_row13_tight_of_canonicalBalanced_exact42 G hbal hexact row
  · apply G.profileBlockValuation_satisfies_rowExactDegreeClauses_of_count
      (pairIndex := (5 : Fin 6)) (row := row) (f := fun col => G.E23 row col)
    · intro col
      simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
        G.profileBlockValuation_edgeVarIndex (5 : Fin 6) row col
    · rw [profileDirect_rowBound_eq_canonicalBalancedMissingLower row]
      simpa [boolRowSet8] using
        profileGraph_row23_tight_of_canonicalBalanced_exact42 G hbal hexact row

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_colExactDegreeClauses
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42)
    (pairIndex : Fin 6)
    (col : Fin 8) :
    Sat.Valuation.satisfies_fmla G.profileBlockValuation
      (ProfileBlockDirect.exactDegreeClauses
        (ProfileBlockDirect.colLits pairIndex.val col.val)
        (ProfileBlockDirect.rowBound col.val)) := by
  fin_cases pairIndex
  · apply G.profileBlockValuation_satisfies_colExactDegreeClauses_of_count
      (pairIndex := (0 : Fin 6)) (col := col) (f := fun row => G.E01 row col)
    · intro row
      simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
        G.profileBlockValuation_edgeVarIndex (0 : Fin 6) row col
    · rw [profileDirect_rowBound_eq_canonicalBalancedMissingLower col]
      simpa [boolColSet8] using
        profileGraph_col01_tight_of_canonicalBalanced_exact42 G hbal hexact col
  · apply G.profileBlockValuation_satisfies_colExactDegreeClauses_of_count
      (pairIndex := (1 : Fin 6)) (col := col) (f := fun row => G.E02 row col)
    · intro row
      simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
        G.profileBlockValuation_edgeVarIndex (1 : Fin 6) row col
    · rw [profileDirect_rowBound_eq_canonicalBalancedMissingLower col]
      simpa [boolColSet8] using
        profileGraph_col02_tight_of_canonicalBalanced_exact42 G hbal hexact col
  · apply G.profileBlockValuation_satisfies_colExactDegreeClauses_of_count
      (pairIndex := (2 : Fin 6)) (col := col) (f := fun row => G.E03 row col)
    · intro row
      simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
        G.profileBlockValuation_edgeVarIndex (2 : Fin 6) row col
    · rw [profileDirect_rowBound_eq_canonicalBalancedMissingLower col]
      simpa [boolColSet8] using
        profileGraph_col03_tight_of_canonicalBalanced_exact42 G hbal hexact col
  · apply G.profileBlockValuation_satisfies_colExactDegreeClauses_of_count
      (pairIndex := (3 : Fin 6)) (col := col) (f := fun row => G.E12 row col)
    · intro row
      simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
        G.profileBlockValuation_edgeVarIndex (3 : Fin 6) row col
    · rw [profileDirect_rowBound_eq_canonicalBalancedMissingLower col]
      simpa [boolColSet8] using
        profileGraph_col12_tight_of_canonicalBalanced_exact42 G hbal hexact col
  · apply G.profileBlockValuation_satisfies_colExactDegreeClauses_of_count
      (pairIndex := (4 : Fin 6)) (col := col) (f := fun row => G.E13 row col)
    · intro row
      simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
        G.profileBlockValuation_edgeVarIndex (4 : Fin 6) row col
    · rw [profileDirect_rowBound_eq_canonicalBalancedMissingLower col]
      simpa [boolColSet8] using
        profileGraph_col13_tight_of_canonicalBalanced_exact42 G hbal hexact col
  · apply G.profileBlockValuation_satisfies_colExactDegreeClauses_of_count
      (pairIndex := (5 : Fin 6)) (col := col) (f := fun row => G.E23 row col)
    · intro row
      simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
        G.profileBlockValuation_edgeVarIndex (5 : Fin 6) row col
    · rw [profileDirect_rowBound_eq_canonicalBalancedMissingLower col]
      simpa [boolColSet8] using
        profileGraph_col23_tight_of_canonicalBalanced_exact42 G hbal hexact col

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_rowAtLeastDegreeClauses
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (pairIndex : Fin 6)
    (row : Fin 8) :
    Sat.Valuation.satisfies_fmla G.profileBlockValuation
      (ProfileBlockDirect.atLeastDegreeClauses
        (ProfileBlockDirect.rowLits pairIndex.val row.val)
        (ProfileBlockDirect.rowBound row.val)) := by
  fin_cases pairIndex
  · apply G.profileBlockValuation_satisfies_rowAtLeastDegreeClauses_of_count_ge
      (pairIndex := (0 : Fin 6)) (row := row) (f := fun col => G.E01 row col)
    · intro col
      simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
        G.profileBlockValuation_edgeVarIndex (0 : Fin 6) row col
    · rw [profileDirect_rowBound_eq_canonicalBalancedMissingLower row]
      have h := G.row01 row
      rw [hbal.1 row] at h
      simpa [boolRowSet8] using h
  · apply G.profileBlockValuation_satisfies_rowAtLeastDegreeClauses_of_count_ge
      (pairIndex := (1 : Fin 6)) (row := row) (f := fun col => G.E02 row col)
    · intro col
      simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
        G.profileBlockValuation_edgeVarIndex (1 : Fin 6) row col
    · rw [profileDirect_rowBound_eq_canonicalBalancedMissingLower row]
      have h := G.row02 row
      rw [hbal.1 row] at h
      simpa [boolRowSet8] using h
  · apply G.profileBlockValuation_satisfies_rowAtLeastDegreeClauses_of_count_ge
      (pairIndex := (2 : Fin 6)) (row := row) (f := fun col => G.E03 row col)
    · intro col
      simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
        G.profileBlockValuation_edgeVarIndex (2 : Fin 6) row col
    · rw [profileDirect_rowBound_eq_canonicalBalancedMissingLower row]
      have h := G.row03 row
      rw [hbal.1 row] at h
      simpa [boolRowSet8] using h
  · apply G.profileBlockValuation_satisfies_rowAtLeastDegreeClauses_of_count_ge
      (pairIndex := (3 : Fin 6)) (row := row) (f := fun col => G.E12 row col)
    · intro col
      simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
        G.profileBlockValuation_edgeVarIndex (3 : Fin 6) row col
    · rw [profileDirect_rowBound_eq_canonicalBalancedMissingLower row]
      have h := G.row12 row
      rw [hbal.2.1 row] at h
      simpa [boolRowSet8] using h
  · apply G.profileBlockValuation_satisfies_rowAtLeastDegreeClauses_of_count_ge
      (pairIndex := (4 : Fin 6)) (row := row) (f := fun col => G.E13 row col)
    · intro col
      simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
        G.profileBlockValuation_edgeVarIndex (4 : Fin 6) row col
    · rw [profileDirect_rowBound_eq_canonicalBalancedMissingLower row]
      have h := G.row13 row
      rw [hbal.2.1 row] at h
      simpa [boolRowSet8] using h
  · apply G.profileBlockValuation_satisfies_rowAtLeastDegreeClauses_of_count_ge
      (pairIndex := (5 : Fin 6)) (row := row) (f := fun col => G.E23 row col)
    · intro col
      simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
        G.profileBlockValuation_edgeVarIndex (5 : Fin 6) row col
    · rw [profileDirect_rowBound_eq_canonicalBalancedMissingLower row]
      have h := G.row23 row
      rw [hbal.2.2.1 row] at h
      simpa [boolRowSet8] using h

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_colAtLeastDegreeClauses
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (pairIndex : Fin 6)
    (col : Fin 8) :
    Sat.Valuation.satisfies_fmla G.profileBlockValuation
      (ProfileBlockDirect.atLeastDegreeClauses
        (ProfileBlockDirect.colLits pairIndex.val col.val)
        (ProfileBlockDirect.rowBound col.val)) := by
  fin_cases pairIndex
  · apply G.profileBlockValuation_satisfies_colAtLeastDegreeClauses_of_count_ge
      (pairIndex := (0 : Fin 6)) (col := col) (f := fun row => G.E01 row col)
    · intro row
      simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
        G.profileBlockValuation_edgeVarIndex (0 : Fin 6) row col
    · rw [profileDirect_rowBound_eq_canonicalBalancedMissingLower col]
      have h := G.col01 col
      rw [hbal.2.1 col] at h
      simpa [boolColSet8] using h
  · apply G.profileBlockValuation_satisfies_colAtLeastDegreeClauses_of_count_ge
      (pairIndex := (1 : Fin 6)) (col := col) (f := fun row => G.E02 row col)
    · intro row
      simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
        G.profileBlockValuation_edgeVarIndex (1 : Fin 6) row col
    · rw [profileDirect_rowBound_eq_canonicalBalancedMissingLower col]
      have h := G.col02 col
      rw [hbal.2.2.1 col] at h
      simpa [boolColSet8] using h
  · apply G.profileBlockValuation_satisfies_colAtLeastDegreeClauses_of_count_ge
      (pairIndex := (2 : Fin 6)) (col := col) (f := fun row => G.E03 row col)
    · intro row
      simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
        G.profileBlockValuation_edgeVarIndex (2 : Fin 6) row col
    · rw [profileDirect_rowBound_eq_canonicalBalancedMissingLower col]
      have h := G.col03 col
      rw [hbal.2.2.2 col] at h
      simpa [boolColSet8] using h
  · apply G.profileBlockValuation_satisfies_colAtLeastDegreeClauses_of_count_ge
      (pairIndex := (3 : Fin 6)) (col := col) (f := fun row => G.E12 row col)
    · intro row
      simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
        G.profileBlockValuation_edgeVarIndex (3 : Fin 6) row col
    · rw [profileDirect_rowBound_eq_canonicalBalancedMissingLower col]
      have h := G.col12 col
      rw [hbal.2.2.1 col] at h
      simpa [boolColSet8] using h
  · apply G.profileBlockValuation_satisfies_colAtLeastDegreeClauses_of_count_ge
      (pairIndex := (4 : Fin 6)) (col := col) (f := fun row => G.E13 row col)
    · intro row
      simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
        G.profileBlockValuation_edgeVarIndex (4 : Fin 6) row col
    · rw [profileDirect_rowBound_eq_canonicalBalancedMissingLower col]
      have h := G.col13 col
      rw [hbal.2.2.2 col] at h
      simpa [boolColSet8] using h
  · apply G.profileBlockValuation_satisfies_colAtLeastDegreeClauses_of_count_ge
      (pairIndex := (5 : Fin 6)) (col := col) (f := fun row => G.E23 row col)
    · intro row
      simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
        G.profileBlockValuation_edgeVarIndex (5 : Fin 6) row col
    · rw [profileDirect_rowBound_eq_canonicalBalancedMissingLower col]
      have h := G.col23 col
      rw [hbal.2.2.2 col] at h
      simpa [boolColSet8] using h

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_pairProfileClauses
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42)
    (pairIndex : Fin 6) :
    Sat.Valuation.satisfies_fmla G.profileBlockValuation
      (ProfileBlockDirect.pairProfileClauses pairIndex.val) := by
  constructor
  intro clause hclause
  simp [ProfileBlockDirect.pairProfileClauses, ProfileBlockDirect.q] at hclause
  rcases hclause with hclause | hclause
  · rcases hclause with ⟨row, hrow, hclause⟩
    let row8 : Fin 8 := ⟨row, hrow⟩
    exact (G.profileBlockValuation_satisfies_rowExactDegreeClauses
      hbal hexact pairIndex row8).prop clause (by simpa [row8] using hclause)
  · rcases hclause with ⟨col, hcol, hclause⟩
    let col8 : Fin 8 := ⟨col, hcol⟩
    exact (G.profileBlockValuation_satisfies_colExactDegreeClauses
      hbal hexact pairIndex col8).prop clause (by simpa [col8] using hclause)

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_profileClauses
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42) :
    Sat.Valuation.satisfies_fmla G.profileBlockValuation
      ProfileBlockDirect.profileClauses := by
  constructor
  intro clause hclause
  simp [ProfileBlockDirect.profileClauses] at hclause
  rcases hclause with ⟨pairIndex, hpairIndex, hclause⟩
  let pairIndex6 : Fin 6 := ⟨pairIndex, hpairIndex⟩
  exact (G.profileBlockValuation_satisfies_pairProfileClauses
    hbal hexact pairIndex6).prop clause (by simpa [pairIndex6] using hclause)

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_pairLowerProfileClauses
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (pairIndex : Fin 6) :
    Sat.Valuation.satisfies_fmla G.profileBlockValuation
      (ProfileBlockDirect.pairLowerProfileClauses pairIndex.val) := by
  constructor
  intro clause hclause
  simp [ProfileBlockDirect.pairLowerProfileClauses, ProfileBlockDirect.q] at hclause
  rcases hclause with hclause | hclause
  · rcases hclause with ⟨row, hrow, hclause⟩
    let row8 : Fin 8 := ⟨row, hrow⟩
    exact (G.profileBlockValuation_satisfies_rowAtLeastDegreeClauses
      hbal pairIndex row8).prop clause (by simpa [row8] using hclause)
  · rcases hclause with ⟨col, hcol, hclause⟩
    let col8 : Fin 8 := ⟨col, hcol⟩
    exact (G.profileBlockValuation_satisfies_colAtLeastDegreeClauses
      hbal pairIndex col8).prop clause (by simpa [col8] using hclause)

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_lowerProfileClauses
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced) :
    Sat.Valuation.satisfies_fmla G.profileBlockValuation
      ProfileBlockDirect.lowerProfileClauses := by
  constructor
  intro clause hclause
  simp [ProfileBlockDirect.lowerProfileClauses] at hclause
  rcases hclause with ⟨pairIndex, hpairIndex, hclause⟩
  let pairIndex6 : Fin 6 := ⟨pairIndex, hpairIndex⟩
  exact (G.profileBlockValuation_satisfies_pairLowerProfileClauses
    hbal pairIndex6).prop clause (by simpa [pairIndex6] using hclause)

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_noCliqueClause
    (G : OctonaryFourTwoProfileGraph)
    (a b c d : Fin 8) :
    Sat.Valuation.satisfies G.profileBlockValuation
      [ProfileBlockDirect.negEdgeLit 0 a.val b.val,
       ProfileBlockDirect.negEdgeLit 1 a.val c.val,
       ProfileBlockDirect.negEdgeLit 2 a.val d.val,
       ProfileBlockDirect.negEdgeLit 3 b.val c.val,
       ProfileBlockDirect.negEdgeLit 4 b.val d.val,
       ProfileBlockDirect.negEdgeLit 5 c.val d.val] := by
  intro h01 h02 h03 h12 h13 h23
  have h01' : G.E01 a b = true := by
    simpa [ProfileBlockDirect.negEdgeLit,
      OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
      ((G.profileBlockValuation_edgeVarIndex (0 : Fin 6) a b).mp h01)
  have h02' : G.E02 a c = true := by
    simpa [ProfileBlockDirect.negEdgeLit,
      OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
      ((G.profileBlockValuation_edgeVarIndex (1 : Fin 6) a c).mp h02)
  have h03' : G.E03 a d = true := by
    simpa [ProfileBlockDirect.negEdgeLit,
      OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
      ((G.profileBlockValuation_edgeVarIndex (2 : Fin 6) a d).mp h03)
  have h12' : G.E12 b c = true := by
    simpa [ProfileBlockDirect.negEdgeLit,
      OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
      ((G.profileBlockValuation_edgeVarIndex (3 : Fin 6) b c).mp h12)
  have h13' : G.E13 b d = true := by
    simpa [ProfileBlockDirect.negEdgeLit,
      OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
      ((G.profileBlockValuation_edgeVarIndex (4 : Fin 6) b d).mp h13)
  have h23' : G.E23 c d = true := by
    simpa [ProfileBlockDirect.negEdgeLit,
      OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val] using
      ((G.profileBlockValuation_edgeVarIndex (5 : Fin 6) c d).mp h23)
  exact G.no_clique ⟨a, b, c, d, h01', h02', h03', h12', h13', h23'⟩

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_noCliqueClauses
    (G : OctonaryFourTwoProfileGraph) :
    Sat.Valuation.satisfies_fmla G.profileBlockValuation
      ProfileBlockDirect.noCliqueClauses := by
  constructor
  intro clause hclause
  simp [ProfileBlockDirect.noCliqueClauses, ProfileBlockDirect.q] at hclause
  rcases hclause with ⟨a, ha, b, hb, c, hc, d, hd, rfl⟩
  let a8 : Fin 8 := ⟨a, ha⟩
  let b8 : Fin 8 := ⟨b, hb⟩
  let c8 : Fin 8 := ⟨c, hc⟩
  let d8 : Fin 8 := ⟨d, hd⟩
  simpa [a8, b8, c8, d8] using
    G.profileBlockValuation_satisfies_noCliqueClause a8 b8 c8 d8

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_profileNoCliqueClauses
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42) :
    Sat.Valuation.satisfies_fmla G.profileBlockValuation
      (ProfileBlockDirect.profileClauses ++ ProfileBlockDirect.noCliqueClauses) :=
  valuation_satisfies_fmla_append
    (G.profileBlockValuation_satisfies_profileClauses hbal hexact)
    G.profileBlockValuation_satisfies_noCliqueClauses

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_lowerProfileNoCliqueClauses
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced) :
    Sat.Valuation.satisfies_fmla G.profileBlockValuation
      (ProfileBlockDirect.lowerProfileClauses ++ ProfileBlockDirect.noCliqueClauses) :=
  valuation_satisfies_fmla_append
    (G.profileBlockValuation_satisfies_lowerProfileClauses hbal)
    G.profileBlockValuation_satisfies_noCliqueClauses

private def sameBlockPairValues4
    (block : (i : Fin 4) → Fin 8 → Fin 3)
    (i j : Fin 4) : Finset (Fin 8 × Fin 8) :=
  (Finset.univ : Finset (Fin 8 × Fin 8)).filter
    (fun p => block i p.1 = block j p.2)

private def missingCrossBlockPairs4
    (block : (i : Fin 4) → Fin 8 → Fin 3)
    (i j : Fin 4) : Finset (Fin 8 × Fin 8) :=
  (Finset.univ : Finset (Fin 8 × Fin 8)).filter
    (fun p => block i p.1 ≠ block j p.2)

private def blockFiber4
    (block : (i : Fin 4) → Fin 8 → Fin 3)
    (i : Fin 4)
    (k : Fin 3) : Finset (Fin 8) :=
  Finset.univ.filter (fun a => block i a = k)

private def missingCrossBlockPairs8
    (left right : Fin 8 → Fin 3) : Finset (Fin 8 × Fin 8) :=
  (Finset.univ : Finset (Fin 8 × Fin 8)).filter
    (fun p => left p.1 ≠ right p.2)

private structure ThreeThreeTwoBlock8 where
  block : Fin 8 → Fin 3
  block0_card : (Finset.univ.filter (fun a => block a = 0)).card = 3
  block1_card : (Finset.univ.filter (fun a => block a = 1)).card = 3

private def ThreeThreeTwoBlock8.crossPairs
    (left right : ThreeThreeTwoBlock8) : Finset (Fin 8 × Fin 8) :=
  missingCrossBlockPairs8 left.block right.block

private def canonicalThreeThreeTwoBlockMap8 (a : Fin 8) : Fin 3 :=
  if a.val < 3 then 0 else if a.val < 6 then 1 else 2

private def canonicalThreeThreeTwoBlock8 : ThreeThreeTwoBlock8 where
  block := canonicalThreeThreeTwoBlockMap8
  block0_card := by covering_decide
  block1_card := by covering_decide

private theorem canonicalBalancedExcess8_eq_if_canonicalBlock
    (a : Fin 8) :
    canonicalBalancedExcess8 a =
      if canonicalThreeThreeTwoBlock8.block a = 2 then 0 else 1 := by
  covering_decide +revert

private structure CanonicalLowThreeThreeTwoBlock8 where
  base : ThreeThreeTwoBlock8
  block2_iff :
    ∀ a : Fin 8, base.block a = 2 ↔ canonicalThreeThreeTwoBlock8.block a = 2

private theorem profileDirect_blockIndex_lt_three
    (blocks : List (List Nat))
    (symbol : Nat) :
    ProfileBlockDirect.blockIndex blocks symbol < 3 := by
  unfold ProfileBlockDirect.blockIndex
  split
  · split
    · simp
    · split <;> simp
  · simp

private def profileDirectBlockMap8
    (blocks : List (List Nat))
    (a : Fin 8) : Fin 3 :=
  ⟨ProfileBlockDirect.blockIndex blocks a.val,
    profileDirect_blockIndex_lt_three blocks a.val⟩

private theorem profileDirectBlockMap8_ne_iff
    (leftBlocks rightBlocks : List (List Nat))
    (a b : Fin 8) :
    profileDirectBlockMap8 leftBlocks a ≠
        profileDirectBlockMap8 rightBlocks b ↔
      ProfileBlockDirect.blockIndex leftBlocks a.val ≠
        ProfileBlockDirect.blockIndex rightBlocks b.val := by
  simp [profileDirectBlockMap8, Fin.ext_iff]

private theorem profileDirectBlockMap8_block0_card_highPartitionsLabeled_get
    (idx : Fin ProfileBlockDirect.highPartitionsLabeled.length) :
    (Finset.univ.filter
      (fun a : Fin 8 =>
        profileDirectBlockMap8
          (ProfileBlockDirect.highPartitionsLabeled.get idx) a = 0)).card = 3 := by
  covering_decide +revert

private theorem profileDirectBlockMap8_block1_card_highPartitionsLabeled_get
    (idx : Fin ProfileBlockDirect.highPartitionsLabeled.length) :
    (Finset.univ.filter
      (fun a : Fin 8 =>
        profileDirectBlockMap8
          (ProfileBlockDirect.highPartitionsLabeled.get idx) a = 1)).card = 3 := by
  covering_decide +revert

private theorem profileDirectBlockMap8_block2_iff_highPartitionsLabeled_get
    (idx : Fin ProfileBlockDirect.highPartitionsLabeled.length)
    (a : Fin 8) :
    profileDirectBlockMap8
        (ProfileBlockDirect.highPartitionsLabeled.get idx) a = 2 ↔
      canonicalThreeThreeTwoBlock8.block a = 2 := by
  covering_decide +revert

private theorem profileDirect_highPartitionsLabeled_mem_ordered
    (a b : List Nat)
    (h : (a, b) ∈ ProfileBlockDirect.highPartitionsUnlabeled) :
    [a, b, [6, 7]] ∈ ProfileBlockDirect.highPartitionsLabeled := by
  simp [ProfileBlockDirect.highPartitionsLabeled]
  exact ⟨a, b, h, Or.inl ⟨rfl, rfl⟩⟩

private theorem profileDirect_highPartitionsLabeled_mem_swapped
    (a b : List Nat)
    (h : (a, b) ∈ ProfileBlockDirect.highPartitionsUnlabeled) :
    [b, a, [6, 7]] ∈ ProfileBlockDirect.highPartitionsLabeled := by
  simp [ProfileBlockDirect.highPartitionsLabeled]
  exact ⟨a, b, h, Or.inr ⟨rfl, rfl⟩⟩

private def profileDirectCanonicalLowBlock8
    (blocks : List (List Nat))
    (hblocks : blocks ∈ ProfileBlockDirect.highPartitionsLabeled) :
    CanonicalLowThreeThreeTwoBlock8 where
  base :=
    { block := profileDirectBlockMap8 blocks
      block0_card := by
        obtain ⟨idx, hidx⟩ := List.get_of_mem hblocks
        subst blocks
        exact profileDirectBlockMap8_block0_card_highPartitionsLabeled_get idx
      block1_card := by
        obtain ⟨idx, hidx⟩ := List.get_of_mem hblocks
        subst blocks
        exact profileDirectBlockMap8_block1_card_highPartitionsLabeled_get idx }
  block2_iff := by
    obtain ⟨idx, hidx⟩ := List.get_of_mem hblocks
    intro a
    subst blocks
    exact profileDirectBlockMap8_block2_iff_highPartitionsLabeled_get idx a

private theorem profileDirect_canonicalBlocks_mem_highPartitionsLabeled :
    ProfileBlockDirect.canonicalBlocks ∈
      ProfileBlockDirect.highPartitionsLabeled := by
  covering_decide

private theorem boolEdgeSet8_eq_profileDirect_crossPairs
    (E : Fin 8 → Fin 8 → Bool)
    (leftBlocks rightBlocks : List (List Nat))
    (hleft : leftBlocks ∈ ProfileBlockDirect.highPartitionsLabeled)
    (hright : rightBlocks ∈ ProfileBlockDirect.highPartitionsLabeled)
    (hcross : ∀ row col : Fin 8,
      E row col = true ↔
        ProfileBlockDirect.blockIndex leftBlocks row.val ≠
          ProfileBlockDirect.blockIndex rightBlocks col.val) :
    boolEdgeSet8 E =
      ThreeThreeTwoBlock8.crossPairs
        (profileDirectCanonicalLowBlock8 leftBlocks hleft).base
        (profileDirectCanonicalLowBlock8 rightBlocks hright).base := by
  ext p
  rcases p with ⟨row, col⟩
  have hblock :
      (profileDirectCanonicalLowBlock8 leftBlocks hleft).base.block row ≠
          (profileDirectCanonicalLowBlock8 rightBlocks hright).base.block col ↔
        ProfileBlockDirect.blockIndex leftBlocks row.val ≠
          ProfileBlockDirect.blockIndex rightBlocks col.val := by
    change profileDirectBlockMap8 leftBlocks row ≠
        profileDirectBlockMap8 rightBlocks col ↔
      ProfileBlockDirect.blockIndex leftBlocks row.val ≠
        ProfileBlockDirect.blockIndex rightBlocks col.val
    exact profileDirectBlockMap8_ne_iff leftBlocks rightBlocks row col
  simpa [boolEdgeSet8, ThreeThreeTwoBlock8.crossPairs,
    missingCrossBlockPairs8] using (hcross row col).trans hblock.symm

private def OctonaryFourTwoProfileGraph.E01HasThreeThreeTwoBlockForm
    (G : OctonaryFourTwoProfileGraph) : Prop :=
  ∃ left right : ThreeThreeTwoBlock8,
    boolEdgeSet8 G.E01 = ThreeThreeTwoBlock8.crossPairs left right

private def OctonaryFourTwoProfileGraph.E01HasCanonicalLowThreeThreeTwoBlockForm
    (G : OctonaryFourTwoProfileGraph) : Prop :=
  ∃ left right : CanonicalLowThreeThreeTwoBlock8,
    boolEdgeSet8 G.E01 = ThreeThreeTwoBlock8.crossPairs left.base right.base

private theorem OctonaryFourTwoProfileGraph.E01HasCanonicalLowThreeThreeTwoBlockForm_of_profileDirect_cross
    (G : OctonaryFourTwoProfileGraph)
    (leftBlocks rightBlocks : List (List Nat))
    (hleft : leftBlocks ∈ ProfileBlockDirect.highPartitionsLabeled)
    (hright : rightBlocks ∈ ProfileBlockDirect.highPartitionsLabeled)
    (hcross : ∀ row col : Fin 8,
      G.edgeByPairIndex 0 row.val col.val ↔
        ProfileBlockDirect.blockIndex leftBlocks row.val ≠
          ProfileBlockDirect.blockIndex rightBlocks col.val) :
    G.E01HasCanonicalLowThreeThreeTwoBlockForm := by
  let left := profileDirectCanonicalLowBlock8 leftBlocks hleft
  let right := profileDirectCanonicalLowBlock8 rightBlocks hright
  refine ⟨left, right, ?_⟩
  ext p
  rcases p with ⟨row, col⟩
  have hcross' := hcross row col
  have hblock :
      left.base.block row ≠ right.base.block col ↔
        ProfileBlockDirect.blockIndex leftBlocks row.val ≠
          ProfileBlockDirect.blockIndex rightBlocks col.val := by
    change profileDirectBlockMap8 leftBlocks row ≠
        profileDirectBlockMap8 rightBlocks col ↔
      ProfileBlockDirect.blockIndex leftBlocks row.val ≠
        ProfileBlockDirect.blockIndex rightBlocks col.val
    exact profileDirectBlockMap8_ne_iff leftBlocks rightBlocks row col
  simpa [boolEdgeSet8, ThreeThreeTwoBlock8.crossPairs,
    missingCrossBlockPairs8, OctonaryFourTwoProfileGraph.edgeByPairIndex,
    fin8OfNatMod_val] using hcross'.trans hblock.symm

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_e01NotBlockClause
    (G : OctonaryFourTwoProfileGraph)
    (hnotBlock : ¬ G.E01HasCanonicalLowThreeThreeTwoBlockForm)
    (leftBlocks rightBlocks : List (List Nat))
    (hleft : leftBlocks ∈ ProfileBlockDirect.highPartitionsLabeled)
    (hright : rightBlocks ∈ ProfileBlockDirect.highPartitionsLabeled) :
    Sat.Valuation.satisfies G.profileBlockValuation
      (ProfileBlockDirect.blockDifferenceClause 0 leftBlocks rightBlocks) := by
  apply G.profileBlockValuation_satisfies_blockDifferenceClause_of_not_cross
    (pairIndex := (0 : Fin 6))
  intro hcross
  exact hnotBlock
    (G.E01HasCanonicalLowThreeThreeTwoBlockForm_of_profileDirect_cross
      leftBlocks rightBlocks hleft hright hcross)

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_e01NotBlockClauses
    (G : OctonaryFourTwoProfileGraph)
    (hnotBlock : ¬ G.E01HasCanonicalLowThreeThreeTwoBlockForm) :
    Sat.Valuation.satisfies_fmla G.profileBlockValuation
      ProfileBlockDirect.e01NotBlockClauses := by
  constructor
  intro clause hclause
  simp [ProfileBlockDirect.e01NotBlockClauses] at hclause
  rcases hclause with
    ⟨rowA, rowB, hrowHigh, colA, colB, hcolHigh, hclause⟩
  rcases hclause with rfl | rfl | rfl | rfl
  · exact G.profileBlockValuation_satisfies_e01NotBlockClause hnotBlock
      [rowA, rowB, [6, 7]] [colA, colB, [6, 7]]
      (profileDirect_highPartitionsLabeled_mem_ordered rowA rowB hrowHigh)
      (profileDirect_highPartitionsLabeled_mem_ordered colA colB hcolHigh)
  · exact G.profileBlockValuation_satisfies_e01NotBlockClause hnotBlock
      [rowA, rowB, [6, 7]] [colB, colA, [6, 7]]
      (profileDirect_highPartitionsLabeled_mem_ordered rowA rowB hrowHigh)
      (profileDirect_highPartitionsLabeled_mem_swapped colA colB hcolHigh)
  · exact G.profileBlockValuation_satisfies_e01NotBlockClause hnotBlock
      [rowB, rowA, [6, 7]] [colA, colB, [6, 7]]
      (profileDirect_highPartitionsLabeled_mem_swapped rowA rowB hrowHigh)
      (profileDirect_highPartitionsLabeled_mem_ordered colA colB hcolHigh)
  · exact G.profileBlockValuation_satisfies_e01NotBlockClause hnotBlock
      [rowB, rowA, [6, 7]] [colB, colA, [6, 7]]
      (profileDirect_highPartitionsLabeled_mem_swapped rowA rowB hrowHigh)
      (profileDirect_highPartitionsLabeled_mem_swapped colA colB hcolHigh)

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_e01NotBlockFormulaDirect
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42)
    (hnotBlock : ¬ G.E01HasCanonicalLowThreeThreeTwoBlockForm) :
    Sat.Valuation.satisfies_fmla G.profileBlockValuation
      ProfileBlockDirect.e01NotBlockFormula := by
  simpa [ProfileBlockDirect.e01NotBlockFormula, List.append_assoc] using
    valuation_satisfies_fmla_append
      (G.profileBlockValuation_satisfies_profileNoCliqueClauses hbal hexact)
      (G.profileBlockValuation_satisfies_e01NotBlockClauses hnotBlock)

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_lowerE01NotBlockFormulaDirect
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hnotBlock : ¬ G.E01HasCanonicalLowThreeThreeTwoBlockForm) :
    Sat.Valuation.satisfies_fmla G.profileBlockValuation
      ProfileBlockDirect.lowerE01NotBlockFormula := by
  simpa [ProfileBlockDirect.lowerE01NotBlockFormula, List.append_assoc] using
    valuation_satisfies_fmla_append
      (G.profileBlockValuation_satisfies_lowerProfileNoCliqueClauses hbal)
      (G.profileBlockValuation_satisfies_e01NotBlockClauses hnotBlock)

private theorem OctonaryFourTwoProfileGraph.E01HasCanonicalLowThreeThreeTwoBlockForm_of_lrat
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42) :
    G.E01HasCanonicalLowThreeThreeTwoBlockForm := by
  by_contra hnotBlock
  have hsatDirect :=
    G.profileBlockValuation_satisfies_e01NotBlockFormulaDirect
      hbal hexact hnotBlock
  have hsatParsed :
      Sat.Valuation.satisfies_fmla G.profileBlockValuation
        profileBlockE01NotBlockFormula := by
    rw [profileBlockE01NotBlockFormula_eq_direct]
    exact hsatDirect
  exact profileBlockE01NotBlockUnsat G.profileBlockValuation hsatParsed

private theorem OctonaryFourTwoProfileGraph.E01HasCanonicalLowThreeThreeTwoBlockForm_of_lower_lrat
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced) :
    G.E01HasCanonicalLowThreeThreeTwoBlockForm := by
  by_contra hnotBlock
  have hsatDirect :=
    G.profileBlockValuation_satisfies_lowerE01NotBlockFormulaDirect
      hbal hnotBlock
  have hsatParsed :
      Sat.Valuation.satisfies_fmla G.profileBlockValuation
        profileBlockLowerE01NotBlockFormula := by
    rw [profileBlockLowerE01NotBlockFormula_eq_direct]
    exact hsatDirect
  exact profileBlockLowerE01NotBlockUnsat G.profileBlockValuation hsatParsed

private def OctonaryFourTwoProfileGraph.E01IsCanonicalThreeThreeTwoBlock
    (G : OctonaryFourTwoProfileGraph) : Prop :=
  boolEdgeSet8 G.E01 =
    ThreeThreeTwoBlock8.crossPairs
      canonicalThreeThreeTwoBlock8 canonicalThreeThreeTwoBlock8

private theorem profileDirect_canonicalBlockIndex_ne_iff
    (a b : Fin 8) :
    ProfileBlockDirect.blockIndex ProfileBlockDirect.canonicalBlocks a.val ≠
        ProfileBlockDirect.blockIndex ProfileBlockDirect.canonicalBlocks b.val ↔
      canonicalThreeThreeTwoBlock8.block a ≠ canonicalThreeThreeTwoBlock8.block b := by
  revert a b
  covering_decide

private theorem OctonaryFourTwoProfileGraph.E01_eq_true_iff_of_canonical
    (G : OctonaryFourTwoProfileGraph)
    (hcanonical : G.E01IsCanonicalThreeThreeTwoBlock)
    (a b : Fin 8) :
    G.E01 a b = true ↔
      canonicalThreeThreeTwoBlock8.block a ≠ canonicalThreeThreeTwoBlock8.block b := by
  have hmem :
      (a, b) ∈ boolEdgeSet8 G.E01 ↔
        (a, b) ∈ ThreeThreeTwoBlock8.crossPairs
          canonicalThreeThreeTwoBlock8 canonicalThreeThreeTwoBlock8 := by
    rw [hcanonical]
  simpa [boolEdgeSet8, ThreeThreeTwoBlock8.crossPairs,
    missingCrossBlockPairs8] using hmem

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_forceCanonicalE01Clause
    (G : OctonaryFourTwoProfileGraph)
    (hcanonical : G.E01IsCanonicalThreeThreeTwoBlock)
    (a b : Fin 8) :
    Sat.Valuation.satisfies G.profileBlockValuation
      (if ProfileBlockDirect.blockIndex ProfileBlockDirect.canonicalBlocks a.val ≠
            ProfileBlockDirect.blockIndex ProfileBlockDirect.canonicalBlocks b.val then
          [ProfileBlockDirect.posEdgeLit 0 a.val b.val]
        else
          [ProfileBlockDirect.negEdgeLit 0 a.val b.val]) := by
  by_cases hdiff :
      ProfileBlockDirect.blockIndex ProfileBlockDirect.canonicalBlocks a.val ≠
        ProfileBlockDirect.blockIndex ProfileBlockDirect.canonicalBlocks b.val
  · simp [hdiff, ProfileBlockDirect.posEdgeLit]
    intro hneg
    have hedge : G.E01 a b = true := by
      rw [G.E01_eq_true_iff_of_canonical hcanonical]
      exact (profileDirect_canonicalBlockIndex_ne_iff a b).mp hdiff
    have hv :
        G.profileBlockValuation (ProfileBlockDirect.edgeVarIndex 0 a.val b.val) := by
      exact (G.profileBlockValuation_edgeVarIndex (0 : Fin 6) a b).mpr
        (by simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex,
          fin8OfNatMod_val] using hedge)
    exact hneg hv
  · simp [hdiff, ProfileBlockDirect.negEdgeLit]
    intro hv
    have hedge : G.E01 a b = true := by
      have h :=
        (G.profileBlockValuation_edgeVarIndex (0 : Fin 6) a b).mp hv
      simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex,
        fin8OfNatMod_val] using h
    have hcanNe :
        canonicalThreeThreeTwoBlock8.block a ≠
          canonicalThreeThreeTwoBlock8.block b :=
      (G.E01_eq_true_iff_of_canonical hcanonical a b).mp hedge
    exact hdiff ((profileDirect_canonicalBlockIndex_ne_iff a b).mpr hcanNe)

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_forceCanonicalE01Clauses
    (G : OctonaryFourTwoProfileGraph)
    (hcanonical : G.E01IsCanonicalThreeThreeTwoBlock) :
    Sat.Valuation.satisfies_fmla G.profileBlockValuation
      (ProfileBlockDirect.forceBlockPairClauses 0
        ProfileBlockDirect.canonicalBlocks ProfileBlockDirect.canonicalBlocks) := by
  constructor
  intro clause hclause
  simp [ProfileBlockDirect.forceBlockPairClauses, ProfileBlockDirect.q] at hclause
  rcases hclause with ⟨a, ha, b, hb, rfl⟩
  let a8 : Fin 8 := ⟨a, ha⟩
  let b8 : Fin 8 := ⟨b, hb⟩
  simpa [a8, b8] using
    G.profileBlockValuation_satisfies_forceCanonicalE01Clause hcanonical a8 b8

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_notGlobalFixedClauses
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42)
    (hcanonical : G.E01IsCanonicalThreeThreeTwoBlock) :
    Sat.Valuation.satisfies_fmla G.profileBlockValuation
      (ProfileBlockDirect.profileClauses ++ ProfileBlockDirect.noCliqueClauses ++
        ProfileBlockDirect.forceBlockPairClauses 0
          ProfileBlockDirect.canonicalBlocks ProfileBlockDirect.canonicalBlocks) :=
  valuation_satisfies_fmla_append
    (G.profileBlockValuation_satisfies_profileNoCliqueClauses hbal hexact)
    (G.profileBlockValuation_satisfies_forceCanonicalE01Clauses hcanonical)

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_lowerNotGlobalFixedClauses
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hcanonical : G.E01IsCanonicalThreeThreeTwoBlock) :
    Sat.Valuation.satisfies_fmla G.profileBlockValuation
      (ProfileBlockDirect.lowerProfileClauses ++ ProfileBlockDirect.noCliqueClauses ++
        ProfileBlockDirect.forceBlockPairClauses 0
          ProfileBlockDirect.canonicalBlocks ProfileBlockDirect.canonicalBlocks) :=
  valuation_satisfies_fmla_append
    (G.profileBlockValuation_satisfies_lowerProfileNoCliqueClauses hbal)
    (G.profileBlockValuation_satisfies_forceCanonicalE01Clauses hcanonical)

private def OctonaryFourTwoProfileGraph.HasCommonThreeThreeTwoCrossBlocks
    (G : OctonaryFourTwoProfileGraph) : Prop :=
  ∃ block : Fin 4 → ThreeThreeTwoBlock8,
    boolEdgeSet8 G.E01 =
        ThreeThreeTwoBlock8.crossPairs (block 0) (block 1) ∧
    boolEdgeSet8 G.E02 =
        ThreeThreeTwoBlock8.crossPairs (block 0) (block 2) ∧
    boolEdgeSet8 G.E03 =
        ThreeThreeTwoBlock8.crossPairs (block 0) (block 3) ∧
    boolEdgeSet8 G.E12 =
        ThreeThreeTwoBlock8.crossPairs (block 1) (block 2) ∧
    boolEdgeSet8 G.E13 =
        ThreeThreeTwoBlock8.crossPairs (block 1) (block 3) ∧
    boolEdgeSet8 G.E23 =
        ThreeThreeTwoBlock8.crossPairs (block 2) (block 3)

private theorem OctonaryFourTwoProfileGraph.HasCommonThreeThreeTwoCrossBlocks_of_not_satisfies_commonBlockDifferenceClause
    (G : OctonaryFourTwoProfileGraph)
    (blocks2 blocks3 : List (List Nat))
    (hblocks2 : blocks2 ∈ ProfileBlockDirect.highPartitionsLabeled)
    (hblocks3 : blocks3 ∈ ProfileBlockDirect.highPartitionsLabeled)
    (hnotSat :
      ¬ Sat.Valuation.satisfies G.profileBlockValuation
        (ProfileBlockDirect.commonBlockDifferenceClause blocks2 blocks3)) :
    G.HasCommonThreeThreeTwoCrossBlocks := by
  let B0 : ThreeThreeTwoBlock8 :=
    (profileDirectCanonicalLowBlock8
      ProfileBlockDirect.canonicalBlocks
      profileDirect_canonicalBlocks_mem_highPartitionsLabeled).base
  let B1 : ThreeThreeTwoBlock8 :=
    (profileDirectCanonicalLowBlock8
      ProfileBlockDirect.canonicalBlocks
      profileDirect_canonicalBlocks_mem_highPartitionsLabeled).base
  let B2 : ThreeThreeTwoBlock8 :=
    (profileDirectCanonicalLowBlock8 blocks2 hblocks2).base
  let B3 : ThreeThreeTwoBlock8 :=
    (profileDirectCanonicalLowBlock8 blocks3 hblocks3).base
  let block : Fin 4 → ThreeThreeTwoBlock8 := fun i =>
    match i.val with
    | 0 => B0
    | 1 => B1
    | 2 => B2
    | _ => B3
  have h01 : ∀ row col : Fin 8,
      G.E01 row col = true ↔
        ProfileBlockDirect.blockIndex
          ProfileBlockDirect.canonicalBlocks row.val ≠
        ProfileBlockDirect.blockIndex
          ProfileBlockDirect.canonicalBlocks col.val := by
    intro row col
    have h :=
      G.edgeByPairIndex_iff_of_not_satisfies_commonBlockDifferenceClause
        blocks2 blocks3 hnotSat (0 : Fin 6) row col
    simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val,
      profileDirectCommonLeftBlocks, profileDirectCommonRightBlocks] using h
  have h02 : ∀ row col : Fin 8,
      G.E02 row col = true ↔
        ProfileBlockDirect.blockIndex
          ProfileBlockDirect.canonicalBlocks row.val ≠
        ProfileBlockDirect.blockIndex blocks2 col.val := by
    intro row col
    have h :=
      G.edgeByPairIndex_iff_of_not_satisfies_commonBlockDifferenceClause
        blocks2 blocks3 hnotSat (1 : Fin 6) row col
    simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val,
      profileDirectCommonLeftBlocks, profileDirectCommonRightBlocks] using h
  have h03 : ∀ row col : Fin 8,
      G.E03 row col = true ↔
        ProfileBlockDirect.blockIndex
          ProfileBlockDirect.canonicalBlocks row.val ≠
        ProfileBlockDirect.blockIndex blocks3 col.val := by
    intro row col
    have h :=
      G.edgeByPairIndex_iff_of_not_satisfies_commonBlockDifferenceClause
        blocks2 blocks3 hnotSat (2 : Fin 6) row col
    simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val,
      profileDirectCommonLeftBlocks, profileDirectCommonRightBlocks] using h
  have h12 : ∀ row col : Fin 8,
      G.E12 row col = true ↔
        ProfileBlockDirect.blockIndex
          ProfileBlockDirect.canonicalBlocks row.val ≠
        ProfileBlockDirect.blockIndex blocks2 col.val := by
    intro row col
    have h :=
      G.edgeByPairIndex_iff_of_not_satisfies_commonBlockDifferenceClause
        blocks2 blocks3 hnotSat (3 : Fin 6) row col
    simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val,
      profileDirectCommonLeftBlocks, profileDirectCommonRightBlocks] using h
  have h13 : ∀ row col : Fin 8,
      G.E13 row col = true ↔
        ProfileBlockDirect.blockIndex
          ProfileBlockDirect.canonicalBlocks row.val ≠
        ProfileBlockDirect.blockIndex blocks3 col.val := by
    intro row col
    have h :=
      G.edgeByPairIndex_iff_of_not_satisfies_commonBlockDifferenceClause
        blocks2 blocks3 hnotSat (4 : Fin 6) row col
    simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val,
      profileDirectCommonLeftBlocks, profileDirectCommonRightBlocks] using h
  have h23 : ∀ row col : Fin 8,
      G.E23 row col = true ↔
        ProfileBlockDirect.blockIndex blocks2 row.val ≠
        ProfileBlockDirect.blockIndex blocks3 col.val := by
    intro row col
    have h :=
      G.edgeByPairIndex_iff_of_not_satisfies_commonBlockDifferenceClause
        blocks2 blocks3 hnotSat (5 : Fin 6) row col
    simpa [OctonaryFourTwoProfileGraph.edgeByPairIndex, fin8OfNatMod_val,
      profileDirectCommonLeftBlocks, profileDirectCommonRightBlocks] using h
  refine ⟨block, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · simpa [block, B0, B1] using
      boolEdgeSet8_eq_profileDirect_crossPairs
        G.E01 ProfileBlockDirect.canonicalBlocks
        ProfileBlockDirect.canonicalBlocks
        profileDirect_canonicalBlocks_mem_highPartitionsLabeled
        profileDirect_canonicalBlocks_mem_highPartitionsLabeled h01
  · simpa [block, B0, B2] using
      boolEdgeSet8_eq_profileDirect_crossPairs
        G.E02 ProfileBlockDirect.canonicalBlocks blocks2
        profileDirect_canonicalBlocks_mem_highPartitionsLabeled
        hblocks2 h02
  · simpa [block, B0, B3] using
      boolEdgeSet8_eq_profileDirect_crossPairs
        G.E03 ProfileBlockDirect.canonicalBlocks blocks3
        profileDirect_canonicalBlocks_mem_highPartitionsLabeled
        hblocks3 h03
  · simpa [block, B1, B2] using
      boolEdgeSet8_eq_profileDirect_crossPairs
        G.E12 ProfileBlockDirect.canonicalBlocks blocks2
        profileDirect_canonicalBlocks_mem_highPartitionsLabeled
        hblocks2 h12
  · simpa [block, B1, B3] using
      boolEdgeSet8_eq_profileDirect_crossPairs
        G.E13 ProfileBlockDirect.canonicalBlocks blocks3
        profileDirect_canonicalBlocks_mem_highPartitionsLabeled
        hblocks3 h13
  · simpa [block, B2, B3] using
      boolEdgeSet8_eq_profileDirect_crossPairs
        G.E23 blocks2 blocks3 hblocks2 hblocks3 h23

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_commonBlockDifferenceClause
    (G : OctonaryFourTwoProfileGraph)
    (hnotCommon : ¬ G.HasCommonThreeThreeTwoCrossBlocks)
    (blocks2 blocks3 : List (List Nat))
    (hblocks2 : blocks2 ∈ ProfileBlockDirect.highPartitionsLabeled)
    (hblocks3 : blocks3 ∈ ProfileBlockDirect.highPartitionsLabeled) :
    Sat.Valuation.satisfies G.profileBlockValuation
      (ProfileBlockDirect.commonBlockDifferenceClause blocks2 blocks3) := by
  by_contra hnotSat
  exact hnotCommon
    (G.HasCommonThreeThreeTwoCrossBlocks_of_not_satisfies_commonBlockDifferenceClause
      blocks2 blocks3 hblocks2 hblocks3 hnotSat)

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_commonBlockDifferenceClauses
    (G : OctonaryFourTwoProfileGraph)
    (hnotCommon : ¬ G.HasCommonThreeThreeTwoCrossBlocks) :
    Sat.Valuation.satisfies_fmla G.profileBlockValuation
      (ProfileBlockDirect.highPartitionsLabeled.flatMap (fun blocks2 =>
        ProfileBlockDirect.highPartitionsLabeled.map (fun blocks3 =>
          ProfileBlockDirect.commonBlockDifferenceClause blocks2 blocks3))) := by
  constructor
  intro clause hclause
  simp at hclause
  rcases hclause with ⟨blocks2, hblocks2, blocks3, hblocks3, rfl⟩
  exact G.profileBlockValuation_satisfies_commonBlockDifferenceClause
    hnotCommon blocks2 blocks3 hblocks2 hblocks3

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_notGlobalBlockClauses
    (G : OctonaryFourTwoProfileGraph)
    (hcanonical : G.E01IsCanonicalThreeThreeTwoBlock)
    (hnotCommon : ¬ G.HasCommonThreeThreeTwoCrossBlocks) :
    Sat.Valuation.satisfies_fmla G.profileBlockValuation
      ProfileBlockDirect.notGlobalBlockClauses := by
  simpa [ProfileBlockDirect.notGlobalBlockClauses] using
    valuation_satisfies_fmla_append
      (G.profileBlockValuation_satisfies_forceCanonicalE01Clauses hcanonical)
      (G.profileBlockValuation_satisfies_commonBlockDifferenceClauses hnotCommon)

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_notGlobalBlockFormulaDirect
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42)
    (hcanonical : G.E01IsCanonicalThreeThreeTwoBlock)
    (hnotCommon : ¬ G.HasCommonThreeThreeTwoCrossBlocks) :
    Sat.Valuation.satisfies_fmla G.profileBlockValuation
      ProfileBlockDirect.notGlobalBlockFormula := by
  simpa [ProfileBlockDirect.notGlobalBlockFormula,
    ProfileBlockDirect.notGlobalBlockClauses, List.append_assoc] using
    valuation_satisfies_fmla_append
      (G.profileBlockValuation_satisfies_notGlobalFixedClauses
        hbal hexact hcanonical)
      (G.profileBlockValuation_satisfies_commonBlockDifferenceClauses hnotCommon)

private theorem OctonaryFourTwoProfileGraph.profileBlockValuation_satisfies_lowerNotGlobalBlockFormulaDirect
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hcanonical : G.E01IsCanonicalThreeThreeTwoBlock)
    (hnotCommon : ¬ G.HasCommonThreeThreeTwoCrossBlocks) :
    Sat.Valuation.satisfies_fmla G.profileBlockValuation
      ProfileBlockDirect.lowerNotGlobalBlockFormula := by
  simpa [ProfileBlockDirect.lowerNotGlobalBlockFormula,
    ProfileBlockDirect.notGlobalBlockClauses, List.append_assoc] using
    valuation_satisfies_fmla_append
      (G.profileBlockValuation_satisfies_lowerNotGlobalFixedClauses
        hbal hcanonical)
      (G.profileBlockValuation_satisfies_commonBlockDifferenceClauses hnotCommon)

private theorem OctonaryFourTwoProfileGraph.HasCommonThreeThreeTwoCrossBlocks_of_lrat
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42)
    (hcanonical : G.E01IsCanonicalThreeThreeTwoBlock) :
    G.HasCommonThreeThreeTwoCrossBlocks := by
  by_contra hnotCommon
  have hsatDirect :=
    G.profileBlockValuation_satisfies_notGlobalBlockFormulaDirect
      hbal hexact hcanonical hnotCommon
  have hsatParsed :
      Sat.Valuation.satisfies_fmla G.profileBlockValuation
        profileBlockNotGlobalFormula := by
    rw [profileBlockNotGlobalFormula_eq_direct]
    exact hsatDirect
  exact profileBlockNotGlobalUnsat G.profileBlockValuation hsatParsed

private theorem OctonaryFourTwoProfileGraph.HasCommonThreeThreeTwoCrossBlocks_of_lower_lrat
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hcanonical : G.E01IsCanonicalThreeThreeTwoBlock) :
    G.HasCommonThreeThreeTwoCrossBlocks := by
  by_contra hnotCommon
  have hsatDirect :=
    G.profileBlockValuation_satisfies_lowerNotGlobalBlockFormulaDirect
      hbal hcanonical hnotCommon
  have hsatParsed :
      Sat.Valuation.satisfies_fmla G.profileBlockValuation
        profileBlockLowerNotGlobalFormula := by
    rw [profileBlockLowerNotGlobalFormula_eq_direct]
    exact hsatDirect
  exact profileBlockLowerNotGlobalUnsat G.profileBlockValuation hsatParsed

private theorem OctonaryFourTwoProfileGraph.E01HasThreeThreeTwoBlockForm_of_canonical
    (G : OctonaryFourTwoProfileGraph)
    (hcanonical : G.E01IsCanonicalThreeThreeTwoBlock) :
    G.E01HasThreeThreeTwoBlockForm := by
  exact ⟨canonicalThreeThreeTwoBlock8, canonicalThreeThreeTwoBlock8, hcanonical⟩

private theorem OctonaryFourTwoProfileGraph.E01HasThreeThreeTwoBlockForm_of_canonical_low
    (G : OctonaryFourTwoProfileGraph)
    (hblock : G.E01HasCanonicalLowThreeThreeTwoBlockForm) :
    G.E01HasThreeThreeTwoBlockForm := by
  rcases hblock with ⟨left, right, hcross⟩
  exact ⟨left.base, right.base, hcross⟩

private theorem OctonaryFourTwoProfileGraph.E01HasThreeThreeTwoBlockForm_of_common
    (G : OctonaryFourTwoProfileGraph)
    (hcommon : G.HasCommonThreeThreeTwoCrossBlocks) :
    G.E01HasThreeThreeTwoBlockForm := by
  classical
  let block : Fin 4 → ThreeThreeTwoBlock8 := Classical.choose hcommon
  exact ⟨block 0, block 1, (Classical.choose_spec hcommon).1⟩

private structure CommonThreeThreeTwoMissingBlockSystem
    (G : OctonaryFourTwoProfileGraph) where
  block : (i : Fin 4) → Fin 8 → Fin 3
  small : (i : Fin 4) → Fin 2 → Fin 8
  E01_cross : boolEdgeSet8 G.E01 = missingCrossBlockPairs4 block 0 1
  E02_cross : boolEdgeSet8 G.E02 = missingCrossBlockPairs4 block 0 2
  E03_cross : boolEdgeSet8 G.E03 = missingCrossBlockPairs4 block 0 3
  E12_cross : boolEdgeSet8 G.E12 = missingCrossBlockPairs4 block 1 2
  E13_cross : boolEdgeSet8 G.E13 = missingCrossBlockPairs4 block 1 3
  E23_cross : boolEdgeSet8 G.E23 = missingCrossBlockPairs4 block 2 3
  block0_card : ∀ i : Fin 4, (blockFiber4 block i 0).card = 3
  block1_card : ∀ i : Fin 4, (blockFiber4 block i 1).card = 3
  small_mem : ∀ i : Fin 4, ∀ x : Fin 2, block i (small i x) = 2
  small_surj :
    ∀ i : Fin 4, ∀ a : Fin 8, block i a = 2 → ∃ x : Fin 2, a = small i x
  small_inj : ∀ i : Fin 4, Function.Injective (small i)

private theorem blockFiber4_card_two_of_three_three
    (block : (i : Fin 4) → Fin 8 → Fin 3)
    (hblock0 : ∀ i : Fin 4, (blockFiber4 block i 0).card = 3)
    (hblock1 : ∀ i : Fin 4, (blockFiber4 block i 1).card = 3)
    (i : Fin 4) :
    (blockFiber4 block i 2).card = 2 := by
  classical
  have hsum :
      (Finset.univ : Finset (Fin 8)).card =
        ∑ k : Fin 3, (blockFiber4 block i k).card := by
    simpa [blockFiber4] using
      (Finset.card_eq_sum_card_fiberwise
        (s := (Finset.univ : Finset (Fin 8)))
        (t := (Finset.univ : Finset (Fin 3)))
        (f := fun a : Fin 8 => block i a)
        (by intro a _ha; simp))
  have htotal :
      (blockFiber4 block i 0).card +
          (blockFiber4 block i 1).card +
          (blockFiber4 block i 2).card = 8 := by
    have hsum' := hsum.symm
    norm_num at hsum' ⊢
    simpa [Fin.sum_univ_three] using hsum'
  rw [hblock0 i, hblock1 i] at htotal
  omega

private theorem ThreeThreeTwoBlock8.block2_card
    (B : ThreeThreeTwoBlock8) :
    (Finset.univ.filter (fun a => B.block a = 2)).card = 2 := by
  simpa [blockFiber4] using
    blockFiber4_card_two_of_three_three
      (fun _i : Fin 4 => B.block)
      (fun _i => B.block0_card)
      (fun _i => B.block1_card)
      (0 : Fin 4)

private theorem ThreeThreeTwoBlock8.subtype_card
    (B : ThreeThreeTwoBlock8)
    (k : Fin 3) :
    Fintype.card {a : Fin 8 // B.block a = k} =
      (Finset.univ.filter (fun a => B.block a = k)).card := by
  classical
  rw [Fintype.card_of_subtype (Finset.univ.filter (fun a => B.block a = k))]
  intro a
  simp

private def ThreeThreeTwoBlock8.comapSubtypeEquiv
    (B : ThreeThreeTwoBlock8)
    (p : Fin 8 ≃ Fin 8)
    (k : Fin 3) :
    {a : Fin 8 // B.block (p a) = k} ≃ {a : Fin 8 // B.block a = k} where
  toFun a := ⟨p a.val, a.property⟩
  invFun a := ⟨p.symm a.val, by simpa using a.property⟩
  left_inv a := by
    apply Subtype.ext
    simp
  right_inv a := by
    apply Subtype.ext
    simp

private theorem ThreeThreeTwoBlock8.comap_filter_card
    (B : ThreeThreeTwoBlock8)
    (p : Fin 8 ≃ Fin 8)
    (k : Fin 3) :
    (Finset.univ.filter (fun a => B.block (p a) = k)).card =
      (Finset.univ.filter (fun a => B.block a = k)).card := by
  classical
  have hleft :
      Fintype.card {a : Fin 8 // B.block (p a) = k} =
        (Finset.univ.filter (fun a => B.block (p a) = k)).card := by
    rw [Fintype.card_of_subtype
      (Finset.univ.filter (fun a => B.block (p a) = k))]
    intro a
    simp
  rw [← hleft, ← ThreeThreeTwoBlock8.subtype_card B k]
  exact Fintype.card_congr (B.comapSubtypeEquiv p k)

private def ThreeThreeTwoBlock8.comapEquiv
    (B : ThreeThreeTwoBlock8)
    (p : Fin 8 ≃ Fin 8) :
    ThreeThreeTwoBlock8 where
  block := fun a => B.block (p a)
  block0_card := by
    rw [ThreeThreeTwoBlock8.comap_filter_card]
    exact B.block0_card
  block1_card := by
    rw [ThreeThreeTwoBlock8.comap_filter_card]
    exact B.block1_card

private noncomputable def ThreeThreeTwoBlock8.fiberEquivCanonical
    (B : ThreeThreeTwoBlock8)
    (k : Fin 3) :
    {a : Fin 8 // B.block a = k} ≃
      {a : Fin 8 // canonicalThreeThreeTwoBlock8.block a = k} :=
  Fintype.equivOfCardEq (by
    rw [ThreeThreeTwoBlock8.subtype_card B k,
      ThreeThreeTwoBlock8.subtype_card canonicalThreeThreeTwoBlock8 k]
    fin_cases k
    · exact B.block0_card.trans canonicalThreeThreeTwoBlock8.block0_card.symm
    · exact B.block1_card.trans canonicalThreeThreeTwoBlock8.block1_card.symm
    · exact B.block2_card.trans canonicalThreeThreeTwoBlock8.block2_card.symm)

private noncomputable def ThreeThreeTwoBlock8.fiberSigmaEquiv
    (B : ThreeThreeTwoBlock8) :
    Fin 8 ≃ (Σ k : Fin 3, {a : Fin 8 // B.block a = k}) where
  toFun a := ⟨B.block a, ⟨a, rfl⟩⟩
  invFun x := x.2.val
  left_inv a := rfl
  right_inv x := by
    rcases x with ⟨k, a, ha⟩
    cases ha
    rfl

private noncomputable def ThreeThreeTwoBlock8.toCanonical
    (B : ThreeThreeTwoBlock8) :
    Fin 8 → Fin 8 :=
  fun a => ((B.fiberEquivCanonical (B.block a)) ⟨a, rfl⟩).val

private theorem ThreeThreeTwoBlock8.toCanonical_block
    (B : ThreeThreeTwoBlock8)
    (a : Fin 8) :
    canonicalThreeThreeTwoBlock8.block (B.toCanonical a) = B.block a := by
  exact ((B.fiberEquivCanonical (B.block a)) ⟨a, rfl⟩).property

private noncomputable def ThreeThreeTwoBlock8.toCanonicalEquiv
    (B : ThreeThreeTwoBlock8) :
    Fin 8 ≃ Fin 8 :=
  (B.fiberSigmaEquiv.trans
    (Equiv.sigmaCongrRight (fun k => B.fiberEquivCanonical k))).trans
    canonicalThreeThreeTwoBlock8.fiberSigmaEquiv.symm

private theorem ThreeThreeTwoBlock8.toCanonicalEquiv_block
    (B : ThreeThreeTwoBlock8)
    (a : Fin 8) :
    canonicalThreeThreeTwoBlock8.block (B.toCanonicalEquiv a) = B.block a := by
  exact ((B.fiberEquivCanonical (B.block a)) ⟨a, rfl⟩).property

private theorem CanonicalLowThreeThreeTwoBlock8.toCanonicalEquiv_preserves_excess
    (B : CanonicalLowThreeThreeTwoBlock8)
    (a : Fin 8) :
    canonicalBalancedExcess8 (B.base.toCanonicalEquiv.symm a) =
      canonicalBalancedExcess8 a := by
  rw [canonicalBalancedExcess8_eq_if_canonicalBlock
      (B.base.toCanonicalEquiv.symm a),
    canonicalBalancedExcess8_eq_if_canonicalBlock a]
  have hblock :
      canonicalThreeThreeTwoBlock8.block a =
        B.base.block (B.base.toCanonicalEquiv.symm a) := by
    simpa using
      B.base.toCanonicalEquiv_block (B.base.toCanonicalEquiv.symm a)
  by_cases hcan : canonicalThreeThreeTwoBlock8.block a = 2
  · have hbase :
        B.base.block (B.base.toCanonicalEquiv.symm a) = 2 := by
      simpa [hblock] using hcan
    have hpre :
        canonicalThreeThreeTwoBlock8.block (B.base.toCanonicalEquiv.symm a) = 2 :=
      (B.block2_iff _).mp hbase
    simp [hcan, hpre]
  · have hbase :
        B.base.block (B.base.toCanonicalEquiv.symm a) ≠ 2 := by
      intro h
      exact hcan (by simpa [hblock] using h)
    have hpre :
        canonicalThreeThreeTwoBlock8.block (B.base.toCanonicalEquiv.symm a) ≠ 2 := by
      intro h
      exact hbase ((B.block2_iff _).mpr h)
    simp [hcan, hpre]

private def relabelPairBool8
    (E : Fin 8 → Fin 8 → Bool)
    (left right : Fin 8 ≃ Fin 8) :
    Fin 8 → Fin 8 → Bool :=
  fun a b => E (left.symm a) (right.symm b)

private theorem boolEdgeSet8_relabelPairBool8_eq_image
    (E : Fin 8 → Fin 8 → Bool)
    (left right : Fin 8 ≃ Fin 8) :
    boolEdgeSet8 (relabelPairBool8 E left right) =
      (boolEdgeSet8 E).image (fun p : Fin 8 × Fin 8 => (left p.1, right p.2)) := by
  classical
  ext p
  rcases p with ⟨a, b⟩
  constructor
  · intro hp
    refine Finset.mem_image.mpr
      ⟨(left.symm a, right.symm b), ?_, ?_⟩
    · simpa [boolEdgeSet8, relabelPairBool8] using hp
    · simp
  · intro hp
    rcases Finset.mem_image.mp hp with ⟨p, hpOld, hpEq⟩
    rcases p with ⟨x, y⟩
    have hxy : left x = a ∧ right y = b := by
      simpa using Prod.ext_iff.mp hpEq
    have hx : left.symm a = x := by
      rw [← hxy.1]
      simp
    have hy : right.symm b = y := by
      rw [← hxy.2]
      simp
    simpa [boolEdgeSet8, relabelPairBool8, hx, hy] using hpOld

private theorem boolEdgeSet8_relabelPairBool8_card
    (E : Fin 8 → Fin 8 → Bool)
    (left right : Fin 8 ≃ Fin 8) :
    (boolEdgeSet8 (relabelPairBool8 E left right)).card =
      (boolEdgeSet8 E).card := by
  classical
  rw [boolEdgeSet8_relabelPairBool8_eq_image]
  apply Finset.card_image_of_injective
  intro p q hpq
  rcases p with ⟨a, b⟩
  rcases q with ⟨c, d⟩
  have hleft : left a = left c := congrArg Prod.fst hpq
  have hright : right b = right d := congrArg Prod.snd hpq
  exact Prod.ext (left.injective hleft) (right.injective hright)

private theorem boolRowSet8_relabelPairBool8_eq_image
    (E : Fin 8 → Fin 8 → Bool)
    (left right : Fin 8 ≃ Fin 8)
    (a : Fin 8) :
    boolRowSet8 (relabelPairBool8 E left right) a =
      (boolRowSet8 E (left.symm a)).image right := by
  classical
  ext b
  constructor
  · intro hb
    refine Finset.mem_image.mpr ⟨right.symm b, ?_, by simp⟩
    simpa [boolRowSet8, relabelPairBool8] using hb
  · intro hb
    rcases Finset.mem_image.mp hb with ⟨y, hy, hyb⟩
    have hb' : right.symm b = y := by
      rw [← hyb]
      simp
    simpa [boolRowSet8, relabelPairBool8, hb'] using hy

private theorem boolRowSet8_relabelPairBool8_card
    (E : Fin 8 → Fin 8 → Bool)
    (left right : Fin 8 ≃ Fin 8)
    (a : Fin 8) :
    (boolRowSet8 (relabelPairBool8 E left right) a).card =
      (boolRowSet8 E (left.symm a)).card := by
  classical
  rw [boolRowSet8_relabelPairBool8_eq_image]
  exact Finset.card_image_of_injective _ right.injective

private theorem boolColSet8_relabelPairBool8_eq_image
    (E : Fin 8 → Fin 8 → Bool)
    (left right : Fin 8 ≃ Fin 8)
    (b : Fin 8) :
    boolColSet8 (relabelPairBool8 E left right) b =
      (boolColSet8 E (right.symm b)).image left := by
  classical
  ext a
  constructor
  · intro ha
    refine Finset.mem_image.mpr ⟨left.symm a, ?_, by simp⟩
    simpa [boolColSet8, relabelPairBool8] using ha
  · intro ha
    rcases Finset.mem_image.mp ha with ⟨x, hx, hxa⟩
    have ha' : left.symm a = x := by
      rw [← hxa]
      simp
    simpa [boolColSet8, relabelPairBool8, ha'] using hx

private theorem boolColSet8_relabelPairBool8_card
    (E : Fin 8 → Fin 8 → Bool)
    (left right : Fin 8 ≃ Fin 8)
    (b : Fin 8) :
    (boolColSet8 (relabelPairBool8 E left right) b).card =
      (boolColSet8 E (right.symm b)).card := by
  classical
  rw [boolColSet8_relabelPairBool8_eq_image]
  exact Finset.card_image_of_injective _ left.injective

private theorem no_clique_of_relabelPairBool8
    (E01 E02 E03 E12 E13 E23 : Fin 8 → Fin 8 → Bool)
    (hno :
      ¬ ∃ a b c d,
        E01 a b = true ∧ E02 a c = true ∧ E03 a d = true ∧
        E12 b c = true ∧ E13 b d = true ∧ E23 c d = true)
    (p0 p1 p2 p3 : Fin 8 ≃ Fin 8) :
    ¬ ∃ a b c d,
      relabelPairBool8 E01 p0 p1 a b = true ∧
      relabelPairBool8 E02 p0 p2 a c = true ∧
      relabelPairBool8 E03 p0 p3 a d = true ∧
      relabelPairBool8 E12 p1 p2 b c = true ∧
      relabelPairBool8 E13 p1 p3 b d = true ∧
      relabelPairBool8 E23 p2 p3 c d = true := by
  rintro ⟨a, b, c, d, h01, h02, h03, h12, h13, h23⟩
  exact hno
    ⟨p0.symm a, p1.symm b, p2.symm c, p3.symm d,
      by simpa [relabelPairBool8] using h01,
      by simpa [relabelPairBool8] using h02,
      by simpa [relabelPairBool8] using h03,
      by simpa [relabelPairBool8] using h12,
      by simpa [relabelPairBool8] using h13,
      by simpa [relabelPairBool8] using h23⟩

private def OctonaryFourTwoProfileGraph.relabel
    (G : OctonaryFourTwoProfileGraph)
    (p0 p1 p2 p3 : Fin 8 ≃ Fin 8) :
    OctonaryFourTwoProfileGraph :=
  { E01 := relabelPairBool8 G.E01 p0 p1
    E02 := relabelPairBool8 G.E02 p0 p2
    E03 := relabelPairBool8 G.E03 p0 p3
    E12 := relabelPairBool8 G.E12 p1 p2
    E13 := relabelPairBool8 G.E13 p1 p3
    E23 := relabelPairBool8 G.E23 p2 p3
    d0 := fun a => G.d0 (p0.symm a)
    d1 := fun a => G.d1 (p1.symm a)
    d2 := fun a => G.d2 (p2.symm a)
    d3 := fun a => G.d3 (p3.symm a)
    d0_sum := by
      rw [← G.d0_sum]
      exact Equiv.sum_comp p0.symm G.d0
    d1_sum := by
      rw [← G.d1_sum]
      exact Equiv.sum_comp p1.symm G.d1
    d2_sum := by
      rw [← G.d2_sum]
      exact Equiv.sum_comp p2.symm G.d2
    d3_sum := by
      rw [← G.d3_sum]
      exact Equiv.sum_comp p3.symm G.d3
    row01 := by
      intro a
      have h :
          6 - G.d0 (p0.symm a) ≤ (boolRowSet8 G.E01 (p0.symm a)).card :=
        by simpa [boolRowSet8] using G.row01 (p0.symm a)
      rw [← boolRowSet8_relabelPairBool8_card G.E01 p0 p1 a] at h
      simpa [boolRowSet8] using h
    row02 := by
      intro a
      have h :
          6 - G.d0 (p0.symm a) ≤ (boolRowSet8 G.E02 (p0.symm a)).card :=
        by simpa [boolRowSet8] using G.row02 (p0.symm a)
      rw [← boolRowSet8_relabelPairBool8_card G.E02 p0 p2 a] at h
      simpa [boolRowSet8] using h
    row03 := by
      intro a
      have h :
          6 - G.d0 (p0.symm a) ≤ (boolRowSet8 G.E03 (p0.symm a)).card :=
        by simpa [boolRowSet8] using G.row03 (p0.symm a)
      rw [← boolRowSet8_relabelPairBool8_card G.E03 p0 p3 a] at h
      simpa [boolRowSet8] using h
    row12 := by
      intro b
      have h :
          6 - G.d1 (p1.symm b) ≤ (boolRowSet8 G.E12 (p1.symm b)).card :=
        by simpa [boolRowSet8] using G.row12 (p1.symm b)
      rw [← boolRowSet8_relabelPairBool8_card G.E12 p1 p2 b] at h
      simpa [boolRowSet8] using h
    row13 := by
      intro b
      have h :
          6 - G.d1 (p1.symm b) ≤ (boolRowSet8 G.E13 (p1.symm b)).card :=
        by simpa [boolRowSet8] using G.row13 (p1.symm b)
      rw [← boolRowSet8_relabelPairBool8_card G.E13 p1 p3 b] at h
      simpa [boolRowSet8] using h
    row23 := by
      intro c
      have h :
          6 - G.d2 (p2.symm c) ≤ (boolRowSet8 G.E23 (p2.symm c)).card :=
        by simpa [boolRowSet8] using G.row23 (p2.symm c)
      rw [← boolRowSet8_relabelPairBool8_card G.E23 p2 p3 c] at h
      simpa [boolRowSet8] using h
    col01 := by
      intro b
      have h :
          6 - G.d1 (p1.symm b) ≤ (boolColSet8 G.E01 (p1.symm b)).card :=
        by simpa [boolColSet8] using G.col01 (p1.symm b)
      rw [← boolColSet8_relabelPairBool8_card G.E01 p0 p1 b] at h
      simpa [boolColSet8] using h
    col02 := by
      intro c
      have h :
          6 - G.d2 (p2.symm c) ≤ (boolColSet8 G.E02 (p2.symm c)).card :=
        by simpa [boolColSet8] using G.col02 (p2.symm c)
      rw [← boolColSet8_relabelPairBool8_card G.E02 p0 p2 c] at h
      simpa [boolColSet8] using h
    col03 := by
      intro d
      have h :
          6 - G.d3 (p3.symm d) ≤ (boolColSet8 G.E03 (p3.symm d)).card :=
        by simpa [boolColSet8] using G.col03 (p3.symm d)
      rw [← boolColSet8_relabelPairBool8_card G.E03 p0 p3 d] at h
      simpa [boolColSet8] using h
    col12 := by
      intro c
      have h :
          6 - G.d2 (p2.symm c) ≤ (boolColSet8 G.E12 (p2.symm c)).card :=
        by simpa [boolColSet8] using G.col12 (p2.symm c)
      rw [← boolColSet8_relabelPairBool8_card G.E12 p1 p2 c] at h
      simpa [boolColSet8] using h
    col13 := by
      intro d
      have h :
          6 - G.d3 (p3.symm d) ≤ (boolColSet8 G.E13 (p3.symm d)).card :=
        by simpa [boolColSet8] using G.col13 (p3.symm d)
      rw [← boolColSet8_relabelPairBool8_card G.E13 p1 p3 d] at h
      simpa [boolColSet8] using h
    col23 := by
      intro d
      have h :
          6 - G.d3 (p3.symm d) ≤ (boolColSet8 G.E23 (p3.symm d)).card :=
        by simpa [boolColSet8] using G.col23 (p3.symm d)
      rw [← boolColSet8_relabelPairBool8_card G.E23 p2 p3 d] at h
      simpa [boolColSet8] using h
    no_clique :=
      no_clique_of_relabelPairBool8
        G.E01 G.E02 G.E03 G.E12 G.E13 G.E23 G.no_clique p0 p1 p2 p3 }

private theorem OctonaryFourTwoProfileGraph.exact42_relabel
    (G : OctonaryFourTwoProfileGraph)
    (hexact : G.exact42)
    (p0 p1 p2 p3 : Fin 8 ≃ Fin 8) :
    (G.relabel p0 p1 p2 p3).exact42 := by
  constructor
  · simpa [OctonaryFourTwoProfileGraph.relabel] using
      (by
        rw [boolEdgeSet8_relabelPairBool8_card]
        exact hexact.1)
  constructor
  · simpa [OctonaryFourTwoProfileGraph.relabel] using
      (by
        rw [boolEdgeSet8_relabelPairBool8_card]
        exact hexact.2.1)
  constructor
  · simpa [OctonaryFourTwoProfileGraph.relabel] using
      (by
        rw [boolEdgeSet8_relabelPairBool8_card]
        exact hexact.2.2.1)
  constructor
  · simpa [OctonaryFourTwoProfileGraph.relabel] using
      (by
        rw [boolEdgeSet8_relabelPairBool8_card]
        exact hexact.2.2.2.1)
  constructor
  · simpa [OctonaryFourTwoProfileGraph.relabel] using
      (by
        rw [boolEdgeSet8_relabelPairBool8_card]
        exact hexact.2.2.2.2.1)
  · simpa [OctonaryFourTwoProfileGraph.relabel] using
      (by
        rw [boolEdgeSet8_relabelPairBool8_card]
        exact hexact.2.2.2.2.2)

private theorem OctonaryFourTwoProfileGraph.canonicalBalanced_relabel
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (p0 p1 p2 p3 : Fin 8 ≃ Fin 8)
    (hp0 : ∀ a, canonicalBalancedExcess8 (p0.symm a) = canonicalBalancedExcess8 a)
    (hp1 : ∀ a, canonicalBalancedExcess8 (p1.symm a) = canonicalBalancedExcess8 a)
    (hp2 : ∀ a, canonicalBalancedExcess8 (p2.symm a) = canonicalBalancedExcess8 a)
    (hp3 : ∀ a, canonicalBalancedExcess8 (p3.symm a) = canonicalBalancedExcess8 a) :
    (G.relabel p0 p1 p2 p3).canonicalBalanced := by
  constructor
  · intro a
    simp [OctonaryFourTwoProfileGraph.relabel, hbal.1 (p0.symm a), hp0 a]
  constructor
  · intro a
    simp [OctonaryFourTwoProfileGraph.relabel, hbal.2.1 (p1.symm a), hp1 a]
  constructor
  · intro a
    simp [OctonaryFourTwoProfileGraph.relabel, hbal.2.2.1 (p2.symm a), hp2 a]
  · intro a
    simp [OctonaryFourTwoProfileGraph.relabel, hbal.2.2.2 (p3.symm a), hp3 a]

private theorem boolEdgeSet8_relabelPairBool8_eq_canonical_cross_of_block_cross
    (E : Fin 8 → Fin 8 → Bool)
    (left right : ThreeThreeTwoBlock8)
    (hcross : boolEdgeSet8 E = ThreeThreeTwoBlock8.crossPairs left right) :
    boolEdgeSet8
        (relabelPairBool8 E left.toCanonicalEquiv right.toCanonicalEquiv) =
      ThreeThreeTwoBlock8.crossPairs
        canonicalThreeThreeTwoBlock8 canonicalThreeThreeTwoBlock8 := by
  classical
  ext p
  rcases p with ⟨a, b⟩
  have hleft :
      canonicalThreeThreeTwoBlock8.block a =
        left.block (left.toCanonicalEquiv.symm a) := by
    simpa using left.toCanonicalEquiv_block (left.toCanonicalEquiv.symm a)
  have hright :
      canonicalThreeThreeTwoBlock8.block b =
        right.block (right.toCanonicalEquiv.symm b) := by
    simpa using right.toCanonicalEquiv_block (right.toCanonicalEquiv.symm b)
  constructor
  · intro hp
    have hpOld :
        (left.toCanonicalEquiv.symm a, right.toCanonicalEquiv.symm b) ∈
          boolEdgeSet8 E := by
      simpa [boolEdgeSet8, relabelPairBool8] using hp
    have hpCross :
        (left.toCanonicalEquiv.symm a, right.toCanonicalEquiv.symm b) ∈
          ThreeThreeTwoBlock8.crossPairs left right := by
      simpa [hcross] using hpOld
    have hne :
        left.block (left.toCanonicalEquiv.symm a) ≠
          right.block (right.toCanonicalEquiv.symm b) := by
      simpa [ThreeThreeTwoBlock8.crossPairs, missingCrossBlockPairs8] using hpCross
    simp [ThreeThreeTwoBlock8.crossPairs, missingCrossBlockPairs8, hleft, hright, hne]
  · intro hp
    have hne :
        left.block (left.toCanonicalEquiv.symm a) ≠
          right.block (right.toCanonicalEquiv.symm b) := by
      have hp' :
          canonicalThreeThreeTwoBlock8.block a ≠
            canonicalThreeThreeTwoBlock8.block b := by
        simpa [ThreeThreeTwoBlock8.crossPairs, missingCrossBlockPairs8] using hp
      simpa [hleft, hright] using hp'
    have hpOld :
        (left.toCanonicalEquiv.symm a, right.toCanonicalEquiv.symm b) ∈
          ThreeThreeTwoBlock8.crossPairs left right := by
      simp [ThreeThreeTwoBlock8.crossPairs, missingCrossBlockPairs8, hne]
    have hpEdge :
        (left.toCanonicalEquiv.symm a, right.toCanonicalEquiv.symm b) ∈
          boolEdgeSet8 E := by
      simpa [hcross] using hpOld
    simpa [boolEdgeSet8, relabelPairBool8] using hpEdge

private theorem boolEdgeSet8_eq_cross_of_relabelPairBool8_eq_cross
    (E : Fin 8 → Fin 8 → Bool)
    (leftPerm rightPerm : Fin 8 ≃ Fin 8)
    (leftBlock rightBlock : ThreeThreeTwoBlock8)
    (hcross :
      boolEdgeSet8 (relabelPairBool8 E leftPerm rightPerm) =
        ThreeThreeTwoBlock8.crossPairs leftBlock rightBlock) :
    boolEdgeSet8 E =
      ThreeThreeTwoBlock8.crossPairs
        (leftBlock.comapEquiv leftPerm) (rightBlock.comapEquiv rightPerm) := by
  classical
  ext p
  rcases p with ⟨a, b⟩
  constructor
  · intro hp
    have hpNew :
        (leftPerm a, rightPerm b) ∈
          boolEdgeSet8 (relabelPairBool8 E leftPerm rightPerm) := by
      simpa [boolEdgeSet8, relabelPairBool8] using hp
    have hpCross :
        (leftPerm a, rightPerm b) ∈
          ThreeThreeTwoBlock8.crossPairs leftBlock rightBlock := by
      simpa [hcross] using hpNew
    simpa [ThreeThreeTwoBlock8.crossPairs, missingCrossBlockPairs8,
      ThreeThreeTwoBlock8.comapEquiv] using hpCross
  · intro hp
    have hpCross :
        (leftPerm a, rightPerm b) ∈
          ThreeThreeTwoBlock8.crossPairs leftBlock rightBlock := by
      simpa [ThreeThreeTwoBlock8.crossPairs, missingCrossBlockPairs8,
        ThreeThreeTwoBlock8.comapEquiv] using hp
    have hpNew :
        (leftPerm a, rightPerm b) ∈
          boolEdgeSet8 (relabelPairBool8 E leftPerm rightPerm) := by
      simpa [hcross] using hpCross
    simpa [boolEdgeSet8, relabelPairBool8] using hpNew

private theorem OctonaryFourTwoProfileGraph.exists_E01_canonical_pair_relabel
    (G : OctonaryFourTwoProfileGraph)
    (hblock : G.E01HasThreeThreeTwoBlockForm) :
    ∃ left right : Fin 8 ≃ Fin 8,
      boolEdgeSet8 (relabelPairBool8 G.E01 left right) =
        ThreeThreeTwoBlock8.crossPairs
          canonicalThreeThreeTwoBlock8 canonicalThreeThreeTwoBlock8 := by
  rcases hblock with ⟨leftBlock, rightBlock, hcross⟩
  exact
    ⟨leftBlock.toCanonicalEquiv, rightBlock.toCanonicalEquiv,
      boolEdgeSet8_relabelPairBool8_eq_canonical_cross_of_block_cross
        G.E01 leftBlock rightBlock hcross⟩

private theorem OctonaryFourTwoProfileGraph.exists_relabel_E01_canonical
    (G : OctonaryFourTwoProfileGraph)
    (hblock : G.E01HasThreeThreeTwoBlockForm) :
    ∃ p0 p1 : Fin 8 ≃ Fin 8,
      (G.relabel p0 p1 (Equiv.refl (Fin 8)) (Equiv.refl (Fin 8)))
        |>.E01IsCanonicalThreeThreeTwoBlock := by
  rcases hblock with ⟨leftBlock, rightBlock, hcross⟩
  refine ⟨leftBlock.toCanonicalEquiv, rightBlock.toCanonicalEquiv, ?_⟩
  simpa [OctonaryFourTwoProfileGraph.relabel,
    OctonaryFourTwoProfileGraph.E01IsCanonicalThreeThreeTwoBlock] using
    boolEdgeSet8_relabelPairBool8_eq_canonical_cross_of_block_cross
        G.E01 leftBlock rightBlock hcross

private theorem OctonaryFourTwoProfileGraph.HasCommonThreeThreeTwoCrossBlocks_of_relabel
    (G : OctonaryFourTwoProfileGraph)
    (p0 p1 p2 p3 : Fin 8 ≃ Fin 8)
    (hcommon :
      (G.relabel p0 p1 p2 p3).HasCommonThreeThreeTwoCrossBlocks) :
    G.HasCommonThreeThreeTwoCrossBlocks := by
  rcases hcommon with
    ⟨block, hE01, hE02, hE03, hE12, hE13, hE23⟩
  let perm : Fin 4 → Fin 8 ≃ Fin 8 :=
    fun i =>
      match i with
      | 0 => p0
      | 1 => p1
      | 2 => p2
      | 3 => p3
  let block' : Fin 4 → ThreeThreeTwoBlock8 :=
    fun i => (block i).comapEquiv (perm i)
  refine ⟨block', ?_, ?_, ?_, ?_, ?_, ?_⟩
  · simpa [OctonaryFourTwoProfileGraph.relabel, block', perm] using
      boolEdgeSet8_eq_cross_of_relabelPairBool8_eq_cross
        G.E01 p0 p1 (block 0) (block 1) hE01
  · simpa [OctonaryFourTwoProfileGraph.relabel, block', perm] using
      boolEdgeSet8_eq_cross_of_relabelPairBool8_eq_cross
        G.E02 p0 p2 (block 0) (block 2) hE02
  · simpa [OctonaryFourTwoProfileGraph.relabel, block', perm] using
      boolEdgeSet8_eq_cross_of_relabelPairBool8_eq_cross
        G.E03 p0 p3 (block 0) (block 3) hE03
  · simpa [OctonaryFourTwoProfileGraph.relabel, block', perm] using
      boolEdgeSet8_eq_cross_of_relabelPairBool8_eq_cross
        G.E12 p1 p2 (block 1) (block 2) hE12
  · simpa [OctonaryFourTwoProfileGraph.relabel, block', perm] using
      boolEdgeSet8_eq_cross_of_relabelPairBool8_eq_cross
        G.E13 p1 p3 (block 1) (block 3) hE13
  · simpa [OctonaryFourTwoProfileGraph.relabel, block', perm] using
      boolEdgeSet8_eq_cross_of_relabelPairBool8_eq_cross
        G.E23 p2 p3 (block 2) (block 3) hE23

private theorem OctonaryFourTwoProfileGraph.exists_relabel_balanced_exact42_E01_canonical
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42)
    (hblock : G.E01HasCanonicalLowThreeThreeTwoBlockForm) :
    ∃ p0 p1 : Fin 8 ≃ Fin 8,
      let G' := G.relabel p0 p1 (Equiv.refl (Fin 8)) (Equiv.refl (Fin 8))
      G'.canonicalBalanced ∧ G'.exact42 ∧ G'.E01IsCanonicalThreeThreeTwoBlock := by
  rcases hblock with ⟨leftBlock, rightBlock, hcross⟩
  let p0 := leftBlock.base.toCanonicalEquiv
  let p1 := rightBlock.base.toCanonicalEquiv
  refine ⟨p0, p1, ?_⟩
  constructor
  · apply G.canonicalBalanced_relabel hbal
    · exact leftBlock.toCanonicalEquiv_preserves_excess
    · exact rightBlock.toCanonicalEquiv_preserves_excess
    · intro a
      simp
    · intro a
      simp
  constructor
  · exact G.exact42_relabel hexact p0 p1 (Equiv.refl (Fin 8)) (Equiv.refl (Fin 8))
  · simpa [OctonaryFourTwoProfileGraph.relabel,
      OctonaryFourTwoProfileGraph.E01IsCanonicalThreeThreeTwoBlock, p0, p1] using
      boolEdgeSet8_relabelPairBool8_eq_canonical_cross_of_block_cross
        G.E01 leftBlock.base rightBlock.base hcross

private theorem OctonaryFourTwoProfileGraph.exists_relabel_balanced_E01_canonical
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hblock : G.E01HasCanonicalLowThreeThreeTwoBlockForm) :
    ∃ p0 p1 : Fin 8 ≃ Fin 8,
      let G' := G.relabel p0 p1 (Equiv.refl (Fin 8)) (Equiv.refl (Fin 8))
      G'.canonicalBalanced ∧ G'.E01IsCanonicalThreeThreeTwoBlock := by
  rcases hblock with ⟨leftBlock, rightBlock, hcross⟩
  let p0 := leftBlock.base.toCanonicalEquiv
  let p1 := rightBlock.base.toCanonicalEquiv
  refine ⟨p0, p1, ?_⟩
  constructor
  · apply G.canonicalBalanced_relabel hbal
    · exact leftBlock.toCanonicalEquiv_preserves_excess
    · exact rightBlock.toCanonicalEquiv_preserves_excess
    · intro a
      simp
    · intro a
      simp
  · simpa [OctonaryFourTwoProfileGraph.relabel,
      OctonaryFourTwoProfileGraph.E01IsCanonicalThreeThreeTwoBlock, p0, p1] using
      boolEdgeSet8_relabelPairBool8_eq_canonical_cross_of_block_cross
        G.E01 leftBlock.base rightBlock.base hcross

private theorem OctonaryFourTwoProfileGraph.HasCommonThreeThreeTwoCrossBlocks_of_classifiers
    (e01Classifier :
      ∀ G : OctonaryFourTwoProfileGraph,
        G.canonicalBalanced →
        G.exact42 →
        G.E01HasCanonicalLowThreeThreeTwoBlockForm)
    (canonicalClassifier :
      ∀ G : OctonaryFourTwoProfileGraph,
        G.canonicalBalanced →
        G.exact42 →
        G.E01IsCanonicalThreeThreeTwoBlock →
        G.HasCommonThreeThreeTwoCrossBlocks)
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42) :
    G.HasCommonThreeThreeTwoCrossBlocks := by
  obtain ⟨p0, p1, hrelBal, hrelExact, hrelCanon⟩ :=
    G.exists_relabel_balanced_exact42_E01_canonical hbal hexact
      (e01Classifier G hbal hexact)
  exact G.HasCommonThreeThreeTwoCrossBlocks_of_relabel
    p0 p1 (Equiv.refl (Fin 8)) (Equiv.refl (Fin 8))
    (canonicalClassifier
      (G.relabel p0 p1 (Equiv.refl (Fin 8)) (Equiv.refl (Fin 8)))
      hrelBal hrelExact hrelCanon)

private theorem OctonaryFourTwoProfileGraph.HasCommonThreeThreeTwoCrossBlocks_of_lower_classifiers
    (e01Classifier :
      ∀ G : OctonaryFourTwoProfileGraph,
        G.canonicalBalanced →
        G.E01HasCanonicalLowThreeThreeTwoBlockForm)
    (canonicalClassifier :
      ∀ G : OctonaryFourTwoProfileGraph,
        G.canonicalBalanced →
        G.E01IsCanonicalThreeThreeTwoBlock →
        G.HasCommonThreeThreeTwoCrossBlocks)
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced) :
    G.HasCommonThreeThreeTwoCrossBlocks := by
  obtain ⟨p0, p1, hrelBal, hrelCanon⟩ :=
    G.exists_relabel_balanced_E01_canonical hbal
      (e01Classifier G hbal)
  exact G.HasCommonThreeThreeTwoCrossBlocks_of_relabel
    p0 p1 (Equiv.refl (Fin 8)) (Equiv.refl (Fin 8))
    (canonicalClassifier
      (G.relabel p0 p1 (Equiv.refl (Fin 8)) (Equiv.refl (Fin 8)))
      hrelBal hrelCanon)

private theorem blockFiber4_subtype_card
    (block : (i : Fin 4) → Fin 8 → Fin 3)
    (i : Fin 4)
    (k : Fin 3) :
    Fintype.card {a : Fin 8 // block i a = k} =
      (blockFiber4 block i k).card := by
  classical
  rw [Fintype.card_of_subtype (blockFiber4 block i k)]
  intro a
  simp [blockFiber4]

private noncomputable def blockFiber4TwoEquiv
    (block : (i : Fin 4) → Fin 8 → Fin 3)
    (i : Fin 4)
    (hcard : (blockFiber4 block i 2).card = 2) :
    {a : Fin 8 // block i a = 2} ≃ Fin 2 :=
  Fintype.equivFinOfCardEq (by
    rw [blockFiber4_subtype_card block i 2]
    exact hcard)

private noncomputable def blockFiber4TwoSmall
    (block : (i : Fin 4) → Fin 8 → Fin 3)
    (hcard : ∀ i : Fin 4, (blockFiber4 block i 2).card = 2)
    (i : Fin 4) :
    Fin 2 → Fin 8 :=
  fun x => ((blockFiber4TwoEquiv block i (hcard i)).symm x).val

private theorem blockFiber4TwoSmall_mem
    (block : (i : Fin 4) → Fin 8 → Fin 3)
    (hcard : ∀ i : Fin 4, (blockFiber4 block i 2).card = 2)
    (i : Fin 4)
    (x : Fin 2) :
    block i (blockFiber4TwoSmall block hcard i x) = 2 := by
  classical
  exact ((blockFiber4TwoEquiv block i (hcard i)).symm x).property

private theorem blockFiber4TwoSmall_surj
    (block : (i : Fin 4) → Fin 8 → Fin 3)
    (hcard : ∀ i : Fin 4, (blockFiber4 block i 2).card = 2)
    (i : Fin 4)
    (a : Fin 8)
    (ha : block i a = 2) :
    ∃ x : Fin 2, a = blockFiber4TwoSmall block hcard i x := by
  classical
  let e := blockFiber4TwoEquiv block i (hcard i)
  refine ⟨e ⟨a, ha⟩, ?_⟩
  simp [blockFiber4TwoSmall, e]

private theorem blockFiber4TwoSmall_inj
    (block : (i : Fin 4) → Fin 8 → Fin 3)
    (hcard : ∀ i : Fin 4, (blockFiber4 block i 2).card = 2)
    (i : Fin 4) :
    Function.Injective (blockFiber4TwoSmall block hcard i) := by
  classical
  let e := blockFiber4TwoEquiv block i (hcard i)
  intro x y hxy
  apply e.symm.injective
  apply Subtype.ext
  simpa [blockFiber4TwoSmall, e] using hxy

private noncomputable def commonThreeThreeTwoMissingBlockSystem_of_cross_blocks
    (G : OctonaryFourTwoProfileGraph)
    (block : (i : Fin 4) → Fin 8 → Fin 3)
    (hE01 : boolEdgeSet8 G.E01 = missingCrossBlockPairs4 block 0 1)
    (hE02 : boolEdgeSet8 G.E02 = missingCrossBlockPairs4 block 0 2)
    (hE03 : boolEdgeSet8 G.E03 = missingCrossBlockPairs4 block 0 3)
    (hE12 : boolEdgeSet8 G.E12 = missingCrossBlockPairs4 block 1 2)
    (hE13 : boolEdgeSet8 G.E13 = missingCrossBlockPairs4 block 1 3)
    (hE23 : boolEdgeSet8 G.E23 = missingCrossBlockPairs4 block 2 3)
    (hblock0 : ∀ i : Fin 4, (blockFiber4 block i 0).card = 3)
    (hblock1 : ∀ i : Fin 4, (blockFiber4 block i 1).card = 3) :
    CommonThreeThreeTwoMissingBlockSystem G := by
  classical
  let hblock2 : ∀ i : Fin 4, (blockFiber4 block i 2).card = 2 :=
    blockFiber4_card_two_of_three_three block hblock0 hblock1
  exact
    { block := block
      small := blockFiber4TwoSmall block hblock2
      E01_cross := hE01
      E02_cross := hE02
      E03_cross := hE03
      E12_cross := hE12
      E13_cross := hE13
      E23_cross := hE23
      block0_card := hblock0
      block1_card := hblock1
      small_mem := blockFiber4TwoSmall_mem block hblock2
      small_surj := blockFiber4TwoSmall_surj block hblock2
      small_inj := blockFiber4TwoSmall_inj block hblock2 }

private noncomputable def commonThreeThreeTwoMissingBlockSystem_of_common_cross_blocks
    (G : OctonaryFourTwoProfileGraph)
    (hcommon : G.HasCommonThreeThreeTwoCrossBlocks) :
    CommonThreeThreeTwoMissingBlockSystem G := by
  classical
  let block : Fin 4 → ThreeThreeTwoBlock8 := Classical.choose hcommon
  have hblock := Classical.choose_spec hcommon
  apply commonThreeThreeTwoMissingBlockSystem_of_cross_blocks
    G (fun i a => (block i).block a)
  · simpa [ThreeThreeTwoBlock8.crossPairs, missingCrossBlockPairs8,
      missingCrossBlockPairs4] using hblock.1
  · simpa [ThreeThreeTwoBlock8.crossPairs, missingCrossBlockPairs8,
      missingCrossBlockPairs4] using hblock.2.1
  · simpa [ThreeThreeTwoBlock8.crossPairs, missingCrossBlockPairs8,
      missingCrossBlockPairs4] using hblock.2.2.1
  · simpa [ThreeThreeTwoBlock8.crossPairs, missingCrossBlockPairs8,
      missingCrossBlockPairs4] using hblock.2.2.2.1
  · simpa [ThreeThreeTwoBlock8.crossPairs, missingCrossBlockPairs8,
      missingCrossBlockPairs4] using hblock.2.2.2.2.1
  · simpa [ThreeThreeTwoBlock8.crossPairs, missingCrossBlockPairs8,
      missingCrossBlockPairs4] using hblock.2.2.2.2.2
  · intro i
    exact (block i).block0_card
  · intro i
    exact (block i).block1_card

private noncomputable def exact42_common_block_system_direct_of_common_cross_block_classifier
    (classifier :
      ∀ G : OctonaryFourTwoProfileGraph,
        G.canonicalBalanced →
        G.exact42 →
        G.HasCommonThreeThreeTwoCrossBlocks)
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42) :
    CommonThreeThreeTwoMissingBlockSystem G :=
  commonThreeThreeTwoMissingBlockSystem_of_common_cross_blocks G
    (classifier G hbal hexact)

private noncomputable def exact42_common_block_system_direct_of_canonicalized_classifiers
    (e01Classifier :
      ∀ G : OctonaryFourTwoProfileGraph,
        G.canonicalBalanced →
        G.exact42 →
        G.E01HasCanonicalLowThreeThreeTwoBlockForm)
    (canonicalClassifier :
      ∀ G : OctonaryFourTwoProfileGraph,
        G.canonicalBalanced →
        G.exact42 →
        G.E01IsCanonicalThreeThreeTwoBlock →
        G.HasCommonThreeThreeTwoCrossBlocks)
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42) :
    CommonThreeThreeTwoMissingBlockSystem G :=
  commonThreeThreeTwoMissingBlockSystem_of_common_cross_blocks G
    (G.HasCommonThreeThreeTwoCrossBlocks_of_classifiers
      e01Classifier canonicalClassifier hbal hexact)

private noncomputable def exact42_common_block_system_direct_of_lrat
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hexact : G.exact42) :
    CommonThreeThreeTwoMissingBlockSystem G :=
  exact42_common_block_system_direct_of_canonicalized_classifiers
    OctonaryFourTwoProfileGraph.E01HasCanonicalLowThreeThreeTwoBlockForm_of_lrat
    OctonaryFourTwoProfileGraph.HasCommonThreeThreeTwoCrossBlocks_of_lrat
    G hbal hexact

private noncomputable def balanced_common_block_system_direct_of_lower_lrat
    (G : OctonaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced) :
    CommonThreeThreeTwoMissingBlockSystem G :=
  commonThreeThreeTwoMissingBlockSystem_of_common_cross_blocks G
    (G.HasCommonThreeThreeTwoCrossBlocks_of_lower_classifiers
      OctonaryFourTwoProfileGraph.E01HasCanonicalLowThreeThreeTwoBlockForm_of_lower_lrat
      OctonaryFourTwoProfileGraph.HasCommonThreeThreeTwoCrossBlocks_of_lower_lrat
      hbal)

private theorem pairValues4_eq_sameBlockPairValues4_of_missingCrossBlock
    (C : Finset (QaryWord 8 4))
    (block : (i : Fin 4) → Fin 8 → Fin 3)
    (i j : Fin 4)
    (hmissing :
      (Finset.univ.filter (fun p : Fin 8 × Fin 8 => pairMissing4 C i j p.1 p.2)) =
        missingCrossBlockPairs4 block i j) :
    pairValues4 C i j = sameBlockPairValues4 block i j := by
  classical
  ext p
  have hmiss :
      p ∈ (Finset.univ.filter (fun p : Fin 8 × Fin 8 => pairMissing4 C i j p.1 p.2)) ↔
        p ∈ missingCrossBlockPairs4 block i j := by
    rw [hmissing]
  constructor
  · intro hp
    have hnotMissing : ¬ pairMissing4 C i j p.1 p.2 := by
      simpa [pairMissing4] using hp
    have hsame : block i p.1 = block j p.2 := by
      by_contra hne
      have hpMissSet :
          p ∈ (Finset.univ.filter
            (fun p : Fin 8 × Fin 8 => pairMissing4 C i j p.1 p.2)) := by
        exact hmiss.mpr (by simp [missingCrossBlockPairs4, hne])
      exact hnotMissing (by simpa using hpMissSet)
    simp [sameBlockPairValues4, hsame]
  · intro hp
    have hsame : block i p.1 = block j p.2 := by
      simpa [sameBlockPairValues4] using hp
    by_contra hnot
    have hpMissSet :
        p ∈ (Finset.univ.filter
          (fun p : Fin 8 × Fin 8 => pairMissing4 C i j p.1 p.2)) := by
      simpa [pairMissing4] using hnot
    have hpCross : p ∈ missingCrossBlockPairs4 block i j := hmiss.mp hpMissSet
    have hne : block i p.1 ≠ block j p.2 := by
      simpa [missingCrossBlockPairs4] using hpCross
    exact hne hsame

private def blockComponent4
    (C : Finset (QaryWord 8 4))
    (block : (i : Fin 4) → Fin 8 → Fin 3)
    (k : Fin 3) : Finset (QaryWord 8 4) :=
  C.filter (fun w => ∀ i : Fin 4, block i (w i) = k)

private theorem codeword_blocks_eq_zero_of_common_block_pairValues
    (C : Finset (QaryWord 8 4))
    (block : (i : Fin 4) → Fin 8 → Fin 3)
    (hpair :
      ∀ i j : Fin 4, i < j →
        pairValues4 C i j = sameBlockPairValues4 block i j)
    (w : QaryWord 8 4)
    (hwC : w ∈ C)
    (i : Fin 4) :
    block i (w i) = block 0 (w 0) := by
  fin_cases i
  · rfl
  · have hmem : (w 0, w 1) ∈ sameBlockPairValues4 block 0 1 := by
      rw [← hpair 0 1 (by decide)]
      exact Finset.mem_image.mpr ⟨w, hwC, rfl⟩
    have heq : block 0 (w 0) = block 1 (w 1) := by
      simpa [sameBlockPairValues4] using hmem
    exact heq.symm
  · have hmem : (w 0, w 2) ∈ sameBlockPairValues4 block 0 2 := by
      rw [← hpair 0 2 (by decide)]
      exact Finset.mem_image.mpr ⟨w, hwC, rfl⟩
    have heq : block 0 (w 0) = block 2 (w 2) := by
      simpa [sameBlockPairValues4] using hmem
    exact heq.symm
  · have hmem : (w 0, w 3) ∈ sameBlockPairValues4 block 0 3 := by
      rw [← hpair 0 3 (by decide)]
      exact Finset.mem_image.mpr ⟨w, hwC, rfl⟩
    have heq : block 0 (w 0) = block 3 (w 3) := by
      simpa [sameBlockPairValues4] using hmem
    exact heq.symm

private theorem blockComponent4_disjoint_of_ne
    (C : Finset (QaryWord 8 4))
    (block : (i : Fin 4) → Fin 8 → Fin 3)
    {k l : Fin 3}
    (hkl : k ≠ l) :
    Disjoint (blockComponent4 C block k) (blockComponent4 C block l) := by
  rw [Finset.disjoint_left]
  intro w hwk hwl
  simp [blockComponent4] at hwk hwl
  have hEq : k = l := (hwk.2 0).symm.trans (hwl.2 0)
  exact hkl hEq

private theorem blockComponent4_card_ge_pair01_fiber_product
    (C : Finset (QaryWord 8 4))
    (block : (i : Fin 4) → Fin 8 → Fin 3)
    (hpair :
      ∀ i j : Fin 4, i < j →
        pairValues4 C i j = sameBlockPairValues4 block i j)
    (k : Fin 3) :
    (blockFiber4 block 0 k).card * (blockFiber4 block 1 k).card ≤
      (blockComponent4 C block k).card := by
  classical
  let P : Finset (Fin 8 × Fin 8) :=
    (blockFiber4 block 0 k).product (blockFiber4 block 1 k)
  have hsub : P ⊆ pairValues4 (blockComponent4 C block k) 0 1 := by
    intro p hp
    rcases p with ⟨a, b⟩
    have ha : block 0 a = k := by
      simpa [P, blockFiber4] using (Finset.mem_product.mp hp).1
    have hb : block 1 b = k := by
      simpa [P, blockFiber4] using (Finset.mem_product.mp hp).2
    have hpSame : (a, b) ∈ sameBlockPairValues4 block 0 1 := by
      simp [sameBlockPairValues4, ha, hb]
    have hpPair : (a, b) ∈ pairValues4 C 0 1 := by
      rw [hpair 0 1 (by decide)]
      exact hpSame
    rcases Finset.mem_image.mp hpPair with ⟨w, hwC, hwpair⟩
    have hw0 : w 0 = a := congrArg Prod.fst hwpair
    have hw1 : w 1 = b := congrArg Prod.snd hwpair
    have hblocks :=
      codeword_blocks_eq_zero_of_common_block_pairValues C block hpair w hwC
    have hwComp : w ∈ blockComponent4 C block k := by
      simp [blockComponent4, hwC]
      intro i
      calc
        block i (w i) = block 0 (w 0) := hblocks i
        _ = block 0 a := by rw [hw0]
        _ = k := ha
    exact Finset.mem_image.mpr ⟨w, hwComp, hwpair⟩
  calc
    (blockFiber4 block 0 k).card * (blockFiber4 block 1 k).card = P.card := by
      simp [P]
    _ ≤ (pairValues4 (blockComponent4 C block k) 0 1).card :=
      Finset.card_le_card hsub
    _ ≤ (blockComponent4 C block k).card :=
      Finset.card_image_le

private theorem no_code_with_common_three_three_two_block_system
    (C : Finset (QaryWord 8 4))
    (block : (i : Fin 4) → Fin 8 → Fin 3)
    (small : (i : Fin 4) → Fin 2 → Fin 8)
    (hcard : C.card = 22)
    (hpair :
      ∀ i j : Fin 4, i < j →
        pairValues4 C i j = sameBlockPairValues4 block i j)
    (hblock0 : ∀ i : Fin 4, (blockFiber4 block i 0).card = 3)
    (hblock1 : ∀ i : Fin 4, (blockFiber4 block i 1).card = 3)
    (hsmall_mem : ∀ i : Fin 4, ∀ x : Fin 2, block i (small i x) = 2)
    (hsmall_surj :
      ∀ i : Fin 4, ∀ a : Fin 8, block i a = 2 → ∃ x : Fin 2, a = small i x)
    (hinj : ∀ i : Fin 4, Function.Injective (small i)) :
    False := by
  classical
  let C0 := blockComponent4 C block 0
  let C1 := blockComponent4 C block 1
  let C2 := blockComponent4 C block 2
  have hC0ge : 9 ≤ C0.card := by
    have h :=
      blockComponent4_card_ge_pair01_fiber_product C block hpair (0 : Fin 3)
    have hprod :
        (blockFiber4 block 0 (0 : Fin 3)).card *
            (blockFiber4 block 1 (0 : Fin 3)).card = 9 := by
      rw [hblock0 0, hblock0 1]
    have h' : 9 ≤ (blockComponent4 C block (0 : Fin 3)).card := by
      omega
    simpa [C0] using h'
  have hC1ge : 9 ≤ C1.card := by
    have h :=
      blockComponent4_card_ge_pair01_fiber_product C block hpair (1 : Fin 3)
    have hprod :
        (blockFiber4 block 0 (1 : Fin 3)).card *
            (blockFiber4 block 1 (1 : Fin 3)).card = 9 := by
      rw [hblock1 0, hblock1 1]
    have h' : 9 ≤ (blockComponent4 C block (1 : Fin 3)).card := by
      omega
    simpa [C1] using h'
  have hdisj01 : Disjoint C0 C1 := by
    simpa [C0, C1] using
      blockComponent4_disjoint_of_ne C block
        (by decide : (0 : Fin 3) ≠ (1 : Fin 3))
  have hdisj02 : Disjoint C0 C2 := by
    simpa [C0, C2] using
      blockComponent4_disjoint_of_ne C block
        (by decide : (0 : Fin 3) ≠ (2 : Fin 3))
  have hdisj12 : Disjoint C1 C2 := by
    simpa [C1, C2] using
      blockComponent4_disjoint_of_ne C block
        (by decide : (1 : Fin 3) ≠ (2 : Fin 3))
  have hdisjU : Disjoint (C0 ∪ C1) C2 := by
    rw [Finset.disjoint_left]
    intro w hwU hw2
    simp at hwU
    rcases hwU with hw0 | hw1
    · exact (Finset.disjoint_left.mp hdisj02) hw0 hw2
    · exact (Finset.disjoint_left.mp hdisj12) hw1 hw2
  have hUcard :
      ((C0 ∪ C1) ∪ C2).card = C0.card + C1.card + C2.card := by
    rw [Finset.card_union_of_disjoint hdisjU]
    rw [Finset.card_union_of_disjoint hdisj01]
  have hUsub : ((C0 ∪ C1) ∪ C2) ⊆ C := by
    intro w hw
    simp [C0, C1, C2, blockComponent4] at hw
    tauto
  have hUle : ((C0 ∪ C1) ∪ C2).card ≤ C.card :=
    Finset.card_le_card hUsub
  have hC2le : C2.card ≤ 4 := by
    omega
  let D := binaryPreimageCode C small
  have hlift_inj : Function.Injective (liftBinaryBlock small) := by
    intro x y hxy
    funext i
    exact hinj i (congrFun hxy i)
  have hDimage_card :
      (D.image (liftBinaryBlock small)).card = D.card :=
    Finset.card_image_of_injective _ hlift_inj
  have hDimage_sub : D.image (liftBinaryBlock small) ⊆ C2 := by
    intro w hw
    rcases Finset.mem_image.mp hw with ⟨x, hxD, rfl⟩
    have hxC : liftBinaryBlock small x ∈ C := by
      simpa [D, binaryPreimageCode] using hxD
    simp [C2, blockComponent4, hxC, liftBinaryBlock, hsmall_mem]
  have hDcard_le : D.card ≤ 4 := by
    have hDleC2 : D.card ≤ C2.card := by
      calc
        D.card = (D.image (liftBinaryBlock small)).card := hDimage_card.symm
        _ ≤ C2.card := Finset.card_le_card hDimage_sub
    exact hDleC2.trans hC2le
  have hfullSmall :
      ∀ i j : Fin 4, i < j → ∀ a b : Fin 2,
        ∃ w : QaryWord 8 4,
          w ∈ C ∧
          (∀ k : Fin 4, ∃ x : Fin 2, w k = small k x) ∧
          w i = small i a ∧
          w j = small j b := by
    intro i j hij a b
    have hpSame : (small i a, small j b) ∈ sameBlockPairValues4 block i j := by
      simp [sameBlockPairValues4, hsmall_mem]
    have hpPair : (small i a, small j b) ∈ pairValues4 C i j := by
      rw [hpair i j hij]
      exact hpSame
    rcases Finset.mem_image.mp hpPair with ⟨w, hwC, hwpair⟩
    have hwi : w i = small i a := congrArg Prod.fst hwpair
    have hwj : w j = small j b := congrArg Prod.snd hwpair
    have hblocks :=
      codeword_blocks_eq_zero_of_common_block_pairValues C block hpair w hwC
    have h0small : block 0 (w 0) = 2 := by
      calc
        block 0 (w 0) = block i (w i) := (hblocks i).symm
        _ = block i (small i a) := by rw [hwi]
        _ = 2 := hsmall_mem i a
    have hwSmall : ∀ k : Fin 4, ∃ x : Fin 2, w k = small k x := by
      intro k
      exact hsmall_surj k (w k) ((hblocks k).trans h0small)
    exact ⟨w, hwC, hwSmall, hwi, hwj⟩
  exact no_octonary_binary_component_at_most_four_rows
    C small hinj hDcard_le hfullSmall

private theorem no_code_with_common_three_three_two_missing_cross_block_system
    (C : Finset (QaryWord 8 4))
    (block : (i : Fin 4) → Fin 8 → Fin 3)
    (small : (i : Fin 4) → Fin 2 → Fin 8)
    (hcard : C.card = 22)
    (hmissing :
      ∀ i j : Fin 4, i < j →
        (Finset.univ.filter
          (fun p : Fin 8 × Fin 8 => pairMissing4 C i j p.1 p.2)) =
            missingCrossBlockPairs4 block i j)
    (hblock0 : ∀ i : Fin 4, (blockFiber4 block i 0).card = 3)
    (hblock1 : ∀ i : Fin 4, (blockFiber4 block i 1).card = 3)
    (hsmall_mem : ∀ i : Fin 4, ∀ x : Fin 2, block i (small i x) = 2)
    (hsmall_surj :
      ∀ i : Fin 4, ∀ a : Fin 8, block i a = 2 → ∃ x : Fin 2, a = small i x)
    (hinj : ∀ i : Fin 4, Function.Injective (small i)) :
    False := by
  apply no_code_with_common_three_three_two_block_system
    C block small hcard
  · intro i j hij
    exact pairValues4_eq_sameBlockPairValues4_of_missingCrossBlock
      C block i j (hmissing i j hij)
  · exact hblock0
  · exact hblock1
  · exact hsmall_mem
  · exact hsmall_surj
  · exact hinj

private theorem coordFiber4_card_sum (C : Finset (QaryWord 8 4)) (i : Fin 4) :
    C.card = ∑ a : Fin 8, (C.filter (fun w => w i = a)).card := by
  simpa using
    (Finset.card_eq_sum_card_fiberwise
      (s := C) (t := (Finset.univ : Finset (Fin 8)))
      (f := fun w : QaryWord 8 4 => w i) (by intro w _hw; simp))

private theorem pairMissing_row_card_ge_of_fiber_card_le
    (C : Finset (QaryWord 8 4))
    (i j : Fin 4)
    (a : Fin 8)
    (t : Nat)
    (hFle : (C.filter (fun w => w i = a)).card ≤ t) :
    8 - t ≤ (Finset.univ.filter (fun b => pairMissing4 C i j a b)).card := by
  classical
  let F : Finset (QaryWord 8 4) := C.filter (fun w => w i = a)
  let P : Finset (Fin 8) := F.image (fun w => w j)
  have hPle : P.card ≤ t := Finset.card_image_le.trans hFle
  have hset :
      (Finset.univ.filter (fun b => pairMissing4 C i j a b)) =
        (Finset.univ : Finset (Fin 8)) \ P := by
    ext b
    simp [pairMissing4, pairValues4, P, F, Prod.ext_iff]
  rw [hset]
  have hPsub : P ⊆ (Finset.univ : Finset (Fin 8)) := by intro b _hb; simp
  rw [Finset.card_sdiff_of_subset hPsub]
  simp [Fintype.card_fin]
  omega

private theorem pairMissing_row_card_ge_six_of_card_le_sixteen
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card ≤ 16)
    (i j : Fin 4)
    (a : Fin 8) :
    6 ≤ (Finset.univ.filter (fun b => pairMissing4 C i j a b)).card := by
  classical
  let F : Finset (QaryWord 8 4) := C.filter (fun w => w i = a)
  let P : Finset (Fin 8) := F.image (fun w => w j)
  have hFle : F.card ≤ 2 := by
    by_contra hnot
    have hFge : 3 ≤ F.card := by omega
    have hsum_lower :
        (∑ b : Fin 8, (if b = a then 3 else 2 : Nat)) ≤
          ∑ b : Fin 8, (C.filter (fun w => w i = b)).card := by
      exact Finset.sum_le_sum (fun b _hb => by
        by_cases hba : b = a
        · subst b
          simpa using hFge
        · have hbge :=
            octonaryFourRadiusTwo_symbol_fiber_card_ge_two_of_card_le_twenty_two
              C hC (hcard.trans (by decide : 16 ≤ 22)) i b
          simpa [hba] using hbge)
    have hconst : (∑ b : Fin 8, (if b = a then 3 else 2 : Nat)) = 17 := by
      fin_cases a <;> covering_decide
    have hsum :
        C.card = ∑ b : Fin 8, (C.filter (fun w => w i = b)).card := by
      simpa using
        (Finset.card_eq_sum_card_fiberwise
          (s := C) (t := (Finset.univ : Finset (Fin 8)))
          (f := fun w : QaryWord 8 4 => w i) (by intro w _hw; simp))
    have htotal : 17 ≤ C.card := by
      rw [hsum]
      exact hconst.symm ▸ hsum_lower
    omega
  have hPle : P.card ≤ 2 := Finset.card_image_le.trans hFle
  have hset :
      (Finset.univ.filter (fun b => pairMissing4 C i j a b)) =
        (Finset.univ : Finset (Fin 8)) \ P := by
    ext b
    simp [pairMissing4, pairValues4, P, F, Prod.ext_iff]
  rw [hset]
  have hPsub : P ⊆ (Finset.univ : Finset (Fin 8)) := by intro b _hb; simp
  rw [Finset.card_sdiff_of_subset hPsub]
  simp [Fintype.card_fin]
  omega

private theorem exists_weak_symbol_for_coord_of_card_le_seventeen
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card ≤ 17)
    (i : Fin 4) :
    ∃ s : Fin 8,
      (C.filter (fun w => w i = s)).card ≤ 3 ∧
      ∀ a : Fin 8, a ≠ s → (C.filter (fun w => w i = a)).card ≤ 2 := by
  classical
  by_cases hexists : ∃ s : Fin 8, 3 ≤ (C.filter (fun w => w i = s)).card
  · obtain ⟨s, hsge⟩ := hexists
    refine ⟨s, ?_, ?_⟩
    · by_contra hnot
      have hsge4 : 4 ≤ (C.filter (fun w => w i = s)).card := by omega
      have hsum_lower :
          (∑ a : Fin 8, (if a = s then 4 else 2 : Nat)) ≤
            ∑ a : Fin 8, (C.filter (fun w => w i = a)).card := by
        exact Finset.sum_le_sum (fun a _ha => by
          by_cases has : a = s
          · subst a
            simpa using hsge4
          · have hge2 :=
              octonaryFourRadiusTwo_symbol_fiber_card_ge_two_of_card_le_twenty_two
                C hC (hcard.trans (by decide : 17 ≤ 22)) i a
            simpa [has] using hge2)
      have hconst : (∑ a : Fin 8, (if a = s then 4 else 2 : Nat)) = 18 := by
        fin_cases s <;> covering_decide
      have htotal : 18 ≤ C.card := by
        rw [coordFiber4_card_sum C i]
        exact hconst.symm ▸ hsum_lower
      omega
    · intro a has
      by_contra hnot
      have hage3 : 3 ≤ (C.filter (fun w => w i = a)).card := by omega
      have hsum_lower :
          (∑ b : Fin 8, (if b = s then 3 else if b = a then 3 else 2 : Nat)) ≤
            ∑ b : Fin 8, (C.filter (fun w => w i = b)).card := by
        exact Finset.sum_le_sum (fun b _hb => by
          by_cases hbs : b = s
          · subst b
            simpa using hsge
          · by_cases hba : b = a
            · subst b
              simpa [has] using hage3
            · have hge2 :=
                octonaryFourRadiusTwo_symbol_fiber_card_ge_two_of_card_le_twenty_two
                  C hC (hcard.trans (by decide : 17 ≤ 22)) i b
              simpa [hbs, hba] using hge2)
      have hconst :
          (∑ b : Fin 8, (if b = s then 3 else if b = a then 3 else 2 : Nat)) = 18 := by
        fin_cases s <;> fin_cases a <;> simp at has ⊢ <;> covering_decide
      have htotal : 18 ≤ C.card := by
        rw [coordFiber4_card_sum C i]
        exact hconst.symm ▸ hsum_lower
      omega
  · refine ⟨f8_0, ?_, ?_⟩
    · have hle2 : (C.filter (fun w => w i = f8_0)).card ≤ 2 := by
        by_contra hnot
        exact hexists ⟨f8_0, by omega⟩
      omega
    · intro a _ha
      by_contra hnot
      exact hexists ⟨a, by omega⟩

private theorem pairMissing_row_card_ge_one_weak_of_card_le_seventeen
    (C : Finset (QaryWord 8 4))
    (i j : Fin 4)
    (s : Fin 8)
    (hs : (C.filter (fun w => w i = s)).card ≤ 3 ∧
      ∀ a : Fin 8, a ≠ s → (C.filter (fun w => w i = a)).card ≤ 2)
    (a : Fin 8) :
    (if a = s then 5 else 6) ≤
      (Finset.univ.filter (fun b => pairMissing4 C i j a b)).card := by
  classical
  by_cases has : a = s
  · subst a
    simpa using
      pairMissing_row_card_ge_of_fiber_card_le C i j s 3 hs.1
  · have hle2 := hs.2 a has
    simpa [has] using
      pairMissing_row_card_ge_of_fiber_card_le C i j a 2 hle2

private def coordExcess4 (C : Finset (QaryWord 8 4)) (i : Fin 4) (a : Fin 8) : Nat :=
  (C.filter (fun w => w i = a)).card - 2

private theorem coordExcess4_sum_eq_six_of_card_eq_twenty_two
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card = 22)
    (i : Fin 4) :
    (∑ a : Fin 8, coordExcess4 C i a) = 6 := by
  classical
  have hcard_le : C.card ≤ 22 := by omega
  have hge2 : ∀ a : Fin 8, 2 ≤ (C.filter (fun w => w i = a)).card := by
    intro a
    exact octonaryFourRadiusTwo_symbol_fiber_card_ge_two_of_card_le_twenty_two
      C hC hcard_le i a
  have hsum_add :
      (∑ a : Fin 8, coordExcess4 C i a) + (∑ _a : Fin 8, (2 : Nat)) =
        ∑ a : Fin 8, (C.filter (fun w => w i = a)).card := by
    calc
      (∑ a : Fin 8, coordExcess4 C i a) + (∑ _a : Fin 8, (2 : Nat))
          = ∑ a : Fin 8, (coordExcess4 C i a + 2) := by
            rw [Finset.sum_add_distrib]
      _ = ∑ a : Fin 8, (C.filter (fun w => w i = a)).card := by
            apply Finset.sum_congr rfl
            intro a _ha
            have h := hge2 a
            simp [coordExcess4]
            omega
  have hconst : (∑ _a : Fin 8, (2 : Nat)) = 16 := by
    covering_decide
  have hsum_fibers :
      ∑ a : Fin 8, (C.filter (fun w => w i = a)).card = C.card := by
    rw [← coordFiber4_card_sum C i]
  omega

private theorem coordExcess4_sum_le_five_of_card_le_twenty_one
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card ≤ 21)
    (i : Fin 4) :
    (∑ a : Fin 8, coordExcess4 C i a) ≤ 5 := by
  classical
  have hge2 : ∀ a : Fin 8, 2 ≤ (C.filter (fun w => w i = a)).card := by
    intro a
    exact octonaryFourRadiusTwo_symbol_fiber_card_ge_two_of_card_le_twenty_two
      C hC (hcard.trans (by decide : 21 ≤ 22)) i a
  have hsum_add :
      (∑ a : Fin 8, coordExcess4 C i a) + (∑ _a : Fin 8, (2 : Nat)) =
        ∑ a : Fin 8, (C.filter (fun w => w i = a)).card := by
    calc
      (∑ a : Fin 8, coordExcess4 C i a) + (∑ _a : Fin 8, (2 : Nat))
          = ∑ a : Fin 8, (coordExcess4 C i a + 2) := by
            rw [Finset.sum_add_distrib]
      _ = ∑ a : Fin 8, (C.filter (fun w => w i = a)).card := by
            apply Finset.sum_congr rfl
            intro a _ha
            have h := hge2 a
            simp [coordExcess4]
            omega
  have hconst : (∑ _a : Fin 8, (2 : Nat)) = 16 := by
    covering_decide
  have hsum_fibers :
      ∑ a : Fin 8, (C.filter (fun w => w i = a)).card = C.card := by
    rw [← coordFiber4_card_sum C i]
  omega

private theorem pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card ≤ 22)
    (i j : Fin 4)
    (a : Fin 8) :
    6 - coordExcess4 C i a ≤
      (Finset.univ.filter (fun b => pairMissing4 C i j a b)).card := by
  classical
  have hge2 : 2 ≤ (C.filter (fun w => w i = a)).card :=
    octonaryFourRadiusTwo_symbol_fiber_card_ge_two_of_card_le_twenty_two
      C hC hcard i a
  have hFle :
      (C.filter (fun w => w i = a)).card ≤ 2 + coordExcess4 C i a := by
    simp [coordExcess4]
    omega
  have hrow :=
    pairMissing_row_card_ge_of_fiber_card_le C i j a
      (2 + coordExcess4 C i a) hFle
  have hcmp : 6 - coordExcess4 C i a ≤ 8 - (2 + coordExcess4 C i a) := by
    omega
  exact hcmp.trans hrow

private theorem pairMissing_row_card_ge_six_sub_coordExcess4
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card ≤ 21)
    (i j : Fin 4)
    (a : Fin 8) :
    6 - coordExcess4 C i a ≤
      (Finset.univ.filter (fun b => pairMissing4 C i j a b)).card :=
  pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
    C hC (hcard.trans (by decide : 21 ≤ 22)) i j a

private theorem pairMissing4_col_card_eq_swapped_row_card
    (C : Finset (QaryWord 8 4))
    (i j : Fin 4)
    (b : Fin 8) :
    (Finset.univ.filter (fun a => pairMissing4 C i j a b)).card =
      (Finset.univ.filter (fun a => pairMissing4 C j i b a)).card := by
  congr 1
  ext a
  simp [pairMissing4, pairValues4, Prod.ext_iff]
  constructor
  · intro h x hxC hxj hxi
    exact h x hxC hxi hxj
  · intro h x hxC hxi hxj
    exact h x hxC hxj hxi

private theorem pairMissing_col_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card ≤ 22)
    (i j : Fin 4)
    (b : Fin 8) :
    6 - coordExcess4 C j b ≤
      (Finset.univ.filter (fun a => pairMissing4 C i j a b)).card := by
  rw [pairMissing4_col_card_eq_swapped_row_card C i j b]
  exact pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
    C hC hcard j i b

set_option maxRecDepth 1000000 in
private theorem sum_if_mem_three_two_fin8 (W : Finset (Fin 8)) :
    (∑ a : Fin 8, (if a ∈ W then 3 else 2 : Nat)) = 16 + W.card := by
  revert W
  covering_decide

private def weakRows4 (C : Finset (QaryWord 8 4)) (i : Fin 4) : Finset (Fin 8) :=
  Finset.univ.filter (fun a => 2 < (C.filter (fun w => w i = a)).card)

private theorem weakRows4_eq_positive_coordExcess4
    (C : Finset (QaryWord 8 4))
    (i : Fin 4) :
    weakRows4 C i =
      Finset.univ.filter (fun a : Fin 8 => 0 < coordExcess4 C i a) := by
  classical
  ext a
  simp [weakRows4, coordExcess4]

private theorem weakRows4_card_le_three_of_card_le_nineteen
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card ≤ 19)
    (i : Fin 4) :
    (weakRows4 C i).card ≤ 3 := by
  classical
  let W := weakRows4 C i
  have hsum_lower :
      (∑ a : Fin 8, (if a ∈ W then 3 else 2 : Nat)) ≤
        ∑ a : Fin 8, (C.filter (fun w => w i = a)).card := by
    exact Finset.sum_le_sum (fun a _ha => by
      by_cases haW : a ∈ W
      · have hgt : 2 < (C.filter (fun w => w i = a)).card := by
          simpa [W, weakRows4] using haW
        have hge3 : 3 ≤ (C.filter (fun w => w i = a)).card := by omega
        simpa [haW] using hge3
      · have hge2 :=
          octonaryFourRadiusTwo_symbol_fiber_card_ge_two_of_card_le_twenty_two
            C hC (hcard.trans (by decide : 19 ≤ 22)) i a
        simpa [haW] using hge2)
  have htotal : 16 + W.card ≤ C.card := by
    rw [coordFiber4_card_sum C i]
    exact (sum_if_mem_three_two_fin8 W).symm ▸ hsum_lower
  change W.card ≤ 3
  omega

private theorem pairMissing_row_card_ge_six_of_not_weak
    (C : Finset (QaryWord 8 4))
    (i j : Fin 4)
    (a : Fin 8)
    (ha : a ∉ weakRows4 C i) :
    6 ≤ (Finset.univ.filter (fun b => pairMissing4 C i j a b)).card := by
  classical
  have hle2 : (C.filter (fun w => w i = a)).card ≤ 2 := by
    by_contra hnot
    have hgt : 2 < (C.filter (fun w => w i = a)).card := by omega
    exact ha (by simp [weakRows4, hgt])
  simpa using pairMissing_row_card_ge_of_fiber_card_le C i j a 2 hle2

private theorem dist_le_two_agrees_pair4 (x c : QaryWord 8 4)
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

private theorem no_pairMissing4_clique_of_covers
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2) :
    ¬ ∃ a b c d,
      pairMissing4 C 0 1 a b ∧ pairMissing4 C 0 2 a c ∧
      pairMissing4 C 0 3 a d ∧ pairMissing4 C 1 2 b c ∧
      pairMissing4 C 1 3 b d ∧ pairMissing4 C 2 3 c d := by
  rintro ⟨a, b, c, d, h01, h02, h03, h12, h13, h23⟩
  let x : QaryWord 8 4 := ![a, b, c, d]
  obtain ⟨center, hcenterC, hdist⟩ := hC x
  have hagree := dist_le_two_agrees_pair4 x center hdist
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

/-- Extract the exact budget-six profile graph from a hypothetical 22-word
cover.  This is the repository-internal Lean bridge to the finite profile
lemmas used by the external certificate. -/
def octonaryFourRadiusTwo_profile_graph_of_card_eq_twenty_two
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card = 22) :
    OctonaryFourTwoProfileGraph := by
  classical
  have hcard_le : C.card ≤ 22 := by omega
  refine
    { E01 := fun a b => decide (pairMissing4 C 0 1 a b)
      E02 := fun a c => decide (pairMissing4 C 0 2 a c)
      E03 := fun a d => decide (pairMissing4 C 0 3 a d)
      E12 := fun b c => decide (pairMissing4 C 1 2 b c)
      E13 := fun b d => decide (pairMissing4 C 1 3 b d)
      E23 := fun c d => decide (pairMissing4 C 2 3 c d)
      d0 := coordExcess4 C 0
      d1 := coordExcess4 C 1
      d2 := coordExcess4 C 2
      d3 := coordExcess4 C 3
      d0_sum := coordExcess4_sum_eq_six_of_card_eq_twenty_two C hC hcard 0
      d1_sum := coordExcess4_sum_eq_six_of_card_eq_twenty_two C hC hcard 1
      d2_sum := coordExcess4_sum_eq_six_of_card_eq_twenty_two C hC hcard 2
      d3_sum := coordExcess4_sum_eq_six_of_card_eq_twenty_two C hC hcard 3
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
    simpa using
      pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 0 1 a
  · intro a
    simpa using
      pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 0 2 a
  · intro a
    simpa using
      pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 0 3 a
  · intro b
    simpa using
      pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 1 2 b
  · intro b
    simpa using
      pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 1 3 b
  · intro c
    simpa using
      pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 2 3 c
  · intro b
    simpa using
      pairMissing_col_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 0 1 b
  · intro c
    simpa using
      pairMissing_col_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 0 2 c
  · intro d
    simpa using
      pairMissing_col_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 0 3 d
  · intro c
    simpa using
      pairMissing_col_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 1 2 c
  · intro d
    simpa using
      pairMissing_col_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 1 3 d
  · intro d
    simpa using
      pairMissing_col_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 2 3 d
  · intro h
    rcases h with ⟨a, b, c, d, h01, h02, h03, h12, h13, h23⟩
    exact no_pairMissing4_clique_of_covers C hC
      ⟨a, b, c, d,
        by simpa using h01,
        by simpa using h02,
        by simpa using h03,
        by simpa using h12,
        by simpa using h13,
        by simpa using h23⟩

private theorem no_cover22_of_extracted_common_missing_block_system
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card = 22)
    (hsystem :
      CommonThreeThreeTwoMissingBlockSystem
        (octonaryFourRadiusTwo_profile_graph_of_card_eq_twenty_two C hC hcard)) :
    False := by
  classical
  rcases hsystem with
    ⟨block, small, hE01, hE02, hE03, hE12, hE13, hE23,
      hblock0, hblock1, hsmall_mem, hsmall_surj, hsmall_inj⟩
  apply no_code_with_common_three_three_two_missing_cross_block_system
    C block small hcard
  · intro i j hij
    fin_cases i <;> fin_cases j <;> simp at hij
    · simpa [octonaryFourRadiusTwo_profile_graph_of_card_eq_twenty_two,
        boolEdgeSet8] using hE01
    · simpa [octonaryFourRadiusTwo_profile_graph_of_card_eq_twenty_two,
        boolEdgeSet8] using hE02
    · simpa [octonaryFourRadiusTwo_profile_graph_of_card_eq_twenty_two,
        boolEdgeSet8] using hE03
    · simpa [octonaryFourRadiusTwo_profile_graph_of_card_eq_twenty_two,
        boolEdgeSet8] using hE12
    · simpa [octonaryFourRadiusTwo_profile_graph_of_card_eq_twenty_two,
        boolEdgeSet8] using hE13
    · simpa [octonaryFourRadiusTwo_profile_graph_of_card_eq_twenty_two,
        boolEdgeSet8] using hE23
  · exact hblock0
  · exact hblock1
  · exact hsmall_mem
  · exact hsmall_surj
  · exact hsmall_inj

private theorem no_cover22_of_extracted_common_cross_blocks
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card = 22)
    (hcommon :
      (octonaryFourRadiusTwo_profile_graph_of_card_eq_twenty_two C hC hcard)
        |>.HasCommonThreeThreeTwoCrossBlocks) :
    False := by
  exact no_cover22_of_extracted_common_missing_block_system C hC hcard
    (commonThreeThreeTwoMissingBlockSystem_of_common_cross_blocks
      (octonaryFourRadiusTwo_profile_graph_of_card_eq_twenty_two C hC hcard)
      hcommon)

private theorem no_cover22_of_coord1_positive_support_le_five
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card = 22)
    (hsupport : (weakRows4 C 1).card ≤ 5) :
    False := by
  classical
  have hcard_le : C.card ≤ 22 := by omega
  have hsupport' :
      (Finset.univ.filter
        (fun b : Fin 8 => 0 < coordExcess4 C 1 b)).card ≤ 5 := by
    rwa [← weakRows4_eq_positive_coordExcess4 C 1]
  obtain ⟨a, b, c, d, h01, h02, h03, h12, h13, h23⟩ :=
    exists_four_partite_clique_of_middle_support_le_five_budget_six
      (pairMissing4 C 0 1) (pairMissing4 C 0 2) (pairMissing4 C 0 3)
      (pairMissing4 C 1 2) (pairMissing4 C 1 3) (pairMissing4 C 2 3)
      (coordExcess4 C 0) (coordExcess4 C 1) (coordExcess4 C 2)
      (by
        have h := coordExcess4_sum_eq_six_of_card_eq_twenty_two C hC hcard 0
        omega)
      hsupport'
      (by
        have h := coordExcess4_sum_eq_six_of_card_eq_twenty_two C hC hcard 2
        omega)
      (pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 0 1)
      (pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 0 2)
      (pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 0 3)
      (pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 1 2)
      (pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 1 3)
      (pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 2 3)
  exact no_pairMissing4_clique_of_covers C hC
    ⟨a, b, c, d, h01, h02, h03, h12, h13, h23⟩

private theorem no_cover22_of_coord0_positive_support_le_five
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card = 22)
    (hsupport : (weakRows4 C 0).card ≤ 5) :
    False := by
  classical
  have hcard_le : C.card ≤ 22 := by omega
  have hsupport' :
      (Finset.univ.filter
        (fun b : Fin 8 => 0 < coordExcess4 C 0 b)).card ≤ 5 := by
    rwa [← weakRows4_eq_positive_coordExcess4 C 0]
  obtain ⟨a, b, c, d, h10, h12, h13, h02, h03, h23⟩ :=
    exists_four_partite_clique_of_middle_support_le_five_budget_six
      (pairMissing4 C 1 0) (pairMissing4 C 1 2) (pairMissing4 C 1 3)
      (pairMissing4 C 0 2) (pairMissing4 C 0 3) (pairMissing4 C 2 3)
      (coordExcess4 C 1) (coordExcess4 C 0) (coordExcess4 C 2)
      (by
        have h := coordExcess4_sum_eq_six_of_card_eq_twenty_two C hC hcard 1
        omega)
      hsupport'
      (by
        have h := coordExcess4_sum_eq_six_of_card_eq_twenty_two C hC hcard 2
        omega)
      (pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 1 0)
      (pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 1 2)
      (pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 1 3)
      (pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 0 2)
      (pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 0 3)
      (pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 2 3)
  exact no_pairMissing4_clique_of_covers C hC
    ⟨b, a, c, d,
      (pairMissing4_comm C 1 0 a b).mp h10,
      h02, h03, h12, h13, h23⟩

private theorem no_cover22_of_coord2_positive_support_le_five
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card = 22)
    (hsupport : (weakRows4 C 2).card ≤ 5) :
    False := by
  classical
  have hcard_le : C.card ≤ 22 := by omega
  have hsupport' :
      (Finset.univ.filter
        (fun b : Fin 8 => 0 < coordExcess4 C 2 b)).card ≤ 5 := by
    rwa [← weakRows4_eq_positive_coordExcess4 C 2]
  obtain ⟨a, b, c, d, h02, h01, h03, h21, h23, h13⟩ :=
    exists_four_partite_clique_of_middle_support_le_five_budget_six
      (pairMissing4 C 0 2) (pairMissing4 C 0 1) (pairMissing4 C 0 3)
      (pairMissing4 C 2 1) (pairMissing4 C 2 3) (pairMissing4 C 1 3)
      (coordExcess4 C 0) (coordExcess4 C 2) (coordExcess4 C 1)
      (by
        have h := coordExcess4_sum_eq_six_of_card_eq_twenty_two C hC hcard 0
        omega)
      hsupport'
      (by
        have h := coordExcess4_sum_eq_six_of_card_eq_twenty_two C hC hcard 1
        omega)
      (pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 0 2)
      (pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 0 1)
      (pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 0 3)
      (pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 2 1)
      (pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 2 3)
      (pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 1 3)
  exact no_pairMissing4_clique_of_covers C hC
    ⟨a, c, b, d,
      h01, h02, h03,
      (pairMissing4_comm C 2 1 b c).mp h21,
      h13, h23⟩

private theorem no_cover22_of_coord3_positive_support_le_five
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card = 22)
    (hsupport : (weakRows4 C 3).card ≤ 5) :
    False := by
  classical
  have hcard_le : C.card ≤ 22 := by omega
  have hsupport' :
      (Finset.univ.filter
        (fun b : Fin 8 => 0 < coordExcess4 C 3 b)).card ≤ 5 := by
    rwa [← weakRows4_eq_positive_coordExcess4 C 3]
  obtain ⟨a, b, c, d, h03, h01, h02, h31, h32, h12⟩ :=
    exists_four_partite_clique_of_middle_support_le_five_budget_six
      (pairMissing4 C 0 3) (pairMissing4 C 0 1) (pairMissing4 C 0 2)
      (pairMissing4 C 3 1) (pairMissing4 C 3 2) (pairMissing4 C 1 2)
      (coordExcess4 C 0) (coordExcess4 C 3) (coordExcess4 C 1)
      (by
        have h := coordExcess4_sum_eq_six_of_card_eq_twenty_two C hC hcard 0
        omega)
      hsupport'
      (by
        have h := coordExcess4_sum_eq_six_of_card_eq_twenty_two C hC hcard 1
        omega)
      (pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 0 3)
      (pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 0 1)
      (pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 0 2)
      (pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 3 1)
      (pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 3 2)
      (pairMissing_row_card_ge_six_sub_coordExcess4_of_card_le_twenty_two
        C hC hcard_le 1 2)
  exact no_pairMissing4_clique_of_covers C hC
    ⟨a, c, d, b,
      h01, h02, h03, h12,
      (pairMissing4_comm C 3 1 b c).mp h31,
      (pairMissing4_comm C 3 2 b d).mp h32⟩

private theorem weakRows4_card_eq_six_of_cover22
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card = 22)
    (i : Fin 4) :
    (weakRows4 C i).card = 6 := by
  classical
  have hsupport_le :
      (weakRows4 C i).card ≤ 6 := by
    rw [weakRows4_eq_positive_coordExcess4]
    have hsum := coordExcess4_sum_eq_six_of_card_eq_twenty_two C hC hcard i
    exact (positive_support_card_le_sum_fin8 (coordExcess4 C i)).trans_eq hsum
  have hnot_le_five : ¬ (weakRows4 C i).card ≤ 5 := by
    intro hle
    fin_cases i
    · exact no_cover22_of_coord0_positive_support_le_five C hC hcard hle
    · exact no_cover22_of_coord1_positive_support_le_five C hC hcard hle
    · exact no_cover22_of_coord2_positive_support_le_five C hC hcard hle
    · exact no_cover22_of_coord3_positive_support_le_five C hC hcard hle
  omega

private theorem coordExcess4_eq_weakRows4_indicator_of_cover22
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card = 22)
    (i : Fin 4)
    (a : Fin 8) :
    coordExcess4 C i a =
      if a ∈ weakRows4 C i then 1 else 0 := by
  classical
  have hsupport_card :
      (Finset.univ.filter
        (fun a : Fin 8 => 0 < coordExcess4 C i a)).card = 6 := by
    rw [← weakRows4_eq_positive_coordExcess4 C i]
    exact weakRows4_card_eq_six_of_cover22 C hC hcard i
  have hsum :
      (∑ a : Fin 8, coordExcess4 C i a) = 6 :=
    coordExcess4_sum_eq_six_of_card_eq_twenty_two C hC hcard i
  have hcard_sum :
      (Finset.univ.filter
        (fun a : Fin 8 => 0 < coordExcess4 C i a)).card =
        ∑ a : Fin 8, coordExcess4 C i a := by
    rw [hsupport_card, hsum]
  simpa [← weakRows4_eq_positive_coordExcess4 C i] using
    deficit_eq_positive_support_indicator_of_card_eq_sum_fin8
      (coordExcess4 C i) hcard_sum a

private noncomputable def weakRowsCanonicalRelabel4
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card = 22)
    (i : Fin 4) :
    Fin 8 ≃ Fin 8 :=
  fin8EquivOfFinsetCardEq (weakRows4 C i) canonicalHighSupport8 (by
    rw [weakRows4_card_eq_six_of_cover22 C hC hcard i,
      canonicalHighSupport8_card])

private theorem weakRowsCanonicalRelabel4_symm_mem_iff
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card = 22)
    (i : Fin 4)
    (a : Fin 8) :
    (weakRowsCanonicalRelabel4 C hC hcard i).symm a ∈ weakRows4 C i ↔
      a ∈ canonicalHighSupport8 := by
  unfold weakRowsCanonicalRelabel4
  exact fin8EquivOfFinsetCardEq_symm_mem_iff
    (weakRows4 C i) canonicalHighSupport8 _ a

private theorem coordExcess4_weakRowsCanonicalRelabel4_symm
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card = 22)
    (i : Fin 4)
    (a : Fin 8) :
    coordExcess4 C i ((weakRowsCanonicalRelabel4 C hC hcard i).symm a) =
      canonicalBalancedExcess8 a := by
  rw [coordExcess4_eq_weakRows4_indicator_of_cover22 C hC hcard i,
    canonicalBalancedExcess8_eq_highSupport_indicator a]
  have hiff := weakRowsCanonicalRelabel4_symm_mem_iff C hC hcard i a
  by_cases ha : a ∈ canonicalHighSupport8
  · have hmem :
        (weakRowsCanonicalRelabel4 C hC hcard i).symm a ∈ weakRows4 C i :=
      hiff.mpr ha
    simp [ha, hmem]
  · have hnot :
        (weakRowsCanonicalRelabel4 C hC hcard i).symm a ∉ weakRows4 C i := by
      intro hmem
      exact ha (hiff.mp hmem)
    simp [ha, hnot]

private theorem octonaryFourRadiusTwo_profile_graph_relabel_canonicalBalanced
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card = 22) :
    ((octonaryFourRadiusTwo_profile_graph_of_card_eq_twenty_two C hC hcard).relabel
      (weakRowsCanonicalRelabel4 C hC hcard 0)
      (weakRowsCanonicalRelabel4 C hC hcard 1)
      (weakRowsCanonicalRelabel4 C hC hcard 2)
      (weakRowsCanonicalRelabel4 C hC hcard 3)).canonicalBalanced := by
  constructor
  · intro a
    simpa [OctonaryFourTwoProfileGraph.relabel,
      octonaryFourRadiusTwo_profile_graph_of_card_eq_twenty_two] using
      coordExcess4_weakRowsCanonicalRelabel4_symm C hC hcard 0 a
  constructor
  · intro a
    simpa [OctonaryFourTwoProfileGraph.relabel,
      octonaryFourRadiusTwo_profile_graph_of_card_eq_twenty_two] using
      coordExcess4_weakRowsCanonicalRelabel4_symm C hC hcard 1 a
  constructor
  · intro a
    simpa [OctonaryFourTwoProfileGraph.relabel,
      octonaryFourRadiusTwo_profile_graph_of_card_eq_twenty_two] using
      coordExcess4_weakRowsCanonicalRelabel4_symm C hC hcard 2 a
  · intro a
    simpa [OctonaryFourTwoProfileGraph.relabel,
      octonaryFourRadiusTwo_profile_graph_of_card_eq_twenty_two] using
      coordExcess4_weakRowsCanonicalRelabel4_symm C hC hcard 3 a

private theorem octonaryFourRadiusTwo_profile_graph_exists_relabel_canonicalBalanced
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card = 22) :
    ∃ p0 p1 p2 p3 : Fin 8 ≃ Fin 8,
      ((octonaryFourRadiusTwo_profile_graph_of_card_eq_twenty_two C hC hcard).relabel
        p0 p1 p2 p3).canonicalBalanced := by
  exact
    ⟨weakRowsCanonicalRelabel4 C hC hcard 0,
      weakRowsCanonicalRelabel4 C hC hcard 1,
      weakRowsCanonicalRelabel4 C hC hcard 2,
      weakRowsCanonicalRelabel4 C hC hcard 3,
      octonaryFourRadiusTwo_profile_graph_relabel_canonicalBalanced C hC hcard⟩

private theorem no_cover22_of_lower_lrat_classifier
    (C : Finset (QaryWord 8 4))
    (hC : CoversFinset C 2)
    (hcard : C.card = 22) :
    False := by
  let G := octonaryFourRadiusTwo_profile_graph_of_card_eq_twenty_two C hC hcard
  let p0 := weakRowsCanonicalRelabel4 C hC hcard 0
  let p1 := weakRowsCanonicalRelabel4 C hC hcard 1
  let p2 := weakRowsCanonicalRelabel4 C hC hcard 2
  let p3 := weakRowsCanonicalRelabel4 C hC hcard 3
  have hbal :
      (G.relabel p0 p1 p2 p3).canonicalBalanced := by
    simpa [G, p0, p1, p2, p3] using
      octonaryFourRadiusTwo_profile_graph_relabel_canonicalBalanced C hC hcard
  have hcommonRel :
      (G.relabel p0 p1 p2 p3).HasCommonThreeThreeTwoCrossBlocks := by
    exact (G.relabel p0 p1 p2 p3).HasCommonThreeThreeTwoCrossBlocks_of_lower_classifiers
      OctonaryFourTwoProfileGraph.E01HasCanonicalLowThreeThreeTwoBlockForm_of_lower_lrat
      OctonaryFourTwoProfileGraph.HasCommonThreeThreeTwoCrossBlocks_of_lower_lrat
      hbal
  have hcommon : G.HasCommonThreeThreeTwoCrossBlocks :=
    G.HasCommonThreeThreeTwoCrossBlocks_of_relabel p0 p1 p2 p3 hcommonRel
  exact no_cover22_of_extracted_common_cross_blocks C hC hcard (by simpa [G] using hcommon)

/-- The min-degree-six complement-pair argument excludes 16-word covers. -/
theorem octonaryFourRadiusTwoLowerSeventeen : QaryKLower 8 4 2 17 := by
  intro C hC
  by_contra hnot
  have hcard : C.card ≤ 16 := by omega
  obtain ⟨a, b, c, d, h01, h02, h03, h12, h13, h23⟩ :=
    exists_four_partite_clique_of_min_degree_six
      (pairMissing4 C 0 1) (pairMissing4 C 0 2) (pairMissing4 C 0 3)
      (pairMissing4 C 1 2) (pairMissing4 C 1 3) (pairMissing4 C 2 3)
      (pairMissing_row_card_ge_six_of_card_le_sixteen C hC hcard 0 1)
      (pairMissing_row_card_ge_six_of_card_le_sixteen C hC hcard 0 2)
      (pairMissing_row_card_ge_six_of_card_le_sixteen C hC hcard 0 3)
      (pairMissing_row_card_ge_six_of_card_le_sixteen C hC hcard 1 2)
      (pairMissing_row_card_ge_six_of_card_le_sixteen C hC hcard 1 3)
      (pairMissing_row_card_ge_six_of_card_le_sixteen C hC hcard 2 3)
  let x : QaryWord 8 4 := ![a, b, c, d]
  obtain ⟨center, hcenterC, hdist⟩ := hC x
  have hagree := dist_le_two_agrees_pair4 x center hdist
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

/-- The same complement-pair argument, with one weak row per source coordinate,
excludes 17-word covers. -/
theorem octonaryFourRadiusTwoLowerEighteen : QaryKLower 8 4 2 18 := by
  intro C hC
  by_contra hnot
  have hcard : C.card ≤ 17 := by omega
  obtain ⟨s0, hs0⟩ := exists_weak_symbol_for_coord_of_card_le_seventeen C hC hcard 0
  obtain ⟨s1, hs1⟩ := exists_weak_symbol_for_coord_of_card_le_seventeen C hC hcard 1
  obtain ⟨s2, hs2⟩ := exists_weak_symbol_for_coord_of_card_le_seventeen C hC hcard 2
  obtain ⟨a, b, c, d, h01, h02, h03, h12, h13, h23⟩ :=
    exists_four_partite_clique_of_one_weak_row
      (pairMissing4 C 0 1) (pairMissing4 C 0 2) (pairMissing4 C 0 3)
      (pairMissing4 C 1 2) (pairMissing4 C 1 3) (pairMissing4 C 2 3)
      s0 s1 s2
      (pairMissing_row_card_ge_one_weak_of_card_le_seventeen C 0 1 s0 hs0)
      (pairMissing_row_card_ge_one_weak_of_card_le_seventeen C 0 2 s0 hs0)
      (pairMissing_row_card_ge_one_weak_of_card_le_seventeen C 0 3 s0 hs0)
      (pairMissing_row_card_ge_one_weak_of_card_le_seventeen C 1 2 s1 hs1)
      (pairMissing_row_card_ge_one_weak_of_card_le_seventeen C 1 3 s1 hs1)
      (pairMissing_row_card_ge_one_weak_of_card_le_seventeen C 2 3 s2 hs2)
  let x : QaryWord 8 4 := ![a, b, c, d]
  obtain ⟨center, hcenterC, hdist⟩ := hC x
  have hagree := dist_le_two_agrees_pair4 x center hdist
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

/-- If a cover had at most 19 words, each of the first three coordinate parts
would have at most three rows whose pair-complement degree can fall below six.
Avoiding those weak rows gives the same all-missing-pairs contradiction. -/
theorem octonaryFourRadiusTwoLowerTwenty : QaryKLower 8 4 2 20 := by
  intro C hC
  by_contra hnot
  have hcard : C.card ≤ 19 := by omega
  let W0 := weakRows4 C 0
  let W1 := weakRows4 C 1
  let W2 := weakRows4 C 2
  have hW0 : W0.card ≤ 3 := by
    simpa [W0] using weakRows4_card_le_three_of_card_le_nineteen C hC hcard 0
  have hW1 : W1.card ≤ 3 := by
    simpa [W1] using weakRows4_card_le_three_of_card_le_nineteen C hC hcard 1
  have hW2 : W2.card ≤ 3 := by
    simpa [W2] using weakRows4_card_le_three_of_card_le_nineteen C hC hcard 2
  obtain ⟨a, b, c, d, h01, h02, h03, h12, h13, h23⟩ :=
    exists_four_partite_clique_avoiding_weak_rows
      (pairMissing4 C 0 1) (pairMissing4 C 0 2) (pairMissing4 C 0 3)
      (pairMissing4 C 1 2) (pairMissing4 C 1 3) (pairMissing4 C 2 3)
      W0 W1 W2 hW0 hW1 hW2
      (by intro a ha; simpa [W0] using pairMissing_row_card_ge_six_of_not_weak C 0 1 a ha)
      (by intro a ha; simpa [W0] using pairMissing_row_card_ge_six_of_not_weak C 0 2 a ha)
      (by intro a ha; simpa [W0] using pairMissing_row_card_ge_six_of_not_weak C 0 3 a ha)
      (by intro b hb; simpa [W1] using pairMissing_row_card_ge_six_of_not_weak C 1 2 b hb)
      (by intro b hb; simpa [W1] using pairMissing_row_card_ge_six_of_not_weak C 1 3 b hb)
      (by intro c hc; simpa [W2] using pairMissing_row_card_ge_six_of_not_weak C 2 3 c hc)
  let x : QaryWord 8 4 := ![a, b, c, d]
  obtain ⟨center, hcenterC, hdist⟩ := hC x
  have hagree := dist_le_two_agrees_pair4 x center hdist
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

/-- The deficit-budget version of the complement-pair argument excludes
21-word covers.  Relative to the guaranteed two codewords in every
coordinate-symbol fiber, a 21-word cover has total excess at most five in each
coordinate.  The budget-five graph lemma still forces an all-missing-pairs
word, contradicting radius-two coverage. -/
theorem octonaryFourRadiusTwoLowerTwentyTwo : QaryKLower 8 4 2 22 := by
  intro C hC
  by_contra hnot
  have hcard : C.card ≤ 21 := by omega
  obtain ⟨a, b, c, d, h01, h02, h03, h12, h13, h23⟩ :=
    exists_four_partite_clique_of_deficit_budget_five
      (pairMissing4 C 0 1) (pairMissing4 C 0 2) (pairMissing4 C 0 3)
      (pairMissing4 C 1 2) (pairMissing4 C 1 3) (pairMissing4 C 2 3)
      (coordExcess4 C 0) (coordExcess4 C 1) (coordExcess4 C 2)
      (coordExcess4_sum_le_five_of_card_le_twenty_one C hC hcard 0)
      (coordExcess4_sum_le_five_of_card_le_twenty_one C hC hcard 1)
      (coordExcess4_sum_le_five_of_card_le_twenty_one C hC hcard 2)
      (pairMissing_row_card_ge_six_sub_coordExcess4 C hC hcard 0 1)
      (pairMissing_row_card_ge_six_sub_coordExcess4 C hC hcard 0 2)
      (pairMissing_row_card_ge_six_sub_coordExcess4 C hC hcard 0 3)
      (pairMissing_row_card_ge_six_sub_coordExcess4 C hC hcard 1 2)
      (pairMissing_row_card_ge_six_sub_coordExcess4 C hC hcard 1 3)
      (pairMissing_row_card_ge_six_sub_coordExcess4 C hC hcard 2 3)
  let x : QaryWord 8 4 := ![a, b, c, d]
  obtain ⟨center, hcenterC, hdist⟩ := hC x
  have hagree := dist_le_two_agrees_pair4 x center hdist
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

/-- The lower-bound LRAT profile classifier excludes 22-word covers. -/
theorem octonaryFourRadiusTwoLowerTwentyThree : QaryKLower 8 4 2 23 := by
  intro C hC
  by_contra hnot
  have hcard_le : C.card ≤ 22 := by omega
  have hcard_ge : 22 ≤ C.card := octonaryFourRadiusTwoLowerTwentyTwo C hC
  have hcard : C.card = 22 := by omega
  exact no_cover22_of_lower_lrat_classifier C hC hcard

/-- The certified fiber-size constraints imply the first nontrivial structural
lower bound for the octonary length-four radius-two case. -/
theorem octonaryFourRadiusTwoLowerSixteen : QaryKLower 8 4 2 16 := by
  intro C hC
  by_cases hcard : C.card ≤ 22
  · have hsum :
        C.card = ∑ a : Fin 8, (C.filter (fun c => c (0 : Fin 4) = a)).card := by
      simpa using
        (Finset.card_eq_sum_card_fiberwise
          (s := C) (t := (Finset.univ : Finset (Fin 8)))
          (f := fun c : QaryWord 8 4 => c (0 : Fin 4)) (by intro c _hc; simp))
    have hsum_lower :
        (∑ _a : Fin 8, (2 : Nat)) ≤
          ∑ a : Fin 8, (C.filter (fun c => c (0 : Fin 4) = a)).card := by
      exact Finset.sum_le_sum (fun a _ha =>
        octonaryFourRadiusTwo_symbol_fiber_card_ge_two_of_card_le_twenty_two
          C hC hcard 0 a)
    have hconst : (∑ _a : Fin 8, (2 : Nat)) = 16 := by
      covering_decide
    rw [← hsum] at hsum_lower
    exact hconst ▸ hsum_lower
  · omega

def octonaryFourRadiusTwoLowerName : String :=
  "lean_octonary_four_two_structural_lower"

def octonaryFourRadiusTwoLower (q n r : Nat) : Nat :=
  if q = 8 ∧ n = 4 ∧ r = 2 then 23 else zeroLower q n r

theorem octonaryFourRadiusTwoLower_valid (q n r : Nat) :
    QaryKLower q n r (octonaryFourRadiusTwoLower q n r) := by
  by_cases h : q = 8 ∧ n = 4 ∧ r = 2
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [octonaryFourRadiusTwoLower] using octonaryFourRadiusTwoLowerTwentyThree
  · simpa [octonaryFourRadiusTwoLower, h] using zeroLower_valid q n r

def octonaryFourRadiusTwoLowerSource : LowerBoundSource where
  value := octonaryFourRadiusTwoLower
  trace := fun q n r =>
    .primitive octonaryFourRadiusTwoLowerName
      (octonaryFourRadiusTwoLower_valid q n r)

end Database
end CoveringCodes
