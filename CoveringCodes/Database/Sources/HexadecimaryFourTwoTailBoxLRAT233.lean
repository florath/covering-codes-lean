import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATCommon

/-!
# K16 tail-box LRAT smoke test for spread (2,3,3)
-/

namespace CoveringCodes
namespace Database

open LRATNative

def tailBox233CnfText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_2_3_3_fixlow.cnf"
def tailBox233Parsed : Prod Nat LRATNative.RawCnf :=
  (LRATNative.parseDimacsFull? tailBox233CnfText).getD (0, #[])
abbrev tailBox233NVars : Nat := tailBox233Parsed.1
abbrev tailBox233Cnf : LRATNative.RawCnf := tailBox233Parsed.2
def tailBox233LRATText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_2_3_3_fixlow.lrat"
def tailBox233Steps : Array Mathlib.Tactic.Sat.LRATStep :=
  (LRATNative.parseLRAT? tailBox233LRATText).getD #[]
def tailBox233Leaf : LRATNative.ParsedCubeLRAT := { cube := [], steps := tailBox233Steps }
def tailBox233Leaves : List LRATNative.ParsedCubeLRAT := [tailBox233Leaf]
set_option maxHeartbeats 2000000 in
theorem tailBox233_checked :
    LRATNative.checkParsedCubeLRATs tailBox233NVars tailBox233Cnf tailBox233Leaves = true := by
  native_decide
theorem tailBox233_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATNative.rawCnfToSat tailBox233Cnf) → False :=
  tailBox_unsat_of_checked (leaf := tailBox233Leaf) (leaves := tailBox233Leaves)
    tailBox233_checked (by simp [tailBox233Leaves]) rfl

end Database
end CoveringCodes
