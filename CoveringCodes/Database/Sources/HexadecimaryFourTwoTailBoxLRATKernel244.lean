import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernelCommon
import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernel244Data

/-!
# K16 tail-box LRAT kernel proof for spread (2,4,4)

Kernel-provable unsatisfiability of the tail-box CNF for spread
(2,4,4) via `LRATKernel.checkLeaves` + `decide`.

Data (CNF and LRAT steps as pre-parsed Lean literals) is in the external
certificate bundle; generate with:
  python3 scripts/gen_lrat_kernel_data.py \
    --cnf  data/K_16_4_2/lrat/tail_box_profile_spread_2_4_4_fixlow.cnf \
    --lrat data/K_16_4_2/lrat/tail_box_profile_spread_2_4_4_fixlow.lrat \
    --prefix tailBox244 \
    --output CoveringCodes/Database/Sources/HexadecimaryFourTwoTailBoxLRATKernel244Data.lean
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
theorem tailBox244Kernel_checked :
    LRATKernel.checkLeaves tailBox244KNVars tailBox244KCnf tailBox244KLeaves = true := by
  native_decide

theorem tailBox244Kernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATKernel.rawCnfToSat tailBox244KCnf) → False :=
  tailBoxKernel_unsat_of_checked (leaf := tailBox244KLeaf) (leaves := tailBox244KLeaves)
    tailBox244Kernel_checked (by simp [tailBox244KLeaves]) rfl

end Database
end CoveringCodes
