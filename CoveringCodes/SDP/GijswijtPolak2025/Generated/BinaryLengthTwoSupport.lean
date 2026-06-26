import CoveringCodes.SDP.GijswijtPolak2025.BinaryReducedSDP

/-!
# Finite support facts for the binary length-two SDP

This file records closed finite reductions for the next binary zero-radius SDP
instance, `(q,n,r) = (2,2,0)`.  It intentionally stops before registering a
lower-bound theorem: the full `K >= 4` SDP proof needs an objective certificate
with bound greater than `27`.
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

noncomputable section

def binaryLengthTwoIdx000 : BinaryOrbitIndex 2 where
  i := 0
  j := 0
  t := 0
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthTwoIdx010 : BinaryOrbitIndex 2 where
  i := 0
  j := 1
  t := 0
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthTwoIdx020 : BinaryOrbitIndex 2 where
  i := 0
  j := 2
  t := 0
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthTwoIdx100 : BinaryOrbitIndex 2 where
  i := 1
  j := 0
  t := 0
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthTwoIdx110 : BinaryOrbitIndex 2 where
  i := 1
  j := 1
  t := 0
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthTwoIdx111 : BinaryOrbitIndex 2 where
  i := 1
  j := 1
  t := 1
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthTwoIdx121 : BinaryOrbitIndex 2 where
  i := 1
  j := 2
  t := 1
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthTwoIdx200 : BinaryOrbitIndex 2 where
  i := 2
  j := 0
  t := 0
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthTwoIdx211 : BinaryOrbitIndex 2 where
  i := 2
  j := 1
  t := 1
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthTwoIdx222 : BinaryOrbitIndex 2 where
  i := 2
  j := 2
  t := 2
  ht_i := by omega
  ht_j := by omega
  hij := by omega

def binaryLengthTwoAllOnes : BinaryX 2 := fun _ => 1

theorem binaryOrbitIndex_length_two_cases (idx : BinaryOrbitIndex 2) :
    idx = binaryLengthTwoIdx000 ∨ idx = binaryLengthTwoIdx010 ∨
      idx = binaryLengthTwoIdx020 ∨ idx = binaryLengthTwoIdx100 ∨
      idx = binaryLengthTwoIdx110 ∨ idx = binaryLengthTwoIdx111 ∨
      idx = binaryLengthTwoIdx121 ∨ idx = binaryLengthTwoIdx200 ∨
      idx = binaryLengthTwoIdx211 ∨ idx = binaryLengthTwoIdx222 := by
  rcases idx with ⟨i, j, t, ht_i, ht_j, hij⟩
  have hi : i <= 2 := by omega
  have hj : j <= 2 := by omega
  have ht : t <= 2 := by omega
  interval_cases i <;> interval_cases j <;> interval_cases t
  · left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthTwoIdx000]
  · right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthTwoIdx010]
  · right; right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthTwoIdx020]
  · right; right; right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthTwoIdx100]
  · right; right; right; right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthTwoIdx110]
  · right; right; right; right; right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthTwoIdx111]
  · exfalso
    omega
  · right; right; right; right; right; right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthTwoIdx121]
  · right; right; right; right; right; right; right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthTwoIdx200]
  · exfalso
    omega
  · right; right; right; right; right; right; right; right; left
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthTwoIdx211]
  · exfalso
    omega
  · exfalso
    omega
  · right; right; right; right; right; right; right; right; right
    apply BinaryOrbitIndex.toFinTriple_injective
    simp [BinaryOrbitIndex.toFinTriple, binaryLengthTwoIdx222]

theorem binaryOrbitIndex_univ_length_two :
    (Finset.univ : Finset (BinaryOrbitIndex 2)) =
      {binaryLengthTwoIdx000, binaryLengthTwoIdx010, binaryLengthTwoIdx020,
        binaryLengthTwoIdx100, binaryLengthTwoIdx110, binaryLengthTwoIdx111,
        binaryLengthTwoIdx121, binaryLengthTwoIdx200, binaryLengthTwoIdx211,
        binaryLengthTwoIdx222} := by
  ext idx
  constructor
  · intro _
    rcases binaryOrbitIndex_length_two_cases idx with
      rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      simp
  · intro _
    simp

theorem binaryLengthTwoAllOnes_basic :
    BinaryBasicConstraints binaryLengthTwoAllOnes := by
  refine ⟨?_, ?_, ?_⟩
  · intro idx
    rcases binaryOrbitIndex_length_two_cases idx with
      rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      native_decide
  · intro idx
    rcases binaryOrbitIndex_length_two_cases idx with
      rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      native_decide
  · intro _ _ _
    rfl

def binaryLengthTwoBlockVector : Fin 3 -> Rat
  | ⟨0, _⟩ => 1
  | ⟨1, _⟩ => 2
  | ⟨2, _⟩ => 1

