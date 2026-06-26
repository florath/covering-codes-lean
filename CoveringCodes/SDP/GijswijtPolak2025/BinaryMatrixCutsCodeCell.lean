import CoveringCodes.SDP.GijswijtPolak2025.BinaryTableCodeCell

/-!
# Code-cell matrix cuts

This file isolates the combinatorial proof of the binary matrix-cut
constraints for canonical code-cell vectors.  It is intentionally not imported
by the main Table 1 path until the theorem is closed.
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

noncomputable section

/-- Side condition for one binary matrix-cut coefficient summand. -/
def binaryMatrixCutTermCondition
    (n : Nat) (source target : BinaryOrbitIndex n) (d : Nat)
    (a00 a01 a10 a11 : Nat) : Prop :=
  a00 + source.i + source.j <= n + source.t /\
    a01 + source.t <= source.j /\
    a10 + source.t <= source.i /\
    a11 <= source.t /\
    target.i = source.i /\
    target.j = a00 + a01 + a10 + a11 /\
    target.t = a10 + a11 /\
    d + a01 + a11 = source.j + a00 + a10

instance binaryMatrixCutTermCondition_decidable
    (n : Nat) (source target : BinaryOrbitIndex n) (d : Nat)
    (a00 a01 a10 a11 : Nat) :
    Decidable (binaryMatrixCutTermCondition n source target d a00 a01 a10 a11) := by
  unfold binaryMatrixCutTermCondition
  infer_instance

theorem binaryMatrixCutTerm_eq_condition
    (n : Nat) (source target : BinaryOrbitIndex n) (d : Nat)
    (a00 a01 a10 a11 : Nat) :
    binaryMatrixCutTerm n source target d a00 a01 a10 a11 =
      if binaryMatrixCutTermCondition n source target d a00 a01 a10 a11 then
        (Nat.choose (source.i - source.t) a10 : Rat) *
          (Nat.choose (source.j - source.t) a01 : Rat) *
          (Nat.choose source.t a11 : Rat) *
          (Nat.choose (n + source.t - source.i - source.j) a00 : Rat)
      else
        0 := by
  rfl

/--
Relative target words in a one-sided shell: for a fixed source pair `(u,v)`,
these are words `z` at distance `d` from `v` such that `(u,z)` has the target
orbit.  This is the counting object behind `binaryMatrixCutCoeff`.
-/
def binaryOneSidedShellTargetCell {n : Nat}
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (target : BinaryOrbitIndex n) (d : Nat) :
    Finset (QaryWord 2 n) :=
  (Finset.univ : Finset (QaryWord 2 n)).filter (fun targetWord =>
    dist sourcePair.2 targetWord = d ∧
      binaryOrbitOf sourcePair.1 targetWord = target)

