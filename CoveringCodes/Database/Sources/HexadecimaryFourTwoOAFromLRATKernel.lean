import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernelCommon
import CoveringCodes.Database.Sources.HexadecimaryFourTwoOAKernelData

/-!
# K16 OA(36,4,6,2) LRAT kernel proof

Kernel-provable unsatisfiability of the OA(36,4,6,2) CNF via
`LRATKernel.checkLeaves` + `decide`.

Data (CNF and LRAT steps as pre-parsed Lean literals) is in the external
certificate bundle; generate with:
  python3 scripts/gen_lrat_kernel_data.py \
    --cnf  data/K_16_4_2/lrat/oa_36_4_6_2.cnf \
    --lrat data/K_16_4_2/lrat/oa_36_4_6_2.lrat \
    --prefix oa36 \
    --output CoveringCodes/Database/Sources/HexadecimaryFourTwoOAKernelData.lean
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 0 in
set_option maxRecDepth 100000 in
theorem oa36Kernel_checked :
    LRATKernel.checkLeaves oa36KNVars oa36KCnf oa36KLeaves = true := by
  native_decide

theorem oa36Kernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATKernel.rawCnfToSat oa36KCnf) → False :=
  tailBoxKernel_unsat_of_checked (leaf := oa36KLeaf) (leaves := oa36KLeaves)
    oa36Kernel_checked (by simp [oa36KLeaves]) rfl

end Database
end CoveringCodes
