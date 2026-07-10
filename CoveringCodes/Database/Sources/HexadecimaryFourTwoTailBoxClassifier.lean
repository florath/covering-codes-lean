import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxOriginalBridge
import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxSemantics
import Mathlib.Tactic

/-!
# LRAT consequences for the K16 4-fiber tail-box classifier

Each theorem rules out a semantic `TailBoxProfile` for one normalized deleted
4-fiber spread.  The semantic bridge supplies a satisfying valuation for the
direct generated CNF, while the imported LRAT theorem proves that CNF unsat.
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 2000000

def TailBoxDirect.canonicalFourFiberSpreads : List (Nat × Nat × Nat) :=
  [HexadecimaryFourTwoTailBoxDirect.spread114,
    HexadecimaryFourTwoTailBoxDirect.spread122,
    HexadecimaryFourTwoTailBoxDirect.spread123,
    HexadecimaryFourTwoTailBoxDirect.spread124,
    HexadecimaryFourTwoTailBoxDirect.spread133,
    HexadecimaryFourTwoTailBoxDirect.spread134,
    HexadecimaryFourTwoTailBoxDirect.spread144,
    HexadecimaryFourTwoTailBoxDirect.spread222,
    HexadecimaryFourTwoTailBoxDirect.spread223,
    HexadecimaryFourTwoTailBoxDirect.spread224,
    HexadecimaryFourTwoTailBoxDirect.spread233,
    HexadecimaryFourTwoTailBoxDirect.spread234,
    HexadecimaryFourTwoTailBoxDirect.spread244,
    HexadecimaryFourTwoTailBoxDirect.spread333,
    HexadecimaryFourTwoTailBoxDirect.spread334,
    HexadecimaryFourTwoTailBoxDirect.spread344,
    HexadecimaryFourTwoTailBoxDirect.spread444]

def TailBoxProfile.swap01 {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets) :
    TailBoxProfile (sizes.2.1, sizes.1, sizes.2.2)
      (budgets.2.1, budgets.1, budgets.2.2) := by
  refine
    { p01 := fun a b => P.p01 b a
      p02 := fun a c => P.p12 a c
      p12 := fun b c => P.p02 b c
      cap := fun coord symbol =>
        match coord with
        | 0 => P.cap 1 symbol
        | 1 => P.cap 0 symbol
        | _ => P.cap 2 symbol
      size_pos := ?_
      cover := ?_
      degreeBound := ?_
      baselineBound := ?_
      budgetBound := ?_
      fixedLow := ?_ }
  · intro coord hcoord
    interval_cases coord
    · simpa [TailBoxDirect.get3] using P.size_pos 1 (by decide)
    · simpa [TailBoxDirect.get3] using P.size_pos 0 (by decide)
    · simpa [TailBoxDirect.get3] using P.size_pos 2 (by decide)
  · intro a b c ha hb hc
    have hcover := P.cover b a c
      (by simpa [TailBoxDirect.get3] using hb)
      (by simpa [TailBoxDirect.get3] using ha)
      (by simpa [TailBoxDirect.get3] using hc)
    rcases hcover with h01 | h02 | h12
    · exact Or.inl h01
    · exact Or.inr (Or.inr h02)
    · exact Or.inr (Or.inl h12)
  · intro coord symbol other hcoord hsymbol hother hne
    interval_cases coord <;> interval_cases other <;> try contradiction
    · simpa [TailBoxDirect.get3] using
        P.degreeBound 1 symbol 0 (by decide)
          (by simpa [TailBoxDirect.get3] using hsymbol)
          (by decide) (by decide)
    · simpa [TailBoxDirect.get3] using
        P.degreeBound 1 symbol 2 (by decide)
          (by simpa [TailBoxDirect.get3] using hsymbol)
          (by decide) (by decide)
    · simpa [TailBoxDirect.get3] using
        P.degreeBound 0 symbol 1 (by decide)
          (by simpa [TailBoxDirect.get3] using hsymbol)
          (by decide) (by decide)
    · simpa [TailBoxDirect.get3] using
        P.degreeBound 0 symbol 2 (by decide)
          (by simpa [TailBoxDirect.get3] using hsymbol)
          (by decide) (by decide)
    · simpa [TailBoxDirect.get3] using
        P.degreeBound 2 symbol 1 (by decide)
          (by simpa [TailBoxDirect.get3] using hsymbol)
          (by decide) (by decide)
    · simpa [TailBoxDirect.get3] using
        P.degreeBound 2 symbol 0 (by decide)
          (by simpa [TailBoxDirect.get3] using hsymbol)
          (by decide) (by decide)
  · intro coord symbol hcoord hsymbol
    interval_cases coord
    · simpa [TailBoxDirect.get3] using
        P.baselineBound 1 symbol (by decide)
          (by simpa [TailBoxDirect.get3] using hsymbol)
    · simpa [TailBoxDirect.get3] using
        P.baselineBound 0 symbol (by decide)
          (by simpa [TailBoxDirect.get3] using hsymbol)
    · simpa [TailBoxDirect.get3] using
        P.baselineBound 2 symbol (by decide)
          (by simpa [TailBoxDirect.get3] using hsymbol)
  · intro coord hcoord
    interval_cases coord
    · simpa [TailBoxDirect.get3] using P.budgetBound 1 (by decide)
    · simpa [TailBoxDirect.get3] using P.budgetBound 0 (by decide)
    · simpa [TailBoxDirect.get3] using P.budgetBound 2 (by decide)
  · intro coord hcoord
    interval_cases coord
    · simpa using P.fixedLow 1 (by decide)
    · simpa using P.fixedLow 0 (by decide)
    · simpa using P.fixedLow 2 (by decide)

