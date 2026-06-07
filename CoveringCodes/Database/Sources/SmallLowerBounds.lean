import CoveringCodes.Bounds.Balls
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Small lower-bound source

This file contains local lower-bound arguments for small table-mined targets.
The external tables motivate the targets but are not used as proof objects.
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 2000000

private abbrev f2_0 : Fin 2 := ⟨0, by decide⟩
private abbrev f2_1 : Fin 2 := ⟨1, by decide⟩

-- Note: the general sparse-slice bound in `SparseSlicer.lean` gives
-- K_3(3,1) >= 4 but not >= 5.  This overlap-counting argument is needed
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

private theorem card_biUnion_le_sum_card {α β : Type} [DecidableEq α] [DecidableEq β]
    (s : Finset α) (f : α → Finset β) :
    (s.biUnion f).card ≤ ∑ a ∈ s, (f a).card := by
  induction s using Finset.induction with
  | empty => simp
  | insert a s has ih =>
      rw [Finset.biUnion_insert]
      have hle := Finset.card_union_le (f a) (s.biUnion f)
      simp [has] at ih ⊢
      omega

private theorem eq_three_of_card_eq_three {α : Type} [DecidableEq α]
    (S : Finset α) (hcard : S.card = 3) :
    ∃ a b c : α, S = ({a, b, c} : Finset α) := by
  let l := S.toList
  have hlen : l.length = 3 := by
    simpa [l, Finset.length_toList] using hcard
  have hnodup : l.Nodup := by
    simpa [l] using S.nodup_toList
  have hS : S = l.toFinset := by
    ext x
    simp [l]
  revert hlen hnodup hS
  cases l with
  | nil => intro hlen; simp at hlen
  | cons a l1 =>
      cases l1 with
      | nil => intro hlen; simp at hlen
      | cons b l2 =>
          cases l2 with
          | nil => intro hlen; simp at hlen
          | cons c l3 =>
              cases l3 with
              | nil =>
                  intro _ _ hS
                  refine ⟨a, b, c, ?_⟩
                  simpa using hS
              | cons d l4 =>
                  intro hlen
                  simp at hlen

private theorem subset_three_of_card_le_three {α : Type}
    [DecidableEq α] [Inhabited α] (C : Finset α) (hcard : C.card ≤ 3) :
    ∃ a b c : α, C ⊆ ({a, b, c} : Finset α) := by
  let l := C.toList
  have hlen : l.length ≤ 3 := by
    simpa [l, Finset.length_toList] using hcard
  have hmem : ∀ x, x ∈ C → x ∈ l := by
    intro x hx
    simpa [l, Finset.mem_toList] using hx
  revert hlen hmem
  cases l with
  | nil =>
      intro _ hmem
      refine ⟨default, default, default, ?_⟩
      intro x hx
      have hxnil := hmem x hx
      simp at hxnil
  | cons a l1 =>
      cases l1 with
      | nil =>
          intro _ hmem
          refine ⟨a, a, a, ?_⟩
          intro x hx
          have hxlist := hmem x hx
          simp at hxlist ⊢
          exact hxlist
      | cons b l2 =>
          cases l2 with
          | nil =>
              intro _ hmem
              refine ⟨a, b, a, ?_⟩
              intro x hx
              have hxlist := hmem x hx
              simp at hxlist ⊢
              rcases hxlist with rfl | rfl <;> simp
          | cons c l3 =>
              cases l3 with
              | nil =>
                  intro _ hmem
                  refine ⟨a, b, c, ?_⟩
                  intro x hx
                  have hxlist := hmem x hx
                  simp at hxlist ⊢
                  rcases hxlist with rfl | rfl | rfl <;> simp
              | cons d l4 =>
                  intro hlen _
                  simp at hlen
                  omega

private def binaryWeight5 (x : QaryWord 2 5) : Nat :=
  ∑ i : Fin 5, (x i).val

private def binaryEven5 (x : QaryWord 2 5) : Bool :=
  binaryWeight5 x % 2 == 0

private def evenWords5 : Finset (QaryWord 2 5) :=
  Finset.univ.filter (fun x => binaryEven5 x = true)

