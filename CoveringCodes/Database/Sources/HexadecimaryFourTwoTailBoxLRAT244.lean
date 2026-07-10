import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATCommon

/-!
# K16 tail-box LRAT smoke test for spread (2,4,4)
-/

namespace CoveringCodes
namespace Database

open LRATNative

def tailBox244CnfText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_2_4_4_fixlow.cnf"
def tailBox244Parsed : Prod Nat LRATNative.RawCnf :=
  (LRATNative.parseDimacsFull? tailBox244CnfText).getD (0, #[])
abbrev tailBox244NVars : Nat := tailBox244Parsed.1
abbrev tailBox244Cnf : LRATNative.RawCnf := tailBox244Parsed.2
def tailBox244LRATText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_2_4_4_fixlow.lrat"
def tailBox244Steps : Array Mathlib.Tactic.Sat.LRATStep :=
  (LRATNative.parseLRAT? tailBox244LRATText).getD #[]
def tailBox244Leaf : LRATNative.ParsedCubeLRAT := { cube := [], steps := tailBox244Steps }
def tailBox244Leaves : List LRATNative.ParsedCubeLRAT := [tailBox244Leaf]
set_option maxHeartbeats 2000000 in
theorem tailBox244_checked :
    LRATNative.checkParsedCubeLRATs tailBox244NVars tailBox244Cnf tailBox244Leaves = true := by
  native_decide
theorem tailBox244_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATNative.rawCnfToSat tailBox244Cnf) → False :=
  tailBox_unsat_of_checked (leaf := tailBox244Leaf) (leaves := tailBox244Leaves)
    tailBox244_checked (by simp [tailBox244Leaves]) rfl

end Database
end CoveringCodes
