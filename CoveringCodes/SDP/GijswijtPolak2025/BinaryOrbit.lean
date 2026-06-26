import CoveringCodes.SDP.GijswijtPolak2025.Automorphisms
import Mathlib.Data.Matrix.Basic
import Mathlib.Tactic

/-!
# Binary orbit parameters
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

/-- Support of a binary word. -/
def binarySupport (n : Nat) (x : QaryWord 2 n) : Finset (Fin n) :=
  Finset.univ.filter (fun a => x a ≠ 0)

/-- Binary word with support exactly `S`. -/
def binaryWordOfSupport {n : Nat} (S : Finset (Fin n)) : QaryWord 2 n :=
  fun a => if a ∈ S then 1 else 0

@[simp]
theorem binaryWordOfSupport_apply_mem {n : Nat} (S : Finset (Fin n)) {a : Fin n}
    (ha : a ∈ S) :
    binaryWordOfSupport S a = 1 := by
  simp [binaryWordOfSupport, ha]

@[simp]
theorem binaryWordOfSupport_apply_not_mem {n : Nat} (S : Finset (Fin n)) {a : Fin n}
    (ha : a ∉ S) :
    binaryWordOfSupport S a = 0 := by
  simp [binaryWordOfSupport, ha]

theorem mem_binarySupport_wordOfSupport {n : Nat} (S : Finset (Fin n)) (a : Fin n) :
    a ∈ binarySupport n (binaryWordOfSupport S) ↔ a ∈ S := by
  by_cases ha : a ∈ S <;> simp [binarySupport, ha]

@[simp]
theorem binarySupport_wordOfSupport {n : Nat} (S : Finset (Fin n)) :
    binarySupport n (binaryWordOfSupport S) = S := by
  ext a
  exact mem_binarySupport_wordOfSupport S a

@[simp]
theorem binaryWordOfSupport_binarySupport {n : Nat} (w : QaryWord 2 n) :
    binaryWordOfSupport (binarySupport n w) = w := by
  funext a
  by_cases h : w a = 0
  · simp [binaryWordOfSupport, binarySupport, h]
  · have hw : w a = 1 := by
      apply Fin.ext
      have hlt : (w a).val < 2 := (w a).isLt
      have hne : (w a).val ≠ 0 := by
        intro hval
        apply h
        exact Fin.ext hval
      omega
    simp [binaryWordOfSupport, binarySupport, hw]

/-- Binary words are equivalent to their supports. -/
def binarySupportEquiv (n : Nat) : QaryWord 2 n ≃ Finset (Fin n) where
  toFun := binarySupport n
  invFun := binaryWordOfSupport
  left_inv := binaryWordOfSupport_binarySupport
  right_inv := binarySupport_wordOfSupport

/-- Reindex a finite sum over binary words by their support sets. -/
theorem binary_sum_support {n : Nat} {β : Type} [AddCommMonoid β]
    (f : QaryWord 2 n -> β) :
    (Finset.univ.sum f) =
      Finset.univ.sum (fun S : Finset (Fin n) => f (binaryWordOfSupport S)) := by
  simpa using
    (Fintype.sum_equiv (binarySupportEquiv n)
      f
      (fun S : Finset (Fin n) => f (binaryWordOfSupport S))
      (by intro w; simp [binarySupportEquiv]))

private lemma fin2_ne_iff {a b : Fin 2} :
    a ≠ b ↔ (a ≠ 0 ∧ b = 0) ∨ (a = 0 ∧ b ≠ 0) := by
  fin_cases a <;> fin_cases b <;> simp

