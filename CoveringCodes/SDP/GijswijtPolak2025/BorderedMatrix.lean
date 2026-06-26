import CoveringCodes.SDP.GijswijtPolak2025.PSD

/-!
# Bordered matrices
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

/-- Diagonal vector of a square matrix. -/
def diagVec {ι : Type} [Fintype ι] (M : Matrix ι ι Rat) : ι -> Rat :=
  fun i => M i i

/-- The bordered matrix `[ c diag(M)^T ; diag(M) M ]`, indexed by `Option ι`. -/
def bordered {ι : Type} [Fintype ι]
    (c : Rat) (M : Matrix ι ι Rat) : Matrix (Option ι) (Option ι) Rat
  | none, none => c
  | none, some j => M j j
  | some i, none => M i i
  | some i, some j => M i j

@[simp]
theorem bordered_none_none {ι : Type} [Fintype ι]
    (c : Rat) (M : Matrix ι ι Rat) :
    bordered c M none none = c := by
  rfl

@[simp]
theorem bordered_some_some {ι : Type} [Fintype ι]
    (c : Rat) (M : Matrix ι ι Rat) (i j : ι) :
    bordered c M (some i) (some j) = M i j := by
  rfl

@[simp]
theorem bordered_some_none {ι : Type} [Fintype ι]
    (c : Rat) (M : Matrix ι ι Rat) (i : ι) :
    bordered c M (some i) none = M i i := by
  rfl

@[simp]
theorem bordered_none_some {ι : Type} [Fintype ι]
    (c : Rat) (M : Matrix ι ι Rat) (j : ι) :
    bordered c M none (some j) = M j j := by
  rfl

theorem quadraticForm_bordered_some {ι : Type} [Fintype ι]
    (c : Rat) (M : Matrix ι ι Rat) (x : ι -> Rat) :
    quadraticForm (bordered c M)
      (fun o : Option ι => Option.rec 0 x o) =
        quadraticForm M x := by
  unfold quadraticForm bordered
  simp

theorem quadraticForm_bordered_none {ι : Type} [Fintype ι]
    (c : Rat) (M : Matrix ι ι Rat) :
    quadraticForm (bordered c M)
      (fun o : Option ι => Option.rec 1 (fun _ => 0) o) =
        c := by
  unfold quadraticForm bordered
  simp

theorem RatPSD.of_bordered {ι : Type} [Fintype ι]
    {c : Rat} {M : Matrix ι ι Rat}
    (h : RatPSD (bordered c M)) :
    RatPSD M := by
  intro x
  simpa [quadraticForm_bordered_some c M x] using
    h (fun o : Option ι => Option.rec 0 x o)

theorem RatPSD.bordered_corner_nonneg {ι : Type} [Fintype ι]
    {c : Rat} {M : Matrix ι ι Rat}
    (h : RatPSD (bordered c M)) :
    0 <= c := by
  simpa [quadraticForm_bordered_none c M] using
    h (fun o : Option ι => Option.rec 1 (fun _ => 0) o)

end GijswijtPolak2025
end SDP
end CoveringCodes
