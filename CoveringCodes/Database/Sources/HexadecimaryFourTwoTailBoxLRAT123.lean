import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATCommon

/-!
# K16 tail-box LRAT smoke test for spread (1,2,3)
-/

namespace CoveringCodes
namespace Database

open LRATNative

def tailBox123CnfText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_1_2_3_fixlow.cnf"
def tailBox123Parsed : Prod Nat LRATNative.RawCnf :=
  (LRATNative.parseDimacsFull? tailBox123CnfText).getD (0, #[])
abbrev tailBox123NVars : Nat := tailBox123Parsed.1
abbrev tailBox123Cnf : LRATNative.RawCnf := tailBox123Parsed.2
def tailBox123LRATText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_1_2_3_fixlow.lrat"
def tailBox123Steps : Array Mathlib.Tactic.Sat.LRATStep :=
  (LRATNative.parseLRAT? tailBox123LRATText).getD #[]
def tailBox123Leaf : LRATNative.ParsedCubeLRAT := { cube := [], steps := tailBox123Steps }
def tailBox123Leaves : List LRATNative.ParsedCubeLRAT := [tailBox123Leaf]
set_option maxHeartbeats 2000000 in
theorem tailBox123_checked :
    LRATNative.checkParsedCubeLRATs tailBox123NVars tailBox123Cnf tailBox123Leaves = true := by
  native_decide
theorem tailBox123_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATNative.rawCnfToSat tailBox123Cnf) → False :=
  tailBox_unsat_of_checked (leaf := tailBox123Leaf) (leaves := tailBox123Leaves)
    tailBox123_checked (by simp [tailBox123Leaves]) rfl

end Database
end CoveringCodes
