import CoveringCodes.Database.Sources.LRATKernelBridge
import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATKernelSmoke
import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxDirect

/-!
# Kernel-path bridge for the K16 4-fiber tail-box certificates (×17)

Each `tailBox{ijk}Kernel_unsat` (from `TailBoxLRATKernelSmoke`) proves
  `∀ v, Sat.Valuation.satisfies_fmla v (LRATKernel.rawCnfToSat tailBox{ijk}KCnf) → False`
via `native_decide` on pre-parsed Lean literals.

`TailBoxOriginalBridge` needs
  `∀ v, Sat.Valuation.satisfies_fmla v (LRATNative.rawCnfToSat TailBoxDirect.tailBox{ijk}Cnf) → False`

This file bridges the two via:
1. A `native_decide` equality proof `tailBox{ijk}KCnf = tailBox{ijk}Cnf.toList.map (·.toList)`
   (the data-file CNF matches the direct generator; fast to check natively).
2. `rawCnfToSat_eq_native` from `LRATKernelBridge` to rewrite the formula type.

**Dependency:** This file imports `TailBoxLRATKernelSmoke` which imports the 17
per-spread kernel smoke files.  Each smoke file imports a `*Data.lean` file that
must be generated before this module can be built.  Generate all 17 data files
with:
  python3 scripts/gen_lrat_kernel_data.py --batch-k16 \
    --cnf-dir  data/K_16_4_2/lrat/ \
    --lrat-dir data/K_16_4_2/lrat/ \
    --out-dir  CoveringCodes/Database/Sources/
or via `scripts/external-certificates.py materialize K_16_4_2-lrat`.
-/

namespace CoveringCodes
namespace Database

open LRATKernel LRATNative HexadecimaryFourTwoTailBoxDirect

-- ===== Spread (1,1,4) =====

set_option maxHeartbeats 2000000 in
theorem tailBox114KCnf_eq_direct :
    tailBox114KCnf = tailBox114Cnf.toList.map (·.toList) := by
  native_decide

theorem tailBox114DirectKernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (rawCnfToSat tailBox114Cnf) → False :=
  fun v hv => tailBox114Kernel_unsat v
    ((rawCnfToSat_eq_native _ _ tailBox114KCnf_eq_direct) ▸ hv)

-- ===== Spread (1,2,2) =====

set_option maxHeartbeats 2000000 in
theorem tailBox122KCnf_eq_direct :
    tailBox122KCnf = tailBox122Cnf.toList.map (·.toList) := by
  native_decide

theorem tailBox122DirectKernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (rawCnfToSat tailBox122Cnf) → False :=
  fun v hv => tailBox122Kernel_unsat v
    ((rawCnfToSat_eq_native _ _ tailBox122KCnf_eq_direct) ▸ hv)

-- ===== Spread (1,2,3) =====

set_option maxHeartbeats 2000000 in
theorem tailBox123KCnf_eq_direct :
    tailBox123KCnf = tailBox123Cnf.toList.map (·.toList) := by
  native_decide

theorem tailBox123DirectKernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (rawCnfToSat tailBox123Cnf) → False :=
  fun v hv => tailBox123Kernel_unsat v
    ((rawCnfToSat_eq_native _ _ tailBox123KCnf_eq_direct) ▸ hv)

-- ===== Spread (1,2,4) =====

set_option maxHeartbeats 2000000 in
theorem tailBox124KCnf_eq_direct :
    tailBox124KCnf = tailBox124Cnf.toList.map (·.toList) := by
  native_decide

theorem tailBox124DirectKernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (rawCnfToSat tailBox124Cnf) → False :=
  fun v hv => tailBox124Kernel_unsat v
    ((rawCnfToSat_eq_native _ _ tailBox124KCnf_eq_direct) ▸ hv)

-- ===== Spread (1,3,3) =====

set_option maxHeartbeats 2000000 in
theorem tailBox133KCnf_eq_direct :
    tailBox133KCnf = tailBox133Cnf.toList.map (·.toList) := by
  native_decide

theorem tailBox133DirectKernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (rawCnfToSat tailBox133Cnf) → False :=
  fun v hv => tailBox133Kernel_unsat v
    ((rawCnfToSat_eq_native _ _ tailBox133KCnf_eq_direct) ▸ hv)

-- ===== Spread (1,3,4) =====

set_option maxHeartbeats 2000000 in
theorem tailBox134KCnf_eq_direct :
    tailBox134KCnf = tailBox134Cnf.toList.map (·.toList) := by
  native_decide

theorem tailBox134DirectKernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (rawCnfToSat tailBox134Cnf) → False :=
  fun v hv => tailBox134Kernel_unsat v
    ((rawCnfToSat_eq_native _ _ tailBox134KCnf_eq_direct) ▸ hv)

-- ===== Spread (1,4,4) =====

set_option maxHeartbeats 2000000 in
theorem tailBox144KCnf_eq_direct :
    tailBox144KCnf = tailBox144Cnf.toList.map (·.toList) := by
  native_decide

theorem tailBox144DirectKernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (rawCnfToSat tailBox144Cnf) → False :=
  fun v hv => tailBox144Kernel_unsat v
    ((rawCnfToSat_eq_native _ _ tailBox144KCnf_eq_direct) ▸ hv)

