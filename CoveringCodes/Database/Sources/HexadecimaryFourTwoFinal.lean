import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxCover
import CoveringCodes.Database.Sources.HexadecimaryFourTwoProfileClassifier
import CoveringCodes.Database.Sources.HexadecimaryFourTwoSupportClassifier
import CoveringCodes.Database.Sources.HexadecimaryFourTwoOAOriginalLRATSmoke
import CoveringCodes.Database.Sources.HexadecimaryFourTwoOANoSymDirect
import Mathlib.Data.Fin.Tuple.Sort
import Mathlib.Tactic

/-!
# Final assembly for the `K_16(4,2)` lower bound

This module collects the remaining semantic glue after the tail-box and profile
LRAT certificates have been checked:

* relabeling abstract K16 profile graphs;
* using the support-defect LRAT to force six positive excess symbols in every
  coordinate;
* canonicalizing those six symbols to the first six symbols.

The final common-block/OA contradiction is added after this layer.
-/

namespace CoveringCodes
namespace Database

open scoped BigOperators

private def supportSet16 (d : Fin 16 → Nat) : Finset (Fin 16) :=
  Finset.univ.filter (fun a : Fin 16 => 0 < d a)

private theorem positive_support_card_le_sum_fin16
    (d : Fin 16 → Nat) :
    (supportSet16 d).card ≤ ∑ a : Fin 16, d a := by
  classical
  let S : Finset (Fin 16) := supportSet16 d
  have hcard_le_sumS : S.card ≤ ∑ a ∈ S, d a := by
    calc
      S.card = ∑ a ∈ S, (1 : Nat) := by simp
      _ ≤ ∑ a ∈ S, d a := by
        exact Finset.sum_le_sum (fun a ha => by
          have hpos : 0 < d a := by simpa [S, supportSet16] using ha
          omega)
  have hsumS_le_total : (∑ a ∈ S, d a) ≤ ∑ a : Fin 16, d a := by
    exact Finset.sum_le_sum_of_subset_of_nonneg
      (by intro a _ha; simp)
      (by intro _x _hxuniv _hxnot; exact Nat.zero_le _)
  exact hcard_le_sumS.trans hsumS_le_total

private theorem eq_of_le_and_sum_eq_fin16
    (lower actual : Fin 16 → Nat)
    (hle : ∀ a, lower a ≤ actual a)
    (hsum : (∑ a : Fin 16, actual a) = ∑ a : Fin 16, lower a)
    (a : Fin 16) :
    actual a = lower a := by
  by_contra hne
  have hne' : lower a ≠ actual a := fun h => hne h.symm
  have hlt : lower a < actual a := lt_of_le_of_ne (hle a) hne'
  have hsum_lt : (∑ x : Fin 16, lower x) < ∑ x : Fin 16, actual x := by
    exact Finset.sum_lt_sum (fun x _hx => hle x) ⟨a, Finset.mem_univ a, hlt⟩
  omega

private theorem deficit_eq_positive_support_indicator_of_card_eq_sum_fin16
    (d : Fin 16 → Nat)
    (hcard_sum : (supportSet16 d).card = ∑ a : Fin 16, d a)
    (a : Fin 16) :
    d a = if a ∈ supportSet16 d then 1 else 0 := by
  classical
  let S : Finset (Fin 16) := supportSet16 d
  let lower : Fin 16 → Nat := fun a => if a ∈ S then 1 else 0
  have hle : ∀ a, lower a ≤ d a := by
    intro a
    by_cases ha : a ∈ S
    · have hpos : 0 < d a := by simpa [S, supportSet16] using ha
      simp [lower, ha]
      omega
    · simp [lower, ha]
  have hsumLower : (∑ a : Fin 16, lower a) = S.card := by
    simp [lower, S, supportSet16]
  have hsum : (∑ a : Fin 16, d a) = ∑ a : Fin 16, lower a := by
    rw [hsumLower]
    exact hcard_sum.symm
  simpa [lower, S, supportSet16] using
    eq_of_le_and_sum_eq_fin16 lower d hle hsum a

private def canonicalHighSupport16 : Finset (Fin 16) :=
  Finset.univ.filter (fun a : Fin 16 => a.val < 6)

private theorem canonicalHighSupport16_card :
    canonicalHighSupport16.card = 6 := by
  native_decide

private theorem canonicalBalancedExcess16_eq_highSupport_indicator
    (a : Fin 16) :
    canonicalBalancedExcess16 a =
      if a ∈ canonicalHighSupport16 then 1 else 0 := by
  fin_cases a <;> native_decide

