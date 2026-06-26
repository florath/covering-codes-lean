import CoveringCodes.SDP.GijswijtPolak2025.BinaryReducedSDP

/-!
# Generated finite support facts for the binary length-3 SDP

This file records exact finite orbit-index enumeration data.  It is
generated support for future rational SDP certificates and does not
register a numerical lower bound.
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

noncomputable section

def binaryLengthThreeIdx000 : BinaryOrbitIndex 3 where
  i := 0
  j := 0
  t := 0
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthThreeIdx010 : BinaryOrbitIndex 3 where
  i := 0
  j := 1
  t := 0
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthThreeIdx020 : BinaryOrbitIndex 3 where
  i := 0
  j := 2
  t := 0
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthThreeIdx030 : BinaryOrbitIndex 3 where
  i := 0
  j := 3
  t := 0
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthThreeIdx100 : BinaryOrbitIndex 3 where
  i := 1
  j := 0
  t := 0
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthThreeIdx110 : BinaryOrbitIndex 3 where
  i := 1
  j := 1
  t := 0
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthThreeIdx111 : BinaryOrbitIndex 3 where
  i := 1
  j := 1
  t := 1
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthThreeIdx120 : BinaryOrbitIndex 3 where
  i := 1
  j := 2
  t := 0
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthThreeIdx121 : BinaryOrbitIndex 3 where
  i := 1
  j := 2
  t := 1
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthThreeIdx131 : BinaryOrbitIndex 3 where
  i := 1
  j := 3
  t := 1
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthThreeIdx200 : BinaryOrbitIndex 3 where
  i := 2
  j := 0
  t := 0
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthThreeIdx210 : BinaryOrbitIndex 3 where
  i := 2
  j := 1
  t := 0
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthThreeIdx211 : BinaryOrbitIndex 3 where
  i := 2
  j := 1
  t := 1
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthThreeIdx221 : BinaryOrbitIndex 3 where
  i := 2
  j := 2
  t := 1
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthThreeIdx222 : BinaryOrbitIndex 3 where
  i := 2
  j := 2
  t := 2
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthThreeIdx232 : BinaryOrbitIndex 3 where
  i := 2
  j := 3
  t := 2
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthThreeIdx300 : BinaryOrbitIndex 3 where
  i := 3
  j := 0
  t := 0
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthThreeIdx311 : BinaryOrbitIndex 3 where
  i := 3
  j := 1
  t := 1
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthThreeIdx322 : BinaryOrbitIndex 3 where
  i := 3
  j := 2
  t := 2
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthThreeIdx333 : BinaryOrbitIndex 3 where
  i := 3
  j := 3
  t := 3
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthThreeAllOnes : BinaryX 3 := fun _ => 1

theorem binaryOrbitIndex_length_three_cases (idx : BinaryOrbitIndex 3) :
    idx = binaryLengthThreeIdx000 ∨
      idx = binaryLengthThreeIdx010 ∨
      idx = binaryLengthThreeIdx020 ∨
      idx = binaryLengthThreeIdx030 ∨
      idx = binaryLengthThreeIdx100 ∨
      idx = binaryLengthThreeIdx110 ∨
      idx = binaryLengthThreeIdx111 ∨
      idx = binaryLengthThreeIdx120 ∨
      idx = binaryLengthThreeIdx121 ∨
      idx = binaryLengthThreeIdx131 ∨
      idx = binaryLengthThreeIdx200 ∨
      idx = binaryLengthThreeIdx210 ∨
      idx = binaryLengthThreeIdx211 ∨
      idx = binaryLengthThreeIdx221 ∨
      idx = binaryLengthThreeIdx222 ∨
      idx = binaryLengthThreeIdx232 ∨
      idx = binaryLengthThreeIdx300 ∨
      idx = binaryLengthThreeIdx311 ∨
      idx = binaryLengthThreeIdx322 ∨
      idx = binaryLengthThreeIdx333 := by
  rcases idx with ⟨i, j, t, ht_i, ht_j, hij⟩
  have hi : i <= 3 := by omega
  have hj : j <= 3 := by omega
  have ht : t <= 3 := by omega
  interval_cases i <;> interval_cases j <;> interval_cases t
  · left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthThreeIdx000]
  · right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthThreeIdx010]
  · right; right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthThreeIdx020]
  · right; right; right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthThreeIdx030]
  · right; right; right; right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthThreeIdx100]
  · right; right; right; right; right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthThreeIdx110]
  · right; right; right; right; right; right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthThreeIdx111]
  · right; right; right; right; right; right; right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthThreeIdx120]
  · right; right; right; right; right; right; right; right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthThreeIdx121]
  · exfalso
    omega
  · right; right; right; right; right; right; right; right; right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthThreeIdx131]
  · right; right; right; right; right; right; right; right; right; right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthThreeIdx200]
  · right; right; right; right; right; right; right; right; right; right; right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthThreeIdx210]
  · right; right; right; right; right; right; right; right; right; right; right; right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthThreeIdx211]
  · exfalso
    omega
  · right; right; right; right; right; right; right; right; right; right; right; right; right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthThreeIdx221]
  · right; right; right; right; right; right; right; right; right; right; right; right; right; right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthThreeIdx222]
  · exfalso
    omega
  · exfalso
    omega
  · right; right; right; right; right; right; right; right; right; right; right; right; right; right; right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthThreeIdx232]
  · right; right; right; right; right; right; right; right; right; right; right; right; right; right; right; right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthThreeIdx300]
  · exfalso
    omega
  · right; right; right; right; right; right; right; right; right; right; right; right; right; right; right; right; right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthThreeIdx311]
  · exfalso
    omega
  · exfalso
    omega
  · right; right; right; right; right; right; right; right; right; right; right; right; right; right; right; right; right; right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthThreeIdx322]
  · exfalso
    omega
  · exfalso
    omega
  · exfalso
    omega
  · right; right; right; right; right; right; right; right; right; right; right; right; right; right; right; right; right; right; right
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthThreeIdx333]

theorem binaryOrbitIndex_univ_length_three :
    (Finset.univ : Finset (BinaryOrbitIndex 3)) =
      {binaryLengthThreeIdx000, binaryLengthThreeIdx010, binaryLengthThreeIdx020,
       binaryLengthThreeIdx030, binaryLengthThreeIdx100, binaryLengthThreeIdx110,
       binaryLengthThreeIdx111, binaryLengthThreeIdx120, binaryLengthThreeIdx121,
       binaryLengthThreeIdx131, binaryLengthThreeIdx200, binaryLengthThreeIdx210,
       binaryLengthThreeIdx211, binaryLengthThreeIdx221, binaryLengthThreeIdx222,
       binaryLengthThreeIdx232, binaryLengthThreeIdx300, binaryLengthThreeIdx311,
       binaryLengthThreeIdx322, binaryLengthThreeIdx333} := by
  ext idx
  constructor
  · intro _
    rcases binaryOrbitIndex_length_three_cases idx with
      rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      simp
  · intro _
    simp

theorem binaryLengthThreeAllOnes_basic :
    BinaryBasicConstraints binaryLengthThreeAllOnes := by
  refine ⟨?_, ?_, ?_⟩
  · intro idx
    rcases binaryOrbitIndex_length_three_cases idx with
      rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      native_decide
  · intro idx
    rcases binaryOrbitIndex_length_three_cases idx with
      rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      native_decide
  · intro _ _ _
    rfl

end

end GijswijtPolak2025
end SDP
end CoveringCodes