private def oddWords5 : Finset (QaryWord 2 5) :=
  Finset.univ.filter (fun x => binaryEven5 x = false)

private def evenPart5 (C : Finset (QaryWord 2 5)) : Finset (QaryWord 2 5) :=
  C.filter (fun x => binaryEven5 x = true)

private def oddPart5 (C : Finset (QaryWord 2 5)) : Finset (QaryWord 2 5) :=
  C.filter (fun x => binaryEven5 x = false)

private def evenNeighbors5 (o : QaryWord 2 5) : Finset (QaryWord 2 5) :=
  evenWords5.filter (fun x => hammingDist x o ≤ 1)

private def oddNeighbors5 (e : QaryWord 2 5) : Finset (QaryWord 2 5) :=
  oddWords5.filter (fun x => hammingDist x e ≤ 1)

private def holesEven3 (o1 o2 o3 : QaryWord 2 5) : Finset (QaryWord 2 5) :=
  evenWords5 \ ((evenNeighbors5 o1 ∪ evenNeighbors5 o2) ∪ evenNeighbors5 o3)

private def oddHolesOfEvenHoles3 (o1 o2 o3 : QaryWord 2 5) : Finset (QaryWord 2 5) :=
  oddWords5.filter
    (fun y => ((holesEven3 o1 o2 o3).filter (fun e => hammingDist y e ≤ 1)).card = 0)

private theorem evenWords5_card : evenWords5.card = 16 := by
  unfold evenWords5 binaryEven5 binaryWeight5
  covering_decide

private theorem oddWords5_card : oddWords5.card = 16 := by
  unfold oddWords5 binaryEven5 binaryWeight5
  covering_decide

private theorem even_odd_part_card_sum (C : Finset (QaryWord 2 5)) :
    (evenPart5 C).card + (oddPart5 C).card = C.card := by
  simpa [evenPart5, oddPart5] using
    (Finset.card_filter_add_card_filter_not
      (s := C) (p := fun x : QaryWord 2 5 => binaryEven5 x = true))

private theorem evenNeighbors5_card_of_odd (o : QaryWord 2 5) (ho : binaryEven5 o = false) :
    (evenNeighbors5 o).card = 5 := by
  unfold evenNeighbors5 evenWords5 binaryEven5 binaryWeight5
  covering_decide +revert

private theorem oddNeighbors5_card_of_even (e : QaryWord 2 5) (he : binaryEven5 e = true) :
    (oddNeighbors5 e).card = 5 := by
  unfold oddNeighbors5 oddWords5 binaryEven5 binaryWeight5
  covering_decide +revert

private theorem even_eq_of_dist_le_one (x c : QaryWord 2 5)
    (hx : binaryEven5 x = true) (hc : binaryEven5 c = true)
    (hd : hammingDist x c ≤ 1) :
    x = c := by
  unfold binaryEven5 binaryWeight5 at hx hc
  covering_decide +revert

private theorem odd_eq_of_dist_le_one (x c : QaryWord 2 5)
    (hx : binaryEven5 x = false) (hc : binaryEven5 c = false)
    (hd : hammingDist x c ≤ 1) :
    x = c := by
  unfold binaryEven5 binaryWeight5 at hx hc
  covering_decide +revert

private theorem evenWords5_subset_cover_parts (C : Finset (QaryWord 2 5))
    (hC : CoversFinset C 1) :
    evenWords5 ⊆ evenPart5 C ∪ (oddPart5 C).biUnion evenNeighbors5 := by
  intro x hxEven
  obtain ⟨c, hcC, hdist⟩ := hC x
  rw [evenWords5, Finset.mem_filter] at hxEven
  by_cases hcEven : binaryEven5 c = true
  · have hxc : x = c := even_eq_of_dist_le_one x c hxEven.2 hcEven hdist
    rw [hxc]
    simp [evenPart5, hcC, hcEven]
  · have hcOdd : binaryEven5 c = false := by
      cases h : binaryEven5 c <;> simp [h] at hcEven ⊢
    rw [Finset.mem_union]
    right
    rw [Finset.mem_biUnion]
    refine ⟨c, ?_, ?_⟩
    · simp [oddPart5, hcC, hcOdd]
    · have hxEvenMem : x ∈ evenWords5 := by
        simpa [evenWords5] using hxEven
      simp [evenNeighbors5, hxEvenMem, hdist]

