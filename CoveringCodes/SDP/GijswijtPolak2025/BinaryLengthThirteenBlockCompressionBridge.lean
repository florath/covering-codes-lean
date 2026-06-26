import CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryLengthThirteenBlockCompression

/-!
# Length-13 block-compression bridge proofs

This file contains hand-written proof glue on top of the generated finite
support data for the length-13 binary block-compression certificate.
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
set_option linter.constructorNameAsVariable false

abbrev binaryLengthThirteenBlockCoeffSupportChoiceType
    (idx : BinaryBlockIndex 13) :=
  (Finset (Fin idx.k) × Finset (Fin idx.k)) ×
    Sigma (fun _I : Finset (Fin 13) =>
      Sigma (fun _P : Finset (Fin 13) => Finset (Fin 13)))

def binaryLengthThirteenBlockCoeffSupportChoiceToPair
    (idx : BinaryBlockIndex 13)
    (choice : binaryLengthThirteenBlockCoeffSupportChoiceType idx) :
    Finset (Fin 13) × Finset (Fin 13) :=
  let sameSet := choice.1.1
  let rights := choice.1.2
  let I := choice.2.1
  let P := choice.2.2.1
  let Q := choice.2.2.2
  (binaryLengthThirteenPairSupportFromRightChoices idx rights ∪ I ∪ P,
    binaryLengthThirteenPairSupportForT idx sameSet rights ∪ I ∪ Q)

def binaryLengthThirteenBlockCoeffSupportPairToChoice
    (idx : BinaryBlockIndex 13) (st : Finset (Fin 13) × Finset (Fin 13)) :
    binaryLengthThirteenBlockCoeffSupportChoiceType idx :=
  let Sfree := binaryLengthThirteenBlockFreeSupport idx st.1
  let Tfree := binaryLengthThirteenBlockFreeSupport idx st.2
  ((binaryLengthThirteenPairSameChoices idx st.1 st.2,
      binaryLengthThirteenPairRightChoices idx st.1),
    ⟨Sfree ∩ Tfree, ⟨Sfree \ Tfree, Tfree \ Sfree⟩⟩)

theorem binaryLengthThirteenPairSupportFromRightChoices_rightChoices_union_freeSupport
    (idx : BinaryBlockIndex 13) (S : Finset (Fin 13))
    (hvalid : binaryLengthThirteenPairChoiceValid idx S) :
    binaryLengthThirteenPairSupportFromRightChoices idx
        (binaryLengthThirteenPairRightChoices idx S) ∪
      binaryLengthThirteenBlockFreeSupport idx S = S := by
  rcases idx with ⟨k, hk⟩
  have hk' : k ≤ 6 := by omega
  interval_cases k <;> native_decide +revert

theorem binaryLengthThirteenPairSupportForT_same_right_union_freeSupport
    (idx : BinaryBlockIndex 13) (S T : Finset (Fin 13))
    (hS : binaryLengthThirteenPairChoiceValid idx S)
    (hT : binaryLengthThirteenPairChoiceValid idx T) :
    binaryLengthThirteenPairSupportForT idx
        (binaryLengthThirteenPairSameChoices idx S T)
        (binaryLengthThirteenPairRightChoices idx S) ∪
      binaryLengthThirteenBlockFreeSupport idx T = T := by
  have hpair :
      binaryLengthThirteenPairSupportForT idx
          (binaryLengthThirteenPairSameChoices idx S T)
          (binaryLengthThirteenPairRightChoices idx S) =
        binaryLengthThirteenPairSupportFromRightChoices idx
          (binaryLengthThirteenPairRightChoices idx T) := by
    unfold binaryLengthThirteenPairSupportForT
      binaryLengthThirteenPairSupportFromRightChoices
    apply Finset.image_congr
    intro a _
    have hiff :
        (((a ∈ binaryLengthThirteenPairSameChoices idx S T ∧
              a ∈ binaryLengthThirteenPairRightChoices idx S) ∨
            (a ∉ binaryLengthThirteenPairSameChoices idx S T ∧
              a ∉ binaryLengthThirteenPairRightChoices idx S)) ↔
          a ∈ binaryLengthThirteenPairRightChoices idx T) := by
      unfold binaryLengthThirteenPairSameChoices
        binaryLengthThirteenPairRightChoices
      simp only [Finset.mem_filter, Finset.mem_univ, true_and]
      rcases hS a with hSL | hSR
      · rcases hT a with hTL | hTR
        · simp [hSL.1, hSL.2, hTL.1, hTL.2]
        · simp [hSL.1, hSL.2, hTR.1, hTR.2]
      · rcases hT a with hTL | hTR
        · simp [hSR.1, hSR.2, hTL.1, hTL.2]
        · simp [hSR.1, hSR.2, hTR.1, hTR.2]
    by_cases hcond :
        (a ∈ binaryLengthThirteenPairSameChoices idx S T ∧
              a ∈ binaryLengthThirteenPairRightChoices idx S) ∨
            (a ∉ binaryLengthThirteenPairSameChoices idx S T ∧
              a ∉ binaryLengthThirteenPairRightChoices idx S)
    · have hright : a ∈ binaryLengthThirteenPairRightChoices idx T :=
        hiff.mp hcond
      simp [hcond, hright]
    · have hnright : a ∉ binaryLengthThirteenPairRightChoices idx T := by
        intro hright
        exact hcond (hiff.mpr hright)
      simp [hcond, hnright]
  rw [hpair]
  exact binaryLengthThirteenPairSupportFromRightChoices_rightChoices_union_freeSupport idx T hT

