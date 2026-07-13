import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATCommon

/-!
# K16 tail-box LRAT smoke test for spread (2,3,4)
-/

namespace CoveringCodes
namespace Database

open LRATNative

def tailBox234CnfText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_2_3_4_fixlow.cnf"
def tailBox234Parsed : Prod Nat LRATNative.RawCnf :=
  (LRATNative.parseDimacsFull? tailBox234CnfText).getD (0, #[])
abbrev tailBox234NVars : Nat := tailBox234Parsed.1
abbrev tailBox234Cnf : LRATNative.RawCnf := tailBox234Parsed.2
def tailBox234LRATText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_2_3_4_fixlow.lrat"
def tailBox234Steps : Array Mathlib.Tactic.Sat.LRATStep :=
  (LRATNative.parseLRAT? tailBox234LRATText).getD #[]
def tailBox234Leaf : LRATNative.ParsedCubeLRAT := { cube := [], steps := tailBox234Steps }
def tailBox234Leaves : List LRATNative.ParsedCubeLRAT := [tailBox234Leaf]
set_option maxHeartbeats 2000000 in
theorem tailBox234_checked :
    LRATNative.checkParsedCubeLRATs tailBox234NVars tailBox234Cnf tailBox234Leaves = true := by
  native_decide
theorem tailBox234_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATNative.rawCnfToSat tailBox234Cnf) → False :=
  tailBox_unsat_of_checked (leaf := tailBox234Leaf) (leaves := tailBox234Leaves)
    tailBox234_checked (by simp [tailBox234Leaves]) rfl

end Database
end CoveringCodes
