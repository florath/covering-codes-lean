import CoveringCodes.Database.Sources.Trivial
import CoveringCodes.SmallCases.ZeroRadius
import CoveringCodes.SmallCases.LargeRadius
import CoveringCodes.SmallCases.RadiusNMinusOne

namespace CoveringCodes
namespace Database

/-! ## Zero-radius component -/

def zeroRadiusLowerName     : String := "rule_zero_radius_exact"
def largeRadiusLowerName    : String := "rule_large_radius_lower"
def radiusNMinusOneLowerName: String := "rule_radius_n_minus_one_exact"
def largeRadiusUpperName    : String := "rule_large_radius_upper"
def radiusNMinusOneUpperName: String := "rule_radius_n_minus_one_exact"
def pigeonholeConstantUpperName : String :=
  "rule_constant_symbol"
def binaryAntipodalUpperName: String := "rule_binary_antipodal"

/-- Lower-bound component from `K_q(n,0) = q^n`. Inactive value: `0`. -/
def zeroRadiusLower (q n r : ℕ) : ℕ :=
  if r = 0 then q ^ n else 0

theorem zeroRadiusLower_valid (q n r : ℕ) :
    QaryKLower q n r (zeroRadiusLower q n r) := by
  by_cases h : r = 0
  · subst r
    simpa [zeroRadiusLower] using qaryKLower_zero_radius q n
  · simpa [zeroRadiusLower, h] using zeroLower_valid q n r

/-! ## Large-radius component -/

/-- Lower-bound component for `r ≥ n`. Returns `1` only when the space is nonempty.
Inactive value: `0`. -/
def largeRadiusLower (q n r : ℕ) : ℕ :=
  if n ≤ r then
    if n = 0 then 1
    else if 0 < q then 1
    else 0
  else 0

theorem largeRadiusLower_valid (q n r : ℕ) :
    QaryKLower q n r (largeRadiusLower q n r) := by
  simp only [largeRadiusLower]
  split_ifs with hr hn0 hq
  · -- n ≤ r, n = 0: space nonempty (one empty word)
    exact KLower.one_of_nonempty (ι := Fin n) (β := fun _ : Fin n => Fin q) (r := r)
      ((qaryWord_nonempty_iff q n).mpr (Or.inl hn0))
  · -- n ≤ r, n ≠ 0, 0 < q: space nonempty
    exact KLower.one_of_nonempty (ι := Fin n) (β := fun _ : Fin n => Fin q) (r := r)
      ((qaryWord_nonempty_iff q n).mpr (Or.inr hq))
  · exact KLower.zero
  · exact KLower.zero

/-- Upper-bound component for `r ≥ n`. Active value: `1`. Inactive value: `trivialUpper q n r`. -/
def largeRadiusUpper (q n r : ℕ) : ℕ :=
  if n ≤ r then 1 else trivialUpper q n r

/-- When `r ≥ n`, one codeword covers the whole space. -/
private theorem largeRadiusUpper_one_valid (q n r : ℕ) (hr : n ≤ r) :
    QaryKUpper q n r 1 := by
  by_cases hn0 : n = 0
  · have hspace : Nonempty (QaryWord q n) :=
        (qaryWord_nonempty_iff q n).mpr (Or.inl hn0)
    rcases hspace with ⟨center⟩
    refine ⟨{center}, by simp, ?_⟩
    intro x
    refine ⟨center, by simp, ?_⟩
    have hdist := dist_le_card x center
    simp only [Fintype.card_fin] at hdist
    exact hdist.trans hr
  · by_cases hq : 0 < q
    · have hspace : Nonempty (QaryWord q n) :=
          (qaryWord_nonempty_iff q n).mpr (Or.inr hq)
      rcases hspace with ⟨center⟩
      refine ⟨{center}, by simp, ?_⟩
      intro x
      refine ⟨center, by simp, ?_⟩
      have hdist := dist_le_card x center
      simp only [Fintype.card_fin] at hdist
      exact hdist.trans hr
    · -- q = 0 and n > 0: ambient space is empty, empty code covers vacuously
      refine ⟨∅, by simp, ?_⟩
      intro x
      exfalso
      have hspace : Nonempty (QaryWord q n) := ⟨x⟩
      rcases (qaryWord_nonempty_iff q n).mp hspace with hn | hqpos
      · exact hn0 hn
      · exact hq hqpos

theorem largeRadiusUpper_valid (q n r : ℕ) :
    QaryKUpper q n r (largeRadiusUpper q n r) := by
  by_cases hr : n ≤ r
  · simpa [largeRadiusUpper, hr] using largeRadiusUpper_one_valid q n r hr
  · simpa [largeRadiusUpper, hr] using trivialUpper_valid q n r

