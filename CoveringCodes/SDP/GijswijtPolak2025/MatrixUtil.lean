import Mathlib.Data.Matrix.Basic
import Mathlib.Tactic

/-!
# Small exact matrix utilities over `Rat`
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

/-- Dot product of finite rational vectors. -/
def dot {ι : Type} [Fintype ι] (x y : ι -> Rat) : Rat :=
  Finset.univ.sum (fun i => x i * y i)

/-- Quadratic form associated to a rational matrix. -/
def quadraticForm {ι : Type} [Fintype ι]
    (A : Matrix ι ι Rat) (x : ι -> Rat) : Rat :=
  Finset.univ.sum (fun i =>
    Finset.univ.sum (fun j => x i * A i j * x j))

/-- Entrywise matrix inner product over `Rat`. -/
def matrixInner {ι : Type} [Fintype ι]
    (A B : Matrix ι ι Rat) : Rat :=
  Finset.univ.sum (fun i =>
    Finset.univ.sum (fun j => A i j * B i j))

@[simp]
theorem dot_punit (x y : PUnit -> Rat) :
    dot x y = x PUnit.unit * y PUnit.unit := by
  simp [dot]

@[simp]
theorem quadraticForm_punit (A : Matrix PUnit PUnit Rat) (x : PUnit -> Rat) :
    quadraticForm A x = x PUnit.unit * A PUnit.unit PUnit.unit * x PUnit.unit := by
  simp [quadraticForm]

@[simp]
theorem matrixInner_punit (A B : Matrix PUnit PUnit Rat) :
    matrixInner A B = A PUnit.unit PUnit.unit * B PUnit.unit PUnit.unit := by
  simp [matrixInner]

end GijswijtPolak2025
end SDP
end CoveringCodes