private theorem fin16FinsetSubtype_card (S : Finset (Fin 16)) :
    Fintype.card {a : Fin 16 // a ∈ S} = S.card := by
  rw [Fintype.card_of_subtype S]
  intro a
  simp

private theorem fin16FinsetComplementSubtype_card (S : Finset (Fin 16)) :
    Fintype.card {a : Fin 16 // a ∉ S} = (Sᶜ).card := by
  rw [Fintype.card_of_subtype Sᶜ]
  intro a
  simp

private noncomputable def fin16FinsetSubtypeEquiv
    (S T : Finset (Fin 16))
    (hcard : S.card = T.card) :
    {a : Fin 16 // a ∈ S} ≃ {a : Fin 16 // a ∈ T} :=
  Fintype.equivOfCardEq (by
    rw [fin16FinsetSubtype_card S, fin16FinsetSubtype_card T]
    exact hcard)

private noncomputable def fin16FinsetComplementSubtypeEquiv
    (S T : Finset (Fin 16))
    (hcard : S.card = T.card) :
    {a : Fin 16 // a ∉ S} ≃ {a : Fin 16 // a ∉ T} :=
  Fintype.equivOfCardEq (by
    rw [fin16FinsetComplementSubtype_card S,
      fin16FinsetComplementSubtype_card T]
    rw [Finset.card_compl, Finset.card_compl, hcard])

private noncomputable def fin16EquivOfFinsetCardEq
    (S T : Finset (Fin 16))
    (hcard : S.card = T.card) :
    Fin 16 ≃ Fin 16 where
  toFun a :=
    if ha : a ∈ S then
      (fin16FinsetSubtypeEquiv S T hcard ⟨a, ha⟩).val
    else
      (fin16FinsetComplementSubtypeEquiv S T hcard ⟨a, ha⟩).val
  invFun a :=
    if ha : a ∈ T then
      ((fin16FinsetSubtypeEquiv S T hcard).symm ⟨a, ha⟩).val
    else
      ((fin16FinsetComplementSubtypeEquiv S T hcard).symm ⟨a, ha⟩).val
  left_inv a := by
    by_cases ha : a ∈ S
    · have hT :
          (fin16FinsetSubtypeEquiv S T hcard ⟨a, ha⟩).val ∈ T :=
        (fin16FinsetSubtypeEquiv S T hcard ⟨a, ha⟩).property
      simp [ha, hT]
    · have hT :
          (fin16FinsetComplementSubtypeEquiv S T hcard ⟨a, ha⟩).val ∉ T :=
        (fin16FinsetComplementSubtypeEquiv S T hcard ⟨a, ha⟩).property
      simp [ha, hT]
  right_inv a := by
    by_cases ha : a ∈ T
    · have hS :
          ((fin16FinsetSubtypeEquiv S T hcard).symm ⟨a, ha⟩).val ∈ S :=
        ((fin16FinsetSubtypeEquiv S T hcard).symm ⟨a, ha⟩).property
      simp [ha, hS]
    · have hS :
          ((fin16FinsetComplementSubtypeEquiv S T hcard).symm ⟨a, ha⟩).val ∉ S :=
        ((fin16FinsetComplementSubtypeEquiv S T hcard).symm ⟨a, ha⟩).property
      simp [ha, hS]

private theorem fin16EquivOfFinsetCardEq_symm_mem_iff
    (S T : Finset (Fin 16))
    (hcard : S.card = T.card)
    (a : Fin 16) :
    (fin16EquivOfFinsetCardEq S T hcard).symm a ∈ S ↔ a ∈ T := by
  by_cases ha : a ∈ T
  · have hS :
        ((fin16FinsetSubtypeEquiv S T hcard).symm ⟨a, ha⟩).val ∈ S :=
      ((fin16FinsetSubtypeEquiv S T hcard).symm ⟨a, ha⟩).property
    simp [fin16EquivOfFinsetCardEq, ha, hS]
  · have hS :
        ((fin16FinsetComplementSubtypeEquiv S T hcard).symm ⟨a, ha⟩).val ∉ S :=
      ((fin16FinsetComplementSubtypeEquiv S T hcard).symm ⟨a, ha⟩).property
    simp [fin16EquivOfFinsetCardEq, ha, hS]

private def relabelPairBool16
    (E : Fin 16 → Fin 16 → Bool)
    (left right : Fin 16 ≃ Fin 16) :
    Fin 16 → Fin 16 → Bool :=
  fun a b => E (left.symm a) (right.symm b)

private theorem row_card_relabelPairBool16
    (E : Fin 16 → Fin 16 → Bool)
    (left right : Fin 16 ≃ Fin 16)
    (a : Fin 16) :
    (Finset.univ.filter
        (fun b : Fin 16 => relabelPairBool16 E left right a b = true)).card =
      (Finset.univ.filter
        (fun b : Fin 16 => E (left.symm a) b = true)).card := by
  classical
  have hset :
      (Finset.univ.filter
          (fun b : Fin 16 => relabelPairBool16 E left right a b = true)) =
        (Finset.univ.filter
          (fun b : Fin 16 => E (left.symm a) b = true)).image right := by
    ext b
    constructor
    · intro hb
      refine Finset.mem_image.mpr ⟨right.symm b, ?_, by simp⟩
      simpa [relabelPairBool16] using hb
    · intro hb
      rcases Finset.mem_image.mp hb with ⟨y, hy, hyb⟩
      have hb' : right.symm b = y := by
        rw [← hyb]
        simp
      simpa [relabelPairBool16, hb'] using hy
  rw [hset]
  exact Finset.card_image_of_injective _ right.injective

private theorem col_card_relabelPairBool16
    (E : Fin 16 → Fin 16 → Bool)
    (left right : Fin 16 ≃ Fin 16)
    (b : Fin 16) :
    (Finset.univ.filter
        (fun a : Fin 16 => relabelPairBool16 E left right a b = true)).card =
      (Finset.univ.filter
        (fun a : Fin 16 => E a (right.symm b) = true)).card := by
  classical
  have hset :
      (Finset.univ.filter
          (fun a : Fin 16 => relabelPairBool16 E left right a b = true)) =
        (Finset.univ.filter
          (fun a : Fin 16 => E a (right.symm b) = true)).image left := by
    ext a
    constructor
    · intro ha
      refine Finset.mem_image.mpr ⟨left.symm a, ?_, by simp⟩
      simpa [relabelPairBool16] using ha
    · intro ha
      rcases Finset.mem_image.mp ha with ⟨x, hx, hxa⟩
      have ha' : left.symm a = x := by
        rw [← hxa]
        simp
      simpa [relabelPairBool16, ha'] using hx
  rw [hset]
  exact Finset.card_image_of_injective _ left.injective

private theorem no_clique_of_relabelPairBool16
    (E01 E02 E03 E12 E13 E23 : Fin 16 → Fin 16 → Bool)
    (hno :
      ¬ ∃ a b c d,
        E01 a b = true ∧ E02 a c = true ∧ E03 a d = true ∧
        E12 b c = true ∧ E13 b d = true ∧ E23 c d = true)
    (p0 p1 p2 p3 : Fin 16 ≃ Fin 16) :
    ¬ ∃ a b c d,
      relabelPairBool16 E01 p0 p1 a b = true ∧
      relabelPairBool16 E02 p0 p2 a c = true ∧
      relabelPairBool16 E03 p0 p3 a d = true ∧
      relabelPairBool16 E12 p1 p2 b c = true ∧
      relabelPairBool16 E13 p1 p3 b d = true ∧
      relabelPairBool16 E23 p2 p3 c d = true := by
  rintro ⟨a, b, c, d, h01, h02, h03, h12, h13, h23⟩
  exact hno
    ⟨p0.symm a, p1.symm b, p2.symm c, p3.symm d,
      by simpa [relabelPairBool16] using h01,
      by simpa [relabelPairBool16] using h02,
      by simpa [relabelPairBool16] using h03,
      by simpa [relabelPairBool16] using h12,
      by simpa [relabelPairBool16] using h13,
      by simpa [relabelPairBool16] using h23⟩

def HexadecimaryFourTwoProfileGraph.relabel
    (G : HexadecimaryFourTwoProfileGraph)
    (p0 p1 p2 p3 : Fin 16 ≃ Fin 16) :
    HexadecimaryFourTwoProfileGraph :=
  { E01 := relabelPairBool16 G.E01 p0 p1
    E02 := relabelPairBool16 G.E02 p0 p2
    E03 := relabelPairBool16 G.E03 p0 p3
    E12 := relabelPairBool16 G.E12 p1 p2
    E13 := relabelPairBool16 G.E13 p1 p3
    E23 := relabelPairBool16 G.E23 p2 p3
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
      have h := G.row01 (p0.symm a)
      rw [← row_card_relabelPairBool16 G.E01 p0 p1 a] at h
      simpa using h
    row02 := by
      intro a
      have h := G.row02 (p0.symm a)
      rw [← row_card_relabelPairBool16 G.E02 p0 p2 a] at h
      simpa using h
    row03 := by
      intro a
      have h := G.row03 (p0.symm a)
      rw [← row_card_relabelPairBool16 G.E03 p0 p3 a] at h
      simpa using h
    row12 := by
      intro b
      have h := G.row12 (p1.symm b)
      rw [← row_card_relabelPairBool16 G.E12 p1 p2 b] at h
      simpa using h
    row13 := by
      intro b
      have h := G.row13 (p1.symm b)
      rw [← row_card_relabelPairBool16 G.E13 p1 p3 b] at h
      simpa using h
    row23 := by
      intro c
      have h := G.row23 (p2.symm c)
      rw [← row_card_relabelPairBool16 G.E23 p2 p3 c] at h
      simpa using h
    col01 := by
      intro b
      have h := G.col01 (p1.symm b)
      rw [← col_card_relabelPairBool16 G.E01 p0 p1 b] at h
      simpa using h
    col02 := by
      intro c
      have h := G.col02 (p2.symm c)
      rw [← col_card_relabelPairBool16 G.E02 p0 p2 c] at h
      simpa using h
    col03 := by
      intro d
      have h := G.col03 (p3.symm d)
      rw [← col_card_relabelPairBool16 G.E03 p0 p3 d] at h
      simpa using h
    col12 := by
      intro c
      have h := G.col12 (p2.symm c)
      rw [← col_card_relabelPairBool16 G.E12 p1 p2 c] at h
      simpa using h
    col13 := by
      intro d
      have h := G.col13 (p3.symm d)
      rw [← col_card_relabelPairBool16 G.E13 p1 p3 d] at h
      simpa using h
    col23 := by
      intro d
      have h := G.col23 (p3.symm d)
      rw [← col_card_relabelPairBool16 G.E23 p2 p3 d] at h
      simpa using h
    no_clique :=
      no_clique_of_relabelPairBool16
        G.E01 G.E02 G.E03 G.E12 G.E13 G.E23 G.no_clique p0 p1 p2 p3 }

private theorem supportSet16_comp_symm_card
    (d : Fin 16 → Nat)
    (p : Fin 16 ≃ Fin 16) :
    (supportSet16 (fun a => d (p.symm a))).card =
      (supportSet16 d).card := by
  classical
  have hset :
      supportSet16 (fun a => d (p.symm a)) =
        (supportSet16 d).image p := by
    ext a
    constructor
    · intro ha
      refine Finset.mem_image.mpr ⟨p.symm a, ?_, by simp⟩
      simpa [supportSet16] using ha
    · intro ha
      rcases Finset.mem_image.mp ha with ⟨x, hx, hxa⟩
      have hx' : p.symm a = x := by
        rw [← hxa]
        simp
      simpa [supportSet16, hx'] using hx
  rw [hset]
  exact Finset.card_image_of_injective _ p.injective

private def descSortKey16 (d : Fin 16 → Nat) : Fin 16 → Int :=
  fun a => -((d a : Int))

private noncomputable def descSortEquiv16 (d : Fin 16 → Nat) :
    Fin 16 ≃ Fin 16 :=
  (Tuple.sort (descSortKey16 d)).symm

private theorem descSortEquiv16_sorted
    (d : Fin 16 → Nat) :
    ∀ symbol,
      0 < symbol → symbol < 16 →
        d ((descSortEquiv16 d).symm (fin16OfNatMod symbol)) ≤
          d ((descSortEquiv16 d).symm (fin16OfNatMod (symbol - 1))) := by
  intro symbol hpos hlt
  let curr : Fin 16 := fin16OfNatMod symbol
  let prev : Fin 16 := fin16OfNatMod (symbol - 1)
  have hcurr_val : curr.val = symbol := by
    simp [curr, fin16OfNatMod, Nat.mod_eq_of_lt hlt]
  have hprev_val : prev.val = symbol - 1 := by
    have hprev_lt : symbol - 1 < 16 := by omega
    simp [prev, fin16OfNatMod, Nat.mod_eq_of_lt hprev_lt]
  have hprev_le_curr : prev ≤ curr := by
    exact Fin.le_iff_val_le_val.mpr (by
      rw [hprev_val, hcurr_val]
      omega)
  have hmono := Tuple.monotone_sort (descSortKey16 d)
  have hle :
      descSortKey16 d ((Tuple.sort (descSortKey16 d)) prev) ≤
        descSortKey16 d ((Tuple.sort (descSortKey16 d)) curr) := by
    exact hmono hprev_le_curr
  have hint :
      (d ((Tuple.sort (descSortKey16 d)) curr) : Int) ≤
        (d ((Tuple.sort (descSortKey16 d)) prev) : Int) := by
    dsimp [descSortKey16] at hle
    omega
  simpa [descSortEquiv16, curr, prev] using (show
      d ((Tuple.sort (descSortKey16 d)) curr) ≤
        d ((Tuple.sort (descSortKey16 d)) prev) from by
      exact_mod_cast hint)

private noncomputable def HexadecimaryFourTwoProfileGraph.sortedRelabel
    (G : HexadecimaryFourTwoProfileGraph) :
    HexadecimaryFourTwoProfileGraph :=
  G.relabel
    (descSortEquiv16 G.d0)
    (descSortEquiv16 G.d1)
    (descSortEquiv16 G.d2)
    (descSortEquiv16 G.d3)

private theorem HexadecimaryFourTwoProfileGraph.sortedRelabel_sortedExcessProfiles
    (G : HexadecimaryFourTwoProfileGraph) :
    G.sortedRelabel.sortedExcessProfiles := by
  intro coord symbol hcoord hpos hlt
  interval_cases coord <;>
    simp [HexadecimaryFourTwoProfileGraph.sortedRelabel,
      HexadecimaryFourTwoProfileGraph.relabel,
      HexadecimaryFourTwoProfileGraph.dByCoord] <;>
    exact descSortEquiv16_sorted _ symbol hpos hlt

private theorem sortedCoord0SupportLeFive_of_support_card_le_five
    (G : HexadecimaryFourTwoProfileGraph)
    (hsorted : G.sortedExcessProfiles)
    (hsupport : (supportSet16 G.d0).card ≤ 5) :
    G.sortedCoord0SupportLeFive := by
  classical
  by_contra hne
  have hpos5 : 0 < G.d0 5 := by
    have h : G.d0 5 ≠ 0 := by
      simpa [HexadecimaryFourTwoProfileGraph.sortedCoord0SupportLeFive,
        HexadecimaryFourTwoProfileGraph.dByCoord, fin16OfNatMod] using hne
    omega
  have h54 : G.d0 5 ≤ G.d0 4 := by
    simpa [HexadecimaryFourTwoProfileGraph.dByCoord, fin16OfNatMod] using
      hsorted 0 5 (by decide) (by decide) (by decide)
  have h43 : G.d0 4 ≤ G.d0 3 := by
    simpa [HexadecimaryFourTwoProfileGraph.dByCoord, fin16OfNatMod] using
      hsorted 0 4 (by decide) (by decide) (by decide)
  have h32 : G.d0 3 ≤ G.d0 2 := by
    simpa [HexadecimaryFourTwoProfileGraph.dByCoord, fin16OfNatMod] using
      hsorted 0 3 (by decide) (by decide) (by decide)
  have h21 : G.d0 2 ≤ G.d0 1 := by
    simpa [HexadecimaryFourTwoProfileGraph.dByCoord, fin16OfNatMod] using
      hsorted 0 2 (by decide) (by decide) (by decide)
  have h10 : G.d0 1 ≤ G.d0 0 := by
    simpa [HexadecimaryFourTwoProfileGraph.dByCoord, fin16OfNatMod] using
      hsorted 0 1 (by decide) (by decide) (by decide)
  let firstSix : Finset (Fin 16) :=
    Finset.univ.filter (fun a : Fin 16 => a.val < 6)
  have hsubset : firstSix ⊆ supportSet16 G.d0 := by
    intro a ha
    simp [firstSix] at ha
    fin_cases a <;> simp [supportSet16] at ha ⊢ <;> omega
  have hfirst : firstSix.card = 6 := by native_decide
  have hle := Finset.card_le_card hsubset
  omega

private theorem HexadecimaryFourTwoProfileGraph.sortedRelabel_support0_card
    (G : HexadecimaryFourTwoProfileGraph) :
    (supportSet16 G.sortedRelabel.d0).card =
      (supportSet16 G.d0).card := by
  simpa [HexadecimaryFourTwoProfileGraph.sortedRelabel,
    HexadecimaryFourTwoProfileGraph.relabel] using
    supportSet16_comp_symm_card G.d0 (descSortEquiv16 G.d0)

private theorem HexadecimaryFourTwoProfileGraph.support0_card_not_le_five
    (G : HexadecimaryFourTwoProfileGraph) :
    ¬ (supportSet16 G.d0).card ≤ 5 := by
  intro hle
  let H := G.sortedRelabel
  have hsorted : H.sortedExcessProfiles :=
    G.sortedRelabel_sortedExcessProfiles
  have hsupportCard : (supportSet16 H.d0).card ≤ 5 := by
    simpa [H] using
      (G.sortedRelabel_support0_card ▸ hle)
  have hsupport : H.sortedCoord0SupportLeFive :=
    sortedCoord0SupportLeFive_of_support_card_le_five H hsorted hsupportCard
  exact H.not_sortedCoord0SupportLeFive_of_lrat hsorted hsupport

private def HexadecimaryFourTwoProfileGraph.swap01
    (G : HexadecimaryFourTwoProfileGraph) :
    HexadecimaryFourTwoProfileGraph :=
  { E01 := fun b a => G.E01 a b
    E02 := G.E12
    E03 := G.E13
    E12 := G.E02
    E13 := G.E03
    E23 := G.E23
    d0 := G.d1
    d1 := G.d0
    d2 := G.d2
    d3 := G.d3
    d0_sum := G.d1_sum
    d1_sum := G.d0_sum
    d2_sum := G.d2_sum
    d3_sum := G.d3_sum
    row01 := by intro b; simpa using G.col01 b
    row02 := G.row12
    row03 := G.row13
    row12 := G.row02
    row13 := G.row03
    row23 := G.row23
    col01 := by intro a; simpa using G.row01 a
    col02 := G.col12
    col03 := G.col13
    col12 := G.col02
    col13 := G.col03
    col23 := G.col23
    no_clique := by
      rintro ⟨b, a, c, d, h01, h12, h13, h02, h03, h23⟩
      exact G.no_clique ⟨a, b, c, d, h01, h02, h03, h12, h13, h23⟩ }

private def HexadecimaryFourTwoProfileGraph.swap02
    (G : HexadecimaryFourTwoProfileGraph) :
    HexadecimaryFourTwoProfileGraph :=
  { E01 := fun c b => G.E12 b c
    E02 := fun c a => G.E02 a c
    E03 := G.E23
    E12 := fun b a => G.E01 a b
    E13 := G.E13
    E23 := G.E03
    d0 := G.d2
    d1 := G.d1
    d2 := G.d0
    d3 := G.d3
    d0_sum := G.d2_sum
    d1_sum := G.d1_sum
    d2_sum := G.d0_sum
    d3_sum := G.d3_sum
    row01 := by intro c; simpa using G.col12 c
    row02 := by intro c; simpa using G.col02 c
    row03 := G.row23
    row12 := by intro b; simpa using G.col01 b
    row13 := G.row13
    row23 := G.row03
    col01 := G.row12
    col02 := G.row02
    col03 := G.col23
    col12 := G.row01
    col13 := G.col13
    col23 := G.col03
    no_clique := by
      rintro ⟨c, b, a, d, h12, h02, h23, h01, h13, h03⟩
      exact G.no_clique ⟨a, b, c, d, h01, h02, h03, h12, h13, h23⟩ }

private def HexadecimaryFourTwoProfileGraph.swap03
    (G : HexadecimaryFourTwoProfileGraph) :
    HexadecimaryFourTwoProfileGraph :=
  { E01 := fun d b => G.E13 b d
    E02 := fun d c => G.E23 c d
    E03 := fun d a => G.E03 a d
    E12 := G.E12
    E13 := fun b a => G.E01 a b
    E23 := fun c a => G.E02 a c
    d0 := G.d3
    d1 := G.d1
    d2 := G.d2
    d3 := G.d0
    d0_sum := G.d3_sum
    d1_sum := G.d1_sum
    d2_sum := G.d2_sum
    d3_sum := G.d0_sum
    row01 := by intro d; simpa using G.col13 d
    row02 := by intro d; simpa using G.col23 d
    row03 := by intro d; simpa using G.col03 d
    row12 := G.row12
    row13 := by intro b; simpa using G.col01 b
    row23 := by intro c; simpa using G.col02 c
    col01 := G.row13
    col02 := G.row23
    col03 := G.row03
    col12 := G.col12
    col13 := G.row01
    col23 := G.row02
    no_clique := by
      rintro ⟨d, b, c, a, h13, h23, h03, h12, h01, h02⟩
      exact G.no_clique ⟨a, b, c, d, h01, h02, h03, h12, h13, h23⟩ }

private theorem HexadecimaryFourTwoProfileGraph.support1_card_not_le_five
    (G : HexadecimaryFourTwoProfileGraph) :
    ¬ (supportSet16 G.d1).card ≤ 5 := by
  intro hle
  exact G.swap01.support0_card_not_le_five (by
    simpa [HexadecimaryFourTwoProfileGraph.swap01] using hle)

private theorem HexadecimaryFourTwoProfileGraph.support2_card_not_le_five
    (G : HexadecimaryFourTwoProfileGraph) :
    ¬ (supportSet16 G.d2).card ≤ 5 := by
  intro hle
  exact G.swap02.support0_card_not_le_five (by
    simpa [HexadecimaryFourTwoProfileGraph.swap02] using hle)

private theorem HexadecimaryFourTwoProfileGraph.support3_card_not_le_five
    (G : HexadecimaryFourTwoProfileGraph) :
    ¬ (supportSet16 G.d3).card ≤ 5 := by
  intro hle
  exact G.swap03.support0_card_not_le_five (by
    simpa [HexadecimaryFourTwoProfileGraph.swap03] using hle)

private theorem HexadecimaryFourTwoProfileGraph.support0_card_eq_six
    (G : HexadecimaryFourTwoProfileGraph) :
    (supportSet16 G.d0).card = 6 := by
  have hle := positive_support_card_le_sum_fin16 G.d0
  rw [G.d0_sum] at hle
  have hnle := G.support0_card_not_le_five
  omega

private theorem HexadecimaryFourTwoProfileGraph.support1_card_eq_six
    (G : HexadecimaryFourTwoProfileGraph) :
    (supportSet16 G.d1).card = 6 := by
  have hle := positive_support_card_le_sum_fin16 G.d1
  rw [G.d1_sum] at hle
  have hnle := G.support1_card_not_le_five
  omega

private theorem HexadecimaryFourTwoProfileGraph.support2_card_eq_six
    (G : HexadecimaryFourTwoProfileGraph) :
    (supportSet16 G.d2).card = 6 := by
  have hle := positive_support_card_le_sum_fin16 G.d2
  rw [G.d2_sum] at hle
  have hnle := G.support2_card_not_le_five
  omega

private theorem HexadecimaryFourTwoProfileGraph.support3_card_eq_six
    (G : HexadecimaryFourTwoProfileGraph) :
    (supportSet16 G.d3).card = 6 := by
  have hle := positive_support_card_le_sum_fin16 G.d3
  rw [G.d3_sum] at hle
  have hnle := G.support3_card_not_le_five
  omega

private theorem relabeled_deficit_eq_canonicalBalanced16
    (d : Fin 16 → Nat)
    (hcard_sum : (supportSet16 d).card = ∑ a : Fin 16, d a)
    (hcard_canon : (supportSet16 d).card = canonicalHighSupport16.card)
    (a : Fin 16) :
    d ((fin16EquivOfFinsetCardEq
          (supportSet16 d) canonicalHighSupport16 hcard_canon).symm a) =
      canonicalBalancedExcess16 a := by
  classical
  let p :=
    fin16EquivOfFinsetCardEq
      (supportSet16 d) canonicalHighSupport16 hcard_canon
  have hdef :=
    deficit_eq_positive_support_indicator_of_card_eq_sum_fin16 d hcard_sum
      (p.symm a)
  rw [canonicalBalancedExcess16_eq_highSupport_indicator a]
  rw [hdef]
  have hmem :=
    fin16EquivOfFinsetCardEq_symm_mem_iff
      (supportSet16 d) canonicalHighSupport16 hcard_canon a
  by_cases ha : a ∈ canonicalHighSupport16
  · have hp : p.symm a ∈ supportSet16 d := hmem.mpr ha
    simp [p, hp, ha]
  · have hp : p.symm a ∉ supportSet16 d := fun hp => ha (hmem.mp hp)
    simp [p, hp, ha]

private theorem HexadecimaryFourTwoProfileGraph.exists_relabel_canonicalBalanced
    (G : HexadecimaryFourTwoProfileGraph) :
    ∃ p0 p1 p2 p3 : Fin 16 ≃ Fin 16,
      (G.relabel p0 p1 p2 p3).canonicalBalanced := by
  classical
  have h0sum : (supportSet16 G.d0).card = ∑ a : Fin 16, G.d0 a := by
    rw [G.support0_card_eq_six, G.d0_sum]
  have h1sum : (supportSet16 G.d1).card = ∑ a : Fin 16, G.d1 a := by
    rw [G.support1_card_eq_six, G.d1_sum]
  have h2sum : (supportSet16 G.d2).card = ∑ a : Fin 16, G.d2 a := by
    rw [G.support2_card_eq_six, G.d2_sum]
  have h3sum : (supportSet16 G.d3).card = ∑ a : Fin 16, G.d3 a := by
    rw [G.support3_card_eq_six, G.d3_sum]
  have h0canon : (supportSet16 G.d0).card = canonicalHighSupport16.card := by
    rw [G.support0_card_eq_six, canonicalHighSupport16_card]
  have h1canon : (supportSet16 G.d1).card = canonicalHighSupport16.card := by
    rw [G.support1_card_eq_six, canonicalHighSupport16_card]
  have h2canon : (supportSet16 G.d2).card = canonicalHighSupport16.card := by
    rw [G.support2_card_eq_six, canonicalHighSupport16_card]
  have h3canon : (supportSet16 G.d3).card = canonicalHighSupport16.card := by
    rw [G.support3_card_eq_six, canonicalHighSupport16_card]
  let p0 := fin16EquivOfFinsetCardEq
    (supportSet16 G.d0) canonicalHighSupport16 h0canon
  let p1 := fin16EquivOfFinsetCardEq
    (supportSet16 G.d1) canonicalHighSupport16 h1canon
  let p2 := fin16EquivOfFinsetCardEq
    (supportSet16 G.d2) canonicalHighSupport16 h2canon
  let p3 := fin16EquivOfFinsetCardEq
    (supportSet16 G.d3) canonicalHighSupport16 h3canon
  refine ⟨p0, p1, p2, p3, ?_⟩
  exact
    ⟨by
      intro a
      simpa [HexadecimaryFourTwoProfileGraph.relabel, p0] using
        relabeled_deficit_eq_canonicalBalanced16 G.d0 h0sum h0canon a,
    by
      intro a
      simpa [HexadecimaryFourTwoProfileGraph.relabel, p1] using
        relabeled_deficit_eq_canonicalBalanced16 G.d1 h1sum h1canon a,
    by
      intro a
      simpa [HexadecimaryFourTwoProfileGraph.relabel, p2] using
        relabeled_deficit_eq_canonicalBalanced16 G.d2 h2sum h2canon a,
    by
      intro a
      simpa [HexadecimaryFourTwoProfileGraph.relabel, p3] using
        relabeled_deficit_eq_canonicalBalanced16 G.d3 h3sum h3canon a⟩

private def lowSplitToCanonicalFun16
    (split : List Nat × List Nat) (a : Fin 16) : Fin 16 :=
  if a.val < 6 then a
  else if a.val ∈ split.1 then
    fin16OfNatMod (6 + split.1.idxOf a.val)
  else
    fin16OfNatMod (11 + split.2.idxOf a.val)

private def lowSplitFromCanonicalFun16
    (split : List Nat × List Nat) (a : Fin 16) : Fin 16 :=
  if a.val < 6 then a
  else if a.val < 11 then
    fin16OfNatMod (split.1.getD (a.val - 6) 0)
  else
    fin16OfNatMod (split.2.getD (a.val - 11) 0)

private theorem lowSplitFromToCanonicalFun16
    (split : List Nat × List Nat)
    (hmem : split ∈ HexadecimaryFourTwoProfileDirect.lowLabeledPartitions)
    (a : Fin 16) :
    lowSplitFromCanonicalFun16 split (lowSplitToCanonicalFun16 split a) = a := by
  native_decide +revert

private theorem lowSplitToFromCanonicalFun16
    (split : List Nat × List Nat)
    (hmem : split ∈ HexadecimaryFourTwoProfileDirect.lowLabeledPartitions)
    (a : Fin 16) :
    lowSplitToCanonicalFun16 split (lowSplitFromCanonicalFun16 split a) = a := by
  native_decide +revert

private theorem lowSplitFromCanonicalFun16_blockIndex
    (split : List Nat × List Nat)
    (hmem : split ∈ HexadecimaryFourTwoProfileDirect.lowLabeledPartitions)
    (a : Fin 16) :
    HexadecimaryFourTwoProfileDirect.blockIndex split
        (lowSplitFromCanonicalFun16 split a).val =
      HexadecimaryFourTwoProfileDirect.blockIndex
        HexadecimaryFourTwoProfileDirect.canonicalLowSplit a.val := by
  native_decide +revert

private theorem lowSplitFromCanonicalFun16_high_iff
    (split : List Nat × List Nat)
    (hmem : split ∈ HexadecimaryFourTwoProfileDirect.lowLabeledPartitions)
    (a : Fin 16) :
    (lowSplitFromCanonicalFun16 split a).val < 6 ↔ a.val < 6 := by
  native_decide +revert

private def lowSplitCanonicalEquiv16
    (split : List Nat × List Nat)
    (hmem : split ∈ HexadecimaryFourTwoProfileDirect.lowLabeledPartitions) :
    Fin 16 ≃ Fin 16 where
  toFun := lowSplitToCanonicalFun16 split
  invFun := lowSplitFromCanonicalFun16 split
  left_inv := lowSplitFromToCanonicalFun16 split hmem
  right_inv := lowSplitToFromCanonicalFun16 split hmem

private theorem lowSplitCanonicalEquiv16_symm_blockIndex
    (split : List Nat × List Nat)
    (hmem : split ∈ HexadecimaryFourTwoProfileDirect.lowLabeledPartitions)
    (a : Fin 16) :
    HexadecimaryFourTwoProfileDirect.blockIndex split
        ((lowSplitCanonicalEquiv16 split hmem).symm a).val =
      HexadecimaryFourTwoProfileDirect.blockIndex
        HexadecimaryFourTwoProfileDirect.canonicalLowSplit a.val := by
  simpa [lowSplitCanonicalEquiv16] using
    lowSplitFromCanonicalFun16_blockIndex split hmem a

private theorem canonicalBalancedExcess16_lowSplitCanonicalEquiv16_symm
    (split : List Nat × List Nat)
    (hmem : split ∈ HexadecimaryFourTwoProfileDirect.lowLabeledPartitions)
    (a : Fin 16) :
    canonicalBalancedExcess16
        ((lowSplitCanonicalEquiv16 split hmem).symm a) =
      canonicalBalancedExcess16 a := by
  have hiff := lowSplitFromCanonicalFun16_high_iff split hmem a
  simp [canonicalBalancedExcess16, lowSplitCanonicalEquiv16, hiff]

private theorem HexadecimaryFourTwoProfileGraph.canonicalBalanced_relabel_lowSplit
    (G : HexadecimaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (left right : List Nat × List Nat)
    (hleft : left ∈ HexadecimaryFourTwoProfileDirect.lowLabeledPartitions)
    (hright : right ∈ HexadecimaryFourTwoProfileDirect.lowLabeledPartitions) :
    (G.relabel
      (lowSplitCanonicalEquiv16 left hleft)
      (lowSplitCanonicalEquiv16 right hright)
      (Equiv.refl (Fin 16))
      (Equiv.refl (Fin 16))).canonicalBalanced := by
  exact
    ⟨by
      intro a
      rw [HexadecimaryFourTwoProfileGraph.relabel]
      rw [hbal.1 ((lowSplitCanonicalEquiv16 left hleft).symm a)]
      exact canonicalBalancedExcess16_lowSplitCanonicalEquiv16_symm
        left hleft a,
    by
      intro a
      rw [HexadecimaryFourTwoProfileGraph.relabel]
      rw [hbal.2.1 ((lowSplitCanonicalEquiv16 right hright).symm a)]
      exact canonicalBalancedExcess16_lowSplitCanonicalEquiv16_symm
        right hright a,
    by
      intro a
      simpa [HexadecimaryFourTwoProfileGraph.relabel] using hbal.2.2.1 a,
    by
      intro a
      simpa [HexadecimaryFourTwoProfileGraph.relabel] using hbal.2.2.2 a⟩

private theorem HexadecimaryFourTwoProfileGraph.exists_relabel_E01_canonical
    (G : HexadecimaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hE01 : G.E01HasCanonicalLowSixFiveFiveBlockForm) :
    ∃ p0 p1 : Fin 16 ≃ Fin 16,
      let H :=
        G.relabel p0 p1 (Equiv.refl (Fin 16)) (Equiv.refl (Fin 16))
      H.canonicalBalanced ∧ H.E01IsCanonicalLowSixFiveFiveBlock := by
  rcases hE01 with ⟨left, right, hleft, hright, hE⟩
  let p0 := lowSplitCanonicalEquiv16 left hleft
  let p1 := lowSplitCanonicalEquiv16 right hright
  refine ⟨p0, p1, ?_⟩
  constructor
  · exact G.canonicalBalanced_relabel_lowSplit hbal left right hleft hright
  · intro row col
    have hrow := lowSplitCanonicalEquiv16_symm_blockIndex left hleft row
    have hcol := lowSplitCanonicalEquiv16_symm_blockIndex right hright col
    simpa [HexadecimaryFourTwoProfileGraph.relabel, p0, p1, hrow, hcol] using
      hE (p0.symm row) (p1.symm col)

private theorem HexadecimaryFourTwoProfileGraph.exists_relabel_commonCanonical
    (G : HexadecimaryFourTwoProfileGraph) :
    ∃ p0 p1 p2 p3 : Fin 16 ≃ Fin 16,
      let H := G.relabel p0 p1 p2 p3
      H.canonicalBalanced ∧
        H.HasCommonCanonicalLowSixFiveFiveBlockSystem := by
  obtain ⟨p0, p1, p2, p3, hbal⟩ := G.exists_relabel_canonicalBalanced
  let H := G.relabel p0 p1 p2 p3
  have hE01 : H.E01HasCanonicalLowSixFiveFiveBlockForm :=
    H.E01HasCanonicalLowSixFiveFiveBlockForm_of_lrat hbal
  obtain ⟨q0, q1, hrel⟩ := H.exists_relabel_E01_canonical hbal hE01
  let H2 := H.relabel q0 q1 (Equiv.refl (Fin 16)) (Equiv.refl (Fin 16))
  refine
    ⟨p0.trans q0, p1.trans q1, p2, p3, ?_⟩
  have hH2bal : H2.canonicalBalanced := hrel.1
  have hH2canon : H2.E01IsCanonicalLowSixFiveFiveBlock := hrel.2
  have hH2common : H2.HasCommonCanonicalLowSixFiveFiveBlockSystem :=
    H2.HasCommonCanonicalLowSixFiveFiveBlockSystem_of_lrat hH2bal hH2canon
  -- The composed relabel is definitionally the same on all data fields; proof
  -- fields are irrelevant.
  change
    (G.relabel (p0.trans q0) (p1.trans q1) p2 p3).canonicalBalanced ∧
      HexadecimaryFourTwoProfileGraph.HasCommonCanonicalLowSixFiveFiveBlockSystem
        (G.relabel (p0.trans q0) (p1.trans q1) p2 p3)
  simpa [H2, H, HexadecimaryFourTwoProfileGraph.relabel] using
    And.intro hH2bal hH2common

private def relabelWord16Coords
    (p : Fin 4 → Fin 16 ≃ Fin 16)
    (w : QaryWord 16 4) : QaryWord 16 4 :=
  fun i => p i (w i)

private def relabelCode16Coords
    (C : Finset (QaryWord 16 4))
    (p : Fin 4 → Fin 16 ≃ Fin 16) :
    Finset (QaryWord 16 4) :=
  C.image (relabelWord16Coords p)

private theorem dist_relabelWord16Coords
    (p : Fin 4 → Fin 16 ≃ Fin 16)
    (x y : QaryWord 16 4) :
    dist (relabelWord16Coords p x) (relabelWord16Coords p y) =
      dist x y := by
  unfold dist relabelWord16Coords
  exact hammingDist_comp (fun i z => p i z) (fun i => (p i).injective)

private theorem relabelWord16Coords_injective
    (p : Fin 4 → Fin 16 ≃ Fin 16) :
    Function.Injective (relabelWord16Coords p) := by
  intro x y hxy
  funext i
  apply (p i).injective
  simpa [relabelWord16Coords] using congrFun hxy i

private theorem relabelCode16Coords_card
    (C : Finset (QaryWord 16 4))
    (p : Fin 4 → Fin 16 ≃ Fin 16) :
    (relabelCode16Coords C p).card = C.card := by
  simpa [relabelCode16Coords] using
    Finset.card_image_of_injective C (relabelWord16Coords_injective p)

private theorem relabelCode16Coords_covers
    (C : Finset (QaryWord 16 4))
    (hC : CoversFinset C 2)
    (p : Fin 4 → Fin 16 ≃ Fin 16) :
    CoversFinset (relabelCode16Coords C p) 2 := by
  intro x
  let xOld : QaryWord 16 4 := fun i => (p i).symm (x i)
  obtain ⟨c, hcC, hdist⟩ := hC xOld
  refine ⟨relabelWord16Coords p c, ?_, ?_⟩
  · exact Finset.mem_image.mpr ⟨c, hcC, rfl⟩
  · have hx : relabelWord16Coords p xOld = x := by
      funext i
      simp [relabelWord16Coords, xOld]
    calc
      dist x (relabelWord16Coords p c) =
          dist (relabelWord16Coords p xOld) (relabelWord16Coords p c) := by
            rw [hx]
      _ = dist xOld c := dist_relabelWord16Coords p xOld c
      _ ≤ 2 := hdist

private theorem pairMissing16_relabelCode16Coords
    (C : Finset (QaryWord 16 4))
    (p : Fin 4 → Fin 16 ≃ Fin 16)
    (i j : Fin 4) (a b : Fin 16) :
    pairMissing16 (relabelCode16Coords C p) i j a b ↔
      pairMissing16 C i j ((p i).symm a) ((p j).symm b) := by
  simp [pairMissing16, pairValues16, relabelCode16Coords,
    relabelWord16Coords, Prod.ext_iff]
  constructor
  · intro h w hw hwi hwj
    exact h w hw
      (by simpa using congrArg (p i) hwi)
      (by simpa using congrArg (p j) hwj)
  · intro h w hw hwi hwj
    exact h w hw
      (by simpa using congrArg (p i).symm hwi)
      (by simpa using congrArg (p j).symm hwj)

private def coordRelabel16
    (p0 p1 p2 p3 : Fin 16 ≃ Fin 16) :
    Fin 4 → Fin 16 ≃ Fin 16
  | 0 => p0
  | 1 => p1
  | 2 => p2
  | 3 => p3

private theorem relabeled_profile_E01_iff_pairMissing16
    (C : Finset (QaryWord 16 4))
    (hC : CoversFinset C 2)
    (hcard : C.card = 86)
    (hge5 : ∀ i a, 5 ≤ (coordFiber16 C i a).card)
    (p0 p1 p2 p3 : Fin 16 ≃ Fin 16)
    (a b : Fin 16) :
    ((hexadecimaryFourRadiusTwo_profile_graph_of_card_eq_eighty_six
        C hC hcard hge5).relabel p0 p1 p2 p3).E01 a b = true ↔
      pairMissing16
        (relabelCode16Coords C (coordRelabel16 p0 p1 p2 p3)) 0 1 a b := by
  rw [pairMissing16_relabelCode16Coords]
  simp [hexadecimaryFourRadiusTwo_profile_graph_of_card_eq_eighty_six,
    HexadecimaryFourTwoProfileGraph.relabel, relabelPairBool16, coordRelabel16]

private theorem relabeled_profile_E02_iff_pairMissing16
    (C : Finset (QaryWord 16 4))
    (hC : CoversFinset C 2)
    (hcard : C.card = 86)
    (hge5 : ∀ i a, 5 ≤ (coordFiber16 C i a).card)
    (p0 p1 p2 p3 : Fin 16 ≃ Fin 16)
    (a c : Fin 16) :
    ((hexadecimaryFourRadiusTwo_profile_graph_of_card_eq_eighty_six
        C hC hcard hge5).relabel p0 p1 p2 p3).E02 a c = true ↔
      pairMissing16
        (relabelCode16Coords C (coordRelabel16 p0 p1 p2 p3)) 0 2 a c := by
  rw [pairMissing16_relabelCode16Coords]
  simp [hexadecimaryFourRadiusTwo_profile_graph_of_card_eq_eighty_six,
    HexadecimaryFourTwoProfileGraph.relabel, relabelPairBool16, coordRelabel16]

private theorem relabeled_profile_E03_iff_pairMissing16
    (C : Finset (QaryWord 16 4))
    (hC : CoversFinset C 2)
    (hcard : C.card = 86)
    (hge5 : ∀ i a, 5 ≤ (coordFiber16 C i a).card)
    (p0 p1 p2 p3 : Fin 16 ≃ Fin 16)
    (a d : Fin 16) :
    ((hexadecimaryFourRadiusTwo_profile_graph_of_card_eq_eighty_six
        C hC hcard hge5).relabel p0 p1 p2 p3).E03 a d = true ↔
      pairMissing16
        (relabelCode16Coords C (coordRelabel16 p0 p1 p2 p3)) 0 3 a d := by
  rw [pairMissing16_relabelCode16Coords]
  simp [hexadecimaryFourRadiusTwo_profile_graph_of_card_eq_eighty_six,
    HexadecimaryFourTwoProfileGraph.relabel, relabelPairBool16, coordRelabel16]

private theorem relabeled_profile_E12_iff_pairMissing16
    (C : Finset (QaryWord 16 4))
    (hC : CoversFinset C 2)
    (hcard : C.card = 86)
    (hge5 : ∀ i a, 5 ≤ (coordFiber16 C i a).card)
    (p0 p1 p2 p3 : Fin 16 ≃ Fin 16)
    (b c : Fin 16) :
    ((hexadecimaryFourRadiusTwo_profile_graph_of_card_eq_eighty_six
        C hC hcard hge5).relabel p0 p1 p2 p3).E12 b c = true ↔
      pairMissing16
        (relabelCode16Coords C (coordRelabel16 p0 p1 p2 p3)) 1 2 b c := by
  rw [pairMissing16_relabelCode16Coords]
  simp [hexadecimaryFourRadiusTwo_profile_graph_of_card_eq_eighty_six,
    HexadecimaryFourTwoProfileGraph.relabel, relabelPairBool16, coordRelabel16]

private theorem relabeled_profile_E13_iff_pairMissing16
    (C : Finset (QaryWord 16 4))
    (hC : CoversFinset C 2)
    (hcard : C.card = 86)
    (hge5 : ∀ i a, 5 ≤ (coordFiber16 C i a).card)
    (p0 p1 p2 p3 : Fin 16 ≃ Fin 16)
    (b d : Fin 16) :
    ((hexadecimaryFourRadiusTwo_profile_graph_of_card_eq_eighty_six
        C hC hcard hge5).relabel p0 p1 p2 p3).E13 b d = true ↔
      pairMissing16
        (relabelCode16Coords C (coordRelabel16 p0 p1 p2 p3)) 1 3 b d := by
  rw [pairMissing16_relabelCode16Coords]
  simp [hexadecimaryFourRadiusTwo_profile_graph_of_card_eq_eighty_six,
    HexadecimaryFourTwoProfileGraph.relabel, relabelPairBool16, coordRelabel16]

private theorem relabeled_profile_E23_iff_pairMissing16
    (C : Finset (QaryWord 16 4))
    (hC : CoversFinset C 2)
    (hcard : C.card = 86)
    (hge5 : ∀ i a, 5 ≤ (coordFiber16 C i a).card)
    (p0 p1 p2 p3 : Fin 16 ≃ Fin 16)
    (c d : Fin 16) :
    ((hexadecimaryFourRadiusTwo_profile_graph_of_card_eq_eighty_six
        C hC hcard hge5).relabel p0 p1 p2 p3).E23 c d = true ↔
      pairMissing16
        (relabelCode16Coords C (coordRelabel16 p0 p1 p2 p3)) 2 3 c d := by
  rw [pairMissing16_relabelCode16Coords]
  simp [hexadecimaryFourRadiusTwo_profile_graph_of_card_eq_eighty_six,
    HexadecimaryFourTwoProfileGraph.relabel, relabelPairBool16, coordRelabel16]

private def commonSplit16
    (blocks2 blocks3 : List Nat × List Nat) :
    Fin 4 → List Nat × List Nat
  | 0 => HexadecimaryFourTwoProfileDirect.canonicalLowSplit
  | 1 => HexadecimaryFourTwoProfileDirect.canonicalLowSplit
  | 2 => blocks2
  | 3 => blocks3

private def commonBlockIndex16
    (blocks2 blocks3 : List Nat × List Nat)
    (i : Fin 4) (a : Fin 16) : Nat :=
  HexadecimaryFourTwoProfileDirect.blockIndex
    (commonSplit16 blocks2 blocks3 i) a.val

private theorem blockIndex_eq_zero_iff_high16
    (split : List Nat × List Nat) (a : Fin 16) :
    HexadecimaryFourTwoProfileDirect.blockIndex split a.val = 0 ↔
      a.val < 6 := by
  unfold HexadecimaryFourTwoProfileDirect.blockIndex
  by_cases h : a.val < 6
  · simp [h]
  · by_cases hm : a.val ∈ split.1
    · simp [h, hm]
    · simp [h, hm]

private theorem commonBlockIndex_eq_zero_iff_high16
    (blocks2 blocks3 : List Nat × List Nat)
    (i : Fin 4) (a : Fin 16) :
    commonBlockIndex16 blocks2 blocks3 i a = 0 ↔ a.val < 6 := by
  simp [commonBlockIndex16, blockIndex_eq_zero_iff_high16]

private def HasCommonBlockPairMissing16
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat) : Prop :=
  (∀ a b : Fin 16,
    pairMissing16 C 0 1 a b ↔
      commonBlockIndex16 blocks2 blocks3 0 a ≠
        commonBlockIndex16 blocks2 blocks3 1 b) ∧
  (∀ a c : Fin 16,
    pairMissing16 C 0 2 a c ↔
      commonBlockIndex16 blocks2 blocks3 0 a ≠
        commonBlockIndex16 blocks2 blocks3 2 c) ∧
  (∀ a d : Fin 16,
    pairMissing16 C 0 3 a d ↔
      commonBlockIndex16 blocks2 blocks3 0 a ≠
        commonBlockIndex16 blocks2 blocks3 3 d) ∧
  (∀ b c : Fin 16,
    pairMissing16 C 1 2 b c ↔
      commonBlockIndex16 blocks2 blocks3 1 b ≠
        commonBlockIndex16 blocks2 blocks3 2 c) ∧
  (∀ b d : Fin 16,
    pairMissing16 C 1 3 b d ↔
      commonBlockIndex16 blocks2 blocks3 1 b ≠
        commonBlockIndex16 blocks2 blocks3 3 d) ∧
  (∀ c d : Fin 16,
    pairMissing16 C 2 3 c d ↔
      commonBlockIndex16 blocks2 blocks3 2 c ≠
        commonBlockIndex16 blocks2 blocks3 3 d)

private theorem exists_relabeled_commonBlockPairMissing16
    (C : Finset (QaryWord 16 4))
    (hC : CoversFinset C 2)
    (hcard : C.card = 86)
    (hge5 : ∀ i a, 5 ≤ (coordFiber16 C i a).card) :
    ∃ C' blocks2 blocks3,
      C'.card = C.card ∧
      CoversFinset C' 2 ∧
      blocks2 ∈ HexadecimaryFourTwoProfileDirect.lowLabeledPartitions ∧
      blocks3 ∈ HexadecimaryFourTwoProfileDirect.lowLabeledPartitions ∧
      HasCommonBlockPairMissing16 C' blocks2 blocks3 := by
  classical
  let G :=
    hexadecimaryFourRadiusTwo_profile_graph_of_card_eq_eighty_six
      C hC hcard hge5
  obtain ⟨p0, p1, p2, p3, _hbal, hcommon⟩ :=
    G.exists_relabel_commonCanonical
  rcases hcommon with
    ⟨blocks2, blocks3, hblocks2, hblocks3, h01, h02, h03, h12, h13, h23⟩
  let p := coordRelabel16 p0 p1 p2 p3
  let C' := relabelCode16Coords C p
  refine
    ⟨C', blocks2, blocks3, relabelCode16Coords_card C p,
      relabelCode16Coords_covers C hC p, hblocks2, hblocks3, ?_⟩
  unfold HasCommonBlockPairMissing16
  constructor
  · intro a b
    have hrel :=
      relabeled_profile_E01_iff_pairMissing16 C hC hcard hge5
        p0 p1 p2 p3 a b
    constructor
    · intro hmiss
      have hEraw := hrel.mpr hmiss
      have hE : (G.relabel p0 p1 p2 p3).E01 a b = true := by
        simpa [G] using hEraw
      have hdiff := (h01 a b).mp hE
      simpa [G, p, C', commonBlockIndex16, commonSplit16] using hdiff
    · intro hdiff
      have hE : (G.relabel p0 p1 p2 p3).E01 a b = true :=
        (h01 a b).mpr (by
          simpa [G, p, C', commonBlockIndex16, commonSplit16] using hdiff)
      exact hrel.mp (by simpa [G] using hE)
  constructor
  · intro a c
    have hrel :=
      relabeled_profile_E02_iff_pairMissing16 C hC hcard hge5
        p0 p1 p2 p3 a c
    constructor
    · intro hmiss
      have hEraw := hrel.mpr hmiss
      have hE : (G.relabel p0 p1 p2 p3).E02 a c = true := by
        simpa [G] using hEraw
      have hdiff := (h02 a c).mp hE
      simpa [G, p, C', commonBlockIndex16, commonSplit16] using hdiff
    · intro hdiff
      have hE : (G.relabel p0 p1 p2 p3).E02 a c = true :=
        (h02 a c).mpr (by
          simpa [G, p, C', commonBlockIndex16, commonSplit16] using hdiff)
      exact hrel.mp (by simpa [G] using hE)
  constructor
  · intro a d
    have hrel :=
      relabeled_profile_E03_iff_pairMissing16 C hC hcard hge5
        p0 p1 p2 p3 a d
    constructor
    · intro hmiss
      have hEraw := hrel.mpr hmiss
      have hE : (G.relabel p0 p1 p2 p3).E03 a d = true := by
        simpa [G] using hEraw
      have hdiff := (h03 a d).mp hE
      simpa [G, p, C', commonBlockIndex16, commonSplit16] using hdiff
    · intro hdiff
      have hE : (G.relabel p0 p1 p2 p3).E03 a d = true :=
        (h03 a d).mpr (by
          simpa [G, p, C', commonBlockIndex16, commonSplit16] using hdiff)
      exact hrel.mp (by simpa [G] using hE)
  constructor
  · intro b c
    have hrel :=
      relabeled_profile_E12_iff_pairMissing16 C hC hcard hge5
        p0 p1 p2 p3 b c
    constructor
    · intro hmiss
      have hEraw := hrel.mpr hmiss
      have hE : (G.relabel p0 p1 p2 p3).E12 b c = true := by
        simpa [G] using hEraw
      have hdiff := (h12 b c).mp hE
      simpa [G, p, C', commonBlockIndex16, commonSplit16] using hdiff
    · intro hdiff
      have hE : (G.relabel p0 p1 p2 p3).E12 b c = true :=
        (h12 b c).mpr (by
          simpa [G, p, C', commonBlockIndex16, commonSplit16] using hdiff)
      exact hrel.mp (by simpa [G] using hE)
  constructor
  · intro b d
    have hrel :=
      relabeled_profile_E13_iff_pairMissing16 C hC hcard hge5
        p0 p1 p2 p3 b d
    constructor
    · intro hmiss
      have hEraw := hrel.mpr hmiss
      have hE : (G.relabel p0 p1 p2 p3).E13 b d = true := by
        simpa [G] using hEraw
      have hdiff := (h13 b d).mp hE
      simpa [G, p, C', commonBlockIndex16, commonSplit16] using hdiff
    · intro hdiff
      have hE : (G.relabel p0 p1 p2 p3).E13 b d = true :=
        (h13 b d).mpr (by
          simpa [G, p, C', commonBlockIndex16, commonSplit16] using hdiff)
      exact hrel.mp (by simpa [G] using hE)
  · intro c d
    have hrel :=
      relabeled_profile_E23_iff_pairMissing16 C hC hcard hge5
        p0 p1 p2 p3 c d
    constructor
    · intro hmiss
      have hEraw := hrel.mpr hmiss
      have hE : (G.relabel p0 p1 p2 p3).E23 c d = true := by
        simpa [G] using hEraw
      have hdiff := (h23 c d).mp hE
      simpa [G, p, C', commonBlockIndex16, commonSplit16] using hdiff
    · intro hdiff
      have hE : (G.relabel p0 p1 p2 p3).E23 c d = true :=
        (h23 c d).mpr (by
          simpa [G, p, C', commonBlockIndex16, commonSplit16] using hdiff)
      exact hrel.mp (by simpa [G] using hE)

private def blockComponent16
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (k : Nat) : Finset (QaryWord 16 4) :=
  C.filter (fun w => ∀ i : Fin 4, commonBlockIndex16 blocks2 blocks3 i (w i) = k)

private theorem blockComponent16_subset
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (k : Nat) :
    blockComponent16 C blocks2 blocks3 k ⊆ C := by
  intro w hw
  have hw' :
      w ∈ C ∧ ∀ i : Fin 4, commonBlockIndex16 blocks2 blocks3 i (w i) = k := by
    simpa [blockComponent16] using hw
  exact hw'.1

private theorem blockComponent16_disjoint_of_ne
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    {k l : Nat} (hkl : k ≠ l) :
    Disjoint (blockComponent16 C blocks2 blocks3 k)
      (blockComponent16 C blocks2 blocks3 l) := by
  rw [Finset.disjoint_left]
  intro w hwk hwl
  simp [blockComponent16] at hwk hwl
  exact hkl ((hwk.2 0).symm.trans (hwl.2 0))

private theorem commonBlockIndex_canonical_pair_card_zero :
    (Finset.univ.filter (fun p : Fin 16 × Fin 16 =>
      HexadecimaryFourTwoProfileDirect.blockIndex
          HexadecimaryFourTwoProfileDirect.canonicalLowSplit p.1.val = 0 ∧
      HexadecimaryFourTwoProfileDirect.blockIndex
          HexadecimaryFourTwoProfileDirect.canonicalLowSplit p.2.val = 0)).card =
      36 := by
  native_decide

private theorem commonBlockIndex_canonical_pair_card_one :
    (Finset.univ.filter (fun p : Fin 16 × Fin 16 =>
      HexadecimaryFourTwoProfileDirect.blockIndex
          HexadecimaryFourTwoProfileDirect.canonicalLowSplit p.1.val = 1 ∧
      HexadecimaryFourTwoProfileDirect.blockIndex
          HexadecimaryFourTwoProfileDirect.canonicalLowSplit p.2.val = 1)).card =
      25 := by
  native_decide

private theorem commonBlockIndex_canonical_pair_card_two :
    (Finset.univ.filter (fun p : Fin 16 × Fin 16 =>
      HexadecimaryFourTwoProfileDirect.blockIndex
          HexadecimaryFourTwoProfileDirect.canonicalLowSplit p.1.val = 2 ∧
      HexadecimaryFourTwoProfileDirect.blockIndex
          HexadecimaryFourTwoProfileDirect.canonicalLowSplit p.2.val = 2)).card =
      25 := by
  native_decide

private theorem commonBlockIndex_pair01_card_zero
    (blocks2 blocks3 : List Nat × List Nat) :
    (Finset.univ.filter (fun p : Fin 16 × Fin 16 =>
      commonBlockIndex16 blocks2 blocks3 0 p.1 = 0 ∧
      commonBlockIndex16 blocks2 blocks3 1 p.2 = 0)).card = 36 := by
  simpa [commonBlockIndex16, commonSplit16] using
    commonBlockIndex_canonical_pair_card_zero

private theorem commonBlockIndex_pair01_card_one
    (blocks2 blocks3 : List Nat × List Nat) :
    (Finset.univ.filter (fun p : Fin 16 × Fin 16 =>
      commonBlockIndex16 blocks2 blocks3 0 p.1 = 1 ∧
      commonBlockIndex16 blocks2 blocks3 1 p.2 = 1)).card = 25 := by
  simpa [commonBlockIndex16, commonSplit16] using
    commonBlockIndex_canonical_pair_card_one

private theorem commonBlockIndex_pair01_card_two
    (blocks2 blocks3 : List Nat × List Nat) :
    (Finset.univ.filter (fun p : Fin 16 × Fin 16 =>
      commonBlockIndex16 blocks2 blocks3 0 p.1 = 2 ∧
      commonBlockIndex16 blocks2 blocks3 1 p.2 = 2)).card = 25 := by
  simpa [commonBlockIndex16, commonSplit16] using
    commonBlockIndex_canonical_pair_card_two

private theorem codeword_blocks_eq_zero_of_commonBlockPairMissing16
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (w : QaryWord 16 4)
    (hwC : w ∈ C)
    (i : Fin 4) :
    commonBlockIndex16 blocks2 blocks3 i (w i) =
      commonBlockIndex16 blocks2 blocks3 0 (w 0) := by
  fin_cases i
  · rfl
  · by_contra hne
    have hdiff :
        commonBlockIndex16 blocks2 blocks3 0 (w 0) ≠
          commonBlockIndex16 blocks2 blocks3 1 (w 1) := by
      intro h
      exact hne h.symm
    have hmiss : pairMissing16 C 0 1 (w 0) (w 1) :=
      (hmissing.1 (w 0) (w 1)).mpr hdiff
    exact hmiss (Finset.mem_image.mpr ⟨w, hwC, rfl⟩)
  · by_contra hne
    have hdiff :
        commonBlockIndex16 blocks2 blocks3 0 (w 0) ≠
          commonBlockIndex16 blocks2 blocks3 2 (w 2) := by
      intro h
      exact hne h.symm
    have hmiss : pairMissing16 C 0 2 (w 0) (w 2) :=
      (hmissing.2.1 (w 0) (w 2)).mpr hdiff
    exact hmiss (Finset.mem_image.mpr ⟨w, hwC, rfl⟩)
  · by_contra hne
    have hdiff :
        commonBlockIndex16 blocks2 blocks3 0 (w 0) ≠
          commonBlockIndex16 blocks2 blocks3 3 (w 3) := by
      intro h
      exact hne h.symm
    have hmiss : pairMissing16 C 0 3 (w 0) (w 3) :=
      (hmissing.2.2.1 (w 0) (w 3)).mpr hdiff
    exact hmiss (Finset.mem_image.mpr ⟨w, hwC, rfl⟩)

private theorem blockComponent16_card_ge_pair01_same_block
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (k : Nat) :
    (Finset.univ.filter (fun p : Fin 16 × Fin 16 =>
      commonBlockIndex16 blocks2 blocks3 0 p.1 = k ∧
      commonBlockIndex16 blocks2 blocks3 1 p.2 = k)).card ≤
      (blockComponent16 C blocks2 blocks3 k).card := by
  classical
  let P : Finset (Fin 16 × Fin 16) :=
    Finset.univ.filter (fun p : Fin 16 × Fin 16 =>
      commonBlockIndex16 blocks2 blocks3 0 p.1 = k ∧
      commonBlockIndex16 blocks2 blocks3 1 p.2 = k)
  have hsub : P ⊆ pairValues16 (blockComponent16 C blocks2 blocks3 k) 0 1 := by
    intro p hp
    rcases p with ⟨a, b⟩
    have hp' :
        commonBlockIndex16 blocks2 blocks3 0 a = k ∧
          commonBlockIndex16 blocks2 blocks3 1 b = k := by
      simpa [P] using hp
    have hnotMissing : ¬ pairMissing16 C 0 1 a b := by
      intro hmiss
      have hneq := (hmissing.1 a b).mp hmiss
      exact hneq (hp'.1.trans hp'.2.symm)
    have hpPair : (a, b) ∈ pairValues16 C 0 1 := by
      by_contra hnotMem
      exact hnotMissing (by simpa [pairMissing16] using hnotMem)
    rcases Finset.mem_image.mp hpPair with ⟨w, hwC, hwpair⟩
    have hw0 : w 0 = a := congrArg Prod.fst hwpair
    have hw1 : w 1 = b := congrArg Prod.snd hwpair
    have hblocks :=
      codeword_blocks_eq_zero_of_commonBlockPairMissing16
        C blocks2 blocks3 hmissing w hwC
    have hwComp : w ∈ blockComponent16 C blocks2 blocks3 k := by
      simp [blockComponent16, hwC]
      intro i
      calc
        commonBlockIndex16 blocks2 blocks3 i (w i) =
            commonBlockIndex16 blocks2 blocks3 0 (w 0) := hblocks i
        _ = commonBlockIndex16 blocks2 blocks3 0 a := by rw [hw0]
        _ = k := hp'.1
    exact Finset.mem_image.mpr ⟨w, hwComp, hwpair⟩
  calc
    (Finset.univ.filter (fun p : Fin 16 × Fin 16 =>
      commonBlockIndex16 blocks2 blocks3 0 p.1 = k ∧
      commonBlockIndex16 blocks2 blocks3 1 p.2 = k)).card = P.card := rfl
    _ ≤ (pairValues16 (blockComponent16 C blocks2 blocks3 k) 0 1).card :=
      Finset.card_le_card hsub
    _ ≤ (blockComponent16 C blocks2 blocks3 k).card :=
      Finset.card_image_le

private theorem high_blockComponent16_card_eq_thirty_six
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hcard : C.card = 86)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3) :
    (blockComponent16 C blocks2 blocks3 0).card = 36 := by
  classical
  let C0 := blockComponent16 C blocks2 blocks3 0
  let C1 := blockComponent16 C blocks2 blocks3 1
  let C2 := blockComponent16 C blocks2 blocks3 2
  have hC0ge : 36 ≤ C0.card := by
    have h :=
      blockComponent16_card_ge_pair01_same_block C blocks2 blocks3 hmissing 0
    rw [commonBlockIndex_pair01_card_zero blocks2 blocks3] at h
    simpa [C0] using h
  have hC1ge : 25 ≤ C1.card := by
    have h :=
      blockComponent16_card_ge_pair01_same_block C blocks2 blocks3 hmissing 1
    rw [commonBlockIndex_pair01_card_one blocks2 blocks3] at h
    simpa [C1] using h
  have hC2ge : 25 ≤ C2.card := by
    have h :=
      blockComponent16_card_ge_pair01_same_block C blocks2 blocks3 hmissing 2
    rw [commonBlockIndex_pair01_card_two blocks2 blocks3] at h
    simpa [C2] using h
  have hdisj01 : Disjoint C0 C1 := by
    simpa [C0, C1] using
      blockComponent16_disjoint_of_ne C blocks2 blocks3
        (by decide : (0 : Nat) ≠ 1)
  have hdisj02 : Disjoint C0 C2 := by
    simpa [C0, C2] using
      blockComponent16_disjoint_of_ne C blocks2 blocks3
        (by decide : (0 : Nat) ≠ 2)
  have hdisj12 : Disjoint C1 C2 := by
    simpa [C1, C2] using
      blockComponent16_disjoint_of_ne C blocks2 blocks3
        (by decide : (1 : Nat) ≠ 2)
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
    simp [C0, C1, C2, blockComponent16] at hw
    tauto
  have hUle : ((C0 ∪ C1) ∪ C2).card ≤ C.card :=
    Finset.card_le_card hUsub
  have hsumle : C0.card + C1.card + C2.card ≤ 86 := by
    rw [hUcard] at hUle
    omega
  have hC0le : C0.card ≤ 36 := by
    omega
  have hC0eq : C0.card = 36 := by
    omega
  simpa [C0] using hC0eq

private def highPairSet16 : Finset (Fin 16 × Fin 16) :=
  Finset.univ.filter (fun p : Fin 16 × Fin 16 => p.1.val < 6 ∧ p.2.val < 6)

private theorem highPairSet16_card : highPairSet16.card = 36 := by
  native_decide

private theorem pairMissing16_iff_commonBlockIndex_ne
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (i j : Fin 4) (hij : i < j)
    (a b : Fin 16) :
    pairMissing16 C i j a b ↔
      commonBlockIndex16 blocks2 blocks3 i a ≠
        commonBlockIndex16 blocks2 blocks3 j b := by
  have hijNat : i.val < j.val := by exact hij
  fin_cases i <;> fin_cases j <;> simp at hijNat <;> try omega
  · simpa using hmissing.1 a b
  · simpa using hmissing.2.1 a b
  · simpa using hmissing.2.2.1 a b
  · simpa using hmissing.2.2.2.1 a b
  · simpa using hmissing.2.2.2.2.1 a b
  · simpa using hmissing.2.2.2.2.2 a b

private theorem highPairSet16_subset_pairValues_highBlock
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (i j : Fin 4) (hij : i < j) :
    highPairSet16 ⊆
      pairValues16 (blockComponent16 C blocks2 blocks3 0) i j := by
  classical
  intro p hp
  rcases p with ⟨a, b⟩
  have hp' : a.val < 6 ∧ b.val < 6 := by
    simpa [highPairSet16] using hp
  have hia : commonBlockIndex16 blocks2 blocks3 i a = 0 :=
    (commonBlockIndex_eq_zero_iff_high16 blocks2 blocks3 i a).mpr hp'.1
  have hjb : commonBlockIndex16 blocks2 blocks3 j b = 0 :=
    (commonBlockIndex_eq_zero_iff_high16 blocks2 blocks3 j b).mpr hp'.2
  have hnotMissing : ¬ pairMissing16 C i j a b := by
    intro hmiss
    have hneq :=
      (pairMissing16_iff_commonBlockIndex_ne
        C blocks2 blocks3 hmissing i j hij a b).mp hmiss
    exact hneq (hia.trans hjb.symm)
  have hpPair : (a, b) ∈ pairValues16 C i j := by
    by_contra hnotMem
    exact hnotMissing (by simpa [pairMissing16] using hnotMem)
  rcases Finset.mem_image.mp hpPair with ⟨w, hwC, hwpair⟩
  have hwi : w i = a := congrArg Prod.fst hwpair
  have hwj : w j = b := congrArg Prod.snd hwpair
  have hblocks :=
    codeword_blocks_eq_zero_of_commonBlockPairMissing16
      C blocks2 blocks3 hmissing w hwC
  have hiw : commonBlockIndex16 blocks2 blocks3 i (w i) = 0 := by
    rw [hwi]
    exact hia
  have h0w : commonBlockIndex16 blocks2 blocks3 0 (w 0) = 0 :=
    (hblocks i).symm.trans hiw
  have hwComp : w ∈ blockComponent16 C blocks2 blocks3 0 := by
    simp [blockComponent16, hwC]
    intro k
    exact (hblocks k).trans h0w
  exact Finset.mem_image.mpr ⟨w, hwComp, hwpair⟩

private theorem high_blockComponent16_pairValues_card_eq_thirty_six
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36)
    (i j : Fin 4) (hij : i < j) :
    (pairValues16 (blockComponent16 C blocks2 blocks3 0) i j).card = 36 := by
  classical
  have hsub :=
    highPairSet16_subset_pairValues_highBlock C blocks2 blocks3 hmissing i j hij
  have hge : 36 ≤ (pairValues16 (blockComponent16 C blocks2 blocks3 0) i j).card := by
    have h := Finset.card_le_card hsub
    rw [highPairSet16_card] at h
    exact h
  have hle :
      (pairValues16 (blockComponent16 C blocks2 blocks3 0) i j).card ≤ 36 := by
    have h :
        (pairValues16 (blockComponent16 C blocks2 blocks3 0) i j).card ≤
          (blockComponent16 C blocks2 blocks3 0).card := by
      simpa [pairValues16] using
        (Finset.card_image_le :
          ((blockComponent16 C blocks2 blocks3 0).image
            (fun w : QaryWord 16 4 => (w i, w j))).card ≤
              (blockComponent16 C blocks2 blocks3 0).card)
    omega
  omega

private theorem high_blockComponent16_pairProjection_injOn
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36)
    (i j : Fin 4) (hij : i < j) :
    Set.InjOn (fun w : QaryWord 16 4 => (w i, w j))
      (blockComponent16 C blocks2 blocks3 0) := by
  classical
  have hpaircard :=
    high_blockComponent16_pairValues_card_eq_thirty_six
      C blocks2 blocks3 hmissing hC0card i j hij
  have hcardImage :
      ((blockComponent16 C blocks2 blocks3 0).image
        (fun w : QaryWord 16 4 => (w i, w j))).card =
        (blockComponent16 C blocks2 blocks3 0).card := by
    simpa [pairValues16, hC0card] using hpaircard
  exact Finset.injOn_of_card_image_eq hcardImage

private theorem high_blockComponent16_pair_unique
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36)
    (i j : Fin 4) (hij : i < j)
    {w u : QaryWord 16 4}
    (hw : w ∈ blockComponent16 C blocks2 blocks3 0)
    (hu : u ∈ blockComponent16 C blocks2 blocks3 0)
    (hwi : w i = u i)
    (hwj : w j = u j) :
    w = u := by
  classical
  have hinj :=
    high_blockComponent16_pairProjection_injOn
      C blocks2 blocks3 hmissing hC0card i j hij
  exact hinj hw hu (by simp [hwi, hwj])

private abbrev Fin6 := Fin 6

@[simp] private theorem rawPosLiteral_eq (x : Nat) (hx : 0 < x) :
    Sat.Literal.ofInt (x : Int) = Sat.Literal.pos (x - 1) := by
  unfold Sat.Literal.ofInt
  have hnot : ¬ (x : Int) < 0 := by omega
  simp only [hnot, ↓reduceIte]
  congr
  have hEqInt : (x : Int) - 1 = ((x - 1 : Nat) : Int) := by omega
  rw [hEqInt]
  simp

@[simp] private theorem rawNegLiteral_eq (x : Nat) (hx : 0 < x) :
    Sat.Literal.ofInt (-(x : Int)) = Sat.Literal.neg (x - 1) := by
  unfold Sat.Literal.ofInt
  have hxInt : (0 : Int) < (x : Int) := by exact_mod_cast hx
  have hneg : -(x : Int) < 0 := by omega
  simp only [hneg, ↓reduceIte]
  congr
  have hEqInt : -(-(x : Int)) - 1 = ((x - 1 : Nat) : Int) := by omega
  rw [hEqInt]
  simp

private theorem valuation_satisfies_of_pos_mem
    {v : Sat.Valuation} {idx : Nat} {clause : Sat.Clause}
    (hmem : List.Mem (Sat.Literal.pos idx) clause) (htrue : v idx) :
    Sat.Valuation.satisfies v clause := by
  induction clause with
  | nil => cases hmem
  | cons lit rest ih =>
      cases hmem with
      | head =>
        intro hfalse
        exact False.elim (hfalse htrue)
      | tail _ htail =>
        intro _hfalse
        exact ih htail

private theorem valuation_satisfies_two_neg
    {v : Sat.Valuation} {i j : Nat}
    (h : v i → v j → False) :
    Sat.Valuation.satisfies v [Sat.Literal.neg i, Sat.Literal.neg j] := by
  intro hi hj
  exact h hi hj

private theorem valuation_satisfies_four_neg
    {v : Sat.Valuation} {i j k l : Nat}
    (h : v i → v j → v k → v l → False) :
    Sat.Valuation.satisfies v
      [Sat.Literal.neg i, Sat.Literal.neg j,
        Sat.Literal.neg k, Sat.Literal.neg l] := by
  intro hi hj hk hl
  exact h hi hj hk hl

private theorem choosePairs_mem_of_nodup
    {α : Type} [DecidableEq α] {xs : List α} (hnodup : xs.Nodup)
    {p : α × α}
    (hp : p ∈ HexadecimaryFourTwoOANoSymDirect.choosePairs xs) :
    p.1 ∈ xs ∧ p.2 ∈ xs ∧ p.1 ≠ p.2 := by
  induction xs with
  | nil =>
      simp [HexadecimaryFourTwoOANoSymDirect.choosePairs] at hp
  | cons x xs ih =>
      rw [HexadecimaryFourTwoOANoSymDirect.choosePairs] at hp
      rw [List.nodup_cons] at hnodup
      rw [List.mem_append, List.mem_map] at hp
      rcases hnodup with ⟨hxnot, hnodupTail⟩
      rcases hp with hp | hp
      · rcases hp with ⟨y, hy, hpy⟩
        subst p
        constructor
        · simp
        constructor
        · exact List.mem_cons_of_mem x hy
        · intro hxy
          have hxy' : x = y := by simpa using hxy
          rw [← hxy'] at hy
          exact hxnot hy
      · have htail := ih hnodupTail hp
        constructor
        · exact List.mem_cons_of_mem x htail.1
        constructor
        · exact List.mem_cons_of_mem x htail.2.1
        · exact htail.2.2

private theorem valuation_satisfies_exactlyOneClauses_pos
    {v : Sat.Valuation} {vars : List Nat}
    (hpos : ∀ x, x ∈ vars → 0 < x)
    (hnodup : vars.Nodup)
    (hexists : ∃ x, x ∈ vars ∧ v (x - 1))
    (hunique :
      ∀ x, x ∈ vars → ∀ y, y ∈ vars → x ≠ y →
        v (x - 1) → v (y - 1) → False) :
    Sat.Valuation.satisfies_fmla v
      ((HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses
          (vars.map Int.ofNat)).map LRATNative.rawClauseToSat) := by
  let intVars : List Int := vars.map Int.ofNat
  have hnodupInt : intVars.Nodup := by
    exact hnodup.map (by
      intro a b hab
      exact Int.ofNat.inj hab)
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨raw, hraw, rfl⟩
  change raw ∈ HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses intVars at hraw
  rw [HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses] at hraw
  rw [List.mem_append] at hraw
  rcases hraw with hraw | hraw
  · simp at hraw
    subst raw
    rcases hexists with ⟨x, hx, hvx⟩
    apply valuation_satisfies_of_pos_mem
      (idx := x - 1)
      (clause := LRATNative.rawClauseToSat intVars.toArray)
    · rw [LRATNative.rawClauseToSat]
      change Sat.Literal.pos (x - 1) ∈ intVars.map Sat.Literal.ofInt
      rw [List.mem_map]
      refine ⟨(x : Int), ?_, ?_⟩
      · simp [intVars, hx]
      · exact rawPosLiteral_eq x (hpos x hx)
    · exact hvx
  · rw [HexadecimaryFourTwoOANoSymDirect.pairwiseAtMostClauses] at hraw
    rcases List.mem_map.mp hraw with ⟨p, hp, hrawEq⟩
    subst raw
    have hpinfo :=
      choosePairs_mem_of_nodup hnodupInt hp
    have hp1 : p.1 ∈ vars.map Int.ofNat := by
      simpa [intVars] using hpinfo.1
    have hp2 : p.2 ∈ vars.map Int.ofNat := by
      simpa [intVars] using hpinfo.2.1
    rcases List.mem_map.mp hp1 with ⟨x, hx, hxEq⟩
    rcases List.mem_map.mp hp2 with ⟨y, hy, hyEq⟩
    have hxy : x ≠ y := by
      intro h
      exact hpinfo.2.2 (by
        rw [← hxEq, ← hyEq]
        simp [h])
    have hsat :
        Sat.Valuation.satisfies v
          [Sat.Literal.neg (x - 1), Sat.Literal.neg (y - 1)] :=
      valuation_satisfies_two_neg
        (fun hvx hvy => hunique x hx y hy hxy hvx hvy)
    rw [← hxEq, ← hyEq]
    simpa [LRATNative.rawClauseToSat, hpos x hx, hpos y hy] using hsat

private theorem valuation_satisfies_exactlyOneClauses_range6
    {v : Sat.Valuation} (var : Nat → Nat)
    (hpos : ∀ k, k < HexadecimaryFourTwoOANoSymDirect.n → 0 < var k)
    (hinj :
      ∀ a, a < HexadecimaryFourTwoOANoSymDirect.n →
        ∀ b, b < HexadecimaryFourTwoOANoSymDirect.n →
          var a = var b → a = b)
    (hexists : ∃ a : Fin6, v (var a.val - 1))
    (hunique :
      ∀ a b : Fin6, a ≠ b →
        v (var a.val - 1) → v (var b.val - 1) → False) :
    Sat.Valuation.satisfies_fmla v
      ((HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses
          ((List.range HexadecimaryFourTwoOANoSymDirect.n).map
            (fun k => HexadecimaryFourTwoOANoSymDirect.posLit (var k)))).map
        LRATNative.rawClauseToSat) := by
  let vars : List Nat :=
    (List.range HexadecimaryFourTwoOANoSymDirect.n).map var
  have hposVars : ∀ x, x ∈ vars → 0 < x := by
    intro x hx
    rcases List.mem_map.mp hx with ⟨k, hk, hkx⟩
    rw [← hkx]
    exact hpos k (by simpa using hk)
  have hnodupVars : vars.Nodup := by
    apply List.Nodup.map_on
    · intro a ha b hb hab
      exact hinj a (by simpa using ha) b (by simpa using hb) hab
    · exact List.nodup_range
  have hexistsVars : ∃ x, x ∈ vars ∧ v (x - 1) := by
    rcases hexists with ⟨a, ha⟩
    refine ⟨var a.val, ?_, ha⟩
    exact List.mem_map.mpr ⟨a.val, by simp [HexadecimaryFourTwoOANoSymDirect.n], rfl⟩
  have huniqueVars :
      ∀ x, x ∈ vars → ∀ y, y ∈ vars → x ≠ y →
        v (x - 1) → v (y - 1) → False := by
    intro x hx y hy hxy hvx hvy
    rcases List.mem_map.mp hx with ⟨aNat, haMem, hax⟩
    rcases List.mem_map.mp hy with ⟨bNat, hbMem, hby⟩
    have halt : aNat < 6 := by
      simpa [HexadecimaryFourTwoOANoSymDirect.n] using haMem
    have hblt : bNat < 6 := by
      simpa [HexadecimaryFourTwoOANoSymDirect.n] using hbMem
    let a : Fin6 := ⟨aNat, halt⟩
    let b : Fin6 := ⟨bNat, hblt⟩
    have hxa : x = var a.val := by
      simpa [a] using hax.symm
    have hyb : y = var b.val := by
      simpa [b] using hby.symm
    have hab : a ≠ b := by
      intro hab
      apply hxy
      rw [hxa, hyb, hab]
    exact hunique a b hab
      (by simpa [hxa] using hvx)
      (by simpa [hyb] using hvy)
  have hsat :=
    valuation_satisfies_exactlyOneClauses_pos
      (v := v) (vars := vars) hposVars hnodupVars hexistsVars huniqueVars
  simpa [vars, HexadecimaryFourTwoOANoSymDirect.posLit, List.map_map] using hsat

private theorem oa_lVar_index_injective
    {r₁ c₁ v₁ r₂ c₂ v₂ : Fin6}
    (h :
      HexadecimaryFourTwoOANoSymDirect.lVar r₁.val c₁.val v₁.val - 1 =
        HexadecimaryFourTwoOANoSymDirect.lVar r₂.val c₂.val v₂.val - 1) :
    r₁ = r₂ ∧ c₁ = c₂ ∧ v₁ = v₂ := by
  have hr : r₁.val = r₂.val := by
    simp [HexadecimaryFourTwoOANoSymDirect.lVar,
      HexadecimaryFourTwoOANoSymDirect.n] at h
    omega
  have hc : c₁.val = c₂.val := by
    simp [HexadecimaryFourTwoOANoSymDirect.lVar,
      HexadecimaryFourTwoOANoSymDirect.n] at h
    omega
  have hv : v₁.val = v₂.val := by
    simp [HexadecimaryFourTwoOANoSymDirect.lVar,
      HexadecimaryFourTwoOANoSymDirect.n] at h
    omega
  exact ⟨Fin.ext hr, Fin.ext hc, Fin.ext hv⟩

private theorem oa_mVar_index_injective
    {r₁ c₁ v₁ r₂ c₂ v₂ : Fin6}
    (h :
      HexadecimaryFourTwoOANoSymDirect.mVar r₁.val c₁.val v₁.val - 1 =
        HexadecimaryFourTwoOANoSymDirect.mVar r₂.val c₂.val v₂.val - 1) :
    r₁ = r₂ ∧ c₁ = c₂ ∧ v₁ = v₂ := by
  have hr : r₁.val = r₂.val := by
    simp [HexadecimaryFourTwoOANoSymDirect.mVar,
      HexadecimaryFourTwoOANoSymDirect.n] at h
    omega
  have hc : c₁.val = c₂.val := by
    simp [HexadecimaryFourTwoOANoSymDirect.mVar,
      HexadecimaryFourTwoOANoSymDirect.n] at h
    omega
  have hv : v₁.val = v₂.val := by
    simp [HexadecimaryFourTwoOANoSymDirect.mVar,
      HexadecimaryFourTwoOANoSymDirect.n] at h
    omega
  exact ⟨Fin.ext hr, Fin.ext hc, Fin.ext hv⟩

private theorem oa_lVar_index_ne_mVar_index
    (r₁ c₁ v₁ r₂ c₂ v₂ : Fin6) :
    HexadecimaryFourTwoOANoSymDirect.lVar r₁.val c₁.val v₁.val - 1 ≠
      HexadecimaryFourTwoOANoSymDirect.mVar r₂.val c₂.val v₂.val - 1 := by
  intro h
  simp [HexadecimaryFourTwoOANoSymDirect.lVar,
    HexadecimaryFourTwoOANoSymDirect.mVar,
    HexadecimaryFourTwoOANoSymDirect.n] at h
  omega

private def highOAL
    (C0 : Finset (QaryWord 16 4))
    (r c v : Fin6) : Prop :=
  ∃ w : QaryWord 16 4,
    w ∈ C0 ∧
    w 0 = fin16OfNatMod r.val ∧
    w 1 = fin16OfNatMod c.val ∧
    w 2 = fin16OfNatMod v.val

private def highOAM
    (C0 : Finset (QaryWord 16 4))
    (r c v : Fin6) : Prop :=
  ∃ w : QaryWord 16 4,
    w ∈ C0 ∧
    w 0 = fin16OfNatMod r.val ∧
    w 1 = fin16OfNatMod c.val ∧
    w 3 = fin16OfNatMod v.val

private theorem highPairSet16_mem_fin6 (a b : Fin6) :
    (fin16OfNatMod a.val, fin16OfNatMod b.val) ∈ highPairSet16 := by
  have halt : a.val < 16 := by omega
  have hblt : b.val < 16 := by omega
  simp [highPairSet16, fin16OfNatMod, Nat.mod_eq_of_lt halt,
    Nat.mod_eq_of_lt hblt]

private theorem blockComponent16_coord_high
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    {w : QaryWord 16 4}
    (hw : w ∈ blockComponent16 C blocks2 blocks3 0)
    (i : Fin 4) :
    (w i).val < 6 := by
  have hw' :
      w ∈ C ∧ ∀ i : Fin 4,
        commonBlockIndex16 blocks2 blocks3 i (w i) = 0 := by
    simpa [blockComponent16] using hw
  exact
    (commonBlockIndex_eq_zero_iff_high16 blocks2 blocks3 i (w i)).mp
      (hw'.2 i)

private theorem highOAL_cell_exists
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (r c : Fin6) :
    ∃ v : Fin6,
      highOAL (blockComponent16 C blocks2 blocks3 0) r c v := by
  classical
  have hpPair :
      (fin16OfNatMod r.val, fin16OfNatMod c.val) ∈
        pairValues16 (blockComponent16 C blocks2 blocks3 0) 0 1 :=
    highPairSet16_subset_pairValues_highBlock
      C blocks2 blocks3 hmissing 0 1 (by decide)
      (highPairSet16_mem_fin6 r c)
  rcases Finset.mem_image.mp hpPair with ⟨w, hwC0, hwpair⟩
  have hw0 : w 0 = fin16OfNatMod r.val := congrArg Prod.fst hwpair
  have hw1 : w 1 = fin16OfNatMod c.val := congrArg Prod.snd hwpair
  have hw2lt : (w 2).val < 6 :=
    blockComponent16_coord_high C blocks2 blocks3 hwC0 2
  refine ⟨⟨(w 2).val, hw2lt⟩, w, hwC0, hw0, hw1, ?_⟩
  exact (fin16OfNatMod_val (w 2)).symm

private theorem highOAM_cell_exists
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (r c : Fin6) :
    ∃ v : Fin6,
      highOAM (blockComponent16 C blocks2 blocks3 0) r c v := by
  classical
  have hpPair :
      (fin16OfNatMod r.val, fin16OfNatMod c.val) ∈
        pairValues16 (blockComponent16 C blocks2 blocks3 0) 0 1 :=
    highPairSet16_subset_pairValues_highBlock
      C blocks2 blocks3 hmissing 0 1 (by decide)
      (highPairSet16_mem_fin6 r c)
  rcases Finset.mem_image.mp hpPair with ⟨w, hwC0, hwpair⟩
  have hw0 : w 0 = fin16OfNatMod r.val := congrArg Prod.fst hwpair
  have hw1 : w 1 = fin16OfNatMod c.val := congrArg Prod.snd hwpair
  have hw3lt : (w 3).val < 6 :=
    blockComponent16_coord_high C blocks2 blocks3 hwC0 3
  refine ⟨⟨(w 3).val, hw3lt⟩, w, hwC0, hw0, hw1, ?_⟩
  exact (fin16OfNatMod_val (w 3)).symm

private theorem fin6_eq_of_fin16OfNatMod_eq
    {a b : Fin6}
    (h : fin16OfNatMod a.val = fin16OfNatMod b.val) :
    a = b := by
  apply Fin.ext
  have hval := congrArg Fin.val h
  have halt : a.val < 16 := by omega
  have hblt : b.val < 16 := by omega
  simpa [fin16OfNatMod, Nat.mod_eq_of_lt halt,
    Nat.mod_eq_of_lt hblt] using hval

private theorem highOAL_cell_unique
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36)
    {r c v₁ v₂ : Fin6}
    (h₁ : highOAL (blockComponent16 C blocks2 blocks3 0) r c v₁)
    (h₂ : highOAL (blockComponent16 C blocks2 blocks3 0) r c v₂) :
    v₁ = v₂ := by
  rcases h₁ with ⟨w, hw, hw0, hw1, hw2⟩
  rcases h₂ with ⟨u, hu, hu0, hu1, hu2⟩
  have hwu :
      w = u :=
    high_blockComponent16_pair_unique C blocks2 blocks3 hmissing hC0card
      0 1 (by decide) hw hu
      (by rw [hw0, hu0])
      (by rw [hw1, hu1])
  apply fin6_eq_of_fin16OfNatMod_eq
  rw [← hw2, ← hu2, hwu]

private theorem highOAM_cell_unique
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36)
    {r c v₁ v₂ : Fin6}
    (h₁ : highOAM (blockComponent16 C blocks2 blocks3 0) r c v₁)
    (h₂ : highOAM (blockComponent16 C blocks2 blocks3 0) r c v₂) :
    v₁ = v₂ := by
  rcases h₁ with ⟨w, hw, hw0, hw1, hw3⟩
  rcases h₂ with ⟨u, hu, hu0, hu1, hu3⟩
  have hwu :
      w = u :=
    high_blockComponent16_pair_unique C blocks2 blocks3 hmissing hC0card
      0 1 (by decide) hw hu
      (by rw [hw0, hu0])
      (by rw [hw1, hu1])
  apply fin6_eq_of_fin16OfNatMod_eq
  rw [← hw3, ← hu3, hwu]

private theorem highOAL_rowSymbol_exists
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (r v : Fin6) :
    ∃ c : Fin6,
      highOAL (blockComponent16 C blocks2 blocks3 0) r c v := by
  classical
  have hpPair :
      (fin16OfNatMod r.val, fin16OfNatMod v.val) ∈
        pairValues16 (blockComponent16 C blocks2 blocks3 0) 0 2 :=
    highPairSet16_subset_pairValues_highBlock
      C blocks2 blocks3 hmissing 0 2 (by decide)
      (highPairSet16_mem_fin6 r v)
  rcases Finset.mem_image.mp hpPair with ⟨w, hwC0, hwpair⟩
  have hw0 : w 0 = fin16OfNatMod r.val := congrArg Prod.fst hwpair
  have hw2 : w 2 = fin16OfNatMod v.val := congrArg Prod.snd hwpair
  have hw1lt : (w 1).val < 6 :=
    blockComponent16_coord_high C blocks2 blocks3 hwC0 1
  refine ⟨⟨(w 1).val, hw1lt⟩, w, hwC0, hw0, ?_, hw2⟩
  exact (fin16OfNatMod_val (w 1)).symm

private theorem highOAL_rowSymbol_unique
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36)
    {r v c₁ c₂ : Fin6}
    (h₁ : highOAL (blockComponent16 C blocks2 blocks3 0) r c₁ v)
    (h₂ : highOAL (blockComponent16 C blocks2 blocks3 0) r c₂ v) :
    c₁ = c₂ := by
  rcases h₁ with ⟨w, hw, hw0, hw1, hw2⟩
  rcases h₂ with ⟨u, hu, hu0, hu1, hu2⟩
  have hwu :
      w = u :=
    high_blockComponent16_pair_unique C blocks2 blocks3 hmissing hC0card
      0 2 (by decide) hw hu
      (by rw [hw0, hu0])
      (by rw [hw2, hu2])
  apply fin6_eq_of_fin16OfNatMod_eq
  rw [← hw1, ← hu1, hwu]

private theorem highOAL_colSymbol_exists
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (c v : Fin6) :
    ∃ r : Fin6,
      highOAL (blockComponent16 C blocks2 blocks3 0) r c v := by
  classical
  have hpPair :
      (fin16OfNatMod c.val, fin16OfNatMod v.val) ∈
        pairValues16 (blockComponent16 C blocks2 blocks3 0) 1 2 :=
    highPairSet16_subset_pairValues_highBlock
      C blocks2 blocks3 hmissing 1 2 (by decide)
      (highPairSet16_mem_fin6 c v)
  rcases Finset.mem_image.mp hpPair with ⟨w, hwC0, hwpair⟩
  have hw1 : w 1 = fin16OfNatMod c.val := congrArg Prod.fst hwpair
  have hw2 : w 2 = fin16OfNatMod v.val := congrArg Prod.snd hwpair
  have hw0lt : (w 0).val < 6 :=
    blockComponent16_coord_high C blocks2 blocks3 hwC0 0
  refine ⟨⟨(w 0).val, hw0lt⟩, w, hwC0, ?_, hw1, hw2⟩
  exact (fin16OfNatMod_val (w 0)).symm

private theorem highOAL_colSymbol_unique
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36)
    {c v r₁ r₂ : Fin6}
    (h₁ : highOAL (blockComponent16 C blocks2 blocks3 0) r₁ c v)
    (h₂ : highOAL (blockComponent16 C blocks2 blocks3 0) r₂ c v) :
    r₁ = r₂ := by
  rcases h₁ with ⟨w, hw, hw0, hw1, hw2⟩
  rcases h₂ with ⟨u, hu, hu0, hu1, hu2⟩
  have hwu :
      w = u :=
    high_blockComponent16_pair_unique C blocks2 blocks3 hmissing hC0card
      1 2 (by decide) hw hu
      (by rw [hw1, hu1])
      (by rw [hw2, hu2])
  apply fin6_eq_of_fin16OfNatMod_eq
  rw [← hw0, ← hu0, hwu]

private theorem highOAM_rowSymbol_exists
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (r v : Fin6) :
    ∃ c : Fin6,
      highOAM (blockComponent16 C blocks2 blocks3 0) r c v := by
  classical
  have hpPair :
      (fin16OfNatMod r.val, fin16OfNatMod v.val) ∈
        pairValues16 (blockComponent16 C blocks2 blocks3 0) 0 3 :=
    highPairSet16_subset_pairValues_highBlock
      C blocks2 blocks3 hmissing 0 3 (by decide)
      (highPairSet16_mem_fin6 r v)
  rcases Finset.mem_image.mp hpPair with ⟨w, hwC0, hwpair⟩
  have hw0 : w 0 = fin16OfNatMod r.val := congrArg Prod.fst hwpair
  have hw3 : w 3 = fin16OfNatMod v.val := congrArg Prod.snd hwpair
  have hw1lt : (w 1).val < 6 :=
    blockComponent16_coord_high C blocks2 blocks3 hwC0 1
  refine ⟨⟨(w 1).val, hw1lt⟩, w, hwC0, hw0, ?_, hw3⟩
  exact (fin16OfNatMod_val (w 1)).symm

private theorem highOAM_rowSymbol_unique
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36)
    {r v c₁ c₂ : Fin6}
    (h₁ : highOAM (blockComponent16 C blocks2 blocks3 0) r c₁ v)
    (h₂ : highOAM (blockComponent16 C blocks2 blocks3 0) r c₂ v) :
    c₁ = c₂ := by
  rcases h₁ with ⟨w, hw, hw0, hw1, hw3⟩
  rcases h₂ with ⟨u, hu, hu0, hu1, hu3⟩
  have hwu :
      w = u :=
    high_blockComponent16_pair_unique C blocks2 blocks3 hmissing hC0card
      0 3 (by decide) hw hu
      (by rw [hw0, hu0])
      (by rw [hw3, hu3])
  apply fin6_eq_of_fin16OfNatMod_eq
  rw [← hw1, ← hu1, hwu]

private theorem highOAM_colSymbol_exists
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (c v : Fin6) :
    ∃ r : Fin6,
      highOAM (blockComponent16 C blocks2 blocks3 0) r c v := by
  classical
  have hpPair :
      (fin16OfNatMod c.val, fin16OfNatMod v.val) ∈
        pairValues16 (blockComponent16 C blocks2 blocks3 0) 1 3 :=
    highPairSet16_subset_pairValues_highBlock
      C blocks2 blocks3 hmissing 1 3 (by decide)
      (highPairSet16_mem_fin6 c v)
  rcases Finset.mem_image.mp hpPair with ⟨w, hwC0, hwpair⟩
  have hw1 : w 1 = fin16OfNatMod c.val := congrArg Prod.fst hwpair
  have hw3 : w 3 = fin16OfNatMod v.val := congrArg Prod.snd hwpair
  have hw0lt : (w 0).val < 6 :=
    blockComponent16_coord_high C blocks2 blocks3 hwC0 0
  refine ⟨⟨(w 0).val, hw0lt⟩, w, hwC0, ?_, hw1, hw3⟩
  exact (fin16OfNatMod_val (w 0)).symm

private theorem highOAM_colSymbol_unique
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36)
    {c v r₁ r₂ : Fin6}
    (h₁ : highOAM (blockComponent16 C blocks2 blocks3 0) r₁ c v)
    (h₂ : highOAM (blockComponent16 C blocks2 blocks3 0) r₂ c v) :
    r₁ = r₂ := by
  rcases h₁ with ⟨w, hw, hw0, hw1, hw3⟩
  rcases h₂ with ⟨u, hu, hu0, hu1, hu3⟩
  have hwu :
      w = u :=
    high_blockComponent16_pair_unique C blocks2 blocks3 hmissing hC0card
      1 3 (by decide) hw hu
      (by rw [hw1, hu1])
      (by rw [hw3, hu3])
  apply fin6_eq_of_fin16OfNatMod_eq
  rw [← hw0, ← hu0, hwu]

private def highOAValuation
    (C0 : Finset (QaryWord 16 4)) : Sat.Valuation :=
  fun idx =>
    (∃ r c v : Fin6,
      idx = HexadecimaryFourTwoOANoSymDirect.lVar r.val c.val v.val - 1 ∧
        highOAL C0 r c v) ∨
    (∃ r c v : Fin6,
      idx = HexadecimaryFourTwoOANoSymDirect.mVar r.val c.val v.val - 1 ∧
        highOAM C0 r c v)

private theorem highOAValuation_lVar
    (C0 : Finset (QaryWord 16 4))
    (r c v : Fin6) :
    highOAValuation C0
        (HexadecimaryFourTwoOANoSymDirect.lVar r.val c.val v.val - 1) ↔
      highOAL C0 r c v := by
  constructor
  · intro h
    rcases h with hL | hM
    · rcases hL with ⟨r', c', v', hidx, hentry⟩
      rcases oa_lVar_index_injective hidx with ⟨hr, hc, hv⟩
      subst r'
      subst c'
      subst v'
      exact hentry
    · rcases hM with ⟨r', c', v', hidx, _hentry⟩
      exact False.elim (oa_lVar_index_ne_mVar_index r c v r' c' v' hidx)
  · intro hentry
    exact Or.inl ⟨r, c, v, rfl, hentry⟩

private theorem highOAValuation_mVar
    (C0 : Finset (QaryWord 16 4))
    (r c v : Fin6) :
    highOAValuation C0
        (HexadecimaryFourTwoOANoSymDirect.mVar r.val c.val v.val - 1) ↔
      highOAM C0 r c v := by
  constructor
  · intro h
    rcases h with hL | hM
    · rcases hL with ⟨r', c', v', hidx, _hentry⟩
      exact False.elim (oa_lVar_index_ne_mVar_index r' c' v' r c v hidx.symm)
    · rcases hM with ⟨r', c', v', hidx, hentry⟩
      rcases oa_mVar_index_injective hidx with ⟨hr, hc, hv⟩
      subst r'
      subst c'
      subst v'
      exact hentry
  · intro hentry
    exact Or.inr ⟨r, c, v, rfl, hentry⟩

private theorem highOA_orthogonal_unique
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36)
    {r₁ c₁ r₂ c₂ a b : Fin6}
    (hL₁ : highOAL (blockComponent16 C blocks2 blocks3 0) r₁ c₁ a)
    (hM₁ : highOAM (blockComponent16 C blocks2 blocks3 0) r₁ c₁ b)
    (hL₂ : highOAL (blockComponent16 C blocks2 blocks3 0) r₂ c₂ a)
    (hM₂ : highOAM (blockComponent16 C blocks2 blocks3 0) r₂ c₂ b) :
    r₁ = r₂ ∧ c₁ = c₂ := by
  rcases hL₁ with ⟨wL₁, hwL₁, hwL₁0, hwL₁1, hwL₁2⟩
  rcases hM₁ with ⟨wM₁, hwM₁, hwM₁0, hwM₁1, hwM₁3⟩
  rcases hL₂ with ⟨wL₂, hwL₂, hwL₂0, hwL₂1, hwL₂2⟩
  rcases hM₂ with ⟨wM₂, hwM₂, hwM₂0, hwM₂1, hwM₂3⟩
  have hLM₁ : wL₁ = wM₁ :=
    high_blockComponent16_pair_unique C blocks2 blocks3 hmissing hC0card
      0 1 (by decide) hwL₁ hwM₁
      (by rw [hwL₁0, hwM₁0])
      (by rw [hwL₁1, hwM₁1])
  have hLM₂ : wL₂ = wM₂ :=
    high_blockComponent16_pair_unique C blocks2 blocks3 hmissing hC0card
      0 1 (by decide) hwL₂ hwM₂
      (by rw [hwL₂0, hwM₂0])
      (by rw [hwL₂1, hwM₂1])
  have hL₁L₂ : wL₁ = wL₂ :=
    high_blockComponent16_pair_unique C blocks2 blocks3 hmissing hC0card
      2 3 (by decide) hwL₁ hwL₂
      (by rw [hwL₁2, hwL₂2])
      (by rw [hLM₁, hLM₂, hwM₁3, hwM₂3])
  constructor
  · apply fin6_eq_of_fin16OfNatMod_eq
    rw [← hwL₁0, ← hwL₂0, hL₁L₂]
  · apply fin6_eq_of_fin16OfNatMod_eq
    rw [← hwL₁1, ← hwL₂1, hL₁L₂]

private theorem highOAValuation_satisfies_lCellExactlyOne
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36)
    (r c : Fin6) :
    Sat.Valuation.satisfies_fmla
      (highOAValuation (blockComponent16 C blocks2 blocks3 0))
      ((HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses
          ((List.range HexadecimaryFourTwoOANoSymDirect.n).map
            (fun v => HexadecimaryFourTwoOANoSymDirect.posLit
              (HexadecimaryFourTwoOANoSymDirect.lVar r.val c.val v)))).map
        LRATNative.rawClauseToSat) := by
  let C0 := blockComponent16 C blocks2 blocks3 0
  change Sat.Valuation.satisfies_fmla (highOAValuation C0) _
  apply valuation_satisfies_exactlyOneClauses_range6
    (v := highOAValuation C0)
    (var := fun v => HexadecimaryFourTwoOANoSymDirect.lVar r.val c.val v)
  · intro k _hk
    simp [HexadecimaryFourTwoOANoSymDirect.lVar,
      HexadecimaryFourTwoOANoSymDirect.n]
  · intro a ha b hb hab
    simp [HexadecimaryFourTwoOANoSymDirect.lVar,
      HexadecimaryFourTwoOANoSymDirect.n] at hab
    omega
  · obtain ⟨v, hv⟩ := highOAL_cell_exists C blocks2 blocks3 hmissing r c
    exact ⟨v, (highOAValuation_lVar C0 r c v).mpr (by simpa [C0] using hv)⟩
  · intro v₁ v₂ hne hv₁ hv₂
    have h₁ : highOAL C0 r c v₁ :=
      (highOAValuation_lVar C0 r c v₁).mp hv₁
    have h₂ : highOAL C0 r c v₂ :=
      (highOAValuation_lVar C0 r c v₂).mp hv₂
    exact hne
      (highOAL_cell_unique C blocks2 blocks3 hmissing hC0card
        (by simpa [C0] using h₁) (by simpa [C0] using h₂))

private theorem highOAValuation_satisfies_mCellExactlyOne
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36)
    (r c : Fin6) :
    Sat.Valuation.satisfies_fmla
      (highOAValuation (blockComponent16 C blocks2 blocks3 0))
      ((HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses
          ((List.range HexadecimaryFourTwoOANoSymDirect.n).map
            (fun v => HexadecimaryFourTwoOANoSymDirect.posLit
              (HexadecimaryFourTwoOANoSymDirect.mVar r.val c.val v)))).map
        LRATNative.rawClauseToSat) := by
  let C0 := blockComponent16 C blocks2 blocks3 0
  change Sat.Valuation.satisfies_fmla (highOAValuation C0) _
  apply valuation_satisfies_exactlyOneClauses_range6
    (v := highOAValuation C0)
    (var := fun v => HexadecimaryFourTwoOANoSymDirect.mVar r.val c.val v)
  · intro k _hk
    simp [HexadecimaryFourTwoOANoSymDirect.mVar,
      HexadecimaryFourTwoOANoSymDirect.n]
  · intro a ha b hb hab
    simp [HexadecimaryFourTwoOANoSymDirect.mVar,
      HexadecimaryFourTwoOANoSymDirect.n] at hab
    omega
  · obtain ⟨v, hv⟩ := highOAM_cell_exists C blocks2 blocks3 hmissing r c
    exact ⟨v, (highOAValuation_mVar C0 r c v).mpr (by simpa [C0] using hv)⟩
  · intro v₁ v₂ hne hv₁ hv₂
    have h₁ : highOAM C0 r c v₁ :=
      (highOAValuation_mVar C0 r c v₁).mp hv₁
    have h₂ : highOAM C0 r c v₂ :=
      (highOAValuation_mVar C0 r c v₂).mp hv₂
    exact hne
      (highOAM_cell_unique C blocks2 blocks3 hmissing hC0card
        (by simpa [C0] using h₁) (by simpa [C0] using h₂))

private theorem highOAValuation_satisfies_lRowSymbolExactlyOne
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36)
    (r v : Fin6) :
    Sat.Valuation.satisfies_fmla
      (highOAValuation (blockComponent16 C blocks2 blocks3 0))
      ((HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses
          ((List.range HexadecimaryFourTwoOANoSymDirect.n).map
            (fun c => HexadecimaryFourTwoOANoSymDirect.posLit
              (HexadecimaryFourTwoOANoSymDirect.lVar r.val c v.val)))).map
        LRATNative.rawClauseToSat) := by
  let C0 := blockComponent16 C blocks2 blocks3 0
  change Sat.Valuation.satisfies_fmla (highOAValuation C0) _
  apply valuation_satisfies_exactlyOneClauses_range6
    (v := highOAValuation C0)
    (var := fun c => HexadecimaryFourTwoOANoSymDirect.lVar r.val c v.val)
  · intro k _hk
    simp [HexadecimaryFourTwoOANoSymDirect.lVar,
      HexadecimaryFourTwoOANoSymDirect.n]
  · intro a ha b hb hab
    simp [HexadecimaryFourTwoOANoSymDirect.lVar,
      HexadecimaryFourTwoOANoSymDirect.n] at hab
    omega
  · obtain ⟨c, hc⟩ := highOAL_rowSymbol_exists C blocks2 blocks3 hmissing r v
    exact ⟨c, (highOAValuation_lVar C0 r c v).mpr (by simpa [C0] using hc)⟩
  · intro c₁ c₂ hne hv₁ hv₂
    have h₁ : highOAL C0 r c₁ v :=
      (highOAValuation_lVar C0 r c₁ v).mp hv₁
    have h₂ : highOAL C0 r c₂ v :=
      (highOAValuation_lVar C0 r c₂ v).mp hv₂
    exact hne
      (highOAL_rowSymbol_unique C blocks2 blocks3 hmissing hC0card
        (by simpa [C0] using h₁) (by simpa [C0] using h₂))

private theorem highOAValuation_satisfies_lColSymbolExactlyOne
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36)
    (c v : Fin6) :
    Sat.Valuation.satisfies_fmla
      (highOAValuation (blockComponent16 C blocks2 blocks3 0))
      ((HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses
          ((List.range HexadecimaryFourTwoOANoSymDirect.n).map
            (fun r => HexadecimaryFourTwoOANoSymDirect.posLit
              (HexadecimaryFourTwoOANoSymDirect.lVar r c.val v.val)))).map
        LRATNative.rawClauseToSat) := by
  let C0 := blockComponent16 C blocks2 blocks3 0
  change Sat.Valuation.satisfies_fmla (highOAValuation C0) _
  apply valuation_satisfies_exactlyOneClauses_range6
    (v := highOAValuation C0)
    (var := fun r => HexadecimaryFourTwoOANoSymDirect.lVar r c.val v.val)
  · intro k _hk
    simp [HexadecimaryFourTwoOANoSymDirect.lVar,
      HexadecimaryFourTwoOANoSymDirect.n]
  · intro a ha b hb hab
    simp [HexadecimaryFourTwoOANoSymDirect.lVar,
      HexadecimaryFourTwoOANoSymDirect.n] at hab
    omega
  · obtain ⟨r, hr⟩ := highOAL_colSymbol_exists C blocks2 blocks3 hmissing c v
    exact ⟨r, (highOAValuation_lVar C0 r c v).mpr (by simpa [C0] using hr)⟩
  · intro r₁ r₂ hne hv₁ hv₂
    have h₁ : highOAL C0 r₁ c v :=
      (highOAValuation_lVar C0 r₁ c v).mp hv₁
    have h₂ : highOAL C0 r₂ c v :=
      (highOAValuation_lVar C0 r₂ c v).mp hv₂
    exact hne
      (highOAL_colSymbol_unique C blocks2 blocks3 hmissing hC0card
        (by simpa [C0] using h₁) (by simpa [C0] using h₂))

private theorem highOAValuation_satisfies_mRowSymbolExactlyOne
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36)
    (r v : Fin6) :
    Sat.Valuation.satisfies_fmla
      (highOAValuation (blockComponent16 C blocks2 blocks3 0))
      ((HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses
          ((List.range HexadecimaryFourTwoOANoSymDirect.n).map
            (fun c => HexadecimaryFourTwoOANoSymDirect.posLit
              (HexadecimaryFourTwoOANoSymDirect.mVar r.val c v.val)))).map
        LRATNative.rawClauseToSat) := by
  let C0 := blockComponent16 C blocks2 blocks3 0
  change Sat.Valuation.satisfies_fmla (highOAValuation C0) _
  apply valuation_satisfies_exactlyOneClauses_range6
    (v := highOAValuation C0)
    (var := fun c => HexadecimaryFourTwoOANoSymDirect.mVar r.val c v.val)
  · intro k _hk
    simp [HexadecimaryFourTwoOANoSymDirect.mVar,
      HexadecimaryFourTwoOANoSymDirect.n]
  · intro a ha b hb hab
    simp [HexadecimaryFourTwoOANoSymDirect.mVar,
      HexadecimaryFourTwoOANoSymDirect.n] at hab
    omega
  · obtain ⟨c, hc⟩ := highOAM_rowSymbol_exists C blocks2 blocks3 hmissing r v
    exact ⟨c, (highOAValuation_mVar C0 r c v).mpr (by simpa [C0] using hc)⟩
  · intro c₁ c₂ hne hv₁ hv₂
    have h₁ : highOAM C0 r c₁ v :=
      (highOAValuation_mVar C0 r c₁ v).mp hv₁
    have h₂ : highOAM C0 r c₂ v :=
      (highOAValuation_mVar C0 r c₂ v).mp hv₂
    exact hne
      (highOAM_rowSymbol_unique C blocks2 blocks3 hmissing hC0card
        (by simpa [C0] using h₁) (by simpa [C0] using h₂))

private theorem highOAValuation_satisfies_mColSymbolExactlyOne
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36)
    (c v : Fin6) :
    Sat.Valuation.satisfies_fmla
      (highOAValuation (blockComponent16 C blocks2 blocks3 0))
      ((HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses
          ((List.range HexadecimaryFourTwoOANoSymDirect.n).map
            (fun r => HexadecimaryFourTwoOANoSymDirect.posLit
              (HexadecimaryFourTwoOANoSymDirect.mVar r c.val v.val)))).map
        LRATNative.rawClauseToSat) := by
  let C0 := blockComponent16 C blocks2 blocks3 0
  change Sat.Valuation.satisfies_fmla (highOAValuation C0) _
  apply valuation_satisfies_exactlyOneClauses_range6
    (v := highOAValuation C0)
    (var := fun r => HexadecimaryFourTwoOANoSymDirect.mVar r c.val v.val)
  · intro k _hk
    simp [HexadecimaryFourTwoOANoSymDirect.mVar,
      HexadecimaryFourTwoOANoSymDirect.n]
  · intro a ha b hb hab
    simp [HexadecimaryFourTwoOANoSymDirect.mVar,
      HexadecimaryFourTwoOANoSymDirect.n] at hab
    omega
  · obtain ⟨r, hr⟩ := highOAM_colSymbol_exists C blocks2 blocks3 hmissing c v
    exact ⟨r, (highOAValuation_mVar C0 r c v).mpr (by simpa [C0] using hr)⟩
  · intro r₁ r₂ hne hv₁ hv₂
    have h₁ : highOAM C0 r₁ c v :=
      (highOAValuation_mVar C0 r₁ c v).mp hv₁
    have h₂ : highOAM C0 r₂ c v :=
      (highOAValuation_mVar C0 r₂ c v).mp hv₂
    exact hne
      (highOAM_colSymbol_unique C blocks2 blocks3 hmissing hC0card
        (by simpa [C0] using h₁) (by simpa [C0] using h₂))

private theorem valuation_satisfies_flatMap_range2
    {v : Sat.Valuation} {f : Nat → Nat → List LRATNative.RawClause}
    (h :
      ∀ a, a < HexadecimaryFourTwoOANoSymDirect.n →
        ∀ b, b < HexadecimaryFourTwoOANoSymDirect.n →
          Sat.Valuation.satisfies_fmla v ((f a b).map LRATNative.rawClauseToSat)) :
    Sat.Valuation.satisfies_fmla v
      (((List.range HexadecimaryFourTwoOANoSymDirect.n).flatMap
        (fun a =>
          (List.range HexadecimaryFourTwoOANoSymDirect.n).flatMap
            (fun b => f a b))).map LRATNative.rawClauseToSat) := by
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨raw, hraw, rfl⟩
  rw [List.mem_flatMap] at hraw
  rcases hraw with ⟨a, ha, hraw⟩
  rw [List.mem_flatMap] at hraw
  rcases hraw with ⟨b, hb, hraw⟩
  exact (h a (List.mem_range.mp ha) b (List.mem_range.mp hb)).prop
    (LRATNative.rawClauseToSat raw)
    (List.mem_map.mpr ⟨raw, hraw, rfl⟩)

private theorem highOAValuation_satisfies_lLatinSquareClauses
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36) :
    Sat.Valuation.satisfies_fmla
      (highOAValuation (blockComponent16 C blocks2 blocks3 0))
      ((HexadecimaryFourTwoOANoSymDirect.latinSquareClauses
          HexadecimaryFourTwoOANoSymDirect.lVar).map LRATNative.rawClauseToSat) := by
  have hcell :
      Sat.Valuation.satisfies_fmla
        (highOAValuation (blockComponent16 C blocks2 blocks3 0))
        (((List.range HexadecimaryFourTwoOANoSymDirect.n).flatMap
          (fun r =>
            (List.range HexadecimaryFourTwoOANoSymDirect.n).flatMap
              (fun c =>
                HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses
                  ((List.range HexadecimaryFourTwoOANoSymDirect.n).map
                    (fun v => HexadecimaryFourTwoOANoSymDirect.posLit
                      (HexadecimaryFourTwoOANoSymDirect.lVar r c v)))))).map
          LRATNative.rawClauseToSat) := by
    apply valuation_satisfies_flatMap_range2
    intro r hr c hc
    simpa using
      highOAValuation_satisfies_lCellExactlyOne
        C blocks2 blocks3 hmissing hC0card
        ⟨r, by simpa [HexadecimaryFourTwoOANoSymDirect.n] using hr⟩
        ⟨c, by simpa [HexadecimaryFourTwoOANoSymDirect.n] using hc⟩
  have hrow :
      Sat.Valuation.satisfies_fmla
        (highOAValuation (blockComponent16 C blocks2 blocks3 0))
        (((List.range HexadecimaryFourTwoOANoSymDirect.n).flatMap
          (fun r =>
            (List.range HexadecimaryFourTwoOANoSymDirect.n).flatMap
              (fun v =>
                HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses
                  ((List.range HexadecimaryFourTwoOANoSymDirect.n).map
                    (fun c => HexadecimaryFourTwoOANoSymDirect.posLit
                      (HexadecimaryFourTwoOANoSymDirect.lVar r c v)))))).map
          LRATNative.rawClauseToSat) := by
    apply valuation_satisfies_flatMap_range2
    intro r hr v hv
    simpa using
      highOAValuation_satisfies_lRowSymbolExactlyOne
        C blocks2 blocks3 hmissing hC0card
        ⟨r, by simpa [HexadecimaryFourTwoOANoSymDirect.n] using hr⟩
        ⟨v, by simpa [HexadecimaryFourTwoOANoSymDirect.n] using hv⟩
  have hcol :
      Sat.Valuation.satisfies_fmla
        (highOAValuation (blockComponent16 C blocks2 blocks3 0))
        (((List.range HexadecimaryFourTwoOANoSymDirect.n).flatMap
          (fun c =>
            (List.range HexadecimaryFourTwoOANoSymDirect.n).flatMap
              (fun v =>
                HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses
                  ((List.range HexadecimaryFourTwoOANoSymDirect.n).map
                    (fun r => HexadecimaryFourTwoOANoSymDirect.posLit
                      (HexadecimaryFourTwoOANoSymDirect.lVar r c v)))))).map
          LRATNative.rawClauseToSat) := by
    apply valuation_satisfies_flatMap_range2
    intro c hc v hv
    simpa using
      highOAValuation_satisfies_lColSymbolExactlyOne
        C blocks2 blocks3 hmissing hC0card
        ⟨c, by simpa [HexadecimaryFourTwoOANoSymDirect.n] using hc⟩
        ⟨v, by simpa [HexadecimaryFourTwoOANoSymDirect.n] using hv⟩
  simpa [HexadecimaryFourTwoOANoSymDirect.latinSquareClauses, List.map_append]
    using
      (LRATNative.satisfies_fmla_append.mpr
        ⟨hcell,
          LRATNative.satisfies_fmla_append.mpr ⟨hrow, hcol⟩⟩)

private theorem highOAValuation_satisfies_mLatinSquareClauses
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36) :
    Sat.Valuation.satisfies_fmla
      (highOAValuation (blockComponent16 C blocks2 blocks3 0))
      ((HexadecimaryFourTwoOANoSymDirect.latinSquareClauses
          HexadecimaryFourTwoOANoSymDirect.mVar).map LRATNative.rawClauseToSat) := by
  have hcell :
      Sat.Valuation.satisfies_fmla
        (highOAValuation (blockComponent16 C blocks2 blocks3 0))
        (((List.range HexadecimaryFourTwoOANoSymDirect.n).flatMap
          (fun r =>
            (List.range HexadecimaryFourTwoOANoSymDirect.n).flatMap
              (fun c =>
                HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses
                  ((List.range HexadecimaryFourTwoOANoSymDirect.n).map
                    (fun v => HexadecimaryFourTwoOANoSymDirect.posLit
                      (HexadecimaryFourTwoOANoSymDirect.mVar r c v)))))).map
          LRATNative.rawClauseToSat) := by
    apply valuation_satisfies_flatMap_range2
    intro r hr c hc
    simpa using
      highOAValuation_satisfies_mCellExactlyOne
        C blocks2 blocks3 hmissing hC0card
        ⟨r, by simpa [HexadecimaryFourTwoOANoSymDirect.n] using hr⟩
        ⟨c, by simpa [HexadecimaryFourTwoOANoSymDirect.n] using hc⟩
  have hrow :
      Sat.Valuation.satisfies_fmla
        (highOAValuation (blockComponent16 C blocks2 blocks3 0))
        (((List.range HexadecimaryFourTwoOANoSymDirect.n).flatMap
          (fun r =>
            (List.range HexadecimaryFourTwoOANoSymDirect.n).flatMap
              (fun v =>
                HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses
                  ((List.range HexadecimaryFourTwoOANoSymDirect.n).map
                    (fun c => HexadecimaryFourTwoOANoSymDirect.posLit
                      (HexadecimaryFourTwoOANoSymDirect.mVar r c v)))))).map
          LRATNative.rawClauseToSat) := by
    apply valuation_satisfies_flatMap_range2
    intro r hr v hv
    simpa using
      highOAValuation_satisfies_mRowSymbolExactlyOne
        C blocks2 blocks3 hmissing hC0card
        ⟨r, by simpa [HexadecimaryFourTwoOANoSymDirect.n] using hr⟩
        ⟨v, by simpa [HexadecimaryFourTwoOANoSymDirect.n] using hv⟩
  have hcol :
      Sat.Valuation.satisfies_fmla
        (highOAValuation (blockComponent16 C blocks2 blocks3 0))
        (((List.range HexadecimaryFourTwoOANoSymDirect.n).flatMap
          (fun c =>
            (List.range HexadecimaryFourTwoOANoSymDirect.n).flatMap
              (fun v =>
                HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses
                  ((List.range HexadecimaryFourTwoOANoSymDirect.n).map
                    (fun r => HexadecimaryFourTwoOANoSymDirect.posLit
                      (HexadecimaryFourTwoOANoSymDirect.mVar r c v)))))).map
          LRATNative.rawClauseToSat) := by
    apply valuation_satisfies_flatMap_range2
    intro c hc v hv
    simpa using
      highOAValuation_satisfies_mColSymbolExactlyOne
        C blocks2 blocks3 hmissing hC0card
        ⟨c, by simpa [HexadecimaryFourTwoOANoSymDirect.n] using hc⟩
        ⟨v, by simpa [HexadecimaryFourTwoOANoSymDirect.n] using hv⟩
  simpa [HexadecimaryFourTwoOANoSymDirect.latinSquareClauses, List.map_append]
    using
      (LRATNative.satisfies_fmla_append.mpr
        ⟨hcell,
          LRATNative.satisfies_fmla_append.mpr ⟨hrow, hcol⟩⟩)

private theorem oa_cells_nodup :
    HexadecimaryFourTwoOANoSymDirect.cells.Nodup := by
  native_decide

private theorem oa_cells_mem_bounds {p : Nat × Nat}
    (hp : p ∈ HexadecimaryFourTwoOANoSymDirect.cells) :
    p.1 < HexadecimaryFourTwoOANoSymDirect.n ∧
      p.2 < HexadecimaryFourTwoOANoSymDirect.n := by
  simp [HexadecimaryFourTwoOANoSymDirect.cells, List.mem_flatMap,
    List.mem_map, List.mem_range] at hp
  rcases hp with ⟨r, hr, c, hc, hpc⟩
  subst p
  exact ⟨hr, hc⟩

private theorem highOAValuation_satisfies_orthogonalityClauses
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36) :
    Sat.Valuation.satisfies_fmla
      (highOAValuation (blockComponent16 C blocks2 blocks3 0))
      (HexadecimaryFourTwoOANoSymDirect.orthogonalityClauses.map
        LRATNative.rawClauseToSat) := by
  let C0 := blockComponent16 C blocks2 blocks3 0
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨raw, hraw, rfl⟩
  rw [HexadecimaryFourTwoOANoSymDirect.orthogonalityClauses] at hraw
  rw [List.mem_flatMap] at hraw
  rcases hraw with ⟨aNat, haMem, hraw⟩
  rw [List.mem_flatMap] at hraw
  rcases hraw with ⟨bNat, hbMem, hraw⟩
  rw [List.mem_map] at hraw
  rcases hraw with ⟨p, hpMem, hrawEq⟩
  subst raw
  have hpInfo :=
    choosePairs_mem_of_nodup oa_cells_nodup hpMem
  have hp1Bounds := oa_cells_mem_bounds hpInfo.1
  have hp2Bounds := oa_cells_mem_bounds hpInfo.2.1
  let a : Fin6 :=
    ⟨aNat, by
      simpa [HexadecimaryFourTwoOANoSymDirect.n] using
        List.mem_range.mp haMem⟩
  let b : Fin6 :=
    ⟨bNat, by
      simpa [HexadecimaryFourTwoOANoSymDirect.n] using
        List.mem_range.mp hbMem⟩
  let r₁ : Fin6 :=
    ⟨p.1.1, by
      simpa [HexadecimaryFourTwoOANoSymDirect.n] using hp1Bounds.1⟩
  let c₁ : Fin6 :=
    ⟨p.1.2, by
      simpa [HexadecimaryFourTwoOANoSymDirect.n] using hp1Bounds.2⟩
  let r₂ : Fin6 :=
    ⟨p.2.1, by
      simpa [HexadecimaryFourTwoOANoSymDirect.n] using hp2Bounds.1⟩
  let c₂ : Fin6 :=
    ⟨p.2.2, by
      simpa [HexadecimaryFourTwoOANoSymDirect.n] using hp2Bounds.2⟩
  have hsat :
      Sat.Valuation.satisfies (highOAValuation C0)
        [Sat.Literal.neg
            (HexadecimaryFourTwoOANoSymDirect.lVar r₁.val c₁.val a.val - 1),
          Sat.Literal.neg
            (HexadecimaryFourTwoOANoSymDirect.mVar r₁.val c₁.val b.val - 1),
          Sat.Literal.neg
            (HexadecimaryFourTwoOANoSymDirect.lVar r₂.val c₂.val a.val - 1),
          Sat.Literal.neg
            (HexadecimaryFourTwoOANoSymDirect.mVar r₂.val c₂.val b.val - 1)] :=
    valuation_satisfies_four_neg (fun hvL₁ hvM₁ hvL₂ hvM₂ => by
      have hL₁ : highOAL C0 r₁ c₁ a :=
        (highOAValuation_lVar C0 r₁ c₁ a).mp hvL₁
      have hM₁ : highOAM C0 r₁ c₁ b :=
        (highOAValuation_mVar C0 r₁ c₁ b).mp hvM₁
      have hL₂ : highOAL C0 r₂ c₂ a :=
        (highOAValuation_lVar C0 r₂ c₂ a).mp hvL₂
      have hM₂ : highOAM C0 r₂ c₂ b :=
        (highOAValuation_mVar C0 r₂ c₂ b).mp hvM₂
      rcases
        highOA_orthogonal_unique C blocks2 blocks3 hmissing hC0card
          (by simpa [C0] using hL₁)
          (by simpa [C0] using hM₁)
          (by simpa [C0] using hL₂)
          (by simpa [C0] using hM₂)
        with ⟨hr, hc⟩
      have hpEq : p.1 = p.2 := by
        apply Prod.ext
        · simpa [r₁, r₂] using congrArg Fin.val hr
        · simpa [c₁, c₂] using congrArg Fin.val hc
      exact hpInfo.2.2 hpEq)
  have hposL₁ :
      0 < HexadecimaryFourTwoOANoSymDirect.lVar p.1.1 p.1.2 aNat := by
    simp [HexadecimaryFourTwoOANoSymDirect.lVar,
      HexadecimaryFourTwoOANoSymDirect.n]
  have hposM₁ :
      0 < HexadecimaryFourTwoOANoSymDirect.mVar p.1.1 p.1.2 bNat := by
    simp [HexadecimaryFourTwoOANoSymDirect.mVar,
      HexadecimaryFourTwoOANoSymDirect.n]
  have hposL₂ :
      0 < HexadecimaryFourTwoOANoSymDirect.lVar p.2.1 p.2.2 aNat := by
    simp [HexadecimaryFourTwoOANoSymDirect.lVar,
      HexadecimaryFourTwoOANoSymDirect.n]
  have hposM₂ :
      0 < HexadecimaryFourTwoOANoSymDirect.mVar p.2.1 p.2.2 bNat := by
    simp [HexadecimaryFourTwoOANoSymDirect.mVar,
      HexadecimaryFourTwoOANoSymDirect.n]
  simpa [C0, LRATNative.rawClauseToSat,
    HexadecimaryFourTwoOANoSymDirect.posLit,
    a, b, r₁, c₁, r₂, c₂,
    hposL₁, hposM₁, hposL₂, hposM₂] using hsat

private theorem highOAValuation_satisfies_oa36NoSymClauses
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36) :
    Sat.Valuation.satisfies_fmla
      (highOAValuation (blockComponent16 C blocks2 blocks3 0))
      (HexadecimaryFourTwoOANoSymDirect.oa36NoSymClauses.map
        LRATNative.rawClauseToSat) := by
  have hL :=
    highOAValuation_satisfies_lLatinSquareClauses
      C blocks2 blocks3 hmissing hC0card
  have hM :=
    highOAValuation_satisfies_mLatinSquareClauses
      C blocks2 blocks3 hmissing hC0card
  have hOrth :=
    highOAValuation_satisfies_orthogonalityClauses
      C blocks2 blocks3 hmissing hC0card
  simpa [HexadecimaryFourTwoOANoSymDirect.oa36NoSymClauses,
    List.map_append] using
      (LRATNative.satisfies_fmla_append.mpr
        ⟨hL, LRATNative.satisfies_fmla_append.mpr ⟨hM, hOrth⟩⟩)

private theorem highOAValuation_satisfies_oa36NoSymCnf
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36) :
    Sat.Valuation.satisfies_fmla
      (highOAValuation (blockComponent16 C blocks2 blocks3 0))
      (LRATNative.rawCnfToSat
        HexadecimaryFourTwoOANoSymDirect.oa36NoSymCnf) := by
  have hclauses :=
    highOAValuation_satisfies_oa36NoSymClauses
      C blocks2 blocks3 hmissing hC0card
  simpa [LRATNative.rawCnfToSat,
    HexadecimaryFourTwoOANoSymDirect.oa36NoSymCnf] using hclauses

private noncomputable def normalizedLSym
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (c : Fin6) : Fin6 :=
  Classical.choose
    (highOAL_cell_exists C blocks2 blocks3 hmissing (0 : Fin6) c)

private theorem normalizedLSym_spec
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (c : Fin6) :
    highOAL (blockComponent16 C blocks2 blocks3 0)
      (0 : Fin6) c (normalizedLSym C blocks2 blocks3 hmissing c) :=
  Classical.choose_spec
    (highOAL_cell_exists C blocks2 blocks3 hmissing (0 : Fin6) c)

private noncomputable def normalizedMSym
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (c : Fin6) : Fin6 :=
  Classical.choose
    (highOAM_cell_exists C blocks2 blocks3 hmissing (0 : Fin6) c)

private theorem normalizedMSym_spec
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (c : Fin6) :
    highOAM (blockComponent16 C blocks2 blocks3 0)
      (0 : Fin6) c (normalizedMSym C blocks2 blocks3 hmissing c) :=
  Classical.choose_spec
    (highOAM_cell_exists C blocks2 blocks3 hmissing (0 : Fin6) c)

private noncomputable def normalizedRow
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (r : Fin6) : Fin6 :=
  Classical.choose
    (highOAL_colSymbol_exists C blocks2 blocks3 hmissing
      (0 : Fin6) (normalizedLSym C blocks2 blocks3 hmissing r))

private theorem normalizedRow_spec
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (r : Fin6) :
    highOAL (blockComponent16 C blocks2 blocks3 0)
      (normalizedRow C blocks2 blocks3 hmissing r) (0 : Fin6)
      (normalizedLSym C blocks2 blocks3 hmissing r) :=
  Classical.choose_spec
    (highOAL_colSymbol_exists C blocks2 blocks3 hmissing
      (0 : Fin6) (normalizedLSym C blocks2 blocks3 hmissing r))

private theorem normalizedLSym_injective
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36) :
    Function.Injective (normalizedLSym C blocks2 blocks3 hmissing) := by
  intro a b hsym
  have ha := normalizedLSym_spec C blocks2 blocks3 hmissing a
  have hb := normalizedLSym_spec C blocks2 blocks3 hmissing b
  exact
    highOAL_rowSymbol_unique C blocks2 blocks3 hmissing hC0card
      ha (by simpa [hsym] using hb)

private theorem normalizedMSym_injective
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36) :
    Function.Injective (normalizedMSym C blocks2 blocks3 hmissing) := by
  intro a b hsym
  have ha := normalizedMSym_spec C blocks2 blocks3 hmissing a
  have hb := normalizedMSym_spec C blocks2 blocks3 hmissing b
  exact
    highOAM_rowSymbol_unique C blocks2 blocks3 hmissing hC0card
      ha (by simpa [hsym] using hb)

private theorem normalizedLSym_surjective
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36) :
    Function.Surjective (normalizedLSym C blocks2 blocks3 hmissing) := by
  intro v
  obtain ⟨c, hc⟩ :=
    highOAL_rowSymbol_exists C blocks2 blocks3 hmissing (0 : Fin6) v
  have hspec := normalizedLSym_spec C blocks2 blocks3 hmissing c
  exact
    ⟨c,
      highOAL_cell_unique C blocks2 blocks3 hmissing hC0card
        hspec hc⟩

private theorem normalizedMSym_surjective
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36) :
    Function.Surjective (normalizedMSym C blocks2 blocks3 hmissing) := by
  intro v
  obtain ⟨c, hc⟩ :=
    highOAM_rowSymbol_exists C blocks2 blocks3 hmissing (0 : Fin6) v
  have hspec := normalizedMSym_spec C blocks2 blocks3 hmissing c
  exact
    ⟨c,
      highOAM_cell_unique C blocks2 blocks3 hmissing hC0card
        hspec hc⟩

private theorem normalizedRow_zero
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36) :
    normalizedRow C blocks2 blocks3 hmissing (0 : Fin6) = 0 := by
  have hrow := normalizedRow_spec C blocks2 blocks3 hmissing (0 : Fin6)
  have hbase := normalizedLSym_spec C blocks2 blocks3 hmissing (0 : Fin6)
  exact
    highOAL_colSymbol_unique C blocks2 blocks3 hmissing hC0card
      hrow hbase

private theorem normalizedRow_injective
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36) :
    Function.Injective (normalizedRow C blocks2 blocks3 hmissing) := by
  intro a b hrow
  have ha := normalizedRow_spec C blocks2 blocks3 hmissing a
  have hb := normalizedRow_spec C blocks2 blocks3 hmissing b
  have hsym :
      normalizedLSym C blocks2 blocks3 hmissing a =
        normalizedLSym C blocks2 blocks3 hmissing b :=
    highOAL_cell_unique C blocks2 blocks3 hmissing hC0card
      ha (by simpa [hrow] using hb)
  exact normalizedLSym_injective C blocks2 blocks3 hmissing hC0card hsym

