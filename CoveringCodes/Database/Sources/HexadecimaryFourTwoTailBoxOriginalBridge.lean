import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxLRATSmoke
import CoveringCodes.Database.Sources.HexadecimaryFourTwoTailBoxDirect

/-!
# Parsed-to-direct bridge for K16 4-fiber tail-box CNFs

The LRAT smoke module checks the original parsed DIMACS files.  This bridge
connects those parsed clauses to the direct Lean mirror of the generator, so
the 4-fiber semantic argument can target structured clauses.
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 2000000 in
theorem tailBox114Original_nvars_eq_direct :
    tailBox114NVars =
      HexadecimaryFourTwoTailBoxDirect.tailBox114NVars := by
  native_decide

set_option maxHeartbeats 2000000 in
theorem tailBox114Original_cnf_eq_direct :
    tailBox114Cnf =
      HexadecimaryFourTwoTailBoxDirect.tailBox114Cnf := by
  native_decide

theorem tailBox114Direct_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat
            HexadecimaryFourTwoTailBoxDirect.tailBox114Cnf) →
        False := by
  intro v hv
  exact tailBox114_unsat v (by
    simpa [tailBox114Original_cnf_eq_direct] using hv)

set_option maxHeartbeats 2000000 in
theorem tailBox122Original_nvars_eq_direct :
    tailBox122NVars =
      HexadecimaryFourTwoTailBoxDirect.tailBox122NVars := by
  native_decide

set_option maxHeartbeats 2000000 in
theorem tailBox122Original_cnf_eq_direct :
    tailBox122Cnf =
      HexadecimaryFourTwoTailBoxDirect.tailBox122Cnf := by
  native_decide

theorem tailBox122Direct_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat
            HexadecimaryFourTwoTailBoxDirect.tailBox122Cnf) →
        False := by
  intro v hv
  exact tailBox122_unsat v (by
    simpa [tailBox122Original_cnf_eq_direct] using hv)

set_option maxHeartbeats 2000000 in
theorem tailBox123Original_nvars_eq_direct :
    tailBox123NVars =
      HexadecimaryFourTwoTailBoxDirect.tailBox123NVars := by
  native_decide

set_option maxHeartbeats 2000000 in
theorem tailBox123Original_cnf_eq_direct :
    tailBox123Cnf =
      HexadecimaryFourTwoTailBoxDirect.tailBox123Cnf := by
  native_decide

theorem tailBox123Direct_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat
            HexadecimaryFourTwoTailBoxDirect.tailBox123Cnf) →
        False := by
  intro v hv
  exact tailBox123_unsat v (by
    simpa [tailBox123Original_cnf_eq_direct] using hv)

set_option maxHeartbeats 2000000 in
theorem tailBox124Original_nvars_eq_direct :
    tailBox124NVars =
      HexadecimaryFourTwoTailBoxDirect.tailBox124NVars := by
  native_decide

set_option maxHeartbeats 2000000 in
theorem tailBox124Original_cnf_eq_direct :
    tailBox124Cnf =
      HexadecimaryFourTwoTailBoxDirect.tailBox124Cnf := by
  native_decide

theorem tailBox124Direct_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat
            HexadecimaryFourTwoTailBoxDirect.tailBox124Cnf) →
        False := by
  intro v hv
  exact tailBox124_unsat v (by
    simpa [tailBox124Original_cnf_eq_direct] using hv)

set_option maxHeartbeats 2000000 in
theorem tailBox133Original_nvars_eq_direct :
    tailBox133NVars =
      HexadecimaryFourTwoTailBoxDirect.tailBox133NVars := by
  native_decide

set_option maxHeartbeats 2000000 in
theorem tailBox133Original_cnf_eq_direct :
    tailBox133Cnf =
      HexadecimaryFourTwoTailBoxDirect.tailBox133Cnf := by
  native_decide

theorem tailBox133Direct_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat
            HexadecimaryFourTwoTailBoxDirect.tailBox133Cnf) →
        False := by
  intro v hv
  exact tailBox133_unsat v (by
    simpa [tailBox133Original_cnf_eq_direct] using hv)

set_option maxHeartbeats 2000000 in
theorem tailBox134Original_nvars_eq_direct :
    tailBox134NVars =
      HexadecimaryFourTwoTailBoxDirect.tailBox134NVars := by
  native_decide

