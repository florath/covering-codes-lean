import CoveringCodes.Database.Sources.LRATNative

/-!
# K16 Support-Defect Original LRAT Smoke

This file checks the support-defect profile CNF LRAT with the native checker.
The certificate excludes the branch where, after sorting threshold profiles,
coordinate `0` has at most five positive-excess symbols.
-/

namespace CoveringCodes
namespace Database

open LRATNative

def supportProfileOriginalCnfText : String :=
  include_str "../../../data/K_16_4_2/lrat/present_profile_support_le5_sorted_coord0_sequential.cnf"

def supportProfileOriginalParsed : Prod Nat LRATNative.RawCnf :=
  (LRATNative.parseDimacsFull? supportProfileOriginalCnfText).getD (0, #[])

abbrev supportProfileOriginalNVars : Nat := supportProfileOriginalParsed.1
abbrev supportProfileOriginalCnf : LRATNative.RawCnf := supportProfileOriginalParsed.2

def supportProfileOriginalLRATText : String :=
  include_str "../../../data/K_16_4_2/lrat/present_profile_support_le5_sorted_coord0_sequential.lrat"

def supportProfileOriginalSteps : Array Mathlib.Tactic.Sat.LRATStep :=
  (LRATNative.parseLRAT? supportProfileOriginalLRATText).getD #[]

def supportProfileOriginalLeaf : LRATNative.ParsedCubeLRAT :=
  { cube := [], steps := supportProfileOriginalSteps }

def supportProfileOriginalLeaves : List LRATNative.ParsedCubeLRAT :=
  [supportProfileOriginalLeaf]

set_option maxHeartbeats 2000000 in
theorem supportProfileOriginal_checked :
    LRATNative.checkParsedCubeLRATs supportProfileOriginalNVars supportProfileOriginalCnf
      supportProfileOriginalLeaves = true := by
  native_decide

theorem supportProfileOriginal_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat supportProfileOriginalCnf) →
        False := by
  intro v hv
  exact
    (LRATNative.checkParsedCubeLRATs_branch_unsat_of_mem
      (nvars := supportProfileOriginalNVars) (cnf := supportProfileOriginalCnf)
      (leaf := supportProfileOriginalLeaf) (leaves := supportProfileOriginalLeaves)
      supportProfileOriginal_checked (by simp [supportProfileOriginalLeaves])) v (by
        simpa [supportProfileOriginalLeaf, LRATNative.rawCnfToSat_rawCnfAppendCube,
          LRATNative.rawCubeToSat] using hv)

end Database
end CoveringCodes