private theorem normalizedRow_surjective
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36) :
    Function.Surjective (normalizedRow C blocks2 blocks3 hmissing) := by
  intro r0
  obtain ⟨v, hv⟩ :=
    highOAL_cell_exists C blocks2 blocks3 hmissing r0 (0 : Fin6)
  obtain ⟨r, hr⟩ :=
    normalizedLSym_surjective C blocks2 blocks3 hmissing hC0card v
  have hrow := normalizedRow_spec C blocks2 blocks3 hmissing r
  have hrow' :
      highOAL (blockComponent16 C blocks2 blocks3 0)
        (normalizedRow C blocks2 blocks3 hmissing r) (0 : Fin6) v := by
    simpa [hr] using hrow
  exact
    ⟨r,
      highOAL_colSymbol_unique C blocks2 blocks3 hmissing hC0card
        hrow' hv⟩

private noncomputable def normalizedHighOAValuation
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3) :
    Sat.Valuation :=
  fun idx =>
    (∃ r c v : Fin6,
      idx = HexadecimaryFourTwoOANoSymDirect.lVar r.val c.val v.val - 1 ∧
        highOAL (blockComponent16 C blocks2 blocks3 0)
          (normalizedRow C blocks2 blocks3 hmissing r) c
          (normalizedLSym C blocks2 blocks3 hmissing v)) ∨
    (∃ r c v : Fin6,
      idx = HexadecimaryFourTwoOANoSymDirect.mVar r.val c.val v.val - 1 ∧
        highOAM (blockComponent16 C blocks2 blocks3 0)
          (normalizedRow C blocks2 blocks3 hmissing r) c
          (normalizedMSym C blocks2 blocks3 hmissing v))

