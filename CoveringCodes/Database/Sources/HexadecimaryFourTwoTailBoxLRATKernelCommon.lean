import CoveringCodes.Database.Sources.LRATKernel

/-!
# Shared helpers for K16 tail-box LRAT kernel proofs

Analogue of `HexadecimaryFourTwoTailBoxLRATCommon` for `LRATKernel`-based
(kernel-evaluable) proofs.  All per-spread kernel smoke modules import this
file instead of the `LRATNative` common.
-/

namespace CoveringCodes
namespace Database

open LRATKernel

/-- If `checkLeaves` returns `true` for a leaf with empty cube, the CNF is UNSAT. -/
theorem tailBoxKernel_unsat_of_checked
    {nvars : Nat} {cnf : RawCnf}
    {leaf : Leaf}
    {leaves : List Leaf}
    (hcheck : checkLeaves nvars cnf leaves = true)
    (hmem : leaf ∈ leaves)
    (hcube : leaf.cube = []) :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (rawCnfToSat cnf) → False := by
  intro v hv
  exact checkLeaves_branch_unsat_of_mem hcheck hmem v (by
    rw [rawCnfToSat_rawCnfAppendCube, hcube]
    simpa [rawCubeToSat] using hv)

end Database
end CoveringCodes
