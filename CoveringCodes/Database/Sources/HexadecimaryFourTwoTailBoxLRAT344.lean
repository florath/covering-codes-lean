import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATCommon

/-!
# K16 tail-box LRAT smoke test for spread (3,4,4)
-/

namespace CoveringCodes
namespace Database

open LRATNative

def tailBox344CnfText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_3_4_4_fixlow.cnf"
def tailBox344Parsed : Prod Nat LRATNative.RawCnf :=
  (LRATNative.parseDimacsFull? tailBox344CnfText).getD (0, #[])
abbrev tailBox344NVars : Nat := tailBox344Parsed.1
abbrev tailBox344Cnf : LRATNative.RawCnf := tailBox344Parsed.2
def tailBox344LRATText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_3_4_4_fixlow.lrat"
def tailBox344Steps : Array Mathlib.Tactic.Sat.LRATStep :=
  (LRATNative.parseLRAT? tailBox344LRATText).getD #[]
def tailBox344Leaf : LRATNative.ParsedCubeLRAT := { cube := [], steps := tailBox344Steps }
def tailBox344Leaves : List LRATNative.ParsedCubeLRAT := [tailBox344Leaf]
set_option maxHeartbeats 2000000 in
theorem tailBox344_checked :
    LRATNative.checkParsedCubeLRATs tailBox344NVars tailBox344Cnf tailBox344Leaves = true := by
  native_decide
theorem tailBox344_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATNative.rawCnfToSat tailBox344Cnf) → False :=
  tailBox_unsat_of_checked (leaf := tailBox344Leaf) (leaves := tailBox344Leaves)
    tailBox344_checked (by simp [tailBox344Leaves]) rfl

end Database
end CoveringCodes