@[simp]
theorem mem_binaryOneSidedShellTargetCell {n : Nat}
    {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {target : BinaryOrbitIndex n} {d : Nat} {targetWord : QaryWord 2 n} :
    targetWord ∈ binaryOneSidedShellTargetCell sourcePair target d ↔
      dist sourcePair.2 targetWord = d ∧
        binaryOrbitOf sourcePair.1 targetWord = target := by
  simp [binaryOneSidedShellTargetCell]

/-- Decode a support choice as the one-sided matrix-cut target word. -/
def binaryMatrixCutSupportChoiceTargetWord {n : Nat}
    (choice : BinaryPairShellSupportChoice n) : QaryWord 2 n :=
  binaryFlipOn (zeroWord 2 n (by decide))
    (binaryPairShellSupportChoiceUnion choice)

@[simp]
theorem binaryMatrixCutSupportChoiceTargetWord_support {n : Nat}
    (choice : BinaryPairShellSupportChoice n) :
    binarySupport n (binaryMatrixCutSupportChoiceTargetWord choice) =
      binaryPairShellSupportChoiceUnion choice := by
  unfold binaryMatrixCutSupportChoiceTargetWord
  rw [binaryFlipOn_zero_support_eq]

/-- Encode a one-sided target word by its four support pieces in the source-pair cells. -/
def binaryMatrixCutTargetWordSupportChoice {n : Nat}
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (targetWord : QaryWord 2 n) :
    BinaryPairShellSupportChoice n :=
  let S := binarySupport n targetWord
  (((S ∩ binaryPairSupport00 sourcePair.1 sourcePair.2,
      S ∩ binaryPairSupport01 sourcePair.1 sourcePair.2),
      S ∩ binaryPairSupport10 sourcePair.1 sourcePair.2),
      S ∩ binaryPairSupport11 sourcePair.1 sourcePair.2)

@[simp]
theorem binaryMatrixCutTargetWordSupportChoice_00 {n : Nat}
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (targetWord : QaryWord 2 n) :
    binaryPairShellSupportChoice00
        (binaryMatrixCutTargetWordSupportChoice sourcePair targetWord) =
      binarySupport n targetWord ∩
        binaryPairSupport00 sourcePair.1 sourcePair.2 := by
  rfl

@[simp]
theorem binaryMatrixCutTargetWordSupportChoice_01 {n : Nat}
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (targetWord : QaryWord 2 n) :
    binaryPairShellSupportChoice01
        (binaryMatrixCutTargetWordSupportChoice sourcePair targetWord) =
      binarySupport n targetWord ∩
        binaryPairSupport01 sourcePair.1 sourcePair.2 := by
  rfl

@[simp]
theorem binaryMatrixCutTargetWordSupportChoice_10 {n : Nat}
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (targetWord : QaryWord 2 n) :
    binaryPairShellSupportChoice10
        (binaryMatrixCutTargetWordSupportChoice sourcePair targetWord) =
      binarySupport n targetWord ∩
        binaryPairSupport10 sourcePair.1 sourcePair.2 := by
  rfl

@[simp]
theorem binaryMatrixCutTargetWordSupportChoice_11 {n : Nat}
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (targetWord : QaryWord 2 n) :
    binaryPairShellSupportChoice11
        (binaryMatrixCutTargetWordSupportChoice sourcePair targetWord) =
      binarySupport n targetWord ∩
        binaryPairSupport11 sourcePair.1 sourcePair.2 := by
  rfl

theorem binaryMatrixCutTargetWordSupportChoice_mem_supportChoices {n : Nat}
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (targetWord : QaryWord 2 n) :
    binaryMatrixCutTargetWordSupportChoice sourcePair targetWord ∈
      binaryPairShellSupportChoices sourcePair
        (binaryPairShellSupportChoice00
          (binaryMatrixCutTargetWordSupportChoice sourcePair targetWord)).card
        (binaryPairShellSupportChoice01
          (binaryMatrixCutTargetWordSupportChoice sourcePair targetWord)).card
        (binaryPairShellSupportChoice10
          (binaryMatrixCutTargetWordSupportChoice sourcePair targetWord)).card
        (binaryPairShellSupportChoice11
          (binaryMatrixCutTargetWordSupportChoice sourcePair targetWord)).card := by
  unfold binaryMatrixCutTargetWordSupportChoice binaryPairShellSupportChoices
    binaryPairShellSupportChoice00 binaryPairShellSupportChoice01
    binaryPairShellSupportChoice10 binaryPairShellSupportChoice11
  simp

theorem binaryMatrixCutTargetWordSupportChoice_union {n : Nat}
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (targetWord : QaryWord 2 n) :
    binaryPairShellSupportChoiceUnion
        (binaryMatrixCutTargetWordSupportChoice sourcePair targetWord) =
      binarySupport n targetWord := by
  let S := binarySupport n targetWord
  ext coord
  constructor
  · intro hcoord
    simp only [binaryPairShellSupportChoiceUnion,
      binaryMatrixCutTargetWordSupportChoice_00,
      binaryMatrixCutTargetWordSupportChoice_01,
      binaryMatrixCutTargetWordSupportChoice_10,
      binaryMatrixCutTargetWordSupportChoice_11,
      Finset.mem_union, Finset.mem_inter] at hcoord
    rcases hcoord with h0010 | h11
    · rcases h0010 with h0001 | h10
      · rcases h0001 with h00 | h01
        · exact h00.1
        · exact h01.1
      · exact h10.1
    · exact h11.1
  · intro hcoord
    rcases binaryPairSupportCell_exhaustive sourcePair.1 sourcePair.2 coord with
      ⟨cat, hcat⟩
    cases cat
    · exact Finset.mem_union.mpr (Or.inr
        (Finset.mem_inter.mpr ⟨hcoord, by
          simpa [binaryPairSupportCell] using hcat⟩))
    · exact Finset.mem_union.mpr (Or.inl (Finset.mem_union.mpr (Or.inr
        (Finset.mem_inter.mpr ⟨hcoord, by
          simpa [binaryPairSupportCell] using hcat⟩))))
    · exact Finset.mem_union.mpr (Or.inl (Finset.mem_union.mpr (Or.inl
        (Finset.mem_union.mpr (Or.inr
          (Finset.mem_inter.mpr ⟨hcoord, by
            simpa [binaryPairSupportCell] using hcat⟩))))))
    · exact Finset.mem_union.mpr (Or.inl (Finset.mem_union.mpr (Or.inl
        (Finset.mem_union.mpr (Or.inl
        (Finset.mem_inter.mpr ⟨hcoord, by
          simpa [binaryPairSupportCell] using hcat⟩))))))

theorem binaryMatrixCutSupportChoiceTargetWord_inverse {n : Nat}
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (targetWord : QaryWord 2 n) :
    binaryMatrixCutSupportChoiceTargetWord
        (binaryMatrixCutTargetWordSupportChoice sourcePair targetWord) =
      targetWord := by
  unfold binaryMatrixCutSupportChoiceTargetWord
  rw [binaryMatrixCutTargetWordSupportChoice_union]
  have h :=
    binaryFlipOn_xorSupport_eq (zeroWord 2 n (by decide)) targetWord
  simpa [binaryXorWord_zero_left] using h

theorem binaryMatrixCutTargetWordSupportChoice_inverse {n : Nat}
    {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {choice : BinaryPairShellSupportChoice n}
    {a00 a01 a10 a11 : Nat}
    (hchoice : choice ∈ binaryPairShellSupportChoices sourcePair a00 a01 a10 a11) :
    binaryMatrixCutTargetWordSupportChoice sourcePair
        (binaryMatrixCutSupportChoiceTargetWord choice) =
      choice := by
  rcases choice with ⟨⟨⟨S00, S01⟩, S10⟩, S11⟩
  simp [binaryMatrixCutTargetWordSupportChoice,
    binaryPairShellSupportChoice00, binaryPairShellSupportChoice01,
    binaryPairShellSupportChoice10, binaryPairShellSupportChoice11,
    binaryPairShellSupportChoiceUnion_inter_00_of_mem hchoice,
    binaryPairShellSupportChoiceUnion_inter_01_of_mem hchoice,
    binaryPairShellSupportChoiceUnion_inter_10_of_mem hchoice,
    binaryPairShellSupportChoiceUnion_inter_11_of_mem hchoice]

theorem binaryXorWord_flipOn_zero_right {n : Nat}
    (base : QaryWord 2 n) (S : Finset (Fin n)) :
    binaryXorWord base (binaryFlipOn (zeroWord 2 n (by decide)) S) =
      binaryFlipOn base S := by
  have h :
      binaryXorWord base (binaryFlipOn base S) =
        binaryXorWord (zeroWord 2 n (by decide))
          (binaryFlipOn (zeroWord 2 n (by decide)) S) := by
    rw [binaryXorWord_flipOn_right, binaryXorWord_zero_left]
  have h' := binaryXorWord_xor_right_eq_of_xor_eq h
  simpa [binaryXorWord_zero_right] using h'

theorem binaryMatrixCut_dist_eq_support_symmDiff {n : Nat}
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (targetWord : QaryWord 2 n) :
    dist sourcePair.2 targetWord =
      ((binarySupport n sourcePair.2 \ binarySupport n targetWord) ∪
        (binarySupport n targetWord \ binarySupport n sourcePair.2)).card := by
  let S := binarySupport n targetWord
  have htarget :
      targetWord = binaryFlipOn (zeroWord 2 n (by decide)) S := by
    have h :=
      binaryFlipOn_xorSupport_eq (zeroWord 2 n (by decide)) targetWord
    simpa [S, binaryXorWord_zero_left] using h.symm
  rw [dist_eq_binarySupport_binaryXorWord_card]
  have hxor :
      binaryXorWord sourcePair.2 targetWord =
        binaryFlipOn sourcePair.2 S := by
    rw [htarget]
    exact binaryXorWord_flipOn_zero_right sourcePair.2 S
  rw [hxor]
  exact congrArg Finset.card (binarySupport_flipOn sourcePair.2 S)

theorem binaryMatrixCutTargetWordSupportChoice_condition_of_mem_targetCell {n : Nat}
    {source target : BinaryOrbitIndex n}
    {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {targetWord : QaryWord 2 n} {d : Nat}
    (hsource : sourcePair ∈ binaryWordPairOrbitCell source)
    (htarget :
      targetWord ∈ binaryOneSidedShellTargetCell sourcePair target d) :
    binaryMatrixCutTermCondition n source target d
      (binaryPairShellSupportChoice00
        (binaryMatrixCutTargetWordSupportChoice sourcePair targetWord)).card
      (binaryPairShellSupportChoice01
        (binaryMatrixCutTargetWordSupportChoice sourcePair targetWord)).card
      (binaryPairShellSupportChoice10
        (binaryMatrixCutTargetWordSupportChoice sourcePair targetWord)).card
      (binaryPairShellSupportChoice11
        (binaryMatrixCutTargetWordSupportChoice sourcePair targetWord)).card := by
  let choice := binaryMatrixCutTargetWordSupportChoice sourcePair targetWord
  let a00 := (binaryPairShellSupportChoice00 choice).card
  let a01 := (binaryPairShellSupportChoice01 choice).card
  let a10 := (binaryPairShellSupportChoice10 choice).card
  let a11 := (binaryPairShellSupportChoice11 choice).card
  let S := binarySupport n targetWord
  let U := binarySupport n sourcePair.2
  have htarget' := mem_binaryOneSidedShellTargetCell.mp htarget
  have hdist : dist sourcePair.2 targetWord = d := htarget'.1
  have htargetOrbit : binaryOrbitOf sourcePair.1 targetWord = target := htarget'.2
  have hsourceOrbit := mem_binaryWordPairOrbitCell.mp hsource
  have hchoiceBase : choice ∈ binaryPairShellSupportChoices sourcePair a00 a01 a10 a11 := by
    dsimp [choice, a00, a01, a10, a11]
    exact binaryMatrixCutTargetWordSupportChoice_mem_supportChoices sourcePair targetWord
  have hmem := mem_binaryPairShellSupportChoices.mp hchoiceBase
  rcases hmem with ⟨h00mem, h01mem, h10mem, h11mem⟩
  have h00 := Finset.mem_powersetCard.mp h00mem
  have h01 := Finset.mem_powersetCard.mp h01mem
  have h10 := Finset.mem_powersetCard.mp h10mem
  have h11 := Finset.mem_powersetCard.mp h11mem
  have h00card :
      (binaryPairSupport00 sourcePair.1 sourcePair.2).card =
        n + source.t - source.i - source.j := by
    have hraw := binaryPairSupport00_card sourcePair.1 sourcePair.2
    rw [hsourceOrbit] at hraw
    have hrewrite :
        n - (source.i + source.j - source.t) =
          n + source.t - source.i - source.j := by
      have ht_i := source.ht_i
      have ht_j := source.ht_j
      have hij := source.hij
      omega
    exact hraw.trans hrewrite
  have h01card :
      (binaryPairSupport01 sourcePair.1 sourcePair.2).card =
        source.j - source.t := by
    have hraw := binaryPairSupport01_card sourcePair.1 sourcePair.2
    simp [hsourceOrbit] at hraw ⊢
  have h10card :
      (binaryPairSupport10 sourcePair.1 sourcePair.2).card =
        source.i - source.t := by
    have hraw := binaryPairSupport10_card sourcePair.1 sourcePair.2
    simp [hsourceOrbit] at hraw ⊢
  have h11card :
      (binaryPairSupport11 sourcePair.1 sourcePair.2).card =
        source.t := by
    have hraw := binaryPairSupport11_card sourcePair.1 sourcePair.2
    simp [hsourceOrbit] at hraw ⊢
  have ha00_le : a00 <= n + source.t - source.i - source.j := by
    have hle := Finset.card_le_card h00.1
    omega
  have ha01_le : a01 <= source.j - source.t := by
    have hle := Finset.card_le_card h01.1
    omega
  have ha10_le : a10 <= source.i - source.t := by
    have hle := Finset.card_le_card h10.1
    omega
  have ha11_le : a11 <= source.t := by
    have hle := Finset.card_le_card h11.1
    omega
  have hUnion :
      binaryPairShellSupportChoiceUnion choice = S := by
    dsimp [choice, S]
    exact binaryMatrixCutTargetWordSupportChoice_union sourcePair targetWord
  have hScard : S.card = a00 + a01 + a10 + a11 := by
    rw [← hUnion]
    exact binaryPairShellSupportChoiceUnion_card_of_mem hchoiceBase
  have hSUcard : (S ∩ U).card = a01 + a11 := by
    rw [← hUnion]
    dsimp [U]
    exact binaryPairShellSupportChoiceUnion_inter_rightSupport_card_of_mem hchoiceBase
  have hUScard : (U ∩ S).card = a01 + a11 := by
    rw [Finset.inter_comm]
    exact hSUcard
  have hUcard : U.card = source.j := by
    simpa [U, binaryOrbitOf] using congrArg BinaryOrbitIndex.j hsourceOrbit
  have hi : target.i = source.i := by
    have hsource_i :
        (binarySupport n sourcePair.1).card = source.i := by
      simpa [binaryOrbitOf] using congrArg BinaryOrbitIndex.i hsourceOrbit
    have htarget_i :
        (binarySupport n sourcePair.1).card = target.i := by
      simpa [binaryOrbitOf] using congrArg BinaryOrbitIndex.i htargetOrbit
    exact htarget_i.symm.trans hsource_i
  have hj : target.j = a00 + a01 + a10 + a11 := by
    have htarget_j : S.card = target.j := by
      simpa [S, binaryOrbitOf] using congrArg BinaryOrbitIndex.j htargetOrbit
    exact htarget_j.symm.trans hScard
  have ht : target.t = a10 + a11 := by
    have htarget_t :
        (binarySupport n sourcePair.1 ∩ S).card = target.t := by
      simpa [S, binaryOrbitOf, binaryPairSupport11] using
        congrArg BinaryOrbitIndex.t htargetOrbit
    have hleft :
        (S ∩ binarySupport n sourcePair.1).card = a10 + a11 := by
      rw [← hUnion]
      exact binaryPairShellSupportChoiceUnion_inter_leftSupport_card_of_mem hchoiceBase
    rw [Finset.inter_comm] at hleft
    exact htarget_t.symm.trans hleft
  have hdistCalc :
      d = (source.j - (a01 + a11)) +
        ((a00 + a01 + a10 + a11) - (a01 + a11)) := by
    rw [← hdist]
    rw [binaryMatrixCut_dist_eq_support_symmDiff]
    have hdisj : Disjoint (U \ S) (S \ U) := by
      rw [Finset.disjoint_left]
      intro coord hcoordUS hcoordSU
      exact (Finset.mem_sdiff.mp hcoordUS).2 (Finset.mem_sdiff.mp hcoordSU).1
    rw [show binarySupport n sourcePair.2 = U by rfl]
    rw [show binarySupport n targetWord = S by rfl]
    rw [Finset.card_union_of_disjoint hdisj]
    rw [Finset.card_sdiff, Finset.card_sdiff]
    rw [hUcard, hScard, hUScard, hSUcard]
  have hdistCond : d + a01 + a11 = source.j + a00 + a10 := by
    have hSU_le_U : a01 + a11 <= source.j := by
      have hle : (S ∩ U).card <= U.card :=
        Finset.card_le_card Finset.inter_subset_right
      omega
    have hSU_le_S : a01 + a11 <= a00 + a01 + a10 + a11 := by
      have hle : (S ∩ U).card <= S.card :=
        Finset.card_le_card Finset.inter_subset_left
      omega
    omega
  unfold binaryMatrixCutTermCondition
  refine ⟨?_, ?_, ?_, ?_, hi, hj, ht, hdistCond⟩
  · change a00 + source.i + source.j <= n + source.t
    have ht_i := source.ht_i
    have ht_j := source.ht_j
    have hij := source.hij
    omega
  · change a01 + source.t <= source.j
    have ht_j := source.ht_j
    omega
  · change a10 + source.t <= source.i
    have ht_i := source.ht_i
    omega
  · change a11 <= source.t
    exact ha11_le

/--
Support choices contributing to one matrix-cut summand.  The four subsets are
chosen from the `00`, `01`, `10`, and `11` cells of the source pair; their union
is the support of the one-sided target word.
-/
def binaryMatrixCutSupportChoices {n : Nat}
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (source target : BinaryOrbitIndex n) (d : Nat)
    (a00 a01 a10 a11 : Nat) :
    Finset (BinaryPairShellSupportChoice n) :=
  if binaryMatrixCutTermCondition n source target d a00 a01 a10 a11 then
    binaryPairShellSupportChoices sourcePair a00 a01 a10 a11
  else
    ∅

theorem binaryMatrixCutSupportChoices_card_eq_term {n : Nat}
    {source target : BinaryOrbitIndex n}
    {sourcePair : QaryWord 2 n × QaryWord 2 n}
    (hsource : sourcePair ∈ binaryWordPairOrbitCell source)
    (d a00 a01 a10 a11 : Nat) :
    ((binaryMatrixCutSupportChoices sourcePair source target d
      a00 a01 a10 a11).card : Rat) =
        binaryMatrixCutTerm n source target d a00 a01 a10 a11 := by
  rw [binaryMatrixCutTerm_eq_condition]
  unfold binaryMatrixCutSupportChoices
  by_cases hcond :
      binaryMatrixCutTermCondition n source target d a00 a01 a10 a11
  · simp [hcond]
    rw [binaryPairShellSupportChoices_card_of_mem_orbit hsource]
    norm_num [Nat.cast_mul]
    ring
  · simp [hcond]

theorem binaryMatrixCutSupportChoices_sum_card_eq_coeff {n : Nat}
    {source target : BinaryOrbitIndex n}
    {sourcePair : QaryWord 2 n × QaryWord 2 n}
    (hsource : sourcePair ∈ binaryWordPairOrbitCell source)
    (d : Nat) :
    (Finset.range (n + 1)).sum (fun a00 =>
      (Finset.range (n + 1)).sum (fun a01 =>
        (Finset.range (n + 1)).sum (fun a10 =>
          (Finset.range (n + 1)).sum (fun a11 =>
            ((binaryMatrixCutSupportChoices sourcePair source target d
              a00 a01 a10 a11).card : Rat))))) =
      binaryMatrixCutCoeff n source target d := by
  unfold binaryMatrixCutCoeff
  apply Finset.sum_congr rfl
  intro a00 _ha00
  apply Finset.sum_congr rfl
  intro a01 _ha01
  apply Finset.sum_congr rfl
  intro a10 _ha10
  apply Finset.sum_congr rfl
  intro a11 _ha11
  exact binaryMatrixCutSupportChoices_card_eq_term hsource d a00 a01 a10 a11

private theorem binaryMatrixCutOrbitIndex_ext {n : Nat}
    {idx idx' : BinaryOrbitIndex n}
    (hi : idx.i = idx'.i) (hj : idx.j = idx'.j) (ht : idx.t = idx'.t) :
    idx = idx' := by
  cases idx with
  | mk i j t ht_i ht_j hij =>
      cases idx' with
      | mk i' j' t' ht_i' ht_j' hij' =>
          simp at hi hj ht
          subst i'
          subst j'
          subst t'
          simp

private theorem binaryMatrixCut_finset_card_le_fin {n : Nat}
    (s : Finset (Fin n)) :
    s.card <= n := by
  have hle := Finset.card_le_card (Finset.subset_univ s)
  simpa using hle

theorem binaryMatrixCutSupportChoice_mem_supportChoices_of_mem_matrixCut {n : Nat}
    {source target : BinaryOrbitIndex n}
    {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {choice : BinaryPairShellSupportChoice n} {d a00 a01 a10 a11 : Nat}
    (hchoice :
      choice ∈ binaryMatrixCutSupportChoices sourcePair source target d
        a00 a01 a10 a11) :
    choice ∈ binaryPairShellSupportChoices sourcePair a00 a01 a10 a11 := by
  unfold binaryMatrixCutSupportChoices at hchoice
  by_cases hcond :
      binaryMatrixCutTermCondition n source target d a00 a01 a10 a11
  · simpa [hcond] using hchoice
  · simp [hcond] at hchoice

theorem binaryMatrixCutTargetWordSupportChoice_mem_matrixCutSupportChoices_of_mem_targetCell
    {n : Nat} {source target : BinaryOrbitIndex n}
    {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {targetWord : QaryWord 2 n} {d : Nat}
    (hsource : sourcePair ∈ binaryWordPairOrbitCell source)
    (htarget :
      targetWord ∈ binaryOneSidedShellTargetCell sourcePair target d) :
    binaryMatrixCutTargetWordSupportChoice sourcePair targetWord ∈
      binaryMatrixCutSupportChoices sourcePair source target d
        (binaryPairShellSupportChoice00
          (binaryMatrixCutTargetWordSupportChoice sourcePair targetWord)).card
        (binaryPairShellSupportChoice01
          (binaryMatrixCutTargetWordSupportChoice sourcePair targetWord)).card
        (binaryPairShellSupportChoice10
          (binaryMatrixCutTargetWordSupportChoice sourcePair targetWord)).card
        (binaryPairShellSupportChoice11
          (binaryMatrixCutTargetWordSupportChoice sourcePair targetWord)).card := by
  have hcond :=
    binaryMatrixCutTargetWordSupportChoice_condition_of_mem_targetCell
      hsource htarget
  unfold binaryMatrixCutSupportChoices
  rw [if_pos hcond]
  exact binaryMatrixCutTargetWordSupportChoice_mem_supportChoices sourcePair targetWord

theorem binaryMatrixCutSupportChoiceTargetWord_mem_targetCell_of_mem_matrixCut
    {n : Nat} {source target : BinaryOrbitIndex n}
    {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {choice : BinaryPairShellSupportChoice n} {d a00 a01 a10 a11 : Nat}
    (hsource : sourcePair ∈ binaryWordPairOrbitCell source)
    (hchoice :
      choice ∈ binaryMatrixCutSupportChoices sourcePair source target d
        a00 a01 a10 a11) :
    binaryMatrixCutSupportChoiceTargetWord choice ∈
      binaryOneSidedShellTargetCell sourcePair target d := by
  unfold binaryMatrixCutSupportChoices at hchoice
  by_cases hcond :
      binaryMatrixCutTermCondition n source target d a00 a01 a10 a11
  · have hchoiceBase :
        choice ∈ binaryPairShellSupportChoices sourcePair a00 a01 a10 a11 := by
      simpa [hcond] using hchoice
    rcases hcond with ⟨_h00, h01, _h10, h11, hi, hj, ht, hdistCond⟩
    let targetWord := binaryMatrixCutSupportChoiceTargetWord choice
    let S := binaryPairShellSupportChoiceUnion choice
    let U := binarySupport n sourcePair.2
    have hsourceOrbit := mem_binaryWordPairOrbitCell.mp hsource
    have htargetSupport : binarySupport n targetWord = S := by
      dsimp [targetWord, S]
      exact binaryMatrixCutSupportChoiceTargetWord_support choice
    have hScard : S.card = a00 + a01 + a10 + a11 := by
      dsimp [S]
      exact binaryPairShellSupportChoiceUnion_card_of_mem hchoiceBase
    have hSUcard : (S ∩ U).card = a01 + a11 := by
      dsimp [S, U]
      exact binaryPairShellSupportChoiceUnion_inter_rightSupport_card_of_mem
        hchoiceBase
    have hUScard : (U ∩ S).card = a01 + a11 := by
      rw [Finset.inter_comm]
      exact hSUcard
    have hUcard : U.card = source.j := by
      simpa [U, binaryOrbitOf] using congrArg BinaryOrbitIndex.j hsourceOrbit
    have hdistCalc :
        dist sourcePair.2 targetWord =
          (source.j - (a01 + a11)) +
            ((a00 + a01 + a10 + a11) - (a01 + a11)) := by
      rw [binaryMatrixCut_dist_eq_support_symmDiff]
      rw [show binarySupport n sourcePair.2 = U by rfl]
      rw [htargetSupport]
      have hdisj : Disjoint (U \ S) (S \ U) := by
        rw [Finset.disjoint_left]
        intro coord hcoordUS hcoordSU
        exact (Finset.mem_sdiff.mp hcoordUS).2
          (Finset.mem_sdiff.mp hcoordSU).1
      rw [Finset.card_union_of_disjoint hdisj]
      rw [Finset.card_sdiff, Finset.card_sdiff]
      rw [hUcard, hScard, hUScard, hSUcard]
    have hdistEq : dist sourcePair.2 targetWord = d := by
      have hSU_le_U : a01 + a11 <= source.j := by
        have ht_j := source.ht_j
        omega
      have hSU_le_S : a01 + a11 <= a00 + a01 + a10 + a11 := by
        omega
      omega
    have horbit : binaryOrbitOf sourcePair.1 targetWord = target := by
      apply binaryMatrixCutOrbitIndex_ext
      · change (binarySupport n sourcePair.1).card = target.i
        have hsource_i :
            (binarySupport n sourcePair.1).card = source.i := by
          simpa [binaryOrbitOf] using congrArg BinaryOrbitIndex.i hsourceOrbit
        omega
      · change (binarySupport n targetWord).card = target.j
        rw [htargetSupport]
        omega
      · change (binaryPairSupport11 sourcePair.1 targetWord).card = target.t
        change (binarySupport n sourcePair.1 ∩ binarySupport n targetWord).card =
          target.t
        rw [htargetSupport, Finset.inter_comm]
        have hleft :
            (S ∩ binarySupport n sourcePair.1).card = a10 + a11 := by
          dsimp [S]
          exact binaryPairShellSupportChoiceUnion_inter_leftSupport_card_of_mem
            hchoiceBase
        omega
    rw [mem_binaryOneSidedShellTargetCell]
    exact ⟨hdistEq, horbit⟩
  · simp [hcond] at hchoice

def binaryMatrixCutSupportChoiceSigma {n : Nat}
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (source target : BinaryOrbitIndex n) (d : Nat) :
    Finset (Sigma (fun _a00 : Nat =>
      Sigma (fun _a01 : Nat =>
        Sigma (fun _a10 : Nat =>
          Sigma (fun _a11 : Nat => BinaryPairShellSupportChoice n))))) :=
  (Finset.range (n + 1)).sigma (fun a00 =>
    (Finset.range (n + 1)).sigma (fun a01 =>
      (Finset.range (n + 1)).sigma (fun a10 =>
        (Finset.range (n + 1)).sigma (fun a11 =>
          binaryMatrixCutSupportChoices sourcePair source target d
            a00 a01 a10 a11))))

theorem binaryMatrixCutSupportChoiceSigma_card {n : Nat}
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (source target : BinaryOrbitIndex n) (d : Nat) :
    (binaryMatrixCutSupportChoiceSigma sourcePair source target d).card =
      (Finset.range (n + 1)).sum (fun a00 =>
        (Finset.range (n + 1)).sum (fun a01 =>
          (Finset.range (n + 1)).sum (fun a10 =>
            (Finset.range (n + 1)).sum (fun a11 =>
              (binaryMatrixCutSupportChoices sourcePair source target d
                a00 a01 a10 a11).card)))) := by
  simp [binaryMatrixCutSupportChoiceSigma]

theorem oneSidedShellTargetCell_card_eq_binaryMatrixCutSupportChoiceSigma_card
    {n : Nat} {source target : BinaryOrbitIndex n}
    {sourcePair : QaryWord 2 n × QaryWord 2 n} {d : Nat}
    (hsource : sourcePair ∈ binaryWordPairOrbitCell source) :
    (binaryOneSidedShellTargetCell sourcePair target d).card =
      (binaryMatrixCutSupportChoiceSigma sourcePair source target d).card := by
  classical
  apply Finset.card_bij
    (fun targetWord _htarget =>
      let choice := binaryMatrixCutTargetWordSupportChoice sourcePair targetWord
      ⟨(binaryPairShellSupportChoice00 choice).card,
        ⟨(binaryPairShellSupportChoice01 choice).card,
          ⟨(binaryPairShellSupportChoice10 choice).card,
            ⟨(binaryPairShellSupportChoice11 choice).card, choice⟩⟩⟩⟩)
  · intro targetWord htarget
    simp only [binaryMatrixCutSupportChoiceSigma, Finset.mem_sigma,
      Finset.mem_range]
    refine ⟨Nat.lt_succ_of_le (binaryMatrixCut_finset_card_le_fin _),
      Nat.lt_succ_of_le (binaryMatrixCut_finset_card_le_fin _),
      Nat.lt_succ_of_le (binaryMatrixCut_finset_card_le_fin _),
      Nat.lt_succ_of_le (binaryMatrixCut_finset_card_le_fin _), ?_⟩
    simpa using
      binaryMatrixCutTargetWordSupportChoice_mem_matrixCutSupportChoices_of_mem_targetCell
        hsource htarget
  · intro targetWord₁ _htarget₁ targetWord₂ _htarget₂ hencoded
    have hchoice :
        binaryMatrixCutTargetWordSupportChoice sourcePair targetWord₁ =
          binaryMatrixCutTargetWordSupportChoice sourcePair targetWord₂ := by
      exact congrArg (fun item =>
        item.2.2.2.2) hencoded
    calc
      targetWord₁ =
          binaryMatrixCutSupportChoiceTargetWord
            (binaryMatrixCutTargetWordSupportChoice sourcePair targetWord₁) := by
        exact (binaryMatrixCutSupportChoiceTargetWord_inverse
          sourcePair targetWord₁).symm
      _ =
          binaryMatrixCutSupportChoiceTargetWord
            (binaryMatrixCutTargetWordSupportChoice sourcePair targetWord₂) := by
        rw [hchoice]
      _ = targetWord₂ := by
        exact binaryMatrixCutSupportChoiceTargetWord_inverse sourcePair targetWord₂
  · intro item hitem
    rcases item with ⟨a00, a01, a10, a11, choice⟩
    rw [binaryMatrixCutSupportChoiceSigma, Finset.mem_sigma] at hitem
    rcases hitem with ⟨_ha00, hitem⟩
    rw [Finset.mem_sigma] at hitem
    rcases hitem with ⟨_ha01, hitem⟩
    rw [Finset.mem_sigma] at hitem
    rcases hitem with ⟨_ha10, hitem⟩
    rw [Finset.mem_sigma] at hitem
    rcases hitem with ⟨_ha11, hchoiceCut⟩
    let targetWord := binaryMatrixCutSupportChoiceTargetWord choice
    have htarget :
        targetWord ∈ binaryOneSidedShellTargetCell sourcePair target d := by
      exact binaryMatrixCutSupportChoiceTargetWord_mem_targetCell_of_mem_matrixCut
        hsource hchoiceCut
    refine ⟨targetWord, htarget, ?_⟩
    have hchoiceBase :=
      binaryMatrixCutSupportChoice_mem_supportChoices_of_mem_matrixCut hchoiceCut
    have hrecover :
        binaryMatrixCutTargetWordSupportChoice sourcePair targetWord = choice := by
      simpa [targetWord] using
        binaryMatrixCutTargetWordSupportChoice_inverse hchoiceBase
    have hmem := mem_binaryPairShellSupportChoices.mp hchoiceBase
    have h00card := (Finset.mem_powersetCard.mp hmem.1).2
    have h01card := (Finset.mem_powersetCard.mp hmem.2.1).2
    have h10card := (Finset.mem_powersetCard.mp hmem.2.2.1).2
    have h11card := (Finset.mem_powersetCard.mp hmem.2.2.2).2
    simp [targetWord, hrecover, h00card, h01card, h10card, h11card]

theorem oneSidedShellTargetCell_card_eq_binaryMatrixCutCoeff {n : Nat}
    {source target : BinaryOrbitIndex n}
    {sourcePair : QaryWord 2 n × QaryWord 2 n} {d : Nat}
    (hsource : sourcePair ∈ binaryWordPairOrbitCell source) :
    ((binaryOneSidedShellTargetCell sourcePair target d).card : Rat) =
      binaryMatrixCutCoeff n source target d := by
  calc
    ((binaryOneSidedShellTargetCell sourcePair target d).card : Rat) =
        ((binaryMatrixCutSupportChoiceSigma sourcePair source target d).card : Rat) := by
      exact_mod_cast
        oneSidedShellTargetCell_card_eq_binaryMatrixCutSupportChoiceSigma_card
          (source := source) (target := target) (d := d) hsource
    _ =
        (Finset.range (n + 1)).sum (fun a00 =>
          (Finset.range (n + 1)).sum (fun a01 =>
            (Finset.range (n + 1)).sum (fun a10 =>
              (Finset.range (n + 1)).sum (fun a11 =>
                ((binaryMatrixCutSupportChoices sourcePair source target d
                  a00 a01 a10 a11).card : Rat))))) := by
      rw [binaryMatrixCutSupportChoiceSigma_card]
      simp [Nat.cast_sum]
    _ = binaryMatrixCutCoeff n source target d := by
      exact binaryMatrixCutSupportChoices_sum_card_eq_coeff hsource d

def binaryOneSidedShellCompatible {n : Nat}
    (sourcePair targetPair : QaryWord 2 n × QaryWord 2 n) (d : Nat) :
    Prop :=
  sourcePair.1 = targetPair.1 ∧ dist sourcePair.2 targetPair.2 = d

instance binaryOneSidedShellCompatible_decidable {n : Nat}
    (sourcePair targetPair : QaryWord 2 n × QaryWord 2 n) (d : Nat) :
    Decidable (binaryOneSidedShellCompatible sourcePair targetPair d) := by
  unfold binaryOneSidedShellCompatible
  infer_instance

@[simp]
theorem binaryOneSidedShellCompatible_refl_first {n : Nat}
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (targetWord : QaryWord 2 n) (d : Nat) :
    binaryOneSidedShellCompatible sourcePair (sourcePair.1, targetWord) d ↔
      dist sourcePair.2 targetWord = d := by
  simp [binaryOneSidedShellCompatible]

def binaryOneSidedShellTargetPairCell {n : Nat}
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (target : BinaryOrbitIndex n) (d : Nat) :
    Finset (QaryWord 2 n × QaryWord 2 n) :=
  (binaryWordPairOrbitCell target).filter (fun targetPair =>
    binaryOneSidedShellCompatible sourcePair targetPair d)

@[simp]
theorem mem_binaryOneSidedShellTargetPairCell {n : Nat}
    {sourcePair targetPair : QaryWord 2 n × QaryWord 2 n}
    {target : BinaryOrbitIndex n} {d : Nat} :
    targetPair ∈ binaryOneSidedShellTargetPairCell sourcePair target d ↔
      targetPair ∈ binaryWordPairOrbitCell target ∧
        binaryOneSidedShellCompatible sourcePair targetPair d := by
  simp [binaryOneSidedShellTargetPairCell]

def binaryOneSidedShellSourceCell {n : Nat}
    (source : BinaryOrbitIndex n)
    (targetPair : QaryWord 2 n × QaryWord 2 n) (d : Nat) :
    Finset (QaryWord 2 n × QaryWord 2 n) :=
  (binaryWordPairOrbitCell source).filter (fun sourcePair =>
    binaryOneSidedShellCompatible sourcePair targetPair d)

@[simp]
theorem mem_binaryOneSidedShellSourceCell {n : Nat}
    {source : BinaryOrbitIndex n}
    {targetPair sourcePair : QaryWord 2 n × QaryWord 2 n} {d : Nat} :
    sourcePair ∈ binaryOneSidedShellSourceCell source targetPair d ↔
      sourcePair ∈ binaryWordPairOrbitCell source ∧
        binaryOneSidedShellCompatible sourcePair targetPair d := by
  simp [binaryOneSidedShellSourceCell]

theorem binaryOneSidedShellTargetPairCell_card_eq_targetCell_card {n : Nat}
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (target : BinaryOrbitIndex n) (d : Nat) :
    (binaryOneSidedShellTargetPairCell sourcePair target d).card =
      (binaryOneSidedShellTargetCell sourcePair target d).card := by
  classical
  apply Finset.card_bij (fun targetPair _ => targetPair.2)
  · intro targetPair htargetPair
    rw [mem_binaryOneSidedShellTargetPairCell] at htargetPair
    rw [mem_binaryOneSidedShellTargetCell]
    exact ⟨htargetPair.2.2, by
      rw [htargetPair.2.1]
      exact mem_binaryWordPairOrbitCell.mp htargetPair.1⟩
  · intro a ha b hb hsecond
    rw [mem_binaryOneSidedShellTargetPairCell] at ha hb
    apply Prod.ext
    · exact ha.2.1.symm.trans hb.2.1
    · exact hsecond
  · intro targetWord htargetWord
    rw [mem_binaryOneSidedShellTargetCell] at htargetWord
    refine ⟨(sourcePair.1, targetWord), ?_, rfl⟩
    rw [mem_binaryOneSidedShellTargetPairCell]
    refine ⟨?_, ?_⟩
    · rw [mem_binaryWordPairOrbitCell]
      exact htargetWord.2
    · exact ⟨rfl, htargetWord.1⟩

theorem binaryOneSidedShellTargetPairCell_card_eq_binaryMatrixCutCoeff {n : Nat}
    {source target : BinaryOrbitIndex n}
    {sourcePair : QaryWord 2 n × QaryWord 2 n} {d : Nat}
    (hsource : sourcePair ∈ binaryWordPairOrbitCell source) :
    ((binaryOneSidedShellTargetPairCell sourcePair target d).card : Rat) =
      binaryMatrixCutCoeff n source target d := by
  calc
    ((binaryOneSidedShellTargetPairCell sourcePair target d).card : Rat) =
        ((binaryOneSidedShellTargetCell sourcePair target d).card : Rat) := by
      exact_mod_cast
        binaryOneSidedShellTargetPairCell_card_eq_targetCell_card
          sourcePair target d
    _ = binaryMatrixCutCoeff n source target d := by
      exact oneSidedShellTargetCell_card_eq_binaryMatrixCutCoeff hsource

theorem dist_binaryWordPermEquiv_symm {n : Nat}
    (sigma : Equiv.Perm (Fin n)) (u v : QaryWord 2 n) :
    dist ((binaryWordPermEquiv sigma).symm u)
        ((binaryWordPermEquiv sigma).symm v) =
      dist u v := by
  rw [dist_eq_binarySupport_binaryXorWord_card,
    binaryXorWord_wordPerm_symm]
  rw [binaryWordPermEquiv_symm_eq, binarySupport_wordPerm,
    Finset.card_image_of_injective _ sigma.symm.injective]
  rw [← dist_eq_binarySupport_binaryXorWord_card]

theorem binaryOneSidedShellCompatible_permuted {n : Nat}
    (sourcePair targetPair : QaryWord 2 n × QaryWord 2 n)
    (sigma : Equiv.Perm (Fin n)) (d : Nat) :
    binaryOneSidedShellCompatible
        (binaryPermutedRelativeWordPair sourcePair.1 sourcePair.2 sigma)
        (binaryPermutedRelativeWordPair targetPair.1 targetPair.2 sigma) d ↔
      binaryOneSidedShellCompatible sourcePair targetPair d := by
  constructor
  · intro h
    rw [binaryOneSidedShellCompatible] at h ⊢
    constructor
    · have hfirst :=
        congrArg (binaryWordPermEquiv sigma) h.1
      simpa [binaryPermutedRelativeWordPair] using hfirst
    · have hdist := h.2
      change
        dist ((binaryWordPermEquiv sigma).symm sourcePair.2)
            ((binaryWordPermEquiv sigma).symm targetPair.2) = d at hdist
      rw [dist_binaryWordPermEquiv_symm sigma sourcePair.2 targetPair.2] at hdist
      exact hdist
  · intro h
    rw [binaryOneSidedShellCompatible] at h ⊢
    constructor
    · simp [binaryPermutedRelativeWordPair, h.1]
    · change
        dist ((binaryWordPermEquiv sigma).symm sourcePair.2)
            ((binaryWordPermEquiv sigma).symm targetPair.2) = d
      rw [dist_binaryWordPermEquiv_symm sigma sourcePair.2 targetPair.2]
      exact h.2

theorem binaryOneSidedShellSourceCell_card_eq_permuted {n : Nat}
    (source : BinaryOrbitIndex n) (targetPair : QaryWord 2 n × QaryWord 2 n)
    (sigma : Equiv.Perm (Fin n)) (d : Nat) :
    (binaryOneSidedShellSourceCell source targetPair d).card =
      (binaryOneSidedShellSourceCell source
        (binaryPermutedRelativeWordPair targetPair.1 targetPair.2 sigma) d).card := by
  apply Finset.card_bij
    (fun sourcePair _hsource =>
      binaryPermutedRelativeWordPair sourcePair.1 sourcePair.2 sigma)
  · intro sourcePair hsourcePair
    rw [mem_binaryOneSidedShellSourceCell] at hsourcePair ⊢
    refine ⟨?_, ?_⟩
    · have hmem :=
        binaryPermutedRelativeWordPair_mem_orbitCell sourcePair.1 sourcePair.2 sigma
      have horbit := mem_binaryWordPairOrbitCell.mp hsourcePair.1
      simpa [horbit] using hmem
    · exact
        (binaryOneSidedShellCompatible_permuted sourcePair targetPair sigma d).mpr
          hsourcePair.2
  · intro sourcePair₁ _hsource₁ sourcePair₂ _hsource₂ hpair
    apply Prod.ext
    · exact (binaryWordPermEquiv sigma).symm.injective
        (congrArg Prod.fst hpair)
    · exact (binaryWordPermEquiv sigma).symm.injective
        (congrArg Prod.snd hpair)
  · intro sourcePair hsourcePair
    rw [mem_binaryOneSidedShellSourceCell] at hsourcePair
    let preimage :=
      binaryPermutedRelativeWordPair sourcePair.1 sourcePair.2 sigma.symm
    have hpreimage_mem :
        preimage ∈ binaryOneSidedShellSourceCell source targetPair d := by
      rw [mem_binaryOneSidedShellSourceCell]
      refine ⟨?_, ?_⟩
      · have hmem :=
          binaryPermutedRelativeWordPair_mem_orbitCell
            sourcePair.1 sourcePair.2 sigma.symm
        have horbit := mem_binaryWordPairOrbitCell.mp hsourcePair.1
        simpa [preimage, horbit] using hmem
      · have hperm :
            binaryOneSidedShellCompatible
              (binaryPermutedRelativeWordPair preimage.1 preimage.2 sigma)
              (binaryPermutedRelativeWordPair targetPair.1 targetPair.2 sigma) d := by
          simpa [preimage] using hsourcePair.2
        exact
          (binaryOneSidedShellCompatible_permuted preimage targetPair sigma d).mp
            hperm
    refine ⟨preimage, hpreimage_mem, ?_⟩
    simp [preimage]

theorem binaryOneSidedShellSourceCell_card_eq_of_mem_target_orbit {n : Nat}
    {source target : BinaryOrbitIndex n}
    {targetPair targetPair' : QaryWord 2 n × QaryWord 2 n} {d : Nat}
    (htarget : targetPair ∈ binaryWordPairOrbitCell target)
    (htarget' : targetPair' ∈ binaryWordPairOrbitCell target) :
    (binaryOneSidedShellSourceCell source targetPair d).card =
      (binaryOneSidedShellSourceCell source targetPair' d).card := by
  have htargetOrbit := mem_binaryWordPairOrbitCell.mp htarget
  have htargetPair' :
      targetPair' ∈ binaryWordPairOrbitCell
        (binaryOrbitOf targetPair.1 targetPair.2) := by
    rw [mem_binaryWordPairOrbitCell]
    exact (mem_binaryWordPairOrbitCell.mp htarget').trans htargetOrbit.symm
  rcases binaryPairPermutationOrbitSurjective_universal targetPair.1 targetPair.2
      targetPair' htargetPair' with ⟨sigma, hsigma⟩
  have hcard :=
    binaryOneSidedShellSourceCell_card_eq_permuted source targetPair sigma d
  simpa [hsigma] using hcard

theorem binaryOneSidedShell_edge_sum_source_eq_target {n : Nat}
    (source target : BinaryOrbitIndex n) (d : Nat) :
    (binaryWordPairOrbitCell source).sum (fun sourcePair =>
      (binaryOneSidedShellTargetPairCell sourcePair target d).card) =
    (binaryWordPairOrbitCell target).sum (fun targetPair =>
      (binaryOneSidedShellSourceCell source targetPair d).card) := by
  classical
  let sourceEdges :=
    (binaryWordPairOrbitCell source).sigma (fun sourcePair =>
      binaryOneSidedShellTargetPairCell sourcePair target d)
  let targetEdges :=
    (binaryWordPairOrbitCell target).sigma (fun targetPair =>
      binaryOneSidedShellSourceCell source targetPair d)
  have hcard : sourceEdges.card = targetEdges.card := by
    apply Finset.card_bij
      (fun edge _ => ⟨edge.2, edge.1⟩)
    · intro edge hedge
      rw [Finset.mem_sigma] at hedge ⊢
      rcases hedge with ⟨hsource, htarget⟩
      rw [mem_binaryOneSidedShellTargetPairCell] at htarget
      exact ⟨htarget.1, by
        rw [mem_binaryOneSidedShellSourceCell]
        exact ⟨hsource, htarget.2⟩⟩
    · intro a _ b _ hswap
      cases a with
      | mk asource atarget =>
          cases b with
          | mk bsource btarget =>
              simp at hswap ⊢
              exact ⟨hswap.2, hswap.1⟩
    · intro edge hedge
      rw [Finset.mem_sigma] at hedge
      rcases hedge with ⟨htarget, hsource⟩
      rw [mem_binaryOneSidedShellSourceCell] at hsource
      refine ⟨⟨edge.2, edge.1⟩, ?_, ?_⟩
      · rw [Finset.mem_sigma]
        refine ⟨hsource.1, ?_⟩
        rw [mem_binaryOneSidedShellTargetPairCell]
        exact ⟨htarget, hsource.2⟩
      · rfl
  calc
    (binaryWordPairOrbitCell source).sum (fun sourcePair =>
        (binaryOneSidedShellTargetPairCell sourcePair target d).card) =
        sourceEdges.card := by
      simp [sourceEdges]
    _ = targetEdges.card := hcard
    _ = (binaryWordPairOrbitCell target).sum (fun targetPair =>
        (binaryOneSidedShellSourceCell source targetPair d).card) := by
      simp [targetEdges]

theorem binaryOneSidedShell_weighted_edge_sum_source_eq_target {n : Nat}
    (source target : BinaryOrbitIndex n) (d : Nat)
    (weight : QaryWord 2 n × QaryWord 2 n -> Rat) :
    (binaryWordPairOrbitCell source).sum (fun sourcePair =>
      (binaryOneSidedShellTargetPairCell sourcePair target d).sum weight) =
    (binaryWordPairOrbitCell target).sum (fun targetPair =>
      ((binaryOneSidedShellSourceCell source targetPair d).card : Rat) *
        weight targetPair) := by
  classical
  calc
    (binaryWordPairOrbitCell source).sum (fun sourcePair =>
        (binaryOneSidedShellTargetPairCell sourcePair target d).sum weight) =
      (binaryWordPairOrbitCell source).sum (fun sourcePair =>
        (binaryWordPairOrbitCell target).sum (fun targetPair =>
          if binaryOneSidedShellCompatible sourcePair targetPair d then
            weight targetPair
          else
            0)) := by
        apply Finset.sum_congr rfl
        intro sourcePair _hsourcePair
        rw [binaryOneSidedShellTargetPairCell, Finset.sum_filter]
    _ =
      (binaryWordPairOrbitCell target).sum (fun targetPair =>
        (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          if binaryOneSidedShellCompatible sourcePair targetPair d then
            weight targetPair
          else
            0)) := by
        rw [Finset.sum_comm]
    _ =
      (binaryWordPairOrbitCell target).sum (fun targetPair =>
        ((binaryOneSidedShellSourceCell source targetPair d).card : Rat) *
          weight targetPair) := by
        apply Finset.sum_congr rfl
        intro targetPair _htargetPair
        rw [binaryOneSidedShellSourceCell]
        rw [← Finset.sum_filter]
        simp [Finset.sum_const, nsmul_eq_mul]

def BinaryOneSidedShellTargetDegreeIdentity (n : Nat) : Prop :=
  forall (source target : BinaryOrbitIndex n) (d : Nat)
    (targetPair : QaryWord 2 n × QaryWord 2 n),
    targetPair ∈ binaryWordPairOrbitCell target ->
      binaryOrbitMultiplicity n target *
          ((binaryOneSidedShellSourceCell source targetPair d).card : Rat) =
      binaryOrbitMultiplicity n source *
          binaryMatrixCutCoeff n source target d

theorem binaryOneSidedShellTargetDegreeIdentity_holds (n : Nat) :
    BinaryOneSidedShellTargetDegreeIdentity n := by
  intro source target d targetPair htargetPair
  have hedgeNat := binaryOneSidedShell_edge_sum_source_eq_target source target d
  have hsourceSumRat :
      (((binaryWordPairOrbitCell source).sum (fun sourcePair =>
        (binaryOneSidedShellTargetPairCell sourcePair target d).card) : Nat) : Rat) =
        ((binaryWordPairOrbitCell source).card : Rat) *
          binaryMatrixCutCoeff n source target d := by
    rw [Nat.cast_sum]
    calc
      (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          ((binaryOneSidedShellTargetPairCell sourcePair target d).card : Rat)) =
        (binaryWordPairOrbitCell source).sum (fun _sourcePair =>
          binaryMatrixCutCoeff n source target d) := by
          apply Finset.sum_congr rfl
          intro sourcePair hsourcePair
          exact binaryOneSidedShellTargetPairCell_card_eq_binaryMatrixCutCoeff
            hsourcePair
      _ = ((binaryWordPairOrbitCell source).card : Rat) *
            binaryMatrixCutCoeff n source target d := by
          simp [Finset.sum_const, nsmul_eq_mul]
  have htargetSumRat :
      (((binaryWordPairOrbitCell target).sum (fun pair =>
        (binaryOneSidedShellSourceCell source pair d).card) : Nat) : Rat) =
        ((binaryWordPairOrbitCell target).card : Rat) *
          ((binaryOneSidedShellSourceCell source targetPair d).card : Rat) := by
    rw [Nat.cast_sum]
    calc
      (binaryWordPairOrbitCell target).sum (fun pair =>
          ((binaryOneSidedShellSourceCell source pair d).card : Rat)) =
        (binaryWordPairOrbitCell target).sum (fun _pair =>
          ((binaryOneSidedShellSourceCell source targetPair d).card : Rat)) := by
          apply Finset.sum_congr rfl
          intro pair hpair
          have hcard :=
            binaryOneSidedShellSourceCell_card_eq_of_mem_target_orbit
              (source := source) (target := target) (targetPair := targetPair)
              (targetPair' := pair) (d := d) htargetPair hpair
          exact_mod_cast hcard.symm
      _ = ((binaryWordPairOrbitCell target).card : Rat) *
            ((binaryOneSidedShellSourceCell source targetPair d).card : Rat) := by
          simp [Finset.sum_const, nsmul_eq_mul]
  have hsumEq :
      ((binaryWordPairOrbitCell source).card : Rat) *
          binaryMatrixCutCoeff n source target d =
        ((binaryWordPairOrbitCell target).card : Rat) *
          ((binaryOneSidedShellSourceCell source targetPair d).card : Rat) := by
    calc
      ((binaryWordPairOrbitCell source).card : Rat) *
          binaryMatrixCutCoeff n source target d =
        (((binaryWordPairOrbitCell source).sum (fun sourcePair =>
          (binaryOneSidedShellTargetPairCell sourcePair target d).card) : Nat) : Rat) := by
          exact hsourceSumRat.symm
      _ =
        (((binaryWordPairOrbitCell target).sum (fun pair =>
          (binaryOneSidedShellSourceCell source pair d).card) : Nat) : Rat) := by
          exact_mod_cast hedgeNat
      _ = ((binaryWordPairOrbitCell target).card : Rat) *
          ((binaryOneSidedShellSourceCell source targetPair d).card : Rat) := by
          exact htargetSumRat
  have hsourceCard :
      ((binaryWordPairOrbitCell source).card : Rat) =
        binaryOrbitMultiplicity n source := by
    rw [binaryWordPairOrbitCell_card, binaryOrbitMultiplicityNat_cast]
  have htargetCard :
      ((binaryWordPairOrbitCell target).card : Rat) =
        binaryOrbitMultiplicity n target := by
    rw [binaryWordPairOrbitCell_card, binaryOrbitMultiplicityNat_cast]
  simpa [hsourceCard, htargetCard] using hsumEq.symm

theorem binaryOneSidedShell_weighted_pair_sum_identity {n : Nat}
    (source target : BinaryOrbitIndex n) (d : Nat)
    (weight : QaryWord 2 n × QaryWord 2 n -> Rat) :
    (binaryOrbitMultiplicity n source)⁻¹ *
        (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          (binaryOneSidedShellTargetPairCell sourcePair target d).sum weight) =
      binaryMatrixCutCoeff n source target d *
        ((binaryOrbitMultiplicity n target)⁻¹ *
          (binaryWordPairOrbitCell target).sum weight) := by
  classical
  let Ms : Rat := binaryOrbitMultiplicity n source
  let Mt : Rat := binaryOrbitMultiplicity n target
  let coeff : Rat := binaryMatrixCutCoeff n source target d
  have hMs : Ms ≠ 0 := by
    dsimp [Ms]
    exact binaryOrbitMultiplicity_ne_zero n source
  have hMt : Mt ≠ 0 := by
    dsimp [Mt]
    exact binaryOrbitMultiplicity_ne_zero n target
  rw [binaryOneSidedShell_weighted_edge_sum_source_eq_target]
  calc
    Ms⁻¹ *
        (binaryWordPairOrbitCell target).sum (fun targetPair =>
          ((binaryOneSidedShellSourceCell source targetPair d).card : Rat) *
            weight targetPair) =
      (binaryWordPairOrbitCell target).sum (fun targetPair =>
        Ms⁻¹ *
          (((binaryOneSidedShellSourceCell source targetPair d).card : Rat) *
            weight targetPair)) := by
        rw [Finset.mul_sum]
    _ =
      (binaryWordPairOrbitCell target).sum (fun targetPair =>
        coeff * (Mt⁻¹ * weight targetPair)) := by
        apply Finset.sum_congr rfl
        intro targetPair htargetPair
        have hdeg :=
          binaryOneSidedShellTargetDegreeIdentity_holds n
            source target d targetPair htargetPair
        have hterm :
            Ms⁻¹ *
                (((binaryOneSidedShellSourceCell source targetPair d).card : Rat) *
                  weight targetPair) =
              coeff * (Mt⁻¹ * weight targetPair) := by
          by_cases hw : weight targetPair = 0
          · simp [hw]
          · field_simp [hMs, hMt, hw]
            dsimp [Ms, Mt, coeff] at hdeg ⊢
            ring_nf
            simpa [mul_assoc, mul_comm, mul_left_comm] using hdeg
        exact hterm
    _ =
      coeff *
        (Mt⁻¹ * (binaryWordPairOrbitCell target).sum weight) := by
        rw [Finset.mul_sum, Finset.mul_sum]
    _ =
      binaryMatrixCutCoeff n source target d *
        ((binaryOrbitMultiplicity n target)⁻¹ *
          (binaryWordPairOrbitCell target).sum weight) := by
        rfl

theorem binaryRelativeCodeBaseCell_orbit_weight_sum_eq_codeTripleOrbitCell_card
    {n : Nat} (C : Finset (QaryWord 2 n)) (target : BinaryOrbitIndex n) :
    (binaryWordPairOrbitCell target).sum (fun targetPair =>
      ((binaryRelativeCodeBaseCell C targetPair.1 targetPair.2).card : Rat)) =
        ((binaryCodeTripleOrbitCell C target).card : Rat) := by
  have hcast :
      (((binaryWordPairOrbitCell target).sum (fun targetPair =>
        (binaryRelativeCodeBaseCell C targetPair.1 targetPair.2).card) : Nat) : Rat) =
        ((binaryCodeTripleOrbitCell C target).card : Rat) := by
    exact_mod_cast binaryWordPairOrbitCell_baseCell_sum_card C target
  simpa [Nat.cast_sum] using hcast

theorem binaryOrbitOf_swap_pair {n : Nat} (u v : QaryWord 2 n) :
    binaryOrbitOf v u = (binaryOrbitOf u v).swap := by
  apply binaryMatrixCutOrbitIndex_ext
  · rfl
  · rfl
  · simp [binaryOrbitOf, BinaryOrbitIndex.swap, Finset.inter_comm]

theorem binaryMatrixCutOrbitIndex_swap_swap {n : Nat}
    (idx : BinaryOrbitIndex n) :
    idx.swap.swap = idx := by
  apply binaryMatrixCutOrbitIndex_ext <;> rfl

theorem binaryTranslatedPairBaseCell_zero_first_orbit_sum_card_eq_ambientFirstBaseCell
    {n : Nat} (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n) :
    (binaryWordPairOrbitCell idx).sum (fun pair =>
      (binaryTranslatedPairBaseCell C (zeroWord 2 n (by decide)) pair.1).card) =
      (binaryCodeTripleAmbientFirstBaseCell C idx).card := by
  let total :=
    (binaryWordPairOrbitCell idx).sigma (fun pair =>
      binaryTranslatedPairBaseCell C (zeroWord 2 n (by decide)) pair.1)
  let encode :
      Sigma (fun _pair : QaryWord 2 n × QaryWord 2 n => QaryWord 2 n) ->
        BinaryCodeTriple n :=
    fun item => ((binaryXorWord item.2 item.1.1,
      binaryXorWord item.2 item.1.2), item.2)
  have htotal_card :
      total.card = (binaryCodeTripleAmbientFirstBaseCell C idx).card := by
    apply Finset.card_bij (fun item _ => encode item)
    · intro item hitem
      rw [Finset.mem_sigma] at hitem
      rcases hitem with ⟨hpair, hbase⟩
      rw [mem_binaryWordPairOrbitCell] at hpair
      rw [mem_binaryTranslatedPairBaseCell] at hbase
      rw [binaryCodeTripleAmbientFirstBaseCell, Finset.mem_filter]
      refine ⟨?_, ?_⟩
      · rw [binaryCodeTripleAmbientOrbitCell, mem_binaryCodeTripleOrbitCell]
        exact ⟨by simp, by simp, by simp, by
          simpa [encode] using
            (binaryCodeTripleOrbitOf_xor item.2 item.1.1 item.1.2).trans hpair⟩
      · exact ⟨by simpa [encode] using hbase.2, by
          simpa [encode] using hbase.1⟩
    · intro a ha b hb hencode
      have hbase : a.2 = b.2 := by
        exact congrArg (fun triple : BinaryCodeTriple n => triple.2) hencode
      have hleft : a.1.1 = b.1.1 := by
        have hfirst := congrArg (fun triple : BinaryCodeTriple n => triple.1.1) hencode
        have hcancel := congrArg (fun word : QaryWord 2 n =>
          binaryXorWord a.2 word) hfirst
        simpa [encode, hbase] using hcancel
      have hright : a.1.2 = b.1.2 := by
        have hsecond := congrArg (fun triple : BinaryCodeTriple n => triple.1.2) hencode
        have hcancel := congrArg (fun word : QaryWord 2 n =>
          binaryXorWord a.2 word) hsecond
        simpa [encode, hbase] using hcancel
      cases a with
      | mk apair abase =>
          cases apair with
          | mk aleft aright =>
              cases b with
              | mk bpair bbase =>
                  cases bpair with
                  | mk bleft bright =>
                      simp at hbase hleft hright
                      subst bbase
                      subst bleft
                      subst bright
                      rfl
    · intro triple htriple
      let pair : QaryWord 2 n × QaryWord 2 n :=
        (binaryXorWord triple.2 triple.1.1,
          binaryXorWord triple.2 triple.1.2)
      refine ⟨⟨pair, triple.2⟩, ?_, ?_⟩
      · rw [Finset.mem_sigma]
        rw [binaryCodeTripleAmbientFirstBaseCell, Finset.mem_filter] at htriple
        have hcell := htriple.1
        rw [binaryCodeTripleAmbientOrbitCell, mem_binaryCodeTripleOrbitCell] at hcell
        refine ⟨?_, ?_⟩
        · rw [mem_binaryWordPairOrbitCell]
          have hxor :
              ((binaryXorWord triple.2 pair.1,
                  binaryXorWord triple.2 pair.2), triple.2) = triple := by
            simp [pair]
          have horbit := hcell.2.2.2
          rw [← hxor] at horbit
          simpa [pair] using
            (binaryCodeTripleOrbitOf_xor triple.2 pair.1 pair.2).symm.trans horbit
        · rw [mem_binaryTranslatedPairBaseCell]
          exact ⟨by simpa [pair] using htriple.2.2,
            by simpa [pair] using htriple.2.1⟩
      · simp [encode, pair]
  calc
    (binaryWordPairOrbitCell idx).sum (fun pair =>
        (binaryTranslatedPairBaseCell C (zeroWord 2 n (by decide)) pair.1).card) =
        total.card := by
          simp [total]
    _ = (binaryCodeTripleAmbientFirstBaseCell C idx).card := htotal_card

theorem binaryTranslatedPairBaseCell_zero_second_orbit_sum_card_eq_ambientFirstBaseCell_swap
    {n : Nat} (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n) :
    (binaryWordPairOrbitCell idx).sum (fun pair =>
      (binaryTranslatedPairBaseCell C (zeroWord 2 n (by decide)) pair.2).card) =
      (binaryCodeTripleAmbientFirstBaseCell C idx.swap).card := by
  let total :=
    (binaryWordPairOrbitCell idx).sigma (fun pair =>
      binaryTranslatedPairBaseCell C (zeroWord 2 n (by decide)) pair.2)
  let encode :
      Sigma (fun _pair : QaryWord 2 n × QaryWord 2 n => QaryWord 2 n) ->
        BinaryCodeTriple n :=
    fun item => ((binaryXorWord item.2 item.1.2,
      binaryXorWord item.2 item.1.1), item.2)
  have htotal_card :
      total.card = (binaryCodeTripleAmbientFirstBaseCell C idx.swap).card := by
    apply Finset.card_bij (fun item _ => encode item)
    · intro item hitem
      rw [Finset.mem_sigma] at hitem
      rcases hitem with ⟨hpair, hbase⟩
      rw [mem_binaryWordPairOrbitCell] at hpair
      rw [mem_binaryTranslatedPairBaseCell] at hbase
      rw [binaryCodeTripleAmbientFirstBaseCell, Finset.mem_filter]
      refine ⟨?_, ?_⟩
      · rw [binaryCodeTripleAmbientOrbitCell, mem_binaryCodeTripleOrbitCell]
        exact ⟨by simp, by simp, by simp, by
          have horbit :=
            binaryCodeTripleOrbitOf_xor item.2 item.1.2 item.1.1
          have hswap :
              binaryOrbitOf item.1.2 item.1.1 = idx.swap := by
            calc
              binaryOrbitOf item.1.2 item.1.1 =
                  (binaryOrbitOf item.1.1 item.1.2).swap := by
                    exact binaryOrbitOf_swap_pair item.1.1 item.1.2
              _ = idx.swap := by rw [hpair]
          simpa [encode] using horbit.trans hswap⟩
      · exact ⟨by simpa [encode] using hbase.2, by
          simpa [encode] using hbase.1⟩
    · intro a ha b hb hencode
      have hbase : a.2 = b.2 := by
        exact congrArg (fun triple : BinaryCodeTriple n => triple.2) hencode
      have hleft : a.1.2 = b.1.2 := by
        have hfirst := congrArg (fun triple : BinaryCodeTriple n => triple.1.1) hencode
        have hcancel := congrArg (fun word : QaryWord 2 n =>
          binaryXorWord a.2 word) hfirst
        simpa [encode, hbase] using hcancel
      have hright : a.1.1 = b.1.1 := by
        have hsecond := congrArg (fun triple : BinaryCodeTriple n => triple.1.2) hencode
        have hcancel := congrArg (fun word : QaryWord 2 n =>
          binaryXorWord a.2 word) hsecond
        simpa [encode, hbase] using hcancel
      cases a with
      | mk apair abase =>
          cases apair with
          | mk aleft aright =>
              cases b with
              | mk bpair bbase =>
                  cases bpair with
                  | mk bleft bright =>
                      simp at hbase hleft hright
                      subst bbase
                      subst bleft
                      subst bright
                      rfl
    · intro triple htriple
      let pair : QaryWord 2 n × QaryWord 2 n :=
        (binaryXorWord triple.2 triple.1.2,
          binaryXorWord triple.2 triple.1.1)
      refine ⟨⟨pair, triple.2⟩, ?_, ?_⟩
      · rw [Finset.mem_sigma]
        rw [binaryCodeTripleAmbientFirstBaseCell, Finset.mem_filter] at htriple
        have hcell := htriple.1
        rw [binaryCodeTripleAmbientOrbitCell, mem_binaryCodeTripleOrbitCell] at hcell
        refine ⟨?_, ?_⟩
        · rw [mem_binaryWordPairOrbitCell]
          have hxor :
              ((binaryXorWord triple.2 pair.2,
                  binaryXorWord triple.2 pair.1), triple.2) = triple := by
            simp [pair]
          have horbit := hcell.2.2.2
          rw [← hxor] at horbit
          have horbit' :=
            (binaryCodeTripleOrbitOf_xor triple.2 pair.2 pair.1).symm.trans horbit
          calc
            binaryOrbitOf pair.1 pair.2 =
                (binaryOrbitOf pair.2 pair.1).swap := by
                  exact binaryOrbitOf_swap_pair pair.2 pair.1
            _ = idx.swap.swap := by rw [horbit']
            _ = idx := binaryMatrixCutOrbitIndex_swap_swap idx
        · rw [mem_binaryTranslatedPairBaseCell]
          exact ⟨by simpa [pair] using htriple.2.2,
            by simpa [pair] using htriple.2.1⟩
      · simp [encode, pair]
  calc
    (binaryWordPairOrbitCell idx).sum (fun pair =>
        (binaryTranslatedPairBaseCell C (zeroWord 2 n (by decide)) pair.2).card) =
        total.card := by
          simp [total]
    _ = (binaryCodeTripleAmbientFirstBaseCell C idx.swap).card := htotal_card

theorem binaryTranslatedPairBaseCell_orbit_sum_card_eq_ambientFirstSecondCell
    {n : Nat} (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n) :
    (binaryWordPairOrbitCell idx).sum (fun pair =>
      (binaryTranslatedPairBaseCell C pair.1 pair.2).card) =
      (binaryCodeTripleAmbientFirstSecondCell C idx).card := by
  let total :=
    (binaryWordPairOrbitCell idx).sigma (fun pair =>
      binaryTranslatedPairBaseCell C pair.1 pair.2)
  let encode :
      Sigma (fun _pair : QaryWord 2 n × QaryWord 2 n => QaryWord 2 n) ->
        BinaryCodeTriple n :=
    fun item => ((binaryXorWord item.2 item.1.1,
      binaryXorWord item.2 item.1.2), item.2)
  have htotal_card :
      total.card = (binaryCodeTripleAmbientFirstSecondCell C idx).card := by
    apply Finset.card_bij (fun item _ => encode item)
    · intro item hitem
      rw [Finset.mem_sigma] at hitem
      rcases hitem with ⟨hpair, hbase⟩
      rw [mem_binaryWordPairOrbitCell] at hpair
      rw [mem_binaryTranslatedPairBaseCell] at hbase
      rw [binaryCodeTripleAmbientFirstSecondCell, Finset.mem_filter]
      refine ⟨?_, ?_⟩
      · rw [binaryCodeTripleAmbientOrbitCell, mem_binaryCodeTripleOrbitCell]
        exact ⟨by simp, by simp, by simp, by
          simpa [encode] using
            (binaryCodeTripleOrbitOf_xor item.2 item.1.1 item.1.2).trans hpair⟩
      · exact ⟨by simpa [encode] using hbase.1,
          by simpa [encode] using hbase.2⟩
    · intro a ha b hb hencode
      have hbase : a.2 = b.2 := by
        exact congrArg (fun triple : BinaryCodeTriple n => triple.2) hencode
      have hleft : a.1.1 = b.1.1 := by
        have hfirst := congrArg (fun triple : BinaryCodeTriple n => triple.1.1) hencode
        have hcancel := congrArg (fun word : QaryWord 2 n =>
          binaryXorWord a.2 word) hfirst
        simpa [encode, hbase] using hcancel
      have hright : a.1.2 = b.1.2 := by
        have hsecond := congrArg (fun triple : BinaryCodeTriple n => triple.1.2) hencode
        have hcancel := congrArg (fun word : QaryWord 2 n =>
          binaryXorWord a.2 word) hsecond
        simpa [encode, hbase] using hcancel
      cases a with
      | mk apair abase =>
          cases apair with
          | mk aleft aright =>
              cases b with
              | mk bpair bbase =>
                  cases bpair with
                  | mk bleft bright =>
                      simp at hbase hleft hright
                      subst bbase
                      subst bleft
                      subst bright
                      rfl
    · intro triple htriple
      let pair : QaryWord 2 n × QaryWord 2 n :=
        (binaryXorWord triple.2 triple.1.1,
          binaryXorWord triple.2 triple.1.2)
      refine ⟨⟨pair, triple.2⟩, ?_, ?_⟩
      · rw [Finset.mem_sigma]
        rw [binaryCodeTripleAmbientFirstSecondCell, Finset.mem_filter] at htriple
        have hcell := htriple.1
        rw [binaryCodeTripleAmbientOrbitCell, mem_binaryCodeTripleOrbitCell] at hcell
        refine ⟨?_, ?_⟩
        · rw [mem_binaryWordPairOrbitCell]
          have hxor :
              ((binaryXorWord triple.2 pair.1,
                  binaryXorWord triple.2 pair.2), triple.2) = triple := by
            simp [pair]
          have horbit := hcell.2.2.2
          rw [← hxor] at horbit
          simpa [pair] using
            (binaryCodeTripleOrbitOf_xor triple.2 pair.1 pair.2).symm.trans horbit
        · rw [mem_binaryTranslatedPairBaseCell]
          exact ⟨by simpa [pair] using htriple.2.1,
            by simpa [pair] using htriple.2.2⟩
      · simp [encode, pair]
  calc
    (binaryWordPairOrbitCell idx).sum (fun pair =>
        (binaryTranslatedPairBaseCell C pair.1 pair.2).card) =
        total.card := by
          simp [total]
    _ = (binaryCodeTripleAmbientFirstSecondCell C idx).card := htotal_card

def binaryMatrixCutLhs1TargetWeight {n : Nat}
    (C : Finset (QaryWord 2 n))
    (targetPair : QaryWord 2 n × QaryWord 2 n) : Rat :=
  ((binaryRelativeCodeBaseCell C targetPair.1 targetPair.2).card : Rat)

def binaryMatrixCutLhs2TargetWeight {n : Nat}
    (C : Finset (QaryWord 2 n))
    (targetPair : QaryWord 2 n × QaryWord 2 n) : Rat :=
  ((binaryTranslatedPairBaseCell C (zeroWord 2 n (by decide)) targetPair.2).card : Rat) -
    ((binaryRelativeCodeBaseCell C targetPair.1 targetPair.2).card : Rat)

def binaryMatrixCutLhs3TargetWeight {n : Nat}
    (C : Finset (QaryWord 2 n))
    (targetPair : QaryWord 2 n × QaryWord 2 n) : Rat :=
  ((binaryTranslatedPairBaseCell C targetPair.1 targetPair.2).card : Rat) -
    ((binaryRelativeCodeBaseCell C targetPair.1 targetPair.2).card : Rat)

def binaryMatrixCutLhs4TargetWeight {n : Nat}
    (C : Finset (QaryWord 2 n))
    (targetPair : QaryWord 2 n × QaryWord 2 n) : Rat :=
  (C.card : Rat) -
    binaryMatrixCutLhs2TargetWeight C targetPair -
    binaryMatrixCutLhs3TargetWeight C targetPair -
    binaryMatrixCutLhs1TargetWeight C targetPair

def binaryMatrixCutSourceCell1 {n : Nat}
    (C : Finset (QaryWord 2 n))
    (sourcePair : QaryWord 2 n × QaryWord 2 n) :
    Finset (QaryWord 2 n) :=
  Finset.univ.filter (fun base =>
    base ∈ C ∧ binaryXorWord base sourcePair.1 ∈ C)

@[simp]
theorem mem_binaryMatrixCutSourceCell1 {n : Nat}
    {C : Finset (QaryWord 2 n)}
    {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {base : QaryWord 2 n} :
    base ∈ binaryMatrixCutSourceCell1 C sourcePair ↔
      base ∈ C ∧ binaryXorWord base sourcePair.1 ∈ C := by
  simp [binaryMatrixCutSourceCell1]

def binaryMatrixCutSourceCell2 {n : Nat}
    (C : Finset (QaryWord 2 n))
    (sourcePair : QaryWord 2 n × QaryWord 2 n) :
    Finset (QaryWord 2 n) :=
  Finset.univ.filter (fun base =>
    base ∈ C ∧ binaryXorWord base sourcePair.1 ∉ C)

@[simp]
theorem mem_binaryMatrixCutSourceCell2 {n : Nat}
    {C : Finset (QaryWord 2 n)}
    {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {base : QaryWord 2 n} :
    base ∈ binaryMatrixCutSourceCell2 C sourcePair ↔
      base ∈ C ∧ binaryXorWord base sourcePair.1 ∉ C := by
  simp [binaryMatrixCutSourceCell2]

def binaryMatrixCutSourceCell3 {n : Nat}
    (C : Finset (QaryWord 2 n))
    (sourcePair : QaryWord 2 n × QaryWord 2 n) :
    Finset (QaryWord 2 n) :=
  Finset.univ.filter (fun base =>
    base ∉ C ∧ binaryXorWord base sourcePair.1 ∈ C)

@[simp]
theorem mem_binaryMatrixCutSourceCell3 {n : Nat}
    {C : Finset (QaryWord 2 n)}
    {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {base : QaryWord 2 n} :
    base ∈ binaryMatrixCutSourceCell3 C sourcePair ↔
      base ∉ C ∧ binaryXorWord base sourcePair.1 ∈ C := by
  simp [binaryMatrixCutSourceCell3]

def binaryMatrixCutSourceCell4 {n : Nat}
    (C : Finset (QaryWord 2 n))
    (sourcePair : QaryWord 2 n × QaryWord 2 n) :
    Finset (QaryWord 2 n) :=
  Finset.univ.filter (fun base =>
    base ∉ C ∧ binaryXorWord base sourcePair.1 ∉ C)

@[simp]
theorem mem_binaryMatrixCutSourceCell4 {n : Nat}
    {C : Finset (QaryWord 2 n)}
    {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {base : QaryWord 2 n} :
    base ∈ binaryMatrixCutSourceCell4 C sourcePair ↔
      base ∉ C ∧ binaryXorWord base sourcePair.1 ∉ C := by
  simp [binaryMatrixCutSourceCell4]

def binaryMatrixCutTargetProjectionCell {n : Nat}
    (C : Finset (QaryWord 2 n)) (z : QaryWord 2 n) :
    Finset (QaryWord 2 n) :=
  Finset.univ.filter (fun base => binaryXorWord base z ∈ C)

@[simp]
theorem mem_binaryMatrixCutTargetProjectionCell {n : Nat}
    {C : Finset (QaryWord 2 n)} {z base : QaryWord 2 n} :
    base ∈ binaryMatrixCutTargetProjectionCell C z ↔
      binaryXorWord base z ∈ C := by
  simp [binaryMatrixCutTargetProjectionCell]

def binaryMatrixCutTargetBaseCell1 {n : Nat}
    (C : Finset (QaryWord 2 n))
    (targetPair : QaryWord 2 n × QaryWord 2 n) :
    Finset (QaryWord 2 n) :=
  binaryRelativeCodeBaseCell C targetPair.1 targetPair.2

@[simp]
theorem mem_binaryMatrixCutTargetBaseCell1 {n : Nat}
    {C : Finset (QaryWord 2 n)}
    {targetPair : QaryWord 2 n × QaryWord 2 n}
    {base : QaryWord 2 n} :
    base ∈ binaryMatrixCutTargetBaseCell1 C targetPair ↔
      base ∈ C ∧ binaryXorWord base targetPair.1 ∈ C ∧
        binaryXorWord base targetPair.2 ∈ C := by
  simp [binaryMatrixCutTargetBaseCell1]

def binaryMatrixCutTargetBaseCell2 {n : Nat}
    (C : Finset (QaryWord 2 n))
    (targetPair : QaryWord 2 n × QaryWord 2 n) :
    Finset (QaryWord 2 n) :=
  Finset.univ.filter (fun base =>
    base ∈ C ∧ binaryXorWord base targetPair.1 ∉ C ∧
      binaryXorWord base targetPair.2 ∈ C)

@[simp]
theorem mem_binaryMatrixCutTargetBaseCell2 {n : Nat}
    {C : Finset (QaryWord 2 n)}
    {targetPair : QaryWord 2 n × QaryWord 2 n}
    {base : QaryWord 2 n} :
    base ∈ binaryMatrixCutTargetBaseCell2 C targetPair ↔
      base ∈ C ∧ binaryXorWord base targetPair.1 ∉ C ∧
        binaryXorWord base targetPair.2 ∈ C := by
  simp [binaryMatrixCutTargetBaseCell2]

def binaryMatrixCutTargetBaseCell3 {n : Nat}
    (C : Finset (QaryWord 2 n))
    (targetPair : QaryWord 2 n × QaryWord 2 n) :
    Finset (QaryWord 2 n) :=
  binaryComplementTranslatedPairBaseCell C targetPair.1 targetPair.2

@[simp]
theorem mem_binaryMatrixCutTargetBaseCell3 {n : Nat}
    {C : Finset (QaryWord 2 n)}
    {targetPair : QaryWord 2 n × QaryWord 2 n}
    {base : QaryWord 2 n} :
    base ∈ binaryMatrixCutTargetBaseCell3 C targetPair ↔
      base ∉ C ∧ binaryXorWord base targetPair.1 ∈ C ∧
        binaryXorWord base targetPair.2 ∈ C := by
  simp [binaryMatrixCutTargetBaseCell3]

def binaryMatrixCutTargetBaseCell4 {n : Nat}
    (C : Finset (QaryWord 2 n))
    (targetPair : QaryWord 2 n × QaryWord 2 n) :
    Finset (QaryWord 2 n) :=
  Finset.univ.filter (fun base =>
    base ∉ C ∧ binaryXorWord base targetPair.1 ∉ C ∧
      binaryXorWord base targetPair.2 ∈ C)

@[simp]
theorem mem_binaryMatrixCutTargetBaseCell4 {n : Nat}
    {C : Finset (QaryWord 2 n)}
    {targetPair : QaryWord 2 n × QaryWord 2 n}
    {base : QaryWord 2 n} :
    base ∈ binaryMatrixCutTargetBaseCell4 C targetPair ↔
      base ∉ C ∧ binaryXorWord base targetPair.1 ∉ C ∧
        binaryXorWord base targetPair.2 ∈ C := by
  simp [binaryMatrixCutTargetBaseCell4]

theorem binaryMatrixCutTargetProjectionCell_card {n : Nat}
    (C : Finset (QaryWord 2 n)) (z : QaryWord 2 n) :
    (binaryMatrixCutTargetProjectionCell C z).card = C.card := by
  classical
  apply Finset.card_bij (fun base _ => binaryXorWord base z)
  · intro base hbase
    rw [mem_binaryMatrixCutTargetProjectionCell] at hbase
    exact hbase
  · intro base₁ _ base₂ _ hxor
    have hcancel := congrArg (fun word : QaryWord 2 n =>
      binaryXorWord word z) hxor
    simpa using hcancel
  · intro code hcode
    refine ⟨binaryXorWord code z, ?_, ?_⟩
    · rw [mem_binaryMatrixCutTargetProjectionCell]
      simpa using hcode
    · simp [binaryXorWord_comm]

theorem binaryMatrixCutTargetBaseCell1_card_eq_weight {n : Nat}
    (C : Finset (QaryWord 2 n))
    (targetPair : QaryWord 2 n × QaryWord 2 n) :
    ((binaryMatrixCutTargetBaseCell1 C targetPair).card : Rat) =
      binaryMatrixCutLhs1TargetWeight C targetPair := by
  rfl

theorem binaryMatrixCutTargetBaseCell2_card_eq_weight {n : Nat}
    (C : Finset (QaryWord 2 n))
    (targetPair : QaryWord 2 n × QaryWord 2 n) :
    ((binaryMatrixCutTargetBaseCell2 C targetPair).card : Rat) =
      binaryMatrixCutLhs2TargetWeight C targetPair := by
  classical
  let total :=
    binaryTranslatedPairBaseCell C (zeroWord 2 n (by decide)) targetPair.2
  let rel := binaryRelativeCodeBaseCell C targetPair.1 targetPair.2
  let cut := binaryMatrixCutTargetBaseCell2 C targetPair
  have hyes :
      total.filter (fun base : QaryWord 2 n =>
        binaryXorWord base targetPair.1 ∈ C) = rel := by
    ext base
    simp [total, rel, binaryTranslatedPairBaseCell,
      binaryRelativeCodeBaseCell, and_left_comm, and_comm]
  have hnot :
      total.filter (fun base : QaryWord 2 n =>
        binaryXorWord base targetPair.1 ∉ C) = cut := by
    ext base
    simp [total, cut, binaryTranslatedPairBaseCell,
      binaryMatrixCutTargetBaseCell2, and_left_comm, and_comm]
  have hcard := Finset.card_filter_add_card_filter_not
    (s := total)
    (p := fun base : QaryWord 2 n => binaryXorWord base targetPair.1 ∈ C)
  rw [hyes, hnot] at hcard
  have hrat :
      ((rel.card : Nat) : Rat) + ((cut.card : Nat) : Rat) =
        ((total.card : Nat) : Rat) := by
    exact_mod_cast hcard
  unfold binaryMatrixCutLhs2TargetWeight
  change ((cut.card : Nat) : Rat) =
    ((total.card : Nat) : Rat) - ((rel.card : Nat) : Rat)
  linarith

theorem binaryMatrixCutTargetBaseCell3_card_eq_weight {n : Nat}
    (C : Finset (QaryWord 2 n))
    (targetPair : QaryWord 2 n × QaryWord 2 n) :
    ((binaryMatrixCutTargetBaseCell3 C targetPair).card : Rat) =
      binaryMatrixCutLhs3TargetWeight C targetPair := by
  let comp := binaryComplementTranslatedPairBaseCell C targetPair.1 targetPair.2
  let rel := binaryRelativeCodeBaseCell C targetPair.1 targetPair.2
  let total := binaryTranslatedPairBaseCell C targetPair.1 targetPair.2
  have hcard :=
    binaryComplementTranslatedPairBaseCell_card_add_relativeCodeBaseCell_card
      C targetPair.1 targetPair.2
  have hrat :
      ((comp.card : Nat) : Rat) + ((rel.card : Nat) : Rat) =
        ((total.card : Nat) : Rat) := by
    simpa [comp, rel, total] using congrArg (fun m : Nat => (m : Rat)) hcard
  unfold binaryMatrixCutTargetBaseCell3 binaryMatrixCutLhs3TargetWeight
  change ((comp.card : Nat) : Rat) =
    ((total.card : Nat) : Rat) - ((rel.card : Nat) : Rat)
  linarith

theorem binaryMatrixCutTargetBaseCell4_card_eq_weight {n : Nat}
    (C : Finset (QaryWord 2 n))
    (targetPair : QaryWord 2 n × QaryWord 2 n) :
    ((binaryMatrixCutTargetBaseCell4 C targetPair).card : Rat) =
      binaryMatrixCutLhs4TargetWeight C targetPair := by
  classical
  let proj := binaryMatrixCutTargetProjectionCell C targetPair.2
  let yesBase := proj.filter (fun base : QaryWord 2 n => base ∈ C)
  let noBase := proj.filter (fun base : QaryWord 2 n => base ∉ C)
  let cell1 := binaryMatrixCutTargetBaseCell1 C targetPair
  let cell2 := binaryMatrixCutTargetBaseCell2 C targetPair
  let cell3 := binaryMatrixCutTargetBaseCell3 C targetPair
  let cell4 := binaryMatrixCutTargetBaseCell4 C targetPair
  have hyesBase :
      yesBase.filter (fun base : QaryWord 2 n =>
        binaryXorWord base targetPair.1 ∈ C) = cell1 := by
    ext base
    simp [yesBase, proj, cell1, binaryMatrixCutTargetProjectionCell,
      binaryMatrixCutTargetBaseCell1, binaryRelativeCodeBaseCell,
      and_left_comm, and_comm]
  have hyesBaseNot :
      yesBase.filter (fun base : QaryWord 2 n =>
        binaryXorWord base targetPair.1 ∉ C) = cell2 := by
    ext base
    simp [yesBase, proj, cell2, binaryMatrixCutTargetProjectionCell,
      binaryMatrixCutTargetBaseCell2, and_left_comm, and_comm]
  have hnoBase :
      noBase.filter (fun base : QaryWord 2 n =>
        binaryXorWord base targetPair.1 ∈ C) = cell3 := by
    ext base
    simp [noBase, proj, cell3, binaryMatrixCutTargetProjectionCell,
      binaryMatrixCutTargetBaseCell3, binaryComplementTranslatedPairBaseCell,
      and_left_comm, and_comm]
  have hnoBaseNot :
      noBase.filter (fun base : QaryWord 2 n =>
        binaryXorWord base targetPair.1 ∉ C) = cell4 := by
    ext base
    simp [noBase, proj, cell4, binaryMatrixCutTargetProjectionCell,
      binaryMatrixCutTargetBaseCell4, and_left_comm, and_comm]
  have hsplitBase := Finset.card_filter_add_card_filter_not
    (s := proj) (p := fun base : QaryWord 2 n => base ∈ C)
  have hsplitYes := Finset.card_filter_add_card_filter_not
    (s := yesBase)
    (p := fun base : QaryWord 2 n => binaryXorWord base targetPair.1 ∈ C)
  have hsplitNo := Finset.card_filter_add_card_filter_not
    (s := noBase)
    (p := fun base : QaryWord 2 n => binaryXorWord base targetPair.1 ∈ C)
  have hnoBaseDef :
      proj.filter (fun base : QaryWord 2 n => ¬base ∈ C) = noBase := by
    ext base
    simp [noBase]
  rw [hnoBaseDef] at hsplitBase
  rw [hyesBase, hyesBaseNot] at hsplitYes
  rw [hnoBase, hnoBaseNot] at hsplitNo
  have hprojCard :
      ((cell1.card : Nat) : Rat) + ((cell2.card : Nat) : Rat) +
          ((cell3.card : Nat) : Rat) + ((cell4.card : Nat) : Rat) =
        ((proj.card : Nat) : Rat) := by
    have hbaseRat :
        ((yesBase.card : Nat) : Rat) + ((noBase.card : Nat) : Rat) =
          ((proj.card : Nat) : Rat) := by
      exact_mod_cast hsplitBase
    have hyesRat :
        ((cell1.card : Nat) : Rat) + ((cell2.card : Nat) : Rat) =
          ((yesBase.card : Nat) : Rat) := by
      exact_mod_cast hsplitYes
    have hnoRat :
        ((cell3.card : Nat) : Rat) + ((cell4.card : Nat) : Rat) =
          ((noBase.card : Nat) : Rat) := by
      exact_mod_cast hsplitNo
    linarith
  have hproj :
      ((proj.card : Nat) : Rat) = (C.card : Rat) := by
    exact_mod_cast binaryMatrixCutTargetProjectionCell_card C targetPair.2
  have h1 := binaryMatrixCutTargetBaseCell1_card_eq_weight C targetPair
  have h2 := binaryMatrixCutTargetBaseCell2_card_eq_weight C targetPair
  have h3 := binaryMatrixCutTargetBaseCell3_card_eq_weight C targetPair
  unfold binaryMatrixCutLhs4TargetWeight
  change ((cell4.card : Nat) : Rat) =
    (C.card : Rat) -
      binaryMatrixCutLhs2TargetWeight C targetPair -
      binaryMatrixCutLhs3TargetWeight C targetPair -
      binaryMatrixCutLhs1TargetWeight C targetPair
  linarith

theorem dist_binaryXorWord_cancel_left {n : Nat}
    (base u v : QaryWord 2 n) :
    dist (binaryXorWord base u) (binaryXorWord base v) = dist u v := by
  rw [dist_eq_binarySupport_binaryXorWord_card]
  rw [binaryXorWord_cancel_left_pair]
  rw [← dist_eq_binarySupport_binaryXorWord_card]

theorem binaryOneSidedShellTargetBaseCell_sum_card_eq_source_shellCount {n : Nat}
    (C : Finset (QaryWord 2 n))
    (sourcePair : QaryWord 2 n × QaryWord 2 n) (d : Nat)
    (sourceCell : Finset (QaryWord 2 n))
    (targetCell : QaryWord 2 n × QaryWord 2 n -> Finset (QaryWord 2 n))
    (hmem :
      forall {targetPair : QaryWord 2 n × QaryWord 2 n}
        {base : QaryWord 2 n},
        binaryOneSidedShellCompatible sourcePair targetPair d ->
          (base ∈ targetCell targetPair ↔
            base ∈ sourceCell ∧ binaryXorWord base targetPair.2 ∈ C)) :
    Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryOneSidedShellTargetPairCell sourcePair target d).sum
          (fun targetPair => (targetCell targetPair).card)) =
      sourceCell.sum (fun base =>
        shellCount 2 n C (binaryXorWord base sourcePair.2) d) := by
  classical
  let left :=
    (Finset.univ : Finset (BinaryOrbitIndex n)).sigma (fun target =>
      (binaryOneSidedShellTargetPairCell sourcePair target d).sigma
        (fun targetPair => targetCell targetPair))
  let right :=
    sourceCell.sigma (fun base =>
      C.filter (fun code : QaryWord 2 n =>
        dist (binaryXorWord base sourcePair.2) code = d))
  have hcard : left.card = right.card := by
    apply Finset.card_bij
      (fun item _hitem =>
        ⟨item.2.2, binaryXorWord item.2.2 item.2.1.2⟩)
    · intro item hitem
      rw [Finset.mem_sigma] at hitem ⊢
      rcases hitem with ⟨htarget, htargetPairBase⟩
      rw [Finset.mem_sigma] at htargetPairBase
      rcases htargetPairBase with ⟨htargetPair, hbaseTarget⟩
      rw [mem_binaryOneSidedShellTargetPairCell] at htargetPair
      have hbaseSource := (hmem htargetPair.2).mp hbaseTarget
      refine ⟨hbaseSource.1, ?_⟩
      rw [Finset.mem_filter]
      refine ⟨hbaseSource.2, ?_⟩
      rw [dist_binaryXorWord_cancel_left]
      exact htargetPair.2.2
    · intro item₁ hitem₁ item₂ hitem₂ hmap
      rcases item₁ with ⟨target₁, targetPair₁, base₁⟩
      rcases item₂ with ⟨target₂, targetPair₂, base₂⟩
      rw [Finset.mem_sigma] at hitem₁ hitem₂
      rcases hitem₁ with ⟨_htarget₁, htargetPairBase₁⟩
      rcases hitem₂ with ⟨_htarget₂, htargetPairBase₂⟩
      rw [Finset.mem_sigma] at htargetPairBase₁ htargetPairBase₂
      rcases htargetPairBase₁ with ⟨htargetPair₁, _hbase₁⟩
      rcases htargetPairBase₂ with ⟨htargetPair₂, _hbase₂⟩
      rw [mem_binaryOneSidedShellTargetPairCell] at htargetPair₁
      rw [mem_binaryOneSidedShellTargetPairCell] at htargetPair₂
      have hmapParts := Sigma.mk.inj_iff.mp hmap
      have hbase : base₁ = base₂ := hmapParts.1
      subst base₂
      have hcode :
          binaryXorWord base₁ targetPair₁.2 =
            binaryXorWord base₁ targetPair₂.2 := by
        exact heq_iff_eq.mp hmapParts.2
      have hsecond : targetPair₁.2 = targetPair₂.2 := by
        have hcancel := congrArg (fun word : QaryWord 2 n =>
          binaryXorWord base₁ word) hcode
        simpa using hcancel
      have hfirst₁ : targetPair₁.1 = sourcePair.1 := by
        exact htargetPair₁.2.1.symm
      have hfirst₂ : targetPair₂.1 = sourcePair.1 := by
        exact htargetPair₂.2.1.symm
      have hfirst : targetPair₁.1 = targetPair₂.1 := by
        exact hfirst₁.trans hfirst₂.symm
      have hpair : targetPair₁ = targetPair₂ := by
        exact Prod.ext hfirst hsecond
      subst targetPair₂
      have htarget : target₁ = target₂ := by
        have horbit₁ := mem_binaryWordPairOrbitCell.mp htargetPair₁.1
        have horbit₂ := mem_binaryWordPairOrbitCell.mp htargetPair₂.1
        exact horbit₁.symm.trans horbit₂
      subst target₂
      rfl
    · intro item hitem
      rw [Finset.mem_sigma] at hitem
      rcases hitem with ⟨hbaseSource, hcode⟩
      rw [Finset.mem_filter] at hcode
      let targetPair : QaryWord 2 n × QaryWord 2 n :=
        (sourcePair.1, binaryXorWord item.1 item.2)
      let target : BinaryOrbitIndex n :=
        binaryOrbitOf targetPair.1 targetPair.2
      have hcompat :
          binaryOneSidedShellCompatible sourcePair targetPair d := by
        constructor
        · rfl
        · have hdist :=
            dist_binaryXorWord_cancel_left item.1 sourcePair.2 targetPair.2
          simp [targetPair] at hdist
          exact hdist.symm.trans hcode.2
      have hbaseTarget : item.1 ∈ targetCell targetPair := by
        rw [hmem hcompat]
        refine ⟨hbaseSource, ?_⟩
        simpa [targetPair] using hcode.1
      refine ⟨⟨target, ⟨targetPair, item.1⟩⟩, ?_, ?_⟩
      · rw [Finset.mem_sigma]
        refine ⟨by simp [target], ?_⟩
        rw [Finset.mem_sigma]
        refine ⟨?_, hbaseTarget⟩
        rw [mem_binaryOneSidedShellTargetPairCell]
        refine ⟨?_, hcompat⟩
        rw [mem_binaryWordPairOrbitCell]
      · simp [targetPair]
  calc
    Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryOneSidedShellTargetPairCell sourcePair target d).sum
          (fun targetPair => (targetCell targetPair).card)) =
        left.card := by
      simp [left]
    _ = right.card := hcard
    _ = sourceCell.sum (fun base =>
        shellCount 2 n C (binaryXorWord base sourcePair.2) d) := by
      simp [right, shellCount]

theorem binaryMatrixCutTargetBaseCell1_sum_card_eq_source_shellCount {n : Nat}
    (C : Finset (QaryWord 2 n))
    (sourcePair : QaryWord 2 n × QaryWord 2 n) (d : Nat) :
    Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryOneSidedShellTargetPairCell sourcePair target d).sum
          (fun targetPair => (binaryMatrixCutTargetBaseCell1 C targetPair).card)) =
      (binaryMatrixCutSourceCell1 C sourcePair).sum (fun base =>
        shellCount 2 n C (binaryXorWord base sourcePair.2) d) := by
  apply binaryOneSidedShellTargetBaseCell_sum_card_eq_source_shellCount
  intro targetPair base hcompat
  simp [hcompat.1]
  constructor
  · intro h
    exact ⟨⟨h.1, h.2.1⟩, h.2.2⟩
  · intro h
    exact ⟨h.1.1, h.1.2, h.2⟩

theorem binaryMatrixCutTargetBaseCell2_sum_card_eq_source_shellCount {n : Nat}
    (C : Finset (QaryWord 2 n))
    (sourcePair : QaryWord 2 n × QaryWord 2 n) (d : Nat) :
    Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryOneSidedShellTargetPairCell sourcePair target d).sum
          (fun targetPair => (binaryMatrixCutTargetBaseCell2 C targetPair).card)) =
      (binaryMatrixCutSourceCell2 C sourcePair).sum (fun base =>
        shellCount 2 n C (binaryXorWord base sourcePair.2) d) := by
  apply binaryOneSidedShellTargetBaseCell_sum_card_eq_source_shellCount
  intro targetPair base hcompat
  simp [hcompat.1]
  constructor
  · intro h
    exact ⟨⟨h.1, h.2.1⟩, h.2.2⟩
  · intro h
    exact ⟨h.1.1, h.1.2, h.2⟩

theorem binaryMatrixCutTargetBaseCell3_sum_card_eq_source_shellCount {n : Nat}
    (C : Finset (QaryWord 2 n))
    (sourcePair : QaryWord 2 n × QaryWord 2 n) (d : Nat) :
    Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryOneSidedShellTargetPairCell sourcePair target d).sum
          (fun targetPair => (binaryMatrixCutTargetBaseCell3 C targetPair).card)) =
      (binaryMatrixCutSourceCell3 C sourcePair).sum (fun base =>
        shellCount 2 n C (binaryXorWord base sourcePair.2) d) := by
  apply binaryOneSidedShellTargetBaseCell_sum_card_eq_source_shellCount
  intro targetPair base hcompat
  simp [hcompat.1]
  constructor
  · intro h
    exact ⟨⟨h.1, h.2.1⟩, h.2.2⟩
  · intro h
    exact ⟨h.1.1, h.1.2, h.2⟩

theorem binaryMatrixCutTargetBaseCell4_sum_card_eq_source_shellCount {n : Nat}
    (C : Finset (QaryWord 2 n))
    (sourcePair : QaryWord 2 n × QaryWord 2 n) (d : Nat) :
    Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryOneSidedShellTargetPairCell sourcePair target d).sum
          (fun targetPair => (binaryMatrixCutTargetBaseCell4 C targetPair).card)) =
      (binaryMatrixCutSourceCell4 C sourcePair).sum (fun base =>
        shellCount 2 n C (binaryXorWord base sourcePair.2) d) := by
  apply binaryOneSidedShellTargetBaseCell_sum_card_eq_source_shellCount
  intro targetPair base hcompat
  simp [hcompat.1]
  constructor
  · intro h
    exact ⟨⟨h.1, h.2.1⟩, h.2.2⟩
  · intro h
    exact ⟨h.1.1, h.1.2, h.2⟩

def binaryMatrixCutSourceProjectionCell {n : Nat}
    (C : Finset (QaryWord 2 n)) (u : QaryWord 2 n) :
    Finset (QaryWord 2 n) :=
  Finset.univ.filter (fun base => binaryXorWord base u ∈ C)

@[simp]
theorem mem_binaryMatrixCutSourceProjectionCell {n : Nat}
    {C : Finset (QaryWord 2 n)} {u base : QaryWord 2 n} :
    base ∈ binaryMatrixCutSourceProjectionCell C u ↔
      binaryXorWord base u ∈ C := by
  simp [binaryMatrixCutSourceProjectionCell]

theorem binaryMatrixCutSourceProjectionCell_card {n : Nat}
    (C : Finset (QaryWord 2 n)) (u : QaryWord 2 n) :
    (binaryMatrixCutSourceProjectionCell C u).card = C.card := by
  simpa [binaryMatrixCutSourceProjectionCell] using
    binaryMatrixCutTargetProjectionCell_card C u

theorem binaryMatrixCutSourceCell1_card_add_sourceCell2_card {n : Nat}
    (C : Finset (QaryWord 2 n))
    (sourcePair : QaryWord 2 n × QaryWord 2 n) :
    (binaryMatrixCutSourceCell1 C sourcePair).card +
        (binaryMatrixCutSourceCell2 C sourcePair).card =
      C.card := by
  classical
  have hyes :
      C.filter (fun base : QaryWord 2 n =>
        binaryXorWord base sourcePair.1 ∈ C) =
        binaryMatrixCutSourceCell1 C sourcePair := by
    ext base
    simp [binaryMatrixCutSourceCell1]
  have hnot :
      C.filter (fun base : QaryWord 2 n =>
        binaryXorWord base sourcePair.1 ∉ C) =
        binaryMatrixCutSourceCell2 C sourcePair := by
    ext base
    simp [binaryMatrixCutSourceCell2]
  have hsplit := Finset.card_filter_add_card_filter_not
    (s := C)
    (p := fun base : QaryWord 2 n => binaryXorWord base sourcePair.1 ∈ C)
  rwa [hyes, hnot] at hsplit

theorem binaryMatrixCutSourceCell1_card_add_sourceCell3_card {n : Nat}
    (C : Finset (QaryWord 2 n))
    (sourcePair : QaryWord 2 n × QaryWord 2 n) :
    (binaryMatrixCutSourceCell1 C sourcePair).card +
        (binaryMatrixCutSourceCell3 C sourcePair).card =
      C.card := by
  classical
  let proj := binaryMatrixCutSourceProjectionCell C sourcePair.1
  have hyes :
      proj.filter (fun base : QaryWord 2 n => base ∈ C) =
        binaryMatrixCutSourceCell1 C sourcePair := by
    ext base
    simp [proj, binaryMatrixCutSourceProjectionCell,
      binaryMatrixCutSourceCell1, and_comm]
  have hnot :
      proj.filter (fun base : QaryWord 2 n => base ∉ C) =
        binaryMatrixCutSourceCell3 C sourcePair := by
    ext base
    simp [proj, binaryMatrixCutSourceProjectionCell,
      binaryMatrixCutSourceCell3, and_comm]
  have hnotDef :
      proj.filter (fun base : QaryWord 2 n => ¬base ∈ C) =
        binaryMatrixCutSourceCell3 C sourcePair := by
    simpa using hnot
  have hsplit := Finset.card_filter_add_card_filter_not
    (s := proj) (p := fun base : QaryWord 2 n => base ∈ C)
  rw [hyes, hnotDef] at hsplit
  rw [binaryMatrixCutSourceProjectionCell_card C sourcePair.1] at hsplit
  exact hsplit

theorem binaryMatrixCutSourceCells_card_sum {n : Nat}
    (C : Finset (QaryWord 2 n))
    (sourcePair : QaryWord 2 n × QaryWord 2 n) :
    (binaryMatrixCutSourceCell1 C sourcePair).card +
        (binaryMatrixCutSourceCell2 C sourcePair).card +
        (binaryMatrixCutSourceCell3 C sourcePair).card +
        (binaryMatrixCutSourceCell4 C sourcePair).card =
      Fintype.card (QaryWord 2 n) := by
  classical
  let all := (Finset.univ : Finset (QaryWord 2 n))
  let yesBase := all.filter (fun base : QaryWord 2 n => base ∈ C)
  let noBase := all.filter (fun base : QaryWord 2 n => base ∉ C)
  have hyesBase :
      yesBase.filter (fun base : QaryWord 2 n =>
        binaryXorWord base sourcePair.1 ∈ C) =
        binaryMatrixCutSourceCell1 C sourcePair := by
    ext base
    simp [yesBase, all, binaryMatrixCutSourceCell1]
  have hyesBaseNot :
      yesBase.filter (fun base : QaryWord 2 n =>
        binaryXorWord base sourcePair.1 ∉ C) =
        binaryMatrixCutSourceCell2 C sourcePair := by
    ext base
    simp [yesBase, all, binaryMatrixCutSourceCell2]
  have hnoBase :
      noBase.filter (fun base : QaryWord 2 n =>
        binaryXorWord base sourcePair.1 ∈ C) =
        binaryMatrixCutSourceCell3 C sourcePair := by
    ext base
    simp [noBase, all, binaryMatrixCutSourceCell3]
  have hnoBaseNot :
      noBase.filter (fun base : QaryWord 2 n =>
        binaryXorWord base sourcePair.1 ∉ C) =
        binaryMatrixCutSourceCell4 C sourcePair := by
    ext base
    simp [noBase, all, binaryMatrixCutSourceCell4]
  have hsplitBase := Finset.card_filter_add_card_filter_not
    (s := all) (p := fun base : QaryWord 2 n => base ∈ C)
  have hsplitYes := Finset.card_filter_add_card_filter_not
    (s := yesBase)
    (p := fun base : QaryWord 2 n => binaryXorWord base sourcePair.1 ∈ C)
  have hsplitNo := Finset.card_filter_add_card_filter_not
    (s := noBase)
    (p := fun base : QaryWord 2 n => binaryXorWord base sourcePair.1 ∈ C)
  have hnoBaseDef :
      all.filter (fun base : QaryWord 2 n => ¬base ∈ C) = noBase := by
    ext base
    simp [noBase, all]
  have hyesBaseDef :
      all.filter (fun base : QaryWord 2 n => base ∈ C) = yesBase := rfl
  rw [hyesBaseDef, hnoBaseDef] at hsplitBase
  rw [hyesBase, hyesBaseNot] at hsplitYes
  rw [hnoBase, hnoBaseNot] at hsplitNo
  have hsum :
      (binaryMatrixCutSourceCell1 C sourcePair).card +
          (binaryMatrixCutSourceCell2 C sourcePair).card +
          ((binaryMatrixCutSourceCell3 C sourcePair).card +
            (binaryMatrixCutSourceCell4 C sourcePair).card) =
        all.card := by
    omega
  simpa [all, add_assoc] using hsum

theorem binaryMatrixCutSourceCell1_orbit_sum_card_eq_ambientFirstBaseCell
    {n : Nat} (C : Finset (QaryWord 2 n)) (source : BinaryOrbitIndex n) :
    (binaryWordPairOrbitCell source).sum (fun sourcePair =>
      (binaryMatrixCutSourceCell1 C sourcePair).card) =
      (binaryCodeTripleAmbientFirstBaseCell C source).card := by
  calc
    (binaryWordPairOrbitCell source).sum (fun sourcePair =>
        (binaryMatrixCutSourceCell1 C sourcePair).card) =
      (binaryWordPairOrbitCell source).sum (fun sourcePair =>
        (binaryTranslatedPairBaseCell C
          (zeroWord 2 n (by decide)) sourcePair.1).card) := by
        apply Finset.sum_congr rfl
        intro sourcePair _hsourcePair
        congr 1
        ext base
        simp [binaryMatrixCutSourceCell1, binaryTranslatedPairBaseCell]
    _ = (binaryCodeTripleAmbientFirstBaseCell C source).card := by
        exact binaryTranslatedPairBaseCell_zero_first_orbit_sum_card_eq_ambientFirstBaseCell
          C source

theorem binaryMatrixCutSourceCell1_normalized {n : Nat}
    (C : Finset (QaryWord 2 n)) (source : BinaryOrbitIndex n) :
    (((2 ^ n : Nat) : Rat))⁻¹ *
        ((binaryOrbitMultiplicity n source)⁻¹ *
          (binaryWordPairOrbitCell source).sum (fun sourcePair =>
            ((binaryMatrixCutSourceCell1 C sourcePair).card : Rat))) =
      binaryZeroCoeff (binaryCodeCellX C) source.i := by
  let cube : Rat := (((2 ^ n : Nat) : Rat))
  let Ms : Rat := binaryOrbitMultiplicity n source
  let ambient : Rat := ((binaryCodeTripleAmbientFirstBaseCell C source).card : Rat)
  have hcube : cube ≠ 0 := by
    have hposNat : 0 < 2 ^ n := Nat.pow_pos (by decide : 0 < 2)
    have hpos : 0 < cube := by
      dsimp [cube]
      exact_mod_cast hposNat
    exact hpos.ne'
  have hMs : Ms ≠ 0 := by
    dsimp [Ms]
    exact binaryOrbitMultiplicity_ne_zero n source
  have hsum :
      (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          ((binaryMatrixCutSourceCell1 C sourcePair).card : Rat)) =
        ambient := by
    have hnat :=
      binaryMatrixCutSourceCell1_orbit_sum_card_eq_ambientFirstBaseCell C source
    have hcast :
        (((binaryWordPairOrbitCell source).sum (fun sourcePair =>
          (binaryMatrixCutSourceCell1 C sourcePair).card) : Nat) : Rat) =
          ambient := by
      simpa [ambient] using congrArg (fun m : Nat => (m : Rat)) hnat
    simpa [Nat.cast_sum] using hcast
  have hnorm :=
    binaryCodeTripleAmbientFirstBaseCell_normalized C source
  have hden : binaryCodeCellDenominator n source = cube * Ms := rfl
  have hnorm' :
      ambient / (cube * Ms) =
        binaryZeroCoeff (binaryCodeCellX C) source.i := by
    simpa [ambient, hden] using hnorm
  rw [hsum, ← hnorm']
  change cube⁻¹ * (Ms⁻¹ * ambient) = ambient / (cube * Ms)
  field_simp [hcube, hMs]

theorem binaryMatrixCutSourceConstant_normalized {n : Nat}
    (C : Finset (QaryWord 2 n)) (source : BinaryOrbitIndex n) :
    (((2 ^ n : Nat) : Rat))⁻¹ *
        ((binaryOrbitMultiplicity n source)⁻¹ *
          (binaryWordPairOrbitCell source).sum
            (fun _sourcePair : QaryWord 2 n × QaryWord 2 n => (C.card : Rat))) =
      binaryZeroCoeff (binaryCodeCellX C) 0 := by
  let cube : Rat := (((2 ^ n : Nat) : Rat))
  let Ms : Rat := binaryOrbitMultiplicity n source
  have hcube : cube ≠ 0 := by
    have hposNat : 0 < 2 ^ n := Nat.pow_pos (by decide : 0 < 2)
    have hpos : 0 < cube := by
      dsimp [cube]
      exact_mod_cast hposNat
    exact hpos.ne'
  have hMs : Ms ≠ 0 := by
    dsimp [Ms]
    exact binaryOrbitMultiplicity_ne_zero n source
  have hcard :
      ((binaryWordPairOrbitCell source).card : Rat) = Ms := by
    rw [binaryWordPairOrbitCell_card, binaryOrbitMultiplicityNat_cast]
  have hzero :
      binaryZeroCoeff (binaryCodeCellX C) 0 = (C.card : Rat) / cube := by
    simpa [cube] using binaryCodeCellX_zeroCoeff_zero C
  rw [Finset.sum_const, nsmul_eq_mul]
  rw [hcard, hzero]
  change cube⁻¹ * (Ms⁻¹ * (Ms * (C.card : Rat))) = (C.card : Rat) / cube
  field_simp [hcube, hMs]

theorem binaryMatrixCutSourceAll_normalized {n : Nat}
    (source : BinaryOrbitIndex n) :
    (((2 ^ n : Nat) : Rat))⁻¹ *
        ((binaryOrbitMultiplicity n source)⁻¹ *
          (binaryWordPairOrbitCell source).sum
            (fun _sourcePair : QaryWord 2 n × QaryWord 2 n =>
              (((2 ^ n : Nat) : Rat)))) =
      1 := by
  let cube : Rat := (((2 ^ n : Nat) : Rat))
  let Ms : Rat := binaryOrbitMultiplicity n source
  have hcube : cube ≠ 0 := by
    have hposNat : 0 < 2 ^ n := Nat.pow_pos (by decide : 0 < 2)
    have hpos : 0 < cube := by
      dsimp [cube]
      exact_mod_cast hposNat
    exact hpos.ne'
  have hMs : Ms ≠ 0 := by
    dsimp [Ms]
    exact binaryOrbitMultiplicity_ne_zero n source
  have hcard :
      ((binaryWordPairOrbitCell source).card : Rat) = Ms := by
    rw [binaryWordPairOrbitCell_card, binaryOrbitMultiplicityNat_cast]
  rw [Finset.sum_const, nsmul_eq_mul]
  rw [hcard]
  change cube⁻¹ * (Ms⁻¹ * (Ms * cube)) = 1
  field_simp [hcube, hMs]

theorem binaryMatrixCutSourceCell2_normalized {n : Nat}
    (C : Finset (QaryWord 2 n)) (source : BinaryOrbitIndex n) :
    (((2 ^ n : Nat) : Rat))⁻¹ *
        ((binaryOrbitMultiplicity n source)⁻¹ *
          (binaryWordPairOrbitCell source).sum (fun sourcePair =>
            ((binaryMatrixCutSourceCell2 C sourcePair).card : Rat))) =
      binaryZeroCoeff (binaryCodeCellX C) 0 -
        binaryZeroCoeff (binaryCodeCellX C) source.i := by
  have hsum :
      (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          ((binaryMatrixCutSourceCell2 C sourcePair).card : Rat)) =
        (binaryWordPairOrbitCell source).sum
            (fun _sourcePair : QaryWord 2 n × QaryWord 2 n => (C.card : Rat)) -
          (binaryWordPairOrbitCell source).sum (fun sourcePair =>
            ((binaryMatrixCutSourceCell1 C sourcePair).card : Rat)) := by
    calc
      (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          ((binaryMatrixCutSourceCell2 C sourcePair).card : Rat)) =
        (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          (C.card : Rat) -
            ((binaryMatrixCutSourceCell1 C sourcePair).card : Rat)) := by
          apply Finset.sum_congr rfl
          intro sourcePair _hsourcePair
          have hsplit :=
            binaryMatrixCutSourceCell1_card_add_sourceCell2_card C sourcePair
          have hsplitRat :
              ((binaryMatrixCutSourceCell1 C sourcePair).card : Rat) +
                  ((binaryMatrixCutSourceCell2 C sourcePair).card : Rat) =
                (C.card : Rat) := by
            exact_mod_cast hsplit
          linarith
      _ = _ := by
          rw [Finset.sum_sub_distrib]
  rw [hsum]
  have hconst := binaryMatrixCutSourceConstant_normalized C source
  have h1 := binaryMatrixCutSourceCell1_normalized C source
  calc
    (((2 ^ n : Nat) : Rat))⁻¹ *
        ((binaryOrbitMultiplicity n source)⁻¹ *
          ((binaryWordPairOrbitCell source).sum
              (fun _sourcePair : QaryWord 2 n × QaryWord 2 n => (C.card : Rat)) -
            (binaryWordPairOrbitCell source).sum (fun sourcePair =>
              ((binaryMatrixCutSourceCell1 C sourcePair).card : Rat)))) =
      (((2 ^ n : Nat) : Rat))⁻¹ *
          ((binaryOrbitMultiplicity n source)⁻¹ *
            (binaryWordPairOrbitCell source).sum
              (fun _sourcePair : QaryWord 2 n × QaryWord 2 n => (C.card : Rat))) -
        (((2 ^ n : Nat) : Rat))⁻¹ *
          ((binaryOrbitMultiplicity n source)⁻¹ *
            (binaryWordPairOrbitCell source).sum (fun sourcePair =>
              ((binaryMatrixCutSourceCell1 C sourcePair).card : Rat))) := by
        ring
    _ = binaryZeroCoeff (binaryCodeCellX C) 0 -
        binaryZeroCoeff (binaryCodeCellX C) source.i := by
        rw [hconst, h1]

theorem binaryMatrixCutSourceCell3_normalized {n : Nat}
    (C : Finset (QaryWord 2 n)) (source : BinaryOrbitIndex n) :
    (((2 ^ n : Nat) : Rat))⁻¹ *
        ((binaryOrbitMultiplicity n source)⁻¹ *
          (binaryWordPairOrbitCell source).sum (fun sourcePair =>
            ((binaryMatrixCutSourceCell3 C sourcePair).card : Rat))) =
      binaryZeroCoeff (binaryCodeCellX C) 0 -
        binaryZeroCoeff (binaryCodeCellX C) source.i := by
  have hsum :
      (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          ((binaryMatrixCutSourceCell3 C sourcePair).card : Rat)) =
        (binaryWordPairOrbitCell source).sum
            (fun _sourcePair : QaryWord 2 n × QaryWord 2 n => (C.card : Rat)) -
          (binaryWordPairOrbitCell source).sum (fun sourcePair =>
            ((binaryMatrixCutSourceCell1 C sourcePair).card : Rat)) := by
    calc
      (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          ((binaryMatrixCutSourceCell3 C sourcePair).card : Rat)) =
        (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          (C.card : Rat) -
            ((binaryMatrixCutSourceCell1 C sourcePair).card : Rat)) := by
          apply Finset.sum_congr rfl
          intro sourcePair _hsourcePair
          have hsplit :=
            binaryMatrixCutSourceCell1_card_add_sourceCell3_card C sourcePair
          have hsplitRat :
              ((binaryMatrixCutSourceCell1 C sourcePair).card : Rat) +
                  ((binaryMatrixCutSourceCell3 C sourcePair).card : Rat) =
                (C.card : Rat) := by
            exact_mod_cast hsplit
          linarith
      _ = _ := by
          rw [Finset.sum_sub_distrib]
  rw [hsum]
  have hconst := binaryMatrixCutSourceConstant_normalized C source
  have h1 := binaryMatrixCutSourceCell1_normalized C source
  calc
    (((2 ^ n : Nat) : Rat))⁻¹ *
        ((binaryOrbitMultiplicity n source)⁻¹ *
          ((binaryWordPairOrbitCell source).sum
              (fun _sourcePair : QaryWord 2 n × QaryWord 2 n => (C.card : Rat)) -
            (binaryWordPairOrbitCell source).sum (fun sourcePair =>
              ((binaryMatrixCutSourceCell1 C sourcePair).card : Rat)))) =
      (((2 ^ n : Nat) : Rat))⁻¹ *
          ((binaryOrbitMultiplicity n source)⁻¹ *
            (binaryWordPairOrbitCell source).sum
              (fun _sourcePair : QaryWord 2 n × QaryWord 2 n => (C.card : Rat))) -
        (((2 ^ n : Nat) : Rat))⁻¹ *
          ((binaryOrbitMultiplicity n source)⁻¹ *
            (binaryWordPairOrbitCell source).sum (fun sourcePair =>
              ((binaryMatrixCutSourceCell1 C sourcePair).card : Rat))) := by
        ring
    _ = binaryZeroCoeff (binaryCodeCellX C) 0 -
        binaryZeroCoeff (binaryCodeCellX C) source.i := by
        rw [hconst, h1]

theorem binaryMatrixCutSourceCell4_normalized {n : Nat}
    (C : Finset (QaryWord 2 n)) (source : BinaryOrbitIndex n) :
    (((2 ^ n : Nat) : Rat))⁻¹ *
        ((binaryOrbitMultiplicity n source)⁻¹ *
          (binaryWordPairOrbitCell source).sum (fun sourcePair =>
            ((binaryMatrixCutSourceCell4 C sourcePair).card : Rat))) =
      1 - 2 * binaryZeroCoeff (binaryCodeCellX C) 0 +
        binaryZeroCoeff (binaryCodeCellX C) source.i := by
  have hsum :
      (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          ((binaryMatrixCutSourceCell4 C sourcePair).card : Rat)) =
        (binaryWordPairOrbitCell source).sum
            (fun _sourcePair : QaryWord 2 n × QaryWord 2 n =>
              (((2 ^ n : Nat) : Rat))) -
          (binaryWordPairOrbitCell source).sum (fun sourcePair =>
            ((binaryMatrixCutSourceCell1 C sourcePair).card : Rat)) -
          (binaryWordPairOrbitCell source).sum (fun sourcePair =>
            ((binaryMatrixCutSourceCell2 C sourcePair).card : Rat)) -
          (binaryWordPairOrbitCell source).sum (fun sourcePair =>
            ((binaryMatrixCutSourceCell3 C sourcePair).card : Rat)) := by
    calc
      (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          ((binaryMatrixCutSourceCell4 C sourcePair).card : Rat)) =
        (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          (((2 ^ n : Nat) : Rat) -
            ((binaryMatrixCutSourceCell1 C sourcePair).card : Rat) -
            ((binaryMatrixCutSourceCell2 C sourcePair).card : Rat) -
            ((binaryMatrixCutSourceCell3 C sourcePair).card : Rat))) := by
          apply Finset.sum_congr rfl
          intro sourcePair _hsourcePair
          have hsplit :=
            binaryMatrixCutSourceCells_card_sum C sourcePair
          have huniv : Fintype.card (QaryWord 2 n) = 2 ^ n := by
            exact qaryWord_card 2 n
          have hsplitRat :
              ((binaryMatrixCutSourceCell1 C sourcePair).card : Rat) +
                  ((binaryMatrixCutSourceCell2 C sourcePair).card : Rat) +
                  ((binaryMatrixCutSourceCell3 C sourcePair).card : Rat) +
                  ((binaryMatrixCutSourceCell4 C sourcePair).card : Rat) =
                (((2 ^ n : Nat) : Rat)) := by
            rw [huniv] at hsplit
            exact_mod_cast hsplit
          linarith
      _ = _ := by
          rw [Finset.sum_sub_distrib, Finset.sum_sub_distrib,
            Finset.sum_sub_distrib]
  rw [hsum]
  have hall := binaryMatrixCutSourceAll_normalized source
  have h1 := binaryMatrixCutSourceCell1_normalized C source
  have h2 := binaryMatrixCutSourceCell2_normalized C source
  have h3 := binaryMatrixCutSourceCell3_normalized C source
  calc
    (((2 ^ n : Nat) : Rat))⁻¹ *
        ((binaryOrbitMultiplicity n source)⁻¹ *
          ((binaryWordPairOrbitCell source).sum
              (fun _sourcePair : QaryWord 2 n × QaryWord 2 n =>
                (((2 ^ n : Nat) : Rat))) -
            (binaryWordPairOrbitCell source).sum (fun sourcePair =>
              ((binaryMatrixCutSourceCell1 C sourcePair).card : Rat)) -
            (binaryWordPairOrbitCell source).sum (fun sourcePair =>
              ((binaryMatrixCutSourceCell2 C sourcePair).card : Rat)) -
            (binaryWordPairOrbitCell source).sum (fun sourcePair =>
              ((binaryMatrixCutSourceCell3 C sourcePair).card : Rat)))) =
      (((2 ^ n : Nat) : Rat))⁻¹ *
          ((binaryOrbitMultiplicity n source)⁻¹ *
            (binaryWordPairOrbitCell source).sum
              (fun _sourcePair : QaryWord 2 n × QaryWord 2 n =>
                (((2 ^ n : Nat) : Rat)))) -
        (((2 ^ n : Nat) : Rat))⁻¹ *
          ((binaryOrbitMultiplicity n source)⁻¹ *
            (binaryWordPairOrbitCell source).sum (fun sourcePair =>
              ((binaryMatrixCutSourceCell1 C sourcePair).card : Rat))) -
        (((2 ^ n : Nat) : Rat))⁻¹ *
          ((binaryOrbitMultiplicity n source)⁻¹ *
            (binaryWordPairOrbitCell source).sum (fun sourcePair =>
              ((binaryMatrixCutSourceCell2 C sourcePair).card : Rat))) -
        (((2 ^ n : Nat) : Rat))⁻¹ *
          ((binaryOrbitMultiplicity n source)⁻¹ *
            (binaryWordPairOrbitCell source).sum (fun sourcePair =>
              ((binaryMatrixCutSourceCell3 C sourcePair).card : Rat))) := by
        ring
    _ = 1 - binaryZeroCoeff (binaryCodeCellX C) source.i -
        (binaryZeroCoeff (binaryCodeCellX C) 0 -
          binaryZeroCoeff (binaryCodeCellX C) source.i) -
        (binaryZeroCoeff (binaryCodeCellX C) 0 -
          binaryZeroCoeff (binaryCodeCellX C) source.i) := by
        rw [hall, h1, h2, h3]
    _ = 1 - 2 * binaryZeroCoeff (binaryCodeCellX C) 0 +
        binaryZeroCoeff (binaryCodeCellX C) source.i := by
        ring

theorem binaryMatrixCutTargetBaseCell1_sum_weight_eq_source_shellCount
    {n : Nat} (C : Finset (QaryWord 2 n))
    (sourcePair : QaryWord 2 n × QaryWord 2 n) (d : Nat) :
    Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryOneSidedShellTargetPairCell sourcePair target d).sum
          (binaryMatrixCutLhs1TargetWeight C)) =
      (binaryMatrixCutSourceCell1 C sourcePair).sum (fun base =>
        (shellCount 2 n C (binaryXorWord base sourcePair.2) d : Rat)) := by
  have hnat :=
    binaryMatrixCutTargetBaseCell1_sum_card_eq_source_shellCount C sourcePair d
  have hrat :
      Finset.univ.sum (fun target : BinaryOrbitIndex n =>
          (binaryOneSidedShellTargetPairCell sourcePair target d).sum
            (fun targetPair =>
              ((binaryMatrixCutTargetBaseCell1 C targetPair).card : Rat))) =
        (binaryMatrixCutSourceCell1 C sourcePair).sum (fun base =>
          (shellCount 2 n C (binaryXorWord base sourcePair.2) d : Rat)) := by
    simpa [Nat.cast_sum] using congrArg (fun m : Nat => (m : Rat)) hnat
  calc
    Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryOneSidedShellTargetPairCell sourcePair target d).sum
          (binaryMatrixCutLhs1TargetWeight C)) =
      Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryOneSidedShellTargetPairCell sourcePair target d).sum
          (fun targetPair =>
            ((binaryMatrixCutTargetBaseCell1 C targetPair).card : Rat))) := by
        apply Finset.sum_congr rfl
        intro target _htarget
        apply Finset.sum_congr rfl
        intro targetPair _htargetPair
        rw [binaryMatrixCutTargetBaseCell1_card_eq_weight]
    _ = (binaryMatrixCutSourceCell1 C sourcePair).sum (fun base =>
        (shellCount 2 n C (binaryXorWord base sourcePair.2) d : Rat)) := hrat

