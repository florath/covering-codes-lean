import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATCommon

/-!
# K16 tail-box LRAT smoke test for spread (4,4,4)
-/

namespace CoveringCodes
namespace Database

open LRATNative

def tailBox444CnfText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_4_4_4_fixlow.cnf"
def tailBox444Parsed : Prod Nat LRATNative.RawCnf :=
  (LRATNative.parseDimacsFull? tailBox444CnfText).getD (0, #[])
abbrev tailBox444NVars : Nat := tailBox444Parsed.1
abbrev tailBox444Cnf : LRATNative.RawCnf := tailBox444Parsed.2
def tailBox444LRATText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_4_4_4_fixlow.lrat"
def tailBox444Steps : Array Mathlib.Tactic.Sat.LRATStep :=
  (LRATNative.parseLRAT? tailBox444LRATText).getD #[]
def tailBox444Leaf : LRATNative.ParsedCubeLRAT := { cube := [], steps := tailBox444Steps }
def tailBox444Leaves : List LRATNative.ParsedCubeLRAT := [tailBox444Leaf]
set_option maxHeartbeats 2000000 in
theorem tailBox444_checked :
    LRATNative.checkParsedCubeLRATs tailBox444NVars tailBox444Cnf tailBox444Leaves = true := by
  native_decide
theorem tailBox444_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATNative.rawCnfToSat tailBox444Cnf) → False :=
  tailBox_unsat_of_checked (leaf := tailBox444Leaf) (leaves := tailBox444Leaves)
    tailBox444_checked (by simp [tailBox444Leaves]) rfl

end Database
end CoveringCodes