private theorem oddWords5_subset_cover_parts (C : Finset (QaryWord 2 5))
    (hC : CoversFinset C 1) :
    oddWords5 ⊆ oddPart5 C ∪ (evenPart5 C).biUnion oddNeighbors5 := by
  intro x hxOdd
  obtain ⟨c, hcC, hdist⟩ := hC x
  rw [oddWords5, Finset.mem_filter] at hxOdd
  by_cases hcOdd : binaryEven5 c = false
  · have hxc : x = c := odd_eq_of_dist_le_one x c hxOdd.2 hcOdd hdist
    rw [hxc]
    simp [oddPart5, hcC, hcOdd]
  · have hcEven : binaryEven5 c = true := by
      cases h : binaryEven5 c <;> simp [h] at hcOdd ⊢
    rw [Finset.mem_union]
    right
    rw [Finset.mem_biUnion]
    refine ⟨c, ?_, ?_⟩
    · simp [evenPart5, hcC, hcEven]
    · have hxOddMem : x ∈ oddWords5 := by
        simpa [oddWords5] using hxOdd
      simp [oddNeighbors5, hxOddMem, hdist]

private theorem even_cover_card_bound (C : Finset (QaryWord 2 5))
    (hC : CoversFinset C 1) :
    16 ≤ (evenPart5 C).card + 5 * (oddPart5 C).card := by
  have hsub := evenWords5_subset_cover_parts C hC
  have hcard_sub := Finset.card_le_card hsub
  have hunion := Finset.card_union_le (evenPart5 C) ((oddPart5 C).biUnion evenNeighbors5)
  have hbi := card_biUnion_le_sum_card (oddPart5 C) evenNeighbors5
  have hsum_bound :
      (∑ a ∈ oddPart5 C, (evenNeighbors5 a).card) = 5 * (oddPart5 C).card := by
    calc
      (∑ a ∈ oddPart5 C, (evenNeighbors5 a).card)
          = ∑ _a ∈ oddPart5 C, 5 := by
              apply Finset.sum_congr rfl
              intro a ha
              have haOdd : binaryEven5 a = false := by
                simpa [oddPart5] using (Finset.mem_filter.mp ha).2
              exact evenNeighbors5_card_of_odd a haOdd
      _ = (oddPart5 C).card * 5 := by simp
      _ = 5 * (oddPart5 C).card := by omega
  have htop : evenWords5.card = 16 := evenWords5_card
  omega

private theorem odd_cover_card_bound (C : Finset (QaryWord 2 5))
    (hC : CoversFinset C 1) :
    16 ≤ 5 * (evenPart5 C).card + (oddPart5 C).card := by
  have hsub := oddWords5_subset_cover_parts C hC
  have hcard_sub := Finset.card_le_card hsub
  have hunion := Finset.card_union_le (oddPart5 C) ((evenPart5 C).biUnion oddNeighbors5)
  have hbi := card_biUnion_le_sum_card (evenPart5 C) oddNeighbors5
  have hsum_bound :
      (∑ a ∈ evenPart5 C, (oddNeighbors5 a).card) = 5 * (evenPart5 C).card := by
    calc
      (∑ a ∈ evenPart5 C, (oddNeighbors5 a).card)
          = ∑ _a ∈ evenPart5 C, 5 := by
              apply Finset.sum_congr rfl
              intro a ha
              have haEven : binaryEven5 a = true := by
                simpa [evenPart5] using (Finset.mem_filter.mp ha).2
              exact oddNeighbors5_card_of_even a haEven
      _ = (evenPart5 C).card * 5 := by simp
      _ = 5 * (evenPart5 C).card := by omega
  have htop : oddWords5.card = 16 := oddWords5_card
  omega