theorem binaryLengthThirteenPairSame_add_freeInter_card_of_valid
    (idx : BinaryBlockIndex 13) (S T : Finset (Fin 13))
    (hSvalid : binaryLengthThirteenPairChoiceValid idx S)
    (hTvalid : binaryLengthThirteenPairChoiceValid idx T) :
    (S ∩ T).card =
      (binaryLengthThirteenPairSameChoices idx S T).card +
        (binaryLengthThirteenBlockFreeSupport idx S ∩
          binaryLengthThirteenBlockFreeSupport idx T).card := by
  let pairS := binaryLengthThirteenPairSupportFromRightChoices idx
    (binaryLengthThirteenPairRightChoices idx S)
  let pairT := binaryLengthThirteenPairSupportForT idx
    (binaryLengthThirteenPairSameChoices idx S T)
    (binaryLengthThirteenPairRightChoices idx S)
  let Sfree := binaryLengthThirteenBlockFreeSupport idx S
  let Tfree := binaryLengthThirteenBlockFreeSupport idx T
  have hSfree_subset : Sfree ⊆ binaryLengthThirteenBlockFreeCoords idx := by
    intro coord hcoord
    exact (Finset.mem_inter.mp hcoord).2
  have hTfree_subset : Tfree ⊆ binaryLengthThirteenBlockFreeCoords idx := by
    intro coord hcoord
    exact (Finset.mem_inter.mp hcoord).2
  have hS :
      pairS ∪ Sfree = S := by
    exact binaryLengthThirteenPairSupportFromRightChoices_rightChoices_union_freeSupport
      idx S hSvalid
  have hT :
      pairT ∪ Tfree = T := by
    exact binaryLengthThirteenPairSupportForT_same_right_union_freeSupport
      idx S T hSvalid hTvalid
  have h_inter :
      S ∩ T = (pairS ∩ pairT) ∪ (Sfree ∩ Tfree) := by
    rw [← hS, ← hT]
    ext coord
    constructor
    · intro h
      rcases Finset.mem_inter.mp h with ⟨hScoord, hTcoord⟩
      rcases Finset.mem_union.mp hScoord with hpairS | hfreeS
      · rcases Finset.mem_union.mp hTcoord with hpairT | hfreeT
        · exact Finset.mem_union.mpr
            (Or.inl (Finset.mem_inter.mpr ⟨hpairS, hpairT⟩))
        · exact False.elim
            ((Finset.disjoint_left.mp
              (binaryLengthThirteenPairSupportFromRightChoices_disjoint_free idx
                (binaryLengthThirteenPairRightChoices idx S)))
              hpairS (hTfree_subset hfreeT))
      · rcases Finset.mem_union.mp hTcoord with hpairT | hfreeT
        · exact False.elim
            ((Finset.disjoint_left.mp
              (binaryLengthThirteenPairSupportForT_disjoint_free idx
                (binaryLengthThirteenPairSameChoices idx S T)
                (binaryLengthThirteenPairRightChoices idx S)))
              hpairT (hSfree_subset hfreeS))
        · exact Finset.mem_union.mpr
            (Or.inr (Finset.mem_inter.mpr ⟨hfreeS, hfreeT⟩))
    · intro h
      rcases Finset.mem_union.mp h with hpair | hfree
      · rcases Finset.mem_inter.mp hpair with ⟨hScoord, hTcoord⟩
        exact Finset.mem_inter.mpr
          ⟨Finset.mem_union.mpr (Or.inl hScoord),
            Finset.mem_union.mpr (Or.inl hTcoord)⟩
      · rcases Finset.mem_inter.mp hfree with ⟨hScoord, hTcoord⟩
        exact Finset.mem_inter.mpr
          ⟨Finset.mem_union.mpr (Or.inr hScoord),
            Finset.mem_union.mpr (Or.inr hTcoord)⟩
  rw [h_inter]
  have hdisj : Disjoint (pairS ∩ pairT) (Sfree ∩ Tfree) := by
    rw [Finset.disjoint_left]
    intro coord hpair hfree
    exact (Finset.disjoint_left.mp
      (binaryLengthThirteenPairSupportFromRightChoices_disjoint_free idx
        (binaryLengthThirteenPairRightChoices idx S)))
      (Finset.mem_inter.mp hpair).1 (hSfree_subset (Finset.mem_inter.mp hfree).1)
  rw [Finset.card_union_of_disjoint hdisj]
  rw [binaryLengthThirteenPairSupport_inter_card]