set_option maxHeartbeats 2000000 in
theorem tailBox134Original_cnf_eq_direct :
    tailBox134Cnf =
      HexadecimaryFourTwoTailBoxDirect.tailBox134Cnf := by
  native_decide

theorem tailBox134Direct_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat
            HexadecimaryFourTwoTailBoxDirect.tailBox134Cnf) →
        False := by
  intro v hv
  exact tailBox134_unsat v (by
    simpa [tailBox134Original_cnf_eq_direct] using hv)

set_option maxHeartbeats 2000000 in
theorem tailBox144Original_nvars_eq_direct :
    tailBox144NVars =
      HexadecimaryFourTwoTailBoxDirect.tailBox144NVars := by
  native_decide

set_option maxHeartbeats 2000000 in
theorem tailBox144Original_cnf_eq_direct :
    tailBox144Cnf =
      HexadecimaryFourTwoTailBoxDirect.tailBox144Cnf := by
  native_decide

theorem tailBox144Direct_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat
            HexadecimaryFourTwoTailBoxDirect.tailBox144Cnf) →
        False := by
  intro v hv
  exact tailBox144_unsat v (by
    simpa [tailBox144Original_cnf_eq_direct] using hv)

set_option maxHeartbeats 2000000 in
theorem tailBox222Original_nvars_eq_direct :
    tailBox222NVars =
      HexadecimaryFourTwoTailBoxDirect.tailBox222NVars := by
  native_decide

set_option maxHeartbeats 2000000 in
theorem tailBox222Original_cnf_eq_direct :
    tailBox222Cnf =
      HexadecimaryFourTwoTailBoxDirect.tailBox222Cnf := by
  native_decide

theorem tailBox222Direct_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat
            HexadecimaryFourTwoTailBoxDirect.tailBox222Cnf) →
        False := by
  intro v hv
  exact tailBox222_unsat v (by
    simpa [tailBox222Original_cnf_eq_direct] using hv)

set_option maxHeartbeats 2000000 in
theorem tailBox223Original_nvars_eq_direct :
    tailBox223NVars =
      HexadecimaryFourTwoTailBoxDirect.tailBox223NVars := by
  native_decide

set_option maxHeartbeats 2000000 in
theorem tailBox223Original_cnf_eq_direct :
    tailBox223Cnf =
      HexadecimaryFourTwoTailBoxDirect.tailBox223Cnf := by
  native_decide

theorem tailBox223Direct_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat
            HexadecimaryFourTwoTailBoxDirect.tailBox223Cnf) →
        False := by
  intro v hv
  exact tailBox223_unsat v (by
    simpa [tailBox223Original_cnf_eq_direct] using hv)

set_option maxHeartbeats 2000000 in
theorem tailBox224Original_nvars_eq_direct :
    tailBox224NVars =
      HexadecimaryFourTwoTailBoxDirect.tailBox224NVars := by
  native_decide

set_option maxHeartbeats 2000000 in
theorem tailBox224Original_cnf_eq_direct :
    tailBox224Cnf =
      HexadecimaryFourTwoTailBoxDirect.tailBox224Cnf := by
  native_decide

theorem tailBox224Direct_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat
            HexadecimaryFourTwoTailBoxDirect.tailBox224Cnf) →
        False := by
  intro v hv
  exact tailBox224_unsat v (by
    simpa [tailBox224Original_cnf_eq_direct] using hv)

set_option maxHeartbeats 2000000 in
theorem tailBox233Original_nvars_eq_direct :
    tailBox233NVars =
      HexadecimaryFourTwoTailBoxDirect.tailBox233NVars := by
  native_decide

set_option maxHeartbeats 2000000 in
theorem tailBox233Original_cnf_eq_direct :
    tailBox233Cnf =
      HexadecimaryFourTwoTailBoxDirect.tailBox233Cnf := by
  native_decide

theorem tailBox233Direct_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat
            HexadecimaryFourTwoTailBoxDirect.tailBox233Cnf) →
        False := by
  intro v hv
  exact tailBox233_unsat v (by
    simpa [tailBox233Original_cnf_eq_direct] using hv)

set_option maxHeartbeats 2000000 in
theorem tailBox234Original_nvars_eq_direct :
    tailBox234NVars =
      HexadecimaryFourTwoTailBoxDirect.tailBox234NVars := by
  native_decide

