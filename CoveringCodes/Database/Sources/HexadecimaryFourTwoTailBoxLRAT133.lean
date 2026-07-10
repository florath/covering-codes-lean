import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATCommon

/-!
# K16 tail-box LRAT smoke test for spread (1,3,3)
-/

namespace CoveringCodes
namespace Database

open LRATNative

def tailBox133CnfText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_1_3_3_fixlow.cnf"
def tailBox133Parsed : Prod Nat LRATNative.RawCnf :=
  (LRATNative.parseDimacsFull? tailBox133CnfText).getD (0, #[])
abbrev tailBox133NVars : Nat := tailBox133Parsed.1
abbrev tailBox133Cnf : LRATNative.RawCnf := tailBox133Parsed.2
def tailBox133LRATText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_1_3_3_fixlow.lrat"
def tailBox133Steps : Array Mathlib.Tactic.Sat.LRATStep :=
  (LRATNative.parseLRAT? tailBox133LRATText).getD #[]
def tailBox133Leaf : LRATNative.ParsedCubeLRAT := { cube := [], steps := tailBox133Steps }
def tailBox133Leaves : List LRATNative.ParsedCubeLRAT := [tailBox133Leaf]
set_option maxHeartbeats 2000000 in
theorem tailBox133_checked :
    LRATNative.checkParsedCubeLRATs tailBox133NVars tailBox133Cnf tailBox133Leaves = true := by
  native_decide
theorem tailBox133_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATNative.rawCnfToSat tailBox133Cnf) → False :=
  tailBox_unsat_of_checked (leaf := tailBox133Leaf) (leaves := tailBox133Leaves)
    tailBox133_checked (by simp [tailBox133Leaves]) rfl

end Database
end CoveringCodes