theorem binaryLengthThirteenBlockCoeffSupportChoiceToPair_mem
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) (same : Nat)
    (choice : binaryLengthThirteenBlockCoeffSupportChoiceType idx)
    (hchoice :
      choice ∈ binaryLengthThirteenBlockCoeffSupportChoices idx row col source same) :
    binaryLengthThirteenBlockCoeffSupportChoiceToPair idx choice ∈
      binaryLengthThirteenBlockCoeffSupportPairs idx row col source same := by
  rw [binaryLengthThirteenBlockCoeffSupportChoices] at hchoice
  by_cases hcond :
      binaryLengthThirteenBlockCoeffSupportCondition idx row col source same
  · simp [hcond, binaryLengthThirteenPairPartChoices,
      binaryLengthThirteenFreePairChoices,
      binaryLengthThirteenFreeIntersectionChoices,
      binaryLengthThirteenFreeSOnlyChoices,
      binaryLengthThirteenFreeTOnlyChoices] at hchoice
    unfold binaryLengthThirteenBlockCoeffSupportCondition at hcond
    let sameSet := choice.1.1
    let rights := choice.1.2
    let I := choice.2.1
    let P := choice.2.2.1
    let Q := choice.2.2.2
    have hI_subset : I ⊆ binaryLengthThirteenBlockFreeCoords idx := hchoice.2.1.1
    have hP_subset_sdiff : P ⊆ binaryLengthThirteenBlockFreeCoords idx \ I :=
      hchoice.2.2.1.1
    have hQ_subset_sdiff : Q ⊆ binaryLengthThirteenBlockFreeCoords idx \ (I ∪ P) :=
      hchoice.2.2.2.1
    have hP_subset : P ⊆ binaryLengthThirteenBlockFreeCoords idx := by
      intro coord hcoord
      exact (Finset.mem_sdiff.mp (hP_subset_sdiff hcoord)).1
    have hQ_subset : Q ⊆ binaryLengthThirteenBlockFreeCoords idx := by
      intro coord hcoord
      exact (Finset.mem_sdiff.mp (hQ_subset_sdiff hcoord)).1
    have hIP_subset : I ∪ P ⊆ binaryLengthThirteenBlockFreeCoords idx := by
      intro coord hcoord
      rcases Finset.mem_union.mp hcoord with hcoord | hcoord
      · exact hI_subset hcoord
      · exact hP_subset hcoord
    have hIQ_subset : I ∪ Q ⊆ binaryLengthThirteenBlockFreeCoords idx := by
      intro coord hcoord
      rcases Finset.mem_union.mp hcoord with hcoord | hcoord
      · exact hI_subset hcoord
      · exact hQ_subset hcoord
    have hIP_card : (I ∪ P).card = row.val := by
      have hdisj : Disjoint I P := by
        rw [Finset.disjoint_left]
        intro coord hIcoord hPcoord
        exact (Finset.mem_sdiff.mp (hP_subset_sdiff hPcoord)).2 hIcoord
      rw [Finset.card_union_of_disjoint hdisj]
      rw [hchoice.2.1.2, hchoice.2.2.1.2]
      omega
    have hIQ_card : (I ∪ Q).card = col.val := by
      have hdisj : Disjoint I Q := by
        rw [Finset.disjoint_left]
        intro coord hIcoord hQcoord
        exact (Finset.mem_sdiff.mp (hQ_subset_sdiff hQcoord)).2
          (Finset.mem_union.mpr (Or.inl hIcoord))
      rw [Finset.card_union_of_disjoint hdisj]
      rw [hchoice.2.1.2, hchoice.2.2.2.2]
      omega
    have hS_card :
        (binaryLengthThirteenPairSupportFromRightChoices idx rights ∪ (I ∪ P)).card =
          idx.k + row.val := by
      simpa [hIP_card, Nat.add_comm, Nat.add_left_comm, Nat.add_assoc] using
        binaryLengthThirteenPairSupportFromRightChoices_union_free_card
          idx rights (I ∪ P) hIP_subset
    have hT_card :
        (binaryLengthThirteenPairSupportForT idx sameSet rights ∪ (I ∪ Q)).card =
          idx.k + col.val := by
      simpa [hIQ_card, Nat.add_comm, Nat.add_left_comm, Nat.add_assoc] using
        binaryLengthThirteenPairSupportForT_union_free_card
          idx sameSet rights (I ∪ Q) hIQ_subset
    have hsame_union :
        binaryLengthThirteenPairSameChoices idx
          (binaryLengthThirteenPairSupportFromRightChoices idx rights ∪ (I ∪ P))
          (binaryLengthThirteenPairSupportForT idx sameSet rights ∪ (I ∪ Q)) =
          sameSet := by
      ext a
      have hleftIP : binaryLengthThirteenPairLeftCoord idx a ∉ I ∪ P := by
        intro h
        exact binaryLengthThirteenPairLeftCoord_not_mem_free idx a (hIP_subset h)
      have hrightIP : binaryLengthThirteenPairRightCoord idx a ∉ I ∪ P := by
        intro h
        exact binaryLengthThirteenPairRightCoord_not_mem_free idx a (hIP_subset h)
      have hleftIQ : binaryLengthThirteenPairLeftCoord idx a ∉ I ∪ Q := by
        intro h
        exact binaryLengthThirteenPairLeftCoord_not_mem_free idx a (hIQ_subset h)
      have hrightIQ : binaryLengthThirteenPairRightCoord idx a ∉ I ∪ Q := by
        intro h
        exact binaryLengthThirteenPairRightCoord_not_mem_free idx a (hIQ_subset h)
      have hleftI : binaryLengthThirteenPairLeftCoord idx a ∉ I := by
        intro h
        exact hleftIP (Finset.mem_union.mpr (Or.inl h))
      have hrightI : binaryLengthThirteenPairRightCoord idx a ∉ I := by
        intro h
        exact hrightIP (Finset.mem_union.mpr (Or.inl h))
      have hleftP : binaryLengthThirteenPairLeftCoord idx a ∉ P := by
        intro h
        exact hleftIP (Finset.mem_union.mpr (Or.inr h))
      have hrightP : binaryLengthThirteenPairRightCoord idx a ∉ P := by
        intro h
        exact hrightIP (Finset.mem_union.mpr (Or.inr h))
      have hleftQ : binaryLengthThirteenPairLeftCoord idx a ∉ Q := by
        intro h
        exact hleftIQ (Finset.mem_union.mpr (Or.inr h))
      have hrightQ : binaryLengthThirteenPairRightCoord idx a ∉ Q := by
        intro h
        exact hrightIQ (Finset.mem_union.mpr (Or.inr h))
      have hbase := congrArg (fun s : Finset (Fin idx.k) => a ∈ s)
        (binaryLengthThirteenPairSupport_same_choices idx sameSet rights)
      simpa [binaryLengthThirteenPairSameChoices, hleftIP, hrightIP,
        hleftIQ, hrightIQ, hleftI, hrightI, hleftP, hrightP, hleftQ, hrightQ] using hbase
    have hfree_inter_eq : (I ∪ P) ∩ (I ∪ Q) = I := by
      ext coord
      constructor
      · intro h
        rcases Finset.mem_inter.mp h with ⟨hIP, hIQ⟩
        rcases Finset.mem_union.mp hIP with hI | hP
        · exact hI
        · rcases Finset.mem_union.mp hIQ with hI | hQ
          · exact hI
          · exact False.elim
              ((Finset.mem_sdiff.mp (hQ_subset_sdiff hQ)).2
                (Finset.mem_union.mpr (Or.inr hP)))
      · intro hI
        exact Finset.mem_inter.mpr
          ⟨Finset.mem_union.mpr (Or.inl hI),
            Finset.mem_union.mpr (Or.inl hI)⟩
    have htotal_inter_eq :
        (binaryLengthThirteenPairSupportFromRightChoices idx rights ∪ (I ∪ P)) ∩
            (binaryLengthThirteenPairSupportForT idx sameSet rights ∪ (I ∪ Q)) =
          (binaryLengthThirteenPairSupportFromRightChoices idx rights ∩
              binaryLengthThirteenPairSupportForT idx sameSet rights) ∪ I := by
      ext coord
      constructor
      · intro h
        rcases Finset.mem_inter.mp h with ⟨hS, hT⟩
        rcases Finset.mem_union.mp hS with hpairS | hfreeS
        · rcases Finset.mem_union.mp hT with hpairT | hfreeT
          · exact Finset.mem_union.mpr
              (Or.inl (Finset.mem_inter.mpr ⟨hpairS, hpairT⟩))
          · exact False.elim
              ((Finset.disjoint_left.mp
                (binaryLengthThirteenPairSupportFromRightChoices_disjoint_free idx rights))
                hpairS (hIQ_subset hfreeT))
        · rcases Finset.mem_union.mp hT with hpairT | hfreeT
          · exact False.elim
              ((Finset.disjoint_left.mp
                (binaryLengthThirteenPairSupportForT_disjoint_free idx sameSet rights))
                hpairT (hIP_subset hfreeS))
          · have hI : coord ∈ I := by
              rw [← hfree_inter_eq]
              exact Finset.mem_inter.mpr ⟨hfreeS, hfreeT⟩
            exact Finset.mem_union.mpr (Or.inr hI)
      · intro h
        rcases Finset.mem_union.mp h with hpair | hI
        · rcases Finset.mem_inter.mp hpair with ⟨hS, hT⟩
          exact Finset.mem_inter.mpr
            ⟨Finset.mem_union.mpr (Or.inl hS),
              Finset.mem_union.mpr (Or.inl hT)⟩
        · exact Finset.mem_inter.mpr
            ⟨Finset.mem_union.mpr
                (Or.inr (Finset.mem_union.mpr (Or.inl hI))),
              Finset.mem_union.mpr
                (Or.inr (Finset.mem_union.mpr (Or.inl hI)))⟩
    have htotal_inter_card :
        ((binaryLengthThirteenPairSupportFromRightChoices idx rights ∪ (I ∪ P)) ∩
            (binaryLengthThirteenPairSupportForT idx sameSet rights ∪ (I ∪ Q))).card =
          source.t := by
      rw [htotal_inter_eq]
      have hdisj :
          Disjoint
            (binaryLengthThirteenPairSupportFromRightChoices idx rights ∩
              binaryLengthThirteenPairSupportForT idx sameSet rights) I := by
        rw [Finset.disjoint_left]
        intro coord hpair hIcoord
        exact (Finset.disjoint_left.mp
          (binaryLengthThirteenPairSupportFromRightChoices_disjoint_free idx rights))
          (Finset.mem_inter.mp hpair).1 (hI_subset hIcoord)
      rw [Finset.card_union_of_disjoint hdisj]
      rw [binaryLengthThirteenPairSupport_inter_card]
      rw [hchoice.1, hchoice.2.1.2]
      omega
    have horbit :
        source =
          binaryOrbitOf
            (binaryWordOfSupport
              (binaryLengthThirteenPairSupportFromRightChoices idx rights ∪ (I ∪ P)))
            (binaryWordOfSupport
              (binaryLengthThirteenPairSupportForT idx sameSet rights ∪ (I ∪ Q))) := by
      apply BinaryOrbitIndex.toFinTriple_injective
      simp [BinaryOrbitIndex.toFinTriple, binaryOrbitOf_wordOfSupport,
        hS_card, hT_card, htotal_inter_card, hcond.1, hcond.2.1]
    rw [binaryLengthThirteenBlockCoeffSupportPairs]
    simp only [Finset.mem_filter]
    refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
    · simp [binaryLengthThirteenBlockCoeffSupportChoiceToPair]
    · simpa [binaryLengthThirteenBlockCoeffSupportChoiceToPair, sameSet, rights, I, P] using
        binaryLengthThirteenPairChoiceValid_union_free idx
          (binaryLengthThirteenPairSupportFromRightChoices idx rights) (I ∪ P)
          (binaryLengthThirteenPairSupportFromRightChoices_valid idx rights) hIP_subset
    · simpa [binaryLengthThirteenBlockCoeffSupportChoiceToPair, sameSet, rights, I, Q] using
        binaryLengthThirteenPairChoiceValid_union_free idx
          (binaryLengthThirteenPairSupportForT idx sameSet rights) (I ∪ Q)
          (binaryLengthThirteenPairSupportForT_valid idx sameSet rights) hIQ_subset
    · simpa [binaryLengthThirteenBlockCoeffSupportChoiceToPair, sameSet, rights, I, P,
        hIP_card, Nat.add_comm, Nat.add_left_comm, Nat.add_assoc] using
        binaryLengthThirteenPairSupportFromRightChoices_union_free_card idx rights
          (I ∪ P) hIP_subset
    · simpa [binaryLengthThirteenBlockCoeffSupportChoiceToPair, sameSet, rights, I, Q,
        hIQ_card, Nat.add_comm, Nat.add_left_comm, Nat.add_assoc] using
        binaryLengthThirteenPairSupportForT_union_free_card idx sameSet rights
          (I ∪ Q) hIQ_subset
    · simpa [binaryLengthThirteenBlockCoeffSupportChoiceToPair, sameSet, rights, I, P, Q,
        Finset.union_assoc] using horbit
    · simpa [binaryLengthThirteenBlockCoeffSupportChoiceToPair, sameSet, rights, I, P, Q,
        Finset.union_assoc, hsame_union] using hchoice.1
  · simp [hcond] at hchoice

