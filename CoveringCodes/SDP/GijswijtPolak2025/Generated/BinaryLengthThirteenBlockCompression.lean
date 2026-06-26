import CoveringCodes.SDP.GijswijtPolak2025.Generated.BinaryLengthThirteenSupport

/-!
# Generated binary length-13 block-compression support

This file records exact finite support definitions for the length-13
Schrijver block-compression path.  It is generated support data and
does not register a numerical lower bound.
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

noncomputable section

set_option maxRecDepth 20000
set_option maxHeartbeats 4000000
set_option linter.constructorNameAsVariable false

/-- Positive scaling `2^k` for the length-13 binary Schrijver blocks. -/
def binaryLengthThirteenBlockScale (idx : BinaryBlockIndex 13) : Rat :=
  (2 : Rat) ^ idx.k

theorem binaryLengthThirteenBlockScale_pos (idx : BinaryBlockIndex 13) :
    0 < binaryLengthThirteenBlockScale idx := by
  unfold binaryLengthThirteenBlockScale
  positivity

/-- Left coordinate of Schrijver pair `a` in block `k`. -/
def binaryLengthThirteenPairLeftCoord
    (idx : BinaryBlockIndex 13) (a : Fin idx.k) : Fin 13 :=
  ⟨a.val, by
    have ha := a.isLt
    have hk := idx.hk
    omega⟩

/-- Right coordinate of Schrijver pair `a` in block `k`. -/
def binaryLengthThirteenPairRightCoord
    (idx : BinaryBlockIndex 13) (a : Fin idx.k) : Fin 13 :=
  ⟨idx.k + a.val, by
    have ha := a.isLt
    have hk := idx.hk
    omega⟩

@[simp] theorem binaryLengthThirteenPairLeftCoord_val
    (idx : BinaryBlockIndex 13) (a : Fin idx.k) :
    (binaryLengthThirteenPairLeftCoord idx a).val = a.val := by
  rfl

@[simp] theorem binaryLengthThirteenPairRightCoord_val
    (idx : BinaryBlockIndex 13) (a : Fin idx.k) :
    (binaryLengthThirteenPairRightCoord idx a).val = idx.k + a.val := by
  rfl

/-- Coordinates not covered by the first `2k` paired coordinates. -/
def binaryLengthThirteenBlockFreeCoords (idx : BinaryBlockIndex 13) :
    Finset (Fin 13) :=
  Finset.univ.filter (fun coord => 2 * idx.k <= coord.val)

theorem binaryLengthThirteenBlockFreeCoords_card
    (idx : BinaryBlockIndex 13) :
    (binaryLengthThirteenBlockFreeCoords idx).card = 13 - 2 * idx.k := by
  rcases idx with ⟨k, hk⟩
  have hk' : k ≤ 6 := by omega
  interval_cases k <;> native_decide +revert

/-- Left coordinates of the paired part of a block. -/
def binaryLengthThirteenBlockPairedLeftCoords
    (idx : BinaryBlockIndex 13) : Finset (Fin 13) :=
  Finset.univ.image (binaryLengthThirteenPairLeftCoord idx)

theorem binaryLengthThirteenBlockPairedLeftCoords_card
    (idx : BinaryBlockIndex 13) :
    (binaryLengthThirteenBlockPairedLeftCoords idx).card = idx.k := by
  unfold binaryLengthThirteenBlockPairedLeftCoords
  rw [Finset.card_image_of_injective]
  · simp
  · intro a b h
    have hval := congrArg (fun x : Fin 13 => x.val) h
    dsimp [binaryLengthThirteenPairLeftCoord] at hval
    exact Fin.ext hval

/-- Right coordinates of the paired part of a block. -/
def binaryLengthThirteenBlockPairedRightCoords
    (idx : BinaryBlockIndex 13) : Finset (Fin 13) :=
  Finset.univ.image (binaryLengthThirteenPairRightCoord idx)

theorem binaryLengthThirteenBlockPairedRightCoords_card
    (idx : BinaryBlockIndex 13) :
    (binaryLengthThirteenBlockPairedRightCoords idx).card = idx.k := by
  unfold binaryLengthThirteenBlockPairedRightCoords
  rw [Finset.card_image_of_injective]
  · simp
  · intro a b h
    have hval := congrArg (fun x : Fin 13 => x.val) h
    dsimp [binaryLengthThirteenPairRightCoord] at hval
    exact Fin.ext (Nat.add_left_cancel hval)

/-- A support chooses exactly one side from every Schrijver pair. -/
def binaryLengthThirteenPairChoiceValid
    (idx : BinaryBlockIndex 13) (S : Finset (Fin 13)) : Prop :=
  forall a : Fin idx.k,
    (binaryLengthThirteenPairLeftCoord idx a ∈ S ∧
        binaryLengthThirteenPairRightCoord idx a ∉ S) ∨
      (binaryLengthThirteenPairLeftCoord idx a ∉ S ∧
        binaryLengthThirteenPairRightCoord idx a ∈ S)

instance binaryLengthThirteenPairChoiceValid_decidable
    (idx : BinaryBlockIndex 13) (S : Finset (Fin 13)) :
    Decidable (binaryLengthThirteenPairChoiceValid idx S) := by
  unfold binaryLengthThirteenPairChoiceValid
  infer_instance

/-- Pair positions where a support chooses the right side. -/
def binaryLengthThirteenPairRightChoices
    (idx : BinaryBlockIndex 13) (S : Finset (Fin 13)) :
    Finset (Fin idx.k) :=
  Finset.univ.filter (fun a => binaryLengthThirteenPairRightCoord idx a ∈ S)

/-- Pair positions where two supports choose the same side. -/
def binaryLengthThirteenPairSameChoices
    (idx : BinaryBlockIndex 13)
    (S T : Finset (Fin 13)) : Finset (Fin idx.k) :=
  Finset.univ.filter (fun a =>
    (binaryLengthThirteenPairLeftCoord idx a ∈ S ∧
        binaryLengthThirteenPairLeftCoord idx a ∈ T) ∨
      (binaryLengthThirteenPairRightCoord idx a ∈ S ∧
        binaryLengthThirteenPairRightCoord idx a ∈ T))

/-- Pair positions where two supports choose opposite sides. -/
def binaryLengthThirteenPairOppositeChoices
    (idx : BinaryBlockIndex 13)
    (S T : Finset (Fin 13)) : Finset (Fin idx.k) :=
  Finset.univ.filter (fun a =>
    (binaryLengthThirteenPairLeftCoord idx a ∈ S ∧
        binaryLengthThirteenPairRightCoord idx a ∈ T) ∨
      (binaryLengthThirteenPairRightCoord idx a ∈ S ∧
        binaryLengthThirteenPairLeftCoord idx a ∈ T))

/-- Free-coordinate part of a support for one block. -/
def binaryLengthThirteenBlockFreeSupport
    (idx : BinaryBlockIndex 13) (S : Finset (Fin 13)) :
    Finset (Fin 13) :=
  S ∩ binaryLengthThirteenBlockFreeCoords idx

theorem binaryLengthThirteenBlockFreeSupport_card_of_valid_card
    (idx : BinaryBlockIndex 13) (S : Finset (Fin 13))
    (row : BinaryBlockCoord idx) :
    binaryLengthThirteenPairChoiceValid idx S ->
    S.card = idx.k + row.val ->
    (binaryLengthThirteenBlockFreeSupport idx S).card = row.val := by
  rcases idx with ⟨k, hk⟩
  have hk' : k ≤ 6 := by omega
  interval_cases k <;> native_decide +revert

theorem binaryLengthThirteenBlockFreeSupport_card_le_free
    (idx : BinaryBlockIndex 13) (S : Finset (Fin 13)) :
    (binaryLengthThirteenBlockFreeSupport idx S).card <= 13 - 2 * idx.k := by
  have hsubset : binaryLengthThirteenBlockFreeSupport idx S ⊆
      binaryLengthThirteenBlockFreeCoords idx := by
    intro coord hcoord
    exact (Finset.mem_inter.mp hcoord).2
  have hle := Finset.card_le_card hsubset
  rw [binaryLengthThirteenBlockFreeCoords_card] at hle
  exact hle

/-- Free-coordinate choices with fixed free intersection size. -/
def binaryLengthThirteenFreeIntersectionChoices
    (idx : BinaryBlockIndex 13) (interFree : Nat) :
    Finset (Finset (Fin 13)) :=
  (binaryLengthThirteenBlockFreeCoords idx).powersetCard interFree

def binaryLengthThirteenFreeSOnlyChoices
    (idx : BinaryBlockIndex 13) (I : Finset (Fin 13))
    (row interFree : Nat) :
    Finset (Finset (Fin 13)) :=
  (binaryLengthThirteenBlockFreeCoords idx \ I).powersetCard
    (row - interFree)

def binaryLengthThirteenFreeTOnlyChoices
    (idx : BinaryBlockIndex 13) (I P : Finset (Fin 13))
    (col interFree : Nat) :
    Finset (Finset (Fin 13)) :=
  (binaryLengthThirteenBlockFreeCoords idx \ (I ∪ P)).powersetCard
    (col - interFree)

def binaryLengthThirteenFreePairChoices
    (idx : BinaryBlockIndex 13) (row col interFree : Nat) :
    Finset (Sigma (fun _I : Finset (Fin 13) =>
      Sigma (fun _P : Finset (Fin 13) => Finset (Fin 13)))) :=
  (binaryLengthThirteenFreeIntersectionChoices idx interFree).sigma (fun I =>
    (binaryLengthThirteenFreeSOnlyChoices idx I row interFree).sigma (fun P =>
      binaryLengthThirteenFreeTOnlyChoices idx I P col interFree))