def TailBoxProfile.swap12 {sizes budgets : Nat × Nat × Nat}
    (P : TailBoxProfile sizes budgets) :
    TailBoxProfile (sizes.1, sizes.2.2, sizes.2.1)
      (budgets.1, budgets.2.2, budgets.2.1) := by
  refine
    { p01 := fun a b => P.p02 a b
      p02 := fun a c => P.p01 a c
      p12 := fun b c => P.p12 c b
      cap := fun coord symbol =>
        match coord with
        | 0 => P.cap 0 symbol
        | 1 => P.cap 2 symbol
        | _ => P.cap 1 symbol
      size_pos := ?_
      cover := ?_
      degreeBound := ?_
      baselineBound := ?_
      budgetBound := ?_
      fixedLow := ?_ }
  · intro coord hcoord
    interval_cases coord
    · simpa [TailBoxDirect.get3] using P.size_pos 0 (by decide)
    · simpa [TailBoxDirect.get3] using P.size_pos 2 (by decide)
    · simpa [TailBoxDirect.get3] using P.size_pos 1 (by decide)
  · intro a b c ha hb hc
    have hcover := P.cover a c b
      (by simpa [TailBoxDirect.get3] using ha)
      (by simpa [TailBoxDirect.get3] using hc)
      (by simpa [TailBoxDirect.get3] using hb)
    rcases hcover with h01 | h02 | h12
    · exact Or.inr (Or.inl h01)
    · exact Or.inl h02
    · exact Or.inr (Or.inr h12)
  · intro coord symbol other hcoord hsymbol hother hne
    interval_cases coord <;> interval_cases other <;> try contradiction
    · simpa [TailBoxDirect.get3] using
        P.degreeBound 0 symbol 2 (by decide)
          (by simpa [TailBoxDirect.get3] using hsymbol)
          (by decide) (by decide)
    · simpa [TailBoxDirect.get3] using
        P.degreeBound 0 symbol 1 (by decide)
          (by simpa [TailBoxDirect.get3] using hsymbol)
          (by decide) (by decide)
    · simpa [TailBoxDirect.get3] using
        P.degreeBound 2 symbol 0 (by decide)
          (by simpa [TailBoxDirect.get3] using hsymbol)
          (by decide) (by decide)
    · simpa [TailBoxDirect.get3] using
        P.degreeBound 2 symbol 1 (by decide)
          (by simpa [TailBoxDirect.get3] using hsymbol)
          (by decide) (by decide)
    · simpa [TailBoxDirect.get3] using
        P.degreeBound 1 symbol 0 (by decide)
          (by simpa [TailBoxDirect.get3] using hsymbol)
          (by decide) (by decide)
    · simpa [TailBoxDirect.get3] using
        P.degreeBound 1 symbol 2 (by decide)
          (by simpa [TailBoxDirect.get3] using hsymbol)
          (by decide) (by decide)
  · intro coord symbol hcoord hsymbol
    interval_cases coord
    · simpa [TailBoxDirect.get3] using
        P.baselineBound 0 symbol (by decide)
          (by simpa [TailBoxDirect.get3] using hsymbol)
    · simpa [TailBoxDirect.get3] using
        P.baselineBound 2 symbol (by decide)
          (by simpa [TailBoxDirect.get3] using hsymbol)
    · simpa [TailBoxDirect.get3] using
        P.baselineBound 1 symbol (by decide)
          (by simpa [TailBoxDirect.get3] using hsymbol)
  · intro coord hcoord
    interval_cases coord
    · simpa [TailBoxDirect.get3] using P.budgetBound 0 (by decide)
    · simpa [TailBoxDirect.get3] using P.budgetBound 2 (by decide)
    · simpa [TailBoxDirect.get3] using P.budgetBound 1 (by decide)
  · intro coord hcoord
    interval_cases coord
    · simpa using P.fixedLow 0 (by decide)
    · simpa using P.fixedLow 2 (by decide)
    · simpa using P.fixedLow 1 (by decide)

