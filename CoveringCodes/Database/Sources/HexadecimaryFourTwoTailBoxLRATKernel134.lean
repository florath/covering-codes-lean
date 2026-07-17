import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernelCommon
import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernel134Data

/-!
# K16 tail-box LRAT kernel proof for spread (1,3,4)

Kernel-provable unsatisfiability of the tail-box CNF for spread
(1,3,4) via `LRATKernel.checkLeaves` + `decide`.

Data (CNF and LRAT steps as pre-parsed Lean literals) is in the external
certificate bundle; generate with:
  python3 scripts/gen_lrat_kernel_data.py \
    --cnf  data/K_16_4_2/lrat/tail_box_profile_spread_1_3_4_fixlow.cnf \
    --lrat data/K_16_4_2/lrat/tail_box_profile_spread_1_3_4_fixlow.lrat \
    --prefix tailBox134 \
    --output CoveringCodes/Database/Sources/HexadecimaryFourTwoTailBoxLRATKernel134Data.lean
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
theorem tailBox134Kernel_checked :
    LRATKernel.checkLeaves tailBox134KNVars tailBox134KCnf tailBox134KLeaves = true := by
  native_decide

theorem tailBox134Kernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATKernel.rawCnfToSat tailBox134KCnf) → False :=
  tailBoxKernel_unsat_of_checked (leaf := tailBox134KLeaf) (leaves := tailBox134KLeaves)
    tailBox134Kernel_checked (by simp [tailBox134KLeaves]) rfl

end Database
end CoveringCodes
