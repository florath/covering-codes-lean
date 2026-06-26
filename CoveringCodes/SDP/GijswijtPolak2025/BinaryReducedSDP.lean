import CoveringCodes.SDP.GijswijtPolak2025.BinaryTerwilliger
import CoveringCodes.SDP.GijswijtPolak2025.LinearInequalities
import CoveringCodes.SDP.GijswijtPolak2025.CubeThreshold
import CoveringCodes.SDP.GijswijtPolak2025.Certificates.Dual
import CoveringCodes.SDP.GijswijtPolak2025.Certificates.FiberCounting
import CoveringCodes.SDP.GijswijtPolak2025.Certificates.ObjectivePartition
import CoveringCodes.SDP.GijswijtPolak2025.CombinatorialIdentities

/-!
# Binary reduced SDP targets from Section 4
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

noncomputable section

abbrev BinaryX (n : Nat) := BinaryOrbitIndex n -> Rat

/-- Coordinatewise xor of binary words. -/
def binaryXorWord {n : Nat} (u v : QaryWord 2 n) : QaryWord 2 n :=
  fun coord => if u coord = v coord then 0 else 1

private theorem fin2_eq_zero_or_one_basic (a : Fin 2) : a = 0 ∨ a = 1 := by
  have hlt : a.val < 2 := a.isLt
  have hval : a.val = 0 ∨ a.val = 1 := by omega
  rcases hval with hval | hval
  · exact Or.inl (Fin.ext hval)
  · exact Or.inr (Fin.ext hval)

@[simp]
theorem binaryXorWord_self {n : Nat} (u : QaryWord 2 n) :
    binaryXorWord u u = zeroWord 2 n (by decide) := by
  funext coord
  simp [binaryXorWord, zeroWord]

@[simp]
theorem binaryXorWord_zero_left {n : Nat} (u : QaryWord 2 n) :
    binaryXorWord (zeroWord 2 n (by decide)) u = u := by
  funext coord
  rcases fin2_eq_zero_or_one_basic (u coord) with hu | hu <;>
    simp [binaryXorWord, zeroWord, hu]

@[simp]
theorem binaryXorWord_zero_right {n : Nat} (u : QaryWord 2 n) :
    binaryXorWord u (zeroWord 2 n (by decide)) = u := by
  funext coord
  rcases fin2_eq_zero_or_one_basic (u coord) with hu | hu <;>
    simp [binaryXorWord, zeroWord, hu]

theorem binaryXorWord_comm {n : Nat} (u v : QaryWord 2 n) :
    binaryXorWord u v = binaryXorWord v u := by
  funext coord
  rcases fin2_eq_zero_or_one_basic (u coord) with hu | hu <;>
    rcases fin2_eq_zero_or_one_basic (v coord) with hv | hv <;>
      simp [binaryXorWord, hu, hv]

theorem binaryXorWord_assoc {n : Nat}
    (u v w : QaryWord 2 n) :
    binaryXorWord (binaryXorWord u v) w =
      binaryXorWord u (binaryXorWord v w) := by
  funext coord
  rcases fin2_eq_zero_or_one_basic (u coord) with hu | hu <;>
    rcases fin2_eq_zero_or_one_basic (v coord) with hv | hv <;>
    rcases fin2_eq_zero_or_one_basic (w coord) with hw | hw <;>
      simp [binaryXorWord, hu, hv, hw]

theorem binaryXorWord_xor_eq_right {n : Nat}
    {u v w : QaryWord 2 n}
    (h : binaryXorWord u v = w) :
    binaryXorWord u w = v := by
  funext coord
  have hcoord := congrFun h coord
  rcases fin2_eq_zero_or_one_basic (u coord) with hu | hu <;>
    rcases fin2_eq_zero_or_one_basic (v coord) with hv | hv <;>
    rcases fin2_eq_zero_or_one_basic (w coord) with hw | hw <;>
      simp [binaryXorWord, hu, hv, hw] at hcoord ⊢

theorem binaryXorWord_xor_eq_left {n : Nat}
    {u v w : QaryWord 2 n}
    (h : binaryXorWord u v = w) :
    binaryXorWord w u = v := by
  rw [binaryXorWord_comm]
  exact binaryXorWord_xor_eq_right h

theorem binaryXorWord_source_relativeTarget_eq_baseDiff {n : Nat}
    (source base code : QaryWord 2 n) :
    binaryXorWord source (binaryXorWord code (binaryXorWord base source)) =
      binaryXorWord base code := by
  funext coord
  rcases fin2_eq_zero_or_one_basic (source coord) with hs | hs <;>
    rcases fin2_eq_zero_or_one_basic (base coord) with hb | hb <;>
    rcases fin2_eq_zero_or_one_basic (code coord) with hc | hc <;>
      simp [binaryXorWord, hs, hb, hc]

theorem binaryXorWord_ne_left_iff {n : Nat}
    (base u : QaryWord 2 n) (coord : Fin n) :
    binaryXorWord base u coord ≠ base coord ↔ u coord ≠ 0 := by
  rcases fin2_eq_zero_or_one_basic (base coord) with hb | hb <;>
    rcases fin2_eq_zero_or_one_basic (u coord) with hu | hu <;>
      simp [binaryXorWord, hb, hu]

@[simp]
theorem binaryXorWord_left_cancel {n : Nat} (base u : QaryWord 2 n) :
    binaryXorWord base (binaryXorWord base u) = u := by
  funext coord
  rcases fin2_eq_zero_or_one_basic (base coord) with hb | hb <;>
    rcases fin2_eq_zero_or_one_basic (u coord) with hu | hu <;>
      simp [binaryXorWord, hb, hu]

@[simp]
theorem binaryXorWord_right_cancel {n : Nat} (base u : QaryWord 2 n) :
    binaryXorWord (binaryXorWord u base) base = u := by
  funext coord
  rcases fin2_eq_zero_or_one_basic (base coord) with hb | hb <;>
    rcases fin2_eq_zero_or_one_basic (u coord) with hu | hu <;>
      simp [binaryXorWord, hb, hu]

@[simp]
theorem binaryXorWord_cancel_left_pair {n : Nat}
    (base u v : QaryWord 2 n) :
    binaryXorWord (binaryXorWord base u) (binaryXorWord base v) =
      binaryXorWord u v := by
  funext coord
  rcases fin2_eq_zero_or_one_basic (base coord) with hb | hb <;>
    rcases fin2_eq_zero_or_one_basic (u coord) with hu | hu <;>
    rcases fin2_eq_zero_or_one_basic (v coord) with hv | hv <;>
      simp [binaryXorWord, hb, hu, hv]

theorem binaryXorWord_xor_right_eq_of_xor_eq {n : Nat}
    {a b u v : QaryWord 2 n}
    (h : binaryXorWord a b = binaryXorWord u v) :
    binaryXorWord (binaryXorWord a u) v = b := by
  funext coord
  have hcoord := congrFun h coord
  rcases fin2_eq_zero_or_one_basic (a coord) with ha | ha <;>
    rcases fin2_eq_zero_or_one_basic (b coord) with hb | hb <;>
    rcases fin2_eq_zero_or_one_basic (u coord) with hu | hu <;>
    rcases fin2_eq_zero_or_one_basic (v coord) with hv | hv <;>
      simp [binaryXorWord, ha, hb, hu, hv] at hcoord ⊢

theorem dist_eq_binarySupport_binaryXorWord_card {n : Nat}
    (a b : QaryWord 2 n) :
    dist a b = (binarySupport n (binaryXorWord a b)).card := by
  unfold dist hammingDist binarySupport
  apply congrArg Finset.card
  ext coord
  rcases fin2_eq_zero_or_one_basic (a coord) with ha | ha <;>
    rcases fin2_eq_zero_or_one_basic (b coord) with hb | hb <;>
      simp [binaryXorWord, ha, hb]

theorem dist_binaryXorWord_left {n : Nat}
    (base diff : QaryWord 2 n) :
    dist (binaryXorWord base diff) base =
      (binarySupport n diff).card := by
  rw [dist_eq_binarySupport_binaryXorWord_card]
  have hxor :
      binaryXorWord (binaryXorWord base diff) base = diff := by
    rw [binaryXorWord_comm base diff]
    exact binaryXorWord_right_cancel base diff
  rw [hxor]

/-- Relative code indicator for a fixed base word. -/
def binaryRelativeCodeIndicator {n : Nat}
    (C : Finset (QaryWord 2 n)) (base u : QaryWord 2 n) : Rat :=
  if base ∈ C ∧ binaryXorWord base u ∈ C then 1 else 0

/-- Base words contributing to one relative-code matrix entry. -/
def binaryRelativeCodeBaseCell {n : Nat}
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) :
    Finset (QaryWord 2 n) :=
  Finset.univ.filter (fun base =>
    base ∈ C ∧ binaryXorWord base u ∈ C ∧ binaryXorWord base v ∈ C)

@[simp]
theorem mem_binaryRelativeCodeBaseCell {n : Nat}
    {C : Finset (QaryWord 2 n)} {base u v : QaryWord 2 n} :
    base ∈ binaryRelativeCodeBaseCell C u v ↔
      base ∈ C ∧ binaryXorWord base u ∈ C ∧ binaryXorWord base v ∈ C := by
  simp [binaryRelativeCodeBaseCell]

theorem binaryRelativeCodeIndicator_mul_eq_baseCellIndicator {n : Nat}
    (C : Finset (QaryWord 2 n)) (base u v : QaryWord 2 n) :
    binaryRelativeCodeIndicator C base u *
        binaryRelativeCodeIndicator C base v =
      if base ∈ binaryRelativeCodeBaseCell C u v then 1 else 0 := by
  by_cases hbase : base ∈ C
  · by_cases hu : binaryXorWord base u ∈ C
    · by_cases hv : binaryXorWord base v ∈ C <;>
        simp [binaryRelativeCodeIndicator, hbase, hu, hv]
    · simp [binaryRelativeCodeIndicator, hbase, hu]
  · simp [binaryRelativeCodeIndicator, hbase]

/--
Rank-one matrix from the relative code indicator at a fixed base word.

This is the raw Gram matrix whose orbit average under the binary zero
stabilizer gives the code-cell Terwilliger matrix.
-/
def binaryRelativeCodeMatrix {n : Nat}
    (C : Finset (QaryWord 2 n)) (base : QaryWord 2 n) :
    Matrix (QaryWord 2 n) (QaryWord 2 n) Rat :=
  fun u v => binaryRelativeCodeIndicator C base u *
    binaryRelativeCodeIndicator C base v

@[simp]
theorem binaryRelativeCodeMatrix_apply {n : Nat}
    (C : Finset (QaryWord 2 n)) (base u v : QaryWord 2 n) :
    binaryRelativeCodeMatrix C base u v =
      binaryRelativeCodeIndicator C base u *
        binaryRelativeCodeIndicator C base v := by
  rfl

/-- Each fixed-base relative code matrix is PSD. -/
theorem binaryRelativeCodeMatrix_psd {n : Nat}
    (C : Finset (QaryWord 2 n)) (base : QaryWord 2 n) :
    RatPSD (binaryRelativeCodeMatrix C base) := by
  simpa [binaryRelativeCodeMatrix] using
    RatPSD.rankOne (binaryRelativeCodeIndicator C base)

/-- Average of the fixed-base relative code matrices over all base words. -/
def binaryRelativeCodeAverageMatrix {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    Matrix (QaryWord 2 n) (QaryWord 2 n) Rat :=
  (((2 ^ n : Nat) : Rat)⁻¹) •
    (Finset.univ.sum (fun base : QaryWord 2 n =>
      binaryRelativeCodeMatrix C base))

@[simp]
theorem binaryRelativeCodeAverageMatrix_apply {n : Nat}
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) :
    binaryRelativeCodeAverageMatrix C u v =
      (((2 ^ n : Nat) : Rat)⁻¹) *
        Finset.univ.sum (fun base : QaryWord 2 n =>
          binaryRelativeCodeIndicator C base u *
            binaryRelativeCodeIndicator C base v) := by
  simp [binaryRelativeCodeAverageMatrix, Matrix.sum_apply]

theorem binaryRelativeCodeAverageMatrix_apply_card {n : Nat}
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) :
    binaryRelativeCodeAverageMatrix C u v =
      (((2 ^ n : Nat) : Rat)⁻¹) *
        ((binaryRelativeCodeBaseCell C u v).card : Rat) := by
  rw [binaryRelativeCodeAverageMatrix_apply]
  congr 1
  calc
    (∑ base : QaryWord 2 n,
        binaryRelativeCodeIndicator C base u *
          binaryRelativeCodeIndicator C base v) =
        ∑ base : QaryWord 2 n,
          (if base ∈ binaryRelativeCodeBaseCell C u v then (1 : Rat) else 0) := by
          apply Finset.sum_congr rfl
          intro base _
          rw [binaryRelativeCodeIndicator_mul_eq_baseCellIndicator]
    _ = ((binaryRelativeCodeBaseCell C u v).card : Rat) := by
          rw [← Finset.natCast_card_filter
            (R := Rat)
            (p := fun base : QaryWord 2 n =>
              base ∈ binaryRelativeCodeBaseCell C u v)
            (s := (Finset.univ : Finset (QaryWord 2 n)))]
          have hfilter :
              (Finset.univ.filter (fun base : QaryWord 2 n =>
                base ∈ binaryRelativeCodeBaseCell C u v)) =
                binaryRelativeCodeBaseCell C u v := by
            ext base
            simp [binaryRelativeCodeBaseCell]
          rw [hfilter]

/-- The averaged relative code matrix is PSD. -/
theorem binaryRelativeCodeAverageMatrix_psd {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    RatPSD (binaryRelativeCodeAverageMatrix C) := by
  have hscale : 0 <= (((2 ^ n : Nat) : Rat)⁻¹) := by
    exact inv_nonneg.mpr (by exact_mod_cast Nat.zero_le (2 ^ n))
  unfold binaryRelativeCodeAverageMatrix
  exact RatPSD.smul hscale
    (RatPSD.sum Finset.univ (fun base : QaryWord 2 n =>
      binaryRelativeCodeMatrix C base)
      (fun base _ => binaryRelativeCodeMatrix_psd C base))

/-- Coordinate permutation equivalence on binary words. -/
def binaryWordPermEquiv {n : Nat} (sigma : Equiv.Perm (Fin n)) :
    QaryWord 2 n ≃ QaryWord 2 n where
  toFun word := fun coord => word (sigma.symm coord)
  invFun word := fun coord => word (sigma coord)
  left_inv word := by
    funext coord
    simp
  right_inv word := by
    funext coord
    simp

@[simp]
theorem binaryWordPermEquiv_apply {n : Nat}
    (sigma : Equiv.Perm (Fin n)) (word : QaryWord 2 n) (coord : Fin n) :
    binaryWordPermEquiv sigma word coord = word (sigma.symm coord) := by
  rfl

@[simp]
theorem binaryWordPermEquiv_symm_apply {n : Nat}
    (sigma : Equiv.Perm (Fin n)) (word : QaryWord 2 n) (coord : Fin n) :
    (binaryWordPermEquiv sigma).symm word coord = word (sigma coord) := by
  rfl

@[simp]
theorem binaryWordPermEquiv_symm_eq {n : Nat}
    (sigma : Equiv.Perm (Fin n)) :
    (binaryWordPermEquiv sigma).symm = binaryWordPermEquiv sigma.symm := by
  ext word coord
  rfl

@[simp]
theorem binaryWordPermEquiv_one {n : Nat} :
    binaryWordPermEquiv (1 : Equiv.Perm (Fin n)) = Equiv.refl (QaryWord 2 n) := by
  ext word coord
  rfl

@[simp]
theorem binaryWordPermEquiv_mul {n : Nat}
    (sigma tau : Equiv.Perm (Fin n)) (word : QaryWord 2 n) :
    binaryWordPermEquiv (sigma * tau) word =
      binaryWordPermEquiv sigma (binaryWordPermEquiv tau word) := by
  ext coord
  rfl

theorem binarySupport_wordPerm {n : Nat}
    (sigma : Equiv.Perm (Fin n)) (word : QaryWord 2 n) :
    binarySupport n (binaryWordPermEquiv sigma word) =
      (binarySupport n word).image sigma := by
  ext coord
  simp only [binarySupport, Finset.mem_filter, Finset.mem_univ, true_and,
    Finset.mem_image]
  constructor
  · intro hcoord
    exact ⟨sigma.symm coord, hcoord, by simp⟩
  · rintro ⟨coord', hcoord', hsigma⟩
    have hcoord_eq : sigma.symm coord = coord' := by
      rw [← hsigma]
      simp
    simpa [hcoord_eq] using hcoord'

@[simp]
theorem binaryWordPermEquiv_zero {n : Nat}
    (sigma : Equiv.Perm (Fin n)) :
    binaryWordPermEquiv sigma (zeroWord 2 n (by decide)) =
      zeroWord 2 n (by decide) := by
  funext coord
  simp [binaryWordPermEquiv, zeroWord]

@[simp]
theorem binaryWordPermEquiv_symm_zero {n : Nat}
    (sigma : Equiv.Perm (Fin n)) :
    (binaryWordPermEquiv sigma).symm (zeroWord 2 n (by decide)) =
      zeroWord 2 n (by decide) := by
  funext coord
  simp [binaryWordPermEquiv, zeroWord]

@[simp]
theorem binaryXorWord_wordPerm {n : Nat}
    (sigma : Equiv.Perm (Fin n)) (u v : QaryWord 2 n) :
    binaryXorWord (binaryWordPermEquiv sigma u)
        (binaryWordPermEquiv sigma v) =
      binaryWordPermEquiv sigma (binaryXorWord u v) := by
  funext coord
  simp [binaryWordPermEquiv, binaryXorWord]

@[simp]
theorem binaryXorWord_wordPerm_symm {n : Nat}
    (sigma : Equiv.Perm (Fin n)) (u v : QaryWord 2 n) :
    binaryXorWord ((binaryWordPermEquiv sigma).symm u)
        ((binaryWordPermEquiv sigma).symm v) =
      (binaryWordPermEquiv sigma).symm (binaryXorWord u v) := by
  funext coord
  simp [binaryWordPermEquiv, binaryXorWord]

/-- Reindex the relative-code average by a coordinate permutation. -/
def binaryRelativeCodePermutedAverageMatrix {n : Nat}
    (C : Finset (QaryWord 2 n)) (sigma : Equiv.Perm (Fin n)) :
    Matrix (QaryWord 2 n) (QaryWord 2 n) Rat :=
  reindexMatrix (binaryWordPermEquiv sigma) (binaryRelativeCodeAverageMatrix C)

@[simp]
theorem binaryRelativeCodePermutedAverageMatrix_apply {n : Nat}
    (C : Finset (QaryWord 2 n)) (sigma : Equiv.Perm (Fin n))
    (u v : QaryWord 2 n) :
    binaryRelativeCodePermutedAverageMatrix C sigma u v =
      binaryRelativeCodeAverageMatrix C
        ((binaryWordPermEquiv sigma).symm u)
        ((binaryWordPermEquiv sigma).symm v) := by
  rfl

/-- Coordinate reindexing preserves PSD of the relative-code average. -/
theorem binaryRelativeCodePermutedAverageMatrix_psd {n : Nat}
    (C : Finset (QaryWord 2 n)) (sigma : Equiv.Perm (Fin n)) :
    RatPSD (binaryRelativeCodePermutedAverageMatrix C sigma) := by
  unfold binaryRelativeCodePermutedAverageMatrix
  exact (RatPSD.reindex_iff (binaryWordPermEquiv sigma)
    (binaryRelativeCodeAverageMatrix C)).2
    (binaryRelativeCodeAverageMatrix_psd C)

/--
Reynolds average of the relative-code Gram matrix over all coordinate
permutations.  This is the invariant PSD matrix that is meant to match the
orbit-normalized code-cell Terwilliger matrix.
-/
def binaryRelativeCodeOrbitAverageMatrix {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    Matrix (QaryWord 2 n) (QaryWord 2 n) Rat :=
  (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) •
    (Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
      binaryRelativeCodePermutedAverageMatrix C sigma))

@[simp]
theorem binaryRelativeCodeOrbitAverageMatrix_apply {n : Nat}
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) :
    binaryRelativeCodeOrbitAverageMatrix C u v =
      (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) *
        Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
          binaryRelativeCodeAverageMatrix C
            ((binaryWordPermEquiv sigma).symm u)
            ((binaryWordPermEquiv sigma).symm v)) := by
  simp only [binaryRelativeCodeOrbitAverageMatrix, Matrix.smul_apply, smul_eq_mul,
    Matrix.sum_apply, binaryRelativeCodePermutedAverageMatrix_apply]

/-- The coordinate-orbit averaged relative-code matrix is PSD. -/
theorem binaryRelativeCodeOrbitAverageMatrix_psd {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    RatPSD (binaryRelativeCodeOrbitAverageMatrix C) := by
  have hscale :
      0 <= (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) := by
    exact inv_nonneg.mpr
      (by exact_mod_cast Nat.zero_le (Fintype.card (Equiv.Perm (Fin n))))
  unfold binaryRelativeCodeOrbitAverageMatrix
  exact RatPSD.smul hscale
    (RatPSD.sum Finset.univ
      (fun sigma : Equiv.Perm (Fin n) =>
        binaryRelativeCodePermutedAverageMatrix C sigma)
      (fun sigma _ => binaryRelativeCodePermutedAverageMatrix_psd C sigma))

/-- Indicator of the translate of `C` by a fixed binary base word. -/
def binaryTranslatedCodeIndicator {n : Nat}
    (C : Finset (QaryWord 2 n)) (base u : QaryWord 2 n) : Rat :=
  if binaryXorWord base u ∈ C then 1 else 0

/-- Base words contributing to one translated-code pair entry. -/
def binaryTranslatedPairBaseCell {n : Nat}
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) :
    Finset (QaryWord 2 n) :=
  Finset.univ.filter (fun base =>
    binaryXorWord base u ∈ C ∧ binaryXorWord base v ∈ C)

@[simp]
theorem mem_binaryTranslatedPairBaseCell {n : Nat}
    {C : Finset (QaryWord 2 n)} {base u v : QaryWord 2 n} :
    base ∈ binaryTranslatedPairBaseCell C u v ↔
      binaryXorWord base u ∈ C ∧ binaryXorWord base v ∈ C := by
  simp [binaryTranslatedPairBaseCell]

/-- Ordered code pairs with a prescribed binary difference. -/
def binaryCodePairDifferenceCell {n : Nat}
    (C : Finset (QaryWord 2 n)) (diff : QaryWord 2 n) :
    Finset (QaryWord 2 n × QaryWord 2 n) :=
  (C.product C).filter (fun pair => binaryXorWord pair.1 pair.2 = diff)

@[simp]
theorem mem_binaryCodePairDifferenceCell {n : Nat}
    {C : Finset (QaryWord 2 n)} {diff : QaryWord 2 n}
    {pair : QaryWord 2 n × QaryWord 2 n} :
    pair ∈ binaryCodePairDifferenceCell C diff ↔
      pair.1 ∈ C ∧ pair.2 ∈ C ∧ binaryXorWord pair.1 pair.2 = diff := by
  simp [binaryCodePairDifferenceCell, and_assoc]

/-- Ordered code pairs at a prescribed Hamming distance. -/
def binaryCodePairDistanceCell {n : Nat}
    (C : Finset (QaryWord 2 n)) (d : Nat) :
    Finset (QaryWord 2 n × QaryWord 2 n) :=
  (C.product C).filter (fun pair => dist pair.1 pair.2 = d)

@[simp]
theorem mem_binaryCodePairDistanceCell {n : Nat}
    {C : Finset (QaryWord 2 n)} {d : Nat}
    {pair : QaryWord 2 n × QaryWord 2 n} :
    pair ∈ binaryCodePairDistanceCell C d ↔
      pair.1 ∈ C ∧ pair.2 ∈ C ∧ dist pair.1 pair.2 = d := by
  simp [binaryCodePairDistanceCell, and_assoc]

/-- Binary words with prescribed support size. -/
def binaryWordWeightCell (n d : Nat) : Finset (QaryWord 2 n) :=
  Finset.univ.filter (fun diff : QaryWord 2 n =>
    (binarySupport n diff).card = d)

@[simp]
theorem mem_binaryWordWeightCell {n d : Nat} {diff : QaryWord 2 n} :
    diff ∈ binaryWordWeightCell n d ↔
      (binarySupport n diff).card = d := by
  simp [binaryWordWeightCell]

/--
Pair-difference cells over all binary differences of weight `d` partition the
ordered code pairs at distance `d`.
-/
theorem binaryCodePairDifferenceCell_sum_card_eq_distanceCell_card {n : Nat}
    (C : Finset (QaryWord 2 n)) (d : Nat) :
    ((binaryWordWeightCell n d).sum
      (fun diff => (binaryCodePairDifferenceCell C diff).card)) =
        (binaryCodePairDistanceCell C d).card := by
  let total :=
    (binaryWordWeightCell n d).sigma (fun diff =>
      binaryCodePairDifferenceCell C diff)
  have htotal_card : total.card = (binaryCodePairDistanceCell C d).card := by
    apply Finset.card_bij (fun item _ => item.2)
    · intro item hitem
      rw [Finset.mem_sigma] at hitem
      rcases hitem with ⟨hdiff, hpair⟩
      rw [mem_binaryWordWeightCell] at hdiff
      rw [mem_binaryCodePairDifferenceCell] at hpair
      rw [mem_binaryCodePairDistanceCell]
      refine ⟨hpair.1, hpair.2.1, ?_⟩
      rw [dist_eq_binarySupport_binaryXorWord_card, hpair.2.2, hdiff]
    · intro a ha b hb hpair
      have haPair := (Finset.mem_sigma.mp ha).2
      have hbPair := (Finset.mem_sigma.mp hb).2
      have hadiff := (mem_binaryCodePairDifferenceCell.mp haPair).2.2
      have hbdiff := (mem_binaryCodePairDifferenceCell.mp hbPair).2.2
      have hdiff : a.1 = b.1 := by
        rw [← hadiff, ← hbdiff, hpair]
      cases a with
      | mk adiff apair =>
          cases b with
          | mk bdiff bpair =>
              simp at hpair hdiff
              subst bpair
              subst bdiff
              rfl
    · intro pair hpair
      let diff := binaryXorWord pair.1 pair.2
      refine ⟨⟨diff, pair⟩, ?_, rfl⟩
      rw [Finset.mem_sigma]
      rw [mem_binaryCodePairDistanceCell] at hpair
      refine ⟨?_, ?_⟩
      · rw [mem_binaryWordWeightCell]
        rw [← dist_eq_binarySupport_binaryXorWord_card]
        exact hpair.2.2
      · rw [mem_binaryCodePairDifferenceCell]
        exact ⟨hpair.1, hpair.2.1, rfl⟩
  calc
    (binaryWordWeightCell n d).sum
      (fun diff => (binaryCodePairDifferenceCell C diff).card) =
        total.card := by
          simp [total]
    _ = (binaryCodePairDistanceCell C d).card := htotal_card

/--
Choosing the base word is equivalent to choosing the resulting ordered code
pair with fixed binary difference.
-/
theorem binaryTranslatedPairBaseCell_card_eq_codePairDifferenceCell_card {n : Nat}
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) :
    (binaryTranslatedPairBaseCell C u v).card =
      (binaryCodePairDifferenceCell C (binaryXorWord u v)).card := by
  apply Finset.card_bij
    (fun base _ => (binaryXorWord base u, binaryXorWord base v))
  · intro base hbase
    rw [mem_binaryTranslatedPairBaseCell] at hbase
    rw [mem_binaryCodePairDifferenceCell]
    exact ⟨hbase.1, hbase.2, binaryXorWord_cancel_left_pair base u v⟩
  · intro base hbase base' hbase' hpair
    have hleft :
        binaryXorWord base u = binaryXorWord base' u :=
      congrArg Prod.fst hpair
    have hcancel := congrArg (fun word : QaryWord 2 n =>
      binaryXorWord word u) hleft
    simpa using hcancel
  · intro pair hpair
    rw [mem_binaryCodePairDifferenceCell] at hpair
    refine ⟨binaryXorWord pair.1 u, ?_, ?_⟩
    · rw [mem_binaryTranslatedPairBaseCell]
      refine ⟨by simpa using hpair.1, ?_⟩
      simpa using
        (binaryXorWord_xor_right_eq_of_xor_eq hpair.2.2)
          ▸ hpair.2.1
    · apply Prod.ext
      · simp
      · exact binaryXorWord_xor_right_eq_of_xor_eq hpair.2.2

/--
Base/shell-codeword pairs contributing to one translated-code pair entry and
one shell distance.
-/
def binaryTranslatedPairShellBaseCell {n : Nat}
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) (d : Nat) :
    Finset (QaryWord 2 n × QaryWord 2 n) :=
  ((Finset.univ : Finset (QaryWord 2 n)).product C).filter (fun item =>
    dist item.1 item.2 = d ∧
      binaryXorWord item.1 u ∈ C ∧ binaryXorWord item.1 v ∈ C)

@[simp]
theorem mem_binaryTranslatedPairShellBaseCell {n : Nat}
    {C : Finset (QaryWord 2 n)} {u v : QaryWord 2 n} {d : Nat}
    {item : QaryWord 2 n × QaryWord 2 n} :
    item ∈ binaryTranslatedPairShellBaseCell C u v d ↔
      item.2 ∈ C ∧ dist item.1 item.2 = d ∧
        binaryXorWord item.1 u ∈ C ∧ binaryXorWord item.1 v ∈ C := by
  simp [binaryTranslatedPairShellBaseCell]

theorem binaryTranslatedPairBaseCell_sum_shellCount_eq_shellBaseCell_card {n : Nat}
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) (d : Nat) :
    (binaryTranslatedPairBaseCell C u v).sum
        (fun base => shellCount 2 n C base d) =
      (binaryTranslatedPairShellBaseCell C u v d).card := by
  let total :=
    (binaryTranslatedPairBaseCell C u v).sigma (fun base =>
      C.filter (fun c => dist base c = d))
  have htotal_card :
      total.card = (binaryTranslatedPairShellBaseCell C u v d).card := by
    apply Finset.card_bij (fun item _ => (item.1, item.2))
    · intro item hitem
      rw [Finset.mem_sigma] at hitem
      rcases hitem with ⟨hbase, hc⟩
      rw [mem_binaryTranslatedPairBaseCell] at hbase
      rw [Finset.mem_filter] at hc
      rw [mem_binaryTranslatedPairShellBaseCell]
      exact ⟨hc.1, hc.2, hbase.1, hbase.2⟩
    · intro a _ b _ hpair
      rcases a with ⟨abase, acode⟩
      rcases b with ⟨bbase, bcode⟩
      simp at hpair
      rcases hpair with ⟨hbase, hcode⟩
      cases hbase
      cases hcode
      rfl
    · intro item hitem
      rw [mem_binaryTranslatedPairShellBaseCell] at hitem
      refine ⟨⟨item.1, item.2⟩, ?_, rfl⟩
      rw [Finset.mem_sigma]
      refine ⟨?_, ?_⟩
      · rw [mem_binaryTranslatedPairBaseCell]
        exact ⟨hitem.2.2.1, hitem.2.2.2⟩
      · rw [Finset.mem_filter]
        exact ⟨hitem.1, hitem.2.1⟩
  calc
    (binaryTranslatedPairBaseCell C u v).sum
        (fun base => shellCount 2 n C base d) =
      total.card := by
        simp [total, shellCount]
    _ = (binaryTranslatedPairShellBaseCell C u v d).card := htotal_card

theorem binaryTranslatedCodeIndicator_mul_eq_pairCellIndicator {n : Nat}
    (C : Finset (QaryWord 2 n)) (base u v : QaryWord 2 n) :
    binaryTranslatedCodeIndicator C base u *
        binaryTranslatedCodeIndicator C base v =
      if base ∈ binaryTranslatedPairBaseCell C u v then 1 else 0 := by
  by_cases hu : binaryXorWord base u ∈ C
  · by_cases hv : binaryXorWord base v ∈ C <;>
      simp [binaryTranslatedCodeIndicator, hu, hv]
  · simp [binaryTranslatedCodeIndicator, hu]

/-- Rank-one matrix of a translated code. -/
def binaryTranslatedCodeMatrix {n : Nat}
    (C : Finset (QaryWord 2 n)) (base : QaryWord 2 n) :
    Matrix (QaryWord 2 n) (QaryWord 2 n) Rat :=
  fun u v => binaryTranslatedCodeIndicator C base u *
    binaryTranslatedCodeIndicator C base v

@[simp]
theorem binaryTranslatedCodeMatrix_apply {n : Nat}
    (C : Finset (QaryWord 2 n)) (base u v : QaryWord 2 n) :
    binaryTranslatedCodeMatrix C base u v =
      binaryTranslatedCodeIndicator C base u *
        binaryTranslatedCodeIndicator C base v := by
  rfl

/-- Each translated-code matrix is PSD. -/
theorem binaryTranslatedCodeMatrix_psd {n : Nat}
    (C : Finset (QaryWord 2 n)) (base : QaryWord 2 n) :
    RatPSD (binaryTranslatedCodeMatrix C base) := by
  simpa [binaryTranslatedCodeMatrix] using
    RatPSD.rankOne (binaryTranslatedCodeIndicator C base)

/-- Average of translated-code matrices over all base words. -/
def binaryTranslatedCodeAverageMatrix {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    Matrix (QaryWord 2 n) (QaryWord 2 n) Rat :=
  (((2 ^ n : Nat) : Rat)⁻¹) •
    (Finset.univ.sum (fun base : QaryWord 2 n =>
      binaryTranslatedCodeMatrix C base))

@[simp]
theorem binaryTranslatedCodeAverageMatrix_apply {n : Nat}
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) :
    binaryTranslatedCodeAverageMatrix C u v =
      (((2 ^ n : Nat) : Rat)⁻¹) *
        Finset.univ.sum (fun base : QaryWord 2 n =>
          binaryTranslatedCodeIndicator C base u *
            binaryTranslatedCodeIndicator C base v) := by
  simp [binaryTranslatedCodeAverageMatrix, Matrix.sum_apply]

theorem binaryTranslatedCodeAverageMatrix_apply_card {n : Nat}
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) :
    binaryTranslatedCodeAverageMatrix C u v =
      (((2 ^ n : Nat) : Rat)⁻¹) *
        ((binaryTranslatedPairBaseCell C u v).card : Rat) := by
  rw [binaryTranslatedCodeAverageMatrix_apply]
  congr 1
  calc
    (∑ base : QaryWord 2 n,
        binaryTranslatedCodeIndicator C base u *
          binaryTranslatedCodeIndicator C base v) =
        ∑ base : QaryWord 2 n,
          (if base ∈ binaryTranslatedPairBaseCell C u v then (1 : Rat) else 0) := by
          apply Finset.sum_congr rfl
          intro base _
          rw [binaryTranslatedCodeIndicator_mul_eq_pairCellIndicator]
    _ = ((binaryTranslatedPairBaseCell C u v).card : Rat) := by
          rw [← Finset.natCast_card_filter
            (R := Rat)
            (p := fun base : QaryWord 2 n =>
              base ∈ binaryTranslatedPairBaseCell C u v)
            (s := (Finset.univ : Finset (QaryWord 2 n)))]
          have hfilter :
              (Finset.univ.filter (fun base : QaryWord 2 n =>
                base ∈ binaryTranslatedPairBaseCell C u v)) =
                binaryTranslatedPairBaseCell C u v := by
            ext base
            simp [binaryTranslatedPairBaseCell]
          rw [hfilter]

/-- The averaged translated-code matrix is PSD. -/
theorem binaryTranslatedCodeAverageMatrix_psd {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    RatPSD (binaryTranslatedCodeAverageMatrix C) := by
  have hscale : 0 <= (((2 ^ n : Nat) : Rat)⁻¹) := by
    exact inv_nonneg.mpr (by exact_mod_cast Nat.zero_le (2 ^ n))
  unfold binaryTranslatedCodeAverageMatrix
  exact RatPSD.smul hscale
    (RatPSD.sum Finset.univ
      (fun base : QaryWord 2 n => binaryTranslatedCodeMatrix C base)
      (fun base _ => binaryTranslatedCodeMatrix_psd C base))

/-- Reindex the translated-code average by a coordinate permutation. -/
def binaryTranslatedCodePermutedAverageMatrix {n : Nat}
    (C : Finset (QaryWord 2 n)) (sigma : Equiv.Perm (Fin n)) :
    Matrix (QaryWord 2 n) (QaryWord 2 n) Rat :=
  reindexMatrix (binaryWordPermEquiv sigma) (binaryTranslatedCodeAverageMatrix C)

@[simp]
theorem binaryTranslatedCodePermutedAverageMatrix_apply {n : Nat}
    (C : Finset (QaryWord 2 n)) (sigma : Equiv.Perm (Fin n))
    (u v : QaryWord 2 n) :
    binaryTranslatedCodePermutedAverageMatrix C sigma u v =
      binaryTranslatedCodeAverageMatrix C
        ((binaryWordPermEquiv sigma).symm u)
        ((binaryWordPermEquiv sigma).symm v) := by
  rfl

/-- Coordinate reindexing preserves PSD of the translated-code average. -/
theorem binaryTranslatedCodePermutedAverageMatrix_psd {n : Nat}
    (C : Finset (QaryWord 2 n)) (sigma : Equiv.Perm (Fin n)) :
    RatPSD (binaryTranslatedCodePermutedAverageMatrix C sigma) := by
  unfold binaryTranslatedCodePermutedAverageMatrix
  exact (RatPSD.reindex_iff (binaryWordPermEquiv sigma)
    (binaryTranslatedCodeAverageMatrix C)).2
    (binaryTranslatedCodeAverageMatrix_psd C)

/-- Coordinate-orbit average of the translated-code matrix. -/
def binaryTranslatedCodeOrbitAverageMatrix {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    Matrix (QaryWord 2 n) (QaryWord 2 n) Rat :=
  (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) •
    (Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
      binaryTranslatedCodePermutedAverageMatrix C sigma))

@[simp]
theorem binaryTranslatedCodeOrbitAverageMatrix_apply {n : Nat}
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) :
    binaryTranslatedCodeOrbitAverageMatrix C u v =
      (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) *
        Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
          binaryTranslatedCodeAverageMatrix C
            ((binaryWordPermEquiv sigma).symm u)
            ((binaryWordPermEquiv sigma).symm v)) := by
  simp only [binaryTranslatedCodeOrbitAverageMatrix, Matrix.smul_apply, smul_eq_mul,
    Matrix.sum_apply, binaryTranslatedCodePermutedAverageMatrix_apply]

/-- The coordinate-orbit averaged translated-code matrix is PSD. -/
theorem binaryTranslatedCodeOrbitAverageMatrix_psd {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    RatPSD (binaryTranslatedCodeOrbitAverageMatrix C) := by
  have hscale :
      0 <= (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) := by
    exact inv_nonneg.mpr
      (by exact_mod_cast Nat.zero_le (Fintype.card (Equiv.Perm (Fin n))))
  unfold binaryTranslatedCodeOrbitAverageMatrix
  exact RatPSD.smul hscale
    (RatPSD.sum Finset.univ
      (fun sigma : Equiv.Perm (Fin n) =>
        binaryTranslatedCodePermutedAverageMatrix C sigma)
      (fun sigma _ => binaryTranslatedCodePermutedAverageMatrix_psd C sigma))

/-- Slack of a binary valid linear inequality at a base word. -/
def binaryValidLinearInequalitySlack {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 n)) (base : QaryWord 2 n) : Rat :=
  Finset.univ.sum
    (fun i : Fin (n + 1) =>
      lambda i * (shellCount 2 n C base i.val : Rat)) - beta

/-- Valid binary inequalities have nonnegative slack on covering codes. -/
theorem binaryValidLinearInequalitySlack_nonneg {n r : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (C : Finset (QaryWord 2 n)) (hC : CoversFinset C r)
    (base : QaryWord 2 n) :
    0 <= binaryValidLinearInequalitySlack lambda beta C base := by
  rcases hvalid with ⟨_, _, hineq⟩
  have h := hineq C hC base
  unfold binaryValidLinearInequalitySlack
  linarith

/--
Translated-code Gram matrix weighted by the slack of a valid inequality.
This is the raw PSD matrix behind the Lasserre constraints.
-/
def binarySlackWeightedTranslatedCodeMatrix {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 n)) (base : QaryWord 2 n) :
    Matrix (QaryWord 2 n) (QaryWord 2 n) Rat :=
  binaryValidLinearInequalitySlack lambda beta C base •
    binaryTranslatedCodeMatrix C base

/-- A slack-weighted translated-code matrix is PSD for valid inequalities. -/
theorem binarySlackWeightedTranslatedCodeMatrix_psd {n r : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (C : Finset (QaryWord 2 n)) (hC : CoversFinset C r)
    (base : QaryWord 2 n) :
    RatPSD (binarySlackWeightedTranslatedCodeMatrix lambda beta C base) := by
  unfold binarySlackWeightedTranslatedCodeMatrix
  exact RatPSD.smul
    (binaryValidLinearInequalitySlack_nonneg hvalid C hC base)
    (binaryTranslatedCodeMatrix_psd C base)

/-- Average of slack-weighted translated-code matrices over all base words. -/
def binarySlackWeightedTranslatedCodeAverageMatrix {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 n)) :
    Matrix (QaryWord 2 n) (QaryWord 2 n) Rat :=
  (((2 ^ n : Nat) : Rat)⁻¹) •
    (Finset.univ.sum (fun base : QaryWord 2 n =>
      binarySlackWeightedTranslatedCodeMatrix lambda beta C base))

@[simp]
theorem binarySlackWeightedTranslatedCodeAverageMatrix_apply {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) :
    binarySlackWeightedTranslatedCodeAverageMatrix lambda beta C u v =
      (((2 ^ n : Nat) : Rat)⁻¹) *
        Finset.univ.sum (fun base : QaryWord 2 n =>
          binaryValidLinearInequalitySlack lambda beta C base *
            (binaryTranslatedCodeIndicator C base u *
              binaryTranslatedCodeIndicator C base v)) := by
  simp [binarySlackWeightedTranslatedCodeAverageMatrix,
    binarySlackWeightedTranslatedCodeMatrix, binaryTranslatedCodeMatrix,
    Matrix.sum_apply]

theorem binarySlackWeightedTranslatedCodeAverageMatrix_apply_shell_card {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) :
    binarySlackWeightedTranslatedCodeAverageMatrix lambda beta C u v =
      (((2 ^ n : Nat) : Rat)⁻¹) *
        (Finset.univ.sum (fun i : Fin (n + 1) =>
            lambda i *
              ((binaryTranslatedPairShellBaseCell C u v i.val).card : Rat)) -
          beta * ((binaryTranslatedPairBaseCell C u v).card : Rat)) := by
  rw [binarySlackWeightedTranslatedCodeAverageMatrix_apply]
  congr 1
  let cell := binaryTranslatedPairBaseCell C u v
  let slack := fun base : QaryWord 2 n =>
    binaryValidLinearInequalitySlack lambda beta C base
  have hindicator :
      (∑ base : QaryWord 2 n,
          binaryValidLinearInequalitySlack lambda beta C base *
            (binaryTranslatedCodeIndicator C base u *
              binaryTranslatedCodeIndicator C base v)) =
        (∑ base : QaryWord 2 n,
          if base ∈ cell then slack base else 0) := by
    apply Finset.sum_congr rfl
    intro base _
    rw [binaryTranslatedCodeIndicator_mul_eq_pairCellIndicator]
    by_cases hbase : base ∈ cell <;> simp [cell, slack, hbase]
  rw [hindicator]
  have hfilter :
      (Finset.univ.filter (fun base : QaryWord 2 n => base ∈ cell)) =
        cell := by
    ext base
    simp [cell, binaryTranslatedPairBaseCell]
  rw [← Finset.sum_filter, hfilter]
  unfold slack binaryValidLinearInequalitySlack
  rw [Finset.sum_sub_distrib]
  have hshell :
      (cell.sum (fun base : QaryWord 2 n =>
          Finset.univ.sum (fun i : Fin (n + 1) =>
            lambda i * (shellCount 2 n C base i.val : Rat)))) =
        Finset.univ.sum (fun i : Fin (n + 1) =>
          lambda i *
            ((binaryTranslatedPairShellBaseCell C u v i.val).card : Rat)) := by
    calc
      (cell.sum (fun base : QaryWord 2 n =>
          Finset.univ.sum (fun i : Fin (n + 1) =>
            lambda i * (shellCount 2 n C base i.val : Rat)))) =
        Finset.univ.sum (fun i : Fin (n + 1) =>
          cell.sum (fun base : QaryWord 2 n =>
            lambda i * (shellCount 2 n C base i.val : Rat))) := by
          rw [Finset.sum_comm]
      _ = Finset.univ.sum (fun i : Fin (n + 1) =>
          lambda i *
            ((binaryTranslatedPairShellBaseCell C u v i.val).card : Rat)) := by
          apply Finset.sum_congr rfl
          intro i _
          rw [← Finset.mul_sum]
          have hcardNat :=
            binaryTranslatedPairBaseCell_sum_shellCount_eq_shellBaseCell_card
              C u v i.val
          have hcardRat :
              (cell.sum (fun base : QaryWord 2 n =>
                (shellCount 2 n C base i.val : Rat))) =
                  ((binaryTranslatedPairShellBaseCell C u v i.val).card : Rat) := by
            exact_mod_cast hcardNat
          rw [hcardRat]
  rw [hshell]
  rw [Finset.sum_const, nsmul_eq_mul]
  ring

/-- The average slack-weighted translated-code matrix is PSD. -/
theorem binarySlackWeightedTranslatedCodeAverageMatrix_psd {n r : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (C : Finset (QaryWord 2 n)) (hC : CoversFinset C r) :
    RatPSD (binarySlackWeightedTranslatedCodeAverageMatrix lambda beta C) := by
  have hscale : 0 <= (((2 ^ n : Nat) : Rat)⁻¹) := by
    exact inv_nonneg.mpr (by exact_mod_cast Nat.zero_le (2 ^ n))
  unfold binarySlackWeightedTranslatedCodeAverageMatrix
  exact RatPSD.smul hscale
    (RatPSD.sum Finset.univ
      (fun base : QaryWord 2 n =>
        binarySlackWeightedTranslatedCodeMatrix lambda beta C base)
      (fun base _ => binarySlackWeightedTranslatedCodeMatrix_psd hvalid C hC base))

/-- Reindex the slack-weighted translated-code average by a coordinate permutation. -/
def binarySlackWeightedTranslatedCodePermutedAverageMatrix {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 n)) (sigma : Equiv.Perm (Fin n)) :
    Matrix (QaryWord 2 n) (QaryWord 2 n) Rat :=
  reindexMatrix (binaryWordPermEquiv sigma)
    (binarySlackWeightedTranslatedCodeAverageMatrix lambda beta C)

@[simp]
theorem binarySlackWeightedTranslatedCodePermutedAverageMatrix_apply {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 n)) (sigma : Equiv.Perm (Fin n))
    (u v : QaryWord 2 n) :
    binarySlackWeightedTranslatedCodePermutedAverageMatrix lambda beta C sigma u v =
      binarySlackWeightedTranslatedCodeAverageMatrix lambda beta C
        ((binaryWordPermEquiv sigma).symm u)
        ((binaryWordPermEquiv sigma).symm v) := by
  rfl

/-- Coordinate reindexing preserves PSD of the slack-weighted translated-code average. -/
theorem binarySlackWeightedTranslatedCodePermutedAverageMatrix_psd {n r : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (C : Finset (QaryWord 2 n)) (hC : CoversFinset C r)
    (sigma : Equiv.Perm (Fin n)) :
    RatPSD
      (binarySlackWeightedTranslatedCodePermutedAverageMatrix
        lambda beta C sigma) := by
  unfold binarySlackWeightedTranslatedCodePermutedAverageMatrix
  exact (RatPSD.reindex_iff (binaryWordPermEquiv sigma)
    (binarySlackWeightedTranslatedCodeAverageMatrix lambda beta C)).2
    (binarySlackWeightedTranslatedCodeAverageMatrix_psd hvalid C hC)

/--
Coordinate-orbit average of the slack-weighted translated-code matrix.  This
is the invariant PSD matrix that the Lasserre coefficient identities should
identify with `binaryTerwilligerMatrix (binaryLasserreX lambda beta x)`.
-/
def binarySlackWeightedTranslatedCodeOrbitAverageMatrix {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 n)) :
    Matrix (QaryWord 2 n) (QaryWord 2 n) Rat :=
  (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) •
    (Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
      binarySlackWeightedTranslatedCodePermutedAverageMatrix
        lambda beta C sigma))

@[simp]
theorem binarySlackWeightedTranslatedCodeOrbitAverageMatrix_apply {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) :
    binarySlackWeightedTranslatedCodeOrbitAverageMatrix lambda beta C u v =
      (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) *
        Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
          binarySlackWeightedTranslatedCodeAverageMatrix lambda beta C
            ((binaryWordPermEquiv sigma).symm u)
            ((binaryWordPermEquiv sigma).symm v)) := by
  simp only [binarySlackWeightedTranslatedCodeOrbitAverageMatrix,
    Matrix.smul_apply, smul_eq_mul, Matrix.sum_apply,
    binarySlackWeightedTranslatedCodePermutedAverageMatrix_apply]

theorem binarySlackWeightedTranslatedCodeOrbitAverageMatrix_apply_shell_card_sum {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) :
    binarySlackWeightedTranslatedCodeOrbitAverageMatrix lambda beta C u v =
      (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) *
        ((((2 ^ n : Nat) : Rat)⁻¹) *
          Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
            Finset.univ.sum (fun i : Fin (n + 1) =>
                lambda i *
                  ((binaryTranslatedPairShellBaseCell C
                    ((binaryWordPermEquiv sigma).symm u)
                    ((binaryWordPermEquiv sigma).symm v)
                    i.val).card : Rat)) -
              beta *
                ((binaryTranslatedPairBaseCell C
                  ((binaryWordPermEquiv sigma).symm u)
                  ((binaryWordPermEquiv sigma).symm v)).card : Rat))) := by
  rw [binarySlackWeightedTranslatedCodeOrbitAverageMatrix_apply]
  congr 1
  calc
    (∑ sigma : Equiv.Perm (Fin n),
        binarySlackWeightedTranslatedCodeAverageMatrix lambda beta C
          ((binaryWordPermEquiv sigma).symm u)
          ((binaryWordPermEquiv sigma).symm v)) =
      ∑ sigma : Equiv.Perm (Fin n),
        (((2 ^ n : Nat) : Rat)⁻¹) *
          (Finset.univ.sum (fun i : Fin (n + 1) =>
              lambda i *
                ((binaryTranslatedPairShellBaseCell C
                  ((binaryWordPermEquiv sigma).symm u)
                  ((binaryWordPermEquiv sigma).symm v)
                  i.val).card : Rat)) -
            beta *
              ((binaryTranslatedPairBaseCell C
                ((binaryWordPermEquiv sigma).symm u)
                ((binaryWordPermEquiv sigma).symm v)).card : Rat)) := by
        apply Finset.sum_congr rfl
        intro sigma _
        rw [binarySlackWeightedTranslatedCodeAverageMatrix_apply_shell_card]
    _ =
      (((2 ^ n : Nat) : Rat)⁻¹) *
        Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
          Finset.univ.sum (fun i : Fin (n + 1) =>
              lambda i *
                ((binaryTranslatedPairShellBaseCell C
                  ((binaryWordPermEquiv sigma).symm u)
                  ((binaryWordPermEquiv sigma).symm v)
                  i.val).card : Rat)) -
            beta *
              ((binaryTranslatedPairBaseCell C
                ((binaryWordPermEquiv sigma).symm u)
                ((binaryWordPermEquiv sigma).symm v)).card : Rat)) := by
        rw [Finset.mul_sum]

/-- The coordinate-orbit averaged slack-weighted matrix is PSD. -/
theorem binarySlackWeightedTranslatedCodeOrbitAverageMatrix_psd {n r : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (C : Finset (QaryWord 2 n)) (hC : CoversFinset C r) :
    RatPSD
      (binarySlackWeightedTranslatedCodeOrbitAverageMatrix
        lambda beta C) := by
  have hscale :
      0 <= (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) := by
    exact inv_nonneg.mpr
      (by exact_mod_cast Nat.zero_le (Fintype.card (Equiv.Perm (Fin n))))
  unfold binarySlackWeightedTranslatedCodeOrbitAverageMatrix
  exact RatPSD.smul hscale
    (RatPSD.sum Finset.univ
      (fun sigma : Equiv.Perm (Fin n) =>
        binarySlackWeightedTranslatedCodePermutedAverageMatrix
          lambda beta C sigma)
      (fun sigma _ =>
        binarySlackWeightedTranslatedCodePermutedAverageMatrix_psd
          hvalid C hC sigma))

/-- Number of ordered binary pairs in the orbit represented by `idx`, over a fixed base word. -/
def binaryOrbitMultiplicity (n : Nat) (idx : BinaryOrbitIndex n) : Rat :=
  (Nat.choose n idx.t : Rat) *
    (Nat.choose (n - idx.t) (idx.i - idx.t) : Rat) *
    (Nat.choose (n - idx.i) (idx.j - idx.t) : Rat)

/-- Natural-number form of the binary orbit multiplicity. -/
def binaryOrbitMultiplicityNat (n : Nat) (idx : BinaryOrbitIndex n) : Nat :=
  Nat.choose n idx.t *
    Nat.choose (n - idx.t) (idx.i - idx.t) *
      Nat.choose (n - idx.i) (idx.j - idx.t)

@[simp]
theorem binaryOrbitMultiplicityNat_cast
    (n : Nat) (idx : BinaryOrbitIndex n) :
    (binaryOrbitMultiplicityNat n idx : Rat) =
      binaryOrbitMultiplicity n idx := by
  unfold binaryOrbitMultiplicityNat binaryOrbitMultiplicity
  norm_num

theorem binaryOrbitMultiplicity_pos (n : Nat) (idx : BinaryOrbitIndex n) :
    0 < binaryOrbitMultiplicity n idx := by
  have ht_n : idx.t <= n := idx.t_le_n
  have hi_n : idx.i <= n := idx.i_le_n
  have h_it : idx.i - idx.t <= n - idx.t := by omega
  have h_jt : idx.j - idx.t <= n - idx.i := by
    have ht_i := idx.ht_i
    have ht_j := idx.ht_j
    have hij := idx.hij
    omega
  have h1_nat : 0 < Nat.choose n idx.t := Nat.choose_pos ht_n
  have h2_nat : 0 < Nat.choose (n - idx.t) (idx.i - idx.t) := Nat.choose_pos h_it
  have h3_nat : 0 < Nat.choose (n - idx.i) (idx.j - idx.t) := Nat.choose_pos h_jt
  have h1 : 0 < (Nat.choose n idx.t : Rat) := by exact_mod_cast h1_nat
  have h2 : 0 < (Nat.choose (n - idx.t) (idx.i - idx.t) : Rat) := by
    exact_mod_cast h2_nat
  have h3 : 0 < (Nat.choose (n - idx.i) (idx.j - idx.t) : Rat) := by
    exact_mod_cast h3_nat
  unfold binaryOrbitMultiplicity
  positivity

theorem binaryOrbitMultiplicity_ne_zero (n : Nat) (idx : BinaryOrbitIndex n) :
    binaryOrbitMultiplicity n idx ≠ 0 :=
  (binaryOrbitMultiplicity_pos n idx).ne'

/-- Number of binary second words in an orbit over a fixed first/base pair. -/
def binaryOrbitFiberMultiplicity (n : Nat) (idx : BinaryOrbitIndex n) : Rat :=
  (Nat.choose idx.i idx.t : Rat) *
    (Nat.choose (n - idx.i) (idx.j - idx.t) : Rat)

/-- Natural-number form of the binary fiber multiplicity. -/
def binaryOrbitFiberMultiplicityNat (n : Nat) (idx : BinaryOrbitIndex n) : Nat :=
  Nat.choose idx.i idx.t *
    Nat.choose (n - idx.i) (idx.j - idx.t)

@[simp]
theorem binaryOrbitFiberMultiplicityNat_cast
    (n : Nat) (idx : BinaryOrbitIndex n) :
    (binaryOrbitFiberMultiplicityNat n idx : Rat) =
      binaryOrbitFiberMultiplicity n idx := by
  unfold binaryOrbitFiberMultiplicityNat binaryOrbitFiberMultiplicity
  norm_num

theorem binaryOrbitFiberMultiplicity_nonneg
    (n : Nat) (idx : BinaryOrbitIndex n) :
    0 <= binaryOrbitFiberMultiplicity n idx := by
  unfold binaryOrbitFiberMultiplicity
  positivity

theorem binaryOrbitFiberMultiplicity_pos
    (n : Nat) (idx : BinaryOrbitIndex n) :
    0 < binaryOrbitFiberMultiplicity n idx := by
  have h_jt : idx.j - idx.t <= n - idx.i := by
    have ht_i := idx.ht_i
    have ht_j := idx.ht_j
    have hij := idx.hij
    omega
  have h1_nat : 0 < Nat.choose idx.i idx.t := Nat.choose_pos idx.ht_i
  have h2_nat : 0 < Nat.choose (n - idx.i) (idx.j - idx.t) :=
    Nat.choose_pos h_jt
  have h1 : 0 < (Nat.choose idx.i idx.t : Rat) := by exact_mod_cast h1_nat
  have h2 : 0 < (Nat.choose (n - idx.i) (idx.j - idx.t) : Rat) := by
    exact_mod_cast h2_nat
  unfold binaryOrbitFiberMultiplicity
  positivity

theorem binaryOrbitMultiplicity_eq_shell_mul_fiber
    (n : Nat) (idx : BinaryOrbitIndex n) :
    binaryOrbitMultiplicity n idx =
      (Nat.choose n idx.i : Rat) * binaryOrbitFiberMultiplicity n idx := by
  have hchoose_nat :
      Nat.choose n idx.t * Nat.choose (n - idx.t) (idx.i - idx.t) =
        Nat.choose n idx.i * Nat.choose idx.i idx.t := by
    exact (Nat.choose_mul (n := n) (k := idx.i) (s := idx.t) idx.ht_i).symm
  have hchoose :
      (Nat.choose n idx.t : Rat) *
          (Nat.choose (n - idx.t) (idx.i - idx.t) : Rat) =
        (Nat.choose n idx.i : Rat) * (Nat.choose idx.i idx.t : Rat) := by
    exact_mod_cast hchoose_nat
  unfold binaryOrbitMultiplicity binaryOrbitFiberMultiplicity
  rw [hchoose]
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

theorem binaryOrbitMultiplicity_swap (n : Nat) (idx : BinaryOrbitIndex n) :
    binaryOrbitMultiplicity n idx.swap = binaryOrbitMultiplicity n idx := by
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
  unfold binaryOrbitMultiplicity
  simp only [BinaryOrbitIndex.swap]
  calc
    (Nat.choose n idx.t : Rat) *
          (Nat.choose (n - idx.t) (idx.j - idx.t) : Rat) *
        (Nat.choose (n - idx.j) (idx.i - idx.t) : Rat) =
        (Nat.choose n idx.t : Rat) *
          ((Nat.choose (n - idx.t) (idx.j - idx.t) : Rat) *
            (Nat.choose (n - idx.j) (idx.i - idx.t) : Rat)) := by
      ring
    _ = (Nat.choose n idx.t : Rat) *
          ((Nat.choose (n - idx.t) (idx.i - idx.t) : Rat) *
            (Nat.choose (n - idx.i) (idx.j - idx.t) : Rat)) := by
      rw [← hchoose]
    _ = (Nat.choose n idx.t : Rat) *
          (Nat.choose (n - idx.t) (idx.i - idx.t) : Rat) *
        (Nat.choose (n - idx.i) (idx.j - idx.t) : Rat) := by
      ring

/-- Objective from Theorem 4.9, written in orbit variables. -/
noncomputable def binaryReducedObjective (n : Nat) (x : BinaryX n) : Rat :=
  ((2 ^ n : Nat) : Rat) *
    Finset.univ.sum (fun idx : BinaryOrbitIndex n =>
      binaryOrbitMultiplicity n idx * x idx)

/-- Linear-expression form of the binary reduced objective. -/
noncomputable def binaryReducedObjectiveExpr (n : Nat) :
    LinExpr (BinaryOrbitIndex n) :=
  LinExpr.smul (((2 ^ n : Nat) : Rat))
    (LinExpr.sum Finset.univ (fun idx : BinaryOrbitIndex n =>
      LinExpr.smul (binaryOrbitMultiplicity n idx) (LinExpr.var idx)))

@[simp]
theorem binaryReducedObjectiveExpr_eval (n : Nat) (x : BinaryX n) :
    (binaryReducedObjectiveExpr n).eval x = binaryReducedObjective n x := by
  unfold binaryReducedObjectiveExpr binaryReducedObjective
  simp

/-- Binary distance parameter attached to an orbit index. -/
def binaryOrbitDistanceIndex {n : Nat} (idx : BinaryOrbitIndex n) : Nat :=
  idx.i + idx.j - 2 * idx.t

private theorem binaryOrbitIndex_ext {n : Nat}
    {idx idx' : BinaryOrbitIndex n}
    (hi : idx.i = idx'.i) (hj : idx.j = idx'.j) (ht : idx.t = idx'.t) :
    idx = idx' := by
  cases idx with
  | mk i j t ht_i ht_j hij =>
      cases idx' with
      | mk i' j' t' ht_i' ht_j' hij' =>
          simp at hi hj ht
          subst i'
          subst j'
          subst t'
          simp

@[simp]
theorem binaryOrbitOf_wordPerm {n : Nat}
    (sigma : Equiv.Perm (Fin n)) (u v : QaryWord 2 n) :
    binaryOrbitOf (binaryWordPermEquiv sigma u) (binaryWordPermEquiv sigma v) =
      binaryOrbitOf u v := by
  apply binaryOrbitIndex_ext
  · change (binarySupport n (binaryWordPermEquiv sigma u)).card =
      (binarySupport n u).card
    rw [binarySupport_wordPerm,
      Finset.card_image_of_injective _ sigma.injective]
  · change (binarySupport n (binaryWordPermEquiv sigma v)).card =
      (binarySupport n v).card
    rw [binarySupport_wordPerm,
      Finset.card_image_of_injective _ sigma.injective]
  · change
      (binarySupport n (binaryWordPermEquiv sigma u) ∩
          binarySupport n (binaryWordPermEquiv sigma v)).card =
        (binarySupport n u ∩ binarySupport n v).card
    rw [binarySupport_wordPerm, binarySupport_wordPerm,
      ← Finset.image_inter (f := sigma) (s₁ := binarySupport n u)
        (s₂ := binarySupport n v) sigma.injective,
      Finset.card_image_of_injective _ sigma.injective]

/-- Coordinates where both binary words are nonzero. -/
def binaryPairSupport11 {n : Nat} (u v : QaryWord 2 n) : Finset (Fin n) :=
  binarySupport n u ∩ binarySupport n v

/-- Coordinates where the first binary word is nonzero and the second is zero. -/
def binaryPairSupport10 {n : Nat} (u v : QaryWord 2 n) : Finset (Fin n) :=
  binarySupport n u \ binarySupport n v

/-- Coordinates where the first binary word is zero and the second is nonzero. -/
def binaryPairSupport01 {n : Nat} (u v : QaryWord 2 n) : Finset (Fin n) :=
  binarySupport n v \ binarySupport n u

/-- Coordinates where both binary words are zero. -/
def binaryPairSupport00 {n : Nat} (u v : QaryWord 2 n) : Finset (Fin n) :=
  (Finset.univ : Finset (Fin n)) \ (binarySupport n u ∪ binarySupport n v)

/-- The four coordinate classes of a binary word pair. -/
inductive BinaryPairSupportCategory where
  | bothOne
  | leftOne
  | rightOne
  | bothZero
deriving DecidableEq, Fintype

def binaryPairSupportCell {n : Nat} :
    BinaryPairSupportCategory -> QaryWord 2 n -> QaryWord 2 n -> Finset (Fin n)
  | .bothOne, u, v => binaryPairSupport11 u v
  | .leftOne, u, v => binaryPairSupport10 u v
  | .rightOne, u, v => binaryPairSupport01 u v
  | .bothZero, u, v => binaryPairSupport00 u v

theorem mem_binaryPairSupportCell {n : Nat}
    (cat : BinaryPairSupportCategory) (u v : QaryWord 2 n) (coord : Fin n) :
    coord ∈ binaryPairSupportCell cat u v ↔
      match cat with
      | .bothOne => u coord ≠ 0 ∧ v coord ≠ 0
      | .leftOne => u coord ≠ 0 ∧ v coord = 0
      | .rightOne => u coord = 0 ∧ v coord ≠ 0
      | .bothZero => u coord = 0 ∧ v coord = 0 := by
  cases cat <;>
    simp [binaryPairSupportCell, binaryPairSupport11, binaryPairSupport10,
      binaryPairSupport01, binaryPairSupport00, binarySupport, and_comm]

@[simp]
theorem binaryPairSupport11_card {n : Nat} (u v : QaryWord 2 n) :
    (binaryPairSupport11 u v).card = (binaryOrbitOf u v).t := by
  rfl

@[simp]
theorem binaryPairSupport10_card {n : Nat} (u v : QaryWord 2 n) :
    (binaryPairSupport10 u v).card =
      (binaryOrbitOf u v).i - (binaryOrbitOf u v).t := by
  unfold binaryPairSupport10 binaryOrbitOf
  rw [Finset.card_sdiff]
  rw [Finset.inter_comm]

@[simp]
theorem binaryPairSupport01_card {n : Nat} (u v : QaryWord 2 n) :
    (binaryPairSupport01 u v).card =
      (binaryOrbitOf u v).j - (binaryOrbitOf u v).t := by
  unfold binaryPairSupport01 binaryOrbitOf
  rw [Finset.card_sdiff]

@[simp]
theorem binaryPairSupport00_card {n : Nat} (u v : QaryWord 2 n) :
    (binaryPairSupport00 u v).card =
      n - ((binaryOrbitOf u v).i + (binaryOrbitOf u v).j -
        (binaryOrbitOf u v).t) := by
  unfold binaryPairSupport00 binaryOrbitOf
  rw [Finset.card_sdiff]
  simp only [Finset.inter_univ, Finset.card_univ, Fintype.card_fin]
  have hcard_union :
      (binarySupport n u ∪ binarySupport n v).card +
          (binarySupport n u ∩ binarySupport n v).card =
        (binarySupport n u).card + (binarySupport n v).card :=
    Finset.card_union_add_card_inter (binarySupport n u) (binarySupport n v)
  omega

theorem binaryPairSupport_card_eq_of_orbit_eq {n : Nat}
    {u v u' v' : QaryWord 2 n}
    (horbit : binaryOrbitOf u v = binaryOrbitOf u' v') :
    (binaryPairSupport11 u v).card = (binaryPairSupport11 u' v').card /\
      (binaryPairSupport10 u v).card = (binaryPairSupport10 u' v').card /\
      (binaryPairSupport01 u v).card = (binaryPairSupport01 u' v').card /\
      (binaryPairSupport00 u v).card = (binaryPairSupport00 u' v').card := by
  have hi : (binaryOrbitOf u v).i = (binaryOrbitOf u' v').i :=
    congrArg BinaryOrbitIndex.i horbit
  have hj : (binaryOrbitOf u v).j = (binaryOrbitOf u' v').j :=
    congrArg BinaryOrbitIndex.j horbit
  have ht : (binaryOrbitOf u v).t = (binaryOrbitOf u' v').t :=
    congrArg BinaryOrbitIndex.t horbit
  constructor
  · simp [ht]
  constructor
  · simp [hi, ht]
  constructor
  · simp [hj, ht]
  · simp [hi, hj, ht]

theorem binaryPairSupportCell_card_eq_of_orbit_eq {n : Nat}
    (cat : BinaryPairSupportCategory) {u v u' v' : QaryWord 2 n}
    (horbit : binaryOrbitOf u v = binaryOrbitOf u' v') :
    (binaryPairSupportCell cat u v).card =
      (binaryPairSupportCell cat u' v').card := by
  have hcards := binaryPairSupport_card_eq_of_orbit_eq horbit
  cases cat <;> simp [binaryPairSupportCell, hcards]

theorem binaryPairSupportCell_exhaustive {n : Nat}
    (u v : QaryWord 2 n) (coord : Fin n) :
    exists cat : BinaryPairSupportCategory,
      coord ∈ binaryPairSupportCell cat u v := by
  by_cases hu : u coord = 0
  · by_cases hv : v coord = 0
    · exact ⟨.bothZero, by
        rw [mem_binaryPairSupportCell]
        exact ⟨hu, hv⟩⟩
    · exact ⟨.rightOne, by
        rw [mem_binaryPairSupportCell]
        exact ⟨hu, hv⟩⟩
  · by_cases hv : v coord = 0
    · exact ⟨.leftOne, by
        rw [mem_binaryPairSupportCell]
        exact ⟨hu, hv⟩⟩
    · exact ⟨.bothOne, by
        rw [mem_binaryPairSupportCell]
        exact ⟨hu, hv⟩⟩

theorem binaryPairSupportCell_category_eq_of_mem {n : Nat}
    {u v : QaryWord 2 n} {coord : Fin n}
    {cat cat' : BinaryPairSupportCategory}
    (hcat : coord ∈ binaryPairSupportCell cat u v)
    (hcat' : coord ∈ binaryPairSupportCell cat' u v) :
    cat = cat' := by
  cases cat <;> cases cat' <;>
    simp [mem_binaryPairSupportCell] at hcat hcat' ⊢ <;> tauto

theorem binaryPairSupportCell_disjoint {n : Nat}
    {u v : QaryWord 2 n} {cat cat' : BinaryPairSupportCategory}
    (hne : cat ≠ cat') :
    Disjoint (binaryPairSupportCell cat u v)
      (binaryPairSupportCell cat' u v) := by
  rw [Finset.disjoint_left]
  intro coord hcoord hcoord'
  exact hne (binaryPairSupportCell_category_eq_of_mem hcoord hcoord')

private theorem fin2_eq_of_ne_zero {a b : Fin 2} (ha : a ≠ 0) (hb : b ≠ 0) :
    a = b := by
  rcases fin2_eq_zero_or_one_basic a with ha0 | ha1
  · exact False.elim (ha ha0)
  · rcases fin2_eq_zero_or_one_basic b with hb0 | hb1
    · exact False.elim (hb hb0)
    · rw [ha1, hb1]

theorem binaryPairSupportCell_value_eq {n : Nat}
    {cat : BinaryPairSupportCategory}
    {u v u' v' : QaryWord 2 n} {coord coord' : Fin n}
    (hcoord : coord ∈ binaryPairSupportCell cat u v)
    (hcoord' : coord' ∈ binaryPairSupportCell cat u' v') :
    u coord = u' coord' ∧ v coord = v' coord' := by
  cases cat
  · rw [mem_binaryPairSupportCell] at hcoord hcoord'
    exact ⟨fin2_eq_of_ne_zero hcoord.1 hcoord'.1,
      fin2_eq_of_ne_zero hcoord.2 hcoord'.2⟩
  · rw [mem_binaryPairSupportCell] at hcoord hcoord'
    exact ⟨fin2_eq_of_ne_zero hcoord.1 hcoord'.1,
      hcoord.2.trans hcoord'.2.symm⟩
  · rw [mem_binaryPairSupportCell] at hcoord hcoord'
    exact ⟨hcoord.1.trans hcoord'.1.symm,
      fin2_eq_of_ne_zero hcoord.2 hcoord'.2⟩
  · rw [mem_binaryPairSupportCell] at hcoord hcoord'
    exact ⟨hcoord.1.trans hcoord'.1.symm,
      hcoord.2.trans hcoord'.2.symm⟩

private theorem list_perm_two_cases {a b x y : Nat} :
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

private theorem list_perm_three_cases {a b c x y z : Nat} :
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
    rcases list_perm_two_cases hp' with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
    · exact Or.inl ⟨rfl, rfl, rfl⟩
    · exact Or.inr (Or.inl ⟨rfl, rfl, rfl⟩)
  · subst x
    have hp2 : List.Perm [b, a, c] [b, y, z] :=
      (List.Perm.swap a b [c]).trans hp
    have hp' : List.Perm [a, c] [y, z] := List.Perm.cons_inv hp2
    rcases list_perm_two_cases hp' with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
    · exact Or.inr (Or.inr (Or.inl ⟨rfl, rfl, rfl⟩))
    · exact Or.inr (Or.inr (Or.inr (Or.inl ⟨rfl, rfl, rfl⟩)))
  · subst x
    have hp_left : List.Perm [c, a, b] [a, b, c] :=
      (List.Perm.swap a c [b]).trans
        (List.Perm.cons a (List.Perm.swap b c []))
    have hp2 : List.Perm [c, a, b] [c, y, z] := hp_left.trans hp
    have hp' : List.Perm [a, b] [y, z] := List.Perm.cons_inv hp2
    rcases list_perm_two_cases hp' with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inl ⟨rfl, rfl, rfl⟩))))
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr ⟨rfl, rfl, rfl⟩))))

/-- Rebase a binary triple orbit from `(u,v)` over base `w` to `(u,w)` over base `v`. -/
def BinaryOrbitIndex.rebaseRight {n : Nat} (idx : BinaryOrbitIndex n) :
    BinaryOrbitIndex n where
  i := binaryOrbitDistanceIndex idx
  j := idx.j
  t := idx.j - idx.t
  ht_i := by
    unfold binaryOrbitDistanceIndex
    have ht_i := idx.ht_i
    have ht_j := idx.ht_j
    omega
  ht_j := Nat.sub_le _ _
  hij := by
    unfold binaryOrbitDistanceIndex
    have hij := idx.hij
    have ht_i := idx.ht_i
    have ht_j := idx.ht_j
    omega

@[simp]
theorem BinaryOrbitIndex.rebaseRight_i {n : Nat} (idx : BinaryOrbitIndex n) :
    idx.rebaseRight.i = binaryOrbitDistanceIndex idx := rfl

@[simp]
theorem BinaryOrbitIndex.rebaseRight_j {n : Nat} (idx : BinaryOrbitIndex n) :
    idx.rebaseRight.j = idx.j := rfl

@[simp]
theorem BinaryOrbitIndex.rebaseRight_t {n : Nat} (idx : BinaryOrbitIndex n) :
    idx.rebaseRight.t = idx.j - idx.t := rfl

/-- Rebase a binary triple orbit from `(u,v)` over base `w` to `(w,v)` over base `u`. -/
def BinaryOrbitIndex.rebaseLeft {n : Nat} (idx : BinaryOrbitIndex n) :
    BinaryOrbitIndex n :=
  idx.swap.rebaseRight.swap

@[simp]
theorem BinaryOrbitIndex.rebaseLeft_i {n : Nat} (idx : BinaryOrbitIndex n) :
    idx.rebaseLeft.i = idx.i := rfl

@[simp]
theorem BinaryOrbitIndex.rebaseLeft_t {n : Nat} (idx : BinaryOrbitIndex n) :
    idx.rebaseLeft.t = idx.i - idx.t := rfl

theorem binaryOrbitDistanceIndex_swap {n : Nat} (idx : BinaryOrbitIndex n) :
    binaryOrbitDistanceIndex idx.swap = binaryOrbitDistanceIndex idx := by
  unfold binaryOrbitDistanceIndex BinaryOrbitIndex.swap
  rw [Nat.add_comm idx.j idx.i]

@[simp]
theorem BinaryOrbitIndex.rebaseLeft_j {n : Nat} (idx : BinaryOrbitIndex n) :
    idx.rebaseLeft.j = binaryOrbitDistanceIndex idx := by
  change binaryOrbitDistanceIndex idx.swap = binaryOrbitDistanceIndex idx
  exact binaryOrbitDistanceIndex_swap idx

theorem binaryOrbitDistanceIndex_rebaseRight {n : Nat} (idx : BinaryOrbitIndex n) :
    binaryOrbitDistanceIndex idx.rebaseRight = idx.i := by
  change
    (idx.i + idx.j - 2 * idx.t) + idx.j - 2 * (idx.j - idx.t) = idx.i
  have ht_i := idx.ht_i
  have ht_j := idx.ht_j
  have hij := idx.hij
  omega

theorem binaryOrbitIndex_swap_distance_perm {n : Nat} (idx : BinaryOrbitIndex n) :
    List.Perm [idx.swap.i, idx.swap.j, binaryOrbitDistanceIndex idx.swap]
      [idx.i, idx.j, binaryOrbitDistanceIndex idx] := by
  change
    List.Perm [idx.j, idx.i, binaryOrbitDistanceIndex idx.swap]
      [idx.i, idx.j, binaryOrbitDistanceIndex idx]
  rw [binaryOrbitDistanceIndex_swap]
  exact List.Perm.swap idx.i idx.j [binaryOrbitDistanceIndex idx]

theorem binaryOrbitIndex_rebaseRight_distance_perm {n : Nat}
    (idx : BinaryOrbitIndex n) :
    List.Perm
      [idx.rebaseRight.i, idx.rebaseRight.j, binaryOrbitDistanceIndex idx.rebaseRight]
      [idx.i, idx.j, binaryOrbitDistanceIndex idx] := by
  have hp :
      List.Perm [binaryOrbitDistanceIndex idx, idx.j, idx.i]
        [idx.i, idx.j, binaryOrbitDistanceIndex idx] := by
    exact
      (List.Perm.swap idx.j (binaryOrbitDistanceIndex idx) [idx.i]).trans
        ((List.Perm.cons idx.j
          (List.Perm.swap idx.i (binaryOrbitDistanceIndex idx) [])).trans
            (List.Perm.swap idx.i idx.j [binaryOrbitDistanceIndex idx]))
  change
    List.Perm
      [binaryOrbitDistanceIndex idx, idx.j,
        binaryOrbitDistanceIndex idx.rebaseRight]
      [idx.i, idx.j, binaryOrbitDistanceIndex idx]
  rw [binaryOrbitDistanceIndex_rebaseRight]
  exact hp

theorem binaryOrbitDistanceIndex_rebaseLeft {n : Nat} (idx : BinaryOrbitIndex n) :
    binaryOrbitDistanceIndex idx.rebaseLeft = idx.j := by
  change binaryOrbitDistanceIndex (idx.swap.rebaseRight.swap) = idx.j
  rw [binaryOrbitDistanceIndex_swap, binaryOrbitDistanceIndex_rebaseRight]
  rfl

theorem binaryOrbitIndex_rebaseLeft_distance_perm {n : Nat}
    (idx : BinaryOrbitIndex n) :
    List.Perm
      [idx.rebaseLeft.i, idx.rebaseLeft.j, binaryOrbitDistanceIndex idx.rebaseLeft]
      [idx.i, idx.j, binaryOrbitDistanceIndex idx] := by
  change
    List.Perm
      [(idx.swap.rebaseRight.swap).i, (idx.swap.rebaseRight.swap).j,
        binaryOrbitDistanceIndex (idx.swap.rebaseRight.swap)]
      [idx.i, idx.j, binaryOrbitDistanceIndex idx]
  exact (binaryOrbitIndex_swap_distance_perm idx.swap.rebaseRight).trans
    ((binaryOrbitIndex_rebaseRight_distance_perm idx.swap).trans
      (binaryOrbitIndex_swap_distance_perm idx))

private theorem binaryOrbitIndex_rebaseLeft_rebaseLeft {n : Nat}
    (idx : BinaryOrbitIndex n) :
    idx.rebaseLeft.rebaseLeft = idx := by
  apply binaryOrbitIndex_ext
  · rfl
  · rw [BinaryOrbitIndex.rebaseLeft_j, binaryOrbitDistanceIndex_rebaseLeft]
  · rw [BinaryOrbitIndex.rebaseLeft_t, BinaryOrbitIndex.rebaseLeft_i,
      BinaryOrbitIndex.rebaseLeft_t]
    have ht_i := idx.ht_i
    omega

private theorem binaryOrbitIndex_rebaseRight_rebaseRight {n : Nat}
    (idx : BinaryOrbitIndex n) :
    idx.rebaseRight.rebaseRight = idx := by
  apply binaryOrbitIndex_ext
  · exact binaryOrbitDistanceIndex_rebaseRight idx
  · rfl
  · simp [BinaryOrbitIndex.rebaseRight]
    have ht_j := idx.ht_j
    omega

theorem binaryOrbitMultiplicity_rebaseRight (n : Nat) (idx : BinaryOrbitIndex n) :
    binaryOrbitMultiplicity n idx.rebaseRight = binaryOrbitMultiplicity n idx := by
  have hleft3 : n - idx.t - (idx.i - idx.t) = n - idx.i := by
    have ht_i := idx.ht_i
    have hi_n := idx.i_le_n
    omega
  have hdist_sub : binaryOrbitDistanceIndex idx - (idx.j - idx.t) = idx.i - idx.t := by
    unfold binaryOrbitDistanceIndex
    have ht_i := idx.ht_i
    have ht_j := idx.ht_j
    have hij := idx.hij
    omega
  have hright3 :
      n - (idx.j - idx.t) - (idx.i - idx.t) =
        n - binaryOrbitDistanceIndex idx := by
    unfold binaryOrbitDistanceIndex
    have ht_i := idx.ht_i
    have ht_j := idx.ht_j
    have hij := idx.hij
    omega
  have hjsub : idx.j - (idx.j - idx.t) = idx.t := by
    have ht_j := idx.ht_j
    omega
  have hchoose_nat := nat_choose_three_reverse n idx.t
    (idx.i - idx.t) (idx.j - idx.t)
  have hchoose :
      (Nat.choose n idx.t : Rat) *
          (Nat.choose (n - idx.t) (idx.i - idx.t) : Rat) *
          (Nat.choose (n - idx.i) (idx.j - idx.t) : Rat) =
        (Nat.choose n (idx.j - idx.t) : Rat) *
          (Nat.choose (n - (idx.j - idx.t)) (idx.i - idx.t) : Rat) *
          (Nat.choose (n - binaryOrbitDistanceIndex idx) idx.t : Rat) := by
    have hchoose_rat :
        (Nat.choose n idx.t : Rat) *
            (Nat.choose (n - idx.t) (idx.i - idx.t) : Rat) *
            (Nat.choose (n - idx.t - (idx.i - idx.t)) (idx.j - idx.t) : Rat) =
          (Nat.choose n (idx.j - idx.t) : Rat) *
            (Nat.choose (n - (idx.j - idx.t)) (idx.i - idx.t) : Rat) *
            (Nat.choose (n - (idx.j - idx.t) - (idx.i - idx.t)) idx.t : Rat) := by
      exact_mod_cast hchoose_nat
    rw [hleft3, hright3] at hchoose_rat
    exact hchoose_rat
  unfold binaryOrbitMultiplicity BinaryOrbitIndex.rebaseRight
  rw [hdist_sub, hjsub]
  exact hchoose.symm

theorem binaryOrbitMultiplicity_rebaseLeft (n : Nat) (idx : BinaryOrbitIndex n) :
    binaryOrbitMultiplicity n idx.rebaseLeft = binaryOrbitMultiplicity n idx := by
  change binaryOrbitMultiplicity n (idx.swap.rebaseRight.swap) =
    binaryOrbitMultiplicity n idx
  rw [binaryOrbitMultiplicity_swap,
    binaryOrbitMultiplicity_rebaseRight, binaryOrbitMultiplicity_swap]

/-- Coefficient `x^0_{d,0}` used in the binary reduced SDP formulas. -/
def binaryZeroCoeff {n : Nat} (x : BinaryX n) (d : Nat) : Rat :=
  if hd : d <= n then
    x (BinaryOrbitIndex.mk d 0 0 (Nat.zero_le d) (Nat.le_refl 0) (by omega))
  else
    0

/-- Linear-expression form of `binaryZeroCoeff`. -/
def binaryZeroCoeffExpr (n d : Nat) : LinExpr (BinaryOrbitIndex n) :=
  if hd : d <= n then
    LinExpr.var
      (BinaryOrbitIndex.mk d 0 0 (Nat.zero_le d) (Nat.le_refl 0) (by omega))
  else
    LinExpr.constExpr (BinaryOrbitIndex n) 0

@[simp]
theorem binaryZeroCoeffExpr_eval {n : Nat} (d : Nat) (x : BinaryX n) :
    (binaryZeroCoeffExpr n d).eval x = binaryZeroCoeff x d := by
  unfold binaryZeroCoeffExpr binaryZeroCoeff
  by_cases hd : d <= n <;> simp [hd]

/-- Coefficient `x^i_{i,i}` on the binary diagonal shell. -/
def binaryDiagonalCoeff {n : Nat} (x : BinaryX n) (i : Nat) : Rat :=
  if hi : i <= n then
    x (BinaryOrbitIndex.mk i i i (Nat.le_refl i) (Nat.le_refl i) (by omega))
  else
    0

/-- Linear-expression form of `binaryDiagonalCoeff`. -/
def binaryDiagonalCoeffExpr (n i : Nat) : LinExpr (BinaryOrbitIndex n) :=
  if hi : i <= n then
    LinExpr.var
      (BinaryOrbitIndex.mk i i i (Nat.le_refl i) (Nat.le_refl i) (by omega))
  else
    LinExpr.constExpr (BinaryOrbitIndex n) 0

@[simp]
theorem binaryDiagonalCoeffExpr_eval {n : Nat} (i : Nat) (x : BinaryX n) :
    (binaryDiagonalCoeffExpr n i).eval x = binaryDiagonalCoeff x i := by
  unfold binaryDiagonalCoeffExpr binaryDiagonalCoeff
  by_cases hi : i <= n <;> simp [hi]

/-- Proposition 4.2-style basic binary reduced SDP constraints. -/
def BinaryBasicConstraints {n : Nat} (x : BinaryX n) : Prop :=
  (forall idx : BinaryOrbitIndex n,
    0 <= x idx /\ x idx <= binaryDiagonalCoeff x idx.i) /\
  (forall idx : BinaryOrbitIndex n,
    binaryZeroCoeff x idx.i + binaryZeroCoeff x (binaryOrbitDistanceIndex idx) -
        binaryZeroCoeff x 0 <= x idx /\
      x idx <= binaryZeroCoeff x (binaryOrbitDistanceIndex idx)) /\
  (forall idx idx' : BinaryOrbitIndex n,
    List.Perm [idx.i, idx.j, binaryOrbitDistanceIndex idx]
      [idx'.i, idx'.j, binaryOrbitDistanceIndex idx'] ->
      x idx = x idx')

/-- Side conditions for one binary `eta` summand. -/
def binaryEtaTermCondition (n : Nat) (source target : BinaryOrbitIndex n) (d : Nat)
    (a00 a01 a10 a11 : Nat) : Prop :=
  a00 + source.i + source.j <= n + source.t /\
    a01 + source.t <= source.j /\
    a10 + source.t <= source.i /\
    a11 <= source.t /\
    d = a00 + a01 + a10 + a11 /\
    target.i + a11 + a10 = source.i + a00 + a01 /\
    target.j + a11 + a01 = source.j + a00 + a10 /\
    target.t + a11 = source.t + a00

instance binaryEtaTermCondition_decidable (n : Nat)
    (source target : BinaryOrbitIndex n) (d : Nat)
    (a00 a01 a10 a11 : Nat) :
    Decidable (binaryEtaTermCondition n source target d a00 a01 a10 a11) := by
  unfold binaryEtaTermCondition
  infer_instance

theorem BinaryBasicConstraints.swap {n : Nat} {x : BinaryX n}
    (h : BinaryBasicConstraints x) (idx : BinaryOrbitIndex n) :
    x idx.swap = x idx :=
  h.2.2 idx.swap idx (binaryOrbitIndex_swap_distance_perm idx)

theorem BinaryBasicConstraints.rebaseRight {n : Nat} {x : BinaryX n}
    (h : BinaryBasicConstraints x) (idx : BinaryOrbitIndex n) :
    x idx.rebaseRight = x idx :=
  h.2.2 idx.rebaseRight idx (binaryOrbitIndex_rebaseRight_distance_perm idx)

theorem BinaryBasicConstraints.rebaseLeft {n : Nat} {x : BinaryX n}
    (h : BinaryBasicConstraints x) (idx : BinaryOrbitIndex n) :
    x idx.rebaseLeft = x idx :=
  h.2.2 idx.rebaseLeft idx (binaryOrbitIndex_rebaseLeft_distance_perm idx)

/-- One summand in the binary `eta` coefficient of Proposition 4.5. -/
def binaryEtaTerm (n : Nat) (source target : BinaryOrbitIndex n) (d : Nat)
    (a00 a01 a10 a11 : Nat) : Rat :=
  if binaryEtaTermCondition n source target d a00 a01 a10 a11 then
    (Nat.choose (source.i - source.t) a10 : Rat) *
      (Nat.choose (source.j - source.t) a01 : Rat) *
      (Nat.choose source.t a11 : Rat) *
      (Nat.choose (n + source.t - source.i - source.j) a00 : Rat)
  else
    0

/-- Binary `eta` coefficient used in the Lasserre constraint, Proposition 4.5. -/
def binaryEtaCoeff (n : Nat) (source target : BinaryOrbitIndex n) (d : Nat) : Rat :=
  (Finset.range (n + 1)).sum (fun a00 =>
    (Finset.range (n + 1)).sum (fun a01 =>
      (Finset.range (n + 1)).sum (fun a10 =>
        (Finset.range (n + 1)).sum (fun a11 =>
          binaryEtaTerm n source target d a00 a01 a10 a11))))

/-- The coefficient of a target orbit variable in the binary Lasserre transform. -/
def binaryLasserreTargetCoeff {n : Nat}
    (lambda : Fin (n + 1) -> Rat)
    (source target : BinaryOrbitIndex n) : Rat :=
  Finset.univ.sum (fun d : Fin (n + 1) =>
    lambda d * binaryEtaCoeff n source target d.val)

/-- Linear-expression form of the binary Lasserre transform coefficient. -/
noncomputable def binaryLasserreCoeffExpr {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (source : BinaryOrbitIndex n) : LinExpr (BinaryOrbitIndex n) :=
  LinExpr.sub
    (LinExpr.sum Finset.univ (fun target : BinaryOrbitIndex n =>
      LinExpr.smul (binaryLasserreTargetCoeff lambda source target)
        (LinExpr.var target)))
    (LinExpr.smul beta
      (binaryZeroCoeffExpr n (binaryOrbitDistanceIndex source)))

@[simp]
theorem binaryLasserreCoeffExpr_eval {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (source : BinaryOrbitIndex n) (x : BinaryX n) :
    (binaryLasserreCoeffExpr lambda beta source).eval x =
      Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        binaryLasserreTargetCoeff lambda source target * x target) -
        beta * binaryZeroCoeff x (binaryOrbitDistanceIndex source) := by
  unfold binaryLasserreCoeffExpr
  simp

/-- Coefficients of the matrix `N` appearing in the binary Lasserre constraint. -/
noncomputable def binaryLasserreX {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat) (x : BinaryX n) : BinaryX n :=
  fun source =>
    Finset.univ.sum (fun target : BinaryOrbitIndex n =>
      binaryLasserreTargetCoeff lambda source target * x target) -
    beta * binaryZeroCoeff x (binaryOrbitDistanceIndex source)

/-- Proposition 4.5-style binary Lasserre block constraints. -/
noncomputable def BinaryLasserreConstraints {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat) (x : BinaryX n) : Prop :=
  BinaryBlocksPSD (binaryLasserreX lambda beta x)

/-- One summand in the binary matrix-cut coefficient of Proposition 4.8. -/
def binaryMatrixCutTerm (n : Nat) (source target : BinaryOrbitIndex n) (d : Nat)
    (a00 a01 a10 a11 : Nat) : Rat :=
  if a00 + source.i + source.j <= n + source.t /\
      a01 + source.t <= source.j /\
      a10 + source.t <= source.i /\
      a11 <= source.t /\
      target.i = source.i /\
      target.j = a00 + a01 + a10 + a11 /\
      target.t = a10 + a11 /\
      d + a01 + a11 = source.j + a00 + a10 then
    (Nat.choose (source.i - source.t) a10 : Rat) *
      (Nat.choose (source.j - source.t) a01 : Rat) *
      (Nat.choose source.t a11 : Rat) *
      (Nat.choose (n + source.t - source.i - source.j) a00 : Rat)
  else
    0

/-- Binary matrix-cut coefficient from Proposition 4.8. -/
def binaryMatrixCutCoeff
    (n : Nat) (source target : BinaryOrbitIndex n) (d : Nat) : Rat :=
  (Finset.range (n + 1)).sum (fun a00 =>
    (Finset.range (n + 1)).sum (fun a01 =>
      (Finset.range (n + 1)).sum (fun a10 =>
        (Finset.range (n + 1)).sum (fun a11 =>
          binaryMatrixCutTerm n source target d a00 a01 a10 a11))))

/-- The linear coefficient induced by a valid inequality in the binary matrix cuts. -/
def binaryMatrixCutLambda {n : Nat}
    (lambda : Fin (n + 1) -> Rat)
    (source target : BinaryOrbitIndex n) : Rat :=
  Finset.univ.sum (fun d : Fin (n + 1) =>
    lambda d * binaryMatrixCutCoeff n source target d.val)

/-- First binary matrix-cut left-hand side as a linear expression. -/
noncomputable def binaryMatrixCutLhs1Expr {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (source : BinaryOrbitIndex n) :
    LinExpr (BinaryOrbitIndex n) :=
  LinExpr.sum Finset.univ (fun target : BinaryOrbitIndex n =>
    LinExpr.smul (binaryMatrixCutLambda lambda source target)
      (LinExpr.var target))

@[simp]
theorem binaryMatrixCutLhs1Expr_eval {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (source : BinaryOrbitIndex n)
    (x : BinaryX n) :
    (binaryMatrixCutLhs1Expr lambda source).eval x =
      Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        x target * binaryMatrixCutLambda lambda source target) := by
  unfold binaryMatrixCutLhs1Expr
  simp [mul_comm]

/-- Second binary matrix-cut left-hand side as a linear expression. -/
noncomputable def binaryMatrixCutLhs2Expr {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (source : BinaryOrbitIndex n) :
    LinExpr (BinaryOrbitIndex n) :=
  LinExpr.sum Finset.univ (fun target : BinaryOrbitIndex n =>
    LinExpr.smul (binaryMatrixCutLambda lambda source target)
      (LinExpr.sub (binaryZeroCoeffExpr n target.j) (LinExpr.var target)))

@[simp]
theorem binaryMatrixCutLhs2Expr_eval {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (source : BinaryOrbitIndex n)
    (x : BinaryX n) :
    (binaryMatrixCutLhs2Expr lambda source).eval x =
      Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryZeroCoeff x target.j - x target) *
          binaryMatrixCutLambda lambda source target) := by
  unfold binaryMatrixCutLhs2Expr
  simp [mul_comm]

/-- Third binary matrix-cut left-hand side as a linear expression. -/
noncomputable def binaryMatrixCutLhs3Expr {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (source : BinaryOrbitIndex n) :
    LinExpr (BinaryOrbitIndex n) :=
  LinExpr.sum Finset.univ (fun target : BinaryOrbitIndex n =>
    LinExpr.smul (binaryMatrixCutLambda lambda source target)
      (LinExpr.sub
        (binaryZeroCoeffExpr n (binaryOrbitDistanceIndex target))
        (LinExpr.var target)))

@[simp]
theorem binaryMatrixCutLhs3Expr_eval {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (source : BinaryOrbitIndex n)
    (x : BinaryX n) :
    (binaryMatrixCutLhs3Expr lambda source).eval x =
      Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryZeroCoeff x (binaryOrbitDistanceIndex target) - x target) *
          binaryMatrixCutLambda lambda source target) := by
  unfold binaryMatrixCutLhs3Expr
  simp [mul_comm]

/-- Fourth binary matrix-cut left-hand side as a linear expression. -/
noncomputable def binaryMatrixCutLhs4TargetExpr {n : Nat}
    (target : BinaryOrbitIndex n) : LinExpr (BinaryOrbitIndex n) :=
  LinExpr.add
    (LinExpr.sub (binaryZeroCoeffExpr n 0)
      (binaryZeroCoeffExpr n target.j))
    (LinExpr.sub (LinExpr.var target)
      (binaryZeroCoeffExpr n (binaryOrbitDistanceIndex target)))

noncomputable def binaryMatrixCutLhs4Expr {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (source : BinaryOrbitIndex n) :
    LinExpr (BinaryOrbitIndex n) :=
  LinExpr.sum Finset.univ (fun target : BinaryOrbitIndex n =>
    LinExpr.smul (binaryMatrixCutLambda lambda source target)
      (binaryMatrixCutLhs4TargetExpr target))

@[simp]
theorem binaryMatrixCutLhs4Expr_eval {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (source : BinaryOrbitIndex n)
    (x : BinaryX n) :
    (binaryMatrixCutLhs4Expr lambda source).eval x =
      Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryZeroCoeff x 0 - binaryZeroCoeff x target.j -
            binaryZeroCoeff x (binaryOrbitDistanceIndex target) + x target) *
          binaryMatrixCutLambda lambda source target) := by
  unfold binaryMatrixCutLhs4Expr
  simp [mul_comm, binaryMatrixCutLhs4TargetExpr]
  apply Finset.sum_congr rfl
  intro target _
  ring_nf

/-- Named scalar affine atoms in the binary reduced SDP. -/
inductive BinaryScalarAtom (n : Nat) where
  | nonneg : BinaryOrbitIndex n -> BinaryScalarAtom n
  | diagonalUpper : BinaryOrbitIndex n -> BinaryScalarAtom n
  | triangleLower : BinaryOrbitIndex n -> BinaryScalarAtom n
  | distanceUpper : BinaryOrbitIndex n -> BinaryScalarAtom n
  | symmetryLe : BinaryOrbitIndex n -> BinaryOrbitIndex n -> BinaryScalarAtom n
  | symmetryGe : BinaryOrbitIndex n -> BinaryOrbitIndex n -> BinaryScalarAtom n
  | matrixCut1 : BinaryOrbitIndex n -> BinaryScalarAtom n
  | matrixCut2 : BinaryOrbitIndex n -> BinaryScalarAtom n
  | matrixCut3 : BinaryOrbitIndex n -> BinaryScalarAtom n
  | matrixCut4 : BinaryOrbitIndex n -> BinaryScalarAtom n
deriving DecidableEq, Fintype

/-- Linear expression associated to each named binary scalar atom. -/
noncomputable def binaryScalarAtomExpr {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat) :
    BinaryScalarAtom n -> LinExpr (BinaryOrbitIndex n)
  | .nonneg idx => LinExpr.var idx
  | .diagonalUpper idx =>
      LinExpr.sub (binaryDiagonalCoeffExpr n idx.i) (LinExpr.var idx)
  | .triangleLower idx =>
      LinExpr.add
        (LinExpr.sub (LinExpr.var idx) (binaryZeroCoeffExpr n idx.i))
        (LinExpr.sub (binaryZeroCoeffExpr n 0)
          (binaryZeroCoeffExpr n (binaryOrbitDistanceIndex idx)))
  | .distanceUpper idx =>
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
  | .matrixCut1 source =>
      LinExpr.sub (binaryMatrixCutLhs1Expr lambda source)
        (LinExpr.smul beta (binaryZeroCoeffExpr n source.i))
  | .matrixCut2 source =>
      LinExpr.sub (binaryMatrixCutLhs2Expr lambda source)
        (LinExpr.smul beta
          (LinExpr.sub (binaryZeroCoeffExpr n 0)
            (binaryZeroCoeffExpr n source.i)))
  | .matrixCut3 source =>
      LinExpr.sub (binaryMatrixCutLhs3Expr lambda source)
        (LinExpr.smul beta
          (LinExpr.sub (binaryZeroCoeffExpr n 0)
            (binaryZeroCoeffExpr n source.i)))
  | .matrixCut4 source =>
      LinExpr.sub (binaryMatrixCutLhs4Expr lambda source)
        (LinExpr.smul beta
          (LinExpr.add
            (LinExpr.constExpr (BinaryOrbitIndex n) 1)
            (LinExpr.add
              (LinExpr.smul (-2) (binaryZeroCoeffExpr n 0))
              (binaryZeroCoeffExpr n source.i))))

/-- Proposition 4.8-style binary matrix-cut inequalities. -/
noncomputable def BinaryMatrixCutConstraints {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat) (x : BinaryX n) : Prop :=
  forall source : BinaryOrbitIndex n,
    let lhs1 := Finset.univ.sum (fun target : BinaryOrbitIndex n =>
      x target * binaryMatrixCutLambda lambda source target)
    let lhs2 := Finset.univ.sum (fun target : BinaryOrbitIndex n =>
      (binaryZeroCoeff x target.j - x target) *
        binaryMatrixCutLambda lambda source target)
    let lhs3 := Finset.univ.sum (fun target : BinaryOrbitIndex n =>
      (binaryZeroCoeff x (binaryOrbitDistanceIndex target) - x target) *
        binaryMatrixCutLambda lambda source target)
    let lhs4 := Finset.univ.sum (fun target : BinaryOrbitIndex n =>
      (binaryZeroCoeff x 0 - binaryZeroCoeff x target.j -
          binaryZeroCoeff x (binaryOrbitDistanceIndex target) + x target) *
        binaryMatrixCutLambda lambda source target)
    binaryZeroCoeff x source.i * beta <= lhs1 /\
      (binaryZeroCoeff x 0 - binaryZeroCoeff x source.i) * beta <= lhs2 /\
      (binaryZeroCoeff x 0 - binaryZeroCoeff x source.i) * beta <= lhs3 /\
      (1 - 2 * binaryZeroCoeff x 0 + binaryZeroCoeff x source.i) * beta <= lhs4

/-- A binary Schrijver block entry as a linear expression in orbit variables. -/
noncomputable def binaryBlockEntryExpr (n k : Nat)
    (coeffExpr : BinaryOrbitIndex n -> LinExpr (BinaryOrbitIndex n))
    (row col : Nat) : LinExpr (BinaryOrbitIndex n) :=
  let i := k + row
  let j := k + col
  LinExpr.sum (Finset.range (n + 1)) (fun t =>
    if ht_i : t <= i then
      if ht_j : t <= j then
        if hij : i + j <= n + t then
          LinExpr.smul (betaCoeff n i j k t)
            (coeffExpr
              { i := i, j := j, t := t, ht_i := ht_i, ht_j := ht_j, hij := hij })
        else
          LinExpr.constExpr (BinaryOrbitIndex n) 0
      else
        LinExpr.constExpr (BinaryOrbitIndex n) 0
    else
      LinExpr.constExpr (BinaryOrbitIndex n) 0)

@[simp]
theorem binaryBlockEntryExpr_eval {n : Nat}
    (k : Nat) (coeffExpr : BinaryOrbitIndex n -> LinExpr (BinaryOrbitIndex n))
    (row col : Nat) (x : BinaryX n) :
    (binaryBlockEntryExpr n k coeffExpr row col).eval x =
      binaryBlockEntry n k (fun idx => (coeffExpr idx).eval x) row col := by
  unfold binaryBlockEntryExpr binaryBlockEntry
  simp only [LinExpr.eval_sum]
  apply Finset.sum_congr rfl
  intro t _
  by_cases ht_i : t <= k + row
  · by_cases ht_j : t <= k + col
    · by_cases hij : k + row + (k + col) <= n + t
      · simp [ht_i, ht_j, hij]
      · simp [ht_i, ht_j, hij]
    · simp [ht_i, ht_j]
  · simp [ht_i]

/-- Coefficients of a Schrijver block entry built directly from orbit variables. -/
theorem binaryBlockEntryExpr_var_coeff {n k row col : Nat}
    (source : BinaryOrbitIndex n) :
    (binaryBlockEntryExpr n k (fun source => LinExpr.var source) row col).coeff source =
      if source.i = k + row ∧ source.j = k + col then
        betaCoeff n (k + row) (k + col) k source.t
      else 0 := by
  unfold binaryBlockEntryExpr
  simp only [LinExpr.sum]
  by_cases hmatch : source.i = k + row ∧ source.j = k + col
  · rw [if_pos hmatch]
    rw [← show
      (if ht_i : source.t <= k + row then
        if ht_j : source.t <= k + col then
          if hij : k + row + (k + col) <= n + source.t then
            LinExpr.smul (betaCoeff n (k + row) (k + col) k source.t)
              (LinExpr.var
                (BinaryOrbitIndex.mk (k + row) (k + col) source.t ht_i ht_j hij))
          else LinExpr.constExpr (BinaryOrbitIndex n) 0
        else LinExpr.constExpr (BinaryOrbitIndex n) 0
      else LinExpr.constExpr (BinaryOrbitIndex n) 0).coeff source =
        betaCoeff n (k + row) (k + col) k source.t by
      have ht_i : source.t <= k + row := by simpa [hmatch.1] using source.ht_i
      have ht_j : source.t <= k + col := by simpa [hmatch.2] using source.ht_j
      have hij : k + row + (k + col) <= n + source.t := by
        simpa [hmatch.1, hmatch.2] using source.hij
      have hEq :
          source = BinaryOrbitIndex.mk (k + row) (k + col) source.t ht_i ht_j hij := by
        rcases source with ⟨si, sj, st, hti0, htj0, hij0⟩
        dsimp at hmatch ⊢
        rcases hmatch with ⟨hi, hj⟩
        subst si
        subst sj
        rfl
      simp only [ht_i, ↓reduceDIte, ht_j, hij, LinExpr.smul, LinExpr.var]
      rw [if_pos hEq]
      ring]
    apply Finset.sum_eq_single source.t
    · intro x _ hxne
      by_cases ht_i : x <= k + row
      · by_cases ht_j : x <= k + col
        · by_cases hij : k + row + (k + col) <= n + x
          · have hne :
                source ≠ BinaryOrbitIndex.mk (k + row) (k + col) x ht_i ht_j hij := by
              intro hEq
              apply hxne
              have ht_eq : source.t = x := by
                cases hEq
                rfl
              exact ht_eq.symm
            simp [ht_i, ht_j, hij, LinExpr.smul, LinExpr.var, hne]
          · simp [ht_i, ht_j, hij, LinExpr.constExpr]
        · simp [ht_i, ht_j, LinExpr.constExpr]
      · simp [ht_i, LinExpr.constExpr]
    · intro hnot
      exfalso
      exact hnot (Finset.mem_range.mpr (Nat.lt_succ_of_le source.t_le_n))
  · rw [if_neg hmatch]
    apply Finset.sum_eq_zero
    intro x _
    by_cases ht_i : x <= k + row
    · by_cases ht_j : x <= k + col
      · by_cases hij : k + row + (k + col) <= n + x
        · have hne :
              source ≠ BinaryOrbitIndex.mk (k + row) (k + col) x ht_i ht_j hij := by
            intro hEq
            apply hmatch
            cases hEq
            exact ⟨rfl, rfl⟩
          simp [ht_i, ht_j, hij, LinExpr.smul, LinExpr.var, hne]
        · simp [ht_i, ht_j, hij, LinExpr.constExpr]
      · simp [ht_i, ht_j, LinExpr.constExpr]
    · simp [ht_i, LinExpr.constExpr]

/-- A binary Schrijver block as a matrix of linear expressions. -/
noncomputable def binaryBlockMatrixExpr (n k : Nat)
    (coeffExpr : BinaryOrbitIndex n -> LinExpr (BinaryOrbitIndex n)) :
    Matrix (Fin (n - 2 * k + 1)) (Fin (n - 2 * k + 1))
      (LinExpr (BinaryOrbitIndex n)) :=
  fun row col => binaryBlockEntryExpr n k coeffExpr row.val col.val

@[simp]
theorem binaryBlockMatrixExpr_eval {n k : Nat}
    (coeffExpr : BinaryOrbitIndex n -> LinExpr (BinaryOrbitIndex n))
    (x : BinaryX n) :
    MatrixLinExpr.eval (binaryBlockMatrixExpr n k coeffExpr) x =
      binaryBlock n k (fun idx => (coeffExpr idx).eval x) := by
  ext row col
  simp [MatrixLinExpr.eval, binaryBlockMatrixExpr, binaryBlock]

/-- Named PSD matrix atoms in the binary reduced SDP. -/
inductive BinaryMatrixAtom (n : Nat) where
  | primal : BinaryBlockIndex n -> BinaryMatrixAtom n
  | lasserre : BinaryBlockIndex n -> BinaryMatrixAtom n
deriving DecidableEq, Fintype

namespace BinaryMatrixAtom

/-- Row/column type attached to each binary matrix atom. -/
abbrev Coord {n : Nat} : BinaryMatrixAtom n -> Type
  | .primal idx => BinaryBlockCoord idx
  | .lasserre idx => BinaryBlockCoord idx

instance {n : Nat} (atom : BinaryMatrixAtom n) : Fintype (Coord atom) := by
  cases atom <;> infer_instance

end BinaryMatrixAtom

/-- Matrix expression associated to each named binary PSD atom. -/
noncomputable def binaryMatrixAtomExpr {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (beta : Rat) :
    forall atom : BinaryMatrixAtom n,
      Matrix (BinaryMatrixAtom.Coord atom) (BinaryMatrixAtom.Coord atom)
        (LinExpr (BinaryOrbitIndex n))
  | .primal idx =>
      binaryBlockMatrixExpr n idx.k (fun source => LinExpr.var source)
  | .lasserre idx =>
      binaryBlockMatrixExpr n idx.k (binaryLasserreCoeffExpr lambda beta)

/-- Reduced binary constraints, staged by paper proposition. -/
structure BinaryReducedConstraints
    (n r : Nat) (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (x : BinaryX n) : Prop where
  -- Proposition 4.2
  basic : BinaryBasicConstraints x
  -- Proposition 4.3
  semidefinite : BinaryBlocksPSD x
  -- Proposition 4.5
  lasserre : BinaryLasserreConstraints lambda beta x
  -- Proposition 4.8
  matrixCuts : BinaryMatrixCutConstraints lambda beta x

/-- Existing binary reduced constraints imply nonnegativity of every named scalar atom. -/
theorem binaryScalarAtomExpr_nonneg_of_constraints {n r : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat} {x : BinaryX n}
    (h : BinaryReducedConstraints n r lambda beta x) :
    LinearConstraints (binaryScalarAtomExpr lambda beta) x := by
  intro atom
  cases atom with
  | nonneg idx =>
      simpa [binaryScalarAtomExpr] using (h.basic.1 idx).1
  | diagonalUpper idx =>
      have hle := (h.basic.1 idx).2
      simp [binaryScalarAtomExpr]
      linarith
  | triangleLower idx =>
      have hle := (h.basic.2.1 idx).1
      simp [binaryScalarAtomExpr]
      linarith
  | distanceUpper idx =>
      have hle := (h.basic.2.1 idx).2
      simp [binaryScalarAtomExpr]
      linarith
  | symmetryLe idx idx' =>
      unfold binaryScalarAtomExpr
      by_cases hp : List.Perm [idx.i, idx.j, binaryOrbitDistanceIndex idx]
          [idx'.i, idx'.j, binaryOrbitDistanceIndex idx']
      · have heq := h.basic.2.2 idx idx' hp
        simp [hp]
        linarith
      · simp [hp]
  | symmetryGe idx idx' =>
      unfold binaryScalarAtomExpr
      by_cases hp : List.Perm [idx.i, idx.j, binaryOrbitDistanceIndex idx]
          [idx'.i, idx'.j, binaryOrbitDistanceIndex idx']
      · have heq := h.basic.2.2 idx idx' hp
        simp [hp]
        linarith
      · simp [hp]
  | matrixCut1 source =>
      have hcut := h.matrixCuts source
      dsimp [BinaryMatrixCutConstraints] at hcut
      simpa [binaryScalarAtomExpr, sub_nonneg, mul_comm] using hcut.1
  | matrixCut2 source =>
      have hcut := h.matrixCuts source
      dsimp [BinaryMatrixCutConstraints] at hcut
      simpa [binaryScalarAtomExpr, sub_nonneg, mul_comm] using hcut.2.1
  | matrixCut3 source =>
      have hcut := h.matrixCuts source
      dsimp [BinaryMatrixCutConstraints] at hcut
      simpa [binaryScalarAtomExpr, sub_nonneg, mul_comm] using hcut.2.2.1
  | matrixCut4 source =>
      have hcut := h.matrixCuts source
      dsimp [BinaryMatrixCutConstraints] at hcut
      simpa [binaryScalarAtomExpr, sub_nonneg, mul_comm, sub_eq_add_neg,
        add_assoc, add_comm, add_left_comm] using hcut.2.2.2

/-- Existing binary reduced constraints imply the exact SDP atom constraints. -/
theorem BinaryReducedConstraints.toSDPConstraints {n r : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat} {x : BinaryX n}
    (h : BinaryReducedConstraints n r lambda beta x) :
    SDPConstraints (binaryScalarAtomExpr lambda beta)
      (binaryMatrixAtomExpr lambda beta) x := by
  constructor
  · exact binaryScalarAtomExpr_nonneg_of_constraints h
  · intro atom
    cases atom with
    | primal idx =>
        simpa [binaryMatrixAtomExpr, binaryBlockForIndex] using h.semidefinite idx
    | lasserre idx =>
        simpa [binaryMatrixAtomExpr, binaryBlockForIndex, BinaryLasserreConstraints,
          binaryLasserreX] using h.lasserre idx

/-- Top-down exact dual certificate interface for Theorem 4.9. -/
structure BinaryReducedDualCertificate
    (n r : Nat) (lambda : Fin (n + 1) -> Rat) (beta : Rat) (L : Nat) where
  bound : Rat
  cubeThreshold : ((L - 1 : Nat) : Rat) ^ 3 < bound
  objectiveCertificate :
    ObjectiveLowerCertificate (BinaryOrbitIndex n)
      (BinaryReducedConstraints n r lambda beta)
      (binaryReducedObjective n)
      bound
  codeObjectiveBound :
    forall C : Finset (QaryWord 2 n),
      CoversFinset C r ->
        exists x : BinaryX n,
          BinaryReducedConstraints n r lambda beta x /\
            binaryReducedObjective n x <= (C.card : Rat) ^ 3

/-- Nested product type for triples of binary codewords. -/
abbrev BinaryCodeTriple (n : Nat) :=
  ((QaryWord 2 n × QaryWord 2 n) × QaryWord 2 n)

/-- Finite set of ordered triples from a binary code. -/
def binaryCodeTriples {n : Nat} (C : Finset (QaryWord 2 n)) :
    Finset (BinaryCodeTriple n) :=
  finsetCube C

/-- Coordinates where the first word of a triple differs from the base third word. -/
def binaryCodeTripleLeftSupport {n : Nat} (triple : BinaryCodeTriple n) :
    Finset (Fin n) :=
  Finset.univ.filter (fun a => triple.1.1 a ≠ triple.2 a)

/-- Coordinates where the second word of a triple differs from the base third word. -/
def binaryCodeTripleRightSupport {n : Nat} (triple : BinaryCodeTriple n) :
    Finset (Fin n) :=
  Finset.univ.filter (fun a => triple.1.2 a ≠ triple.2 a)

private lemma fin2_ne_ne_iff {a b c : Fin 2} :
    a ≠ b ↔ (a ≠ c ∧ b = c) ∨ (a = c ∧ b ≠ c) := by
  fin_cases a <;> fin_cases b <;> fin_cases c <;> simp

private lemma binaryCodeTriple_dist_filter_eq {n : Nat}
    (triple : BinaryCodeTriple n) :
    (Finset.univ.filter (fun a : Fin n => triple.1.1 a ≠ triple.1.2 a)) =
      (binaryCodeTripleLeftSupport triple \ binaryCodeTripleRightSupport triple) ∪
        (binaryCodeTripleRightSupport triple \ binaryCodeTripleLeftSupport triple) := by
  ext a
  constructor
  · intro ha
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at ha
    rcases (fin2_ne_ne_iff (c := triple.2 a)).mp ha with ⟨hu, hv⟩ | ⟨hu, hv⟩
    · exact Finset.mem_union.mpr
        (Or.inl (Finset.mem_sdiff.mpr
          ⟨by simp [binaryCodeTripleLeftSupport, hu],
            by simp [binaryCodeTripleRightSupport, hv]⟩))
    · exact Finset.mem_union.mpr
        (Or.inr (Finset.mem_sdiff.mpr
          ⟨by simp [binaryCodeTripleRightSupport, hv],
            by simp [binaryCodeTripleLeftSupport, hu]⟩))
  · intro ha
    rw [Finset.mem_filter]
    refine ⟨Finset.mem_univ a, ?_⟩
    simp only [Finset.mem_union, Finset.mem_sdiff] at ha
    rcases ha with ⟨hua, hva⟩ | ⟨hva, hua⟩
    · simp only [binaryCodeTripleLeftSupport, binaryCodeTripleRightSupport,
        Finset.mem_filter, Finset.mem_univ, true_and] at hua hva
      intro h
      apply hva
      rwa [← h]
    · simp only [binaryCodeTripleLeftSupport, binaryCodeTripleRightSupport,
        Finset.mem_filter, Finset.mem_univ, true_and] at hua hva
      intro h
      apply hua
      rwa [h]

/--
Canonical binary orbit classifier for ordered code triples.

The third word is the base word sent to zero; the first two words provide the
two relative words whose orbit parameters are recorded.
-/
def binaryCodeTripleOrbitOf {n : Nat} (triple : BinaryCodeTriple n) :
    BinaryOrbitIndex n where
  i := (binaryCodeTripleLeftSupport triple).card
  j := (binaryCodeTripleRightSupport triple).card
  t := (binaryCodeTripleLeftSupport triple ∩ binaryCodeTripleRightSupport triple).card
  ht_i := by
    exact Finset.card_le_card Finset.inter_subset_left
  ht_j := by
    exact Finset.card_le_card Finset.inter_subset_right
  hij := by
    let A := binaryCodeTripleLeftSupport triple
    let B := binaryCodeTripleRightSupport triple
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
theorem binaryCodeTripleOrbitOf_i {n : Nat} (triple : BinaryCodeTriple n) :
    (binaryCodeTripleOrbitOf triple).i =
      dist triple.1.1 triple.2 := by
  unfold binaryCodeTripleOrbitOf binaryCodeTripleLeftSupport dist hammingDist
  rfl

@[simp]
theorem binaryCodeTripleOrbitOf_j {n : Nat} (triple : BinaryCodeTriple n) :
    (binaryCodeTripleOrbitOf triple).j =
      dist triple.1.2 triple.2 := by
  unfold binaryCodeTripleOrbitOf binaryCodeTripleRightSupport dist hammingDist
  rfl

@[simp]
theorem binaryCodeTripleOrbitOf_t {n : Nat} (triple : BinaryCodeTriple n) :
    (binaryCodeTripleOrbitOf triple).t =
      (binaryCodeTripleLeftSupport triple ∩ binaryCodeTripleRightSupport triple).card := by
  rfl

@[simp]
theorem binaryCodeTripleLeftSupport_xor {n : Nat}
    (base u v : QaryWord 2 n) :
    binaryCodeTripleLeftSupport
        ((binaryXorWord base u, binaryXorWord base v), base) =
      binarySupport n u := by
  ext coord
  simp [binaryCodeTripleLeftSupport, binarySupport, binaryXorWord_ne_left_iff]

@[simp]
theorem binaryCodeTripleRightSupport_xor {n : Nat}
    (base u v : QaryWord 2 n) :
    binaryCodeTripleRightSupport
        ((binaryXorWord base u, binaryXorWord base v), base) =
      binarySupport n v := by
  ext coord
  simp [binaryCodeTripleRightSupport, binarySupport, binaryXorWord_ne_left_iff]

/--
The relative code triple generated from a base word and two relative binary
words has exactly the ordinary binary orbit of those relative words.
-/
theorem binaryCodeTripleOrbitOf_xor {n : Nat}
    (base u v : QaryWord 2 n) :
    binaryCodeTripleOrbitOf
        ((binaryXorWord base u, binaryXorWord base v), base) =
      binaryOrbitOf u v := by
  apply binaryOrbitIndex_ext
  · simp [binaryCodeTripleOrbitOf, binaryOrbitOf]
  · simp [binaryCodeTripleOrbitOf, binaryOrbitOf]
  · simp [binaryCodeTripleOrbitOf, binaryOrbitOf]

theorem binaryCodeTripleOrbitOf_eq_orbitOf_relative {n : Nat}
    (triple : BinaryCodeTriple n) :
    binaryOrbitOf (binaryXorWord triple.2 triple.1.1)
        (binaryXorWord triple.2 triple.1.2) =
      binaryCodeTripleOrbitOf triple := by
  let u := binaryXorWord triple.2 triple.1.1
  let v := binaryXorWord triple.2 triple.1.2
  have htriple :
      ((binaryXorWord triple.2 u, binaryXorWord triple.2 v), triple.2) =
        triple := by
    simp [u, v]
  have hx := binaryCodeTripleOrbitOf_xor triple.2 u v
  rw [htriple] at hx
  exact hx.symm

/-- Swap the first two words in a binary code triple. -/
def binaryCodeTripleSwap12 {n : Nat} (triple : BinaryCodeTriple n) :
    BinaryCodeTriple n :=
  ((triple.1.2, triple.1.1), triple.2)

theorem binaryCodeTripleSwap12_involutive {n : Nat} :
    Function.Involutive (@binaryCodeTripleSwap12 n) := by
  intro triple
  rfl

theorem binaryCodeTripleOrbitOf_swap12 {n : Nat} (triple : BinaryCodeTriple n) :
    binaryCodeTripleOrbitOf (binaryCodeTripleSwap12 triple) =
      (binaryCodeTripleOrbitOf triple).swap := by
  cases triple with
  | mk pair base =>
      cases pair with
      | mk left right =>
          simp [binaryCodeTripleOrbitOf, binaryCodeTripleSwap12, BinaryOrbitIndex.swap,
            binaryCodeTripleLeftSupport, binaryCodeTripleRightSupport, Finset.inter_comm]

/-- Rebase a binary code triple from `(u,v)` over base `w` to `(u,w)` over base `v`. -/
def binaryCodeTripleRebaseRight {n : Nat} (triple : BinaryCodeTriple n) :
    BinaryCodeTriple n :=
  ((triple.1.1, triple.2), triple.1.2)

theorem binaryCodeTripleRebaseRight_involutive {n : Nat} :
    Function.Involutive (@binaryCodeTripleRebaseRight n) := by
  intro triple
  rfl

/-- Rebase a binary code triple from `(u,v)` over base `w` to `(w,v)` over base `u`. -/
def binaryCodeTripleRebaseLeft {n : Nat} (triple : BinaryCodeTriple n) :
    BinaryCodeTriple n :=
  ((triple.2, triple.1.2), triple.1.1)

theorem binaryCodeTripleRebaseLeft_involutive {n : Nat} :
    Function.Involutive (@binaryCodeTripleRebaseLeft n) := by
  intro triple
  rfl

private theorem binaryCodeTripleRebaseRight_inter_card {n : Nat}
    (triple : BinaryCodeTriple n) :
    (binaryCodeTripleLeftSupport (binaryCodeTripleRebaseRight triple) ∩
        binaryCodeTripleRightSupport (binaryCodeTripleRebaseRight triple)).card =
      (binaryCodeTripleRightSupport triple).card -
        (binaryCodeTripleLeftSupport triple ∩ binaryCodeTripleRightSupport triple).card := by
  have hset :
      binaryCodeTripleLeftSupport (binaryCodeTripleRebaseRight triple) ∩
          binaryCodeTripleRightSupport (binaryCodeTripleRebaseRight triple) =
        binaryCodeTripleRightSupport triple \ binaryCodeTripleLeftSupport triple := by
    ext a
    simp only [binaryCodeTripleRebaseRight, binaryCodeTripleLeftSupport,
      binaryCodeTripleRightSupport, Finset.mem_inter, Finset.mem_sdiff,
      Finset.mem_filter, Finset.mem_univ, true_and]
    constructor
    · rintro ⟨huv, hwv⟩
      have hvw : triple.1.2 a ≠ triple.2 a := fun h => hwv h.symm
      rcases (fin2_ne_ne_iff (a := triple.1.1 a) (b := triple.1.2 a)
          (c := triple.2 a)).mp huv with ⟨_, hv_eq⟩ | ⟨huw_eq, _⟩
      · exact False.elim (hwv hv_eq.symm)
      · exact ⟨hvw, by simp [huw_eq]⟩
    · rintro ⟨hvw, hnuw⟩
      have huw_eq : triple.1.1 a = triple.2 a := by
        by_contra huw
        exact hnuw huw
      constructor
      · intro huv
        exact hvw (by rw [← huw_eq, huv])
      · exact fun hwv => hvw hwv.symm
  rw [hset, Finset.card_sdiff]

theorem binaryCodeTriple_dist_from_orbit {n : Nat} (triple : BinaryCodeTriple n) :
    dist triple.1.1 triple.1.2 =
      (binaryCodeTripleOrbitOf triple).i + (binaryCodeTripleOrbitOf triple).j -
        2 * (binaryCodeTripleOrbitOf triple).t := by
  let A := binaryCodeTripleLeftSupport triple
  let B := binaryCodeTripleRightSupport triple
  have hfilter :
      (Finset.univ.filter (fun a : Fin n => triple.1.1 a ≠ triple.1.2 a)) =
        (A \ B) ∪ (B \ A) :=
    binaryCodeTriple_dist_filter_eq triple
  have hdisj : Disjoint (A \ B) (B \ A) := by
    rw [Finset.disjoint_left]
    intro a ha hb
    exact (Finset.mem_sdiff.mp ha).2 (Finset.mem_sdiff.mp hb).1
  unfold dist hammingDist
  rw [hfilter, Finset.card_union_of_disjoint hdisj]
  have hinter : (B ∩ A).card = (A ∩ B).card := by rw [Finset.inter_comm]
  rw [Finset.card_sdiff, Finset.card_sdiff, hinter]
  change A.card - (A ∩ B).card + (B.card - (A ∩ B).card) =
    A.card + B.card - 2 * (A ∩ B).card
  have hA : (A ∩ B).card <= A.card := Finset.card_le_card Finset.inter_subset_left
  have hB : (A ∩ B).card <= B.card := Finset.card_le_card Finset.inter_subset_right
  omega

theorem binaryCodeTripleOrbitOf_rebaseRight {n : Nat} (triple : BinaryCodeTriple n) :
    binaryCodeTripleOrbitOf (binaryCodeTripleRebaseRight triple) =
      (binaryCodeTripleOrbitOf triple).rebaseRight := by
  apply binaryOrbitIndex_ext
  · simpa [binaryCodeTripleRebaseRight, binaryOrbitDistanceIndex] using
      binaryCodeTriple_dist_from_orbit triple
  · simp [binaryCodeTripleRebaseRight, dist_comm]
  · simpa [binaryCodeTripleOrbitOf, BinaryOrbitIndex.rebaseRight] using
      binaryCodeTripleRebaseRight_inter_card triple

theorem binaryCodeTripleOrbitOf_rebaseLeft {n : Nat} (triple : BinaryCodeTriple n) :
    binaryCodeTripleOrbitOf (binaryCodeTripleRebaseLeft triple) =
      (binaryCodeTripleOrbitOf triple).rebaseLeft := by
  change
    binaryCodeTripleOrbitOf
        (binaryCodeTripleSwap12
          (binaryCodeTripleRebaseRight (binaryCodeTripleSwap12 triple))) =
      (binaryCodeTripleOrbitOf triple).rebaseLeft
  rw [binaryCodeTripleOrbitOf_swap12, binaryCodeTripleOrbitOf_rebaseRight,
    binaryCodeTripleOrbitOf_swap12]
  rfl

/-- The code-triple cell classified by one binary orbit index. -/
def binaryCodeTripleOrbitCell {n : Nat} (C : Finset (QaryWord 2 n))
    (idx : BinaryOrbitIndex n) : Finset (BinaryCodeTriple n) :=
  (binaryCodeTriples C).filter (fun triple => binaryCodeTripleOrbitOf triple = idx)

@[simp]
theorem mem_binaryCodeTripleOrbitCell {n : Nat}
    {C : Finset (QaryWord 2 n)} {idx : BinaryOrbitIndex n}
    {triple : BinaryCodeTriple n} :
    triple ∈ binaryCodeTripleOrbitCell C idx ↔
      triple.1.1 ∈ C ∧ triple.1.2 ∈ C ∧ triple.2 ∈ C ∧
        binaryCodeTripleOrbitOf triple = idx := by
  simp [binaryCodeTripleOrbitCell, binaryCodeTriples, and_assoc]

/-- Ordered relative-word pairs in one binary orbit cell. -/
def binaryWordPairOrbitCell {n : Nat} (idx : BinaryOrbitIndex n) :
    Finset (QaryWord 2 n × QaryWord 2 n) :=
  Finset.univ.filter (fun pair => binaryOrbitOf pair.1 pair.2 = idx)

@[simp]
theorem mem_binaryWordPairOrbitCell {n : Nat}
    {idx : BinaryOrbitIndex n} {pair : QaryWord 2 n × QaryWord 2 n} :
    pair ∈ binaryWordPairOrbitCell idx ↔
      binaryOrbitOf pair.1 pair.2 = idx := by
  simp [binaryWordPairOrbitCell]

theorem binaryRelativeCodeBaseCell_encode_mem_orbitCell {n : Nat}
    {C : Finset (QaryWord 2 n)} {base u v : QaryWord 2 n}
    (hbase : base ∈ binaryRelativeCodeBaseCell C u v) :
    ((binaryXorWord base u, binaryXorWord base v), base) ∈
      binaryCodeTripleOrbitCell C (binaryOrbitOf u v) := by
  rw [mem_binaryRelativeCodeBaseCell] at hbase
  rw [mem_binaryCodeTripleOrbitCell]
  exact ⟨hbase.2.1, hbase.2.2, hbase.1,
    binaryCodeTripleOrbitOf_xor base u v⟩

theorem binaryRelativeCodeBaseCell_card_le_orbitCell {n : Nat}
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) :
    (binaryRelativeCodeBaseCell C u v).card <=
      (binaryCodeTripleOrbitCell C (binaryOrbitOf u v)).card := by
  let encode : QaryWord 2 n -> BinaryCodeTriple n :=
    fun base => ((binaryXorWord base u, binaryXorWord base v), base)
  have hsubset :
      (binaryRelativeCodeBaseCell C u v).image encode ⊆
        binaryCodeTripleOrbitCell C (binaryOrbitOf u v) := by
    intro triple htriple
    rcases Finset.mem_image.mp htriple with ⟨base, hbase, rfl⟩
    exact binaryRelativeCodeBaseCell_encode_mem_orbitCell hbase
  have hinj : Set.InjOn encode (binaryRelativeCodeBaseCell C u v : Set (QaryWord 2 n)) := by
    intro base _ base' _ h
    exact congrArg (fun triple : BinaryCodeTriple n => triple.2) h
  calc
    (binaryRelativeCodeBaseCell C u v).card =
        ((binaryRelativeCodeBaseCell C u v).image encode).card := by
          exact (Finset.card_image_of_injOn hinj).symm
    _ <= (binaryCodeTripleOrbitCell C (binaryOrbitOf u v)).card :=
          Finset.card_le_card hsubset

theorem binaryWordPairOrbitCell_baseCell_sum_card {n : Nat}
    (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n) :
    (binaryWordPairOrbitCell idx).sum (fun pair =>
      (binaryRelativeCodeBaseCell C pair.1 pair.2).card) =
      (binaryCodeTripleOrbitCell C idx).card := by
  let total :=
    (binaryWordPairOrbitCell idx).sigma (fun pair =>
      binaryRelativeCodeBaseCell C pair.1 pair.2)
  let encode :
      Sigma (fun _pair : QaryWord 2 n × QaryWord 2 n => QaryWord 2 n) ->
        BinaryCodeTriple n :=
    fun item => ((binaryXorWord item.2 item.1.1,
      binaryXorWord item.2 item.1.2), item.2)
  have htotal_card : total.card = (binaryCodeTripleOrbitCell C idx).card := by
    apply Finset.card_bij (fun item _ => encode item)
    · intro item hitem
      rw [Finset.mem_sigma] at hitem
      rcases hitem with ⟨hpair, hbase⟩
      rw [mem_binaryWordPairOrbitCell] at hpair
      rw [mem_binaryRelativeCodeBaseCell] at hbase
      rw [mem_binaryCodeTripleOrbitCell]
      exact ⟨hbase.2.1, hbase.2.2, hbase.1, by
        simpa [encode] using
          (binaryCodeTripleOrbitOf_xor item.2 item.1.1 item.1.2).trans hpair⟩
    · intro a ha b hb hencode
      have hbase : a.2 = b.2 := by
        exact congrArg (fun triple : BinaryCodeTriple n => triple.2) hencode
      have hleft : a.1.1 = b.1.1 := by
        have hfirst := congrArg (fun triple : BinaryCodeTriple n => triple.1.1) hencode
        have hcancel := congrArg (fun word : QaryWord 2 n =>
          binaryXorWord a.2 word) hfirst
        simpa [encode, hbase] using hcancel
      have hright : a.1.2 = b.1.2 := by
        have hsecond := congrArg (fun triple : BinaryCodeTriple n => triple.1.2) hencode
        have hcancel := congrArg (fun word : QaryWord 2 n =>
          binaryXorWord a.2 word) hsecond
        simpa [encode, hbase] using hcancel
      cases a with
      | mk apair abase =>
          cases apair with
          | mk aleft aright =>
              cases b with
              | mk bpair bbase =>
                  cases bpair with
                  | mk bleft bright =>
                      simp at hbase hleft hright
                      subst bbase
                      subst bleft
                      subst bright
                      rfl
    · intro triple htriple
      let pair : QaryWord 2 n × QaryWord 2 n :=
        (binaryXorWord triple.2 triple.1.1,
          binaryXorWord triple.2 triple.1.2)
      refine ⟨⟨pair, triple.2⟩, ?_, ?_⟩
      · rw [Finset.mem_sigma]
        have hcell := mem_binaryCodeTripleOrbitCell.mp htriple
        refine ⟨?_, ?_⟩
        · rw [mem_binaryWordPairOrbitCell]
          have hxor :
              ((binaryXorWord triple.2 pair.1,
                  binaryXorWord triple.2 pair.2), triple.2) = triple := by
            simp [pair]
          have horbit := hcell.2.2.2
          rw [← hxor] at horbit
          simpa [pair] using
            (binaryCodeTripleOrbitOf_xor triple.2 pair.1 pair.2).symm.trans horbit
        · rw [mem_binaryRelativeCodeBaseCell]
          exact ⟨hcell.2.2.1, by simpa [pair] using hcell.1,
            by simpa [pair] using hcell.2.1⟩
      · simp [encode, pair]
  calc
    (binaryWordPairOrbitCell idx).sum (fun pair =>
        (binaryRelativeCodeBaseCell C pair.1 pair.2).card) = total.card := by
          simp [total]
    _ = (binaryCodeTripleOrbitCell C idx).card := htotal_card

/-- The zero-cell index with the prescribed first distance. -/
def binaryCodeCellZeroIndex {n : Nat} (i : Nat) (hi : i <= n) :
    BinaryOrbitIndex n where
  i := i
  j := 0
  t := 0
  ht_i := Nat.zero_le i
  ht_j := Nat.le_refl 0
  hij := by simpa using hi

/-- Project a code triple to the zero-cell triple with the same first/base pair. -/
def binaryCodeTripleLeftProjection {n : Nat} (triple : BinaryCodeTriple n) :
    BinaryCodeTriple n :=
  ((triple.1.1, triple.2), triple.2)

private theorem binary_word_eq_of_relative_support_eq {n : Nat}
    {u v w : QaryWord 2 n}
    (h :
      (Finset.univ.filter (fun a : Fin n => u a ≠ w a)) =
        (Finset.univ.filter (fun a : Fin n => v a ≠ w a))) :
    u = v := by
  funext a
  have hiff : (u a ≠ w a) ↔ (v a ≠ w a) := by
    have hm := congrArg (fun s : Finset (Fin n) => a ∈ s) h
    simpa using hm
  by_contra hne
  rcases (fin2_ne_ne_iff (a := u a) (b := v a) (c := w a)).mp hne with
      ⟨hu, hv⟩ | ⟨hu, hv⟩
  · exact (hiff.mp hu) hv
  · exact (hiff.mpr hv) hu

private theorem fin2_eq_zero_or_one (a : Fin 2) : a = 0 ∨ a = 1 := by
  have hlt : a.val < 2 := a.isLt
  have hval : a.val = 0 ∨ a.val = 1 := by omega
  rcases hval with hval | hval
  · exact Or.inl (Fin.ext hval)
  · exact Or.inr (Fin.ext hval)

private theorem fin2_binary_flip_ne_self (a : Fin 2) :
    (if a = 0 then (1 : Fin 2) else 0) ≠ a := by
  rcases fin2_eq_zero_or_one a with rfl | rfl <;> simp

/-- Flip exactly the binary coordinates in `S`, relative to a base word. -/
def binaryFlipOn {n : Nat} (base : QaryWord 2 n) (S : Finset (Fin n)) :
    QaryWord 2 n :=
  fun coord => if coord ∈ S then
    if base coord = 0 then 1 else 0
  else
    base coord

@[simp]
theorem binaryFlipOn_ne_base_iff {n : Nat}
    (base : QaryWord 2 n) (S : Finset (Fin n)) (coord : Fin n) :
    binaryFlipOn base S coord ≠ base coord ↔ coord ∈ S := by
  by_cases hcoord : coord ∈ S
  · simp [binaryFlipOn, hcoord]
    exact fin2_binary_flip_ne_self (base coord)
  · simp [binaryFlipOn, hcoord]

@[simp]
theorem binaryFlipOn_support_eq {n : Nat}
    (base : QaryWord 2 n) (S : Finset (Fin n)) :
    (Finset.univ.filter (fun coord : Fin n =>
      binaryFlipOn base S coord ≠ base coord)) = S := by
  ext coord
  simp

@[simp]
theorem binaryFlipOn_zero_support_eq {n : Nat}
    (S : Finset (Fin n)) :
    binarySupport n (binaryFlipOn (zeroWord 2 n (by decide)) S) = S := by
  change (Finset.univ.filter (fun coord : Fin n =>
    binaryFlipOn (zeroWord 2 n (by decide)) S coord ≠
      zeroWord 2 n (by decide) coord)) = S
  exact binaryFlipOn_support_eq (zeroWord 2 n (by decide)) S

theorem binaryXorWord_flipOn_right {n : Nat}
    (base : QaryWord 2 n) (S : Finset (Fin n)) :
    binaryXorWord base (binaryFlipOn base S) =
      binaryFlipOn (zeroWord 2 n (by decide)) S := by
  funext coord
  by_cases hcoord : coord ∈ S
  · simp [binaryXorWord, binaryFlipOn, hcoord, zeroWord]
    rcases fin2_eq_zero_or_one_basic (base coord) with hbase | hbase <;>
      simp [hbase]
  · simp [binaryXorWord, binaryFlipOn, hcoord, zeroWord]

theorem binaryFlipOn_xorSupport_eq {n : Nat}
    (base target : QaryWord 2 n) :
    binaryFlipOn base (binarySupport n (binaryXorWord base target)) =
      target := by
  funext coord
  rcases fin2_eq_zero_or_one_basic (base coord) with hbase | hbase <;>
    rcases fin2_eq_zero_or_one_basic (target coord) with htarget | htarget <;>
      simp [binaryFlipOn, binarySupport, binaryXorWord, hbase, htarget]

theorem binarySupport_flipOn {n : Nat}
    (base : QaryWord 2 n) (S : Finset (Fin n)) :
    binarySupport n (binaryFlipOn base S) =
      (binarySupport n base \ S) ∪ (S \ binarySupport n base) := by
  ext coord
  by_cases hcoord : coord ∈ S
  · rcases fin2_eq_zero_or_one_basic (base coord) with hbase | hbase <;>
      simp [binarySupport, binaryFlipOn, hcoord, hbase]
  · simp [binarySupport, binaryFlipOn, hcoord]

theorem binaryPairSupport11_flipOn_same {n : Nat}
    (u v : QaryWord 2 n) (S : Finset (Fin n)) :
    binaryPairSupport11 (binaryFlipOn u S) (binaryFlipOn v S) =
      (binaryPairSupport11 u v \ S) ∪ (S ∩ binaryPairSupport00 u v) := by
  ext coord
  by_cases hcoord : coord ∈ S
  · rcases fin2_eq_zero_or_one_basic (u coord) with hu | hu <;>
      rcases fin2_eq_zero_or_one_basic (v coord) with hv | hv <;>
        simp [binaryPairSupport11, binaryPairSupport00, binarySupport,
          binaryFlipOn, hcoord, hu, hv]
  · simp [binaryPairSupport11, binaryPairSupport00, binarySupport,
      binaryFlipOn, hcoord]

/-- Coordinate-set choices in a binary projection fiber. -/
def binaryProjectionSupportChoices {n : Nat}
    (A : Finset (Fin n)) (idx : BinaryOrbitIndex n) :
    Finset (Finset (Fin n) × Finset (Fin n)) :=
  (A.powersetCard idx.t).product
    (((Finset.univ : Finset (Fin n)) \ A).powersetCard (idx.j - idx.t))

theorem binaryProjectionSupportChoices_card {n : Nat}
    (A : Finset (Fin n)) (idx : BinaryOrbitIndex n)
    (hAcard : A.card = idx.i) :
    (binaryProjectionSupportChoices A idx).card =
      binaryOrbitFiberMultiplicityNat n idx := by
  have hAuniv : A ⊆ (Finset.univ : Finset (Fin n)) := by
    intro coord _
    simp
  have hcomp_card :
      (((Finset.univ : Finset (Fin n)) \ A).card) = n - idx.i := by
    rw [Finset.card_sdiff_of_subset hAuniv]
    simp [hAcard]
  simp [binaryProjectionSupportChoices, binaryOrbitFiberMultiplicityNat,
    hAcard, hcomp_card]

/-- Support choices for an ambient binary orbit fiber over a fixed first word. -/
def binaryOrbitSupportChoices {n : Nat} (idx : BinaryOrbitIndex n) :
    Finset (Sigma (fun _A : Finset (Fin n) =>
      Finset (Fin n) × Finset (Fin n))) :=
  ((Finset.univ : Finset (Fin n)).powersetCard idx.i).sigma
    (fun A => binaryProjectionSupportChoices A idx)

theorem binaryOrbitSupportChoices_card {n : Nat}
    (idx : BinaryOrbitIndex n) :
    (binaryOrbitSupportChoices idx).card =
      binaryOrbitMultiplicityNat n idx := by
  have hfiber :
      forall A, A ∈ (Finset.univ : Finset (Fin n)).powersetCard idx.i ->
        (binaryProjectionSupportChoices A idx).card =
          binaryOrbitFiberMultiplicityNat n idx := by
    intro A hA
    exact binaryProjectionSupportChoices_card A idx
      (Finset.mem_powersetCard.mp hA).2
  unfold binaryOrbitSupportChoices
  calc
    (((Finset.univ : Finset (Fin n)).powersetCard idx.i).sigma
        (fun A => binaryProjectionSupportChoices A idx)).card =
        ∑ A ∈ (Finset.univ : Finset (Fin n)).powersetCard idx.i,
          (binaryProjectionSupportChoices A idx).card := by
          simp
    _ = ∑ _A ∈ (Finset.univ : Finset (Fin n)).powersetCard idx.i,
          binaryOrbitFiberMultiplicityNat n idx := by
          exact Finset.sum_congr rfl hfiber
    _ = Nat.choose n idx.i * binaryOrbitFiberMultiplicityNat n idx := by
          rw [Finset.sum_const, nsmul_eq_mul]
          change ((Finset.univ : Finset (Fin n)).powersetCard idx.i).card *
              binaryOrbitFiberMultiplicityNat n idx =
            Nat.choose n idx.i * binaryOrbitFiberMultiplicityNat n idx
          rw [Finset.card_powersetCard]
          simp
    _ = binaryOrbitMultiplicityNat n idx := by
          have hchoose_nat :
              Nat.choose n idx.t * Nat.choose (n - idx.t) (idx.i - idx.t) =
                Nat.choose n idx.i * Nat.choose idx.i idx.t := by
            exact (Nat.choose_mul (n := n) (k := idx.i) (s := idx.t)
              idx.ht_i).symm
          unfold binaryOrbitMultiplicityNat binaryOrbitFiberMultiplicityNat
          rw [← Nat.mul_assoc]
          rw [← hchoose_nat]

private theorem binary_support_choice_eq_of_union_eq {n : Nat}
    {A P Q P' Q' : Finset (Fin n)}
    (hP : P ⊆ A) (hQ : Q ⊆ (Finset.univ : Finset (Fin n)) \ A)
    (hP' : P' ⊆ A) (hQ' : Q' ⊆ (Finset.univ : Finset (Fin n)) \ A)
    (hunion : P ∪ Q = P' ∪ Q') :
    (P, Q) = (P', Q') := by
  have hleft : P = P' := by
    ext coord
    constructor
    · intro hcoord
      have hmem :
          coord ∈ P' ∪ Q' := by
        simpa [hunion] using
          (Finset.mem_union.mpr (Or.inl hcoord) : coord ∈ P ∪ Q)
      rcases Finset.mem_union.mp hmem with hcoord' | hcoord'
      · exact hcoord'
      · exact False.elim
          ((Finset.mem_sdiff.mp (hQ' hcoord')).2 (hP hcoord))
    · intro hcoord
      have hmem :
          coord ∈ P ∪ Q := by
        simpa [hunion] using
          (Finset.mem_union.mpr (Or.inl hcoord) : coord ∈ P' ∪ Q')
      rcases Finset.mem_union.mp hmem with hcoord' | hcoord'
      · exact hcoord'
      · exact False.elim
          ((Finset.mem_sdiff.mp (hQ hcoord')).2 (hP' hcoord))
  have hright : Q = Q' := by
    ext coord
    constructor
    · intro hcoord
      have hmem :
          coord ∈ P' ∪ Q' := by
        simpa [hunion] using
          (Finset.mem_union.mpr (Or.inr hcoord) : coord ∈ P ∪ Q)
      rcases Finset.mem_union.mp hmem with hcoord' | hcoord'
      · exact False.elim
          ((Finset.mem_sdiff.mp (hQ hcoord)).2 (hP' hcoord'))
      · exact hcoord'
    · intro hcoord
      have hmem :
          coord ∈ P ∪ Q := by
        simpa [hunion] using
          (Finset.mem_union.mpr (Or.inr hcoord) : coord ∈ P' ∪ Q')
      rcases Finset.mem_union.mp hmem with hcoord' | hcoord'
      · exact False.elim
          ((Finset.mem_sdiff.mp (hQ' hcoord)).2 (hP hcoord'))
      · exact hcoord'
  exact Prod.ext hleft hright

theorem binaryWordPairOrbitCell_card {n : Nat} (idx : BinaryOrbitIndex n) :
    (binaryWordPairOrbitCell idx).card =
      binaryOrbitMultiplicityNat n idx := by
  let zero : QaryWord 2 n := zeroWord 2 n (by decide)
  let decode :
      Sigma (fun _A : Finset (Fin n) =>
        Finset (Fin n) × Finset (Fin n)) ->
        QaryWord 2 n × QaryWord 2 n :=
    fun choice =>
      (binaryFlipOn zero choice.1,
        binaryFlipOn zero (choice.2.1 ∪ choice.2.2))
  rw [← binaryOrbitSupportChoices_card idx]
  symm
  apply Finset.card_bij (fun choice _ => decode choice)
  · intro choice hchoice
    rw [binaryOrbitSupportChoices, Finset.mem_sigma] at hchoice
    rcases hchoice with ⟨hA, hPQ⟩
    have hPQprod := Finset.mem_product.mp hPQ
    have hAcard := (Finset.mem_powersetCard.mp hA).2
    have hP := Finset.mem_powersetCard.mp hPQprod.1
    have hQ := Finset.mem_powersetCard.mp hPQprod.2
    rw [mem_binaryWordPairOrbitCell]
    apply binaryOrbitIndex_ext
    · change (binarySupport n (binaryFlipOn zero choice.1)).card = idx.i
      rw [show zero = zeroWord 2 n (by decide) by rfl,
        binaryFlipOn_zero_support_eq]
      exact hAcard
    · change
        (binarySupport n (binaryFlipOn zero (choice.2.1 ∪ choice.2.2))).card =
          idx.j
      have hdisj : Disjoint choice.2.1 choice.2.2 := by
        rw [Finset.disjoint_left]
        intro coord hcoordP hcoordQ
        exact (Finset.mem_sdiff.mp (hQ.1 hcoordQ)).2 (hP.1 hcoordP)
      rw [show zero = zeroWord 2 n (by decide) by rfl,
        binaryFlipOn_zero_support_eq, Finset.card_union_of_disjoint hdisj]
      have htj := idx.ht_j
      omega
    · change
        (binarySupport n (binaryFlipOn zero choice.1) ∩
            binarySupport n
              (binaryFlipOn zero (choice.2.1 ∪ choice.2.2))).card = idx.t
      have hinter :
          choice.1 ∩ (choice.2.1 ∪ choice.2.2) = choice.2.1 := by
        ext coord
        constructor
        · intro hcoord
          rcases Finset.mem_inter.mp hcoord with ⟨hcoordA, hcoordUnion⟩
          rcases Finset.mem_union.mp hcoordUnion with hcoordP | hcoordQ
          · exact hcoordP
          · exact False.elim
              ((Finset.mem_sdiff.mp (hQ.1 hcoordQ)).2 hcoordA)
        · intro hcoord
          exact Finset.mem_inter.mpr
            ⟨hP.1 hcoord, Finset.mem_union.mpr (Or.inl hcoord)⟩
      have hsupport_left :
          binarySupport n (binaryFlipOn zero choice.1) = choice.1 := by
        rw [show zero = zeroWord 2 n (by decide) by rfl,
          binaryFlipOn_zero_support_eq]
      have hsupport_right :
          binarySupport n (binaryFlipOn zero (choice.2.1 ∪ choice.2.2)) =
            choice.2.1 ∪ choice.2.2 := by
        rw [show zero = zeroWord 2 n (by decide) by rfl,
          binaryFlipOn_zero_support_eq]
      rw [hsupport_left, hsupport_right]
      rw [hinter]
      exact hP.2
  · intro a ha b hb hdecode
    have ha' : a ∈ binaryOrbitSupportChoices idx := by simpa using ha
    have hb' : b ∈ binaryOrbitSupportChoices idx := by simpa using hb
    rw [binaryOrbitSupportChoices, Finset.mem_sigma] at ha' hb'
    rcases ha' with ⟨haA, haPQ⟩
    rcases hb' with ⟨hbA, hbPQ⟩
    have haPQprod := Finset.mem_product.mp haPQ
    have hbPQprod := Finset.mem_product.mp hbPQ
    have haP := Finset.mem_powersetCard.mp haPQprod.1
    have haQ := Finset.mem_powersetCard.mp haPQprod.2
    have hbP := Finset.mem_powersetCard.mp hbPQprod.1
    have hbQ := Finset.mem_powersetCard.mp hbPQprod.2
    have hA : a.1 = b.1 := by
      have hsupport := congrArg (fun pair : QaryWord 2 n × QaryWord 2 n =>
        binarySupport n pair.1) hdecode
      simpa [decode, zero] using hsupport
    have hunion : a.2.1 ∪ a.2.2 = b.2.1 ∪ b.2.2 := by
      have hsupport := congrArg (fun pair : QaryWord 2 n × QaryWord 2 n =>
        binarySupport n pair.2) hdecode
      simpa [decode, zero] using hsupport
    have hbP_sub : b.2.1 ⊆ a.1 := by
      simpa [hA] using hbP.1
    have hbQ_sub : b.2.2 ⊆ (Finset.univ : Finset (Fin n)) \ a.1 := by
      simpa [hA] using hbQ.1
    have hPQ : a.2 = b.2 :=
      binary_support_choice_eq_of_union_eq haP.1 haQ.1 hbP_sub hbQ_sub hunion
    cases a with
    | mk A PQ =>
        cases b with
        | mk B PQ' =>
            simp at hA hPQ ⊢
            subst B
            subst PQ'
            exact ⟨rfl, rfl⟩
  · intro pair hpair
    let A := binarySupport n pair.1
    let B := binarySupport n pair.2
    let P := A ∩ B
    let Q := B \ A
    refine ⟨⟨A, (P, Q)⟩, ?_, ?_⟩
    · rw [binaryOrbitSupportChoices, Finset.mem_sigma]
      rw [mem_binaryWordPairOrbitCell] at hpair
      refine ⟨?_, ?_⟩
      · refine Finset.mem_powersetCard.mpr ⟨?_, ?_⟩
        · intro coord _
          simp
        · simpa [A, binaryOrbitOf] using congrArg BinaryOrbitIndex.i hpair
      · rw [binaryProjectionSupportChoices]
        refine Finset.mem_product.mpr ⟨?_, ?_⟩
        · refine Finset.mem_powersetCard.mpr ⟨?_, ?_⟩
          · intro coord hcoord
            exact (Finset.mem_inter.mp hcoord).1
          · simpa [A, B, P, binaryOrbitOf] using
              congrArg BinaryOrbitIndex.t hpair
        · refine Finset.mem_powersetCard.mpr ⟨?_, ?_⟩
          · intro coord hcoord
            rw [Finset.mem_sdiff] at hcoord ⊢
            exact ⟨by simp, hcoord.2⟩
          · have hj := congrArg BinaryOrbitIndex.j hpair
            have ht := congrArg BinaryOrbitIndex.t hpair
            dsimp [Q, A, B, P]
            rw [Finset.card_sdiff]
            rw [show (binarySupport n pair.2).card = idx.j by
              simpa [binaryOrbitOf] using hj]
            rw [show (binarySupport n pair.1 ∩ binarySupport n pair.2).card =
                idx.t by
              simpa [binaryOrbitOf] using ht]
    · have hfirst :
          binaryFlipOn zero A = pair.1 := by
        apply binary_word_eq_of_relative_support_eq (w := zero)
        change binarySupport n (binaryFlipOn zero A) = binarySupport n pair.1
        rw [show zero = zeroWord 2 n (by decide) by rfl,
          binaryFlipOn_zero_support_eq]
      have hsecondSupport : P ∪ Q = B := by
        ext coord
        constructor
        · intro hcoord
          rcases Finset.mem_union.mp hcoord with hcoord | hcoord
          · exact (Finset.mem_inter.mp hcoord).2
          · exact (Finset.mem_sdiff.mp hcoord).1
        · intro hcoord
          by_cases hcoordA : coord ∈ A
          · exact Finset.mem_union.mpr
              (Or.inl (Finset.mem_inter.mpr ⟨hcoordA, hcoord⟩))
          · exact Finset.mem_union.mpr
              (Or.inr (Finset.mem_sdiff.mpr ⟨hcoord, hcoordA⟩))
      have hsecond :
          binaryFlipOn zero (P ∪ Q) = pair.2 := by
        apply binary_word_eq_of_relative_support_eq (w := zero)
        change
          binarySupport n (binaryFlipOn zero (P ∪ Q)) =
            binarySupport n pair.2
        rw [show zero = zeroWord 2 n (by decide) by rfl,
          binaryFlipOn_zero_support_eq]
        exact hsecondSupport
      exact Prod.ext hfirst hsecond

theorem binaryCodeTripleOrbitOf_firstBaseDecode {n : Nat}
    (base : BinaryCodeTriple n) (idx : BinaryOrbitIndex n)
    (P Q : Finset (Fin n))
    (hAcard : (binaryCodeTripleLeftSupport base).card = idx.i)
    (hPmem : P ∈ (binaryCodeTripleLeftSupport base).powersetCard idx.t)
    (hQmem :
      Q ∈ (((Finset.univ : Finset (Fin n)) \
        binaryCodeTripleLeftSupport base).powersetCard (idx.j - idx.t))) :
    binaryCodeTripleOrbitOf
        ((base.1.1, binaryFlipOn base.2 (P ∪ Q)), base.2) = idx := by
  let A : Finset (Fin n) := binaryCodeTripleLeftSupport base
  have hP := Finset.mem_powersetCard.mp hPmem
  have hQ := Finset.mem_powersetCard.mp hQmem
  have hdisj : Disjoint P Q := by
    rw [Finset.disjoint_left]
    intro coord hcoordP hcoordQ
    exact (Finset.mem_sdiff.mp (hQ.1 hcoordQ)).2
      (by simpa [A] using hP.1 hcoordP)
  have hunion_card : (P ∪ Q).card = idx.j := by
    rw [Finset.card_union_of_disjoint hdisj, hP.2, hQ.2]
    have ht_j := idx.ht_j
    omega
  have hinter : A ∩ (P ∪ Q) = P := by
    ext coord
    constructor
    · intro hcoord
      have hA := (Finset.mem_inter.mp hcoord).1
      have hU := (Finset.mem_inter.mp hcoord).2
      rcases Finset.mem_union.mp hU with hcoordP | hcoordQ
      · exact hcoordP
      · exact False.elim
          ((Finset.mem_sdiff.mp (hQ.1 hcoordQ)).2 hA)
    · intro hcoordP
      exact Finset.mem_inter.mpr
        ⟨by simpa [A] using hP.1 hcoordP,
          Finset.mem_union.mpr (Or.inl hcoordP)⟩
  let decoded : BinaryCodeTriple n :=
    ((base.1.1, binaryFlipOn base.2 (P ∪ Q)), base.2)
  have hleft_support : binaryCodeTripleLeftSupport decoded = A := by
    rfl
  have hright_support :
      binaryCodeTripleRightSupport decoded = P ∪ Q := by
    dsimp [decoded]
    simpa [binaryCodeTripleRightSupport] using
      binaryFlipOn_support_eq base.2 (P ∪ Q)
  change binaryCodeTripleOrbitOf decoded = idx
  apply binaryOrbitIndex_ext
  · change (binaryCodeTripleLeftSupport decoded).card = idx.i
    rw [hleft_support]
    simpa [A] using hAcard
  · change (binaryCodeTripleRightSupport decoded).card = idx.j
    rw [hright_support]
    exact hunion_card
  · change
      (binaryCodeTripleLeftSupport decoded ∩
        binaryCodeTripleRightSupport decoded).card = idx.t
    rw [hleft_support, hright_support, hinter]
    exact hP.2

theorem binaryCodeTripleLeftProjection_mem_zero_cell {n : Nat}
    {C : Finset (QaryWord 2 n)} {idx : BinaryOrbitIndex n}
    {triple : BinaryCodeTriple n} :
    triple ∈ binaryCodeTripleOrbitCell C idx ->
      binaryCodeTripleLeftProjection triple ∈
        binaryCodeTripleOrbitCell C (binaryCodeCellZeroIndex idx.i idx.i_le_n) := by
  intro h
  rw [mem_binaryCodeTripleOrbitCell] at h ⊢
  refine ⟨h.1, h.2.2.1, h.2.2.1, ?_⟩
  apply binaryOrbitIndex_ext
  · simpa [binaryCodeTripleLeftProjection] using
      congrArg BinaryOrbitIndex.i h.2.2.2
  · simp [binaryCodeTripleLeftProjection, binaryCodeCellZeroIndex]
  · simp [binaryCodeTripleLeftProjection, binaryCodeTripleOrbitOf,
      binaryCodeTripleRightSupport, binaryCodeCellZeroIndex]

theorem binaryCodeTriple_right_eq_base_of_mem_zero_cell {n d : Nat}
    {C : Finset (QaryWord 2 n)} {hd : d <= n}
    {base : BinaryCodeTriple n}
    (hbase :
      base ∈ binaryCodeTripleOrbitCell C (binaryCodeCellZeroIndex d hd)) :
    base.1.2 = base.2 := by
  have hbase_orbit :=
    (mem_binaryCodeTripleOrbitCell.mp hbase).2.2.2
  have hj := congrArg BinaryOrbitIndex.j hbase_orbit
  rw [binaryCodeTripleOrbitOf_j] at hj
  have hdist : dist base.1.2 base.2 = 0 := by
    simpa [binaryCodeCellZeroIndex] using hj
  exact dist_eq_zero.mp hdist

theorem binaryCodeTripleLeftSupport_card_of_mem_zero_cell {n d : Nat}
    {C : Finset (QaryWord 2 n)} {hd : d <= n}
    {base : BinaryCodeTriple n}
    (hbase :
      base ∈ binaryCodeTripleOrbitCell C (binaryCodeCellZeroIndex d hd)) :
    (binaryCodeTripleLeftSupport base).card = d := by
  have hbase_orbit :=
    (mem_binaryCodeTripleOrbitCell.mp hbase).2.2.2
  have hi := congrArg BinaryOrbitIndex.i hbase_orbit
  simpa [binaryCodeTripleOrbitOf, binaryCodeCellZeroIndex] using hi

/--
The zero-index code-triple cell is the same count as ordered code pairs at
the corresponding Hamming distance.
-/
theorem binaryCodePairDistanceCell_card_eq_zeroCell_card {n d : Nat}
    (C : Finset (QaryWord 2 n)) (hd : d <= n) :
    (binaryCodePairDistanceCell C d).card =
      (binaryCodeTripleOrbitCell C (binaryCodeCellZeroIndex d hd)).card := by
  apply Finset.card_bij
    (fun pair _ => ((pair.1, pair.2), pair.2))
  · intro pair hpair
    rw [mem_binaryCodePairDistanceCell] at hpair
    rw [mem_binaryCodeTripleOrbitCell]
    refine ⟨hpair.1, hpair.2.1, hpair.2.1, ?_⟩
    apply binaryOrbitIndex_ext
    · simpa [binaryCodeCellZeroIndex] using hpair.2.2
    · simp [binaryCodeCellZeroIndex]
    · simp [binaryCodeTripleOrbitOf, binaryCodeTripleRightSupport,
        binaryCodeCellZeroIndex]
  · intro pair _ pair' _ htriple
    apply Prod.ext
    · exact congrArg (fun triple : BinaryCodeTriple n => triple.1.1) htriple
    · exact congrArg (fun triple : BinaryCodeTriple n => triple.2) htriple
  · intro triple htriple
    let pair : QaryWord 2 n × QaryWord 2 n := (triple.1.1, triple.2)
    refine ⟨pair, ?_, ?_⟩
    · rw [mem_binaryCodePairDistanceCell]
      have hcell := mem_binaryCodeTripleOrbitCell.mp htriple
      refine ⟨hcell.1, hcell.2.2.1, ?_⟩
      have hi := congrArg BinaryOrbitIndex.i hcell.2.2.2
      rw [binaryCodeTripleOrbitOf_i] at hi
      simpa [pair, binaryCodeCellZeroIndex] using hi
    · apply Prod.ext
      · apply Prod.ext
        · rfl
        · exact (binaryCodeTriple_right_eq_base_of_mem_zero_cell htriple).symm
      · rfl

private theorem binaryOrbitIndex_swap_swap {n : Nat} (idx : BinaryOrbitIndex n) :
    idx.swap.swap = idx := by
  cases idx
  simp [BinaryOrbitIndex.swap]

theorem binaryCodeTripleSwap12_mem_orbit_cell {n : Nat}
    {C : Finset (QaryWord 2 n)} {idx : BinaryOrbitIndex n}
    {triple : BinaryCodeTriple n} :
    triple ∈ binaryCodeTripleOrbitCell C idx ->
      binaryCodeTripleSwap12 triple ∈ binaryCodeTripleOrbitCell C idx.swap := by
  intro h
  rw [mem_binaryCodeTripleOrbitCell] at h ⊢
  exact ⟨h.2.1, h.1, h.2.2.1, by
    rw [binaryCodeTripleOrbitOf_swap12, h.2.2.2]⟩

theorem binaryCodeTripleOrbitCell_card_swap {n : Nat}
    (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n) :
    (binaryCodeTripleOrbitCell C idx.swap).card =
      (binaryCodeTripleOrbitCell C idx).card := by
  symm
  apply Finset.card_bij (fun triple _ => binaryCodeTripleSwap12 triple)
  · intro triple htriple
    exact binaryCodeTripleSwap12_mem_orbit_cell htriple
  · intro a _ b _ h
    have h' := congrArg binaryCodeTripleSwap12 h
    simpa [binaryCodeTripleSwap12_involutive] using h'
  · intro b hb
    refine ⟨binaryCodeTripleSwap12 b, ?_, ?_⟩
    · have hb' := binaryCodeTripleSwap12_mem_orbit_cell (idx := idx.swap) hb
      simpa [binaryOrbitIndex_swap_swap] using hb'
    · exact binaryCodeTripleSwap12_involutive b

theorem binaryCodeTripleRebaseRight_mem_orbit_cell {n : Nat}
    {C : Finset (QaryWord 2 n)} {idx : BinaryOrbitIndex n}
    {triple : BinaryCodeTriple n} :
    triple ∈ binaryCodeTripleOrbitCell C idx ->
      binaryCodeTripleRebaseRight triple ∈
        binaryCodeTripleOrbitCell C idx.rebaseRight := by
  intro h
  rw [mem_binaryCodeTripleOrbitCell] at h ⊢
  exact ⟨h.1, h.2.2.1, h.2.1, by
    rw [binaryCodeTripleOrbitOf_rebaseRight, h.2.2.2]⟩

theorem binaryCodeTripleOrbitCell_card_rebaseRight {n : Nat}
    (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n) :
    (binaryCodeTripleOrbitCell C idx.rebaseRight).card =
      (binaryCodeTripleOrbitCell C idx).card := by
  symm
  apply Finset.card_bij (fun triple _ => binaryCodeTripleRebaseRight triple)
  · intro triple htriple
    exact binaryCodeTripleRebaseRight_mem_orbit_cell htriple
  · intro a _ b _ h
    have h' := congrArg binaryCodeTripleRebaseRight h
    simpa [binaryCodeTripleRebaseRight_involutive] using h'
  · intro b hb
    refine ⟨binaryCodeTripleRebaseRight b, ?_, ?_⟩
    · have hb' := binaryCodeTripleRebaseRight_mem_orbit_cell
        (idx := idx.rebaseRight) hb
      simpa [binaryOrbitIndex_rebaseRight_rebaseRight] using hb'
    · exact binaryCodeTripleRebaseRight_involutive b

theorem binaryCodeTripleRebaseLeft_mem_orbit_cell {n : Nat}
    {C : Finset (QaryWord 2 n)} {idx : BinaryOrbitIndex n}
    {triple : BinaryCodeTriple n} :
    triple ∈ binaryCodeTripleOrbitCell C idx ->
      binaryCodeTripleRebaseLeft triple ∈
        binaryCodeTripleOrbitCell C idx.rebaseLeft := by
  intro h
  rw [mem_binaryCodeTripleOrbitCell] at h ⊢
  exact ⟨h.2.2.1, h.2.1, h.1, by
    rw [binaryCodeTripleOrbitOf_rebaseLeft, h.2.2.2]⟩

theorem binaryCodeTripleOrbitCell_card_rebaseLeft {n : Nat}
    (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n) :
    (binaryCodeTripleOrbitCell C idx.rebaseLeft).card =
      (binaryCodeTripleOrbitCell C idx).card := by
  symm
  apply Finset.card_bij (fun triple _ => binaryCodeTripleRebaseLeft triple)
  · intro triple htriple
    exact binaryCodeTripleRebaseLeft_mem_orbit_cell htriple
  · intro a _ b _ h
    have h' := congrArg binaryCodeTripleRebaseLeft h
    simpa [binaryCodeTripleRebaseLeft_involutive] using h'
  · intro b hb
    refine ⟨binaryCodeTripleRebaseLeft b, ?_, ?_⟩
    · have hb' := binaryCodeTripleRebaseLeft_mem_orbit_cell
        (idx := idx.rebaseLeft) hb
      simpa [binaryOrbitIndex_rebaseLeft_rebaseLeft] using hb'
    · exact binaryCodeTripleRebaseLeft_involutive b

/-- Denominator used to recover reduced binary variables from orbit-cell counts. -/
def binaryCodeCellDenominator (n : Nat) (idx : BinaryOrbitIndex n) : Rat :=
  (((2 ^ n : Nat) : Rat)) * binaryOrbitMultiplicity n idx

theorem binaryCodeCellDenominator_pos (n : Nat) (idx : BinaryOrbitIndex n) :
    0 < binaryCodeCellDenominator n idx := by
  have hscale_nat : 0 < 2 ^ n := Nat.pow_pos (by decide : 0 < 2)
  have hscale : 0 < (((2 ^ n : Nat) : Rat)) := by exact_mod_cast hscale_nat
  unfold binaryCodeCellDenominator
  exact mul_pos hscale (binaryOrbitMultiplicity_pos n idx)

theorem binaryCodeCellDenominator_ne_zero (n : Nat) (idx : BinaryOrbitIndex n) :
    binaryCodeCellDenominator n idx ≠ 0 :=
  (binaryCodeCellDenominator_pos n idx).ne'

theorem binaryCodeCellDenominator_eq_shell_mul_fiber
    (n : Nat) (idx : BinaryOrbitIndex n) :
    binaryCodeCellDenominator n idx =
      (((2 ^ n : Nat) : Rat)) * (Nat.choose n idx.i : Rat) *
        binaryOrbitFiberMultiplicity n idx := by
  unfold binaryCodeCellDenominator
  rw [binaryOrbitMultiplicity_eq_shell_mul_fiber]
  ring

theorem binaryCodeCellDenominator_zeroIndex
    {n d : Nat} (hd : d <= n) :
    binaryCodeCellDenominator n
        (BinaryOrbitIndex.mk d 0 0 (Nat.zero_le d) (Nat.le_refl 0) (by omega)) =
      (((2 ^ n : Nat) : Rat)) * (Nat.choose n d : Rat) := by
  unfold binaryCodeCellDenominator binaryOrbitMultiplicity
  simp

theorem binaryCodeCellDenominator_swap (n : Nat) (idx : BinaryOrbitIndex n) :
    binaryCodeCellDenominator n idx.swap = binaryCodeCellDenominator n idx := by
  unfold binaryCodeCellDenominator
  rw [binaryOrbitMultiplicity_swap]

theorem binaryCodeCellDenominator_rebaseRight (n : Nat) (idx : BinaryOrbitIndex n) :
    binaryCodeCellDenominator n idx.rebaseRight = binaryCodeCellDenominator n idx := by
  unfold binaryCodeCellDenominator
  rw [binaryOrbitMultiplicity_rebaseRight]

theorem binaryCodeCellDenominator_rebaseLeft (n : Nat) (idx : BinaryOrbitIndex n) :
    binaryCodeCellDenominator n idx.rebaseLeft = binaryCodeCellDenominator n idx := by
  unfold binaryCodeCellDenominator
  rw [binaryOrbitMultiplicity_rebaseLeft]

/-- Reduced binary vector obtained by normalizing code-triple orbit-cell counts. -/
def binaryCodeCellX {n : Nat} (C : Finset (QaryWord 2 n)) : BinaryX n :=
  fun idx => ((binaryCodeTripleOrbitCell C idx).card : Rat) /
    binaryCodeCellDenominator n idx

theorem binaryCodeTripleOrbitCell_zero_zero_card {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    (binaryCodeTripleOrbitCell C
      (binaryCodeCellZeroIndex 0 (Nat.zero_le n))).card = C.card := by
  let zero : BinaryOrbitIndex n := binaryCodeCellZeroIndex 0 (Nat.zero_le n)
  apply Finset.card_bij (fun triple _ => triple.2)
  · intro triple htriple
    exact (mem_binaryCodeTripleOrbitCell.mp htriple).2.2.1
  · intro a ha b hb hbase
    have ha_orbit := (mem_binaryCodeTripleOrbitCell.mp ha).2.2.2
    have hb_orbit := (mem_binaryCodeTripleOrbitCell.mp hb).2.2.2
    have ha_left : a.1.1 = a.2 := by
      have hi := congrArg BinaryOrbitIndex.i ha_orbit
      rw [binaryCodeTripleOrbitOf_i] at hi
      have hdist : dist a.1.1 a.2 = 0 := by
        simpa [zero, binaryCodeCellZeroIndex] using hi
      exact dist_eq_zero.mp hdist
    have ha_right : a.1.2 = a.2 := by
      have hj := congrArg BinaryOrbitIndex.j ha_orbit
      rw [binaryCodeTripleOrbitOf_j] at hj
      have hdist : dist a.1.2 a.2 = 0 := by
        simpa [zero, binaryCodeCellZeroIndex] using hj
      exact dist_eq_zero.mp hdist
    have hb_left : b.1.1 = b.2 := by
      have hi := congrArg BinaryOrbitIndex.i hb_orbit
      rw [binaryCodeTripleOrbitOf_i] at hi
      have hdist : dist b.1.1 b.2 = 0 := by
        simpa [zero, binaryCodeCellZeroIndex] using hi
      exact dist_eq_zero.mp hdist
    have hb_right : b.1.2 = b.2 := by
      have hj := congrArg BinaryOrbitIndex.j hb_orbit
      rw [binaryCodeTripleOrbitOf_j] at hj
      have hdist : dist b.1.2 b.2 = 0 := by
        simpa [zero, binaryCodeCellZeroIndex] using hj
      exact dist_eq_zero.mp hdist
    apply Prod.ext
    · apply Prod.ext
      · exact ha_left.trans (hbase.trans hb_left.symm)
      · exact ha_right.trans (hbase.trans hb_right.symm)
    · exact hbase
  · intro c hc
    refine ⟨((c, c), c), ?_, rfl⟩
    rw [mem_binaryCodeTripleOrbitCell]
    refine ⟨hc, hc, hc, ?_⟩
    apply binaryOrbitIndex_ext <;>
      simp [binaryCodeCellZeroIndex, binaryCodeTripleOrbitOf,
        binaryCodeTripleLeftSupport, binaryCodeTripleRightSupport]

theorem binaryCodeTripleOrbitCell_zero_zero_card_of_index {n : Nat}
    (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n)
    (hi : idx.i = 0) (hj : idx.j = 0) (ht : idx.t = 0) :
    (binaryCodeTripleOrbitCell C idx).card = C.card := by
  have hidx : idx = binaryCodeCellZeroIndex 0 (Nat.zero_le n) := by
    apply binaryOrbitIndex_ext <;> assumption
  rw [hidx]
  exact binaryCodeTripleOrbitCell_zero_zero_card C

theorem binaryCodeCellDenominator_zero_zero_of_index {n : Nat}
    (idx : BinaryOrbitIndex n)
    (hi : idx.i = 0) (hj : idx.j = 0) (ht : idx.t = 0) :
    binaryCodeCellDenominator n idx = (((2 ^ n : Nat) : Rat)) := by
  have hidx : idx = binaryCodeCellZeroIndex 0 (Nat.zero_le n) := by
    apply binaryOrbitIndex_ext <;> assumption
  rw [hidx]
  simpa [binaryCodeCellZeroIndex] using
    binaryCodeCellDenominator_zeroIndex (n := n) (d := 0) (Nat.zero_le n)

theorem binaryCodeCellX_zeroCoeff_zero {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    binaryZeroCoeff (binaryCodeCellX C) 0 =
      (C.card : Rat) / (((2 ^ n : Nat) : Rat)) := by
  unfold binaryZeroCoeff binaryCodeCellX
  rw [dif_pos (Nat.zero_le n)]
  simp [binaryCodeTripleOrbitCell_zero_zero_card_of_index,
    binaryCodeCellDenominator_zero_zero_of_index]

theorem binaryCodeCellX_zeroCoeff_eq_pairDistanceCell_card {n d : Nat}
    (C : Finset (QaryWord 2 n)) (hd : d <= n) :
    binaryZeroCoeff (binaryCodeCellX C) d =
      ((binaryCodePairDistanceCell C d).card : Rat) /
        (((2 ^ n : Nat) : Rat) * (Nat.choose n d : Rat)) := by
  unfold binaryZeroCoeff binaryCodeCellX
  rw [dif_pos hd]
  change
    ((binaryCodeTripleOrbitCell C (binaryCodeCellZeroIndex d hd)).card : Rat) /
        binaryCodeCellDenominator n (binaryCodeCellZeroIndex d hd) =
      ((binaryCodePairDistanceCell C d).card : Rat) /
        (((2 ^ n : Nat) : Rat) * (Nat.choose n d : Rat))
  rw [← binaryCodePairDistanceCell_card_eq_zeroCell_card C hd]
  rw [show
      binaryCodeCellDenominator n (binaryCodeCellZeroIndex d hd) =
        (((2 ^ n : Nat) : Rat) * (Nat.choose n d : Rat)) by
      simpa [binaryCodeCellZeroIndex] using
        (binaryCodeCellDenominator_zeroIndex (n := n) (d := d) hd)]

theorem binaryCodeCellX_nonneg {n : Nat}
    (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n) :
    0 <= binaryCodeCellX C idx := by
  have hcard : 0 <= ((binaryCodeTripleOrbitCell C idx).card : Rat) := by
    exact_mod_cast (Nat.zero_le (binaryCodeTripleOrbitCell C idx).card)
  unfold binaryCodeCellX
  exact div_nonneg hcard (le_of_lt (binaryCodeCellDenominator_pos n idx))

theorem binaryCodeCellX_all_nonneg {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    forall idx : BinaryOrbitIndex n, 0 <= binaryCodeCellX C idx :=
  binaryCodeCellX_nonneg C

theorem binaryCodeCellX_swap {n : Nat}
    (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n) :
    binaryCodeCellX C idx.swap = binaryCodeCellX C idx := by
  unfold binaryCodeCellX
  rw [binaryCodeTripleOrbitCell_card_swap, binaryCodeCellDenominator_swap]

theorem binaryCodeCellX_rebaseRight {n : Nat}
    (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n) :
    binaryCodeCellX C idx.rebaseRight = binaryCodeCellX C idx := by
  unfold binaryCodeCellX
  rw [binaryCodeTripleOrbitCell_card_rebaseRight, binaryCodeCellDenominator_rebaseRight]

theorem binaryCodeCellX_rebaseLeft {n : Nat}
    (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n) :
    binaryCodeCellX C idx.rebaseLeft = binaryCodeCellX C idx := by
  change binaryCodeCellX C (idx.swap.rebaseRight.swap) = binaryCodeCellX C idx
  rw [binaryCodeCellX_swap, binaryCodeCellX_rebaseRight, binaryCodeCellX_swap]

theorem binaryCodeCellX_distance_perm {n : Nat}
    (C : Finset (QaryWord 2 n)) {idx idx' : BinaryOrbitIndex n}
    (hp : List.Perm [idx.i, idx.j, binaryOrbitDistanceIndex idx]
      [idx'.i, idx'.j, binaryOrbitDistanceIndex idx']) :
    binaryCodeCellX C idx' = binaryCodeCellX C idx := by
  rcases list_perm_three_cases hp with
      ⟨hi, hj, hd⟩ |
      ⟨hi, hj, hd⟩ |
      ⟨hi, hj, hd⟩ |
      ⟨hi, hj, hd⟩ |
      ⟨hi, hj, hd⟩ |
      ⟨hi, hj, hd⟩
  · have hidx : idx' = idx := by
      apply binaryOrbitIndex_ext
      · exact hi
      · exact hj
      · unfold binaryOrbitDistanceIndex at hd
        have ht_i := idx.ht_i
        have ht_j := idx.ht_j
        have ht'_i := idx'.ht_i
        have ht'_j := idx'.ht_j
        omega
    rw [hidx]
  · have hidx : idx' = idx.rebaseLeft := by
      apply binaryOrbitIndex_ext
      · rw [hi, BinaryOrbitIndex.rebaseLeft_i]
      · rw [hj, BinaryOrbitIndex.rebaseLeft_j]
      · rw [BinaryOrbitIndex.rebaseLeft_t]
        unfold binaryOrbitDistanceIndex at hj hd
        have ht_i := idx.ht_i
        have ht_j := idx.ht_j
        have ht'_i := idx'.ht_i
        have ht'_j := idx'.ht_j
        omega
    rw [hidx, binaryCodeCellX_rebaseLeft]
  · have hidx : idx' = idx.swap := by
      apply binaryOrbitIndex_ext
      · rw [hi]
        rfl
      · rw [hj]
        rfl
      · change idx'.t = idx.t
        unfold binaryOrbitDistanceIndex at hd
        have ht_i := idx.ht_i
        have ht_j := idx.ht_j
        have ht'_i := idx'.ht_i
        have ht'_j := idx'.ht_j
        omega
    rw [hidx, binaryCodeCellX_swap]
  · have hidx : idx' = idx.rebaseRight.swap := by
      apply binaryOrbitIndex_ext
      · change idx'.i = idx.j
        exact hi
      · change idx'.j = binaryOrbitDistanceIndex idx
        exact hj
      · change idx'.t = idx.j - idx.t
        unfold binaryOrbitDistanceIndex at hj hd
        have ht_i := idx.ht_i
        have ht_j := idx.ht_j
        have ht'_i := idx'.ht_i
        have ht'_j := idx'.ht_j
        omega
    rw [hidx, binaryCodeCellX_swap, binaryCodeCellX_rebaseRight]
  · have hidx : idx' = idx.rebaseLeft.swap := by
      apply binaryOrbitIndex_ext
      · rw [hi]
        symm
        change idx.rebaseLeft.j = binaryOrbitDistanceIndex idx
        exact BinaryOrbitIndex.rebaseLeft_j idx
      · change idx'.j = idx.i
        exact hj
      · rw [show idx.rebaseLeft.swap.t = idx.i - idx.t by rfl]
        unfold binaryOrbitDistanceIndex at hi hd
        have ht_i := idx.ht_i
        have ht_j := idx.ht_j
        have ht'_i := idx'.ht_i
        have ht'_j := idx'.ht_j
        omega
    rw [hidx, binaryCodeCellX_swap, binaryCodeCellX_rebaseLeft]
  · have hidx : idx' = idx.rebaseRight := by
      apply binaryOrbitIndex_ext
      · rw [hi, BinaryOrbitIndex.rebaseRight_i]
      · rw [hj, BinaryOrbitIndex.rebaseRight_j]
      · rw [BinaryOrbitIndex.rebaseRight_t]
        unfold binaryOrbitDistanceIndex at hi hd
        have ht_i := idx.ht_i
        have ht_j := idx.ht_j
        have ht'_i := idx'.ht_i
        have ht'_j := idx'.ht_j
        omega
    rw [hidx, binaryCodeCellX_rebaseRight]

theorem binaryCodeCellX_basic_symmetry {n : Nat}
    (C : Finset (QaryWord 2 n)) (idx idx' : BinaryOrbitIndex n)
    (hp : List.Perm [idx.i, idx.j, binaryOrbitDistanceIndex idx]
      [idx'.i, idx'.j, binaryOrbitDistanceIndex idx']) :
    binaryCodeCellX C idx = binaryCodeCellX C idx' := by
  exact (binaryCodeCellX_distance_perm C hp).symm

theorem binaryCodeCellX_diagonalCoeff_eq_zeroCoeff {n : Nat}
    (C : Finset (QaryWord 2 n)) (i : Nat) :
    binaryDiagonalCoeff (binaryCodeCellX C) i =
      binaryZeroCoeff (binaryCodeCellX C) i := by
  unfold binaryDiagonalCoeff binaryZeroCoeff
  by_cases hi : i <= n
  · simp [hi]
    let diag : BinaryOrbitIndex n :=
      BinaryOrbitIndex.mk i i i (Nat.le_refl i) (Nat.le_refl i) (by omega)
    let zero : BinaryOrbitIndex n :=
      BinaryOrbitIndex.mk i 0 0 (Nat.zero_le i) (Nat.le_refl 0) (by omega)
    have hidx : diag.rebaseRight.swap = zero := by
      apply binaryOrbitIndex_ext
      · rfl
      · change binaryOrbitDistanceIndex diag = 0
        change i + i - 2 * i = 0
        omega
      · change i - i = 0
        omega
    calc
      binaryCodeCellX C diag =
          binaryCodeCellX C diag.rebaseRight := by
        rw [binaryCodeCellX_rebaseRight]
      _ = binaryCodeCellX C diag.rebaseRight.swap := by
        rw [binaryCodeCellX_swap]
      _ = binaryCodeCellX C zero := by
        rw [hidx]
  · simp [hi]

theorem binaryCodeCellX_le_zeroCoeff_of_card_le {n : Nat}
    (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n)
    (hcard :
      ((binaryCodeTripleOrbitCell C idx).card : Rat) <=
        ((binaryCodeTripleOrbitCell C
          (BinaryOrbitIndex.mk idx.i 0 0 (Nat.zero_le idx.i)
            (Nat.le_refl 0) (by simpa using idx.i_le_n))).card : Rat) *
          binaryOrbitFiberMultiplicity n idx) :
    binaryCodeCellX C idx <= binaryZeroCoeff (binaryCodeCellX C) idx.i := by
  let zero : BinaryOrbitIndex n :=
    BinaryOrbitIndex.mk idx.i 0 0 (Nat.zero_le idx.i) (Nat.le_refl 0)
      (by simpa using idx.i_le_n)
  let A : Rat := ((binaryCodeTripleOrbitCell C idx).card : Rat)
  let B : Rat := ((binaryCodeTripleOrbitCell C zero).card : Rat)
  let F : Rat := binaryOrbitFiberMultiplicity n idx
  let S : Rat := (((2 ^ n : Nat) : Rat)) * (Nat.choose n idx.i : Rat)
  have hcard' : A <= B * F := by
    simpa [A, B, F, zero] using hcard
  have hscale_nat : 0 < 2 ^ n := Nat.pow_pos (by decide : 0 < 2)
  have hscale : 0 < (((2 ^ n : Nat) : Rat)) := by exact_mod_cast hscale_nat
  have hchoose_nat : 0 < Nat.choose n idx.i := Nat.choose_pos idx.i_le_n
  have hchoose : 0 < (Nat.choose n idx.i : Rat) := by exact_mod_cast hchoose_nat
  have hSpos : 0 < S := by
    dsimp [S]
    exact mul_pos hscale hchoose
  have hFpos : 0 < F := by
    dsimp [F]
    exact binaryOrbitFiberMultiplicity_pos n idx
  have hzeroCoeff :
      binaryZeroCoeff (binaryCodeCellX C) idx.i = binaryCodeCellX C zero := by
    unfold binaryZeroCoeff
    rw [dif_pos idx.i_le_n]
  rw [hzeroCoeff]
  unfold binaryCodeCellX
  rw [binaryCodeCellDenominator_eq_shell_mul_fiber]
  have hden_zero : binaryCodeCellDenominator n zero = S := by
    dsimp [zero, S]
    unfold binaryCodeCellDenominator binaryOrbitMultiplicity
    simp
  rw [hden_zero]
  change A / (S * F) <= B / S
  calc
    A / (S * F) <= (B * F) / (S * F) := by
      exact div_le_div_of_nonneg_right hcard' (le_of_lt (mul_pos hSpos hFpos))
    _ = B / S := by
      field_simp [hSpos.ne', hFpos.ne']

theorem binaryCodeCellX_le_diagonalCoeff_of_card_le {n : Nat}
    (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n)
    (hcard :
      ((binaryCodeTripleOrbitCell C idx).card : Rat) <=
        ((binaryCodeTripleOrbitCell C
          (BinaryOrbitIndex.mk idx.i 0 0 (Nat.zero_le idx.i)
            (Nat.le_refl 0) (by simpa using idx.i_le_n))).card : Rat) *
          binaryOrbitFiberMultiplicity n idx) :
    binaryCodeCellX C idx <=
      binaryDiagonalCoeff (binaryCodeCellX C) idx.i := by
  rw [binaryCodeCellX_diagonalCoeff_eq_zeroCoeff]
  exact binaryCodeCellX_le_zeroCoeff_of_card_le C idx hcard

theorem binaryCodeCellX_le_distanceZeroCoeff_of_rebase_card_le {n : Nat}
    (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n)
    (hcard :
      ((binaryCodeTripleOrbitCell C idx.rebaseRight).card : Rat) <=
        ((binaryCodeTripleOrbitCell C
          (BinaryOrbitIndex.mk idx.rebaseRight.i 0 0
            (Nat.zero_le idx.rebaseRight.i) (Nat.le_refl 0)
            (by simpa using idx.rebaseRight.i_le_n))).card : Rat) *
          binaryOrbitFiberMultiplicity n idx.rebaseRight) :
    binaryCodeCellX C idx <=
      binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex idx) := by
  have h :=
    binaryCodeCellX_le_zeroCoeff_of_card_le C idx.rebaseRight hcard
  rw [binaryCodeCellX_rebaseRight] at h
  simpa using h

/--
Fiber-cardinality certificate for the projection
`(u,v,w) ↦ (u,w,w)` from an arbitrary binary orbit cell to the zero cell
with the same first distance.
-/
def BinaryCodeCellProjectionFiberBound {n : Nat}
    (C : Finset (QaryWord 2 n)) : Prop :=
  forall idx : BinaryOrbitIndex n,
    forall base : BinaryCodeTriple n,
      base ∈ binaryCodeTripleOrbitCell C
          (binaryCodeCellZeroIndex idx.i idx.i_le_n) ->
        ((binaryCodeTripleOrbitCell C idx).filter
          (fun triple => binaryCodeTripleLeftProjection triple = base)).card <=
            binaryOrbitFiberMultiplicityNat n idx

theorem binaryCodeCellProjectionFiberBound_universal {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    BinaryCodeCellProjectionFiberBound C := by
  intro idx base hbase
  let A : Finset (Fin n) := binaryCodeTripleLeftSupport base
  let choices : Finset (Finset (Fin n) × Finset (Fin n)) :=
    (A.powersetCard idx.t).product
      (((Finset.univ : Finset (Fin n)) \ A).powersetCard (idx.j - idx.t))
  let encode : BinaryCodeTriple n -> Finset (Fin n) × Finset (Fin n) :=
    fun triple =>
      (binaryCodeTripleLeftSupport triple ∩ binaryCodeTripleRightSupport triple,
        binaryCodeTripleRightSupport triple \ binaryCodeTripleLeftSupport triple)
  have hbase_orbit :
      binaryCodeTripleOrbitOf base =
        binaryCodeCellZeroIndex idx.i idx.i_le_n := by
    exact (mem_binaryCodeTripleOrbitCell.mp hbase).2.2.2
  have hAcard : A.card = idx.i := by
    have hi := congrArg BinaryOrbitIndex.i hbase_orbit
    simpa [A, binaryCodeCellZeroIndex] using hi
  have hAuniv : A ⊆ (Finset.univ : Finset (Fin n)) := by
    intro a _
    simp
  have hcomp_card :
      (((Finset.univ : Finset (Fin n)) \ A).card) = n - idx.i := by
    rw [Finset.card_sdiff_of_subset hAuniv]
    simp [hAcard]
  have hle :
      ((binaryCodeTripleOrbitCell C idx).filter
        (fun triple => binaryCodeTripleLeftProjection triple = base)).card <=
          choices.card := by
    apply Finset.card_le_card_of_injOn encode
    · intro triple htriple
      have hcell : triple ∈ binaryCodeTripleOrbitCell C idx :=
        (Finset.mem_filter.mp htriple).1
      have hproj : binaryCodeTripleLeftProjection triple = base :=
        (Finset.mem_filter.mp htriple).2
      have htriple_orbit :
          binaryCodeTripleOrbitOf triple = idx :=
        (mem_binaryCodeTripleOrbitCell.mp hcell).2.2.2
      have hleft :
          binaryCodeTripleLeftSupport triple = A := by
        have hp := congrArg binaryCodeTripleLeftSupport hproj
        simpa [binaryCodeTripleLeftProjection, A] using hp
      have ht :
          (binaryCodeTripleLeftSupport triple ∩
            binaryCodeTripleRightSupport triple).card = idx.t := by
        have ht' := congrArg BinaryOrbitIndex.t htriple_orbit
        simpa using ht'
      have hj :
          (binaryCodeTripleRightSupport triple).card = idx.j := by
        have hj' := congrArg BinaryOrbitIndex.j htriple_orbit
        simpa using hj'
      have hsdiff :
          (binaryCodeTripleRightSupport triple \
            binaryCodeTripleLeftSupport triple).card = idx.j - idx.t := by
        rw [Finset.card_sdiff]
        rw [hj, ht]
      refine Finset.mem_product.mpr ⟨?_, ?_⟩
      · refine Finset.mem_powersetCard.mpr ⟨?_, ?_⟩
        · intro coord hcoord
          simpa [hleft] using (Finset.mem_inter.mp hcoord).1
        · change
            (binaryCodeTripleLeftSupport triple ∩
              binaryCodeTripleRightSupport triple).card = idx.t
          exact ht
      · refine Finset.mem_powersetCard.mpr ⟨?_, ?_⟩
        · intro coord hcoord
          rw [Finset.mem_sdiff] at hcoord ⊢
          exact ⟨by simp, by simpa [hleft] using hcoord.2⟩
        · change
            (binaryCodeTripleRightSupport triple \
              binaryCodeTripleLeftSupport triple).card = idx.j - idx.t
          exact hsdiff
    · intro a ha b hb henc
      have ha_proj : binaryCodeTripleLeftProjection a = base :=
        (Finset.mem_filter.mp ha).2
      have hb_proj : binaryCodeTripleLeftProjection b = base :=
        (Finset.mem_filter.mp hb).2
      have ha_left :
          binaryCodeTripleLeftSupport a = A := by
        have hp := congrArg binaryCodeTripleLeftSupport ha_proj
        simpa [binaryCodeTripleLeftProjection, A] using hp
      have hb_left :
          binaryCodeTripleLeftSupport b = A := by
        have hp := congrArg binaryCodeTripleLeftSupport hb_proj
        simpa [binaryCodeTripleLeftProjection, A] using hp
      have hinter :
          binaryCodeTripleLeftSupport a ∩ binaryCodeTripleRightSupport a =
            binaryCodeTripleLeftSupport b ∩ binaryCodeTripleRightSupport b :=
        congrArg Prod.fst henc
      have hdiff :
          binaryCodeTripleRightSupport a \ binaryCodeTripleLeftSupport a =
            binaryCodeTripleRightSupport b \ binaryCodeTripleLeftSupport b :=
        congrArg Prod.snd henc
      have hright :
          binaryCodeTripleRightSupport a = binaryCodeTripleRightSupport b := by
        ext coord
        by_cases hcoord : coord ∈ A
        · constructor
          · intro hra
            have hi :
                coord ∈
                  binaryCodeTripleLeftSupport a ∩
                    binaryCodeTripleRightSupport a := by
              simp [ha_left, hcoord, hra]
            have hi' :
                coord ∈
                  binaryCodeTripleLeftSupport b ∩
                    binaryCodeTripleRightSupport b := by
              simpa [hinter] using hi
            exact (Finset.mem_inter.mp hi').2
          · intro hrb
            have hi :
                coord ∈
                  binaryCodeTripleLeftSupport b ∩
                    binaryCodeTripleRightSupport b := by
              simp [hb_left, hcoord, hrb]
            have hi' :
                coord ∈
                  binaryCodeTripleLeftSupport a ∩
                    binaryCodeTripleRightSupport a := by
              simpa [hinter] using hi
            exact (Finset.mem_inter.mp hi').2
        · constructor
          · intro hra
            have hd :
                coord ∈
                  binaryCodeTripleRightSupport a \
                    binaryCodeTripleLeftSupport a := by
              simp [ha_left, hcoord, hra]
            have hd' :
                coord ∈
                  binaryCodeTripleRightSupport b \
                    binaryCodeTripleLeftSupport b := by
              simpa [hdiff] using hd
            exact (Finset.mem_sdiff.mp hd').1
          · intro hrb
            have hd :
                coord ∈
                  binaryCodeTripleRightSupport b \
                    binaryCodeTripleLeftSupport b := by
              simp [hb_left, hcoord, hrb]
            have hd' :
                coord ∈
                  binaryCodeTripleRightSupport a \
                    binaryCodeTripleLeftSupport a := by
              simpa [hdiff] using hd
            exact (Finset.mem_sdiff.mp hd').1
      have hproj_ab :
          binaryCodeTripleLeftProjection a =
            binaryCodeTripleLeftProjection b :=
        ha_proj.trans hb_proj.symm
      have hfirst : a.1.1 = b.1.1 := by
        simpa [binaryCodeTripleLeftProjection] using
          congrArg (fun triple : BinaryCodeTriple n => triple.1.1) hproj_ab
      have hbase_word : a.2 = b.2 := by
        simpa [binaryCodeTripleLeftProjection] using
          congrArg (fun triple : BinaryCodeTriple n => triple.2) hproj_ab
      have hsecond : a.1.2 = b.1.2 := by
        apply binary_word_eq_of_relative_support_eq (w := a.2)
        simpa [binaryCodeTripleRightSupport, hbase_word] using hright
      exact Prod.ext (Prod.ext hfirst hsecond) hbase_word
  have hchoices :
      choices.card = binaryOrbitFiberMultiplicityNat n idx := by
    simp [choices, binaryOrbitFiberMultiplicityNat, hAcard, hcomp_card]
  exact hle.trans_eq hchoices

def BinaryCodeCellFiberCardBound {n : Nat}
    (C : Finset (QaryWord 2 n)) : Prop :=
  forall idx : BinaryOrbitIndex n,
    ((binaryCodeTripleOrbitCell C idx).card : Rat) <=
      ((binaryCodeTripleOrbitCell C
        (BinaryOrbitIndex.mk idx.i 0 0 (Nat.zero_le idx.i)
          (Nat.le_refl 0) (by simpa using idx.i_le_n))).card : Rat) *
        binaryOrbitFiberMultiplicity n idx

theorem binaryCodeCellFiberCardBound_of_projection_fiber_bound {n : Nat}
    (C : Finset (QaryWord 2 n))
    (hfiber : BinaryCodeCellProjectionFiberBound C) :
    BinaryCodeCellFiberCardBound C := by
  intro idx
  let zero : BinaryOrbitIndex n := binaryCodeCellZeroIndex idx.i idx.i_le_n
  have hnat :
      (binaryCodeTripleOrbitCell C idx).card <=
        (binaryCodeTripleOrbitCell C zero).card *
          binaryOrbitFiberMultiplicityNat n idx := by
    exact finset_card_le_card_mul_of_fiber_le
      (s := binaryCodeTripleOrbitCell C idx)
      (t := binaryCodeTripleOrbitCell C zero)
      (f := binaryCodeTripleLeftProjection)
      (m := binaryOrbitFiberMultiplicityNat n idx)
      (by
        intro triple htriple
        dsimp [zero]
        exact binaryCodeTripleLeftProjection_mem_zero_cell htriple)
      (by
        intro base hbase
        exact hfiber idx base (by simpa [zero] using hbase))
  rw [← binaryOrbitFiberMultiplicityNat_cast]
  exact_mod_cast hnat

theorem binaryCodeCellFiberCardBound_universal {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    BinaryCodeCellFiberCardBound C :=
  binaryCodeCellFiberCardBound_of_projection_fiber_bound C
    (binaryCodeCellProjectionFiberBound_universal C)

/-- Ambient binary triples in one orbit cell, with no code-membership restriction. -/
def binaryCodeTripleAmbientOrbitCell {n : Nat} (idx : BinaryOrbitIndex n) :
    Finset (BinaryCodeTriple n) :=
  binaryCodeTripleOrbitCell (Finset.univ : Finset (QaryWord 2 n)) idx

/-- Ambient orbit triples whose first and base words lie in `C`. -/
def binaryCodeTripleAmbientFirstBaseCell {n : Nat}
    (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n) :
    Finset (BinaryCodeTriple n) :=
  (binaryCodeTripleAmbientOrbitCell idx).filter
    (fun triple => triple.1.1 ∈ C ∧ triple.2 ∈ C)

/-- Ambient orbit triples whose first and second words lie in `C`. -/
def binaryCodeTripleAmbientFirstSecondCell {n : Nat}
    (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n) :
    Finset (BinaryCodeTriple n) :=
  (binaryCodeTripleAmbientOrbitCell idx).filter
    (fun triple => triple.1.1 ∈ C ∧ triple.1.2 ∈ C)

/-- Ambient orbit triples whose first word lies in `C`. -/
def binaryCodeTripleAmbientFirstOnlyCell {n : Nat}
    (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n) :
    Finset (BinaryCodeTriple n) :=
  (binaryCodeTripleAmbientOrbitCell idx).filter
    (fun triple => triple.1.1 ∈ C)

theorem binaryCodeTripleAmbientFirstSecondCell_card_rebaseRight {n : Nat}
    (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n) :
    (binaryCodeTripleAmbientFirstSecondCell C idx).card =
      (binaryCodeTripleAmbientFirstBaseCell C idx.rebaseRight).card := by
  apply Finset.card_bij (fun triple _ => binaryCodeTripleRebaseRight triple)
  · intro triple htriple
    simp only [binaryCodeTripleAmbientFirstSecondCell,
      binaryCodeTripleAmbientFirstBaseCell, Finset.mem_filter] at htriple ⊢
    refine ⟨?_, ?_⟩
    · have hcell :=
        binaryCodeTripleRebaseRight_mem_orbit_cell
          (idx := idx) htriple.1
      simpa [binaryCodeTripleAmbientOrbitCell] using hcell
    · exact ⟨htriple.2.1, htriple.2.2⟩
  · intro a _ b _ h
    have h' := congrArg binaryCodeTripleRebaseRight h
    simpa [binaryCodeTripleRebaseRight_involutive] using h'
  · intro b hb
    refine ⟨binaryCodeTripleRebaseRight b, ?_, ?_⟩
    · simp only [binaryCodeTripleAmbientFirstSecondCell,
        binaryCodeTripleAmbientFirstBaseCell, Finset.mem_filter] at hb ⊢
      refine ⟨?_, ?_⟩
      · have hb' :=
          binaryCodeTripleRebaseRight_mem_orbit_cell
            (idx := idx.rebaseRight) hb.1
        simpa [binaryCodeTripleAmbientOrbitCell,
          binaryOrbitIndex_rebaseRight_rebaseRight] using hb'
      · exact ⟨hb.2.1, hb.2.2⟩
    · exact binaryCodeTripleRebaseRight_involutive b

theorem binaryProjectionSupportChoices_card_le_ambientFirstBaseFiber {n : Nat}
    (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n)
    {base : BinaryCodeTriple n}
    (hbase :
      base ∈ binaryCodeTripleOrbitCell C
        (binaryCodeCellZeroIndex idx.i idx.i_le_n)) :
    binaryOrbitFiberMultiplicityNat n idx <=
      ((binaryCodeTripleAmbientFirstBaseCell C idx).filter
        (fun triple => binaryCodeTripleLeftProjection triple = base)).card := by
  let A : Finset (Fin n) := binaryCodeTripleLeftSupport base
  let choices : Finset (Finset (Fin n) × Finset (Fin n)) :=
    binaryProjectionSupportChoices A idx
  let decode : Finset (Fin n) × Finset (Fin n) -> BinaryCodeTriple n :=
    fun choice =>
      ((base.1.1, binaryFlipOn base.2 (choice.1 ∪ choice.2)), base.2)
  have hAcard : A.card = idx.i := by
    simpa [A] using
      binaryCodeTripleLeftSupport_card_of_mem_zero_cell
        (d := idx.i) (hd := idx.i_le_n) hbase
  have hchoices_card : choices.card = binaryOrbitFiberMultiplicityNat n idx := by
    simpa [choices, A] using
      binaryProjectionSupportChoices_card A idx hAcard
  rw [← hchoices_card]
  apply Finset.card_le_card_of_injOn decode
  · intro choice hchoice
    have hchoice' : choice ∈ binaryProjectionSupportChoices A idx := by
      simpa [choices] using hchoice
    have hmem := Finset.mem_product.mp hchoice'
    have hright :=
      binaryCodeTriple_right_eq_base_of_mem_zero_cell
        (d := idx.i) (hd := idx.i_le_n) hbase
    have horbit :
        binaryCodeTripleOrbitOf (decode choice) = idx := by
      dsimp [decode]
      exact binaryCodeTripleOrbitOf_firstBaseDecode base idx choice.1 choice.2
        (by simpa [A] using hAcard)
        (by simpa [A] using hmem.1)
        (by simpa [A] using hmem.2)
    change decode choice ∈
      (binaryCodeTripleAmbientFirstBaseCell C idx).filter
        (fun triple => binaryCodeTripleLeftProjection triple = base)
    rw [Finset.mem_filter]
    refine ⟨?_, ?_⟩
    · rw [binaryCodeTripleAmbientFirstBaseCell, Finset.mem_filter]
      refine ⟨?_, ?_⟩
      · rw [binaryCodeTripleAmbientOrbitCell, mem_binaryCodeTripleOrbitCell]
        exact ⟨by simp, by simp, by simp, horbit⟩
      · have hb := mem_binaryCodeTripleOrbitCell.mp hbase
        exact ⟨hb.1, hb.2.2.1⟩
    · dsimp [decode, binaryCodeTripleLeftProjection]
      exact Prod.ext (Prod.ext rfl hright.symm) rfl
  · intro a ha b hb hdecode
    have ha' : a ∈ binaryProjectionSupportChoices A idx := by
      simpa [choices] using ha
    have hb' : b ∈ binaryProjectionSupportChoices A idx := by
      simpa [choices] using hb
    have ha_mem := Finset.mem_product.mp ha'
    have hb_mem := Finset.mem_product.mp hb'
    have haP := Finset.mem_powersetCard.mp ha_mem.1
    have haQ := Finset.mem_powersetCard.mp ha_mem.2
    have hbP := Finset.mem_powersetCard.mp hb_mem.1
    have hbQ := Finset.mem_powersetCard.mp hb_mem.2
    have hunion : a.1 ∪ a.2 = b.1 ∪ b.2 := by
      have hsupport := congrArg binaryCodeTripleRightSupport hdecode
      ext coord
      have hcoord :=
        congrArg (fun S : Finset (Fin n) => coord ∈ S) hsupport
      simpa [decode, binaryCodeTripleRightSupport] using hcoord
    exact binary_support_choice_eq_of_union_eq
      haP.1 haQ.1 hbP.1 hbQ.1 hunion

theorem binaryCodeTripleAmbientFirstBaseFiberCard {n : Nat}
    (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n)
    {base : BinaryCodeTriple n}
    (hbase :
      base ∈ binaryCodeTripleOrbitCell C
        (binaryCodeCellZeroIndex idx.i idx.i_le_n)) :
    ((binaryCodeTripleAmbientFirstBaseCell C idx).filter
      (fun triple => binaryCodeTripleLeftProjection triple = base)).card =
        binaryOrbitFiberMultiplicityNat n idx := by
  apply le_antisymm
  · have hbase_univ :
        base ∈ binaryCodeTripleOrbitCell
          (Finset.univ : Finset (QaryWord 2 n))
          (binaryCodeCellZeroIndex idx.i idx.i_le_n) := by
      have hb := mem_binaryCodeTripleOrbitCell.mp hbase
      rw [mem_binaryCodeTripleOrbitCell]
      exact ⟨by simp, by simp, by simp, hb.2.2.2⟩
    have hle_univ :=
      binaryCodeCellProjectionFiberBound_universal
        (Finset.univ : Finset (QaryWord 2 n)) idx base hbase_univ
    have hsub :
        ((binaryCodeTripleAmbientFirstBaseCell C idx).filter
          (fun triple => binaryCodeTripleLeftProjection triple = base)) ⊆
          ((binaryCodeTripleOrbitCell
            (Finset.univ : Finset (QaryWord 2 n)) idx).filter
              (fun triple => binaryCodeTripleLeftProjection triple = base)) := by
      intro triple htriple
      rw [Finset.mem_filter] at htriple ⊢
      have hcell := (Finset.mem_filter.mp htriple.1).1
      exact ⟨by simpa [binaryCodeTripleAmbientFirstBaseCell,
          binaryCodeTripleAmbientOrbitCell] using hcell, htriple.2⟩
    exact (Finset.card_le_card hsub).trans hle_univ
  · exact binaryProjectionSupportChoices_card_le_ambientFirstBaseFiber
      C idx hbase

theorem binaryCodeTripleAmbientFirstBaseCell_card {n : Nat}
    (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n) :
    (binaryCodeTripleAmbientFirstBaseCell C idx).card =
      (binaryCodeTripleOrbitCell C
        (binaryCodeCellZeroIndex idx.i idx.i_le_n)).card *
          binaryOrbitFiberMultiplicityNat n idx := by
  apply finset_card_eq_card_mul_of_fiber_eq
    (s := binaryCodeTripleAmbientFirstBaseCell C idx)
    (t := binaryCodeTripleOrbitCell C
      (binaryCodeCellZeroIndex idx.i idx.i_le_n))
    (f := binaryCodeTripleLeftProjection)
    (m := binaryOrbitFiberMultiplicityNat n idx)
  · intro triple htriple
    rw [binaryCodeTripleAmbientFirstBaseCell, Finset.mem_filter] at htriple
    have horbit : binaryCodeTripleOrbitOf triple = idx := by
      simpa [binaryCodeTripleAmbientOrbitCell] using htriple.1
    rw [mem_binaryCodeTripleOrbitCell]
    refine ⟨htriple.2.1, htriple.2.2, htriple.2.2, ?_⟩
    apply binaryOrbitIndex_ext
    · simpa [binaryCodeTripleLeftProjection] using
        congrArg BinaryOrbitIndex.i horbit
    · simp [binaryCodeTripleLeftProjection, binaryCodeCellZeroIndex]
    · simp [binaryCodeTripleLeftProjection, binaryCodeTripleOrbitOf,
        binaryCodeTripleRightSupport, binaryCodeCellZeroIndex]
  · intro base hbase
    exact binaryCodeTripleAmbientFirstBaseFiberCard C idx hbase

theorem binaryCodeTripleAmbientFirstBaseCell_normalized {n : Nat}
    (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n) :
    ((binaryCodeTripleAmbientFirstBaseCell C idx).card : Rat) /
        binaryCodeCellDenominator n idx =
      binaryZeroCoeff (binaryCodeCellX C) idx.i := by
  let zero : BinaryOrbitIndex n :=
    BinaryOrbitIndex.mk idx.i 0 0 (Nat.zero_le idx.i)
      (Nat.le_refl 0) (by simpa using idx.i_le_n)
  let A : Rat := ((binaryCodeTripleOrbitCell C zero).card : Rat)
  let F : Rat := binaryOrbitFiberMultiplicity n idx
  let S : Rat := (((2 ^ n : Nat) : Rat)) * (Nat.choose n idx.i : Rat)
  have hcard :
      ((binaryCodeTripleAmbientFirstBaseCell C idx).card : Rat) = A * F := by
    rw [binaryCodeTripleAmbientFirstBaseCell_card]
    simp [A, F, zero, binaryCodeCellZeroIndex]
  have hden : binaryCodeCellDenominator n idx = S * F := by
    rw [binaryCodeCellDenominator_eq_shell_mul_fiber]
  have hzeroCoeff :
      binaryZeroCoeff (binaryCodeCellX C) idx.i = A / S := by
    unfold binaryZeroCoeff binaryCodeCellX
    rw [dif_pos idx.i_le_n]
    have hden_zero : binaryCodeCellDenominator n zero = S := by
      dsimp [zero, S]
      unfold binaryCodeCellDenominator binaryOrbitMultiplicity
      simp
    rw [hden_zero]
  have hscale_nat : 0 < 2 ^ n := Nat.pow_pos (by decide : 0 < 2)
  have hscale : 0 < (((2 ^ n : Nat) : Rat)) := by exact_mod_cast hscale_nat
  have hchoose_nat : 0 < Nat.choose n idx.i := Nat.choose_pos idx.i_le_n
  have hchoose : 0 < (Nat.choose n idx.i : Rat) := by exact_mod_cast hchoose_nat
  have hSpos : 0 < S := by
    dsimp [S]
    exact mul_pos hscale hchoose
  have hFpos : 0 < F := by
    dsimp [F]
    exact binaryOrbitFiberMultiplicity_pos n idx
  calc
    ((binaryCodeTripleAmbientFirstBaseCell C idx).card : Rat) /
        binaryCodeCellDenominator n idx = (A * F) / (S * F) := by
          rw [hcard, hden]
    _ = A / S := by
          field_simp [hSpos.ne', hFpos.ne']
    _ = binaryZeroCoeff (binaryCodeCellX C) idx.i := hzeroCoeff.symm

theorem binaryCodeTripleAmbientFirstSecondCell_normalized {n : Nat}
    (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n) :
    ((binaryCodeTripleAmbientFirstSecondCell C idx).card : Rat) /
        binaryCodeCellDenominator n idx =
      binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex idx) := by
  calc
    ((binaryCodeTripleAmbientFirstSecondCell C idx).card : Rat) /
        binaryCodeCellDenominator n idx =
      ((binaryCodeTripleAmbientFirstBaseCell C idx.rebaseRight).card : Rat) /
        binaryCodeCellDenominator n idx := by
          rw [binaryCodeTripleAmbientFirstSecondCell_card_rebaseRight]
    _ =
      ((binaryCodeTripleAmbientFirstBaseCell C idx.rebaseRight).card : Rat) /
        binaryCodeCellDenominator n idx.rebaseRight := by
          rw [binaryCodeCellDenominator_rebaseRight]
    _ = binaryZeroCoeff (binaryCodeCellX C) idx.rebaseRight.i := by
          exact binaryCodeTripleAmbientFirstBaseCell_normalized C idx.rebaseRight
    _ = binaryZeroCoeff (binaryCodeCellX C)
        (binaryOrbitDistanceIndex idx) := by
          rfl

theorem binaryCodeTripleAmbientFirstOnlyFiberCardBound {n : Nat}
    (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n)
    (first : QaryWord 2 n) :
    ((binaryCodeTripleAmbientFirstOnlyCell C idx).filter
      (fun triple => triple.1.1 = first)).card <=
        binaryOrbitMultiplicityNat n idx := by
  let choices := binaryOrbitSupportChoices idx
  let flatChoices :
      Finset (Finset (Fin n) × (Finset (Fin n) × Finset (Fin n))) :=
    choices.image (fun choice => (choice.1, choice.2))
  let encode : BinaryCodeTriple n ->
      Finset (Fin n) × (Finset (Fin n) × Finset (Fin n)) :=
    fun triple =>
      let A := binaryCodeTripleLeftSupport triple
      let B := binaryCodeTripleRightSupport triple
      (A, (A ∩ B, B \ A))
  have hle_fiber_flat :
      ((binaryCodeTripleAmbientFirstOnlyCell C idx).filter
        (fun triple => triple.1.1 = first)).card <= flatChoices.card := by
    apply Finset.card_le_card_of_injOn encode
    · intro triple htriple
      have hfilter := Finset.mem_filter.mp htriple
      have hfirstOnly := Finset.mem_filter.mp hfilter.1
      have horbit : binaryCodeTripleOrbitOf triple = idx := by
        simpa [binaryCodeTripleAmbientOrbitCell] using hfirstOnly.1
      let A := binaryCodeTripleLeftSupport triple
      let B := binaryCodeTripleRightSupport triple
      let P := A ∩ B
      let Q := B \ A
      have hAmem : A ∈ (Finset.univ : Finset (Fin n)).powersetCard idx.i := by
        refine Finset.mem_powersetCard.mpr ⟨?_, ?_⟩
        · intro coord _
          simp
        · have hi := congrArg BinaryOrbitIndex.i horbit
          simpa [A] using hi
      have hPmem : P ∈ A.powersetCard idx.t := by
        refine Finset.mem_powersetCard.mpr ⟨?_, ?_⟩
        · intro coord hcoord
          exact (Finset.mem_inter.mp hcoord).1
        · have ht := congrArg BinaryOrbitIndex.t horbit
          simpa [P, A, B] using ht
      have hQmem :
          Q ∈ (((Finset.univ : Finset (Fin n)) \ A).powersetCard
            (idx.j - idx.t)) := by
        refine Finset.mem_powersetCard.mpr ⟨?_, ?_⟩
        · intro coord hcoord
          rw [Finset.mem_sdiff] at hcoord ⊢
          exact ⟨by simp, hcoord.2⟩
        · have hj := congrArg BinaryOrbitIndex.j horbit
          have ht := congrArg BinaryOrbitIndex.t horbit
          dsimp [Q, A, B]
          rw [Finset.card_sdiff]
          rw [show B.card = idx.j by simpa [B] using hj]
          rw [show (A ∩ B).card = idx.t by simpa [A, B] using ht]
      change encode triple ∈ choices.image (fun choice => (choice.1, choice.2))
      rw [Finset.mem_image]
      refine ⟨⟨A, (P, Q)⟩, ?_, ?_⟩
      · change ⟨A, (P, Q)⟩ ∈ binaryOrbitSupportChoices idx
        rw [binaryOrbitSupportChoices, Finset.mem_sigma]
        exact ⟨hAmem, by
          have hprod : (P, Q) ∈ binaryProjectionSupportChoices A idx := by
            rw [binaryProjectionSupportChoices]
            exact Finset.mem_product.mpr ⟨hPmem, hQmem⟩
          simpa using hprod⟩
      · dsimp [encode, A, B, P, Q]
    · intro a ha b hb henc
      have ha_filter := Finset.mem_filter.mp ha
      have hb_filter := Finset.mem_filter.mp hb
      have ha_first : a.1.1 = first := ha_filter.2
      have hb_first : b.1.1 = first := hb_filter.2
      have hA :
          binaryCodeTripleLeftSupport a =
            binaryCodeTripleLeftSupport b :=
        congrArg Prod.fst henc
      have hpair :
          (binaryCodeTripleLeftSupport a ∩ binaryCodeTripleRightSupport a,
            binaryCodeTripleRightSupport a \ binaryCodeTripleLeftSupport a) =
          (binaryCodeTripleLeftSupport b ∩ binaryCodeTripleRightSupport b,
            binaryCodeTripleRightSupport b \ binaryCodeTripleLeftSupport b) :=
        congrArg Prod.snd henc
      have hbase : a.2 = b.2 := by
        apply binary_word_eq_of_relative_support_eq (w := first)
        simpa [binaryCodeTripleLeftSupport, ha_first, hb_first, ne_comm] using hA
      have hright :
          binaryCodeTripleRightSupport a =
            binaryCodeTripleRightSupport b := by
        let A₁ := binaryCodeTripleLeftSupport a
        let B₁ := binaryCodeTripleRightSupport a
        let A₂ := binaryCodeTripleLeftSupport b
        let B₂ := binaryCodeTripleRightSupport b
        have hB₁ : B₁ = (A₁ ∩ B₁) ∪ (B₁ \ A₁) := by
          ext coord
          constructor
          · intro hcoord
            by_cases hAcoord : coord ∈ A₁
            · exact Finset.mem_union.mpr
                (Or.inl (Finset.mem_inter.mpr ⟨hAcoord, hcoord⟩))
            · exact Finset.mem_union.mpr
                (Or.inr (Finset.mem_sdiff.mpr ⟨hcoord, hAcoord⟩))
          · intro hcoord
            rcases Finset.mem_union.mp hcoord with hcoord | hcoord
            · exact (Finset.mem_inter.mp hcoord).2
            · exact (Finset.mem_sdiff.mp hcoord).1
        have hB₂ : B₂ = (A₂ ∩ B₂) ∪ (B₂ \ A₂) := by
          ext coord
          constructor
          · intro hcoord
            by_cases hAcoord : coord ∈ A₂
            · exact Finset.mem_union.mpr
                (Or.inl (Finset.mem_inter.mpr ⟨hAcoord, hcoord⟩))
            · exact Finset.mem_union.mpr
                (Or.inr (Finset.mem_sdiff.mpr ⟨hcoord, hAcoord⟩))
          · intro hcoord
            rcases Finset.mem_union.mp hcoord with hcoord | hcoord
            · exact (Finset.mem_inter.mp hcoord).2
            · exact (Finset.mem_sdiff.mp hcoord).1
        calc
          binaryCodeTripleRightSupport a = B₁ := rfl
          _ = (A₁ ∩ B₁) ∪ (B₁ \ A₁) := hB₁
          _ = (A₂ ∩ B₂) ∪ (B₂ \ A₂) := by
                simpa [A₁, B₁, A₂, B₂] using
                  congrArg (fun pair : Finset (Fin n) × Finset (Fin n) =>
                    pair.1 ∪ pair.2) hpair
          _ = B₂ := hB₂.symm
          _ = binaryCodeTripleRightSupport b := rfl
      have hsecond : a.1.2 = b.1.2 := by
        apply binary_word_eq_of_relative_support_eq (w := a.2)
        simpa [binaryCodeTripleRightSupport, hbase] using hright
      exact Prod.ext
        (Prod.ext (ha_first.trans hb_first.symm) hsecond) hbase
  have hflat_le : flatChoices.card <= choices.card := by
    exact Finset.card_image_le
  exact hle_fiber_flat.trans (hflat_le.trans_eq (binaryOrbitSupportChoices_card idx))

theorem binaryCodeTripleAmbientFirstOnlyCell_card_le {n : Nat}
    (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n) :
    (binaryCodeTripleAmbientFirstOnlyCell C idx).card <=
      C.card * binaryOrbitMultiplicityNat n idx := by
  exact finset_card_le_card_mul_of_fiber_le
    (s := binaryCodeTripleAmbientFirstOnlyCell C idx)
    (t := C)
    (f := fun triple => triple.1.1)
    (m := binaryOrbitMultiplicityNat n idx)
    (by
      intro triple htriple
      exact (Finset.mem_filter.mp htriple).2)
    (by
      intro first _hfirst
      exact binaryCodeTripleAmbientFirstOnlyFiberCardBound C idx first)

theorem binaryCodeTripleAmbientFirstOnlyCell_normalized_le {n : Nat}
    (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n) :
    ((binaryCodeTripleAmbientFirstOnlyCell C idx).card : Rat) /
        binaryCodeCellDenominator n idx <=
      binaryZeroCoeff (binaryCodeCellX C) 0 := by
  let M : Rat := binaryOrbitMultiplicity n idx
  let scale : Rat := (((2 ^ n : Nat) : Rat))
  have hcardNat :=
    binaryCodeTripleAmbientFirstOnlyCell_card_le C idx
  have hcard :
      ((binaryCodeTripleAmbientFirstOnlyCell C idx).card : Rat) <=
        (C.card : Rat) * M := by
    have hcast :
        ((binaryCodeTripleAmbientFirstOnlyCell C idx).card : Rat) <=
          ((C.card * binaryOrbitMultiplicityNat n idx : Nat) : Rat) := by
      exact_mod_cast hcardNat
    simpa [M, Nat.cast_mul] using hcast
  have hden :
      binaryCodeCellDenominator n idx = scale * M := by
    rfl
  have hscale_nat : 0 < 2 ^ n := Nat.pow_pos (by decide : 0 < 2)
  have hscale : 0 < scale := by
    dsimp [scale]
    exact_mod_cast hscale_nat
  have hMpos : 0 < M := by
    dsimp [M]
    exact binaryOrbitMultiplicity_pos n idx
  have hzero :
      binaryZeroCoeff (binaryCodeCellX C) 0 = (C.card : Rat) / scale := by
    simpa [scale] using binaryCodeCellX_zeroCoeff_zero C
  calc
    ((binaryCodeTripleAmbientFirstOnlyCell C idx).card : Rat) /
        binaryCodeCellDenominator n idx =
      ((binaryCodeTripleAmbientFirstOnlyCell C idx).card : Rat) /
        (scale * M) := by
          rw [hden]
    _ <= ((C.card : Rat) * M) / (scale * M) := by
          exact div_le_div_of_nonneg_right hcard
            (le_of_lt (mul_pos hscale hMpos))
    _ = (C.card : Rat) / scale := by
          field_simp [hscale.ne', hMpos.ne']
    _ = binaryZeroCoeff (binaryCodeCellX C) 0 := hzero.symm

/--
Raw finite-set triangle inequality behind the code-cell lower triangle
constraint.  The three filtered ambient cells count, respectively, orbit
triples whose `(first, base)` pair is in `C`, whose `(first, second)` pair is
in `C`, and whose first word is in `C`.
-/
theorem binaryCodeTripleOrbitCell_triangle_card_ineq {n : Nat}
    (C : Finset (QaryWord 2 n)) (idx : BinaryOrbitIndex n) :
    (binaryCodeTripleAmbientFirstBaseCell C idx).card +
      (binaryCodeTripleAmbientFirstSecondCell C idx).card <=
        (binaryCodeTripleAmbientFirstOnlyCell C idx).card +
          (binaryCodeTripleOrbitCell C idx).card := by
  let firstBase := binaryCodeTripleAmbientFirstBaseCell C idx
  let firstSecond := binaryCodeTripleAmbientFirstSecondCell C idx
  let firstOnly := binaryCodeTripleAmbientFirstOnlyCell C idx
  have hsub : firstBase ∪ firstSecond ⊆ firstOnly := by
    intro triple htriple
    rw [Finset.mem_union] at htriple
    change triple ∈ binaryCodeTripleAmbientFirstOnlyCell C idx
    rw [binaryCodeTripleAmbientFirstOnlyCell, Finset.mem_filter]
    rcases htriple with htriple | htriple
    · exact ⟨(Finset.mem_filter.mp htriple).1,
        (Finset.mem_filter.mp htriple).2.1⟩
    · exact ⟨(Finset.mem_filter.mp htriple).1,
        (Finset.mem_filter.mp htriple).2.1⟩
  have hcard :=
    finset_card_add_le_card_add_card_inter_of_union_subset
      (s := firstBase) (t := firstSecond) (u := firstOnly) hsub
  have hinter : firstBase ∩ firstSecond = binaryCodeTripleOrbitCell C idx := by
    ext triple
    constructor
    · intro htriple
      rw [Finset.mem_inter] at htriple
      have hbase := Finset.mem_filter.mp htriple.1
      have hsecond := Finset.mem_filter.mp htriple.2
      have horbit : binaryCodeTripleOrbitOf triple = idx := by
        simpa [binaryCodeTripleAmbientOrbitCell] using hbase.1
      rw [mem_binaryCodeTripleOrbitCell]
      exact ⟨hbase.2.1, hsecond.2.2, hbase.2.2, horbit⟩
    · intro htriple
      rw [mem_binaryCodeTripleOrbitCell] at htriple
      rw [Finset.mem_inter]
      have hambient : triple ∈ binaryCodeTripleAmbientOrbitCell idx := by
        rw [binaryCodeTripleAmbientOrbitCell, mem_binaryCodeTripleOrbitCell]
        exact ⟨by simp, by simp, by simp, htriple.2.2.2⟩
      exact ⟨Finset.mem_filter.mpr ⟨hambient, htriple.1, htriple.2.2.1⟩,
        Finset.mem_filter.mpr ⟨hambient, htriple.1, htriple.2.1⟩⟩
  rw [hinter] at hcard
  simpa [firstBase, firstSecond, firstOnly,
    binaryCodeTripleAmbientFirstBaseCell,
    binaryCodeTripleAmbientFirstSecondCell,
    binaryCodeTripleAmbientFirstOnlyCell] using hcard

theorem binaryCodeCellTriangleLowerBound_universal {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    forall idx : BinaryOrbitIndex n,
      binaryZeroCoeff (binaryCodeCellX C) idx.i +
          binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex idx) -
        binaryZeroCoeff (binaryCodeCellX C) 0 <= binaryCodeCellX C idx := by
  intro idx
  let D : Rat := binaryCodeCellDenominator n idx
  let FB : Rat := ((binaryCodeTripleAmbientFirstBaseCell C idx).card : Rat)
  let FS : Rat := ((binaryCodeTripleAmbientFirstSecondCell C idx).card : Rat)
  let FO : Rat := ((binaryCodeTripleAmbientFirstOnlyCell C idx).card : Rat)
  let X : Rat := ((binaryCodeTripleOrbitCell C idx).card : Rat)
  have hDpos : 0 < D := by
    dsimp [D]
    exact binaryCodeCellDenominator_pos n idx
  have hraw := binaryCodeTripleOrbitCell_triangle_card_ineq C idx
  have hrawRat : FB + FS <= FO + X := by
    have hcast :
        (((binaryCodeTripleAmbientFirstBaseCell C idx).card +
          (binaryCodeTripleAmbientFirstSecondCell C idx).card : Nat) : Rat) <=
          (((binaryCodeTripleAmbientFirstOnlyCell C idx).card +
            (binaryCodeTripleOrbitCell C idx).card : Nat) : Rat) := by
      exact_mod_cast hraw
    simpa [FB, FS, FO, X, Nat.cast_add] using hcast
  have hrawDiv : FB / D + FS / D <= FO / D + X / D := by
    calc
      FB / D + FS / D = (FB + FS) / D := by
        field_simp [hDpos.ne']
      _ <= (FO + X) / D := by
        exact div_le_div_of_nonneg_right hrawRat (le_of_lt hDpos)
      _ = FO / D + X / D := by
        field_simp [hDpos.ne']
  have hFB :
      FB / D = binaryZeroCoeff (binaryCodeCellX C) idx.i := by
    simpa [FB, D] using
      binaryCodeTripleAmbientFirstBaseCell_normalized C idx
  have hFS :
      FS / D =
        binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex idx) := by
    simpa [FS, D] using
      binaryCodeTripleAmbientFirstSecondCell_normalized C idx
  have hFO :
      FO / D <= binaryZeroCoeff (binaryCodeCellX C) 0 := by
    simpa [FO, D] using
      binaryCodeTripleAmbientFirstOnlyCell_normalized_le C idx
  have hX : X / D = binaryCodeCellX C idx := by
    rfl
  linarith

def BinaryCodeCellTriangleLowerBound {n : Nat}
    (C : Finset (QaryWord 2 n)) : Prop :=
  forall idx : BinaryOrbitIndex n,
    binaryZeroCoeff (binaryCodeCellX C) idx.i +
        binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex idx) -
      binaryZeroCoeff (binaryCodeCellX C) 0 <= binaryCodeCellX C idx

theorem binaryCodeCellX_basicConstraints_of_card_bounds {n : Nat}
    (C : Finset (QaryWord 2 n))
    (hfiber : BinaryCodeCellFiberCardBound C)
    (htriangle : BinaryCodeCellTriangleLowerBound C) :
    BinaryBasicConstraints (binaryCodeCellX C) := by
  refine ⟨?_, ?_, ?_⟩
  · intro idx
    exact ⟨binaryCodeCellX_nonneg C idx,
      binaryCodeCellX_le_diagonalCoeff_of_card_le C idx (hfiber idx)⟩
  · intro idx
    exact ⟨htriangle idx,
      binaryCodeCellX_le_distanceZeroCoeff_of_rebase_card_le C idx
        (hfiber idx.rebaseRight)⟩
  · intro idx idx' hp
    exact binaryCodeCellX_basic_symmetry C idx idx' hp

structure BinaryCodeCellReducedConstraintCertificate
    (n : Nat) (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 n)) : Prop where
  fiberCard : BinaryCodeCellFiberCardBound C
  triangleLower : BinaryCodeCellTriangleLowerBound C
  semidefinite : BinaryBlocksPSD (binaryCodeCellX C)
  lasserre : BinaryLasserreConstraints lambda beta (binaryCodeCellX C)
  matrixCuts : BinaryMatrixCutConstraints lambda beta (binaryCodeCellX C)

def BinaryCodeCellReducedConstraintCertificate.toReducedConstraints
    {n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {C : Finset (QaryWord 2 n)}
    (cert : BinaryCodeCellReducedConstraintCertificate n lambda beta C) :
    BinaryReducedConstraints n r lambda beta (binaryCodeCellX C) where
  basic := binaryCodeCellX_basicConstraints_of_card_bounds C
    cert.fiberCard cert.triangleLower
  semidefinite := cert.semidefinite
  lasserre := cert.lasserre
  matrixCuts := cert.matrixCuts

structure BinaryCodeCellProjectionReducedConstraintCertificate
    (n : Nat) (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 n)) : Prop where
  projectionFiberCard : BinaryCodeCellProjectionFiberBound C
  triangleLower : BinaryCodeCellTriangleLowerBound C
  semidefinite : BinaryBlocksPSD (binaryCodeCellX C)
  lasserre : BinaryLasserreConstraints lambda beta (binaryCodeCellX C)
  matrixCuts : BinaryMatrixCutConstraints lambda beta (binaryCodeCellX C)

def BinaryCodeCellProjectionReducedConstraintCertificate.toCodeCellReducedConstraintCertificate
    {n : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {C : Finset (QaryWord 2 n)}
    (cert : BinaryCodeCellProjectionReducedConstraintCertificate n lambda beta C) :
    BinaryCodeCellReducedConstraintCertificate n lambda beta C where
  fiberCard :=
    binaryCodeCellFiberCardBound_of_projection_fiber_bound C
      cert.projectionFiberCard
  triangleLower := cert.triangleLower
  semidefinite := cert.semidefinite
  lasserre := cert.lasserre
  matrixCuts := cert.matrixCuts

def BinaryCodeCellProjectionReducedConstraintCertificate.toReducedConstraints
    {n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {C : Finset (QaryWord 2 n)}
    (cert : BinaryCodeCellProjectionReducedConstraintCertificate n lambda beta C) :
    BinaryReducedConstraints n r lambda beta (binaryCodeCellX C) :=
  cert.toCodeCellReducedConstraintCertificate.toReducedConstraints

structure BinaryCodeCellIntrinsicReducedConstraintCertificate
    (n : Nat) (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 n)) : Prop where
  semidefinite : BinaryBlocksPSD (binaryCodeCellX C)
  lasserre : BinaryLasserreConstraints lambda beta (binaryCodeCellX C)
  matrixCuts : BinaryMatrixCutConstraints lambda beta (binaryCodeCellX C)

def BinaryCodeCellIntrinsicReducedConstraintCertificate.toCodeCellReducedConstraintCertificate
    {n : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {C : Finset (QaryWord 2 n)}
    (cert : BinaryCodeCellIntrinsicReducedConstraintCertificate n lambda beta C) :
    BinaryCodeCellReducedConstraintCertificate n lambda beta C where
  fiberCard := binaryCodeCellFiberCardBound_universal C
  triangleLower := binaryCodeCellTriangleLowerBound_universal C
  semidefinite := cert.semidefinite
  lasserre := cert.lasserre
  matrixCuts := cert.matrixCuts

def BinaryCodeCellIntrinsicReducedConstraintCertificate.toReducedConstraints
    {n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {C : Finset (QaryWord 2 n)}
    (cert : BinaryCodeCellIntrinsicReducedConstraintCertificate n lambda beta C) :
    BinaryReducedConstraints n r lambda beta (binaryCodeCellX C) :=
  cert.toCodeCellReducedConstraintCertificate.toReducedConstraints

/--
Natural-number double-counting identity for identifying the coordinate-orbit
average of relative-code Gram matrices with the code-cell Terwilliger matrix.
-/
def BinaryRelativeOrbitAverageCardIdentity {n : Nat}
    (C : Finset (QaryWord 2 n)) : Prop :=
  forall u v : QaryWord 2 n,
    binaryOrbitMultiplicityNat n (binaryOrbitOf u v) *
        Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
          (binaryRelativeCodeBaseCell C
            ((binaryWordPermEquiv sigma).symm u)
            ((binaryWordPermEquiv sigma).symm v)).card) =
      Fintype.card (Equiv.Perm (Fin n)) *
        (binaryCodeTripleOrbitCell C (binaryOrbitOf u v)).card

/-- Relative word pair reached from `(u,v)` by the inverse coordinate permutation `sigma⁻¹`. -/
def binaryPermutedRelativeWordPair {n : Nat}
    (u v : QaryWord 2 n) (sigma : Equiv.Perm (Fin n)) :
    QaryWord 2 n × QaryWord 2 n :=
  (((binaryWordPermEquiv sigma).symm u),
    ((binaryWordPermEquiv sigma).symm v))

@[simp]
theorem binaryPermutedRelativeWordPair_symm {n : Nat}
    (u v : QaryWord 2 n) (sigma : Equiv.Perm (Fin n)) :
    binaryPermutedRelativeWordPair
        (binaryPermutedRelativeWordPair u v sigma).1
        (binaryPermutedRelativeWordPair u v sigma).2
        sigma.symm =
      (u, v) := by
  apply Prod.ext <;> funext coord <;>
    simp [binaryPermutedRelativeWordPair, binaryWordPermEquiv_apply]

@[simp]
theorem binaryPermutedRelativeWordPair_symm_left {n : Nat}
    (u v : QaryWord 2 n) (sigma : Equiv.Perm (Fin n)) :
    binaryPermutedRelativeWordPair
        (binaryPermutedRelativeWordPair u v sigma.symm).1
        (binaryPermutedRelativeWordPair u v sigma.symm).2
        sigma =
      (u, v) := by
  simpa using binaryPermutedRelativeWordPair_symm u v sigma.symm

@[simp]
theorem binaryPermutedRelativeWordPair_mem_orbitCell {n : Nat}
    (u v : QaryWord 2 n) (sigma : Equiv.Perm (Fin n)) :
    binaryPermutedRelativeWordPair u v sigma ∈
      binaryWordPairOrbitCell (binaryOrbitOf u v) := by
  rw [mem_binaryWordPairOrbitCell]
  dsimp [binaryPermutedRelativeWordPair]
  simp

/-- Every relative word pair in the orbit cell is reached by a coordinate permutation. -/
def BinaryPairPermutationOrbitSurjective {n : Nat}
    (u v : QaryWord 2 n) : Prop :=
  forall pair : QaryWord 2 n × QaryWord 2 n,
    pair ∈ binaryWordPairOrbitCell (binaryOrbitOf u v) ->
      exists sigma : Equiv.Perm (Fin n),
        binaryPermutedRelativeWordPair u v sigma = pair

theorem binaryPairPermutationOrbitSurjective_universal {n : Nat}
    (u v : QaryWord 2 n) :
    BinaryPairPermutationOrbitSurjective u v := by
  classical
  intro pair hpair
  let u' : QaryWord 2 n := pair.1
  let v' : QaryWord 2 n := pair.2
  have horbit : binaryOrbitOf u' v' = binaryOrbitOf u v := by
    simpa [u', v'] using (mem_binaryWordPairOrbitCell.mp hpair)
  let cellEquiv :
      (cat : BinaryPairSupportCategory) ->
        binaryPairSupportCell cat u' v' ≃ binaryPairSupportCell cat u v :=
    fun cat =>
      (binaryPairSupportCell cat u' v').equivOfCardEq
        (binaryPairSupportCell_card_eq_of_orbit_eq cat horbit)
  let coordDatum :=
    Sigma (fun cat : BinaryPairSupportCategory =>
      binaryPairSupportCell cat u' v')
  let targetCoord : coordDatum -> Fin n := fun item => item.2.1
  let sourceCoord : coordDatum -> Fin n :=
    fun item => ((cellEquiv item.1) item.2).1
  have htarget_inj : Function.Injective targetCoord := by
    intro a b hcoord
    rcases a with ⟨cat, coord⟩
    rcases b with ⟨cat', coord'⟩
    dsimp [targetCoord] at hcoord
    have hcat : cat = cat' :=
      binaryPairSupportCell_category_eq_of_mem coord.2 (by
        simp [hcoord, coord'.2])
    subst hcat
    rcases coord with ⟨coord, hmem⟩
    rcases coord' with ⟨coord', hmem'⟩
    dsimp at hcoord
    subst hcoord
    rfl
  have hsource_inj : Function.Injective sourceCoord := by
    intro a b hcoord
    rcases a with ⟨cat, coord⟩
    rcases b with ⟨cat', coord'⟩
    dsimp [sourceCoord] at hcoord
    have hcat : cat = cat' :=
      binaryPairSupportCell_category_eq_of_mem
        (((cellEquiv cat) coord).2) (by
          simp [hcoord, ((cellEquiv cat') coord').2])
    subst hcat
    have hout :
        (cellEquiv cat) coord = (cellEquiv cat) coord' :=
      Subtype.ext hcoord
    have hcoord' : coord = coord' := (cellEquiv cat).injective hout
    subst hcoord'
    rfl
  rcases Equiv.Perm.exists_extending_pair
      targetCoord sourceCoord htarget_inj hsource_inj with ⟨sigma, hsigma⟩
  refine ⟨sigma, ?_⟩
  apply Prod.ext
  · funext coord
    rcases binaryPairSupportCell_exhaustive u' v' coord with ⟨cat, hcoord⟩
    let item : coordDatum := ⟨cat, ⟨coord, hcoord⟩⟩
    have hsigma_coord :
        sigma coord = ((cellEquiv cat) ⟨coord, hcoord⟩).1 := by
      simpa [item, targetCoord, sourceCoord] using hsigma item
    have hvalues :=
      binaryPairSupportCell_value_eq
        (cat := cat) (u := u) (v := v) (u' := u') (v' := v')
        (coord := ((cellEquiv cat) ⟨coord, hcoord⟩).1) (coord' := coord)
        (((cellEquiv cat) ⟨coord, hcoord⟩).2) hcoord
    simpa [binaryPermutedRelativeWordPair, binaryWordPermEquiv_symm_apply,
      hsigma_coord, u'] using hvalues.1
  · funext coord
    rcases binaryPairSupportCell_exhaustive u' v' coord with ⟨cat, hcoord⟩
    let item : coordDatum := ⟨cat, ⟨coord, hcoord⟩⟩
    have hsigma_coord :
        sigma coord = ((cellEquiv cat) ⟨coord, hcoord⟩).1 := by
      simpa [item, targetCoord, sourceCoord] using hsigma item
    have hvalues :=
      binaryPairSupportCell_value_eq
        (cat := cat) (u := u) (v := v) (u' := u') (v' := v')
        (coord := ((cellEquiv cat) ⟨coord, hcoord⟩).1) (coord' := coord)
        (((cellEquiv cat) ⟨coord, hcoord⟩).2) hcoord
    simpa [binaryPermutedRelativeWordPair, binaryWordPermEquiv_symm_apply,
      hsigma_coord, v'] using hvalues.2

/--
The only remaining group-action input needed for the orbit-average card
identity: every pair in the coordinate orbit of `(u,v)` has the same number of
coordinate permutations mapping `(u,v)` to it.
-/
def BinaryPairPermutationUniformFiber {n : Nat}
    (u v : QaryWord 2 n) : Prop :=
  exists fiberCard : Nat,
    Fintype.card (Equiv.Perm (Fin n)) =
        (binaryWordPairOrbitCell (binaryOrbitOf u v)).card * fiberCard /\
      forall pair : QaryWord 2 n × QaryWord 2 n,
        pair ∈ binaryWordPairOrbitCell (binaryOrbitOf u v) ->
          ((Finset.univ : Finset (Equiv.Perm (Fin n))).filter
            (fun sigma => binaryPermutedRelativeWordPair u v sigma = pair)).card =
              fiberCard

theorem binaryPairPermutationUniformFiber_of_surjective {n : Nat}
    (u v : QaryWord 2 n)
    (hsurj : BinaryPairPermutationOrbitSurjective u v) :
    BinaryPairPermutationUniformFiber u v := by
  let basePair : QaryWord 2 n × QaryWord 2 n := (u, v)
  let fiberCard : Nat :=
    ((Finset.univ : Finset (Equiv.Perm (Fin n))).filter
      (fun sigma => binaryPermutedRelativeWordPair u v sigma = basePair)).card
  have hfiber :
      forall pair : QaryWord 2 n × QaryWord 2 n,
        pair ∈ binaryWordPairOrbitCell (binaryOrbitOf u v) ->
          ((Finset.univ : Finset (Equiv.Perm (Fin n))).filter
            (fun sigma => binaryPermutedRelativeWordPair u v sigma = pair)).card =
              fiberCard := by
    intro pair hpair
    rcases hsurj pair hpair with ⟨tau, htau⟩
    apply Finset.card_bij (fun sigma _ => sigma * tau.symm)
    · intro sigma hsigma
      rw [Finset.mem_filter] at hsigma ⊢
      refine ⟨Finset.mem_univ _, ?_⟩
      have hsigma_left :
          (binaryWordPermEquiv sigma).symm u = pair.1 := by
        simpa [binaryPermutedRelativeWordPair] using congrArg Prod.fst hsigma.2
      have hsigma_right :
          (binaryWordPermEquiv sigma).symm v = pair.2 := by
        simpa [binaryPermutedRelativeWordPair] using congrArg Prod.snd hsigma.2
      have htau_left :
          (binaryWordPermEquiv tau).symm u = pair.1 := by
        simpa [binaryPermutedRelativeWordPair] using congrArg Prod.fst htau
      have htau_right :
          (binaryWordPermEquiv tau).symm v = pair.2 := by
        simpa [binaryPermutedRelativeWordPair] using congrArg Prod.snd htau
      apply Prod.ext
      · funext coord
        have hs := congrFun hsigma_left (tau.symm coord)
        have ht := congrFun htau_left (tau.symm coord)
        simpa [basePair, binaryPermutedRelativeWordPair,
          binaryWordPermEquiv_symm_eq] using hs.trans ht.symm
      · funext coord
        have hs := congrFun hsigma_right (tau.symm coord)
        have ht := congrFun htau_right (tau.symm coord)
        simpa [basePair, binaryPermutedRelativeWordPair,
          binaryWordPermEquiv_symm_eq] using hs.trans ht.symm
    · intro sigma₁ _ sigma₂ _ hmul
      exact mul_right_cancel hmul
    · intro sigma hsigma
      rw [Finset.mem_filter] at hsigma
      refine ⟨sigma * tau, ?_, ?_⟩
      · rw [Finset.mem_filter]
        refine ⟨Finset.mem_univ _, ?_⟩
        have hbase_left :
            (binaryWordPermEquiv sigma).symm u = u := by
          simpa [basePair] using congrArg Prod.fst hsigma.2
        have hbase_right :
            (binaryWordPermEquiv sigma).symm v = v := by
          simpa [basePair] using congrArg Prod.snd hsigma.2
        have htau_left :
            (binaryWordPermEquiv tau).symm u = pair.1 := by
          simpa [binaryPermutedRelativeWordPair] using congrArg Prod.fst htau
        have htau_right :
            (binaryWordPermEquiv tau).symm v = pair.2 := by
          simpa [binaryPermutedRelativeWordPair] using congrArg Prod.snd htau
        apply Prod.ext
        · funext coord
          have hb := congrFun hbase_left (tau coord)
          have ht := congrFun htau_left coord
          simpa [binaryPermutedRelativeWordPair, binaryWordPermEquiv_symm_eq]
            using hb.trans ht
        · funext coord
          have hb := congrFun hbase_right (tau coord)
          have ht := congrFun htau_right coord
          simpa [binaryPermutedRelativeWordPair, binaryWordPermEquiv_symm_eq]
            using hb.trans ht
      · simp [mul_assoc]
  refine ⟨fiberCard, ?_, hfiber⟩
  have hcard :=
    finset_card_eq_card_mul_of_fiber_eq
      (s := (Finset.univ : Finset (Equiv.Perm (Fin n))))
      (t := binaryWordPairOrbitCell (binaryOrbitOf u v))
      (f := binaryPermutedRelativeWordPair u v)
      (m := fiberCard)
      (by
        intro sigma _
        exact binaryPermutedRelativeWordPair_mem_orbitCell u v sigma)
      hfiber
  simpa using hcard

theorem binaryOrbitMultiplicityNat_zero_right {n : Nat}
    (diff : QaryWord 2 n) :
    binaryOrbitMultiplicityNat n
        (binaryOrbitOf diff (zeroWord 2 n (by decide))) =
      Nat.choose n (binarySupport n diff).card := by
  have hzero :
      binarySupport n (zeroWord 2 n (by decide)) = ∅ := by
    ext coord
    simp [binarySupport, zeroWord]
  unfold binaryOrbitMultiplicityNat binaryOrbitOf
  simp [hzero]

theorem binaryPermutedDiff_mem_weightCell {n : Nat}
    (diff : QaryWord 2 n) (sigma : Equiv.Perm (Fin n)) :
    (binaryWordPermEquiv sigma).symm diff ∈
      binaryWordWeightCell n (binarySupport n diff).card := by
  rw [mem_binaryWordWeightCell]
  change (binarySupport n (binaryWordPermEquiv sigma.symm diff)).card =
    (binarySupport n diff).card
  rw [binarySupport_wordPerm,
    Finset.card_image_of_injective _ sigma.symm.injective]

theorem binaryPermutedCodePairDifferenceCell_sum_card_identity {n : Nat}
    (C : Finset (QaryWord 2 n)) (diff : QaryWord 2 n) :
    Nat.choose n (binarySupport n diff).card *
        Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
          (binaryCodePairDifferenceCell C
            ((binaryWordPermEquiv sigma).symm diff)).card) =
      Fintype.card (Equiv.Perm (Fin n)) *
        (binaryCodePairDistanceCell C (binarySupport n diff).card).card := by
  let zero : QaryWord 2 n := zeroWord 2 n (by decide)
  let d : Nat := (binarySupport n diff).card
  rcases binaryPairPermutationUniformFiber_of_surjective diff zero
      (binaryPairPermutationOrbitSurjective_universal diff zero) with
    ⟨fiberCard, hpermCard, hfiber⟩
  have hpairCard :
      (binaryWordPairOrbitCell (binaryOrbitOf diff zero)).card =
        Nat.choose n d := by
    rw [binaryWordPairOrbitCell_card]
    simpa [d, zero] using binaryOrbitMultiplicityNat_zero_right diff
  have hpermCard' :
      Fintype.card (Equiv.Perm (Fin n)) =
        Nat.choose n d * fiberCard := by
    simpa [d, hpairCard, Nat.mul_comm, Nat.mul_left_comm, Nat.mul_assoc] using
      hpermCard
  let weight : QaryWord 2 n -> Nat :=
    fun target => (binaryCodePairDifferenceCell C target).card
  have hfiberDiff :
      forall target : QaryWord 2 n,
        target ∈ binaryWordWeightCell n d ->
          ((Finset.univ : Finset (Equiv.Perm (Fin n))).filter
            (fun sigma => (binaryWordPermEquiv sigma).symm diff = target)).card =
              fiberCard := by
    intro target htarget
    have htarget_pair :
        (target, zero) ∈ binaryWordPairOrbitCell (binaryOrbitOf diff zero) := by
      have hzero : binarySupport n zero = ∅ := by
        ext coord
        simp [zero, binarySupport, zeroWord]
      rw [mem_binaryWordPairOrbitCell]
      apply binaryOrbitIndex_ext
      · change (binarySupport n target).card = (binarySupport n diff).card
        simpa [d] using htarget
      · simp [zero, binaryOrbitOf, hzero]
      · simp [zero, binaryOrbitOf, hzero]
    have hpairFiber := hfiber (target, zero) htarget_pair
    rw [← hpairFiber]
    congr 1
    ext sigma
    simp [binaryPermutedRelativeWordPair, zero]
  have hsum :=
    finset_sum_eq_mul_sum_of_fiber_eq
      (s := (Finset.univ : Finset (Equiv.Perm (Fin n))))
      (t := binaryWordWeightCell n d)
      (f := fun sigma => (binaryWordPermEquiv sigma).symm diff)
      (weight := weight)
      (m := fiberCard)
      (fun sigma _ => by
        simpa [d] using binaryPermutedDiff_mem_weightCell diff sigma)
      hfiberDiff
  have hdistSum :
      (binaryWordWeightCell n d).sum weight =
        (binaryCodePairDistanceCell C d).card := by
    simpa [weight] using
      binaryCodePairDifferenceCell_sum_card_eq_distanceCell_card C d
  calc
    Nat.choose n (binarySupport n diff).card *
        Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
          (binaryCodePairDifferenceCell C
            ((binaryWordPermEquiv sigma).symm diff)).card) =
      Nat.choose n d *
        ((Finset.univ : Finset (Equiv.Perm (Fin n))).sum
          (fun sigma => weight ((binaryWordPermEquiv sigma).symm diff))) := by
        simp [d, weight]
    _ = Nat.choose n d * (fiberCard * (binaryWordWeightCell n d).sum weight) := by
        rw [hsum]
    _ = Fintype.card (Equiv.Perm (Fin n)) *
        (binaryCodePairDistanceCell C d).card := by
        rw [hdistSum, hpermCard']
        ring
    _ = Fintype.card (Equiv.Perm (Fin n)) *
        (binaryCodePairDistanceCell C (binarySupport n diff).card).card := by
        rfl

theorem binaryRelativeOrbitAverageCardIdentity_of_uniform_pair_fibers {n : Nat}
    (C : Finset (QaryWord 2 n))
    (huniform :
      forall u v : QaryWord 2 n, BinaryPairPermutationUniformFiber u v) :
    BinaryRelativeOrbitAverageCardIdentity C := by
  intro u v
  rcases huniform u v with ⟨fiberCard, hpermCard, hfiber⟩
  let idx := binaryOrbitOf u v
  let weight : QaryWord 2 n × QaryWord 2 n -> Nat :=
    fun pair => (binaryRelativeCodeBaseCell C pair.1 pair.2).card
  have hsum :=
    finset_sum_eq_mul_sum_of_fiber_eq
      (s := (Finset.univ : Finset (Equiv.Perm (Fin n))))
      (t := binaryWordPairOrbitCell idx)
      (f := binaryPermutedRelativeWordPair u v)
      (weight := weight)
      (m := fiberCard)
      (by
        intro sigma _
        simpa [idx] using binaryPermutedRelativeWordPair_mem_orbitCell u v sigma)
      (by
        intro pair hpair
        simpa [idx] using hfiber pair (by simpa [idx] using hpair))
  have hpairCard :
      (binaryWordPairOrbitCell idx).card =
        binaryOrbitMultiplicityNat n idx :=
    binaryWordPairOrbitCell_card idx
  have hbaseSum :
      (binaryWordPairOrbitCell idx).sum weight =
        (binaryCodeTripleOrbitCell C idx).card := by
    simpa [weight] using binaryWordPairOrbitCell_baseCell_sum_card C idx
  have hpermCard' :
      Fintype.card (Equiv.Perm (Fin n)) =
        binaryOrbitMultiplicityNat n idx * fiberCard := by
    simpa [idx, hpairCard, Nat.mul_comm, Nat.mul_left_comm, Nat.mul_assoc] using
      hpermCard
  calc
    binaryOrbitMultiplicityNat n (binaryOrbitOf u v) *
        Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
          (binaryRelativeCodeBaseCell C
            ((binaryWordPermEquiv sigma).symm u)
            ((binaryWordPermEquiv sigma).symm v)).card) =
      binaryOrbitMultiplicityNat n idx *
        ((Finset.univ : Finset (Equiv.Perm (Fin n))).sum
          (fun sigma => weight (binaryPermutedRelativeWordPair u v sigma))) := by
        simp [idx, weight, binaryPermutedRelativeWordPair]
    _ = binaryOrbitMultiplicityNat n idx *
        (fiberCard * (binaryWordPairOrbitCell idx).sum weight) := by
        rw [hsum]
    _ = Fintype.card (Equiv.Perm (Fin n)) *
        (binaryCodeTripleOrbitCell C idx).card := by
        rw [hbaseSum, hpermCard']
        ring
    _ = Fintype.card (Equiv.Perm (Fin n)) *
        (binaryCodeTripleOrbitCell C (binaryOrbitOf u v)).card := by
        rfl

theorem binaryRelativeOrbitAverageCardIdentity_of_pair_orbit_surjective {n : Nat}
    (C : Finset (QaryWord 2 n))
    (hsurj :
      forall u v : QaryWord 2 n, BinaryPairPermutationOrbitSurjective u v) :
    BinaryRelativeOrbitAverageCardIdentity C :=
  binaryRelativeOrbitAverageCardIdentity_of_uniform_pair_fibers C
    (fun u v => binaryPairPermutationUniformFiber_of_surjective u v (hsurj u v))

theorem binaryRelativeOrbitAverageCardIdentity_universal {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    BinaryRelativeOrbitAverageCardIdentity C :=
  binaryRelativeOrbitAverageCardIdentity_of_pair_orbit_surjective C
    (fun u v => binaryPairPermutationOrbitSurjective_universal u v)

theorem binaryTranslatedCodeOrbitAverageMatrix_apply_pair_card_sum {n : Nat}
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) :
    binaryTranslatedCodeOrbitAverageMatrix C u v =
      (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) *
        ((((2 ^ n : Nat) : Rat)⁻¹) *
          Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
            ((binaryTranslatedPairBaseCell C
              ((binaryWordPermEquiv sigma).symm u)
              ((binaryWordPermEquiv sigma).symm v)).card : Rat))) := by
  rw [binaryTranslatedCodeOrbitAverageMatrix_apply]
  congr 1
  calc
    (∑ sigma : Equiv.Perm (Fin n),
        binaryTranslatedCodeAverageMatrix C
          ((binaryWordPermEquiv sigma).symm u)
          ((binaryWordPermEquiv sigma).symm v)) =
      ∑ sigma : Equiv.Perm (Fin n),
        (((2 ^ n : Nat) : Rat)⁻¹) *
          ((binaryTranslatedPairBaseCell C
            ((binaryWordPermEquiv sigma).symm u)
            ((binaryWordPermEquiv sigma).symm v)).card : Rat) := by
        apply Finset.sum_congr rfl
        intro sigma _
        rw [binaryTranslatedCodeAverageMatrix_apply_card]
    _ =
      (((2 ^ n : Nat) : Rat)⁻¹) *
        Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
          ((binaryTranslatedPairBaseCell C
            ((binaryWordPermEquiv sigma).symm u)
            ((binaryWordPermEquiv sigma).symm v)).card : Rat)) := by
        rw [Finset.mul_sum]

theorem binaryTranslatedCodeOrbitAverageMatrix_apply_difference_card_sum {n : Nat}
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) :
    binaryTranslatedCodeOrbitAverageMatrix C u v =
      (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) *
        ((((2 ^ n : Nat) : Rat)⁻¹) *
          Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
            ((binaryCodePairDifferenceCell C
              ((binaryWordPermEquiv sigma).symm (binaryXorWord u v))).card : Rat))) := by
  rw [binaryTranslatedCodeOrbitAverageMatrix_apply]
  congr 1
  calc
    (∑ sigma : Equiv.Perm (Fin n),
        binaryTranslatedCodeAverageMatrix C
          ((binaryWordPermEquiv sigma).symm u)
          ((binaryWordPermEquiv sigma).symm v)) =
        ∑ sigma : Equiv.Perm (Fin n),
          (((2 ^ n : Nat) : Rat)⁻¹) *
            ((binaryCodePairDifferenceCell C
              ((binaryWordPermEquiv sigma).symm (binaryXorWord u v))).card : Rat) := by
          apply Finset.sum_congr rfl
          intro sigma _
          rw [binaryTranslatedCodeAverageMatrix_apply_card]
          congr 1
          have hcard :=
            binaryTranslatedPairBaseCell_card_eq_codePairDifferenceCell_card C
              ((binaryWordPermEquiv sigma).symm u)
              ((binaryWordPermEquiv sigma).symm v)
          rw [hcard]
          simp
    _ =
        (((2 ^ n : Nat) : Rat)⁻¹) *
          Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
            ((binaryCodePairDifferenceCell C
              ((binaryWordPermEquiv sigma).symm (binaryXorWord u v))).card : Rat)) := by
          rw [Finset.mul_sum]

theorem binaryTranslatedCodeOrbitAverageMatrix_entry_eq_zeroCoeff {n : Nat}
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) :
    binaryTranslatedCodeOrbitAverageMatrix C u v =
      binaryZeroCoeff (binaryCodeCellX C)
        (binaryOrbitDistanceIndex (binaryOrbitOf u v)) := by
  let idx := binaryOrbitOf u v
  let diff := binaryXorWord u v
  let d := binaryOrbitDistanceIndex idx
  let permCard : Rat := (Fintype.card (Equiv.Perm (Fin n)) : Rat)
  let cubeCard : Rat := ((2 ^ n : Nat) : Rat)
  let chooseCard : Rat := (Nat.choose n d : Rat)
  let distanceCard : Rat := ((binaryCodePairDistanceCell C d).card : Rat)
  let baseSum : Rat :=
    Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
      ((binaryCodePairDifferenceCell C
        ((binaryWordPermEquiv sigma).symm diff)).card : Rat))
  have hdist_support :
      (binarySupport n diff).card = d := by
    have hxor := dist_eq_binarySupport_binaryXorWord_card u v
    have horbit := binary_dist_from_orbit u v
    simpa [idx, d, diff, binaryOrbitDistanceIndex] using hxor.symm.trans horbit
  have hd_le : d <= n := by
    rw [← hdist_support]
    calc
      (binarySupport n diff).card <= (Finset.univ : Finset (Fin n)).card :=
        Finset.card_le_card (by
          intro coord hcoord
          exact (Finset.mem_univ coord :
            coord ∈ (Finset.univ : Finset (Fin n))))
      _ = n := by simp
  have hpermCard_ne : permCard ≠ 0 := by
    have hpos : 0 < Fintype.card (Equiv.Perm (Fin n)) :=
      Fintype.card_pos_iff.mpr ⟨Equiv.refl (Fin n)⟩
    have hposRat : 0 < permCard := by
      dsimp [permCard]
      exact_mod_cast hpos
    exact hposRat.ne'
  have hcubeCard_ne : cubeCard ≠ 0 := by
    have hpos : 0 < 2 ^ n := Nat.pow_pos (by decide : 0 < 2)
    have hposRat : 0 < cubeCard := by
      dsimp [cubeCard]
      exact_mod_cast hpos
    exact hposRat.ne'
  have hchooseCard_ne : chooseCard ≠ 0 := by
    have hpos : 0 < Nat.choose n d := Nat.choose_pos hd_le
    have hposRat : 0 < chooseCard := by
      dsimp [chooseCard]
      exact_mod_cast hpos
    exact hposRat.ne'
  have hcardNat :
      Nat.choose n d *
          Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
            (binaryCodePairDifferenceCell C
              ((binaryWordPermEquiv sigma).symm diff)).card) =
        Fintype.card (Equiv.Perm (Fin n)) *
          (binaryCodePairDistanceCell C d).card := by
    simpa [d, diff, hdist_support] using
      binaryPermutedCodePairDifferenceCell_sum_card_identity C diff
  have hcard :
      chooseCard * baseSum = permCard * distanceCard := by
    have hcast :
        ((Nat.choose n d *
          Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
            (binaryCodePairDifferenceCell C
              ((binaryWordPermEquiv sigma).symm diff)).card) : Nat) : Rat) =
          ((Fintype.card (Equiv.Perm (Fin n)) *
            (binaryCodePairDistanceCell C d).card : Nat) : Rat) := by
      exact_mod_cast hcardNat
    simpa [chooseCard, baseSum, permCard, distanceCard, Nat.cast_mul,
      Nat.cast_sum] using hcast
  rw [binaryTranslatedCodeOrbitAverageMatrix_apply_difference_card_sum]
  rw [binaryCodeCellX_zeroCoeff_eq_pairDistanceCell_card C hd_le]
  change permCard⁻¹ * (cubeCard⁻¹ * baseSum) =
    distanceCard / (cubeCard * chooseCard)
  field_simp [hpermCard_ne, hcubeCard_ne, hchooseCard_ne]
  simpa [mul_assoc, mul_left_comm, mul_comm] using hcard

theorem binaryTranslatedCodeOrbitAverageMatrix_eq_zeroCoeffTerwilliger {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    binaryTranslatedCodeOrbitAverageMatrix C =
      binaryTerwilligerMatrix
        (fun idx : BinaryOrbitIndex n =>
          binaryZeroCoeff (binaryCodeCellX C) (binaryOrbitDistanceIndex idx)) := by
  ext u v
  exact binaryTranslatedCodeOrbitAverageMatrix_entry_eq_zeroCoeff C u v

theorem binaryTranslatedPairOrbitAverage_card_sum_eq_zeroCoeff {n : Nat}
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) :
    (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) *
        ((((2 ^ n : Nat) : Rat)⁻¹) *
          Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
            ((binaryTranslatedPairBaseCell C
              ((binaryWordPermEquiv sigma).symm u)
              ((binaryWordPermEquiv sigma).symm v)).card : Rat))) =
      binaryZeroCoeff (binaryCodeCellX C)
        (binaryOrbitDistanceIndex (binaryOrbitOf u v)) := by
  rw [← binaryTranslatedCodeOrbitAverageMatrix_apply_pair_card_sum]
  exact binaryTranslatedCodeOrbitAverageMatrix_entry_eq_zeroCoeff C u v

theorem binarySlackWeightedTranslatedCodeOrbitAverageMatrix_apply_shell_card_sum_sub_zeroCoeff
    {n : Nat} (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) :
    binarySlackWeightedTranslatedCodeOrbitAverageMatrix lambda beta C u v =
      (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) *
        ((((2 ^ n : Nat) : Rat)⁻¹) *
          Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
            Finset.univ.sum (fun i : Fin (n + 1) =>
              lambda i *
                ((binaryTranslatedPairShellBaseCell C
                  ((binaryWordPermEquiv sigma).symm u)
                  ((binaryWordPermEquiv sigma).symm v)
                  i.val).card : Rat)))) -
        beta *
          binaryZeroCoeff (binaryCodeCellX C)
            (binaryOrbitDistanceIndex (binaryOrbitOf u v)) := by
  rw [binarySlackWeightedTranslatedCodeOrbitAverageMatrix_apply_shell_card_sum]
  rw [Finset.sum_sub_distrib]
  rw [← Finset.mul_sum]
  rw [← binaryTranslatedPairOrbitAverage_card_sum_eq_zeroCoeff C u v]
  ring

/--
Weighted shell-count identity needed to identify the slack-weighted translated
orbit average with the Lasserre Terwilliger matrix.
-/
def BinaryWeightedTranslatedPairShellOrbitAverageCardIdentity {n : Nat}
    (lambda : Fin (n + 1) -> Rat) (C : Finset (QaryWord 2 n)) : Prop :=
  forall u v : QaryWord 2 n,
    (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) *
        ((((2 ^ n : Nat) : Rat)⁻¹) *
          Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
            Finset.univ.sum (fun i : Fin (n + 1) =>
              lambda i *
                ((binaryTranslatedPairShellBaseCell C
                  ((binaryWordPermEquiv sigma).symm u)
                  ((binaryWordPermEquiv sigma).symm v)
                  i.val).card : Rat)))) =
      Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        binaryLasserreTargetCoeff lambda (binaryOrbitOf u v) target *
          binaryCodeCellX C target)

/--
Per-shell version of `BinaryWeightedTranslatedPairShellOrbitAverageCardIdentity`.
This is the remaining eta-coefficient counting target: for each shell `i`, the
orbit-averaged translated shell count should expand in the code-cell basis with
coefficients `binaryEtaCoeff`.
-/
def BinaryTranslatedPairShellOrbitAverageCardIdentity {n : Nat}
    (C : Finset (QaryWord 2 n)) : Prop :=
  forall (u v : QaryWord 2 n) (i : Fin (n + 1)),
    (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) *
        ((((2 ^ n : Nat) : Rat)⁻¹) *
          Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
            ((binaryTranslatedPairShellBaseCell C
              ((binaryWordPermEquiv sigma).symm u)
              ((binaryWordPermEquiv sigma).symm v)
              i.val).card : Rat))) =
      Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        binaryEtaCoeff n (binaryOrbitOf u v) target i.val *
          binaryCodeCellX C target)

/--
The part of a translated shell cell whose resulting ordered code triple lands
in a prescribed target orbit.
-/
def binaryTranslatedPairShellTargetCell {n : Nat}
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) (d : Nat)
    (target : BinaryOrbitIndex n) :
    Finset (QaryWord 2 n × QaryWord 2 n) :=
  (binaryTranslatedPairShellBaseCell C u v d).filter (fun item =>
    binaryCodeTripleOrbitOf
      ((binaryXorWord item.1 u, binaryXorWord item.1 v), item.2) = target)

@[simp]
theorem mem_binaryTranslatedPairShellTargetCell {n : Nat}
    {C : Finset (QaryWord 2 n)} {u v : QaryWord 2 n} {d : Nat}
    {target : BinaryOrbitIndex n} {item : QaryWord 2 n × QaryWord 2 n} :
    item ∈ binaryTranslatedPairShellTargetCell C u v d target ↔
      item.2 ∈ C ∧ dist item.1 item.2 = d ∧
        binaryXorWord item.1 u ∈ C ∧ binaryXorWord item.1 v ∈ C ∧
          binaryCodeTripleOrbitOf
            ((binaryXorWord item.1 u, binaryXorWord item.1 v), item.2) =
              target := by
  simp [binaryTranslatedPairShellTargetCell, and_assoc]

/-- The target relative pair of a translated shell item, based at its codeword. -/
def binaryTranslatedPairShellRelativeTargetPair {n : Nat}
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (item : QaryWord 2 n × QaryWord 2 n) :
    QaryWord 2 n × QaryWord 2 n :=
  (binaryXorWord item.2 (binaryXorWord item.1 sourcePair.1),
    binaryXorWord item.2 (binaryXorWord item.1 sourcePair.2))

/-- Translated shell items with a prescribed exact target relative pair. -/
def binaryTranslatedPairShellExactTargetPairCell {n : Nat}
    (C : Finset (QaryWord 2 n)) (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (d : Nat) (targetPair : QaryWord 2 n × QaryWord 2 n) :
    Finset (QaryWord 2 n × QaryWord 2 n) :=
  (binaryTranslatedPairShellBaseCell C sourcePair.1 sourcePair.2 d).filter
    (fun item =>
      binaryTranslatedPairShellRelativeTargetPair sourcePair item = targetPair)

@[simp]
theorem mem_binaryTranslatedPairShellExactTargetPairCell {n : Nat}
    {C : Finset (QaryWord 2 n)} {sourcePair targetPair : QaryWord 2 n × QaryWord 2 n}
    {d : Nat} {item : QaryWord 2 n × QaryWord 2 n} :
    item ∈ binaryTranslatedPairShellExactTargetPairCell C sourcePair d targetPair ↔
      item.2 ∈ C ∧ dist item.1 item.2 = d ∧
        binaryXorWord item.1 sourcePair.1 ∈ C ∧
          binaryXorWord item.1 sourcePair.2 ∈ C ∧
            binaryTranslatedPairShellRelativeTargetPair sourcePair item =
              targetPair := by
  simp [binaryTranslatedPairShellExactTargetPairCell, and_assoc]

/-- A source pair and target pair differ by one binary shell word of weight `d`. -/
def binaryPairShellCompatible {n : Nat}
    (sourcePair targetPair : QaryWord 2 n × QaryWord 2 n) (d : Nat) : Prop :=
  binaryXorWord sourcePair.1 targetPair.1 =
      binaryXorWord sourcePair.2 targetPair.2 ∧
    (binarySupport n (binaryXorWord sourcePair.1 targetPair.1)).card = d

instance binaryPairShellCompatible_decidable {n : Nat}
    (sourcePair targetPair : QaryWord 2 n × QaryWord 2 n) (d : Nat) :
    Decidable (binaryPairShellCompatible sourcePair targetPair d) := by
  unfold binaryPairShellCompatible
  infer_instance

theorem binaryPairShellCompatible_left_word {n : Nat}
    {sourcePair targetPair : QaryWord 2 n × QaryWord 2 n} {d : Nat}
    (_hcompat : binaryPairShellCompatible sourcePair targetPair d) :
    binaryXorWord (binaryXorWord sourcePair.1 targetPair.1) sourcePair.1 =
      targetPair.1 :=
  binaryXorWord_xor_eq_left rfl

theorem binaryPairShellCompatible_right_word {n : Nat}
    {sourcePair targetPair : QaryWord 2 n × QaryWord 2 n} {d : Nat}
    (hcompat : binaryPairShellCompatible sourcePair targetPair d) :
    binaryXorWord (binaryXorWord sourcePair.1 targetPair.1) sourcePair.2 =
      targetPair.2 := by
  exact binaryXorWord_xor_eq_left hcompat.1.symm

theorem binaryPairShellCompatible_of_mem_exactTargetPairCell {n : Nat}
    {C : Finset (QaryWord 2 n)} {sourcePair targetPair : QaryWord 2 n × QaryWord 2 n}
    {d : Nat} {item : QaryWord 2 n × QaryWord 2 n}
    (hitem :
      item ∈ binaryTranslatedPairShellExactTargetPairCell C sourcePair d targetPair) :
    binaryPairShellCompatible sourcePair targetPair d := by
  rw [mem_binaryTranslatedPairShellExactTargetPairCell] at hitem
  rcases hitem with ⟨_hcode, hdist, _hleft, _hright, htarget⟩
  have hleftTarget :=
    congrArg Prod.fst htarget
  have hrightTarget :=
    congrArg Prod.snd htarget
  have hleftDiff :
      binaryXorWord sourcePair.1 targetPair.1 =
        binaryXorWord item.1 item.2 := by
    rw [← hleftTarget]
    exact binaryXorWord_source_relativeTarget_eq_baseDiff
      sourcePair.1 item.1 item.2
  have hrightDiff :
      binaryXorWord sourcePair.2 targetPair.2 =
        binaryXorWord item.1 item.2 := by
    rw [← hrightTarget]
    exact binaryXorWord_source_relativeTarget_eq_baseDiff
      sourcePair.2 item.1 item.2
  refine ⟨hleftDiff.trans hrightDiff.symm, ?_⟩
  rw [hleftDiff]
  simpa [dist_eq_binarySupport_binaryXorWord_card] using hdist

theorem binaryPairShellCompatible_permuted {n : Nat}
    (sourcePair targetPair : QaryWord 2 n × QaryWord 2 n)
    (sigma : Equiv.Perm (Fin n)) (d : Nat) :
    binaryPairShellCompatible
        (binaryPermutedRelativeWordPair sourcePair.1 sourcePair.2 sigma)
        (binaryPermutedRelativeWordPair targetPair.1 targetPair.2 sigma) d ↔
      binaryPairShellCompatible sourcePair targetPair d := by
  have hsupport :
      forall word : QaryWord 2 n,
        (binarySupport n ((binaryWordPermEquiv sigma).symm word)).card =
          (binarySupport n word).card := by
    intro word
    rw [binaryWordPermEquiv_symm_eq, binarySupport_wordPerm,
      Finset.card_image_of_injective _ sigma.symm.injective]
  constructor
  · intro h
    unfold binaryPairShellCompatible at h ⊢
    constructor
    · have hx :
          (binaryWordPermEquiv sigma).symm
              (binaryXorWord sourcePair.1 targetPair.1) =
            (binaryWordPermEquiv sigma).symm
              (binaryXorWord sourcePair.2 targetPair.2) := by
        simpa [binaryPermutedRelativeWordPair] using h.1
      exact (binaryWordPermEquiv sigma).symm.injective hx
    · have hw :
          (binarySupport n
            ((binaryWordPermEquiv sigma).symm
              (binaryXorWord sourcePair.1 targetPair.1))).card = d := by
        simpa [binaryPermutedRelativeWordPair] using h.2
      exact (hsupport (binaryXorWord sourcePair.1 targetPair.1)).symm.trans hw
  · intro h
    unfold binaryPairShellCompatible at h ⊢
    constructor
    · have hx := congrArg ((binaryWordPermEquiv sigma).symm) h.1
      simpa [binaryPermutedRelativeWordPair] using hx
    · change
        (binarySupport n
          (binaryXorWord ((binaryWordPermEquiv sigma).symm sourcePair.1)
            ((binaryWordPermEquiv sigma).symm targetPair.1))).card = d
      rw [binaryXorWord_wordPerm_symm,
        hsupport (binaryXorWord sourcePair.1 targetPair.1)]
      exact h.2

theorem binaryTranslatedPairShellExactTargetPairCell_card_eq_relativeBaseCell_card_of_compatible
    {n : Nat} (C : Finset (QaryWord 2 n))
    (sourcePair targetPair : QaryWord 2 n × QaryWord 2 n) (d : Nat)
    (hcompat : binaryPairShellCompatible sourcePair targetPair d) :
    (binaryTranslatedPairShellExactTargetPairCell C sourcePair d targetPair).card =
      (binaryRelativeCodeBaseCell C targetPair.1 targetPair.2).card := by
  classical
  let shellWord : QaryWord 2 n := binaryXorWord sourcePair.1 targetPair.1
  have hleftWord :
      binaryXorWord shellWord sourcePair.1 = targetPair.1 := by
    simpa [shellWord] using binaryPairShellCompatible_left_word hcompat
  have hrightWord :
      binaryXorWord shellWord sourcePair.2 = targetPair.2 := by
    simpa [shellWord] using binaryPairShellCompatible_right_word hcompat
  apply Finset.card_bij (fun item _ => item.2)
  · intro item hitem
    have hexact := mem_binaryTranslatedPairShellExactTargetPairCell.mp hitem
    rw [mem_binaryRelativeCodeBaseCell]
    refine ⟨hexact.1, ?_, ?_⟩
    · have htarget := congrArg Prod.fst hexact.2.2.2.2
      have hcode :
          binaryXorWord item.2 targetPair.1 =
            binaryXorWord item.1 sourcePair.1 :=
        binaryXorWord_xor_eq_right htarget
      simpa [hcode] using hexact.2.2.1
    · have htarget := congrArg Prod.snd hexact.2.2.2.2
      have hcode :
          binaryXorWord item.2 targetPair.2 =
            binaryXorWord item.1 sourcePair.2 :=
        binaryXorWord_xor_eq_right htarget
      simpa [hcode] using hexact.2.2.2.1
  · intro item hitem item' hitem' hcode
    have htarget := (mem_binaryTranslatedPairShellExactTargetPairCell.mp hitem).2.2.2.2
    have htarget' := (mem_binaryTranslatedPairShellExactTargetPairCell.mp hitem').2.2.2.2
    have hleft := congrArg Prod.fst htarget
    have hleft' := congrArg Prod.fst htarget'
    have hxor :
        binaryXorWord item.1 sourcePair.1 =
          binaryXorWord item'.1 sourcePair.1 := by
      have hsame :
          binaryXorWord item.2 (binaryXorWord item.1 sourcePair.1) =
            binaryXorWord item.2 (binaryXorWord item'.1 sourcePair.1) := by
        simpa [binaryTranslatedPairShellRelativeTargetPair, ← hcode] using
          hleft.trans hleft'.symm
      have hcancel := congrArg (fun word => binaryXorWord item.2 word) hsame
      simpa using hcancel
    have hbase :
        item.1 = item'.1 := by
      have hcancel := congrArg (fun word => binaryXorWord word sourcePair.1) hxor
      simpa using hcancel
    exact Prod.ext hbase hcode
  · intro code hcode
    rw [mem_binaryRelativeCodeBaseCell] at hcode
    refine ⟨(binaryXorWord code shellWord, code), ?_, rfl⟩
    rw [mem_binaryTranslatedPairShellExactTargetPairCell]
    have hleftCode :
        binaryXorWord (binaryXorWord code shellWord) sourcePair.1 =
          binaryXorWord code targetPair.1 := by
      rw [binaryXorWord_assoc, hleftWord]
    have hrightCode :
        binaryXorWord (binaryXorWord code shellWord) sourcePair.2 =
          binaryXorWord code targetPair.2 := by
      rw [binaryXorWord_assoc, hrightWord]
    refine ⟨hcode.1, ?_, by simpa [hleftCode] using hcode.2.1,
      by simpa [hrightCode] using hcode.2.2, ?_⟩
    · simpa [shellWord, hcompat.2] using dist_binaryXorWord_left code shellWord
    · apply Prod.ext
      · change
          binaryXorWord code
              (binaryXorWord (binaryXorWord code shellWord) sourcePair.1) =
            targetPair.1
        rw [hleftCode]
        simp
      · change
          binaryXorWord code
              (binaryXorWord (binaryXorWord code shellWord) sourcePair.2) =
            targetPair.2
        rw [hrightCode]
        simp

theorem binaryTranslatedPairShellExactTargetPairCell_card_eq_zero_of_not_compatible
    {n : Nat} (C : Finset (QaryWord 2 n))
    (sourcePair targetPair : QaryWord 2 n × QaryWord 2 n) (d : Nat)
    (hcompat : ¬ binaryPairShellCompatible sourcePair targetPair d) :
    (binaryTranslatedPairShellExactTargetPairCell C sourcePair d targetPair).card = 0 := by
  rw [Finset.card_eq_zero]
  rw [Finset.eq_empty_iff_forall_notMem]
  intro item hitem
  exact hcompat (binaryPairShellCompatible_of_mem_exactTargetPairCell hitem)

theorem binaryTranslatedPairShellRelativeTargetPair_orbitOf {n : Nat}
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (item : QaryWord 2 n × QaryWord 2 n) :
    binaryOrbitOf
        (binaryTranslatedPairShellRelativeTargetPair sourcePair item).1
        (binaryTranslatedPairShellRelativeTargetPair sourcePair item).2 =
      binaryCodeTripleOrbitOf
        ((binaryXorWord item.1 sourcePair.1,
          binaryXorWord item.1 sourcePair.2), item.2) := by
  exact binaryCodeTripleOrbitOf_eq_orbitOf_relative
    ((binaryXorWord item.1 sourcePair.1,
      binaryXorWord item.1 sourcePair.2), item.2)

theorem binaryTranslatedPairShellTargetCell_card_eq_sum_exactTargetPairCell_card_nat
    {n : Nat} (C : Finset (QaryWord 2 n))
    (sourcePair : QaryWord 2 n × QaryWord 2 n) (d : Nat)
    (target : BinaryOrbitIndex n) :
    (binaryTranslatedPairShellTargetCell C sourcePair.1 sourcePair.2 d target).card =
      (binaryWordPairOrbitCell target).sum (fun targetPair =>
        (binaryTranslatedPairShellExactTargetPairCell C sourcePair d targetPair).card) := by
  classical
  let s := binaryTranslatedPairShellTargetCell C sourcePair.1 sourcePair.2 d target
  let classOf : QaryWord 2 n × QaryWord 2 n -> QaryWord 2 n × QaryWord 2 n :=
    fun item => binaryTranslatedPairShellRelativeTargetPair sourcePair item
  have hmaps :
      (s : Set (QaryWord 2 n × QaryWord 2 n)).MapsTo classOf
        ((binaryWordPairOrbitCell target) : Set (QaryWord 2 n × QaryWord 2 n)) := by
    intro item hitem
    change classOf item ∈ binaryWordPairOrbitCell target
    rw [mem_binaryWordPairOrbitCell]
    have htarget :=
      (mem_binaryTranslatedPairShellTargetCell.mp hitem).2.2.2.2
    simpa [classOf] using
      (binaryTranslatedPairShellRelativeTargetPair_orbitOf sourcePair item).trans htarget
  calc
    (binaryTranslatedPairShellTargetCell C sourcePair.1 sourcePair.2 d target).card =
        s.card := rfl
    _ = ∑ targetPair ∈ binaryWordPairOrbitCell target,
        (s.filter (fun item => classOf item = targetPair)).card := by
          exact Finset.card_eq_sum_card_fiberwise hmaps
    _ = (binaryWordPairOrbitCell target).sum (fun targetPair =>
        (binaryTranslatedPairShellExactTargetPairCell C sourcePair d targetPair).card) := by
          apply Finset.sum_congr rfl
          intro targetPair htargetPair
          apply congrArg Finset.card
          ext item
          constructor
          · intro hitem
            rw [Finset.mem_filter] at hitem
            have hcell := mem_binaryTranslatedPairShellTargetCell.mp hitem.1
            rw [mem_binaryTranslatedPairShellExactTargetPairCell]
            exact ⟨hcell.1, hcell.2.1, hcell.2.2.1,
              hcell.2.2.2.1, by simpa [classOf] using hitem.2⟩
          · intro hitem
            rw [Finset.mem_filter]
            have hexact := mem_binaryTranslatedPairShellExactTargetPairCell.mp hitem
            refine ⟨?_, by simpa [classOf] using hexact.2.2.2.2⟩
            rw [mem_binaryTranslatedPairShellTargetCell]
            refine ⟨hexact.1, hexact.2.1, hexact.2.2.1,
              hexact.2.2.2.1, ?_⟩
            have htargetPairOrbit := mem_binaryWordPairOrbitCell.mp htargetPair
            have hclassOrbit :
                binaryOrbitOf
                    (binaryTranslatedPairShellRelativeTargetPair sourcePair item).1
                    (binaryTranslatedPairShellRelativeTargetPair sourcePair item).2 =
                  target := by
              simpa [hexact.2.2.2.2] using htargetPairOrbit
            exact
              (binaryTranslatedPairShellRelativeTargetPair_orbitOf sourcePair item).symm.trans
                hclassOrbit

theorem binaryTranslatedPairShellTargetCell_card_eq_sum_exactTargetPairCell_card
    {n : Nat} (C : Finset (QaryWord 2 n))
    (sourcePair : QaryWord 2 n × QaryWord 2 n) (d : Nat)
    (target : BinaryOrbitIndex n) :
    ((binaryTranslatedPairShellTargetCell C sourcePair.1 sourcePair.2 d target).card : Rat) =
      (binaryWordPairOrbitCell target).sum (fun targetPair =>
        ((binaryTranslatedPairShellExactTargetPairCell C sourcePair d targetPair).card : Rat)) := by
  exact_mod_cast
    binaryTranslatedPairShellTargetCell_card_eq_sum_exactTargetPairCell_card_nat
      C sourcePair d target

theorem binaryTranslatedPairShellBaseCell_card_eq_sum_targetCell_card_nat
    {n : Nat} (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) (d : Nat) :
    (binaryTranslatedPairShellBaseCell C u v d).card =
      Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryTranslatedPairShellTargetCell C u v d target).card) := by
  classical
  let s := binaryTranslatedPairShellBaseCell C u v d
  let classOf : QaryWord 2 n × QaryWord 2 n -> BinaryOrbitIndex n :=
    fun item =>
      binaryCodeTripleOrbitOf
        ((binaryXorWord item.1 u, binaryXorWord item.1 v), item.2)
  have hmaps :
      (s : Set (QaryWord 2 n × QaryWord 2 n)).MapsTo classOf
        ((Finset.univ : Finset (BinaryOrbitIndex n)) : Set (BinaryOrbitIndex n)) := by
    intro item _hitem
    simp
  calc
    (binaryTranslatedPairShellBaseCell C u v d).card = s.card := rfl
    _ = ∑ target ∈ (Finset.univ : Finset (BinaryOrbitIndex n)),
        (s.filter (fun item => classOf item = target)).card := by
          exact Finset.card_eq_sum_card_fiberwise hmaps
    _ = Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryTranslatedPairShellTargetCell C u v d target).card) := by
          simp [s, classOf, binaryTranslatedPairShellTargetCell]

theorem binaryTranslatedPairShellBaseCell_card_eq_sum_targetCell_card
    {n : Nat} (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) (d : Nat) :
    ((binaryTranslatedPairShellBaseCell C u v d).card : Rat) =
      Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        ((binaryTranslatedPairShellTargetCell C u v d target).card : Rat)) := by
  exact_mod_cast
    binaryTranslatedPairShellBaseCell_card_eq_sum_targetCell_card_nat C u v d

/-- Source pairs in `source` compatible with a fixed target pair and shell radius. -/
def binaryPairShellSourceCell {n : Nat}
    (source : BinaryOrbitIndex n) (targetPair : QaryWord 2 n × QaryWord 2 n)
    (d : Nat) : Finset (QaryWord 2 n × QaryWord 2 n) :=
  (binaryWordPairOrbitCell source).filter (fun sourcePair =>
    binaryPairShellCompatible sourcePair targetPair d)

/-- Target pairs in `target` compatible with a fixed source pair and shell radius. -/
def binaryPairShellTargetCell {n : Nat}
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (target : BinaryOrbitIndex n) (d : Nat) :
    Finset (QaryWord 2 n × QaryWord 2 n) :=
  (binaryWordPairOrbitCell target).filter (fun targetPair =>
    binaryPairShellCompatible sourcePair targetPair d)

/-- Four coordinate subsets chosen from the 00, 01, 10, and 11 cells. -/
abbrev BinaryPairShellSupportChoice (n : Nat) :=
  (((Finset (Fin n) × Finset (Fin n)) × Finset (Fin n)) × Finset (Fin n))

def binaryPairShellSupportChoice00 {n : Nat}
    (choice : BinaryPairShellSupportChoice n) : Finset (Fin n) :=
  choice.1.1.1

def binaryPairShellSupportChoice01 {n : Nat}
    (choice : BinaryPairShellSupportChoice n) : Finset (Fin n) :=
  choice.1.1.2

def binaryPairShellSupportChoice10 {n : Nat}
    (choice : BinaryPairShellSupportChoice n) : Finset (Fin n) :=
  choice.1.2

def binaryPairShellSupportChoice11 {n : Nat}
    (choice : BinaryPairShellSupportChoice n) : Finset (Fin n) :=
  choice.2

/-- Support choices with fixed `a00`, `a01`, `a10`, and `a11` parameters. -/
def binaryPairShellSupportChoices {n : Nat}
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (a00 a01 a10 a11 : Nat) :
    Finset (BinaryPairShellSupportChoice n) :=
  (((binaryPairSupport00 sourcePair.1 sourcePair.2).powersetCard a00).product
      ((binaryPairSupport01 sourcePair.1 sourcePair.2).powersetCard a01)).product
    ((binaryPairSupport10 sourcePair.1 sourcePair.2).powersetCard a10) |>.product
      ((binaryPairSupport11 sourcePair.1 sourcePair.2).powersetCard a11)

def binaryPairShellSupportChoiceUnion {n : Nat}
    (choice : BinaryPairShellSupportChoice n) : Finset (Fin n) :=
  binaryPairShellSupportChoice00 choice ∪
    binaryPairShellSupportChoice01 choice ∪
      binaryPairShellSupportChoice10 choice ∪
        binaryPairShellSupportChoice11 choice

def binaryPairShellSupportChoiceTargetPair {n : Nat}
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (choice : BinaryPairShellSupportChoice n) :
    QaryWord 2 n × QaryWord 2 n :=
  (binaryFlipOn sourcePair.1 (binaryPairShellSupportChoiceUnion choice),
    binaryFlipOn sourcePair.2 (binaryPairShellSupportChoiceUnion choice))

def binaryPairShellTargetPairSupport {n : Nat}
    (sourcePair targetPair : QaryWord 2 n × QaryWord 2 n) :
    Finset (Fin n) :=
  binarySupport n (binaryXorWord sourcePair.1 targetPair.1)

def binaryPairShellTargetPairSupportChoice {n : Nat}
    (sourcePair targetPair : QaryWord 2 n × QaryWord 2 n) :
    BinaryPairShellSupportChoice n :=
  let S := binaryPairShellTargetPairSupport sourcePair targetPair
  (((S ∩ binaryPairSupport00 sourcePair.1 sourcePair.2,
      S ∩ binaryPairSupport01 sourcePair.1 sourcePair.2),
      S ∩ binaryPairSupport10 sourcePair.1 sourcePair.2),
      S ∩ binaryPairSupport11 sourcePair.1 sourcePair.2)

@[simp]
theorem binaryPairShellTargetPairSupportChoice_00 {n : Nat}
    (sourcePair targetPair : QaryWord 2 n × QaryWord 2 n) :
    binaryPairShellSupportChoice00
        (binaryPairShellTargetPairSupportChoice sourcePair targetPair) =
      binaryPairShellTargetPairSupport sourcePair targetPair ∩
        binaryPairSupport00 sourcePair.1 sourcePair.2 := by
  rfl

@[simp]
theorem binaryPairShellTargetPairSupportChoice_01 {n : Nat}
    (sourcePair targetPair : QaryWord 2 n × QaryWord 2 n) :
    binaryPairShellSupportChoice01
        (binaryPairShellTargetPairSupportChoice sourcePair targetPair) =
      binaryPairShellTargetPairSupport sourcePair targetPair ∩
        binaryPairSupport01 sourcePair.1 sourcePair.2 := by
  rfl

@[simp]
theorem binaryPairShellTargetPairSupportChoice_10 {n : Nat}
    (sourcePair targetPair : QaryWord 2 n × QaryWord 2 n) :
    binaryPairShellSupportChoice10
        (binaryPairShellTargetPairSupportChoice sourcePair targetPair) =
      binaryPairShellTargetPairSupport sourcePair targetPair ∩
        binaryPairSupport10 sourcePair.1 sourcePair.2 := by
  rfl

@[simp]
theorem binaryPairShellTargetPairSupportChoice_11 {n : Nat}
    (sourcePair targetPair : QaryWord 2 n × QaryWord 2 n) :
    binaryPairShellSupportChoice11
        (binaryPairShellTargetPairSupportChoice sourcePair targetPair) =
      binaryPairShellTargetPairSupport sourcePair targetPair ∩
        binaryPairSupport11 sourcePair.1 sourcePair.2 := by
  rfl

theorem binaryPairShellSupportChoiceTargetPair_left_xor_support {n : Nat}
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (choice : BinaryPairShellSupportChoice n) :
    binarySupport n
        (binaryXorWord sourcePair.1
          (binaryPairShellSupportChoiceTargetPair sourcePair choice).1) =
      binaryPairShellSupportChoiceUnion choice := by
  rw [binaryPairShellSupportChoiceTargetPair, binaryXorWord_flipOn_right,
    binaryFlipOn_zero_support_eq]

theorem binaryPairShellSupportChoiceTargetPair_right_xor_support {n : Nat}
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (choice : BinaryPairShellSupportChoice n) :
    binarySupport n
        (binaryXorWord sourcePair.2
          (binaryPairShellSupportChoiceTargetPair sourcePair choice).2) =
      binaryPairShellSupportChoiceUnion choice := by
  rw [binaryPairShellSupportChoiceTargetPair, binaryXorWord_flipOn_right,
    binaryFlipOn_zero_support_eq]

theorem binaryPairShellTargetPairSupportChoice_union {n : Nat}
    (sourcePair targetPair : QaryWord 2 n × QaryWord 2 n) :
    binaryPairShellSupportChoiceUnion
        (binaryPairShellTargetPairSupportChoice sourcePair targetPair) =
      binaryPairShellTargetPairSupport sourcePair targetPair := by
  let S := binaryPairShellTargetPairSupport sourcePair targetPair
  ext coord
  constructor
  · intro hcoord
    simp only [binaryPairShellSupportChoiceUnion, Finset.mem_union,
      binaryPairShellTargetPairSupportChoice_00,
      binaryPairShellTargetPairSupportChoice_01,
      binaryPairShellTargetPairSupportChoice_10,
      binaryPairShellTargetPairSupportChoice_11, Finset.mem_inter] at hcoord
    rcases hcoord with h0010 | h11
    · rcases h0010 with h0001 | h10
      · rcases h0001 with h00 | h01
        · exact h00.1
        · exact h01.1
      · exact h10.1
    · exact h11.1
  · intro hcoord
    rcases binaryPairSupportCell_exhaustive sourcePair.1 sourcePair.2 coord with
      ⟨cat, hcat⟩
    cases cat
    · exact Finset.mem_union.mpr (Or.inr
        (Finset.mem_inter.mpr ⟨hcoord, by
          simpa [binaryPairSupportCell] using hcat⟩))
    · exact Finset.mem_union.mpr (Or.inl (Finset.mem_union.mpr (Or.inr
        (Finset.mem_inter.mpr ⟨hcoord, by
          simpa [binaryPairSupportCell] using hcat⟩))))
    · exact Finset.mem_union.mpr (Or.inl (Finset.mem_union.mpr (Or.inl
        (Finset.mem_union.mpr (Or.inr
          (Finset.mem_inter.mpr ⟨hcoord, by
            simpa [binaryPairSupportCell] using hcat⟩))))))
    · exact Finset.mem_union.mpr (Or.inl (Finset.mem_union.mpr (Or.inl
        (Finset.mem_union.mpr (Or.inl
        (Finset.mem_inter.mpr ⟨hcoord, by
          simpa [binaryPairSupportCell] using hcat⟩))))))

theorem binaryPairShellSupportChoiceTargetPair_inverse {n : Nat}
    {sourcePair targetPair : QaryWord 2 n × QaryWord 2 n}
    (hcompat : binaryPairShellCompatible sourcePair targetPair
      (binaryPairShellTargetPairSupport sourcePair targetPair).card) :
    binaryPairShellSupportChoiceTargetPair sourcePair
        (binaryPairShellTargetPairSupportChoice sourcePair targetPair) =
      targetPair := by
  apply Prod.ext
  · rw [binaryPairShellSupportChoiceTargetPair,
      binaryPairShellTargetPairSupportChoice_union,
      binaryPairShellTargetPairSupport]
    exact binaryFlipOn_xorSupport_eq sourcePair.1 targetPair.1
  · rw [binaryPairShellSupportChoiceTargetPair,
      binaryPairShellTargetPairSupportChoice_union,
      binaryPairShellTargetPairSupport]
    have hsame :
        binarySupport n (binaryXorWord sourcePair.2 targetPair.2) =
          binarySupport n (binaryXorWord sourcePair.1 targetPair.1) := by
      unfold binaryPairShellCompatible at hcompat
      rw [hcompat.1]
    rw [← hsame]
    exact binaryFlipOn_xorSupport_eq sourcePair.2 targetPair.2

theorem binaryPairShellTargetPairSupportChoice_mem_supportChoices {n : Nat}
    (sourcePair targetPair : QaryWord 2 n × QaryWord 2 n) :
    binaryPairShellTargetPairSupportChoice sourcePair targetPair ∈
      binaryPairShellSupportChoices sourcePair
        (binaryPairShellSupportChoice00
          (binaryPairShellTargetPairSupportChoice sourcePair targetPair)).card
        (binaryPairShellSupportChoice01
          (binaryPairShellTargetPairSupportChoice sourcePair targetPair)).card
        (binaryPairShellSupportChoice10
          (binaryPairShellTargetPairSupportChoice sourcePair targetPair)).card
        (binaryPairShellSupportChoice11
          (binaryPairShellTargetPairSupportChoice sourcePair targetPair)).card := by
  unfold binaryPairShellSupportChoices binaryPairShellTargetPairSupportChoice
    binaryPairShellSupportChoice00 binaryPairShellSupportChoice01
    binaryPairShellSupportChoice10 binaryPairShellSupportChoice11
  simp

@[simp]
theorem mem_binaryPairShellSupportChoices {n : Nat}
    {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {choice : BinaryPairShellSupportChoice n}
    {a00 a01 a10 a11 : Nat} :
    choice ∈ binaryPairShellSupportChoices sourcePair a00 a01 a10 a11 ↔
      binaryPairShellSupportChoice00 choice ∈
          (binaryPairSupport00 sourcePair.1 sourcePair.2).powersetCard a00 ∧
        binaryPairShellSupportChoice01 choice ∈
          (binaryPairSupport01 sourcePair.1 sourcePair.2).powersetCard a01 ∧
        binaryPairShellSupportChoice10 choice ∈
          (binaryPairSupport10 sourcePair.1 sourcePair.2).powersetCard a10 ∧
        binaryPairShellSupportChoice11 choice ∈
          (binaryPairSupport11 sourcePair.1 sourcePair.2).powersetCard a11 := by
  rcases choice with ⟨⟨⟨S00, S01⟩, S10⟩, S11⟩
  simp [binaryPairShellSupportChoices, binaryPairShellSupportChoice00,
    binaryPairShellSupportChoice01, binaryPairShellSupportChoice10,
    binaryPairShellSupportChoice11, and_assoc]

theorem binaryPairShellSupportChoices_card_of_mem_orbit {n : Nat}
    {source : BinaryOrbitIndex n} {sourcePair : QaryWord 2 n × QaryWord 2 n}
    (hsource : sourcePair ∈ binaryWordPairOrbitCell source)
    (a00 a01 a10 a11 : Nat) :
    (binaryPairShellSupportChoices sourcePair a00 a01 a10 a11).card =
      Nat.choose (n + source.t - source.i - source.j) a00 *
        Nat.choose (source.j - source.t) a01 *
          Nat.choose (source.i - source.t) a10 *
            Nat.choose source.t a11 := by
  have horbit := mem_binaryWordPairOrbitCell.mp hsource
  have h00 :
      (binaryPairSupport00 sourcePair.1 sourcePair.2).card =
        n + source.t - source.i - source.j := by
    have hraw := binaryPairSupport00_card sourcePair.1 sourcePair.2
    rw [horbit] at hraw
    have hrewrite :
        n - (source.i + source.j - source.t) =
          n + source.t - source.i - source.j := by
      have ht_i := source.ht_i
      have ht_j := source.ht_j
      have hij := source.hij
      omega
    exact hraw.trans hrewrite
  have h01 :
      (binaryPairSupport01 sourcePair.1 sourcePair.2).card =
        source.j - source.t := by
    have hraw := binaryPairSupport01_card sourcePair.1 sourcePair.2
    simp [horbit] at hraw ⊢
  have h10 :
      (binaryPairSupport10 sourcePair.1 sourcePair.2).card =
        source.i - source.t := by
    have hraw := binaryPairSupport10_card sourcePair.1 sourcePair.2
    simp [horbit] at hraw ⊢
  have h11 :
      (binaryPairSupport11 sourcePair.1 sourcePair.2).card =
        source.t := by
    have hraw := binaryPairSupport11_card sourcePair.1 sourcePair.2
    simp [horbit] at hraw ⊢
  simp [binaryPairShellSupportChoices, h00, h01, h10, h11,
    Nat.mul_assoc]

theorem binaryPairShellSupportChoiceUnion_card_of_mem {n : Nat}
    {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {choice : BinaryPairShellSupportChoice n}
    {a00 a01 a10 a11 : Nat}
    (hchoice : choice ∈ binaryPairShellSupportChoices sourcePair a00 a01 a10 a11) :
    (binaryPairShellSupportChoiceUnion choice).card =
      a00 + a01 + a10 + a11 := by
  have hmem := mem_binaryPairShellSupportChoices.mp hchoice
  rcases hmem with ⟨h00mem, h01mem, h10mem, h11mem⟩
  have h00 := Finset.mem_powersetCard.mp h00mem
  have h01 := Finset.mem_powersetCard.mp h01mem
  have h10 := Finset.mem_powersetCard.mp h10mem
  have h11 := Finset.mem_powersetCard.mp h11mem
  let S00 := binaryPairShellSupportChoice00 choice
  let S01 := binaryPairShellSupportChoice01 choice
  let S10 := binaryPairShellSupportChoice10 choice
  let S11 := binaryPairShellSupportChoice11 choice
  have h00_01 : Disjoint S00 S01 := by
    rw [Finset.disjoint_left]
    intro coord hcoord00 hcoord01
    have hcell : Disjoint (binaryPairSupport00 sourcePair.1 sourcePair.2)
        (binaryPairSupport01 sourcePair.1 sourcePair.2) := by
      simpa [binaryPairSupportCell] using
        (binaryPairSupportCell_disjoint
          (u := sourcePair.1) (v := sourcePair.2)
          (cat := BinaryPairSupportCategory.bothZero)
          (cat' := BinaryPairSupportCategory.rightOne)
          (by decide))
    exact (Finset.disjoint_left.mp hcell)
      (by simpa [S00] using h00.1 hcoord00)
      (by simpa [S01] using h01.1 hcoord01)
  have h00_10 : Disjoint S00 S10 := by
    rw [Finset.disjoint_left]
    intro coord hcoord00 hcoord10
    have hcell : Disjoint (binaryPairSupport00 sourcePair.1 sourcePair.2)
        (binaryPairSupport10 sourcePair.1 sourcePair.2) := by
      simpa [binaryPairSupportCell] using
        (binaryPairSupportCell_disjoint
          (u := sourcePair.1) (v := sourcePair.2)
          (cat := BinaryPairSupportCategory.bothZero)
          (cat' := BinaryPairSupportCategory.leftOne)
          (by decide))
    exact (Finset.disjoint_left.mp hcell)
      (by simpa [S00] using h00.1 hcoord00)
      (by simpa [S10] using h10.1 hcoord10)
  have h01_10 : Disjoint S01 S10 := by
    rw [Finset.disjoint_left]
    intro coord hcoord01 hcoord10
    have hcell : Disjoint (binaryPairSupport01 sourcePair.1 sourcePair.2)
        (binaryPairSupport10 sourcePair.1 sourcePair.2) := by
      simpa [binaryPairSupportCell] using
        (binaryPairSupportCell_disjoint
          (u := sourcePair.1) (v := sourcePair.2)
          (cat := BinaryPairSupportCategory.rightOne)
          (cat' := BinaryPairSupportCategory.leftOne)
          (by decide))
    exact (Finset.disjoint_left.mp hcell)
      (by simpa [S01] using h01.1 hcoord01)
      (by simpa [S10] using h10.1 hcoord10)
  have h00_11 : Disjoint S00 S11 := by
    rw [Finset.disjoint_left]
    intro coord hcoord00 hcoord11
    have hcell : Disjoint (binaryPairSupport00 sourcePair.1 sourcePair.2)
        (binaryPairSupport11 sourcePair.1 sourcePair.2) := by
      simpa [binaryPairSupportCell] using
        (binaryPairSupportCell_disjoint
          (u := sourcePair.1) (v := sourcePair.2)
          (cat := BinaryPairSupportCategory.bothZero)
          (cat' := BinaryPairSupportCategory.bothOne)
          (by decide))
    exact (Finset.disjoint_left.mp hcell)
      (by simpa [S00] using h00.1 hcoord00)
      (by simpa [S11] using h11.1 hcoord11)
  have h01_11 : Disjoint S01 S11 := by
    rw [Finset.disjoint_left]
    intro coord hcoord01 hcoord11
    have hcell : Disjoint (binaryPairSupport01 sourcePair.1 sourcePair.2)
        (binaryPairSupport11 sourcePair.1 sourcePair.2) := by
      simpa [binaryPairSupportCell] using
        (binaryPairSupportCell_disjoint
          (u := sourcePair.1) (v := sourcePair.2)
          (cat := BinaryPairSupportCategory.rightOne)
          (cat' := BinaryPairSupportCategory.bothOne)
          (by decide))
    exact (Finset.disjoint_left.mp hcell)
      (by simpa [S01] using h01.1 hcoord01)
      (by simpa [S11] using h11.1 hcoord11)
  have h10_11 : Disjoint S10 S11 := by
    rw [Finset.disjoint_left]
    intro coord hcoord10 hcoord11
    have hcell : Disjoint (binaryPairSupport10 sourcePair.1 sourcePair.2)
        (binaryPairSupport11 sourcePair.1 sourcePair.2) := by
      simpa [binaryPairSupportCell] using
        (binaryPairSupportCell_disjoint
          (u := sourcePair.1) (v := sourcePair.2)
          (cat := BinaryPairSupportCategory.leftOne)
          (cat' := BinaryPairSupportCategory.bothOne)
          (by decide))
    exact (Finset.disjoint_left.mp hcell)
      (by simpa [S10] using h10.1 hcoord10)
      (by simpa [S11] using h11.1 hcoord11)
  have h001_10 : Disjoint (S00 ∪ S01) S10 := by
    rw [Finset.disjoint_left]
    intro coord hcoord hcoord10
    rcases Finset.mem_union.mp hcoord with hcoord00 | hcoord01
    · exact (Finset.disjoint_left.mp h00_10) hcoord00 hcoord10
    · exact (Finset.disjoint_left.mp h01_10) hcoord01 hcoord10
  have h0010_11 : Disjoint ((S00 ∪ S01) ∪ S10) S11 := by
    rw [Finset.disjoint_left]
    intro coord hcoord hcoord11
    rcases Finset.mem_union.mp hcoord with hcoord001 | hcoord10
    · rcases Finset.mem_union.mp hcoord001 with hcoord00 | hcoord01
      · exact (Finset.disjoint_left.mp h00_11) hcoord00 hcoord11
      · exact (Finset.disjoint_left.mp h01_11) hcoord01 hcoord11
    · exact (Finset.disjoint_left.mp h10_11) hcoord10 hcoord11
  unfold binaryPairShellSupportChoiceUnion
  change (((S00 ∪ S01) ∪ S10) ∪ S11).card = a00 + a01 + a10 + a11
  rw [Finset.card_union_of_disjoint h0010_11]
  rw [Finset.card_union_of_disjoint h001_10]
  rw [Finset.card_union_of_disjoint h00_01]
  rw [h00.2, h01.2, h10.2, h11.2]

theorem binaryPairShellSupportChoiceUnion_inter_00_of_mem {n : Nat}
    {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {choice : BinaryPairShellSupportChoice n}
    {a00 a01 a10 a11 : Nat}
    (hchoice : choice ∈ binaryPairShellSupportChoices sourcePair a00 a01 a10 a11) :
    binaryPairShellSupportChoiceUnion choice ∩
        binaryPairSupport00 sourcePair.1 sourcePair.2 =
      binaryPairShellSupportChoice00 choice := by
  have hmem := mem_binaryPairShellSupportChoices.mp hchoice
  rcases hmem with ⟨h00mem, h01mem, h10mem, h11mem⟩
  have h00 := (Finset.mem_powersetCard.mp h00mem).1
  have h01 := (Finset.mem_powersetCard.mp h01mem).1
  have h10 := (Finset.mem_powersetCard.mp h10mem).1
  have h11 := (Finset.mem_powersetCard.mp h11mem).1
  ext coord
  constructor
  · intro hcoord
    rcases Finset.mem_inter.mp hcoord with ⟨hunion, h00cell⟩
    simp only [binaryPairShellSupportChoiceUnion, Finset.mem_union] at hunion
    rcases hunion with h0010 | h11coord
    · rcases h0010 with h0001 | h10coord
      · rcases h0001 with h00coord | h01coord
        · exact h00coord
        · have hcell : Disjoint (binaryPairSupport01 sourcePair.1 sourcePair.2)
              (binaryPairSupport00 sourcePair.1 sourcePair.2) := by
            simpa [binaryPairSupportCell] using
              (binaryPairSupportCell_disjoint
                (u := sourcePair.1) (v := sourcePair.2)
                (cat := BinaryPairSupportCategory.rightOne)
                (cat' := BinaryPairSupportCategory.bothZero)
                (by decide))
          exact False.elim
            ((Finset.disjoint_left.mp hcell) (h01 h01coord) h00cell)
      · have hcell : Disjoint (binaryPairSupport10 sourcePair.1 sourcePair.2)
            (binaryPairSupport00 sourcePair.1 sourcePair.2) := by
          simpa [binaryPairSupportCell] using
            (binaryPairSupportCell_disjoint
              (u := sourcePair.1) (v := sourcePair.2)
              (cat := BinaryPairSupportCategory.leftOne)
              (cat' := BinaryPairSupportCategory.bothZero)
              (by decide))
        exact False.elim
          ((Finset.disjoint_left.mp hcell) (h10 h10coord) h00cell)
    · have hcell : Disjoint (binaryPairSupport11 sourcePair.1 sourcePair.2)
          (binaryPairSupport00 sourcePair.1 sourcePair.2) := by
        simpa [binaryPairSupportCell] using
          (binaryPairSupportCell_disjoint
            (u := sourcePair.1) (v := sourcePair.2)
            (cat := BinaryPairSupportCategory.bothOne)
            (cat' := BinaryPairSupportCategory.bothZero)
            (by decide))
      exact False.elim
        ((Finset.disjoint_left.mp hcell) (h11 h11coord) h00cell)
  · intro hcoord
    exact Finset.mem_inter.mpr
      ⟨by simp [binaryPairShellSupportChoiceUnion, hcoord],
        h00 hcoord⟩

theorem binaryPairShellSupportChoiceUnion_inter_01_of_mem {n : Nat}
    {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {choice : BinaryPairShellSupportChoice n}
    {a00 a01 a10 a11 : Nat}
    (hchoice : choice ∈ binaryPairShellSupportChoices sourcePair a00 a01 a10 a11) :
    binaryPairShellSupportChoiceUnion choice ∩
        binaryPairSupport01 sourcePair.1 sourcePair.2 =
      binaryPairShellSupportChoice01 choice := by
  have hmem := mem_binaryPairShellSupportChoices.mp hchoice
  rcases hmem with ⟨h00mem, h01mem, h10mem, h11mem⟩
  have h00 := (Finset.mem_powersetCard.mp h00mem).1
  have h01 := (Finset.mem_powersetCard.mp h01mem).1
  have h10 := (Finset.mem_powersetCard.mp h10mem).1
  have h11 := (Finset.mem_powersetCard.mp h11mem).1
  ext coord
  constructor
  · intro hcoord
    rcases Finset.mem_inter.mp hcoord with ⟨hunion, h01cell⟩
    simp only [binaryPairShellSupportChoiceUnion, Finset.mem_union] at hunion
    rcases hunion with h0010 | h11coord
    · rcases h0010 with h0001 | h10coord
      · rcases h0001 with h00coord | h01coord
        · have hcell : Disjoint (binaryPairSupport00 sourcePair.1 sourcePair.2)
              (binaryPairSupport01 sourcePair.1 sourcePair.2) := by
            simpa [binaryPairSupportCell] using
              (binaryPairSupportCell_disjoint
                (u := sourcePair.1) (v := sourcePair.2)
                (cat := BinaryPairSupportCategory.bothZero)
                (cat' := BinaryPairSupportCategory.rightOne)
                (by decide))
          exact False.elim
            ((Finset.disjoint_left.mp hcell) (h00 h00coord) h01cell)
        · exact h01coord
      · have hcell : Disjoint (binaryPairSupport10 sourcePair.1 sourcePair.2)
            (binaryPairSupport01 sourcePair.1 sourcePair.2) := by
          simpa [binaryPairSupportCell] using
            (binaryPairSupportCell_disjoint
              (u := sourcePair.1) (v := sourcePair.2)
              (cat := BinaryPairSupportCategory.leftOne)
              (cat' := BinaryPairSupportCategory.rightOne)
              (by decide))
        exact False.elim
          ((Finset.disjoint_left.mp hcell) (h10 h10coord) h01cell)
    · have hcell : Disjoint (binaryPairSupport11 sourcePair.1 sourcePair.2)
          (binaryPairSupport01 sourcePair.1 sourcePair.2) := by
        simpa [binaryPairSupportCell] using
          (binaryPairSupportCell_disjoint
            (u := sourcePair.1) (v := sourcePair.2)
            (cat := BinaryPairSupportCategory.bothOne)
            (cat' := BinaryPairSupportCategory.rightOne)
            (by decide))
      exact False.elim
        ((Finset.disjoint_left.mp hcell) (h11 h11coord) h01cell)
  · intro hcoord
    exact Finset.mem_inter.mpr
      ⟨by simp [binaryPairShellSupportChoiceUnion, hcoord],
        h01 hcoord⟩

theorem binaryPairShellSupportChoiceUnion_inter_10_of_mem {n : Nat}
    {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {choice : BinaryPairShellSupportChoice n}
    {a00 a01 a10 a11 : Nat}
    (hchoice : choice ∈ binaryPairShellSupportChoices sourcePair a00 a01 a10 a11) :
    binaryPairShellSupportChoiceUnion choice ∩
        binaryPairSupport10 sourcePair.1 sourcePair.2 =
      binaryPairShellSupportChoice10 choice := by
  have hmem := mem_binaryPairShellSupportChoices.mp hchoice
  rcases hmem with ⟨h00mem, h01mem, h10mem, h11mem⟩
  have h00 := (Finset.mem_powersetCard.mp h00mem).1
  have h01 := (Finset.mem_powersetCard.mp h01mem).1
  have h10 := (Finset.mem_powersetCard.mp h10mem).1
  have h11 := (Finset.mem_powersetCard.mp h11mem).1
  ext coord
  constructor
  · intro hcoord
    rcases Finset.mem_inter.mp hcoord with ⟨hunion, h10cell⟩
    simp only [binaryPairShellSupportChoiceUnion, Finset.mem_union] at hunion
    rcases hunion with h0010 | h11coord
    · rcases h0010 with h0001 | h10coord
      · rcases h0001 with h00coord | h01coord
        · have hcell : Disjoint (binaryPairSupport00 sourcePair.1 sourcePair.2)
              (binaryPairSupport10 sourcePair.1 sourcePair.2) := by
            simpa [binaryPairSupportCell] using
              (binaryPairSupportCell_disjoint
                (u := sourcePair.1) (v := sourcePair.2)
                (cat := BinaryPairSupportCategory.bothZero)
                (cat' := BinaryPairSupportCategory.leftOne)
                (by decide))
          exact False.elim
            ((Finset.disjoint_left.mp hcell) (h00 h00coord) h10cell)
        · have hcell : Disjoint (binaryPairSupport01 sourcePair.1 sourcePair.2)
              (binaryPairSupport10 sourcePair.1 sourcePair.2) := by
            simpa [binaryPairSupportCell] using
              (binaryPairSupportCell_disjoint
                (u := sourcePair.1) (v := sourcePair.2)
                (cat := BinaryPairSupportCategory.rightOne)
                (cat' := BinaryPairSupportCategory.leftOne)
                (by decide))
          exact False.elim
            ((Finset.disjoint_left.mp hcell) (h01 h01coord) h10cell)
      · exact h10coord
    · have hcell : Disjoint (binaryPairSupport11 sourcePair.1 sourcePair.2)
          (binaryPairSupport10 sourcePair.1 sourcePair.2) := by
        simpa [binaryPairSupportCell] using
          (binaryPairSupportCell_disjoint
            (u := sourcePair.1) (v := sourcePair.2)
            (cat := BinaryPairSupportCategory.bothOne)
            (cat' := BinaryPairSupportCategory.leftOne)
            (by decide))
      exact False.elim
        ((Finset.disjoint_left.mp hcell) (h11 h11coord) h10cell)
  · intro hcoord
    exact Finset.mem_inter.mpr
      ⟨by simp [binaryPairShellSupportChoiceUnion, hcoord],
        h10 hcoord⟩

theorem binaryPairShellSupportChoiceUnion_inter_11_of_mem {n : Nat}
    {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {choice : BinaryPairShellSupportChoice n}
    {a00 a01 a10 a11 : Nat}
    (hchoice : choice ∈ binaryPairShellSupportChoices sourcePair a00 a01 a10 a11) :
    binaryPairShellSupportChoiceUnion choice ∩
        binaryPairSupport11 sourcePair.1 sourcePair.2 =
      binaryPairShellSupportChoice11 choice := by
  have hmem := mem_binaryPairShellSupportChoices.mp hchoice
  rcases hmem with ⟨h00mem, h01mem, h10mem, h11mem⟩
  have h00 := (Finset.mem_powersetCard.mp h00mem).1
  have h01 := (Finset.mem_powersetCard.mp h01mem).1
  have h10 := (Finset.mem_powersetCard.mp h10mem).1
  have h11 := (Finset.mem_powersetCard.mp h11mem).1
  ext coord
  constructor
  · intro hcoord
    rcases Finset.mem_inter.mp hcoord with ⟨hunion, h11cell⟩
    simp only [binaryPairShellSupportChoiceUnion, Finset.mem_union] at hunion
    rcases hunion with h0010 | h11coord
    · rcases h0010 with h0001 | h10coord
      · rcases h0001 with h00coord | h01coord
        · have hcell : Disjoint (binaryPairSupport00 sourcePair.1 sourcePair.2)
              (binaryPairSupport11 sourcePair.1 sourcePair.2) := by
            simpa [binaryPairSupportCell] using
              (binaryPairSupportCell_disjoint
                (u := sourcePair.1) (v := sourcePair.2)
                (cat := BinaryPairSupportCategory.bothZero)
                (cat' := BinaryPairSupportCategory.bothOne)
                (by decide))
          exact False.elim
            ((Finset.disjoint_left.mp hcell) (h00 h00coord) h11cell)
        · have hcell : Disjoint (binaryPairSupport01 sourcePair.1 sourcePair.2)
              (binaryPairSupport11 sourcePair.1 sourcePair.2) := by
            simpa [binaryPairSupportCell] using
              (binaryPairSupportCell_disjoint
                (u := sourcePair.1) (v := sourcePair.2)
                (cat := BinaryPairSupportCategory.rightOne)
                (cat' := BinaryPairSupportCategory.bothOne)
                (by decide))
          exact False.elim
            ((Finset.disjoint_left.mp hcell) (h01 h01coord) h11cell)
      · have hcell : Disjoint (binaryPairSupport10 sourcePair.1 sourcePair.2)
            (binaryPairSupport11 sourcePair.1 sourcePair.2) := by
          simpa [binaryPairSupportCell] using
            (binaryPairSupportCell_disjoint
              (u := sourcePair.1) (v := sourcePair.2)
              (cat := BinaryPairSupportCategory.leftOne)
              (cat' := BinaryPairSupportCategory.bothOne)
              (by decide))
        exact False.elim
          ((Finset.disjoint_left.mp hcell) (h10 h10coord) h11cell)
    · exact h11coord
  · intro hcoord
    exact Finset.mem_inter.mpr
      ⟨by simp [binaryPairShellSupportChoiceUnion, hcoord],
        h11 hcoord⟩

theorem binaryPairShellTargetPairSupportChoice_targetPair_inverse {n : Nat}
    {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {choice : BinaryPairShellSupportChoice n} {a00 a01 a10 a11 : Nat}
    (hchoice : choice ∈ binaryPairShellSupportChoices sourcePair a00 a01 a10 a11) :
    binaryPairShellTargetPairSupportChoice sourcePair
        (binaryPairShellSupportChoiceTargetPair sourcePair choice) =
      choice := by
  have hsupport :
      binaryPairShellTargetPairSupport sourcePair
          (binaryPairShellSupportChoiceTargetPair sourcePair choice) =
        binaryPairShellSupportChoiceUnion choice := by
    simpa [binaryPairShellTargetPairSupport] using
      binaryPairShellSupportChoiceTargetPair_left_xor_support sourcePair choice
  apply Prod.ext
  · apply Prod.ext
    · apply Prod.ext
      · change
          binaryPairShellSupportChoice00
              (binaryPairShellTargetPairSupportChoice sourcePair
                (binaryPairShellSupportChoiceTargetPair sourcePair choice)) =
            binaryPairShellSupportChoice00 choice
        simpa [hsupport] using
          binaryPairShellSupportChoiceUnion_inter_00_of_mem hchoice
      · change
          binaryPairShellSupportChoice01
              (binaryPairShellTargetPairSupportChoice sourcePair
                (binaryPairShellSupportChoiceTargetPair sourcePair choice)) =
            binaryPairShellSupportChoice01 choice
        simpa [hsupport] using
          binaryPairShellSupportChoiceUnion_inter_01_of_mem hchoice
    · change
        binaryPairShellSupportChoice10
            (binaryPairShellTargetPairSupportChoice sourcePair
              (binaryPairShellSupportChoiceTargetPair sourcePair choice)) =
          binaryPairShellSupportChoice10 choice
      simpa [hsupport] using
        binaryPairShellSupportChoiceUnion_inter_10_of_mem hchoice
  · change
      binaryPairShellSupportChoice11
          (binaryPairShellTargetPairSupportChoice sourcePair
            (binaryPairShellSupportChoiceTargetPair sourcePair choice)) =
        binaryPairShellSupportChoice11 choice
    simpa [hsupport] using
      binaryPairShellSupportChoiceUnion_inter_11_of_mem hchoice

theorem binaryPairShellSupportChoiceUnion_inter_leftSupport_of_mem {n : Nat}
    {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {choice : BinaryPairShellSupportChoice n}
    {a00 a01 a10 a11 : Nat}
    (hchoice : choice ∈ binaryPairShellSupportChoices sourcePair a00 a01 a10 a11) :
    binaryPairShellSupportChoiceUnion choice ∩ binarySupport n sourcePair.1 =
      binaryPairShellSupportChoice10 choice ∪ binaryPairShellSupportChoice11 choice := by
  have hmem := mem_binaryPairShellSupportChoices.mp hchoice
  rcases hmem with ⟨h00mem, h01mem, h10mem, h11mem⟩
  have h00 := (Finset.mem_powersetCard.mp h00mem).1
  have h01 := (Finset.mem_powersetCard.mp h01mem).1
  have h10 := (Finset.mem_powersetCard.mp h10mem).1
  have h11 := (Finset.mem_powersetCard.mp h11mem).1
  ext coord
  constructor
  · intro hcoord
    rcases Finset.mem_inter.mp hcoord with ⟨hunion, hleft⟩
    simp only [binaryPairShellSupportChoiceUnion, Finset.mem_union] at hunion
    rcases hunion with h0010 | h11coord
    · rcases h0010 with h0001 | h10coord
      · rcases h0001 with h00coord | h01coord
        · have hcell := h00 h00coord
          simp [binaryPairSupport00, binarySupport] at hcell hleft
          exact False.elim (hleft hcell.1)
        · have hcell := h01 h01coord
          simp [binaryPairSupport01, binarySupport] at hcell hleft
          exact False.elim (hleft hcell.2)
      · exact Finset.mem_union.mpr (Or.inl h10coord)
    · exact Finset.mem_union.mpr (Or.inr h11coord)
  · intro hcoord
    rcases Finset.mem_union.mp hcoord with h10coord | h11coord
    · exact Finset.mem_inter.mpr
        ⟨by simp [binaryPairShellSupportChoiceUnion, h10coord],
          by
            have hcell := h10 h10coord
            exact (Finset.mem_sdiff.mp hcell).1⟩
    · exact Finset.mem_inter.mpr
        ⟨by simp [binaryPairShellSupportChoiceUnion, h11coord],
          by
            have hcell := h11 h11coord
            exact (Finset.mem_inter.mp hcell).1⟩

theorem binaryPairShellSupportChoiceUnion_inter_rightSupport_of_mem {n : Nat}
    {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {choice : BinaryPairShellSupportChoice n}
    {a00 a01 a10 a11 : Nat}
    (hchoice : choice ∈ binaryPairShellSupportChoices sourcePair a00 a01 a10 a11) :
    binaryPairShellSupportChoiceUnion choice ∩ binarySupport n sourcePair.2 =
      binaryPairShellSupportChoice01 choice ∪ binaryPairShellSupportChoice11 choice := by
  have hmem := mem_binaryPairShellSupportChoices.mp hchoice
  rcases hmem with ⟨h00mem, h01mem, h10mem, h11mem⟩
  have h00 := (Finset.mem_powersetCard.mp h00mem).1
  have h01 := (Finset.mem_powersetCard.mp h01mem).1
  have h10 := (Finset.mem_powersetCard.mp h10mem).1
  have h11 := (Finset.mem_powersetCard.mp h11mem).1
  ext coord
  constructor
  · intro hcoord
    rcases Finset.mem_inter.mp hcoord with ⟨hunion, hright⟩
    simp only [binaryPairShellSupportChoiceUnion, Finset.mem_union] at hunion
    rcases hunion with h0010 | h11coord
    · rcases h0010 with h0001 | h10coord
      · rcases h0001 with h00coord | h01coord
        · have hcell := h00 h00coord
          simp [binaryPairSupport00, binarySupport] at hcell hright
          exact False.elim (hright hcell.2)
        · exact Finset.mem_union.mpr (Or.inl h01coord)
      · have hcell := h10 h10coord
        simp [binaryPairSupport10, binarySupport] at hcell hright
        exact False.elim (hright hcell.2)
    · exact Finset.mem_union.mpr (Or.inr h11coord)
  · intro hcoord
    rcases Finset.mem_union.mp hcoord with h01coord | h11coord
    · exact Finset.mem_inter.mpr
        ⟨by simp [binaryPairShellSupportChoiceUnion, h01coord],
          by
            have hcell := h01 h01coord
            exact (Finset.mem_sdiff.mp hcell).1⟩
    · exact Finset.mem_inter.mpr
        ⟨by simp [binaryPairShellSupportChoiceUnion, h11coord],
          by
            have hcell := h11 h11coord
            exact (Finset.mem_inter.mp hcell).2⟩

theorem binaryPairShellSupportChoiceUnion_inter_leftSupport_card_of_mem {n : Nat}
    {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {choice : BinaryPairShellSupportChoice n}
    {a00 a01 a10 a11 : Nat}
    (hchoice : choice ∈ binaryPairShellSupportChoices sourcePair a00 a01 a10 a11) :
    (binaryPairShellSupportChoiceUnion choice ∩ binarySupport n sourcePair.1).card =
      a10 + a11 := by
  have hmem := mem_binaryPairShellSupportChoices.mp hchoice
  rcases hmem with ⟨_h00mem, _h01mem, h10mem, h11mem⟩
  have h10 := Finset.mem_powersetCard.mp h10mem
  have h11 := Finset.mem_powersetCard.mp h11mem
  have hdisj : Disjoint (binaryPairShellSupportChoice10 choice)
      (binaryPairShellSupportChoice11 choice) := by
    rw [Finset.disjoint_left]
    intro coord hcoord10 hcoord11
    have hcell : Disjoint (binaryPairSupport10 sourcePair.1 sourcePair.2)
        (binaryPairSupport11 sourcePair.1 sourcePair.2) := by
      simpa [binaryPairSupportCell] using
        (binaryPairSupportCell_disjoint
          (u := sourcePair.1) (v := sourcePair.2)
          (cat := BinaryPairSupportCategory.leftOne)
          (cat' := BinaryPairSupportCategory.bothOne)
          (by decide))
    exact (Finset.disjoint_left.mp hcell)
      (h10.1 hcoord10) (h11.1 hcoord11)
  rw [binaryPairShellSupportChoiceUnion_inter_leftSupport_of_mem hchoice]
  rw [Finset.card_union_of_disjoint hdisj, h10.2, h11.2]

theorem binaryPairShellSupportChoiceUnion_inter_rightSupport_card_of_mem {n : Nat}
    {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {choice : BinaryPairShellSupportChoice n}
    {a00 a01 a10 a11 : Nat}
    (hchoice : choice ∈ binaryPairShellSupportChoices sourcePair a00 a01 a10 a11) :
    (binaryPairShellSupportChoiceUnion choice ∩ binarySupport n sourcePair.2).card =
      a01 + a11 := by
  have hmem := mem_binaryPairShellSupportChoices.mp hchoice
  rcases hmem with ⟨_h00mem, h01mem, _h10mem, h11mem⟩
  have h01 := Finset.mem_powersetCard.mp h01mem
  have h11 := Finset.mem_powersetCard.mp h11mem
  have hdisj : Disjoint (binaryPairShellSupportChoice01 choice)
      (binaryPairShellSupportChoice11 choice) := by
    rw [Finset.disjoint_left]
    intro coord hcoord01 hcoord11
    have hcell : Disjoint (binaryPairSupport01 sourcePair.1 sourcePair.2)
        (binaryPairSupport11 sourcePair.1 sourcePair.2) := by
      simpa [binaryPairSupportCell] using
        (binaryPairSupportCell_disjoint
          (u := sourcePair.1) (v := sourcePair.2)
          (cat := BinaryPairSupportCategory.rightOne)
          (cat' := BinaryPairSupportCategory.bothOne)
          (by decide))
    exact (Finset.disjoint_left.mp hcell)
      (h01.1 hcoord01) (h11.1 hcoord11)
  rw [binaryPairShellSupportChoiceUnion_inter_rightSupport_of_mem hchoice]
  rw [Finset.card_union_of_disjoint hdisj, h01.2, h11.2]

theorem binaryPairShellSupportChoiceTargetPair_left_card_add_of_mem {n : Nat}
    {source : BinaryOrbitIndex n} {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {choice : BinaryPairShellSupportChoice n}
    {a00 a01 a10 a11 : Nat}
    (hsource : sourcePair ∈ binaryWordPairOrbitCell source)
    (hchoice : choice ∈ binaryPairShellSupportChoices sourcePair a00 a01 a10 a11) :
    (binarySupport n
        (binaryPairShellSupportChoiceTargetPair sourcePair choice).1).card +
        a10 + a11 =
      source.i + a00 + a01 := by
  let S := binaryPairShellSupportChoiceUnion choice
  let U := binarySupport n sourcePair.1
  have hUcard : U.card = source.i := by
    have horbit := mem_binaryWordPairOrbitCell.mp hsource
    simpa [U, binaryOrbitOf] using congrArg BinaryOrbitIndex.i horbit
  have hScard : S.card = a00 + a01 + a10 + a11 := by
    simpa [S] using binaryPairShellSupportChoiceUnion_card_of_mem hchoice
  have hSUcard : (S ∩ U).card = a10 + a11 := by
    simpa [S, U] using
      binaryPairShellSupportChoiceUnion_inter_leftSupport_card_of_mem hchoice
  have hUScard : (U ∩ S).card = a10 + a11 := by
    rw [Finset.inter_comm]
    exact hSUcard
  have hSU_le_U : a10 + a11 <= source.i := by
    have hle : (S ∩ U).card <= U.card :=
      Finset.card_le_card Finset.inter_subset_right
    omega
  have hdisj : Disjoint (U \ S) (S \ U) := by
    rw [Finset.disjoint_left]
    intro coord hcoordUS hcoordSU
    exact (Finset.mem_sdiff.mp hcoordUS).2 (Finset.mem_sdiff.mp hcoordSU).1
  have hcard :
      (binarySupport n (binaryFlipOn sourcePair.1 S)).card =
        (source.i - (a10 + a11)) +
          ((a00 + a01 + a10 + a11) - (a10 + a11)) := by
    rw [binarySupport_flipOn]
    rw [Finset.card_union_of_disjoint hdisj]
    rw [Finset.card_sdiff, Finset.card_sdiff]
    rw [hUcard, hScard, hSUcard, hUScard]
  change (binarySupport n (binaryFlipOn sourcePair.1 S)).card + a10 + a11 =
    source.i + a00 + a01
  omega

theorem binaryPairShellSupportChoiceTargetPair_right_card_add_of_mem {n : Nat}
    {source : BinaryOrbitIndex n} {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {choice : BinaryPairShellSupportChoice n}
    {a00 a01 a10 a11 : Nat}
    (hsource : sourcePair ∈ binaryWordPairOrbitCell source)
    (hchoice : choice ∈ binaryPairShellSupportChoices sourcePair a00 a01 a10 a11) :
    (binarySupport n
        (binaryPairShellSupportChoiceTargetPair sourcePair choice).2).card +
        a01 + a11 =
      source.j + a00 + a10 := by
  let S := binaryPairShellSupportChoiceUnion choice
  let U := binarySupport n sourcePair.2
  have hUcard : U.card = source.j := by
    have horbit := mem_binaryWordPairOrbitCell.mp hsource
    simpa [U, binaryOrbitOf] using congrArg BinaryOrbitIndex.j horbit
  have hScard : S.card = a00 + a01 + a10 + a11 := by
    simpa [S] using binaryPairShellSupportChoiceUnion_card_of_mem hchoice
  have hSUcard : (S ∩ U).card = a01 + a11 := by
    simpa [S, U] using
      binaryPairShellSupportChoiceUnion_inter_rightSupport_card_of_mem hchoice
  have hUScard : (U ∩ S).card = a01 + a11 := by
    rw [Finset.inter_comm]
    exact hSUcard
  have hSU_le_U : a01 + a11 <= source.j := by
    have hle : (S ∩ U).card <= U.card :=
      Finset.card_le_card Finset.inter_subset_right
    omega
  have hdisj : Disjoint (U \ S) (S \ U) := by
    rw [Finset.disjoint_left]
    intro coord hcoordUS hcoordSU
    exact (Finset.mem_sdiff.mp hcoordUS).2 (Finset.mem_sdiff.mp hcoordSU).1
  have hcard :
      (binarySupport n (binaryFlipOn sourcePair.2 S)).card =
        (source.j - (a01 + a11)) +
          ((a00 + a01 + a10 + a11) - (a01 + a11)) := by
    rw [binarySupport_flipOn]
    rw [Finset.card_union_of_disjoint hdisj]
    rw [Finset.card_sdiff, Finset.card_sdiff]
    rw [hUcard, hScard, hSUcard, hUScard]
  change (binarySupport n (binaryFlipOn sourcePair.2 S)).card + a01 + a11 =
    source.j + a00 + a10
  omega

theorem binaryPairShellSupportChoiceUnion_inter_00_card_of_mem {n : Nat}
    {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {choice : BinaryPairShellSupportChoice n}
    {a00 a01 a10 a11 : Nat}
    (hchoice : choice ∈ binaryPairShellSupportChoices sourcePair a00 a01 a10 a11) :
    (binaryPairShellSupportChoiceUnion choice ∩
        binaryPairSupport00 sourcePair.1 sourcePair.2).card = a00 := by
  have hmem := mem_binaryPairShellSupportChoices.mp hchoice
  rcases hmem with ⟨h00mem, h01mem, h10mem, h11mem⟩
  have h00 := Finset.mem_powersetCard.mp h00mem
  have h01 := (Finset.mem_powersetCard.mp h01mem).1
  have h10 := (Finset.mem_powersetCard.mp h10mem).1
  have h11 := (Finset.mem_powersetCard.mp h11mem).1
  have hset :
      binaryPairShellSupportChoiceUnion choice ∩
          binaryPairSupport00 sourcePair.1 sourcePair.2 =
        binaryPairShellSupportChoice00 choice := by
    ext coord
    constructor
    · intro hcoord
      rcases Finset.mem_inter.mp hcoord with ⟨hunion, h00cell⟩
      simp only [binaryPairShellSupportChoiceUnion, Finset.mem_union] at hunion
      rcases hunion with h0010 | h11coord
      · rcases h0010 with h0001 | h10coord
        · rcases h0001 with h00coord | h01coord
          · exact h00coord
          · have hcell : Disjoint (binaryPairSupport01 sourcePair.1 sourcePair.2)
                (binaryPairSupport00 sourcePair.1 sourcePair.2) := by
              simpa [binaryPairSupportCell] using
                (binaryPairSupportCell_disjoint
                  (u := sourcePair.1) (v := sourcePair.2)
                  (cat := BinaryPairSupportCategory.rightOne)
                  (cat' := BinaryPairSupportCategory.bothZero)
                  (by decide))
            exact False.elim
              ((Finset.disjoint_left.mp hcell) (h01 h01coord) h00cell)
        · have hcell : Disjoint (binaryPairSupport10 sourcePair.1 sourcePair.2)
              (binaryPairSupport00 sourcePair.1 sourcePair.2) := by
            simpa [binaryPairSupportCell] using
              (binaryPairSupportCell_disjoint
                (u := sourcePair.1) (v := sourcePair.2)
                (cat := BinaryPairSupportCategory.leftOne)
                (cat' := BinaryPairSupportCategory.bothZero)
                (by decide))
          exact False.elim
            ((Finset.disjoint_left.mp hcell) (h10 h10coord) h00cell)
      · have hcell : Disjoint (binaryPairSupport11 sourcePair.1 sourcePair.2)
            (binaryPairSupport00 sourcePair.1 sourcePair.2) := by
          simpa [binaryPairSupportCell] using
            (binaryPairSupportCell_disjoint
              (u := sourcePair.1) (v := sourcePair.2)
              (cat := BinaryPairSupportCategory.bothOne)
              (cat' := BinaryPairSupportCategory.bothZero)
              (by decide))
        exact False.elim
          ((Finset.disjoint_left.mp hcell) (h11 h11coord) h00cell)
    · intro hcoord
      exact Finset.mem_inter.mpr
        ⟨by simp [binaryPairShellSupportChoiceUnion, hcoord],
          h00.1 hcoord⟩
  rw [hset, h00.2]

theorem binaryPairShellSupportChoiceTargetPair_inter_card_add_of_mem {n : Nat}
    {source : BinaryOrbitIndex n} {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {choice : BinaryPairShellSupportChoice n}
    {a00 a01 a10 a11 : Nat}
    (hsource : sourcePair ∈ binaryWordPairOrbitCell source)
    (hchoice : choice ∈ binaryPairShellSupportChoices sourcePair a00 a01 a10 a11) :
    (binaryPairSupport11
        (binaryPairShellSupportChoiceTargetPair sourcePair choice).1
        (binaryPairShellSupportChoiceTargetPair sourcePair choice).2).card +
        a11 =
      source.t + a00 := by
  let S := binaryPairShellSupportChoiceUnion choice
  let T := binaryPairSupport11 sourcePair.1 sourcePair.2
  let Z := binaryPairSupport00 sourcePair.1 sourcePair.2
  have hTcard : T.card = source.t := by
    have horbit := mem_binaryWordPairOrbitCell.mp hsource
    simpa [T, binaryOrbitOf] using congrArg BinaryOrbitIndex.t horbit
  have hSTcard : (S ∩ T).card = a11 := by
    have hmem := mem_binaryPairShellSupportChoices.mp hchoice
    rcases hmem with ⟨_h00mem, _h01mem, _h10mem, h11mem⟩
    have h11 := Finset.mem_powersetCard.mp h11mem
    have hset : S ∩ T = binaryPairShellSupportChoice11 choice := by
      ext coord
      constructor
      · intro hcoord
        rcases Finset.mem_inter.mp hcoord with ⟨hunion, hTcoord⟩
        simp only [S, binaryPairShellSupportChoiceUnion, Finset.mem_union] at hunion
        rcases hunion with h0010 | h11coord
        · rcases h0010 with h0001 | h10coord
          · rcases h0001 with h00coord | h01coord
            · have hmem00 := (Finset.mem_powersetCard.mp
                (mem_binaryPairShellSupportChoices.mp hchoice).1).1 h00coord
              have hcell : Disjoint (binaryPairSupport00 sourcePair.1 sourcePair.2) T := by
                simpa [T, binaryPairSupportCell] using
                  (binaryPairSupportCell_disjoint
                    (u := sourcePair.1) (v := sourcePair.2)
                    (cat := BinaryPairSupportCategory.bothZero)
                    (cat' := BinaryPairSupportCategory.bothOne)
                    (by decide))
              exact False.elim ((Finset.disjoint_left.mp hcell) hmem00 hTcoord)
            · have hmem01 := (Finset.mem_powersetCard.mp
                (mem_binaryPairShellSupportChoices.mp hchoice).2.1).1 h01coord
              have hcell : Disjoint (binaryPairSupport01 sourcePair.1 sourcePair.2) T := by
                simpa [T, binaryPairSupportCell] using
                  (binaryPairSupportCell_disjoint
                    (u := sourcePair.1) (v := sourcePair.2)
                    (cat := BinaryPairSupportCategory.rightOne)
                    (cat' := BinaryPairSupportCategory.bothOne)
                    (by decide))
              exact False.elim ((Finset.disjoint_left.mp hcell) hmem01 hTcoord)
          · have hmem10 := (Finset.mem_powersetCard.mp
              (mem_binaryPairShellSupportChoices.mp hchoice).2.2.1).1 h10coord
            have hcell : Disjoint (binaryPairSupport10 sourcePair.1 sourcePair.2) T := by
              simpa [T, binaryPairSupportCell] using
                (binaryPairSupportCell_disjoint
                  (u := sourcePair.1) (v := sourcePair.2)
                  (cat := BinaryPairSupportCategory.leftOne)
                  (cat' := BinaryPairSupportCategory.bothOne)
                  (by decide))
            exact False.elim ((Finset.disjoint_left.mp hcell) hmem10 hTcoord)
        · exact h11coord
      · intro hcoord
        exact Finset.mem_inter.mpr
          ⟨by simp [S, binaryPairShellSupportChoiceUnion, hcoord],
            h11.1 hcoord⟩
    rw [hset, h11.2]
  have hTZcard : (S ∩ Z).card = a00 := by
    simpa [S, Z] using
      binaryPairShellSupportChoiceUnion_inter_00_card_of_mem hchoice
  have hdisj : Disjoint (T \ S) (S ∩ Z) := by
    rw [Finset.disjoint_left]
    intro coord hcoordTS hcoordSZ
    have hTcoord := (Finset.mem_sdiff.mp hcoordTS).1
    have hZcoord := (Finset.mem_inter.mp hcoordSZ).2
    have hcell : Disjoint T Z := by
      simpa [T, Z, binaryPairSupportCell] using
        (binaryPairSupportCell_disjoint
          (u := sourcePair.1) (v := sourcePair.2)
          (cat := BinaryPairSupportCategory.bothOne)
          (cat' := BinaryPairSupportCategory.bothZero)
          (by decide))
    exact (Finset.disjoint_left.mp hcell) hTcoord hZcoord
  have hST_le_T : a11 <= source.t := by
    have hle : (S ∩ T).card <= T.card :=
      Finset.card_le_card Finset.inter_subset_right
    omega
  have hcard :
      (binaryPairSupport11 (binaryFlipOn sourcePair.1 S)
          (binaryFlipOn sourcePair.2 S)).card =
        (source.t - a11) + a00 := by
    rw [binaryPairSupport11_flipOn_same]
    rw [Finset.card_union_of_disjoint hdisj]
    rw [Finset.card_sdiff]
    rw [hTcard, hSTcard, hTZcard]
  change
    (binaryPairSupport11 (binaryFlipOn sourcePair.1 S)
        (binaryFlipOn sourcePair.2 S)).card + a11 =
      source.t + a00
  omega

/--
The support-choice set corresponding to one eta summand.  It is empty unless
the eta side conditions hold for the requested source, target, and shell.
-/
def binaryPairShellEtaSupportChoices {n : Nat}
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (source target : BinaryOrbitIndex n) (d : Nat)
    (a00 a01 a10 a11 : Nat) :
    Finset (BinaryPairShellSupportChoice n) :=
  if binaryEtaTermCondition n source target d a00 a01 a10 a11 then
    binaryPairShellSupportChoices sourcePair a00 a01 a10 a11
  else
    ∅

theorem binaryPairShellEtaSupportChoices_card_eq_etaTerm {n : Nat}
    {source target : BinaryOrbitIndex n} {sourcePair : QaryWord 2 n × QaryWord 2 n}
    (hsource : sourcePair ∈ binaryWordPairOrbitCell source)
    (d a00 a01 a10 a11 : Nat) :
    ((binaryPairShellEtaSupportChoices sourcePair source target d
      a00 a01 a10 a11).card : Rat) =
        binaryEtaTerm n source target d a00 a01 a10 a11 := by
  unfold binaryPairShellEtaSupportChoices binaryEtaTerm
  by_cases hcond :
      binaryEtaTermCondition n source target d a00 a01 a10 a11
  · simp [hcond]
    rw [binaryPairShellSupportChoices_card_of_mem_orbit hsource]
    norm_num [Nat.cast_mul]
    ring
  · simp [hcond]

theorem binaryPairShellEtaSupportChoices_sum_card_eq_etaCoeff {n : Nat}
    {source target : BinaryOrbitIndex n} {sourcePair : QaryWord 2 n × QaryWord 2 n}
    (hsource : sourcePair ∈ binaryWordPairOrbitCell source)
    (d : Nat) :
    (Finset.range (n + 1)).sum (fun a00 =>
      (Finset.range (n + 1)).sum (fun a01 =>
        (Finset.range (n + 1)).sum (fun a10 =>
          (Finset.range (n + 1)).sum (fun a11 =>
            ((binaryPairShellEtaSupportChoices sourcePair source target d
              a00 a01 a10 a11).card : Rat))))) =
      binaryEtaCoeff n source target d := by
  unfold binaryEtaCoeff
  apply Finset.sum_congr rfl
  intro a00 _ha00
  apply Finset.sum_congr rfl
  intro a01 _ha01
  apply Finset.sum_congr rfl
  intro a10 _ha10
  apply Finset.sum_congr rfl
  intro a11 _ha11
  exact binaryPairShellEtaSupportChoices_card_eq_etaTerm hsource d a00 a01 a10 a11

theorem binaryPairShellSupportChoice_mem_supportChoices_of_mem_eta {n : Nat}
    {source target : BinaryOrbitIndex n} {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {choice : BinaryPairShellSupportChoice n} {d a00 a01 a10 a11 : Nat}
    (hchoice :
      choice ∈ binaryPairShellEtaSupportChoices sourcePair source target d
        a00 a01 a10 a11) :
    choice ∈ binaryPairShellSupportChoices sourcePair a00 a01 a10 a11 := by
  unfold binaryPairShellEtaSupportChoices at hchoice
  by_cases hcond :
      binaryEtaTermCondition n source target d a00 a01 a10 a11
  · simpa [hcond] using hchoice
  · simp [hcond] at hchoice

def binaryPairShellEtaSupportChoiceSigma {n : Nat}
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (source target : BinaryOrbitIndex n) (d : Nat) :
    Finset (Sigma (fun _a00 : Nat =>
      Sigma (fun _a01 : Nat =>
        Sigma (fun _a10 : Nat =>
          Sigma (fun _a11 : Nat => BinaryPairShellSupportChoice n))))) :=
  (Finset.range (n + 1)).sigma (fun a00 =>
    (Finset.range (n + 1)).sigma (fun a01 =>
      (Finset.range (n + 1)).sigma (fun a10 =>
        (Finset.range (n + 1)).sigma (fun a11 =>
          binaryPairShellEtaSupportChoices sourcePair source target d
            a00 a01 a10 a11))))

theorem binaryPairShellEtaSupportChoiceSigma_card {n : Nat}
    (sourcePair : QaryWord 2 n × QaryWord 2 n)
    (source target : BinaryOrbitIndex n) (d : Nat) :
    (binaryPairShellEtaSupportChoiceSigma sourcePair source target d).card =
      (Finset.range (n + 1)).sum (fun a00 =>
        (Finset.range (n + 1)).sum (fun a01 =>
          (Finset.range (n + 1)).sum (fun a10 =>
            (Finset.range (n + 1)).sum (fun a11 =>
              (binaryPairShellEtaSupportChoices sourcePair source target d
                a00 a01 a10 a11).card)))) := by
  simp [binaryPairShellEtaSupportChoiceSigma]

private theorem finset_card_le_fin {n : Nat} (s : Finset (Fin n)) :
    s.card <= n := by
  have hle := Finset.card_le_card (Finset.subset_univ s)
  simpa using hle

private theorem finset_card_mem_range_succ {n : Nat} (s : Finset (Fin n)) :
    s.card ∈ Finset.range (n + 1) := by
  rw [Finset.mem_range]
  exact Nat.lt_succ_of_le (finset_card_le_fin s)

theorem binaryPairShellSupportChoiceTargetPair_compatible_of_mem_eta {n : Nat}
    {source target : BinaryOrbitIndex n} {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {choice : BinaryPairShellSupportChoice n} {d a00 a01 a10 a11 : Nat}
    (hchoice :
      choice ∈ binaryPairShellEtaSupportChoices sourcePair source target d
        a00 a01 a10 a11) :
    binaryPairShellCompatible sourcePair
      (binaryPairShellSupportChoiceTargetPair sourcePair choice) d := by
  unfold binaryPairShellEtaSupportChoices at hchoice
  by_cases hcond :
      binaryEtaTermCondition n source target d a00 a01 a10 a11
  · have hchoiceBase :
        choice ∈ binaryPairShellSupportChoices sourcePair a00 a01 a10 a11 := by
      simpa [hcond] using hchoice
    have hcard :=
      binaryPairShellSupportChoiceUnion_card_of_mem hchoiceBase
    unfold binaryPairShellCompatible
    constructor
    · simp [binaryPairShellSupportChoiceTargetPair,
        binaryXorWord_flipOn_right]
    · rw [binaryPairShellSupportChoiceTargetPair,
        binaryXorWord_flipOn_right, binaryFlipOn_zero_support_eq]
      rw [hcard]
      exact hcond.2.2.2.2.1.symm
  · simp [hcond] at hchoice

theorem binaryPairShellSupportChoiceTargetPair_mem_orbit_of_mem_eta {n : Nat}
    {source target : BinaryOrbitIndex n} {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {choice : BinaryPairShellSupportChoice n} {d a00 a01 a10 a11 : Nat}
    (hsource : sourcePair ∈ binaryWordPairOrbitCell source)
    (hchoice :
      choice ∈ binaryPairShellEtaSupportChoices sourcePair source target d
        a00 a01 a10 a11) :
    binaryPairShellSupportChoiceTargetPair sourcePair choice ∈
      binaryWordPairOrbitCell target := by
  unfold binaryPairShellEtaSupportChoices at hchoice
  by_cases hcond :
      binaryEtaTermCondition n source target d a00 a01 a10 a11
  · have hchoiceBase :
        choice ∈ binaryPairShellSupportChoices sourcePair a00 a01 a10 a11 := by
      simpa [hcond] using hchoice
    rcases hcond with
      ⟨_h00, _h01, _h10, _h11, _hd, hi, hj, ht⟩
    rw [mem_binaryWordPairOrbitCell]
    apply binaryOrbitIndex_ext
    · have hleft :=
        binaryPairShellSupportChoiceTargetPair_left_card_add_of_mem
          hsource hchoiceBase
      change
        (binarySupport n
          (binaryPairShellSupportChoiceTargetPair sourcePair choice).1).card =
          target.i
      omega
    · have hright :=
        binaryPairShellSupportChoiceTargetPair_right_card_add_of_mem
          hsource hchoiceBase
      change
        (binarySupport n
          (binaryPairShellSupportChoiceTargetPair sourcePair choice).2).card =
          target.j
      omega
    · have hinter :=
        binaryPairShellSupportChoiceTargetPair_inter_card_add_of_mem
          hsource hchoiceBase
      change
        (binaryPairSupport11
          (binaryPairShellSupportChoiceTargetPair sourcePair choice).1
          (binaryPairShellSupportChoiceTargetPair sourcePair choice).2).card =
          target.t
      omega
  · simp [hcond] at hchoice

theorem binaryPairShellSupportChoiceTargetPair_mem_targetCell_of_mem_eta {n : Nat}
    {source target : BinaryOrbitIndex n} {sourcePair : QaryWord 2 n × QaryWord 2 n}
    {choice : BinaryPairShellSupportChoice n} {d a00 a01 a10 a11 : Nat}
    (hsource : sourcePair ∈ binaryWordPairOrbitCell source)
    (hchoice :
      choice ∈ binaryPairShellEtaSupportChoices sourcePair source target d
        a00 a01 a10 a11) :
    binaryPairShellSupportChoiceTargetPair sourcePair choice ∈
      binaryPairShellTargetCell sourcePair target d := by
  simp [binaryPairShellTargetCell,
    binaryPairShellSupportChoiceTargetPair_mem_orbit_of_mem_eta hsource hchoice,
    binaryPairShellSupportChoiceTargetPair_compatible_of_mem_eta hchoice]

@[simp]
theorem mem_binaryPairShellSourceCell {n : Nat}
    {source : BinaryOrbitIndex n} {targetPair sourcePair : QaryWord 2 n × QaryWord 2 n}
    {d : Nat} :
    sourcePair ∈ binaryPairShellSourceCell source targetPair d ↔
      sourcePair ∈ binaryWordPairOrbitCell source ∧
        binaryPairShellCompatible sourcePair targetPair d := by
  simp [binaryPairShellSourceCell]

@[simp]
theorem mem_binaryPairShellTargetCell {n : Nat}
    {sourcePair targetPair : QaryWord 2 n × QaryWord 2 n}
    {target : BinaryOrbitIndex n} {d : Nat} :
    targetPair ∈ binaryPairShellTargetCell sourcePair target d ↔
      targetPair ∈ binaryWordPairOrbitCell target ∧
        binaryPairShellCompatible sourcePair targetPair d := by
  simp [binaryPairShellTargetCell]

theorem binaryPairShellSourceCell_card_eq_permuted {n : Nat}
    (source : BinaryOrbitIndex n) (targetPair : QaryWord 2 n × QaryWord 2 n)
    (sigma : Equiv.Perm (Fin n)) (d : Nat) :
    (binaryPairShellSourceCell source targetPair d).card =
      (binaryPairShellSourceCell source
        (binaryPermutedRelativeWordPair targetPair.1 targetPair.2 sigma) d).card := by
  apply Finset.card_bij
    (fun sourcePair _hsource =>
      binaryPermutedRelativeWordPair sourcePair.1 sourcePair.2 sigma)
  · intro sourcePair hsourcePair
    rw [mem_binaryPairShellSourceCell] at hsourcePair ⊢
    refine ⟨?_, ?_⟩
    · have hmem :=
        binaryPermutedRelativeWordPair_mem_orbitCell sourcePair.1 sourcePair.2 sigma
      have horbit := mem_binaryWordPairOrbitCell.mp hsourcePair.1
      simpa [horbit] using hmem
    · exact
        (binaryPairShellCompatible_permuted sourcePair targetPair sigma d).mpr
          hsourcePair.2
  · intro sourcePair₁ _hsource₁ sourcePair₂ _hsource₂ hpair
    apply Prod.ext
    · exact (binaryWordPermEquiv sigma).symm.injective
        (congrArg Prod.fst hpair)
    · exact (binaryWordPermEquiv sigma).symm.injective
        (congrArg Prod.snd hpair)
  · intro sourcePair hsourcePair
    rw [mem_binaryPairShellSourceCell] at hsourcePair
    let preimage :=
      binaryPermutedRelativeWordPair sourcePair.1 sourcePair.2 sigma.symm
    have hpreimage_mem :
        preimage ∈ binaryPairShellSourceCell source targetPair d := by
      rw [mem_binaryPairShellSourceCell]
      refine ⟨?_, ?_⟩
      · have hmem :=
          binaryPermutedRelativeWordPair_mem_orbitCell
            sourcePair.1 sourcePair.2 sigma.symm
        have horbit := mem_binaryWordPairOrbitCell.mp hsourcePair.1
        simpa [preimage, horbit] using hmem
      · have hperm :
            binaryPairShellCompatible
              (binaryPermutedRelativeWordPair preimage.1 preimage.2 sigma)
              (binaryPermutedRelativeWordPair targetPair.1 targetPair.2 sigma) d := by
          simpa [preimage] using hsourcePair.2
        exact
          (binaryPairShellCompatible_permuted preimage targetPair sigma d).mp
            hperm
    refine ⟨preimage, hpreimage_mem, ?_⟩
    simp [preimage]

theorem binaryPairShellSourceCell_card_eq_of_mem_target_orbit {n : Nat}
    {source target : BinaryOrbitIndex n}
    {targetPair targetPair' : QaryWord 2 n × QaryWord 2 n} {d : Nat}
    (htarget : targetPair ∈ binaryWordPairOrbitCell target)
    (htarget' : targetPair' ∈ binaryWordPairOrbitCell target) :
    (binaryPairShellSourceCell source targetPair d).card =
      (binaryPairShellSourceCell source targetPair' d).card := by
  have htargetOrbit := mem_binaryWordPairOrbitCell.mp htarget
  have htargetPair' :
      targetPair' ∈ binaryWordPairOrbitCell (binaryOrbitOf targetPair.1 targetPair.2) := by
    rw [mem_binaryWordPairOrbitCell]
    exact (mem_binaryWordPairOrbitCell.mp htarget').trans htargetOrbit.symm
  rcases binaryPairPermutationOrbitSurjective_universal targetPair.1 targetPair.2
      targetPair' htargetPair' with ⟨sigma, hsigma⟩
  have hcard :=
    binaryPairShellSourceCell_card_eq_permuted source targetPair sigma d
  simpa [hsigma] using hcard

theorem binaryPairShellTargetPairSupportChoice_etaCondition_of_mem_targetCell
    {n : Nat} {source target : BinaryOrbitIndex n}
    {sourcePair targetPair : QaryWord 2 n × QaryWord 2 n} {d : Nat}
    (hsource : sourcePair ∈ binaryWordPairOrbitCell source)
    (htarget : targetPair ∈ binaryPairShellTargetCell sourcePair target d) :
    binaryEtaTermCondition n source target d
      (binaryPairShellSupportChoice00
        (binaryPairShellTargetPairSupportChoice sourcePair targetPair)).card
      (binaryPairShellSupportChoice01
        (binaryPairShellTargetPairSupportChoice sourcePair targetPair)).card
      (binaryPairShellSupportChoice10
        (binaryPairShellTargetPairSupportChoice sourcePair targetPair)).card
      (binaryPairShellSupportChoice11
        (binaryPairShellTargetPairSupportChoice sourcePair targetPair)).card := by
  let choice := binaryPairShellTargetPairSupportChoice sourcePair targetPair
  let a00 := (binaryPairShellSupportChoice00 choice).card
  let a01 := (binaryPairShellSupportChoice01 choice).card
  let a10 := (binaryPairShellSupportChoice10 choice).card
  let a11 := (binaryPairShellSupportChoice11 choice).card
  let S := binaryPairShellTargetPairSupport sourcePair targetPair
  change binaryEtaTermCondition n source target d a00 a01 a10 a11
  have htarget' := mem_binaryPairShellTargetCell.mp htarget
  have htargetOrbit := mem_binaryWordPairOrbitCell.mp htarget'.1
  have hcompat := htarget'.2
  have hcompatS :
      binaryPairShellCompatible sourcePair targetPair S.card := by
    exact ⟨hcompat.1, rfl⟩
  have hchoiceBase :
      choice ∈ binaryPairShellSupportChoices sourcePair a00 a01 a10 a11 := by
    have hmem :=
      binaryPairShellTargetPairSupportChoice_mem_supportChoices sourcePair targetPair
    exact hmem
  have hdecode :
      binaryPairShellSupportChoiceTargetPair sourcePair choice = targetPair := by
    simpa [choice, S] using
      binaryPairShellSupportChoiceTargetPair_inverse (sourcePair := sourcePair)
        (targetPair := targetPair) hcompatS
  have hsourceOrbit := mem_binaryWordPairOrbitCell.mp hsource
  have h00card :
      (binaryPairSupport00 sourcePair.1 sourcePair.2).card =
        n + source.t - source.i - source.j := by
    have hraw := binaryPairSupport00_card sourcePair.1 sourcePair.2
    rw [hsourceOrbit] at hraw
    have hrewrite :
        n - (source.i + source.j - source.t) =
          n + source.t - source.i - source.j := by
      have ht_i := source.ht_i
      have ht_j := source.ht_j
      have hij := source.hij
      omega
    exact hraw.trans hrewrite
  have h01card :
      (binaryPairSupport01 sourcePair.1 sourcePair.2).card =
        source.j - source.t := by
    have hraw := binaryPairSupport01_card sourcePair.1 sourcePair.2
    simp [hsourceOrbit] at hraw ⊢
  have h10card :
      (binaryPairSupport10 sourcePair.1 sourcePair.2).card =
        source.i - source.t := by
    have hraw := binaryPairSupport10_card sourcePair.1 sourcePair.2
    simp [hsourceOrbit] at hraw ⊢
  have h11card :
      (binaryPairSupport11 sourcePair.1 sourcePair.2).card =
        source.t := by
    have hraw := binaryPairSupport11_card sourcePair.1 sourcePair.2
    simp [hsourceOrbit] at hraw ⊢
  have ha00_le : a00 <= n + source.t - source.i - source.j := by
    have hmem := mem_binaryPairShellSupportChoices.mp hchoiceBase
    have hsubset := (Finset.mem_powersetCard.mp hmem.1).1
    have hle := Finset.card_le_card hsubset
    omega
  have ha01_le : a01 <= source.j - source.t := by
    have hmem := mem_binaryPairShellSupportChoices.mp hchoiceBase
    have hsubset := (Finset.mem_powersetCard.mp hmem.2.1).1
    have hle := Finset.card_le_card hsubset
    omega
  have ha10_le : a10 <= source.i - source.t := by
    have hmem := mem_binaryPairShellSupportChoices.mp hchoiceBase
    have hsubset := (Finset.mem_powersetCard.mp hmem.2.2.1).1
    have hle := Finset.card_le_card hsubset
    omega
  have ha11_le : a11 <= source.t := by
    have hmem := mem_binaryPairShellSupportChoices.mp hchoiceBase
    have hsubset := (Finset.mem_powersetCard.mp hmem.2.2.2).1
    have hle := Finset.card_le_card hsubset
    omega
  have hsum :
      d = a00 + a01 + a10 + a11 := by
    have hS :=
      binaryPairShellSupportChoiceUnion_card_of_mem hchoiceBase
    have hUnion :=
      binaryPairShellTargetPairSupportChoice_union sourcePair targetPair
    unfold binaryPairShellCompatible at hcompat
    have hSCard : S.card = d := by
      simpa [S, binaryPairShellTargetPairSupport] using hcompat.2
    rw [← hSCard]
    simpa [choice, S, hUnion] using hS
  have hleft :=
    binaryPairShellSupportChoiceTargetPair_left_card_add_of_mem
      hsource hchoiceBase
  have hright :=
    binaryPairShellSupportChoiceTargetPair_right_card_add_of_mem
      hsource hchoiceBase
  have hinter :=
    binaryPairShellSupportChoiceTargetPair_inter_card_add_of_mem
      hsource hchoiceBase
  have hleftTarget :
      (binarySupport n
        (binaryPairShellSupportChoiceTargetPair sourcePair choice).1).card =
        target.i := by
    rw [hdecode]
    simpa [binaryOrbitOf] using congrArg BinaryOrbitIndex.i htargetOrbit
  have hrightTarget :
      (binarySupport n
        (binaryPairShellSupportChoiceTargetPair sourcePair choice).2).card =
        target.j := by
    rw [hdecode]
    simpa [binaryOrbitOf] using congrArg BinaryOrbitIndex.j htargetOrbit
  have hinterTarget :
      (binaryPairSupport11
        (binaryPairShellSupportChoiceTargetPair sourcePair choice).1
        (binaryPairShellSupportChoiceTargetPair sourcePair choice).2).card =
        target.t := by
    rw [hdecode]
    simpa [binaryOrbitOf, binaryPairSupport11] using
      congrArg BinaryOrbitIndex.t htargetOrbit
  unfold binaryEtaTermCondition
  refine ⟨?_, ?_, ?_, ?_, hsum, ?_, ?_, ?_⟩
  · have ht_i := source.ht_i
    have ht_j := source.ht_j
    have hij := source.hij
    omega
  · have ht_j := source.ht_j
    omega
  · have ht_i := source.ht_i
    omega
  · omega
  · omega
  · omega
  · omega

theorem binaryPairShellTargetPairSupportChoice_mem_etaSupportChoices_of_mem_targetCell
    {n : Nat} {source target : BinaryOrbitIndex n}
    {sourcePair targetPair : QaryWord 2 n × QaryWord 2 n} {d : Nat}
    (hsource : sourcePair ∈ binaryWordPairOrbitCell source)
    (htarget : targetPair ∈ binaryPairShellTargetCell sourcePair target d) :
    binaryPairShellTargetPairSupportChoice sourcePair targetPair ∈
      binaryPairShellEtaSupportChoices sourcePair source target d
        (binaryPairShellSupportChoice00
          (binaryPairShellTargetPairSupportChoice sourcePair targetPair)).card
        (binaryPairShellSupportChoice01
          (binaryPairShellTargetPairSupportChoice sourcePair targetPair)).card
        (binaryPairShellSupportChoice10
          (binaryPairShellTargetPairSupportChoice sourcePair targetPair)).card
        (binaryPairShellSupportChoice11
          (binaryPairShellTargetPairSupportChoice sourcePair targetPair)).card := by
  have hcond :=
    binaryPairShellTargetPairSupportChoice_etaCondition_of_mem_targetCell
      hsource htarget
  unfold binaryPairShellEtaSupportChoices
  rw [if_pos hcond]
  exact binaryPairShellTargetPairSupportChoice_mem_supportChoices sourcePair targetPair

theorem binaryPairShellTargetCell_card_eq_etaSupportChoiceSigma_card {n : Nat}
    {source target : BinaryOrbitIndex n}
    {sourcePair : QaryWord 2 n × QaryWord 2 n} {d : Nat}
    (hsource : sourcePair ∈ binaryWordPairOrbitCell source) :
    (binaryPairShellTargetCell sourcePair target d).card =
      (binaryPairShellEtaSupportChoiceSigma sourcePair source target d).card := by
  classical
  apply Finset.card_bij
    (fun targetPair _htarget =>
      let choice := binaryPairShellTargetPairSupportChoice sourcePair targetPair
      ⟨(binaryPairShellSupportChoice00 choice).card,
        ⟨(binaryPairShellSupportChoice01 choice).card,
          ⟨(binaryPairShellSupportChoice10 choice).card,
            ⟨(binaryPairShellSupportChoice11 choice).card, choice⟩⟩⟩⟩)
  · intro targetPair htarget
    simp only [binaryPairShellEtaSupportChoiceSigma, Finset.mem_sigma,
      Finset.mem_range]
    refine ⟨Nat.lt_succ_of_le (finset_card_le_fin _),
      Nat.lt_succ_of_le (finset_card_le_fin _),
      Nat.lt_succ_of_le (finset_card_le_fin _),
      Nat.lt_succ_of_le (finset_card_le_fin _), ?_⟩
    simpa using
      binaryPairShellTargetPairSupportChoice_mem_etaSupportChoices_of_mem_targetCell
        hsource htarget
  · intro targetPair₁ htarget₁ targetPair₂ htarget₂ hencoded
    have hcompat₁ :
        binaryPairShellCompatible sourcePair targetPair₁
          (binaryPairShellTargetPairSupport sourcePair targetPair₁).card := by
      have hcompat := (mem_binaryPairShellTargetCell.mp htarget₁).2
      exact ⟨hcompat.1, rfl⟩
    have hcompat₂ :
        binaryPairShellCompatible sourcePair targetPair₂
          (binaryPairShellTargetPairSupport sourcePair targetPair₂).card := by
      have hcompat := (mem_binaryPairShellTargetCell.mp htarget₂).2
      exact ⟨hcompat.1, rfl⟩
    have hchoice :
        binaryPairShellTargetPairSupportChoice sourcePair targetPair₁ =
          binaryPairShellTargetPairSupportChoice sourcePair targetPair₂ := by
      exact congrArg (fun item =>
        item.2.2.2.2) hencoded
    calc
      targetPair₁ =
          binaryPairShellSupportChoiceTargetPair sourcePair
            (binaryPairShellTargetPairSupportChoice sourcePair targetPair₁) := by
        exact (binaryPairShellSupportChoiceTargetPair_inverse hcompat₁).symm
      _ =
          binaryPairShellSupportChoiceTargetPair sourcePair
            (binaryPairShellTargetPairSupportChoice sourcePair targetPair₂) := by
        rw [hchoice]
      _ = targetPair₂ := by
        exact binaryPairShellSupportChoiceTargetPair_inverse hcompat₂
  · intro item hitem
    rcases item with ⟨a00, a01, a10, a11, choice⟩
    rw [binaryPairShellEtaSupportChoiceSigma, Finset.mem_sigma] at hitem
    rcases hitem with ⟨_ha00, hitem⟩
    rw [Finset.mem_sigma] at hitem
    rcases hitem with ⟨_ha01, hitem⟩
    rw [Finset.mem_sigma] at hitem
    rcases hitem with ⟨_ha10, hitem⟩
    rw [Finset.mem_sigma] at hitem
    rcases hitem with ⟨_ha11, hchoiceEta⟩
    let targetPair := binaryPairShellSupportChoiceTargetPair sourcePair choice
    have htarget :
        targetPair ∈ binaryPairShellTargetCell sourcePair target d := by
      exact binaryPairShellSupportChoiceTargetPair_mem_targetCell_of_mem_eta
        hsource hchoiceEta
    refine ⟨targetPair, htarget, ?_⟩
    have hchoiceBase :=
      binaryPairShellSupportChoice_mem_supportChoices_of_mem_eta hchoiceEta
    have hrecover :
        binaryPairShellTargetPairSupportChoice sourcePair targetPair = choice := by
      simpa [targetPair] using
        binaryPairShellTargetPairSupportChoice_targetPair_inverse hchoiceBase
    have hmem := mem_binaryPairShellSupportChoices.mp hchoiceBase
    have h00card := (Finset.mem_powersetCard.mp hmem.1).2
    have h01card := (Finset.mem_powersetCard.mp hmem.2.1).2
    have h10card := (Finset.mem_powersetCard.mp hmem.2.2.1).2
    have h11card := (Finset.mem_powersetCard.mp hmem.2.2.2).2
    simp [targetPair, hrecover, h00card, h01card, h10card, h11card]

/--
Source-degree form of the eta count.  This is the direct combinatorial content
of `binaryEtaCoeff`: for a fixed source pair, the compatible shell flips that
land in a target orbit are counted by the eta coefficient.
-/
def BinaryPairShellSourceDegreeIdentity (n : Nat) : Prop :=
  forall (source target : BinaryOrbitIndex n) (d : Nat)
    (sourcePair : QaryWord 2 n × QaryWord 2 n),
    sourcePair ∈ binaryWordPairOrbitCell source ->
      ((binaryPairShellTargetCell sourcePair target d).card : Rat) =
        binaryEtaCoeff n source target d

theorem binaryPairShellSourceDegreeIdentity_holds (n : Nat) :
    BinaryPairShellSourceDegreeIdentity n := by
  intro source target d sourcePair hsource
  calc
    ((binaryPairShellTargetCell sourcePair target d).card : Rat) =
        ((binaryPairShellEtaSupportChoiceSigma sourcePair source target d).card : Rat) := by
      exact_mod_cast
        binaryPairShellTargetCell_card_eq_etaSupportChoiceSigma_card
          (source := source) (target := target) (d := d) hsource
    _ =
        (Finset.range (n + 1)).sum (fun a00 =>
          (Finset.range (n + 1)).sum (fun a01 =>
            (Finset.range (n + 1)).sum (fun a10 =>
              (Finset.range (n + 1)).sum (fun a11 =>
                ((binaryPairShellEtaSupportChoices sourcePair source target d
                  a00 a01 a10 a11).card : Rat))))) := by
      rw [binaryPairShellEtaSupportChoiceSigma_card]
      simp [Nat.cast_sum]
    _ = binaryEtaCoeff n source target d := by
      exact binaryPairShellEtaSupportChoices_sum_card_eq_etaCoeff hsource d

theorem binaryPairShell_edge_sum_source_eq_target {n : Nat}
    (source target : BinaryOrbitIndex n) (d : Nat) :
    (binaryWordPairOrbitCell source).sum (fun sourcePair =>
      (binaryPairShellTargetCell sourcePair target d).card) =
    (binaryWordPairOrbitCell target).sum (fun targetPair =>
      (binaryPairShellSourceCell source targetPair d).card) := by
  classical
  let sourceEdges :=
    (binaryWordPairOrbitCell source).sigma (fun sourcePair =>
      binaryPairShellTargetCell sourcePair target d)
  let targetEdges :=
    (binaryWordPairOrbitCell target).sigma (fun targetPair =>
      binaryPairShellSourceCell source targetPair d)
  have hcard : sourceEdges.card = targetEdges.card := by
    apply Finset.card_bij
      (fun edge _ => ⟨edge.2, edge.1⟩)
    · intro edge hedge
      rw [Finset.mem_sigma] at hedge ⊢
      rcases hedge with ⟨hsource, htarget⟩
      rw [mem_binaryPairShellTargetCell] at htarget
      exact ⟨htarget.1, by
        rw [mem_binaryPairShellSourceCell]
        exact ⟨hsource, htarget.2⟩⟩
    · intro a _ b _ hswap
      cases a with
      | mk asource atarget =>
          cases b with
          | mk bsource btarget =>
              simp at hswap ⊢
              exact ⟨hswap.2, hswap.1⟩
    · intro edge hedge
      rw [Finset.mem_sigma] at hedge
      rcases hedge with ⟨htarget, hsource⟩
      rw [mem_binaryPairShellSourceCell] at hsource
      refine ⟨⟨edge.2, edge.1⟩, ?_, ?_⟩
      · rw [Finset.mem_sigma]
        refine ⟨hsource.1, ?_⟩
        rw [mem_binaryPairShellTargetCell]
        exact ⟨htarget, hsource.2⟩
      · rfl
  calc
    (binaryWordPairOrbitCell source).sum (fun sourcePair =>
        (binaryPairShellTargetCell sourcePair target d).card) = sourceEdges.card := by
      simp [sourceEdges]
    _ = targetEdges.card := hcard
    _ = (binaryWordPairOrbitCell target).sum (fun targetPair =>
        (binaryPairShellSourceCell source targetPair d).card) := by
      simp [targetEdges]

/--
Pure orbit-theoretic degree identity for the shell relation.  This is now the
eta-specific counting statement left to prove: every target pair in a target
orbit sees the same number of compatible source pairs, with degree determined
by `binaryEtaCoeff`.
-/
def BinaryPairShellTargetDegreeIdentity (n : Nat) : Prop :=
  forall (source target : BinaryOrbitIndex n) (d : Nat)
    (targetPair : QaryWord 2 n × QaryWord 2 n),
    targetPair ∈ binaryWordPairOrbitCell target ->
      binaryOrbitMultiplicity n target *
          ((binaryPairShellSourceCell source targetPair d).card : Rat) =
      binaryOrbitMultiplicity n source *
          binaryEtaCoeff n source target d

theorem binaryPairShellTargetDegreeIdentity_of_sourceDegree {n : Nat}
    (hsourceDegree : BinaryPairShellSourceDegreeIdentity n) :
    BinaryPairShellTargetDegreeIdentity n := by
  intro source target d targetPair htargetPair
  have hedgeNat := binaryPairShell_edge_sum_source_eq_target source target d
  have hsourceSumRat :
      (((binaryWordPairOrbitCell source).sum (fun sourcePair =>
        (binaryPairShellTargetCell sourcePair target d).card) : Nat) : Rat) =
        ((binaryWordPairOrbitCell source).card : Rat) *
          binaryEtaCoeff n source target d := by
    rw [Nat.cast_sum]
    calc
      (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          ((binaryPairShellTargetCell sourcePair target d).card : Rat)) =
        (binaryWordPairOrbitCell source).sum (fun _sourcePair =>
          binaryEtaCoeff n source target d) := by
          apply Finset.sum_congr rfl
          intro sourcePair hsourcePair
          exact hsourceDegree source target d sourcePair hsourcePair
      _ = ((binaryWordPairOrbitCell source).card : Rat) *
            binaryEtaCoeff n source target d := by
          simp [Finset.sum_const, nsmul_eq_mul]
  have htargetSumRat :
      (((binaryWordPairOrbitCell target).sum (fun pair =>
        (binaryPairShellSourceCell source pair d).card) : Nat) : Rat) =
        ((binaryWordPairOrbitCell target).card : Rat) *
          ((binaryPairShellSourceCell source targetPair d).card : Rat) := by
    rw [Nat.cast_sum]
    calc
      (binaryWordPairOrbitCell target).sum (fun pair =>
          ((binaryPairShellSourceCell source pair d).card : Rat)) =
        (binaryWordPairOrbitCell target).sum (fun _pair =>
          ((binaryPairShellSourceCell source targetPair d).card : Rat)) := by
          apply Finset.sum_congr rfl
          intro pair hpair
          have hcard :=
            binaryPairShellSourceCell_card_eq_of_mem_target_orbit
              (source := source) (target := target) (targetPair := targetPair)
              (targetPair' := pair) (d := d) htargetPair hpair
          exact_mod_cast hcard.symm
      _ = ((binaryWordPairOrbitCell target).card : Rat) *
            ((binaryPairShellSourceCell source targetPair d).card : Rat) := by
          simp [Finset.sum_const, nsmul_eq_mul]
  have hsumEq :
      ((binaryWordPairOrbitCell source).card : Rat) *
          binaryEtaCoeff n source target d =
        ((binaryWordPairOrbitCell target).card : Rat) *
          ((binaryPairShellSourceCell source targetPair d).card : Rat) := by
    calc
      ((binaryWordPairOrbitCell source).card : Rat) *
          binaryEtaCoeff n source target d =
        (((binaryWordPairOrbitCell source).sum (fun sourcePair =>
          (binaryPairShellTargetCell sourcePair target d).card) : Nat) : Rat) := by
          exact hsourceSumRat.symm
      _ =
        (((binaryWordPairOrbitCell target).sum (fun pair =>
          (binaryPairShellSourceCell source pair d).card) : Nat) : Rat) := by
          exact_mod_cast hedgeNat
      _ = ((binaryWordPairOrbitCell target).card : Rat) *
          ((binaryPairShellSourceCell source targetPair d).card : Rat) := by
          exact htargetSumRat
  have hsourceCard :
      ((binaryWordPairOrbitCell source).card : Rat) =
        binaryOrbitMultiplicity n source := by
    rw [binaryWordPairOrbitCell_card, binaryOrbitMultiplicityNat_cast]
  have htargetCard :
      ((binaryWordPairOrbitCell target).card : Rat) =
        binaryOrbitMultiplicity n target := by
    rw [binaryWordPairOrbitCell_card, binaryOrbitMultiplicityNat_cast]
  simpa [hsourceCard, htargetCard] using hsumEq.symm

theorem binaryPairShellTargetDegreeIdentity_holds (n : Nat) :
    BinaryPairShellTargetDegreeIdentity n :=
  binaryPairShellTargetDegreeIdentity_of_sourceDegree
    (binaryPairShellSourceDegreeIdentity_holds n)

/--
Pair-orbit shell sum identity after target refinement.  This is the remaining
counting target before the eta-coefficient expansion: for each source orbit,
shell radius, and target orbit, the source-pair sum has the eta multiplicity
predicted by Proposition 4.5.
-/
def BinaryTranslatedPairShellOrbitAveragePairCountIdentity {n : Nat}
    (C : Finset (QaryWord 2 n)) : Prop :=
  forall (source target : BinaryOrbitIndex n) (d : Nat),
    binaryOrbitMultiplicity n target *
        (binaryWordPairOrbitCell source).sum (fun pair =>
          ((binaryTranslatedPairShellTargetCell C pair.1 pair.2 d target).card : Rat)) =
        binaryOrbitMultiplicity n source *
        binaryEtaCoeff n source target d *
          ((binaryCodeTripleOrbitCell C target).card : Rat)

theorem binaryTranslatedPairShellOrbitAveragePairCountIdentity_of_targetDegree
    {n : Nat} (C : Finset (QaryWord 2 n))
    (hdegree : BinaryPairShellTargetDegreeIdentity n) :
    BinaryTranslatedPairShellOrbitAveragePairCountIdentity C := by
  classical
  intro source target d
  let targetWeight : QaryWord 2 n × QaryWord 2 n -> Rat := fun targetPair =>
    ((binaryRelativeCodeBaseCell C targetPair.1 targetPair.2).card : Rat)
  have hinner :
      forall targetPair : QaryWord 2 n × QaryWord 2 n,
        (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          ((binaryTranslatedPairShellExactTargetPairCell C sourcePair d targetPair).card : Rat)) =
          ((binaryPairShellSourceCell source targetPair d).card : Rat) *
            targetWeight targetPair := by
    intro targetPair
    calc
      (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          ((binaryTranslatedPairShellExactTargetPairCell C sourcePair d targetPair).card : Rat)) =
        (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          if binaryPairShellCompatible sourcePair targetPair d then
            targetWeight targetPair
          else
            0) := by
          apply Finset.sum_congr rfl
          intro sourcePair _hsourcePair
          by_cases hcompat : binaryPairShellCompatible sourcePair targetPair d
          · have hcard :=
              binaryTranslatedPairShellExactTargetPairCell_card_eq_relativeBaseCell_card_of_compatible
                C sourcePair targetPair d hcompat
            simp [hcompat, targetWeight, hcard]
          · have hcard :=
              binaryTranslatedPairShellExactTargetPairCell_card_eq_zero_of_not_compatible
                C sourcePair targetPair d hcompat
            simp [hcompat, hcard]
      _ = ((binaryWordPairOrbitCell source).filter (fun sourcePair =>
            binaryPairShellCompatible sourcePair targetPair d)).sum
          (fun _sourcePair => targetWeight targetPair) := by
          rw [Finset.sum_filter]
      _ = ((binaryPairShellSourceCell source targetPair d).card : Rat) *
            targetWeight targetPair := by
          simp [binaryPairShellSourceCell, Finset.sum_const, nsmul_eq_mul]
  have htargetExpand :
      (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          ((binaryTranslatedPairShellTargetCell C sourcePair.1 sourcePair.2 d target).card : Rat)) =
        (binaryWordPairOrbitCell target).sum (fun targetPair =>
          ((binaryPairShellSourceCell source targetPair d).card : Rat) *
            targetWeight targetPair) := by
    calc
      (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          ((binaryTranslatedPairShellTargetCell C sourcePair.1 sourcePair.2 d target).card : Rat)) =
        (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          (binaryWordPairOrbitCell target).sum (fun targetPair =>
            ((binaryTranslatedPairShellExactTargetPairCell C sourcePair d targetPair).card : Rat))) := by
          apply Finset.sum_congr rfl
          intro sourcePair _hsourcePair
          exact binaryTranslatedPairShellTargetCell_card_eq_sum_exactTargetPairCell_card
            C sourcePair d target
      _ = (binaryWordPairOrbitCell target).sum (fun targetPair =>
          (binaryWordPairOrbitCell source).sum (fun sourcePair =>
            ((binaryTranslatedPairShellExactTargetPairCell C sourcePair d targetPair).card : Rat))) := by
          rw [Finset.sum_comm]
      _ = (binaryWordPairOrbitCell target).sum (fun targetPair =>
          ((binaryPairShellSourceCell source targetPair d).card : Rat) *
            targetWeight targetPair) := by
          apply Finset.sum_congr rfl
          intro targetPair _htargetPair
          exact hinner targetPair
  have htriple :
      (binaryWordPairOrbitCell target).sum targetWeight =
        ((binaryCodeTripleOrbitCell C target).card : Rat) := by
    have hcast :
        (((binaryWordPairOrbitCell target).sum (fun pair =>
          (binaryRelativeCodeBaseCell C pair.1 pair.2).card) : Nat) : Rat) =
          ((binaryCodeTripleOrbitCell C target).card : Rat) := by
      exact_mod_cast binaryWordPairOrbitCell_baseCell_sum_card C target
    simpa [targetWeight, Nat.cast_sum] using hcast
  calc
    binaryOrbitMultiplicity n target *
        (binaryWordPairOrbitCell source).sum (fun sourcePair =>
          ((binaryTranslatedPairShellTargetCell C sourcePair.1 sourcePair.2 d target).card : Rat)) =
      binaryOrbitMultiplicity n target *
        (binaryWordPairOrbitCell target).sum (fun targetPair =>
          ((binaryPairShellSourceCell source targetPair d).card : Rat) *
            targetWeight targetPair) := by
        rw [htargetExpand]
    _ = (binaryWordPairOrbitCell target).sum (fun targetPair =>
        binaryOrbitMultiplicity n target *
          (((binaryPairShellSourceCell source targetPair d).card : Rat) *
            targetWeight targetPair)) := by
        rw [Finset.mul_sum]
    _ = (binaryWordPairOrbitCell target).sum (fun targetPair =>
        (binaryOrbitMultiplicity n source *
          binaryEtaCoeff n source target d) * targetWeight targetPair) := by
        apply Finset.sum_congr rfl
        intro targetPair htargetPair
        have hdeg := hdegree source target d targetPair htargetPair
        calc
          binaryOrbitMultiplicity n target *
              (((binaryPairShellSourceCell source targetPair d).card : Rat) *
                targetWeight targetPair) =
            (binaryOrbitMultiplicity n target *
              ((binaryPairShellSourceCell source targetPair d).card : Rat)) *
                targetWeight targetPair := by ring
          _ = (binaryOrbitMultiplicity n source *
              binaryEtaCoeff n source target d) * targetWeight targetPair := by
                rw [hdeg]
    _ = (binaryOrbitMultiplicity n source *
          binaryEtaCoeff n source target d) *
        (binaryWordPairOrbitCell target).sum targetWeight := by
        rw [Finset.mul_sum]
    _ = binaryOrbitMultiplicity n source *
        binaryEtaCoeff n source target d *
          ((binaryCodeTripleOrbitCell C target).card : Rat) := by
        rw [htriple]

theorem binaryTranslatedPairShellOrbitAveragePairCountIdentity_holds {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    BinaryTranslatedPairShellOrbitAveragePairCountIdentity C :=
  binaryTranslatedPairShellOrbitAveragePairCountIdentity_of_targetDegree C
    (binaryPairShellTargetDegreeIdentity_holds n)

/--
Source-pair-orbit form of the shell/eta identity.  It removes the permutation
fiber algebra from `BinaryTranslatedPairShellOrbitAverageCardIdentity`.
-/
def BinaryTranslatedPairShellOrbitAveragePairSumIdentity {n : Nat}
    (C : Finset (QaryWord 2 n)) : Prop :=
  forall (source : BinaryOrbitIndex n) (d : Nat),
    (binaryOrbitMultiplicity n source)⁻¹ *
        (binaryWordPairOrbitCell source).sum (fun pair =>
          ((binaryTranslatedPairShellBaseCell C pair.1 pair.2 d).card : Rat)) =
      Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        binaryEtaCoeff n source target d *
          (((binaryCodeTripleOrbitCell C target).card : Rat) /
            binaryOrbitMultiplicity n target))

theorem binaryTranslatedPairShellOrbitAveragePairSumIdentity_of_pairCount
    {n : Nat} (C : Finset (QaryWord 2 n))
    (hcount : BinaryTranslatedPairShellOrbitAveragePairCountIdentity C) :
    BinaryTranslatedPairShellOrbitAveragePairSumIdentity C := by
  classical
  intro source d
  let targetSum : BinaryOrbitIndex n -> Rat := fun target =>
    (binaryWordPairOrbitCell source).sum (fun pair =>
      ((binaryTranslatedPairShellTargetCell C pair.1 pair.2 d target).card : Rat))
  have hpartition :
      (binaryWordPairOrbitCell source).sum (fun pair =>
          ((binaryTranslatedPairShellBaseCell C pair.1 pair.2 d).card : Rat)) =
        Finset.univ.sum targetSum := by
    calc
      (binaryWordPairOrbitCell source).sum (fun pair =>
          ((binaryTranslatedPairShellBaseCell C pair.1 pair.2 d).card : Rat)) =
        (binaryWordPairOrbitCell source).sum (fun pair =>
          Finset.univ.sum (fun target : BinaryOrbitIndex n =>
            ((binaryTranslatedPairShellTargetCell C pair.1 pair.2 d target).card : Rat))) := by
          apply Finset.sum_congr rfl
          intro pair _hpair
          exact binaryTranslatedPairShellBaseCell_card_eq_sum_targetCell_card
            C pair.1 pair.2 d
      _ = Finset.univ.sum (fun target : BinaryOrbitIndex n =>
          (binaryWordPairOrbitCell source).sum (fun pair =>
            ((binaryTranslatedPairShellTargetCell C pair.1 pair.2 d target).card : Rat))) := by
          rw [Finset.sum_comm]
      _ = Finset.univ.sum targetSum := rfl
  calc
    (binaryOrbitMultiplicity n source)⁻¹ *
        (binaryWordPairOrbitCell source).sum (fun pair =>
          ((binaryTranslatedPairShellBaseCell C pair.1 pair.2 d).card : Rat)) =
      (binaryOrbitMultiplicity n source)⁻¹ * Finset.univ.sum targetSum := by
        rw [hpartition]
    _ = Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        (binaryOrbitMultiplicity n source)⁻¹ * targetSum target) := by
        rw [Finset.mul_sum]
    _ = Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        binaryEtaCoeff n source target d *
          (((binaryCodeTripleOrbitCell C target).card : Rat) /
            binaryOrbitMultiplicity n target)) := by
        apply Finset.sum_congr rfl
        intro target _htarget
        let S : Rat := binaryOrbitMultiplicity n source
        let T : Rat := binaryOrbitMultiplicity n target
        let A : Rat := targetSum target
        let E : Rat := binaryEtaCoeff n source target d
        let K : Rat := ((binaryCodeTripleOrbitCell C target).card : Rat)
        have hS : S ≠ 0 := by
          dsimp [S]
          exact binaryOrbitMultiplicity_ne_zero n source
        have hT : T ≠ 0 := by
          dsimp [T]
          exact binaryOrbitMultiplicity_ne_zero n target
        have hcount' : T * A = S * E * K := by
          simpa [S, T, A, E, K, targetSum, mul_assoc] using hcount source target d
        have hterm : S⁻¹ * A = E * (K / T) := by
          field_simp [hS, hT]
          simpa [mul_assoc, mul_left_comm, mul_comm] using hcount'
        simpa [S, T, A, E, K] using hterm

theorem binaryTranslatedPairShellOrbitAverageCardIdentity_of_pairSum
    {n : Nat} (C : Finset (QaryWord 2 n))
    (hpair :
      BinaryTranslatedPairShellOrbitAveragePairSumIdentity C) :
    BinaryTranslatedPairShellOrbitAverageCardIdentity C := by
  classical
  intro u v i
  let source : BinaryOrbitIndex n := binaryOrbitOf u v
  let weight : QaryWord 2 n × QaryWord 2 n -> Nat := fun pair =>
    (binaryTranslatedPairShellBaseCell C pair.1 pair.2 i.val).card
  rcases binaryPairPermutationUniformFiber_of_surjective u v
      (binaryPairPermutationOrbitSurjective_universal u v) with
    ⟨fiberCard, hpermCard, hfiber⟩
  have hpairCard :
      (binaryWordPairOrbitCell source).card =
        binaryOrbitMultiplicityNat n source := by
    exact binaryWordPairOrbitCell_card source
  have hpermCardNat :
      Fintype.card (Equiv.Perm (Fin n)) =
        binaryOrbitMultiplicityNat n source * fiberCard := by
    simpa [source, hpairCard, Nat.mul_comm, Nat.mul_left_comm, Nat.mul_assoc]
      using hpermCard
  have hfiberCard_ne_nat : fiberCard ≠ 0 := by
    intro hfiberZero
    have hpermZero : Fintype.card (Equiv.Perm (Fin n)) = 0 := by
      have hpermCardNatZero := hpermCardNat
      rw [hfiberZero, Nat.mul_zero] at hpermCardNatZero
      exact hpermCardNatZero
    have hpermPos : 0 < Fintype.card (Equiv.Perm (Fin n)) :=
      Fintype.card_pos_iff.mpr ⟨Equiv.refl (Fin n)⟩
    exact (Nat.ne_of_gt hpermPos) hpermZero
  have hfiberCard_ne : ((fiberCard : Nat) : Rat) ≠ 0 := by
    exact_mod_cast hfiberCard_ne_nat
  have hpermCardRat :
      ((Fintype.card (Equiv.Perm (Fin n))) : Rat) =
        binaryOrbitMultiplicity n source * (fiberCard : Rat) := by
    have hcast :
        ((Fintype.card (Equiv.Perm (Fin n))) : Rat) =
          (binaryOrbitMultiplicityNat n source : Rat) * (fiberCard : Rat) := by
      exact_mod_cast hpermCardNat
    simpa [binaryOrbitMultiplicityNat_cast] using hcast
  have hsumNat :
      (Finset.univ : Finset (Equiv.Perm (Fin n))).sum (fun sigma =>
          weight (binaryPermutedRelativeWordPair u v sigma)) =
        fiberCard * (binaryWordPairOrbitCell source).sum weight := by
    have hsum :=
      finset_sum_eq_mul_sum_of_fiber_eq
        (s := (Finset.univ : Finset (Equiv.Perm (Fin n))))
        (t := binaryWordPairOrbitCell source)
        (f := binaryPermutedRelativeWordPair u v)
        (weight := weight)
        (m := fiberCard)
        (by
          intro sigma _hsigma
          simpa [source] using binaryPermutedRelativeWordPair_mem_orbitCell u v sigma)
        (by
          intro pair hpairMem
          simpa [source] using hfiber pair (by simpa [source] using hpairMem))
    simpa using hsum
  let permCard : Rat := ((Fintype.card (Equiv.Perm (Fin n))) : Rat)
  let cubeCard : Rat := (((2 ^ n : Nat) : Rat))
  let sigmaSum : Rat :=
    Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
      ((binaryTranslatedPairShellBaseCell C
        ((binaryWordPermEquiv sigma).symm u)
        ((binaryWordPermEquiv sigma).symm v)
        i.val).card : Rat))
  let pairSum : Rat :=
    (binaryWordPairOrbitCell source).sum (fun pair =>
      ((binaryTranslatedPairShellBaseCell C pair.1 pair.2 i.val).card : Rat))
  have hsumRat : sigmaSum = (fiberCard : Rat) * pairSum := by
    have hcast :
        (((Finset.univ : Finset (Equiv.Perm (Fin n))).sum (fun sigma =>
          weight (binaryPermutedRelativeWordPair u v sigma)) : Nat) : Rat) =
          ((fiberCard * (binaryWordPairOrbitCell source).sum weight : Nat) : Rat) := by
      exact_mod_cast hsumNat
    simpa [sigmaSum, pairSum, weight, binaryPermutedRelativeWordPair,
      Nat.cast_sum, Nat.cast_mul] using hcast
  have hpermCardRat' :
      permCard = binaryOrbitMultiplicity n source * (fiberCard : Rat) := by
    simpa [permCard] using hpermCardRat
  have hpermCard_ne : permCard ≠ 0 := by
    have hpos : 0 < Fintype.card (Equiv.Perm (Fin n)) :=
      Fintype.card_pos_iff.mpr ⟨Equiv.refl (Fin n)⟩
    have hposRat : 0 < permCard := by
      dsimp [permCard]
      exact_mod_cast hpos
    exact hposRat.ne'
  have hcubeCard_ne : cubeCard ≠ 0 := by
    have hpos : 0 < 2 ^ n := Nat.pow_pos (by decide : 0 < 2)
    have hposRat : 0 < cubeCard := by
      dsimp [cubeCard]
      exact_mod_cast hpos
    exact hposRat.ne'
  have hsource_ne : binaryOrbitMultiplicity n source ≠ 0 :=
    binaryOrbitMultiplicity_ne_zero n source
  have hnormalized :
      permCard⁻¹ * sigmaSum =
        (binaryOrbitMultiplicity n source)⁻¹ * pairSum := by
    rw [hsumRat, hpermCardRat']
    field_simp [hsource_ne, hfiberCard_ne]
  have hpair' := hpair source i.val
  calc
    (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) *
        ((((2 ^ n : Nat) : Rat)⁻¹) *
          Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
            ((binaryTranslatedPairShellBaseCell C
              ((binaryWordPermEquiv sigma).symm u)
              ((binaryWordPermEquiv sigma).symm v)
              i.val).card : Rat))) =
      cubeCard⁻¹ * (permCard⁻¹ * sigmaSum) := by
        simp [permCard, cubeCard, sigmaSum]
        ring
    _ = cubeCard⁻¹ * ((binaryOrbitMultiplicity n source)⁻¹ * pairSum) := by
        rw [hnormalized]
    _ = cubeCard⁻¹ *
        Finset.univ.sum (fun target : BinaryOrbitIndex n =>
          binaryEtaCoeff n source target i.val *
            (((binaryCodeTripleOrbitCell C target).card : Rat) /
              binaryOrbitMultiplicity n target)) := by
        rw [hpair']
    _ = Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        binaryEtaCoeff n source target i.val *
          binaryCodeCellX C target) := by
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro target _htarget
        unfold binaryCodeCellX binaryCodeCellDenominator
        field_simp [hcubeCard_ne, binaryOrbitMultiplicity_ne_zero n target]
        simp [cubeCard, mul_assoc, mul_comm]
    _ = Finset.univ.sum (fun target : BinaryOrbitIndex n =>
        binaryEtaCoeff n (binaryOrbitOf u v) target i.val *
          binaryCodeCellX C target) := by
        rfl

theorem binaryTranslatedPairShellOrbitAverageCardIdentity_of_pairCount
    {n : Nat} (C : Finset (QaryWord 2 n))
    (hcount : BinaryTranslatedPairShellOrbitAveragePairCountIdentity C) :
    BinaryTranslatedPairShellOrbitAverageCardIdentity C :=
  binaryTranslatedPairShellOrbitAverageCardIdentity_of_pairSum C
    (binaryTranslatedPairShellOrbitAveragePairSumIdentity_of_pairCount C hcount)

theorem binaryTranslatedPairShellOrbitAveragePairSumIdentity_holds {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    BinaryTranslatedPairShellOrbitAveragePairSumIdentity C :=
  binaryTranslatedPairShellOrbitAveragePairSumIdentity_of_pairCount C
    (binaryTranslatedPairShellOrbitAveragePairCountIdentity_holds C)

theorem binaryTranslatedPairShellOrbitAverageCardIdentity_holds {n : Nat}
    (C : Finset (QaryWord 2 n)) :
    BinaryTranslatedPairShellOrbitAverageCardIdentity C :=
  binaryTranslatedPairShellOrbitAverageCardIdentity_of_pairCount C
    (binaryTranslatedPairShellOrbitAveragePairCountIdentity_holds C)

theorem binaryWeightedTranslatedPairShellOrbitAverageCardIdentity_of_shell
    {n : Nat} (lambda : Fin (n + 1) -> Rat)
    (C : Finset (QaryWord 2 n))
    (hshell : BinaryTranslatedPairShellOrbitAverageCardIdentity C) :
    BinaryWeightedTranslatedPairShellOrbitAverageCardIdentity lambda C := by
  classical
  intro u v
  let P : Rat := (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹)
  let Q : Rat := (((2 ^ n : Nat) : Rat)⁻¹)
  let shell : Fin (n + 1) -> Equiv.Perm (Fin n) -> Rat :=
    fun i sigma =>
      ((binaryTranslatedPairShellBaseCell C
        ((binaryWordPermEquiv sigma).symm u)
        ((binaryWordPermEquiv sigma).symm v)
        i.val).card : Rat)
  let eta : Fin (n + 1) -> BinaryOrbitIndex n -> Rat :=
    fun i target => binaryEtaCoeff n (binaryOrbitOf u v) target i.val
  let x : BinaryX n := binaryCodeCellX C
  have hleft :
      P * (Q * Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
          Finset.univ.sum (fun i : Fin (n + 1) =>
            lambda i * shell i sigma))) =
        Finset.univ.sum (fun i : Fin (n + 1) =>
          lambda i *
            (P * (Q * Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
              shell i sigma)))) := by
    calc
      P * (Q * Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
          Finset.univ.sum (fun i : Fin (n + 1) =>
            lambda i * shell i sigma))) =
        P * (Q * Finset.univ.sum (fun i : Fin (n + 1) =>
          Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
            lambda i * shell i sigma))) := by
          rw [Finset.sum_comm]
      _ = P * (Q * Finset.univ.sum (fun i : Fin (n + 1) =>
          lambda i * Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
            shell i sigma))) := by
          congr 2
          apply Finset.sum_congr rfl
          intro i _
          rw [← Finset.mul_sum]
      _ = Finset.univ.sum (fun i : Fin (n + 1) =>
          lambda i *
            (P * (Q * Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
              shell i sigma)))) := by
          rw [show
            P * (Q * Finset.univ.sum (fun i : Fin (n + 1) =>
              lambda i * Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
                shell i sigma))) =
              (P * Q) * Finset.univ.sum (fun i : Fin (n + 1) =>
                lambda i * Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
                  shell i sigma)) by ring]
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro i _
          ring
  have hright :
      Finset.univ.sum (fun i : Fin (n + 1) =>
          lambda i *
            (P * (Q * Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
              shell i sigma)))) =
        Finset.univ.sum (fun target : BinaryOrbitIndex n =>
          binaryLasserreTargetCoeff lambda (binaryOrbitOf u v) target *
            x target) := by
    calc
      Finset.univ.sum (fun i : Fin (n + 1) =>
          lambda i *
            (P * (Q * Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
              shell i sigma)))) =
        Finset.univ.sum (fun i : Fin (n + 1) =>
          lambda i *
            Finset.univ.sum (fun target : BinaryOrbitIndex n =>
              eta i target * x target)) := by
          apply Finset.sum_congr rfl
          intro i _
          have hi := hshell u v i
          simpa [P, Q, shell, eta, x] using congrArg (fun y => lambda i * y) hi
      _ = Finset.univ.sum (fun i : Fin (n + 1) =>
          Finset.univ.sum (fun target : BinaryOrbitIndex n =>
            lambda i * (eta i target * x target))) := by
          apply Finset.sum_congr rfl
          intro i _
          rw [Finset.mul_sum]
      _ = Finset.univ.sum (fun target : BinaryOrbitIndex n =>
          Finset.univ.sum (fun i : Fin (n + 1) =>
            lambda i * (eta i target * x target))) := by
          rw [Finset.sum_comm]
      _ = Finset.univ.sum (fun target : BinaryOrbitIndex n =>
          binaryLasserreTargetCoeff lambda (binaryOrbitOf u v) target *
            x target) := by
          apply Finset.sum_congr rfl
          intro target _
          unfold binaryLasserreTargetCoeff
          rw [Finset.sum_mul]
          apply Finset.sum_congr rfl
          intro i _
          ring
  simpa [P, Q, shell, x] using hleft.trans hright

theorem binaryWeightedTranslatedPairShellOrbitAverageCardIdentity_holds
    {n : Nat} (lambda : Fin (n + 1) -> Rat)
    (C : Finset (QaryWord 2 n)) :
    BinaryWeightedTranslatedPairShellOrbitAverageCardIdentity lambda C :=
  binaryWeightedTranslatedPairShellOrbitAverageCardIdentity_of_shell lambda C
    (binaryTranslatedPairShellOrbitAverageCardIdentity_holds C)

theorem binarySlackWeightedTranslatedCodeOrbitAverageMatrix_eq_lasserreTerwilliger
    {n : Nat} (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 n))
    (hshell : BinaryWeightedTranslatedPairShellOrbitAverageCardIdentity lambda C) :
    binarySlackWeightedTranslatedCodeOrbitAverageMatrix lambda beta C =
      binaryTerwilligerMatrix (binaryLasserreX lambda beta (binaryCodeCellX C)) := by
  ext u v
  rw [binarySlackWeightedTranslatedCodeOrbitAverageMatrix_apply_shell_card_sum_sub_zeroCoeff]
  rw [hshell u v]
  rfl

theorem binaryRelativeCodeOrbitAverageMatrix_apply_card_sum {n : Nat}
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n) :
    binaryRelativeCodeOrbitAverageMatrix C u v =
      (((Fintype.card (Equiv.Perm (Fin n))) : Rat)⁻¹) *
        ((((2 ^ n : Nat) : Rat)⁻¹) *
          Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
            ((binaryRelativeCodeBaseCell C
              ((binaryWordPermEquiv sigma).symm u)
              ((binaryWordPermEquiv sigma).symm v)).card : Rat))) := by
  rw [binaryRelativeCodeOrbitAverageMatrix_apply]
  congr 1
  calc
    (∑ sigma : Equiv.Perm (Fin n),
        binaryRelativeCodeAverageMatrix C
          ((binaryWordPermEquiv sigma).symm u)
          ((binaryWordPermEquiv sigma).symm v)) =
        ∑ sigma : Equiv.Perm (Fin n),
          (((2 ^ n : Nat) : Rat)⁻¹) *
            ((binaryRelativeCodeBaseCell C
              ((binaryWordPermEquiv sigma).symm u)
              ((binaryWordPermEquiv sigma).symm v)).card : Rat) := by
          apply Finset.sum_congr rfl
          intro sigma _
          rw [binaryRelativeCodeAverageMatrix_apply_card]
    _ =
        (((2 ^ n : Nat) : Rat)⁻¹) *
          Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
            ((binaryRelativeCodeBaseCell C
              ((binaryWordPermEquiv sigma).symm u)
              ((binaryWordPermEquiv sigma).symm v)).card : Rat)) := by
          rw [Finset.mul_sum]

theorem binaryRelativeCodeOrbitAverageMatrix_entry_eq_of_card_sum {n : Nat}
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n)
    (hcard :
      binaryOrbitMultiplicity n (binaryOrbitOf u v) *
          Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
            ((binaryRelativeCodeBaseCell C
              ((binaryWordPermEquiv sigma).symm u)
              ((binaryWordPermEquiv sigma).symm v)).card : Rat)) =
        ((Fintype.card (Equiv.Perm (Fin n))) : Rat) *
          ((binaryCodeTripleOrbitCell C (binaryOrbitOf u v)).card : Rat)) :
    binaryRelativeCodeOrbitAverageMatrix C u v =
      binaryCodeCellX C (binaryOrbitOf u v) := by
  let idx := binaryOrbitOf u v
  let permCard : Rat := (Fintype.card (Equiv.Perm (Fin n)) : Rat)
  let cubeCard : Rat := ((2 ^ n : Nat) : Rat)
  let orbitCard : Rat := ((binaryCodeTripleOrbitCell C idx).card : Rat)
  let baseSum : Rat :=
    Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
      ((binaryRelativeCodeBaseCell C
        ((binaryWordPermEquiv sigma).symm u)
        ((binaryWordPermEquiv sigma).symm v)).card : Rat))
  have hpermCard_ne : permCard ≠ 0 := by
    have hpos : 0 < Fintype.card (Equiv.Perm (Fin n)) :=
      Fintype.card_pos_iff.mpr ⟨Equiv.refl (Fin n)⟩
    have hposRat : 0 < permCard := by
      dsimp [permCard]
      exact_mod_cast hpos
    exact hposRat.ne'
  have hcubeCard_ne : cubeCard ≠ 0 := by
    have hpos : 0 < 2 ^ n := Nat.pow_pos (by decide : 0 < 2)
    have hposRat : 0 < cubeCard := by
      dsimp [cubeCard]
      exact_mod_cast hpos
    exact hposRat.ne'
  have hmult_ne : binaryOrbitMultiplicity n idx ≠ 0 :=
    binaryOrbitMultiplicity_ne_zero n idx
  have hcard' :
      binaryOrbitMultiplicity n idx * baseSum = permCard * orbitCard := by
    simpa [idx, permCard, orbitCard, baseSum] using hcard
  rw [binaryRelativeCodeOrbitAverageMatrix_apply_card_sum]
  unfold binaryCodeCellX binaryCodeCellDenominator
  change permCard⁻¹ * (cubeCard⁻¹ * baseSum) =
    orbitCard / (cubeCard * binaryOrbitMultiplicity n idx)
  field_simp [hpermCard_ne, hcubeCard_ne, hmult_ne]
  simpa [mul_assoc, mul_left_comm, mul_comm] using hcard'

theorem binaryRelativeCodeOrbitAverageMatrix_entry_eq_of_card_sum_nat {n : Nat}
    (C : Finset (QaryWord 2 n)) (u v : QaryWord 2 n)
    (hcard :
      binaryOrbitMultiplicityNat n (binaryOrbitOf u v) *
          Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
            (binaryRelativeCodeBaseCell C
              ((binaryWordPermEquiv sigma).symm u)
              ((binaryWordPermEquiv sigma).symm v)).card) =
        Fintype.card (Equiv.Perm (Fin n)) *
          (binaryCodeTripleOrbitCell C (binaryOrbitOf u v)).card) :
    binaryRelativeCodeOrbitAverageMatrix C u v =
      binaryCodeCellX C (binaryOrbitOf u v) := by
  apply binaryRelativeCodeOrbitAverageMatrix_entry_eq_of_card_sum
  have hcast :
      ((binaryOrbitMultiplicityNat n (binaryOrbitOf u v) *
          Finset.univ.sum (fun sigma : Equiv.Perm (Fin n) =>
            (binaryRelativeCodeBaseCell C
              ((binaryWordPermEquiv sigma).symm u)
              ((binaryWordPermEquiv sigma).symm v)).card) : Nat) : Rat) =
        ((Fintype.card (Equiv.Perm (Fin n)) *
          (binaryCodeTripleOrbitCell C (binaryOrbitOf u v)).card : Nat) : Rat) := by
    exact_mod_cast hcard
  simpa [Nat.cast_mul, Nat.cast_sum, binaryOrbitMultiplicityNat_cast,
    mul_assoc] using hcast

/-- A global card identity gives the Terwilliger entry identity for all word pairs. -/
theorem binaryRelativeCodeOrbitAverageMatrix_eq_terwilliger_of_card_identity {n : Nat}
    (C : Finset (QaryWord 2 n))
    (hcard : BinaryRelativeOrbitAverageCardIdentity C) :
    binaryRelativeCodeOrbitAverageMatrix C =
      binaryTerwilligerMatrix (binaryCodeCellX C) := by
  ext u v
  exact binaryRelativeCodeOrbitAverageMatrix_entry_eq_of_card_sum_nat C u v
    (hcard u v)

/--
Once the orbit-averaged relative-code Gram matrix is identified with the
Terwilliger matrix of the code-cell vector, block diagonalization gives the
semidefinite field needed by code-cell certificates.
-/
theorem binaryCodeCellX_semidefinite_of_orbitAverage_eq {n : Nat}
    (C : Finset (QaryWord 2 n))
    (cert : BinaryBlockDiagonalizationCertificate (binaryCodeCellX C))
    (hEq :
      binaryRelativeCodeOrbitAverageMatrix C =
        binaryTerwilligerMatrix (binaryCodeCellX C)) :
    BinaryBlocksPSD (binaryCodeCellX C) := by
  have hM : RatPSD (binaryTerwilligerMatrix (binaryCodeCellX C)) := by
    rw [← hEq]
    exact binaryRelativeCodeOrbitAverageMatrix_psd C
  exact (binaryBlockDiagonalMatrix_psd_iff (binaryCodeCellX C)).mp
    (cert.psd_iff_blockDiagonal.mp hM)

/-- Scaled block diagonalization variant of `binaryCodeCellX_semidefinite_of_orbitAverage_eq`. -/
theorem binaryCodeCellX_semidefinite_of_orbitAverage_eq_scaled {n : Nat}
    (C : Finset (QaryWord 2 n)) (scale : BinaryBlockIndex n -> Rat)
    (cert :
      BinaryBlockDiagonalizationScaledMatrixCertificate scale (binaryCodeCellX C))
    (hEq :
      binaryRelativeCodeOrbitAverageMatrix C =
        binaryTerwilligerMatrix (binaryCodeCellX C)) :
    BinaryBlocksPSD (binaryCodeCellX C) := by
  have hM : RatPSD (binaryTerwilligerMatrix (binaryCodeCellX C)) := by
    rw [← hEq]
    exact binaryRelativeCodeOrbitAverageMatrix_psd C
  exact (binaryBlockDiagonalMatrix_psd_iff (binaryCodeCellX C)).mp
    (cert.psd_iff_blockDiagonal.mp hM)

/-- Entrywise identification is enough to identify the orbit average with the code-cell matrix. -/
theorem binaryRelativeCodeOrbitAverageMatrix_eq_terwilliger_of_entries {n : Nat}
    (C : Finset (QaryWord 2 n))
    (hentries :
      forall u v : QaryWord 2 n,
        binaryRelativeCodeOrbitAverageMatrix C u v =
          binaryCodeCellX C (binaryOrbitOf u v)) :
    binaryRelativeCodeOrbitAverageMatrix C =
      binaryTerwilligerMatrix (binaryCodeCellX C) := by
  ext u v
  exact hentries u v

theorem binaryCodeCellX_semidefinite_of_orbitAverage_entries {n : Nat}
    (C : Finset (QaryWord 2 n))
    (cert : BinaryBlockDiagonalizationCertificate (binaryCodeCellX C))
    (hentries :
      forall u v : QaryWord 2 n,
        binaryRelativeCodeOrbitAverageMatrix C u v =
          binaryCodeCellX C (binaryOrbitOf u v)) :
    BinaryBlocksPSD (binaryCodeCellX C) :=
  binaryCodeCellX_semidefinite_of_orbitAverage_eq C cert
    (binaryRelativeCodeOrbitAverageMatrix_eq_terwilliger_of_entries C hentries)

/-- Scaled certificate variant of `binaryCodeCellX_semidefinite_of_orbitAverage_entries`. -/
theorem binaryCodeCellX_semidefinite_of_orbitAverage_entries_scaled {n : Nat}
    (C : Finset (QaryWord 2 n)) (scale : BinaryBlockIndex n -> Rat)
    (cert :
      BinaryBlockDiagonalizationScaledMatrixCertificate scale (binaryCodeCellX C))
    (hentries :
      forall u v : QaryWord 2 n,
        binaryRelativeCodeOrbitAverageMatrix C u v =
          binaryCodeCellX C (binaryOrbitOf u v)) :
    BinaryBlocksPSD (binaryCodeCellX C) :=
  binaryCodeCellX_semidefinite_of_orbitAverage_eq_scaled C scale cert
    (binaryRelativeCodeOrbitAverageMatrix_eq_terwilliger_of_entries C hentries)

theorem binaryCodeCellX_semidefinite_of_orbitAverage_card_identity {n : Nat}
    (C : Finset (QaryWord 2 n))
    (cert : BinaryBlockDiagonalizationCertificate (binaryCodeCellX C))
    (hcard : BinaryRelativeOrbitAverageCardIdentity C) :
    BinaryBlocksPSD (binaryCodeCellX C) :=
  binaryCodeCellX_semidefinite_of_orbitAverage_eq C cert
    (binaryRelativeCodeOrbitAverageMatrix_eq_terwilliger_of_card_identity C hcard)

theorem binaryCodeCellX_semidefinite_of_orbitAverage_universal {n : Nat}
    (C : Finset (QaryWord 2 n))
    (cert : BinaryBlockDiagonalizationCertificate (binaryCodeCellX C)) :
    BinaryBlocksPSD (binaryCodeCellX C) :=
  binaryCodeCellX_semidefinite_of_orbitAverage_card_identity C cert
    (binaryRelativeOrbitAverageCardIdentity_universal C)

/-- Scaled certificate variant using the natural-number card identity. -/
theorem binaryCodeCellX_semidefinite_of_orbitAverage_card_identity_scaled {n : Nat}
    (C : Finset (QaryWord 2 n)) (scale : BinaryBlockIndex n -> Rat)
    (cert :
      BinaryBlockDiagonalizationScaledMatrixCertificate scale (binaryCodeCellX C))
    (hcard : BinaryRelativeOrbitAverageCardIdentity C) :
    BinaryBlocksPSD (binaryCodeCellX C) :=
  binaryCodeCellX_semidefinite_of_orbitAverage_eq_scaled C scale cert
    (binaryRelativeCodeOrbitAverageMatrix_eq_terwilliger_of_card_identity C hcard)

theorem binaryCodeCellX_semidefinite_of_orbitAverage_universal_scaled {n : Nat}
    (C : Finset (QaryWord 2 n)) (scale : BinaryBlockIndex n -> Rat)
    (cert :
      BinaryBlockDiagonalizationScaledMatrixCertificate scale (binaryCodeCellX C)) :
    BinaryBlocksPSD (binaryCodeCellX C) :=
  binaryCodeCellX_semidefinite_of_orbitAverage_card_identity_scaled C scale cert
    (binaryRelativeOrbitAverageCardIdentity_universal C)

theorem binaryCodeCellX_semidefinite_of_orbitAverage_eq_scaledCompression {n : Nat}
    (C : Finset (QaryWord 2 n)) (scale : BinaryBlockIndex n -> Rat)
    (cert :
      BinaryBlockDiagonalizationScaledCompressionCertificate scale (binaryCodeCellX C))
    (hEq :
      binaryRelativeCodeOrbitAverageMatrix C =
        binaryTerwilligerMatrix (binaryCodeCellX C)) :
    BinaryBlocksPSD (binaryCodeCellX C) := by
  have hM : RatPSD (binaryTerwilligerMatrix (binaryCodeCellX C)) := by
    rw [← hEq]
    exact binaryRelativeCodeOrbitAverageMatrix_psd C
  exact cert.blocksPSD_of_terwilligerPSD hM

/-- Blockwise scaled compression variant of `binaryCodeCellX_semidefinite_of_orbitAverage_eq`. -/
theorem binaryCodeCellX_semidefinite_of_orbitAverage_eq_scaledBlockCompression {n : Nat}
    (C : Finset (QaryWord 2 n)) (scale : BinaryBlockIndex n -> Rat)
    (cert :
      BinaryBlockDiagonalizationScaledBlockCompressionCertificate scale
        (binaryCodeCellX C))
    (hEq :
      binaryRelativeCodeOrbitAverageMatrix C =
        binaryTerwilligerMatrix (binaryCodeCellX C)) :
    BinaryBlocksPSD (binaryCodeCellX C) := by
  have hM : RatPSD (binaryTerwilligerMatrix (binaryCodeCellX C)) := by
    rw [← hEq]
    exact binaryRelativeCodeOrbitAverageMatrix_psd C
  exact cert.blocksPSD_of_terwilligerPSD hM

theorem binaryCodeCellX_semidefinite_of_orbitAverage_universal_scaledCompression
    {n : Nat}
    (C : Finset (QaryWord 2 n)) (scale : BinaryBlockIndex n -> Rat)
    (cert :
      BinaryBlockDiagonalizationScaledCompressionCertificate scale (binaryCodeCellX C)) :
    BinaryBlocksPSD (binaryCodeCellX C) :=
  binaryCodeCellX_semidefinite_of_orbitAverage_eq_scaledCompression C scale cert
    (binaryRelativeCodeOrbitAverageMatrix_eq_terwilliger_of_card_identity C
      (binaryRelativeOrbitAverageCardIdentity_universal C))

/-- Blockwise scaled compression variant using the universal orbit-average identity. -/
theorem binaryCodeCellX_semidefinite_of_orbitAverage_universal_scaledBlockCompression
    {n : Nat}
    (C : Finset (QaryWord 2 n)) (scale : BinaryBlockIndex n -> Rat)
    (cert :
      BinaryBlockDiagonalizationScaledBlockCompressionCertificate scale
        (binaryCodeCellX C)) :
    BinaryBlocksPSD (binaryCodeCellX C) :=
  binaryCodeCellX_semidefinite_of_orbitAverage_eq_scaledBlockCompression
    C scale cert
    (binaryRelativeCodeOrbitAverageMatrix_eq_terwilliger_of_card_identity C
      (binaryRelativeOrbitAverageCardIdentity_universal C))

/--
If the slack-weighted translated-code orbit average has the expected
Terwilliger entries, then valid-inequality slack PSD gives the reduced
Lasserre block constraints.
-/
theorem binaryCodeCellX_lasserre_of_slackOrbitAverage_eq {n r : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (C : Finset (QaryWord 2 n)) (hC : CoversFinset C r)
    (cert :
      BinaryBlockDiagonalizationCertificate
        (binaryLasserreX lambda beta (binaryCodeCellX C)))
    (horbit :
      binarySlackWeightedTranslatedCodeOrbitAverageMatrix lambda beta C =
        binaryTerwilligerMatrix
          (binaryLasserreX lambda beta (binaryCodeCellX C))) :
    BinaryLasserreConstraints lambda beta (binaryCodeCellX C) := by
  have hM :
      RatPSD
        (binaryTerwilligerMatrix
          (binaryLasserreX lambda beta (binaryCodeCellX C))) := by
    rw [← horbit]
    exact binarySlackWeightedTranslatedCodeOrbitAverageMatrix_psd hvalid C hC
  exact (binaryBlockDiagonalMatrix_psd_iff
    (binaryLasserreX lambda beta (binaryCodeCellX C))).mp
    (cert.psd_iff_blockDiagonal.mp hM)

/-- Scaled block-diagonalization variant of
`binaryCodeCellX_lasserre_of_slackOrbitAverage_eq`. -/
theorem binaryCodeCellX_lasserre_of_slackOrbitAverage_eq_scaled {n r : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (C : Finset (QaryWord 2 n)) (hC : CoversFinset C r)
    (scale : BinaryBlockIndex n -> Rat)
    (cert :
      BinaryBlockDiagonalizationScaledMatrixCertificate scale
        (binaryLasserreX lambda beta (binaryCodeCellX C)))
    (horbit :
      binarySlackWeightedTranslatedCodeOrbitAverageMatrix lambda beta C =
        binaryTerwilligerMatrix
          (binaryLasserreX lambda beta (binaryCodeCellX C))) :
    BinaryLasserreConstraints lambda beta (binaryCodeCellX C) := by
  have hM :
      RatPSD
        (binaryTerwilligerMatrix
          (binaryLasserreX lambda beta (binaryCodeCellX C))) := by
    rw [← horbit]
    exact binarySlackWeightedTranslatedCodeOrbitAverageMatrix_psd hvalid C hC
  exact (binaryBlockDiagonalMatrix_psd_iff
    (binaryLasserreX lambda beta (binaryCodeCellX C))).mp
    (cert.psd_iff_blockDiagonal.mp hM)

theorem binaryCodeCellX_lasserre_of_weightedShellOrbitAverageCardIdentity
    {n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (C : Finset (QaryWord 2 n)) (hC : CoversFinset C r)
    (cert :
      BinaryBlockDiagonalizationCertificate
        (binaryLasserreX lambda beta (binaryCodeCellX C)))
    (hshell : BinaryWeightedTranslatedPairShellOrbitAverageCardIdentity lambda C) :
    BinaryLasserreConstraints lambda beta (binaryCodeCellX C) :=
  binaryCodeCellX_lasserre_of_slackOrbitAverage_eq hvalid C hC cert
    (binarySlackWeightedTranslatedCodeOrbitAverageMatrix_eq_lasserreTerwilliger
      lambda beta C hshell)

theorem binaryCodeCellX_lasserre_of_weightedShellOrbitAverageCardIdentity_scaled
    {n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (C : Finset (QaryWord 2 n)) (hC : CoversFinset C r)
    (scale : BinaryBlockIndex n -> Rat)
    (cert :
      BinaryBlockDiagonalizationScaledMatrixCertificate scale
        (binaryLasserreX lambda beta (binaryCodeCellX C)))
    (hshell : BinaryWeightedTranslatedPairShellOrbitAverageCardIdentity lambda C) :
    BinaryLasserreConstraints lambda beta (binaryCodeCellX C) :=
  binaryCodeCellX_lasserre_of_slackOrbitAverage_eq_scaled hvalid C hC scale cert
    (binarySlackWeightedTranslatedCodeOrbitAverageMatrix_eq_lasserreTerwilliger
      lambda beta C hshell)

theorem binaryCodeCellX_lasserre_of_slackOrbitAverage_eq_scaledCompression
    {n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (C : Finset (QaryWord 2 n)) (hC : CoversFinset C r)
    (scale : BinaryBlockIndex n -> Rat)
    (cert :
      BinaryBlockDiagonalizationScaledCompressionCertificate scale
        (binaryLasserreX lambda beta (binaryCodeCellX C)))
    (horbit :
      binarySlackWeightedTranslatedCodeOrbitAverageMatrix lambda beta C =
        binaryTerwilligerMatrix
          (binaryLasserreX lambda beta (binaryCodeCellX C))) :
    BinaryLasserreConstraints lambda beta (binaryCodeCellX C) := by
  have hM :
      RatPSD
        (binaryTerwilligerMatrix
          (binaryLasserreX lambda beta (binaryCodeCellX C))) := by
    rw [← horbit]
    exact binarySlackWeightedTranslatedCodeOrbitAverageMatrix_psd hvalid C hC
  exact cert.blocksPSD_of_terwilligerPSD hM

theorem binaryCodeCellX_lasserre_of_slackOrbitAverage_eq_scaledBlockCompression
    {n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (C : Finset (QaryWord 2 n)) (hC : CoversFinset C r)
    (scale : BinaryBlockIndex n -> Rat)
    (cert :
      BinaryBlockDiagonalizationScaledBlockCompressionCertificate scale
        (binaryLasserreX lambda beta (binaryCodeCellX C)))
    (horbit :
      binarySlackWeightedTranslatedCodeOrbitAverageMatrix lambda beta C =
        binaryTerwilligerMatrix
          (binaryLasserreX lambda beta (binaryCodeCellX C))) :
    BinaryLasserreConstraints lambda beta (binaryCodeCellX C) := by
  have hM :
      RatPSD
        (binaryTerwilligerMatrix
          (binaryLasserreX lambda beta (binaryCodeCellX C))) := by
    rw [← horbit]
    exact binarySlackWeightedTranslatedCodeOrbitAverageMatrix_psd hvalid C hC
  exact cert.blocksPSD_of_terwilligerPSD hM

theorem binaryCodeCellX_lasserre_of_weightedShellOrbitAverageCardIdentity_scaledCompression
    {n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (C : Finset (QaryWord 2 n)) (hC : CoversFinset C r)
    (scale : BinaryBlockIndex n -> Rat)
    (cert :
      BinaryBlockDiagonalizationScaledCompressionCertificate scale
        (binaryLasserreX lambda beta (binaryCodeCellX C)))
    (hshell : BinaryWeightedTranslatedPairShellOrbitAverageCardIdentity lambda C) :
    BinaryLasserreConstraints lambda beta (binaryCodeCellX C) :=
  binaryCodeCellX_lasserre_of_slackOrbitAverage_eq_scaledCompression
    hvalid C hC scale cert
    (binarySlackWeightedTranslatedCodeOrbitAverageMatrix_eq_lasserreTerwilliger
      lambda beta C hshell)

theorem binaryCodeCellX_lasserre_of_weightedShellOrbitAverageCardIdentity_scaledBlockCompression
    {n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (C : Finset (QaryWord 2 n)) (hC : CoversFinset C r)
    (scale : BinaryBlockIndex n -> Rat)
    (cert :
      BinaryBlockDiagonalizationScaledBlockCompressionCertificate scale
        (binaryLasserreX lambda beta (binaryCodeCellX C)))
    (hshell : BinaryWeightedTranslatedPairShellOrbitAverageCardIdentity lambda C) :
    BinaryLasserreConstraints lambda beta (binaryCodeCellX C) :=
  binaryCodeCellX_lasserre_of_slackOrbitAverage_eq_scaledBlockCompression
    hvalid C hC scale cert
    (binarySlackWeightedTranslatedCodeOrbitAverageMatrix_eq_lasserreTerwilliger
      lambda beta C hshell)

theorem binaryCodeCellX_lasserre_universal
    {n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (C : Finset (QaryWord 2 n)) (hC : CoversFinset C r)
    (cert :
      BinaryBlockDiagonalizationCertificate
        (binaryLasserreX lambda beta (binaryCodeCellX C))) :
    BinaryLasserreConstraints lambda beta (binaryCodeCellX C) :=
  binaryCodeCellX_lasserre_of_weightedShellOrbitAverageCardIdentity
    hvalid C hC cert
    (binaryWeightedTranslatedPairShellOrbitAverageCardIdentity_holds lambda C)

theorem binaryCodeCellX_lasserre_universal_scaled
    {n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (C : Finset (QaryWord 2 n)) (hC : CoversFinset C r)
    (scale : BinaryBlockIndex n -> Rat)
    (cert :
      BinaryBlockDiagonalizationScaledMatrixCertificate scale
        (binaryLasserreX lambda beta (binaryCodeCellX C))) :
    BinaryLasserreConstraints lambda beta (binaryCodeCellX C) :=
  binaryCodeCellX_lasserre_of_weightedShellOrbitAverageCardIdentity_scaled
    hvalid C hC scale cert
    (binaryWeightedTranslatedPairShellOrbitAverageCardIdentity_holds lambda C)

theorem binaryCodeCellX_lasserre_universal_scaledCompression
    {n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (C : Finset (QaryWord 2 n)) (hC : CoversFinset C r)
    (scale : BinaryBlockIndex n -> Rat)
    (cert :
      BinaryBlockDiagonalizationScaledCompressionCertificate scale
        (binaryLasserreX lambda beta (binaryCodeCellX C))) :
    BinaryLasserreConstraints lambda beta (binaryCodeCellX C) :=
  binaryCodeCellX_lasserre_of_weightedShellOrbitAverageCardIdentity_scaledCompression
    hvalid C hC scale cert
    (binaryWeightedTranslatedPairShellOrbitAverageCardIdentity_holds lambda C)

theorem binaryCodeCellX_lasserre_universal_scaledBlockCompression
    {n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (C : Finset (QaryWord 2 n)) (hC : CoversFinset C r)
    (scale : BinaryBlockIndex n -> Rat)
    (cert :
      BinaryBlockDiagonalizationScaledBlockCompressionCertificate scale
        (binaryLasserreX lambda beta (binaryCodeCellX C))) :
    BinaryLasserreConstraints lambda beta (binaryCodeCellX C) :=
  binaryCodeCellX_lasserre_of_weightedShellOrbitAverageCardIdentity_scaledBlockCompression
    hvalid C hC scale cert
    (binaryWeightedTranslatedPairShellOrbitAverageCardIdentity_holds lambda C)

/--
Build an intrinsic reduced code-cell certificate from the remaining matrix-cut
proof plus block-diagonalization certificates for the primal and Lasserre
Terwilliger matrices.
-/
def BinaryCodeCellIntrinsicReducedConstraintCertificate.ofBlockDiagonalizationCertificates
    {n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {C : Finset (QaryWord 2 n)}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (hC : CoversFinset C r)
    (primalCert : BinaryBlockDiagonalizationCertificate (binaryCodeCellX C))
    (lasserreCert :
      BinaryBlockDiagonalizationCertificate
        (binaryLasserreX lambda beta (binaryCodeCellX C)))
    (matrixCuts : BinaryMatrixCutConstraints lambda beta (binaryCodeCellX C)) :
    BinaryCodeCellIntrinsicReducedConstraintCertificate n lambda beta C where
  semidefinite :=
    binaryCodeCellX_semidefinite_of_orbitAverage_universal C primalCert
  lasserre :=
    binaryCodeCellX_lasserre_universal hvalid C hC lasserreCert
  matrixCuts := matrixCuts

/--
Scaled block-diagonalization variant of
`BinaryCodeCellIntrinsicReducedConstraintCertificate.ofBlockDiagonalizationCertificates`.
-/
def BinaryCodeCellIntrinsicReducedConstraintCertificate.ofScaledBlockDiagonalizationCertificates
    {n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {C : Finset (QaryWord 2 n)}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (hC : CoversFinset C r)
    (primalScale : BinaryBlockIndex n -> Rat)
    (lasserreScale : BinaryBlockIndex n -> Rat)
    (primalCert :
      BinaryBlockDiagonalizationScaledMatrixCertificate primalScale
        (binaryCodeCellX C))
    (lasserreCert :
      BinaryBlockDiagonalizationScaledMatrixCertificate lasserreScale
        (binaryLasserreX lambda beta (binaryCodeCellX C)))
    (matrixCuts : BinaryMatrixCutConstraints lambda beta (binaryCodeCellX C)) :
    BinaryCodeCellIntrinsicReducedConstraintCertificate n lambda beta C where
  semidefinite :=
    binaryCodeCellX_semidefinite_of_orbitAverage_universal_scaled
      C primalScale primalCert
  lasserre :=
    binaryCodeCellX_lasserre_universal_scaled
      hvalid C hC lasserreScale lasserreCert
  matrixCuts := matrixCuts

def BinaryCodeCellIntrinsicReducedConstraintCertificate.ofScaledCompressionCertificates
    {n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {C : Finset (QaryWord 2 n)}
    (hvalid : ValidLinearInequality 2 n r lambda beta)
    (hC : CoversFinset C r)
    (primalScale : BinaryBlockIndex n -> Rat)
    (lasserreScale : BinaryBlockIndex n -> Rat)
    (primalCert :
      BinaryBlockDiagonalizationScaledCompressionCertificate primalScale
        (binaryCodeCellX C))
    (lasserreCert :
      BinaryBlockDiagonalizationScaledCompressionCertificate lasserreScale
        (binaryLasserreX lambda beta (binaryCodeCellX C)))
    (matrixCuts : BinaryMatrixCutConstraints lambda beta (binaryCodeCellX C)) :
    BinaryCodeCellIntrinsicReducedConstraintCertificate n lambda beta C where
  semidefinite :=
    binaryCodeCellX_semidefinite_of_orbitAverage_universal_scaledCompression
      C primalScale primalCert
  lasserre :=
    binaryCodeCellX_lasserre_universal_scaledCompression
      hvalid C hC lasserreScale lasserreCert
  matrixCuts := matrixCuts

theorem binaryCodeCellX_cell_value {n : Nat}
    (C : Finset (QaryWord 2 n))
    (hdenom : forall idx : BinaryOrbitIndex n,
      binaryCodeCellDenominator n idx ≠ 0)
    (idx : BinaryOrbitIndex n) :
    (((2 ^ n : Nat) : Rat)) *
        (binaryOrbitMultiplicity n idx * binaryCodeCellX C idx) =
      ((binaryCodeTripleOrbitCell C idx).card : Rat) := by
  have hm : binaryOrbitMultiplicity n idx ≠ 0 := by
    intro hm
    apply hdenom idx
    simp [binaryCodeCellDenominator, hm]
  unfold binaryCodeCellX binaryCodeCellDenominator
  field_simp [hdenom idx, hm]

/-- Certificate that a binary reduced vector comes from a code with the right objective. -/
structure BinaryReducedCodeObjectiveBridge
    (n r : Nat) (lambda : Fin (n + 1) -> Rat) (beta : Rat)
    (C : Finset (QaryWord 2 n)) (x : BinaryX n) where
  constraints : BinaryReducedConstraints n r lambda beta x
  objectivePartition :
    WeightedObjectivePartitionCertificate (BinaryOrbitIndex n) (BinaryCodeTriple n)
      (binaryCodeTriples C) (((2 ^ n : Nat) : Rat))
      (binaryOrbitMultiplicity n) x

/-- Build the binary code-objective bridge from a classifier of code triples by orbit index. -/
def BinaryReducedCodeObjectiveBridge.ofClassifier
    {n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {C : Finset (QaryWord 2 n)} {x : BinaryX n}
    (constraints : BinaryReducedConstraints n r lambda beta x)
    (classOf : BinaryCodeTriple n -> BinaryOrbitIndex n)
    (cell_value : forall idx : BinaryOrbitIndex n,
      (((2 ^ n : Nat) : Rat)) * (binaryOrbitMultiplicity n idx * x idx) =
        (((binaryCodeTriples C).filter (fun triple => classOf triple = idx)).card : Rat)) :
    BinaryReducedCodeObjectiveBridge n r lambda beta C x where
  constraints := constraints
  objectivePartition :=
    WeightedObjectivePartitionCertificate.ofClassifier
      (BinaryOrbitIndex n) (BinaryCodeTriple n) (binaryCodeTriples C) classOf
      (((2 ^ n : Nat) : Rat)) (binaryOrbitMultiplicity n) x cell_value

/-- Build the binary code-objective bridge using the canonical triple-orbit classifier. -/
def BinaryReducedCodeObjectiveBridge.ofTripleOrbitClassifier
    {n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {C : Finset (QaryWord 2 n)} {x : BinaryX n}
    (constraints : BinaryReducedConstraints n r lambda beta x)
    (cell_value : forall idx : BinaryOrbitIndex n,
      (((2 ^ n : Nat) : Rat)) * (binaryOrbitMultiplicity n idx * x idx) =
        ((binaryCodeTripleOrbitCell C idx).card : Rat)) :
    BinaryReducedCodeObjectiveBridge n r lambda beta C x :=
  BinaryReducedCodeObjectiveBridge.ofClassifier constraints
    binaryCodeTripleOrbitOf cell_value

/--
Build the binary code-objective bridge from normalized canonical orbit-cell
counts.
-/
def BinaryReducedCodeObjectiveBridge.ofCellCounts
    {n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {C : Finset (QaryWord 2 n)}
    (constraints :
      BinaryReducedConstraints n r lambda beta (binaryCodeCellX C)) :
    BinaryReducedCodeObjectiveBridge n r lambda beta C (binaryCodeCellX C) :=
  BinaryReducedCodeObjectiveBridge.ofTripleOrbitClassifier constraints
    (binaryCodeCellX_cell_value C (binaryCodeCellDenominator_ne_zero n))

theorem BinaryReducedCodeObjectiveBridge.objective_eq_card_cube
    {n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {C : Finset (QaryWord 2 n)} {x : BinaryX n}
    (bridge : BinaryReducedCodeObjectiveBridge n r lambda beta C x) :
    binaryReducedObjective n x = (C.card : Rat) ^ 3 := by
  have hobj := bridge.objectivePartition.objective_eq_card
  unfold binaryReducedObjective at hobj ⊢
  rw [hobj]
  simp [binaryCodeTriples, card_finsetCube]

theorem BinaryReducedCodeObjectiveBridge.objective_le_card_cube
    {n r : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {C : Finset (QaryWord 2 n)} {x : BinaryX n}
    (bridge : BinaryReducedCodeObjectiveBridge n r lambda beta C x) :
    binaryReducedObjective n x <= (C.card : Rat) ^ 3 := by
  rw [bridge.objective_eq_card_cube]

/--
Exact binary reduced SDP dual certificate.

The objective bound is checked by the generic exact SDP checker using the
named scalar atoms and PSD block atoms defined above; the remaining bridge is
the code-to-reduced-feasible objective construction.
-/
structure BinaryReducedExactDualCertificate
    (n r : Nat) (lambda : Fin (n + 1) -> Rat) (beta : Rat) (L : Nat)
    (GramIdx : BinaryMatrixAtom n -> Type)
    [forall atom : BinaryMatrixAtom n, Fintype (GramIdx atom)] where
  bound : Rat
  cubeThreshold : ((L - 1 : Nat) : Rat) ^ 3 < bound
  objectiveCertificate :
    SDPObjectiveLowerCertificate (BinaryOrbitIndex n) (BinaryScalarAtom n)
      (BinaryMatrixAtom n) (@BinaryMatrixAtom.Coord n) GramIdx
      (binaryScalarAtomExpr lambda beta)
      (binaryMatrixAtomExpr lambda beta)
      (binaryReducedObjectiveExpr n)
      bound
  codeObjectiveBridge :
    forall C : Finset (QaryWord 2 n),
      CoversFinset C r ->
        Sigma (fun x : BinaryX n =>
          BinaryReducedCodeObjectiveBridge n r lambda beta C x)

/-- Forget the exact SDP certificate into the older objective-lower interface. -/
def BinaryReducedExactDualCertificate.toDualCertificate
    {n r L : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {GramIdx : BinaryMatrixAtom n -> Type}
    [forall atom : BinaryMatrixAtom n, Fintype (GramIdx atom)]
    (cert : BinaryReducedExactDualCertificate n r lambda beta L GramIdx) :
    BinaryReducedDualCertificate n r lambda beta L where
  bound := cert.bound
  cubeThreshold := cert.cubeThreshold
  objectiveCertificate := {
    gap := fun x => binaryReducedObjective n x - cert.bound
    gap_nonneg := by
      intro x hx
      have hbound :=
        SDPObjectiveLowerCertificate.sound cert.objectiveCertificate x
          (BinaryReducedConstraints.toSDPConstraints hx)
      rw [binaryReducedObjectiveExpr_eval] at hbound
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
Exact binary reduced SDP dual certificate specialized to the canonical
code-cell vector.

Compared with `BinaryReducedExactDualCertificate`, this asks only for
feasibility of `binaryCodeCellX C`; the objective relation to `C.card ^ 3` is
constructed from the cell-count normalization above.
-/
structure BinaryReducedExactCellDualCertificate
    (n r : Nat) (lambda : Fin (n + 1) -> Rat) (beta : Rat) (L : Nat)
    (GramIdx : BinaryMatrixAtom n -> Type)
    [forall atom : BinaryMatrixAtom n, Fintype (GramIdx atom)] where
  bound : Rat
  cubeThreshold : ((L - 1 : Nat) : Rat) ^ 3 < bound
  objectiveCertificate :
    SDPObjectiveLowerCertificate (BinaryOrbitIndex n) (BinaryScalarAtom n)
      (BinaryMatrixAtom n) (@BinaryMatrixAtom.Coord n) GramIdx
      (binaryScalarAtomExpr lambda beta)
      (binaryMatrixAtomExpr lambda beta)
      (binaryReducedObjectiveExpr n)
      bound
  codeCellConstraints :
    forall C : Finset (QaryWord 2 n),
      CoversFinset C r ->
        BinaryReducedConstraints n r lambda beta (binaryCodeCellX C)

structure BinaryReducedExactCellConstraintDualCertificate
    (n r : Nat) (lambda : Fin (n + 1) -> Rat) (beta : Rat) (L : Nat)
    (GramIdx : BinaryMatrixAtom n -> Type)
    [forall atom : BinaryMatrixAtom n, Fintype (GramIdx atom)] where
  bound : Rat
  cubeThreshold : ((L - 1 : Nat) : Rat) ^ 3 < bound
  objectiveCertificate :
    SDPObjectiveLowerCertificate (BinaryOrbitIndex n) (BinaryScalarAtom n)
      (BinaryMatrixAtom n) (@BinaryMatrixAtom.Coord n) GramIdx
      (binaryScalarAtomExpr lambda beta)
      (binaryMatrixAtomExpr lambda beta)
      (binaryReducedObjectiveExpr n)
      bound
  codeCellCertificate :
    forall C : Finset (QaryWord 2 n),
      CoversFinset C r ->
        BinaryCodeCellReducedConstraintCertificate n lambda beta C

structure BinaryReducedExactProjectionCellConstraintDualCertificate
    (n r : Nat) (lambda : Fin (n + 1) -> Rat) (beta : Rat) (L : Nat)
    (GramIdx : BinaryMatrixAtom n -> Type)
    [forall atom : BinaryMatrixAtom n, Fintype (GramIdx atom)] where
  bound : Rat
  cubeThreshold : ((L - 1 : Nat) : Rat) ^ 3 < bound
  objectiveCertificate :
    SDPObjectiveLowerCertificate (BinaryOrbitIndex n) (BinaryScalarAtom n)
      (BinaryMatrixAtom n) (@BinaryMatrixAtom.Coord n) GramIdx
      (binaryScalarAtomExpr lambda beta)
      (binaryMatrixAtomExpr lambda beta)
      (binaryReducedObjectiveExpr n)
      bound
  codeCellCertificate :
    forall C : Finset (QaryWord 2 n),
      CoversFinset C r ->
        BinaryCodeCellProjectionReducedConstraintCertificate n lambda beta C

structure BinaryReducedExactIntrinsicCellConstraintDualCertificate
    (n r : Nat) (lambda : Fin (n + 1) -> Rat) (beta : Rat) (L : Nat)
    (GramIdx : BinaryMatrixAtom n -> Type)
    [forall atom : BinaryMatrixAtom n, Fintype (GramIdx atom)] where
  bound : Rat
  cubeThreshold : ((L - 1 : Nat) : Rat) ^ 3 < bound
  objectiveCertificate :
    SDPObjectiveLowerCertificate (BinaryOrbitIndex n) (BinaryScalarAtom n)
      (BinaryMatrixAtom n) (@BinaryMatrixAtom.Coord n) GramIdx
      (binaryScalarAtomExpr lambda beta)
      (binaryMatrixAtomExpr lambda beta)
      (binaryReducedObjectiveExpr n)
      bound
  codeCellCertificate :
    forall C : Finset (QaryWord 2 n),
      CoversFinset C r ->
        BinaryCodeCellIntrinsicReducedConstraintCertificate n lambda beta C

/-- Turn a cell-specialized binary exact certificate into the general exact certificate. -/
def BinaryReducedExactCellDualCertificate.toExactDualCertificate
    {n r L : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {GramIdx : BinaryMatrixAtom n -> Type}
    [forall atom : BinaryMatrixAtom n, Fintype (GramIdx atom)]
    (cert : BinaryReducedExactCellDualCertificate n r lambda beta L GramIdx) :
    BinaryReducedExactDualCertificate n r lambda beta L GramIdx where
  bound := cert.bound
  cubeThreshold := cert.cubeThreshold
  objectiveCertificate := cert.objectiveCertificate
  codeObjectiveBridge := by
    intro C hC
    exact ⟨binaryCodeCellX C,
      BinaryReducedCodeObjectiveBridge.ofCellCounts (cert.codeCellConstraints C hC)⟩

def BinaryReducedExactCellConstraintDualCertificate.toExactCellDualCertificate
    {n r L : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {GramIdx : BinaryMatrixAtom n -> Type}
    [forall atom : BinaryMatrixAtom n, Fintype (GramIdx atom)]
    (cert :
      BinaryReducedExactCellConstraintDualCertificate n r lambda beta L GramIdx) :
    BinaryReducedExactCellDualCertificate n r lambda beta L GramIdx where
  bound := cert.bound
  cubeThreshold := cert.cubeThreshold
  objectiveCertificate := cert.objectiveCertificate
  codeCellConstraints := by
    intro C hC
    exact (cert.codeCellCertificate C hC).toReducedConstraints

def BinaryReducedExactProjectionCellConstraintDualCertificate.toExactCellConstraintDualCertificate
    {n r L : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {GramIdx : BinaryMatrixAtom n -> Type}
    [forall atom : BinaryMatrixAtom n, Fintype (GramIdx atom)]
    (cert :
      BinaryReducedExactProjectionCellConstraintDualCertificate
        n r lambda beta L GramIdx) :
    BinaryReducedExactCellConstraintDualCertificate n r lambda beta L GramIdx where
  bound := cert.bound
  cubeThreshold := cert.cubeThreshold
  objectiveCertificate := cert.objectiveCertificate
  codeCellCertificate := by
    intro C hC
    exact (cert.codeCellCertificate C hC).toCodeCellReducedConstraintCertificate

def BinaryReducedExactIntrinsicCellConstraintDualCertificate.toExactCellConstraintDualCertificate
    {n r L : Nat} {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {GramIdx : BinaryMatrixAtom n -> Type}
    [forall atom : BinaryMatrixAtom n, Fintype (GramIdx atom)]
    (cert :
      BinaryReducedExactIntrinsicCellConstraintDualCertificate
        n r lambda beta L GramIdx) :
    BinaryReducedExactCellConstraintDualCertificate n r lambda beta L GramIdx where
  bound := cert.bound
  cubeThreshold := cert.cubeThreshold
  objectiveCertificate := cert.objectiveCertificate
  codeCellCertificate := by
    intro C hC
    exact (cert.codeCellCertificate C hC).toCodeCellReducedConstraintCertificate

theorem prop_4_2_binary_basic_constraints {n r : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat} {x : BinaryX n}
    (h : BinaryReducedConstraints n r lambda beta x) :
    BinaryBasicConstraints x := by
  exact h.basic

theorem prop_4_3_binary_psd_constraints {n r : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat} {x : BinaryX n}
    (h : BinaryReducedConstraints n r lambda beta x) :
    BinaryBlocksPSD x := by
  exact h.semidefinite

theorem prop_4_5_binary_lasserre_constraint {n r : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat} {x : BinaryX n}
    (h : BinaryReducedConstraints n r lambda beta x) :
    BinaryLasserreConstraints lambda beta x := by
  exact h.lasserre

theorem prop_4_8_binary_matrix_cut_constraints {n r : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat} {x : BinaryX n}
    (h : BinaryReducedConstraints n r lambda beta x) :
    BinaryMatrixCutConstraints lambda beta x := by
  exact h.matrixCuts

theorem theorem_4_9_binary_reduced_sdp_lower_bound
    {n r L : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    (_hlin : ValidLinearInequality 2 n r lambda beta)
    (hdual : BinaryReducedDualCertificate n r lambda beta L) :
    QaryKLower 2 n r L := by
  apply lower_of_cube_objective_bound hdual.cubeThreshold
  intro C hC
  rcases hdual.codeObjectiveBound C hC with ⟨x, hx, hobjC⟩
  exact le_trans (ObjectiveLowerCertificate.sound hdual.objectiveCertificate x hx) hobjC

/-- Theorem 4.9 specialized to exact SDP dual certificates. -/
theorem theorem_4_9_binary_reduced_exact_sdp_lower_bound
    {n r L : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {GramIdx : BinaryMatrixAtom n -> Type}
    [forall atom : BinaryMatrixAtom n, Fintype (GramIdx atom)]
    (hlin : ValidLinearInequality 2 n r lambda beta)
    (hdual : BinaryReducedExactDualCertificate n r lambda beta L GramIdx) :
    QaryKLower 2 n r L := by
  exact theorem_4_9_binary_reduced_sdp_lower_bound hlin hdual.toDualCertificate

/-- Theorem 4.9 specialized to exact certificates over canonical code-cell vectors. -/
theorem theorem_4_9_binary_reduced_exact_cell_sdp_lower_bound
    {n r L : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {GramIdx : BinaryMatrixAtom n -> Type}
    [forall atom : BinaryMatrixAtom n, Fintype (GramIdx atom)]
    (hlin : ValidLinearInequality 2 n r lambda beta)
    (hdual : BinaryReducedExactCellDualCertificate n r lambda beta L GramIdx) :
    QaryKLower 2 n r L := by
  exact theorem_4_9_binary_reduced_exact_sdp_lower_bound hlin
    hdual.toExactDualCertificate

theorem theorem_4_9_binary_reduced_exact_cell_constraint_sdp_lower_bound
    {n r L : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {GramIdx : BinaryMatrixAtom n -> Type}
    [forall atom : BinaryMatrixAtom n, Fintype (GramIdx atom)]
    (hlin : ValidLinearInequality 2 n r lambda beta)
    (hdual :
      BinaryReducedExactCellConstraintDualCertificate n r lambda beta L GramIdx) :
    QaryKLower 2 n r L := by
  exact theorem_4_9_binary_reduced_exact_cell_sdp_lower_bound hlin
    hdual.toExactCellDualCertificate

theorem theorem_4_9_binary_reduced_exact_projection_cell_constraint_sdp_lower_bound
    {n r L : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {GramIdx : BinaryMatrixAtom n -> Type}
    [forall atom : BinaryMatrixAtom n, Fintype (GramIdx atom)]
    (hlin : ValidLinearInequality 2 n r lambda beta)
    (hdual :
      BinaryReducedExactProjectionCellConstraintDualCertificate
        n r lambda beta L GramIdx) :
    QaryKLower 2 n r L := by
  exact theorem_4_9_binary_reduced_exact_cell_constraint_sdp_lower_bound hlin
    hdual.toExactCellConstraintDualCertificate

theorem theorem_4_9_binary_reduced_exact_intrinsic_cell_constraint_sdp_lower_bound
    {n r L : Nat}
    {lambda : Fin (n + 1) -> Rat} {beta : Rat}
    {GramIdx : BinaryMatrixAtom n -> Type}
    [forall atom : BinaryMatrixAtom n, Fintype (GramIdx atom)]
    (hlin : ValidLinearInequality 2 n r lambda beta)
    (hdual :
      BinaryReducedExactIntrinsicCellConstraintDualCertificate
        n r lambda beta L GramIdx) :
    QaryKLower 2 n r L := by
  exact theorem_4_9_binary_reduced_exact_cell_constraint_sdp_lower_bound hlin
    hdual.toExactCellConstraintDualCertificate

end

end GijswijtPolak2025
end SDP
end CoveringCodes
