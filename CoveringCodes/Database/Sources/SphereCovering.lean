import CoveringCodes.CoveringNumber
import CoveringCodes.Bounds.SphereCoveringBound
import CoveringCodes.Database.Arithmetic
import CoveringCodes.Database.Source

namespace CoveringCodes
namespace Database

def sphereLowerName : String := "rule_sphere_covering_bound"

/-- Sphere-covering lower bound: `⌈q^n / V_q(n,r)⌉`. -/
def sphereLower (q n r : ℕ) : ℕ :=
  natCeilDiv (q ^ n) (qaryBallVolume q n r)

/-- The sphere-covering lower bound is valid. -/
theorem sphereLower_valid (q n r : ℕ) :
    QaryKLower q n r (sphereLower q n r) := by
  intro C hC
  unfold sphereLower
  have hvol : 0 < qaryBallVolume q n r := qaryBallVolume_pos q n r
  have hprod : q ^ n ≤ C.card * qaryBallVolume q n r :=
    sphere_covering_bound C hC
  exact natCeilDiv_le_of_le_mul hvol hprod

def sphereLowerSource : LowerBoundSource where
  value := sphereLower
  trace := fun q n r => .primitive sphereLowerName (sphereLower_valid q n r)

end Database
end CoveringCodes
