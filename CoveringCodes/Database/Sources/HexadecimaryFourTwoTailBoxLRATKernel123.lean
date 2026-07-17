import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernelCommon
import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernel123Data

/-!
# K16 tail-box LRAT kernel proof for spread (1,2,3)

Kernel-provable unsatisfiability of the tail-box CNF for spread
(1,2,3) via `LRATKernel.checkLeaves` + `decide`.

Data (CNF and LRAT steps as pre-parsed Lean literals) is in the external
certificate bundle; generate with:
  python3 scripts/gen_lrat_kernel_data.py \
    --cnf  data/K_16_4_2/lrat/tail_box_profile_spread_1_2_3_fixlow.cnf \
    --lrat data/K_16_4_2/lrat/tail_box_profile_spread_1_2_3_fixlow.lrat \
    --prefix tailBox123 \
    --output CoveringCodes/Database/Sources/HexadecimaryFourTwoTailBoxLRATKernel123Data.lean
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
theorem tailBox123Kernel_checked :
    LRATKernel.checkLeaves tailBox123KNVars tailBox123KCnf tailBox123KLeaves = true := by
  native_decide

theorem tailBox123Kernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATKernel.rawCnfToSat tailBox123KCnf) → False :=
  tailBoxKernel_unsat_of_checked (leaf := tailBox123KLeaf) (leaves := tailBox123KLeaves)
    tailBox123Kernel_checked (by simp [tailBox123KLeaves]) rfl

end Database
end CoveringCodes
