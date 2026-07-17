import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernelCommon
import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernel122Data

/-!
# K16 tail-box LRAT kernel proof for spread (1,2,2)

Kernel-provable unsatisfiability of the tail-box CNF for spread
(1,2,2) via `LRATKernel.checkLeaves` + `decide`.

Data (CNF and LRAT steps as pre-parsed Lean literals) is in the external
certificate bundle; generate with:
  python3 scripts/gen_lrat_kernel_data.py \
    --cnf  data/K_16_4_2/lrat/tail_box_profile_spread_1_2_2_fixlow.cnf \
    --lrat data/K_16_4_2/lrat/tail_box_profile_spread_1_2_2_fixlow.lrat \
    --prefix tailBox122 \
    --output CoveringCodes/Database/Sources/HexadecimaryFourTwoTailBoxLRATKernel122Data.lean
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
theorem tailBox122Kernel_checked :
    LRATKernel.checkLeaves tailBox122KNVars tailBox122KCnf tailBox122KLeaves = true := by
  native_decide

theorem tailBox122Kernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATKernel.rawCnfToSat tailBox122KCnf) → False :=
  tailBoxKernel_unsat_of_checked (leaf := tailBox122KLeaf) (leaves := tailBox122KLeaves)
    tailBox122Kernel_checked (by simp [tailBox122KLeaves]) rfl

end Database
end CoveringCodes