theorem binaryLengthThirteenBlockCoeffSupportChoiceToPair_pairToChoice
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) (same : Nat)
    (st : Finset (Fin 13) × Finset (Fin 13))
    (hst : st ∈ binaryLengthThirteenBlockCoeffSupportPairs idx row col source same) :
    binaryLengthThirteenBlockCoeffSupportChoiceToPair idx
        (binaryLengthThirteenBlockCoeffSupportPairToChoice idx st) = st := by
  rw [binaryLengthThirteenBlockCoeffSupportPairs] at hst
  simp only [Finset.mem_filter] at hst
  have hSvalid : binaryLengthThirteenPairChoiceValid idx st.1 := hst.2.1
  have hTvalid : binaryLengthThirteenPairChoiceValid idx st.2 := hst.2.2.1
  apply Prod.ext
  · simp only [binaryLengthThirteenBlockCoeffSupportChoiceToPair,
      binaryLengthThirteenBlockCoeffSupportPairToChoice]
    let Sfree := binaryLengthThirteenBlockFreeSupport idx st.1
    let Tfree := binaryLengthThirteenBlockFreeSupport idx st.2
    calc
      (binaryLengthThirteenPairSupportFromRightChoices idx
            (binaryLengthThirteenPairRightChoices idx st.1) ∪
          Sfree ∩ Tfree) ∪ (Sfree \ Tfree) =
          binaryLengthThirteenPairSupportFromRightChoices idx
              (binaryLengthThirteenPairRightChoices idx st.1) ∪
            ((Sfree ∩ Tfree) ∪ (Sfree \ Tfree)) := by
            rw [Finset.union_assoc]
      _ = binaryLengthThirteenPairSupportFromRightChoices idx
              (binaryLengthThirteenPairRightChoices idx st.1) ∪ Sfree := by
            rw [Finset.union_comm (Sfree ∩ Tfree) (Sfree \ Tfree)]
            rw [Finset.sdiff_union_inter]
      _ = st.1 := by
            exact binaryLengthThirteenPairSupportFromRightChoices_rightChoices_union_freeSupport
              idx st.1 hSvalid
  · simp only [binaryLengthThirteenBlockCoeffSupportChoiceToPair,
      binaryLengthThirteenBlockCoeffSupportPairToChoice]
    let Sfree := binaryLengthThirteenBlockFreeSupport idx st.1
    let Tfree := binaryLengthThirteenBlockFreeSupport idx st.2
    calc
      (binaryLengthThirteenPairSupportForT idx
            (binaryLengthThirteenPairSameChoices idx st.1 st.2)
            (binaryLengthThirteenPairRightChoices idx st.1) ∪
          Sfree ∩ Tfree) ∪ (Tfree \ Sfree) =
          binaryLengthThirteenPairSupportForT idx
              (binaryLengthThirteenPairSameChoices idx st.1 st.2)
              (binaryLengthThirteenPairRightChoices idx st.1) ∪
            ((Sfree ∩ Tfree) ∪ (Tfree \ Sfree)) := by
            rw [Finset.union_assoc]
      _ = binaryLengthThirteenPairSupportForT idx
              (binaryLengthThirteenPairSameChoices idx st.1 st.2)
              (binaryLengthThirteenPairRightChoices idx st.1) ∪ Tfree := by
            rw [Finset.inter_comm Sfree Tfree]
            rw [Finset.union_comm (Tfree ∩ Sfree) (Tfree \ Sfree)]
            rw [Finset.sdiff_union_inter]
      _ = st.2 := by
            exact binaryLengthThirteenPairSupportForT_same_right_union_freeSupport
              idx st.1 st.2 hSvalid hTvalid

