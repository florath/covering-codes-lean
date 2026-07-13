import CoveringCodes.Database.Sources.HexadecimaryFourTwoSupportOriginalLRATSmoke
import CoveringCodes.Database.Sources.HexadecimaryFourTwoSupportDirect

/-!
# Parsed-to-direct bridge for the K16 support-defect CNF

The checked LRAT smoke module uses the parsed original sorted support DIMACS.
This file exposes the same unsat fact for the direct Lean mirror in
`HexadecimaryFourTwoSupportDirect`.
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 2000000 in
theorem supportProfileOriginal_nvars_eq_direct :
    supportProfileOriginalNVars =
      HexadecimaryFourTwoSupportDirect.supportSortedCoord0SequentialNVars := by
  native_decide

set_option maxHeartbeats 2000000 in
theorem supportProfileOriginal_cnf_eq_direct :
    supportProfileOriginalCnf =
      HexadecimaryFourTwoSupportDirect.supportSortedCoord0SequentialCnf := by
  native_decide

theorem supportProfileDirect_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat
            HexadecimaryFourTwoSupportDirect.supportSortedCoord0SequentialCnf) →
        False := by
  intro v hv
  exact supportProfileOriginal_unsat v (by
    simpa [supportProfileOriginal_cnf_eq_direct] using hv)

end Database
end CoveringCodes
