import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.KnownBounds.BinaryGolay
import CoveringCodes.Database.Sources.SmallCases
import CoveringCodes.Database.Sources.Trivial
import CoveringCodes.Relations.DirectProduct
import Mathlib.Tactic

/-!
# Known-bound upper certificate for K_2(30,6)

This module formalizes the product construction behind
`q2-n30-r6-8192-known-bound-lean-certificate-notes.md`.

The length-30 code is a direct product of a two-word binary antipodal tail of
length seven and radius three with the binary `[23,12]` Golay radius-three
cover.  The product has size `2 * 4096 = 8192`.
-/

namespace CoveringCodes
namespace Database

private theorem antipodalTail7Cert :
    QaryKUpper 2 7 3 2 := by
  simpa [binaryAntipodalUpper] using binaryAntipodalUpper_valid 2 7 3

private theorem knownBoundQ2N30R6Cert :
    QaryKUpper 2 30 6 8192 := by
  have h := upper_direct_product
    (q := 2) (n₁ := 7) (n₂ := 23) (r₁ := 3) (r₂ := 3) (U₁ := 2) (U₂ := 4096)
    antipodalTail7Cert binaryGolay23Upper
  simpa using h

def knownBoundQ2N30R6UpperName : String :=
  "lean_known_bounds_q2_n30_r6_golay_antipodal_product"

def knownBoundQ2N30R6Upper (q n r : Nat) : Nat :=
  if q = 2 ∧ n = 30 ∧ r = 6 then 8192 else trivialUpper q n r

theorem knownBoundQ2N30R6Upper_valid (q n r : Nat) :
    QaryKUpper q n r (knownBoundQ2N30R6Upper q n r) := by
  by_cases h : q = 2 ∧ n = 30 ∧ r = 6
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [knownBoundQ2N30R6Upper] using knownBoundQ2N30R6Cert
  · simpa [knownBoundQ2N30R6Upper, h] using trivialUpper_valid q n r

def knownBoundQ2N30R6UpperSource : UpperBoundSource where
  value := knownBoundQ2N30R6Upper
  trace := fun q n r =>
    .primitive knownBoundQ2N30R6UpperName (knownBoundQ2N30R6Upper_valid q n r)

end Database
end CoveringCodes
