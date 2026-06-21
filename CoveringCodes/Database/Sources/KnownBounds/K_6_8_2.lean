import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import CoveringCodes.Relations.DirectProduct
import Mathlib.Tactic

/-!
# Known-bound upper certificate for K_6(8,2)

This module formalizes the structural construction from
`q6-n8-r2-5184-known-bound-lean-certificate-notes.md` and the archived
candidate source `six_ary_mixed_radius_one_block`.

The source first builds a length-four senary radius-one block of size `72`, then
takes the direct product of two such blocks to get a length-eight radius-two
code of size `72 * 72 = 5184`.
-/

namespace CoveringCodes
namespace Database

private abbrev f2_0 : Fin 2 := ⟨0, by decide⟩
private abbrev f3_0 : Fin 3 := ⟨0, by decide⟩
private abbrev f6_0 : Fin 6 := ⟨0, by decide⟩
private abbrev f6_1 : Fin 6 := ⟨1, by decide⟩
private abbrev f6_2 : Fin 6 := ⟨2, by decide⟩
private abbrev f6_3 : Fin 6 := ⟨3, by decide⟩
private abbrev f6_4 : Fin 6 := ⟨4, by decide⟩
private abbrev f6_5 : Fin 6 := ⟨5, by decide⟩

private def mod2 (a : Fin 6) : Fin 2 := ⟨a.val % 2, by omega⟩
private def mod3 (a : Fin 6) : Fin 3 := ⟨a.val % 3, by omega⟩

private def add2 (a b : Fin 2) : Fin 2 := ⟨(a.val + b.val) % 2, by omega⟩
private def sub2 (a b : Fin 2) : Fin 2 := ⟨(2 + a.val - b.val) % 2, by omega⟩
private def add3 (a b : Fin 3) : Fin 3 := ⟨(a.val + b.val) % 3, by omega⟩
private def sub3 (a b : Fin 3) : Fin 3 := ⟨(3 + a.val - b.val) % 3, by omega⟩
private def mul3 (k : Nat) (a : Fin 3) : Fin 3 := ⟨(k * a.val) % 3, by omega⟩
private def crtSix (b : Fin 2) (t : Fin 3) : Fin 6 := ⟨(3 * b.val + 4 * t.val) % 6, by omega⟩

private def add2_4 (a b c d : Fin 2) : Fin 2 :=
  add2 (add2 (add2 a b) c) d

private def add3_3 (a b c : Fin 3) : Fin 3 :=
  add3 (add3 a b) c

private def mixedBlockOk (w : QaryWord 6 4) : Prop :=
  add2_4 (mod2 (w 0)) (mod2 (w 1)) (mod2 (w 2)) (mod2 (w 3)) = f2_0 ∧
    add3_3 (mod3 (w 0)) (mod3 (w 2)) (mod3 (w 3)) = f3_0 ∧
    add3_3 (mod3 (w 1)) (mod3 (w 2)) (mul3 2 (mod3 (w 3))) = f3_0

private instance (w : QaryWord 6 4) : Decidable (mixedBlockOk w) := by
  unfold mixedBlockOk
  infer_instance

private def mixedBlockCode : Finset (QaryWord 6 4) :=
  Finset.univ.filter mixedBlockOk

private theorem mixedBlockCode_card :
    mixedBlockCode.card ≤ 72 := by
  unfold mixedBlockCode mixedBlockOk
  covering_decide

private def blockSyndromeIndex (w : QaryWord 6 4) : Fin 18 :=
  ⟨(add2_4 (mod2 (w 0)) (mod2 (w 1)) (mod2 (w 2)) (mod2 (w 3))).val +
    2 * ((add3_3 (mod3 (w 0)) (mod3 (w 2)) (mod3 (w 3))).val +
    3 * (add3_3 (mod3 (w 1)) (mod3 (w 2)) (mul3 2 (mod3 (w 3)))).val), by omega⟩

