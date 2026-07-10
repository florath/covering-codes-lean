import CoveringCodes.Database.Sources.LRATNative

/-!
# K16 E01 Core LRAT Smoke

This file checks the monolithic E01 extracted-core LRAT with the native checker.
It is a coarse alternative to replaying all split E01 leaves in Lean.
-/

namespace CoveringCodes
namespace Database

open LRATNative

private def e01CoreCnfText : String :=
  include_str "../../../data/K_16_4_2/lrat/core/profile_lower_e01_not_block_sequential_core.cnf"

private def e01CoreParsed : Prod Nat LRATNative.RawCnf :=
  (LRATNative.parseDimacsFull? e01CoreCnfText).getD (0, #[])

private abbrev e01CoreNVars : Nat := e01CoreParsed.1
private abbrev e01CoreCnf : LRATNative.RawCnf := e01CoreParsed.2

private def e01CoreLRATText : String :=
  include_str "../../../data/K_16_4_2/lrat/core/profile_lower_e01_not_block_sequential_core_reindexed.lrat"

private def e01CoreSteps : Array Mathlib.Tactic.Sat.LRATStep :=
  (LRATNative.parseLRAT? e01CoreLRATText).getD #[]

private def e01CoreLeaf : LRATNative.ParsedCubeLRAT :=
  { cube := [], steps := e01CoreSteps }

private def e01CoreLeaves : List LRATNative.ParsedCubeLRAT :=
  [e01CoreLeaf]

set_option maxHeartbeats 2000000 in
theorem e01Core_checked :
    LRATNative.checkParsedCubeLRATs e01CoreNVars e01CoreCnf e01CoreLeaves = true := by
  native_decide

theorem e01Core_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATNative.rawCnfToSat e01CoreCnf) →
        False := by
  intro v hv
  exact
    (LRATNative.checkParsedCubeLRATs_branch_unsat_of_mem
      (nvars := e01CoreNVars) (cnf := e01CoreCnf)
      (leaf := e01CoreLeaf) (leaves := e01CoreLeaves)
      e01Core_checked (by simp [e01CoreLeaves])) v (by
        simpa [e01CoreLeaf, LRATNative.rawCnfToSat_rawCnfAppendCube,
          LRATNative.rawCubeToSat] using hv)

end Database
end CoveringCodes
