namespace CoveringCodes.Database

structure BoundKey where
  q : Nat
  n : Nat
  r : Nat
  deriving DecidableEq, Repr

def displayQMax : Nat := 21
def displayNMax : Nat := 33
def displayRMax : Nat := 10

def computeQMax : Nat := 21
def computeNMax : Nat := 48
def computeRMax : Nat := 48

def maxPasses : Nat :=
  (computeQMax + 1) * (computeNMax + 1) * (computeRMax + 1)

def BoundKey.inComputeRange (k : BoundKey) : Bool :=
  k.q ≤ computeQMax && k.n ≤ computeNMax && k.r ≤ computeRMax

def BoundKey.inDisplayRange (k : BoundKey) : Bool :=
  k.q ≤ displayQMax && k.n ≤ displayNMax && k.r ≤ displayRMax

end CoveringCodes.Database
