import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATCommon

/-!
# K16 tail-box LRAT smoke test for spread (1,3,4)
-/

namespace CoveringCodes
namespace Database

open LRATNative

def tailBox134CnfText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_1_3_4_fixlow.cnf"
def tailBox134Parsed : Prod Nat LRATNative.RawCnf :=
  (LRATNative.parseDimacsFull? tailBox134CnfText).getD (0, #[])
abbrev tailBox134NVars : Nat := tailBox134Parsed.1
abbrev tailBox134Cnf : LRATNative.RawCnf := tailBox134Parsed.2
def tailBox134LRATText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_1_3_4_fixlow.lrat"
def tailBox134Steps : Array Mathlib.Tactic.Sat.LRATStep :=
  (LRATNative.parseLRAT? tailBox134LRATText).getD #[]
def tailBox134Leaf : LRATNative.ParsedCubeLRAT := { cube := [], steps := tailBox134Steps }
def tailBox134Leaves : List LRATNative.ParsedCubeLRAT := [tailBox134Leaf]
set_option maxHeartbeats 2000000 in
theorem tailBox134_checked :
    LRATNative.checkParsedCubeLRATs tailBox134NVars tailBox134Cnf tailBox134Leaves = true := by
  native_decide
theorem tailBox134_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATNative.rawCnfToSat tailBox134Cnf) → False :=
  tailBox_unsat_of_checked (leaf := tailBox134Leaf) (leaves := tailBox134Leaves)
    tailBox134_checked (by simp [tailBox134Leaves]) rfl

end Database
end CoveringCodes
