import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Data.Finset.Card

/-!
# Finite fiber-counting helpers
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

theorem finset_card_le_card_mul_of_fiber_le
    {α β : Type} [DecidableEq β]
    (s : Finset α) (t : Finset β) (f : α -> β) (m : Nat)
    (hmap : forall a, a ∈ s -> f a ∈ t)
    (hfiber : forall b, b ∈ t -> (s.filter (fun a => f a = b)).card <= m) :
    s.card <= t.card * m := by
  have hmaps : (s : Set α).MapsTo f (t : Set β) := by
    intro a ha
    exact hmap a ha
  calc
    s.card = (∑ b ∈ t, (s.filter (fun a => f a = b)).card) := by
      exact Finset.card_eq_sum_card_fiberwise hmaps
    _ ≤ (∑ _b ∈ t, m) := by
      exact Finset.sum_le_sum (fun b hb => hfiber b hb)
    _ = t.card * m := by
      rw [Finset.sum_const_nat]
      intro b _
      rfl

theorem finset_card_eq_card_mul_of_fiber_eq
    {α β : Type} [DecidableEq β]
    (s : Finset α) (t : Finset β) (f : α -> β) (m : Nat)
    (hmap : forall a, a ∈ s -> f a ∈ t)
    (hfiber : forall b, b ∈ t -> (s.filter (fun a => f a = b)).card = m) :
    s.card = t.card * m := by
  have hmaps : (s : Set α).MapsTo f (t : Set β) := by
    intro a ha
    exact hmap a ha
  calc
    s.card = (∑ b ∈ t, (s.filter (fun a => f a = b)).card) := by
      exact Finset.card_eq_sum_card_fiberwise hmaps
    _ = (∑ _b ∈ t, m) := by
      exact Finset.sum_congr rfl (fun b hb => hfiber b hb)
    _ = t.card * m := by
      rw [Finset.sum_const_nat]
      intro b _
      rfl

theorem finset_sum_eq_mul_sum_of_fiber_eq
    {α β : Type} [DecidableEq β]
    (s : Finset α) (t : Finset β) (f : α -> β) (weight : β -> Nat) (m : Nat)
    (hmap : forall a, a ∈ s -> f a ∈ t)
    (hfiber : forall b, b ∈ t -> (s.filter (fun a => f a = b)).card = m) :
    s.sum (fun a => weight (f a)) = m * t.sum weight := by
  calc
    s.sum (fun a => weight (f a)) =
        ∑ b ∈ t, ∑ a ∈ s.filter (fun a => f a = b), weight b := by
          exact (Finset.sum_fiberwise_of_maps_to'
            (s := s) (t := t) (g := f) hmap weight).symm
    _ = ∑ b ∈ t, m * weight b := by
          apply Finset.sum_congr rfl
          intro b hb
          have hinner :
              (∑ a ∈ s.filter (fun a => f a = b), weight b) =
                (s.filter (fun a => f a = b)).card * weight b := by
            rw [Finset.sum_const_nat]
            intro a _
            rfl
          rw [hinner, hfiber b hb]
    _ = m * t.sum weight := by
          rw [Finset.mul_sum]

/--
Finite inclusion-exclusion form used by code-cell triangle inequalities:
if `s ∪ t` is contained in `u`, then `|s| + |t| <= |u| + |s ∩ t|`.
-/
theorem finset_card_add_le_card_add_card_inter_of_union_subset
    {α : Type} [DecidableEq α] {s t u : Finset α}
    (hsub : s ∪ t ⊆ u) :
    s.card + t.card <= u.card + (s ∩ t).card := by
  have hle_union : (s ∪ t).card <= u.card := Finset.card_le_card hsub
  have hcard := Finset.card_union_add_card_inter s t
  omega

end GijswijtPolak2025
end SDP
end CoveringCodes
