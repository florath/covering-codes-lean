import CoveringCodes.SDP.GijswijtPolak2025.QaryTerwilliger
import CoveringCodes.SDP.GijswijtPolak2025.LinearInequalities
import CoveringCodes.SDP.GijswijtPolak2025.CubeThreshold
import CoveringCodes.SDP.GijswijtPolak2025.Certificates.Dual
import CoveringCodes.SDP.GijswijtPolak2025.Certificates.FiberCounting
import CoveringCodes.SDP.GijswijtPolak2025.Certificates.ObjectivePartition
import CoveringCodes.SDP.GijswijtPolak2025.CombinatorialIdentities

/-!
# Q-ary reduced SDP targets from Section 4
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

noncomputable section

abbrev QaryX (q n : Nat) := QaryOrbitIndex q n -> Rat

/-- Number of ordered q-ary pairs in the orbit represented by `idx`, over a fixed base word. -/
def qaryOrbitMultiplicity (q n : Nat) (idx : QaryOrbitIndex q n) : Rat :=
  (((q - 1 : Nat) : Rat) ^ (idx.i + idx.j - idx.t)) *
    (((q - 2 : Nat) : Rat) ^ (idx.t - idx.p)) *
    (Nat.choose n idx.p : Rat) *
    (Nat.choose (n - idx.p) (idx.t - idx.p) : Rat) *
    (Nat.choose (n - idx.t) (idx.i - idx.t) : Rat) *
    (Nat.choose (n - idx.i) (idx.j - idx.t) : Rat)

theorem qaryOrbitMultiplicity_pos {q n : Nat} (hq : 3 <= q)
    (idx : QaryOrbitIndex q n) :
    0 < qaryOrbitMultiplicity q n idx := by
  have hp_n : idx.p <= n := idx.p_le_n
  have ht_n : idx.t <= n := idx.t_le_n
  have hi_n : idx.i <= n := idx.i_le_n
  have h_tp : idx.t - idx.p <= n - idx.p := by omega
  have h_it : idx.i - idx.t <= n - idx.t := by omega
  have h_jt : idx.j - idx.t <= n - idx.i := by
    have ht_i := idx.ht_i
    have ht_j := idx.ht_j
    have hij := idx.hij
    omega
  have hq1_nat : 0 < q - 1 := by omega
  have hq2_nat : 0 < q - 2 := by omega
  have hq1 : 0 < (((q - 1 : Nat) : Rat)) := by exact_mod_cast hq1_nat
  have hq2 : 0 < (((q - 2 : Nat) : Rat)) := by exact_mod_cast hq2_nat
  have hc1_nat : 0 < Nat.choose n idx.p := Nat.choose_pos hp_n
  have hc2_nat : 0 < Nat.choose (n - idx.p) (idx.t - idx.p) :=
    Nat.choose_pos h_tp
  have hc3_nat : 0 < Nat.choose (n - idx.t) (idx.i - idx.t) :=
    Nat.choose_pos h_it
  have hc4_nat : 0 < Nat.choose (n - idx.i) (idx.j - idx.t) :=
    Nat.choose_pos h_jt
  have hc1 : 0 < (Nat.choose n idx.p : Rat) := by exact_mod_cast hc1_nat
  have hc2 : 0 < (Nat.choose (n - idx.p) (idx.t - idx.p) : Rat) := by
    exact_mod_cast hc2_nat
  have hc3 : 0 < (Nat.choose (n - idx.t) (idx.i - idx.t) : Rat) := by
    exact_mod_cast hc3_nat
  have hc4 : 0 < (Nat.choose (n - idx.i) (idx.j - idx.t) : Rat) := by
    exact_mod_cast hc4_nat
  unfold qaryOrbitMultiplicity
  positivity

theorem qaryOrbitMultiplicity_ne_zero {q n : Nat} (hq : 3 <= q)
    (idx : QaryOrbitIndex q n) :
    qaryOrbitMultiplicity q n idx ≠ 0 :=
  (qaryOrbitMultiplicity_pos hq idx).ne'

/-- Number of q-ary second words in an orbit over a fixed first/base pair. -/
def qaryOrbitFiberMultiplicity (q n : Nat) (idx : QaryOrbitIndex q n) : Rat :=
  (((q - 1 : Nat) : Rat) ^ (idx.j - idx.t)) *
    (((q - 2 : Nat) : Rat) ^ (idx.t - idx.p)) *
    (Nat.choose idx.i idx.p : Rat) *
    (Nat.choose (idx.i - idx.p) (idx.t - idx.p) : Rat) *
    (Nat.choose (n - idx.i) (idx.j - idx.t) : Rat)

/-- Natural-number form of the q-ary fiber multiplicity. -/
def qaryOrbitFiberMultiplicityNat (q n : Nat) (idx : QaryOrbitIndex q n) : Nat :=
  (q - 1) ^ (idx.j - idx.t) *
    (q - 2) ^ (idx.t - idx.p) *
    Nat.choose idx.i idx.p *
    Nat.choose (idx.i - idx.p) (idx.t - idx.p) *
    Nat.choose (n - idx.i) (idx.j - idx.t)

@[simp]
theorem qaryOrbitFiberMultiplicityNat_cast
    (q n : Nat) (idx : QaryOrbitIndex q n) :
    (qaryOrbitFiberMultiplicityNat q n idx : Rat) =
      qaryOrbitFiberMultiplicity q n idx := by
  unfold qaryOrbitFiberMultiplicityNat qaryOrbitFiberMultiplicity
  norm_num

theorem qaryOrbitFiberMultiplicity_nonneg
    (q n : Nat) (idx : QaryOrbitIndex q n) :
    0 <= qaryOrbitFiberMultiplicity q n idx := by
  unfold qaryOrbitFiberMultiplicity
  positivity

theorem qaryOrbitFiberMultiplicity_pos {q n : Nat} (hq : 3 <= q)
    (idx : QaryOrbitIndex q n) :
  0 < qaryOrbitFiberMultiplicity q n idx := by
  have hp_i : idx.p <= idx.i := idx.hp_t.trans idx.ht_i
  have h_tp : idx.t - idx.p <= idx.i - idx.p := by
    have hp_t := idx.hp_t
    have ht_i := idx.ht_i
    omega
  have h_jt : idx.j - idx.t <= n - idx.i := by
    have ht_i := idx.ht_i
    have ht_j := idx.ht_j
    have hij := idx.hij
    omega
  have hq1_nat : 0 < q - 1 := by omega
  have hq2_nat : 0 < q - 2 := by omega
  have hq1 : 0 < (((q - 1 : Nat) : Rat)) := by exact_mod_cast hq1_nat
  have hq2 : 0 < (((q - 2 : Nat) : Rat)) := by exact_mod_cast hq2_nat
  have hc1_nat : 0 < Nat.choose idx.i idx.p := Nat.choose_pos hp_i
  have hc2_nat : 0 < Nat.choose (idx.i - idx.p) (idx.t - idx.p) :=
    Nat.choose_pos h_tp
  have hc3_nat : 0 < Nat.choose (n - idx.i) (idx.j - idx.t) :=
    Nat.choose_pos h_jt
  have hc1 : 0 < (Nat.choose idx.i idx.p : Rat) := by exact_mod_cast hc1_nat
  have hc2 : 0 < (Nat.choose (idx.i - idx.p) (idx.t - idx.p) : Rat) := by
    exact_mod_cast hc2_nat
  have hc3 : 0 < (Nat.choose (n - idx.i) (idx.j - idx.t) : Rat) := by
    exact_mod_cast hc3_nat
  unfold qaryOrbitFiberMultiplicity
  positivity

theorem qaryOrbitMultiplicity_eq_shell_mul_fiber
    (q n : Nat) (idx : QaryOrbitIndex q n) :
    qaryOrbitMultiplicity q n idx =
      (((q - 1 : Nat) : Rat) ^ idx.i) *
        (Nat.choose n idx.i : Rat) *
          qaryOrbitFiberMultiplicity q n idx := by
  have hchoose1 :
      Nat.choose n idx.t * Nat.choose idx.t idx.p =
        Nat.choose n idx.p * Nat.choose (n - idx.p) (idx.t - idx.p) :=
    Nat.choose_mul (n := n) (k := idx.t) (s := idx.p) idx.hp_t
  have hchoose2 :
      Nat.choose n idx.i * Nat.choose idx.i idx.t =
        Nat.choose n idx.t * Nat.choose (n - idx.t) (idx.i - idx.t) :=
    Nat.choose_mul (n := n) (k := idx.i) (s := idx.t) idx.ht_i
  have hchoose3 :
      Nat.choose idx.i idx.t * Nat.choose idx.t idx.p =
        Nat.choose idx.i idx.p *
          Nat.choose (idx.i - idx.p) (idx.t - idx.p) :=
    Nat.choose_mul (n := idx.i) (k := idx.t) (s := idx.p) idx.hp_t
  have hchoose_nat :
      Nat.choose n idx.p * Nat.choose (n - idx.p) (idx.t - idx.p) *
          Nat.choose (n - idx.t) (idx.i - idx.t) =
        Nat.choose n idx.i * Nat.choose idx.i idx.p *
          Nat.choose (idx.i - idx.p) (idx.t - idx.p) := by
    calc
      Nat.choose n idx.p * Nat.choose (n - idx.p) (idx.t - idx.p) *
          Nat.choose (n - idx.t) (idx.i - idx.t) =
          (Nat.choose n idx.t * Nat.choose idx.t idx.p) *
            Nat.choose (n - idx.t) (idx.i - idx.t) := by
            rw [hchoose1]
      _ =
          (Nat.choose n idx.t * Nat.choose (n - idx.t) (idx.i - idx.t)) *
            Nat.choose idx.t idx.p := by
            ring
      _ =
          (Nat.choose n idx.i * Nat.choose idx.i idx.t) *
            Nat.choose idx.t idx.p := by
            rw [← hchoose2]
      _ =
          Nat.choose n idx.i *
            (Nat.choose idx.i idx.t * Nat.choose idx.t idx.p) := by
            ring
      _ =
          Nat.choose n idx.i *
            (Nat.choose idx.i idx.p *
              Nat.choose (idx.i - idx.p) (idx.t - idx.p)) := by
            rw [hchoose3]
      _ =
          Nat.choose n idx.i * Nat.choose idx.i idx.p *
            Nat.choose (idx.i - idx.p) (idx.t - idx.p) := by
            ring
  have hchoose :
      (Nat.choose n idx.p : Rat) *
          (Nat.choose (n - idx.p) (idx.t - idx.p) : Rat) *
          (Nat.choose (n - idx.t) (idx.i - idx.t) : Rat) =
        (Nat.choose n idx.i : Rat) *
          (Nat.choose idx.i idx.p : Rat) *
          (Nat.choose (idx.i - idx.p) (idx.t - idx.p) : Rat) := by
    exact_mod_cast hchoose_nat
  have hpow :
      (((q - 1 : Nat) : Rat) ^ (idx.i + idx.j - idx.t)) =
        (((q - 1 : Nat) : Rat) ^ idx.i) *
          (((q - 1 : Nat) : Rat) ^ (idx.j - idx.t)) := by
    have h_exp : idx.i + idx.j - idx.t = idx.i + (idx.j - idx.t) := by
      have ht_j := idx.ht_j
      omega
    rw [h_exp, pow_add]
  unfold qaryOrbitMultiplicity qaryOrbitFiberMultiplicity
  rw [hpow]
  let a : Rat := (((q - 1 : Nat) : Rat) ^ idx.i)
  let b : Rat := (((q - 1 : Nat) : Rat) ^ (idx.j - idx.t))
  let c : Rat := (((q - 2 : Nat) : Rat) ^ (idx.t - idx.p))
  let d : Rat := (Nat.choose n idx.p : Rat)
  let e : Rat := (Nat.choose (n - idx.p) (idx.t - idx.p) : Rat)
  let f : Rat := (Nat.choose (n - idx.t) (idx.i - idx.t) : Rat)
  let g : Rat := (Nat.choose (n - idx.i) (idx.j - idx.t) : Rat)
  let h : Rat := (Nat.choose n idx.i : Rat)
  let m : Rat := (Nat.choose idx.i idx.p : Rat)
  let l : Rat := (Nat.choose (idx.i - idx.p) (idx.t - idx.p) : Rat)
  change a * b * c * d * e * f * g = a * h * (b * c * m * l * g)
  have hchoose' : d * e * f = h * m * l := by
    simpa [d, e, f, h, m, l] using hchoose
  calc
    a * b * c * d * e * f * g = a * (d * e * f) * (b * c * g) := by
      ring
    _ = a * (h * m * l) * (b * c * g) := by
      rw [hchoose']
    _ = a * h * (b * c * m * l * g) := by
      ring

private theorem nat_choose_mul_sub_comm (m a b : Nat) :
    Nat.choose m a * Nat.choose (m - a) b =
      Nat.choose m b * Nat.choose (m - b) a := by
  calc
    Nat.choose m a * Nat.choose (m - a) b =
        Nat.choose m (a + b) * Nat.choose (a + b) a := by
      simpa using
        (Nat.choose_mul (n := m) (k := a + b) (s := a) (by omega)).symm
    _ = Nat.choose m (a + b) * Nat.choose (a + b) b := by
      rw [Nat.choose_symm_add]
    _ = Nat.choose m b * Nat.choose (m - b) a := by
      simpa [Nat.add_comm] using
        Nat.choose_mul (n := m) (k := a + b) (s := b) (by omega)

theorem qaryOrbitMultiplicity_swap (q n : Nat) (idx : QaryOrbitIndex q n) :
    qaryOrbitMultiplicity q n idx.swap = qaryOrbitMultiplicity q n idx := by
  have hsub_i : n - idx.t - (idx.i - idx.t) = n - idx.i := by
    have ht_i := idx.ht_i
    have hi_n := idx.i_le_n
    omega
  have hsub_j : n - idx.t - (idx.j - idx.t) = n - idx.j := by
    have ht_j := idx.ht_j
    have hj_n := idx.j_le_n
    omega
  have hchoose_nat :
      Nat.choose (n - idx.t) (idx.i - idx.t) *
          Nat.choose (n - idx.i) (idx.j - idx.t) =
        Nat.choose (n - idx.t) (idx.j - idx.t) *
          Nat.choose (n - idx.j) (idx.i - idx.t) := by
    simpa [hsub_i, hsub_j] using
      nat_choose_mul_sub_comm (n - idx.t) (idx.i - idx.t) (idx.j - idx.t)
  have hchoose :
      (Nat.choose (n - idx.t) (idx.i - idx.t) : Rat) *
          (Nat.choose (n - idx.i) (idx.j - idx.t) : Rat) =
        (Nat.choose (n - idx.t) (idx.j - idx.t) : Rat) *
          (Nat.choose (n - idx.j) (idx.i - idx.t) : Rat) := by
    exact_mod_cast hchoose_nat
  have hsum : idx.j + idx.i - idx.t = idx.i + idx.j - idx.t := by
    rw [Nat.add_comm]
  unfold qaryOrbitMultiplicity
  simp only [QaryOrbitIndex.swap]
  rw [hsum]
  let scale : Rat :=
    (((q - 1 : Nat) : Rat) ^ (idx.i + idx.j - idx.t)) *
      (((q - 2 : Nat) : Rat) ^ (idx.t - idx.p)) *
      (Nat.choose n idx.p : Rat) *
      (Nat.choose (n - idx.p) (idx.t - idx.p) : Rat)
  change
    scale * (Nat.choose (n - idx.t) (idx.j - idx.t) : Rat) *
        (Nat.choose (n - idx.j) (idx.i - idx.t) : Rat) =
      scale * (Nat.choose (n - idx.t) (idx.i - idx.t) : Rat) *
        (Nat.choose (n - idx.i) (idx.j - idx.t) : Rat)
  calc
    scale * (Nat.choose (n - idx.t) (idx.j - idx.t) : Rat) *
        (Nat.choose (n - idx.j) (idx.i - idx.t) : Rat) =
        scale *
          ((Nat.choose (n - idx.t) (idx.j - idx.t) : Rat) *
            (Nat.choose (n - idx.j) (idx.i - idx.t) : Rat)) := by
      ring
    _ = scale *
          ((Nat.choose (n - idx.t) (idx.i - idx.t) : Rat) *
            (Nat.choose (n - idx.i) (idx.j - idx.t) : Rat)) := by
      rw [← hchoose]
    _ = scale * (Nat.choose (n - idx.t) (idx.i - idx.t) : Rat) *
        (Nat.choose (n - idx.i) (idx.j - idx.t) : Rat) := by
      ring

/-- Objective from Theorem 4.18, written in orbit variables. -/
noncomputable def qaryReducedObjective (q n : Nat) (x : QaryX q n) : Rat :=
  ((q ^ n : Nat) : Rat) *
    Finset.univ.sum (fun idx : QaryOrbitIndex q n =>
      qaryOrbitMultiplicity q n idx * x idx)

/-- Linear-expression form of the q-ary reduced objective. -/
noncomputable def qaryReducedObjectiveExpr (q n : Nat) :
    LinExpr (QaryOrbitIndex q n) :=
  LinExpr.smul (((q ^ n : Nat) : Rat))
    (LinExpr.sum Finset.univ (fun idx : QaryOrbitIndex q n =>
      LinExpr.smul (qaryOrbitMultiplicity q n idx) (LinExpr.var idx)))

@[simp]
theorem qaryReducedObjectiveExpr_eval (q n : Nat) (x : QaryX q n) :
    (qaryReducedObjectiveExpr q n).eval x = qaryReducedObjective q n x := by
  unfold qaryReducedObjectiveExpr qaryReducedObjective
  simp

/-- Q-ary distance parameter attached to an orbit index. -/
def qaryOrbitDistanceIndex {q n : Nat} (idx : QaryOrbitIndex q n) : Nat :=
  idx.i + idx.j - idx.t - idx.p

private theorem qaryOrbitIndex_ext {q n : Nat}
    {idx idx' : QaryOrbitIndex q n}
    (hi : idx.i = idx'.i) (hj : idx.j = idx'.j)
    (ht : idx.t = idx'.t) (hp : idx.p = idx'.p) :
    idx = idx' := by
  cases idx with
  | mk i j t p hp_t ht_i ht_j hij =>
      cases idx' with
      | mk i' j' t' p' hp_t' ht_i' ht_j' hij' =>
          simp at hi hj ht hp
          subst i'
          subst j'
          subst t'
          subst p'
          simp

private theorem qary_list_perm_two_cases {a b x y : Nat} :
    List.Perm [a, b] [x, y] ->
      (x = a ∧ y = b) ∨ (x = b ∧ y = a) := by
  intro hp
  have hxmem : x ∈ [a, b] := by
    exact (hp.mem_iff).mpr (by simp)
  simp at hxmem
  rcases hxmem with hxa | hxb
  · subst x
    have hp' : List.Perm [b] [y] := List.Perm.cons_inv hp
    have hlist : [b] = [y] := List.perm_singleton.mp hp'
    simp at hlist
    exact Or.inl ⟨rfl, hlist.symm⟩
  · subst x
    have hp2 : List.Perm [b, a] [b, y] :=
      (List.Perm.swap a b []).trans hp
    have hp' : List.Perm [a] [y] := List.Perm.cons_inv hp2
    have hlist : [a] = [y] := List.perm_singleton.mp hp'
    simp at hlist
    exact Or.inr ⟨rfl, hlist.symm⟩

private theorem qary_list_perm_three_cases {a b c x y z : Nat} :
    List.Perm [a, b, c] [x, y, z] ->
      (x = a ∧ y = b ∧ z = c) ∨
      (x = a ∧ y = c ∧ z = b) ∨
      (x = b ∧ y = a ∧ z = c) ∨
      (x = b ∧ y = c ∧ z = a) ∨
      (x = c ∧ y = a ∧ z = b) ∨
      (x = c ∧ y = b ∧ z = a) := by
  intro hp
  have hxmem : x ∈ [a, b, c] := by
    exact (hp.mem_iff).mpr (by simp)
  simp at hxmem
  rcases hxmem with hxa | hxb | hxc
  · subst x
    have hp' : List.Perm [b, c] [y, z] := List.Perm.cons_inv hp
    rcases qary_list_perm_two_cases hp' with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
    · exact Or.inl ⟨rfl, rfl, rfl⟩
    · exact Or.inr (Or.inl ⟨rfl, rfl, rfl⟩)
  · subst x
    have hp2 : List.Perm [b, a, c] [b, y, z] :=
      (List.Perm.swap a b [c]).trans hp
    have hp' : List.Perm [a, c] [y, z] := List.Perm.cons_inv hp2
    rcases qary_list_perm_two_cases hp' with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
    · exact Or.inr (Or.inr (Or.inl ⟨rfl, rfl, rfl⟩))
    · exact Or.inr (Or.inr (Or.inr (Or.inl ⟨rfl, rfl, rfl⟩)))
  · subst x
    have hp_left : List.Perm [c, a, b] [a, b, c] :=
      (List.Perm.swap a c [b]).trans
        (List.Perm.cons a (List.Perm.swap b c []))
    have hp2 : List.Perm [c, a, b] [c, y, z] := hp_left.trans hp
    have hp' : List.Perm [a, b] [y, z] := List.Perm.cons_inv hp2
    rcases qary_list_perm_two_cases hp' with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inl ⟨rfl, rfl, rfl⟩))))
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr ⟨rfl, rfl, rfl⟩))))

