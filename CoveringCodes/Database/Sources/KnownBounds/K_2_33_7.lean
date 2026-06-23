import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.KnownBounds.BinaryBCH31
import CoveringCodes.Database.Sources.Trivial
import CoveringCodes.Relations.DirectProduct
import Mathlib.Tactic

/-!
# Known-bound upper certificate for K_2(33,7)

This module formalizes the BCH31 tail construction behind
`q2-n33-r7-8192-known-bound-lean-certificate-notes.md`.

The length-33 code is a direct product of the binary BCH31 radius-seven cover
with the full two-coordinate binary zero-radius tail.  The product has size
`2048 * 4 = 8192`.
-/

namespace CoveringCodes
namespace Database

private theorem zeroRadiusTail2Cert :
    QaryKUpper 2 2 0 4 := by
  simpa [trivialUpper] using trivialUpper_valid 2 2 0

private theorem knownBoundQ2N33R7Cert :
    QaryKUpper 2 33 7 8192 := by
  have h := upper_direct_product
    (q := 2) (n₁ := 31) (n₂ := 2) (r₁ := 7) (r₂ := 0) (U₁ := 2048) (U₂ := 4)
    binaryBCH31Radius7Explicit.toUpper zeroRadiusTail2Cert
  simpa using h

def knownBoundQ2N33R7UpperName : String :=
  "lean_known_bounds_q2_n33_r7_bch31_tail"

def knownBoundQ2N33R7Upper (q n r : Nat) : Nat :=
  if q = 2 ∧ n = 33 ∧ r = 7 then 8192 else trivialUpper q n r

theorem knownBoundQ2N33R7Upper_valid (q n r : Nat) :
    QaryKUpper q n r (knownBoundQ2N33R7Upper q n r) := by
  by_cases h : q = 2 ∧ n = 33 ∧ r = 7
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [knownBoundQ2N33R7Upper] using knownBoundQ2N33R7Cert
  · simpa [knownBoundQ2N33R7Upper, h] using trivialUpper_valid q n r

def knownBoundQ2N33R7UpperSource : UpperBoundSource where
  value := knownBoundQ2N33R7Upper
  trace := fun q n r =>
    .primitive knownBoundQ2N33R7UpperName (knownBoundQ2N33R7Upper_valid q n r)

end Database
end CoveringCodes