theorem TailBoxProfile.no_tailBox114_of_lrat
    (P : TailBoxProfile
      (TailBoxDirect.spreadToSizes HexadecimaryFourTwoTailBoxDirect.spread114)
      (TailBoxDirect.spreadToBudgets HexadecimaryFourTwoTailBoxDirect.spread114)) :
    False := by
  exact tailBox114Direct_unsat P.valuation (by
    simpa [HexadecimaryFourTwoTailBoxDirect.tailBox114Cnf] using
      P.valuation_satisfies_tailBoxCnf_of_profile_budget
        (spread := HexadecimaryFourTwoTailBoxDirect.spread114)
        (by native_decide) (by native_decide))

theorem TailBoxProfile.no_tailBox122_of_lrat
    (P : TailBoxProfile
      (TailBoxDirect.spreadToSizes HexadecimaryFourTwoTailBoxDirect.spread122)
      (TailBoxDirect.spreadToBudgets HexadecimaryFourTwoTailBoxDirect.spread122)) :
    False := by
  exact tailBox122Direct_unsat P.valuation (by
    simpa [HexadecimaryFourTwoTailBoxDirect.tailBox122Cnf] using
      P.valuation_satisfies_tailBoxCnf_of_profile_budget
        (spread := HexadecimaryFourTwoTailBoxDirect.spread122)
        (by native_decide) (by native_decide))

theorem TailBoxProfile.no_tailBox123_of_lrat
    (P : TailBoxProfile
      (TailBoxDirect.spreadToSizes HexadecimaryFourTwoTailBoxDirect.spread123)
      (TailBoxDirect.spreadToBudgets HexadecimaryFourTwoTailBoxDirect.spread123)) :
    False := by
  exact tailBox123Direct_unsat P.valuation (by
    simpa [HexadecimaryFourTwoTailBoxDirect.tailBox123Cnf] using
      P.valuation_satisfies_tailBoxCnf_of_profile_budget
        (spread := HexadecimaryFourTwoTailBoxDirect.spread123)
        (by native_decide) (by native_decide))

theorem TailBoxProfile.no_tailBox124_of_lrat
    (P : TailBoxProfile
      (TailBoxDirect.spreadToSizes HexadecimaryFourTwoTailBoxDirect.spread124)
      (TailBoxDirect.spreadToBudgets HexadecimaryFourTwoTailBoxDirect.spread124)) :
    False := by
  exact tailBox124Direct_unsat P.valuation (by
    simpa [HexadecimaryFourTwoTailBoxDirect.tailBox124Cnf] using
      P.valuation_satisfies_tailBoxCnf_of_profile_budget
        (spread := HexadecimaryFourTwoTailBoxDirect.spread124)
        (by native_decide) (by native_decide))

