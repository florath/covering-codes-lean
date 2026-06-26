import CoveringCodes.SDP.GijswijtPolak2025.Automorphisms
import Mathlib.Data.Matrix.Basic
import Mathlib.Tactic

/-!
# Q-ary orbit parameters
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

/-- Nonzero support of a q-ary word. -/
def qarySupport (q n : Nat) (hq : 0 < q) (x : QaryWord q n) : Finset (Fin n) :=
  Finset.univ.filter (fun a => x a ≠ ⟨0, hq⟩)

/-- Coordinates where two q-ary words agree at a nonzero symbol. -/
def qaryEqualNonzeroSupport (q n : Nat) (hq : 0 < q)
    (u v : QaryWord q n) : Finset (Fin n) :=
  Finset.univ.filter (fun a => u a = v a ∧ u a ≠ ⟨0, hq⟩)

private lemma qaryEqualNonzeroSupport_comm {q n : Nat} (hq : 0 < q)
    (u v : QaryWord q n) :
    qaryEqualNonzeroSupport q n hq v u = qaryEqualNonzeroSupport q n hq u v := by
  ext a
  simp only [qaryEqualNonzeroSupport, Finset.mem_filter, Finset.mem_univ, true_and]
  constructor
  · rintro ⟨hvu, hv0⟩
    exact ⟨hvu.symm, by simpa [hvu] using hv0⟩
  · rintro ⟨huv, hu0⟩
    exact ⟨huv.symm, by simpa [huv] using hu0⟩

private lemma qaryEqualNonzeroSupport_subset_inter {q n : Nat} (hq : 0 < q)
    (u v : QaryWord q n) :
    qaryEqualNonzeroSupport q n hq u v ⊆
      qarySupport q n hq u ∩ qarySupport q n hq v := by
  intro a ha
  simp only [qaryEqualNonzeroSupport, qarySupport, Finset.mem_filter, Finset.mem_univ,
    true_and, Finset.mem_inter] at ha ⊢
  exact ⟨ha.2, by simpa [← ha.1] using ha.2⟩

private lemma qary_dist_filter_eq {q n : Nat} (hq : 0 < q) (u v : QaryWord q n) :
    (Finset.univ.filter (fun a : Fin n => u a ≠ v a)) =
      ((qarySupport q n hq u \ qarySupport q n hq v) ∪
        (qarySupport q n hq v \ qarySupport q n hq u)) ∪
          ((qarySupport q n hq u ∩ qarySupport q n hq v) \
            qaryEqualNonzeroSupport q n hq u v) := by
  ext a
  constructor
  · intro ha
    rw [Finset.mem_filter] at ha
    by_cases hu : u a = ⟨0, hq⟩
    · by_cases hv : v a = ⟨0, hq⟩
      · exfalso
        exact ha.2 (by rw [hu, hv])
      · apply Finset.mem_union.mpr
        left
        apply Finset.mem_union.mpr
        right
        apply Finset.mem_sdiff.mpr
        constructor
        · simp [qarySupport, hv]
        · simp [qarySupport, hu]
    · by_cases hv : v a = ⟨0, hq⟩
      · apply Finset.mem_union.mpr
        left
        apply Finset.mem_union.mpr
        left
        apply Finset.mem_sdiff.mpr
        constructor
        · simp [qarySupport, hu]
        · simp [qarySupport, hv]
      · apply Finset.mem_union.mpr
        right
        apply Finset.mem_sdiff.mpr
        constructor
        · simp [qarySupport, hu, hv]
        · simp [qaryEqualNonzeroSupport, hu, ha.2]
  · intro ha
    rw [Finset.mem_filter]
    refine ⟨Finset.mem_univ a, ?_⟩
    simp only [Finset.mem_union, Finset.mem_sdiff] at ha
    rcases ha with (⟨hua, hva⟩ | ⟨hva, hua⟩) | ⟨ht, hp⟩
    · simp only [qarySupport, Finset.mem_filter, Finset.mem_univ, true_and] at hua hva
      intro h
      apply hva
      simpa [← h] using hua
    · simp only [qarySupport, Finset.mem_filter, Finset.mem_univ, true_and] at hua hva
      intro h
      apply hua
      simpa [h] using hva
    · simp only [qarySupport, qaryEqualNonzeroSupport, Finset.mem_filter, Finset.mem_univ,
        true_and, Finset.mem_inter] at ht hp
      intro h
      apply hp
      exact ⟨h, ht.1⟩

