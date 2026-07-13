import CoveringCodes.Database.Sources.LRATNative

/-!
# K16 OA(36,4,6,2) LRAT Smoke

This file checks the small SAT certificate excluding a pair of orthogonal Latin
squares of order `6`, equivalently excluding `OA(36,4,6,2)`.
-/

namespace CoveringCodes
namespace Database

open LRATNative

def oa36OriginalCnfText : String :=
  include_str "../../../data/K_16_4_2/lrat/oa_36_4_6_2.cnf"

def oa36OriginalParsed : Prod Nat LRATNative.RawCnf :=
  (LRATNative.parseDimacsFull? oa36OriginalCnfText).getD (0, #[])

abbrev oa36OriginalNVars : Nat := oa36OriginalParsed.1
abbrev oa36OriginalCnf : LRATNative.RawCnf := oa36OriginalParsed.2

def oa36OriginalLRATText : String :=
  include_str "../../../data/K_16_4_2/lrat/oa_36_4_6_2.lrat"

def oa36OriginalSteps : Array Mathlib.Tactic.Sat.LRATStep :=
  (LRATNative.parseLRAT? oa36OriginalLRATText).getD #[]

def oa36OriginalLeaf : LRATNative.ParsedCubeLRAT :=
  { cube := [], steps := oa36OriginalSteps }

def oa36OriginalLeaves : List LRATNative.ParsedCubeLRAT :=
  [oa36OriginalLeaf]

set_option maxHeartbeats 2000000 in
theorem oa36Original_checked :
    LRATNative.checkParsedCubeLRATs oa36OriginalNVars oa36OriginalCnf
      oa36OriginalLeaves = true := by
  native_decide

theorem oa36Original_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATNative.rawCnfToSat oa36OriginalCnf) →
        False := by
  intro v hv
  exact
    (LRATNative.checkParsedCubeLRATs_branch_unsat_of_mem
      (nvars := oa36OriginalNVars) (cnf := oa36OriginalCnf)
      (leaf := oa36OriginalLeaf) (leaves := oa36OriginalLeaves)
      oa36Original_checked (by simp [oa36OriginalLeaves])) v (by
        simpa [oa36OriginalLeaf, LRATNative.rawCnfToSat_rawCnfAppendCube,
          LRATNative.rawCubeToSat] using hv)

end Database
end CoveringCodes
