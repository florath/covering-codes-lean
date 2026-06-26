import CoveringCodes.SDP.GijswijtPolak2025.QaryReducedSDP

/-!
# Generated finite support facts for the q=3 length-2 SDP

This file records exact finite orbit-index enumeration data.  It is
generated support for future rational SDP certificates and does not
register a numerical lower bound.
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

noncomputable section

def ternaryLengthTwoIdx0000 : QaryOrbitIndex 3 2 where
  i := 0
  j := 0
  t := 0
  p := 0
  hp_t := by omega
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def ternaryLengthTwoIdx0100 : QaryOrbitIndex 3 2 where
  i := 0
  j := 1
  t := 0
  p := 0
  hp_t := by omega
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def ternaryLengthTwoIdx0200 : QaryOrbitIndex 3 2 where
  i := 0
  j := 2
  t := 0
  p := 0
  hp_t := by omega
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def ternaryLengthTwoIdx1000 : QaryOrbitIndex 3 2 where
  i := 1
  j := 0
  t := 0
  p := 0
  hp_t := by omega
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def ternaryLengthTwoIdx1100 : QaryOrbitIndex 3 2 where
  i := 1
  j := 1
  t := 0
  p := 0
  hp_t := by omega
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def ternaryLengthTwoIdx1110 : QaryOrbitIndex 3 2 where
  i := 1
  j := 1
  t := 1
  p := 0
  hp_t := by omega
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def ternaryLengthTwoIdx1111 : QaryOrbitIndex 3 2 where
  i := 1
  j := 1
  t := 1
  p := 1
  hp_t := by omega
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def ternaryLengthTwoIdx1210 : QaryOrbitIndex 3 2 where
  i := 1
  j := 2
  t := 1
  p := 0
  hp_t := by omega
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def ternaryLengthTwoIdx1211 : QaryOrbitIndex 3 2 where
  i := 1
  j := 2
  t := 1
  p := 1
  hp_t := by omega
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def ternaryLengthTwoIdx2000 : QaryOrbitIndex 3 2 where
  i := 2
  j := 0
  t := 0
  p := 0
  hp_t := by omega
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def ternaryLengthTwoIdx2110 : QaryOrbitIndex 3 2 where
  i := 2
  j := 1
  t := 1
  p := 0
  hp_t := by omega
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def ternaryLengthTwoIdx2111 : QaryOrbitIndex 3 2 where
  i := 2
  j := 1
  t := 1
  p := 1
  hp_t := by omega
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def ternaryLengthTwoIdx2220 : QaryOrbitIndex 3 2 where
  i := 2
  j := 2
  t := 2
  p := 0
  hp_t := by omega
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def ternaryLengthTwoIdx2221 : QaryOrbitIndex 3 2 where
  i := 2
  j := 2
  t := 2
  p := 1
  hp_t := by omega
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def ternaryLengthTwoIdx2222 : QaryOrbitIndex 3 2 where
  i := 2
  j := 2
  t := 2
  p := 2
  hp_t := by omega
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def ternaryLengthTwoAllOnes : QaryX 3 2 := fun _ => 1

