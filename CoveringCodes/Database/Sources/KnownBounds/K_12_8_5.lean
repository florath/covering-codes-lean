import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Known-bound upper certificate for K_12(8,5)

This module formalizes the `quotient_majority_cover` construction from
`q12-n8-r5-264-known-bound-lean-certificate-notes.md`.

Every symbol of `Fin 12` is written as an outer residue in `Fin 3` and an
inner symbol in `Fin 4`.  The code fixes one outer residue across all eight
coordinates and combines it with an 88-row quaternary array.  Any target word
has three coordinates with the same outer residue; among the 44 good triples
one such triple is always available, and the inner array realizes every
assignment on every good triple.  Thus the selected center agrees with the
target in at least three coordinates, so its Hamming distance is at most five.
-/

namespace CoveringCodes
namespace Database

private structure Triple8 where
  a : Fin 8
  b : Fin 8
  c : Fin 8
deriving DecidableEq, Repr

private def outerPart (x : Fin 12) : Fin 3 :=
  ⟨x.val % 3, by omega⟩

private def innerPart (x : Fin 12) : Fin 4 :=
  ⟨x.val / 3, by omega⟩

private def assembleSymbol (outer : Fin 3) (inner : Fin 4) : Fin 12 :=
  ⟨outer.val + 3 * inner.val, by omega⟩

private theorem assemble_outer_inner (x : Fin 12) :
    assembleSymbol (outerPart x) (innerPart x) = x := by
  apply Fin.ext
  simp [assembleSymbol, outerPart, innerPart]
  have h := Nat.mod_add_div x.val 3
  omega

private def digit4 (value place : Nat) : Fin 4 :=
  ⟨(value / place) % 4, by omega⟩

private def packedBaseColumns : Array Nat := #[
  1662, 8606, 14438, 15897, 8070, 10209, 6648
]

private def packedEvenPermutations : Array Nat := #[
  27, 45, 54, 78, 99, 120, 135, 156, 177, 201, 210, 228
]

private def baseSymbol (column : Fin 7) (position : Fin 8) : Fin 4 :=
  let value := packedBaseColumns.getD column.val 0
  if position.val = 0 then digit4 value 16384
  else if position.val = 1 then digit4 value 4096
  else if position.val = 2 then digit4 value 1024
  else if position.val = 3 then digit4 value 256
  else if position.val = 4 then digit4 value 64
  else if position.val = 5 then digit4 value 16
  else if position.val = 6 then digit4 value 4
  else digit4 value 1

private def applyEvenPermutation (perm : Fin 12) (symbol : Fin 4) : Fin 4 :=
  let value := packedEvenPermutations.getD perm.val 27
  if symbol.val = 0 then digit4 value 64
  else if symbol.val = 1 then digit4 value 16
  else if symbol.val = 2 then digit4 value 4
  else digit4 value 1

private def innerRow (idx : Fin 88) : QaryWord 4 8 :=
  if h : idx.val < 84 then
    let column : Fin 7 := ⟨idx.val / 12, by omega⟩
    let perm : Fin 12 := ⟨idx.val % 12, by omega⟩
    fun position => applyEvenPermutation perm (baseSymbol column position)
  else
    let symbol : Fin 4 := ⟨idx.val - 84, by omega⟩
    fun _ => symbol

private def q12Center (outer : Fin 3) (idx : Fin 88) : QaryWord 12 8 :=
  fun position => assembleSymbol outer (innerRow idx position)

private def q12Code : Finset (QaryWord 12 8) :=
  (Finset.univ : Finset (Fin 3 × Fin 88)).image (fun p => q12Center p.1 p.2)

private theorem q12Code_card :
    q12Code.card ≤ 264 := by
  calc
    q12Code.card ≤ (Finset.univ : Finset (Fin 3 × Fin 88)).card := by
      simpa [q12Code] using
        Finset.card_image_le (s := (Finset.univ : Finset (Fin 3 × Fin 88)))
    _ = 264 := by
      simp

private def unpackTriple (value : Nat) : Triple8 where
  a := ⟨(value / 64) % 8, by omega⟩
  b := ⟨(value / 8) % 8, by omega⟩
  c := ⟨value % 8, by omega⟩