theorem binaryMatrixCutTargetBaseCell2_sum_weight_eq_source_shellCount
    {n : Nat} (C : Finset (QaryWord 2 n))
    (sourcePair : QaryWord 2 n × QaryWord 2 n) (d : Nat) :
    Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryOneSidedShellTargetPairCell sourcePair target d).sum
          (binaryMatrixCutLhs2TargetWeight C)) =
      (binaryMatrixCutSourceCell2 C sourcePair).sum (fun base =>
        (shellCount 2 n C (binaryXorWord base sourcePair.2) d : Rat)) := by
  have hnat :=
    binaryMatrixCutTargetBaseCell2_sum_card_eq_source_shellCount C sourcePair d
  have hrat :
      Finset.univ.sum (fun target : BinaryOrbitIndex n =>
          (binaryOneSidedShellTargetPairCell sourcePair target d).sum
            (fun targetPair =>
              ((binaryMatrixCutTargetBaseCell2 C targetPair).card : Rat))) =
        (binaryMatrixCutSourceCell2 C sourcePair).sum (fun base =>
          (shellCount 2 n C (binaryXorWord base sourcePair.2) d : Rat)) := by
    simpa [Nat.cast_sum] using congrArg (fun m : Nat => (m : Rat)) hnat
  calc
    Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryOneSidedShellTargetPairCell sourcePair target d).sum
          (binaryMatrixCutLhs2TargetWeight C)) =
      Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryOneSidedShellTargetPairCell sourcePair target d).sum
          (fun targetPair =>
            ((binaryMatrixCutTargetBaseCell2 C targetPair).card : Rat))) := by
        apply Finset.sum_congr rfl
        intro target _htarget
        apply Finset.sum_congr rfl
        intro targetPair _htargetPair
        rw [binaryMatrixCutTargetBaseCell2_card_eq_weight]
    _ = (binaryMatrixCutSourceCell2 C sourcePair).sum (fun base =>
        (shellCount 2 n C (binaryXorWord base sourcePair.2) d : Rat)) := hrat

