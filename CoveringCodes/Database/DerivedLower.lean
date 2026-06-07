import CoveringCodes.Database.PrimitiveLower
import CoveringCodes.Database.Sources.Derived.Radius
import CoveringCodes.Database.Sources.Derived.Length
import CoveringCodes.Database.Sources.Derived.Alphabet

namespace CoveringCodes
namespace Database

def derivedLowerSource : LowerBoundSource :=
  primitiveLowerSource.radiusNext.max
    (primitiveLowerSource.puncturePrevLength.max
      (primitiveLowerSource.projectBackFromPrevAlphabet))

end Database
end CoveringCodes