private theorem normalizedHighOAValuation_lVar
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (r c v : Fin6) :
    normalizedHighOAValuation C blocks2 blocks3 hmissing
        (HexadecimaryFourTwoOANoSymDirect.lVar r.val c.val v.val - 1) ↔
      highOAL (blockComponent16 C blocks2 blocks3 0)
        (normalizedRow C blocks2 blocks3 hmissing r) c
        (normalizedLSym C blocks2 blocks3 hmissing v) := by
  constructor
  · intro h
    rcases h with hL | hM
    · rcases hL with ⟨r', c', v', hidx, hentry⟩
      rcases oa_lVar_index_injective hidx with ⟨hr, hc, hv⟩
      subst r'
      subst c'
      subst v'
      exact hentry
    · rcases hM with ⟨r', c', v', hidx, _hentry⟩
      exact False.elim (oa_lVar_index_ne_mVar_index r c v r' c' v' hidx)
  · intro hentry
    exact Or.inl ⟨r, c, v, rfl, hentry⟩

private theorem normalizedHighOAValuation_mVar
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (r c v : Fin6) :
    normalizedHighOAValuation C blocks2 blocks3 hmissing
        (HexadecimaryFourTwoOANoSymDirect.mVar r.val c.val v.val - 1) ↔
      highOAM (blockComponent16 C blocks2 blocks3 0)
        (normalizedRow C blocks2 blocks3 hmissing r) c
        (normalizedMSym C blocks2 blocks3 hmissing v) := by
  constructor
  · intro h
    rcases h with hL | hM
    · rcases hL with ⟨r', c', v', hidx, _hentry⟩
      exact False.elim (oa_lVar_index_ne_mVar_index r' c' v' r c v hidx.symm)
    · rcases hM with ⟨r', c', v', hidx, hentry⟩
      rcases oa_mVar_index_injective hidx with ⟨hr, hc, hv⟩
      subst r'
      subst c'
      subst v'
      exact hentry
  · intro hentry
    exact Or.inr ⟨r, c, v, rfl, hentry⟩

private theorem normalizedHighOAValuation_satisfies_lCellExactlyOne
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36)
    (r c : Fin6) :
    Sat.Valuation.satisfies_fmla
      (normalizedHighOAValuation C blocks2 blocks3 hmissing)
      ((HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses
          ((List.range HexadecimaryFourTwoOANoSymDirect.n).map
            (fun v => HexadecimaryFourTwoOANoSymDirect.posLit
              (HexadecimaryFourTwoOANoSymDirect.lVar r.val c.val v)))).map
        LRATNative.rawClauseToSat) := by
  apply valuation_satisfies_exactlyOneClauses_range6
    (v := normalizedHighOAValuation C blocks2 blocks3 hmissing)
    (var := fun v => HexadecimaryFourTwoOANoSymDirect.lVar r.val c.val v)
  · intro k _hk
    simp [HexadecimaryFourTwoOANoSymDirect.lVar,
      HexadecimaryFourTwoOANoSymDirect.n]
  · intro a ha b hb hab
    simp [HexadecimaryFourTwoOANoSymDirect.lVar,
      HexadecimaryFourTwoOANoSymDirect.n] at hab
    omega
  · obtain ⟨s, hs⟩ :=
      highOAL_cell_exists C blocks2 blocks3 hmissing
        (normalizedRow C blocks2 blocks3 hmissing r) c
    obtain ⟨v, hv⟩ :=
      normalizedLSym_surjective C blocks2 blocks3 hmissing hC0card s
    exact
      ⟨v,
        (normalizedHighOAValuation_lVar C blocks2 blocks3 hmissing
          r c v).mpr (by simpa [hv] using hs)⟩
  · intro v₁ v₂ hne hv₁ hv₂
    have h₁ :=
      (normalizedHighOAValuation_lVar C blocks2 blocks3 hmissing
        r c v₁).mp hv₁
    have h₂ :=
      (normalizedHighOAValuation_lVar C blocks2 blocks3 hmissing
        r c v₂).mp hv₂
    have hsym :=
      highOAL_cell_unique C blocks2 blocks3 hmissing hC0card h₁ h₂
    exact hne
      (normalizedLSym_injective C blocks2 blocks3 hmissing hC0card hsym)

private theorem normalizedHighOAValuation_satisfies_mCellExactlyOne
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36)
    (r c : Fin6) :
    Sat.Valuation.satisfies_fmla
      (normalizedHighOAValuation C blocks2 blocks3 hmissing)
      ((HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses
          ((List.range HexadecimaryFourTwoOANoSymDirect.n).map
            (fun v => HexadecimaryFourTwoOANoSymDirect.posLit
              (HexadecimaryFourTwoOANoSymDirect.mVar r.val c.val v)))).map
        LRATNative.rawClauseToSat) := by
  apply valuation_satisfies_exactlyOneClauses_range6
    (v := normalizedHighOAValuation C blocks2 blocks3 hmissing)
    (var := fun v => HexadecimaryFourTwoOANoSymDirect.mVar r.val c.val v)
  · intro k _hk
    simp [HexadecimaryFourTwoOANoSymDirect.mVar,
      HexadecimaryFourTwoOANoSymDirect.n]
  · intro a ha b hb hab
    simp [HexadecimaryFourTwoOANoSymDirect.mVar,
      HexadecimaryFourTwoOANoSymDirect.n] at hab
    omega
  · obtain ⟨s, hs⟩ :=
      highOAM_cell_exists C blocks2 blocks3 hmissing
        (normalizedRow C blocks2 blocks3 hmissing r) c
    obtain ⟨v, hv⟩ :=
      normalizedMSym_surjective C blocks2 blocks3 hmissing hC0card s
    exact
      ⟨v,
        (normalizedHighOAValuation_mVar C blocks2 blocks3 hmissing
          r c v).mpr (by simpa [hv] using hs)⟩
  · intro v₁ v₂ hne hv₁ hv₂
    have h₁ :=
      (normalizedHighOAValuation_mVar C blocks2 blocks3 hmissing
        r c v₁).mp hv₁
    have h₂ :=
      (normalizedHighOAValuation_mVar C blocks2 blocks3 hmissing
        r c v₂).mp hv₂
    have hsym :=
      highOAM_cell_unique C blocks2 blocks3 hmissing hC0card h₁ h₂
    exact hne
      (normalizedMSym_injective C blocks2 blocks3 hmissing hC0card hsym)