theorem TailBoxProfile.no_tailBox133_of_lrat
    (P : TailBoxProfile
      (TailBoxDirect.spreadToSizes HexadecimaryFourTwoTailBoxDirect.spread133)
      (TailBoxDirect.spreadToBudgets HexadecimaryFourTwoTailBoxDirect.spread133)) :
    False := by
  exact tailBox133Direct_unsat P.valuation (by
    simpa [HexadecimaryFourTwoTailBoxDirect.tailBox133Cnf] using
      P.valuation_satisfies_tailBoxCnf_of_profile_budget
        (spread := HexadecimaryFourTwoTailBoxDirect.spread133)
        (by native_decide) (by native_decide))

theorem TailBoxProfile.no_tailBox134_of_lrat
    (P : TailBoxProfile
      (TailBoxDirect.spreadToSizes HexadecimaryFourTwoTailBoxDirect.spread134)
      (TailBoxDirect.spreadToBudgets HexadecimaryFourTwoTailBoxDirect.spread134)) :
    False := by
  exact tailBox134Direct_unsat P.valuation (by
    simpa [HexadecimaryFourTwoTailBoxDirect.tailBox134Cnf] using
      P.valuation_satisfies_tailBoxCnf_of_profile_budget
        (spread := HexadecimaryFourTwoTailBoxDirect.spread134)
        (by native_decide) (by native_decide))

theorem TailBoxProfile.no_tailBox144_of_lrat
    (P : TailBoxProfile
      (TailBoxDirect.spreadToSizes HexadecimaryFourTwoTailBoxDirect.spread144)
      (TailBoxDirect.spreadToBudgets HexadecimaryFourTwoTailBoxDirect.spread144)) :
    False := by
  exact tailBox144Direct_unsat P.valuation (by
    simpa [HexadecimaryFourTwoTailBoxDirect.tailBox144Cnf] using
      P.valuation_satisfies_tailBoxCnf_of_profile_budget
        (spread := HexadecimaryFourTwoTailBoxDirect.spread144)
        (by native_decide) (by native_decide))

theorem TailBoxProfile.no_tailBox222_of_lrat
    (P : TailBoxProfile
      (TailBoxDirect.spreadToSizes HexadecimaryFourTwoTailBoxDirect.spread222)
      (TailBoxDirect.spreadToBudgets HexadecimaryFourTwoTailBoxDirect.spread222)) :
    False := by
  exact tailBox222Direct_unsat P.valuation (by
    simpa [HexadecimaryFourTwoTailBoxDirect.tailBox222Cnf] using
      P.valuation_satisfies_tailBoxCnf_of_profile_budget
        (spread := HexadecimaryFourTwoTailBoxDirect.spread222)
        (by native_decide) (by native_decide))

theorem TailBoxProfile.no_tailBox223_of_lrat
    (P : TailBoxProfile
      (TailBoxDirect.spreadToSizes HexadecimaryFourTwoTailBoxDirect.spread223)
      (TailBoxDirect.spreadToBudgets HexadecimaryFourTwoTailBoxDirect.spread223)) :
    False := by
  exact tailBox223Direct_unsat P.valuation (by
    simpa [HexadecimaryFourTwoTailBoxDirect.tailBox223Cnf] using
      P.valuation_satisfies_tailBoxCnf_of_profile_budget
        (spread := HexadecimaryFourTwoTailBoxDirect.spread223)
        (by native_decide) (by native_decide))

theorem TailBoxProfile.no_tailBox224_of_lrat
    (P : TailBoxProfile
      (TailBoxDirect.spreadToSizes HexadecimaryFourTwoTailBoxDirect.spread224)
      (TailBoxDirect.spreadToBudgets HexadecimaryFourTwoTailBoxDirect.spread224)) :
    False := by
  exact tailBox224Direct_unsat P.valuation (by
    simpa [HexadecimaryFourTwoTailBoxDirect.tailBox224Cnf] using
      P.valuation_satisfies_tailBoxCnf_of_profile_budget
        (spread := HexadecimaryFourTwoTailBoxDirect.spread224)
        (by native_decide) (by native_decide))

theorem TailBoxProfile.no_tailBox233_of_lrat
    (P : TailBoxProfile
      (TailBoxDirect.spreadToSizes HexadecimaryFourTwoTailBoxDirect.spread233)
      (TailBoxDirect.spreadToBudgets HexadecimaryFourTwoTailBoxDirect.spread233)) :
    False := by
  exact tailBox233Direct_unsat P.valuation (by
    simpa [HexadecimaryFourTwoTailBoxDirect.tailBox233Cnf] using
      P.valuation_satisfies_tailBoxCnf_of_profile_budget
        (spread := HexadecimaryFourTwoTailBoxDirect.spread233)
        (by native_decide) (by native_decide))

