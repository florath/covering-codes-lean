import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.KnownBounds.BinaryGolay
import CoveringCodes.Database.Sources.SmallCases
import CoveringCodes.Database.Sources.Trivial
import CoveringCodes.Relations.DirectProduct
import Mathlib.Tactic

/-!
# Known-bound upper certificate for K_2(28,5)

This module formalizes the product construction behind
`q2-n28-r5-8192-known-bound-lean-certificate-notes.md`.

The length-28 code is a direct product of a two-word binary antipodal tail of
length five and radius two with the binary `[23,12]` Golay radius-three cover.
The product has size `2 * 4096 = 8192`.
-/

namespace CoveringCodes
namespace Database

private theorem antipodalTail5Cert :
    QaryKUpper 2 5 2 2 := by
  simpa [binaryAntipodalUpper] using binaryAntipodalUpper_valid 2 5 2

private theorem knownBoundQ2N28R5Cert :
    QaryKUpper 2 28 5 8192 := by
  have h := upper_direct_product
    (q := 2) (n₁ := 5) (n₂ := 23) (r₁ := 2) (r₂ := 3) (U₁ := 2) (U₂ := 4096)
    antipodalTail5Cert binaryGolay23Explicit.toUpper
  simpa using h

def knownBoundQ2N28R5UpperName : String :=
  "lean_known_bounds_q2_n28_r5_golay_antipodal_product"

def knownBoundQ2N28R5Upper (q n r : Nat) : Nat :=
  if q = 2 ∧ n = 28 ∧ r = 5 then 8192 else trivialUpper q n r

theorem knownBoundQ2N28R5Upper_valid (q n r : Nat) :
    QaryKUpper q n r (knownBoundQ2N28R5Upper q n r) := by
  by_cases h : q = 2 ∧ n = 28 ∧ r = 5
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [knownBoundQ2N28R5Upper] using knownBoundQ2N28R5Cert
  · simpa [knownBoundQ2N28R5Upper, h] using trivialUpper_valid q n r

def knownBoundQ2N28R5UpperSource : UpperBoundSource where
  value := knownBoundQ2N28R5Upper
  trace := fun q n r =>
    .primitive knownBoundQ2N28R5UpperName (knownBoundQ2N28R5Upper_valid q n r)

end Database
end CoveringCodes