private theorem normalizedHighOAValuation_satisfies_lRowSymbolExactlyOne
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36)
    (r v : Fin6) :
    Sat.Valuation.satisfies_fmla
      (normalizedHighOAValuation C blocks2 blocks3 hmissing)
      ((HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses
          ((List.range HexadecimaryFourTwoOANoSymDirect.n).map
            (fun c => HexadecimaryFourTwoOANoSymDirect.posLit
              (HexadecimaryFourTwoOANoSymDirect.lVar r.val c v.val)))).map
        LRATNative.rawClauseToSat) := by
  apply valuation_satisfies_exactlyOneClauses_range6
    (v := normalizedHighOAValuation C blocks2 blocks3 hmissing)
    (var := fun c => HexadecimaryFourTwoOANoSymDirect.lVar r.val c v.val)
  · intro k _hk
    simp [HexadecimaryFourTwoOANoSymDirect.lVar,
      HexadecimaryFourTwoOANoSymDirect.n]
  · intro a ha b hb hab
    simp [HexadecimaryFourTwoOANoSymDirect.lVar,
      HexadecimaryFourTwoOANoSymDirect.n] at hab
    omega
  · obtain ⟨c, hc⟩ :=
      highOAL_rowSymbol_exists C blocks2 blocks3 hmissing
        (normalizedRow C blocks2 blocks3 hmissing r)
        (normalizedLSym C blocks2 blocks3 hmissing v)
    exact
      ⟨c,
        (normalizedHighOAValuation_lVar C blocks2 blocks3 hmissing
          r c v).mpr hc⟩
  · intro c₁ c₂ hne hv₁ hv₂
    have h₁ :=
      (normalizedHighOAValuation_lVar C blocks2 blocks3 hmissing
        r c₁ v).mp hv₁
    have h₂ :=
      (normalizedHighOAValuation_lVar C blocks2 blocks3 hmissing
        r c₂ v).mp hv₂
    exact hne
      (highOAL_rowSymbol_unique C blocks2 blocks3 hmissing hC0card h₁ h₂)

