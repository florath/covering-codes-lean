import CoveringCodes.SDP.GijswijtPolak2025.BinaryReducedSDP

/-!
# Binary table SDP interface

This file contains the binary reduced SDP shape used for the computational
Table 1 instances in Gijswijt--Polak 2025.  Compared with the smaller
`BinaryReducedSDP` interface, this one exposes both paper inequalities used in
the binary computations and the bordered `k = 0` complement/Lasserre blocks.

The matrix coordinates intentionally follow the public Julia implementation:
for a block indexed by `k`, coordinate `row` corresponds to paper index
`i = n - k - row`.  This keeps generated dual matrices aligned with the solver
export.
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

noncomputable section

/-- The two valid inequalities used in the binary computational table. -/
inductive BinaryTableInequality where
  | sphere
  | vanWee
deriving DecidableEq, Fintype

/-- Van Wee scale `ceil((n+1)/(r+1))`, written with natural ceiling division. -/
def vanWeeScale (n r : Nat) : Nat :=
  (n + 1 + r) / (r + 1)

/-- Coefficients of the binary table inequalities. -/
def binaryTableLambda (n r : Nat) : BinaryTableInequality -> Fin (n + 1) -> Rat
  | .sphere => sphereLambda n r
  | .vanWee => fun i =>
      if i.val < r then (vanWeeScale n r : Rat)
      else if i.val = r then 1
      else if i.val = r + 1 then 1
      else 0

/-- Right-hand side of the binary table inequalities. -/
def binaryTableBeta (n r : Nat) : BinaryTableInequality -> Rat
  | .sphere => 1
  | .vanWee => (vanWeeScale n r : Rat)

/-- The binary table's sphere inequality is the ordinary sphere-covering inequality. -/
theorem binaryTable_sphere_valid (n r : Nat) :
    ValidLinearInequality 2 n r
      (binaryTableLambda n r BinaryTableInequality.sphere)
      (binaryTableBeta n r BinaryTableInequality.sphere) := by
  simpa [binaryTableLambda, binaryTableBeta] using sphereLambda_valid 2 n r

/--
For the concrete Table 1 case `(n,r) = (13,1)`, the van Wee row has
coefficients `7,1,1,0,...`.  This theorem isolates the remaining local
covering-count argument needed to prove it is a valid inequality.
-/
theorem binaryTable_vanWee_13_1_valid_of_shell_bound
    (hbound :
      forall C : Finset (QaryWord 2 13),
        CoversFinset C 1 ->
          forall u : QaryWord 2 13,
            (7 : Rat) <= 7 * (shellCount 2 13 C u 0 : Rat) +
              (shellCount 2 13 C u 1 : Rat) +
                (shellCount 2 13 C u 2 : Rat)) :
    ValidLinearInequality 2 13 1
      (binaryTableLambda 13 1 BinaryTableInequality.vanWee)
      (binaryTableBeta 13 1 BinaryTableInequality.vanWee) := by
  refine ⟨by norm_num [binaryTableBeta, vanWeeScale], ?_, ?_⟩
  · intro i
    simp [binaryTableLambda, vanWeeScale]
    split_ifs <;> norm_num
  · intro C hC u
    have h := hbound C hC u
    have hsum :
        (Finset.univ.sum
            (fun i : Fin (13 + 1) =>
              binaryTableLambda 13 1 BinaryTableInequality.vanWee i *
                (shellCount 2 13 C u i.val : Rat))) =
          7 * (shellCount 2 13 C u 0 : Rat) +
            (shellCount 2 13 C u 1 : Rat) +
              (shellCount 2 13 C u 2 : Rat) := by
      simp [binaryTableLambda, vanWeeScale, Fin.sum_univ_succ]
      ring
    simpa [binaryTableBeta, vanWeeScale, hsum] using h

/-- Coordinates on which two binary words differ. -/
def binaryDiffSupport {n : Nat} (u v : QaryWord 2 n) : Finset (Fin n) :=
  Finset.univ.filter (fun a => u a ≠ v a)

@[simp]
theorem mem_binaryDiffSupport {n : Nat} {u v : QaryWord 2 n} {a : Fin n} :
    a ∈ binaryDiffSupport u v ↔ u a ≠ v a := by
  simp [binaryDiffSupport]

theorem binaryDiffSupport_card_eq_dist {n : Nat} (u v : QaryWord 2 n) :
    (binaryDiffSupport u v).card = dist u v := by
  rfl

private lemma fin2_ne_ne_iff_table {a b c : Fin 2} :
    a ≠ b ↔ (a ≠ c ∧ b = c) ∨ (a = c ∧ b ≠ c) := by
  fin_cases a <;> fin_cases b <;> fin_cases c <;> simp