theorem TailBoxProfile.no_tailBox234_of_lrat
    (P : TailBoxProfile
      (TailBoxDirect.spreadToSizes HexadecimaryFourTwoTailBoxDirect.spread234)
      (TailBoxDirect.spreadToBudgets HexadecimaryFourTwoTailBoxDirect.spread234)) :
    False := by
  exact tailBox234Direct_unsat P.valuation (by
    simpa [HexadecimaryFourTwoTailBoxDirect.tailBox234Cnf] using
      P.valuation_satisfies_tailBoxCnf_of_profile_budget
        (spread := HexadecimaryFourTwoTailBoxDirect.spread234)
        (by native_decide) (by native_decide))

theorem TailBoxProfile.no_tailBox244_of_lrat
    (P : TailBoxProfile
      (TailBoxDirect.spreadToSizes HexadecimaryFourTwoTailBoxDirect.spread244)
      (TailBoxDirect.spreadToBudgets HexadecimaryFourTwoTailBoxDirect.spread244)) :
    False := by
  exact tailBox244Direct_unsat P.valuation (by
    simpa [HexadecimaryFourTwoTailBoxDirect.tailBox244Cnf] using
      P.valuation_satisfies_tailBoxCnf_of_profile_budget
        (spread := HexadecimaryFourTwoTailBoxDirect.spread244)
        (by native_decide) (by native_decide))

theorem TailBoxProfile.no_tailBox333_of_lrat
    (P : TailBoxProfile
      (TailBoxDirect.spreadToSizes HexadecimaryFourTwoTailBoxDirect.spread333)
      (TailBoxDirect.spreadToBudgets HexadecimaryFourTwoTailBoxDirect.spread333)) :
    False := by
  exact tailBox333Direct_unsat P.valuation (by
    simpa [HexadecimaryFourTwoTailBoxDirect.tailBox333Cnf] using
      P.valuation_satisfies_tailBoxCnf_of_profile_budget
        (spread := HexadecimaryFourTwoTailBoxDirect.spread333)
        (by native_decide) (by native_decide))

theorem TailBoxProfile.no_tailBox334_of_lrat
    (P : TailBoxProfile
      (TailBoxDirect.spreadToSizes HexadecimaryFourTwoTailBoxDirect.spread334)
      (TailBoxDirect.spreadToBudgets HexadecimaryFourTwoTailBoxDirect.spread334)) :
    False := by
  exact tailBox334Direct_unsat P.valuation (by
    simpa [HexadecimaryFourTwoTailBoxDirect.tailBox334Cnf] using
      P.valuation_satisfies_tailBoxCnf_of_profile_budget
        (spread := HexadecimaryFourTwoTailBoxDirect.spread334)
        (by native_decide) (by native_decide))

theorem TailBoxProfile.no_tailBox344_of_lrat
    (P : TailBoxProfile
      (TailBoxDirect.spreadToSizes HexadecimaryFourTwoTailBoxDirect.spread344)
      (TailBoxDirect.spreadToBudgets HexadecimaryFourTwoTailBoxDirect.spread344)) :
    False := by
  exact tailBox344Direct_unsat P.valuation (by
    simpa [HexadecimaryFourTwoTailBoxDirect.tailBox344Cnf] using
      P.valuation_satisfies_tailBoxCnf_of_profile_budget
        (spread := HexadecimaryFourTwoTailBoxDirect.spread344)
        (by native_decide) (by native_decide))

theorem TailBoxProfile.no_tailBox444_of_lrat
    (P : TailBoxProfile
      (TailBoxDirect.spreadToSizes HexadecimaryFourTwoTailBoxDirect.spread444)
      (TailBoxDirect.spreadToBudgets HexadecimaryFourTwoTailBoxDirect.spread444)) :
    False := by
  exact tailBox444Direct_unsat P.valuation (by
    simpa [HexadecimaryFourTwoTailBoxDirect.tailBox444Cnf] using
      P.valuation_satisfies_tailBoxCnf_of_profile_budget
        (spread := HexadecimaryFourTwoTailBoxDirect.spread444)
        (by native_decide) (by native_decide))

