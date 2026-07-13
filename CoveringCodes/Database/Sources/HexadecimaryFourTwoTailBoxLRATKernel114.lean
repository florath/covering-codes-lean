import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernelCommon
import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernel114Data

/-!
# K16 tail-box LRAT kernel proof for spread (1,1,4)

Kernel-provable unsatisfiability of the tail-box CNF for spread
(1,1,4) via `LRATKernel.checkLeaves` + `decide`.

Data (CNF and LRAT steps as pre-parsed Lean literals) is in the external
certificate bundle; generate with:
  python3 scripts/gen_lrat_kernel_data.py \
    --cnf  data/K_16_4_2/lrat/tail_box_profile_spread_1_1_4_fixlow.cnf \
    --lrat data/K_16_4_2/lrat/tail_box_profile_spread_1_1_4_fixlow.lrat \
    --prefix tailBox114 \
    --output CoveringCodes/Database/Sources/HexadecimaryFourTwoTailBoxLRATKernel114Data.lean
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 0 in
theorem tailBox114Kernel_checked :
    LRATKernel.checkLeaves tailBox114KNVars tailBox114KCnf tailBox114KLeaves = true := by
  decide

theorem tailBox114Kernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATKernel.rawCnfToSat tailBox114KCnf) → False :=
  tailBoxKernel_unsat_of_checked (leaf := tailBox114KLeaf) (leaves := tailBox114KLeaves)
    tailBox114Kernel_checked (by simp [tailBox114KLeaves]) rfl

end Database
end CoveringCodes
