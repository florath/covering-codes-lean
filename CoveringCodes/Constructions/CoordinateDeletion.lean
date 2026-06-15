import CoveringCodes.CoveringNumber
import Mathlib.Data.Fin.Tuple.Basic

/-!
# Coordinate deletion and insertion

Small structural constructions used by shortening rules.  For a distinguished
coordinate `j : Fin (n+1)`, `deleteCoord j` removes that coordinate and
`insertCoord j a` inserts the symbol `a` at that coordinate.
-/

namespace CoveringCodes

section CoordinateDeletion

variable {q n : ℕ}

/-- Delete coordinate `j` from a length-`n+1` q-ary word. -/
def deleteCoord (j : Fin (n + 1)) (w : QaryWord q (n + 1)) : QaryWord q n :=
  j.removeNth w

/-- Insert symbol `a` at coordinate `j` in a length-`n` q-ary word. -/
def insertCoord (j : Fin (n + 1)) (a : Fin q) (x : QaryWord q n) : QaryWord q (n + 1) :=
  j.insertNth a x

@[simp]
private theorem insertCoord_self (j : Fin (n + 1)) (a : Fin q) (x : QaryWord q n) :
    insertCoord j a x j = a := by
  simp [insertCoord]

@[simp]
private theorem insertCoord_succAbove (j : Fin (n + 1)) (a : Fin q) (x : QaryWord q n)
    (i : Fin n) :
    insertCoord j a x (j.succAbove i) = x i := by
  simp [insertCoord]

@[simp]
private theorem deleteCoord_apply (j : Fin (n + 1)) (w : QaryWord q (n + 1))
    (i : Fin n) :
    deleteCoord j w i = w (j.succAbove i) := rfl

private theorem succAbove_injective (j : Fin (n + 1)) :
    Function.Injective (fun i : Fin n => j.succAbove i) := by
  intro i k h
  have h' := congrArg (fun t => j.insertNth i (fun s : Fin n => s) t) h
  simpa using h'

/-- If every full word must already differ in the inserted coordinate, then deleting that
coordinate drops the Hamming distance by at least one. -/
theorem dist_deleteCoord_insertCoord_add_one_le (j : Fin (n + 1)) (a : Fin q)
    (x : QaryWord q n) (c : QaryWord q (n + 1)) (hcj : c j ≠ a) :
    dist x (deleteCoord j c) + 1 ≤ dist (insertCoord j a x) c := by
  classical
  simp only [dist, hammingDist]
  let Sdel : Finset (Fin n) :=
    Finset.univ.filter (fun i : Fin n => x i ≠ deleteCoord j c i)
  let Sfull : Finset (Fin (n + 1)) :=
    Finset.univ.filter (fun k : Fin (n + 1) => insertCoord j a x k ≠ c k)
  have hsub : insert j (Sdel.image (fun i : Fin n => j.succAbove i)) ⊆ Sfull := by
    intro k hk
    rw [Finset.mem_insert, Finset.mem_image] at hk
    simp only [Sfull, Sdel, Finset.mem_filter, Finset.mem_univ, true_and] at *
    rcases hk with rfl | ⟨i, hi, rfl⟩
    · simpa [insertCoord] using hcj.symm
    · simpa [deleteCoord, insertCoord] using hi
  have hnot : j ∉ Sdel.image (fun i : Fin n => j.succAbove i) := by
    intro hj
    rcases Finset.mem_image.mp hj with ⟨i, _hi, hij⟩
    exact Fin.succAbove_ne j i hij
  have hcard_insert :
      (insert j (Sdel.image (fun i : Fin n => j.succAbove i))).card = Sdel.card + 1 := by
    rw [Finset.card_insert_of_notMem hnot]
    rw [Finset.card_image_of_injective _ (succAbove_injective j)]
  have hle : Sdel.card + 1 ≤ Sfull.card := by
    rw [← hcard_insert]
    exact Finset.card_le_card hsub
  simpa [Sdel, Sfull, deleteCoord] using hle

/-- Deleting a coordinate cannot increase Hamming distance from an inserted word. -/
theorem dist_deleteCoord_le_dist_insertCoord (j : Fin (n + 1)) (a : Fin q)
    (x : QaryWord q n) (c : QaryWord q (n + 1)) :
    dist x (deleteCoord j c) ≤ dist (insertCoord j a x) c := by
  classical
  simp only [dist, hammingDist]
  let Sdel : Finset (Fin n) :=
    Finset.univ.filter (fun i : Fin n => x i ≠ deleteCoord j c i)
  let Sfull : Finset (Fin (n + 1)) :=
    Finset.univ.filter (fun k : Fin (n + 1) => insertCoord j a x k ≠ c k)
  have hsub : Sdel.image (fun i : Fin n => j.succAbove i) ⊆ Sfull := by
    intro k hk
    rcases Finset.mem_image.mp hk with ⟨i, hi, rfl⟩
    simp only [Sdel, Sfull, Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
    simpa [deleteCoord, insertCoord] using hi
  calc
    Sdel.card = (Sdel.image (fun i : Fin n => j.succAbove i)).card := by
      rw [Finset.card_image_of_injective _ (succAbove_injective j)]
    _ ≤ Sfull.card := Finset.card_le_card hsub

end CoordinateDeletion

end CoveringCodes
