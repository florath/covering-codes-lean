import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernelCommon
import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernel223Data

/-!
# K16 tail-box LRAT kernel proof for spread (2,2,3)

Kernel-provable unsatisfiability of the tail-box CNF for spread
(2,2,3) via `LRATKernel.checkLeaves` + `decide`.

Data (CNF and LRAT steps as pre-parsed Lean literals) is in the external
certificate bundle; generate with:
  python3 scripts/gen_lrat_kernel_data.py \
    --cnf  data/K_16_4_2/lrat/tail_box_profile_spread_2_2_3_fixlow.cnf \
    --lrat data/K_16_4_2/lrat/tail_box_profile_spread_2_2_3_fixlow.lrat \
    --prefix tailBox223 \
    --output CoveringCodes/Database/Sources/HexadecimaryFourTwoTailBoxLRATKernel223Data.lean
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
theorem tailBox223Kernel_checked :
    LRATKernel.checkLeaves tailBox223KNVars tailBox223KCnf tailBox223KLeaves = true := by
  native_decide

theorem tailBox223Kernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATKernel.rawCnfToSat tailBox223KCnf) → False :=
  tailBoxKernel_unsat_of_checked (leaf := tailBox223KLeaf) (leaves := tailBox223KLeaves)
    tailBox223Kernel_checked (by simp [tailBox223KLeaves]) rfl

end Database
end CoveringCodes