theorem binaryLengthTwoAllOnes_blockZero_psd :
    RatPSD (binaryBlock 2 0 binaryLengthTwoAllOnes) := by
  refine (GramEntryCertificate.psd (ι := Fin 3) (κ := PUnit) ?_)
  refine ⟨fun _ i => binaryLengthTwoBlockVector i, ?_⟩
  intro i j
  fin_cases i
  · fin_cases j <;> native_decide
  · fin_cases j <;> native_decide
  · fin_cases j <;> native_decide

theorem binaryLengthTwoAllOnes_blockOne_zero :
    binaryBlock 2 1 binaryLengthTwoAllOnes =
      (0 : Matrix (Fin 1) (Fin 1) Rat) := by
  ext i j
  fin_cases i
  fin_cases j
  native_decide

theorem binaryLengthTwoAllOnes_blockOne_psd :
    RatPSD (binaryBlock 2 1 binaryLengthTwoAllOnes) := by
  rw [binaryLengthTwoAllOnes_blockOne_zero]
  exact RatPSD.zero

theorem binaryLengthTwoAllOnes_semidefinite :
    BinaryBlocksPSD binaryLengthTwoAllOnes := by
  intro idx
  rcases idx with ⟨k, hk⟩
  change RatPSD (binaryBlock 2 k binaryLengthTwoAllOnes)
  have hk1 : k <= 1 := by omega
  interval_cases k
  · exact binaryLengthTwoAllOnes_blockZero_psd
  · exact binaryLengthTwoAllOnes_blockOne_psd

def binaryLengthTwoOrbitOfFin : Fin 10 -> BinaryOrbitIndex 2
  | ⟨0, _⟩ => binaryLengthTwoIdx000
  | ⟨1, _⟩ => binaryLengthTwoIdx010
  | ⟨2, _⟩ => binaryLengthTwoIdx020
  | ⟨3, _⟩ => binaryLengthTwoIdx100
  | ⟨4, _⟩ => binaryLengthTwoIdx110
  | ⟨5, _⟩ => binaryLengthTwoIdx111
  | ⟨6, _⟩ => binaryLengthTwoIdx121
  | ⟨7, _⟩ => binaryLengthTwoIdx200
  | ⟨8, _⟩ => binaryLengthTwoIdx211
  | ⟨9, _⟩ => binaryLengthTwoIdx222
  | ⟨m + 10, h⟩ => by omega

abbrev binaryLengthTwoQuotientIndex := Fin 4

def binaryLengthTwoQuotientOfOrbitFin : Fin 10 ->
    binaryLengthTwoQuotientIndex
  | ⟨0, _⟩ => ⟨0, by omega⟩
  | ⟨1, _⟩ => ⟨1, by omega⟩
  | ⟨2, _⟩ => ⟨2, by omega⟩
  | ⟨3, _⟩ => ⟨1, by omega⟩
  | ⟨4, _⟩ => ⟨3, by omega⟩
  | ⟨5, _⟩ => ⟨1, by omega⟩
  | ⟨6, _⟩ => ⟨3, by omega⟩
  | ⟨7, _⟩ => ⟨2, by omega⟩
  | ⟨8, _⟩ => ⟨3, by omega⟩
  | ⟨9, _⟩ => ⟨2, by omega⟩
  | ⟨m + 10, h⟩ => by omega

def binaryLengthTwoOrbitToFin (idx : BinaryOrbitIndex 2) : Fin 10 :=
  match idx.i, idx.j, idx.t with
  | 0, 0, 0 => ⟨0, by omega⟩
  | 0, 1, 0 => ⟨1, by omega⟩
  | 0, 2, 0 => ⟨2, by omega⟩
  | 1, 0, 0 => ⟨3, by omega⟩
  | 1, 1, 0 => ⟨4, by omega⟩
  | 1, 1, 1 => ⟨5, by omega⟩
  | 1, 2, 1 => ⟨6, by omega⟩
  | 2, 0, 0 => ⟨7, by omega⟩
  | 2, 1, 1 => ⟨8, by omega⟩
  | 2, 2, 2 => ⟨9, by omega⟩
  | _, _, _ => ⟨0, by omega⟩

def binaryLengthTwoQuotientOfOrbit (idx : BinaryOrbitIndex 2) :
    binaryLengthTwoQuotientIndex :=
  binaryLengthTwoQuotientOfOrbitFin (binaryLengthTwoOrbitToFin idx)