theorem TailBoxProfile.no_tailBox_of_canonical_spread
    {spread : Nat × Nat × Nat}
    (hspread : spread ∈ TailBoxDirect.canonicalFourFiberSpreads)
    (P : TailBoxProfile
      (TailBoxDirect.spreadToSizes spread)
      (TailBoxDirect.spreadToBudgets spread)) :
    False := by
  simp [TailBoxDirect.canonicalFourFiberSpreads] at hspread
  rcases hspread with
    rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
    rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact P.no_tailBox114_of_lrat
  · exact P.no_tailBox122_of_lrat
  · exact P.no_tailBox123_of_lrat
  · exact P.no_tailBox124_of_lrat
  · exact P.no_tailBox133_of_lrat
  · exact P.no_tailBox134_of_lrat
  · exact P.no_tailBox144_of_lrat
  · exact P.no_tailBox222_of_lrat
  · exact P.no_tailBox223_of_lrat
  · exact P.no_tailBox224_of_lrat
  · exact P.no_tailBox233_of_lrat
  · exact P.no_tailBox234_of_lrat
  · exact P.no_tailBox244_of_lrat
  · exact P.no_tailBox333_of_lrat
  · exact P.no_tailBox334_of_lrat
  · exact P.no_tailBox344_of_lrat
  · exact P.no_tailBox444_of_lrat