theorem binaryMatrixCutTargetBaseCell3_sum_weight_eq_source_shellCount
    {n : Nat} (C : Finset (QaryWord 2 n))
    (sourcePair : QaryWord 2 n × QaryWord 2 n) (d : Nat) :
    Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryOneSidedShellTargetPairCell sourcePair target d).sum
          (binaryMatrixCutLhs3TargetWeight C)) =
      (binaryMatrixCutSourceCell3 C sourcePair).sum (fun base =>
        (shellCount 2 n C (binaryXorWord base sourcePair.2) d : Rat)) := by
  have hnat :=
    binaryMatrixCutTargetBaseCell3_sum_card_eq_source_shellCount C sourcePair d
  have hrat :
      Finset.univ.sum (fun target : BinaryOrbitIndex n =>
          (binaryOneSidedShellTargetPairCell sourcePair target d).sum
            (fun targetPair =>
              ((binaryMatrixCutTargetBaseCell3 C targetPair).card : Rat))) =
        (binaryMatrixCutSourceCell3 C sourcePair).sum (fun base =>
          (shellCount 2 n C (binaryXorWord base sourcePair.2) d : Rat)) := by
    simpa [Nat.cast_sum] using congrArg (fun m : Nat => (m : Rat)) hnat
  calc
    Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryOneSidedShellTargetPairCell sourcePair target d).sum
          (binaryMatrixCutLhs3TargetWeight C)) =
      Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryOneSidedShellTargetPairCell sourcePair target d).sum
          (fun targetPair =>
            ((binaryMatrixCutTargetBaseCell3 C targetPair).card : Rat))) := by
        apply Finset.sum_congr rfl
        intro target _htarget
        apply Finset.sum_congr rfl
        intro targetPair _htargetPair
        rw [binaryMatrixCutTargetBaseCell3_card_eq_weight]
    _ = (binaryMatrixCutSourceCell3 C sourcePair).sum (fun base =>
        (shellCount 2 n C (binaryXorWord base sourcePair.2) d : Rat)) := hrat

