import CoveringCodes.SDP.GijswijtPolak2025.Certificates.Dual

/-!
# Finite partition certificates for reduced SDP objectives
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

/-- Cartesian cube of a finite set, represented with the native nested product type. -/
def finsetCube {α : Type} [DecidableEq α] (C : Finset α) :
    Finset ((α × α) × α) :=
  (C.product C).product C

@[simp]
theorem mem_finsetCube {α : Type} [DecidableEq α] {C : Finset α}
    {a : (α × α) × α} :
    a ∈ finsetCube C ↔ a.1.1 ∈ C ∧ a.1.2 ∈ C ∧ a.2 ∈ C := by
  simp [finsetCube, and_assoc]

theorem card_finsetCube {α : Type} [DecidableEq α] (C : Finset α) :
    (finsetCube C).card = C.card ^ 3 := by
  simp [finsetCube, pow_three, Nat.mul_assoc]

/-- A certificate that finitely many cells partition a finite target set. -/
structure FinsetPartitionCertificate
    (ι α : Type) [Fintype ι] [DecidableEq α] (target : Finset α) where
  cell : ι -> Finset α
  subset_target : forall i, cell i ⊆ target
  exists_cell : forall a, a ∈ target -> exists i, a ∈ cell i
  unique_cell : forall a i j, a ∈ cell i -> a ∈ cell j -> i = j

namespace FinsetPartitionCertificate

theorem card_cell_eq_sum_indicator
    {ι α : Type} [Fintype ι] [DecidableEq α] {target : Finset α}
    (cert : FinsetPartitionCertificate ι α target) (i : ι) :
    (cert.cell i).card =
      target.sum (fun a => if a ∈ cert.cell i then (1 : Nat) else 0) := by
  have hfilter : target.filter (fun a => a ∈ cert.cell i) = cert.cell i := by
    ext a
    constructor
    · intro ha
      exact (Finset.mem_filter.mp ha).2
    · intro ha
      exact Finset.mem_filter.mpr ⟨cert.subset_target i ha, ha⟩
  calc
    (cert.cell i).card = (target.filter (fun a => a ∈ cert.cell i)).card := by
      rw [hfilter]
    _ = target.sum (fun a => if a ∈ cert.cell i then (1 : Nat) else 0) := by
      rw [Finset.card_eq_sum_ones, Finset.sum_filter]

theorem sum_indicator_eq_one
    {ι α : Type} [Fintype ι] [DecidableEq α] {target : Finset α}
    (cert : FinsetPartitionCertificate ι α target)
    {a : α} (ha : a ∈ target) :
    (Finset.univ.sum (fun i : ι =>
      if a ∈ cert.cell i then (1 : Nat) else 0)) = 1 := by
  rcases cert.exists_cell a ha with ⟨i0, hi0⟩
  calc
    (Finset.univ.sum (fun i : ι =>
        if a ∈ cert.cell i then (1 : Nat) else 0)) =
        (if a ∈ cert.cell i0 then (1 : Nat) else 0) := by
          refine Finset.sum_eq_single (s := (Finset.univ : Finset ι))
            (f := fun i : ι => if a ∈ cert.cell i then (1 : Nat) else 0)
            (a := i0) ?_ ?_
          · intro j _ hj
            have hnot : a ∉ cert.cell j := by
              intro hjmem
              exact hj (cert.unique_cell a j i0 hjmem hi0)
            simp [hnot]
          · intro hi0_not
            simp at hi0_not
    _ = 1 := by
          simp [hi0]

