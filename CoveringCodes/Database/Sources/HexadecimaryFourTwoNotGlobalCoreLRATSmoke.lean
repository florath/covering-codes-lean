import CoveringCodes.Database.Sources.LRATNative

/-!
# K16 Not-Global Core LRAT Smoke

This file checks the monolithic not-global extracted-core LRAT with the native
checker.  It is the coarse alternative to replaying all split not-global leaves
in Lean.
-/

namespace CoveringCodes
namespace Database

open LRATNative

private def notGlobalCoreCnfText : String :=
  include_str "../../../data/K_16_4_2/lrat/core/profile_lower_not_global_block_sequential_core.cnf"

private def notGlobalCoreParsed : Prod Nat LRATNative.RawCnf :=
  (LRATNative.parseDimacsFull? notGlobalCoreCnfText).getD (0, #[])

private abbrev notGlobalCoreNVars : Nat := notGlobalCoreParsed.1
private abbrev notGlobalCoreCnf : LRATNative.RawCnf := notGlobalCoreParsed.2

private def notGlobalCoreLRATText : String :=
  include_str "../../../data/K_16_4_2/lrat/core/profile_lower_not_global_block_sequential_core_reindexed.lrat"

private def notGlobalCoreSteps : Array Mathlib.Tactic.Sat.LRATStep :=
  (LRATNative.parseLRAT? notGlobalCoreLRATText).getD #[]

private def notGlobalCoreLeaf : LRATNative.ParsedCubeLRAT :=
  { cube := [], steps := notGlobalCoreSteps }

private def notGlobalCoreLeaves : List LRATNative.ParsedCubeLRAT :=
  [notGlobalCoreLeaf]

set_option maxHeartbeats 2000000 in
theorem notGlobalCore_checked :
    LRATNative.checkParsedCubeLRATs notGlobalCoreNVars notGlobalCoreCnf
      notGlobalCoreLeaves = true := by
  native_decide

theorem notGlobalCore_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATNative.rawCnfToSat notGlobalCoreCnf) →
        False := by
  intro v hv
  exact
    (LRATNative.checkParsedCubeLRATs_branch_unsat_of_mem
      (nvars := notGlobalCoreNVars) (cnf := notGlobalCoreCnf)
      (leaf := notGlobalCoreLeaf) (leaves := notGlobalCoreLeaves)
      notGlobalCore_checked (by simp [notGlobalCoreLeaves])) v (by
        simpa [notGlobalCoreLeaf, LRATNative.rawCnfToSat_rawCnfAppendCube,
          LRATNative.rawCubeToSat] using hv)

end Database
end CoveringCodes
