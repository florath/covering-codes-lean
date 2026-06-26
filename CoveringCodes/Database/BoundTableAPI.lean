import CoveringCodes.Database.BoundTable
import CoveringCodes.Database.Defs

namespace CoveringCodes.Database

-- Conversion to the public BestBounds API.
def CertifiedBoundEntry.toBestBounds (e : CertifiedBoundEntry q n r) :
    BestBounds q n r :=
  { lower       := e.lower
    upper       := e.upper
    lower_proof := e.lowerTrace.valid
    upper_proof := e.upperTrace.valid }

end CoveringCodes.Database
