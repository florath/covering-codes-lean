import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATCommon

/-!
# K16 tail-box LRAT smoke test for spread (2,2,2)
-/

namespace CoveringCodes
namespace Database

open LRATNative

def tailBox222CnfText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_2_2_2_fixlow.cnf"
def tailBox222Parsed : Prod Nat LRATNative.RawCnf :=
  (LRATNative.parseDimacsFull? tailBox222CnfText).getD (0, #[])
abbrev tailBox222NVars : Nat := tailBox222Parsed.1
abbrev tailBox222Cnf : LRATNative.RawCnf := tailBox222Parsed.2
def tailBox222LRATText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_2_2_2_fixlow.lrat"
def tailBox222Steps : Array Mathlib.Tactic.Sat.LRATStep :=
  (LRATNative.parseLRAT? tailBox222LRATText).getD #[]
def tailBox222Leaf : LRATNative.ParsedCubeLRAT := { cube := [], steps := tailBox222Steps }
def tailBox222Leaves : List LRATNative.ParsedCubeLRAT := [tailBox222Leaf]
set_option maxHeartbeats 2000000 in
theorem tailBox222_checked :
    LRATNative.checkParsedCubeLRATs tailBox222NVars tailBox222Cnf tailBox222Leaves = true := by
  native_decide
theorem tailBox222_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATNative.rawCnfToSat tailBox222Cnf) → False :=
  tailBox_unsat_of_checked (leaf := tailBox222Leaf) (leaves := tailBox222Leaves)
    tailBox222_checked (by simp [tailBox222Leaves]) rfl

end Database
end CoveringCodes
