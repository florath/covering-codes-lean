import CoveringCodes.Database.PrimitiveLower
import CoveringCodes.Database.DerivedLower

namespace CoveringCodes
namespace Database

def bestLowerSource : LowerBoundSource :=
  primitiveLowerSource.max derivedLowerSource

/-- Best known lower bound from all registered lower-bound sources. -/
def bestLower (q n r : ℕ) : ℕ :=
  bestLowerSource.value q n r

theorem bestLower_valid (q n r : ℕ) :
    QaryKLower q n r (bestLower q n r) :=
  bestLowerSource.valid q n r

def bestLowerName (q n r : ℕ) : String :=
  bestLowerSource.name q n r

def bestLowerSteps (q n r : ℕ) : List String :=
  bestLowerSource.steps q n r

end Database
end CoveringCodes