/-- Orbit index `(i,j,t,p)` for pairs of q-ary words. -/
structure QaryOrbitIndex (q n : Nat) where
  i : Nat
  j : Nat
  t : Nat
  p : Nat
  hp_t : p <= t
  ht_i : t <= i
  ht_j : t <= j
  hij : i + j <= n + t
deriving DecidableEq

namespace QaryOrbitIndex

theorem i_le_n {q n : Nat} (idx : QaryOrbitIndex q n) : idx.i <= n := by
  have htj := idx.ht_j
  have hij := idx.hij
  omega

theorem j_le_n {q n : Nat} (idx : QaryOrbitIndex q n) : idx.j <= n := by
  have hti := idx.ht_i
  have hij := idx.hij
  omega

theorem t_le_n {q n : Nat} (idx : QaryOrbitIndex q n) : idx.t <= n :=
  idx.ht_i.trans idx.i_le_n

theorem p_le_n {q n : Nat} (idx : QaryOrbitIndex q n) : idx.p <= n :=
  idx.hp_t.trans idx.t_le_n

/-- Embed a q-ary orbit index into a finite cube of bounded coordinates. -/
def toFinTuple {q n : Nat} (idx : QaryOrbitIndex q n) :
    Fin (n + 1) × Fin (n + 1) × Fin (n + 1) × Fin (n + 1) :=
  (⟨idx.i, Nat.lt_succ_of_le idx.i_le_n⟩,
   ⟨idx.j, Nat.lt_succ_of_le idx.j_le_n⟩,
   ⟨idx.t, Nat.lt_succ_of_le idx.t_le_n⟩,
   ⟨idx.p, Nat.lt_succ_of_le idx.p_le_n⟩)

theorem toFinTuple_injective {q n : Nat} :
    Function.Injective (@toFinTuple q n) := by
  intro a b h
  cases a
  cases b
  simp [toFinTuple] at h ⊢
  exact h

noncomputable instance (q n : Nat) : Fintype (QaryOrbitIndex q n) :=
  Fintype.ofInjective (@toFinTuple q n) toFinTuple_injective

end QaryOrbitIndex

/-- Swap the two words in a q-ary orbit index. -/
def QaryOrbitIndex.swap {q n : Nat} (idx : QaryOrbitIndex q n) :
    QaryOrbitIndex q n where
  i := idx.j
  j := idx.i
  t := idx.t
  p := idx.p
  hp_t := idx.hp_t
  ht_i := idx.ht_j
  ht_j := idx.ht_i
  hij := by
    simpa [Nat.add_comm] using idx.hij

private theorem QaryOrbitIndex.swap_swap {q n : Nat} (idx : QaryOrbitIndex q n) :
    idx.swap.swap = idx := by
  cases idx
  simp [QaryOrbitIndex.swap]

/-- Orbit index attached to a pair of q-ary words. -/
def qaryOrbitOf {q n : Nat} (hq : 0 < q) (u v : QaryWord q n) :
    QaryOrbitIndex q n where
  i := (qarySupport q n hq u).card
  j := (qarySupport q n hq v).card
  t := (qarySupport q n hq u ∩ qarySupport q n hq v).card
  p := (qaryEqualNonzeroSupport q n hq u v).card
  hp_t := by
    exact Finset.card_le_card (qaryEqualNonzeroSupport_subset_inter hq u v)
  ht_i := by
    exact Finset.card_le_card Finset.inter_subset_left
  ht_j := by
    exact Finset.card_le_card Finset.inter_subset_right
  hij := by
    let A := qarySupport q n hq u
    let B := qarySupport q n hq v
    have hcard : (A ∪ B).card <= n := by
      calc
        (A ∪ B).card <= (Finset.univ : Finset (Fin n)).card :=
          Finset.card_le_card (by intro a _; simp)
        _ = n := by simp
    have hinc : (A ∪ B).card + (A ∩ B).card = A.card + B.card :=
      Finset.card_union_add_card_inter A B
    change A.card + B.card <= n + (A ∩ B).card
    omega