private lemma binary_dist_filter_eq {n : Nat} (u v : QaryWord 2 n) :
    (Finset.univ.filter (fun a : Fin n => u a ≠ v a)) =
      (binarySupport n u \ binarySupport n v) ∪
        (binarySupport n v \ binarySupport n u) := by
  ext a
  constructor
  · intro ha
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at ha
    rcases (fin2_ne_iff.mp ha) with ⟨hu, hv⟩ | ⟨hu, hv⟩
    · exact Finset.mem_union.mpr
        (Or.inl (Finset.mem_sdiff.mpr
          ⟨by simp [binarySupport, hu], by simp [binarySupport, hv]⟩))
    · exact Finset.mem_union.mpr
        (Or.inr (Finset.mem_sdiff.mpr
          ⟨by simp [binarySupport, hv], by simp [binarySupport, hu]⟩))
  · intro ha
    rw [Finset.mem_filter]
    refine ⟨Finset.mem_univ a, ?_⟩
    simp only [Finset.mem_union, Finset.mem_sdiff] at ha
    rcases ha with ⟨hua, hva⟩ | ⟨hva, hua⟩
    · simp only [binarySupport, Finset.mem_filter, Finset.mem_univ, true_and] at hua hva
      intro h
      apply hva
      rwa [← h]
    · simp only [binarySupport, Finset.mem_filter, Finset.mem_univ, true_and] at hua hva
      intro h
      apply hua
      rwa [h]

/-- Orbit index `(i,j,t)` for pairs of binary words. -/
structure BinaryOrbitIndex (n : Nat) where
  i : Nat
  j : Nat
  t : Nat
  ht_i : t <= i
  ht_j : t <= j
  hij : i + j <= n + t
deriving DecidableEq

namespace BinaryOrbitIndex

theorem i_le_n {n : Nat} (idx : BinaryOrbitIndex n) : idx.i <= n := by
  have htj := idx.ht_j
  have hij := idx.hij
  omega

theorem j_le_n {n : Nat} (idx : BinaryOrbitIndex n) : idx.j <= n := by
  have hti := idx.ht_i
  have hij := idx.hij
  omega

theorem t_le_n {n : Nat} (idx : BinaryOrbitIndex n) : idx.t <= n :=
  idx.ht_i.trans idx.i_le_n

/-- Embed a binary orbit index into a finite cube of bounded coordinates. -/
def toFinTriple {n : Nat} (idx : BinaryOrbitIndex n) :
    Fin (n + 1) × Fin (n + 1) × Fin (n + 1) :=
  (⟨idx.i, Nat.lt_succ_of_le idx.i_le_n⟩,
   ⟨idx.j, Nat.lt_succ_of_le idx.j_le_n⟩,
   ⟨idx.t, Nat.lt_succ_of_le idx.t_le_n⟩)

theorem toFinTriple_injective {n : Nat} :
    Function.Injective (@toFinTriple n) := by
  intro a b h
  cases a
  cases b
  simp [toFinTriple] at h ⊢
  exact h

noncomputable instance (n : Nat) : Fintype (BinaryOrbitIndex n) :=
  Fintype.ofInjective (@toFinTriple n) toFinTriple_injective

end BinaryOrbitIndex

/-- Swap the two words in a binary orbit index. -/
def BinaryOrbitIndex.swap {n : Nat} (idx : BinaryOrbitIndex n) :
    BinaryOrbitIndex n where
  i := idx.j
  j := idx.i
  t := idx.t
  ht_i := idx.ht_j
  ht_j := idx.ht_i
  hij := by
    simpa [Nat.add_comm] using idx.hij

/-- Orbit index attached to a pair of binary words. -/
def binaryOrbitOf {n : Nat} (u v : QaryWord 2 n) : BinaryOrbitIndex n where
  i := (binarySupport n u).card
  j := (binarySupport n v).card
  t := (binarySupport n u ∩ binarySupport n v).card
  ht_i := by
    exact Finset.card_le_card Finset.inter_subset_left
  ht_j := by
    exact Finset.card_le_card Finset.inter_subset_right
  hij := by
    let A := binarySupport n u
    let B := binarySupport n v
    have hcard : (A ∪ B).card <= n := by
      calc
        (A ∪ B).card <= (Finset.univ : Finset (Fin n)).card :=
          Finset.card_le_card (by intro a _; simp)
        _ = n := by simp
    have hinc : (A ∪ B).card + (A ∩ B).card = A.card + B.card :=
      Finset.card_union_add_card_inter A B
    change A.card + B.card <= n + (A ∩ B).card
    omega