-- ===== Spread (2,2,2) =====

set_option maxHeartbeats 2000000 in
theorem tailBox222KCnf_eq_direct :
    tailBox222KCnf = tailBox222Cnf.toList.map (·.toList) := by
  native_decide

theorem tailBox222DirectKernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (rawCnfToSat tailBox222Cnf) → False :=
  fun v hv => tailBox222Kernel_unsat v
    ((rawCnfToSat_eq_native _ _ tailBox222KCnf_eq_direct) ▸ hv)

-- ===== Spread (2,2,3) =====

set_option maxHeartbeats 2000000 in
theorem tailBox223KCnf_eq_direct :
    tailBox223KCnf = tailBox223Cnf.toList.map (·.toList) := by
  native_decide

theorem tailBox223DirectKernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (rawCnfToSat tailBox223Cnf) → False :=
  fun v hv => tailBox223Kernel_unsat v
    ((rawCnfToSat_eq_native _ _ tailBox223KCnf_eq_direct) ▸ hv)

-- ===== Spread (2,2,4) =====

set_option maxHeartbeats 2000000 in
theorem tailBox224KCnf_eq_direct :
    tailBox224KCnf = tailBox224Cnf.toList.map (·.toList) := by
  native_decide

theorem tailBox224DirectKernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (rawCnfToSat tailBox224Cnf) → False :=
  fun v hv => tailBox224Kernel_unsat v
    ((rawCnfToSat_eq_native _ _ tailBox224KCnf_eq_direct) ▸ hv)

-- ===== Spread (2,3,3) =====

set_option maxHeartbeats 2000000 in
theorem tailBox233KCnf_eq_direct :
    tailBox233KCnf = tailBox233Cnf.toList.map (·.toList) := by
  native_decide

theorem tailBox233DirectKernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (rawCnfToSat tailBox233Cnf) → False :=
  fun v hv => tailBox233Kernel_unsat v
    ((rawCnfToSat_eq_native _ _ tailBox233KCnf_eq_direct) ▸ hv)

-- ===== Spread (2,3,4) =====

set_option maxHeartbeats 2000000 in
theorem tailBox234KCnf_eq_direct :
    tailBox234KCnf = tailBox234Cnf.toList.map (·.toList) := by
  native_decide

theorem tailBox234DirectKernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (rawCnfToSat tailBox234Cnf) → False :=
  fun v hv => tailBox234Kernel_unsat v
    ((rawCnfToSat_eq_native _ _ tailBox234KCnf_eq_direct) ▸ hv)

-- ===== Spread (2,4,4) =====

set_option maxHeartbeats 2000000 in
theorem tailBox244KCnf_eq_direct :
    tailBox244KCnf = tailBox244Cnf.toList.map (·.toList) := by
  native_decide

theorem tailBox244DirectKernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (rawCnfToSat tailBox244Cnf) → False :=
  fun v hv => tailBox244Kernel_unsat v
    ((rawCnfToSat_eq_native _ _ tailBox244KCnf_eq_direct) ▸ hv)

-- ===== Spread (3,3,3) =====

set_option maxHeartbeats 2000000 in
theorem tailBox333KCnf_eq_direct :
    tailBox333KCnf = tailBox333Cnf.toList.map (·.toList) := by
  native_decide

theorem tailBox333DirectKernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (rawCnfToSat tailBox333Cnf) → False :=
  fun v hv => tailBox333Kernel_unsat v
    ((rawCnfToSat_eq_native _ _ tailBox333KCnf_eq_direct) ▸ hv)

-- ===== Spread (3,3,4) =====

set_option maxHeartbeats 2000000 in
theorem tailBox334KCnf_eq_direct :
    tailBox334KCnf = tailBox334Cnf.toList.map (·.toList) := by
  native_decide

theorem tailBox334DirectKernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (rawCnfToSat tailBox334Cnf) → False :=
  fun v hv => tailBox334Kernel_unsat v
    ((rawCnfToSat_eq_native _ _ tailBox334KCnf_eq_direct) ▸ hv)

-- ===== Spread (3,4,4) =====

set_option maxHeartbeats 2000000 in
theorem tailBox344KCnf_eq_direct :
    tailBox344KCnf = tailBox344Cnf.toList.map (·.toList) := by
  native_decide

theorem tailBox344DirectKernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (rawCnfToSat tailBox344Cnf) → False :=
  fun v hv => tailBox344Kernel_unsat v
    ((rawCnfToSat_eq_native _ _ tailBox344KCnf_eq_direct) ▸ hv)

-- ===== Spread (4,4,4) =====

set_option maxHeartbeats 2000000 in
theorem tailBox444KCnf_eq_direct :
    tailBox444KCnf = tailBox444Cnf.toList.map (·.toList) := by
  native_decide

theorem tailBox444DirectKernel_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (rawCnfToSat tailBox444Cnf) → False :=
  fun v hv => tailBox444Kernel_unsat v
    ((rawCnfToSat_eq_native _ _ tailBox444KCnf_eq_direct) ▸ hv)

end Database
end CoveringCodes
