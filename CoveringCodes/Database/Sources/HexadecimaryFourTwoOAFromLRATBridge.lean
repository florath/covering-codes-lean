import CoveringCodes.Database.Sources.LRATKernelBridge
import CoveringCodes.Database.Sources.HexadecimaryFourTwoOAFromLRATKernel
import CoveringCodes.Database.Sources.HexadecimaryFourTwoOAOriginalLRATSmoke

/-!
# Kernel-path bridge for the K16 OA(36,4,6,2) certificate

`oa36Kernel_unsat` (from `OAFromLRATKernel`) is a kernel-proved fact:
  `∀ v, Sat.Valuation.satisfies_fmla v (LRATKernel.rawCnfToSat oa36KCnf) → False`

`oa36Original_unsat` (from `OAOriginalLRATSmoke`) proves the
same formula via `native_decide` against the parsed DIMACS.

This file bridges the two via:
1. A `native_decide` equality proof
   `oa36KCnf = oa36OriginalCnf.toList.map (·.toList)`
   (`List (List Int)` equality — no Sat.Literal comparison, no LCNF compiler issue).
2. `rawCnfToSat_eq_native` from `LRATKernelBridge` to rewrite the formula type.

The LRAT certificate (21 MB) is verified at elaboration time by Lean's
kernel via `oa36Kernel_checked`.  The only `native_decide` in
this proof is the one-line CNF data equality check.
-/

namespace CoveringCodes
namespace Database

open LRATKernel LRATNative

set_option maxHeartbeats 2000000 in
theorem oa36KCnf_eq_original :
    oa36KCnf = oa36OriginalCnf.toList.map (·.toList) := by
  native_decide

theorem oa36OriginalKernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (rawCnfToSat oa36OriginalCnf) →
        False :=
  fun v hv => oa36Kernel_unsat v
    ((rawCnfToSat_eq_native _ _ oa36KCnf_eq_original) ▸ hv)

end Database
end CoveringCodes
