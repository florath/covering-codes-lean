import CoveringCodes.CoveringNumber
import CoveringCodes.Covers
import CoveringCodes.Database.Source

namespace CoveringCodes
namespace Database

/-- Always-valid lower-bound fallback: `0`. -/
def zeroLower (_q _n _r : ℕ) : ℕ :=
  0

/-- `0` is always a valid lower bound. -/
theorem zeroLower_valid (q n r : ℕ) :
    QaryKLower q n r (zeroLower q n r) := by
  simpa [zeroLower] using
    (KLower.zero (ι := Fin n) (β := fun _ : Fin n => Fin q) (r := r))

def trivialUpperName : String := "rule_trivial_upper"

/-- Always-valid upper-bound fallback: the entire ambient space, of size `q^n`. -/
def trivialUpper (q n : ℕ) (_r : ℕ) : ℕ :=
  q ^ n

/-- The whole q-ary word space is a covering code, so `K_q(n,r) ≤ q^n`. -/
theorem trivialUpper_valid (q n r : ℕ) :
    QaryKUpper q n r (trivialUpper q n r) := by
  refine ⟨Finset.univ, ?_, ?_⟩
  · simp [trivialUpper]
  · exact coversFinset_univ (ι := Fin n) (β := fun _ : Fin n => Fin q) r

def zeroLowerSource : LowerBoundSource where
  value := zeroLower
  trace := fun q n r => .primitive "rule_trivial_lower" (zeroLower_valid q n r)

def trivialUpperSource : UpperBoundSource where
  value := trivialUpper
  trace := fun q n r => .primitive trivialUpperName (trivialUpper_valid q n r)

end Database
end CoveringCodes