/-- Binary difference supports satisfy the symmetric-difference identity. -/
theorem binaryDiffSupport_eq_symmDiff {n : Nat}
    (base v w : QaryWord 2 n) :
    binaryDiffSupport v w =
      (binaryDiffSupport base v \ binaryDiffSupport base w) ∪
        (binaryDiffSupport base w \ binaryDiffSupport base v) := by
  ext a
  simp only [mem_binaryDiffSupport, Finset.mem_union, Finset.mem_sdiff]
  constructor
  · intro h
    rcases (fin2_ne_ne_iff_table (a := v a) (b := w a) (c := base a)).mp h with
      ⟨hv, hw⟩ | ⟨hv, hw⟩
    · exact Or.inl ⟨by simpa [ne_comm] using hv, by simp [hw]⟩
    · exact Or.inr ⟨by simpa [ne_comm] using hw, by simp [hv]⟩
  · intro h
    rcases h with ⟨hv, hw⟩ | ⟨hw, hv⟩
    · have hw_eq : w a = base a := by simpa [eq_comm] using hw
      exact (fin2_ne_ne_iff_table (a := v a) (b := w a) (c := base a)).mpr
        (Or.inl ⟨by simpa [ne_comm] using hv, hw_eq⟩)
    · have hv_eq : v a = base a := by simpa [eq_comm] using hv
      exact (fin2_ne_ne_iff_table (a := v a) (b := w a) (c := base a)).mpr
        (Or.inr ⟨hv_eq, by simpa [ne_comm] using hw⟩)

lemma two_le_card_of_mem_ne {α : Type} [DecidableEq α] {s : Finset α} {a b : α}
    (ha : a ∈ s) (hb : b ∈ s) (hne : a ≠ b) : 2 <= s.card := by
  have hsub : ({a, b} : Finset α) ⊆ s := by
    intro x hx
    simp at hx
    rcases hx with rfl | rfl
    · exact ha
    · exact hb
  calc
    2 = ({a, b} : Finset α).card := by simp [hne]
    _ <= s.card := Finset.card_le_card hsub

/-- A binary word is determined by its difference support relative to a fixed base word. -/
theorem binary_word_eq_of_diffSupport_eq {n : Nat}
    {base v w : QaryWord 2 n}
    (h : binaryDiffSupport base v = binaryDiffSupport base w) :
    v = w := by
  funext a
  have hiff : (base a ≠ v a) ↔ (base a ≠ w a) := by
    have hm := congrArg (fun s : Finset (Fin n) => a ∈ s) h
    simpa using hm
  by_contra hne
  rcases (fin2_ne_ne_iff_table (a := v a) (b := w a) (c := base a)).mp hne with
      ⟨hv, hw⟩ | ⟨hv, hw⟩
  · have hv' : base a ≠ v a := by simpa [ne_comm] using hv
    have hw' : ¬ base a ≠ w a := by simp [hw]
    exact hw' (hiff.mp hv')
  · have hw' : base a ≠ w a := by simpa [ne_comm] using hw
    have hv' : ¬ base a ≠ v a := by simp [hv]
    exact hv' (hiff.mpr hw')

theorem binaryDiffSupport_subset_of_close_to_both {n : Nat}
    {u c v : QaryWord 2 n}
    (hDpos : 0 < (binaryDiffSupport u c).card)
    (hE : (binaryDiffSupport u v).card <= 1)
    (hF : (binaryDiffSupport v c).card <= 1) :
    binaryDiffSupport u v ⊆ binaryDiffSupport u c := by
  intro a haE
  by_contra haD
  rcases Finset.card_pos.mp hDpos with ⟨b, hbD⟩
  have hne : a ≠ b := by
    intro hab
    subst b
    exact haD hbD
  have hb_not_E : b ∉ binaryDiffSupport u v := by
    intro hbE
    have htwo : 2 <= (binaryDiffSupport u v).card :=
      two_le_card_of_mem_ne haE hbE hne
    omega
  have haF : a ∈ binaryDiffSupport v c := by
    rw [binaryDiffSupport_eq_symmDiff u v c]
    exact Finset.mem_union.mpr (Or.inl (Finset.mem_sdiff.mpr ⟨haE, haD⟩))
  have hbF : b ∈ binaryDiffSupport v c := by
    rw [binaryDiffSupport_eq_symmDiff u v c]
    exact Finset.mem_union.mpr (Or.inr (Finset.mem_sdiff.mpr ⟨hbD, hb_not_E⟩))
  have htwoF : 2 <= (binaryDiffSupport v c).card :=
    two_le_card_of_mem_ne haF hbF hne
  omega

/-- Intersection of a radius-one ball around `u` with a radius-one ball around `c`. -/
def binaryRadiusOneBallIntersection13 (u c : QaryWord 2 13) : Finset (QaryWord 2 13) :=
  (ballFinset u 1).filter (fun v => dist v c <= 1)

@[simp]
theorem mem_binaryRadiusOneBallIntersection13 {u c v : QaryWord 2 13} :
    v ∈ binaryRadiusOneBallIntersection13 u c ↔ dist u v <= 1 ∧ dist v c <= 1 := by
  simp [binaryRadiusOneBallIntersection13, mem_ballFinset, dist_comm]

