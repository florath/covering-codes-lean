import CoveringCodes.Database.PrimitiveUpper
import CoveringCodes.Database.DerivedUpper

namespace CoveringCodes
namespace Database

def bestUpperSource : UpperBoundSource :=
  primitiveUpperSource.min derivedUpperSource

/-- Best known upper bound from all registered upper-bound sources. -/
def bestUpper (q n r : ℕ) : ℕ :=
  bestUpperSource.value q n r

theorem bestUpper_valid (q n r : ℕ) :
    QaryKUpper q n r (bestUpper q n r) :=
  bestUpperSource.valid q n r

def bestUpperName (q n r : ℕ) : String :=
  bestUpperSource.name q n r

def bestUpperSteps (q n r : ℕ) : List String :=
  bestUpperSource.steps q n r

end Database
end CoveringCodes