theorem binaryLengthTwoOrbitOfFin_toFin (idx : BinaryOrbitIndex 2) :
    binaryLengthTwoOrbitOfFin (binaryLengthTwoOrbitToFin idx) = idx := by
  rcases idx with ⟨i, j, t, ht_i, ht_j, hij⟩
  have hi : i <= 2 := by omega
  have hj : j <= 2 := by omega
  have ht : t <= 2 := by omega
  interval_cases i <;> interval_cases j <;> interval_cases t
  · rw [BinaryOrbitIndex.mk.injEq]
    simp [binaryLengthTwoIdx000,
      binaryLengthTwoOrbitToFin, binaryLengthTwoOrbitOfFin]
  · rw [BinaryOrbitIndex.mk.injEq]
    simp [binaryLengthTwoIdx010,
      binaryLengthTwoOrbitToFin, binaryLengthTwoOrbitOfFin]
  · rw [BinaryOrbitIndex.mk.injEq]
    simp [binaryLengthTwoIdx020,
      binaryLengthTwoOrbitToFin, binaryLengthTwoOrbitOfFin]
  · rw [BinaryOrbitIndex.mk.injEq]
    simp [binaryLengthTwoIdx100,
      binaryLengthTwoOrbitToFin, binaryLengthTwoOrbitOfFin]
  · rw [BinaryOrbitIndex.mk.injEq]
    simp [binaryLengthTwoIdx110,
      binaryLengthTwoOrbitToFin, binaryLengthTwoOrbitOfFin]
  · rw [BinaryOrbitIndex.mk.injEq]
    simp [binaryLengthTwoIdx111,
      binaryLengthTwoOrbitToFin, binaryLengthTwoOrbitOfFin]
  · exfalso
    omega
  · rw [BinaryOrbitIndex.mk.injEq]
    simp [binaryLengthTwoIdx121,
      binaryLengthTwoOrbitToFin, binaryLengthTwoOrbitOfFin]
  · rw [BinaryOrbitIndex.mk.injEq]
    simp [binaryLengthTwoIdx200,
      binaryLengthTwoOrbitToFin, binaryLengthTwoOrbitOfFin]
  · exfalso
    omega
  · rw [BinaryOrbitIndex.mk.injEq]
    simp [binaryLengthTwoIdx211,
      binaryLengthTwoOrbitToFin, binaryLengthTwoOrbitOfFin]
  · exfalso
    omega
  · exfalso
    omega
  · rw [BinaryOrbitIndex.mk.injEq]
    simp [binaryLengthTwoIdx222,
      binaryLengthTwoOrbitToFin, binaryLengthTwoOrbitOfFin]

theorem binaryLengthTwoOrbitToFin_ofFin (idx : Fin 10) :
    binaryLengthTwoOrbitToFin (binaryLengthTwoOrbitOfFin idx) = idx := by
  fin_cases idx <;> native_decide

def binaryLengthTwoRepresentativeFin : binaryLengthTwoQuotientIndex -> Fin 10
  | ⟨0, _⟩ => ⟨0, by omega⟩
  | ⟨1, _⟩ => ⟨1, by omega⟩
  | ⟨2, _⟩ => ⟨2, by omega⟩
  | ⟨3, _⟩ => ⟨4, by omega⟩
  | ⟨m + 4, h⟩ => by omega

def binaryLengthTwoRepresentativeOrbit (idx : binaryLengthTwoQuotientIndex) :
    BinaryOrbitIndex 2 :=
  binaryLengthTwoOrbitOfFin (binaryLengthTwoRepresentativeFin idx)

theorem binaryLengthTwoQuotientOfRepresentativeFin
    (idx : binaryLengthTwoQuotientIndex) :
    binaryLengthTwoQuotientOfOrbitFin (binaryLengthTwoRepresentativeFin idx) =
      idx := by
  fin_cases idx <;> native_decide

theorem binaryLengthTwoRepresentative_perm_of_fin (idx : Fin 10) :
    List.Perm
      [(binaryLengthTwoOrbitOfFin idx).i, (binaryLengthTwoOrbitOfFin idx).j,
        binaryOrbitDistanceIndex (binaryLengthTwoOrbitOfFin idx)]
      [(binaryLengthTwoRepresentativeOrbit
          (binaryLengthTwoQuotientOfOrbitFin idx)).i,
        (binaryLengthTwoRepresentativeOrbit
          (binaryLengthTwoQuotientOfOrbitFin idx)).j,
        binaryOrbitDistanceIndex (binaryLengthTwoRepresentativeOrbit
          (binaryLengthTwoQuotientOfOrbitFin idx))] := by
  fin_cases idx <;> native_decide

def binaryLengthTwoOrbitList : List (BinaryOrbitIndex 2) := [
  binaryLengthTwoIdx000,
  binaryLengthTwoIdx010,
  binaryLengthTwoIdx020,
  binaryLengthTwoIdx100,
  binaryLengthTwoIdx110,
  binaryLengthTwoIdx111,
  binaryLengthTwoIdx121,
  binaryLengthTwoIdx200,
  binaryLengthTwoIdx211,
  binaryLengthTwoIdx222
]

theorem binaryLengthTwoOrbitList_length :
    binaryLengthTwoOrbitList.length = 10 := by
  native_decide

end

end GijswijtPolak2025
end SDP
end CoveringCodes