/-- Incidences between the radius-one ball around `u` and radius-one code balls. -/
def binaryRadiusOneIncidence13 (C : Finset (QaryWord 2 13)) (u : QaryWord 2 13) :
    Finset (QaryWord 2 13 × QaryWord 2 13) :=
  ((ballFinset u 1).product C).filter (fun p => dist p.1 p.2 <= 1)

@[simp]
theorem binaryBall_card_13_1 (u : QaryWord 2 13) :
    (ballFinset u 1).card = 14 := by
  rw [qaryBallVolume_eq_card]
  norm_num [qaryBallVolume, Finset.sum_range_succ]

theorem binaryRadiusOneBallIntersection13_card_le (u c : QaryWord 2 13) :
    (binaryRadiusOneBallIntersection13 u c).card <=
      (if dist u c = 0 then 14 else if dist u c <= 2 then 2 else 0 : Nat) := by
  by_cases h0 : dist u c = 0
  · have hle : (binaryRadiusOneBallIntersection13 u c).card <= (ballFinset u 1).card := by
      exact Finset.card_le_card (by
        intro v hv
        exact (Finset.mem_filter.mp hv).1)
    simpa [h0, binaryRadiusOneBallIntersection13] using hle
  · by_cases hle2 : dist u c <= 2
    · have hDpos : 0 < (binaryDiffSupport u c).card := by
        rw [binaryDiffSupport_card_eq_dist]
        omega
      by_cases hd1 : dist u c = 1
      · have hDcard : (binaryDiffSupport u c).card = 1 := by
          rw [binaryDiffSupport_card_eq_dist, hd1]
        have himage_subset :
            (binaryRadiusOneBallIntersection13 u c).image (fun v => binaryDiffSupport u v) ⊆
              (binaryDiffSupport u c).powerset := by
          intro E hE
          rcases Finset.mem_image.mp hE with ⟨v, hv, rfl⟩
          rw [Finset.mem_powerset]
          rw [mem_binaryRadiusOneBallIntersection13] at hv
          have hEcard : (binaryDiffSupport u v).card <= 1 := by
            rw [binaryDiffSupport_card_eq_dist]
            exact hv.1
          have hFcard : (binaryDiffSupport v c).card <= 1 := by
            rw [binaryDiffSupport_card_eq_dist]
            exact hv.2
          exact binaryDiffSupport_subset_of_close_to_both hDpos hEcard hFcard
        have hinj : Set.InjOn (fun v => binaryDiffSupport u v)
            (binaryRadiusOneBallIntersection13 u c : Set (QaryWord 2 13)) := by
          intro _v _hv _w _hw heq
          exact binary_word_eq_of_diffSupport_eq heq
        have hcard_image :
            ((binaryRadiusOneBallIntersection13 u c).image (fun v => binaryDiffSupport u v)).card =
              (binaryRadiusOneBallIntersection13 u c).card :=
          Finset.card_image_of_injOn hinj
        have hcard : (binaryRadiusOneBallIntersection13 u c).card <=
            (binaryDiffSupport u c).powerset.card := by
          rw [← hcard_image]
          exact Finset.card_le_card himage_subset
        have hDpow : (binaryDiffSupport u c).powerset.card = 2 := by
          simp [Finset.card_powerset, hDcard]
        have hcard2 : (binaryRadiusOneBallIntersection13 u c).card <= 2 := by
          simpa [hDpow] using hcard
        simpa [h0, hle2] using hcard2
      · have hd2 : dist u c = 2 := by omega
        have hDcard : (binaryDiffSupport u c).card = 2 := by
          rw [binaryDiffSupport_card_eq_dist, hd2]
        have himage_subset :
            (binaryRadiusOneBallIntersection13 u c).image (fun v => binaryDiffSupport u v) ⊆
              (binaryDiffSupport u c).powersetCard 1 := by
          intro E hE
          rcases Finset.mem_image.mp hE with ⟨v, hv, rfl⟩
          rw [mem_binaryRadiusOneBallIntersection13] at hv
          have hE_le : (binaryDiffSupport u v).card <= 1 := by
            rw [binaryDiffSupport_card_eq_dist]
            exact hv.1
          have hFcard : (binaryDiffSupport v c).card <= 1 := by
            rw [binaryDiffSupport_card_eq_dist]
            exact hv.2
          have hsub := binaryDiffSupport_subset_of_close_to_both hDpos hE_le hFcard
          have hne_uv : u ≠ v := by
            intro huv_eq
            have hvc2 : dist v c = 2 := by simpa [huv_eq] using hd2
            omega
          have hdist_uv_pos : 0 < dist u v := by
            have hdist_ne : dist u v ≠ 0 := by
              intro hdist0
              exact hne_uv (dist_eq_zero.mp hdist0)
            omega
          have hE_card : (binaryDiffSupport u v).card = 1 := by
            rw [binaryDiffSupport_card_eq_dist]
            omega
          exact Finset.mem_powersetCard.mpr ⟨hsub, hE_card⟩
        have hinj : Set.InjOn (fun v => binaryDiffSupport u v)
            (binaryRadiusOneBallIntersection13 u c : Set (QaryWord 2 13)) := by
          intro _v _hv _w _hw heq
          exact binary_word_eq_of_diffSupport_eq heq
        have hcard_image :
            ((binaryRadiusOneBallIntersection13 u c).image (fun v => binaryDiffSupport u v)).card =
              (binaryRadiusOneBallIntersection13 u c).card :=
          Finset.card_image_of_injOn hinj
        have hcard : (binaryRadiusOneBallIntersection13 u c).card <=
            ((binaryDiffSupport u c).powersetCard 1).card := by
          rw [← hcard_image]
          exact Finset.card_le_card himage_subset
        have hDpow : ((binaryDiffSupport u c).powersetCard 1).card = 2 := by
          simp [Finset.card_powersetCard, hDcard]
        have hcard2 : (binaryRadiusOneBallIntersection13 u c).card <= 2 := by
          simpa [hDpow] using hcard
        simpa [h0, hle2] using hcard2
    · have hempty : (binaryRadiusOneBallIntersection13 u c).card = 0 := by
        rw [Finset.card_eq_zero]
        ext v
        constructor
        · intro hv
          rw [mem_binaryRadiusOneBallIntersection13] at hv
          have huc := dist_triangle u v c
          exact False.elim (hle2 (by omega))
        · intro hv
          cases hv
      simp [h0, hle2, hempty]