theorem binaryLengthThirteenBlockCoeffSupportPairToChoice_mem
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) (same : Nat)
    (st : Finset (Fin 13) × Finset (Fin 13))
    (hst : st ∈ binaryLengthThirteenBlockCoeffSupportPairs idx row col source same) :
    binaryLengthThirteenBlockCoeffSupportPairToChoice idx st ∈
      binaryLengthThirteenBlockCoeffSupportChoices idx row col source same := by
  rw [binaryLengthThirteenBlockCoeffSupportPairs] at hst
  simp only [Finset.mem_filter] at hst
  have hSvalid : binaryLengthThirteenPairChoiceValid idx st.1 := hst.2.1
  have hTvalid : binaryLengthThirteenPairChoiceValid idx st.2 := hst.2.2.1
  have hScard : st.1.card = idx.k + row.val := hst.2.2.2.1
  have hTcard : st.2.card = idx.k + col.val := hst.2.2.2.2.1
  have horbit :
      source = binaryOrbitOf (binaryWordOfSupport st.1) (binaryWordOfSupport st.2) :=
    hst.2.2.2.2.2.1
  have hsame : (binaryLengthThirteenPairSameChoices idx st.1 st.2).card = same :=
    hst.2.2.2.2.2.2
  let Sfree := binaryLengthThirteenBlockFreeSupport idx st.1
  let Tfree := binaryLengthThirteenBlockFreeSupport idx st.2
  let I := Sfree ∩ Tfree
  let P := Sfree \ Tfree
  let Q := Tfree \ Sfree
  have hSfree_subset : Sfree ⊆ binaryLengthThirteenBlockFreeCoords idx := by
    intro coord hcoord
    exact (Finset.mem_inter.mp hcoord).2
  have hTfree_subset : Tfree ⊆ binaryLengthThirteenBlockFreeCoords idx := by
    intro coord hcoord
    exact (Finset.mem_inter.mp hcoord).2
  have hI_subset : I ⊆ binaryLengthThirteenBlockFreeCoords idx := by
    intro coord hcoord
    exact hSfree_subset (Finset.mem_inter.mp hcoord).1
  have hP_subset_sdiff : P ⊆ binaryLengthThirteenBlockFreeCoords idx \ I := by
    intro coord hcoord
    rcases Finset.mem_sdiff.mp hcoord with ⟨hScoord, hnTcoord⟩
    exact Finset.mem_sdiff.mpr
      ⟨hSfree_subset hScoord, by
        intro hIcoord
        exact hnTcoord (Finset.mem_inter.mp hIcoord).2⟩
  have hQ_subset_sdiff : Q ⊆ binaryLengthThirteenBlockFreeCoords idx \ (I ∪ P) := by
    intro coord hcoord
    rcases Finset.mem_sdiff.mp hcoord with ⟨hTcoord, hnScoord⟩
    exact Finset.mem_sdiff.mpr
      ⟨hTfree_subset hTcoord, by
        intro hIPcoord
        rcases Finset.mem_union.mp hIPcoord with hIcoord | hPcoord
        · exact hnScoord (Finset.mem_inter.mp hIcoord).1
        · exact hnScoord (Finset.mem_sdiff.mp hPcoord).1⟩
  have hSfree_card : Sfree.card = row.val := by
    exact binaryLengthThirteenBlockFreeSupport_card_of_valid_card idx st.1 row
      hSvalid hScard
  have hTfree_card : Tfree.card = col.val := by
    exact binaryLengthThirteenBlockFreeSupport_card_of_valid_card idx st.2 col
      hTvalid hTcard
  have hsource_i : source.i = idx.k + row.val := by
    have hi := congrArg (fun orbit : BinaryOrbitIndex 13 => orbit.i) horbit
    simpa [binaryOrbitOf_wordOfSupport, hScard] using hi
  have hsource_j : source.j = idx.k + col.val := by
    have hj := congrArg (fun orbit : BinaryOrbitIndex 13 => orbit.j) horbit
    simpa [binaryOrbitOf_wordOfSupport, hTcard] using hj
  have hsource_t : source.t = (st.1 ∩ st.2).card := by
    have ht := congrArg (fun orbit : BinaryOrbitIndex 13 => orbit.t) horbit
    simpa [binaryOrbitOf_wordOfSupport] using ht
  have hsame_le_idx : same <= idx.k := by
    rw [← hsame]
    have hsubset :
        binaryLengthThirteenPairSameChoices idx st.1 st.2 ⊆
          (Finset.univ : Finset (Fin idx.k)) := by
      intro a _
      simp
    have hle := Finset.card_le_card hsubset
    simpa using hle
  have hinter_decomp :=
    binaryLengthThirteenPairSame_add_freeInter_card_of_valid idx st.1 st.2 hSvalid hTvalid
  have hsource_t_eq_same_add_I : source.t = same + I.card := by
    rw [hsource_t, hinter_decomp, hsame]
  have hI_card : I.card = source.t - same := by
    rw [hsource_t_eq_same_add_I]
    omega
  have hsame_le_source : same <= source.t := by
    rw [hsource_t_eq_same_add_I]
    omega
  have hinter_le_free : source.t - same <= 13 - 2 * idx.k := by
    rw [← hI_card]
    have hle := Finset.card_le_card hI_subset
    rwa [binaryLengthThirteenBlockFreeCoords_card] at hle
  have hinter_le_row : source.t - same <= row.val := by
    rw [← hI_card, ← hSfree_card]
    exact Finset.card_le_card Finset.inter_subset_left
  have hinter_le_col : source.t - same <= col.val := by
    rw [← hI_card, ← hTfree_card]
    exact Finset.card_le_card Finset.inter_subset_right
  have hcond : binaryLengthThirteenBlockCoeffSupportCondition idx row col source same := by
    unfold binaryLengthThirteenBlockCoeffSupportCondition
    exact ⟨hsource_i, hsource_j, hsame_le_idx, hsame_le_source,
      hinter_le_free, hinter_le_row, hinter_le_col⟩
  have hP_card : P.card = row.val - (source.t - same) := by
    have hdisj : Disjoint I P := by
      rw [Finset.disjoint_left]
      intro coord hIcoord hPcoord
      exact (Finset.mem_sdiff.mp hPcoord).2 (Finset.mem_inter.mp hIcoord).2
    have hSfree_decomp : I ∪ P = Sfree := by
      dsimp [I, P]
      rw [Finset.union_comm]
      rw [Finset.sdiff_union_inter]
    have hcard : I.card + P.card = row.val := by
      have hunion := congrArg Finset.card hSfree_decomp
      rw [Finset.card_union_of_disjoint hdisj] at hunion
      rwa [hSfree_card] at hunion
    omega
  have hQ_card : Q.card = col.val - (source.t - same) := by
    have hdisj : Disjoint I Q := by
      rw [Finset.disjoint_left]
      intro coord hIcoord hQcoord
      exact (Finset.mem_sdiff.mp hQcoord).2 (Finset.mem_inter.mp hIcoord).1
    have hTfree_decomp : I ∪ Q = Tfree := by
      dsimp [I, Q]
      rw [Finset.inter_comm Sfree Tfree]
      rw [Finset.union_comm]
      rw [Finset.sdiff_union_inter]
    have hcard : I.card + Q.card = col.val := by
      have hunion := congrArg Finset.card hTfree_decomp
      rw [Finset.card_union_of_disjoint hdisj] at hunion
      rwa [hTfree_card] at hunion
    omega
  rw [binaryLengthThirteenBlockCoeffSupportChoices]
  simp [hcond, binaryLengthThirteenPairPartChoices,
    binaryLengthThirteenFreePairChoices,
    binaryLengthThirteenFreeIntersectionChoices,
    binaryLengthThirteenFreeSOnlyChoices,
    binaryLengthThirteenFreeTOnlyChoices,
    binaryLengthThirteenBlockCoeffSupportPairToChoice, Sfree, Tfree, I, P, Q,
    hsame, hI_subset, hI_card, hP_subset_sdiff, hP_card,
    hQ_subset_sdiff, hQ_card]

