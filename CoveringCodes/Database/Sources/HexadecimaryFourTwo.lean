import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.SparseSlicer
import CoveringCodes.Database.Sources.Trivial
import CoveringCodes.Relations.StructuralShortening
import Mathlib.Data.Fintype.Inv
import Mathlib.Tactic

/-!
# Hexadecimary length-four radius-two lower-source components

This file contains the Lean-facing structural pieces for the planned
`K_16(4,2)` lower bound.  The first component excludes coordinate-symbol
fibers of size at most three in an 86-word hypothetical cover, using the
formalized length-three Hamming-graph domination bounds.
-/

namespace CoveringCodes
namespace Database

open scoped BigOperators

private def coordFiber4 {q : Nat} (C : Finset (QaryWord q 4)) (j : Fin 4)
    (a : Fin q) : Finset (QaryWord q 4) :=
  C.filter (fun w => w j = a)

private def tailForbidden16 (C : Finset (QaryWord 16 4)) (j : Fin 4) (a : Fin 16)
    (i : Fin 3) : Finset (Fin 16) :=
  (coordFiber4 C j a).image (fun w => deleteCoord j w i)

private theorem exists_fin16_not_mem_of_card_lt
    (A : Finset (Fin 16)) (hA : A.card < 16) :
    ∃ b : Fin 16, b ∉ A := by
  have hlt : A.card < (Finset.univ : Finset (Fin 16)).card := by
    simpa using hA
  obtain ⟨b, _hbuniv, hbA⟩ := Finset.exists_mem_notMem_of_card_lt_card hlt
  exact ⟨b, hbA⟩

