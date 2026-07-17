import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernelCommon
import CoveringCodes.Database.Sources.HexadecimaryFourTwoSupportKernelData

/-!
# K16 support-defect profile LRAT kernel proof

Kernel-provable unsatisfiability of the support-defect profile CNF via
`LRATKernel.checkLeaves` + `decide`.

Data (CNF and LRAT steps as pre-parsed Lean literals) is in the external
certificate bundle; generate with:
  python3 scripts/gen_lrat_kernel_data.py \
    --cnf  data/K_16_4_2/lrat/present_profile_support_le5_sorted_coord0_sequential.cnf \
    --lrat data/K_16_4_2/lrat/present_profile_support_le5_sorted_coord0_sequential.lrat \
    --prefix supportProfile \
    --output CoveringCodes/Database/Sources/HexadecimaryFourTwoSupportKernelData.lean
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
theorem supportProfileKernel_checked :
    LRATKernel.checkLeaves supportProfileKNVars supportProfileKCnf supportProfileKLeaves = true := by
  native_decide

theorem supportProfileKernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATKernel.rawCnfToSat supportProfileKCnf) → False :=
  tailBoxKernel_unsat_of_checked (leaf := supportProfileKLeaf) (leaves := supportProfileKLeaves)
    supportProfileKernel_checked (by simp [supportProfileKLeaves]) rfl

end Database
end CoveringCodes