private def blockCorrection (s : Fin 18) : QaryWord 6 4 :=
  match s.val with
  | 0 => ![f6_0, f6_0, f6_0, f6_0]
  | 1 => ![f6_3, f6_0, f6_0, f6_0]
  | 2 => ![f6_4, f6_0, f6_0, f6_0]
  | 3 => ![f6_1, f6_0, f6_0, f6_0]
  | 4 => ![f6_2, f6_0, f6_0, f6_0]
  | 5 => ![f6_5, f6_0, f6_0, f6_0]
  | 6 => ![f6_0, f6_4, f6_0, f6_0]
  | 7 => ![f6_0, f6_1, f6_0, f6_0]
  | 8 => ![f6_0, f6_0, f6_4, f6_0]
  | 9 => ![f6_0, f6_0, f6_1, f6_0]
  | 10 => ![f6_0, f6_0, f6_0, f6_2]
  | 11 => ![f6_0, f6_0, f6_0, f6_5]
  | 12 => ![f6_0, f6_2, f6_0, f6_0]
  | 13 => ![f6_0, f6_5, f6_0, f6_0]
  | 14 => ![f6_0, f6_0, f6_0, f6_4]
  | 15 => ![f6_0, f6_0, f6_0, f6_1]
  | 16 => ![f6_0, f6_0, f6_2, f6_0]
  | 17 => ![f6_0, f6_0, f6_5, f6_0]
  | _ => ![f6_0, f6_0, f6_0, f6_0]

private def subtractCorrection (x e : QaryWord 6 4) : QaryWord 6 4 :=
  fun i => crtSix (sub2 (mod2 (x i)) (mod2 (e i))) (sub3 (mod3 (x i)) (mod3 (e i)))

private def blockRepair (x : QaryWord 6 4) : QaryWord 6 4 :=
  subtractCorrection x (blockCorrection (blockSyndromeIndex x))

set_option maxRecDepth 10000 in
private theorem blockCorrection_syndrome :
    ∀ s : Fin 18, blockSyndromeIndex (blockCorrection s) = s := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem blockRepair_ok :
    ∀ x : QaryWord 6 4, mixedBlockOk (blockRepair x) := by
  covering_decide

set_option maxRecDepth 10000 in
private theorem blockRepair_dist :
    ∀ x : QaryWord 6 4, hammingDist x (blockRepair x) ≤ 1 := by
  covering_decide

private theorem mixedBlockCode_covers :
    CoversFinset mixedBlockCode 1 := by
  intro x
  refine ⟨blockRepair x, ?_, blockRepair_dist x⟩
  simp only [mixedBlockCode, Finset.mem_filter, Finset.mem_univ, true_and]
  exact blockRepair_ok x

private def mixedBlockExplicit : ExplicitQaryUpper 6 4 1 72 :=
  { code := mixedBlockCode
    card_le := mixedBlockCode_card
    covers := mixedBlockCode_covers }

private theorem knownBoundQ6N8R2Cert :
    QaryKUpper 6 8 2 5184 := by
  have h := upper_direct_product
    (q := 6) (n₁ := 4) (n₂ := 4) (r₁ := 1) (r₂ := 1) (U₁ := 72) (U₂ := 72)
    mixedBlockExplicit.toUpper mixedBlockExplicit.toUpper
  simpa using h

def knownBoundQ6N8R2UpperName : String :=
  "known_bounds_q6_n8_r2_mixed_radius_one_blocks"

def knownBoundQ6N8R2Upper (q n r : Nat) : Nat :=
  if q = 6 ∧ n = 8 ∧ r = 2 then 5184 else trivialUpper q n r

theorem knownBoundQ6N8R2Upper_valid (q n r : Nat) :
    QaryKUpper q n r (knownBoundQ6N8R2Upper q n r) := by
  by_cases h : q = 6 ∧ n = 8 ∧ r = 2
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [knownBoundQ6N8R2Upper] using knownBoundQ6N8R2Cert
  · simpa [knownBoundQ6N8R2Upper, h] using trivialUpper_valid q n r

def knownBoundQ6N8R2UpperSource : UpperBoundSource where
  value := knownBoundQ6N8R2Upper
  trace := fun q n r =>
    .primitive knownBoundQ6N8R2UpperName (knownBoundQ6N8R2Upper_valid q n r)

end Database
end CoveringCodes