theorem qaryOrbitOf_swap {q n : Nat} (hq : 0 < q) (u v : QaryWord q n) :
    qaryOrbitOf hq v u = (qaryOrbitOf hq u v).swap := by
  unfold qaryOrbitOf QaryOrbitIndex.swap
  rw [QaryOrbitIndex.mk.injEq]
  refine ⟨rfl, rfl, ?_, ?_⟩
  · exact congrArg Finset.card (Finset.inter_comm _ _)
  · exact congrArg Finset.card (qaryEqualNonzeroSupport_comm hq u v)

theorem qaryOrbitOf_i {q n : Nat} (hq : 0 < q) (u v : QaryWord q n) :
    (qaryOrbitOf hq u v).i = weight q n hq u := by
  change (qarySupport q n hq u).card = weight q n hq u
  unfold weight zeroWord qarySupport dist hammingDist
  apply congrArg Finset.card
  ext a
  simp

theorem qaryOrbitOf_j {q n : Nat} (hq : 0 < q) (u v : QaryWord q n) :
    (qaryOrbitOf hq u v).j = weight q n hq v := by
  change (qarySupport q n hq v).card = weight q n hq v
  unfold weight zeroWord qarySupport dist hammingDist
  apply congrArg Finset.card
  ext a
  simp

theorem qaryOrbitOf_t {q n : Nat} (hq : 0 < q) (u v : QaryWord q n) :
    (qaryOrbitOf hq u v).t =
      (qarySupport q n hq u ∩ qarySupport q n hq v).card := by
  rfl

theorem qaryOrbitOf_p {q n : Nat} (hq : 0 < q) (u v : QaryWord q n) :
    (qaryOrbitOf hq u v).p =
      (qaryEqualNonzeroSupport q n hq u v).card := by
  rfl

/-- Membership in q-ary support after a zero-stabilizing isometry. -/
theorem qarySupport_act_mem_iff {q n : Nat} (hq : 0 < q)
    (g : QaryIsometry q n) (hg : StabilizesZero hq g)
    (x : QaryWord q n) (i : Fin n) :
    i ∈ qarySupport q n hq (g.act x) ↔
      g.coord.symm i ∈ qarySupport q n hq x := by
  simp only [qarySupport, Finset.mem_filter, Finset.mem_univ, true_and]
  exact QaryIsometry.act_ne_zero_iff_of_stabilizesZero hq g hg x i

/-- A zero-stabilizing isometry preserves q-ary support size. -/
theorem qarySupport_act_card {q n : Nat} (hq : 0 < q)
    (g : QaryIsometry q n) (hg : StabilizesZero hq g)
    (x : QaryWord q n) :
    (qarySupport q n hq (g.act x)).card = (qarySupport q n hq x).card := by
  apply Finset.card_bij (fun i _ => g.coord.symm i)
  · intro i hi
    exact (qarySupport_act_mem_iff hq g hg x i).mp hi
  · intro i _ j _ hij
    exact g.coord.symm.injective hij
  · intro j hj
    refine ⟨g.coord j, ?_, ?_⟩
    · exact (qarySupport_act_mem_iff hq g hg x (g.coord j)).mpr (by simpa using hj)
    · simp

