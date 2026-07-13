import CoveringCodes.Database.Sources.HexadecimaryFourTwoSupportOriginalBridge
import CoveringCodes.Database.Sources.HexadecimaryFourTwoSupportSemantics

/-!
# LRAT consequence for the K16 support-defect classifier

This file connects the sorted support-defect LRAT certificate to the semantic
`HexadecimaryFourTwoProfileGraph.supportValuation`.
-/

namespace CoveringCodes
namespace Database

theorem HexadecimaryFourTwoProfileGraph.not_sortedCoord0SupportLeFive_of_lrat
    (G : HexadecimaryFourTwoProfileGraph)
    (hsorted : G.sortedExcessProfiles) :
    ¬ G.sortedCoord0SupportLeFive := by
  intro hsupport
  exact supportProfileDirect_unsat G.supportValuation
    (G.supportValuation_satisfies_supportSortedCoord0SequentialCnf
      hsorted hsupport)

end Database
end CoveringCodes
