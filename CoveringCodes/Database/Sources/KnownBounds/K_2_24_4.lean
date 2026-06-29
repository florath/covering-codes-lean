import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.KnownBounds.BinaryGolay
import CoveringCodes.Database.Sources.SmallCases
import CoveringCodes.Database.Sources.Trivial
import CoveringCodes.Relations.DirectProduct
import Mathlib.Tactic

/-!
# Known-bound upper certificate for K_2(24,4)

This module formalizes the binary Golay product construction behind
`q2-n24-r4-4096-known-bound-lean-certificate-notes.md`.

The code is the binary `[23,12]` Golay radius-three cover with one fixed tail
coordinate.  The tail contributes length one and radius one at no size cost,
so the product has length `24`, radius `4`, and size `4096`.
-/

namespace CoveringCodes
namespace Database

private theorem oneTailCert :
    QaryKUpper 2 1 1 1 := by
  simpa [largeRadiusUpper] using largeRadiusUpper_valid 2 1 1

private theorem knownBoundQ2N24R4Cert :
    QaryKUpper 2 24 4 4096 := by
  have h := upper_direct_product
    (q := 2) (n₁ := 23) (n₂ := 1) (r₁ := 3) (r₂ := 1) (U₁ := 4096) (U₂ := 1)
    binaryGolay23Upper oneTailCert
  simpa using h

def knownBoundQ2N24R4UpperName : String :=
  "lean_known_bounds_q2_n24_r4_binary_golay_tail"

def knownBoundQ2N24R4Upper (q n r : Nat) : Nat :=
  if q = 2 ∧ n = 24 ∧ r = 4 then 4096 else trivialUpper q n r

theorem knownBoundQ2N24R4Upper_valid (q n r : Nat) :
    QaryKUpper q n r (knownBoundQ2N24R4Upper q n r) := by
  by_cases h : q = 2 ∧ n = 24 ∧ r = 4
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [knownBoundQ2N24R4Upper] using knownBoundQ2N24R4Cert
  · simpa [knownBoundQ2N24R4Upper, h] using trivialUpper_valid q n r

def knownBoundQ2N24R4UpperSource : UpperBoundSource where
  value := knownBoundQ2N24R4Upper
  trace := fun q n r =>
    .primitive knownBoundQ2N24R4UpperName (knownBoundQ2N24R4Upper_valid q n r)

end Database
end CoveringCodes