/-- Rebase a q-ary triple orbit from `(u,v)` over base `w` to `(u,w)` over base `v`. -/
def QaryOrbitIndex.rebaseRight {q n : Nat} (idx : QaryOrbitIndex q n) :
    QaryOrbitIndex q n where
  i := qaryOrbitDistanceIndex idx
  j := idx.j
  t := idx.j - idx.p
  p := idx.j - idx.t
  hp_t := by
    have hp_t := idx.hp_t
    have ht_j := idx.ht_j
    omega
  ht_i := by
    unfold qaryOrbitDistanceIndex
    have hp_t := idx.hp_t
    have ht_i := idx.ht_i
    have ht_j := idx.ht_j
    omega
  ht_j := Nat.sub_le _ _
  hij := by
    unfold qaryOrbitDistanceIndex
    have hij := idx.hij
    have hp_t := idx.hp_t
    have ht_i := idx.ht_i
    have ht_j := idx.ht_j
    omega

@[simp]
theorem QaryOrbitIndex.rebaseRight_i {q n : Nat} (idx : QaryOrbitIndex q n) :
    idx.rebaseRight.i = qaryOrbitDistanceIndex idx := rfl

@[simp]
theorem QaryOrbitIndex.rebaseRight_j {q n : Nat} (idx : QaryOrbitIndex q n) :
    idx.rebaseRight.j = idx.j := rfl

@[simp]
theorem QaryOrbitIndex.rebaseRight_t {q n : Nat} (idx : QaryOrbitIndex q n) :
    idx.rebaseRight.t = idx.j - idx.p := rfl

@[simp]
theorem QaryOrbitIndex.rebaseRight_p {q n : Nat} (idx : QaryOrbitIndex q n) :
    idx.rebaseRight.p = idx.j - idx.t := rfl

/-- Rebase a q-ary triple orbit from `(u,v)` over base `w` to `(w,v)` over base `u`. -/
def QaryOrbitIndex.rebaseLeft {q n : Nat} (idx : QaryOrbitIndex q n) :
    QaryOrbitIndex q n :=
  idx.swap.rebaseRight.swap

@[simp]
theorem QaryOrbitIndex.rebaseLeft_i {q n : Nat} (idx : QaryOrbitIndex q n) :
    idx.rebaseLeft.i = idx.i := rfl

@[simp]
theorem QaryOrbitIndex.rebaseLeft_t {q n : Nat} (idx : QaryOrbitIndex q n) :
    idx.rebaseLeft.t = idx.i - idx.p := rfl

@[simp]
theorem QaryOrbitIndex.rebaseLeft_p {q n : Nat} (idx : QaryOrbitIndex q n) :
    idx.rebaseLeft.p = idx.i - idx.t := rfl

theorem qaryOrbitDistanceIndex_swap {q n : Nat} (idx : QaryOrbitIndex q n) :
    qaryOrbitDistanceIndex idx.swap = qaryOrbitDistanceIndex idx := by
  unfold qaryOrbitDistanceIndex QaryOrbitIndex.swap
  rw [Nat.add_comm idx.j idx.i]

@[simp]
theorem QaryOrbitIndex.rebaseLeft_j {q n : Nat} (idx : QaryOrbitIndex q n) :
    idx.rebaseLeft.j = qaryOrbitDistanceIndex idx := by
  change qaryOrbitDistanceIndex idx.swap = qaryOrbitDistanceIndex idx
  exact qaryOrbitDistanceIndex_swap idx

theorem qaryOrbitDistanceIndex_rebaseRight {q n : Nat} (idx : QaryOrbitIndex q n) :
    qaryOrbitDistanceIndex idx.rebaseRight = idx.i := by
  change
    (idx.i + idx.j - idx.t - idx.p) + idx.j -
        (idx.j - idx.p) - (idx.j - idx.t) = idx.i
  have hp_t := idx.hp_t
  have ht_i := idx.ht_i
  have ht_j := idx.ht_j
  have hij := idx.hij
  omega

theorem qaryOrbitGap_swap {q n : Nat} (idx : QaryOrbitIndex q n) :
    idx.swap.t - idx.swap.p = idx.t - idx.p := rfl

theorem qaryOrbitGap_rebaseRight {q n : Nat} (idx : QaryOrbitIndex q n) :
    idx.rebaseRight.t - idx.rebaseRight.p = idx.t - idx.p := by
  simp [QaryOrbitIndex.rebaseRight]
  have hp_t := idx.hp_t
  have ht_j := idx.ht_j
  omega

theorem qaryOrbitGap_rebaseLeft {q n : Nat} (idx : QaryOrbitIndex q n) :
    idx.rebaseLeft.t - idx.rebaseLeft.p = idx.t - idx.p := by
  change (idx.i - idx.p) - (idx.i - idx.t) = idx.t - idx.p
  have hp_t := idx.hp_t
  have ht_i := idx.ht_i
  omega

theorem qaryOrbitIndex_swap_distance_perm {q n : Nat} (idx : QaryOrbitIndex q n) :
    List.Perm [idx.swap.i, idx.swap.j, qaryOrbitDistanceIndex idx.swap]
      [idx.i, idx.j, qaryOrbitDistanceIndex idx] := by
  change
    List.Perm [idx.j, idx.i, qaryOrbitDistanceIndex idx.swap]
      [idx.i, idx.j, qaryOrbitDistanceIndex idx]
  rw [qaryOrbitDistanceIndex_swap]
  exact List.Perm.swap idx.i idx.j [qaryOrbitDistanceIndex idx]

theorem qaryOrbitIndex_rebaseRight_distance_perm {q n : Nat}
    (idx : QaryOrbitIndex q n) :
    List.Perm
      [idx.rebaseRight.i, idx.rebaseRight.j, qaryOrbitDistanceIndex idx.rebaseRight]
      [idx.i, idx.j, qaryOrbitDistanceIndex idx] := by
  have hp :
      List.Perm [qaryOrbitDistanceIndex idx, idx.j, idx.i]
        [idx.i, idx.j, qaryOrbitDistanceIndex idx] := by
    exact
      (List.Perm.swap idx.j (qaryOrbitDistanceIndex idx) [idx.i]).trans
        ((List.Perm.cons idx.j
          (List.Perm.swap idx.i (qaryOrbitDistanceIndex idx) [])).trans
            (List.Perm.swap idx.i idx.j [qaryOrbitDistanceIndex idx]))
  change
    List.Perm
      [qaryOrbitDistanceIndex idx, idx.j,
        qaryOrbitDistanceIndex idx.rebaseRight]
      [idx.i, idx.j, qaryOrbitDistanceIndex idx]
  rw [qaryOrbitDistanceIndex_rebaseRight]
  exact hp

theorem qaryOrbitDistanceIndex_rebaseLeft {q n : Nat} (idx : QaryOrbitIndex q n) :
    qaryOrbitDistanceIndex idx.rebaseLeft = idx.j := by
  change qaryOrbitDistanceIndex (idx.swap.rebaseRight.swap) = idx.j
  rw [qaryOrbitDistanceIndex_swap, qaryOrbitDistanceIndex_rebaseRight]
  rfl

theorem qaryOrbitIndex_rebaseLeft_distance_perm {q n : Nat}
    (idx : QaryOrbitIndex q n) :
    List.Perm
      [idx.rebaseLeft.i, idx.rebaseLeft.j, qaryOrbitDistanceIndex idx.rebaseLeft]
      [idx.i, idx.j, qaryOrbitDistanceIndex idx] := by
  change
    List.Perm
      [(idx.swap.rebaseRight.swap).i, (idx.swap.rebaseRight.swap).j,
        qaryOrbitDistanceIndex (idx.swap.rebaseRight.swap)]
      [idx.i, idx.j, qaryOrbitDistanceIndex idx]
  exact (qaryOrbitIndex_swap_distance_perm idx.swap.rebaseRight).trans
    ((qaryOrbitIndex_rebaseRight_distance_perm idx.swap).trans
      (qaryOrbitIndex_swap_distance_perm idx))

private theorem qaryOrbitIndex_rebaseLeft_rebaseLeft {q n : Nat}
    (idx : QaryOrbitIndex q n) :
    idx.rebaseLeft.rebaseLeft = idx := by
  apply qaryOrbitIndex_ext
  · rfl
  · rw [QaryOrbitIndex.rebaseLeft_j, qaryOrbitDistanceIndex_rebaseLeft]
  · rw [QaryOrbitIndex.rebaseLeft_t, QaryOrbitIndex.rebaseLeft_i,
      QaryOrbitIndex.rebaseLeft_p]
    have hp_t := idx.hp_t
    have ht_i := idx.ht_i
    omega
  · rw [QaryOrbitIndex.rebaseLeft_p, QaryOrbitIndex.rebaseLeft_i,
      QaryOrbitIndex.rebaseLeft_t]
    have hp_t := idx.hp_t
    have ht_i := idx.ht_i
    omega

private theorem qaryOrbitIndex_rebaseRight_rebaseRight {q n : Nat}
    (idx : QaryOrbitIndex q n) :
    idx.rebaseRight.rebaseRight = idx := by
  apply qaryOrbitIndex_ext
  · exact qaryOrbitDistanceIndex_rebaseRight idx
  · rfl
  · simp [QaryOrbitIndex.rebaseRight]
    have ht_j := idx.ht_j
    omega
  · simp [QaryOrbitIndex.rebaseRight]
    have hp_t := idx.hp_t
    have ht_j := idx.ht_j
    omega

theorem qaryOrbitMultiplicity_rebaseRight (q n : Nat) (idx : QaryOrbitIndex q n) :
    qaryOrbitMultiplicity q n idx.rebaseRight = qaryOrbitMultiplicity q n idx := by
  have hpow1 :
      (idx.i + idx.j - idx.t - idx.p) + idx.j - (idx.j - idx.p) =
        idx.i + idx.j - idx.t := by
    have hp_t := idx.hp_t
    have ht_i := idx.ht_i
    have ht_j := idx.ht_j
    have hij := idx.hij
    omega
  have hpow2 : (idx.j - idx.p) - (idx.j - idx.t) = idx.t - idx.p := by
    have hp_t := idx.hp_t
    have ht_j := idx.ht_j
    omega
  have hdist_sub_t :
      (idx.i + idx.j - idx.t - idx.p) - (idx.j - idx.p) =
        idx.i - idx.t := by
    have hp_t := idx.hp_t
    have ht_i := idx.ht_i
    have ht_j := idx.ht_j
    have hij := idx.hij
    omega
  have hjsub_p : idx.j - (idx.j - idx.p) = idx.p := by
    have hp_t := idx.hp_t
    have ht_j := idx.ht_j
    omega
  have hleft3b : n - idx.t - (idx.i - idx.t) = n - idx.i := by
    have ht_i := idx.ht_i
    have hi_n := idx.i_le_n
    omega
  have hright2 :
      n - (idx.j - idx.t) - (idx.t - idx.p) =
        n - (idx.j - idx.p) := by
    have hp_t := idx.hp_t
    have ht_j := idx.ht_j
    omega
  have hright3 :
      n - (idx.j - idx.t) - (idx.t - idx.p) - (idx.i - idx.t) =
        n - (idx.i + idx.j - idx.t - idx.p) := by
    have hp_t := idx.hp_t
    have ht_i := idx.ht_i
    have ht_j := idx.ht_j
    have hij := idx.hij
    omega
  have hchoose_nat := nat_choose_four_rebase n idx.p (idx.t - idx.p)
    (idx.i - idx.t) (idx.j - idx.t)
  have hchoose :
      (Nat.choose n idx.p : Rat) *
          (Nat.choose (n - idx.p) (idx.t - idx.p) : Rat) *
          (Nat.choose (n - idx.t) (idx.i - idx.t) : Rat) *
          (Nat.choose (n - idx.i) (idx.j - idx.t) : Rat) =
        (Nat.choose n (idx.j - idx.t) : Rat) *
          (Nat.choose (n - (idx.j - idx.t)) (idx.t - idx.p) : Rat) *
          (Nat.choose (n - (idx.j - idx.p)) (idx.i - idx.t) : Rat) *
          (Nat.choose (n - (idx.i + idx.j - idx.t - idx.p)) idx.p : Rat) := by
    have hchoose_rat :
        (Nat.choose n idx.p : Rat) *
            (Nat.choose (n - idx.p) (idx.t - idx.p) : Rat) *
            (Nat.choose (n - idx.p - (idx.t - idx.p)) (idx.i - idx.t) : Rat) *
            (Nat.choose (n - idx.p - (idx.t - idx.p) - (idx.i - idx.t))
              (idx.j - idx.t) : Rat) =
          (Nat.choose n (idx.j - idx.t) : Rat) *
            (Nat.choose (n - (idx.j - idx.t)) (idx.t - idx.p) : Rat) *
            (Nat.choose (n - (idx.j - idx.t) - (idx.t - idx.p))
              (idx.i - idx.t) : Rat) *
            (Nat.choose (n - (idx.j - idx.t) - (idx.t - idx.p) -
              (idx.i - idx.t)) idx.p : Rat) := by
      exact_mod_cast hchoose_nat
    have hleft2 : n - idx.p - (idx.t - idx.p) = n - idx.t := by
      have hp_t := idx.hp_t
      have ht_n := idx.t_le_n
      omega
    rw [hleft2, hleft3b, hright3, hright2] at hchoose_rat
    exact hchoose_rat
  unfold qaryOrbitMultiplicity QaryOrbitIndex.rebaseRight qaryOrbitDistanceIndex
  simp only
  rw [hpow1, hpow2, hdist_sub_t, hjsub_p]
  let scale : Rat := (((q - 1 : Nat) : Rat) ^ (idx.i + idx.j - idx.t)) *
    (((q - 2 : Nat) : Rat) ^ (idx.t - idx.p))
  change scale *
      (Nat.choose n (idx.j - idx.t) : Rat) *
      (Nat.choose (n - (idx.j - idx.t)) (idx.t - idx.p) : Rat) *
      (Nat.choose (n - (idx.j - idx.p)) (idx.i - idx.t) : Rat) *
      (Nat.choose (n - (idx.i + idx.j - idx.t - idx.p)) idx.p : Rat) =
    scale *
      (Nat.choose n idx.p : Rat) *
      (Nat.choose (n - idx.p) (idx.t - idx.p) : Rat) *
      (Nat.choose (n - idx.t) (idx.i - idx.t) : Rat) *
      (Nat.choose (n - idx.i) (idx.j - idx.t) : Rat)
  calc
    scale * (Nat.choose n (idx.j - idx.t) : Rat) *
        (Nat.choose (n - (idx.j - idx.t)) (idx.t - idx.p) : Rat) *
        (Nat.choose (n - (idx.j - idx.p)) (idx.i - idx.t) : Rat) *
        (Nat.choose (n - (idx.i + idx.j - idx.t - idx.p)) idx.p : Rat) =
        scale * ((Nat.choose n (idx.j - idx.t) : Rat) *
          (Nat.choose (n - (idx.j - idx.t)) (idx.t - idx.p) : Rat) *
          (Nat.choose (n - (idx.j - idx.p)) (idx.i - idx.t) : Rat) *
          (Nat.choose (n - (idx.i + idx.j - idx.t - idx.p)) idx.p : Rat)) := by
      ring
    _ = scale * ((Nat.choose n idx.p : Rat) *
          (Nat.choose (n - idx.p) (idx.t - idx.p) : Rat) *
          (Nat.choose (n - idx.t) (idx.i - idx.t) : Rat) *
          (Nat.choose (n - idx.i) (idx.j - idx.t) : Rat)) := by
      rw [← hchoose]
    _ = scale * (Nat.choose n idx.p : Rat) *
        (Nat.choose (n - idx.p) (idx.t - idx.p) : Rat) *
        (Nat.choose (n - idx.t) (idx.i - idx.t) : Rat) *
        (Nat.choose (n - idx.i) (idx.j - idx.t) : Rat) := by
      ring

theorem qaryOrbitMultiplicity_rebaseLeft (q n : Nat) (idx : QaryOrbitIndex q n) :
    qaryOrbitMultiplicity q n idx.rebaseLeft = qaryOrbitMultiplicity q n idx := by
  change qaryOrbitMultiplicity q n (idx.swap.rebaseRight.swap) =
    qaryOrbitMultiplicity q n idx
  rw [qaryOrbitMultiplicity_swap,
    qaryOrbitMultiplicity_rebaseRight, qaryOrbitMultiplicity_swap]

/-- Coefficient `x^{0,0}_{d,0}` used in the q-ary reduced SDP formulas. -/
def qaryZeroCoeff {q n : Nat} (x : QaryX q n) (d : Nat) : Rat :=
  if hd : d <= n then
    x (QaryOrbitIndex.mk d 0 0 0 (Nat.le_refl 0) (Nat.zero_le d)
      (Nat.le_refl 0) (by omega))
  else
    0

/-- Linear-expression form of `qaryZeroCoeff`. -/
def qaryZeroCoeffExpr (q n d : Nat) : LinExpr (QaryOrbitIndex q n) :=
  if hd : d <= n then
    LinExpr.var
      (QaryOrbitIndex.mk d 0 0 0 (Nat.le_refl 0) (Nat.zero_le d)
        (Nat.le_refl 0) (by omega))
  else
    LinExpr.constExpr (QaryOrbitIndex q n) 0

@[simp]
theorem qaryZeroCoeffExpr_eval {q n : Nat} (d : Nat) (x : QaryX q n) :
    (qaryZeroCoeffExpr q n d).eval x = qaryZeroCoeff x d := by
  unfold qaryZeroCoeffExpr qaryZeroCoeff
  by_cases hd : d <= n <;> simp [hd]

/-- Coefficient `x^{i,i}_{i,i}` on the q-ary diagonal shell. -/
def qaryDiagonalCoeff {q n : Nat} (x : QaryX q n) (i : Nat) : Rat :=
  if hi : i <= n then
    x (QaryOrbitIndex.mk i i i i (Nat.le_refl i) (Nat.le_refl i)
      (Nat.le_refl i) (by omega))
  else
    0

/-- Linear-expression form of `qaryDiagonalCoeff`. -/
def qaryDiagonalCoeffExpr (q n i : Nat) : LinExpr (QaryOrbitIndex q n) :=
  if hi : i <= n then
    LinExpr.var
      (QaryOrbitIndex.mk i i i i (Nat.le_refl i) (Nat.le_refl i)
        (Nat.le_refl i) (by omega))
  else
    LinExpr.constExpr (QaryOrbitIndex q n) 0

@[simp]
theorem qaryDiagonalCoeffExpr_eval {q n : Nat} (i : Nat) (x : QaryX q n) :
    (qaryDiagonalCoeffExpr q n i).eval x = qaryDiagonalCoeff x i := by
  unfold qaryDiagonalCoeffExpr qaryDiagonalCoeff
  by_cases hi : i <= n <;> simp [hi]