theorem binaryLengthThirteenFreeTOnlyBase_card
    (idx : BinaryBlockIndex 13) {I P : Finset (Fin 13)}
    {row interFree : Nat}
    (hI : I ∈ binaryLengthThirteenFreeIntersectionChoices idx interFree)
    (hP : P ∈ binaryLengthThirteenFreeSOnlyChoices idx I row interFree)
    (hinter_row : interFree <= row) :
    (binaryLengthThirteenBlockFreeCoords idx \ (I ∪ P)).card =
      13 - 2 * idx.k - row := by
  have hIinfo := Finset.mem_powersetCard.mp hI
  have hPinfo := Finset.mem_powersetCard.mp hP
  have hI_subset : I ⊆ binaryLengthThirteenBlockFreeCoords idx := hIinfo.1
  have hP_subset : P ⊆ binaryLengthThirteenBlockFreeCoords idx \ I := hPinfo.1
  have hP_subset_free : P ⊆ binaryLengthThirteenBlockFreeCoords idx := by
    intro coord hcoord
    exact (Finset.mem_sdiff.mp (hP_subset hcoord)).1
  have hdisj : Disjoint I P := by
    rw [Finset.disjoint_left]
    intro coord hIcoord hPcoord
    exact (Finset.mem_sdiff.mp (hP_subset hPcoord)).2 hIcoord
  have hunion_subset : I ∪ P ⊆ binaryLengthThirteenBlockFreeCoords idx := by
    intro coord hcoord
    rcases Finset.mem_union.mp hcoord with hcoord | hcoord
    · exact hI_subset hcoord
    · exact hP_subset_free hcoord
  have hcard_union : (I ∪ P).card = row := by
    rw [Finset.card_union_of_disjoint hdisj]
    rw [hIinfo.2, hPinfo.2]
    omega
  rw [Finset.card_sdiff_of_subset hunion_subset]
  rw [binaryLengthThirteenBlockFreeCoords_card, hcard_union]

theorem binaryLengthThirteenFreePairChoices_card
    (idx : BinaryBlockIndex 13) (row col interFree : Nat)
    (hinter_row : interFree <= row) :
    (binaryLengthThirteenFreePairChoices idx row col interFree).card =
      Nat.choose (13 - 2 * idx.k) interFree *
        Nat.choose (13 - 2 * idx.k - interFree) (row - interFree) *
          Nat.choose (13 - 2 * idx.k - row) (col - interFree) := by
  unfold binaryLengthThirteenFreePairChoices
  calc
    ((binaryLengthThirteenFreeIntersectionChoices idx interFree).sigma
        (fun I =>
          (binaryLengthThirteenFreeSOnlyChoices idx I row interFree).sigma
            (fun P => binaryLengthThirteenFreeTOnlyChoices idx I P col interFree))).card =
        ∑ I ∈ binaryLengthThirteenFreeIntersectionChoices idx interFree,
          ((binaryLengthThirteenFreeSOnlyChoices idx I row interFree).sigma
            (fun P => binaryLengthThirteenFreeTOnlyChoices idx I P col interFree)).card := by
          simp
    _ = ∑ I ∈ binaryLengthThirteenFreeIntersectionChoices idx interFree,
          Nat.choose (13 - 2 * idx.k - interFree) (row - interFree) *
            Nat.choose (13 - 2 * idx.k - row) (col - interFree) := by
          apply Finset.sum_congr rfl
          intro I hI
          calc
            ((binaryLengthThirteenFreeSOnlyChoices idx I row interFree).sigma
                (fun P => binaryLengthThirteenFreeTOnlyChoices idx I P col interFree)).card =
                ∑ P ∈ binaryLengthThirteenFreeSOnlyChoices idx I row interFree,
                  (binaryLengthThirteenFreeTOnlyChoices idx I P col interFree).card := by
                  simp
            _ = ∑ P ∈ binaryLengthThirteenFreeSOnlyChoices idx I row interFree,
                Nat.choose (13 - 2 * idx.k - row) (col - interFree) := by
                  apply Finset.sum_congr rfl
                  intro P hP
                  unfold binaryLengthThirteenFreeTOnlyChoices
                  rw [Finset.card_powersetCard]
                  rw [binaryLengthThirteenFreeTOnlyBase_card idx hI hP hinter_row]
            _ = Nat.choose (13 - 2 * idx.k - interFree) (row - interFree) *
                Nat.choose (13 - 2 * idx.k - row) (col - interFree) := by
                  rw [Finset.sum_const, nsmul_eq_mul]
                  change (binaryLengthThirteenFreeSOnlyChoices idx I row interFree).card *
                      Nat.choose (13 - 2 * idx.k - row) (col - interFree) =
                    Nat.choose (13 - 2 * idx.k - interFree) (row - interFree) *
                      Nat.choose (13 - 2 * idx.k - row) (col - interFree)
                  congr 1
                  unfold binaryLengthThirteenFreeSOnlyChoices
                  rw [Finset.card_powersetCard]
                  have hIinfo := Finset.mem_powersetCard.mp hI
                  have hcard :
                      (binaryLengthThirteenBlockFreeCoords idx \ I).card =
                        13 - 2 * idx.k - interFree := by
                    rw [Finset.card_sdiff_of_subset hIinfo.1]
                    rw [binaryLengthThirteenBlockFreeCoords_card, hIinfo.2]
                  rw [hcard]
    _ =
        Nat.choose (13 - 2 * idx.k) interFree *
          (Nat.choose (13 - 2 * idx.k - interFree) (row - interFree) *
            Nat.choose (13 - 2 * idx.k - row) (col - interFree)) := by
          rw [Finset.sum_const, nsmul_eq_mul]
          change (binaryLengthThirteenFreeIntersectionChoices idx interFree).card *
              (Nat.choose (13 - 2 * idx.k - interFree) (row - interFree) *
                Nat.choose (13 - 2 * idx.k - row) (col - interFree)) =
            Nat.choose (13 - 2 * idx.k) interFree *
              (Nat.choose (13 - 2 * idx.k - interFree) (row - interFree) *
                Nat.choose (13 - 2 * idx.k - row) (col - interFree))
          congr 1
          unfold binaryLengthThirteenFreeIntersectionChoices
          rw [Finset.card_powersetCard]
          rw [binaryLengthThirteenBlockFreeCoords_card]
    _ = Nat.choose (13 - 2 * idx.k) interFree *
        Nat.choose (13 - 2 * idx.k - interFree) (row - interFree) *
          Nat.choose (13 - 2 * idx.k - row) (col - interFree) := by
          ring

/-- Paired-coordinate choices: same positions and right-side choices for `S`. -/
def binaryLengthThirteenPairPartChoices
    (idx : BinaryBlockIndex 13) (same : Nat) :
    Finset (Finset (Fin idx.k) × Finset (Fin idx.k)) :=
  ((Finset.univ : Finset (Fin idx.k)).powersetCard same).product
    (Finset.univ : Finset (Fin idx.k)).powerset

theorem binaryLengthThirteenPairPartChoices_card
    (idx : BinaryBlockIndex 13) (same : Nat) :
    (binaryLengthThirteenPairPartChoices idx same).card =
      Nat.choose idx.k same * 2 ^ idx.k := by
  unfold binaryLengthThirteenPairPartChoices
  change (((Finset.univ : Finset (Fin idx.k)).powersetCard same) ×ˢ
      (Finset.univ : Finset (Fin idx.k)).powerset).card =
    Nat.choose idx.k same * 2 ^ idx.k
  rw [Finset.card_product]
  rw [Finset.card_powersetCard]
  rw [Finset.card_powerset]
  simp

def binaryLengthThirteenBlockCoeffSupportCondition
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) (same : Nat) : Prop :=
  let interFree := source.t - same
  source.i = idx.k + row.val ∧ source.j = idx.k + col.val ∧
    same <= idx.k ∧ same <= source.t ∧ interFree <= 13 - 2 * idx.k ∧
    interFree <= row.val ∧ interFree <= col.val

instance binaryLengthThirteenBlockCoeffSupportCondition_decidable
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) (same : Nat) :
    Decidable (binaryLengthThirteenBlockCoeffSupportCondition
      idx row col source same) := by
  unfold binaryLengthThirteenBlockCoeffSupportCondition
  infer_instance

def binaryLengthThirteenBlockCoeffSupportChoices
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) (same : Nat) :
    Finset ((Finset (Fin idx.k) × Finset (Fin idx.k)) ×
      Sigma (fun _I : Finset (Fin 13) =>
        Sigma (fun _P : Finset (Fin 13) => Finset (Fin 13)))) :=
  let interFree := source.t - same
  if binaryLengthThirteenBlockCoeffSupportCondition idx row col source same then
    (binaryLengthThirteenPairPartChoices idx same).product
      (binaryLengthThirteenFreePairChoices idx row.val col.val interFree)
  else
    ∅

def binaryLengthThirteenBlockCoeffSignlessTerm
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) (same : Nat) : Nat :=
  let interFree := source.t - same
  if binaryLengthThirteenBlockCoeffSupportCondition idx row col source same then
    2 ^ idx.k *
      Nat.choose idx.k same *
      Nat.choose (13 - 2 * idx.k) interFree *
      Nat.choose (13 - 2 * idx.k - interFree) (row.val - interFree) *
      Nat.choose (13 - 2 * idx.k - row.val) (col.val - interFree)
  else
    0

theorem binaryLengthThirteenBlockCoeffSupportChoices_card
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) (same : Nat) :
    (binaryLengthThirteenBlockCoeffSupportChoices idx row col source same).card =
      binaryLengthThirteenBlockCoeffSignlessTerm idx row col source same := by
  unfold binaryLengthThirteenBlockCoeffSupportChoices binaryLengthThirteenBlockCoeffSignlessTerm
  by_cases hcond : binaryLengthThirteenBlockCoeffSupportCondition idx row col source same
  · simp [hcond]
    rw [binaryLengthThirteenPairPartChoices_card]
    rw [binaryLengthThirteenFreePairChoices_card]
    · ring
    · unfold binaryLengthThirteenBlockCoeffSupportCondition at hcond
      exact hcond.2.2.2.2.2.1
  · simp [hcond]