set_option maxHeartbeats 2000000 in
theorem tailBox234Original_cnf_eq_direct :
    tailBox234Cnf =
      HexadecimaryFourTwoTailBoxDirect.tailBox234Cnf := by
  native_decide

theorem tailBox234Direct_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat
            HexadecimaryFourTwoTailBoxDirect.tailBox234Cnf) →
        False := by
  intro v hv
  exact tailBox234_unsat v (by
    simpa [tailBox234Original_cnf_eq_direct] using hv)

set_option maxHeartbeats 2000000 in
theorem tailBox244Original_nvars_eq_direct :
    tailBox244NVars =
      HexadecimaryFourTwoTailBoxDirect.tailBox244NVars := by
  native_decide

set_option maxHeartbeats 2000000 in
theorem tailBox244Original_cnf_eq_direct :
    tailBox244Cnf =
      HexadecimaryFourTwoTailBoxDirect.tailBox244Cnf := by
  native_decide

theorem tailBox244Direct_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat
            HexadecimaryFourTwoTailBoxDirect.tailBox244Cnf) →
        False := by
  intro v hv
  exact tailBox244_unsat v (by
    simpa [tailBox244Original_cnf_eq_direct] using hv)

set_option maxHeartbeats 2000000 in
theorem tailBox333Original_nvars_eq_direct :
    tailBox333NVars =
      HexadecimaryFourTwoTailBoxDirect.tailBox333NVars := by
  native_decide

set_option maxHeartbeats 2000000 in
theorem tailBox333Original_cnf_eq_direct :
    tailBox333Cnf =
      HexadecimaryFourTwoTailBoxDirect.tailBox333Cnf := by
  native_decide

theorem tailBox333Direct_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat
            HexadecimaryFourTwoTailBoxDirect.tailBox333Cnf) →
        False := by
  intro v hv
  exact tailBox333_unsat v (by
    simpa [tailBox333Original_cnf_eq_direct] using hv)

set_option maxHeartbeats 2000000 in
theorem tailBox334Original_nvars_eq_direct :
    tailBox334NVars =
      HexadecimaryFourTwoTailBoxDirect.tailBox334NVars := by
  native_decide

set_option maxHeartbeats 2000000 in
theorem tailBox334Original_cnf_eq_direct :
    tailBox334Cnf =
      HexadecimaryFourTwoTailBoxDirect.tailBox334Cnf := by
  native_decide

theorem tailBox334Direct_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat
            HexadecimaryFourTwoTailBoxDirect.tailBox334Cnf) →
        False := by
  intro v hv
  exact tailBox334_unsat v (by
    simpa [tailBox334Original_cnf_eq_direct] using hv)

set_option maxHeartbeats 2000000 in
theorem tailBox344Original_nvars_eq_direct :
    tailBox344NVars =
      HexadecimaryFourTwoTailBoxDirect.tailBox344NVars := by
  native_decide

set_option maxHeartbeats 2000000 in
theorem tailBox344Original_cnf_eq_direct :
    tailBox344Cnf =
      HexadecimaryFourTwoTailBoxDirect.tailBox344Cnf := by
  native_decide

theorem tailBox344Direct_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat
            HexadecimaryFourTwoTailBoxDirect.tailBox344Cnf) →
        False := by
  intro v hv
  exact tailBox344_unsat v (by
    simpa [tailBox344Original_cnf_eq_direct] using hv)

set_option maxHeartbeats 2000000 in
theorem tailBox444Original_nvars_eq_direct :
    tailBox444NVars =
      HexadecimaryFourTwoTailBoxDirect.tailBox444NVars := by
  native_decide

set_option maxHeartbeats 2000000 in
theorem tailBox444Original_cnf_eq_direct :
    tailBox444Cnf =
      HexadecimaryFourTwoTailBoxDirect.tailBox444Cnf := by
  native_decide

theorem tailBox444Direct_unsat :
    ∀ v : Sat.Valuation,
      Sat.Valuation.satisfies_fmla v
          (LRATNative.rawCnfToSat
            HexadecimaryFourTwoTailBoxDirect.tailBox444Cnf) →
        False := by
  intro v hv
  exact tailBox444_unsat v (by
    simpa [tailBox444Original_cnf_eq_direct] using hv)

end Database
end CoveringCodes