/-! ## Radius `n - 1` component -/

/-- Lower-bound component from `K_q(n, n-1) = q` for `1 ≤ n`. Inactive value: `0`. -/
def radiusNMinusOneLower (q n r : ℕ) : ℕ :=
  if 1 ≤ n ∧ r = n - 1 then q else 0

theorem radiusNMinusOneLower_valid (q n r : ℕ) :
    QaryKLower q n r (radiusNMinusOneLower q n r) := by
  by_cases h : 1 ≤ n ∧ r = n - 1
  · rcases h with ⟨hn, hr⟩
    subst r
    simpa [radiusNMinusOneLower, hn] using
      (qaryKSpec_radius_nMinusOne q n hn).toLower
  · simpa [radiusNMinusOneLower, h] using zeroLower_valid q n r

/-- Upper-bound component from `K_q(n, n-1) = q` for `1 ≤ n`. Inactive value: `trivialUpper q n r`. -/
def radiusNMinusOneUpper (q n r : ℕ) : ℕ :=
  if 1 ≤ n ∧ r = n - 1 then q else trivialUpper q n r

theorem radiusNMinusOneUpper_valid (q n r : ℕ) :
    QaryKUpper q n r (radiusNMinusOneUpper q n r) := by
  by_cases h : 1 ≤ n ∧ r = n - 1
  · rcases h with ⟨hn, hr⟩
    subst r
    simpa [radiusNMinusOneUpper, hn] using
      (qaryKSpec_radius_nMinusOne q n hn).toUpper
  · simpa [radiusNMinusOneUpper, h] using trivialUpper_valid q n r

/-! ## Constant-code pigeonhole component -/

/-- Upper-bound component from the all-constant `q`-word code.
Active when pigeonhole forces every word to contain some symbol at least `n-r`
times, namely under the convenient sufficient condition `q * (n-r-1) < n`. -/
def pigeonholeConstantUpper (q n r : Nat) : Nat :=
  if q * (n - r - 1) < n then q else trivialUpper q n r

private theorem pigeonholeConstantUpper_q_valid (q n r : Nat)
    (h : q * (n - r - 1) < n) :
    QaryKUpper q n r q := by
  have hn : 1 ≤ n := by omega
  exact ⟨constantQaryCode q n, (constantQaryCode_card q n hn).le,
    constantQaryCode_covers_of_pigeonhole q n r h⟩

theorem pigeonholeConstantUpper_valid (q n r : Nat) :
    QaryKUpper q n r (pigeonholeConstantUpper q n r) := by
  by_cases h : q * (n - r - 1) < n
  · simpa [pigeonholeConstantUpper, h] using pigeonholeConstantUpper_q_valid q n r h
  · simpa [pigeonholeConstantUpper, h] using trivialUpper_valid q n r

/-! ## Binary antipodal component -/

private abbrev f2_0 : Fin 2 := ⟨0, by decide⟩
private abbrev f2_1 : Fin 2 := ⟨1, by decide⟩

private def zeroBinaryWord (n : Nat) : QaryWord 2 n :=
  fun _ => f2_0

private def oneBinaryWord (n : Nat) : QaryWord 2 n :=
  fun _ => f2_1

private def binaryAntipodalCode (n : Nat) : Finset (QaryWord 2 n) :=
  {zeroBinaryWord n, oneBinaryWord n}

private theorem binary_ne_zero_iff_eq_one (a : Fin 2) :
    a ≠ f2_0 ↔ a = f2_1 := by
  decide +revert

private theorem binary_ne_one_iff_eq_zero (a : Fin 2) :
    a ≠ f2_1 ↔ a = f2_0 := by
  decide +revert

private theorem f2_1_ne_f2_0 : f2_1 ≠ f2_0 := by
  decide