def binaryLengthThirteenBlockCoeffSupportPairs
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) (same : Nat) :
    Finset (Finset (Fin 13) × Finset (Fin 13)) :=
  ((Finset.univ : Finset (Finset (Fin 13))).product
    (Finset.univ : Finset (Finset (Fin 13)))).filter (fun st =>
      binaryLengthThirteenPairChoiceValid idx st.1 ∧
        binaryLengthThirteenPairChoiceValid idx st.2 ∧
        st.1.card = idx.k + row.val ∧
        st.2.card = idx.k + col.val ∧
        source = binaryOrbitOf
          (binaryWordOfSupport st.1) (binaryWordOfSupport st.2) ∧
        (binaryLengthThirteenPairSameChoices idx st.1 st.2).card = same)

def binaryLengthThirteenBlockCoeffSupportPairBase
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) :
    Finset (Finset (Fin 13) × Finset (Fin 13)) :=
  ((Finset.univ : Finset (Finset (Fin 13))).product
    (Finset.univ : Finset (Finset (Fin 13)))).filter (fun st =>
      binaryLengthThirteenPairChoiceValid idx st.1 ∧
        binaryLengthThirteenPairChoiceValid idx st.2 ∧
        st.1.card = idx.k + row.val ∧
        st.2.card = idx.k + col.val ∧
        source = binaryOrbitOf
          (binaryWordOfSupport st.1) (binaryWordOfSupport st.2))

theorem binaryLengthThirteenBlockCoeffSupportPairs_eq_base_filter
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) (same : Nat) :
    binaryLengthThirteenBlockCoeffSupportPairs idx row col source same =
      (binaryLengthThirteenBlockCoeffSupportPairBase idx row col source).filter (fun st =>
        (binaryLengthThirteenPairSameChoices idx st.1 st.2).card = same) := by
  ext st
  simp [binaryLengthThirteenBlockCoeffSupportPairs,
    binaryLengthThirteenBlockCoeffSupportPairBase, and_assoc]

theorem binaryLengthThirteenBlockCoeffSupportPairBase_same_mem_range
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13)
    (st : Finset (Fin 13) × Finset (Fin 13))
    (_hst : st ∈ binaryLengthThirteenBlockCoeffSupportPairBase idx row col source) :
    (binaryLengthThirteenPairSameChoices idx st.1 st.2).card ∈
      Finset.range (idx.k + 1) := by
  have hsubset :
      binaryLengthThirteenPairSameChoices idx st.1 st.2 ⊆
        (Finset.univ : Finset (Fin idx.k)) := by
    intro a _
    simp
  have hle := Finset.card_le_card hsubset
  simp at hle
  exact Finset.mem_range.mpr (Nat.lt_succ_of_le hle)

def binaryLengthThirteenPairSupportFromRightChoices
    (idx : BinaryBlockIndex 13) (rights : Finset (Fin idx.k)) :
    Finset (Fin 13) :=
  (Finset.univ : Finset (Fin idx.k)).image (fun a =>
    if a ∈ rights then
      binaryLengthThirteenPairRightCoord idx a
    else
      binaryLengthThirteenPairLeftCoord idx a)

def binaryLengthThirteenPairSupportForT
    (idx : BinaryBlockIndex 13) (same rights : Finset (Fin idx.k)) :
    Finset (Fin 13) :=
  (Finset.univ : Finset (Fin idx.k)).image (fun a =>
    if (a ∈ same ∧ a ∈ rights) ∨ (a ∉ same ∧ a ∉ rights) then
      binaryLengthThirteenPairRightCoord idx a
    else
      binaryLengthThirteenPairLeftCoord idx a)

theorem binaryLengthThirteenPairSupportFromRightChoices_valid
    (idx : BinaryBlockIndex 13) (rights : Finset (Fin idx.k)) :
    binaryLengthThirteenPairChoiceValid idx
      (binaryLengthThirteenPairSupportFromRightChoices idx rights) := by
  rcases idx with ⟨k, hk⟩
  have hk' : k ≤ 6 := by omega
  interval_cases k <;> native_decide +revert

theorem binaryLengthThirteenPairSupportForT_valid
    (idx : BinaryBlockIndex 13) (same rights : Finset (Fin idx.k)) :
    binaryLengthThirteenPairChoiceValid idx
      (binaryLengthThirteenPairSupportForT idx same rights) := by
  rcases idx with ⟨k, hk⟩
  have hk' : k ≤ 6 := by omega
  interval_cases k <;> native_decide +revert

theorem binaryLengthThirteenPairSupportFromRightChoices_card
    (idx : BinaryBlockIndex 13) (rights : Finset (Fin idx.k)) :
    (binaryLengthThirteenPairSupportFromRightChoices idx rights).card = idx.k := by
  rcases idx with ⟨k, hk⟩
  have hk' : k ≤ 6 := by omega
  interval_cases k <;> native_decide +revert

theorem binaryLengthThirteenPairSupportForT_card
    (idx : BinaryBlockIndex 13) (same rights : Finset (Fin idx.k)) :
    (binaryLengthThirteenPairSupportForT idx same rights).card = idx.k := by
  rcases idx with ⟨k, hk⟩
  have hk' : k ≤ 6 := by omega
  interval_cases k <;> native_decide +revert

theorem binaryLengthThirteenPairSupport_same_choices
    (idx : BinaryBlockIndex 13) (same rights : Finset (Fin idx.k)) :
    binaryLengthThirteenPairSameChoices idx
      (binaryLengthThirteenPairSupportFromRightChoices idx rights)
      (binaryLengthThirteenPairSupportForT idx same rights) = same := by
  rcases idx with ⟨k, hk⟩
  have hk' : k ≤ 6 := by omega
  interval_cases k <;> native_decide +revert

theorem binaryLengthThirteenPairSupportFromRightChoices_disjoint_free
    (idx : BinaryBlockIndex 13) (rights : Finset (Fin idx.k)) :
    Disjoint (binaryLengthThirteenPairSupportFromRightChoices idx rights)
      (binaryLengthThirteenBlockFreeCoords idx) := by
  rcases idx with ⟨k, hk⟩
  have hk' : k ≤ 6 := by omega
  interval_cases k <;> native_decide +revert

theorem binaryLengthThirteenPairSupportForT_disjoint_free
    (idx : BinaryBlockIndex 13) (same rights : Finset (Fin idx.k)) :
    Disjoint (binaryLengthThirteenPairSupportForT idx same rights)
      (binaryLengthThirteenBlockFreeCoords idx) := by
  rcases idx with ⟨k, hk⟩
  have hk' : k ≤ 6 := by omega
  interval_cases k <;> native_decide +revert

theorem binaryLengthThirteenPairSupport_inter_card
    (idx : BinaryBlockIndex 13) (same rights : Finset (Fin idx.k)) :
    (binaryLengthThirteenPairSupportFromRightChoices idx rights ∩
        binaryLengthThirteenPairSupportForT idx same rights).card = same.card := by
  rcases idx with ⟨k, hk⟩
  have hk' : k ≤ 6 := by omega
  interval_cases k <;> native_decide +revert

theorem binaryLengthThirteenPairLeftCoord_not_mem_free
    (idx : BinaryBlockIndex 13) (a : Fin idx.k) :
    binaryLengthThirteenPairLeftCoord idx a ∉
      binaryLengthThirteenBlockFreeCoords idx := by
  have ha := a.isLt
  simp [binaryLengthThirteenBlockFreeCoords, binaryLengthThirteenPairLeftCoord]
  omega

theorem binaryLengthThirteenPairRightCoord_not_mem_free
    (idx : BinaryBlockIndex 13) (a : Fin idx.k) :
    binaryLengthThirteenPairRightCoord idx a ∉
      binaryLengthThirteenBlockFreeCoords idx := by
  have ha := a.isLt
  simp [binaryLengthThirteenBlockFreeCoords, binaryLengthThirteenPairRightCoord]
  omega

theorem binaryLengthThirteenPairChoiceValid_union_free
    (idx : BinaryBlockIndex 13) (S F : Finset (Fin 13))
    (hvalid : binaryLengthThirteenPairChoiceValid idx S)
    (hF : F ⊆ binaryLengthThirteenBlockFreeCoords idx) :
    binaryLengthThirteenPairChoiceValid idx (S ∪ F) := by
  intro a
  have hleftF : binaryLengthThirteenPairLeftCoord idx a ∉ F := by
    intro h
    exact binaryLengthThirteenPairLeftCoord_not_mem_free idx a (hF h)
  have hrightF : binaryLengthThirteenPairRightCoord idx a ∉ F := by
    intro h
    exact binaryLengthThirteenPairRightCoord_not_mem_free idx a (hF h)
  rcases hvalid a with hleft | hright
  · exact Or.inl
      ⟨Finset.mem_union.mpr (Or.inl hleft.1), by
        intro hmem
        rcases Finset.mem_union.mp hmem with hmem | hmem
        · exact hleft.2 hmem
        · exact hrightF hmem⟩
  · exact Or.inr
      ⟨by
        intro hmem
        rcases Finset.mem_union.mp hmem with hmem | hmem
        · exact hright.1 hmem
        · exact hleftF hmem,
        Finset.mem_union.mpr (Or.inl hright.2)⟩

theorem binaryLengthThirteenPairSupportFromRightChoices_union_free_card
    (idx : BinaryBlockIndex 13) (rights : Finset (Fin idx.k))
    (F : Finset (Fin 13))
    (hF : F ⊆ binaryLengthThirteenBlockFreeCoords idx) :
    (binaryLengthThirteenPairSupportFromRightChoices idx rights ∪ F).card =
      idx.k + F.card := by
  have hdisj : Disjoint (binaryLengthThirteenPairSupportFromRightChoices idx rights) F := by
    rw [Finset.disjoint_left]
    intro coord hpair hfree
    exact (Finset.disjoint_left.mp
      (binaryLengthThirteenPairSupportFromRightChoices_disjoint_free idx rights))
      hpair (hF hfree)
  rw [Finset.card_union_of_disjoint hdisj]
  rw [binaryLengthThirteenPairSupportFromRightChoices_card]