theorem binaryRadiusOneIncidence13_lower_card
    (C : Finset (QaryWord 2 13)) (hC : CoversFinset C 1) (u : QaryWord 2 13) :
    (ballFinset u 1).card <= (binaryRadiusOneIncidence13 C u).card := by
  have hsubset : ballFinset u 1 ⊆ (binaryRadiusOneIncidence13 C u).image Prod.fst := by
    intro v hv
    rcases hC v with ⟨c, hc, hdist⟩
    refine Finset.mem_image.mpr ?_
    refine ⟨(v, c), ?_, rfl⟩
    simp [binaryRadiusOneIncidence13, hv, hc, hdist]
  calc
    (ballFinset u 1).card <= ((binaryRadiusOneIncidence13 C u).image Prod.fst).card :=
      Finset.card_le_card hsubset
    _ <= (binaryRadiusOneIncidence13 C u).card := Finset.card_image_le

theorem binaryRadiusOneIncidence13_card
    (C : Finset (QaryWord 2 13)) (u : QaryWord 2 13) :
    (binaryRadiusOneIncidence13 C u).card =
      ∑ c ∈ C, (((ballFinset u 1).filter (fun v => dist v c <= 1)).card) := by
  unfold binaryRadiusOneIncidence13
  rw [Finset.card_eq_sum_ones]
  rw [Finset.sum_filter]
  change (∑ a ∈ (ballFinset u 1) ×ˢ C, if dist a.1 a.2 <= 1 then 1 else 0) =
    ∑ c ∈ C, {v ∈ ballFinset u 1 | dist v c <= 1}.card
  rw [Finset.sum_product_right]
  apply Finset.sum_congr rfl
  intro c _hc
  rw [Finset.card_eq_sum_ones, Finset.sum_filter]

theorem binaryVanWee_13_1_cap_sum
    (C : Finset (QaryWord 2 13)) (u : QaryWord 2 13) :
    (∑ c ∈ C, (if dist u c = 0 then 14 else if dist u c <= 2 then 2 else 0 : Nat)) =
      14 * shellCount 2 13 C u 0 + 2 * shellCount 2 13 C u 1 +
        2 * shellCount 2 13 C u 2 := by
  unfold shellCount
  rw [Finset.card_eq_sum_ones, Finset.sum_filter]
  rw [Finset.card_eq_sum_ones, Finset.sum_filter]
  rw [Finset.card_eq_sum_ones, Finset.sum_filter]
  rw [Finset.mul_sum, Finset.mul_sum, Finset.mul_sum]
  rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro c _hc
  by_cases h0 : dist u c = 0
  · simp [h0]
  · by_cases h1 : dist u c = 1
    · simp [h1]
    · by_cases h2 : dist u c = 2
      · simp [h2]
      · have hnotle : ¬ dist u c <= 2 := by omega
        simp [h0, h1, h2, hnotle]

