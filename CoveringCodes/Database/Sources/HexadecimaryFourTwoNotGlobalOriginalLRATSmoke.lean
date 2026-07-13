import CoveringCodes.Database.Sources.LRATNative

/-!
# K16 Not-Global Original LRAT Smoke

This file checks the original common-block profile CNF LRAT with the native
checker.  The declarations are public so later semantic bridge modules can use
the resulting unsat theorem directly.
-/

namespace CoveringCodes
namespace Database

open LRATNative

def notGlobalProfileOriginalCnfText : String :=
  include_str "../../../data/K_16_4_2/lrat/profile_lower_not_global_block_sequential.cnf"

def notGlobalProfileOriginalParsed : Prod Nat LRATNative.RawCnf :=
  (LRATNative.parseDimacsFull? notGlobalProfileOriginalCnfText).getD (0, #[])

abbrev notGlobalProfileOriginalNVars : Nat := notGlobalProfileOriginalParsed.1
abbrev notGlobalProfileOriginalCnf : LRATNative.RawCnf := notGlobalProfileOriginalParsed.2

def notGlobalProfileOriginalLRATText : String :=
  include_str "../../../data/K_16_4_2/lrat/profile_lower_not_global_block_sequential.lrat"

def notGlobalProfileOriginalSteps : Array Mathlib.Tactic.Sat.LRATStep :=
  (LRATNative.parseLRAT? notGlobalProfileOriginalLRATText).getD #[]

def notGlobalProfileOriginalLeaf : LRATNative.ParsedCubeLRAT :=
  { cube := [], steps := notGlobalProfileOriginalSteps }

def notGlobalProfileOriginalLeaves : List LRATNative.ParsedCubeLRAT :=
  [notGlobalProfileOriginalLeaf]

set_option maxHeartbeats 2000000 in
theorem notGlobalProfileOriginal_checked :
    LRATNative.checkParsedCubeLRATs notGlobalProfileOriginalNVars notGlobalProfileOriginalCnf
      notGlobalProfileOriginalLeaves = true := by
  native_decide

theorem notGlobalProfileOriginal_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat notGlobalProfileOriginalCnf) →
        False := by
  intro v hv
  exact
    (LRATNative.checkParsedCubeLRATs_branch_unsat_of_mem
      (nvars := notGlobalProfileOriginalNVars) (cnf := notGlobalProfileOriginalCnf)
      (leaf := notGlobalProfileOriginalLeaf) (leaves := notGlobalProfileOriginalLeaves)
      notGlobalProfileOriginal_checked (by simp [notGlobalProfileOriginalLeaves])) v (by
        simpa [notGlobalProfileOriginalLeaf, LRATNative.rawCnfToSat_rawCnfAppendCube,
          LRATNative.rawCubeToSat] using hv)

end Database
end CoveringCodes
