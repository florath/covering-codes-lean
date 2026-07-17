import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernelCommon
import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernel334Data

/-!
# K16 tail-box LRAT kernel proof for spread (3,3,4)

Kernel-provable unsatisfiability of the tail-box CNF for spread
(3,3,4) via `LRATKernel.checkLeaves` + `decide`.

Data (CNF and LRAT steps as pre-parsed Lean literals) is in the external
certificate bundle; generate with:
  python3 scripts/gen_lrat_kernel_data.py \
    --cnf  data/K_16_4_2/lrat/tail_box_profile_spread_3_3_4_fixlow.cnf \
    --lrat data/K_16_4_2/lrat/tail_box_profile_spread_3_3_4_fixlow.lrat \
    --prefix tailBox334 \
    --output CoveringCodes/Database/Sources/HexadecimaryFourTwoTailBoxLRATKernel334Data.lean
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
theorem tailBox334Kernel_checked :
    LRATKernel.checkLeaves tailBox334KNVars tailBox334KCnf tailBox334KLeaves = true := by
  native_decide

theorem tailBox334Kernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATKernel.rawCnfToSat tailBox334KCnf) → False :=
  tailBoxKernel_unsat_of_checked (leaf := tailBox334KLeaf) (leaves := tailBox334KLeaves)
    tailBox334Kernel_checked (by simp [tailBox334KLeaves]) rfl

end Database
end CoveringCodes