private def packedGoodTriples : Array Nat := #[
  10, 11, 12, 13, 14, 15, 19, 20, 21, 22, 23, 28, 29, 30, 31, 37, 38, 46,
  47, 83, 84, 85, 86, 92, 93, 94, 95, 101, 102, 110, 156, 157, 158, 159,
  165, 166, 167, 174, 229, 230, 231, 238, 239, 302
]

private def goodTriple (idx : Fin 44) : Triple8 :=
  unpackTriple (packedGoodTriples.getD idx.val 10)

private theorem goodTriple_distinct :
    ∀ idx : Fin 44,
      let t := goodTriple idx
      t.a ≠ t.b ∧ t.a ≠ t.c ∧ t.b ≠ t.c := by
  native_decide

private def firstMonoGoodTripleIndex (p : QaryWord 3 8) (idx fuel : Nat) : Fin 44 :=
  match fuel with
  | 0 => 0
  | fuel + 1 =>
      if hidx : idx < 44 then
        let t := goodTriple ⟨idx, hidx⟩
        if p t.a = p t.b ∧ p t.a = p t.c then
          ⟨idx, hidx⟩
        else
          firstMonoGoodTripleIndex p (idx + 1) fuel
      else
        0

set_option maxRecDepth 10000 in
private theorem firstMonoGoodTripleIndex_spec :
    ∀ p : QaryWord 3 8,
      let idx := firstMonoGoodTripleIndex p 0 44
      let t := goodTriple idx
      p t.a = p t.b ∧ p t.a = p t.c := by
  native_decide

private def firstMatchingInnerRowIndex
    (t : Triple8) (x y z : Fin 4) (idx fuel : Nat) : Fin 88 :=
  match fuel with
  | 0 => 0
  | fuel + 1 =>
      if hidx : idx < 88 then
        if innerRow ⟨idx, hidx⟩ t.a = x ∧
            innerRow ⟨idx, hidx⟩ t.b = y ∧
            innerRow ⟨idx, hidx⟩ t.c = z then
          ⟨idx, hidx⟩
        else
          firstMatchingInnerRowIndex t x y z (idx + 1) fuel
      else
        0

set_option maxRecDepth 10000 in
private theorem firstMatchingInnerRowIndex_spec :
    ∀ idx : Fin 44, ∀ x y z : Fin 4,
      let t := goodTriple idx
      let row := firstMatchingInnerRowIndex t x y z 0 88
      innerRow row t.a = x ∧ innerRow row t.b = y ∧ innerRow row t.c = z := by
  native_decide

private def q12RepairIndex (x : QaryWord 12 8) : Fin 3 × Fin 88 :=
  let residuePattern : QaryWord 3 8 := fun position => outerPart (x position)
  let tripleIndex := firstMonoGoodTripleIndex residuePattern 0 44
  let triple := goodTriple tripleIndex
  let outer := outerPart (x triple.a)
  let row := firstMatchingInnerRowIndex triple
    (innerPart (x triple.a)) (innerPart (x triple.b)) (innerPart (x triple.c)) 0 88
  (outer, row)

private def q12Repair (x : QaryWord 12 8) : QaryWord 12 8 :=
  q12Center (q12RepairIndex x).1 (q12RepairIndex x).2

private theorem hammingDist_le_five_of_three_matches
    (x c : QaryWord 12 8) (i j k : Fin 8)
    (hij : i ≠ j) (hik : i ≠ k) (hjk : j ≠ k)
    (hi : x i = c i) (hj : x j = c j) (hk : x k = c k) :
    hammingDist x c ≤ 5 := by
  classical
  let bad : Finset (Fin 8) := Finset.univ.filter (fun position => x position ≠ c position)
  let matched : Finset (Fin 8) := {i, j, k}
  have hbad_subset : bad ⊆ Finset.univ \ matched := by
    intro position hposition
    have hne : x position ≠ c position := (Finset.mem_filter.mp hposition).2
    have hnot : position ∉ matched := by
      intro hmem
      simp [matched] at hmem
      rcases hmem with hmem | hmem | hmem
      · subst hmem
        exact hne hi
      · subst hmem
        exact hne hj
      · subst hmem
        exact hne hk
    exact Finset.mem_sdiff.mpr ⟨Finset.mem_univ position, hnot⟩
  have hmatched_card : matched.card = 3 := by
    simp [matched, hij, hik, hjk]
  have hsdiff_card : (Finset.univ \ matched).card = 5 := by
    rw [Finset.card_sdiff_of_subset]
    · simp [hmatched_card]
    · intro position _
      exact Finset.mem_univ position
  calc
    hammingDist x c = bad.card := rfl
    _ ≤ (Finset.univ \ matched).card := Finset.card_le_card hbad_subset
    _ = 5 := hsdiff_card

