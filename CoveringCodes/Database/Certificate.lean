import CoveringCodes.Database.Trace

namespace CoveringCodes.Database

structure UpperCert (q n r : Nat) where
  value : Nat
  trace : UpperTrace q n r value

structure LowerCert (q n r : Nat) where
  value : Nat
  trace : LowerTrace q n r value

structure BestCert (q n r : Nat) where
  lower : LowerCert q n r
  upper : UpperCert q n r

def UpperCert.valid (c : UpperCert q n r) : QaryKUpper q n r c.value :=
  c.trace.valid

def LowerCert.valid (c : LowerCert q n r) : QaryKLower q n r c.value :=
  c.trace.valid

theorem BestCert.consistent (b : BestCert q n r) : b.lower.value ≤ b.upper.value := by
  rcases b.upper.valid with ⟨C, hcard, hcov⟩
  exact (b.lower.valid C hcov).trans hcard

-- Certificate selection helpers

def UpperCert.best (a b : UpperCert q n r) : UpperCert q n r :=
  if b.value ≤ a.value then b else a

def LowerCert.best (a b : LowerCert q n r) : LowerCert q n r :=
  if a.value ≤ b.value then b else a

-- Relation-lift helpers

def UpperCert.radiusMono (c : UpperCert q n r) (hrs : r ≤ s) : UpperCert q n s :=
  { value := c.value, trace := .radiusMono hrs c.trace }

def LowerCert.radiusBack (c : LowerCert q n s) (hrs : r ≤ s) : LowerCert q n r :=
  { value := c.value, trace := .radiusBack hrs c.trace }

def UpperCert.puncture (c : UpperCert q (n + 1) r) (hq : 0 < q) : UpperCert q n r :=
  { value := c.value, trace := .puncture hq c.trace }

def LowerCert.lengthBack (c : LowerCert q n r) (hq : 0 < q) : LowerCert q (n + 1) r :=
  { value := c.value, trace := .lengthBack hq c.trace }

def UpperCert.alphabetProject (c : UpperCert q n r) (ha : 0 < a) (haq : a ≤ q) :
    UpperCert a n r :=
  { value := c.value, trace := .alphabetProject ha haq c.trace }

def UpperCert.lengthenFree (c : UpperCert q n r) : UpperCert q (n + 1) r :=
  { value := q * c.value
    trace := by
      have h : q ^ 1 * c.value = q * c.value := by ring
      exact h ▸ .lengthenFreeN 1 c.trace }

def LowerCert.alphabetBack (c : LowerCert a n r) (ha : 0 < a) (haq : a ≤ q) :
    LowerCert q n r :=
  { value := c.value, trace := .alphabetBack ha haq c.trace }

def UpperCert.lengthenDummy (c : UpperCert q n r) (hq : 0 < q) :
    UpperCert q (n + 1) (r + 1) :=
  { value := c.value, trace := .lengthenDummyN 1 hq c.trace }

def LowerCert.dummyBack (c : LowerCert q (n + 1) (r + 1)) (hq : 0 < q) :
    LowerCert q n r :=
  { value := c.value, trace := .dummyBack hq c.trace }

def LowerCert.dummyBackN (k : Nat) (c : LowerCert q (n + k) (r + k)) (hq : 0 < q) :
    LowerCert q n r :=
  { value := c.value, trace := .dummyBackN k hq c.trace }

def LowerCert.lengthenFreeBack (c : LowerCert q (n + 1) r) (hq : 0 < q) :
    LowerCert q n r :=
  { value := natCeilDiv c.value q, trace := .lengthenFreeBack hq c.trace }

def LowerCert.lengthenFreeBackN (k : Nat) (c : LowerCert q (n + k) r) (hq : 0 < q) :
    LowerCert q n r :=
  { value := natCeilDiv c.value (q ^ k), trace := .lengthenFreeBackN k hq c.trace }

-- Alphabet expansion helper

def UpperCert.alphabetExpand (c : UpperCert q n r) {Q s : Nat}
    (hq : 0 < q) (hs : 0 < s) (hQ : Q ≤ s * q) (hQpos : 0 < Q) :
    UpperCert Q n r :=
  { value := s ^ n * c.value, trace := .alphabetExpand hq hs hQ hQpos c.trace }

-- Direct-product and lower-factor helpers

def UpperCert.directProduct
    (a : UpperCert q n1 r1) (b : UpperCert q n2 r2) :
    UpperCert q (n1 + n2) (r1 + r2) :=
  { value := a.value * b.value, trace := .directProduct a.trace b.trace }

def LowerCert.lowerDirectProductLeft
    (cLarge : LowerCert q (n1 + n2) (r1 + r2))
    (cRight : UpperCert q n2 r2)
    (hU2pos : 0 < cRight.value) :
    LowerCert q n1 r1 :=
  { value := natCeilDiv cLarge.value cRight.value
    trace  := .lowerDirectProductLeft hU2pos cLarge.trace cRight.trace }

def LowerCert.lowerDirectProductRight
    (cLarge : LowerCert q (n1 + n2) (r1 + r2))
    (cLeft : UpperCert q n1 r1)
    (hU1pos : 0 < cLeft.value) :
    LowerCert q n2 r2 :=
  { value := natCeilDiv cLarge.value cLeft.value
    trace  := .lowerDirectProductRight hU1pos cLarge.trace cLeft.trace }

-- Block transform helpers

def UpperCert.blockGroup (c : UpperCert q (m * N) r) : UpperCert (q ^ m) N r :=
  { value := c.value, trace := .blockGroup c.trace }

def UpperCert.blockUngroup (c : UpperCert (q ^ m) N R) : UpperCert q (m * N) (m * R) :=
  { value := c.value, trace := .blockUngroup c.trace }

def LowerCert.lowerBlockGroup (c : LowerCert (q ^ m) N r) : LowerCert q (m * N) r :=
  { value := c.value, trace := .lowerBlockGroup c.trace }

def LowerCert.lowerBlockUngroup (c : LowerCert q (m * N) (m * R)) : LowerCert (q ^ m) N R :=
  { value := c.value, trace := .lowerBlockUngroup c.trace }

end CoveringCodes.Database
