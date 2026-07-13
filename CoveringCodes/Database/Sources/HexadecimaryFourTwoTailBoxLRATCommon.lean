import CoveringCodes.Database.Sources.LRATNative

/-!
# Shared helpers for K16 tail-box LRAT smoke tests
-/

namespace CoveringCodes
namespace Database

open LRATNative

theorem tailBox_unsat_of_checked
    {nvars : Nat} {cnf : LRATNative.RawCnf}
    {leaf : LRATNative.ParsedCubeLRAT}
    {leaves : List LRATNative.ParsedCubeLRAT}
    (hcheck : LRATNative.checkParsedCubeLRATs nvars cnf leaves = true)
    (hmem : leaf ∈ leaves)
    (hcube : leaf.cube = []) :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATNative.rawCnfToSat cnf) → False := by
  intro v hv
  exact
    (LRATNative.checkParsedCubeLRATs_branch_unsat_of_mem
      (nvars := nvars) (cnf := cnf) (leaf := leaf) (leaves := leaves)
      hcheck hmem) v (by
        rw [LRATNative.rawCnfToSat_rawCnfAppendCube, hcube]
        simpa [LRATNative.rawCubeToSat] using hv)

end Database
end CoveringCodes