theorem binaryLengthThirteenPairRightChoices_union_free
    (idx : BinaryBlockIndex 13) (S F : Finset (Fin 13))
    (hF : F ⊆ binaryLengthThirteenBlockFreeCoords idx) :
    binaryLengthThirteenPairRightChoices idx (S ∪ F) =
      binaryLengthThirteenPairRightChoices idx S := by
  ext a
  have hrightF : binaryLengthThirteenPairRightCoord idx a ∉ F := by
    intro h
    exact binaryLengthThirteenPairRightCoord_not_mem_free idx a (hF h)
  simp [binaryLengthThirteenPairRightChoices, hrightF]

theorem binaryLengthThirteenPairRightChoices_supportFromRightChoices
    (idx : BinaryBlockIndex 13) (rights : Finset (Fin idx.k)) :
    binaryLengthThirteenPairRightChoices idx
        (binaryLengthThirteenPairSupportFromRightChoices idx rights) =
      rights := by
  rcases idx with ⟨k, hk⟩
  have hk' : k ≤ 6 := by omega
  interval_cases k <;> native_decide +revert

theorem binaryLengthThirteenPairSameChoices_union_free
    (idx : BinaryBlockIndex 13) (S T F G : Finset (Fin 13))
    (hF : F ⊆ binaryLengthThirteenBlockFreeCoords idx)
    (hG : G ⊆ binaryLengthThirteenBlockFreeCoords idx) :
    binaryLengthThirteenPairSameChoices idx (S ∪ F) (T ∪ G) =
      binaryLengthThirteenPairSameChoices idx S T := by
  ext a
  have hleftF : binaryLengthThirteenPairLeftCoord idx a ∉ F := by
    intro h
    exact binaryLengthThirteenPairLeftCoord_not_mem_free idx a (hF h)
  have hrightF : binaryLengthThirteenPairRightCoord idx a ∉ F := by
    intro h
    exact binaryLengthThirteenPairRightCoord_not_mem_free idx a (hF h)
  have hleftG : binaryLengthThirteenPairLeftCoord idx a ∉ G := by
    intro h
    exact binaryLengthThirteenPairLeftCoord_not_mem_free idx a (hG h)
  have hrightG : binaryLengthThirteenPairRightCoord idx a ∉ G := by
    intro h
    exact binaryLengthThirteenPairRightCoord_not_mem_free idx a (hG h)
  simp [binaryLengthThirteenPairSameChoices, hleftF, hrightF, hleftG, hrightG]