theorem binaryMatrixCutTargetBaseCell4_sum_weight_eq_source_shellCount
    {n : Nat} (C : Finset (QaryWord 2 n))
    (sourcePair : QaryWord 2 n × QaryWord 2 n) (d : Nat) :
    Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryOneSidedShellTargetPairCell sourcePair target d).sum
          (binaryMatrixCutLhs4TargetWeight C)) =
      (binaryMatrixCutSourceCell4 C sourcePair).sum (fun base =>
        (shellCount 2 n C (binaryXorWord base sourcePair.2) d : Rat)) := by
  have hnat :=
    binaryMatrixCutTargetBaseCell4_sum_card_eq_source_shellCount C sourcePair d
  have hrat :
      Finset.univ.sum (fun target : BinaryOrbitIndex n =>
          (binaryOneSidedShellTargetPairCell sourcePair target d).sum
            (fun targetPair =>
              ((binaryMatrixCutTargetBaseCell4 C targetPair).card : Rat))) =
        (binaryMatrixCutSourceCell4 C sourcePair).sum (fun base =>
          (shellCount 2 n C (binaryXorWord base sourcePair.2) d : Rat)) := by
    simpa [Nat.cast_sum] using congrArg (fun m : Nat => (m : Rat)) hnat
  calc
    Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryOneSidedShellTargetPairCell sourcePair target d).sum
          (binaryMatrixCutLhs4TargetWeight C)) =
      Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryOneSidedShellTargetPairCell sourcePair target d).sum
          (fun targetPair =>
            ((binaryMatrixCutTargetBaseCell4 C targetPair).card : Rat))) := by
        apply Finset.sum_congr rfl
        intro target _htarget
        apply Finset.sum_congr rfl
        intro targetPair _htargetPair
        rw [binaryMatrixCutTargetBaseCell4_card_eq_weight]
    _ = (binaryMatrixCutSourceCell4 C sourcePair).sum (fun base =>
        (shellCount 2 n C (binaryXorWord base sourcePair.2) d : Rat)) := hrat