theorem TailBoxProfile.no_tailBox_of_four_fiber_spread
    {k0 k1 k2 : Nat}
    (hpos0 : 0 < k0) (hpos1 : 0 < k1) (hpos2 : 0 < k2)
    (hle0 : k0 ≤ 4) (hle1 : k1 ≤ 4) (hle2 : k2 ≤ 4)
    (hprod : 4 ≤ k0 * k1 * k2)
    (P : TailBoxProfile
      (TailBoxDirect.spreadToSizes (k0, k1, k2))
      (TailBoxDirect.spreadToBudgets (k0, k1, k2))) :
    False := by
  interval_cases k0 <;> interval_cases k1 <;> interval_cases k2
  all_goals
    first
    | omega
    | exact P.no_tailBox114_of_lrat
    | exact P.no_tailBox122_of_lrat
    | exact P.no_tailBox123_of_lrat
    | exact P.no_tailBox124_of_lrat
    | exact P.no_tailBox133_of_lrat
    | exact P.no_tailBox134_of_lrat
    | exact P.no_tailBox144_of_lrat
    | exact P.no_tailBox222_of_lrat
    | exact P.no_tailBox223_of_lrat
    | exact P.no_tailBox224_of_lrat
    | exact P.no_tailBox233_of_lrat
    | exact P.no_tailBox234_of_lrat
    | exact P.no_tailBox244_of_lrat
    | exact P.no_tailBox333_of_lrat
    | exact P.no_tailBox334_of_lrat
    | exact P.no_tailBox344_of_lrat
    | exact P.no_tailBox444_of_lrat
    | exact P.swap01.no_tailBox114_of_lrat
    | exact P.swap01.no_tailBox122_of_lrat
    | exact P.swap01.no_tailBox123_of_lrat
    | exact P.swap01.no_tailBox124_of_lrat
    | exact P.swap01.no_tailBox133_of_lrat
    | exact P.swap01.no_tailBox134_of_lrat
    | exact P.swap01.no_tailBox144_of_lrat
    | exact P.swap01.no_tailBox222_of_lrat
    | exact P.swap01.no_tailBox223_of_lrat
    | exact P.swap01.no_tailBox224_of_lrat
    | exact P.swap01.no_tailBox233_of_lrat
    | exact P.swap01.no_tailBox234_of_lrat
    | exact P.swap01.no_tailBox244_of_lrat
    | exact P.swap01.no_tailBox333_of_lrat
    | exact P.swap01.no_tailBox334_of_lrat
    | exact P.swap01.no_tailBox344_of_lrat
    | exact P.swap01.no_tailBox444_of_lrat
    | exact P.swap12.no_tailBox114_of_lrat
    | exact P.swap12.no_tailBox122_of_lrat
    | exact P.swap12.no_tailBox123_of_lrat
    | exact P.swap12.no_tailBox124_of_lrat
    | exact P.swap12.no_tailBox133_of_lrat
    | exact P.swap12.no_tailBox134_of_lrat
    | exact P.swap12.no_tailBox144_of_lrat
    | exact P.swap12.no_tailBox222_of_lrat
    | exact P.swap12.no_tailBox223_of_lrat
    | exact P.swap12.no_tailBox224_of_lrat
    | exact P.swap12.no_tailBox233_of_lrat
    | exact P.swap12.no_tailBox234_of_lrat
    | exact P.swap12.no_tailBox244_of_lrat
    | exact P.swap12.no_tailBox333_of_lrat
    | exact P.swap12.no_tailBox334_of_lrat
    | exact P.swap12.no_tailBox344_of_lrat
    | exact P.swap12.no_tailBox444_of_lrat
    | exact P.swap01.swap12.no_tailBox114_of_lrat
    | exact P.swap01.swap12.no_tailBox122_of_lrat
    | exact P.swap01.swap12.no_tailBox123_of_lrat
    | exact P.swap01.swap12.no_tailBox124_of_lrat
    | exact P.swap01.swap12.no_tailBox133_of_lrat
    | exact P.swap01.swap12.no_tailBox134_of_lrat
    | exact P.swap01.swap12.no_tailBox144_of_lrat
    | exact P.swap01.swap12.no_tailBox222_of_lrat
    | exact P.swap01.swap12.no_tailBox223_of_lrat
    | exact P.swap01.swap12.no_tailBox224_of_lrat
    | exact P.swap01.swap12.no_tailBox233_of_lrat
    | exact P.swap01.swap12.no_tailBox234_of_lrat
    | exact P.swap01.swap12.no_tailBox244_of_lrat
    | exact P.swap01.swap12.no_tailBox333_of_lrat
    | exact P.swap01.swap12.no_tailBox334_of_lrat
    | exact P.swap01.swap12.no_tailBox344_of_lrat
    | exact P.swap01.swap12.no_tailBox444_of_lrat
    | exact P.swap12.swap01.no_tailBox114_of_lrat
    | exact P.swap12.swap01.no_tailBox122_of_lrat
    | exact P.swap12.swap01.no_tailBox123_of_lrat
    | exact P.swap12.swap01.no_tailBox124_of_lrat
    | exact P.swap12.swap01.no_tailBox133_of_lrat
    | exact P.swap12.swap01.no_tailBox134_of_lrat
    | exact P.swap12.swap01.no_tailBox144_of_lrat
    | exact P.swap12.swap01.no_tailBox222_of_lrat
    | exact P.swap12.swap01.no_tailBox223_of_lrat
    | exact P.swap12.swap01.no_tailBox224_of_lrat
    | exact P.swap12.swap01.no_tailBox233_of_lrat
    | exact P.swap12.swap01.no_tailBox234_of_lrat
    | exact P.swap12.swap01.no_tailBox244_of_lrat
    | exact P.swap12.swap01.no_tailBox333_of_lrat
    | exact P.swap12.swap01.no_tailBox334_of_lrat
    | exact P.swap12.swap01.no_tailBox344_of_lrat
    | exact P.swap12.swap01.no_tailBox444_of_lrat
    | exact P.swap01.swap12.swap01.no_tailBox114_of_lrat
    | exact P.swap01.swap12.swap01.no_tailBox122_of_lrat
    | exact P.swap01.swap12.swap01.no_tailBox123_of_lrat
    | exact P.swap01.swap12.swap01.no_tailBox124_of_lrat
    | exact P.swap01.swap12.swap01.no_tailBox133_of_lrat
    | exact P.swap01.swap12.swap01.no_tailBox134_of_lrat
    | exact P.swap01.swap12.swap01.no_tailBox144_of_lrat
    | exact P.swap01.swap12.swap01.no_tailBox222_of_lrat
    | exact P.swap01.swap12.swap01.no_tailBox223_of_lrat
    | exact P.swap01.swap12.swap01.no_tailBox224_of_lrat
    | exact P.swap01.swap12.swap01.no_tailBox233_of_lrat
    | exact P.swap01.swap12.swap01.no_tailBox234_of_lrat

end Database
end CoveringCodes
