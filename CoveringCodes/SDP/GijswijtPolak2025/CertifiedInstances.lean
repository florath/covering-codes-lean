import CoveringCodes.SDP.GijswijtPolak2025.Bounds

/-!
# Certified Gijswijt--Polak SDP instances

This file is the manifest for closed numerical SDP lower-bound instances.
Only theorems whose exact rational certificates have been fully checked should
be re-exported from here.
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

/-- A closed numerical lower-bound instance certified by the GP SDP path. -/
structure CertifiedLowerBound where
  q : Nat
  n : Nat
  r : Nat
  L : Nat
  proof : QaryKLower q n r L

/-- Closed certificate for `K_2(1,0) >= 2`. -/
def certifiedBinaryLengthOneZeroRadius : CertifiedLowerBound where
  q := 2
  n := 1
  r := 0
  L := 2
  proof := gp2025_binary_length_one_zero_radius_lower

/-- Closed certificate for `K_2(2,0) >= 4`. -/
def certifiedBinaryLengthTwoZeroRadius : CertifiedLowerBound where
  q := 2
  n := 2
  r := 0
  L := 4
  proof := gp2025_binary_length_two_zero_radius_lower

/-- Closed certificate for `K_2(3,0) >= 8`. -/
def certifiedBinaryLengthThreeZeroRadius : CertifiedLowerBound where
  q := 2
  n := 3
  r := 0
  L := 8
  proof := gp2025_binary_length_three_zero_radius_lower

/-- Closed certificate for `K_3(1,0) >= 3`. -/
def certifiedTernaryLengthOneZeroRadius : CertifiedLowerBound where
  q := 3
  n := 1
  r := 0
  L := 3
  proof := gp2025_ternary_length_one_zero_radius_lower

/-- Closed certificate for `K_2(13,1) >= 607`. -/
def certifiedBinaryK2_13_1 : CertifiedLowerBound where
  q := 2
  n := 13
  r := 1
  L := 607
  proof := gp2025_binary_K2_13_1_lower

/-- Manifest of currently closed GP SDP lower-bound instances. -/
def certifiedLowerBounds : List CertifiedLowerBound :=
  [ certifiedBinaryK2_13_1
  , certifiedTernaryLengthOneZeroRadius
  , certifiedBinaryLengthThreeZeroRadius
  , certifiedBinaryLengthTwoZeroRadius
  , certifiedBinaryLengthOneZeroRadius
  ]

theorem certifiedLowerBounds_length : certifiedLowerBounds.length = 5 := by
  rfl

end GijswijtPolak2025
end SDP
end CoveringCodes