private theorem three_odd_has_pair_dist_le_two (o1 o2 o3 : QaryWord 2 5)
    (ho1 : binaryEven5 o1 = false) (ho2 : binaryEven5 o2 = false)
    (ho3 : binaryEven5 o3 = false) :
    hammingDist o1 o2 ≤ 2 ∨ hammingDist o1 o3 ≤ 2 ∨ hammingDist o2 o3 ≤ 2 := by
  unfold binaryEven5 binaryWeight5 at ho1 ho2 ho3
  covering_decide +revert

private theorem evenNeighbors5_inter_card_ge_two_of_odd_dist_le_two
    (o1 o2 : QaryWord 2 5) (ho1 : binaryEven5 o1 = false) (ho2 : binaryEven5 o2 = false)
    (hd : hammingDist o1 o2 ≤ 2) :
    2 ≤ (evenNeighbors5 o1 ∩ evenNeighbors5 o2).card := by
  unfold binaryEven5 binaryWeight5 at ho1 ho2
  unfold evenNeighbors5 evenWords5 binaryEven5 binaryWeight5
  covering_decide +revert

private theorem three_even_neighbors_union_card_le_13_of_first_pair
    (o1 o2 o3 : QaryWord 2 5) (ho1 : binaryEven5 o1 = false)
    (ho2 : binaryEven5 o2 = false) (ho3 : binaryEven5 o3 = false)
    (hd : hammingDist o1 o2 ≤ 2) :
    ((evenNeighbors5 o1 ∪ evenNeighbors5 o2) ∪ evenNeighbors5 o3).card ≤ 13 := by
  let A := evenNeighbors5 o1
  let B := evenNeighbors5 o2
  let C := evenNeighbors5 o3
  have hA : A.card = 5 := by simpa [A] using evenNeighbors5_card_of_odd o1 ho1
  have hB : B.card = 5 := by simpa [B] using evenNeighbors5_card_of_odd o2 ho2
  have hC : C.card = 5 := by simpa [C] using evenNeighbors5_card_of_odd o3 ho3
  have hABint : 2 ≤ (A ∩ B).card := by
    simpa [A, B] using evenNeighbors5_inter_card_ge_two_of_odd_dist_le_two o1 o2 ho1 ho2 hd
  have hAB : (A ∪ B).card ≤ 8 := by
    rw [Finset.card_union]
    omega
  have hABC : ((A ∪ B) ∪ C).card ≤ 13 := by
    have hle := Finset.card_union_le (A ∪ B) C
    omega
  simpa [A, B, C] using hABC

private theorem three_odd_even_neighbors_union_card_le_13
    (o1 o2 o3 : QaryWord 2 5) (ho1 : binaryEven5 o1 = false)
    (ho2 : binaryEven5 o2 = false) (ho3 : binaryEven5 o3 = false) :
    ((evenNeighbors5 o1 ∪ evenNeighbors5 o2) ∪ evenNeighbors5 o3).card ≤ 13 := by
  have hdist := three_odd_has_pair_dist_le_two o1 o2 o3 ho1 ho2 ho3
  rcases hdist with h12 | h13 | h23
  · exact three_even_neighbors_union_card_le_13_of_first_pair o1 o2 o3 ho1 ho2 ho3 h12
  · simpa [Finset.union_assoc, Finset.union_comm, Finset.union_left_comm] using
      three_even_neighbors_union_card_le_13_of_first_pair o1 o3 o2 ho1 ho3 ho2 h13
  · simpa [Finset.union_assoc, Finset.union_comm, Finset.union_left_comm] using
      three_even_neighbors_union_card_le_13_of_first_pair o2 o3 o1 ho2 ho3 ho1 h23

private theorem holesEven3_card_ge_three (o1 o2 o3 : QaryWord 2 5)
    (ho1 : binaryEven5 o1 = false) (ho2 : binaryEven5 o2 = false)
    (ho3 : binaryEven5 o3 = false) :
    3 ≤ (holesEven3 o1 o2 o3).card := by
  let U := (evenNeighbors5 o1 ∪ evenNeighbors5 o2) ∪ evenNeighbors5 o3
  have hUsub : U ⊆ evenWords5 := by
    intro x hx
    simp [U, evenNeighbors5] at hx
    tauto
  have hUcard : U.card ≤ 13 := by
    simpa [U] using three_odd_even_neighbors_union_card_le_13 o1 o2 o3 ho1 ho2 ho3
  have hcard : (holesEven3 o1 o2 o3).card = evenWords5.card - U.card := by
    rw [holesEven3]
    exact Finset.card_sdiff_of_subset hUsub
  have heven : evenWords5.card = 16 := evenWords5_card
  omega

