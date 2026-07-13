import CoveringCodes.Database.Sources.LRATNative

/-!
# K16 E01 Original LRAT Smoke

This file checks the original E01 profile CNF LRAT with the native checker.
The declarations are public so later semantic bridge modules can use the
resulting unsat theorem directly.
-/

namespace CoveringCodes
namespace Database

open LRATNative

def e01ProfileOriginalCnfText : String :=
  include_str "../../../data/K_16_4_2/lrat/profile_lower_e01_not_block_sequential.cnf"

def e01ProfileOriginalParsed : Prod Nat LRATNative.RawCnf :=
  (LRATNative.parseDimacsFull? e01ProfileOriginalCnfText).getD (0, #[])

abbrev e01ProfileOriginalNVars : Nat := e01ProfileOriginalParsed.1
abbrev e01ProfileOriginalCnf : LRATNative.RawCnf := e01ProfileOriginalParsed.2

def e01ProfileOriginalLRATText : String :=
  include_str "../../../data/K_16_4_2/lrat/profile_lower_e01_not_block_sequential.lrat"

def e01ProfileOriginalSteps : Array Mathlib.Tactic.Sat.LRATStep :=
  (LRATNative.parseLRAT? e01ProfileOriginalLRATText).getD #[]

def e01ProfileOriginalLeaf : LRATNative.ParsedCubeLRAT :=
  { cube := [], steps := e01ProfileOriginalSteps }

def e01ProfileOriginalLeaves : List LRATNative.ParsedCubeLRAT :=
  [e01ProfileOriginalLeaf]

set_option maxHeartbeats 2000000 in
theorem e01ProfileOriginal_checked :
    LRATNative.checkParsedCubeLRATs e01ProfileOriginalNVars e01ProfileOriginalCnf
      e01ProfileOriginalLeaves = true := by
  native_decide

theorem e01ProfileOriginal_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat e01ProfileOriginalCnf) →
        False := by
  intro v hv
  exact
    (LRATNative.checkParsedCubeLRATs_branch_unsat_of_mem
      (nvars := e01ProfileOriginalNVars) (cnf := e01ProfileOriginalCnf)
      (leaf := e01ProfileOriginalLeaf) (leaves := e01ProfileOriginalLeaves)
      e01ProfileOriginal_checked (by simp [e01ProfileOriginalLeaves])) v (by
        simpa [e01ProfileOriginalLeaf, LRATNative.rawCnfToSat_rawCnfAppendCube,
          LRATNative.rawCubeToSat] using hv)

end Database
end CoveringCodes