private theorem normalizedHighOAValuation_satisfies_lColSymbolExactlyOne
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36)
    (c v : Fin6) :
    Sat.Valuation.satisfies_fmla
      (normalizedHighOAValuation C blocks2 blocks3 hmissing)
      ((HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses
          ((List.range HexadecimaryFourTwoOANoSymDirect.n).map
            (fun r => HexadecimaryFourTwoOANoSymDirect.posLit
              (HexadecimaryFourTwoOANoSymDirect.lVar r c.val v.val)))).map
        LRATNative.rawClauseToSat) := by
  apply valuation_satisfies_exactlyOneClauses_range6
    (v := normalizedHighOAValuation C blocks2 blocks3 hmissing)
    (var := fun r => HexadecimaryFourTwoOANoSymDirect.lVar r c.val v.val)
  · intro k _hk
    simp [HexadecimaryFourTwoOANoSymDirect.lVar,
      HexadecimaryFourTwoOANoSymDirect.n]
  · intro a ha b hb hab
    simp [HexadecimaryFourTwoOANoSymDirect.lVar,
      HexadecimaryFourTwoOANoSymDirect.n] at hab
    omega
  · obtain ⟨r0, hr0⟩ :=
      highOAL_colSymbol_exists C blocks2 blocks3 hmissing
        c (normalizedLSym C blocks2 blocks3 hmissing v)
    obtain ⟨r, hr⟩ :=
      normalizedRow_surjective C blocks2 blocks3 hmissing hC0card r0
    exact
      ⟨r,
        (normalizedHighOAValuation_lVar C blocks2 blocks3 hmissing
          r c v).mpr (by simpa [hr] using hr0)⟩
  · intro r₁ r₂ hne hv₁ hv₂
    have h₁ :=
      (normalizedHighOAValuation_lVar C blocks2 blocks3 hmissing
        r₁ c v).mp hv₁
    have h₂ :=
      (normalizedHighOAValuation_lVar C blocks2 blocks3 hmissing
        r₂ c v).mp hv₂
    have hrow :=
      highOAL_colSymbol_unique C blocks2 blocks3 hmissing hC0card h₁ h₂
    exact hne
      (normalizedRow_injective C blocks2 blocks3 hmissing hC0card hrow)

