import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Lower bound for `K_2(6,2)`

This module contains the finite lower-bound argument proving `K_2(6,2) >= 4`.
-/

namespace CoveringCodes
namespace Database

private abbrev f2_0 : Fin 2 := ⟨0, by decide⟩
private abbrev f2_1 : Fin 2 := ⟨1, by decide⟩

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
