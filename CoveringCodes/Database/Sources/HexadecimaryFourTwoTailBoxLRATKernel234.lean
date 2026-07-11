import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernelCommon
import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernel234Data

/-!
# K16 tail-box LRAT kernel proof for spread (2,3,4)

Kernel-provable unsatisfiability of the tail-box CNF for spread
(2,3,4) via `LRATKernel.checkLeaves` + `decide`.

Data (CNF and LRAT steps as pre-parsed Lean literals) is in the external
certificate bundle; generate with:
  python3 scripts/gen_lrat_kernel_data.py \
    --cnf  data/K_16_4_2/lrat/tail_box_profile_spread_2_3_4_fixlow.cnf \
    --lrat data/K_16_4_2/lrat/tail_box_profile_spread_2_3_4_fixlow.lrat \
    --prefix tailBox234 \
    --output CoveringCodes/Database/Sources/HexadecimaryFourTwoTailBoxLRATKernel234Data.lean
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 0 in
theorem tailBox234Kernel_checked :
    LRATKernel.checkLeaves tailBox234KNVars tailBox234KCnf tailBox234KLeaves = true := by
  decide

theorem tailBox234Kernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATKernel.rawCnfToSat tailBox234KCnf) → False :=
  tailBoxKernel_unsat_of_checked (leaf := tailBox234KLeaf) (leaves := tailBox234KLeaves)
    tailBox234Kernel_checked (by simp [tailBox234KLeaves]) rfl

end Database
end CoveringCodes
