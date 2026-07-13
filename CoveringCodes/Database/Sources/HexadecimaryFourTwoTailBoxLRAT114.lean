import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATCommon

/-!
# K16 tail-box LRAT smoke test for spread (1,1,4)
-/

namespace CoveringCodes
namespace Database

open LRATNative

def tailBox114CnfText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_1_1_4_fixlow.cnf"
def tailBox114Parsed : Prod Nat LRATNative.RawCnf :=
  (LRATNative.parseDimacsFull? tailBox114CnfText).getD (0, #[])
abbrev tailBox114NVars : Nat := tailBox114Parsed.1
abbrev tailBox114Cnf : LRATNative.RawCnf := tailBox114Parsed.2
def tailBox114LRATText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_1_1_4_fixlow.lrat"
def tailBox114Steps : Array Mathlib.Tactic.Sat.LRATStep :=
  (LRATNative.parseLRAT? tailBox114LRATText).getD #[]
def tailBox114Leaf : LRATNative.ParsedCubeLRAT := { cube := [], steps := tailBox114Steps }
def tailBox114Leaves : List LRATNative.ParsedCubeLRAT := [tailBox114Leaf]
set_option maxHeartbeats 2000000 in
theorem tailBox114_checked :
    LRATNative.checkParsedCubeLRATs tailBox114NVars tailBox114Cnf tailBox114Leaves = true := by
  native_decide
theorem tailBox114_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATNative.rawCnfToSat tailBox114Cnf) → False :=
  tailBox_unsat_of_checked (leaf := tailBox114Leaf) (leaves := tailBox114Leaves)
    tailBox114_checked (by simp [tailBox114Leaves]) rfl

end Database
end CoveringCodes