private noncomputable def defaultOutside16 (A : Finset (Fin 16)) (hA : A.card < 16) :
    {b : Fin 16 // b ∉ A} :=
  ⟨(exists_fin16_not_mem_of_card_lt A hA).choose,
    (exists_fin16_not_mem_of_card_lt A hA).choose_spec⟩

private noncomputable def avoidFinset16 (A : Finset (Fin 16)) (hA : A.card < 16)
    (x : Fin 16) : {b : Fin 16 // b ∉ A} :=
  if hx : x ∈ A then defaultOutside16 A hA else ⟨x, hx⟩

private theorem avoidFinset16_eq_of_not_mem {A : Finset (Fin 16)} {hA : A.card < 16}
    {x : Fin 16} (hx : x ∉ A) :
    avoidFinset16 A hA x = ⟨x, hx⟩ := by
  simp [avoidFinset16, hx]

private theorem dist_avoidFinset16_le
    {bad : Fin 3 → Finset (Fin 16)}
    (hbad : ∀ i, (bad i).card < 16)
    (x : (i : Fin 3) → {b : Fin 16 // b ∉ bad i})
    (y : QaryWord 16 3) :
    dist x (fun i => avoidFinset16 (bad i) (hbad i) (y i)) ≤
      dist (fun i => (x i).val) y := by
  classical
  simp only [dist, hammingDist]
  let Ssmall : Finset (Fin 3) :=
    Finset.univ.filter
      (fun i : Fin 3 => x i ≠ avoidFinset16 (bad i) (hbad i) (y i))
  let Sbig : Finset (Fin 3) :=
    Finset.univ.filter (fun i : Fin 3 => (x i).val ≠ y i)
  have hsub : Ssmall ⊆ Sbig := by
    intro i hi
    simp only [Ssmall, Sbig, Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
    intro hxy
    have hy_not_bad : y i ∉ bad i := by
      rw [← hxy]
      exact (x i).property
    have hcollapse :
        avoidFinset16 (bad i) (hbad i) (y i) = ⟨y i, hy_not_bad⟩ :=
      avoidFinset16_eq_of_not_mem hy_not_bad
    apply hi
    rw [hcollapse]
    exact Subtype.ext hxy
  exact Finset.card_le_card hsub

private theorem dist_three_of_all_tail_not_forbidden
    {bad : Fin 3 → Finset (Fin 16)}
    (x : (i : Fin 3) → {b : Fin 16 // b ∉ bad i})
    (y : QaryWord 16 3)
    (hy : ∀ i, y i ∈ bad i) :
    dist (fun i => (x i).val) y = 3 := by
  classical
  simp only [dist, hammingDist]
  have hfilter :
      (Finset.univ.filter (fun i : Fin 3 => (x i).val ≠ y i)) =
        (Finset.univ : Finset (Fin 3)) := by
    exact Finset.filter_true_of_mem (fun i _hi => by
      intro hxy
      exact (x i).property (hxy ▸ hy i))
  rw [hfilter]
  simp

private theorem dependent_lower_of_coord_embeddings
    {q L : Nat} (hq : 0 < q)
    {β : Fin 3 → Type} [∀ i, Fintype (β i)] [∀ i, DecidableEq (β i)]
    (e : ∀ i : Fin 3, Fin q ↪ β i)
    (hlower : QaryKLower q 3 1 L) :
    KLower (ι := Fin 3) (β := β) 1 L := by
  classical
  let default : Fin q := ⟨0, hq⟩
  let retractCoord (i : Fin 3) (b : β i) : Fin q :=
    if h : b ∈ Set.range (e i) then
      (e i).injective.invOfMemRange ⟨b, h⟩
    else default
  have hretract (i : Fin 3) (x : Fin q) :
      retractCoord i ((e i) x) = x := by
    simp [retractCoord, Function.Injective.right_inv_of_invOfMemRange]
  let retractWord (c : (i : Fin 3) → β i) : QaryWord q 3 :=
    fun i => retractCoord i (c i)
  let embedWord (x : QaryWord q 3) : (i : Fin 3) → β i :=
    fun i => (e i) (x i)
  have hdist_le (x : QaryWord q 3) (c : (i : Fin 3) → β i) :
      dist x (retractWord c) ≤ dist (embedWord x) c := by
    simp only [dist, hammingDist]
    apply Finset.card_le_card
    intro i hi
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
    intro hmatch
    have hc : retractCoord i (c i) = x i := by
      rw [← hmatch]
      exact hretract i (x i)
    exact hi hc.symm
  intro C hC
  let D : Finset (QaryWord q 3) := C.image retractWord
  have hDcovers : CoversFinset D 1 := by
    intro x
    obtain ⟨c, hc, hdist⟩ := hC (embedWord x)
    refine ⟨retractWord c, Finset.mem_image.mpr ⟨c, hc, rfl⟩, ?_⟩
    exact (hdist_le x c).trans hdist
  exact (hlower D hDcovers).trans Finset.card_image_le

private theorem forbiddenSubtype16_card_ge
    (A : Finset (Fin 16)) {qsmall t : Nat}
    (hA : A.card ≤ t) (hqt : qsmall + t ≤ 16) :
    qsmall ≤ Fintype.card {b : Fin 16 // b ∉ A} := by
  classical
  rw [Fintype.card_subtype]
  have hsub : A ⊆ (Finset.univ : Finset (Fin 16)) := by
    intro x _hx
    simp
  have hcard := Finset.card_sdiff_of_subset hsub
  have hfilter :
      (Finset.univ.filter (fun b : Fin 16 => b ∉ A)).card = 16 - A.card := by
    simpa [Finset.sdiff_eq_filter] using hcard
  simpa [hfilter] using (by omega : qsmall ≤ 16 - A.card)

private theorem small_fiber_subbox_upper
    (C : Finset (QaryWord 16 4)) (hC : CoversFinset C 2)
    (j : Fin 4) (a : Fin 16) (t : Nat)
    (ht : (coordFiber4 C j a).card = t) (htle : t ≤ 3) :
    KUpper (ι := Fin 3)
      (β := fun i : Fin 3 => {b : Fin 16 // b ∉ tailForbidden16 C j a i}) 1
      (C.card - t) := by
  classical
  let bad : Fin 3 → Finset (Fin 16) := tailForbidden16 C j a
  have hbad_card_le (i : Fin 3) : (bad i).card ≤ t := by
    calc
      (bad i).card ≤ (coordFiber4 C j a).card := Finset.card_image_le
      _ = t := ht
  have hbad_lt (i : Fin 3) : (bad i).card < 16 := by
    have := hbad_card_le i
    omega
  let remaining : Finset (QaryWord 16 4) := C.filter (fun w => w j ≠ a)
  let D : Finset ((i : Fin 3) → {b : Fin 16 // b ∉ bad i}) :=
    remaining.image (fun c i => avoidFinset16 (bad i) (hbad_lt i) (deleteCoord j c i))
  refine ⟨D, ?_, ?_⟩
  · have himage : D.card ≤ remaining.card := Finset.card_image_le
    have hpartition := Finset.card_filter_add_card_filter_not (s := C) (p := fun w => w j = a)
    have hremaining_card : remaining.card = C.card - t := by
      have hfiber : (C.filter (fun w => w j = a)).card = t := ht
      dsimp [remaining]
      rw [← hfiber]
      omega
    exact himage.trans_eq hremaining_card
  · intro x
    let x16 : QaryWord 16 3 := fun i => (x i).val
    obtain ⟨c, hc, hdist⟩ := hC (insertCoord j a x16)
    have hc_not_fiber : c ∉ coordFiber4 C j a := by
      intro hcFiber
      have hy (i : Fin 3) : deleteCoord j c i ∈ bad i := by
        exact Finset.mem_image.mpr ⟨c, hcFiber, rfl⟩
      have htail_three : dist x16 (deleteCoord j c) = 3 := by
        simpa [x16, bad] using dist_three_of_all_tail_not_forbidden x (deleteCoord j c) hy
      have htail_le := dist_deleteCoord_le_dist_insertCoord j a x16 c
      have hfull_ge : 3 ≤ dist (insertCoord j a x16) c := by
        calc
          3 = dist x16 (deleteCoord j c) := htail_three.symm
          _ ≤ dist (insertCoord j a x16) c := htail_le
      omega
    have hcj_ne : c j ≠ a := by
      intro hcj
      exact hc_not_fiber (by simp [coordFiber4, hc, hcj])
    have hdrop := dist_deleteCoord_insertCoord_add_one_le j a x16 c hcj_ne
    have htail_le_one : dist x16 (deleteCoord j c) ≤ 1 := by
      have hle : dist x16 (deleteCoord j c) + 1 ≤ 2 := hdrop.trans hdist
      omega
    refine ⟨(fun i => avoidFinset16 (bad i) (hbad_lt i) (deleteCoord j c i)), ?_, ?_⟩
    · exact Finset.mem_image.mpr ⟨c, by simp [remaining, hc, hcj_ne], rfl⟩
    · exact (dist_avoidFinset16_le hbad_lt x (deleteCoord j c)).trans htail_le_one

private theorem lower_of_forbidden_subbox
    {qsmall L t : Nat} (hqsmall : 0 < qsmall)
    (hqt : qsmall + t ≤ 16)
    (hlower : QaryKLower qsmall 3 1 L)
    (bad : Fin 3 → Finset (Fin 16))
    (hbad_card : ∀ i, (bad i).card ≤ t) :
    KLower (ι := Fin 3)
      (β := fun i : Fin 3 => {b : Fin 16 // b ∉ bad i}) 1 L := by
  classical
  let e : ∀ i : Fin 3, Fin qsmall ↪ {b : Fin 16 // b ∉ bad i} :=
    fun i => Classical.choice
      (Function.Embedding.nonempty_of_card_le
        (forbiddenSubtype16_card_ge (bad i) (hbad_card i)
          (by simpa [Fintype.card_fin] using hqt)))
  exact dependent_lower_of_coord_embeddings hqsmall e hlower

private theorem qaryLower13 : QaryKLower 13 3 1 85 := by
  simpa using qaryThreeOneHalfSquareLower_valid 13 (by norm_num)

private theorem qaryLower14 : QaryKLower 14 3 1 98 := by
  simpa using qaryThreeOneHalfSquareLower_valid 14 (by norm_num)

private theorem qaryLower15 : QaryKLower 15 3 1 113 := by
  simpa using qaryThreeOneHalfSquareLower_valid 15 (by norm_num)

private theorem qaryLower16 : QaryKLower 16 3 1 128 := by
  simpa using qaryThreeOneHalfSquareLower_valid 16 (by norm_num)

/-- In an 86-word `16`-ary length-four radius-two cover, every
coordinate-symbol fiber has at least four codewords. -/
theorem hexadecimaryFourRadiusTwo_symbol_fiber_card_ge_four_of_card_le_eighty_six
    (C : Finset (QaryWord 16 4))
    (hC : CoversFinset C 2)
    (hcard : C.card ≤ 86)
    (j : Fin 4)
    (a : Fin 16) :
    4 ≤ (coordFiber4 C j a).card := by
  by_contra hnot
  have hle3 : (coordFiber4 C j a).card ≤ 3 := by omega
  interval_cases h : (coordFiber4 C j a).card
  · have hUpper := small_fiber_subbox_upper C hC j a 0 h (by norm_num)
    have hbad_card (i : Fin 3) : (tailForbidden16 C j a i).card ≤ 0 := by
      calc
        (tailForbidden16 C j a i).card ≤ (coordFiber4 C j a).card := Finset.card_image_le
        _ = 0 := h
    have hLower := lower_of_forbidden_subbox (qsmall := 16) (L := 128) (t := 0)
      (by norm_num) (by norm_num) qaryLower16 (tailForbidden16 C j a) hbad_card
    obtain ⟨D, hDcard, hDcovers⟩ := hUpper
    have hL := hLower D hDcovers
    omega
  · have hUpper := small_fiber_subbox_upper C hC j a 1 h (by norm_num)
    have hbad_card (i : Fin 3) : (tailForbidden16 C j a i).card ≤ 1 := by
      calc
        (tailForbidden16 C j a i).card ≤ (coordFiber4 C j a).card := Finset.card_image_le
        _ = 1 := h
    have hLower := lower_of_forbidden_subbox (qsmall := 15) (L := 113) (t := 1)
      (by norm_num) (by norm_num) qaryLower15 (tailForbidden16 C j a) hbad_card
    obtain ⟨D, hDcard, hDcovers⟩ := hUpper
    have hL := hLower D hDcovers
    omega
  · have hUpper := small_fiber_subbox_upper C hC j a 2 h (by norm_num)
    have hbad_card (i : Fin 3) : (tailForbidden16 C j a i).card ≤ 2 := by
      calc
        (tailForbidden16 C j a i).card ≤ (coordFiber4 C j a).card := Finset.card_image_le
        _ = 2 := h
    have hLower := lower_of_forbidden_subbox (qsmall := 14) (L := 98) (t := 2)
      (by norm_num) (by norm_num) qaryLower14 (tailForbidden16 C j a) hbad_card
    obtain ⟨D, hDcard, hDcovers⟩ := hUpper
    have hL := hLower D hDcovers
    omega
  · have hUpper := small_fiber_subbox_upper C hC j a 3 h (by norm_num)
    have hbad_card (i : Fin 3) : (tailForbidden16 C j a i).card ≤ 3 := by
      calc
        (tailForbidden16 C j a i).card ≤ (coordFiber4 C j a).card := Finset.card_image_le
        _ = 3 := h
    have hLower := lower_of_forbidden_subbox (qsmall := 13) (L := 85) (t := 3)
      (by norm_num) (by norm_num) qaryLower13 (tailForbidden16 C j a) hbad_card
    obtain ⟨D, hDcard, hDcovers⟩ := hUpper
    have hL := hLower D hDcovers
    omega

/-!
## Explicit 87-word upper-bound construction

The upper construction partitions the alphabet as `6 + 5 + 5`.  The first
block uses Sage's database `CA(37,2,4,6)`; the other two blocks use the
standard finite-field `OA(25,4,5,2)`.  Every four-symbol target has two
coordinates in one block, and that block array contains a row matching the
corresponding coordinate-symbol pair.

The code below is stored explicitly and checked by `native_decide`.
-/

private def hexadecimaryFourRadiusTwoUpperCode : Finset (QaryWord 16 4) :=
  {
    ![(0 : Fin 16), 0, 1, 0],
    ![(0 : Fin 16), 0, 2, 1],
    ![(0 : Fin 16), 1, 0, 2],
    ![(0 : Fin 16), 2, 0, 5],
    ![(0 : Fin 16), 3, 3, 3],
    ![(0 : Fin 16), 4, 4, 4],
    ![(0 : Fin 16), 5, 5, 5],
    ![(1 : Fin 16), 0, 0, 4],
    ![(1 : Fin 16), 1, 1, 5],
    ![(1 : Fin 16), 2, 3, 1],
    ![(1 : Fin 16), 3, 4, 0],
    ![(1 : Fin 16), 4, 5, 3],
    ![(1 : Fin 16), 5, 2, 2],
    ![(2 : Fin 16), 0, 0, 3],
    ![(2 : Fin 16), 1, 4, 1],
    ![(2 : Fin 16), 2, 5, 4],
    ![(2 : Fin 16), 3, 1, 2],
    ![(2 : Fin 16), 4, 2, 5],
    ![(2 : Fin 16), 5, 3, 0],
    ![(3 : Fin 16), 0, 5, 2],
    ![(3 : Fin 16), 1, 3, 4],
    ![(3 : Fin 16), 2, 2, 0],
    ![(3 : Fin 16), 3, 0, 5],
    ![(3 : Fin 16), 4, 1, 1],
    ![(3 : Fin 16), 5, 4, 3],
    ![(4 : Fin 16), 0, 3, 5],
    ![(4 : Fin 16), 1, 2, 3],
    ![(4 : Fin 16), 2, 4, 2],
    ![(4 : Fin 16), 3, 5, 1],
    ![(4 : Fin 16), 4, 0, 0],
    ![(4 : Fin 16), 5, 1, 4],
    ![(5 : Fin 16), 0, 4, 5],
    ![(5 : Fin 16), 1, 5, 0],
    ![(5 : Fin 16), 2, 1, 3],
    ![(5 : Fin 16), 3, 2, 4],
    ![(5 : Fin 16), 4, 3, 2],
    ![(5 : Fin 16), 5, 0, 1],
    ![(6 : Fin 16), 6, 6, 6],
    ![(6 : Fin 16), 7, 7, 8],
    ![(6 : Fin 16), 8, 8, 10],
    ![(6 : Fin 16), 9, 9, 7],
    ![(6 : Fin 16), 10, 10, 9],
    ![(7 : Fin 16), 6, 7, 7],
    ![(7 : Fin 16), 7, 8, 9],
    ![(7 : Fin 16), 8, 9, 6],
    ![(7 : Fin 16), 9, 10, 8],
    ![(7 : Fin 16), 10, 6, 10],
    ![(8 : Fin 16), 6, 8, 8],
    ![(8 : Fin 16), 7, 9, 10],
    ![(8 : Fin 16), 8, 10, 7],
    ![(8 : Fin 16), 9, 6, 9],
    ![(8 : Fin 16), 10, 7, 6],
    ![(9 : Fin 16), 6, 9, 9],
    ![(9 : Fin 16), 7, 10, 6],
    ![(9 : Fin 16), 8, 6, 8],
    ![(9 : Fin 16), 9, 7, 10],
    ![(9 : Fin 16), 10, 8, 7],
    ![(10 : Fin 16), 6, 10, 10],
    ![(10 : Fin 16), 7, 6, 7],
    ![(10 : Fin 16), 8, 7, 9],
    ![(10 : Fin 16), 9, 8, 6],
    ![(10 : Fin 16), 10, 9, 8],
    ![(11 : Fin 16), 11, 11, 11],
    ![(11 : Fin 16), 12, 12, 13],
    ![(11 : Fin 16), 13, 13, 15],
    ![(11 : Fin 16), 14, 14, 12],
    ![(11 : Fin 16), 15, 15, 14],
    ![(12 : Fin 16), 11, 12, 12],
    ![(12 : Fin 16), 12, 13, 14],
    ![(12 : Fin 16), 13, 14, 11],
    ![(12 : Fin 16), 14, 15, 13],
    ![(12 : Fin 16), 15, 11, 15],
    ![(13 : Fin 16), 11, 13, 13],
    ![(13 : Fin 16), 12, 14, 15],
    ![(13 : Fin 16), 13, 15, 12],
    ![(13 : Fin 16), 14, 11, 14],
    ![(13 : Fin 16), 15, 12, 11],
    ![(14 : Fin 16), 11, 14, 14],
    ![(14 : Fin 16), 12, 15, 11],
    ![(14 : Fin 16), 13, 11, 13],
    ![(14 : Fin 16), 14, 12, 15],
    ![(14 : Fin 16), 15, 13, 12],
    ![(15 : Fin 16), 11, 15, 15],
    ![(15 : Fin 16), 12, 11, 12],
    ![(15 : Fin 16), 13, 12, 14],
    ![(15 : Fin 16), 14, 13, 11],
    ![(15 : Fin 16), 15, 14, 13]
  }

set_option maxRecDepth 40000 in
private theorem hexadecimaryFourRadiusTwoUpperCode_card :
    hexadecimaryFourRadiusTwoUpperCode.card ≤ 87 := by
  native_decide

private def hexadecimaryFourRadiusTwoUpperBlock (a : Fin 16) : Fin 3 :=
  if a.val < 6 then 0 else if a.val < 11 then 1 else 2

private theorem fin3_four_has_equal_pair (a b c d : Fin 3) :
    a = b ∨ a = c ∨ a = d ∨ b = c ∨ b = d ∨ c = d := by
  fin_cases a <;> fin_cases b <;> fin_cases c <;> fin_cases d <;> simp

private theorem hexadecimaryFourRadiusTwoUpperBlock_pair (x : QaryWord 16 4) :
    hexadecimaryFourRadiusTwoUpperBlock (x 0) =
        hexadecimaryFourRadiusTwoUpperBlock (x 1) ∨
    hexadecimaryFourRadiusTwoUpperBlock (x 0) =
        hexadecimaryFourRadiusTwoUpperBlock (x 2) ∨
    hexadecimaryFourRadiusTwoUpperBlock (x 0) =
        hexadecimaryFourRadiusTwoUpperBlock (x 3) ∨
    hexadecimaryFourRadiusTwoUpperBlock (x 1) =
        hexadecimaryFourRadiusTwoUpperBlock (x 2) ∨
    hexadecimaryFourRadiusTwoUpperBlock (x 1) =
        hexadecimaryFourRadiusTwoUpperBlock (x 3) ∨
    hexadecimaryFourRadiusTwoUpperBlock (x 2) =
        hexadecimaryFourRadiusTwoUpperBlock (x 3) :=
  fin3_four_has_equal_pair
    (hexadecimaryFourRadiusTwoUpperBlock (x 0))
    (hexadecimaryFourRadiusTwoUpperBlock (x 1))
    (hexadecimaryFourRadiusTwoUpperBlock (x 2))
    (hexadecimaryFourRadiusTwoUpperBlock (x 3))

private theorem hammingDist_vec4_le_two_of_eq01 {q : Nat} (x c : QaryWord q 4)
    (h0 : x 0 = c 0) (h1 : x 1 = c 1) : hammingDist x c ≤ 2 := by
  let F : Finset (Fin 4) := Finset.univ.filter (fun i => x i ≠ c i)
  have hsubset : F ⊆ ({(2 : Fin 4), (3 : Fin 4)} : Finset (Fin 4)) := by
    intro i hi
    simp [F] at hi
    fin_cases i <;> simp_all
  have hcard := Finset.card_le_card hsubset
  simpa [F] using hcard

private theorem hammingDist_vec4_le_two_of_eq02 {q : Nat} (x c : QaryWord q 4)
    (h0 : x 0 = c 0) (h2 : x 2 = c 2) : hammingDist x c ≤ 2 := by
  let F : Finset (Fin 4) := Finset.univ.filter (fun i => x i ≠ c i)
  have hsubset : F ⊆ ({(1 : Fin 4), (3 : Fin 4)} : Finset (Fin 4)) := by
    intro i hi
    simp [F] at hi
    fin_cases i <;> simp_all
  have hcard := Finset.card_le_card hsubset
  simpa [F] using hcard

private theorem hammingDist_vec4_le_two_of_eq03 {q : Nat} (x c : QaryWord q 4)
    (h0 : x 0 = c 0) (h3 : x 3 = c 3) : hammingDist x c ≤ 2 := by
  let F : Finset (Fin 4) := Finset.univ.filter (fun i => x i ≠ c i)
  have hsubset : F ⊆ ({(1 : Fin 4), (2 : Fin 4)} : Finset (Fin 4)) := by
    intro i hi
    simp [F] at hi
    fin_cases i <;> simp_all
  have hcard := Finset.card_le_card hsubset
  simpa [F] using hcard

private theorem hammingDist_vec4_le_two_of_eq12 {q : Nat} (x c : QaryWord q 4)
    (h1 : x 1 = c 1) (h2 : x 2 = c 2) : hammingDist x c ≤ 2 := by
  let F : Finset (Fin 4) := Finset.univ.filter (fun i => x i ≠ c i)
  have hsubset : F ⊆ ({(0 : Fin 4), (3 : Fin 4)} : Finset (Fin 4)) := by
    intro i hi
    simp [F] at hi
    fin_cases i <;> simp_all
  have hcard := Finset.card_le_card hsubset
  simpa [F] using hcard

private theorem hammingDist_vec4_le_two_of_eq13 {q : Nat} (x c : QaryWord q 4)
    (h1 : x 1 = c 1) (h3 : x 3 = c 3) : hammingDist x c ≤ 2 := by
  let F : Finset (Fin 4) := Finset.univ.filter (fun i => x i ≠ c i)
  have hsubset : F ⊆ ({(0 : Fin 4), (2 : Fin 4)} : Finset (Fin 4)) := by
    intro i hi
    simp [F] at hi
    fin_cases i <;> simp_all
  have hcard := Finset.card_le_card hsubset
  simpa [F] using hcard

private theorem hammingDist_vec4_le_two_of_eq23 {q : Nat} (x c : QaryWord q 4)
    (h2 : x 2 = c 2) (h3 : x 3 = c 3) : hammingDist x c ≤ 2 := by
  let F : Finset (Fin 4) := Finset.univ.filter (fun i => x i ≠ c i)
  have hsubset : F ⊆ ({(0 : Fin 4), (1 : Fin 4)} : Finset (Fin 4)) := by
    intro i hi
    simp [F] at hi
    fin_cases i <;> simp_all
  have hcard := Finset.card_le_card hsubset
  simpa [F] using hcard

set_option maxRecDepth 40000 in
private theorem hexadecimaryFourRadiusTwoUpperCode_pair01
    (a b : Fin 16)
    (hblock : hexadecimaryFourRadiusTwoUpperBlock a =
      hexadecimaryFourRadiusTwoUpperBlock b) :
    ∃ w : QaryWord 16 4,
      w ∈ hexadecimaryFourRadiusTwoUpperCode ∧ w 0 = a ∧ w 1 = b := by
  native_decide +revert

set_option maxRecDepth 40000 in
private theorem hexadecimaryFourRadiusTwoUpperCode_pair02
    (a c : Fin 16)
    (hblock : hexadecimaryFourRadiusTwoUpperBlock a =
      hexadecimaryFourRadiusTwoUpperBlock c) :
    ∃ w : QaryWord 16 4,
      w ∈ hexadecimaryFourRadiusTwoUpperCode ∧ w 0 = a ∧ w 2 = c := by
  native_decide +revert

set_option maxRecDepth 40000 in
private theorem hexadecimaryFourRadiusTwoUpperCode_pair03
    (a d : Fin 16)
    (hblock : hexadecimaryFourRadiusTwoUpperBlock a =
      hexadecimaryFourRadiusTwoUpperBlock d) :
    ∃ w : QaryWord 16 4,
      w ∈ hexadecimaryFourRadiusTwoUpperCode ∧ w 0 = a ∧ w 3 = d := by
  native_decide +revert

set_option maxRecDepth 40000 in
private theorem hexadecimaryFourRadiusTwoUpperCode_pair12
    (b c : Fin 16)
    (hblock : hexadecimaryFourRadiusTwoUpperBlock b =
      hexadecimaryFourRadiusTwoUpperBlock c) :
    ∃ w : QaryWord 16 4,
      w ∈ hexadecimaryFourRadiusTwoUpperCode ∧ w 1 = b ∧ w 2 = c := by
  native_decide +revert

set_option maxRecDepth 40000 in
private theorem hexadecimaryFourRadiusTwoUpperCode_pair13
    (b d : Fin 16)
    (hblock : hexadecimaryFourRadiusTwoUpperBlock b =
      hexadecimaryFourRadiusTwoUpperBlock d) :
    ∃ w : QaryWord 16 4,
      w ∈ hexadecimaryFourRadiusTwoUpperCode ∧ w 1 = b ∧ w 3 = d := by
  native_decide +revert

set_option maxRecDepth 40000 in
private theorem hexadecimaryFourRadiusTwoUpperCode_pair23
    (c d : Fin 16)
    (hblock : hexadecimaryFourRadiusTwoUpperBlock c =
      hexadecimaryFourRadiusTwoUpperBlock d) :
    ∃ w : QaryWord 16 4,
      w ∈ hexadecimaryFourRadiusTwoUpperCode ∧
      w 2 = c ∧ w 3 = d := by
  native_decide +revert

private theorem hexadecimaryFourRadiusTwoUpperCode_covers :
    CoversFinset hexadecimaryFourRadiusTwoUpperCode 2 := by
  intro x
  rcases hexadecimaryFourRadiusTwoUpperBlock_pair x with h01 | h02 | h03 | h12 | h13 | h23
  · rcases hexadecimaryFourRadiusTwoUpperCode_pair01 (x 0) (x 1) h01 with
      ⟨w, hw_mem, hw0, hw1⟩
    exact ⟨w, hw_mem, hammingDist_vec4_le_two_of_eq01 x w hw0.symm hw1.symm⟩
  · rcases hexadecimaryFourRadiusTwoUpperCode_pair02 (x 0) (x 2) h02 with
      ⟨w, hw_mem, hw0, hw2⟩
    exact ⟨w, hw_mem, hammingDist_vec4_le_two_of_eq02 x w hw0.symm hw2.symm⟩
  · rcases hexadecimaryFourRadiusTwoUpperCode_pair03 (x 0) (x 3) h03 with
      ⟨w, hw_mem, hw0, hw3⟩
    exact ⟨w, hw_mem, hammingDist_vec4_le_two_of_eq03 x w hw0.symm hw3.symm⟩
  · rcases hexadecimaryFourRadiusTwoUpperCode_pair12 (x 1) (x 2) h12 with
      ⟨w, hw_mem, hw1, hw2⟩
    exact ⟨w, hw_mem, hammingDist_vec4_le_two_of_eq12 x w hw1.symm hw2.symm⟩
  · rcases hexadecimaryFourRadiusTwoUpperCode_pair13 (x 1) (x 3) h13 with
      ⟨w, hw_mem, hw1, hw3⟩
    exact ⟨w, hw_mem, hammingDist_vec4_le_two_of_eq13 x w hw1.symm hw3.symm⟩
  · rcases hexadecimaryFourRadiusTwoUpperCode_pair23 (x 2) (x 3) h23 with
      ⟨w, hw_mem, hw2, hw3⟩
    exact ⟨w, hw_mem, hammingDist_vec4_le_two_of_eq23 x w hw2.symm hw3.symm⟩

def hexadecimaryFourRadiusTwoUpperName : String :=
  "lean_hexadecimary_four_two_ca_upper"

def hexadecimaryFourRadiusTwoUpperExplicit : ExplicitQaryUpper 16 4 2 87 :=
  { code := hexadecimaryFourRadiusTwoUpperCode
    card_le := hexadecimaryFourRadiusTwoUpperCode_card
    covers := hexadecimaryFourRadiusTwoUpperCode_covers }

def hexadecimaryFourRadiusTwoUpper (q n r : Nat) : Nat :=
  if q = 16 ∧ n = 4 ∧ r = 2 then 87 else trivialUpper q n r

theorem hexadecimaryFourRadiusTwoUpper_valid (q n r : Nat) :
    QaryKUpper q n r (hexadecimaryFourRadiusTwoUpper q n r) := by
  by_cases h : q = 16 ∧ n = 4 ∧ r = 2
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [hexadecimaryFourRadiusTwoUpper] using
      hexadecimaryFourRadiusTwoUpperExplicit.toUpper
  · simpa [hexadecimaryFourRadiusTwoUpper, h] using trivialUpper_valid q n r

def hexadecimaryFourRadiusTwoUpperSource : UpperBoundSource where
  value := hexadecimaryFourRadiusTwoUpper
  trace := fun q n r =>
    .primitive hexadecimaryFourRadiusTwoUpperName
      (hexadecimaryFourRadiusTwoUpper_valid q n r)

end Database
end CoveringCodes
