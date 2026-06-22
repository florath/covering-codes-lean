import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import CoveringCodes.Relations.DirectProduct
import Mathlib.Tactic

/-!
# Known-bound upper certificate for K_9(8,4)

This module formalizes the product structure in
`q9-n8-r4-729-known-bound-lean-certificate-notes.md` and the archived
candidate source `product_split_cover`.

The emitted length-eight code is the direct product of one length-four nonary
radius-two block with itself.  The block has `27` words, so the product has
size `27 * 27 = 729`.
-/

namespace CoveringCodes
namespace Database

private abbrev f9_0 : Fin 9 := ⟨0, by decide⟩
private abbrev f9_1 : Fin 9 := ⟨1, by decide⟩
private abbrev f9_2 : Fin 9 := ⟨2, by decide⟩
private abbrev f9_3 : Fin 9 := ⟨3, by decide⟩
private abbrev f9_4 : Fin 9 := ⟨4, by decide⟩
private abbrev f9_5 : Fin 9 := ⟨5, by decide⟩
private abbrev f9_6 : Fin 9 := ⟨6, by decide⟩
private abbrev f9_7 : Fin 9 := ⟨7, by decide⟩
private abbrev f9_8 : Fin 9 := ⟨8, by decide⟩

private def nonaryBlockCode : Finset (QaryWord 9 4) :=
  {![f9_0, f9_0, f9_6, f9_1],
    ![f9_0, f9_1, f9_2, f9_5],
    ![f9_0, f9_2, f9_1, f9_0],
    ![f9_1, f9_0, f9_2, f9_0],
    ![f9_1, f9_1, f9_1, f9_1],
    ![f9_1, f9_2, f9_6, f9_5],
    ![f9_2, f9_0, f9_1, f9_5],
    ![f9_2, f9_1, f9_6, f9_0],
    ![f9_2, f9_2, f9_2, f9_1],
    ![f9_3, f9_3, f9_3, f9_3],
    ![f9_3, f9_4, f9_5, f9_7],
    ![f9_3, f9_5, f9_0, f9_2],
    ![f9_4, f9_3, f9_5, f9_2],
    ![f9_4, f9_4, f9_0, f9_3],
    ![f9_4, f9_5, f9_3, f9_7],
    ![f9_5, f9_3, f9_0, f9_7],
    ![f9_5, f9_4, f9_3, f9_2],
    ![f9_5, f9_5, f9_5, f9_3],
    ![f9_6, f9_6, f9_4, f9_8],
    ![f9_6, f9_7, f9_7, f9_4],
    ![f9_6, f9_8, f9_8, f9_6],
    ![f9_7, f9_6, f9_7, f9_6],
    ![f9_7, f9_7, f9_8, f9_8],
    ![f9_7, f9_8, f9_4, f9_4],
    ![f9_8, f9_6, f9_8, f9_4],
    ![f9_8, f9_7, f9_4, f9_6],
    ![f9_8, f9_8, f9_7, f9_8]}

private theorem nonaryBlockCode_card :
    nonaryBlockCode.card ≤ 27 := by
  covering_decide

private def digit9 (value place : Nat) : Fin 9 :=
  ⟨(value / place) % 9, by omega⟩

private def decodeBlockWord (value : Nat) : QaryWord 9 4 :=
  fun i =>
    if i.val = 0 then digit9 value 729
    else if i.val = 1 then digit9 value 81
    else if i.val = 2 then digit9 value 9
    else digit9 value 1

private def blockCenterData : Array Nat := #[
  55, 104, 171, 747, 820, 950, 1472, 1593, 1639, 2460, 2563, 2594, 3206, 3243,
  3355, 3895, 3998, 4098, 4904, 5008, 5100, 5658, 5750, 5791, 6394, 6441, 6551
]

private def blockCenter (idx : Nat) : QaryWord 9 4 :=
  decodeBlockWord (blockCenterData.getD idx 55)

private def firstNearbyCenterIndex (x : QaryWord 9 4) (idx fuel : Nat) : Nat :=
  match fuel with
  | 0 => 0
  | fuel + 1 =>
      if hammingDist x (blockCenter idx) ≤ 2 then idx
      else firstNearbyCenterIndex x (idx + 1) fuel

private def blockRepair (x : QaryWord 9 4) : QaryWord 9 4 :=
  blockCenter (firstNearbyCenterIndex x 0 27)

set_option maxRecDepth 10000 in
private theorem blockRepair_mem :
    ∀ x : QaryWord 9 4, blockRepair x ∈ nonaryBlockCode := by
  native_decide

set_option maxRecDepth 50000 in
set_option maxHeartbeats 4000000 in
private theorem blockRepair_dist :
    ∀ x : QaryWord 9 4, hammingDist x (blockRepair x) ≤ 2 := by
  native_decide

private theorem nonaryBlockCode_covers :
    CoversFinset nonaryBlockCode 2 := by
  intro x
  exact ⟨blockRepair x, blockRepair_mem x, blockRepair_dist x⟩

private def nonaryBlockExplicit : ExplicitQaryUpper 9 4 2 27 :=
  { code := nonaryBlockCode
    card_le := nonaryBlockCode_card
    covers := nonaryBlockCode_covers }

private theorem knownBoundQ9N8R4Cert :
    QaryKUpper 9 8 4 729 := by
  have h := upper_direct_product
    (q := 9) (n₁ := 4) (n₂ := 4) (r₁ := 2) (r₂ := 2) (U₁ := 27) (U₂ := 27)
    nonaryBlockExplicit.toUpper nonaryBlockExplicit.toUpper
  simpa using h

def knownBoundQ9N8R4UpperName : String :=
  "lean_known_bounds_q9_n8_r4_block_product"

def knownBoundQ9N8R4Upper (q n r : Nat) : Nat :=
  if q = 9 ∧ n = 8 ∧ r = 4 then 729 else trivialUpper q n r

theorem knownBoundQ9N8R4Upper_valid (q n r : Nat) :
    QaryKUpper q n r (knownBoundQ9N8R4Upper q n r) := by
  by_cases h : q = 9 ∧ n = 8 ∧ r = 4
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [knownBoundQ9N8R4Upper] using knownBoundQ9N8R4Cert
  · simpa [knownBoundQ9N8R4Upper, h] using trivialUpper_valid q n r

def knownBoundQ9N8R4UpperSource : UpperBoundSource where
  value := knownBoundQ9N8R4Upper
  trace := fun q n r =>
    .primitive knownBoundQ9N8R4UpperName (knownBoundQ9N8R4Upper_valid q n r)

end Database
end CoveringCodes
