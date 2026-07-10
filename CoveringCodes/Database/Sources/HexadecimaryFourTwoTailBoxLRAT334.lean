import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATCommon

/-!
# K16 tail-box LRAT smoke test for spread (3,3,4)
-/

namespace CoveringCodes
namespace Database

open LRATNative

def tailBox334CnfText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_3_3_4_fixlow.cnf"
def tailBox334Parsed : Prod Nat LRATNative.RawCnf :=
  (LRATNative.parseDimacsFull? tailBox334CnfText).getD (0, #[])
abbrev tailBox334NVars : Nat := tailBox334Parsed.1
abbrev tailBox334Cnf : LRATNative.RawCnf := tailBox334Parsed.2
def tailBox334LRATText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_3_3_4_fixlow.lrat"
def tailBox334Steps : Array Mathlib.Tactic.Sat.LRATStep :=
  (LRATNative.parseLRAT? tailBox334LRATText).getD #[]
def tailBox334Leaf : LRATNative.ParsedCubeLRAT := { cube := [], steps := tailBox334Steps }
def tailBox334Leaves : List LRATNative.ParsedCubeLRAT := [tailBox334Leaf]
set_option maxHeartbeats 2000000 in
theorem tailBox334_checked :
    LRATNative.checkParsedCubeLRATs tailBox334NVars tailBox334Cnf tailBox334Leaves = true := by
  native_decide
theorem tailBox334_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATNative.rawCnfToSat tailBox334Cnf) → False :=
  tailBox_unsat_of_checked (leaf := tailBox334Leaf) (leaves := tailBox334Leaves)
    tailBox334_checked (by simp [tailBox334Leaves]) rfl

end Database
end CoveringCodes
