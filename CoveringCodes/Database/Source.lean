import CoveringCodes.CoveringNumber
import CoveringCodes.Database.Trace

namespace CoveringCodes
namespace Database

/-- A proof-carrying source of lower bounds for K_q(n,r), with replayable trace. -/
structure LowerBoundSource where
  value : Nat → Nat → Nat → Nat
  trace : ∀ q n r, LowerTrace q n r (value q n r)

def LowerBoundSource.valid (S : LowerBoundSource) (q n r : Nat) :
    QaryKLower q n r (S.value q n r) :=
  (S.trace q n r).valid

def LowerBoundSource.steps (S : LowerBoundSource) (q n r : Nat) : List String :=
  (S.trace q n r).render

def LowerBoundSource.name (S : LowerBoundSource) (q n r : Nat) : String :=
  (S.steps q n r).getLast?.getD ""

/-- A proof-carrying source of upper bounds for K_q(n,r), with replayable trace. -/
structure UpperBoundSource where
  value : Nat → Nat → Nat → Nat
  trace : ∀ q n r, UpperTrace q n r (value q n r)

def UpperBoundSource.valid (S : UpperBoundSource) (q n r : Nat) :
    QaryKUpper q n r (S.value q n r) :=
  (S.trace q n r).valid

def UpperBoundSource.steps (S : UpperBoundSource) (q n r : Nat) : List String :=
  (S.trace q n r).render

def UpperBoundSource.name (S : UpperBoundSource) (q n r : Nat) : String :=
  (S.steps q n r).getLast?.getD ""

/-- Combine two lower-bound sources by taking the pointwise maximum. -/
def LowerBoundSource.max (A B : LowerBoundSource) : LowerBoundSource where
  value q n r := Nat.max (A.value q n r) (B.value q n r)
  trace := fun q n r => by
    by_cases h : B.value q n r ≤ A.value q n r
    · have heq : Nat.max (A.value q n r) (B.value q n r) = A.value q n r :=
        Nat.max_eq_left h
      simp only [heq]; exact A.trace q n r
    · have hle : A.value q n r ≤ B.value q n r := Nat.le_of_not_le h
      have heq : Nat.max (A.value q n r) (B.value q n r) = B.value q n r :=
        Nat.max_eq_right hle
      simp only [heq]; exact B.trace q n r

/-- Combine two upper-bound sources by taking the pointwise minimum. -/
def UpperBoundSource.min (A B : UpperBoundSource) : UpperBoundSource where
  value q n r := Nat.min (A.value q n r) (B.value q n r)
  trace := fun q n r => by
    by_cases h : A.value q n r ≤ B.value q n r
    · have heq : Nat.min (A.value q n r) (B.value q n r) = A.value q n r :=
        Nat.min_eq_left h
      simp only [heq]; exact A.trace q n r
    · have hle : B.value q n r ≤ A.value q n r := Nat.le_of_not_le h
      have heq : Nat.min (A.value q n r) (B.value q n r) = B.value q n r :=
        Nat.min_eq_right hle
      simp only [heq]; exact B.trace q n r

/-- A certified lower-bound answer for a specific (q, n, r). -/
structure LowerCandidate (q n r : Nat) where
  value : Nat
  proof : QaryKLower q n r value
  name  : String

/-- A certified upper-bound answer for a specific (q, n, r). -/
structure UpperCandidate (q n r : Nat) where
  value : Nat
  proof : QaryKUpper q n r value
  name  : String

/-- Evaluate a lower-bound source at specific parameters. -/
def LowerBoundSource.at (S : LowerBoundSource) (q n r : Nat) : LowerCandidate q n r :=
  { value := S.value q n r, proof := S.valid q n r, name := S.name q n r }

/-- Evaluate an upper-bound source at specific parameters. -/
def UpperBoundSource.at (S : UpperBoundSource) (q n r : Nat) : UpperCandidate q n r :=
  { value := S.value q n r, proof := S.valid q n r, name := S.name q n r }

end Database
end CoveringCodes
