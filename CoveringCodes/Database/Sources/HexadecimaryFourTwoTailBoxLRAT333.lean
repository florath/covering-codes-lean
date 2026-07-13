import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATCommon

/-!
# K16 tail-box LRAT smoke test for spread (3,3,3)
-/

namespace CoveringCodes
namespace Database

open LRATNative

def tailBox333CnfText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_3_3_3_fixlow.cnf"
def tailBox333Parsed : Prod Nat LRATNative.RawCnf :=
  (LRATNative.parseDimacsFull? tailBox333CnfText).getD (0, #[])
abbrev tailBox333NVars : Nat := tailBox333Parsed.1
abbrev tailBox333Cnf : LRATNative.RawCnf := tailBox333Parsed.2
def tailBox333LRATText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_3_3_3_fixlow.lrat"
def tailBox333Steps : Array Mathlib.Tactic.Sat.LRATStep :=
  (LRATNative.parseLRAT? tailBox333LRATText).getD #[]
def tailBox333Leaf : LRATNative.ParsedCubeLRAT := { cube := [], steps := tailBox333Steps }
def tailBox333Leaves : List LRATNative.ParsedCubeLRAT := [tailBox333Leaf]
set_option maxHeartbeats 2000000 in
theorem tailBox333_checked :
    LRATNative.checkParsedCubeLRATs tailBox333NVars tailBox333Cnf tailBox333Leaves = true := by
  native_decide
theorem tailBox333_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATNative.rawCnfToSat tailBox333Cnf) → False :=
  tailBox_unsat_of_checked (leaf := tailBox333Leaf) (leaves := tailBox333Leaves)
    tailBox333_checked (by simp [tailBox333Leaves]) rfl

end Database
end CoveringCodes