theorem binaryOrbitOf_i {n : Nat} (u v : QaryWord 2 n) :
    (binaryOrbitOf u v).i = weight 2 n (by decide) u := by
  change (binarySupport n u).card = weight 2 n (by decide) u
  unfold weight zeroWord binarySupport dist hammingDist
  apply congrArg Finset.card
  ext a
  simp

theorem binaryOrbitOf_j {n : Nat} (u v : QaryWord 2 n) :
    (binaryOrbitOf u v).j = weight 2 n (by decide) v := by
  change (binarySupport n v).card = weight 2 n (by decide) v
  unfold weight zeroWord binarySupport dist hammingDist
  apply congrArg Finset.card
  ext a
  simp

theorem binaryOrbitOf_t {n : Nat} (u v : QaryWord 2 n) :
    (binaryOrbitOf u v).t =
      (binarySupport n u ∩ binarySupport n v).card := by
  rfl

/-- Orbit index of two binary words built from explicit support sets. -/
theorem binaryOrbitOf_wordOfSupport {n : Nat}
    (S T : Finset (Fin n)) :
    binaryOrbitOf (binaryWordOfSupport S) (binaryWordOfSupport T) =
      { i := S.card
        j := T.card
        t := (S ∩ T).card
        ht_i := Finset.card_le_card Finset.inter_subset_left
        ht_j := Finset.card_le_card Finset.inter_subset_right
        hij := by
          have hcard : (S ∪ T).card <= n := by
            calc
              (S ∪ T).card <= (Finset.univ : Finset (Fin n)).card :=
                Finset.card_le_card (by intro a _; simp)
              _ = n := by simp
          have hinc : (S ∪ T).card + (S ∩ T).card = S.card + T.card :=
            Finset.card_union_add_card_inter S T
          omega } := by
  unfold binaryOrbitOf
  simp

/-- Membership in binary support after a zero-stabilizing isometry. -/
theorem binarySupport_act_mem_iff {n : Nat}
    (g : QaryIsometry 2 n) (hg : StabilizesZero (by decide : 0 < 2) g)
    (x : QaryWord 2 n) (i : Fin n) :
    i ∈ binarySupport n (g.act x) ↔ g.coord.symm i ∈ binarySupport n x := by
  simp only [binarySupport, Finset.mem_filter, Finset.mem_univ, true_and]
  exact QaryIsometry.act_ne_zero_iff_of_stabilizesZero (by decide : 0 < 2) g hg x i

/-- A zero-stabilizing isometry preserves binary support size. -/
theorem binarySupport_act_card {n : Nat}
    (g : QaryIsometry 2 n) (hg : StabilizesZero (by decide : 0 < 2) g)
    (x : QaryWord 2 n) :
    (binarySupport n (g.act x)).card = (binarySupport n x).card := by
  apply Finset.card_bij (fun i _ => g.coord.symm i)
  · intro i hi
    exact (binarySupport_act_mem_iff g hg x i).mp hi
  · intro i _ j _ hij
    exact g.coord.symm.injective hij
  · intro j hj
    refine ⟨g.coord j, ?_, ?_⟩
    · exact (binarySupport_act_mem_iff g hg x (g.coord j)).mpr (by simpa using hj)
    · simp

