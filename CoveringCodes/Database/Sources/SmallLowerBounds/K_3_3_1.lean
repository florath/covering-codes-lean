import CoveringCodes.Bounds.Balls
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Lower bound for `K_3(3,1)`

This module contains the overlap-counting lower-bound argument proving
`K_3(3,1) >= 5`.
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 2000000

-- Note: the general sparse-slice bound in `SparseSlicer.lean` gives
-- K_3(3,1) >= 4 but not >= 5. This overlap-counting argument is needed
-- for the extra unit; the two lower-bound arguments are complementary.
private theorem subset_four_of_card_le_four {α : Type}
    [DecidableEq α] [Inhabited α] (C : Finset α) (hcard : C.card ≤ 4) :
    ∃ a b c d : α, C ⊆ ({a, b, c, d} : Finset α) := by
  let l := C.toList
  have hlen : l.length ≤ 4 := by
    simpa [l, Finset.length_toList] using hcard
  have hmem : ∀ x, x ∈ C → x ∈ l := by
    intro x hx
    simpa [l, Finset.mem_toList] using hx
  revert hlen hmem
  cases l with
  | nil =>
      intro _ hmem
      refine ⟨default, default, default, default, ?_⟩
      intro x hx
      have hxnil := hmem x hx
      simp at hxnil
  | cons a l1 =>
      cases l1 with
      | nil =>
          intro _ hmem
          refine ⟨a, a, a, a, ?_⟩
          intro x hx
          have hxlist := hmem x hx
          simp at hxlist ⊢
          exact hxlist
      | cons b l2 =>
          cases l2 with
          | nil =>
              intro _ hmem
              refine ⟨a, b, a, a, ?_⟩
              intro x hx
              have hxlist := hmem x hx
              simp at hxlist ⊢
              rcases hxlist with rfl | rfl <;> simp
          | cons c l3 =>
              cases l3 with
              | nil =>
                  intro _ hmem
                  refine ⟨a, b, c, a, ?_⟩
                  intro x hx
                  have hxlist := hmem x hx
                  simp at hxlist ⊢
                  rcases hxlist with rfl | rfl | rfl <;> simp
              | cons d l4 =>
                  cases l4 with
                  | nil =>
                      intro _ hmem
                      refine ⟨a, b, c, d, ?_⟩
                      intro x hx
                      have hxlist := hmem x hx
                      simp at hxlist ⊢
                      exact hxlist
                  | cons e l5 =>
                      intro hlen _
                      simp at hlen
                      omega

private theorem among_four_fin3_eq (x1 x2 x3 x4 : Fin 3) :
    x1 = x2 ∨ x1 = x3 ∨ x1 = x4 ∨ x2 = x3 ∨ x2 = x4 ∨ x3 = x4 := by
  covering_decide +revert

private theorem ball_inter_card_ge_two_of_coord0_eq
    (u v : QaryWord 3 3) (h : u 0 = v 0) :
    2 ≤ ((ballFinset u 1) ∩ (ballFinset v 1)).card := by
  unfold ballFinset
  covering_decide +revert

private theorem ball_card_331 (u : QaryWord 3 3) :
    (ballFinset u 1).card = 7 := by
  rw [qaryBallVolume_eq_card]
  norm_num [qaryBallVolume, Finset.sum_range_succ]

private theorem four_balls_card_le_26_of_ab_coord0_eq
    (a b c d : QaryWord 3 3) (hab : a 0 = b 0) :
    (((ballFinset a 1 ∪ ballFinset b 1) ∪ ballFinset c 1) ∪ ballFinset d 1).card ≤ 26 := by
  let A := ballFinset a 1
  let B := ballFinset b 1
  let C := ballFinset c 1
  let D := ballFinset d 1
  have hA : A.card = 7 := ball_card_331 a
  have hB : B.card = 7 := ball_card_331 b
  have hC : C.card = 7 := ball_card_331 c
  have hD : D.card = 7 := ball_card_331 d
  have hABint : 2 ≤ (A ∩ B).card := by
    simpa [A, B] using ball_inter_card_ge_two_of_coord0_eq a b hab
  have hAB : (A ∪ B).card ≤ 12 := by
    rw [Finset.card_union]
    omega
  have hABC : ((A ∪ B) ∪ C).card ≤ 19 := by
    have hle := Finset.card_union_le (A ∪ B) C
    omega
  have hABCD : (((A ∪ B) ∪ C) ∪ D).card ≤ 26 := by
    have hle := Finset.card_union_le ((A ∪ B) ∪ C) D
    omega
  simpa [A, B, C, D] using hABCD

