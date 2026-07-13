import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATCommon

/-!
# K16 tail-box LRAT smoke test for spread (2,2,3)
-/

namespace CoveringCodes
namespace Database

open LRATNative

def tailBox223CnfText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_2_2_3_fixlow.cnf"
def tailBox223Parsed : Prod Nat LRATNative.RawCnf :=
  (LRATNative.parseDimacsFull? tailBox223CnfText).getD (0, #[])
abbrev tailBox223NVars : Nat := tailBox223Parsed.1
abbrev tailBox223Cnf : LRATNative.RawCnf := tailBox223Parsed.2
def tailBox223LRATText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_2_2_3_fixlow.lrat"
def tailBox223Steps : Array Mathlib.Tactic.Sat.LRATStep :=
  (LRATNative.parseLRAT? tailBox223LRATText).getD #[]
def tailBox223Leaf : LRATNative.ParsedCubeLRAT := { cube := [], steps := tailBox223Steps }
def tailBox223Leaves : List LRATNative.ParsedCubeLRAT := [tailBox223Leaf]
set_option maxHeartbeats 2000000 in
theorem tailBox223_checked :
    LRATNative.checkParsedCubeLRATs tailBox223NVars tailBox223Cnf tailBox223Leaves = true := by
  native_decide
theorem tailBox223_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATNative.rawCnfToSat tailBox223Cnf) → False :=
  tailBox_unsat_of_checked (leaf := tailBox223Leaf) (leaves := tailBox223Leaves)
    tailBox223_checked (by simp [tailBox223Leaves]) rfl

end Database
end CoveringCodes