/-- A zero-stabilizing isometry preserves common q-ary support size. -/
theorem qarySupport_inter_act_card {q n : Nat} (hq : 0 < q)
    (g : QaryIsometry q n) (hg : StabilizesZero hq g)
    (u v : QaryWord q n) :
    (qarySupport q n hq (g.act u) ∩ qarySupport q n hq (g.act v)).card =
      (qarySupport q n hq u ∩ qarySupport q n hq v).card := by
  apply Finset.card_bij (fun i _ => g.coord.symm i)
  · intro i hi
    rw [Finset.mem_inter] at hi ⊢
    exact ⟨(qarySupport_act_mem_iff hq g hg u i).mp hi.1,
      (qarySupport_act_mem_iff hq g hg v i).mp hi.2⟩
  · intro i _ j _ hij
    exact g.coord.symm.injective hij
  · intro j hj
    refine ⟨g.coord j, ?_, ?_⟩
    · rw [Finset.mem_inter] at hj ⊢
      exact ⟨(qarySupport_act_mem_iff hq g hg u (g.coord j)).mpr (by simpa using hj.1),
        (qarySupport_act_mem_iff hq g hg v (g.coord j)).mpr (by simpa using hj.2)⟩
    · simp

/-- Membership in equal-nonzero support after a zero-stabilizing isometry. -/
theorem qaryEqualNonzeroSupport_act_mem_iff {q n : Nat} (hq : 0 < q)
    (g : QaryIsometry q n) (hg : StabilizesZero hq g)
    (u v : QaryWord q n) (i : Fin n) :
    i ∈ qaryEqualNonzeroSupport q n hq (g.act u) (g.act v) ↔
      g.coord.symm i ∈ qaryEqualNonzeroSupport q n hq u v := by
  simp only [qaryEqualNonzeroSupport, Finset.mem_filter, Finset.mem_univ, true_and]
  constructor
  · rintro ⟨heq, hne⟩
    constructor
    · exact (g.sym i).injective (by simpa [QaryIsometry.act] using heq)
    · exact (QaryIsometry.act_ne_zero_iff_of_stabilizesZero hq g hg u i).mp hne
  · rintro ⟨heq, hne⟩
    constructor
    · simp [QaryIsometry.act, heq]
    · exact (QaryIsometry.act_ne_zero_iff_of_stabilizesZero hq g hg u i).mpr hne

/-- A zero-stabilizing isometry preserves equal-nonzero support size. -/
theorem qaryEqualNonzeroSupport_act_card {q n : Nat} (hq : 0 < q)
    (g : QaryIsometry q n) (hg : StabilizesZero hq g)
    (u v : QaryWord q n) :
    (qaryEqualNonzeroSupport q n hq (g.act u) (g.act v)).card =
      (qaryEqualNonzeroSupport q n hq u v).card := by
  apply Finset.card_bij (fun i _ => g.coord.symm i)
  · intro i hi
    exact (qaryEqualNonzeroSupport_act_mem_iff hq g hg u v i).mp hi
  · intro i _ j _ hij
    exact g.coord.symm.injective hij
  · intro j hj
    refine ⟨g.coord j, ?_, ?_⟩
    · exact (qaryEqualNonzeroSupport_act_mem_iff hq g hg u v (g.coord j)).mpr
        (by simpa using hj)
    · simp

/-- Q-ary orbit indices are invariant under zero-stabilizing isometries. -/
theorem qaryOrbitOf_act_of_stabilizesZero {q n : Nat} (hq : 0 < q)
    (g : QaryIsometry q n) (hg : StabilizesZero hq g)
    (u v : QaryWord q n) :
    qaryOrbitOf hq (g.act u) (g.act v) = qaryOrbitOf hq u v := by
  unfold qaryOrbitOf
  rw [QaryOrbitIndex.mk.injEq]
  exact ⟨qarySupport_act_card hq g hg u, qarySupport_act_card hq g hg v,
    qarySupport_inter_act_card hq g hg u v,
    qaryEqualNonzeroSupport_act_card hq g hg u v⟩