theorem qaryOrbitIndex_ternary_length_two_cases (idx : QaryOrbitIndex 3 2) :
    idx = ternaryLengthTwoIdx0000 ∨
      idx = ternaryLengthTwoIdx0100 ∨
      idx = ternaryLengthTwoIdx0200 ∨
      idx = ternaryLengthTwoIdx1000 ∨
      idx = ternaryLengthTwoIdx1100 ∨
      idx = ternaryLengthTwoIdx1110 ∨
      idx = ternaryLengthTwoIdx1111 ∨
      idx = ternaryLengthTwoIdx1210 ∨
      idx = ternaryLengthTwoIdx1211 ∨
      idx = ternaryLengthTwoIdx2000 ∨
      idx = ternaryLengthTwoIdx2110 ∨
      idx = ternaryLengthTwoIdx2111 ∨
      idx = ternaryLengthTwoIdx2220 ∨
      idx = ternaryLengthTwoIdx2221 ∨
      idx = ternaryLengthTwoIdx2222 := by
  rcases idx with ⟨i, j, t, p, hp_t, ht_i, ht_j, hij⟩
  have hi : i <= 2 := by omega
  have hj : j <= 2 := by omega
  have ht : t <= 2 := by omega
  have hp : p <= 2 := by omega
  interval_cases i <;> interval_cases j <;> interval_cases t <;>
    interval_cases p
  · left
    apply QaryOrbitIndex.toFinTuple_injective
    simp [QaryOrbitIndex.toFinTuple, ternaryLengthTwoIdx0000]
  · right; left
    apply QaryOrbitIndex.toFinTuple_injective
    simp [QaryOrbitIndex.toFinTuple, ternaryLengthTwoIdx0100]
  · right; right; left
    apply QaryOrbitIndex.toFinTuple_injective
    simp [QaryOrbitIndex.toFinTuple, ternaryLengthTwoIdx0200]
  · right; right; right; left
    apply QaryOrbitIndex.toFinTuple_injective
    simp [QaryOrbitIndex.toFinTuple, ternaryLengthTwoIdx1000]
  · right; right; right; right; left
    apply QaryOrbitIndex.toFinTuple_injective
    simp [QaryOrbitIndex.toFinTuple, ternaryLengthTwoIdx1100]
  · right; right; right; right; right; left
    apply QaryOrbitIndex.toFinTuple_injective
    simp [QaryOrbitIndex.toFinTuple, ternaryLengthTwoIdx1110]
  · right; right; right; right; right; right; left
    apply QaryOrbitIndex.toFinTuple_injective
    simp [QaryOrbitIndex.toFinTuple, ternaryLengthTwoIdx1111]
  · exfalso
    omega
  · right; right; right; right; right; right; right; left
    apply QaryOrbitIndex.toFinTuple_injective
    simp [QaryOrbitIndex.toFinTuple, ternaryLengthTwoIdx1210]
  · right; right; right; right; right; right; right; right; left
    apply QaryOrbitIndex.toFinTuple_injective
    simp [QaryOrbitIndex.toFinTuple, ternaryLengthTwoIdx1211]
  · right; right; right; right; right; right; right; right; right; left
    apply QaryOrbitIndex.toFinTuple_injective
    simp [QaryOrbitIndex.toFinTuple, ternaryLengthTwoIdx2000]
  · exfalso
    omega
  · right; right; right; right; right; right; right; right; right; right; left
    apply QaryOrbitIndex.toFinTuple_injective
    simp [QaryOrbitIndex.toFinTuple, ternaryLengthTwoIdx2110]
  · right; right; right; right; right; right; right; right; right; right; right; left
    apply QaryOrbitIndex.toFinTuple_injective
    simp [QaryOrbitIndex.toFinTuple, ternaryLengthTwoIdx2111]
  · exfalso
    omega
  · exfalso
    omega
  · exfalso
    omega
  · right; right; right; right; right; right; right; right; right; right; right; right; left
    apply QaryOrbitIndex.toFinTuple_injective
    simp [QaryOrbitIndex.toFinTuple, ternaryLengthTwoIdx2220]
  · right; right; right; right; right; right; right; right; right; right; right; right; right; left
    apply QaryOrbitIndex.toFinTuple_injective
    simp [QaryOrbitIndex.toFinTuple, ternaryLengthTwoIdx2221]
  · right; right; right; right; right; right; right; right; right; right; right; right; right; right
    apply QaryOrbitIndex.toFinTuple_injective
    simp [QaryOrbitIndex.toFinTuple, ternaryLengthTwoIdx2222]

theorem qaryOrbitIndex_univ_ternary_length_two :
    (Finset.univ : Finset (QaryOrbitIndex 3 2)) =
      {ternaryLengthTwoIdx0000, ternaryLengthTwoIdx0100, ternaryLengthTwoIdx0200,
       ternaryLengthTwoIdx1000, ternaryLengthTwoIdx1100, ternaryLengthTwoIdx1110,
       ternaryLengthTwoIdx1111, ternaryLengthTwoIdx1210, ternaryLengthTwoIdx1211,
       ternaryLengthTwoIdx2000, ternaryLengthTwoIdx2110, ternaryLengthTwoIdx2111,
       ternaryLengthTwoIdx2220, ternaryLengthTwoIdx2221, ternaryLengthTwoIdx2222} := by
  ext idx
  constructor
  · intro _
    rcases qaryOrbitIndex_ternary_length_two_cases idx with
      rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      simp
  · intro _
    simp

theorem ternaryLengthTwoAllOnes_basic :
    QaryBasicConstraints ternaryLengthTwoAllOnes := by
  refine ⟨?_, ?_, ?_⟩
  · intro idx
    rcases qaryOrbitIndex_ternary_length_two_cases idx with
      rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      native_decide
  · intro idx
    rcases qaryOrbitIndex_ternary_length_two_cases idx with
      rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      native_decide
  · intro _ _ _ _
    rfl

end

end GijswijtPolak2025
end SDP
end CoveringCodes