theorem binaryMatrixCutSourceCell_validLinearInequality_sum
    {n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (C : Finset (QaryWord 2 n)) (hC : CoversFinset C r)
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (sourceCell : Finset (QaryWord 2 n)) :
    ((sourceCell.card : Rat) * beta) <=
      sourceCell.sum (fun base =>
        Finset.univ.sum (fun d : Fin (n + 1) =>
          lambda d *
            (shellCount 2 n C (binaryXorWord base sourcePair.2) d.val : Rat))) := by
  rcases hvalid with ⟨_hbeta, _hlambda, hineq⟩
  calc
    ((sourceCell.card : Rat) * beta) =
        sourceCell.sum (fun _base => beta) := by
          rw [Finset.sum_const, nsmul_eq_mul]
    _ <= sourceCell.sum (fun base =>
        Finset.univ.sum (fun d : Fin (n + 1) =>
          lambda d *
            (shellCount 2 n C (binaryXorWord base sourcePair.2) d.val : Rat))) := by
          apply Finset.sum_le_sum
          intro base _hbase
          exact hineq C hC (binaryXorWord base sourcePair.2)

theorem binaryMatrixCutAverage_valid_le_direct
    {n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (C : Finset (QaryWord 2 n)) (hC : CoversFinset C r)
    (source : BinaryOrbitIndex n)
    (sourceCell : QaryWord 2 n × QaryWord 2 n -> Finset (QaryWord 2 n))
    (targetWeight : QaryWord 2 n × QaryWord 2 n -> Rat)
    (hshell :
      forall (sourcePair : QaryWord 2 n × QaryWord 2 n) (d : Nat),
        Finset.univ.sum (fun target : BinaryOrbitIndex n =>
          (binaryOneSidedShellTargetPairCell sourcePair target d).sum
            targetWeight) =
        (sourceCell sourcePair).sum (fun base =>
          (shellCount 2 n C (binaryXorWord base sourcePair.2) d : Rat))) :
    ((((2 ^ n : Nat) : Rat))⁻¹ *
        ((binaryOrbitMultiplicity n source)⁻¹ *
          (binaryWordPairOrbitCell source).sum (fun sourcePair =>
            ((sourceCell sourcePair).card : Rat)))) * beta <=
      Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        Finset.univ.sum (fun d : Fin (n + 1) =>
          lambda d *
            ((((2 ^ n : Nat) : Rat))⁻¹ *
              ((binaryOrbitMultiplicity n source)⁻¹ *
                (binaryWordPairOrbitCell source).sum (fun sourcePair =>
                  (binaryOneSidedShellTargetPairCell sourcePair target d.val).sum
                    targetWeight))))) := by
  let scale : Rat :=
    (((2 ^ n : Nat) : Rat))⁻¹ * (binaryOrbitMultiplicity n source)⁻¹
  have hscale_nonneg : 0 <= scale := by
    dsimp [scale]
    apply mul_nonneg
    · exact inv_nonneg.mpr (by exact_mod_cast Nat.zero_le (2 ^ n))
    · exact inv_nonneg.mpr
        (le_of_lt (binaryOrbitMultiplicity_pos n source))
  have hvalidSum :
      (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          ((sourceCell sourcePair).card : Rat) * beta) <=
        (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          (sourceCell sourcePair).sum (fun base =>
            Finset.univ.sum (fun d : Fin (n + 1) =>
              lambda d *
                (shellCount 2 n C
                  (binaryXorWord base sourcePair.2) d.val : Rat)))) := by
    apply Finset.sum_le_sum
    intro sourcePair _hsourcePair
    exact binaryMatrixCutSourceCell_validLinearInequality_sum
      hvalid C hC sourcePair (sourceCell sourcePair)
  have hscaled :=
    mul_le_mul_of_nonneg_left hvalidSum hscale_nonneg
  have hsourceExpand :
      (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          (sourceCell sourcePair).sum (fun base =>
            Finset.univ.sum (fun d : Fin (n + 1) =>
              lambda d *
                (shellCount 2 n C
                  (binaryXorWord base sourcePair.2) d.val : Rat)))) =
        Finset.univ.sum (fun target : BinaryOrbitIndex n =>
          Finset.univ.sum (fun d : Fin (n + 1) =>
            lambda d *
              (binaryWordPairOrbitCell source).sum (fun sourcePair =>
                (binaryOneSidedShellTargetPairCell sourcePair target d.val).sum
                  targetWeight))) := by
    calc
      (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          (sourceCell sourcePair).sum (fun base =>
            Finset.univ.sum (fun d : Fin (n + 1) =>
              lambda d *
                (shellCount 2 n C
                  (binaryXorWord base sourcePair.2) d.val : Rat)))) =
        (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          Finset.univ.sum (fun d : Fin (n + 1) =>
            lambda d *
              (sourceCell sourcePair).sum (fun base =>
                (shellCount 2 n C
                  (binaryXorWord base sourcePair.2) d.val : Rat)))) := by
          apply Finset.sum_congr rfl
          intro sourcePair _hsourcePair
          rw [Finset.sum_comm]
          apply Finset.sum_congr rfl
          intro d _hd
          rw [Finset.mul_sum]
      _ =
        Finset.univ.sum (fun d : Fin (n + 1) =>
          lambda d *
            (binaryWordPairOrbitCell source).sum (fun sourcePair =>
              (sourceCell sourcePair).sum (fun base =>
                (shellCount 2 n C
                  (binaryXorWord base sourcePair.2) d.val : Rat)))) := by
          rw [Finset.sum_comm]
          apply Finset.sum_congr rfl
          intro d _hd
          rw [Finset.mul_sum]
      _ =
        Finset.univ.sum (fun d : Fin (n + 1) =>
          lambda d *
            (binaryWordPairOrbitCell source).sum (fun sourcePair =>
              Finset.univ.sum (fun target : BinaryOrbitIndex n =>
                (binaryOneSidedShellTargetPairCell sourcePair target d.val).sum
                  targetWeight))) := by
          apply Finset.sum_congr rfl
          intro d _hd
          congr 1
          apply Finset.sum_congr rfl
          intro sourcePair _hsourcePair
          rw [hshell sourcePair d.val]
      _ =
        Finset.univ.sum (fun d : Fin (n + 1) =>
          lambda d *
            Finset.univ.sum (fun target : BinaryOrbitIndex n =>
              (binaryWordPairOrbitCell source).sum (fun sourcePair =>
                (binaryOneSidedShellTargetPairCell sourcePair target d.val).sum
                  targetWeight))) := by
          apply Finset.sum_congr rfl
          intro d _hd
          congr 1
          rw [Finset.sum_comm]
      _ =
        Finset.univ.sum (fun d : Fin (n + 1) =>
          Finset.univ.sum (fun target : BinaryOrbitIndex n =>
            lambda d *
              (binaryWordPairOrbitCell source).sum (fun sourcePair =>
                (binaryOneSidedShellTargetPairCell sourcePair target d.val).sum
                  targetWeight))) := by
          apply Finset.sum_congr rfl
          intro d _hd
          rw [Finset.mul_sum]
      _ =
        Finset.univ.sum (fun target : BinaryOrbitIndex n =>
          Finset.univ.sum (fun d : Fin (n + 1) =>
            lambda d *
              (binaryWordPairOrbitCell source).sum (fun sourcePair =>
                (binaryOneSidedShellTargetPairCell sourcePair target d.val).sum
                  targetWeight))) := by
          rw [Finset.sum_comm]
  calc
    ((((2 ^ n : Nat) : Rat))⁻¹ *
        ((binaryOrbitMultiplicity n source)⁻¹ *
          (binaryWordPairOrbitCell source).sum (fun sourcePair =>
            ((sourceCell sourcePair).card : Rat)))) * beta =
        scale *
          (binaryWordPairOrbitCell source).sum (fun sourcePair =>
            ((sourceCell sourcePair).card : Rat) * beta) := by
          dsimp [scale]
          rw [← Finset.sum_mul]
          ring
    _ <= scale *
        (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          (sourceCell sourcePair).sum (fun base =>
            Finset.univ.sum (fun d : Fin (n + 1) =>
              lambda d *
                (shellCount 2 n C
                  (binaryXorWord base sourcePair.2) d.val : Rat)))) := hscaled
    _ =
      Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        Finset.univ.sum (fun d : Fin (n + 1) =>
          lambda d *
            ((((2 ^ n : Nat) : Rat))⁻¹ *
              ((binaryOrbitMultiplicity n source)⁻¹ *
                (binaryWordPairOrbitCell source).sum (fun sourcePair =>
                  (binaryOneSidedShellTargetPairCell sourcePair target d.val).sum
                    targetWeight))))) := by
        rw [hsourceExpand]
        dsimp [scale]
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro target _htarget
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro d _hd
        ring