theorem binaryLengthThirteenBlockFreeSupport_pair_union_free
    (idx : BinaryBlockIndex 13) (S F : Finset (Fin 13))
    (hS : Disjoint S (binaryLengthThirteenBlockFreeCoords idx))
    (hF : F ⊆ binaryLengthThirteenBlockFreeCoords idx) :
    binaryLengthThirteenBlockFreeSupport idx (S ∪ F) = F := by
  unfold binaryLengthThirteenBlockFreeSupport
  ext coord
  constructor
  · intro h
    rcases Finset.mem_inter.mp h with ⟨hunion, hfree⟩
    rcases Finset.mem_union.mp hunion with hScoord | hFcoord
    · exact False.elim ((Finset.disjoint_left.mp hS) hScoord hfree)
    · exact hFcoord
  · intro hFcoord
    exact Finset.mem_inter.mpr
      ⟨Finset.mem_union.mpr (Or.inr hFcoord), hF hFcoord⟩

theorem binaryLengthThirteenBlockCoeffSupportPairToChoice_choiceToPair
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) (same : Nat)
    (choice : binaryLengthThirteenBlockCoeffSupportChoiceType idx)
    (hchoice :
      choice ∈ binaryLengthThirteenBlockCoeffSupportChoices idx row col source same) :
    binaryLengthThirteenBlockCoeffSupportPairToChoice idx
        (binaryLengthThirteenBlockCoeffSupportChoiceToPair idx choice) = choice := by
  rcases choice with ⟨⟨sameSet, rights⟩, I, P, Q⟩
  rw [binaryLengthThirteenBlockCoeffSupportChoices] at hchoice
  by_cases hcond :
      binaryLengthThirteenBlockCoeffSupportCondition idx row col source same
  · simp [hcond, binaryLengthThirteenPairPartChoices,
      binaryLengthThirteenFreePairChoices,
      binaryLengthThirteenFreeIntersectionChoices,
      binaryLengthThirteenFreeSOnlyChoices,
      binaryLengthThirteenFreeTOnlyChoices] at hchoice
    let pairS := binaryLengthThirteenPairSupportFromRightChoices idx rights
    let pairT := binaryLengthThirteenPairSupportForT idx sameSet rights
    have hI_subset : I ⊆ binaryLengthThirteenBlockFreeCoords idx := hchoice.2.1.1
    have hP_subset_sdiff : P ⊆ binaryLengthThirteenBlockFreeCoords idx \ I :=
      hchoice.2.2.1.1
    have hQ_subset_sdiff : Q ⊆ binaryLengthThirteenBlockFreeCoords idx \ (I ∪ P) :=
      hchoice.2.2.2.1
    have hP_subset : P ⊆ binaryLengthThirteenBlockFreeCoords idx := by
      intro coord hcoord
      exact (Finset.mem_sdiff.mp (hP_subset_sdiff hcoord)).1
    have hQ_subset : Q ⊆ binaryLengthThirteenBlockFreeCoords idx := by
      intro coord hcoord
      exact (Finset.mem_sdiff.mp (hQ_subset_sdiff hcoord)).1
    have hIP_subset : I ∪ P ⊆ binaryLengthThirteenBlockFreeCoords idx := by
      intro coord hcoord
      rcases Finset.mem_union.mp hcoord with hcoord | hcoord
      · exact hI_subset hcoord
      · exact hP_subset hcoord
    have hIQ_subset : I ∪ Q ⊆ binaryLengthThirteenBlockFreeCoords idx := by
      intro coord hcoord
      rcases Finset.mem_union.mp hcoord with hcoord | hcoord
      · exact hI_subset hcoord
      · exact hQ_subset hcoord
    have hright :
        binaryLengthThirteenPairRightChoices idx (pairS ∪ (I ∪ P)) = rights := by
      calc
        binaryLengthThirteenPairRightChoices idx (pairS ∪ (I ∪ P)) =
            binaryLengthThirteenPairRightChoices idx pairS := by
              exact binaryLengthThirteenPairRightChoices_union_free idx pairS
                (I ∪ P) hIP_subset
        _ = rights := by
              exact binaryLengthThirteenPairRightChoices_supportFromRightChoices idx rights
    have hsame :
        binaryLengthThirteenPairSameChoices idx (pairS ∪ (I ∪ P)) (pairT ∪ (I ∪ Q)) =
          sameSet := by
      calc
        binaryLengthThirteenPairSameChoices idx (pairS ∪ (I ∪ P)) (pairT ∪ (I ∪ Q)) =
            binaryLengthThirteenPairSameChoices idx pairS pairT := by
              exact binaryLengthThirteenPairSameChoices_union_free idx pairS pairT
                (I ∪ P) (I ∪ Q) hIP_subset hIQ_subset
        _ = sameSet := by
              exact binaryLengthThirteenPairSupport_same_choices idx sameSet rights
    have hSfree :
        binaryLengthThirteenBlockFreeSupport idx (pairS ∪ (I ∪ P)) = I ∪ P := by
      exact binaryLengthThirteenBlockFreeSupport_pair_union_free idx pairS (I ∪ P)
        (binaryLengthThirteenPairSupportFromRightChoices_disjoint_free idx rights)
        hIP_subset
    have hTfree :
        binaryLengthThirteenBlockFreeSupport idx (pairT ∪ (I ∪ Q)) = I ∪ Q := by
      exact binaryLengthThirteenBlockFreeSupport_pair_union_free idx pairT (I ∪ Q)
        (binaryLengthThirteenPairSupportForT_disjoint_free idx sameSet rights)
        hIQ_subset
    have hfree_inter : (I ∪ P) ∩ (I ∪ Q) = I := by
      ext coord
      constructor
      · intro h
        rcases Finset.mem_inter.mp h with ⟨hIP, hIQ⟩
        rcases Finset.mem_union.mp hIP with hI | hP
        · exact hI
        · rcases Finset.mem_union.mp hIQ with hI | hQ
          · exact hI
          · exact False.elim
              ((Finset.mem_sdiff.mp (hQ_subset_sdiff hQ)).2
                (Finset.mem_union.mpr (Or.inr hP)))
      · intro hI
        exact Finset.mem_inter.mpr
          ⟨Finset.mem_union.mpr (Or.inl hI),
            Finset.mem_union.mpr (Or.inl hI)⟩
    have hfree_sdiff_left : (I ∪ P) \ (I ∪ Q) = P := by
      ext coord
      constructor
      · intro h
        rcases Finset.mem_sdiff.mp h with ⟨hIP, hnIQ⟩
        rcases Finset.mem_union.mp hIP with hI | hP
        · exact False.elim (hnIQ (Finset.mem_union.mpr (Or.inl hI)))
        · exact hP
      · intro hP
        exact Finset.mem_sdiff.mpr
          ⟨Finset.mem_union.mpr (Or.inr hP), by
            intro hIQ
            rcases Finset.mem_union.mp hIQ with hI | hQ
            · exact (Finset.mem_sdiff.mp (hP_subset_sdiff hP)).2 hI
            · exact (Finset.mem_sdiff.mp (hQ_subset_sdiff hQ)).2
                (Finset.mem_union.mpr (Or.inr hP))⟩
    have hfree_sdiff_right : (I ∪ Q) \ (I ∪ P) = Q := by
      ext coord
      constructor
      · intro h
        rcases Finset.mem_sdiff.mp h with ⟨hIQ, hnIP⟩
        rcases Finset.mem_union.mp hIQ with hI | hQ
        · exact False.elim (hnIP (Finset.mem_union.mpr (Or.inl hI)))
        · exact hQ
      · intro hQ
        exact Finset.mem_sdiff.mpr
          ⟨Finset.mem_union.mpr (Or.inr hQ), by
            intro hIP
            exact (Finset.mem_sdiff.mp (hQ_subset_sdiff hQ)).2 hIP⟩
    simp [binaryLengthThirteenBlockCoeffSupportPairToChoice,
      binaryLengthThirteenBlockCoeffSupportChoiceToPair, pairS, pairT,
      hright, hsame, hSfree, hTfree, hfree_inter,
      hfree_sdiff_left, hfree_sdiff_right]
  · simp [hcond] at hchoice