private theorem dist_zero_add_dist_one (n : Nat) (x : QaryWord 2 n) :
    hammingDist x (zeroBinaryWord n) + hammingDist x (oneBinaryWord n) = n := by
  unfold hammingDist zeroBinaryWord oneBinaryWord
  let Z : Finset (Fin n) := Finset.univ.filter (fun i => x i ≠ f2_0)
  let O : Finset (Fin n) := Finset.univ.filter (fun i => x i ≠ f2_1)
  have hdisj : Disjoint Z O := by
    rw [Finset.disjoint_left]
    intro i hiZ hiO
    have hz : x i = f2_1 := (binary_ne_zero_iff_eq_one (x i)).mp (by simpa [Z] using hiZ)
    have ho : x i = f2_0 := (binary_ne_one_iff_eq_zero (x i)).mp (by simpa [O] using hiO)
    rw [hz] at ho
    exact f2_1_ne_f2_0 ho
  have hunion : Z ∪ O = (Finset.univ : Finset (Fin n)) := by
    ext i
    by_cases h : x i = f2_0
    · simp [Z, O, h]
    · have h1 : x i = f2_1 := (binary_ne_zero_iff_eq_one (x i)).mp h
      simp [Z, O, h1]
  calc
    Z.card + O.card = (Z ∪ O).card := by rw [Finset.card_union_of_disjoint hdisj]
    _ = n := by simp [hunion, Fintype.card_fin]

private theorem binaryAntipodalCode_card (n : Nat) :
    (binaryAntipodalCode n).card ≤ 2 := by
  by_cases h : zeroBinaryWord n = oneBinaryWord n
  · simp [binaryAntipodalCode, h]
  · rw [binaryAntipodalCode, Finset.card_pair h]

private theorem binaryAntipodalCode_covers {n r : Nat} (h : n ≤ 2 * r + 1) :
    CoversFinset (binaryAntipodalCode n) r := by
  intro x
  by_cases hz : hammingDist x (zeroBinaryWord n) ≤ r
  · refine ⟨zeroBinaryWord n, ?_, ?_⟩
    · simp [binaryAntipodalCode]
    · simpa [dist] using hz
  · refine ⟨oneBinaryWord n, ?_, ?_⟩
    · simp [binaryAntipodalCode]
    · show dist x (oneBinaryWord n) ≤ r
      have hsum := dist_zero_add_dist_one n x
      have hgt : r < hammingDist x (zeroBinaryWord n) := Nat.lt_of_not_ge hz
      simp only [dist]
      omega

private theorem binaryAntipodalUpper_two_valid (n r : Nat) (h : n ≤ 2 * r + 1) :
    QaryKUpper 2 n r 2 :=
  ⟨binaryAntipodalCode n, binaryAntipodalCode_card n, binaryAntipodalCode_covers h⟩

/-- Upper-bound component from the binary antipodal code `{0^n,1^n}`.
Active when `q = 2` and every binary word is within radius `r` of one endpoint,
equivalently `n <= 2r+1`. -/
def binaryAntipodalUpper (q n r : Nat) : Nat :=
  if q = 2 ∧ n ≤ 2 * r + 1 then 2 else trivialUpper q n r

theorem binaryAntipodalUpper_valid (q n r : Nat) :
    QaryKUpper q n r (binaryAntipodalUpper q n r) := by
  by_cases h : q = 2 ∧ n ≤ 2 * r + 1
  · rcases h with ⟨rfl, hn⟩
    simpa [binaryAntipodalUpper, hn] using binaryAntipodalUpper_two_valid n r hn
  · simpa [binaryAntipodalUpper, h] using trivialUpper_valid q n r

def zeroRadiusLowerSource : LowerBoundSource where
  value := zeroRadiusLower
  trace := fun q n r => .primitive zeroRadiusLowerName (zeroRadiusLower_valid q n r)

def largeRadiusLowerSource : LowerBoundSource where
  value := largeRadiusLower
  trace := fun q n r => .primitive largeRadiusLowerName (largeRadiusLower_valid q n r)

def largeRadiusUpperSource : UpperBoundSource where
  value := largeRadiusUpper
  trace := fun q n r => .primitive largeRadiusUpperName (largeRadiusUpper_valid q n r)

def radiusNMinusOneLowerSource : LowerBoundSource where
  value := radiusNMinusOneLower
  trace := fun q n r => .primitive radiusNMinusOneLowerName (radiusNMinusOneLower_valid q n r)

def radiusNMinusOneUpperSource : UpperBoundSource where
  value := radiusNMinusOneUpper
  trace := fun q n r => .primitive radiusNMinusOneUpperName (radiusNMinusOneUpper_valid q n r)

def pigeonholeConstantUpperSource : UpperBoundSource where
  value := pigeonholeConstantUpper
  trace := fun q n r => .primitive pigeonholeConstantUpperName (pigeonholeConstantUpper_valid q n r)

def binaryAntipodalUpperSource : UpperBoundSource where
  value := binaryAntipodalUpper
  trace := fun q n r => .primitive binaryAntipodalUpperName (binaryAntipodalUpper_valid q n r)

end Database
end CoveringCodes