theorem sum_cell_card_eq_card
    {ι α : Type} [Fintype ι] [DecidableEq α] {target : Finset α}
    (cert : FinsetPartitionCertificate ι α target) :
    (Finset.univ.sum (fun i : ι => (cert.cell i).card)) = target.card := by
  calc
    (Finset.univ.sum (fun i : ι => (cert.cell i).card)) =
        Finset.univ.sum (fun i : ι =>
          target.sum (fun a => if a ∈ cert.cell i then (1 : Nat) else 0)) := by
          apply Finset.sum_congr rfl
          intro i _
          exact cert.card_cell_eq_sum_indicator i
    _ = target.sum (fun a =>
          Finset.univ.sum (fun i : ι =>
            if a ∈ cert.cell i then (1 : Nat) else 0)) := by
          rw [Finset.sum_comm]
    _ = target.sum (fun _a => 1) := by
          apply Finset.sum_congr rfl
          intro a ha
          exact cert.sum_indicator_eq_one ha
    _ = target.card := by
          rw [Finset.card_eq_sum_ones]

end FinsetPartitionCertificate

/-- Partition a target set by the fibers of a classifier. -/
def classifierPartitionCertificate
    (ι α : Type) [Fintype ι] [DecidableEq ι] [DecidableEq α]
    (target : Finset α) (classOf : α -> ι) :
    FinsetPartitionCertificate ι α target where
  cell i := target.filter (fun a => classOf a = i)
  subset_target := by
    intro i a ha
    exact (Finset.mem_filter.mp ha).1
  exists_cell := by
    intro a ha
    exact ⟨classOf a, Finset.mem_filter.mpr ⟨ha, rfl⟩⟩
  unique_cell := by
    intro a i j hi hj
    exact (Finset.mem_filter.mp hi).2.symm.trans (Finset.mem_filter.mp hj).2

/--
Certificate that a weighted reduced objective is exactly the cardinality of a
finite target set.
-/
structure WeightedObjectivePartitionCertificate
    (ι α : Type) [Fintype ι] [DecidableEq α]
    (target : Finset α) (scale : Rat) (weight x : ι -> Rat) where
  partition : FinsetPartitionCertificate ι α target
  cell_value :
    forall i : ι, scale * (weight i * x i) = ((partition.cell i).card : Rat)

namespace WeightedObjectivePartitionCertificate

/-- Build a weighted objective partition certificate from a classifier and cell-card equations. -/
def ofClassifier
    (ι α : Type) [Fintype ι] [DecidableEq ι] [DecidableEq α]
    (target : Finset α) (classOf : α -> ι)
    (scale : Rat) (weight x : ι -> Rat)
    (cell_value : forall i : ι,
      scale * (weight i * x i) =
        (((target.filter (fun a => classOf a = i)).card) : Rat)) :
    WeightedObjectivePartitionCertificate ι α target scale weight x where
  partition := classifierPartitionCertificate ι α target classOf
  cell_value := cell_value

theorem objective_eq_card
    {ι α : Type} [Fintype ι] [DecidableEq α]
    {target : Finset α} {scale : Rat} {weight x : ι -> Rat}
    (cert : WeightedObjectivePartitionCertificate ι α target scale weight x) :
    scale * Finset.univ.sum (fun i : ι => weight i * x i) =
      (target.card : Rat) := by
  calc
    scale * Finset.univ.sum (fun i : ι => weight i * x i) =
        Finset.univ.sum (fun i : ι => scale * (weight i * x i)) := by
          rw [Finset.mul_sum]
    _ = Finset.univ.sum (fun i : ι => ((cert.partition.cell i).card : Rat)) := by
          apply Finset.sum_congr rfl
          intro i _
          exact cert.cell_value i
    _ = (target.card : Rat) := by
          exact_mod_cast cert.partition.sum_cell_card_eq_card

theorem objective_le_card
    {ι α : Type} [Fintype ι] [DecidableEq α]
    {target : Finset α} {scale : Rat} {weight x : ι -> Rat}
    (cert : WeightedObjectivePartitionCertificate ι α target scale weight x) :
    scale * Finset.univ.sum (fun i : ι => weight i * x i) <=
      (target.card : Rat) := by
  rw [cert.objective_eq_card]

end WeightedObjectivePartitionCertificate

end GijswijtPolak2025
end SDP
end CoveringCodes