theorem binaryLengthThirteenPairSupportForT_union_free_card
    (idx : BinaryBlockIndex 13) (same rights : Finset (Fin idx.k))
    (F : Finset (Fin 13))
    (hF : F ⊆ binaryLengthThirteenBlockFreeCoords idx) :
    (binaryLengthThirteenPairSupportForT idx same rights ∪ F).card =
      idx.k + F.card := by
  have hdisj : Disjoint (binaryLengthThirteenPairSupportForT idx same rights) F := by
    rw [Finset.disjoint_left]
    intro coord hpair hfree
    exact (Finset.disjoint_left.mp
      (binaryLengthThirteenPairSupportForT_disjoint_free idx same rights))
      hpair (hF hfree)
  rw [Finset.card_union_of_disjoint hdisj]
  rw [binaryLengthThirteenPairSupportForT_card]

/--
One signed pair factor in the concrete length-13 Schrijver compression
matrix.  For pair `(a,k+a)`, the value is `1` on `(1,0)`, `-1` on
`(0,1)`, and `0` otherwise.
-/
def binaryLengthThirteenPairSign
    (w : QaryWord 2 13) (k a : Nat) : Rat :=
  if hleft : a < 13 then
    if hright : k + a < 13 then
      if w ⟨a, hleft⟩ = 1 ∧ w ⟨k + a, hright⟩ = 0 then 1
      else if w ⟨a, hleft⟩ = 0 ∧ w ⟨k + a, hright⟩ = 1 then -1
      else 0
    else 0
  else 0

theorem binaryLengthThirteenPairSign_wordOfSupport
    (S : Finset (Fin 13)) {k a : Nat}
    (hleft : a < 13) (hright : k + a < 13) :
    binaryLengthThirteenPairSign (binaryWordOfSupport S) k a =
      if (⟨a, hleft⟩ : Fin 13) ∈ S ∧
          (⟨k + a, hright⟩ : Fin 13) ∉ S then
        1
      else if (⟨a, hleft⟩ : Fin 13) ∉ S ∧
          (⟨k + a, hright⟩ : Fin 13) ∈ S then
        -1
      else
        0 := by
  unfold binaryLengthThirteenPairSign
  rw [dif_pos hleft, dif_pos hright]
  simp [binaryWordOfSupport]

theorem binaryLengthThirteenPairSign_wordOfSupport_fin
    (idx : BinaryBlockIndex 13)
    (S : Finset (Fin 13)) (a : Fin idx.k) :
    binaryLengthThirteenPairSign (binaryWordOfSupport S) idx.k a.val =
      if binaryLengthThirteenPairLeftCoord idx a ∈ S ∧
          binaryLengthThirteenPairRightCoord idx a ∉ S then
        1
      else if binaryLengthThirteenPairLeftCoord idx a ∉ S ∧
          binaryLengthThirteenPairRightCoord idx a ∈ S then
        -1
      else
        0 := by
  have hleft : a.val < 13 := by
    have ha := a.isLt
    have hk := idx.hk
    omega
  have hright : idx.k + a.val < 13 := by
    have ha := a.isLt
    have hk := idx.hk
    omega
  simpa [binaryLengthThirteenPairLeftCoord, binaryLengthThirteenPairRightCoord] using
    (binaryLengthThirteenPairSign_wordOfSupport S hleft hright)

theorem binaryLengthThirteenPairSign_prod_eq_fin_prod
    (idx : BinaryBlockIndex 13) (S : Finset (Fin 13)) :
    (Finset.range idx.k).prod
        (fun a => binaryLengthThirteenPairSign (binaryWordOfSupport S) idx.k a) =
      (Finset.univ : Finset (Fin idx.k)).prod
        (fun a => binaryLengthThirteenPairSign
          (binaryWordOfSupport S) idx.k a.val) := by
  simpa using
    (Fin.prod_univ_eq_prod_range
      (fun a => binaryLengthThirteenPairSign (binaryWordOfSupport S) idx.k a)
      idx.k).symm

theorem binaryLengthThirteenPairSign_prod_wordOfSupport_eq_fin_prod
    (idx : BinaryBlockIndex 13) (S : Finset (Fin 13)) :
    (Finset.range idx.k).prod
        (fun a => binaryLengthThirteenPairSign (binaryWordOfSupport S) idx.k a) =
      (Finset.univ : Finset (Fin idx.k)).prod
        (fun a =>
          if binaryLengthThirteenPairLeftCoord idx a ∈ S ∧
              binaryLengthThirteenPairRightCoord idx a ∉ S then
            (1 : Rat)
          else if binaryLengthThirteenPairLeftCoord idx a ∉ S ∧
              binaryLengthThirteenPairRightCoord idx a ∈ S then
            -1
          else
            0) := by
  rw [binaryLengthThirteenPairSign_prod_eq_fin_prod]
  apply Finset.prod_congr rfl
  intro a _
  rw [binaryLengthThirteenPairSign_wordOfSupport_fin]

theorem binaryLengthThirteenPairSign_wordOfSupport_fin_eq_if_right_of_valid
    (idx : BinaryBlockIndex 13) (S : Finset (Fin 13))
    (hvalid : binaryLengthThirteenPairChoiceValid idx S)
    (a : Fin idx.k) :
    binaryLengthThirteenPairSign (binaryWordOfSupport S) idx.k a.val =
      if a ∈ binaryLengthThirteenPairRightChoices idx S then (-1 : Rat) else 1 := by
  rw [binaryLengthThirteenPairSign_wordOfSupport_fin]
  unfold binaryLengthThirteenPairRightChoices
  simp only [Finset.mem_filter, Finset.mem_univ, true_and]
  rcases hvalid a with hleft | hright
  · simp [hleft.1, hleft.2]
  · simp [hright.1, hright.2]

theorem binaryLengthThirteenPairSign_prod_wordOfSupport_eq_neg_one_pow_right_of_valid
    (idx : BinaryBlockIndex 13) (S : Finset (Fin 13))
    (hvalid : binaryLengthThirteenPairChoiceValid idx S) :
    (Finset.range idx.k).prod
        (fun a => binaryLengthThirteenPairSign (binaryWordOfSupport S) idx.k a) =
      (-1 : Rat) ^ (binaryLengthThirteenPairRightChoices idx S).card := by
  rw [binaryLengthThirteenPairSign_prod_eq_fin_prod]
  calc
    (Finset.univ : Finset (Fin idx.k)).prod
        (fun a => binaryLengthThirteenPairSign
          (binaryWordOfSupport S) idx.k a.val) =
        ∏ a : Fin idx.k,
          if a ∈ binaryLengthThirteenPairRightChoices idx S then
            (-1 : Rat)
          else
            1 := by
          apply Finset.prod_congr rfl
          intro a _
          exact binaryLengthThirteenPairSign_wordOfSupport_fin_eq_if_right_of_valid
            idx S hvalid a
    _ = ∏ a ∈ binaryLengthThirteenPairRightChoices idx S, (-1 : Rat) := by
          rw [Finset.prod_ite_mem_eq]
    _ = (-1 : Rat) ^ (binaryLengthThirteenPairRightChoices idx S).card := by
          rw [Finset.prod_eq_pow_card]
          intro a _
          rfl

theorem binaryLengthThirteenPairSame_or_opposite_of_valid
    (idx : BinaryBlockIndex 13)
    (S T : Finset (Fin 13))
    (hS : binaryLengthThirteenPairChoiceValid idx S)
    (hT : binaryLengthThirteenPairChoiceValid idx T)
    (a : Fin idx.k) :
    a ∈ binaryLengthThirteenPairSameChoices idx S T ∨
      a ∈ binaryLengthThirteenPairOppositeChoices idx S T := by
  unfold binaryLengthThirteenPairSameChoices binaryLengthThirteenPairOppositeChoices
  simp only [Finset.mem_filter, Finset.mem_univ, true_and]
  rcases hS a with hSL | hSR
  · rcases hT a with hTL | hTR
    · exact Or.inl (Or.inl ⟨hSL.1, hTL.1⟩)
    · exact Or.inr (Or.inl ⟨hSL.1, hTR.2⟩)
  · rcases hT a with hTL | hTR
    · exact Or.inr (Or.inr ⟨hSR.2, hTL.1⟩)
    · exact Or.inl (Or.inr ⟨hSR.2, hTR.2⟩)

theorem binaryLengthThirteenPairSame_disjoint_opposite
    (idx : BinaryBlockIndex 13)
    (S T : Finset (Fin 13))
    (hS : binaryLengthThirteenPairChoiceValid idx S)
    (hT : binaryLengthThirteenPairChoiceValid idx T) :
    Disjoint (binaryLengthThirteenPairSameChoices idx S T)
      (binaryLengthThirteenPairOppositeChoices idx S T) := by
  rw [Finset.disjoint_left]
  intro a hsame hopp
  unfold binaryLengthThirteenPairSameChoices at hsame
  unfold binaryLengthThirteenPairOppositeChoices at hopp
  simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hsame hopp
  rcases hsame with hLL | hRR
  · rcases hopp with hLR | hRL
    · rcases hT a with hTL | hTR
      · exact hTL.2 hLR.2
      · exact hTR.1 hLL.2
    · rcases hS a with hSL | hSR
      · exact hSL.2 hRL.1
      · exact hSR.1 hLL.1
  · rcases hopp with hLR | hRL
    · rcases hS a with hSL | hSR
      · exact hSL.2 hRR.1
      · exact hSR.1 hLR.1
    · rcases hT a with hTL | hTR
      · exact hTL.2 hRR.2
      · exact hTR.1 hRL.2

