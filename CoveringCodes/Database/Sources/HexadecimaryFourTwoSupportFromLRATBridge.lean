import CoveringCodes.Database.Sources.LRATKernelBridge
import CoveringCodes.Database.Sources.HexadecimaryFourTwoSupportFromLRATKernel
import CoveringCodes.Database.Sources.HexadecimaryFourTwoSupportOriginalLRATSmoke

/-!
# Kernel-path bridge for the K16 support-defect profile certificate

`supportProfileKernel_unsat` (from `SupportFromLRATKernel`) is a kernel-proved fact:
  `∀ v, Sat.Valuation.satisfies_fmla v (LRATKernel.rawCnfToSat supportProfileKCnf) → False`

`supportProfileOriginal_unsat` (from `SupportOriginalLRATSmoke`) proves the
same formula via `native_decide` against the parsed DIMACS.

This file bridges the two via:
1. A `native_decide` equality proof
   `supportProfileKCnf = supportProfileOriginalCnf.toList.map (·.toList)`
   (`List (List Int)` equality — no Sat.Literal comparison, no LCNF compiler issue).
2. `rawCnfToSat_eq_native` from `LRATKernelBridge` to rewrite the formula type.

The LRAT certificate (20 MB) is verified at elaboration time by Lean's
kernel via `supportProfileKernel_checked`.  The only `native_decide` in
this proof is the one-line CNF data equality check.
-/

namespace CoveringCodes
namespace Database

open LRATKernel LRATNative

set_option maxHeartbeats 2000000 in
theorem supportProfileKCnf_eq_original :
    supportProfileKCnf = supportProfileOriginalCnf.toList.map (·.toList) := by
  native_decide

theorem supportProfileOriginalKernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (rawCnfToSat supportProfileOriginalCnf) →
        False :=
  fun v hv => supportProfileKernel_unsat v
    ((rawCnfToSat_eq_native _ _ supportProfileKCnf_eq_original) ▸ hv)

end Database
end CoveringCodes