/--
The concrete van Wee shell-count inequality follows from the geometric fact that
a radius-one code ball meets `B(u,1)` in at most `14` points when centered at
`u`, at most `2` points when its center is within distance `2`, and no points
otherwise.
-/
theorem binaryVanWee_13_1_shell_bound_of_ball_intersection_bound
    (hinter :
      forall u c : QaryWord 2 13,
        ((ballFinset u 1).filter (fun v => dist v c <= 1)).card <=
          (if dist u c = 0 then 14 else if dist u c <= 2 then 2 else 0 : Nat))
    (C : Finset (QaryWord 2 13)) (hC : CoversFinset C 1) (u : QaryWord 2 13) :
    (7 : Rat) <= 7 * (shellCount 2 13 C u 0 : Rat) +
      (shellCount 2 13 C u 1 : Rat) +
        (shellCount 2 13 C u 2 : Rat) := by
  have hlowerCard := binaryRadiusOneIncidence13_lower_card C hC u
  have hlower : 14 <= (binaryRadiusOneIncidence13 C u).card := by
    simpa using hlowerCard
  have hupper :
      (binaryRadiusOneIncidence13 C u).card <=
        14 * shellCount 2 13 C u 0 + 2 * shellCount 2 13 C u 1 +
          2 * shellCount 2 13 C u 2 := by
    calc
      (binaryRadiusOneIncidence13 C u).card =
          ∑ c ∈ C, (((ballFinset u 1).filter (fun v => dist v c <= 1)).card) :=
        binaryRadiusOneIncidence13_card C u
      _ <= ∑ c ∈ C,
          (if dist u c = 0 then 14 else if dist u c <= 2 then 2 else 0 : Nat) := by
            apply Finset.sum_le_sum
            intro c _hc
            exact hinter u c
      _ = 14 * shellCount 2 13 C u 0 + 2 * shellCount 2 13 C u 1 +
          2 * shellCount 2 13 C u 2 := binaryVanWee_13_1_cap_sum C u
  have hnat : 14 <= 14 * shellCount 2 13 C u 0 + 2 * shellCount 2 13 C u 1 +
      2 * shellCount 2 13 C u 2 := le_trans hlower hupper
  have hrat : (14 : Rat) <=
      14 * (shellCount 2 13 C u 0 : Rat) + 2 * (shellCount 2 13 C u 1 : Rat) +
        2 * (shellCount 2 13 C u 2 : Rat) := by
    exact_mod_cast hnat
  linarith

theorem binaryTable_vanWee_13_1_valid_of_ball_intersection_bound
    (hinter :
      forall u c : QaryWord 2 13,
        ((ballFinset u 1).filter (fun v => dist v c <= 1)).card <=
          (if dist u c = 0 then 14 else if dist u c <= 2 then 2 else 0 : Nat)) :
    ValidLinearInequality 2 13 1
      (binaryTableLambda 13 1 BinaryTableInequality.vanWee)
      (binaryTableBeta 13 1 BinaryTableInequality.vanWee) := by
  apply binaryTable_vanWee_13_1_valid_of_shell_bound
  exact binaryVanWee_13_1_shell_bound_of_ball_intersection_bound hinter

theorem binaryVanWee_13_1_shell_bound
    (C : Finset (QaryWord 2 13)) (hC : CoversFinset C 1) (u : QaryWord 2 13) :
    (7 : Rat) <= 7 * (shellCount 2 13 C u 0 : Rat) +
      (shellCount 2 13 C u 1 : Rat) +
        (shellCount 2 13 C u 2 : Rat) := by
  apply binaryVanWee_13_1_shell_bound_of_ball_intersection_bound
  · intro u c
    simpa [binaryRadiusOneBallIntersection13] using
      binaryRadiusOneBallIntersection13_card_le u c
  · exact hC

theorem binaryTable_vanWee_13_1_valid :
    ValidLinearInequality 2 13 1
      (binaryTableLambda 13 1 BinaryTableInequality.vanWee)
      (binaryTableBeta 13 1 BinaryTableInequality.vanWee) := by
  exact binaryTable_vanWee_13_1_valid_of_shell_bound
    binaryVanWee_13_1_shell_bound

theorem binaryTable_13_1_inequality_valid (ineq : BinaryTableInequality) :
    ValidLinearInequality 2 13 1
      (binaryTableLambda 13 1 ineq) (binaryTableBeta 13 1 ineq) := by
  cases ineq with
  | sphere => exact binaryTable_sphere_valid 13 1
  | vanWee => exact binaryTable_vanWee_13_1_valid