theorem binaryMatrixCutLhs1TargetWeight_normalized {n : Nat}
    (C : Finset (QaryWord 2 n)) (target : BinaryOrbitIndex n) :
    (((2 ^ n : Nat) : Rat))⁻¹ *
        ((binaryOrbitMultiplicity n target)⁻¹ *
          (binaryWordPairOrbitCell target).sum
            (binaryMatrixCutLhs1TargetWeight C)) =
      binaryCodeCellX C target := by
  let cube : Rat := (((2 ^ n : Nat) : Rat))
  let Mt : Rat := binaryOrbitMultiplicity n target
  have hcube : cube ≠ 0 := by
    have hposNat : 0 < 2 ^ n := Nat.pow_pos (by decide : 0 < 2)
    have hpos : 0 < cube := by
      dsimp [cube]
      exact_mod_cast hposNat
    exact hpos.ne'
  have hMt : Mt ≠ 0 := by
    dsimp [Mt]
    exact binaryOrbitMultiplicity_ne_zero n target
  have hsum :
      (binaryWordPairOrbitCell target).sum
          (binaryMatrixCutLhs1TargetWeight C) =
        ((binaryCodeTripleOrbitCell C target).card : Rat) := by
    simpa [binaryMatrixCutLhs1TargetWeight] using
      binaryRelativeCodeBaseCell_orbit_weight_sum_eq_codeTripleOrbitCell_card
        C target
  rw [hsum]
  simp [binaryCodeCellX, binaryCodeCellDenominator]
  field_simp [hcube, hMt]

theorem binaryMatrixCutLhs2TargetWeight_normalized {n : Nat}
    (C : Finset (QaryWord 2 n)) (target : BinaryOrbitIndex n) :
    (((2 ^ n : Nat) : Rat))⁻¹ *
        ((binaryOrbitMultiplicity n target)⁻¹ *
          (binaryWordPairOrbitCell target).sum
            (binaryMatrixCutLhs2TargetWeight C)) =
      binaryZeroCoeff (binaryCodeCellX C) target.j - binaryCodeCellX C target := by
  let cube : Rat := (((2 ^ n : Nat) : Rat))
  let Mt : Rat := binaryOrbitMultiplicity n target
  let ambient : Rat :=
    ((binaryCodeTripleAmbientFirstBaseCell C target.swap).card : Rat)
  let orbit : Rat := ((binaryCodeTripleOrbitCell C target).card : Rat)
  have hcube : cube ≠ 0 := by
    have hposNat : 0 < 2 ^ n := Nat.pow_pos (by decide : 0 < 2)
    have hpos : 0 < cube := by
      dsimp [cube]
      exact_mod_cast hposNat
    exact hpos.ne'
  have hMt : Mt ≠ 0 := by
    dsimp [Mt]
    exact binaryOrbitMultiplicity_ne_zero n target
  have hsum :
      (binaryWordPairOrbitCell target).sum
          (binaryMatrixCutLhs2TargetWeight C) =
        ambient - orbit := by
    unfold binaryMatrixCutLhs2TargetWeight
    rw [Finset.sum_sub_distrib]
    have hambientSum :
        (binaryWordPairOrbitCell target).sum (fun x =>
          ((binaryTranslatedPairBaseCell C (zeroWord 2 n (by decide)) x.2).card : Rat)) =
          ambient := by
      have hnat :=
        binaryTranslatedPairBaseCell_zero_second_orbit_sum_card_eq_ambientFirstBaseCell_swap
          C target
      have hcast :
          (((binaryWordPairOrbitCell target).sum (fun x =>
            (binaryTranslatedPairBaseCell C (zeroWord 2 n (by decide)) x.2).card) :
              Nat) : Rat) = ambient := by
        simpa [ambient] using congrArg (fun m : Nat => (m : Rat)) hnat
      simpa [Nat.cast_sum] using hcast
    have horbitSum :
        (binaryWordPairOrbitCell target).sum (fun x =>
          ((binaryRelativeCodeBaseCell C x.1 x.2).card : Rat)) =
          orbit := by
      simpa [orbit] using
        binaryRelativeCodeBaseCell_orbit_weight_sum_eq_codeTripleOrbitCell_card
          C target
    rw [hambientSum, horbitSum]
  have hambient :
      cube⁻¹ * (Mt⁻¹ * ambient) =
        binaryZeroCoeff (binaryCodeCellX C) target.j := by
    have hnorm :=
      binaryCodeTripleAmbientFirstBaseCell_normalized C target.swap
    have hden :
        binaryCodeCellDenominator n target.swap = cube * Mt := by
      rw [binaryCodeCellDenominator_swap]
      rfl
    have hnorm' :
        ambient / (cube * Mt) =
          binaryZeroCoeff (binaryCodeCellX C) target.j := by
      rw [hden] at hnorm
      simpa [ambient, BinaryOrbitIndex.swap] using hnorm
    rw [← hnorm']
    field_simp [hcube, hMt]
  have horbit :
      cube⁻¹ * (Mt⁻¹ * orbit) = binaryCodeCellX C target := by
    simp [binaryCodeCellX, binaryCodeCellDenominator, orbit, cube, Mt]
    field_simp [hcube, hMt]
  rw [hsum]
  calc
    cube⁻¹ * (Mt⁻¹ * (ambient - orbit)) =
        cube⁻¹ * (Mt⁻¹ * ambient) - cube⁻¹ * (Mt⁻¹ * orbit) := by
      ring
    _ = binaryZeroCoeff (binaryCodeCellX C) target.j -
        binaryCodeCellX C target := by
      rw [hambient, horbit]

theorem binaryMatrixCutLhs3TargetWeight_normalized {n : Nat}
    (C : Finset (QaryWord 2 n)) (target : BinaryOrbitIndex n) :
    (((2 ^ n : Nat) : Rat))⁻¹ *
        ((binaryOrbitMultiplicity n target)⁻¹ *
          (binaryWordPairOrbitCell target).sum
            (binaryMatrixCutLhs3TargetWeight C)) =
      binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex target) -
        binaryCodeCellX C target := by
  let cube : Rat := (((2 ^ n : Nat) : Rat))
  let Mt : Rat := binaryOrbitMultiplicity n target
  let ambient : Rat :=
    ((binaryCodeTripleAmbientFirstSecondCell C target).card : Rat)
  let orbit : Rat := ((binaryCodeTripleOrbitCell C target).card : Rat)
  have hcube : cube ≠ 0 := by
    have hposNat : 0 < 2 ^ n := Nat.pow_pos (by decide : 0 < 2)
    have hpos : 0 < cube := by
      dsimp [cube]
      exact_mod_cast hposNat
    exact hpos.ne'
  have hMt : Mt ≠ 0 := by
    dsimp [Mt]
    exact binaryOrbitMultiplicity_ne_zero n target
  have hsum :
      (binaryWordPairOrbitCell target).sum
          (binaryMatrixCutLhs3TargetWeight C) =
        ambient - orbit := by
    unfold binaryMatrixCutLhs3TargetWeight
    rw [Finset.sum_sub_distrib]
    have hambientSum :
        (binaryWordPairOrbitCell target).sum (fun x =>
          ((binaryTranslatedPairBaseCell C x.1 x.2).card : Rat)) =
          ambient := by
      have hnat :=
        binaryTranslatedPairBaseCell_orbit_sum_card_eq_ambientFirstSecondCell
          C target
      have hcast :
          (((binaryWordPairOrbitCell target).sum (fun x =>
            (binaryTranslatedPairBaseCell C x.1 x.2).card) : Nat) : Rat) =
            ambient := by
        simpa [ambient] using congrArg (fun m : Nat => (m : Rat)) hnat
      simpa [Nat.cast_sum] using hcast
    have horbitSum :
        (binaryWordPairOrbitCell target).sum (fun x =>
          ((binaryRelativeCodeBaseCell C x.1 x.2).card : Rat)) =
          orbit := by
      simpa [orbit] using
        binaryRelativeCodeBaseCell_orbit_weight_sum_eq_codeTripleOrbitCell_card
          C target
    rw [hambientSum, horbitSum]
  have hambient :
      cube⁻¹ * (Mt⁻¹ * ambient) =
        binaryZeroCoeff (binaryCodeCellX C)
          (binaryOrbitDistanceIndex target) := by
    have hnorm :=
      binaryCodeTripleAmbientFirstSecondCell_normalized C target
    have hden :
        binaryCodeCellDenominator n target = cube * Mt := rfl
    have hnorm' :
        ambient / (cube * Mt) =
          binaryZeroCoeff (binaryCodeCellX C)
            (binaryOrbitDistanceIndex target) := by
      simpa [ambient, hden] using hnorm
    rw [← hnorm']
    field_simp [hcube, hMt]
  have horbit :
      cube⁻¹ * (Mt⁻¹ * orbit) = binaryCodeCellX C target := by
    simp [binaryCodeCellX, binaryCodeCellDenominator, orbit, cube, Mt]
    field_simp [hcube, hMt]
  rw [hsum]
  calc
    cube⁻¹ * (Mt⁻¹ * (ambient - orbit)) =
        cube⁻¹ * (Mt⁻¹ * ambient) - cube⁻¹ * (Mt⁻¹ * orbit) := by
      ring
    _ = binaryZeroCoeff (binaryCodeCellX C)
          (binaryOrbitDistanceIndex target) - binaryCodeCellX C target := by
      rw [hambient, horbit]

theorem binaryMatrixCutConstantTargetWeight_normalized {n : Nat}
    (C : Finset (QaryWord 2 n)) (target : BinaryOrbitIndex n) :
    (((2 ^ n : Nat) : Rat))⁻¹ *
        ((binaryOrbitMultiplicity n target)⁻¹ *
          (binaryWordPairOrbitCell target).sum
            (fun _targetPair : QaryWord 2 n × QaryWord 2 n => (C.card : Rat))) =
      binaryZeroCoeff (binaryCodeCellX C) 0 := by
  let cube : Rat := (((2 ^ n : Nat) : Rat))
  let Mt : Rat := binaryOrbitMultiplicity n target
  have hcube : cube ≠ 0 := by
    have hposNat : 0 < 2 ^ n := Nat.pow_pos (by decide : 0 < 2)
    have hpos : 0 < cube := by
      dsimp [cube]
      exact_mod_cast hposNat
    exact hpos.ne'
  have hMt : Mt ≠ 0 := by
    dsimp [Mt]
    exact binaryOrbitMultiplicity_ne_zero n target
  have hcard :
      ((binaryWordPairOrbitCell target).card : Rat) = Mt := by
    rw [binaryWordPairOrbitCell_card, binaryOrbitMultiplicityNat_cast]
  have hzero :
      binaryZeroCoeff (binaryCodeCellX C) 0 = (C.card : Rat) / cube := by
    simpa [cube] using binaryCodeCellX_zeroCoeff_zero C
  rw [Finset.sum_const, nsmul_eq_mul]
  rw [hcard, hzero]
  change cube⁻¹ * (Mt⁻¹ * (Mt * (C.card : Rat))) = (C.card : Rat) / cube
  field_simp [hcube, hMt]

theorem binaryMatrixCutLhs4TargetWeight_normalized {n : Nat}
    (C : Finset (QaryWord 2 n)) (target : BinaryOrbitIndex n) :
    (((2 ^ n : Nat) : Rat))⁻¹ *
        ((binaryOrbitMultiplicity n target)⁻¹ *
          (binaryWordPairOrbitCell target).sum
            (binaryMatrixCutLhs4TargetWeight C)) =
      binaryZeroCoeff (binaryCodeCellX C) 0 -
        binaryZeroCoeff (binaryCodeCellX C) target.j -
        binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex target) +
        binaryCodeCellX C target := by
  let cube : Rat := (((2 ^ n : Nat) : Rat))
  let Mt : Rat := binaryOrbitMultiplicity n target
  have hsum :
      (binaryWordPairOrbitCell target).sum
          (binaryMatrixCutLhs4TargetWeight C) =
        (binaryWordPairOrbitCell target).sum
            (fun _targetPair : QaryWord 2 n × QaryWord 2 n => (C.card : Rat)) -
          (binaryWordPairOrbitCell target).sum (binaryMatrixCutLhs2TargetWeight C) -
          (binaryWordPairOrbitCell target).sum (binaryMatrixCutLhs3TargetWeight C) -
          (binaryWordPairOrbitCell target).sum (binaryMatrixCutLhs1TargetWeight C) := by
    unfold binaryMatrixCutLhs4TargetWeight
    rw [Finset.sum_sub_distrib, Finset.sum_sub_distrib, Finset.sum_sub_distrib]
  rw [hsum]
  have hconst :=
    binaryMatrixCutConstantTargetWeight_normalized C target
  have h2 := binaryMatrixCutLhs2TargetWeight_normalized C target
  have h3 := binaryMatrixCutLhs3TargetWeight_normalized C target
  have h1 := binaryMatrixCutLhs1TargetWeight_normalized C target
  calc
    (((2 ^ n : Nat) : Rat))⁻¹ *
        ((binaryOrbitMultiplicity n target)⁻¹ *
          ((binaryWordPairOrbitCell target).sum
              (fun _targetPair : QaryWord 2 n × QaryWord 2 n => (C.card : Rat)) -
            (binaryWordPairOrbitCell target).sum (binaryMatrixCutLhs2TargetWeight C) -
            (binaryWordPairOrbitCell target).sum (binaryMatrixCutLhs3TargetWeight C) -
            (binaryWordPairOrbitCell target).sum (binaryMatrixCutLhs1TargetWeight C))) =
      (((2 ^ n : Nat) : Rat))⁻¹ *
          ((binaryOrbitMultiplicity n target)⁻¹ *
            (binaryWordPairOrbitCell target).sum
              (fun _targetPair : QaryWord 2 n × QaryWord 2 n => (C.card : Rat))) -
        (((2 ^ n : Nat) : Rat))⁻¹ *
          ((binaryOrbitMultiplicity n target)⁻¹ *
            (binaryWordPairOrbitCell target).sum (binaryMatrixCutLhs2TargetWeight C)) -
        (((2 ^ n : Nat) : Rat))⁻¹ *
          ((binaryOrbitMultiplicity n target)⁻¹ *
            (binaryWordPairOrbitCell target).sum (binaryMatrixCutLhs3TargetWeight C)) -
        (((2 ^ n : Nat) : Rat))⁻¹ *
          ((binaryOrbitMultiplicity n target)⁻¹ *
            (binaryWordPairOrbitCell target).sum (binaryMatrixCutLhs1TargetWeight C)) := by
        ring
    _ = binaryZeroCoeff (binaryCodeCellX C) 0 -
        (binaryZeroCoeff (binaryCodeCellX C) target.j - binaryCodeCellX C target) -
        (binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex target) -
          binaryCodeCellX C target) -
        binaryCodeCellX C target := by
        rw [hconst, h2, h3, h1]
    _ = binaryZeroCoeff (binaryCodeCellX C) 0 -
        binaryZeroCoeff (binaryCodeCellX C) target.j -
        binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex target) +
        binaryCodeCellX C target := by
        ring

theorem binaryCodeCellX_matrixCutCoeff_lhs1_card_identity {n : Nat}
    (C : Finset (QaryWord 2 n))
    (source target : BinaryOrbitIndex n) (d : Nat) :
    binaryCodeCellX C target * binaryMatrixCutCoeff n source target d =
      (((2 ^ n : Nat) : Rat))⁻¹ *
        ((binaryOrbitMultiplicity n source)⁻¹ *
          (binaryWordPairOrbitCell source).sum (fun sourcePair =>
            (binaryOneSidedShellTargetPairCell sourcePair target d).sum
              (fun targetPair =>
                ((binaryRelativeCodeBaseCell C targetPair.1 targetPair.2).card : Rat)))) := by
  let cube : Rat := (((2 ^ n : Nat) : Rat))
  let Ms : Rat := binaryOrbitMultiplicity n source
  let Mt : Rat := binaryOrbitMultiplicity n target
  let coeff : Rat := binaryMatrixCutCoeff n source target d
  let targetWeight : QaryWord 2 n × QaryWord 2 n -> Rat :=
    fun targetPair =>
      ((binaryRelativeCodeBaseCell C targetPair.1 targetPair.2).card : Rat)
  let sourceSum : Rat :=
    (binaryWordPairOrbitCell source).sum (fun sourcePair =>
      (binaryOneSidedShellTargetPairCell sourcePair target d).sum targetWeight)
  let targetSum : Rat :=
    (binaryWordPairOrbitCell target).sum targetWeight
  have hweighted :
      Ms⁻¹ * sourceSum = coeff * (Mt⁻¹ * targetSum) := by
    simpa [Ms, Mt, coeff, sourceSum, targetSum, targetWeight] using
      binaryOneSidedShell_weighted_pair_sum_identity
        source target d targetWeight
  have htargetSum :
      targetSum = ((binaryCodeTripleOrbitCell C target).card : Rat) := by
    simpa [targetSum, targetWeight] using
      binaryRelativeCodeBaseCell_orbit_weight_sum_eq_codeTripleOrbitCell_card
        C target
  have hcube : cube ≠ 0 := by
    have hposNat : 0 < 2 ^ n := Nat.pow_pos (by decide : 0 < 2)
    have hpos : 0 < cube := by
      dsimp [cube]
      exact_mod_cast hposNat
    exact hpos.ne'
  calc
    binaryCodeCellX C target * binaryMatrixCutCoeff n source target d =
        (((binaryCodeTripleOrbitCell C target).card : Rat) /
          (cube * Mt)) * coeff := by
          simp [binaryCodeCellX, binaryCodeCellDenominator, cube, Mt, coeff,
            mul_comm]
    _ = cube⁻¹ * (coeff * (Mt⁻¹ * targetSum)) := by
          rw [htargetSum]
          field_simp [hcube, binaryOrbitMultiplicity_ne_zero n target]
    _ = cube⁻¹ * (Ms⁻¹ * sourceSum) := by
          rw [hweighted]
    _ =
      (((2 ^ n : Nat) : Rat))⁻¹ *
        ((binaryOrbitMultiplicity n source)⁻¹ *
          (binaryWordPairOrbitCell source).sum (fun sourcePair =>
            (binaryOneSidedShellTargetPairCell sourcePair target d).sum
              (fun targetPair =>
                ((binaryRelativeCodeBaseCell C targetPair.1 targetPair.2).card : Rat)))) := by
          rfl

