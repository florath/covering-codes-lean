import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernelCommon
import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernel144Data

/-!
# K16 tail-box LRAT kernel proof for spread (1,4,4)

Kernel-provable unsatisfiability of the tail-box CNF for spread
(1,4,4) via `LRATKernel.checkLeaves` + `decide`.

Data (CNF and LRAT steps as pre-parsed Lean literals) is in the external
certificate bundle; generate with:
  python3 scripts/gen_lrat_kernel_data.py \
    --cnf  data/K_16_4_2/lrat/tail_box_profile_spread_1_4_4_fixlow.cnf \
    --lrat data/K_16_4_2/lrat/tail_box_profile_spread_1_4_4_fixlow.lrat \
    --prefix tailBox144 \
    --output CoveringCodes/Database/Sources/HexadecimaryFourTwoTailBoxLRATKernel144Data.lean
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 0 in
theorem tailBox144Kernel_checked :
    LRATKernel.checkLeaves tailBox144KNVars tailBox144KCnf tailBox144KLeaves = true := by
  decide

theorem tailBox144Kernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATKernel.rawCnfToSat tailBox144KCnf) → False :=
  tailBoxKernel_unsat_of_checked (leaf := tailBox144KLeaf) (leaves := tailBox144KLeaves)
    tailBox144Kernel_checked (by simp [tailBox144KLeaves]) rfl

end Database
end CoveringCodes