private theorem odd_holes_of_even_holes3_card_ge_four_of_three_holes
    (o1 o2 o3 : QaryWord 2 5) (ho1 : binaryEven5 o1 = false)
    (ho2 : binaryEven5 o2 = false) (ho3 : binaryEven5 o3 = false)
    (hH : (holesEven3 o1 o2 o3).card = 3) :
    4 ≤ (oddHolesOfEvenHoles3 o1 o2 o3).card := by
  unfold holesEven3 evenNeighbors5 evenWords5 binaryEven5 binaryWeight5 at hH
  unfold binaryEven5 binaryWeight5 at ho1 ho2 ho3
  unfold oddHolesOfEvenHoles3 holesEven3 evenNeighbors5 evenWords5 oddWords5 binaryEven5 binaryWeight5
  covering_decide +revert

private theorem binary251_no_six_cover (C : Finset (QaryWord 2 5))
    (hC : CoversFinset C 1) (hcard : C.card ≤ 6) : False := by
  let E := evenPart5 C
  let O := oddPart5 C
  have hevenBound : 16 ≤ E.card + 5 * O.card := by
    simpa [E, O] using even_cover_card_bound C hC
  have hoddBound : 16 ≤ 5 * E.card + O.card := by
    simpa [E, O] using odd_cover_card_bound C hC
  have hsum : E.card + O.card = C.card := by
    simpa [E, O] using even_odd_part_card_sum C
  have hEcard : E.card = 3 := by omega
  have hOcard : O.card = 3 := by omega
  obtain ⟨o1, o2, o3, hOeq⟩ := eq_three_of_card_eq_three O hOcard
  have ho1 : binaryEven5 o1 = false := by
    have hmemO : o1 ∈ O := by rw [hOeq]; simp
    have hmem : o1 ∈ C ∧ binaryEven5 o1 = false := by simpa [O, oddPart5] using hmemO
    exact hmem.2
  have ho2 : binaryEven5 o2 = false := by
    have hmemO : o2 ∈ O := by rw [hOeq]; simp
    have hmem : o2 ∈ C ∧ binaryEven5 o2 = false := by simpa [O, oddPart5] using hmemO
    exact hmem.2
  have ho3 : binaryEven5 o3 = false := by
    have hmemO : o3 ∈ O := by rw [hOeq]; simp
    have hmem : o3 ∈ C ∧ binaryEven5 o3 = false := by simpa [O, oddPart5] using hmemO
    exact hmem.2
  let H := holesEven3 o1 o2 o3
  let U := ((evenNeighbors5 o1 ∪ evenNeighbors5 o2) ∪ evenNeighbors5 o3)
  have hOU : O.biUnion evenNeighbors5 = U := by
    simp [O, hOeq, U, Finset.union_comm, Finset.union_left_comm]
  have hHsubE : H ⊆ E := by
    intro x hxH
    have hxHs : x ∈ evenWords5 \ U := by simpa [H, holesEven3, U] using hxH
    rw [Finset.mem_sdiff] at hxHs
    have hxEven : x ∈ evenWords5 := hxHs.1
    have hxNotU : x ∉ U := hxHs.2
    have hxCover := evenWords5_subset_cover_parts C hC hxEven
    rw [Finset.mem_union] at hxCover
    rcases hxCover with hxE | hxO
    · simpa [E] using hxE
    · exfalso
      exact hxNotU (by simpa [O, hOU, U] using hxO)
  have hHge : 3 ≤ H.card := by
    simpa [H] using holesEven3_card_ge_three o1 o2 o3 ho1 ho2 ho3
  have hHle : H.card ≤ 3 := by
    have hle := Finset.card_le_card hHsubE
    omega
  have hHcard : H.card = 3 := by omega
  have hHEq : H = E := by
    exact Finset.eq_of_subset_of_card_le hHsubE (by omega)
  let J := oddHolesOfEvenHoles3 o1 o2 o3
  have hJge : 4 ≤ J.card := by
    simpa [J, H] using
      odd_holes_of_even_holes3_card_ge_four_of_three_holes o1 o2 o3 ho1 ho2 ho3 hHcard
  have hJsubO : J ⊆ O := by
    intro y hyJ
    have hyJ' : y ∈ oddHolesOfEvenHoles3 o1 o2 o3 := by simpa [J] using hyJ
    rw [oddHolesOfEvenHoles3, Finset.mem_filter] at hyJ'
    rcases hyJ' with ⟨hyOdd, hyNoRaw⟩
    have hyNo : (H.filter (fun e => hammingDist y e ≤ 1)).card = 0 := by simpa [H] using hyNoRaw
    have hyCover := oddWords5_subset_cover_parts C hC hyOdd
    rw [Finset.mem_union] at hyCover
    rcases hyCover with hyO | hyE
    · simpa [O] using hyO
    · exfalso
      rcases Finset.mem_biUnion.mp hyE with ⟨e, heE, hye⟩
      have heH : e ∈ H := by simpa [hHEq] using heE
      have hye' : y ∈ oddWords5 ∧ hammingDist y e ≤ 1 := by
        simpa [oddNeighbors5] using hye
      have hydist : hammingDist y e ≤ 1 := hye'.2
      have hnonempty : (H.filter (fun e => hammingDist y e ≤ 1)).Nonempty := by
        refine ⟨e, ?_⟩
        simp [heH, hydist]
      have hpos : 0 < (H.filter (fun e => hammingDist y e ≤ 1)).card :=
        Finset.card_pos.mpr hnonempty
      omega
  have hJle : J.card ≤ 3 := by
    have hle := Finset.card_le_card hJsubO
    omega
  omega