private theorem four_balls_card_le_26_of_pair_coord0_eq
    (a b c d : QaryWord 3 3)
    (hpair : a 0 = b 0 ∨ a 0 = c 0 ∨ a 0 = d 0 ∨ b 0 = c 0 ∨ b 0 = d 0 ∨ c 0 = d 0) :
    (((ballFinset a 1 ∪ ballFinset b 1) ∪ ballFinset c 1) ∪ ballFinset d 1).card ≤ 26 := by
  rcases hpair with hab | hac | had | hbc | hbd | hcd
  · exact four_balls_card_le_26_of_ab_coord0_eq a b c d hab
  · simpa [Finset.union_assoc, Finset.union_comm, Finset.union_left_comm] using
      four_balls_card_le_26_of_ab_coord0_eq a c b d hac
  · simpa [Finset.union_assoc, Finset.union_comm, Finset.union_left_comm] using
      four_balls_card_le_26_of_ab_coord0_eq a d b c had
  · simpa [Finset.union_assoc, Finset.union_comm, Finset.union_left_comm] using
      four_balls_card_le_26_of_ab_coord0_eq b c a d hbc
  · simpa [Finset.union_assoc, Finset.union_comm, Finset.union_left_comm] using
      four_balls_card_le_26_of_ab_coord0_eq b d a c hbd
  · simpa [Finset.union_assoc, Finset.union_comm, Finset.union_left_comm] using
      four_balls_card_le_26_of_ab_coord0_eq c d a b hcd

private theorem four_cover_univ_subset_four_balls
    (a b c d : QaryWord 3 3)
    (hcover : CoversFinset ({a, b, c, d} : Finset (QaryWord 3 3)) 1) :
    (Finset.univ : Finset (QaryWord 3 3)) ⊆
      (((ballFinset a 1 ∪ ballFinset b 1) ∪ ballFinset c 1) ∪ ballFinset d 1) := by
  intro x _
  obtain ⟨center, hcenter, hdist⟩ := hcover x
  simp at hcenter
  rcases hcenter with rfl | rfl | rfl | rfl
  · simp [mem_ballFinset, hdist]
  · simp [mem_ballFinset, hdist]
  · simp [mem_ballFinset, hdist]
  · simp [mem_ballFinset, hdist]

private theorem ternary331_no_four_tuple_cover
    (a b c d : QaryWord 3 3) :
    ¬ CoversFinset ({a, b, c, d} : Finset (QaryWord 3 3)) 1 := by
  intro hcover
  let U := (((ballFinset a 1 ∪ ballFinset b 1) ∪ ballFinset c 1) ∪ ballFinset d 1)
  have hsubset : (Finset.univ : Finset (QaryWord 3 3)) ⊆ U := by
    simpa [U] using four_cover_univ_subset_four_balls a b c d hcover
  have hcard_univ : (Finset.univ : Finset (QaryWord 3 3)).card = 27 := by
    rw [Finset.card_univ, qaryWord_card]
    norm_num
  have hcard_lower : 27 ≤ U.card := by
    have hle := Finset.card_le_card hsubset
    omega
  have hpair := among_four_fin3_eq (a 0) (b 0) (c 0) (d 0)
  have hcard_upper : U.card ≤ 26 := by
    simpa [U] using four_balls_card_le_26_of_pair_coord0_eq a b c d hpair
  omega

theorem smallLowerTernary331Lower_valid :
    QaryKLower 3 3 1 5 := by
  intro C hC
  by_contra hlt
  have hcard : C.card ≤ 4 := by omega
  obtain ⟨a, b, c, d, hsub⟩ := subset_four_of_card_le_four C hcard
  have hcover : CoversFinset ({a, b, c, d} : Finset (QaryWord 3 3)) 1 := by
    intro x
    obtain ⟨c, hc, hd⟩ := hC x
    exact ⟨c, hsub hc, hd⟩
  exact ternary331_no_four_tuple_cover a b c d hcover

def smallLowerTernary331LowerName : String :=
  "lean_small_lower_bounds"

def smallLowerTernary331Lower (q n r : Nat) : Nat :=
  if q = 3 ∧ n = 3 ∧ r = 1 then 5 else zeroLower q n r

theorem smallLowerTernary331Lower_source_valid (q n r : Nat) :
    QaryKLower q n r (smallLowerTernary331Lower q n r) := by
  by_cases h : q = 3 ∧ n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallLowerTernary331Lower] using smallLowerTernary331Lower_valid
  · simpa [smallLowerTernary331Lower, h] using zeroLower_valid q n r

def smallLowerTernary331LowerSource : LowerBoundSource where
  value := smallLowerTernary331Lower
  trace := fun q n r =>
    .primitive smallLowerTernary331LowerName
      (smallLowerTernary331Lower_source_valid q n r)

end Database
end CoveringCodes
