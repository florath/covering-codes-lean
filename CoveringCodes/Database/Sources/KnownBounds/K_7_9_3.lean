import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.KnownBounds.K_7_6_2
import CoveringCodes.Database.Sources.SmallExplicitUpper.K_7_3_1
import CoveringCodes.Database.Sources.Trivial
import CoveringCodes.Relations.DirectProduct
import Mathlib.Tactic

/-!
# Known-bound upper certificate for K_7(9,3)

This module formalizes the product structure in
`q7-n9-r3-8575-known-bound-lean-certificate-notes.md`.

The length-nine construction is the direct product of a length-six radius-two
linear block over `F_7` with the existing length-three radius-one septenary
block of size `25`.  This gives `343 * 25 = 8575`.
-/

namespace CoveringCodes
namespace Database

def knownBoundQ7N9R3UpperName : String :=
  "lean_known_bounds_q7_n9_r3_product"

private theorem q7n3r1Upper : QaryKUpper 7 3 1 25 := by
  simpa [smallExplicitSeptenary731Upper] using
    smallExplicitSeptenary731Upper_valid 7 3 1

private theorem q7n9r3Product : QaryKUpper 7 9 3 8575 := by
  have h := upper_direct_product knownBoundQ7N6R2Explicit.toUpper q7n3r1Upper
  simpa using h

def knownBoundQ7N9R3Upper (q n r : Nat) : Nat :=
  if q = 7 ∧ n = 9 ∧ r = 3 then 8575 else trivialUpper q n r

theorem knownBoundQ7N9R3Upper_valid (q n r : Nat) :
    QaryKUpper q n r (knownBoundQ7N9R3Upper q n r) := by
  by_cases h : q = 7 ∧ n = 9 ∧ r = 3
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [knownBoundQ7N9R3Upper] using q7n9r3Product
  · simpa [knownBoundQ7N9R3Upper, h] using trivialUpper_valid q n r

def knownBoundQ7N9R3UpperSource : UpperBoundSource where
  value := knownBoundQ7N9R3Upper
  trace := fun q n r =>
    .primitive knownBoundQ7N9R3UpperName (knownBoundQ7N9R3Upper_valid q n r)

end Database
end CoveringCodes
