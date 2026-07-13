import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATCommon

/-!
# K16 tail-box LRAT smoke test for spread (1,4,4)
-/

namespace CoveringCodes
namespace Database

open LRATNative

def tailBox144CnfText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_1_4_4_fixlow.cnf"
def tailBox144Parsed : Prod Nat LRATNative.RawCnf :=
  (LRATNative.parseDimacsFull? tailBox144CnfText).getD (0, #[])
abbrev tailBox144NVars : Nat := tailBox144Parsed.1
abbrev tailBox144Cnf : LRATNative.RawCnf := tailBox144Parsed.2
def tailBox144LRATText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_1_4_4_fixlow.lrat"
def tailBox144Steps : Array Mathlib.Tactic.Sat.LRATStep :=
  (LRATNative.parseLRAT? tailBox144LRATText).getD #[]
def tailBox144Leaf : LRATNative.ParsedCubeLRAT := { cube := [], steps := tailBox144Steps }
def tailBox144Leaves : List LRATNative.ParsedCubeLRAT := [tailBox144Leaf]
set_option maxHeartbeats 2000000 in
theorem tailBox144_checked :
    LRATNative.checkParsedCubeLRATs tailBox144NVars tailBox144Cnf tailBox144Leaves = true := by
  native_decide
theorem tailBox144_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATNative.rawCnfToSat tailBox144Cnf) → False :=
  tailBox_unsat_of_checked (leaf := tailBox144Leaf) (leaves := tailBox144Leaves)
    tailBox144_checked (by simp [tailBox144Leaves]) rfl

end Database
end CoveringCodes