private theorem normalizedHighOAValuation_satisfies_mRowSymbolExactlyOne
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36)
    (r v : Fin6) :
    Sat.Valuation.satisfies_fmla
      (normalizedHighOAValuation C blocks2 blocks3 hmissing)
      ((HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses
          ((List.range HexadecimaryFourTwoOANoSymDirect.n).map
            (fun c => HexadecimaryFourTwoOANoSymDirect.posLit
              (HexadecimaryFourTwoOANoSymDirect.mVar r.val c v.val)))).map
        LRATNative.rawClauseToSat) := by
  apply valuation_satisfies_exactlyOneClauses_range6
    (v := normalizedHighOAValuation C blocks2 blocks3 hmissing)
    (var := fun c => HexadecimaryFourTwoOANoSymDirect.mVar r.val c v.val)
  · intro k _hk
    simp [HexadecimaryFourTwoOANoSymDirect.mVar,
      HexadecimaryFourTwoOANoSymDirect.n]
  · intro a ha b hb hab
    simp [HexadecimaryFourTwoOANoSymDirect.mVar,
      HexadecimaryFourTwoOANoSymDirect.n] at hab
    omega
  · obtain ⟨c, hc⟩ :=
      highOAM_rowSymbol_exists C blocks2 blocks3 hmissing
        (normalizedRow C blocks2 blocks3 hmissing r)
        (normalizedMSym C blocks2 blocks3 hmissing v)
    exact
      ⟨c,
        (normalizedHighOAValuation_mVar C blocks2 blocks3 hmissing
          r c v).mpr hc⟩
  · intro c₁ c₂ hne hv₁ hv₂
    have h₁ :=
      (normalizedHighOAValuation_mVar C blocks2 blocks3 hmissing
        r c₁ v).mp hv₁
    have h₂ :=
      (normalizedHighOAValuation_mVar C blocks2 blocks3 hmissing
        r c₂ v).mp hv₂
    exact hne
      (highOAM_rowSymbol_unique C blocks2 blocks3 hmissing hC0card h₁ h₂)

private theorem normalizedHighOAValuation_satisfies_mColSymbolExactlyOne
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36)
    (c v : Fin6) :
    Sat.Valuation.satisfies_fmla
      (normalizedHighOAValuation C blocks2 blocks3 hmissing)
      ((HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses
          ((List.range HexadecimaryFourTwoOANoSymDirect.n).map
            (fun r => HexadecimaryFourTwoOANoSymDirect.posLit
              (HexadecimaryFourTwoOANoSymDirect.mVar r c.val v.val)))).map
        LRATNative.rawClauseToSat) := by
  apply valuation_satisfies_exactlyOneClauses_range6
    (v := normalizedHighOAValuation C blocks2 blocks3 hmissing)
    (var := fun r => HexadecimaryFourTwoOANoSymDirect.mVar r c.val v.val)
  · intro k _hk
    simp [HexadecimaryFourTwoOANoSymDirect.mVar,
      HexadecimaryFourTwoOANoSymDirect.n]
  · intro a ha b hb hab
    simp [HexadecimaryFourTwoOANoSymDirect.mVar,
      HexadecimaryFourTwoOANoSymDirect.n] at hab
    omega
  · obtain ⟨r0, hr0⟩ :=
      highOAM_colSymbol_exists C blocks2 blocks3 hmissing
        c (normalizedMSym C blocks2 blocks3 hmissing v)
    obtain ⟨r, hr⟩ :=
      normalizedRow_surjective C blocks2 blocks3 hmissing hC0card r0
    exact
      ⟨r,
        (normalizedHighOAValuation_mVar C blocks2 blocks3 hmissing
          r c v).mpr (by simpa [hr] using hr0)⟩
  · intro r₁ r₂ hne hv₁ hv₂
    have h₁ :=
      (normalizedHighOAValuation_mVar C blocks2 blocks3 hmissing
        r₁ c v).mp hv₁
    have h₂ :=
      (normalizedHighOAValuation_mVar C blocks2 blocks3 hmissing
        r₂ c v).mp hv₂
    have hrow :=
      highOAM_colSymbol_unique C blocks2 blocks3 hmissing hC0card h₁ h₂
    exact hne
      (normalizedRow_injective C blocks2 blocks3 hmissing hC0card hrow)

private theorem normalizedHighOAValuation_satisfies_lLatinSquareClauses
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36) :
    Sat.Valuation.satisfies_fmla
      (normalizedHighOAValuation C blocks2 blocks3 hmissing)
      ((HexadecimaryFourTwoOANoSymDirect.latinSquareClauses
          HexadecimaryFourTwoOANoSymDirect.lVar).map LRATNative.rawClauseToSat) := by
  have hcell :
      Sat.Valuation.satisfies_fmla
        (normalizedHighOAValuation C blocks2 blocks3 hmissing)
        (((List.range HexadecimaryFourTwoOANoSymDirect.n).flatMap
          (fun r =>
            (List.range HexadecimaryFourTwoOANoSymDirect.n).flatMap
              (fun c =>
                HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses
                  ((List.range HexadecimaryFourTwoOANoSymDirect.n).map
                    (fun v => HexadecimaryFourTwoOANoSymDirect.posLit
                      (HexadecimaryFourTwoOANoSymDirect.lVar r c v)))))).map
          LRATNative.rawClauseToSat) := by
    apply valuation_satisfies_flatMap_range2
    intro r hr c hc
    simpa using
      normalizedHighOAValuation_satisfies_lCellExactlyOne
        C blocks2 blocks3 hmissing hC0card
        ⟨r, by simpa [HexadecimaryFourTwoOANoSymDirect.n] using hr⟩
        ⟨c, by simpa [HexadecimaryFourTwoOANoSymDirect.n] using hc⟩
  have hrow :
      Sat.Valuation.satisfies_fmla
        (normalizedHighOAValuation C blocks2 blocks3 hmissing)
        (((List.range HexadecimaryFourTwoOANoSymDirect.n).flatMap
          (fun r =>
            (List.range HexadecimaryFourTwoOANoSymDirect.n).flatMap
              (fun v =>
                HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses
                  ((List.range HexadecimaryFourTwoOANoSymDirect.n).map
                    (fun c => HexadecimaryFourTwoOANoSymDirect.posLit
                      (HexadecimaryFourTwoOANoSymDirect.lVar r c v)))))).map
          LRATNative.rawClauseToSat) := by
    apply valuation_satisfies_flatMap_range2
    intro r hr v hv
    simpa using
      normalizedHighOAValuation_satisfies_lRowSymbolExactlyOne
        C blocks2 blocks3 hmissing hC0card
        ⟨r, by simpa [HexadecimaryFourTwoOANoSymDirect.n] using hr⟩
        ⟨v, by simpa [HexadecimaryFourTwoOANoSymDirect.n] using hv⟩
  have hcol :
      Sat.Valuation.satisfies_fmla
        (normalizedHighOAValuation C blocks2 blocks3 hmissing)
        (((List.range HexadecimaryFourTwoOANoSymDirect.n).flatMap
          (fun c =>
            (List.range HexadecimaryFourTwoOANoSymDirect.n).flatMap
              (fun v =>
                HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses
                  ((List.range HexadecimaryFourTwoOANoSymDirect.n).map
                    (fun r => HexadecimaryFourTwoOANoSymDirect.posLit
                      (HexadecimaryFourTwoOANoSymDirect.lVar r c v)))))).map
          LRATNative.rawClauseToSat) := by
    apply valuation_satisfies_flatMap_range2
    intro c hc v hv
    simpa using
      normalizedHighOAValuation_satisfies_lColSymbolExactlyOne
        C blocks2 blocks3 hmissing hC0card
        ⟨c, by simpa [HexadecimaryFourTwoOANoSymDirect.n] using hc⟩
        ⟨v, by simpa [HexadecimaryFourTwoOANoSymDirect.n] using hv⟩
  simpa [HexadecimaryFourTwoOANoSymDirect.latinSquareClauses, List.map_append]
    using
      (LRATNative.satisfies_fmla_append.mpr
        ⟨hcell,
          LRATNative.satisfies_fmla_append.mpr ⟨hrow, hcol⟩⟩)

