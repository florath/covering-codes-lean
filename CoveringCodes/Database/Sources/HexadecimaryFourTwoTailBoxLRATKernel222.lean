import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernelCommon
import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernel222Data

/-!
# K16 tail-box LRAT kernel proof for spread (2,2,2)

Kernel-provable unsatisfiability of the tail-box CNF for spread
(2,2,2) via `LRATKernel.checkLeaves` + `decide`.

Data (CNF and LRAT steps as pre-parsed Lean literals) is in the external
certificate bundle; generate with:
  python3 scripts/gen_lrat_kernel_data.py \
    --cnf  data/K_16_4_2/lrat/tail_box_profile_spread_2_2_2_fixlow.cnf \
    --lrat data/K_16_4_2/lrat/tail_box_profile_spread_2_2_2_fixlow.lrat \
    --prefix tailBox222 \
    --output CoveringCodes/Database/Sources/HexadecimaryFourTwoTailBoxLRATKernel222Data.lean
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
theorem tailBox222Kernel_checked :
    LRATKernel.checkLeaves tailBox222KNVars tailBox222KCnf tailBox222KLeaves = true := by
  native_decide

theorem tailBox222Kernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATKernel.rawCnfToSat tailBox222KCnf) → False :=
  tailBoxKernel_unsat_of_checked (leaf := tailBox222KLeaf) (leaves := tailBox222KLeaves)
    tailBox222Kernel_checked (by simp [tailBox222KLeaves]) rfl

end Database
end CoveringCodes
