import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import CoveringCodes.Relations.DirectProduct
import Mathlib.Tactic

/-!
# Known-bound upper certificate for K_10(8,4)

This module formalizes the product structure in
`q10-n8-r4-1156-known-bound-lean-certificate-notes.md` and the archived
candidate source `split_product_cover`.

The emitted length-eight code is the direct product of one length-four denary
radius-two block with itself.  The block has `34` words, so the product has
size `34 * 34 = 1156`.
-/

namespace CoveringCodes
namespace Database

private def digit10 (value place : Nat) : Fin 10 :=
  ⟨(value / place) % 10, by omega⟩

private def decodeBlockWord (value : Nat) : QaryWord 10 4 :=
  fun i =>
    if i.val = 0 then digit10 value 1000
    else if i.val = 1 then digit10 value 100
    else if i.val = 2 then digit10 value 10
    else digit10 value 1

private def blockCenterData : Array Nat := #[
  0, 112, 223, 331, 1011, 1103, 1232, 1320, 2022, 2130, 2201, 2313, 3033,
  3121, 3210, 3302, 4444, 4556, 4665, 5455, 5564, 5646, 6466, 6545, 6654,
  7777, 7889, 7998, 8788, 8897, 8979, 9799, 9878, 9987
]

private def blockCenter (idx : Fin 34) : QaryWord 10 4 :=
  decodeBlockWord (blockCenterData.getD idx.val 0)

private def denaryBlockCode : Finset (QaryWord 10 4) :=
  (Finset.univ : Finset (Fin 34)).image blockCenter

private theorem denaryBlockCode_card :
    denaryBlockCode.card ≤ 34 := by
  calc
    denaryBlockCode.card ≤ (Finset.univ : Finset (Fin 34)).card := by
      simpa [denaryBlockCode] using Finset.card_image_le (s := (Finset.univ : Finset (Fin 34)))
    _ = 34 := by
      rw [Finset.card_univ, Fintype.card_fin]

private def firstNearbyCenterIndex (x : QaryWord 10 4) (idx fuel : Nat) : Fin 34 :=
  match fuel with
  | 0 => 0
  | fuel + 1 =>
      if hidx : idx < 34 then
        if hammingDist x (blockCenter ⟨idx, hidx⟩) ≤ 2 then
          ⟨idx, hidx⟩
        else
          firstNearbyCenterIndex x (idx + 1) fuel
      else
        0

private def blockRepair (x : QaryWord 10 4) : QaryWord 10 4 :=
  blockCenter (firstNearbyCenterIndex x 0 34)

private theorem blockRepair_mem (x : QaryWord 10 4) :
    blockRepair x ∈ denaryBlockCode := by
  exact Finset.mem_image.mpr
    ⟨firstNearbyCenterIndex x 0 34, Finset.mem_univ _, rfl⟩

set_option maxRecDepth 20000 in
set_option maxHeartbeats 4000000 in
private theorem blockRepair_dist :
    ∀ x : QaryWord 10 4, hammingDist x (blockRepair x) ≤ 2 := by
  native_decide

private theorem denaryBlockCode_covers :
    CoversFinset denaryBlockCode 2 := by
  intro x
  exact ⟨blockRepair x, blockRepair_mem x, blockRepair_dist x⟩

private def denaryBlockExplicit : ExplicitQaryUpper 10 4 2 34 :=
  { code := denaryBlockCode
    card_le := denaryBlockCode_card
    covers := denaryBlockCode_covers }

private theorem knownBoundQ10N8R4Cert :
    QaryKUpper 10 8 4 1156 := by
  have h := upper_direct_product
    (q := 10) (n₁ := 4) (n₂ := 4) (r₁ := 2) (r₂ := 2) (U₁ := 34) (U₂ := 34)
    denaryBlockExplicit.toUpper denaryBlockExplicit.toUpper
  simpa using h

def knownBoundQ10N8R4UpperName : String :=
  "lean_known_bounds_q10_n8_r4_block_product"

def knownBoundQ10N8R4Upper (q n r : Nat) : Nat :=
  if q = 10 ∧ n = 8 ∧ r = 4 then 1156 else trivialUpper q n r

theorem knownBoundQ10N8R4Upper_valid (q n r : Nat) :
    QaryKUpper q n r (knownBoundQ10N8R4Upper q n r) := by
  by_cases h : q = 10 ∧ n = 8 ∧ r = 4
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [knownBoundQ10N8R4Upper] using knownBoundQ10N8R4Cert
  · simpa [knownBoundQ10N8R4Upper, h] using trivialUpper_valid q n r

def knownBoundQ10N8R4UpperSource : UpperBoundSource where
  value := knownBoundQ10N8R4Upper
  trace := fun q n r =>
    .primitive knownBoundQ10N8R4UpperName (knownBoundQ10N8R4Upper_valid q n r)

end Database
end CoveringCodes
