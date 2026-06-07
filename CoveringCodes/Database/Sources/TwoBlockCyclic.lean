import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Two-block cyclic upper source for `K_q(3,1)`

This source proves the general construction behind the explicit small
`K_q(3,1)` upper seeds.  Split the alphabet into blocks of sizes `q / 2` and
`q - q / 2`; in each block, use the cyclic length-three codewords
`(row, row + z, z)`.
-/

namespace CoveringCodes
namespace Database

private theorem hammingDist_vec3_le_one_of_eq01 {q : Nat} (x c : QaryWord q 3)
    (h0 : x 0 = c 0) (h1 : x 1 = c 1) : hammingDist x c ≤ 1 := by
  let F : Finset (Fin 3) := Finset.univ.filter (fun i => x i ≠ c i)
  have hsubset : F ⊆ ({(2 : Fin 3)} : Finset (Fin 3)) := by
    intro i hi
    simp [F] at hi
    fin_cases i <;> simp_all
  have hcard := Finset.card_le_card hsubset
  simpa [F] using hcard

private theorem hammingDist_vec3_le_one_of_eq02 {q : Nat} (x c : QaryWord q 3)
    (h0 : x 0 = c 0) (h2 : x 2 = c 2) : hammingDist x c ≤ 1 := by
  let F : Finset (Fin 3) := Finset.univ.filter (fun i => x i ≠ c i)
  have hsubset : F ⊆ ({(1 : Fin 3)} : Finset (Fin 3)) := by
    intro i hi
    simp [F] at hi
    fin_cases i <;> simp_all
  have hcard := Finset.card_le_card hsubset
  simpa [F] using hcard

private theorem hammingDist_vec3_le_one_of_eq12 {q : Nat} (x c : QaryWord q 3)
    (h1 : x 1 = c 1) (h2 : x 2 = c 2) : hammingDist x c ≤ 1 := by
  let F : Finset (Fin 3) := Finset.univ.filter (fun i => x i ≠ c i)
  have hsubset : F ⊆ ({(0 : Fin 3)} : Finset (Fin 3)) := by
    intro i hi
    simp [F] at hi
    fin_cases i <;> simp_all
  have hcard := Finset.card_le_card hsubset
  simpa [F] using hcard

private theorem mod_add_sub_cancel {m r c : Nat} (hm : 0 < m) (hr : r < m) (hc : c < m) :
    (r + ((m - r + c) % m)) % m = c := by
  have hcong1 : r + ((m - r + c) % m) ≡ c [MOD m] := by
    calc
      r + ((m - r + c) % m) ≡ r + (m - r + c) [MOD m] := by
        exact (Nat.ModEq.refl r).add (Nat.mod_modEq (m - r + c) m)
      _ = m + c := by omega
      _ ≡ c [MOD m] := by simp
  have hcong : (r + ((m - r + c) % m)) % m ≡ c [MOD m] :=
    (Nat.mod_modEq (r + ((m - r + c) % m)) m).trans hcong1
  exact hcong.eq_of_lt_of_lt (Nat.mod_lt _ hm) hc

private theorem mod_sub_add_cancel {m r c : Nat} (hm : 0 < m) (hr : r < m) (hc : c < m) :
    (((m - r + c) % m) + r) % m = c := by
  rw [Nat.add_comm]
  exact mod_add_sub_cancel hm hr hc

private def blockEmbed (q start size : Nat) (h : start + size ≤ q) (i : Fin size) : Fin q :=
  ⟨start + i.val, by have hi := i.isLt; omega⟩

private def cyclicBlockWord (q start size : Nat) (h : start + size ≤ q)
    (row z : Fin size) : QaryWord q 3 :=
  ![blockEmbed q start size h row,
    blockEmbed q start size h ⟨(row.val + z.val) % size, by
      have hrow := row.isLt
      have hpos : 0 < size := by omega
      exact Nat.mod_lt _ hpos⟩,
    blockEmbed q start size h z]

private def cyclicBlockCode (q start size : Nat) (h : start + size ≤ q) :
    Finset (QaryWord q 3) :=
  (Finset.univ : Finset (Fin size × Fin size)).image (fun p =>
    cyclicBlockWord q start size h p.1 p.2)

private theorem cyclicBlockCode_mem (q start size : Nat) (h : start + size ≤ q)
    (row z : Fin size) :
    cyclicBlockWord q start size h row z ∈ cyclicBlockCode q start size h := by
  simp [cyclicBlockCode]

private theorem cyclicBlockCode_card_le (q start size : Nat) (h : start + size ≤ q) :
    (cyclicBlockCode q start size h).card ≤ size * size := by
  calc
    (cyclicBlockCode q start size h).card ≤
        (Finset.univ : Finset (Fin size × Fin size)).card := by
      simpa [cyclicBlockCode] using
        (Finset.card_image_le (s := (Finset.univ : Finset (Fin size × Fin size)))
          (f := fun p => cyclicBlockWord q start size h p.1 p.2))
    _ = size * size := by simp [Fintype.card_prod, Fintype.card_fin]