private theorem normalizedHighOAValuation_satisfies_mLatinSquareClauses
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36) :
    Sat.Valuation.satisfies_fmla
      (normalizedHighOAValuation C blocks2 blocks3 hmissing)
      ((HexadecimaryFourTwoOANoSymDirect.latinSquareClauses
          HexadecimaryFourTwoOANoSymDirect.mVar).map LRATNative.rawClauseToSat) := by
  have hcell :
      Sat.Valuation.satisfies_fmla
        (normalizedHighOAValuation C blocks2 blocks3 hmissing)
        (((List.range HexadecimaryFourTwoOANoSymDirect.n).flatMap
          (fun r =>
            (List.range HexadecimaryFourTwoOANoSymDirect.n).flatMap
              (fun c =>
                HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses
                  ((List.range HexadecimaryFourTwoOANoSymDirect.n).map
                    (fun v => HexadecimaryFourTwoOANoSymDirect.posLit
                      (HexadecimaryFourTwoOANoSymDirect.mVar r c v)))))).map
          LRATNative.rawClauseToSat) := by
    apply valuation_satisfies_flatMap_range2
    intro r hr c hc
    simpa using
      normalizedHighOAValuation_satisfies_mCellExactlyOne
        C blocks2 blocks3 hmissing hC0card
        ⟨r, by simpa [HexadecimaryFourTwoOANoSymDirect.n] using hr⟩
        ⟨c, by simpa [HexadecimaryFourTwoOANoSymDirect.n] using hc⟩
  have hrow :
      Sat.Valuation.satisfies_fmla
        (normalizedHighOAValuation C blocks2 blocks3 hmissing)
        (((List.range HexadecimaryFourTwoOANoSymDirect.n).flatMap
          (fun r =>
            (List.range HexadecimaryFourTwoOANoSymDirect.n).flatMap
              (fun v =>
                HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses
                  ((List.range HexadecimaryFourTwoOANoSymDirect.n).map
                    (fun c => HexadecimaryFourTwoOANoSymDirect.posLit
                      (HexadecimaryFourTwoOANoSymDirect.mVar r c v)))))).map
          LRATNative.rawClauseToSat) := by
    apply valuation_satisfies_flatMap_range2
    intro r hr v hv
    simpa using
      normalizedHighOAValuation_satisfies_mRowSymbolExactlyOne
        C blocks2 blocks3 hmissing hC0card
        ⟨r, by simpa [HexadecimaryFourTwoOANoSymDirect.n] using hr⟩
        ⟨v, by simpa [HexadecimaryFourTwoOANoSymDirect.n] using hv⟩
  have hcol :
      Sat.Valuation.satisfies_fmla
        (normalizedHighOAValuation C blocks2 blocks3 hmissing)
        (((List.range HexadecimaryFourTwoOANoSymDirect.n).flatMap
          (fun c =>
            (List.range HexadecimaryFourTwoOANoSymDirect.n).flatMap
              (fun v =>
                HexadecimaryFourTwoOANoSymDirect.exactlyOneClauses
                  ((List.range HexadecimaryFourTwoOANoSymDirect.n).map
                    (fun r => HexadecimaryFourTwoOANoSymDirect.posLit
                      (HexadecimaryFourTwoOANoSymDirect.mVar r c v)))))).map
          LRATNative.rawClauseToSat) := by
    apply valuation_satisfies_flatMap_range2
    intro c hc v hv
    simpa using
      normalizedHighOAValuation_satisfies_mColSymbolExactlyOne
        C blocks2 blocks3 hmissing hC0card
        ⟨c, by simpa [HexadecimaryFourTwoOANoSymDirect.n] using hc⟩
        ⟨v, by simpa [HexadecimaryFourTwoOANoSymDirect.n] using hv⟩
  simpa [HexadecimaryFourTwoOANoSymDirect.latinSquareClauses, List.map_append]
    using
      (LRATNative.satisfies_fmla_append.mpr
        ⟨hcell,
          LRATNative.satisfies_fmla_append.mpr ⟨hrow, hcol⟩⟩)

private theorem normalizedHighOAValuation_satisfies_orthogonalityClauses
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36) :
    Sat.Valuation.satisfies_fmla
      (normalizedHighOAValuation C blocks2 blocks3 hmissing)
      (HexadecimaryFourTwoOANoSymDirect.orthogonalityClauses.map
        LRATNative.rawClauseToSat) := by
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨raw, hraw, rfl⟩
  rw [HexadecimaryFourTwoOANoSymDirect.orthogonalityClauses] at hraw
  rw [List.mem_flatMap] at hraw
  rcases hraw with ⟨aNat, haMem, hraw⟩
  rw [List.mem_flatMap] at hraw
  rcases hraw with ⟨bNat, hbMem, hraw⟩
  rw [List.mem_map] at hraw
  rcases hraw with ⟨p, hpMem, hrawEq⟩
  subst raw
  have hpInfo :=
    choosePairs_mem_of_nodup oa_cells_nodup hpMem
  have hp1Bounds := oa_cells_mem_bounds hpInfo.1
  have hp2Bounds := oa_cells_mem_bounds hpInfo.2.1
  let a : Fin6 :=
    ⟨aNat, by
      simpa [HexadecimaryFourTwoOANoSymDirect.n] using
        List.mem_range.mp haMem⟩
  let b : Fin6 :=
    ⟨bNat, by
      simpa [HexadecimaryFourTwoOANoSymDirect.n] using
        List.mem_range.mp hbMem⟩
  let r₁ : Fin6 :=
    ⟨p.1.1, by
      simpa [HexadecimaryFourTwoOANoSymDirect.n] using hp1Bounds.1⟩
  let c₁ : Fin6 :=
    ⟨p.1.2, by
      simpa [HexadecimaryFourTwoOANoSymDirect.n] using hp1Bounds.2⟩
  let r₂ : Fin6 :=
    ⟨p.2.1, by
      simpa [HexadecimaryFourTwoOANoSymDirect.n] using hp2Bounds.1⟩
  let c₂ : Fin6 :=
    ⟨p.2.2, by
      simpa [HexadecimaryFourTwoOANoSymDirect.n] using hp2Bounds.2⟩
  have hsat :
      Sat.Valuation.satisfies
        (normalizedHighOAValuation C blocks2 blocks3 hmissing)
        [Sat.Literal.neg
            (HexadecimaryFourTwoOANoSymDirect.lVar r₁.val c₁.val a.val - 1),
          Sat.Literal.neg
            (HexadecimaryFourTwoOANoSymDirect.mVar r₁.val c₁.val b.val - 1),
          Sat.Literal.neg
            (HexadecimaryFourTwoOANoSymDirect.lVar r₂.val c₂.val a.val - 1),
          Sat.Literal.neg
            (HexadecimaryFourTwoOANoSymDirect.mVar r₂.val c₂.val b.val - 1)] :=
    valuation_satisfies_four_neg (fun hvL₁ hvM₁ hvL₂ hvM₂ => by
      have hL₁ :=
        (normalizedHighOAValuation_lVar C blocks2 blocks3 hmissing
          r₁ c₁ a).mp hvL₁
      have hM₁ :=
        (normalizedHighOAValuation_mVar C blocks2 blocks3 hmissing
          r₁ c₁ b).mp hvM₁
      have hL₂ :=
        (normalizedHighOAValuation_lVar C blocks2 blocks3 hmissing
          r₂ c₂ a).mp hvL₂
      have hM₂ :=
        (normalizedHighOAValuation_mVar C blocks2 blocks3 hmissing
          r₂ c₂ b).mp hvM₂
      rcases
        highOA_orthogonal_unique C blocks2 blocks3 hmissing hC0card
          hL₁ hM₁ hL₂ hM₂
        with ⟨hr, hc⟩
      have hpEq : p.1 = p.2 := by
        apply Prod.ext
        · have hr' :=
            normalizedRow_injective C blocks2 blocks3 hmissing hC0card hr
          simpa [r₁, r₂] using congrArg Fin.val hr'
        · simpa [c₁, c₂] using congrArg Fin.val hc
      exact hpInfo.2.2 hpEq)
  have hposL₁ :
      0 < HexadecimaryFourTwoOANoSymDirect.lVar p.1.1 p.1.2 aNat := by
    simp [HexadecimaryFourTwoOANoSymDirect.lVar,
      HexadecimaryFourTwoOANoSymDirect.n]
  have hposM₁ :
      0 < HexadecimaryFourTwoOANoSymDirect.mVar p.1.1 p.1.2 bNat := by
    simp [HexadecimaryFourTwoOANoSymDirect.mVar,
      HexadecimaryFourTwoOANoSymDirect.n]
  have hposL₂ :
      0 < HexadecimaryFourTwoOANoSymDirect.lVar p.2.1 p.2.2 aNat := by
    simp [HexadecimaryFourTwoOANoSymDirect.lVar,
      HexadecimaryFourTwoOANoSymDirect.n]
  have hposM₂ :
      0 < HexadecimaryFourTwoOANoSymDirect.mVar p.2.1 p.2.2 bNat := by
    simp [HexadecimaryFourTwoOANoSymDirect.mVar,
      HexadecimaryFourTwoOANoSymDirect.n]
  simpa [LRATNative.rawClauseToSat,
    HexadecimaryFourTwoOANoSymDirect.posLit,
    a, b, r₁, c₁, r₂, c₂,
    hposL₁, hposM₁, hposL₂, hposM₂] using hsat

private theorem normalizedHighOAValuation_satisfies_oa36NoSymClauses
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36) :
    Sat.Valuation.satisfies_fmla
      (normalizedHighOAValuation C blocks2 blocks3 hmissing)
      (HexadecimaryFourTwoOANoSymDirect.oa36NoSymClauses.map
        LRATNative.rawClauseToSat) := by
  have hL :=
    normalizedHighOAValuation_satisfies_lLatinSquareClauses
      C blocks2 blocks3 hmissing hC0card
  have hM :=
    normalizedHighOAValuation_satisfies_mLatinSquareClauses
      C blocks2 blocks3 hmissing hC0card
  have hOrth :=
    normalizedHighOAValuation_satisfies_orthogonalityClauses
      C blocks2 blocks3 hmissing hC0card
  simpa [HexadecimaryFourTwoOANoSymDirect.oa36NoSymClauses,
    List.map_append] using
      (LRATNative.satisfies_fmla_append.mpr
        ⟨hL, LRATNative.satisfies_fmla_append.mpr ⟨hM, hOrth⟩⟩)

private theorem normalizedHighOAValuation_satisfies_symmetryBreakingClauses
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36) :
    Sat.Valuation.satisfies_fmla
      (normalizedHighOAValuation C blocks2 blocks3 hmissing)
      (HexadecimaryFourTwoOANoSymDirect.symmetryBreakingClauses.map
        LRATNative.rawClauseToSat) := by
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨raw, hraw, rfl⟩
  rw [HexadecimaryFourTwoOANoSymDirect.symmetryBreakingClauses] at hraw
  rw [List.mem_flatMap] at hraw
  rcases hraw with ⟨iNat, hiMem, hraw⟩
  let i : Fin6 :=
    ⟨iNat, by
      simpa [HexadecimaryFourTwoOANoSymDirect.n] using
        List.mem_range.mp hiMem⟩
  have hrow0 :
      normalizedRow C blocks2 blocks3 hmissing (0 : Fin6) = 0 :=
    normalizedRow_zero C blocks2 blocks3 hmissing hC0card
  simp only [List.mem_cons] at hraw
  rcases hraw with hraw | hraw | hraw
  · subst raw
    have htrue :
        normalizedHighOAValuation C blocks2 blocks3 hmissing
          (HexadecimaryFourTwoOANoSymDirect.lVar 0 i.val i.val - 1) := by
      have hentry := normalizedLSym_spec C blocks2 blocks3 hmissing i
      exact
        (normalizedHighOAValuation_lVar C blocks2 blocks3 hmissing
          (0 : Fin6) i i).mpr (by simpa [hrow0] using hentry)
    have hsat :
        Sat.Valuation.satisfies
          (normalizedHighOAValuation C blocks2 blocks3 hmissing)
          [Sat.Literal.pos
            (HexadecimaryFourTwoOANoSymDirect.lVar 0 i.val i.val - 1)] :=
      valuation_satisfies_of_pos_mem (by exact List.Mem.head []) htrue
    have hpos :
        0 < HexadecimaryFourTwoOANoSymDirect.lVar 0 i.val i.val := by
      simp [HexadecimaryFourTwoOANoSymDirect.lVar,
        HexadecimaryFourTwoOANoSymDirect.n]
    simpa [LRATNative.rawClauseToSat,
      HexadecimaryFourTwoOANoSymDirect.posLit, i, hpos] using hsat
  · subst raw
    have htrue :
        normalizedHighOAValuation C blocks2 blocks3 hmissing
          (HexadecimaryFourTwoOANoSymDirect.lVar i.val 0 i.val - 1) := by
      have hentry := normalizedRow_spec C blocks2 blocks3 hmissing i
      exact
        (normalizedHighOAValuation_lVar C blocks2 blocks3 hmissing
          i (0 : Fin6) i).mpr hentry
    have hsat :
        Sat.Valuation.satisfies
          (normalizedHighOAValuation C blocks2 blocks3 hmissing)
          [Sat.Literal.pos
            (HexadecimaryFourTwoOANoSymDirect.lVar i.val 0 i.val - 1)] :=
      valuation_satisfies_of_pos_mem (by exact List.Mem.head []) htrue
    have hpos :
        0 < HexadecimaryFourTwoOANoSymDirect.lVar i.val 0 i.val := by
      simp [HexadecimaryFourTwoOANoSymDirect.lVar,
        HexadecimaryFourTwoOANoSymDirect.n]
    simpa [LRATNative.rawClauseToSat,
      HexadecimaryFourTwoOANoSymDirect.posLit, i, hpos] using hsat
  · rcases hraw with hraw | hnil
    · subst raw
      have htrue :
          normalizedHighOAValuation C blocks2 blocks3 hmissing
            (HexadecimaryFourTwoOANoSymDirect.mVar 0 i.val i.val - 1) := by
        have hentry := normalizedMSym_spec C blocks2 blocks3 hmissing i
        exact
          (normalizedHighOAValuation_mVar C blocks2 blocks3 hmissing
            (0 : Fin6) i i).mpr (by simpa [hrow0] using hentry)
      have hsat :
          Sat.Valuation.satisfies
            (normalizedHighOAValuation C blocks2 blocks3 hmissing)
            [Sat.Literal.pos
              (HexadecimaryFourTwoOANoSymDirect.mVar 0 i.val i.val - 1)] :=
        valuation_satisfies_of_pos_mem (by exact List.Mem.head []) htrue
      have hpos :
          0 < HexadecimaryFourTwoOANoSymDirect.mVar 0 i.val i.val := by
        simp [HexadecimaryFourTwoOANoSymDirect.mVar,
          HexadecimaryFourTwoOANoSymDirect.n]
      simpa [LRATNative.rawClauseToSat,
        HexadecimaryFourTwoOANoSymDirect.posLit, i, hpos] using hsat
    · cases hnil

private theorem normalizedHighOAValuation_satisfies_oa36OriginalClauses
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36) :
    Sat.Valuation.satisfies_fmla
      (normalizedHighOAValuation C blocks2 blocks3 hmissing)
      (HexadecimaryFourTwoOANoSymDirect.oa36OriginalClauses.map
        LRATNative.rawClauseToSat) := by
  have hNoSym :=
    normalizedHighOAValuation_satisfies_oa36NoSymClauses
      C blocks2 blocks3 hmissing hC0card
  have hSym :=
    normalizedHighOAValuation_satisfies_symmetryBreakingClauses
      C blocks2 blocks3 hmissing hC0card
  simpa [HexadecimaryFourTwoOANoSymDirect.oa36OriginalClauses,
    List.map_append] using
      (LRATNative.satisfies_fmla_append.mpr ⟨hNoSym, hSym⟩)

private theorem normalizedHighOAValuation_satisfies_oa36OriginalCnf
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3)
    (hC0card : (blockComponent16 C blocks2 blocks3 0).card = 36) :
    Sat.Valuation.satisfies_fmla
      (normalizedHighOAValuation C blocks2 blocks3 hmissing)
      (LRATNative.rawCnfToSat
        HexadecimaryFourTwoOANoSymDirect.oa36OriginalCnf) := by
  have hclauses :=
    normalizedHighOAValuation_satisfies_oa36OriginalClauses
      C blocks2 blocks3 hmissing hC0card
  simpa [LRATNative.rawCnfToSat,
    HexadecimaryFourTwoOANoSymDirect.oa36OriginalCnf] using hclauses

private theorem no_commonBlockPairMissing16_of_oa36NoSym_unsat
    (hunsat :
      ∀ v : Sat.Valuation,
        Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat
            HexadecimaryFourTwoOANoSymDirect.oa36NoSymCnf) →
          False)
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hcard : C.card = 86)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3) :
    False := by
  have hC0card :=
    high_blockComponent16_card_eq_thirty_six
      C blocks2 blocks3 hcard hmissing
  exact hunsat
    (highOAValuation (blockComponent16 C blocks2 blocks3 0))
    (highOAValuation_satisfies_oa36NoSymCnf
      C blocks2 blocks3 hmissing hC0card)

private theorem no_commonBlockPairMissing16_of_oa36Original_unsat
    (hunsat :
      ∀ v : Sat.Valuation,
        Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat
            HexadecimaryFourTwoOANoSymDirect.oa36OriginalCnf) →
          False)
    (C : Finset (QaryWord 16 4))
    (blocks2 blocks3 : List Nat × List Nat)
    (hcard : C.card = 86)
    (hmissing : HasCommonBlockPairMissing16 C blocks2 blocks3) :
    False := by
  have hC0card :=
    high_blockComponent16_card_eq_thirty_six
      C blocks2 blocks3 hcard hmissing
  exact hunsat
    (normalizedHighOAValuation C blocks2 blocks3 hmissing)
    (normalizedHighOAValuation_satisfies_oa36OriginalCnf
      C blocks2 blocks3 hmissing hC0card)

private theorem CoversFinset.mono
    {q n r : Nat} {C D : Finset (QaryWord q n)}
    (hsub : C ⊆ D)
    (hC : CoversFinset C r) :
    CoversFinset D r := by
  intro x
  obtain ⟨c, hc, hdist⟩ := hC x
  exact ⟨c, hsub hc, hdist⟩

theorem hexadecimaryFourRadiusTwoLower_of_oa36NoSym_unsat
    (hunsat :
      ∀ v : Sat.Valuation,
        Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat
            HexadecimaryFourTwoOANoSymDirect.oa36NoSymCnf) →
          False) :
    QaryKLower 16 4 2 87 := by
  intro C hC
  by_contra hnot
  have hcard_le86 : C.card ≤ 86 := by omega
  have huniv : 86 ≤ Fintype.card (QaryWord 16 4) := by
    norm_num [QaryWord, Fintype.card_fin]
  obtain ⟨D, hCsubD, hDcard⟩ :=
    Finset.exists_superset_card_eq (s := C) (n := 86) hcard_le86 huniv
  have hDcovers : CoversFinset D 2 :=
    CoversFinset.mono hCsubD hC
  have hDge5 : ∀ i a, 5 ≤ (coordFiber16 D i a).card :=
    coordFiber16_card_ge_five_of_card_le_eighty_six D hDcovers
      (by omega)
  obtain ⟨C', blocks2, blocks3, hC'cardEqD, _hC'covers,
      _hblocks2, _hblocks3, hmissing⟩ :=
    exists_relabeled_commonBlockPairMissing16 D hDcovers hDcard hDge5
  have hC'card : C'.card = 86 := by omega
  exact
    no_commonBlockPairMissing16_of_oa36NoSym_unsat
      hunsat C' blocks2 blocks3 hC'card hmissing

theorem hexadecimaryFourRadiusTwoLower_of_oa36Original_unsat
    (hunsat :
      ∀ v : Sat.Valuation,
        Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat
            HexadecimaryFourTwoOANoSymDirect.oa36OriginalCnf) →
          False) :
    QaryKLower 16 4 2 87 := by
  intro C hC
  by_contra hnot
  have hcard_le86 : C.card ≤ 86 := by omega
  have huniv : 86 ≤ Fintype.card (QaryWord 16 4) := by
    norm_num [QaryWord, Fintype.card_fin]
  obtain ⟨D, hCsubD, hDcard⟩ :=
    Finset.exists_superset_card_eq (s := C) (n := 86) hcard_le86 huniv
  have hDcovers : CoversFinset D 2 :=
    CoversFinset.mono hCsubD hC
  have hDge5 : ∀ i a, 5 ≤ (coordFiber16 D i a).card :=
    coordFiber16_card_ge_five_of_card_le_eighty_six D hDcovers
      (by omega)
  obtain ⟨C', blocks2, blocks3, hC'cardEqD, _hC'covers,
      _hblocks2, _hblocks3, hmissing⟩ :=
    exists_relabeled_commonBlockPairMissing16 D hDcovers hDcard hDge5
  have hC'card : C'.card = 86 := by omega
  exact
    no_commonBlockPairMissing16_of_oa36Original_unsat
      hunsat C' blocks2 blocks3 hC'card hmissing

set_option maxHeartbeats 2000000 in
private theorem oa36OriginalSmoke_cnf_eq_direct :
    oa36OriginalCnf = HexadecimaryFourTwoOANoSymDirect.oa36OriginalCnf := by
  native_decide

theorem hexadecimaryFourRadiusTwoLower :
    QaryKLower 16 4 2 87 :=
  hexadecimaryFourRadiusTwoLower_of_oa36Original_unsat (by
    intro v hv
    exact oa36Original_unsat v (by
      simpa [oa36OriginalSmoke_cnf_eq_direct] using hv))

def hexadecimaryFourRadiusTwoLowerName : String :=
  "lean_hexadecimary_four_two_lrat_lower"

def hexadecimaryFourRadiusTwoLowerValue (q n r : Nat) : Nat :=
  if q = 16 ∧ n = 4 ∧ r = 2 then 87 else zeroLower q n r

theorem hexadecimaryFourRadiusTwoLower_valid (q n r : Nat) :
    QaryKLower q n r (hexadecimaryFourRadiusTwoLowerValue q n r) := by
  by_cases h : q = 16 ∧ n = 4 ∧ r = 2
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [hexadecimaryFourRadiusTwoLowerValue] using
      hexadecimaryFourRadiusTwoLower
  · simpa [hexadecimaryFourRadiusTwoLowerValue, h] using zeroLower_valid q n r

def hexadecimaryFourRadiusTwoLowerSource : LowerBoundSource where
  value := hexadecimaryFourRadiusTwoLowerValue
  trace := fun q n r =>
    .primitive hexadecimaryFourRadiusTwoLowerName
      (hexadecimaryFourRadiusTwoLower_valid q n r)

end Database
end CoveringCodes