theorem qary_dist_from_orbit {q n : Nat} (hq : 0 < q) (u v : QaryWord q n) :
    dist u v = (qaryOrbitOf hq u v).i + (qaryOrbitOf hq u v).j -
      (qaryOrbitOf hq u v).t - (qaryOrbitOf hq u v).p := by
  let A := qarySupport q n hq u
  let B := qarySupport q n hq v
  let P := qaryEqualNonzeroSupport q n hq u v
  let T := A ∩ B
  have hPTsub : P ⊆ T := by
    intro a ha
    change a ∈ A ∩ B
    simp only [P, A, B, qaryEqualNonzeroSupport, qarySupport, Finset.mem_filter,
      Finset.mem_univ, true_and, Finset.mem_inter] at ha ⊢
    exact ⟨ha.2, by simpa [← ha.1] using ha.2⟩
  have hfilter :
      (Finset.univ.filter (fun a : Fin n => u a ≠ v a)) =
        ((A \ B) ∪ (B \ A)) ∪ (T \ P) :=
    qary_dist_filter_eq hq u v
  have hdisjAB : Disjoint (A \ B) (B \ A) := by
    rw [Finset.disjoint_left]
    intro a ha hb
    exact (Finset.mem_sdiff.mp ha).2 (Finset.mem_sdiff.mp hb).1
  have hdisj : Disjoint ((A \ B) ∪ (B \ A)) (T \ P) := by
    rw [Finset.disjoint_left]
    intro a ha hb
    have hbT : a ∈ T := (Finset.mem_sdiff.mp hb).1
    have hbA : a ∈ A := (Finset.mem_inter.mp hbT).1
    have hbB : a ∈ B := (Finset.mem_inter.mp hbT).2
    rcases Finset.mem_union.mp ha with ha | ha
    · exact (Finset.mem_sdiff.mp ha).2 hbB
    · exact (Finset.mem_sdiff.mp ha).2 hbA
  unfold dist hammingDist
  rw [hfilter, Finset.card_union_of_disjoint hdisj, Finset.card_union_of_disjoint hdisjAB]
  have hinter : (B ∩ A).card = T.card := by
    change (B ∩ A).card = (A ∩ B).card
    rw [Finset.inter_comm]
  have hTP : (T \ P).card = T.card - P.card := Finset.card_sdiff_of_subset hPTsub
  rw [hTP, Finset.card_sdiff, Finset.card_sdiff, hinter]
  change A.card - T.card + (B.card - T.card) + (T.card - P.card) =
    A.card + B.card - T.card - P.card
  have hTA : T.card <= A.card := Finset.card_le_card Finset.inter_subset_left
  have hTB : T.card <= B.card := Finset.card_le_card Finset.inter_subset_right
  have hPT : P.card <= T.card := Finset.card_le_card hPTsub
  omega

/-- Nonbinary orbit matrix `M^{t,p}_{i,j}`. -/
def qaryOrbitMatrix {q n : Nat} (hq : 0 < q) (idx : QaryOrbitIndex q n) :
    Matrix (QaryWord q n) (QaryWord q n) Rat :=
  fun u v => if qaryOrbitOf hq u v = idx then 1 else 0

/-- Q-ary orbit matrices are invariant under zero-stabilizing isometries. -/
theorem qaryOrbitMatrix_act_of_stabilizesZero {q n : Nat} (hq : 0 < q)
    (g : QaryIsometry q n) (hg : StabilizesZero hq g)
    (idx : QaryOrbitIndex q n) (u v : QaryWord q n) :
    qaryOrbitMatrix hq idx (g.act u) (g.act v) = qaryOrbitMatrix hq idx u v := by
  simp [qaryOrbitMatrix, qaryOrbitOf_act_of_stabilizesZero hq g hg u v]

theorem qaryOrbitMatrix_transpose {q n : Nat} (hq : 0 < q)
    (idx : QaryOrbitIndex q n) :
    (qaryOrbitMatrix hq idx).transpose = qaryOrbitMatrix hq idx.swap := by
  ext u v
  have hswap := qaryOrbitOf_swap hq u v
  have hiff : ((qaryOrbitOf hq u v).swap = idx) ↔ qaryOrbitOf hq u v = idx.swap := by
    constructor
    · intro h
      have hh := congrArg QaryOrbitIndex.swap h
      simpa [QaryOrbitIndex.swap_swap] using hh
    · intro h
      rw [h, QaryOrbitIndex.swap_swap]
  simp [qaryOrbitMatrix, Matrix.transpose_apply, hswap, hiff]

end GijswijtPolak2025
end SDP
end CoveringCodes