private theorem cyclicBlock_pair01 {q start size : Nat} (h : start + size ≤ q)
    (x : QaryWord q 3)
    (h0lo : start ≤ (x 0).val) (h0hi : (x 0).val < start + size)
    (h1lo : start ≤ (x 1).val) (h1hi : (x 1).val < start + size) :
    ∃ c : QaryWord q 3, c ∈ cyclicBlockCode q start size h ∧ hammingDist x c ≤ 1 := by
  have hpos : 0 < size := by omega
  let row : Fin size := ⟨(x 0).val - start, by omega⟩
  let col : Fin size := ⟨(x 1).val - start, by omega⟩
  let z : Fin size := ⟨(size - row.val + col.val) % size, Nat.mod_lt _ hpos⟩
  let c := cyclicBlockWord q start size h row z
  refine ⟨c, cyclicBlockCode_mem q start size h row z, ?_⟩
  apply hammingDist_vec3_le_one_of_eq01
  · apply Fin.ext
    simp [c, cyclicBlockWord, blockEmbed, row]
    omega
  · apply Fin.ext
    have hmod : (row.val + ((size - row.val + col.val) % size)) % size = col.val :=
      mod_add_sub_cancel hpos row.isLt col.isLt
    simp [c, cyclicBlockWord, blockEmbed, row, col, z, hmod]
    omega

private theorem cyclicBlock_pair02 {q start size : Nat} (h : start + size ≤ q)
    (x : QaryWord q 3)
    (h0lo : start ≤ (x 0).val) (h0hi : (x 0).val < start + size)
    (h2lo : start ≤ (x 2).val) (h2hi : (x 2).val < start + size) :
    ∃ c : QaryWord q 3, c ∈ cyclicBlockCode q start size h ∧ hammingDist x c ≤ 1 := by
  let row : Fin size := ⟨(x 0).val - start, by omega⟩
  let z : Fin size := ⟨(x 2).val - start, by omega⟩
  let c := cyclicBlockWord q start size h row z
  refine ⟨c, cyclicBlockCode_mem q start size h row z, ?_⟩
  apply hammingDist_vec3_le_one_of_eq02
  · apply Fin.ext
    simp [c, cyclicBlockWord, blockEmbed, row]
    omega
  · apply Fin.ext
    simp [c, cyclicBlockWord, blockEmbed, z]
    omega

private theorem cyclicBlock_pair12 {q start size : Nat} (h : start + size ≤ q)
    (x : QaryWord q 3)
    (h1lo : start ≤ (x 1).val) (h1hi : (x 1).val < start + size)
    (h2lo : start ≤ (x 2).val) (h2hi : (x 2).val < start + size) :
    ∃ c : QaryWord q 3, c ∈ cyclicBlockCode q start size h ∧ hammingDist x c ≤ 1 := by
  have hpos : 0 < size := by omega
  let col : Fin size := ⟨(x 1).val - start, by omega⟩
  let z : Fin size := ⟨(x 2).val - start, by omega⟩
  let row : Fin size := ⟨(size - z.val + col.val) % size, Nat.mod_lt _ hpos⟩
  let c := cyclicBlockWord q start size h row z
  refine ⟨c, cyclicBlockCode_mem q start size h row z, ?_⟩
  apply hammingDist_vec3_le_one_of_eq12
  · apply Fin.ext
    have hmod : (((size - z.val + col.val) % size) + z.val) % size = col.val :=
      mod_sub_add_cancel hpos z.isLt col.isLt
    simp [c, cyclicBlockWord, blockEmbed, row, col, z, hmod]
    omega
  · apply Fin.ext
    simp [c, cyclicBlockWord, blockEmbed, z]
    omega

private def twoBlockCyclicCode (q : Nat) : Finset (QaryWord q 3) :=
  let a := q / 2
  let b := q - a
  cyclicBlockCode q 0 a (by have ha : q / 2 ≤ q := Nat.div_le_self q 2; omega) ∪
    cyclicBlockCode q a b (by have ha : q / 2 ≤ q := Nat.div_le_self q 2; omega)

private theorem twoBlockCyclicCode_card_le (q : Nat) :
    (twoBlockCyclicCode q).card ≤ (q / 2) * (q / 2) + (q - q / 2) * (q - q / 2) := by
  let a := q / 2
  let b := q - a
  have hA : 0 + a ≤ q := by
    have ha : a ≤ q := by
      dsimp [a]
      exact Nat.div_le_self q 2
    omega
  have hB : a + b ≤ q := by
    have ha : a ≤ q := by
      dsimp [a]
      exact Nat.div_le_self q 2
    omega
  calc
    (twoBlockCyclicCode q).card
        ≤ (cyclicBlockCode q 0 a hA).card + (cyclicBlockCode q a b hB).card := by
      simpa [twoBlockCyclicCode, a, b] using
        (Finset.card_union_le (cyclicBlockCode q 0 a hA) (cyclicBlockCode q a b hB))
    _ ≤ a * a + b * b := by
      exact Nat.add_le_add (cyclicBlockCode_card_le q 0 a hA) (cyclicBlockCode_card_le q a b hB)
    _ = (q / 2) * (q / 2) + (q - q / 2) * (q - q / 2) := by simp [a, b]

