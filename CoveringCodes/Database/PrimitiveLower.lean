import CoveringCodes.Database.Sources.SphereCovering
import CoveringCodes.Database.Sources.SmallCases
import CoveringCodes.Database.Sources.SmallLowerBounds
import CoveringCodes.Database.Sources.SparseSlicer

namespace CoveringCodes
namespace Database

def primitiveLowerSource : LowerBoundSource :=
  sphereLowerSource.max
    (sparseSliceLowerSource.max
      (smallLowerTernary331LowerSource.max
        (smallLowerBinary251LowerSource.max
          (smallLowerBinary262LowerSource.max
            (zeroRadiusLowerSource.max
              (largeRadiusLowerSource.max radiusNMinusOneLowerSource))))))

def primitiveLower (q n r : Nat) : Nat :=
  primitiveLowerSource.value q n r

theorem primitiveLower_valid (q n r : Nat) :
    QaryKLower q n r (primitiveLower q n r) :=
  primitiveLowerSource.valid q n r

def primitiveLowerName (q n r : Nat) : String :=
  primitiveLowerSource.name q n r

end Database
end CoveringCodes
