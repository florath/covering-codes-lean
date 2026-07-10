import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATCommon

/-!
# K16 tail-box LRAT smoke test for spread (1,2,2)
-/

namespace CoveringCodes
namespace Database

open LRATNative

def tailBox122CnfText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_1_2_2_fixlow.cnf"
def tailBox122Parsed : Prod Nat LRATNative.RawCnf :=
  (LRATNative.parseDimacsFull? tailBox122CnfText).getD (0, #[])
abbrev tailBox122NVars : Nat := tailBox122Parsed.1
abbrev tailBox122Cnf : LRATNative.RawCnf := tailBox122Parsed.2
def tailBox122LRATText : String :=
  include_str "../../../data/K_16_4_2/lrat/tail_box_profile_spread_1_2_2_fixlow.lrat"
def tailBox122Steps : Array Mathlib.Tactic.Sat.LRATStep :=
  (LRATNative.parseLRAT? tailBox122LRATText).getD #[]
def tailBox122Leaf : LRATNative.ParsedCubeLRAT := { cube := [], steps := tailBox122Steps }
def tailBox122Leaves : List LRATNative.ParsedCubeLRAT := [tailBox122Leaf]
set_option maxHeartbeats 2000000 in
theorem tailBox122_checked :
    LRATNative.checkParsedCubeLRATs tailBox122NVars tailBox122Cnf tailBox122Leaves = true := by
  native_decide
theorem tailBox122_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v (LRATNative.rawCnfToSat tailBox122Cnf) → False :=
  tailBox_unsat_of_checked (leaf := tailBox122Leaf) (leaves := tailBox122Leaves)
    tailBox122_checked (by simp [tailBox122Leaves]) rfl

end Database
end CoveringCodes
