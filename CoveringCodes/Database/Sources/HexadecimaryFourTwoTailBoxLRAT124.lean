import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATCommon

/-!
# K16 tail-box LRAT smoke test for spread (1,2,4)
-/

namespace CoveringCodes
namespace Database

open LRATNative

def tailBox124CnfText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_1_2_4_fixlow.cnf"
def tailBox124Parsed : Prod Nat LRATNative.RawCnf :=
  (LRATNative.parseDimacsFull? tailBox124CnfText).getD (0, #[])
abbrev tailBox124NVars : Nat := tailBox124Parsed.1
abbrev tailBox124Cnf : LRATNative.RawCnf := tailBox124Parsed.2
def tailBox124LRATText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_1_2_4_fixlow.lrat"
def tailBox124Steps : Array Mathlib.Tactic.Sat.LRATStep :=
  (LRATNative.parseLRAT? tailBox124LRATText).getD #[]
def tailBox124Leaf : LRATNative.ParsedCubeLRAT := { cube := [], steps := tailBox124Steps }
def tailBox124Leaves : List LRATNative.ParsedCubeLRAT := [tailBox124Leaf]
set_option maxHeartbeats 2000000 in
theorem tailBox124_checked :
    LRATNative.checkParsedCubeLRATs tailBox124NVars tailBox124Cnf tailBox124Leaves = true := by
  native_decide
theorem tailBox124_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATNative.rawCnfToSat tailBox124Cnf) → False :=
  tailBox_unsat_of_checked (leaf := tailBox124Leaf) (leaves := tailBox124Leaves)
    tailBox124_checked (by simp [tailBox124Leaves]) rfl

end Database
end CoveringCodes
