import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Tactic

/-!
# Binomial identities for Gijswijt--Polak orbit counts
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

private theorem choose_middle_sym (a b c : Nat) :
    Nat.choose (a + b + c) (a + b) * Nat.choose (a + b) a =
      Nat.choose (c + b + a) (c + b) * Nat.choose (c + b) c := by
  have hp : ([a, b, c] : List Nat).Perm [c, b, a] := by
    exact (List.Perm.cons a (List.Perm.swap c b [])).trans
      ((List.Perm.swap a c [b]).symm.trans
        (List.Perm.cons c (List.Perm.swap b a [])))
  have hperm :
      (([a, b, c] : List Nat) : Multiset Nat) =
        (([c, b, a] : List Nat) : Multiset Nat) :=
    Multiset.coe_eq_coe.mpr hp
  have hmulti :
      Nat.choose (a + (b + c)) a * Nat.choose (b + c) b =
        Nat.choose (a + (b + c)) c * Nat.choose (a + b) b := by
    have h := congrArg Multiset.multinomial hperm
    have hnil : ([] : List Nat).multinomial = 1 := rfl
    simpa [Multiset.multinomial, List.multinomial_cons, hnil, Nat.add_comm,
      Nat.add_left_comm, Nat.add_assoc] using h
  have hleftsym :
      Nat.choose (a + b + c) (a + b) = Nat.choose (a + (b + c)) c := by
    have hsub : a + (b + c) - c = a + b := by omega
    simpa [hsub, Nat.add_comm, Nat.add_left_comm, Nat.add_assoc] using
      (Nat.choose_symm (n := a + (b + c)) (k := c) (by omega))
  have hrightsym :
      Nat.choose (c + b + a) (c + b) = Nat.choose (a + (b + c)) a := by
    have hsub : c + (b + a) - a = c + b := by omega
    have h := Nat.choose_symm (n := c + (b + a)) (k := a) (by omega)
    simpa [hsub, Nat.add_comm, Nat.add_left_comm, Nat.add_assoc] using h
  calc
    Nat.choose (a + b + c) (a + b) * Nat.choose (a + b) a =
        Nat.choose (a + (b + c)) c * Nat.choose (a + b) b := by
      rw [hleftsym, Nat.choose_symm_add]
    _ = Nat.choose (a + (b + c)) a * Nat.choose (b + c) b := by
      rw [hmulti]
    _ = Nat.choose (c + b + a) (c + b) * Nat.choose (c + b) c := by
      rw [hrightsym]
      congr 1
      simpa [Nat.add_comm] using (Nat.choose_symm_add (a := b) (b := c))

theorem nat_choose_three_reverse (m a b c : Nat) :
    Nat.choose m a * Nat.choose (m - a) b * Nat.choose (m - a - b) c =
      Nat.choose m c * Nat.choose (m - c) b * Nat.choose (m - c - b) a := by
  have h_ab :
      Nat.choose m a * Nat.choose (m - a) b =
        Nat.choose m (a + b) * Nat.choose (a + b) a := by
    simpa using
      (Nat.choose_mul (n := m) (k := a + b) (s := a) (by omega)).symm
  have h_cb :
      Nat.choose m c * Nat.choose (m - c) b =
        Nat.choose m (c + b) * Nat.choose (c + b) c := by
    simpa using
      (Nat.choose_mul (n := m) (k := c + b) (s := c) (by omega)).symm
  have h_abc :
      Nat.choose m (a + b) * Nat.choose (m - (a + b)) c =
        Nat.choose m (a + b + c) * Nat.choose (a + b + c) (a + b) := by
    simpa using
      (Nat.choose_mul (n := m) (k := a + b + c) (s := a + b) (by omega)).symm
  have h_cba :
      Nat.choose m (c + b) * Nat.choose (m - (c + b)) a =
        Nat.choose m (c + b + a) * Nat.choose (c + b + a) (c + b) := by
    simpa using
      (Nat.choose_mul (n := m) (k := c + b + a) (s := c + b) (by omega)).symm
  have hsub_ab : m - a - b = m - (a + b) := by omega
  have hsub_cb : m - c - b = m - (c + b) := by omega
  calc
    Nat.choose m a * Nat.choose (m - a) b * Nat.choose (m - a - b) c =
        Nat.choose m (a + b) * Nat.choose (a + b) a *
          Nat.choose (m - (a + b)) c := by
      rw [h_ab, hsub_ab]
    _ = (Nat.choose m (a + b) * Nat.choose (m - (a + b)) c) *
          Nat.choose (a + b) a := by
      ring
    _ = (Nat.choose m (a + b + c) * Nat.choose (a + b + c) (a + b)) *
          Nat.choose (a + b) a := by
      rw [h_abc]
    _ = Nat.choose m (a + b + c) *
          (Nat.choose (a + b + c) (a + b) * Nat.choose (a + b) a) := by
      ring
    _ = Nat.choose m (a + b + c) *
          (Nat.choose (c + b + a) (c + b) * Nat.choose (c + b) c) := by
      rw [choose_middle_sym]
    _ = Nat.choose m (c + b + a) *
          (Nat.choose (c + b + a) (c + b) * Nat.choose (c + b) c) := by
      congr 2
      omega
    _ = (Nat.choose m (c + b + a) * Nat.choose (c + b + a) (c + b)) *
          Nat.choose (c + b) c := by
      ring
    _ = (Nat.choose m (c + b) * Nat.choose (m - (c + b)) a) *
          Nat.choose (c + b) c := by
      rw [h_cba]
    _ = Nat.choose m (c + b) * Nat.choose (c + b) c *
          Nat.choose (m - (c + b)) a := by
      ring
    _ = (Nat.choose m c * Nat.choose (m - c) b) *
          Nat.choose (m - (c + b)) a := by
      rw [h_cb]
    _ = Nat.choose m c * Nat.choose (m - c) b * Nat.choose (m - c - b) a := by
      rw [hsub_cb]