theorem binaryLengthThirteenPairSame_union_opposite_of_valid
    (idx : BinaryBlockIndex 13)
    (S T : Finset (Fin 13))
    (hS : binaryLengthThirteenPairChoiceValid idx S)
    (hT : binaryLengthThirteenPairChoiceValid idx T) :
    binaryLengthThirteenPairSameChoices idx S T ∪
        binaryLengthThirteenPairOppositeChoices idx S T =
      Finset.univ := by
  ext a
  constructor
  · intro _
    simp
  · intro _
    exact Finset.mem_union.mpr
      (binaryLengthThirteenPairSame_or_opposite_of_valid idx S T hS hT a)

theorem binaryLengthThirteenPairOppositeChoices_card_of_valid
    (idx : BinaryBlockIndex 13)
    (S T : Finset (Fin 13))
    (hS : binaryLengthThirteenPairChoiceValid idx S)
    (hT : binaryLengthThirteenPairChoiceValid idx T) :
    (binaryLengthThirteenPairOppositeChoices idx S T).card =
      idx.k - (binaryLengthThirteenPairSameChoices idx S T).card := by
  have hunion := binaryLengthThirteenPairSame_union_opposite_of_valid idx S T hS hT
  have hdisj := binaryLengthThirteenPairSame_disjoint_opposite idx S T hS hT
  have hcard := congrArg Finset.card hunion
  rw [Finset.card_union_of_disjoint hdisj] at hcard
  simp at hcard
  omega

theorem binaryLengthThirteenPairSign_mul_eq_same_indicator_of_valid
    (idx : BinaryBlockIndex 13)
    (S T : Finset (Fin 13))
    (hS : binaryLengthThirteenPairChoiceValid idx S)
    (hT : binaryLengthThirteenPairChoiceValid idx T)
    (a : Fin idx.k) :
    binaryLengthThirteenPairSign (binaryWordOfSupport S) idx.k a.val *
        binaryLengthThirteenPairSign (binaryWordOfSupport T) idx.k a.val =
      if a ∈ binaryLengthThirteenPairSameChoices idx S T then
        (1 : Rat)
      else
        -1 := by
  rw [binaryLengthThirteenPairSign_wordOfSupport_fin]
  rw [binaryLengthThirteenPairSign_wordOfSupport_fin]
  unfold binaryLengthThirteenPairSameChoices
  simp only [Finset.mem_filter, Finset.mem_univ, true_and]
  rcases hS a with hSL | hSR
  · rcases hT a with hTL | hTR
    · simp [hSL.1, hSL.2, hTL.1, hTL.2]
    · simp [hSL.1, hSL.2, hTR.1, hTR.2]
  · rcases hT a with hTL | hTR
    · simp [hSR.1, hSR.2, hTL.1, hTL.2]
    · simp [hSR.1, hSR.2, hTR.1, hTR.2]

theorem binaryLengthThirteenPairSign_prod_mul_eq_neg_one_pow_opposite_of_valid
    (idx : BinaryBlockIndex 13)
    (S T : Finset (Fin 13))
    (hS : binaryLengthThirteenPairChoiceValid idx S)
    (hT : binaryLengthThirteenPairChoiceValid idx T) :
    (Finset.range idx.k).prod
        (fun a => binaryLengthThirteenPairSign (binaryWordOfSupport S) idx.k a) *
      (Finset.range idx.k).prod
        (fun a => binaryLengthThirteenPairSign (binaryWordOfSupport T) idx.k a) =
      (-1 : Rat) ^ (idx.k - (binaryLengthThirteenPairSameChoices idx S T).card) := by
  rw [binaryLengthThirteenPairSign_prod_eq_fin_prod]
  rw [binaryLengthThirteenPairSign_prod_eq_fin_prod]
  rw [← Finset.prod_mul_distrib]
  calc
    (Finset.univ : Finset (Fin idx.k)).prod
        (fun x => binaryLengthThirteenPairSign
          (binaryWordOfSupport S) idx.k x.val *
            binaryLengthThirteenPairSign
              (binaryWordOfSupport T) idx.k x.val) =
        ∏ a : Fin idx.k,
          if a ∈ binaryLengthThirteenPairOppositeChoices idx S T then
            (-1 : Rat)
          else
            1 := by
          apply Finset.prod_congr rfl
          intro a _
          have hmul := binaryLengthThirteenPairSign_mul_eq_same_indicator_of_valid
            idx S T hS hT a
          have hcover := binaryLengthThirteenPairSame_or_opposite_of_valid idx S T hS hT a
          have hdisj := binaryLengthThirteenPairSame_disjoint_opposite idx S T hS hT
          by_cases hsame : a ∈ binaryLengthThirteenPairSameChoices idx S T
          · have hnopp : a ∉ binaryLengthThirteenPairOppositeChoices idx S T := by
              intro hopp
              exact (Finset.disjoint_left.mp hdisj) hsame hopp
            simp [hmul, hsame, hnopp]
          · have hopp : a ∈ binaryLengthThirteenPairOppositeChoices idx S T := by
              rcases hcover with hcover | hcover
              · exact False.elim (hsame hcover)
              · exact hcover
            simp [hmul, hsame, hopp]
    _ = ∏ a ∈ binaryLengthThirteenPairOppositeChoices idx S T, (-1 : Rat) := by
          rw [Finset.prod_ite_mem_eq]
    _ = (-1 : Rat) ^ (binaryLengthThirteenPairOppositeChoices idx S T).card := by
          rw [Finset.prod_eq_pow_card]
          intro a _
          rfl
    _ = (-1 : Rat) ^ (idx.k -
        (binaryLengthThirteenPairSameChoices idx S T).card) := by
          rw [binaryLengthThirteenPairOppositeChoices_card_of_valid idx S T hS hT]

theorem binaryLengthThirteenPairSign_wordOfSupport_fin_eq_zero_of_not_choice
    (idx : BinaryBlockIndex 13)
    (S : Finset (Fin 13)) (a : Fin idx.k)
    (hnot :
      ¬ ((binaryLengthThirteenPairLeftCoord idx a ∈ S ∧
            binaryLengthThirteenPairRightCoord idx a ∉ S) ∨
          (binaryLengthThirteenPairLeftCoord idx a ∉ S ∧
            binaryLengthThirteenPairRightCoord idx a ∈ S))) :
    binaryLengthThirteenPairSign (binaryWordOfSupport S) idx.k a.val = 0 := by
  rw [binaryLengthThirteenPairSign_wordOfSupport_fin]
  by_cases hleft : binaryLengthThirteenPairLeftCoord idx a ∈ S ∧
      binaryLengthThirteenPairRightCoord idx a ∉ S
  · exact False.elim (hnot (Or.inl hleft))
  · by_cases hright : binaryLengthThirteenPairLeftCoord idx a ∉ S ∧
        binaryLengthThirteenPairRightCoord idx a ∈ S
    · exact False.elim (hnot (Or.inr hright))
    · simp [hleft, hright]

theorem binaryLengthThirteenPairSign_prod_wordOfSupport_eq_zero_of_not_valid
    (idx : BinaryBlockIndex 13) (S : Finset (Fin 13))
    (hnot : ¬ binaryLengthThirteenPairChoiceValid idx S) :
    (Finset.range idx.k).prod
        (fun a => binaryLengthThirteenPairSign (binaryWordOfSupport S) idx.k a) =
      0 := by
  rw [binaryLengthThirteenPairSign_prod_eq_fin_prod]
  unfold binaryLengthThirteenPairChoiceValid at hnot
  push Not at hnot
  rcases hnot with ⟨a, ha⟩
  have hnotChoice :
      ¬ ((binaryLengthThirteenPairLeftCoord idx a ∈ S ∧
            binaryLengthThirteenPairRightCoord idx a ∉ S) ∨
          (binaryLengthThirteenPairLeftCoord idx a ∉ S ∧
            binaryLengthThirteenPairRightCoord idx a ∈ S)) := by
    intro hchoice
    rcases hchoice with hleft | hright
    · exact hleft.2 (ha.1 hleft.1)
    · exact (ha.2 hright.1) hright.2
  exact Finset.prod_eq_zero (Finset.mem_univ a)
    (binaryLengthThirteenPairSign_wordOfSupport_fin_eq_zero_of_not_choice
      idx S a hnotChoice)

/--
Concrete signed compression matrix from binary words to the dependent
Schrijver block-coordinate space.  For a block coordinate `(k,row)`,
the row represents shell `k + row`; outside that shell the entry is zero.
-/
def binaryLengthThirteenBlockCompressionMatrix :
    Matrix (QaryWord 2 13)
      (Sigma (fun idx : BinaryBlockIndex 13 => BinaryBlockCoord idx)) Rat :=
  fun w p =>
    if (binarySupport 13 w).card = p.1.k + p.2.val then
      (Finset.range p.1.k).prod
        (fun a => binaryLengthThirteenPairSign w p.1.k a)
    else 0

/-- Single-block version of the length-13 compression matrix. -/
def binaryLengthThirteenBlockCompressionMatrixFor
    (idx : BinaryBlockIndex 13) :
    Matrix (QaryWord 2 13) (BinaryBlockCoord idx) Rat :=
  fun w coord =>
    if (binarySupport 13 w).card = idx.k + coord.val then
      (Finset.range idx.k).prod
        (fun a => binaryLengthThirteenPairSign w idx.k a)
    else 0

theorem binaryLengthThirteenBlockCompressionMatrixFor_apply
    (idx : BinaryBlockIndex 13) (w : QaryWord 2 13)
    (coord : BinaryBlockCoord idx) :
    binaryLengthThirteenBlockCompressionMatrixFor idx w coord =
      binaryLengthThirteenBlockCompressionMatrix w ⟨idx, coord⟩ := by
  rfl