/-- Proposition 4.11-style basic q-ary reduced SDP constraints. -/
def QaryBasicConstraints {q n : Nat} (x : QaryX q n) : Prop :=
  (forall idx : QaryOrbitIndex q n,
    0 <= x idx /\ x idx <= qaryDiagonalCoeff x idx.i) /\
  (forall idx : QaryOrbitIndex q n,
    qaryZeroCoeff x idx.i + qaryZeroCoeff x (qaryOrbitDistanceIndex idx) -
        qaryZeroCoeff x 0 <= x idx /\
      x idx <= qaryZeroCoeff x (qaryOrbitDistanceIndex idx)) /\
  (forall idx idx' : QaryOrbitIndex q n,
    List.Perm [idx.i, idx.j, qaryOrbitDistanceIndex idx]
      [idx'.i, idx'.j, qaryOrbitDistanceIndex idx'] ->
      idx.t - idx.p = idx'.t - idx'.p ->
      x idx = x idx')

theorem QaryBasicConstraints.swap {q n : Nat} {x : QaryX q n}
    (h : QaryBasicConstraints x) (idx : QaryOrbitIndex q n) :
    x idx.swap = x idx :=
  h.2.2 idx.swap idx (qaryOrbitIndex_swap_distance_perm idx)
    (qaryOrbitGap_swap idx)

theorem QaryBasicConstraints.rebaseRight {q n : Nat} {x : QaryX q n}
    (h : QaryBasicConstraints x) (idx : QaryOrbitIndex q n) :
    x idx.rebaseRight = x idx :=
  h.2.2 idx.rebaseRight idx (qaryOrbitIndex_rebaseRight_distance_perm idx)
    (qaryOrbitGap_rebaseRight idx)

theorem QaryBasicConstraints.rebaseLeft {q n : Nat} {x : QaryX q n}
    (h : QaryBasicConstraints x) (idx : QaryOrbitIndex q n) :
    x idx.rebaseLeft = x idx :=
  h.2.2 idx.rebaseLeft idx (qaryOrbitIndex_rebaseLeft_distance_perm idx)
    (qaryOrbitGap_rebaseLeft idx)

/-- Two-step binomial coefficient used as a multinomial coefficient. -/
def chooseTwo (m a b : Nat) : Rat :=
  (Nat.choose m a : Rat) * (Nat.choose (m - a) b : Rat)

/-- Three-step binomial coefficient used as a multinomial coefficient. -/
def chooseThree (m a b c : Nat) : Rat :=
  (Nat.choose m a : Rat) *
    (Nat.choose (m - a) b : Rat) *
    (Nat.choose (m - a - b) c : Rat)

/-- A finite ten-variable coefficient sum used in the q-ary reduced formulas. -/
def qaryTenSum (n : Nat)
    (f : Nat -> Nat -> Nat -> Nat -> Nat -> Nat -> Nat -> Nat -> Nat -> Nat -> Rat) :
    Rat :=
  (Finset.range (n + 1)).sum (fun a1 =>
    (Finset.range (n + 1)).sum (fun a2 =>
      (Finset.range (n + 1)).sum (fun b1 =>
        (Finset.range (n + 1)).sum (fun b2 =>
          (Finset.range (n + 1)).sum (fun c1 =>
            (Finset.range (n + 1)).sum (fun c2 =>
              (Finset.range (n + 1)).sum (fun d1 =>
                (Finset.range (n + 1)).sum (fun d2 =>
                  (Finset.range (n + 1)).sum (fun d3 =>
                    (Finset.range (n + 1)).sum (fun e =>
                      f a1 a2 b1 b2 c1 c2 d1 d2 d3 e))))))))))

/-- Common q-ary multinomial factor for eta and matrix-cut coefficients. -/
def qaryPartitionCoeff (q n : Nat) (source : QaryOrbitIndex q n)
    (a1 a2 b1 b2 c1 c2 d1 d2 d3 e : Nat) : Rat :=
  chooseTwo (source.i - source.t) a1 a2 *
    chooseTwo (source.j - source.t) b1 b2 *
    chooseTwo source.p c1 c2 *
    chooseThree (source.t - source.p) d1 d2 d3 *
    (Nat.choose (n + source.t - source.i - source.j) e : Rat) *
    (((q - 1 : Nat) : Rat) ^ e) *
    (((q - 2 : Nat) : Rat) ^ (a2 + b2 + c2)) *
    (((q - 3 : Nat) : Rat) ^ d3)

/-- One summand in the q-ary `eta` coefficient of Proposition 4.14. -/
def qaryEtaTerm (q n : Nat) (source target : QaryOrbitIndex q n) (d : Nat)
    (a1 a2 b1 b2 c1 c2 d1 d2 d3 e : Nat) : Rat :=
  if e + source.i + source.j <= n + source.t /\
      b1 + b2 + source.t <= source.j /\
      a1 + a2 + source.t <= source.i /\
      d1 + d2 + d3 + source.p <= source.t /\
      c1 + c2 <= source.p /\
      d = a1 + a2 + b1 + b2 + c1 + c2 + d1 + d2 + d3 + e /\
      target.i + a1 + c1 + d1 = source.i + b1 + b2 + e /\
      target.j + b1 + c1 + d2 = source.j + a1 + a2 + e /\
      target.t + c1 + d1 + d2 = source.t + a2 + b2 + e /\
      target.p + c1 = source.p + e then
    qaryPartitionCoeff q n source a1 a2 b1 b2 c1 c2 d1 d2 d3 e
  else
    0

/-- Q-ary `eta` coefficient used in the Lasserre constraint, Proposition 4.14. -/
def qaryEtaCoeff
    (q n : Nat) (source target : QaryOrbitIndex q n) (d : Nat) : Rat :=
  qaryTenSum n (qaryEtaTerm q n source target d)

/-- The coefficient of a target orbit variable in the q-ary Lasserre transform. -/
def qaryLasserreTargetCoeff {q n : Nat}
    (lambda : Fin (n + 1) -> Rat)
    (source target : QaryOrbitIndex q n) : Rat :=
  Finset.univ.sum (fun d : Fin (n + 1) =>
    lambda d * qaryEtaCoeff q n source target d.val)

/-- Linear-expression form of the q-ary Lasserre transform coefficient. -/
noncomputable def qaryLasserreCoeffExpr {q n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (source : QaryOrbitIndex q n) : LinExpr (QaryOrbitIndex q n) :=
  LinExpr.sub
    (LinExpr.sum Finset.univ (fun target : QaryOrbitIndex q n =>
      LinExpr.smul (qaryLasserreTargetCoeff lambda source target)
        (LinExpr.var target)))
    (LinExpr.smul beta
      (qaryZeroCoeffExpr q n (qaryOrbitDistanceIndex source)))

@[simp]
theorem qaryLasserreCoeffExpr_eval {q n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (source : QaryOrbitIndex q n) (x : QaryX q n) :
    (qaryLasserreCoeffExpr lambda beta source).eval x =
      Finset.univ.sum (fun target : QaryOrbitIndex q n =>
        qaryLasserreTargetCoeff lambda source target * x target) -
        beta * qaryZeroCoeff x (qaryOrbitDistanceIndex source) := by
  unfold qaryLasserreCoeffExpr
  simp

/-- Coefficients of the matrix `N` appearing in the q-ary Lasserre constraint. -/
noncomputable def qaryLasserreX {q n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat) (x : QaryX q n) : QaryX q n :=
  fun source =>
    Finset.univ.sum (fun target : QaryOrbitIndex q n =>
      qaryLasserreTargetCoeff lambda source target * x target) -
    beta * qaryZeroCoeff x (qaryOrbitDistanceIndex source)

/-- Proposition 4.14-style q-ary Lasserre block constraints. -/
noncomputable def QaryLasserreConstraints {q n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat) (x : QaryX q n) : Prop :=
  QaryBlocksPSD (qaryLasserreX lambda beta x)

/-- One summand in the q-ary matrix-cut coefficient of Proposition 4.17. -/
def qaryMatrixCutTerm (q n : Nat) (source target : QaryOrbitIndex q n) (d : Nat)
    (a1 a2 b1 b2 c1 c2 d1 d2 d3 e : Nat) : Rat :=
  if e + source.i + source.j <= n + source.t /\
      b1 + b2 + source.t <= source.j /\
      a1 + a2 + source.t <= source.i /\
      d1 + d2 + d3 + source.p <= source.t /\
      c1 + c2 <= source.p /\
      target.i = source.i /\
      target.j = a1 + a2 + b1 + b2 + c1 + c2 + d1 + d2 + d3 + e /\
      target.t = a1 + a2 + c1 + c2 + d1 + d2 + d3 /\
      target.p = a1 + c1 + d1 /\
      d + b1 + c1 + d2 = a1 + a2 + e + source.j then
    qaryPartitionCoeff q n source a1 a2 b1 b2 c1 c2 d1 d2 d3 e
  else
    0

/-- Q-ary matrix-cut coefficient from Proposition 4.17. -/
def qaryMatrixCutCoeff
    (q n : Nat) (source target : QaryOrbitIndex q n) (d : Nat) : Rat :=
  qaryTenSum n (qaryMatrixCutTerm q n source target d)

/-- The linear coefficient induced by a valid inequality in the q-ary matrix cuts. -/
def qaryMatrixCutLambda {q n : Nat}
    (lambda : Fin (n + 1) -> Rat)
    (source target : QaryOrbitIndex q n) : Rat :=
  Finset.univ.sum (fun d : Fin (n + 1) =>
    lambda d * qaryMatrixCutCoeff q n source target d.val)

/-- First q-ary matrix-cut left-hand side as a linear expression. -/
noncomputable def qaryMatrixCutLhs1Expr {q n : Nat}
    (lambda : Fin (n + 1) -> Rat) (source : QaryOrbitIndex q n) :
    LinExpr (QaryOrbitIndex q n) :=
  LinExpr.sum Finset.univ (fun target : QaryOrbitIndex q n =>
    LinExpr.smul (qaryMatrixCutLambda lambda source target)
      (LinExpr.var target))

@[simp]
theorem qaryMatrixCutLhs1Expr_eval {q n : Nat}
    (lambda : Fin (n + 1) -> Rat) (source : QaryOrbitIndex q n)
    (x : QaryX q n) :
    (qaryMatrixCutLhs1Expr lambda source).eval x =
      Finset.univ.sum (fun target : QaryOrbitIndex q n =>
        x target * qaryMatrixCutLambda lambda source target) := by
  unfold qaryMatrixCutLhs1Expr
  simp [mul_comm]

/-- Second q-ary matrix-cut left-hand side as a linear expression. -/
noncomputable def qaryMatrixCutLhs2Expr {q n : Nat}
    (lambda : Fin (n + 1) -> Rat) (source : QaryOrbitIndex q n) :
    LinExpr (QaryOrbitIndex q n) :=
  LinExpr.sum Finset.univ (fun target : QaryOrbitIndex q n =>
    LinExpr.smul (qaryMatrixCutLambda lambda source target)
      (LinExpr.sub (qaryZeroCoeffExpr q n target.j) (LinExpr.var target)))

@[simp]
theorem qaryMatrixCutLhs2Expr_eval {q n : Nat}
    (lambda : Fin (n + 1) -> Rat) (source : QaryOrbitIndex q n)
    (x : QaryX q n) :
    (qaryMatrixCutLhs2Expr lambda source).eval x =
      Finset.univ.sum (fun target : QaryOrbitIndex q n =>
        (qaryZeroCoeff x target.j - x target) *
          qaryMatrixCutLambda lambda source target) := by
  unfold qaryMatrixCutLhs2Expr
  simp [mul_comm]

/-- Third q-ary matrix-cut left-hand side as a linear expression. -/
noncomputable def qaryMatrixCutLhs3Expr {q n : Nat}
    (lambda : Fin (n + 1) -> Rat) (source : QaryOrbitIndex q n) :
    LinExpr (QaryOrbitIndex q n) :=
  LinExpr.sum Finset.univ (fun target : QaryOrbitIndex q n =>
    LinExpr.smul (qaryMatrixCutLambda lambda source target)
      (LinExpr.sub
        (qaryZeroCoeffExpr q n (qaryOrbitDistanceIndex target))
        (LinExpr.var target)))

@[simp]
theorem qaryMatrixCutLhs3Expr_eval {q n : Nat}
    (lambda : Fin (n + 1) -> Rat) (source : QaryOrbitIndex q n)
    (x : QaryX q n) :
    (qaryMatrixCutLhs3Expr lambda source).eval x =
      Finset.univ.sum (fun target : QaryOrbitIndex q n =>
        (qaryZeroCoeff x (qaryOrbitDistanceIndex target) - x target) *
          qaryMatrixCutLambda lambda source target) := by
  unfold qaryMatrixCutLhs3Expr
  simp [mul_comm]

/-- One target summand in the fourth q-ary matrix-cut left-hand side. -/
noncomputable def qaryMatrixCutLhs4TargetExpr {q n : Nat}
    (target : QaryOrbitIndex q n) : LinExpr (QaryOrbitIndex q n) :=
  LinExpr.add
    (LinExpr.sub (qaryZeroCoeffExpr q n 0)
      (qaryZeroCoeffExpr q n target.j))
    (LinExpr.sub (LinExpr.var target)
      (qaryZeroCoeffExpr q n (qaryOrbitDistanceIndex target)))

/-- Fourth q-ary matrix-cut left-hand side as a linear expression. -/
noncomputable def qaryMatrixCutLhs4Expr {q n : Nat}
    (lambda : Fin (n + 1) -> Rat) (source : QaryOrbitIndex q n) :
    LinExpr (QaryOrbitIndex q n) :=
  LinExpr.sum Finset.univ (fun target : QaryOrbitIndex q n =>
    LinExpr.smul (qaryMatrixCutLambda lambda source target)
      (qaryMatrixCutLhs4TargetExpr target))

@[simp]
theorem qaryMatrixCutLhs4Expr_eval {q n : Nat}
    (lambda : Fin (n + 1) -> Rat) (source : QaryOrbitIndex q n)
    (x : QaryX q n) :
    (qaryMatrixCutLhs4Expr lambda source).eval x =
      Finset.univ.sum (fun target : QaryOrbitIndex q n =>
        (qaryZeroCoeff x 0 - qaryZeroCoeff x target.j -
            qaryZeroCoeff x (qaryOrbitDistanceIndex target) + x target) *
          qaryMatrixCutLambda lambda source target) := by
  unfold qaryMatrixCutLhs4Expr
  simp [mul_comm, qaryMatrixCutLhs4TargetExpr]
  apply Finset.sum_congr rfl
  intro target _
  ring_nf

/-- Named scalar affine atoms in the q-ary reduced SDP. -/
inductive QaryScalarAtom (q n : Nat) where
  | nonneg : QaryOrbitIndex q n -> QaryScalarAtom q n
  | diagonalUpper : QaryOrbitIndex q n -> QaryScalarAtom q n
  | triangleLower : QaryOrbitIndex q n -> QaryScalarAtom q n
  | distanceUpper : QaryOrbitIndex q n -> QaryScalarAtom q n
  | symmetryLe : QaryOrbitIndex q n -> QaryOrbitIndex q n -> QaryScalarAtom q n
  | symmetryGe : QaryOrbitIndex q n -> QaryOrbitIndex q n -> QaryScalarAtom q n
  | matrixCut1 : QaryOrbitIndex q n -> QaryScalarAtom q n
  | matrixCut2 : QaryOrbitIndex q n -> QaryScalarAtom q n
  | matrixCut3 : QaryOrbitIndex q n -> QaryScalarAtom q n
  | matrixCut4 : QaryOrbitIndex q n -> QaryScalarAtom q n
deriving DecidableEq, Fintype

/-- Linear expression associated to each named q-ary scalar atom. -/
noncomputable def qaryScalarAtomExpr {q n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat) :
    QaryScalarAtom q n -> LinExpr (QaryOrbitIndex q n)
  | .nonneg idx => LinExpr.var idx
  | .diagonalUpper idx =>
      LinExpr.sub (qaryDiagonalCoeffExpr q n idx.i) (LinExpr.var idx)
  | .triangleLower idx =>
      LinExpr.add
        (LinExpr.sub (LinExpr.var idx) (qaryZeroCoeffExpr q n idx.i))
        (LinExpr.sub (qaryZeroCoeffExpr q n 0)
          (qaryZeroCoeffExpr q n (qaryOrbitDistanceIndex idx)))
  | .distanceUpper idx =>
      LinExpr.sub (qaryZeroCoeffExpr q n (qaryOrbitDistanceIndex idx))
        (LinExpr.var idx)
  | .symmetryLe idx idx' =>
      if List.Perm [idx.i, idx.j, qaryOrbitDistanceIndex idx]
          [idx'.i, idx'.j, qaryOrbitDistanceIndex idx'] /\
          idx.t - idx.p = idx'.t - idx'.p then
        LinExpr.sub (LinExpr.var idx') (LinExpr.var idx)
      else
        LinExpr.constExpr (QaryOrbitIndex q n) 0
  | .symmetryGe idx idx' =>
      if List.Perm [idx.i, idx.j, qaryOrbitDistanceIndex idx]
          [idx'.i, idx'.j, qaryOrbitDistanceIndex idx'] /\
          idx.t - idx.p = idx'.t - idx'.p then
        LinExpr.sub (LinExpr.var idx) (LinExpr.var idx')
      else
        LinExpr.constExpr (QaryOrbitIndex q n) 0
  | .matrixCut1 source =>
      LinExpr.sub (qaryMatrixCutLhs1Expr lambda source)
        (LinExpr.smul beta (qaryZeroCoeffExpr q n source.i))
  | .matrixCut2 source =>
      LinExpr.sub (qaryMatrixCutLhs2Expr lambda source)
        (LinExpr.smul beta
          (LinExpr.sub (qaryZeroCoeffExpr q n 0)
            (qaryZeroCoeffExpr q n source.i)))
  | .matrixCut3 source =>
      LinExpr.sub (qaryMatrixCutLhs3Expr lambda source)
        (LinExpr.smul beta
          (LinExpr.sub (qaryZeroCoeffExpr q n 0)
            (qaryZeroCoeffExpr q n source.i)))
  | .matrixCut4 source =>
      LinExpr.sub (qaryMatrixCutLhs4Expr lambda source)
        (LinExpr.smul beta
          (LinExpr.add
            (LinExpr.constExpr (QaryOrbitIndex q n) 1)
            (LinExpr.add
              (LinExpr.smul (-2) (qaryZeroCoeffExpr q n 0))
              (qaryZeroCoeffExpr q n source.i))))

/-- Proposition 4.17-style q-ary matrix-cut inequalities. -/
noncomputable def QaryMatrixCutConstraints {q n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat) (x : QaryX q n) : Prop :=
  forall source : QaryOrbitIndex q n,
    let lhs1 := Finset.univ.sum (fun target : QaryOrbitIndex q n =>
      x target * qaryMatrixCutLambda lambda source target)
    let lhs2 := Finset.univ.sum (fun target : QaryOrbitIndex q n =>
      (qaryZeroCoeff x target.j - x target) *
        qaryMatrixCutLambda lambda source target)
    let lhs3 := Finset.univ.sum (fun target : QaryOrbitIndex q n =>
      (qaryZeroCoeff x (qaryOrbitDistanceIndex target) - x target) *
        qaryMatrixCutLambda lambda source target)
    let lhs4 := Finset.univ.sum (fun target : QaryOrbitIndex q n =>
      (qaryZeroCoeff x 0 - qaryZeroCoeff x target.j -
          qaryZeroCoeff x (qaryOrbitDistanceIndex target) + x target) *
        qaryMatrixCutLambda lambda source target)
    qaryZeroCoeff x source.i * beta <= lhs1 /\
      (qaryZeroCoeff x 0 - qaryZeroCoeff x source.i) * beta <= lhs2 /\
      (qaryZeroCoeff x 0 - qaryZeroCoeff x source.i) * beta <= lhs3 /\
      (1 - 2 * qaryZeroCoeff x 0 + qaryZeroCoeff x source.i) * beta <= lhs4

/-- A q-ary Schrijver block entry as a linear expression in orbit variables. -/
noncomputable def qaryBlockEntryExpr (q n a k : Nat)
    (coeffExpr : QaryOrbitIndex q n -> LinExpr (QaryOrbitIndex q n))
    (row col : Nat) : LinExpr (QaryOrbitIndex q n) :=
  let i := k + row
  let j := k + col
  LinExpr.sum (Finset.range (n + 1)) (fun t =>
    LinExpr.sum (Finset.range (n + 1)) (fun p =>
      if hp_t : p <= t then
        if ht_i : t <= i then
          if ht_j : t <= j then
            if hij : i + j <= n + t then
              LinExpr.smul (alphaCoeff q n i j t p a k)
                (coeffExpr
                  (QaryOrbitIndex.mk i j t p hp_t ht_i ht_j hij))
            else
              LinExpr.constExpr (QaryOrbitIndex q n) 0
          else
            LinExpr.constExpr (QaryOrbitIndex q n) 0
        else
          LinExpr.constExpr (QaryOrbitIndex q n) 0
      else
        LinExpr.constExpr (QaryOrbitIndex q n) 0))

@[simp]
theorem qaryBlockEntryExpr_eval {q n : Nat}
    (a k : Nat) (coeffExpr : QaryOrbitIndex q n -> LinExpr (QaryOrbitIndex q n))
    (row col : Nat) (x : QaryX q n) :
    (qaryBlockEntryExpr q n a k coeffExpr row col).eval x =
      qaryBlockEntry q n a k (fun idx => (coeffExpr idx).eval x) row col := by
  unfold qaryBlockEntryExpr qaryBlockEntry
  simp only [LinExpr.eval_sum]
  apply Finset.sum_congr rfl
  intro t _
  apply Finset.sum_congr rfl
  intro p _
  by_cases hp_t : p <= t
  · by_cases ht_i : t <= k + row
    · by_cases ht_j : t <= k + col
      · by_cases hij : k + row + (k + col) <= n + t
        · simp [hp_t, ht_i, ht_j, hij]
        · simp [hp_t, ht_i, ht_j, hij]
      · simp [hp_t, ht_i, ht_j]
    · simp [hp_t, ht_i]
  · simp [hp_t]

/-- A q-ary Schrijver block as a matrix of linear expressions. -/
noncomputable def qaryBlockMatrixExpr (q n a k : Nat)
    (coeffExpr : QaryOrbitIndex q n -> LinExpr (QaryOrbitIndex q n)) :
    Matrix (Fin (n + a - 2 * k + 1)) (Fin (n + a - 2 * k + 1))
      (LinExpr (QaryOrbitIndex q n)) :=
  fun row col => qaryBlockEntryExpr q n a k coeffExpr row.val col.val

@[simp]
theorem qaryBlockMatrixExpr_eval {q n a k : Nat}
    (coeffExpr : QaryOrbitIndex q n -> LinExpr (QaryOrbitIndex q n))
    (x : QaryX q n) :
    MatrixLinExpr.eval (qaryBlockMatrixExpr q n a k coeffExpr) x =
      qaryBlock q n a k (fun idx => (coeffExpr idx).eval x) := by
  ext row col
  simp [MatrixLinExpr.eval, qaryBlockMatrixExpr, qaryBlock]

/-- Named PSD matrix atoms in the q-ary reduced SDP. -/
inductive QaryMatrixAtom (n : Nat) where
  | primal : QaryBlockIndex n -> QaryMatrixAtom n
  | lasserre : QaryBlockIndex n -> QaryMatrixAtom n
deriving DecidableEq, Fintype

namespace QaryMatrixAtom

/-- Row/column type attached to each q-ary matrix atom. -/
abbrev Coord {n : Nat} : QaryMatrixAtom n -> Type
  | .primal idx => QaryBlockCoord idx
  | .lasserre idx => QaryBlockCoord idx

instance {n : Nat} (atom : QaryMatrixAtom n) : Fintype (Coord atom) := by
  cases atom <;> infer_instance

end QaryMatrixAtom

/-- Matrix expression associated to each named q-ary PSD atom. -/
noncomputable def qaryMatrixAtomExpr {q n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat) :
    forall atom : QaryMatrixAtom n,
      Matrix (QaryMatrixAtom.Coord atom) (QaryMatrixAtom.Coord atom)
        (LinExpr (QaryOrbitIndex q n))
  | .primal idx =>
      qaryBlockMatrixExpr q n idx.a idx.k (fun source => LinExpr.var source)
  | .lasserre idx =>
      qaryBlockMatrixExpr q n idx.a idx.k (qaryLasserreCoeffExpr lambda beta)

/-- Reduced q-ary constraints, staged by paper proposition. -/
structure QaryReducedConstraints
    (q n r : Nat) (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (x : QaryX q n) : Prop where
  -- Proposition 4.11
  basic : QaryBasicConstraints x
  -- Proposition 4.12
  semidefinite : QaryBlocksPSD x
  -- Proposition 4.14
  lasserre : QaryLasserreConstraints lambda beta x
  -- Proposition 4.17
  matrixCuts : QaryMatrixCutConstraints lambda beta x

/-- Existing q-ary reduced constraints imply nonnegativity of every named scalar atom. -/
theorem qaryScalarAtomExpr_nonneg_of_constraints {q n r : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat} {x : QaryX q n}
    (h : QaryReducedConstraints q n r lambda beta x) :
    LinearConstraints (qaryScalarAtomExpr lambda beta) x := by
  intro atom
  cases atom with
  | nonneg idx =>
      simpa [qaryScalarAtomExpr] using (h.basic.1 idx).1
  | diagonalUpper idx =>
      have hle := (h.basic.1 idx).2
      simp [qaryScalarAtomExpr]
      linarith
  | triangleLower idx =>
      have hle := (h.basic.2.1 idx).1
      simp [qaryScalarAtomExpr]
      linarith
  | distanceUpper idx =>
      have hle := (h.basic.2.1 idx).2
      simp [qaryScalarAtomExpr]
      linarith
  | symmetryLe idx idx' =>
      unfold qaryScalarAtomExpr
      by_cases hp :
          List.Perm [idx.i, idx.j, qaryOrbitDistanceIndex idx]
            [idx'.i, idx'.j, qaryOrbitDistanceIndex idx'] /\
            idx.t - idx.p = idx'.t - idx'.p
      · have heq := h.basic.2.2 idx idx' hp.1 hp.2
        simp [hp]
        linarith
      · simp [hp]
  | symmetryGe idx idx' =>
      unfold qaryScalarAtomExpr
      by_cases hp :
          List.Perm [idx.i, idx.j, qaryOrbitDistanceIndex idx]
            [idx'.i, idx'.j, qaryOrbitDistanceIndex idx'] /\
            idx.t - idx.p = idx'.t - idx'.p
      · have heq := h.basic.2.2 idx idx' hp.1 hp.2
        simp [hp]
        linarith
      · simp [hp]
  | matrixCut1 source =>
      have hcut := h.matrixCuts source
      dsimp [QaryMatrixCutConstraints] at hcut
      simpa [qaryScalarAtomExpr, sub_nonneg, mul_comm] using hcut.1
  | matrixCut2 source =>
      have hcut := h.matrixCuts source
      dsimp [QaryMatrixCutConstraints] at hcut
      simpa [qaryScalarAtomExpr, sub_nonneg, mul_comm] using hcut.2.1
  | matrixCut3 source =>
      have hcut := h.matrixCuts source
      dsimp [QaryMatrixCutConstraints] at hcut
      simpa [qaryScalarAtomExpr, sub_nonneg, mul_comm] using hcut.2.2.1
  | matrixCut4 source =>
      have hcut := h.matrixCuts source
      dsimp [QaryMatrixCutConstraints] at hcut
      simpa [qaryScalarAtomExpr, sub_nonneg, mul_comm, sub_eq_add_neg,
        add_assoc, add_comm, add_left_comm] using hcut.2.2.2

/-- Existing q-ary reduced constraints imply the exact SDP atom constraints. -/
theorem QaryReducedConstraints.toSDPConstraints {q n r : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat} {x : QaryX q n}
    (h : QaryReducedConstraints q n r lambda beta x) :
    SDPConstraints (qaryScalarAtomExpr lambda beta)
      (qaryMatrixAtomExpr lambda beta) x := by
  constructor
  · exact qaryScalarAtomExpr_nonneg_of_constraints h
  · intro atom
    cases atom with
    | primal idx =>
        simpa [qaryMatrixAtomExpr, qaryBlockForIndex] using h.semidefinite idx
    | lasserre idx =>
        simpa [qaryMatrixAtomExpr, qaryBlockForIndex, QaryLasserreConstraints,
          qaryLasserreX] using h.lasserre idx

/-- Top-down exact dual certificate interface for Theorem 4.18. -/
structure QaryReducedDualCertificate
    (q n r : Nat) (lambda : Fin (n + 1) -> Rat) (beta : Rat) (L : Nat) where
  bound : Rat
  cubeThreshold : ((L - 1 : Nat) : Rat) ^ 3 < bound
  objectiveCertificate :
    ObjectiveLowerCertificate (QaryOrbitIndex q n)
      (QaryReducedConstraints q n r lambda beta)
      (qaryReducedObjective q n)
      bound
  codeObjectiveBound :
    forall C : Finset (QaryWord q n),
      CoversFinset C r ->
        exists x : QaryX q n,
          QaryReducedConstraints q n r lambda beta x /\
            qaryReducedObjective q n x <= (C.card : Rat) ^ 3

/-- Nested product type for triples of q-ary codewords. -/
abbrev QaryCodeTriple (q n : Nat) :=
  ((QaryWord q n × QaryWord q n) × QaryWord q n)

/-- Finite set of ordered triples from a q-ary code. -/
def qaryCodeTriples {q n : Nat} (C : Finset (QaryWord q n)) :
    Finset (QaryCodeTriple q n) :=
  finsetCube C

/-- Coordinates where the first word of a q-ary triple differs from the base third word. -/
def qaryCodeTripleLeftSupport {q n : Nat} (triple : QaryCodeTriple q n) :
    Finset (Fin n) :=
  Finset.univ.filter (fun a => triple.1.1 a ≠ triple.2 a)

/-- Coordinates where the second word of a q-ary triple differs from the base third word. -/
def qaryCodeTripleRightSupport {q n : Nat} (triple : QaryCodeTriple q n) :
    Finset (Fin n) :=
  Finset.univ.filter (fun a => triple.1.2 a ≠ triple.2 a)

/--
Coordinates where the two relative nonzero symbols agree after the third word
is used as the base point.
-/
def qaryCodeTripleEqualRelativeSupport {q n : Nat} (triple : QaryCodeTriple q n) :
    Finset (Fin n) :=
  Finset.univ.filter (fun a => triple.1.1 a = triple.1.2 a ∧ triple.1.1 a ≠ triple.2 a)

private theorem qaryCodeTripleEqualRelativeSupport_subset_inter {q n : Nat}
    (triple : QaryCodeTriple q n) :
    qaryCodeTripleEqualRelativeSupport triple ⊆
      qaryCodeTripleLeftSupport triple ∩ qaryCodeTripleRightSupport triple := by
  intro a ha
  simp only [qaryCodeTripleEqualRelativeSupport, qaryCodeTripleLeftSupport,
    qaryCodeTripleRightSupport, Finset.mem_filter, Finset.mem_univ, true_and,
    Finset.mem_inter] at ha ⊢
  exact ⟨ha.2, by simpa [← ha.1] using ha.2⟩

private lemma qaryCodeTriple_dist_filter_eq {q n : Nat}
    (triple : QaryCodeTriple q n) :
    (Finset.univ.filter (fun a : Fin n => triple.1.1 a ≠ triple.1.2 a)) =
      ((qaryCodeTripleLeftSupport triple \ qaryCodeTripleRightSupport triple) ∪
        (qaryCodeTripleRightSupport triple \ qaryCodeTripleLeftSupport triple)) ∪
          ((qaryCodeTripleLeftSupport triple ∩ qaryCodeTripleRightSupport triple) \
            qaryCodeTripleEqualRelativeSupport triple) := by
  ext a
  constructor
  · intro ha
    rw [Finset.mem_filter] at ha
    by_cases hu : triple.1.1 a = triple.2 a
    · by_cases hv : triple.1.2 a = triple.2 a
      · exfalso
        exact ha.2 (by rw [hu, hv])
      · apply Finset.mem_union.mpr
        left
        apply Finset.mem_union.mpr
        right
        apply Finset.mem_sdiff.mpr
        constructor
        · simp [qaryCodeTripleRightSupport, hv]
        · simp [qaryCodeTripleLeftSupport, hu]
    · by_cases hv : triple.1.2 a = triple.2 a
      · apply Finset.mem_union.mpr
        left
        apply Finset.mem_union.mpr
        left
        apply Finset.mem_sdiff.mpr
        constructor
        · simp [qaryCodeTripleLeftSupport, hu]
        · simp [qaryCodeTripleRightSupport, hv]
      · apply Finset.mem_union.mpr
        right
        apply Finset.mem_sdiff.mpr
        constructor
        · simp [qaryCodeTripleLeftSupport, qaryCodeTripleRightSupport, hu, hv]
        · simp [qaryCodeTripleEqualRelativeSupport, hu, ha.2]
  · intro ha
    rw [Finset.mem_filter]
    refine ⟨Finset.mem_univ a, ?_⟩
    simp only [Finset.mem_union, Finset.mem_sdiff] at ha
    rcases ha with (⟨hua, hva⟩ | ⟨hva, hua⟩) | ⟨ht, hp⟩
    · simp only [qaryCodeTripleLeftSupport, qaryCodeTripleRightSupport,
        Finset.mem_filter, Finset.mem_univ, true_and] at hua hva
      intro h
      apply hva
      simpa [← h] using hua
    · simp only [qaryCodeTripleLeftSupport, qaryCodeTripleRightSupport,
        Finset.mem_filter, Finset.mem_univ, true_and] at hua hva
      intro h
      apply hua
      simpa [h] using hva
    · simp only [qaryCodeTripleLeftSupport, qaryCodeTripleRightSupport,
        qaryCodeTripleEqualRelativeSupport, Finset.mem_filter, Finset.mem_univ,
        true_and, Finset.mem_inter] at ht hp
      intro h
      apply hp
      exact ⟨h, ht.1⟩

/--
Canonical q-ary orbit classifier for ordered code triples.

The third word is the base word sent to zero; the first two words provide the
two relative words whose `(i,j,t,p)` orbit parameters are recorded.
-/
def qaryCodeTripleOrbitOf {q n : Nat} (triple : QaryCodeTriple q n) :
    QaryOrbitIndex q n where
  i := (qaryCodeTripleLeftSupport triple).card
  j := (qaryCodeTripleRightSupport triple).card
  t := (qaryCodeTripleLeftSupport triple ∩ qaryCodeTripleRightSupport triple).card
  p := (qaryCodeTripleEqualRelativeSupport triple).card
  hp_t := by
    exact Finset.card_le_card (qaryCodeTripleEqualRelativeSupport_subset_inter triple)
  ht_i := by
    exact Finset.card_le_card Finset.inter_subset_left
  ht_j := by
    exact Finset.card_le_card Finset.inter_subset_right
  hij := by
    let A := qaryCodeTripleLeftSupport triple
    let B := qaryCodeTripleRightSupport triple
    have hcard : (A ∪ B).card <= n := by
      calc
        (A ∪ B).card <= (Finset.univ : Finset (Fin n)).card :=
          Finset.card_le_card (by intro a _; simp)
        _ = n := by simp
    have hinc : (A ∪ B).card + (A ∩ B).card = A.card + B.card :=
      Finset.card_union_add_card_inter A B
    change A.card + B.card <= n + (A ∩ B).card
    omega

@[simp]
theorem qaryCodeTripleOrbitOf_i {q n : Nat} (triple : QaryCodeTriple q n) :
    (qaryCodeTripleOrbitOf triple).i =
      dist triple.1.1 triple.2 := by
  unfold qaryCodeTripleOrbitOf qaryCodeTripleLeftSupport dist hammingDist
  rfl

@[simp]
theorem qaryCodeTripleOrbitOf_j {q n : Nat} (triple : QaryCodeTriple q n) :
    (qaryCodeTripleOrbitOf triple).j =
      dist triple.1.2 triple.2 := by
  unfold qaryCodeTripleOrbitOf qaryCodeTripleRightSupport dist hammingDist
  rfl

@[simp]
theorem qaryCodeTripleOrbitOf_t {q n : Nat} (triple : QaryCodeTriple q n) :
    (qaryCodeTripleOrbitOf triple).t =
      (qaryCodeTripleLeftSupport triple ∩ qaryCodeTripleRightSupport triple).card := by
  rfl

@[simp]
theorem qaryCodeTripleOrbitOf_p {q n : Nat} (triple : QaryCodeTriple q n) :
    (qaryCodeTripleOrbitOf triple).p =
      (qaryCodeTripleEqualRelativeSupport triple).card := by
  rfl

/-- Swap the first two words in a q-ary code triple. -/
def qaryCodeTripleSwap12 {q n : Nat} (triple : QaryCodeTriple q n) :
    QaryCodeTriple q n :=
  ((triple.1.2, triple.1.1), triple.2)

theorem qaryCodeTripleSwap12_involutive {q n : Nat} :
    Function.Involutive (@qaryCodeTripleSwap12 q n) := by
  intro triple
  rfl

theorem qaryCodeTripleOrbitOf_swap12 {q n : Nat} (triple : QaryCodeTriple q n) :
    qaryCodeTripleOrbitOf (qaryCodeTripleSwap12 triple) =
      (qaryCodeTripleOrbitOf triple).swap := by
  apply qaryOrbitIndex_ext
  · rfl
  · rfl
  · change
      (qaryCodeTripleRightSupport triple ∩ qaryCodeTripleLeftSupport triple).card =
        (qaryCodeTripleLeftSupport triple ∩ qaryCodeTripleRightSupport triple).card
    rw [Finset.inter_comm]
  · have hset :
        qaryCodeTripleEqualRelativeSupport (qaryCodeTripleSwap12 triple) =
          qaryCodeTripleEqualRelativeSupport triple := by
      ext a
      constructor
      · intro ha
        simp only [qaryCodeTripleEqualRelativeSupport, qaryCodeTripleSwap12,
          Finset.mem_filter, Finset.mem_univ, true_and] at ha ⊢
        exact ⟨ha.1.symm, by simpa [ha.1] using ha.2⟩
      · intro ha
        simp only [qaryCodeTripleEqualRelativeSupport, qaryCodeTripleSwap12,
          Finset.mem_filter, Finset.mem_univ, true_and] at ha ⊢
        exact ⟨ha.1.symm, by simpa [ha.1] using ha.2⟩
    exact congrArg Finset.card hset

/-- Rebase a q-ary code triple from `(u,v)` over base `w` to `(u,w)` over base `v`. -/
def qaryCodeTripleRebaseRight {q n : Nat} (triple : QaryCodeTriple q n) :
    QaryCodeTriple q n :=
  ((triple.1.1, triple.2), triple.1.2)

theorem qaryCodeTripleRebaseRight_involutive {q n : Nat} :
    Function.Involutive (@qaryCodeTripleRebaseRight q n) := by
  intro triple
  rfl

/-- Rebase a q-ary code triple from `(u,v)` over base `w` to `(w,v)` over base `u`. -/
def qaryCodeTripleRebaseLeft {q n : Nat} (triple : QaryCodeTriple q n) :
    QaryCodeTriple q n :=
  ((triple.2, triple.1.2), triple.1.1)

theorem qaryCodeTripleRebaseLeft_involutive {q n : Nat} :
    Function.Involutive (@qaryCodeTripleRebaseLeft q n) := by
  intro triple
  rfl

private theorem qaryCodeTripleRebaseRight_inter_card {q n : Nat}
    (triple : QaryCodeTriple q n) :
    (qaryCodeTripleLeftSupport (qaryCodeTripleRebaseRight triple) ∩
        qaryCodeTripleRightSupport (qaryCodeTripleRebaseRight triple)).card =
      (qaryCodeTripleRightSupport triple).card -
        (qaryCodeTripleEqualRelativeSupport triple).card := by
  have hset :
      qaryCodeTripleLeftSupport (qaryCodeTripleRebaseRight triple) ∩
          qaryCodeTripleRightSupport (qaryCodeTripleRebaseRight triple) =
        qaryCodeTripleRightSupport triple \ qaryCodeTripleEqualRelativeSupport triple := by
    ext a
    simp only [qaryCodeTripleRebaseRight, qaryCodeTripleLeftSupport,
      qaryCodeTripleRightSupport, qaryCodeTripleEqualRelativeSupport,
      Finset.mem_inter, Finset.mem_sdiff, Finset.mem_filter, Finset.mem_univ,
      true_and, not_and]
    constructor
    · rintro ⟨huv, hwv⟩
      refine ⟨fun hvw => hwv hvw.symm, ?_⟩
      intro huv_eq _huw
      exact huv huv_eq
    · rintro ⟨hvw, hnot⟩
      refine ⟨?_, fun hwv => hvw hwv.symm⟩
      intro huv_eq
      exact hnot huv_eq (by simpa [huv_eq] using hvw)
  have hsub :
      qaryCodeTripleEqualRelativeSupport triple ⊆ qaryCodeTripleRightSupport triple := by
    intro a ha
    have hmem := (qaryCodeTripleEqualRelativeSupport_subset_inter triple) ha
    rw [Finset.mem_inter] at hmem
    exact hmem.2
  rw [hset, Finset.card_sdiff_of_subset hsub]

private theorem qaryCodeTripleRebaseRight_equal_card {q n : Nat}
    (triple : QaryCodeTriple q n) :
    (qaryCodeTripleEqualRelativeSupport (qaryCodeTripleRebaseRight triple)).card =
      (qaryCodeTripleRightSupport triple).card -
        (qaryCodeTripleLeftSupport triple ∩ qaryCodeTripleRightSupport triple).card := by
  have hset :
      qaryCodeTripleEqualRelativeSupport (qaryCodeTripleRebaseRight triple) =
        qaryCodeTripleRightSupport triple \ qaryCodeTripleLeftSupport triple := by
    ext a
    simp only [qaryCodeTripleRebaseRight, qaryCodeTripleEqualRelativeSupport,
      qaryCodeTripleLeftSupport, qaryCodeTripleRightSupport, Finset.mem_sdiff,
      Finset.mem_filter, Finset.mem_univ, true_and]
    constructor
    · rintro ⟨huw, huv⟩
      exact ⟨fun hvw => huv (by rw [huw]; exact hvw.symm), by simp [huw]⟩
    · rintro ⟨hvw, hnuw⟩
      have huw : triple.1.1 a = triple.2 a := by
        by_contra hne
        exact hnuw hne
      exact ⟨huw, fun huv => hvw (by rw [← huv, huw])⟩
  rw [hset, Finset.card_sdiff]

theorem qaryCodeTriple_dist_from_orbit {q n : Nat} (triple : QaryCodeTriple q n) :
    dist triple.1.1 triple.1.2 =
      (qaryCodeTripleOrbitOf triple).i + (qaryCodeTripleOrbitOf triple).j -
        (qaryCodeTripleOrbitOf triple).t - (qaryCodeTripleOrbitOf triple).p := by
  let A := qaryCodeTripleLeftSupport triple
  let B := qaryCodeTripleRightSupport triple
  let P := qaryCodeTripleEqualRelativeSupport triple
  let T := A ∩ B
  have hPTsub : P ⊆ T := by
    intro a ha
    change a ∈ A ∩ B
    exact qaryCodeTripleEqualRelativeSupport_subset_inter triple ha
  have hfilter :
      (Finset.univ.filter (fun a : Fin n => triple.1.1 a ≠ triple.1.2 a)) =
        ((A \ B) ∪ (B \ A)) ∪ (T \ P) :=
    qaryCodeTriple_dist_filter_eq triple
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

theorem qaryCodeTripleOrbitOf_rebaseRight {q n : Nat} (triple : QaryCodeTriple q n) :
    qaryCodeTripleOrbitOf (qaryCodeTripleRebaseRight triple) =
      (qaryCodeTripleOrbitOf triple).rebaseRight := by
  apply qaryOrbitIndex_ext
  · simpa [qaryCodeTripleRebaseRight, qaryOrbitDistanceIndex] using
      qaryCodeTriple_dist_from_orbit triple
  · simp [qaryCodeTripleRebaseRight, dist_comm]
  · simpa [qaryCodeTripleOrbitOf, QaryOrbitIndex.rebaseRight] using
      qaryCodeTripleRebaseRight_inter_card triple
  · simpa [qaryCodeTripleOrbitOf, QaryOrbitIndex.rebaseRight] using
      qaryCodeTripleRebaseRight_equal_card triple

theorem qaryCodeTripleOrbitOf_rebaseLeft {q n : Nat} (triple : QaryCodeTriple q n) :
    qaryCodeTripleOrbitOf (qaryCodeTripleRebaseLeft triple) =
      (qaryCodeTripleOrbitOf triple).rebaseLeft := by
  change
    qaryCodeTripleOrbitOf
        (qaryCodeTripleSwap12
          (qaryCodeTripleRebaseRight (qaryCodeTripleSwap12 triple))) =
      (qaryCodeTripleOrbitOf triple).rebaseLeft
  rw [qaryCodeTripleOrbitOf_swap12, qaryCodeTripleOrbitOf_rebaseRight,
    qaryCodeTripleOrbitOf_swap12]
  rfl

/-- The code-triple cell classified by one q-ary orbit index. -/
def qaryCodeTripleOrbitCell {q n : Nat} (C : Finset (QaryWord q n))
    (idx : QaryOrbitIndex q n) : Finset (QaryCodeTriple q n) :=
  (qaryCodeTriples C).filter (fun triple => qaryCodeTripleOrbitOf triple = idx)

@[simp]
theorem mem_qaryCodeTripleOrbitCell {q n : Nat}
    {C : Finset (QaryWord q n)} {idx : QaryOrbitIndex q n}
    {triple : QaryCodeTriple q n} :
    triple ∈ qaryCodeTripleOrbitCell C idx ↔
      triple.1.1 ∈ C ∧ triple.1.2 ∈ C ∧ triple.2 ∈ C ∧
        qaryCodeTripleOrbitOf triple = idx := by
  simp [qaryCodeTripleOrbitCell, qaryCodeTriples, and_assoc]

/-- The zero-cell q-ary index with the prescribed first distance. -/
def qaryCodeCellZeroIndex {q n : Nat} (i : Nat) (hi : i <= n) :
    QaryOrbitIndex q n where
  i := i
  j := 0
  t := 0
  p := 0
  hp_t := Nat.le_refl 0
  ht_i := Nat.zero_le i
  ht_j := Nat.le_refl 0
  hij := by simpa using hi

/-- Project a q-ary code triple to the zero-cell triple with the same first/base pair. -/
def qaryCodeTripleLeftProjection {q n : Nat} (triple : QaryCodeTriple q n) :
    QaryCodeTriple q n :=
  ((triple.1.1, triple.2), triple.2)

theorem qaryCodeTripleLeftProjection_mem_zero_cell {q n : Nat}
    {C : Finset (QaryWord q n)} {idx : QaryOrbitIndex q n}
    {triple : QaryCodeTriple q n} :
    triple ∈ qaryCodeTripleOrbitCell C idx ->
      qaryCodeTripleLeftProjection triple ∈
        qaryCodeTripleOrbitCell C (qaryCodeCellZeroIndex idx.i idx.i_le_n) := by
  intro h
  rw [mem_qaryCodeTripleOrbitCell] at h ⊢
  refine ⟨h.1, h.2.2.1, h.2.2.1, ?_⟩
  apply qaryOrbitIndex_ext
  · simpa [qaryCodeTripleLeftProjection] using
      congrArg QaryOrbitIndex.i h.2.2.2
  · simp [qaryCodeTripleLeftProjection, qaryCodeCellZeroIndex]
  · simp [qaryCodeTripleLeftProjection, qaryCodeTripleOrbitOf,
      qaryCodeTripleRightSupport, qaryCodeCellZeroIndex]
  · simp [qaryCodeTripleLeftProjection, qaryCodeTripleOrbitOf,
      qaryCodeTripleRightSupport, qaryCodeTripleEqualRelativeSupport,
      qaryCodeCellZeroIndex]

theorem qary_one_excluded_symbol_card {q : Nat} (a : Fin q) :
    Fintype.card {z : Fin q // z ≠ a} = q - 1 := by
  classical
  have hcompl :=
    Fintype.card_subtype_compl (fun z : Fin q => z = a)
  simp [Fintype.card_fin] at hcompl ⊢

theorem qary_two_excluded_symbol_card {q : Nat} {a b : Fin q}
    (hab : a ≠ b) :
    Fintype.card {z : Fin q // z ≠ a ∧ z ≠ b} = q - 2 := by
  classical
  have hcompl :=
    Fintype.card_subtype_compl (fun z : Fin q => z = a ∨ z = b)
  have hpair :
      Fintype.card {z : Fin q // z = a ∨ z = b} = 2 :=
    Fintype.card_subtype_eq_or_eq_of_ne hab
  have htarget :
      Fintype.card {z : Fin q // ¬(z = a ∨ z = b)} =
        Fintype.card {z : Fin q // z ≠ a ∧ z ≠ b} := by
    refine Fintype.card_congr ?_
    exact {
      toFun := fun z => ⟨z.1, by simpa [not_or] using z.2⟩
      invFun := fun z => ⟨z.1, by simpa [not_or] using z.2⟩
      left_inv := by intro z; cases z; rfl
      right_inv := by intro z; cases z; rfl
    }
  rw [← htarget]
  simpa [hpair, Fintype.card_fin] using hcompl

theorem qary_one_excluded_assignment_card {q n : Nat}
    (base : QaryWord q n) (S : Finset (Fin n)) :
    Fintype.card
        (forall coord : {coord : Fin n // coord ∈ S},
          {z : Fin q // z ≠ base coord.1}) =
      (q - 1) ^ S.card := by
  classical
  rw [Fintype.card_pi]
  calc
    (∏ coord : {coord : Fin n // coord ∈ S},
        Fintype.card {z : Fin q // z ≠ base coord.1}) =
        ∏ _coord : {coord : Fin n // coord ∈ S}, (q - 1) := by
          apply Finset.prod_congr rfl
          intro coord _
          exact qary_one_excluded_symbol_card (base coord.1)
    _ = (q - 1) ^ Fintype.card {coord : Fin n // coord ∈ S} := by
          simp
    _ = (q - 1) ^ S.card := by
          simp [Fintype.card_subtype]

theorem qary_two_excluded_assignment_card {q n : Nat}
    (left base : QaryWord q n) (S : Finset (Fin n))
    (hS : forall coord, coord ∈ S -> left coord ≠ base coord) :
    Fintype.card
        (forall coord : {coord : Fin n // coord ∈ S},
          {z : Fin q // z ≠ base coord.1 ∧ z ≠ left coord.1}) =
      (q - 2) ^ S.card := by
  classical
  rw [Fintype.card_pi]
  calc
    (∏ coord : {coord : Fin n // coord ∈ S},
        Fintype.card
          {z : Fin q // z ≠ base coord.1 ∧ z ≠ left coord.1}) =
        ∏ _coord : {coord : Fin n // coord ∈ S}, (q - 2) := by
          apply Finset.prod_congr rfl
          intro coord _
          exact qary_two_excluded_symbol_card
            (a := base coord.1) (b := left coord.1)
            (by
              intro h
              exact hS coord.1 coord.2 h.symm)
    _ = (q - 2) ^ Fintype.card {coord : Fin n // coord ∈ S} := by
          simp
    _ = (q - 2) ^ S.card := by
          simp [Fintype.card_subtype]

/-- Coordinate-set choices in a q-ary projection fiber. -/
abbrev QaryProjectionSupportChoice {q n : Nat}
    (A : Finset (Fin n)) (idx : QaryOrbitIndex q n) :=
  Sigma (fun P : {P : Finset (Fin n) // P ∈ A.powersetCard idx.p} =>
    Sigma (fun _R : {R : Finset (Fin n) //
        R ∈ (A \ P.1).powersetCard (idx.t - idx.p)} =>
      {B : Finset (Fin n) //
        B ∈ (((Finset.univ : Finset (Fin n)) \ A).powersetCard
          (idx.j - idx.t))}))

theorem qaryProjectionSupportChoice_card {q n : Nat}
    (A : Finset (Fin n)) (idx : QaryOrbitIndex q n)
    (hAcard : A.card = idx.i) :
    Fintype.card (QaryProjectionSupportChoice A idx) =
      Nat.choose idx.i idx.p *
        Nat.choose (idx.i - idx.p) (idx.t - idx.p) *
          Nat.choose (n - idx.i) (idx.j - idx.t) := by
  classical
  have hAuniv : A ⊆ (Finset.univ : Finset (Fin n)) := by
    intro a _
    simp
  have hcomp_card :
      (((Finset.univ : Finset (Fin n)) \ A).card) = n - idx.i := by
    rw [Finset.card_sdiff_of_subset hAuniv]
    simp [hAcard]
  unfold QaryProjectionSupportChoice
  rw [Fintype.card_sigma]
  calc
    (∑ P : {P : Finset (Fin n) // P ∈ A.powersetCard idx.p},
        Fintype.card
          (Sigma (fun R : {R : Finset (Fin n) //
              R ∈ (A \ P.1).powersetCard (idx.t - idx.p)} =>
            {B : Finset (Fin n) //
              B ∈ ((Finset.univ \ A).powersetCard (idx.j - idx.t))}))) =
        ∑ _P : {P : Finset (Fin n) // P ∈ A.powersetCard idx.p},
          Nat.choose (idx.i - idx.p) (idx.t - idx.p) *
            Nat.choose (n - idx.i) (idx.j - idx.t) := by
          apply Finset.sum_congr rfl
          intro P _
          have hP := Finset.mem_powersetCard.mp P.2
          have hPcard : (A \ P.1).card = idx.i - idx.p := by
            rw [Finset.card_sdiff_of_subset hP.1]
            simp [hAcard, hP.2]
          have hRcount :
              Fintype.card
                {R : Finset (Fin n) //
                  R ∈ (A \ P.1).powersetCard (idx.t - idx.p)} =
                Nat.choose (idx.i - idx.p) (idx.t - idx.p) := by
            rw [Fintype.card_subtype]
            change
              ((Finset.univ : Finset (Finset (Fin n))).filter
                (fun R => R ∈ (A \ P.1).powersetCard (idx.t - idx.p))).card =
                  Nat.choose (idx.i - idx.p) (idx.t - idx.p)
            rw [show
                (Finset.univ : Finset (Finset (Fin n))).filter
                  (fun R => R ∈ (A \ P.1).powersetCard (idx.t - idx.p)) =
                  (A \ P.1).powersetCard (idx.t - idx.p) by
              ext R
              simp]
            rw [Finset.card_powersetCard, hPcard]
          have hBcount :
              Fintype.card
                {B : Finset (Fin n) //
                  B ∈ ((Finset.univ \ A).powersetCard (idx.j - idx.t))} =
                Nat.choose (n - idx.i) (idx.j - idx.t) := by
            rw [Fintype.card_subtype]
            change
              ((Finset.univ : Finset (Finset (Fin n))).filter
                (fun B => B ∈ ((Finset.univ : Finset (Fin n)) \ A).powersetCard
                  (idx.j - idx.t))).card =
                    Nat.choose (n - idx.i) (idx.j - idx.t)
            rw [show
                (Finset.univ : Finset (Finset (Fin n))).filter
                  (fun B => B ∈ ((Finset.univ : Finset (Fin n)) \ A).powersetCard
                    (idx.j - idx.t)) =
                    ((Finset.univ : Finset (Fin n)) \ A).powersetCard
                      (idx.j - idx.t) by
              ext B
              simp]
            rw [Finset.card_powersetCard, hcomp_card]
          rw [Fintype.card_sigma]
          calc
            (∑ R : {R : Finset (Fin n) //
                R ∈ (A \ P.1).powersetCard (idx.t - idx.p)},
              Fintype.card
                {B : Finset (Fin n) //
                  B ∈ ((Finset.univ \ A).powersetCard (idx.j - idx.t))}) =
                ∑ _R : {R : Finset (Fin n) //
                    R ∈ (A \ P.1).powersetCard (idx.t - idx.p)},
                  Nat.choose (n - idx.i) (idx.j - idx.t) := by
                  apply Finset.sum_congr rfl
                  intro _R _
                  exact hBcount
            _ = Nat.choose (idx.i - idx.p) (idx.t - idx.p) *
                Nat.choose (n - idx.i) (idx.j - idx.t) := by
                  rw [Finset.sum_const, nsmul_eq_mul]
                  change
                    Fintype.card
                      {R : Finset (Fin n) //
                        R ∈ (A \ P.1).powersetCard (idx.t - idx.p)} *
                      Nat.choose (n - idx.i) (idx.j - idx.t) =
                        Nat.choose (idx.i - idx.p) (idx.t - idx.p) *
                          Nat.choose (n - idx.i) (idx.j - idx.t)
                  rw [hRcount]
    _ = Nat.choose idx.i idx.p *
        Nat.choose (idx.i - idx.p) (idx.t - idx.p) *
          Nat.choose (n - idx.i) (idx.j - idx.t) := by
          have hPcount :
              Fintype.card
                {P : Finset (Fin n) // P ∈ A.powersetCard idx.p} =
                Nat.choose idx.i idx.p := by
            rw [Fintype.card_subtype]
            change
              ((Finset.univ : Finset (Finset (Fin n))).filter
                (fun P => P ∈ A.powersetCard idx.p)).card =
                  Nat.choose idx.i idx.p
            rw [show
                (Finset.univ : Finset (Finset (Fin n))).filter
                  (fun P => P ∈ A.powersetCard idx.p) =
                  A.powersetCard idx.p by
              ext P
              simp]
            rw [Finset.card_powersetCard, hAcard]
          rw [Finset.sum_const, nsmul_eq_mul]
          change
            Fintype.card {P : Finset (Fin n) // P ∈ A.powersetCard idx.p} *
              (Nat.choose (idx.i - idx.p) (idx.t - idx.p) *
                Nat.choose (n - idx.i) (idx.j - idx.t)) =
              Nat.choose idx.i idx.p *
                Nat.choose (idx.i - idx.p) (idx.t - idx.p) *
                  Nat.choose (n - idx.i) (idx.j - idx.t)
          rw [hPcount]
          rw [Nat.mul_assoc]

/-- Symbol assignments over fixed q-ary projection-fiber support choices. -/
abbrev QaryProjectionFiberAssignment {q n : Nat}
    (base : QaryCodeTriple q n) {idx : QaryOrbitIndex q n}
    (support : QaryProjectionSupportChoice (qaryCodeTripleLeftSupport base) idx) :=
  (forall coord : {coord : Fin n // coord ∈ support.2.1.1},
      {z : Fin q // z ≠ base.2 coord.1 ∧ z ≠ base.1.1 coord.1}) ×
    (forall coord : {coord : Fin n // coord ∈ support.2.2.1},
      {z : Fin q // z ≠ base.2 coord.1})

theorem qaryProjectionFiberAssignment_card {q n : Nat}
    (base : QaryCodeTriple q n) {idx : QaryOrbitIndex q n}
    (support : QaryProjectionSupportChoice (qaryCodeTripleLeftSupport base) idx) :
    Fintype.card (QaryProjectionFiberAssignment base support) =
      (q - 2) ^ (idx.t - idx.p) *
        (q - 1) ^ (idx.j - idx.t) := by
  classical
  let R : Finset (Fin n) := support.2.1.1
  let B : Finset (Fin n) := support.2.2.1
  have hRmem :
      R ∈
        (qaryCodeTripleLeftSupport base \ support.1.1).powersetCard
          (idx.t - idx.p) := by
    dsimp [R]
    exact support.2.1.2
  have hBmem :
      B ∈
        (((Finset.univ : Finset (Fin n)) \ qaryCodeTripleLeftSupport base).powersetCard
          (idx.j - idx.t)) := by
    dsimp [B]
    exact support.2.2.2
  have hR := Finset.mem_powersetCard.mp hRmem
  have hB := Finset.mem_powersetCard.mp hBmem
  have hRsubLeft : R ⊆ qaryCodeTripleLeftSupport base :=
    hR.1.trans Finset.sdiff_subset
  have hRnonzero :
      forall coord, coord ∈ R -> base.1.1 coord ≠ base.2 coord := by
    intro coord hcoord
    have hleft := hRsubLeft hcoord
    simpa [qaryCodeTripleLeftSupport] using hleft
  unfold QaryProjectionFiberAssignment
  rw [Fintype.card_prod]
  rw [qary_two_excluded_assignment_card base.1.1 base.2 R hRnonzero]
  rw [qary_one_excluded_assignment_card base.2 B]
  rw [hR.2, hB.2]

/-- Full support and symbol choices in a q-ary projection fiber. -/
abbrev QaryProjectionFiberChoice {q n : Nat}
    (base : QaryCodeTriple q n) (idx : QaryOrbitIndex q n) :=
  Sigma (fun support :
      QaryProjectionSupportChoice (qaryCodeTripleLeftSupport base) idx =>
    QaryProjectionFiberAssignment base support)

/-- Decode a q-ary projection-fiber choice into the corresponding triple. -/
def qaryProjectionFiberChoiceDecode {q n : Nat}
    {base : QaryCodeTriple q n} {idx : QaryOrbitIndex q n}
    (choice : QaryProjectionFiberChoice base idx) :
    QaryCodeTriple q n :=
  let P : Finset (Fin n) := choice.1.1.1
  let R : Finset (Fin n) := choice.1.2.1.1
  let B : Finset (Fin n) := choice.1.2.2.1
  let right : QaryWord q n := fun coord =>
    if _hP : coord ∈ P then
      base.1.1 coord
    else if hR : coord ∈ R then
      (choice.2.1 ⟨coord, hR⟩).1
    else if hB : coord ∈ B then
      (choice.2.2 ⟨coord, hB⟩).1
    else
      base.2 coord
  ((base.1.1, right), base.2)

theorem qaryProjectionFiberChoice_card {q n : Nat}
    (base : QaryCodeTriple q n) (idx : QaryOrbitIndex q n)
    (hbase :
      qaryCodeTripleOrbitOf base =
        qaryCodeCellZeroIndex idx.i idx.i_le_n) :
    Fintype.card (QaryProjectionFiberChoice base idx) =
      qaryOrbitFiberMultiplicityNat q n idx := by
  classical
  let A : Finset (Fin n) := qaryCodeTripleLeftSupport base
  have hAcard : A.card = idx.i := by
    have hi := congrArg QaryOrbitIndex.i hbase
    simpa [A, qaryCodeCellZeroIndex] using hi
  have hsupport :=
    qaryProjectionSupportChoice_card A idx hAcard
  unfold QaryProjectionFiberChoice QaryProjectionFiberAssignment
  rw [Fintype.card_sigma]
  calc
    (∑ support : QaryProjectionSupportChoice A idx,
        Fintype.card
          ((forall coord : {coord : Fin n // coord ∈ support.2.1.1},
              {z : Fin q // z ≠ base.2 coord.1 ∧ z ≠ base.1.1 coord.1}) ×
            (forall coord : {coord : Fin n // coord ∈ support.2.2.1},
              {z : Fin q // z ≠ base.2 coord.1}))) =
        ∑ _support : QaryProjectionSupportChoice A idx,
          (q - 2) ^ (idx.t - idx.p) *
            (q - 1) ^ (idx.j - idx.t) := by
          apply Finset.sum_congr rfl
          intro support _
          exact qaryProjectionFiberAssignment_card base support
    _ = Fintype.card (QaryProjectionSupportChoice A idx) *
        ((q - 2) ^ (idx.t - idx.p) *
          (q - 1) ^ (idx.j - idx.t)) := by
          rw [Finset.sum_const, nsmul_eq_mul]
          change Fintype.card (QaryProjectionSupportChoice A idx) *
              ((q - 2) ^ (idx.t - idx.p) *
                (q - 1) ^ (idx.j - idx.t)) =
            Fintype.card (QaryProjectionSupportChoice A idx) *
              ((q - 2) ^ (idx.t - idx.p) *
                (q - 1) ^ (idx.j - idx.t))
          rfl
    _ = qaryOrbitFiberMultiplicityNat q n idx := by
          rw [hsupport]
          unfold qaryOrbitFiberMultiplicityNat
          ring

private theorem qaryOrbitIndex_swap_swap {q n : Nat} (idx : QaryOrbitIndex q n) :
    idx.swap.swap = idx := by
  cases idx
  simp [QaryOrbitIndex.swap]

theorem qaryCodeTripleSwap12_mem_orbit_cell {q n : Nat}
    {C : Finset (QaryWord q n)} {idx : QaryOrbitIndex q n}
    {triple : QaryCodeTriple q n} :
    triple ∈ qaryCodeTripleOrbitCell C idx ->
      qaryCodeTripleSwap12 triple ∈ qaryCodeTripleOrbitCell C idx.swap := by
  intro h
  rw [mem_qaryCodeTripleOrbitCell] at h ⊢
  exact ⟨h.2.1, h.1, h.2.2.1, by
    rw [qaryCodeTripleOrbitOf_swap12, h.2.2.2]⟩

theorem qaryCodeTripleOrbitCell_card_swap {q n : Nat}
    (C : Finset (QaryWord q n)) (idx : QaryOrbitIndex q n) :
    (qaryCodeTripleOrbitCell C idx.swap).card =
      (qaryCodeTripleOrbitCell C idx).card := by
  symm
  apply Finset.card_bij (fun triple _ => qaryCodeTripleSwap12 triple)
  · intro triple htriple
    exact qaryCodeTripleSwap12_mem_orbit_cell htriple
  · intro a _ b _ h
    have h' := congrArg qaryCodeTripleSwap12 h
    simpa [qaryCodeTripleSwap12_involutive] using h'
  · intro b hb
    refine ⟨qaryCodeTripleSwap12 b, ?_, ?_⟩
    · have hb' := qaryCodeTripleSwap12_mem_orbit_cell (idx := idx.swap) hb
      simpa [qaryOrbitIndex_swap_swap] using hb'
    · exact qaryCodeTripleSwap12_involutive b

theorem qaryCodeTripleRebaseRight_mem_orbit_cell {q n : Nat}
    {C : Finset (QaryWord q n)} {idx : QaryOrbitIndex q n}
    {triple : QaryCodeTriple q n} :
    triple ∈ qaryCodeTripleOrbitCell C idx ->
      qaryCodeTripleRebaseRight triple ∈
        qaryCodeTripleOrbitCell C idx.rebaseRight := by
  intro h
  rw [mem_qaryCodeTripleOrbitCell] at h ⊢
  exact ⟨h.1, h.2.2.1, h.2.1, by
    rw [qaryCodeTripleOrbitOf_rebaseRight, h.2.2.2]⟩

theorem qaryCodeTripleOrbitCell_card_rebaseRight {q n : Nat}
    (C : Finset (QaryWord q n)) (idx : QaryOrbitIndex q n) :
    (qaryCodeTripleOrbitCell C idx.rebaseRight).card =
      (qaryCodeTripleOrbitCell C idx).card := by
  symm
  apply Finset.card_bij (fun triple _ => qaryCodeTripleRebaseRight triple)
  · intro triple htriple
    exact qaryCodeTripleRebaseRight_mem_orbit_cell htriple
  · intro a _ b _ h
    have h' := congrArg qaryCodeTripleRebaseRight h
    simpa [qaryCodeTripleRebaseRight_involutive] using h'
  · intro b hb
    refine ⟨qaryCodeTripleRebaseRight b, ?_, ?_⟩
    · have hb' := qaryCodeTripleRebaseRight_mem_orbit_cell
        (idx := idx.rebaseRight) hb
      simpa [qaryOrbitIndex_rebaseRight_rebaseRight] using hb'
    · exact qaryCodeTripleRebaseRight_involutive b

theorem qaryCodeTripleRebaseLeft_mem_orbit_cell {q n : Nat}
    {C : Finset (QaryWord q n)} {idx : QaryOrbitIndex q n}
    {triple : QaryCodeTriple q n} :
    triple ∈ qaryCodeTripleOrbitCell C idx ->
      qaryCodeTripleRebaseLeft triple ∈
        qaryCodeTripleOrbitCell C idx.rebaseLeft := by
  intro h
  rw [mem_qaryCodeTripleOrbitCell] at h ⊢
  exact ⟨h.2.2.1, h.2.1, h.1, by
    rw [qaryCodeTripleOrbitOf_rebaseLeft, h.2.2.2]⟩

theorem qaryCodeTripleOrbitCell_card_rebaseLeft {q n : Nat}
    (C : Finset (QaryWord q n)) (idx : QaryOrbitIndex q n) :
    (qaryCodeTripleOrbitCell C idx.rebaseLeft).card =
      (qaryCodeTripleOrbitCell C idx).card := by
  symm
  apply Finset.card_bij (fun triple _ => qaryCodeTripleRebaseLeft triple)
  · intro triple htriple
    exact qaryCodeTripleRebaseLeft_mem_orbit_cell htriple
  · intro a _ b _ h
    have h' := congrArg qaryCodeTripleRebaseLeft h
    simpa [qaryCodeTripleRebaseLeft_involutive] using h'
  · intro b hb
    refine ⟨qaryCodeTripleRebaseLeft b, ?_, ?_⟩
    · have hb' := qaryCodeTripleRebaseLeft_mem_orbit_cell
        (idx := idx.rebaseLeft) hb
      simpa [qaryOrbitIndex_rebaseLeft_rebaseLeft] using hb'
    · exact qaryCodeTripleRebaseLeft_involutive b

/-- Denominator used to recover reduced q-ary variables from orbit-cell counts. -/
def qaryCodeCellDenominator (q n : Nat) (idx : QaryOrbitIndex q n) : Rat :=
  (((q ^ n : Nat) : Rat)) * qaryOrbitMultiplicity q n idx

theorem qaryCodeCellDenominator_pos {q n : Nat} (hq : 3 <= q)
    (idx : QaryOrbitIndex q n) :
    0 < qaryCodeCellDenominator q n idx := by
  have hqpos : 0 < q := by omega
  have hscale_nat : 0 < q ^ n := Nat.pow_pos hqpos
  have hscale : 0 < (((q ^ n : Nat) : Rat)) := by exact_mod_cast hscale_nat
  unfold qaryCodeCellDenominator
  exact mul_pos hscale (qaryOrbitMultiplicity_pos hq idx)

theorem qaryCodeCellDenominator_ne_zero {q n : Nat} (hq : 3 <= q)
    (idx : QaryOrbitIndex q n) :
    qaryCodeCellDenominator q n idx ≠ 0 :=
  (qaryCodeCellDenominator_pos hq idx).ne'

theorem qaryCodeCellDenominator_eq_shell_mul_fiber
    (q n : Nat) (idx : QaryOrbitIndex q n) :
    qaryCodeCellDenominator q n idx =
      (((q ^ n : Nat) : Rat)) * (((q - 1 : Nat) : Rat) ^ idx.i) *
        (Nat.choose n idx.i : Rat) * qaryOrbitFiberMultiplicity q n idx := by
  unfold qaryCodeCellDenominator
  rw [qaryOrbitMultiplicity_eq_shell_mul_fiber]
  ring

theorem qaryCodeCellDenominator_zeroIndex
    {q n d : Nat} (hd : d <= n) :
    qaryCodeCellDenominator q n
        (QaryOrbitIndex.mk d 0 0 0 (Nat.le_refl 0) (Nat.zero_le d)
          (Nat.le_refl 0) (by omega)) =
      (((q ^ n : Nat) : Rat)) * (((q - 1 : Nat) : Rat) ^ d) *
        (Nat.choose n d : Rat) := by
  unfold qaryCodeCellDenominator qaryOrbitMultiplicity
  simp
  ring

theorem qaryCodeCellDenominator_swap (q n : Nat) (idx : QaryOrbitIndex q n) :
    qaryCodeCellDenominator q n idx.swap = qaryCodeCellDenominator q n idx := by
  unfold qaryCodeCellDenominator
  rw [qaryOrbitMultiplicity_swap]

theorem qaryCodeCellDenominator_rebaseRight
    (q n : Nat) (idx : QaryOrbitIndex q n) :
    qaryCodeCellDenominator q n idx.rebaseRight =
      qaryCodeCellDenominator q n idx := by
  unfold qaryCodeCellDenominator
  rw [qaryOrbitMultiplicity_rebaseRight]

theorem qaryCodeCellDenominator_rebaseLeft
    (q n : Nat) (idx : QaryOrbitIndex q n) :
    qaryCodeCellDenominator q n idx.rebaseLeft =
      qaryCodeCellDenominator q n idx := by
  unfold qaryCodeCellDenominator
  rw [qaryOrbitMultiplicity_rebaseLeft]

/-- Reduced q-ary vector obtained by normalizing code-triple orbit-cell counts. -/
def qaryCodeCellX {q n : Nat} (C : Finset (QaryWord q n)) : QaryX q n :=
  fun idx => ((qaryCodeTripleOrbitCell C idx).card : Rat) /
    qaryCodeCellDenominator q n idx

theorem qaryCodeCellX_nonneg {q n : Nat}
    (hq : 3 <= q) (C : Finset (QaryWord q n)) (idx : QaryOrbitIndex q n) :
    0 <= qaryCodeCellX C idx := by
  have hcard : 0 <= ((qaryCodeTripleOrbitCell C idx).card : Rat) := by
    exact_mod_cast (Nat.zero_le (qaryCodeTripleOrbitCell C idx).card)
  unfold qaryCodeCellX
  exact div_nonneg hcard (le_of_lt (qaryCodeCellDenominator_pos hq idx))

theorem qaryCodeCellX_all_nonneg {q n : Nat}
    (hq : 3 <= q) (C : Finset (QaryWord q n)) :
    forall idx : QaryOrbitIndex q n, 0 <= qaryCodeCellX C idx :=
  qaryCodeCellX_nonneg hq C

theorem qaryCodeCellX_swap {q n : Nat}
    (C : Finset (QaryWord q n)) (idx : QaryOrbitIndex q n) :
    qaryCodeCellX C idx.swap = qaryCodeCellX C idx := by
  unfold qaryCodeCellX
  rw [qaryCodeTripleOrbitCell_card_swap, qaryCodeCellDenominator_swap]

theorem qaryCodeCellX_rebaseRight {q n : Nat}
    (C : Finset (QaryWord q n)) (idx : QaryOrbitIndex q n) :
    qaryCodeCellX C idx.rebaseRight = qaryCodeCellX C idx := by
  unfold qaryCodeCellX
  rw [qaryCodeTripleOrbitCell_card_rebaseRight, qaryCodeCellDenominator_rebaseRight]

theorem qaryCodeCellX_rebaseLeft {q n : Nat}
    (C : Finset (QaryWord q n)) (idx : QaryOrbitIndex q n) :
    qaryCodeCellX C idx.rebaseLeft = qaryCodeCellX C idx := by
  change qaryCodeCellX C (idx.swap.rebaseRight.swap) = qaryCodeCellX C idx
  rw [qaryCodeCellX_swap, qaryCodeCellX_rebaseRight, qaryCodeCellX_swap]

theorem qaryCodeCellX_distance_gap_perm {q n : Nat}
    (C : Finset (QaryWord q n)) {idx idx' : QaryOrbitIndex q n}
    (hp : List.Perm [idx.i, idx.j, qaryOrbitDistanceIndex idx]
      [idx'.i, idx'.j, qaryOrbitDistanceIndex idx'])
    (hgap : idx.t - idx.p = idx'.t - idx'.p) :
    qaryCodeCellX C idx' = qaryCodeCellX C idx := by
  rcases qary_list_perm_three_cases hp with
      ⟨hi, hj, hd⟩ |
      ⟨hi, hj, hd⟩ |
      ⟨hi, hj, hd⟩ |
      ⟨hi, hj, hd⟩ |
      ⟨hi, hj, hd⟩ |
      ⟨hi, hj, hd⟩
  · have hidx : idx' = idx := by
      apply qaryOrbitIndex_ext
      · exact hi
      · exact hj
      · unfold qaryOrbitDistanceIndex at hd
        have hp_t := idx.hp_t
        have ht_i := idx.ht_i
        have ht_j := idx.ht_j
        have hp'_t := idx'.hp_t
        have ht'_i := idx'.ht_i
        have ht'_j := idx'.ht_j
        omega
      · unfold qaryOrbitDistanceIndex at hd
        have hp_t := idx.hp_t
        have ht_i := idx.ht_i
        have ht_j := idx.ht_j
        have hp'_t := idx'.hp_t
        have ht'_i := idx'.ht_i
        have ht'_j := idx'.ht_j
        omega
    rw [hidx]
  · have hidx : idx' = idx.rebaseLeft := by
      apply qaryOrbitIndex_ext
      · rw [hi, QaryOrbitIndex.rebaseLeft_i]
      · rw [hj, QaryOrbitIndex.rebaseLeft_j]
      · rw [QaryOrbitIndex.rebaseLeft_t]
        unfold qaryOrbitDistanceIndex at hj hd
        have hp_t := idx.hp_t
        have ht_i := idx.ht_i
        have ht_j := idx.ht_j
        have hp'_t := idx'.hp_t
        have ht'_i := idx'.ht_i
        have ht'_j := idx'.ht_j
        omega
      · rw [QaryOrbitIndex.rebaseLeft_p]
        unfold qaryOrbitDistanceIndex at hj hd
        have hp_t := idx.hp_t
        have ht_i := idx.ht_i
        have ht_j := idx.ht_j
        have hp'_t := idx'.hp_t
        have ht'_i := idx'.ht_i
        have ht'_j := idx'.ht_j
        omega
    rw [hidx, qaryCodeCellX_rebaseLeft]
  · have hidx : idx' = idx.swap := by
      apply qaryOrbitIndex_ext
      · rw [hi]
        rfl
      · rw [hj]
        rfl
      · change idx'.t = idx.t
        unfold qaryOrbitDistanceIndex at hd
        have hp_t := idx.hp_t
        have ht_i := idx.ht_i
        have ht_j := idx.ht_j
        have hp'_t := idx'.hp_t
        have ht'_i := idx'.ht_i
        have ht'_j := idx'.ht_j
        omega
      · change idx'.p = idx.p
        unfold qaryOrbitDistanceIndex at hd
        have hp_t := idx.hp_t
        have ht_i := idx.ht_i
        have ht_j := idx.ht_j
        have hp'_t := idx'.hp_t
        have ht'_i := idx'.ht_i
        have ht'_j := idx'.ht_j
        omega
    rw [hidx, qaryCodeCellX_swap]
  · have hidx : idx' = idx.rebaseRight.swap := by
      apply qaryOrbitIndex_ext
      · change idx'.i = idx.j
        exact hi
      · change idx'.j = qaryOrbitDistanceIndex idx
        exact hj
      · change idx'.t = idx.j - idx.p
        unfold qaryOrbitDistanceIndex at hj hd
        have hp_t := idx.hp_t
        have ht_i := idx.ht_i
        have ht_j := idx.ht_j
        have hp'_t := idx'.hp_t
        have ht'_i := idx'.ht_i
        have ht'_j := idx'.ht_j
        omega
      · change idx'.p = idx.j - idx.t
        unfold qaryOrbitDistanceIndex at hj hd
        have hp_t := idx.hp_t
        have ht_i := idx.ht_i
        have ht_j := idx.ht_j
        have hp'_t := idx'.hp_t
        have ht'_i := idx'.ht_i
        have ht'_j := idx'.ht_j
        omega
    rw [hidx, qaryCodeCellX_swap, qaryCodeCellX_rebaseRight]
  · have hidx : idx' = idx.rebaseLeft.swap := by
      apply qaryOrbitIndex_ext
      · rw [hi]
        symm
        change idx.rebaseLeft.j = qaryOrbitDistanceIndex idx
        exact QaryOrbitIndex.rebaseLeft_j idx
      · change idx'.j = idx.i
        exact hj
      · rw [show idx.rebaseLeft.swap.t = idx.i - idx.p by rfl]
        unfold qaryOrbitDistanceIndex at hi hd
        have hp_t := idx.hp_t
        have ht_i := idx.ht_i
        have ht_j := idx.ht_j
        have hp'_t := idx'.hp_t
        have ht'_i := idx'.ht_i
        have ht'_j := idx'.ht_j
        omega
      · rw [show idx.rebaseLeft.swap.p = idx.i - idx.t by rfl]
        unfold qaryOrbitDistanceIndex at hi hd
        have hp_t := idx.hp_t
        have ht_i := idx.ht_i
        have ht_j := idx.ht_j
        have hp'_t := idx'.hp_t
        have ht'_i := idx'.ht_i
        have ht'_j := idx'.ht_j
        omega
    rw [hidx, qaryCodeCellX_swap, qaryCodeCellX_rebaseLeft]
  · have hidx : idx' = idx.rebaseRight := by
      apply qaryOrbitIndex_ext
      · rw [hi, QaryOrbitIndex.rebaseRight_i]
      · rw [hj, QaryOrbitIndex.rebaseRight_j]
      · rw [QaryOrbitIndex.rebaseRight_t]
        unfold qaryOrbitDistanceIndex at hi hd
        have hp_t := idx.hp_t
        have ht_i := idx.ht_i
        have ht_j := idx.ht_j
        have hp'_t := idx'.hp_t
        have ht'_i := idx'.ht_i
        have ht'_j := idx'.ht_j
        omega
      · rw [QaryOrbitIndex.rebaseRight_p]
        unfold qaryOrbitDistanceIndex at hi hd
        have hp_t := idx.hp_t
        have ht_i := idx.ht_i
        have ht_j := idx.ht_j
        have hp'_t := idx'.hp_t
        have ht'_i := idx'.ht_i
        have ht'_j := idx'.ht_j
        omega
    rw [hidx, qaryCodeCellX_rebaseRight]

theorem qaryCodeCellX_basic_symmetry {q n : Nat}
    (C : Finset (QaryWord q n)) (idx idx' : QaryOrbitIndex q n)
    (hp : List.Perm [idx.i, idx.j, qaryOrbitDistanceIndex idx]
      [idx'.i, idx'.j, qaryOrbitDistanceIndex idx'])
    (hgap : idx.t - idx.p = idx'.t - idx'.p) :
    qaryCodeCellX C idx = qaryCodeCellX C idx' := by
  exact (qaryCodeCellX_distance_gap_perm C hp hgap).symm

theorem qaryCodeCellX_diagonalCoeff_eq_zeroCoeff {q n : Nat}
    (C : Finset (QaryWord q n)) (i : Nat) :
    qaryDiagonalCoeff (qaryCodeCellX C) i =
      qaryZeroCoeff (qaryCodeCellX C) i := by
  unfold qaryDiagonalCoeff qaryZeroCoeff
  by_cases hi : i <= n
  · simp [hi]
    let diag : QaryOrbitIndex q n :=
      QaryOrbitIndex.mk i i i i (Nat.le_refl i) (Nat.le_refl i)
        (Nat.le_refl i) (by omega)
    let zero : QaryOrbitIndex q n :=
      QaryOrbitIndex.mk i 0 0 0 (Nat.le_refl 0) (Nat.zero_le i)
        (Nat.le_refl 0) (by omega)
    have hidx : diag.rebaseRight.swap = zero := by
      apply qaryOrbitIndex_ext
      · rfl
      · change qaryOrbitDistanceIndex diag = 0
        change i + i - i - i = 0
        omega
      · change i - i = 0
        omega
      · change i - i = 0
        omega
    calc
      qaryCodeCellX C diag =
          qaryCodeCellX C diag.rebaseRight := by
        rw [qaryCodeCellX_rebaseRight]
      _ = qaryCodeCellX C diag.rebaseRight.swap := by
        rw [qaryCodeCellX_swap]
      _ = qaryCodeCellX C zero := by
        rw [hidx]
  · simp [hi]

theorem qaryCodeCellX_le_zeroCoeff_of_card_le {q n : Nat}
    (hq : 3 <= q) (C : Finset (QaryWord q n)) (idx : QaryOrbitIndex q n)
    (hcard :
      ((qaryCodeTripleOrbitCell C idx).card : Rat) <=
        ((qaryCodeTripleOrbitCell C
          (QaryOrbitIndex.mk idx.i 0 0 0 (Nat.le_refl 0)
            (Nat.zero_le idx.i) (Nat.le_refl 0)
            (by simpa using idx.i_le_n))).card : Rat) *
          qaryOrbitFiberMultiplicity q n idx) :
    qaryCodeCellX C idx <= qaryZeroCoeff (qaryCodeCellX C) idx.i := by
  let zero : QaryOrbitIndex q n :=
    QaryOrbitIndex.mk idx.i 0 0 0 (Nat.le_refl 0) (Nat.zero_le idx.i)
      (Nat.le_refl 0) (by simpa using idx.i_le_n)
  let A : Rat := ((qaryCodeTripleOrbitCell C idx).card : Rat)
  let B : Rat := ((qaryCodeTripleOrbitCell C zero).card : Rat)
  let F : Rat := qaryOrbitFiberMultiplicity q n idx
  let S : Rat :=
    (((q ^ n : Nat) : Rat)) * (((q - 1 : Nat) : Rat) ^ idx.i) *
      (Nat.choose n idx.i : Rat)
  have hcard' : A <= B * F := by
    simpa [A, B, F, zero] using hcard
  have hqpos : 0 < q := by omega
  have hscale_nat : 0 < q ^ n := Nat.pow_pos hqpos
  have hscale : 0 < (((q ^ n : Nat) : Rat)) := by exact_mod_cast hscale_nat
  have hq1_nat : 0 < q - 1 := by omega
  have hq1 : 0 < (((q - 1 : Nat) : Rat)) := by exact_mod_cast hq1_nat
  have hpow : 0 < (((q - 1 : Nat) : Rat) ^ idx.i) := pow_pos hq1 idx.i
  have hchoose_nat : 0 < Nat.choose n idx.i := Nat.choose_pos idx.i_le_n
  have hchoose : 0 < (Nat.choose n idx.i : Rat) := by exact_mod_cast hchoose_nat
  have hSpos : 0 < S := by
    dsimp [S]
    exact mul_pos (mul_pos hscale hpow) hchoose
  have hFpos : 0 < F := by
    dsimp [F]
    exact qaryOrbitFiberMultiplicity_pos hq idx
  have hzeroCoeff :
      qaryZeroCoeff (qaryCodeCellX C) idx.i = qaryCodeCellX C zero := by
    unfold qaryZeroCoeff
    rw [dif_pos idx.i_le_n]
  rw [hzeroCoeff]
  unfold qaryCodeCellX
  rw [qaryCodeCellDenominator_eq_shell_mul_fiber]
  have hden_zero : qaryCodeCellDenominator q n zero = S := by
    dsimp [zero, S]
    unfold qaryCodeCellDenominator qaryOrbitMultiplicity
    simp
    ring
  rw [hden_zero]
  change A / (S * F) <= B / S
  calc
    A / (S * F) <= (B * F) / (S * F) := by
      exact div_le_div_of_nonneg_right hcard' (le_of_lt (mul_pos hSpos hFpos))
    _ = B / S := by
      field_simp [hSpos.ne', hFpos.ne']

theorem qaryCodeCellX_le_diagonalCoeff_of_card_le {q n : Nat}
    (hq : 3 <= q) (C : Finset (QaryWord q n)) (idx : QaryOrbitIndex q n)
    (hcard :
      ((qaryCodeTripleOrbitCell C idx).card : Rat) <=
        ((qaryCodeTripleOrbitCell C
          (QaryOrbitIndex.mk idx.i 0 0 0 (Nat.le_refl 0)
            (Nat.zero_le idx.i) (Nat.le_refl 0)
            (by simpa using idx.i_le_n))).card : Rat) *
          qaryOrbitFiberMultiplicity q n idx) :
    qaryCodeCellX C idx <=
      qaryDiagonalCoeff (qaryCodeCellX C) idx.i := by
  rw [qaryCodeCellX_diagonalCoeff_eq_zeroCoeff]
  exact qaryCodeCellX_le_zeroCoeff_of_card_le hq C idx hcard

theorem qaryCodeCellX_le_distanceZeroCoeff_of_rebase_card_le {q n : Nat}
    (hq : 3 <= q) (C : Finset (QaryWord q n)) (idx : QaryOrbitIndex q n)
    (hcard :
      ((qaryCodeTripleOrbitCell C idx.rebaseRight).card : Rat) <=
        ((qaryCodeTripleOrbitCell C
          (QaryOrbitIndex.mk idx.rebaseRight.i 0 0 0 (Nat.le_refl 0)
            (Nat.zero_le idx.rebaseRight.i) (Nat.le_refl 0)
            (by simpa using idx.rebaseRight.i_le_n))).card : Rat) *
          qaryOrbitFiberMultiplicity q n idx.rebaseRight) :
    qaryCodeCellX C idx <=
      qaryZeroCoeff (qaryCodeCellX C) (qaryOrbitDistanceIndex idx) := by
  have h :=
    qaryCodeCellX_le_zeroCoeff_of_card_le hq C idx.rebaseRight hcard
  rw [qaryCodeCellX_rebaseRight] at h
  simpa using h

/--
Fiber-cardinality certificate for the projection
`(u,v,w) ↦ (u,w,w)` from an arbitrary q-ary orbit cell to the zero cell
with the same first distance.
-/
def QaryCodeCellProjectionFiberBound {q n : Nat}
    (C : Finset (QaryWord q n)) : Prop :=
  forall idx : QaryOrbitIndex q n,
    forall base : QaryCodeTriple q n,
      base ∈ qaryCodeTripleOrbitCell C
          (qaryCodeCellZeroIndex idx.i idx.i_le_n) ->
        ((qaryCodeTripleOrbitCell C idx).filter
          (fun triple => qaryCodeTripleLeftProjection triple = base)).card <=
            qaryOrbitFiberMultiplicityNat q n idx

theorem qaryCodeCellProjectionFiberBound_universal {q n : Nat}
    (C : Finset (QaryWord q n)) :
    QaryCodeCellProjectionFiberBound C := by
  classical
  intro idx base hbase
  let fiber : Finset (QaryCodeTriple q n) :=
    (qaryCodeTripleOrbitCell C idx).filter
      (fun triple => qaryCodeTripleLeftProjection triple = base)
  have hbase_orbit :
      qaryCodeTripleOrbitOf base =
        qaryCodeCellZeroIndex idx.i idx.i_le_n := by
    exact (mem_qaryCodeTripleOrbitCell.mp hbase).2.2.2
  let encode : {triple : QaryCodeTriple q n // triple ∈ fiber} ->
      QaryProjectionFiberChoice base idx := fun elem => by
    let triple : QaryCodeTriple q n := elem.1
    have hfilter : triple ∈
        (qaryCodeTripleOrbitCell C idx).filter
          (fun triple => qaryCodeTripleLeftProjection triple = base) := by
      change elem.1 ∈
        (qaryCodeTripleOrbitCell C idx).filter
          (fun triple => qaryCodeTripleLeftProjection triple = base)
      exact elem.2
    have hcell : triple ∈ qaryCodeTripleOrbitCell C idx :=
      (Finset.mem_filter.mp hfilter).1
    have hproj : qaryCodeTripleLeftProjection triple = base :=
      (Finset.mem_filter.mp hfilter).2
    have horbit : qaryCodeTripleOrbitOf triple = idx :=
      (mem_qaryCodeTripleOrbitCell.mp hcell).2.2.2
    have hfirst : triple.1.1 = base.1.1 := by
      simpa [qaryCodeTripleLeftProjection] using
        congrArg (fun t : QaryCodeTriple q n => t.1.1) hproj
    have hbaseWord : triple.2 = base.2 := by
      simpa [qaryCodeTripleLeftProjection] using
        congrArg (fun t : QaryCodeTriple q n => t.2) hproj
    have hleft :
        qaryCodeTripleLeftSupport triple = qaryCodeTripleLeftSupport base := by
      have hp := congrArg qaryCodeTripleLeftSupport hproj
      simpa [qaryCodeTripleLeftProjection] using hp
    let Pset : Finset (Fin n) := qaryCodeTripleEqualRelativeSupport triple
    let Tset : Finset (Fin n) :=
      qaryCodeTripleLeftSupport triple ∩ qaryCodeTripleRightSupport triple
    let Rset : Finset (Fin n) := Tset \ Pset
    let Bset : Finset (Fin n) :=
      qaryCodeTripleRightSupport triple \ qaryCodeTripleLeftSupport triple
    have hPmem :
        Pset ∈ (qaryCodeTripleLeftSupport base).powersetCard idx.p := by
      refine Finset.mem_powersetCard.mpr ⟨?_, ?_⟩
      · intro coord hcoord
        have hsub := qaryCodeTripleEqualRelativeSupport_subset_inter triple hcoord
        simpa [Pset, ← hleft] using (Finset.mem_inter.mp hsub).1
      · have hp := congrArg QaryOrbitIndex.p horbit
        simpa [Pset] using hp
    have hPsubT : Pset ⊆ Tset := by
      intro coord hcoord
      exact qaryCodeTripleEqualRelativeSupport_subset_inter triple hcoord
    have hRmem :
        Rset ∈
          ((qaryCodeTripleLeftSupport base) \ Pset).powersetCard
            (idx.t - idx.p) := by
      refine Finset.mem_powersetCard.mpr ⟨?_, ?_⟩
      · intro coord hcoord
        have hsd := Finset.mem_sdiff.mp hcoord
        have hT := Finset.mem_inter.mp hsd.1
        exact Finset.mem_sdiff.mpr
          ⟨by simpa [← hleft] using hT.1, hsd.2⟩
      · have ht := congrArg QaryOrbitIndex.t horbit
        have hp := congrArg QaryOrbitIndex.p horbit
        dsimp [Rset]
        rw [Finset.card_sdiff_of_subset hPsubT]
        have hTcard : Tset.card = idx.t := by
          simpa [Tset] using ht
        have hPcard : Pset.card = idx.p := by
          simpa [Pset] using hp
        rw [hTcard, hPcard]
    have hBmem :
        Bset ∈
          (((Finset.univ : Finset (Fin n)) \ qaryCodeTripleLeftSupport base).powersetCard
            (idx.j - idx.t)) := by
      refine Finset.mem_powersetCard.mpr ⟨?_, ?_⟩
      · intro coord hcoord
        have hsd := Finset.mem_sdiff.mp hcoord
        exact Finset.mem_sdiff.mpr
          ⟨by simp, by simpa [← hleft] using hsd.2⟩
      · have hj := congrArg QaryOrbitIndex.j horbit
        have ht := congrArg QaryOrbitIndex.t horbit
        dsimp [Bset]
        rw [Finset.card_sdiff]
        have hjcard : (qaryCodeTripleRightSupport triple).card = idx.j := by
          simpa using hj
        have htcard :
            (qaryCodeTripleLeftSupport triple ∩
              qaryCodeTripleRightSupport triple).card = idx.t := by
          simpa using ht
        rw [hjcard, htcard]
    let support : QaryProjectionSupportChoice
        (qaryCodeTripleLeftSupport base) idx :=
      ⟨⟨Pset, hPmem⟩, ⟨⟨Rset, hRmem⟩, ⟨Bset, hBmem⟩⟩⟩
    let assignR :
        forall coord : {coord : Fin n // coord ∈ Rset},
          {z : Fin q // z ≠ base.2 coord.1 ∧ z ≠ base.1.1 coord.1} :=
      fun coord => by
        have hsd := Finset.mem_sdiff.mp coord.2
        have hT := Finset.mem_inter.mp hsd.1
        have hrightBase : triple.1.2 coord.1 ≠ triple.2 coord.1 := by
          simpa [qaryCodeTripleRightSupport] using hT.2
        have hleftBase : triple.1.1 coord.1 ≠ triple.2 coord.1 := by
          simpa [qaryCodeTripleLeftSupport] using hT.1
        have hrightLeft : triple.1.2 coord.1 ≠ triple.1.1 coord.1 := by
          intro heq
          apply hsd.2
          change coord.1 ∈ qaryCodeTripleEqualRelativeSupport triple
          rw [qaryCodeTripleEqualRelativeSupport, Finset.mem_filter]
          exact ⟨Finset.mem_univ coord.1, ⟨heq.symm, hleftBase⟩⟩
        exact ⟨triple.1.2 coord.1,
          ⟨by simpa [← hbaseWord] using hrightBase,
            by simpa [← hfirst] using hrightLeft⟩⟩
    let assignB :
        forall coord : {coord : Fin n // coord ∈ Bset},
          {z : Fin q // z ≠ base.2 coord.1} :=
      fun coord => by
        have hsd := Finset.mem_sdiff.mp coord.2
        have hrightBase : triple.1.2 coord.1 ≠ triple.2 coord.1 := by
          simpa [qaryCodeTripleRightSupport] using hsd.1
        exact ⟨triple.1.2 coord.1,
          by simpa [← hbaseWord] using hrightBase⟩
    exact ⟨support, (assignR, assignB)⟩
  have hdecode :
      forall elem : {triple : QaryCodeTriple q n // triple ∈ fiber},
        qaryProjectionFiberChoiceDecode (encode elem) = elem.1 := by
    intro elem
    let triple : QaryCodeTriple q n := elem.1
    have hfilter : triple ∈
        (qaryCodeTripleOrbitCell C idx).filter
          (fun triple => qaryCodeTripleLeftProjection triple = base) := by
      change elem.1 ∈
        (qaryCodeTripleOrbitCell C idx).filter
          (fun triple => qaryCodeTripleLeftProjection triple = base)
      exact elem.2
    have hproj : qaryCodeTripleLeftProjection triple = base :=
      (Finset.mem_filter.mp hfilter).2
    have hfirst : triple.1.1 = base.1.1 := by
      simpa [qaryCodeTripleLeftProjection] using
        congrArg (fun t : QaryCodeTriple q n => t.1.1) hproj
    have hbaseWord : triple.2 = base.2 := by
      simpa [qaryCodeTripleLeftProjection] using
        congrArg (fun t : QaryCodeTriple q n => t.2) hproj
    refine Prod.ext (Prod.ext hfirst.symm ?_) hbaseWord.symm
    funext coord
    dsimp [qaryProjectionFiberChoiceDecode, encode, triple]
    by_cases hP : coord ∈ qaryCodeTripleEqualRelativeSupport triple
    · have hPeq := (Finset.mem_filter.mp hP).2.1
      simp [triple, hP]
      rw [← hfirst, hPeq]
    · by_cases hR :
        coord ∈
          (qaryCodeTripleLeftSupport triple ∩ qaryCodeTripleRightSupport triple) \
            qaryCodeTripleEqualRelativeSupport triple
      · simp [triple, hP, hR]
      · by_cases hB :
          coord ∈
            qaryCodeTripleRightSupport triple \ qaryCodeTripleLeftSupport triple
        · simp [triple, hP, hR, hB]
        · have hnotRight : coord ∉ qaryCodeTripleRightSupport triple := by
            intro hright
            by_cases hleftmem : coord ∈ qaryCodeTripleLeftSupport triple
            · have hT :
                  coord ∈
                    qaryCodeTripleLeftSupport triple ∩
                      qaryCodeTripleRightSupport triple := by
                exact Finset.mem_inter.mpr ⟨hleftmem, hright⟩
              exact hR (Finset.mem_sdiff.mpr ⟨hT, hP⟩)
            · exact hB (Finset.mem_sdiff.mpr ⟨hright, hleftmem⟩)
          have hright_eq_base : triple.1.2 coord = triple.2 coord := by
            by_contra hne
            apply hnotRight
            simp [qaryCodeTripleRightSupport, hne]
          simp [triple, hP, hR, hB]
          rw [← hbaseWord, hright_eq_base]
  have hencode_inj : Function.Injective encode := by
    intro a b h
    apply Subtype.ext
    rw [← hdecode a, ← hdecode b, h]
  let emb : {triple : QaryCodeTriple q n // triple ∈ fiber} ↪
      QaryProjectionFiberChoice base idx := {
    toFun := encode
    inj' := hencode_inj
  }
  have hle := Fintype.card_le_of_embedding emb
  have hfiber_card :
      Fintype.card {triple : QaryCodeTriple q n // triple ∈ fiber} =
        fiber.card := by
    rw [Fintype.card_subtype]
    exact congrArg Finset.card (Finset.filter_univ_mem fiber)
  have hchoice_card :
      Fintype.card (QaryProjectionFiberChoice base idx) =
        qaryOrbitFiberMultiplicityNat q n idx :=
    qaryProjectionFiberChoice_card base idx hbase_orbit
  have hle' : fiber.card <= qaryOrbitFiberMultiplicityNat q n idx := by
    rw [hfiber_card, hchoice_card] at hle
    exact hle
  simpa [fiber]
    using hle'

def QaryCodeCellFiberCardBound {q n : Nat}
    (C : Finset (QaryWord q n)) : Prop :=
  forall idx : QaryOrbitIndex q n,
    ((qaryCodeTripleOrbitCell C idx).card : Rat) <=
      ((qaryCodeTripleOrbitCell C
        (QaryOrbitIndex.mk idx.i 0 0 0 (Nat.le_refl 0)
          (Nat.zero_le idx.i) (Nat.le_refl 0)
          (by simpa using idx.i_le_n))).card : Rat) *
        qaryOrbitFiberMultiplicity q n idx

theorem qaryCodeCellFiberCardBound_of_projection_fiber_bound {q n : Nat}
    (C : Finset (QaryWord q n))
    (hfiber : QaryCodeCellProjectionFiberBound C) :
    QaryCodeCellFiberCardBound C := by
  intro idx
  let zero : QaryOrbitIndex q n := qaryCodeCellZeroIndex idx.i idx.i_le_n
  have hnat :
      (qaryCodeTripleOrbitCell C idx).card <=
        (qaryCodeTripleOrbitCell C zero).card *
          qaryOrbitFiberMultiplicityNat q n idx := by
    exact finset_card_le_card_mul_of_fiber_le
      (s := qaryCodeTripleOrbitCell C idx)
      (t := qaryCodeTripleOrbitCell C zero)
      (f := qaryCodeTripleLeftProjection)
      (m := qaryOrbitFiberMultiplicityNat q n idx)
      (by
        intro triple htriple
        dsimp [zero]
        exact qaryCodeTripleLeftProjection_mem_zero_cell htriple)
      (by
        intro base hbase
        exact hfiber idx base (by simpa [zero] using hbase))
  rw [← qaryOrbitFiberMultiplicityNat_cast]
  exact_mod_cast hnat

theorem qaryCodeCellFiberCardBound_universal {q n : Nat}
    (C : Finset (QaryWord q n)) :
    QaryCodeCellFiberCardBound C :=
  qaryCodeCellFiberCardBound_of_projection_fiber_bound C
    (qaryCodeCellProjectionFiberBound_universal C)

def QaryCodeCellTriangleLowerBound {q n : Nat}
    (C : Finset (QaryWord q n)) : Prop :=
  forall idx : QaryOrbitIndex q n,
    qaryZeroCoeff (qaryCodeCellX C) idx.i +
        qaryZeroCoeff (qaryCodeCellX C) (qaryOrbitDistanceIndex idx) -
      qaryZeroCoeff (qaryCodeCellX C) 0 <= qaryCodeCellX C idx

theorem qaryCodeCellX_basicConstraints_of_card_bounds {q n : Nat}
    (hq : 3 <= q) (C : Finset (QaryWord q n))
    (hfiber : QaryCodeCellFiberCardBound C)
    (htriangle : QaryCodeCellTriangleLowerBound C) :
    QaryBasicConstraints (qaryCodeCellX C) := by
  refine ⟨?_, ?_, ?_⟩
  · intro idx
    exact ⟨qaryCodeCellX_nonneg hq C idx,
      qaryCodeCellX_le_diagonalCoeff_of_card_le hq C idx (hfiber idx)⟩
  · intro idx
    exact ⟨htriangle idx,
      qaryCodeCellX_le_distanceZeroCoeff_of_rebase_card_le hq C idx
        (hfiber idx.rebaseRight)⟩
  · intro idx idx' hp hgap
    exact qaryCodeCellX_basic_symmetry C idx idx' hp hgap

structure QaryCodeCellReducedConstraintCertificate
    (q n : Nat) (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord q n)) : Prop where
  fiberCard : QaryCodeCellFiberCardBound C
  triangleLower : QaryCodeCellTriangleLowerBound C
  semidefinite : QaryBlocksPSD (qaryCodeCellX C)
  lasserre : QaryLasserreConstraints lambda beta (qaryCodeCellX C)
  matrixCuts : QaryMatrixCutConstraints lambda beta (qaryCodeCellX C)

def QaryCodeCellReducedConstraintCertificate.toReducedConstraints
    {q n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {C : Finset (QaryWord q n)}
    (hq : 3 <= q)
    (cert : QaryCodeCellReducedConstraintCertificate q n lambda beta C) :
    QaryReducedConstraints q n r lambda beta (qaryCodeCellX C) where
  basic := qaryCodeCellX_basicConstraints_of_card_bounds hq C
    cert.fiberCard cert.triangleLower
  semidefinite := cert.semidefinite
  lasserre := cert.lasserre
  matrixCuts := cert.matrixCuts

structure QaryCodeCellProjectionReducedConstraintCertificate
    (q n : Nat) (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord q n)) : Prop where
  projectionFiberCard : QaryCodeCellProjectionFiberBound C
  triangleLower : QaryCodeCellTriangleLowerBound C
  semidefinite : QaryBlocksPSD (qaryCodeCellX C)
  lasserre : QaryLasserreConstraints lambda beta (qaryCodeCellX C)
  matrixCuts : QaryMatrixCutConstraints lambda beta (qaryCodeCellX C)

def QaryCodeCellProjectionReducedConstraintCertificate.toCodeCellReducedConstraintCertificate
    {q n : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {C : Finset (QaryWord q n)}
    (cert : QaryCodeCellProjectionReducedConstraintCertificate q n lambda beta C) :
    QaryCodeCellReducedConstraintCertificate q n lambda beta C where
  fiberCard :=
    qaryCodeCellFiberCardBound_of_projection_fiber_bound C
      cert.projectionFiberCard
  triangleLower := cert.triangleLower
  semidefinite := cert.semidefinite
  lasserre := cert.lasserre
  matrixCuts := cert.matrixCuts

def QaryCodeCellProjectionReducedConstraintCertificate.toReducedConstraints
    {q n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {C : Finset (QaryWord q n)}
    (hq : 3 <= q)
    (cert : QaryCodeCellProjectionReducedConstraintCertificate q n lambda beta C) :
    QaryReducedConstraints q n r lambda beta (qaryCodeCellX C) :=
  cert.toCodeCellReducedConstraintCertificate.toReducedConstraints hq

structure QaryCodeCellIntrinsicReducedConstraintCertificate
    (q n : Nat) (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord q n)) : Prop where
  triangleLower : QaryCodeCellTriangleLowerBound C
  semidefinite : QaryBlocksPSD (qaryCodeCellX C)
  lasserre : QaryLasserreConstraints lambda beta (qaryCodeCellX C)
  matrixCuts : QaryMatrixCutConstraints lambda beta (qaryCodeCellX C)

def QaryCodeCellIntrinsicReducedConstraintCertificate.toCodeCellReducedConstraintCertificate
    {q n : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {C : Finset (QaryWord q n)}
    (cert : QaryCodeCellIntrinsicReducedConstraintCertificate q n lambda beta C) :
    QaryCodeCellReducedConstraintCertificate q n lambda beta C where
  fiberCard := qaryCodeCellFiberCardBound_universal C
  triangleLower := cert.triangleLower
  semidefinite := cert.semidefinite
  lasserre := cert.lasserre
  matrixCuts := cert.matrixCuts

def QaryCodeCellIntrinsicReducedConstraintCertificate.toReducedConstraints
    {q n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {C : Finset (QaryWord q n)}
    (hq : 3 <= q)
    (cert : QaryCodeCellIntrinsicReducedConstraintCertificate q n lambda beta C) :
    QaryReducedConstraints q n r lambda beta (qaryCodeCellX C) :=
  cert.toCodeCellReducedConstraintCertificate.toReducedConstraints hq

theorem qaryCodeCellX_cell_value {q n : Nat}
    (C : Finset (QaryWord q n))
    (hdenom : forall idx : QaryOrbitIndex q n,
      qaryCodeCellDenominator q n idx ≠ 0)
    (idx : QaryOrbitIndex q n) :
    (((q ^ n : Nat) : Rat)) *
        (qaryOrbitMultiplicity q n idx * qaryCodeCellX C idx) =
      ((qaryCodeTripleOrbitCell C idx).card : Rat) := by
  have hm : qaryOrbitMultiplicity q n idx ≠ 0 := by
    intro hm
    apply hdenom idx
    simp [qaryCodeCellDenominator, hm]
  have hscale : (((q ^ n : Nat) : Rat) ≠ 0) := by
    intro hscale
    apply hdenom idx
    simp [qaryCodeCellDenominator, hscale]
  unfold qaryCodeCellX qaryCodeCellDenominator
  field_simp [hdenom idx, hm, hscale]

/-- Certificate that a q-ary reduced vector comes from a code with the right objective. -/
structure QaryReducedCodeObjectiveBridge
    (q n r : Nat) (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord q n)) (x : QaryX q n) where
  constraints : QaryReducedConstraints q n r lambda beta x
  objectivePartition :
    WeightedObjectivePartitionCertificate (QaryOrbitIndex q n) (QaryCodeTriple q n)
      (qaryCodeTriples C) (((q ^ n : Nat) : Rat))
      (qaryOrbitMultiplicity q n) x

/-- Build the q-ary code-objective bridge from a classifier of code triples by orbit index. -/
def QaryReducedCodeObjectiveBridge.ofClassifier
    {q n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {C : Finset (QaryWord q n)} {x : QaryX q n}
    (constraints : QaryReducedConstraints q n r lambda beta x)
    (classOf : QaryCodeTriple q n -> QaryOrbitIndex q n)
    (cell_value : forall idx : QaryOrbitIndex q n,
      (((q ^ n : Nat) : Rat)) * (qaryOrbitMultiplicity q n idx * x idx) =
        (((qaryCodeTriples C).filter (fun triple => classOf triple = idx)).card : Rat)) :
    QaryReducedCodeObjectiveBridge q n r lambda beta C x where
  constraints := constraints
  objectivePartition :=
    WeightedObjectivePartitionCertificate.ofClassifier
      (QaryOrbitIndex q n) (QaryCodeTriple q n) (qaryCodeTriples C) classOf
      (((q ^ n : Nat) : Rat)) (qaryOrbitMultiplicity q n) x cell_value

/-- Build the q-ary code-objective bridge using the canonical triple-orbit classifier. -/
def QaryReducedCodeObjectiveBridge.ofTripleOrbitClassifier
    {q n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {C : Finset (QaryWord q n)} {x : QaryX q n}
    (constraints : QaryReducedConstraints q n r lambda beta x)
    (cell_value : forall idx : QaryOrbitIndex q n,
      (((q ^ n : Nat) : Rat)) * (qaryOrbitMultiplicity q n idx * x idx) =
        ((qaryCodeTripleOrbitCell C idx).card : Rat)) :
    QaryReducedCodeObjectiveBridge q n r lambda beta C x :=
  QaryReducedCodeObjectiveBridge.ofClassifier constraints
    qaryCodeTripleOrbitOf cell_value

/--
Build the q-ary code-objective bridge from normalized canonical orbit-cell
counts.
-/
def QaryReducedCodeObjectiveBridge.ofCellCounts
    {q n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {C : Finset (QaryWord q n)}
    (hq : 3 <= q)
    (constraints :
      QaryReducedConstraints q n r lambda beta (qaryCodeCellX C)) :
    QaryReducedCodeObjectiveBridge q n r lambda beta C (qaryCodeCellX C) :=
  QaryReducedCodeObjectiveBridge.ofTripleOrbitClassifier constraints
    (qaryCodeCellX_cell_value C (qaryCodeCellDenominator_ne_zero hq))

theorem QaryReducedCodeObjectiveBridge.objective_eq_card_cube
    {q n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {C : Finset (QaryWord q n)} {x : QaryX q n}
    (bridge : QaryReducedCodeObjectiveBridge q n r lambda beta C x) :
    qaryReducedObjective q n x = (C.card : Rat) ^ 3 := by
  have hobj := bridge.objectivePartition.objective_eq_card
  unfold qaryReducedObjective at hobj ⊢
  rw [hobj]
  simp [qaryCodeTriples, card_finsetCube]

theorem QaryReducedCodeObjectiveBridge.objective_le_card_cube
    {q n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {C : Finset (QaryWord q n)} {x : QaryX q n}
    (bridge : QaryReducedCodeObjectiveBridge q n r lambda beta C x) :
    qaryReducedObjective q n x <= (C.card : Rat) ^ 3 := by
  rw [bridge.objective_eq_card_cube]

/--
Exact q-ary reduced SDP dual certificate.

The objective bound is checked by the generic exact SDP checker using q-ary
scalar atoms and PSD block atoms; the code-to-reduced-feasible objective bridge
remains explicit.
-/
structure QaryReducedExactDualCertificate
    (q n r : Nat) (lambda : Fin (n + 1) -> Rat) (beta : Rat) (L : Nat)
    (GramIdx : QaryMatrixAtom n -> Type)
    [forall atom : QaryMatrixAtom n, Fintype (GramIdx atom)] where
  bound : Rat
  cubeThreshold : ((L - 1 : Nat) : Rat) ^ 3 < bound
  objectiveCertificate :
    SDPObjectiveLowerCertificate (QaryOrbitIndex q n) (QaryScalarAtom q n)
      (QaryMatrixAtom n) (@QaryMatrixAtom.Coord n) GramIdx
      (qaryScalarAtomExpr lambda beta)
      (qaryMatrixAtomExpr lambda beta)
      (qaryReducedObjectiveExpr q n)
      bound
  codeObjectiveBridge :
    forall C : Finset (QaryWord q n),
      CoversFinset C r ->
        Sigma (fun x : QaryX q n =>
          QaryReducedCodeObjectiveBridge q n r lambda beta C x)

/-- Forget the exact q-ary SDP certificate into the older objective-lower interface. -/
def QaryReducedExactDualCertificate.toDualCertificate
    {q n r L : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {GramIdx : QaryMatrixAtom n -> Type}
    [forall atom : QaryMatrixAtom n, Fintype (GramIdx atom)]
    (cert : QaryReducedExactDualCertificate q n r lambda beta L GramIdx) :
    QaryReducedDualCertificate q n r lambda beta L where
  bound := cert.bound
  cubeThreshold := cert.cubeThreshold
  objectiveCertificate := {
    gap := fun x => qaryReducedObjective q n x - cert.bound
    gap_nonneg := by
      intro x hx
      have hbound :=
        SDPObjectiveLowerCertificate.sound cert.objectiveCertificate x
          (QaryReducedConstraints.toSDPConstraints hx)
      rw [qaryReducedObjectiveExpr_eval] at hbound
      exact sub_nonneg.mpr hbound
    identity := by
      intro x
      rfl
  }
  codeObjectiveBound := by
    intro C hC
    rcases cert.codeObjectiveBridge C hC with ⟨x, bridge⟩
    exact ⟨x, bridge.constraints, bridge.objective_le_card_cube⟩

/--
Exact q-ary reduced SDP dual certificate specialized to the canonical
code-cell vector.

The q-ary denominator normalization needs the paper hypothesis `3 <= q`, which
is supplied when converting to the general exact certificate.
-/
structure QaryReducedExactCellDualCertificate
    (q n r : Nat) (lambda : Fin (n + 1) -> Rat) (beta : Rat) (L : Nat)
    (GramIdx : QaryMatrixAtom n -> Type)
    [forall atom : QaryMatrixAtom n, Fintype (GramIdx atom)] where
  bound : Rat
  cubeThreshold : ((L - 1 : Nat) : Rat) ^ 3 < bound
  objectiveCertificate :
    SDPObjectiveLowerCertificate (QaryOrbitIndex q n) (QaryScalarAtom q n)
      (QaryMatrixAtom n) (@QaryMatrixAtom.Coord n) GramIdx
      (qaryScalarAtomExpr lambda beta)
      (qaryMatrixAtomExpr lambda beta)
      (qaryReducedObjectiveExpr q n)
      bound
  codeCellConstraints :
    forall C : Finset (QaryWord q n),
      CoversFinset C r ->
        QaryReducedConstraints q n r lambda beta (qaryCodeCellX C)

structure QaryReducedExactCellConstraintDualCertificate
    (q n r : Nat) (lambda : Fin (n + 1) -> Rat) (beta : Rat) (L : Nat)
    (GramIdx : QaryMatrixAtom n -> Type)
    [forall atom : QaryMatrixAtom n, Fintype (GramIdx atom)] where
  bound : Rat
  cubeThreshold : ((L - 1 : Nat) : Rat) ^ 3 < bound
  objectiveCertificate :
    SDPObjectiveLowerCertificate (QaryOrbitIndex q n) (QaryScalarAtom q n)
      (QaryMatrixAtom n) (@QaryMatrixAtom.Coord n) GramIdx
      (qaryScalarAtomExpr lambda beta)
      (qaryMatrixAtomExpr lambda beta)
      (qaryReducedObjectiveExpr q n)
      bound
  codeCellCertificate :
    forall C : Finset (QaryWord q n),
      CoversFinset C r ->
        QaryCodeCellReducedConstraintCertificate q n lambda beta C

structure QaryReducedExactProjectionCellConstraintDualCertificate
    (q n r : Nat) (lambda : Fin (n + 1) -> Rat) (beta : Rat) (L : Nat)
    (GramIdx : QaryMatrixAtom n -> Type)
    [forall atom : QaryMatrixAtom n, Fintype (GramIdx atom)] where
  bound : Rat
  cubeThreshold : ((L - 1 : Nat) : Rat) ^ 3 < bound
  objectiveCertificate :
    SDPObjectiveLowerCertificate (QaryOrbitIndex q n) (QaryScalarAtom q n)
      (QaryMatrixAtom n) (@QaryMatrixAtom.Coord n) GramIdx
      (qaryScalarAtomExpr lambda beta)
      (qaryMatrixAtomExpr lambda beta)
      (qaryReducedObjectiveExpr q n)
      bound
  codeCellCertificate :
    forall C : Finset (QaryWord q n),
      CoversFinset C r ->
        QaryCodeCellProjectionReducedConstraintCertificate q n lambda beta C

structure QaryReducedExactIntrinsicCellConstraintDualCertificate
    (q n r : Nat) (lambda : Fin (n + 1) -> Rat) (beta : Rat) (L : Nat)
    (GramIdx : QaryMatrixAtom n -> Type)
    [forall atom : QaryMatrixAtom n, Fintype (GramIdx atom)] where
  bound : Rat
  cubeThreshold : ((L - 1 : Nat) : Rat) ^ 3 < bound
  objectiveCertificate :
    SDPObjectiveLowerCertificate (QaryOrbitIndex q n) (QaryScalarAtom q n)
      (QaryMatrixAtom n) (@QaryMatrixAtom.Coord n) GramIdx
      (qaryScalarAtomExpr lambda beta)
      (qaryMatrixAtomExpr lambda beta)
      (qaryReducedObjectiveExpr q n)
      bound
  codeCellCertificate :
    forall C : Finset (QaryWord q n),
      CoversFinset C r ->
        QaryCodeCellIntrinsicReducedConstraintCertificate q n lambda beta C

/-- Turn a cell-specialized q-ary exact certificate into the general exact certificate. -/
def QaryReducedExactCellDualCertificate.toExactDualCertificate
    {q n r L : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {GramIdx : QaryMatrixAtom n -> Type}
    [forall atom : QaryMatrixAtom n, Fintype (GramIdx atom)]
    (hq : 3 <= q)
    (cert : QaryReducedExactCellDualCertificate q n r lambda beta L GramIdx) :
    QaryReducedExactDualCertificate q n r lambda beta L GramIdx where
  bound := cert.bound
  cubeThreshold := cert.cubeThreshold
  objectiveCertificate := cert.objectiveCertificate
  codeObjectiveBridge := by
    intro C hC
    exact ⟨qaryCodeCellX C,
      QaryReducedCodeObjectiveBridge.ofCellCounts hq (cert.codeCellConstraints C hC)⟩

def QaryReducedExactCellConstraintDualCertificate.toExactCellDualCertificate
    {q n r L : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {GramIdx : QaryMatrixAtom n -> Type}
    [forall atom : QaryMatrixAtom n, Fintype (GramIdx atom)]
    (hq : 3 <= q)
    (cert :
      QaryReducedExactCellConstraintDualCertificate q n r lambda beta L GramIdx) :
    QaryReducedExactCellDualCertificate q n r lambda beta L GramIdx where
  bound := cert.bound
  cubeThreshold := cert.cubeThreshold
  objectiveCertificate := cert.objectiveCertificate
  codeCellConstraints := by
    intro C hC
    exact (cert.codeCellCertificate C hC).toReducedConstraints hq

def QaryReducedExactProjectionCellConstraintDualCertificate.toExactCellConstraintDualCertificate
    {q n r L : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {GramIdx : QaryMatrixAtom n -> Type}
    [forall atom : QaryMatrixAtom n, Fintype (GramIdx atom)]
    (cert :
      QaryReducedExactProjectionCellConstraintDualCertificate
        q n r lambda beta L GramIdx) :
    QaryReducedExactCellConstraintDualCertificate q n r lambda beta L GramIdx where
  bound := cert.bound
  cubeThreshold := cert.cubeThreshold
  objectiveCertificate := cert.objectiveCertificate
  codeCellCertificate := by
    intro C hC
    exact (cert.codeCellCertificate C hC).toCodeCellReducedConstraintCertificate

def QaryReducedExactIntrinsicCellConstraintDualCertificate.toExactCellConstraintDualCertificate
    {q n r L : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {GramIdx : QaryMatrixAtom n -> Type}
    [forall atom : QaryMatrixAtom n, Fintype (GramIdx atom)]
    (cert :
      QaryReducedExactIntrinsicCellConstraintDualCertificate
        q n r lambda beta L GramIdx) :
    QaryReducedExactCellConstraintDualCertificate q n r lambda beta L GramIdx where
  bound := cert.bound
  cubeThreshold := cert.cubeThreshold
  objectiveCertificate := cert.objectiveCertificate
  codeCellCertificate := by
    intro C hC
    exact (cert.codeCellCertificate C hC).toCodeCellReducedConstraintCertificate

theorem prop_4_11_qary_basic_constraints {q n r : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat} {x : QaryX q n}
    (h : QaryReducedConstraints q n r lambda beta x) :
    QaryBasicConstraints x := by
  exact h.basic

theorem prop_4_12_qary_psd_constraints {q n r : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat} {x : QaryX q n}
    (h : QaryReducedConstraints q n r lambda beta x) :
    QaryBlocksPSD x := by
  exact h.semidefinite

theorem prop_4_14_qary_lasserre_constraint {q n r : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat} {x : QaryX q n}
    (h : QaryReducedConstraints q n r lambda beta x) :
    QaryLasserreConstraints lambda beta x := by
  exact h.lasserre

theorem prop_4_17_qary_matrix_cut_constraints {q n r : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat} {x : QaryX q n}
    (h : QaryReducedConstraints q n r lambda beta x) :
    QaryMatrixCutConstraints lambda beta x := by
  exact h.matrixCuts

theorem theorem_4_18_qary_reduced_sdp_lower_bound
    {q n r L : Nat}
    (_hq : 3 <= q)
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (_hlin : ValidLinearInequality q n r lambda beta)
    (hdual : QaryReducedDualCertificate q n r lambda beta L) :
    QaryKLower q n r L := by
  apply lower_of_cube_objective_bound hdual.cubeThreshold
  intro C hC
  rcases hdual.codeObjectiveBound C hC with ⟨x, hx, hobjC⟩
  exact le_trans (ObjectiveLowerCertificate.sound hdual.objectiveCertificate x hx) hobjC

/-- Theorem 4.18 specialized to exact q-ary SDP dual certificates. -/
theorem theorem_4_18_qary_reduced_exact_sdp_lower_bound
    {q n r L : Nat}
    (hq : 3 <= q)
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {GramIdx : QaryMatrixAtom n -> Type}
    [forall atom : QaryMatrixAtom n, Fintype (GramIdx atom)]
    (hlin : ValidLinearInequality q n r lambda beta)
    (hdual : QaryReducedExactDualCertificate q n r lambda beta L GramIdx) :
    QaryKLower q n r L := by
  exact theorem_4_18_qary_reduced_sdp_lower_bound hq hlin hdual.toDualCertificate

/-- Theorem 4.18 specialized to exact certificates over canonical code-cell vectors. -/
theorem theorem_4_18_qary_reduced_exact_cell_sdp_lower_bound
    {q n r L : Nat}
    (hq : 3 <= q)
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {GramIdx : QaryMatrixAtom n -> Type}
    [forall atom : QaryMatrixAtom n, Fintype (GramIdx atom)]
    (hlin : ValidLinearInequality q n r lambda beta)
    (hdual : QaryReducedExactCellDualCertificate q n r lambda beta L GramIdx) :
    QaryKLower q n r L := by
  exact theorem_4_18_qary_reduced_exact_sdp_lower_bound hq hlin
    (hdual.toExactDualCertificate hq)

theorem theorem_4_18_qary_reduced_exact_cell_constraint_sdp_lower_bound
    {q n r L : Nat}
    (hq : 3 <= q)
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {GramIdx : QaryMatrixAtom n -> Type}
    [forall atom : QaryMatrixAtom n, Fintype (GramIdx atom)]
    (hlin : ValidLinearInequality q n r lambda beta)
    (hdual :
      QaryReducedExactCellConstraintDualCertificate q n r lambda beta L GramIdx) :
    QaryKLower q n r L := by
  exact theorem_4_18_qary_reduced_exact_cell_sdp_lower_bound hq hlin
    (hdual.toExactCellDualCertificate hq)

theorem theorem_4_18_qary_reduced_exact_projection_cell_constraint_sdp_lower_bound
    {q n r L : Nat}
    (hq : 3 <= q)
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {GramIdx : QaryMatrixAtom n -> Type}
    [forall atom : QaryMatrixAtom n, Fintype (GramIdx atom)]
    (hlin : ValidLinearInequality q n r lambda beta)
    (hdual :
      QaryReducedExactProjectionCellConstraintDualCertificate
        q n r lambda beta L GramIdx) :
    QaryKLower q n r L := by
  exact theorem_4_18_qary_reduced_exact_cell_constraint_sdp_lower_bound hq hlin
    hdual.toExactCellConstraintDualCertificate

theorem theorem_4_18_qary_reduced_exact_intrinsic_cell_constraint_sdp_lower_bound
    {q n r L : Nat}
    (hq : 3 <= q)
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {GramIdx : QaryMatrixAtom n -> Type}
    [forall atom : QaryMatrixAtom n, Fintype (GramIdx atom)]
    (hlin : ValidLinearInequality q n r lambda beta)
    (hdual :
      QaryReducedExactIntrinsicCellConstraintDualCertificate
        q n r lambda beta L GramIdx) :
    QaryKLower q n r L := by
  exact theorem_4_18_qary_reduced_exact_cell_constraint_sdp_lower_bound hq hlin
    hdual.toExactCellConstraintDualCertificate

end

end GijswijtPolak2025
end SDP
end CoveringCodes
