import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATCommon

/-!
# K16 tail-box LRAT smoke test for spread (2,2,4)
-/

namespace CoveringCodes
namespace Database

open LRATNative

def tailBox224CnfText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_2_2_4_fixlow.cnf"
def tailBox224Parsed : Prod Nat LRATNative.RawCnf :=
  (LRATNative.parseDimacsFull? tailBox224CnfText).getD (0, #[])
abbrev tailBox224NVars : Nat := tailBox224Parsed.1
abbrev tailBox224Cnf : LRATNative.RawCnf := tailBox224Parsed.2
def tailBox224LRATText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_2_2_4_fixlow.lrat"
def tailBox224Steps : Array Mathlib.Tactic.Sat.LRATStep :=
  (LRATNative.parseLRAT? tailBox224LRATText).getD #[]
def tailBox224Leaf : LRATNative.ParsedCubeLRAT := { cube := [], steps := tailBox224Steps }
def tailBox224Leaves : List LRATNative.ParsedCubeLRAT := [tailBox224Leaf]
set_option maxHeartbeats 2000000 in
theorem tailBox224_checked :
    LRATNative.checkParsedCubeLRATs tailBox224NVars tailBox224Cnf tailBox224Leaves = true := by
  native_decide
theorem tailBox224_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATNative.rawCnfToSat tailBox224Cnf) → False :=
  tailBox_unsat_of_checked (leaf := tailBox224Leaf) (leaves := tailBox224Leaves)
    tailBox224_checked (by simp [tailBox224Leaves]) rfl

end Database
end CoveringCodes