theorem smallLowerBinary251Lower_valid :
    QaryKLower 2 5 1 7 := by
  intro C hC
  by_contra hlt
  have hcard : C.card ≤ 6 := by omega
  exact binary251_no_six_cover C hC hcard

private def zeroWord26 : QaryWord 2 6 :=
  ![f2_0, f2_0, f2_0, f2_0, f2_0, f2_0]

private def binaryXorFin (a b : Fin 2) : Fin 2 :=
  if a = b then f2_0 else f2_1

private def binaryXor6 (x y : QaryWord 2 6) : QaryWord 2 6 :=
  fun i => binaryXorFin (x i) (y i)

private theorem binaryXorFin_eq_iff (a b z : Fin 2) :
    binaryXorFin a z = binaryXorFin b z ↔ a = b := by
  covering_decide +revert

private theorem binaryXorFin_cancel_right (a z : Fin 2) :
    binaryXorFin (binaryXorFin a z) z = a := by
  covering_decide +revert

private theorem binaryXor6_self (x : QaryWord 2 6) :
    binaryXor6 x x = zeroWord26 := by
  funext i
  fin_cases i <;> simp [binaryXor6, binaryXorFin, zeroWord26]

private theorem binaryXor6_cancel_right (x z : QaryWord 2 6) :
    binaryXor6 (binaryXor6 x z) z = x := by
  funext i
  simp [binaryXor6, binaryXorFin_cancel_right]

private theorem hammingDist_binaryXor6_right (x y z : QaryWord 2 6) :
    hammingDist (binaryXor6 x z) (binaryXor6 y z) = hammingDist x y := by
  unfold hammingDist
  congr 1
  ext i
  simp [binaryXor6, binaryXorFin_eq_iff]

set_option maxHeartbeats 5000000 in
set_option maxRecDepth 10000 in
private theorem binary262_zero_two_centers_have_hole (u v : QaryWord 2 6) :
    ∃ x : QaryWord 2 6,
      2 < hammingDist x zeroWord26 ∧ 2 < hammingDist x u ∧ 2 < hammingDist x v := by
  covering_decide +revert

