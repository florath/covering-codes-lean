import CoveringCodes.Database.PrimitiveUpper
import CoveringCodes.Database.Sources.Derived.Radius
import CoveringCodes.Database.Sources.Derived.Length
import CoveringCodes.Database.Sources.Derived.Alphabet

namespace CoveringCodes
namespace Database

def derivedUpperSource : UpperBoundSource :=
  (primitiveUpperSource.radiusPrev).min
    ((primitiveUpperSource.punctureNextLength).min
      (primitiveUpperSource.projectFromNextAlphabet))

end Database
end CoveringCodes
