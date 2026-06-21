import CoveringCodes.Database.Sources.Trivial
import CoveringCodes.Database.Sources.SmallCases
import CoveringCodes.Database.Sources.SmallExplicitUpper
import CoveringCodes.Database.Sources.QuaternaryHamming
import CoveringCodes.Database.Sources.QuaternaryRadiusTwo
import CoveringCodes.Database.Sources.OctonaryFourTwo
import CoveringCodes.Database.Sources.TwoBlockCyclic
import CoveringCodes.Database.Sources.VanLaarhoven1989
import CoveringCodes.Database.Sources.KnownBounds

namespace CoveringCodes
namespace Database

private def primitiveUpperSources : List UpperBoundSource := [
  largeRadiusUpperSource,
  pigeonholeConstantUpperSource,
  binaryAntipodalUpperSource,
  radiusNMinusOneUpperSource,
  smallExplicitBinaryRepetition3UpperSource,
  smallExplicitTernary331UpperSource,
  smallExplicitTernaryHamming4UpperSource,
  smallExplicitBinaryFiveRadiusOneUpperSource,
  smallExplicitBinarySixRadiusOneUpperSource,
  smallExplicitBinaryHamming7UpperSource,
  smallExplicitBinarySevenRadiusTwoUpperSource,
  smallExplicitBinaryEightRadiusTwoUpperSource,
  smallExplicitBinaryNineRadiusThreeUpperSource,
  smallExplicitBinarySixRadiusTwoUpperSource,
  smallExplicitTernaryFiveRadiusTwoUpperSource,
  smallExplicitTernarySixRadiusTwoUpperSource,
  smallExplicitTernaryFiveRadiusThreeUpperSource,
  smallExplicitTernarySixRadiusThreeUpperSource,
  smallExplicitQuaternary331UpperSource,
  smallExplicitQuaternary441UpperSource,
  smallExplicitQuaternary442UpperSource,
  smallExplicitQuinary531UpperSource,
  smallExplicitSenary631UpperSource,
  smallExplicitSeptenary731UpperSource,
  smallExplicitOctonary831UpperSource,
  octonaryFourRadiusTwoUpperSource,
  smallExplicitNonary931UpperSource,
  smallExplicitDenary1031UpperSource,
  smallExplicitElevenary1131UpperSource,
  smallExplicitDuodenary1231UpperSource,
  smallExplicitThirteenary1331UpperSource,
  smallExplicitFourteenary1431UpperSource,
  smallExplicitFifteenary1531UpperSource,
  smallExplicitHexadecimal1631UpperSource,
  smallExplicitSeventeenary1731UpperSource,
  smallExplicitEighteenary1831UpperSource,
  quaternaryHammingFiveUpperSource,
  quaternaryFiveRadiusTwoUpperSource,
  twoBlockCyclic331UpperSource,
  vanLaarhoven6UpperSource,
  vanLaarhoven7UpperSource,
  vanLaarhoven8UpperSource,
  knownBoundQ6N7R2UpperSource,
  knownBoundQ6N8R2UpperSource
]

def primitiveUpperSource : UpperBoundSource :=
  primitiveUpperSources.foldl (·.min ·) trivialUpperSource

def primitiveUpper (q n r : Nat) : Nat :=
  primitiveUpperSource.value q n r

theorem primitiveUpper_valid (q n r : Nat) :
    QaryKUpper q n r (primitiveUpper q n r) :=
  primitiveUpperSource.valid q n r

def primitiveUpperName (q n r : Nat) : String :=
  primitiveUpperSource.name q n r

end Database
end CoveringCodes