theorem binaryLengthThirteenBlockCoeffSupportPairs_card
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) (same : Nat) :
    (binaryLengthThirteenBlockCoeffSupportPairs idx row col source same).card =
      (binaryLengthThirteenBlockCoeffSupportChoices idx row col source same).card := by
  symm
  apply Finset.card_bij
    (fun choice _hchoice =>
      binaryLengthThirteenBlockCoeffSupportChoiceToPair idx choice)
  · intro choice hchoice
    exact binaryLengthThirteenBlockCoeffSupportChoiceToPair_mem
      idx row col source same choice hchoice
  · intro choice₁ hchoice₁ choice₂ hchoice₂ hmap
    calc
      choice₁ =
          binaryLengthThirteenBlockCoeffSupportPairToChoice idx
            (binaryLengthThirteenBlockCoeffSupportChoiceToPair idx choice₁) := by
            exact (binaryLengthThirteenBlockCoeffSupportPairToChoice_choiceToPair
              idx row col source same choice₁ hchoice₁).symm
      _ = binaryLengthThirteenBlockCoeffSupportPairToChoice idx
            (binaryLengthThirteenBlockCoeffSupportChoiceToPair idx choice₂) := by
            rw [hmap]
      _ = choice₂ := by
            exact binaryLengthThirteenBlockCoeffSupportPairToChoice_choiceToPair
              idx row col source same choice₂ hchoice₂
  · intro st hst
    refine ⟨binaryLengthThirteenBlockCoeffSupportPairToChoice idx st, ?_, ?_⟩
    · exact binaryLengthThirteenBlockCoeffSupportPairToChoice_mem idx row col source same st hst
    · exact binaryLengthThirteenBlockCoeffSupportChoiceToPair_pairToChoice
        idx row col source same st hst

theorem binaryLengthThirteenBlockCoeffFormula_eq_supportPairs_sum
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) :
    binaryLengthThirteenBlockCoeffFormula idx row col source =
      (Finset.range (idx.k + 1)).sum (fun same =>
        (-1 : Rat) ^ (idx.k - same) *
          ((binaryLengthThirteenBlockCoeffSupportPairs idx row col source same).card : Rat)) := by
  unfold binaryLengthThirteenBlockCoeffFormula binaryLengthThirteenBlockCoeffFormulaNat
  apply Finset.sum_congr rfl
  intro same _hsame
  rw [binaryLengthThirteenBlockCoeffFormulaTermNat_eq_signed_supportChoices_card]
  rw [← binaryLengthThirteenBlockCoeffSupportPairs_card]

theorem binaryLengthThirteenBlockCompressionEntryExpr_coeff_eq_blockCoeffFormula
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) :
    (binaryLengthThirteenBlockCompressionEntryExpr idx row col).coeff source =
      binaryLengthThirteenBlockCoeffFormula idx row col source := by
  rw [binaryLengthThirteenBlockCompressionEntryExpr_coeff_supportPairs_sum]
  exact (binaryLengthThirteenBlockCoeffFormula_eq_supportPairs_sum idx row col source).symm

theorem binaryLengthThirteenBlockCompressionEntryExpr_coeff_eq_scaledBlockEntryExpr
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) :
    (binaryLengthThirteenBlockCompressionEntryExpr idx row col).coeff source =
      (binaryLengthThirteenScaledBlockEntryExpr idx row col).coeff source := by
  calc
    (binaryLengthThirteenBlockCompressionEntryExpr idx row col).coeff source =
        binaryLengthThirteenBlockCoeffFormula idx row col source := by
          exact binaryLengthThirteenBlockCompressionEntryExpr_coeff_eq_blockCoeffFormula
            idx row col source
    _ = binaryLengthThirteenScaledBetaCoeff idx row col source := by
          exact binaryLengthThirteenBlockCoeffFormula_eq_scaledBetaCoeff idx row col source
    _ = (binaryLengthThirteenScaledBlockEntryExpr idx row col).coeff source := by
          exact (binaryLengthThirteenScaledBlockEntryExpr_coeff_eq_scaledBetaCoeff
            idx row col source).symm

noncomputable def binaryLengthThirteenScaledBlockCompressionCertificate
    (x : BinaryOrbitIndex 13 -> Rat) :
    BinaryBlockDiagonalizationScaledBlockCompressionCertificate
      binaryLengthThirteenBlockScale x :=
  binaryLengthThirteenScaledBlockCompressionCertificateOfCoeff x
    binaryLengthThirteenBlockCompression_const_eq
    binaryLengthThirteenBlockCompressionEntryExpr_coeff_eq_scaledBlockEntryExpr

end

end GijswijtPolak2025
end SDP
end CoveringCodes