theorem binaryLengthThirteenBlockCompressionMatrixFor_wordOfSupport
    (idx : BinaryBlockIndex 13) (S : Finset (Fin 13))
    (coord : BinaryBlockCoord idx) :
    binaryLengthThirteenBlockCompressionMatrixFor idx
        (binaryWordOfSupport S) coord =
      if S.card = idx.k + coord.val then
        (Finset.range idx.k).prod
          (fun a => binaryLengthThirteenPairSign
            (binaryWordOfSupport S) idx.k a)
      else
        0 := by
  simp [binaryLengthThirteenBlockCompressionMatrixFor]

theorem binaryLengthThirteenBlockCompressionMatrixFor_wordOfSupport_eq_of_valid_card
    (idx : BinaryBlockIndex 13) (S : Finset (Fin 13))
    (coord : BinaryBlockCoord idx)
    (hvalid : binaryLengthThirteenPairChoiceValid idx S)
    (hcard : S.card = idx.k + coord.val) :
    binaryLengthThirteenBlockCompressionMatrixFor idx
        (binaryWordOfSupport S) coord =
      (-1 : Rat) ^ (binaryLengthThirteenPairRightChoices idx S).card := by
  rw [binaryLengthThirteenBlockCompressionMatrixFor_wordOfSupport]
  simp [hcard,
    binaryLengthThirteenPairSign_prod_wordOfSupport_eq_neg_one_pow_right_of_valid
      idx S hvalid]

theorem binaryLengthThirteenBlockCompressionMatrixFor_wordOfSupport_eq_zero_of_not_valid
    (idx : BinaryBlockIndex 13) (S : Finset (Fin 13))
    (coord : BinaryBlockCoord idx)
    (hnot : ¬ binaryLengthThirteenPairChoiceValid idx S) :
    binaryLengthThirteenBlockCompressionMatrixFor idx
        (binaryWordOfSupport S) coord = 0 := by
  rw [binaryLengthThirteenBlockCompressionMatrixFor_wordOfSupport]
  have hprod := binaryLengthThirteenPairSign_prod_wordOfSupport_eq_zero_of_not_valid
    idx S hnot
  by_cases hcard : S.card = idx.k + coord.val <;> simp [hcard, hprod]

theorem binaryLengthThirteenBlockCompressionMatrixFor_wordOfSupport_eq_zero_of_card_ne
    (idx : BinaryBlockIndex 13) (S : Finset (Fin 13))
    (coord : BinaryBlockCoord idx)
    (hcard : S.card ≠ idx.k + coord.val) :
    binaryLengthThirteenBlockCompressionMatrixFor idx
        (binaryWordOfSupport S) coord = 0 := by
  rw [binaryLengthThirteenBlockCompressionMatrixFor_wordOfSupport]
  simp [hcard]

/--
Actual linear-expression entry produced by the word-space congruence
`T^T A T` for one length-13 block.
-/
def binaryLengthThirteenBlockCompressionEntryExpr
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx) :
    LinExpr (BinaryOrbitIndex 13) :=
  LinExpr.sum Finset.univ (fun u =>
    LinExpr.sum Finset.univ (fun v =>
      LinExpr.smul
        (binaryLengthThirteenBlockCompressionMatrixFor idx u row *
          binaryLengthThirteenBlockCompressionMatrixFor idx v col)
        (LinExpr.var (binaryOrbitOf u v))))

theorem binaryLengthThirteenBlockCompressionEntryExpr_eval
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (x : BinaryOrbitIndex 13 -> Rat) :
    (binaryLengthThirteenBlockCompressionEntryExpr idx row col).eval x =
      congruenceMatrix
        (binaryLengthThirteenBlockCompressionMatrixFor idx)
        (binaryTerwilligerMatrix x) row col := by
  unfold binaryLengthThirteenBlockCompressionEntryExpr congruenceMatrix
    binaryTerwilligerMatrix
  simp only [LinExpr.eval_sum, LinExpr.eval_smul, LinExpr.eval_var]
  apply Finset.sum_congr rfl
  intro u _
  apply Finset.sum_congr rfl
  intro v _
  ring

theorem binaryLengthThirteenBlockCompressionEntryExpr_coeff_sum
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) :
    (binaryLengthThirteenBlockCompressionEntryExpr idx row col).coeff source =
      Finset.univ.sum (fun u : QaryWord 2 13 =>
        Finset.univ.sum (fun v : QaryWord 2 13 =>
          binaryLengthThirteenBlockCompressionMatrixFor idx u row *
            binaryLengthThirteenBlockCompressionMatrixFor idx v col *
              (if source = binaryOrbitOf u v then (1 : Rat) else 0))) := by
  unfold binaryLengthThirteenBlockCompressionEntryExpr
  simp only [LinExpr.sum]
  apply Finset.sum_congr rfl
  intro u _
  apply Finset.sum_congr rfl
  intro v _
  simp [LinExpr.smul, LinExpr.var]

theorem binaryLengthThirteenBlockCompressionEntryExpr_coeff_support_sum
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) :
    (binaryLengthThirteenBlockCompressionEntryExpr idx row col).coeff source =
      Finset.univ.sum (fun S : Finset (Fin 13) =>
        Finset.univ.sum (fun T : Finset (Fin 13) =>
          binaryLengthThirteenBlockCompressionMatrixFor idx
              (binaryWordOfSupport S) row *
            binaryLengthThirteenBlockCompressionMatrixFor idx
              (binaryWordOfSupport T) col *
              (if source = binaryOrbitOf
                  (binaryWordOfSupport S) (binaryWordOfSupport T) then
                (1 : Rat)
              else 0))) := by
  rw [binaryLengthThirteenBlockCompressionEntryExpr_coeff_sum]
  rw [binary_sum_support (n := 13)
    (f := fun u : QaryWord 2 13 =>
      Finset.univ.sum (fun v : QaryWord 2 13 =>
        binaryLengthThirteenBlockCompressionMatrixFor idx u row *
          binaryLengthThirteenBlockCompressionMatrixFor idx v col *
            (if source = binaryOrbitOf u v then (1 : Rat) else 0)))]
  apply Finset.sum_congr rfl
  intro S _
  rw [binary_sum_support (n := 13)
    (f := fun v : QaryWord 2 13 =>
      binaryLengthThirteenBlockCompressionMatrixFor idx
          (binaryWordOfSupport S) row *
        binaryLengthThirteenBlockCompressionMatrixFor idx v col *
          (if source = binaryOrbitOf (binaryWordOfSupport S) v then
            (1 : Rat)
          else 0))]

theorem binaryLengthThirteenBlockCompressionEntryExpr_coeff_support_matrix_expanded
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) :
    (binaryLengthThirteenBlockCompressionEntryExpr idx row col).coeff source =
      Finset.univ.sum (fun S : Finset (Fin 13) =>
        Finset.univ.sum (fun T : Finset (Fin 13) =>
          (if S.card = idx.k + row.val then
            (Finset.range idx.k).prod
              (fun a => binaryLengthThirteenPairSign
                (binaryWordOfSupport S) idx.k a)
          else
            0) *
          (if T.card = idx.k + col.val then
            (Finset.range idx.k).prod
              (fun a => binaryLengthThirteenPairSign
                (binaryWordOfSupport T) idx.k a)
          else
            0) *
          (if source = binaryOrbitOf
              (binaryWordOfSupport S) (binaryWordOfSupport T) then
            (1 : Rat)
          else
            0))) := by
  rw [binaryLengthThirteenBlockCompressionEntryExpr_coeff_support_sum]
  apply Finset.sum_congr rfl
  intro S _
  apply Finset.sum_congr rfl
  intro T _
  rw [binaryLengthThirteenBlockCompressionMatrixFor_wordOfSupport]
  rw [binaryLengthThirteenBlockCompressionMatrixFor_wordOfSupport]

theorem binaryLengthThirteenBlockCompressionEntryExpr_coeff_support_pair_indicator
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) :
    (binaryLengthThirteenBlockCompressionEntryExpr idx row col).coeff source =
      Finset.univ.sum (fun S : Finset (Fin 13) =>
        Finset.univ.sum (fun T : Finset (Fin 13) =>
          if binaryLengthThirteenPairChoiceValid idx S ∧
              binaryLengthThirteenPairChoiceValid idx T ∧
              S.card = idx.k + row.val ∧
              T.card = idx.k + col.val ∧
              source = binaryOrbitOf
                (binaryWordOfSupport S) (binaryWordOfSupport T) then
            (-1 : Rat) ^
              (idx.k - (binaryLengthThirteenPairSameChoices idx S T).card)
          else
            0)) := by
  rw [binaryLengthThirteenBlockCompressionEntryExpr_coeff_support_matrix_expanded]
  apply Finset.sum_congr rfl
  intro S _
  apply Finset.sum_congr rfl
  intro T _
  by_cases hSvalid : binaryLengthThirteenPairChoiceValid idx S
  · by_cases hTvalid : binaryLengthThirteenPairChoiceValid idx T
    · by_cases hScard : S.card = idx.k + row.val
      · by_cases hTcard : T.card = idx.k + col.val
        · by_cases horbit :
              source = binaryOrbitOf
                (binaryWordOfSupport S) (binaryWordOfSupport T)
          · simp [hSvalid, hTvalid, hScard, hTcard, horbit,
              binaryLengthThirteenPairSign_prod_mul_eq_neg_one_pow_opposite_of_valid
                idx S T hSvalid hTvalid]
          · simp [hSvalid, hTvalid, hScard, hTcard, horbit]
        · simp [hSvalid, hTvalid, hScard, hTcard]
      · simp [hSvalid, hTvalid, hScard]
    · have hTprod :=
        binaryLengthThirteenPairSign_prod_wordOfSupport_eq_zero_of_not_valid
          idx T hTvalid
      simp [hSvalid, hTvalid, hTprod]
  · have hSprod :=
      binaryLengthThirteenPairSign_prod_wordOfSupport_eq_zero_of_not_valid
        idx S hSvalid
    simp [hSvalid, hSprod]

