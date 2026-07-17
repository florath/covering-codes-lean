import CoveringCodes.Database.Sources.LRATKernel
import CoveringCodes.Database.Sources.LRATNative

/-!
# Algebraic bridge between `LRATKernel` and `LRATNative` CNF representations

`LRATNative.rawCnfToSat` operates on `Array (Array Int)`;
`LRATKernel.rawCnfToSat` operates on `List (List Int)`.
Both produce `Sat.Fmla`.

This file proves that the two functions agree when given equivalent inputs,
enabling kernel-proved LRAT certificates to discharge goals originally stated
over the native CNF representation.

The proof is purely algebraic (`List.map_map`, no `decide`).
-/

namespace CoveringCodes
namespace Database

open Mathlib.Tactic.Sat

/-- The kernel and native `rawCnfToSat` functions agree when `ls` is the
    list-of-list form of `arr` (i.e., `ls = arr.toList.map (·.toList)`).

    Proof: unfold both definitions, rewrite by the hypothesis, and apply
    `List.map_map` to commute the two `map` calls. -/
private theorem rawClauseToSat_toList (c : Array Int) :
    LRATKernel.rawClauseToSat c.toList = LRATNative.rawClauseToSat c := by
  simp [LRATKernel.rawClauseToSat, LRATNative.rawClauseToSat]

theorem rawCnfToSat_eq_native
    (ls  : LRATKernel.RawCnf)
    (arr : LRATNative.RawCnf)
    (h   : ls = arr.toList.map (·.toList)) :
    LRATKernel.rawCnfToSat ls = LRATNative.rawCnfToSat arr := by
  simp only [LRATKernel.rawCnfToSat, LRATNative.rawCnfToSat, h, List.map_map]
  congr 1

end Database
end CoveringCodes
