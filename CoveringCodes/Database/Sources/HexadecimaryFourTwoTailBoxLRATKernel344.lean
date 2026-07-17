import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernelCommon
import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernel344Data

/-!
# K16 tail-box LRAT kernel proof for spread (3,4,4)

Kernel-provable unsatisfiability of the tail-box CNF for spread
(3,4,4) via `LRATKernel.checkLeaves` + `decide`.

Data (CNF and LRAT steps as pre-parsed Lean literals) is in the external
certificate bundle; generate with:
  python3 scripts/gen_lrat_kernel_data.py \
    --cnf  data/K_16_4_2/lrat/tail_box_profile_spread_3_4_4_fixlow.cnf \
    --lrat data/K_16_4_2/lrat/tail_box_profile_spread_3_4_4_fixlow.lrat \
    --prefix tailBox344 \
    --output CoveringCodes/Database/Sources/HexadecimaryFourTwoTailBoxLRATKernel344Data.lean
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
theorem tailBox344Kernel_checked :
    LRATKernel.checkLeaves tailBox344KNVars tailBox344KCnf tailBox344KLeaves = true := by
  native_decide

theorem tailBox344Kernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATKernel.rawCnfToSat tailBox344KCnf) → False :=
  tailBoxKernel_unsat_of_checked (leaf := tailBox344KLeaf) (leaves := tailBox344KLeaves)
    tailBox344Kernel_checked (by simp [tailBox344KLeaves]) rfl

end Database
end CoveringCodes
