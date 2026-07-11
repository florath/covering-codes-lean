import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernelCommon
import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernel224Data

/-!
# K16 tail-box LRAT kernel proof for spread (2,2,4)

Kernel-provable unsatisfiability of the tail-box CNF for spread
(2,2,4) via `LRATKernel.checkLeaves` + `decide`.

Data (CNF and LRAT steps as pre-parsed Lean literals) is in the external
certificate bundle; generate with:
  python3 scripts/gen_lrat_kernel_data.py \
    --cnf  data/K_16_4_2/lrat/tail_box_profile_spread_2_2_4_fixlow.cnf \
    --lrat data/K_16_4_2/lrat/tail_box_profile_spread_2_2_4_fixlow.lrat \
    --prefix tailBox224 \
    --output CoveringCodes/Database/Sources/HexadecimaryFourTwoTailBoxLRATKernel224Data.lean
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 0 in
theorem tailBox224Kernel_checked :
    LRATKernel.checkLeaves tailBox224KNVars tailBox224KCnf tailBox224KLeaves = true := by
  decide

theorem tailBox224Kernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATKernel.rawCnfToSat tailBox224KCnf) → False :=
  tailBoxKernel_unsat_of_checked (leaf := tailBox224KLeaf) (leaves := tailBox224KLeaves)
    tailBox224Kernel_checked (by simp [tailBox224KLeaves]) rfl

end Database
end CoveringCodes
