import CoveringCodes.Database.Sources.HexadecimaryFourTwoE01OriginalLRATSmoke
import CoveringCodes.Database.Sources.HexadecimaryFourTwoNotGlobalOriginalLRATSmoke
import CoveringCodes.Database.Sources.HexadecimaryFourTwoProfileDirect

/-!
# Parsed-to-direct bridges for the K16 profile CNFs

The LRAT smoke modules prove unsatisfiability for the parsed original DIMACS
files.  This file connects those parsed clauses to the direct Lean mirror in
`HexadecimaryFourTwoProfileDirect`, so later semantic code can reason about the
generator shape rather than about the included text file.
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 2000000 in
theorem e01ProfileOriginal_nvars_eq_direct :
    e01ProfileOriginalNVars =
      HexadecimaryFourTwoProfileDirect.lowerE01NotBlockNVars := by
  native_decide

set_option maxHeartbeats 2000000 in
theorem e01ProfileOriginal_cnf_eq_direct :
    e01ProfileOriginalCnf =
      HexadecimaryFourTwoProfileDirect.lowerE01NotBlockCnf := by
  native_decide

theorem e01ProfileDirect_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat
            HexadecimaryFourTwoProfileDirect.lowerE01NotBlockCnf) →
        False := by
  intro v hv
  exact e01ProfileOriginal_unsat v (by
    simpa [e01ProfileOriginal_cnf_eq_direct] using hv)

set_option maxHeartbeats 2000000 in
theorem notGlobalProfileOriginal_nvars_eq_direct :
    notGlobalProfileOriginalNVars =
      HexadecimaryFourTwoProfileDirect.lowerNotGlobalBlockNVars := by
  native_decide

set_option maxHeartbeats 2000000 in
theorem notGlobalProfileOriginal_cnf_eq_direct :
    notGlobalProfileOriginalCnf =
      HexadecimaryFourTwoProfileDirect.lowerNotGlobalBlockCnf := by
  native_decide

theorem notGlobalProfileDirect_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat
            HexadecimaryFourTwoProfileDirect.lowerNotGlobalBlockCnf) →
        False := by
  intro v hv
  exact notGlobalProfileOriginal_unsat v (by
    simpa [notGlobalProfileOriginal_cnf_eq_direct] using hv)

end Database
end CoveringCodes
