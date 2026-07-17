import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernelCommon
import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernel444Data

/-!
# K16 tail-box LRAT kernel proof for spread (4,4,4)

Kernel-provable unsatisfiability of the tail-box CNF for spread
(4,4,4) via `LRATKernel.checkLeaves` + `decide`.

Data (CNF and LRAT steps as pre-parsed Lean literals) is in the external
certificate bundle; generate with:
  python3 scripts/gen_lrat_kernel_data.py \
    --cnf  data/K_16_4_2/lrat/tail_box_profile_spread_4_4_4_fixlow.cnf \
    --lrat data/K_16_4_2/lrat/tail_box_profile_spread_4_4_4_fixlow.lrat \
    --prefix tailBox444 \
    --output CoveringCodes/Database/Sources/HexadecimaryFourTwoTailBoxLRATKernel444Data.lean
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
theorem tailBox444Kernel_checked :
    LRATKernel.checkLeaves tailBox444KNVars tailBox444KCnf tailBox444KLeaves = true := by
  native_decide

theorem tailBox444Kernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATKernel.rawCnfToSat tailBox444KCnf) → False :=
  tailBoxKernel_unsat_of_checked (leaf := tailBox444KLeaf) (leaves := tailBox444KLeaves)
    tailBox444Kernel_checked (by simp [tailBox444KLeaves]) rfl

end Database
end CoveringCodes