private theorem twoBlockCyclicCode_covers (q : Nat) : CoversFinset (twoBlockCyclicCode q) 1 := by
  intro x
  let a := q / 2
  let b := q - a
  have ha : a ≤ q := by
    dsimp [a]
    exact Nat.div_le_self q 2
  have hA : 0 + a ≤ q := by omega
  have hB : a + b ≤ q := by omega
  have h0ltq : (x 0).val < q := (x 0).isLt
  have h1ltq : (x 1).val < q := (x 1).isLt
  have h2ltq : (x 2).val < q := (x 2).isLt
  by_cases h0A : (x 0).val < a
  · by_cases h1A : (x 1).val < a
    · rcases cyclicBlock_pair01 hA x (by omega) (by omega) (by omega) (by omega) with
        ⟨c, hc, hd⟩
      refine ⟨c, ?_, hd⟩
      have hmem : c ∈ cyclicBlockCode q 0 a hA ∪ cyclicBlockCode q a b hB :=
        Finset.mem_union.mpr (Or.inl hc)
      simpa [twoBlockCyclicCode, a, b] using hmem
    · by_cases h2A : (x 2).val < a
      · rcases cyclicBlock_pair02 hA x (by omega) (by omega) (by omega) (by omega) with
          ⟨c, hc, hd⟩
        refine ⟨c, ?_, hd⟩
        have hmem : c ∈ cyclicBlockCode q 0 a hA ∪ cyclicBlockCode q a b hB :=
          Finset.mem_union.mpr (Or.inl hc)
        simpa [twoBlockCyclicCode, a, b] using hmem
      · rcases cyclicBlock_pair12 hB x (by omega) (by omega) (by omega) (by omega) with
          ⟨c, hc, hd⟩
        refine ⟨c, ?_, hd⟩
        have hmem : c ∈ cyclicBlockCode q 0 a hA ∪ cyclicBlockCode q a b hB :=
          Finset.mem_union.mpr (Or.inr hc)
        simpa [twoBlockCyclicCode, a, b] using hmem
  · by_cases h1A : (x 1).val < a
    · by_cases h2A : (x 2).val < a
      · rcases cyclicBlock_pair12 hA x (by omega) (by omega) (by omega) (by omega) with
          ⟨c, hc, hd⟩
        refine ⟨c, ?_, hd⟩
        have hmem : c ∈ cyclicBlockCode q 0 a hA ∪ cyclicBlockCode q a b hB :=
          Finset.mem_union.mpr (Or.inl hc)
        simpa [twoBlockCyclicCode, a, b] using hmem
      · rcases cyclicBlock_pair02 hB x (by omega) (by omega) (by omega) (by omega) with
          ⟨c, hc, hd⟩
        refine ⟨c, ?_, hd⟩
        have hmem : c ∈ cyclicBlockCode q 0 a hA ∪ cyclicBlockCode q a b hB :=
          Finset.mem_union.mpr (Or.inr hc)
        simpa [twoBlockCyclicCode, a, b] using hmem
    · rcases cyclicBlock_pair01 hB x (by omega) (by omega) (by omega) (by omega) with
        ⟨c, hc, hd⟩
      refine ⟨c, ?_, hd⟩
      have hmem : c ∈ cyclicBlockCode q 0 a hA ∪ cyclicBlockCode q a b hB :=
        Finset.mem_union.mpr (Or.inr hc)
      simpa [twoBlockCyclicCode, a, b] using hmem

def twoBlockCyclic331UpperName : String :=
  "lean_two_block_cyclic"

def twoBlockCyclic331Upper (q n r : Nat) : Nat :=
  if n = 3 ∧ r = 1 then (q / 2) * (q / 2) + (q - q / 2) * (q - q / 2)
  else trivialUpper q n r

private theorem twoBlockCyclic331Upper_at (q : Nat) :
    QaryKUpper q 3 1 ((q / 2) * (q / 2) + (q - q / 2) * (q - q / 2)) :=
  ⟨twoBlockCyclicCode q, twoBlockCyclicCode_card_le q, twoBlockCyclicCode_covers q⟩

theorem twoBlockCyclic331Upper_valid (q n r : Nat) :
    QaryKUpper q n r (twoBlockCyclic331Upper q n r) := by
  by_cases h : n = 3 ∧ r = 1
  · rcases h with ⟨rfl, rfl⟩
    simpa [twoBlockCyclic331Upper] using twoBlockCyclic331Upper_at q
  · simpa [twoBlockCyclic331Upper, h] using trivialUpper_valid q n r

def twoBlockCyclic331UpperSource : UpperBoundSource where
  value := twoBlockCyclic331Upper
  trace := fun q n r =>
    .primitive twoBlockCyclic331UpperName
      (twoBlockCyclic331Upper_valid q n r)

end Database
end CoveringCodes