private theorem q12Repair_mem (x : QaryWord 12 8) :
    q12Repair x ∈ q12Code := by
  exact Finset.mem_image.mpr ⟨q12RepairIndex x, Finset.mem_univ _, rfl⟩

private theorem q12Repair_dist (x : QaryWord 12 8) :
    hammingDist x (q12Repair x) ≤ 5 := by
  let residuePattern : QaryWord 3 8 := fun position => outerPart (x position)
  let tripleIndex := firstMonoGoodTripleIndex residuePattern 0 44
  let triple := goodTriple tripleIndex
  let outer := outerPart (x triple.a)
  let row := firstMatchingInnerRowIndex triple
    (innerPart (x triple.a)) (innerPart (x triple.b)) (innerPart (x triple.c)) 0 88
  have hmono := firstMonoGoodTripleIndex_spec residuePattern
  have hrow := firstMatchingInnerRowIndex_spec tripleIndex
    (innerPart (x triple.a)) (innerPart (x triple.b)) (innerPart (x triple.c))
  have hrow_a : innerRow row triple.a = innerPart (x triple.a) := by
    simpa [row, tripleIndex, triple] using hrow.1
  have hrow_b : innerRow row triple.b = innerPart (x triple.b) := by
    simpa [row, tripleIndex, triple] using hrow.2.1
  have hrow_c : innerRow row triple.c = innerPart (x triple.c) := by
    simpa [row, tripleIndex, triple] using hrow.2.2
  have hdistinct := goodTriple_distinct tripleIndex
  have houter_b : outer = outerPart (x triple.b) := by
    simpa [outer, residuePattern, tripleIndex, triple] using hmono.1
  have houter_c : outer = outerPart (x triple.c) := by
    simpa [outer, residuePattern, tripleIndex, triple] using hmono.2
  have ha : x triple.a = q12Center outer row triple.a := by
    simpa [q12Center, outer, hrow_a] using
      (assemble_outer_inner (x triple.a)).symm
  have hb : x triple.b = q12Center outer row triple.b := by
    simpa [q12Center, houter_b, hrow_b] using
      (assemble_outer_inner (x triple.b)).symm
  have hc : x triple.c = q12Center outer row triple.c := by
    simpa [q12Center, houter_c, hrow_c] using
      (assemble_outer_inner (x triple.c)).symm
  have hdist := hammingDist_le_five_of_three_matches x (q12Center outer row)
    triple.a triple.b triple.c hdistinct.1 hdistinct.2.1 hdistinct.2.2 ha hb hc
  simpa [q12Repair, q12RepairIndex, residuePattern, tripleIndex, triple, outer, row] using hdist

private theorem q12Code_covers :
    CoversFinset q12Code 5 := by
  intro x
  exact ⟨q12Repair x, q12Repair_mem x, q12Repair_dist x⟩

private def q12Explicit : ExplicitQaryUpper 12 8 5 264 :=
  { code := q12Code
    card_le := q12Code_card
    covers := q12Code_covers }

private theorem knownBoundQ12N8R5Cert :
    QaryKUpper 12 8 5 264 :=
  q12Explicit.toUpper

def knownBoundQ12N8R5UpperName : String :=
  "lean_known_bounds_q12_n8_r5_quotient_majority"

def knownBoundQ12N8R5Upper (q n r : Nat) : Nat :=
  if q = 12 ∧ n = 8 ∧ r = 5 then 264 else trivialUpper q n r

theorem knownBoundQ12N8R5Upper_valid (q n r : Nat) :
    QaryKUpper q n r (knownBoundQ12N8R5Upper q n r) := by
  by_cases h : q = 12 ∧ n = 8 ∧ r = 5
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [knownBoundQ12N8R5Upper] using knownBoundQ12N8R5Cert
  · simpa [knownBoundQ12N8R5Upper, h] using trivialUpper_valid q n r

def knownBoundQ12N8R5UpperSource : UpperBoundSource where
  value := knownBoundQ12N8R5Upper
  trace := fun q n r =>
    .primitive knownBoundQ12N8R5UpperName (knownBoundQ12N8R5Upper_valid q n r)

end Database
end CoveringCodes