/-- A zero-stabilizing isometry preserves binary common support size. -/
theorem binarySupport_inter_act_card {n : Nat}
    (g : QaryIsometry 2 n) (hg : StabilizesZero (by decide : 0 < 2) g)
    (u v : QaryWord 2 n) :
    (binarySupport n (g.act u) ∩ binarySupport n (g.act v)).card =
      (binarySupport n u ∩ binarySupport n v).card := by
  apply Finset.card_bij (fun i _ => g.coord.symm i)
  · intro i hi
    rw [Finset.mem_inter] at hi ⊢
    exact ⟨(binarySupport_act_mem_iff g hg u i).mp hi.1,
      (binarySupport_act_mem_iff g hg v i).mp hi.2⟩
  · intro i _ j _ hij
    exact g.coord.symm.injective hij
  · intro j hj
    refine ⟨g.coord j, ?_, ?_⟩
    · rw [Finset.mem_inter] at hj ⊢
      exact ⟨(binarySupport_act_mem_iff g hg u (g.coord j)).mpr (by simpa using hj.1),
        (binarySupport_act_mem_iff g hg v (g.coord j)).mpr (by simpa using hj.2)⟩
    · simp

/-- Binary orbit indices are invariant under zero-stabilizing isometries. -/
theorem binaryOrbitOf_act_of_stabilizesZero {n : Nat}
    (g : QaryIsometry 2 n) (hg : StabilizesZero (by decide : 0 < 2) g)
    (u v : QaryWord 2 n) :
    binaryOrbitOf (g.act u) (g.act v) = binaryOrbitOf u v := by
  unfold binaryOrbitOf
  rw [BinaryOrbitIndex.mk.injEq]
  exact ⟨binarySupport_act_card g hg u, binarySupport_act_card g hg v,
    binarySupport_inter_act_card g hg u v⟩

theorem binary_dist_from_orbit {n : Nat} (u v : QaryWord 2 n) :
    dist u v = (binaryOrbitOf u v).i + (binaryOrbitOf u v).j -
      2 * (binaryOrbitOf u v).t := by
  let A := binarySupport n u
  let B := binarySupport n v
  have hfilter :
      (Finset.univ.filter (fun a : Fin n => u a ≠ v a)) = (A \ B) ∪ (B \ A) :=
    binary_dist_filter_eq u v
  have hdisj : Disjoint (A \ B) (B \ A) := by
    rw [Finset.disjoint_left]
    intro a ha hb
    exact (Finset.mem_sdiff.mp ha).2 (Finset.mem_sdiff.mp hb).1
  unfold dist hammingDist
  rw [hfilter, Finset.card_union_of_disjoint hdisj]
  have hinter : (B ∩ A).card = (A ∩ B).card := by rw [Finset.inter_comm]
  rw [Finset.card_sdiff, Finset.card_sdiff, hinter]
  change A.card - (A ∩ B).card + (B.card - (A ∩ B).card) =
    A.card + B.card - 2 * (A ∩ B).card
  have hA : (A ∩ B).card <= A.card := Finset.card_le_card Finset.inter_subset_left
  have hB : (A ∩ B).card <= B.card := Finset.card_le_card Finset.inter_subset_right
  omega

/-- Binary orbit matrix `M^t_{i,j}`. -/
def binaryOrbitMatrix {n : Nat} (idx : BinaryOrbitIndex n) :
    Matrix (QaryWord 2 n) (QaryWord 2 n) Rat :=
  fun u v => if binaryOrbitOf u v = idx then 1 else 0

/-- Binary orbit matrices are invariant under zero-stabilizing isometries. -/
theorem binaryOrbitMatrix_act_of_stabilizesZero {n : Nat}
    (g : QaryIsometry 2 n) (hg : StabilizesZero (by decide : 0 < 2) g)
    (idx : BinaryOrbitIndex n) (u v : QaryWord 2 n) :
    binaryOrbitMatrix idx (g.act u) (g.act v) = binaryOrbitMatrix idx u v := by
  simp [binaryOrbitMatrix, binaryOrbitOf_act_of_stabilizesZero g hg u v]

end GijswijtPolak2025
end SDP
end CoveringCodes