theorem binaryCodeCellX_matrixCutLhs1_card_identity {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (C : Finset (QaryWord 2 n))
    (source : BinaryOrbitIndex n) :
    Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        binaryCodeCellX C target * binaryMatrixCutLambda lambda source target) =
      Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        Finset.univ.sum (fun d : Fin (n + 1) =>
          lambda d *
            ((((2 ^ n : Nat) : Rat))⁻¹ *
              ((binaryOrbitMultiplicity n source)⁻¹ *
                (binaryWordPairOrbitCell source).sum (fun sourcePair =>
                  (binaryOneSidedShellTargetPairCell sourcePair target d.val).sum
                    (fun targetPair =>
                      ((binaryRelativeCodeBaseCell C targetPair.1 targetPair.2).card :
                        Rat))))))) := by
  unfold binaryMatrixCutLambda
  apply Finset.sum_congr rfl
  intro target _htarget
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro d _hd
  calc
    binaryCodeCellX C target * (lambda d *
        binaryMatrixCutCoeff n source target d.val) =
      lambda d *
        (binaryCodeCellX C target *
          binaryMatrixCutCoeff n source target d.val) := by
        ring
    _ =
      lambda d *
        ((((2 ^ n : Nat) : Rat))⁻¹ *
          ((binaryOrbitMultiplicity n source)⁻¹ *
            (binaryWordPairOrbitCell source).sum (fun sourcePair =>
              (binaryOneSidedShellTargetPairCell sourcePair target d.val).sum
                (fun targetPair =>
                  ((binaryRelativeCodeBaseCell C targetPair.1 targetPair.2).card :
                    Rat))))) := by
        rw [binaryCodeCellX_matrixCutCoeff_lhs1_card_identity C source target d.val]

theorem binaryCodeCellX_matrixCutCoeff_lhs2_card_identity {n : Nat}
    (C : Finset (QaryWord 2 n))
    (source target : BinaryOrbitIndex n) (d : Nat) :
    (binaryZeroCoeff (binaryCodeCellX C) target.j - binaryCodeCellX C target) *
        binaryMatrixCutCoeff n source target d =
      (((2 ^ n : Nat) : Rat))⁻¹ *
        ((binaryOrbitMultiplicity n source)⁻¹ *
          (binaryWordPairOrbitCell source).sum (fun sourcePair =>
            (binaryOneSidedShellTargetPairCell sourcePair target d).sum
              (binaryMatrixCutLhs2TargetWeight C))) := by
  let cube : Rat := (((2 ^ n : Nat) : Rat))
  let Ms : Rat := binaryOrbitMultiplicity n source
  let Mt : Rat := binaryOrbitMultiplicity n target
  let coeff : Rat := binaryMatrixCutCoeff n source target d
  let targetWeight : QaryWord 2 n × QaryWord 2 n -> Rat :=
    binaryMatrixCutLhs2TargetWeight C
  let sourceSum : Rat :=
    (binaryWordPairOrbitCell source).sum (fun sourcePair =>
      (binaryOneSidedShellTargetPairCell sourcePair target d).sum targetWeight)
  let targetSum : Rat :=
    (binaryWordPairOrbitCell target).sum targetWeight
  have hweighted :
      Ms⁻¹ * sourceSum = coeff * (Mt⁻¹ * targetSum) := by
    simpa [Ms, Mt, coeff, sourceSum, targetSum, targetWeight] using
      binaryOneSidedShell_weighted_pair_sum_identity
        source target d targetWeight
  have hnorm :
      cube⁻¹ * (Mt⁻¹ * targetSum) =
        binaryZeroCoeff (binaryCodeCellX C) target.j - binaryCodeCellX C target := by
    simpa [cube, Mt, targetSum, targetWeight] using
      binaryMatrixCutLhs2TargetWeight_normalized C target
  calc
    (binaryZeroCoeff (binaryCodeCellX C) target.j - binaryCodeCellX C target) *
        binaryMatrixCutCoeff n source target d =
      coeff *
        (binaryZeroCoeff (binaryCodeCellX C) target.j - binaryCodeCellX C target) := by
        ring
    _ = coeff * (cube⁻¹ * (Mt⁻¹ * targetSum)) := by
        rw [hnorm]
    _ = cube⁻¹ * (coeff * (Mt⁻¹ * targetSum)) := by
        ring
    _ = cube⁻¹ * (Ms⁻¹ * sourceSum) := by
        rw [hweighted]
    _ =
      (((2 ^ n : Nat) : Rat))⁻¹ *
        ((binaryOrbitMultiplicity n source)⁻¹ *
          (binaryWordPairOrbitCell source).sum (fun sourcePair =>
            (binaryOneSidedShellTargetPairCell sourcePair target d).sum
              (binaryMatrixCutLhs2TargetWeight C))) := by
        rfl

theorem binaryCodeCellX_matrixCutLhs2_card_identity {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (C : Finset (QaryWord 2 n))
    (source : BinaryOrbitIndex n) :
    Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryZeroCoeff (binaryCodeCellX C) target.j - binaryCodeCellX C target) *
          binaryMatrixCutLambda lambda source target) =
      Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        Finset.univ.sum (fun d : Fin (n + 1) =>
          lambda d *
            ((((2 ^ n : Nat) : Rat))⁻¹ *
              ((binaryOrbitMultiplicity n source)⁻¹ *
                (binaryWordPairOrbitCell source).sum (fun sourcePair =>
                  (binaryOneSidedShellTargetPairCell sourcePair target d.val).sum
                    (binaryMatrixCutLhs2TargetWeight C)))))) := by
  unfold binaryMatrixCutLambda
  apply Finset.sum_congr rfl
  intro target _htarget
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro d _hd
  calc
    (binaryZeroCoeff (binaryCodeCellX C) target.j - binaryCodeCellX C target) *
        (lambda d * binaryMatrixCutCoeff n source target d.val) =
      lambda d *
        ((binaryZeroCoeff (binaryCodeCellX C) target.j - binaryCodeCellX C target) *
          binaryMatrixCutCoeff n source target d.val) := by
        ring
    _ =
      lambda d *
        ((((2 ^ n : Nat) : Rat))⁻¹ *
          ((binaryOrbitMultiplicity n source)⁻¹ *
            (binaryWordPairOrbitCell source).sum (fun sourcePair =>
              (binaryOneSidedShellTargetPairCell sourcePair target d.val).sum
                (binaryMatrixCutLhs2TargetWeight C)))) := by
        rw [binaryCodeCellX_matrixCutCoeff_lhs2_card_identity C source target d.val]

theorem binaryCodeCellX_matrixCutCoeff_lhs3_card_identity {n : Nat}
    (C : Finset (QaryWord 2 n))
    (source target : BinaryOrbitIndex n) (d : Nat) :
    (binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex target) -
        binaryCodeCellX C target) *
        binaryMatrixCutCoeff n source target d =
      (((2 ^ n : Nat) : Rat))⁻¹ *
        ((binaryOrbitMultiplicity n source)⁻¹ *
          (binaryWordPairOrbitCell source).sum (fun sourcePair =>
            (binaryOneSidedShellTargetPairCell sourcePair target d).sum
              (binaryMatrixCutLhs3TargetWeight C))) := by
  let cube : Rat := (((2 ^ n : Nat) : Rat))
  let Ms : Rat := binaryOrbitMultiplicity n source
  let Mt : Rat := binaryOrbitMultiplicity n target
  let coeff : Rat := binaryMatrixCutCoeff n source target d
  let targetWeight : QaryWord 2 n × QaryWord 2 n -> Rat :=
    binaryMatrixCutLhs3TargetWeight C
  let sourceSum : Rat :=
    (binaryWordPairOrbitCell source).sum (fun sourcePair =>
      (binaryOneSidedShellTargetPairCell sourcePair target d).sum targetWeight)
  let targetSum : Rat :=
    (binaryWordPairOrbitCell target).sum targetWeight
  have hweighted :
      Ms⁻¹ * sourceSum = coeff * (Mt⁻¹ * targetSum) := by
    simpa [Ms, Mt, coeff, sourceSum, targetSum, targetWeight] using
      binaryOneSidedShell_weighted_pair_sum_identity
        source target d targetWeight
  have hnorm :
      cube⁻¹ * (Mt⁻¹ * targetSum) =
        binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex target) -
          binaryCodeCellX C target := by
    simpa [cube, Mt, targetSum, targetWeight] using
      binaryMatrixCutLhs3TargetWeight_normalized C target
  calc
    (binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex target) -
        binaryCodeCellX C target) *
        binaryMatrixCutCoeff n source target d =
      coeff *
        (binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex target) -
          binaryCodeCellX C target) := by
        ring
    _ = coeff * (cube⁻¹ * (Mt⁻¹ * targetSum)) := by
        rw [hnorm]
    _ = cube⁻¹ * (coeff * (Mt⁻¹ * targetSum)) := by
        ring
    _ = cube⁻¹ * (Ms⁻¹ * sourceSum) := by
        rw [hweighted]
    _ =
      (((2 ^ n : Nat) : Rat))⁻¹ *
        ((binaryOrbitMultiplicity n source)⁻¹ *
          (binaryWordPairOrbitCell source).sum (fun sourcePair =>
            (binaryOneSidedShellTargetPairCell sourcePair target d).sum
              (binaryMatrixCutLhs3TargetWeight C))) := by
        rfl

theorem binaryCodeCellX_matrixCutLhs3_card_identity {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (C : Finset (QaryWord 2 n))
    (source : BinaryOrbitIndex n) :
    Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex target) -
            binaryCodeCellX C target) *
          binaryMatrixCutLambda lambda source target) =
      Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        Finset.univ.sum (fun d : Fin (n + 1) =>
          lambda d *
            ((((2 ^ n : Nat) : Rat))⁻¹ *
              ((binaryOrbitMultiplicity n source)⁻¹ *
                (binaryWordPairOrbitCell source).sum (fun sourcePair =>
                  (binaryOneSidedShellTargetPairCell sourcePair target d.val).sum
                    (binaryMatrixCutLhs3TargetWeight C)))))) := by
  unfold binaryMatrixCutLambda
  apply Finset.sum_congr rfl
  intro target _htarget
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro d _hd
  calc
    (binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex target) -
        binaryCodeCellX C target) *
        (lambda d * binaryMatrixCutCoeff n source target d.val) =
      lambda d *
        ((binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex target) -
            binaryCodeCellX C target) *
          binaryMatrixCutCoeff n source target d.val) := by
        ring
    _ =
      lambda d *
        ((((2 ^ n : Nat) : Rat))⁻¹ *
          ((binaryOrbitMultiplicity n source)⁻¹ *
            (binaryWordPairOrbitCell source).sum (fun sourcePair =>
              (binaryOneSidedShellTargetPairCell sourcePair target d.val).sum
                (binaryMatrixCutLhs3TargetWeight C)))) := by
        rw [binaryCodeCellX_matrixCutCoeff_lhs3_card_identity C source target d.val]

theorem binaryCodeCellX_matrixCutCoeff_lhs4_card_identity {n : Nat}
    (C : Finset (QaryWord 2 n))
    (source target : BinaryOrbitIndex n) (d : Nat) :
    (binaryZeroCoeff (binaryCodeCellX C) 0 -
        binaryZeroCoeff (binaryCodeCellX C) target.j -
        binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex target) +
        binaryCodeCellX C target) *
        binaryMatrixCutCoeff n source target d =
      (((2 ^ n : Nat) : Rat))⁻¹ *
        ((binaryOrbitMultiplicity n source)⁻¹ *
          (binaryWordPairOrbitCell source).sum (fun sourcePair =>
            (binaryOneSidedShellTargetPairCell sourcePair target d).sum
              (binaryMatrixCutLhs4TargetWeight C))) := by
  let cube : Rat := (((2 ^ n : Nat) : Rat))
  let Ms : Rat := binaryOrbitMultiplicity n source
  let Mt : Rat := binaryOrbitMultiplicity n target
  let coeff : Rat := binaryMatrixCutCoeff n source target d
  let targetWeight : QaryWord 2 n × QaryWord 2 n -> Rat :=
    binaryMatrixCutLhs4TargetWeight C
  let sourceSum : Rat :=
    (binaryWordPairOrbitCell source).sum (fun sourcePair =>
      (binaryOneSidedShellTargetPairCell sourcePair target d).sum targetWeight)
  let targetSum : Rat :=
    (binaryWordPairOrbitCell target).sum targetWeight
  have hweighted :
      Ms⁻¹ * sourceSum = coeff * (Mt⁻¹ * targetSum) := by
    simpa [Ms, Mt, coeff, sourceSum, targetSum, targetWeight] using
      binaryOneSidedShell_weighted_pair_sum_identity
        source target d targetWeight
  have hnorm :
      cube⁻¹ * (Mt⁻¹ * targetSum) =
        binaryZeroCoeff (binaryCodeCellX C) 0 -
          binaryZeroCoeff (binaryCodeCellX C) target.j -
          binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex target) +
          binaryCodeCellX C target := by
    simpa [cube, Mt, targetSum, targetWeight] using
      binaryMatrixCutLhs4TargetWeight_normalized C target
  calc
    (binaryZeroCoeff (binaryCodeCellX C) 0 -
        binaryZeroCoeff (binaryCodeCellX C) target.j -
        binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex target) +
        binaryCodeCellX C target) *
        binaryMatrixCutCoeff n source target d =
      coeff *
        (binaryZeroCoeff (binaryCodeCellX C) 0 -
          binaryZeroCoeff (binaryCodeCellX C) target.j -
          binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex target) +
          binaryCodeCellX C target) := by
        ring
    _ = coeff * (cube⁻¹ * (Mt⁻¹ * targetSum)) := by
        rw [hnorm]
    _ = cube⁻¹ * (coeff * (Mt⁻¹ * targetSum)) := by
        ring
    _ = cube⁻¹ * (Ms⁻¹ * sourceSum) := by
        rw [hweighted]
    _ =
      (((2 ^ n : Nat) : Rat))⁻¹ *
        ((binaryOrbitMultiplicity n source)⁻¹ *
          (binaryWordPairOrbitCell source).sum (fun sourcePair =>
            (binaryOneSidedShellTargetPairCell sourcePair target d).sum
              (binaryMatrixCutLhs4TargetWeight C))) := by
        rfl

theorem binaryCodeCellX_matrixCutLhs4_card_identity {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (C : Finset (QaryWord 2 n))
    (source : BinaryOrbitIndex n) :
    Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryZeroCoeff (binaryCodeCellX C) 0 -
            binaryZeroCoeff (binaryCodeCellX C) target.j -
            binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex target) +
            binaryCodeCellX C target) *
          binaryMatrixCutLambda lambda source target) =
      Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        Finset.univ.sum (fun d : Fin (n + 1) =>
          lambda d *
            ((((2 ^ n : Nat) : Rat))⁻¹ *
              ((binaryOrbitMultiplicity n source)⁻¹ *
                (binaryWordPairOrbitCell source).sum (fun sourcePair =>
                  (binaryOneSidedShellTargetPairCell sourcePair target d.val).sum
                    (binaryMatrixCutLhs4TargetWeight C)))))) := by
  unfold binaryMatrixCutLambda
  apply Finset.sum_congr rfl
  intro target _htarget
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro d _hd
  calc
    (binaryZeroCoeff (binaryCodeCellX C) 0 -
        binaryZeroCoeff (binaryCodeCellX C) target.j -
        binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex target) +
        binaryCodeCellX C target) *
        (lambda d * binaryMatrixCutCoeff n source target d.val) =
      lambda d *
        ((binaryZeroCoeff (binaryCodeCellX C) 0 -
            binaryZeroCoeff (binaryCodeCellX C) target.j -
            binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex target) +
            binaryCodeCellX C target) *
          binaryMatrixCutCoeff n source target d.val) := by
        ring
    _ =
      lambda d *
        ((((2 ^ n : Nat) : Rat))⁻¹ *
          ((binaryOrbitMultiplicity n source)⁻¹ *
            (binaryWordPairOrbitCell source).sum (fun sourcePair =>
              (binaryOneSidedShellTargetPairCell sourcePair target d.val).sum
                (binaryMatrixCutLhs4TargetWeight C)))) := by
        rw [binaryCodeCellX_matrixCutCoeff_lhs4_card_identity C source target d.val]

theorem binaryCodeCellX_matrixCuts_universal
    {n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (C : Finset (QaryWord 2 n)) (hC : CoversFinset C r) :
    BinaryMatrixCutConstraints lambda beta (binaryCodeCellX C) := by
  intro source
  dsimp [BinaryMatrixCutConstraints]
  refine ⟨?_, ?_, ?_, ?_⟩
  · have havg :=
      binaryMatrixCutAverage_valid_le_direct hvalid C hC source
        (binaryMatrixCutSourceCell1 C)
        (binaryMatrixCutLhs1TargetWeight C)
        (binaryMatrixCutTargetBaseCell1_sum_weight_eq_source_shellCount C)
    calc
      binaryZeroCoeff (binaryCodeCellX C) source.i * beta =
          ((((2 ^ n : Nat) : Rat))⁻¹ *
            ((binaryOrbitMultiplicity n source)⁻¹ *
              (binaryWordPairOrbitCell source).sum (fun sourcePair =>
                ((binaryMatrixCutSourceCell1 C sourcePair).card : Rat)))) *
            beta := by
            rw [binaryMatrixCutSourceCell1_normalized C source]
      _ <= Finset.univ.sum (fun target : BinaryOrbitIndex n =>
          Finset.univ.sum (fun d : Fin (n + 1) =>
            lambda d *
              ((((2 ^ n : Nat) : Rat))⁻¹ *
                ((binaryOrbitMultiplicity n source)⁻¹ *
                  (binaryWordPairOrbitCell source).sum (fun sourcePair =>
                    (binaryOneSidedShellTargetPairCell sourcePair target d.val).sum
                      (binaryMatrixCutLhs1TargetWeight C)))))) := havg
      _ = Finset.univ.sum (fun target : BinaryOrbitIndex n =>
          binaryCodeCellX C target *
            binaryMatrixCutLambda lambda source target) := by
            simpa [binaryMatrixCutLhs1TargetWeight] using
              (binaryCodeCellX_matrixCutLhs1_card_identity lambda C source).symm
  · have havg :=
      binaryMatrixCutAverage_valid_le_direct hvalid C hC source
        (binaryMatrixCutSourceCell2 C)
        (binaryMatrixCutLhs2TargetWeight C)
        (binaryMatrixCutTargetBaseCell2_sum_weight_eq_source_shellCount C)
    calc
      (binaryZeroCoeff (binaryCodeCellX C) 0 -
          binaryZeroCoeff (binaryCodeCellX C) source.i) * beta =
          ((((2 ^ n : Nat) : Rat))⁻¹ *
            ((binaryOrbitMultiplicity n source)⁻¹ *
              (binaryWordPairOrbitCell source).sum (fun sourcePair =>
                ((binaryMatrixCutSourceCell2 C sourcePair).card : Rat)))) *
            beta := by
            rw [binaryMatrixCutSourceCell2_normalized C source]
      _ <= Finset.univ.sum (fun target : BinaryOrbitIndex n =>
          Finset.univ.sum (fun d : Fin (n + 1) =>
            lambda d *
              ((((2 ^ n : Nat) : Rat))⁻¹ *
                ((binaryOrbitMultiplicity n source)⁻¹ *
                  (binaryWordPairOrbitCell source).sum (fun sourcePair =>
                    (binaryOneSidedShellTargetPairCell sourcePair target d.val).sum
                      (binaryMatrixCutLhs2TargetWeight C)))))) := havg
      _ = Finset.univ.sum (fun target : BinaryOrbitIndex n =>
          (binaryZeroCoeff (binaryCodeCellX C) target.j -
              binaryCodeCellX C target) *
            binaryMatrixCutLambda lambda source target) := by
            simpa [binaryMatrixCutLhs2TargetWeight] using
              (binaryCodeCellX_matrixCutLhs2_card_identity lambda C source).symm
  · have havg :=
      binaryMatrixCutAverage_valid_le_direct hvalid C hC source
        (binaryMatrixCutSourceCell3 C)
        (binaryMatrixCutLhs3TargetWeight C)
        (binaryMatrixCutTargetBaseCell3_sum_weight_eq_source_shellCount C)
    calc
      (binaryZeroCoeff (binaryCodeCellX C) 0 -
          binaryZeroCoeff (binaryCodeCellX C) source.i) * beta =
          ((((2 ^ n : Nat) : Rat))⁻¹ *
            ((binaryOrbitMultiplicity n source)⁻¹ *
              (binaryWordPairOrbitCell source).sum (fun sourcePair =>
                ((binaryMatrixCutSourceCell3 C sourcePair).card : Rat)))) *
            beta := by
            rw [binaryMatrixCutSourceCell3_normalized C source]
      _ <= Finset.univ.sum (fun target : BinaryOrbitIndex n =>
          Finset.univ.sum (fun d : Fin (n + 1) =>
            lambda d *
              ((((2 ^ n : Nat) : Rat))⁻¹ *
                ((binaryOrbitMultiplicity n source)⁻¹ *
                  (binaryWordPairOrbitCell source).sum (fun sourcePair =>
                    (binaryOneSidedShellTargetPairCell sourcePair target d.val).sum
                      (binaryMatrixCutLhs3TargetWeight C)))))) := havg
      _ = Finset.univ.sum (fun target : BinaryOrbitIndex n =>
          (binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex target) -
              binaryCodeCellX C target) *
            binaryMatrixCutLambda lambda source target) := by
            simpa [binaryMatrixCutLhs3TargetWeight] using
              (binaryCodeCellX_matrixCutLhs3_card_identity lambda C source).symm
  · have havg :=
      binaryMatrixCutAverage_valid_le_direct hvalid C hC source
        (binaryMatrixCutSourceCell4 C)
        (binaryMatrixCutLhs4TargetWeight C)
        (binaryMatrixCutTargetBaseCell4_sum_weight_eq_source_shellCount C)
    calc
      (1 - 2 * binaryZeroCoeff (binaryCodeCellX C) 0 +
          binaryZeroCoeff (binaryCodeCellX C) source.i) * beta =
          ((((2 ^ n : Nat) : Rat))⁻¹ *
            ((binaryOrbitMultiplicity n source)⁻¹ *
              (binaryWordPairOrbitCell source).sum (fun sourcePair =>
                ((binaryMatrixCutSourceCell4 C sourcePair).card : Rat)))) *
            beta := by
            rw [binaryMatrixCutSourceCell4_normalized C source]
      _ <= Finset.univ.sum (fun target : BinaryOrbitIndex n =>
          Finset.univ.sum (fun d : Fin (n + 1) =>
            lambda d *
              ((((2 ^ n : Nat) : Rat))⁻¹ *
                ((binaryOrbitMultiplicity n source)⁻¹ *
                  (binaryWordPairOrbitCell source).sum (fun sourcePair =>
                    (binaryOneSidedShellTargetPairCell sourcePair target d.val).sum
                      (binaryMatrixCutLhs4TargetWeight C)))))) := havg
      _ = Finset.univ.sum (fun target : BinaryOrbitIndex n =>
          (binaryZeroCoeff (binaryCodeCellX C) 0 -
              binaryZeroCoeff (binaryCodeCellX C) target.j -
              binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex target) +
              binaryCodeCellX C target) *
            binaryMatrixCutLambda lambda source target) := by
            simpa [binaryMatrixCutLhs4TargetWeight] using
              (binaryCodeCellX_matrixCutLhs4_card_identity lambda C source).symm

end

end GijswijtPolak2025
end SDP
end CoveringCodes