theorem binaryLengthThirteenBlockCompressionEntryExpr_coeff_supportPairs_sum
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) :
    (binaryLengthThirteenBlockCompressionEntryExpr idx row col).coeff source =
      (Finset.range (idx.k + 1)).sum (fun same =>
        (-1 : Rat) ^ (idx.k - same) *
          ((binaryLengthThirteenBlockCoeffSupportPairs idx row col source same).card : Rat)) := by
  rw [binaryLengthThirteenBlockCompressionEntryExpr_coeff_support_pair_indicator]
  let base := binaryLengthThirteenBlockCoeffSupportPairBase idx row col source
  let classOf : Finset (Fin 13) × Finset (Fin 13) -> Nat :=
    fun st => (binaryLengthThirteenPairSameChoices idx st.1 st.2).card
  have hmaps :
      (base : Set (Finset (Fin 13) × Finset (Fin 13))).MapsTo classOf
        ((Finset.range (idx.k + 1)) : Set Nat) := by
    intro st _hst
    have hsubset :
        binaryLengthThirteenPairSameChoices idx st.1 st.2 ⊆
          (Finset.univ : Finset (Fin idx.k)) := by
      intro a _
      simp
    have hle := Finset.card_le_card hsubset
    simp at hle
    exact Finset.mem_range.mpr (Nat.lt_succ_of_le hle)
  calc
    (Finset.univ.sum (fun S : Finset (Fin 13) =>
        Finset.univ.sum (fun T : Finset (Fin 13) =>
          if binaryLengthThirteenPairChoiceValid idx S ∧
              binaryLengthThirteenPairChoiceValid idx T ∧
              S.card = idx.k + row.val ∧
              T.card = idx.k + col.val ∧
              source = binaryOrbitOf
                (binaryWordOfSupport S) (binaryWordOfSupport T) then
            (-1 : Rat) ^
              (idx.k - (binaryLengthThirteenPairSameChoices idx S T).card)
          else
            0))) =
        (∑ st ∈ base, (-1 : Rat) ^ (idx.k - classOf st)) := by
          change
            (Finset.univ.sum (fun S : Finset (Fin 13) =>
              Finset.univ.sum (fun T : Finset (Fin 13) =>
                if binaryLengthThirteenPairChoiceValid idx S ∧
                    binaryLengthThirteenPairChoiceValid idx T ∧
                    S.card = idx.k + row.val ∧
                    T.card = idx.k + col.val ∧
                    source = binaryOrbitOf
                      (binaryWordOfSupport S) (binaryWordOfSupport T) then
                  (-1 : Rat) ^
                    (idx.k - (binaryLengthThirteenPairSameChoices idx S T).card)
                else
                  0))) =
              ((((Finset.univ : Finset (Finset (Fin 13))).product
                (Finset.univ : Finset (Finset (Fin 13)))).filter (fun st =>
                  binaryLengthThirteenPairChoiceValid idx st.1 ∧
                    binaryLengthThirteenPairChoiceValid idx st.2 ∧
                    st.1.card = idx.k + row.val ∧
                    st.2.card = idx.k + col.val ∧
                    source = binaryOrbitOf
                      (binaryWordOfSupport st.1) (binaryWordOfSupport st.2))).sum
                (fun st => (-1 : Rat) ^
                  (idx.k - (binaryLengthThirteenPairSameChoices idx st.1 st.2).card)))
          rw [← Finset.sum_product']
          simp [Finset.sum_filter]
    _ = ∑ same ∈ Finset.range (idx.k + 1),
          ∑ st ∈ base with classOf st = same,
            (-1 : Rat) ^ (idx.k - classOf st) := by
          exact (Finset.sum_fiberwise_of_maps_to hmaps
            (fun st => (-1 : Rat) ^ (idx.k - classOf st))).symm
    _ = ∑ same ∈ Finset.range (idx.k + 1),
          (-1 : Rat) ^ (idx.k - same) *
            ((binaryLengthThirteenBlockCoeffSupportPairs idx row col source same).card : Rat) := by
          apply Finset.sum_congr rfl
          intro same _
          rw [← binaryLengthThirteenBlockCoeffSupportPairs_eq_base_filter]
          calc
            ∑ st ∈ binaryLengthThirteenBlockCoeffSupportPairs idx row col source same,
                (-1 : Rat) ^ (idx.k - classOf st) =
                ∑ _st ∈ binaryLengthThirteenBlockCoeffSupportPairs idx row col source same,
                  (-1 : Rat) ^ (idx.k - same) := by
                  apply Finset.sum_congr rfl
                  intro st hst
                  have hsame : classOf st = same := by
                    rw [binaryLengthThirteenBlockCoeffSupportPairs] at hst
                    simp only [Finset.mem_filter] at hst
                    change (binaryLengthThirteenPairSameChoices idx st.1 st.2).card = same
                    exact hst.2.2.2.2.2.2
                  rw [hsame]
            _ = (-1 : Rat) ^ (idx.k - same) *
                ((binaryLengthThirteenBlockCoeffSupportPairs idx row col source same).card : Rat) := by
                  rw [Finset.sum_const, nsmul_eq_mul]
                  ring

/--
Linear-expression form of one scaled Schrijver block entry.  This is
the blockwise target expected from a one-block compression congruence.
-/
def binaryLengthThirteenScaledBlockEntryExpr
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx) :
    LinExpr (BinaryOrbitIndex 13) :=
  LinExpr.smul (binaryLengthThirteenBlockScale idx)
    (binaryBlockEntryExpr 13 idx.k (fun source => LinExpr.var source)
      row.val col.val)

theorem binaryLengthThirteenScaledBlockEntryExpr_eval
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (x : BinaryOrbitIndex 13 -> Rat) :
    (binaryLengthThirteenScaledBlockEntryExpr idx row col).eval x =
      binaryLengthThirteenBlockScale idx * binaryBlockForIndex x idx row col := by
  simp [binaryLengthThirteenScaledBlockEntryExpr, binaryBlockForIndex, binaryBlock]

theorem binaryLengthThirteenBlockCompression_const_eq
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx) :
    (binaryLengthThirteenBlockCompressionEntryExpr idx row col).const =
      (binaryLengthThirteenScaledBlockEntryExpr idx row col).const := by
  have hleft :
      (binaryLengthThirteenBlockCompressionEntryExpr idx row col).const = 0 := by
    unfold binaryLengthThirteenBlockCompressionEntryExpr
    simp only [LinExpr.sum]
    apply Finset.sum_eq_zero
    intro u _
    apply Finset.sum_eq_zero
    intro v _
    simp [LinExpr.smul, LinExpr.var]
  have hblock :
      (binaryBlockEntryExpr 13 idx.k (fun source => LinExpr.var source)
        row.val col.val).const = 0 := by
    unfold binaryBlockEntryExpr
    simp only [LinExpr.sum]
    apply Finset.sum_eq_zero
    intro t _
    by_cases ht_i : t <= idx.k + row.val
    · by_cases ht_j : t <= idx.k + col.val
      · by_cases hij : idx.k + row.val + (idx.k + col.val) <= 13 + t
        · simp [ht_i, ht_j, hij, LinExpr.smul, LinExpr.var]
        · simp [ht_i, ht_j, hij, LinExpr.constExpr]
      · simp [ht_i, ht_j, LinExpr.constExpr]
    · simp [ht_i, LinExpr.constExpr]
  have hright :
      (binaryLengthThirteenScaledBlockEntryExpr idx row col).const = 0 := by
    simp [binaryLengthThirteenScaledBlockEntryExpr, LinExpr.smul, hblock]
  rw [hleft, hright]

/--
Finite closed-form coefficient for the length-13 block compression.
The parameter `same` counts the paired coordinates where both words
choose the same side of the Schrijver pair; `source.t - same` is the
intersection size contributed by the remaining coordinates.
-/
def binaryLengthThirteenBlockCoeffFormulaTermNat
    (k row col : Nat) (sourceFin : Fin 560) (same : Nat) : Rat :=
  let source := binaryLengthThirteenOrbitOfFin sourceFin
  let free := 13 - 2 * k
  let interFree := source.t - same
  if 2 * k <= 13 ∧ row < free + 1 ∧ col < free + 1 ∧
      source.i = k + row ∧ source.j = k + col ∧ same <= k ∧
      same <= source.t ∧ interFree <= free ∧ interFree <= row ∧
      interFree <= col then
    (-1 : Rat) ^ (k - same) *
      (2 : Rat) ^ k *
      (Nat.choose k same : Rat) *
      (Nat.choose free interFree : Rat) *
      (Nat.choose (free - interFree) (row - interFree) : Rat) *
      (Nat.choose (free - row) (col - interFree) : Rat)
  else
    0

theorem binaryLengthThirteenBlockCoeffFormulaTermNat_eq_signed_signless
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) (same : Nat) :
    binaryLengthThirteenBlockCoeffFormulaTermNat
        idx.k row.val col.val (binaryLengthThirteenOrbitToFin source) same =
      (-1 : Rat) ^ (idx.k - same) *
        (binaryLengthThirteenBlockCoeffSignlessTerm idx row col source same : Rat) := by
  have hsource := binaryLengthThirteenOrbitOfFin_toFin source
  have hk : 2 * idx.k <= 13 := idx.hk
  have hrow : row.val < 13 - 2 * idx.k + 1 := row.isLt
  have hcol : col.val < 13 - 2 * idx.k + 1 := col.isLt
  unfold binaryLengthThirteenBlockCoeffFormulaTermNat
    binaryLengthThirteenBlockCoeffSignlessTerm binaryLengthThirteenBlockCoeffSupportCondition
  simp [hsource, hk, hrow, hcol]
  by_cases hif : source.i = idx.k + row.val ∧
      source.j = idx.k + col.val ∧
      same <= idx.k ∧ same <= source.t ∧
      source.t <= 13 - 2 * idx.k + same ∧
      source.t <= row.val + same ∧ source.t <= col.val + same
  · simp [hif]
    ring_nf
  · simp [hif]

