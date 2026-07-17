import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernelCommon
import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernel333Data

/-!
# K16 tail-box LRAT kernel proof for spread (3,3,3)

Kernel-provable unsatisfiability of the tail-box CNF for spread
(3,3,3) via `LRATKernel.checkLeaves` + `decide`.

Data (CNF and LRAT steps as pre-parsed Lean literals) is in the external
certificate bundle; generate with:
  python3 scripts/gen_lrat_kernel_data.py \
    --cnf  data/K_16_4_2/lrat/tail_box_profile_spread_3_3_3_fixlow.cnf \
    --lrat data/K_16_4_2/lrat/tail_box_profile_spread_3_3_3_fixlow.lrat \
    --prefix tailBox333 \
    --output CoveringCodes/Database/Sources/HexadecimaryFourTwoTailBoxLRATKernel333Data.lean
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
theorem tailBox333Kernel_checked :
    LRATKernel.checkLeaves tailBox333KNVars tailBox333KCnf tailBox333KLeaves = true := by
  native_decide

theorem tailBox333Kernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATKernel.rawCnfToSat tailBox333KCnf) → False :=
  tailBoxKernel_unsat_of_checked (leaf := tailBox333KLeaf) (leaves := tailBox333KLeaves)
    tailBox333Kernel_checked (by simp [tailBox333KLeaves]) rfl

end Database
end CoveringCodes
