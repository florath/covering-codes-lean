import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernelCommon
import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernel133Data

/-!
# K16 tail-box LRAT kernel proof for spread (1,3,3)

Kernel-provable unsatisfiability of the tail-box CNF for spread
(1,3,3) via `LRATKernel.checkLeaves` + `decide`.

Data (CNF and LRAT steps as pre-parsed Lean literals) is in the external
certificate bundle; generate with:
  python3 scripts/gen_lrat_kernel_data.py \
    --cnf  data/K_16_4_2/lrat/tail_box_profile_spread_1_3_3_fixlow.cnf \
    --lrat data/K_16_4_2/lrat/tail_box_profile_spread_1_3_3_fixlow.lrat \
    --prefix tailBox133 \
    --output CoveringCodes/Database/Sources/HexadecimaryFourTwoTailBoxLRATKernel133Data.lean
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
theorem tailBox133Kernel_checked :
    LRATKernel.checkLeaves tailBox133KNVars tailBox133KCnf tailBox133KLeaves = true := by
  native_decide

theorem tailBox133Kernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATKernel.rawCnfToSat tailBox133KCnf) → False :=
  tailBoxKernel_unsat_of_checked (leaf := tailBox133KLeaf) (leaves := tailBox133KLeaves)
    tailBox133Kernel_checked (by simp [tailBox133KLeaves]) rfl

end Database
end CoveringCodes