theorem nat_choose_four_rebase (m a b c d : Nat) :
    Nat.choose m a * Nat.choose (m - a) b * Nat.choose (m - a - b) c *
        Nat.choose (m - a - b - c) d =
      Nat.choose m d * Nat.choose (m - d) b * Nat.choose (m - d - b) c *
        Nat.choose (m - d - b - c) a := by
  have hmerge_left :
      Nat.choose (m - a) b * Nat.choose (m - a - b) c =
        Nat.choose (m - a) (b + c) * Nat.choose (b + c) b := by
    simpa [Nat.add_comm, Nat.add_left_comm, Nat.add_assoc] using
      (Nat.choose_mul (n := m - a) (k := b + c) (s := b) (by omega)).symm
  have hmerge_right :
      Nat.choose (m - d) b * Nat.choose (m - d - b) c =
        Nat.choose (m - d) (b + c) * Nat.choose (b + c) b := by
    simpa [Nat.add_comm, Nat.add_left_comm, Nat.add_assoc] using
      (Nat.choose_mul (n := m - d) (k := b + c) (s := b) (by omega)).symm
  have hsub_left : m - a - (b + c) = m - a - b - c := by omega
  have hsub_right : m - d - (b + c) = m - d - b - c := by omega
  have hthree := nat_choose_three_reverse m a (b + c) d
  calc
    Nat.choose m a * Nat.choose (m - a) b * Nat.choose (m - a - b) c *
        Nat.choose (m - a - b - c) d =
        Nat.choose m a * (Nat.choose (m - a) b * Nat.choose (m - a - b) c) *
          Nat.choose (m - a - b - c) d := by
      ring
    _ = Nat.choose m a * (Nat.choose (m - a) (b + c) *
          Nat.choose (b + c) b) * Nat.choose (m - a - b - c) d := by
      rw [hmerge_left]
    _ = (Nat.choose m a * Nat.choose (m - a) (b + c) *
          Nat.choose (m - a - (b + c)) d) * Nat.choose (b + c) b := by
      rw [hsub_left]
      ring
    _ = (Nat.choose m d * Nat.choose (m - d) (b + c) *
          Nat.choose (m - d - (b + c)) a) * Nat.choose (b + c) b := by
      rw [hthree]
    _ = Nat.choose m d * (Nat.choose (m - d) (b + c) *
          Nat.choose (b + c) b) * Nat.choose (m - d - b - c) a := by
      rw [hsub_right]
      ring
    _ = Nat.choose m d * (Nat.choose (m - d) b * Nat.choose (m - d - b) c) *
          Nat.choose (m - d - b - c) a := by
      rw [hmerge_right]
    _ = Nat.choose m d * Nat.choose (m - d) b * Nat.choose (m - d - b) c *
          Nat.choose (m - d - b - c) a := by
      ring

end GijswijtPolak2025
end SDP
end CoveringCodes