/-- Positive block indices, used for the unbordered `k > 0` paper blocks. -/
abbrev BinaryPositiveBlockIndex (n : Nat) :=
  { idx : BinaryBlockIndex n // 0 < idx.k }

namespace BinaryPositiveBlockIndex

instance (n : Nat) : Fintype (BinaryPositiveBlockIndex n) := inferInstance

end BinaryPositiveBlockIndex

/-- Julia/exporter row coordinate for a binary block. -/
abbrev BinaryTableBlockCoord {n : Nat} (idx : BinaryBlockIndex n) :=
  BinaryBlockCoord idx

/-- Paper index represented by a Julia/exporter row coordinate. -/
def binaryTableCoordIndex {n : Nat} (idx : BinaryBlockIndex n)
    (coord : BinaryTableBlockCoord idx) : Nat :=
  n - idx.k - coord.val

/-- A binary block entry expression in Julia/exporter row order. -/
def binaryTableBlockEntryExpr (n : Nat) (idx : BinaryBlockIndex n)
    (coeffExpr : BinaryOrbitIndex n -> LinExpr (BinaryOrbitIndex n))
    (row col : BinaryTableBlockCoord idx) : LinExpr (BinaryOrbitIndex n) :=
  let i := binaryTableCoordIndex idx row
  let j := binaryTableCoordIndex idx col
  LinExpr.sum (Finset.range (n + 1)) (fun t =>
    if ht_i : t <= i then
      if ht_j : t <= j then
        if hij : i + j <= n + t then
          LinExpr.smul (betaCoeff n i j idx.k t)
            (coeffExpr
              { i := i, j := j, t := t, ht_i := ht_i, ht_j := ht_j, hij := hij })
        else
          LinExpr.constExpr (BinaryOrbitIndex n) 0
      else
        LinExpr.constExpr (BinaryOrbitIndex n) 0
    else
      LinExpr.constExpr (BinaryOrbitIndex n) 0)

/-- A binary Schrijver block matrix in Julia/exporter row order. -/
def binaryTableBlockMatrixExpr (n : Nat) (idx : BinaryBlockIndex n)
    (coeffExpr : BinaryOrbitIndex n -> LinExpr (BinaryOrbitIndex n)) :
    Matrix (BinaryTableBlockCoord idx) (BinaryTableBlockCoord idx)
      (LinExpr (BinaryOrbitIndex n)) :=
  fun row col => binaryTableBlockEntryExpr n idx coeffExpr row col

/-- Complement coefficients `x^0_{i+j-2t,0} - x^t_{i,j}` from Proposition 4.3. -/
def binaryComplementCoeffExpr (n : Nat)
    (source : BinaryOrbitIndex n) : LinExpr (BinaryOrbitIndex n) :=
  LinExpr.sub (binaryZeroCoeffExpr n (binaryOrbitDistanceIndex source))
    (LinExpr.var source)

/-- Off-diagonal border expression used for the `k = 0` complement block. -/
def binaryComplementBorderExpr (n : Nat) (coord : Fin (n + 1)) :
    LinExpr (BinaryOrbitIndex n) :=
  let i := n - coord.val
  LinExpr.smul (Nat.choose n i)
    (LinExpr.sub (binaryZeroCoeffExpr n 0) (binaryZeroCoeffExpr n i))

/-- Bordered complement block for `k = 0`, in Julia/exporter row order. -/
def binaryComplementZeroBlockExpr (n : Nat) :
    Matrix (Option (Fin (n + 1))) (Option (Fin (n + 1)))
      (LinExpr (BinaryOrbitIndex n))
  | none, none =>
      LinExpr.sub (LinExpr.constExpr (BinaryOrbitIndex n) 1)
        (binaryZeroCoeffExpr n 0)
  | none, some col => binaryComplementBorderExpr n col
  | some row, none => binaryComplementBorderExpr n row
  | some row, some col =>
      binaryTableBlockEntryExpr n
        ({ k := 0, hk := by omega } : BinaryBlockIndex n)
        (binaryComplementCoeffExpr n) row col

/-- Bordered Lasserre off-diagonal expression used for the `k = 0` block. -/
def binaryLasserreBorderExpr {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat) (coord : Fin (n + 1)) :
    LinExpr (BinaryOrbitIndex n) :=
  let i := n - coord.val
  LinExpr.smul (Nat.choose n i)
    (binaryLasserreCoeffExpr lambda beta
      { i := i, j := i, t := i, ht_i := Nat.le_refl i,
        ht_j := Nat.le_refl i, hij := by omega })

/-- Bordered Lasserre block for `k = 0`, in Julia/exporter row order. -/
def binaryLasserreZeroBlockExpr {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat) :
    Matrix (Option (Fin (n + 1))) (Option (Fin (n + 1)))
      (LinExpr (BinaryOrbitIndex n))
  | none, none =>
      LinExpr.sub
        (LinExpr.smul
          (Finset.univ.sum (fun i : Fin (n + 1) =>
            (Nat.choose n i.val : Rat) * lambda i))
          (binaryZeroCoeffExpr n 0))
        (LinExpr.constExpr (BinaryOrbitIndex n) beta)
  | none, some col => binaryLasserreBorderExpr lambda beta col
  | some row, none => binaryLasserreBorderExpr lambda beta row
  | some row, some col =>
      binaryTableBlockEntryExpr n
        ({ k := 0, hk := by omega } : BinaryBlockIndex n)
        (binaryLasserreCoeffExpr lambda beta) row col

/-- Scalar atoms for the full binary Table 1 SDP. -/
inductive BinaryTableScalarAtom (n r : Nat) where
  | nonneg : BinaryOrbitIndex n -> BinaryTableScalarAtom n r
  | diagonalUpper : BinaryOrbitIndex n -> BinaryTableScalarAtom n r
  | basicTriangleLower : BinaryOrbitIndex n -> BinaryTableScalarAtom n r
  | basicDistanceUpper : BinaryOrbitIndex n -> BinaryTableScalarAtom n r
  | symmetryLe : BinaryOrbitIndex n -> BinaryOrbitIndex n -> BinaryTableScalarAtom n r
  | symmetryGe : BinaryOrbitIndex n -> BinaryOrbitIndex n -> BinaryTableScalarAtom n r
  | matrixCut :
      BinaryTableInequality -> Fin 4 -> BinaryOrbitIndex n -> BinaryTableScalarAtom n r
deriving DecidableEq, Fintype

/-- Scalar atom expressions for the full binary Table 1 SDP. -/
def binaryTableScalarAtomExpr {n r : Nat} :
    BinaryTableScalarAtom n r -> LinExpr (BinaryOrbitIndex n)
  | .nonneg idx => LinExpr.var idx
  | .diagonalUpper idx =>
      LinExpr.sub (binaryDiagonalCoeffExpr n idx.i) (LinExpr.var idx)
  | .basicTriangleLower idx =>
      LinExpr.add
        (LinExpr.sub (LinExpr.var idx) (binaryZeroCoeffExpr n idx.i))
        (LinExpr.sub (binaryZeroCoeffExpr n 0)
          (binaryZeroCoeffExpr n (binaryOrbitDistanceIndex idx)))
  | .basicDistanceUpper idx =>
      LinExpr.sub (binaryZeroCoeffExpr n (binaryOrbitDistanceIndex idx))
        (LinExpr.var idx)
  | .symmetryLe idx idx' =>
      if List.Perm [idx.i, idx.j, binaryOrbitDistanceIndex idx]
          [idx'.i, idx'.j, binaryOrbitDistanceIndex idx'] then
        LinExpr.sub (LinExpr.var idx') (LinExpr.var idx)
      else
        LinExpr.constExpr (BinaryOrbitIndex n) 0
  | .symmetryGe idx idx' =>
      if List.Perm [idx.i, idx.j, binaryOrbitDistanceIndex idx]
          [idx'.i, idx'.j, binaryOrbitDistanceIndex idx'] then
        LinExpr.sub (LinExpr.var idx) (LinExpr.var idx')
      else
        LinExpr.constExpr (BinaryOrbitIndex n) 0
  | .matrixCut ineq cut source =>
      let lambda := binaryTableLambda n r ineq
      let beta := binaryTableBeta n r ineq
      match cut.val with
      | 0 =>
          LinExpr.sub (binaryMatrixCutLhs1Expr lambda source)
            (LinExpr.smul beta (binaryZeroCoeffExpr n source.i))
      | 1 =>
          LinExpr.sub (binaryMatrixCutLhs2Expr lambda source)
            (LinExpr.smul beta
              (LinExpr.sub (binaryZeroCoeffExpr n 0)
                (binaryZeroCoeffExpr n source.i)))
      | 2 =>
          LinExpr.sub (binaryMatrixCutLhs3Expr lambda source)
            (LinExpr.smul beta
              (LinExpr.sub (binaryZeroCoeffExpr n 0)
                (binaryZeroCoeffExpr n source.i)))
      | _ =>
          LinExpr.sub (binaryMatrixCutLhs4Expr lambda source)
            (LinExpr.smul beta
              (LinExpr.add (LinExpr.constExpr (BinaryOrbitIndex n) 1)
                (LinExpr.add
                  (LinExpr.smul (-2) (binaryZeroCoeffExpr n 0))
                  (binaryZeroCoeffExpr n source.i))))

/-- PSD matrix atoms for the full binary Table 1 SDP. -/
inductive BinaryTableMatrixAtom (n r : Nat) where
  | primal : BinaryBlockIndex n -> BinaryTableMatrixAtom n r
  | complementZero : BinaryTableMatrixAtom n r
  | complementPositive : BinaryPositiveBlockIndex n -> BinaryTableMatrixAtom n r
  | lasserreZero : BinaryTableInequality -> BinaryTableMatrixAtom n r
  | lasserrePositive :
      BinaryTableInequality -> BinaryPositiveBlockIndex n -> BinaryTableMatrixAtom n r
deriving DecidableEq, Fintype

namespace BinaryTableMatrixAtom

/-- Row/column type attached to each Table 1 PSD atom. -/
abbrev Coord {n r : Nat} : BinaryTableMatrixAtom n r -> Type
  | .primal idx => BinaryTableBlockCoord idx
  | .complementZero => Option (Fin (n + 1))
  | .complementPositive idx => BinaryTableBlockCoord idx.val
  | .lasserreZero _ => Option (Fin (n + 1))
  | .lasserrePositive _ idx => BinaryTableBlockCoord idx.val

instance {n r : Nat} (atom : BinaryTableMatrixAtom n r) : Fintype (Coord atom) := by
  cases atom <;> infer_instance

end BinaryTableMatrixAtom

/-- PSD matrix atom expressions for the full binary Table 1 SDP. -/
def binaryTableMatrixAtomExpr {n r : Nat} :
    forall atom : BinaryTableMatrixAtom n r,
      Matrix (BinaryTableMatrixAtom.Coord atom) (BinaryTableMatrixAtom.Coord atom)
        (LinExpr (BinaryOrbitIndex n))
  | .primal idx =>
      binaryTableBlockMatrixExpr n idx (fun source => LinExpr.var source)
  | .complementZero =>
      binaryComplementZeroBlockExpr n
  | .complementPositive idx =>
      binaryTableBlockMatrixExpr n idx.val (binaryComplementCoeffExpr n)
  | .lasserreZero ineq =>
      binaryLasserreZeroBlockExpr
        (binaryTableLambda n r ineq) (binaryTableBeta n r ineq)
  | .lasserrePositive ineq idx =>
      binaryTableBlockMatrixExpr n idx.val
        (binaryLasserreCoeffExpr
          (binaryTableLambda n r ineq) (binaryTableBeta n r ineq))

/-- Feasible points for the full binary Table 1 SDP. -/
def BinaryTableConstraints (n r : Nat) (x : BinaryX n) : Prop :=
  SDPConstraints (binaryTableScalarAtomExpr (n := n) (r := r))
    (binaryTableMatrixAtomExpr (n := n) (r := r)) x

/--
The canonical code-cell vector has reduced objective exactly `|C|^3`.

This is independent of which SDP constraints the vector satisfies; it is just
the normalized partition of ordered code triples by binary orbit.
-/
theorem binaryCodeCellObjective_eq_card_cube {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    binaryReducedObjective n (binaryCodeCellX C) = (C.card : Rat) ^ 3 := by
  have hobj :=
    (WeightedObjectivePartitionCertificate.ofClassifier
      (BinaryOrbitIndex n) (BinaryCodeTriple n) (binaryCodeTriples C)
      binaryCodeTripleOrbitOf (((2 ^ n : Nat) : Rat))
      (binaryOrbitMultiplicity n) (binaryCodeCellX C)
      (binaryCodeCellX_cell_value C (binaryCodeCellDenominator_ne_zero n))).objective_eq_card
  unfold binaryReducedObjective at hobj ⊢
  rw [hobj]
  simp [binaryCodeTriples, card_finsetCube]

/--
Convert code-cell feasibility for the full Table 1 SDP into the objective
bridge required by quotient/table dual certificates.
-/
theorem binaryTableCodeObjectiveBound_of_codeCellConstraints {n r : Nat}
    (codeCellConstraints :
      forall C : Finset (QaryWord 2 n),
        CoversFinset C r -> BinaryTableConstraints n r (binaryCodeCellX C)) :
    forall C : Finset (QaryWord 2 n),
      CoversFinset C r ->
        exists x : BinaryX n,
          BinaryTableConstraints n r x /\
            binaryReducedObjective n x <= (C.card : Rat) ^ 3 := by
  intro C hC
  refine ⟨binaryCodeCellX C, codeCellConstraints C hC, ?_⟩
  rw [binaryCodeCellObjective_eq_card_cube]

/-- Exact dual certificate for the full binary Table 1 SDP objective. -/
structure BinaryTableDualCertificate
    (n r L : Nat) (WeightIdx : BinaryTableMatrixAtom n r -> Type)
    [forall atom : BinaryTableMatrixAtom n r, Fintype (WeightIdx atom)] where
  bound : Rat
  cubeThreshold : ((L - 1 : Nat) : Rat) ^ 3 < bound
  objectiveCertificate :
    SDPObjectiveLowerWeightedCertificate (BinaryOrbitIndex n)
      (BinaryTableScalarAtom n r)
      (BinaryTableMatrixAtom n r)
      (@BinaryTableMatrixAtom.Coord n r)
      WeightIdx
      (binaryTableScalarAtomExpr (n := n) (r := r))
      (binaryTableMatrixAtomExpr (n := n) (r := r))
      (binaryReducedObjectiveExpr n)
      bound
  codeObjectiveBound :
    forall C : Finset (QaryWord 2 n),
      CoversFinset C r ->
        exists x : BinaryX n,
          BinaryTableConstraints n r x /\
            binaryReducedObjective n x <= (C.card : Rat) ^ 3

/-- Weak-duality theorem for exact full binary Table 1 certificates. -/
theorem binary_table_sdp_lower_bound
    {n r L : Nat} {WeightIdx : BinaryTableMatrixAtom n r -> Type}
    [forall atom : BinaryTableMatrixAtom n r, Fintype (WeightIdx atom)]
    (cert : BinaryTableDualCertificate n r L WeightIdx) :
    QaryKLower 2 n r L := by
  apply lower_of_cube_objective_bound cert.cubeThreshold
  intro C hC
  rcases cert.codeObjectiveBound C hC with ⟨x, hx, hobj⟩
  have hbound :=
    SDPObjectiveLowerWeightedCertificate.sound cert.objectiveCertificate x hx
  rw [binaryReducedObjectiveExpr_eval] at hbound
  exact le_trans hbound hobj

end

end GijswijtPolak2025
end SDP
end CoveringCodes