theorem binaryLengthThirteenBlockCoeffFormulaTermNat_eq_signed_supportChoices_card
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) (same : Nat) :
    binaryLengthThirteenBlockCoeffFormulaTermNat
        idx.k row.val col.val (binaryLengthThirteenOrbitToFin source) same =
      (-1 : Rat) ^ (idx.k - same) *
        ((binaryLengthThirteenBlockCoeffSupportChoices idx row col source same).card : Rat) := by
  rw [binaryLengthThirteenBlockCoeffSupportChoices_card]
  exact binaryLengthThirteenBlockCoeffFormulaTermNat_eq_signed_signless
    idx row col source same

def binaryLengthThirteenBlockCoeffFormulaNat
    (k row col : Nat) (sourceFin : Fin 560) : Rat :=
  (Finset.range (k + 1)).sum (fun same =>
    binaryLengthThirteenBlockCoeffFormulaTermNat k row col sourceFin same)

def binaryLengthThirteenScaledBetaCoeffNat
    (k row col : Nat) (sourceFin : Fin 560) : Rat :=
  let source := binaryLengthThirteenOrbitOfFin sourceFin
  if 2 * k <= 13 ∧ row < 13 - 2 * k + 1 ∧
      col < 13 - 2 * k + 1 ∧ source.i = k + row ∧
      source.j = k + col then
    (2 : Rat) ^ k * betaCoeff 13 (k + row) (k + col) k source.t
  else
    0

theorem binaryLengthThirteenBlockCoeffFormulaNat_eq_scaledBetaCoeffNat :
    (forall k : Fin 7,
      forall row : Fin 14,
      forall col : Fin 14,
      forall sourceFin : Fin 560,
        binaryLengthThirteenBlockCoeffFormulaNat k.val row.val col.val sourceFin =
          binaryLengthThirteenScaledBetaCoeffNat k.val row.val col.val sourceFin) := by
  native_decide

def binaryLengthThirteenBlockCoeffFormula
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) : Rat :=
  binaryLengthThirteenBlockCoeffFormulaNat idx.k row.val col.val
    (binaryLengthThirteenOrbitToFin source)

def binaryLengthThirteenScaledBetaCoeff
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) : Rat :=
  binaryLengthThirteenScaledBetaCoeffNat idx.k row.val col.val
    (binaryLengthThirteenOrbitToFin source)

theorem binaryLengthThirteenScaledBlockEntryExpr_coeff_eq_scaledBetaCoeff
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) :
    (binaryLengthThirteenScaledBlockEntryExpr idx row col).coeff source =
      binaryLengthThirteenScaledBetaCoeff idx row col source := by
  have hsource := binaryLengthThirteenOrbitOfFin_toFin source
  have hk : 2 * idx.k ≤ 13 := idx.hk
  have hrow : row.val ≤ 13 - 2 * idx.k := Nat.lt_succ_iff.mp row.isLt
  have hcol : col.val ≤ 13 - 2 * idx.k := Nat.lt_succ_iff.mp col.isLt
  simp [binaryLengthThirteenScaledBlockEntryExpr, binaryLengthThirteenScaledBetaCoeff,
    binaryLengthThirteenScaledBetaCoeffNat, binaryLengthThirteenBlockScale,
    LinExpr.smul, binaryBlockEntryExpr_var_coeff, hsource, hk, hrow, hcol]

theorem binaryLengthThirteenBlockCoeffFormula_eq_scaledBetaCoeff
    (idx : BinaryBlockIndex 13)
    (row col : BinaryBlockCoord idx)
    (source : BinaryOrbitIndex 13) :
    binaryLengthThirteenBlockCoeffFormula idx row col source =
      binaryLengthThirteenScaledBetaCoeff idx row col source := by
  have hnat := binaryLengthThirteenBlockCoeffFormulaNat_eq_scaledBetaCoeffNat
    ⟨idx.k, by
      have hk := idx.hk
      omega⟩
    ⟨row.val, by
      have hk := idx.hk
      have hrow := row.isLt
      omega⟩
    ⟨col.val, by
      have hk := idx.hk
      have hcol := col.isLt
      omega⟩
    (binaryLengthThirteenOrbitToFin source)
  have hsource := binaryLengthThirteenOrbitOfFin_toFin source
  simpa [binaryLengthThirteenBlockCoeffFormula,
    binaryLengthThirteenScaledBetaCoeff, binaryLengthThirteenScaledBetaCoeffNat,
    hsource, idx.hk, row.isLt, col.isLt] using hnat

theorem binaryLengthThirteenBlockCompression_congruence_eq_of_coeff_eq
    (idx : BinaryBlockIndex 13)
    (x : BinaryOrbitIndex 13 -> Rat)
    (hconst : forall row col,
      (binaryLengthThirteenBlockCompressionEntryExpr idx row col).const =
        (binaryLengthThirteenScaledBlockEntryExpr idx row col).const)
    (hcoeff : forall row col source,
      (binaryLengthThirteenBlockCompressionEntryExpr idx row col).coeff source =
        (binaryLengthThirteenScaledBlockEntryExpr idx row col).coeff source) :
    congruenceMatrix
      (binaryLengthThirteenBlockCompressionMatrixFor idx)
      (binaryTerwilligerMatrix x) =
        binaryLengthThirteenBlockScale idx • binaryBlockForIndex x idx := by
  ext row col
  rw [← binaryLengthThirteenBlockCompressionEntryExpr_eval]
  calc
    (binaryLengthThirteenBlockCompressionEntryExpr idx row col).eval x =
        (binaryLengthThirteenScaledBlockEntryExpr idx row col).eval x := by
          apply LinExpr.eval_eq_of_coeff_const_eq
          · exact hconst row col
          · intro source
            exact hcoeff row col source
    _ = binaryLengthThirteenBlockScale idx * binaryBlockForIndex x idx row col := by
          exact binaryLengthThirteenScaledBlockEntryExpr_eval idx row col x
    _ = (fun row col =>
          binaryLengthThirteenBlockScale idx * binaryBlockForIndex x idx row col)
          row col := by rfl

noncomputable def binaryLengthThirteenBlockScaledCompressionCertificateOfCoeff
    (idx : BinaryBlockIndex 13)
    (x : BinaryOrbitIndex 13 -> Rat)
    (hconst : forall row col,
      (binaryLengthThirteenBlockCompressionEntryExpr idx row col).const =
        (binaryLengthThirteenScaledBlockEntryExpr idx row col).const)
    (hcoeff : forall row col source,
      (binaryLengthThirteenBlockCompressionEntryExpr idx row col).coeff source =
        (binaryLengthThirteenScaledBlockEntryExpr idx row col).coeff source) :
    BinaryBlockScaledCompressionCertificate idx
      (binaryLengthThirteenBlockScale idx) x where
  scale_pos := binaryLengthThirteenBlockScale_pos idx
  toMatrix := binaryLengthThirteenBlockCompressionMatrixFor idx
  congruence_eq := binaryLengthThirteenBlockCompression_congruence_eq_of_coeff_eq
    idx x hconst hcoeff

noncomputable def binaryLengthThirteenScaledBlockCompressionCertificateOfCoeff
    (x : BinaryOrbitIndex 13 -> Rat)
    (hconst : forall idx row col,
      (binaryLengthThirteenBlockCompressionEntryExpr idx row col).const =
        (binaryLengthThirteenScaledBlockEntryExpr idx row col).const)
    (hcoeff : forall idx row col source,
      (binaryLengthThirteenBlockCompressionEntryExpr idx row col).coeff source =
        (binaryLengthThirteenScaledBlockEntryExpr idx row col).coeff source) :
    BinaryBlockDiagonalizationScaledBlockCompressionCertificate
      binaryLengthThirteenBlockScale x where
  blockCert idx :=
    binaryLengthThirteenBlockScaledCompressionCertificateOfCoeff
      idx x (hconst idx) (hcoeff idx)

/--
Linear-expression form of the scaled block-diagonal target entry.  This
is the right-hand side expected from the compression congruence.
-/
def binaryLengthThirteenScaledBlockDiagonalEntryExpr
    (p q : Sigma (fun idx : BinaryBlockIndex 13 => BinaryBlockCoord idx)) :
    LinExpr (BinaryOrbitIndex 13) :=
  if p.1 = q.1 then
    LinExpr.smul (binaryLengthThirteenBlockScale p.1)
      (binaryBlockEntryExpr 13 p.1.k (fun source => LinExpr.var source)
        p.2.val q.2.val)
  else
    LinExpr.constExpr (BinaryOrbitIndex 13) 0

theorem binaryLengthThirteenScaledBlockDiagonalEntryExpr_eval
    (p q : Sigma (fun idx : BinaryBlockIndex 13 => BinaryBlockCoord idx))
    (x : BinaryOrbitIndex 13 -> Rat) :
    (binaryLengthThirteenScaledBlockDiagonalEntryExpr p q).eval x =
      binaryScaledBlockDiagonalMatrix binaryLengthThirteenBlockScale x p q := by
  rcases p with ⟨idx, row⟩
  rcases q with ⟨idx2, col⟩
  by_cases h : idx = idx2
  · subst idx2
    simp [binaryLengthThirteenScaledBlockDiagonalEntryExpr,
      binaryScaledBlockDiagonalMatrix, binaryBlockForIndex, binaryBlock]
  · simp [binaryLengthThirteenScaledBlockDiagonalEntryExpr, h,
      binaryScaledBlockDiagonalMatrix, sigmaBlockDiagonal]

end

end GijswijtPolak2025
end SDP
end CoveringCodes
