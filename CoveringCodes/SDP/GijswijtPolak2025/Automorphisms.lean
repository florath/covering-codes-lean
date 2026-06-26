import CoveringCodes.SDP.GijswijtPolak2025.Basic

/-!
# Q-ary Hamming-space automorphisms
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

/-- Coordinate permutations together with coordinate-wise alphabet permutations. -/
structure QaryIsometry (q n : Nat) where
  coord : Equiv.Perm (Fin n)
  sym : Fin n -> Equiv.Perm (Fin q)

/-- Action of a q-ary Hamming-space isometry on words. -/
def QaryIsometry.act {q n : Nat} (g : QaryIsometry q n) :
    QaryWord q n -> QaryWord q n :=
  fun x i => g.sym i (x (g.coord.symm i))

/-- Q-ary Hamming-space isometries preserve Hamming distance. -/
theorem act_dist_eq {q n : Nat} (g : QaryIsometry q n) (x y : QaryWord q n) :
    dist (g.act x) (g.act y) = dist x y := by
  unfold dist hammingDist QaryIsometry.act
  apply Finset.card_bij (fun i _ => g.coord.symm i)
  · intro i hi
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
    intro hxy
    apply hi
    rw [hxy]
  · intro i _ j _ hij
    exact g.coord.symm.injective hij
  · intro j hj
    refine ⟨g.coord j, ?_, ?_⟩
    · simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hj ⊢
      intro hmap
      apply hj
      exact (g.sym (g.coord j)).injective (by simpa using hmap)
    · simp

/-- Predicate for isometries that stabilize the all-zero word. -/
def StabilizesZero {q n : Nat} (hq : 0 < q) (g : QaryIsometry q n) : Prop :=
  g.act (zeroWord q n hq) = zeroWord q n hq

namespace QaryIsometry

/-- Coordinate-wise form of zero stabilization. -/
theorem sym_zero_of_stabilizesZero {q n : Nat} (hq : 0 < q)
    (g : QaryIsometry q n) (hg : StabilizesZero hq g) (i : Fin n) :
    g.sym i ⟨0, hq⟩ = ⟨0, hq⟩ := by
  have h := congrFun hg i
  simpa [QaryIsometry.act, zeroWord] using h

/-- A zero-stabilizing isometry preserves whether a coordinate is zero. -/
theorem act_eq_zero_iff_of_stabilizesZero {q n : Nat} (hq : 0 < q)
    (g : QaryIsometry q n) (hg : StabilizesZero hq g)
    (x : QaryWord q n) (i : Fin n) :
    g.act x i = ⟨0, hq⟩ ↔ x (g.coord.symm i) = ⟨0, hq⟩ := by
  constructor
  · intro h
    exact (g.sym i).injective (by
      have h' : g.sym i (x (g.coord.symm i)) = ⟨0, hq⟩ := by
        simpa [QaryIsometry.act] using h
      rw [h', sym_zero_of_stabilizesZero hq g hg i])
  · intro h
    simp [QaryIsometry.act, h, sym_zero_of_stabilizesZero hq g hg i]

/-- A zero-stabilizing isometry preserves whether a coordinate is nonzero. -/
theorem act_ne_zero_iff_of_stabilizesZero {q n : Nat} (hq : 0 < q)
    (g : QaryIsometry q n) (hg : StabilizesZero hq g)
    (x : QaryWord q n) (i : Fin n) :
    g.act x i ≠ ⟨0, hq⟩ ↔ x (g.coord.symm i) ≠ ⟨0, hq⟩ := by
  exact not_congr (act_eq_zero_iff_of_stabilizesZero hq g hg x i)

/-- A zero-stabilizing isometry preserves Hamming weight. -/
theorem weight_act_eq {q n : Nat} (hq : 0 < q)
    (g : QaryIsometry q n) (hg : StabilizesZero hq g)
    (x : QaryWord q n) :
    weight q n hq (g.act x) = weight q n hq x := by
  unfold weight
  calc
    dist (g.act x) (zeroWord q n hq) =
        dist (g.act x) (g.act (zeroWord q n hq)) := by rw [hg]
    _ = dist x (zeroWord q n hq) := act_dist_eq g x (zeroWord q n hq)

end QaryIsometry

end GijswijtPolak2025
end SDP
end CoveringCodes