private theorem binary262_no_three_tuple_cover (a b c : QaryWord 2 6) :
    ¬ CoversFinset ({a, b, c} : Finset (QaryWord 2 6)) 2 := by
  intro hcover
  let u := binaryXor6 b a
  let v := binaryXor6 c a
  obtain ⟨y, hy0, hyu, hyv⟩ := binary262_zero_two_centers_have_hole u v
  let x := binaryXor6 y a
  obtain ⟨center, hcenter, hdist⟩ := hcover x
  simp at hcenter
  rcases hcenter with hca | hcb | hcc
  · have htmp : hammingDist (binaryXor6 x a) (binaryXor6 center a) ≤ 2 := by
      simpa [hammingDist_binaryXor6_right] using hdist
    have hcenterXor : binaryXor6 center a = zeroWord26 := by
      rw [hca]
      exact binaryXor6_self a
    have hdist' : hammingDist y zeroWord26 ≤ 2 := by
      simpa [x, binaryXor6_cancel_right, hcenterXor] using htmp
    omega
  · have htmp : hammingDist (binaryXor6 x a) (binaryXor6 center a) ≤ 2 := by
      simpa [hammingDist_binaryXor6_right] using hdist
    have hcenterXor : binaryXor6 center a = u := by
      rw [hcb]
    have hdist' : hammingDist y u ≤ 2 := by
      simpa [x, binaryXor6_cancel_right, hcenterXor] using htmp
    omega
  · have htmp : hammingDist (binaryXor6 x a) (binaryXor6 center a) ≤ 2 := by
      simpa [hammingDist_binaryXor6_right] using hdist
    have hcenterXor : binaryXor6 center a = v := by
      rw [hcc]
    have hdist' : hammingDist y v ≤ 2 := by
      simpa [x, binaryXor6_cancel_right, hcenterXor] using htmp
    omega

theorem smallLowerBinary262Lower_valid :
    QaryKLower 2 6 2 4 := by
  intro C hC
  by_contra hlt
  have hcard : C.card ≤ 3 := by omega
  obtain ⟨a, b, c, hsub⟩ := subset_three_of_card_le_three C hcard
  have hcover : CoversFinset ({a, b, c} : Finset (QaryWord 2 6)) 2 := by
    intro x
    obtain ⟨center, hc, hd⟩ := hC x
    exact ⟨center, hsub hc, hd⟩
  exact binary262_no_three_tuple_cover a b c hcover

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

def smallLowerBinary251LowerName : String :=
  "lean_small_lower_bounds"

def smallLowerBinary251Lower (q n r : Nat) : Nat :=
  if q = 2 ∧ n = 5 ∧ r = 1 then 7 else zeroLower q n r

theorem smallLowerBinary251Lower_source_valid (q n r : Nat) :
    QaryKLower q n r (smallLowerBinary251Lower q n r) := by
  by_cases h : q = 2 ∧ n = 5 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallLowerBinary251Lower] using smallLowerBinary251Lower_valid
  · simpa [smallLowerBinary251Lower, h] using zeroLower_valid q n r

def smallLowerBinary251LowerSource : LowerBoundSource where
  value := smallLowerBinary251Lower
  trace := fun q n r =>
    .primitive smallLowerBinary251LowerName
      (smallLowerBinary251Lower_source_valid q n r)

def smallLowerBinary262LowerName : String :=
  "lean_small_lower_bounds"

def smallLowerBinary262Lower (q n r : Nat) : Nat :=
  if q = 2 ∧ n = 6 ∧ r = 2 then 4 else zeroLower q n r

theorem smallLowerBinary262Lower_source_valid (q n r : Nat) :
    QaryKLower q n r (smallLowerBinary262Lower q n r) := by
  by_cases h : q = 2 ∧ n = 6 ∧ r = 2
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [smallLowerBinary262Lower] using smallLowerBinary262Lower_valid
  · simpa [smallLowerBinary262Lower, h] using zeroLower_valid q n r

def smallLowerBinary262LowerSource : LowerBoundSource where
  value := smallLowerBinary262Lower
  trace := fun q n r =>
    .primitive smallLowerBinary262LowerName
      (smallLowerBinary262Lower_source_valid q n r)

end Database
end CoveringCodes
