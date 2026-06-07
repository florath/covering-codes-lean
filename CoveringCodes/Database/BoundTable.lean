import CoveringCodes.Database.Certificate
import CoveringCodes.Database.Key
import CoveringCodes.Database.PrimitiveLower
import CoveringCodes.Database.PrimitiveUpper
import CoveringCodes.Database.Defs

namespace CoveringCodes.Database

-- Table entry wrappers

/-- Non-dependent wrapper for table storage. Traces are indexed by the key fields. -/
structure AnyBoundEntry where
  key        : BoundKey
  lowerValue : Nat
  upperValue : Nat
  lowerTrace : LowerTrace key.q key.n key.r lowerValue
  upperTrace : UpperTrace key.q key.n key.r upperValue

/-- Dependent result type for a certified bound at a specific (q, n, r). -/
structure CertifiedBoundEntry (q n r : Nat) where
  lower      : Nat
  upper      : Nat
  lowerTrace : LowerTrace q n r lower
  upperTrace : UpperTrace q n r upper

-- Conversion to dependent certified entries

def AnyBoundEntry.toCertified? (e : AnyBoundEntry) (q n r : Nat) :
    Option (CertifiedBoundEntry q n r) :=
  if hq : e.key.q = q then
    if hn : e.key.n = n then
      if hr : e.key.r = r then
        some { lower      := e.lowerValue
               upper      := e.upperValue
               lowerTrace := hq ▸ hn ▸ hr ▸ e.lowerTrace
               upperTrace := hq ▸ hn ▸ hr ▸ e.upperTrace }
      else none
    else none
  else none

-- Primitive initialization for one key

def initialEntry (q n r : Nat) : AnyBoundEntry :=
  { key        := { q, n, r }
    lowerValue := primitiveLower q n r
    upperValue := primitiveUpper q n r
    lowerTrace := .primitive (primitiveLowerName q n r) (primitiveLower_valid q n r)
    upperTrace := .primitive (primitiveUpperName q n r) (primitiveUpper_valid q n r) }

-- Table indexing helpers

def tableSize : Nat :=
  (computeQMax + 1) * (computeNMax + 1) * (computeRMax + 1)

def keyToIndex? (k : BoundKey) : Option Nat :=
  if k.inComputeRange then
    some (k.q * (computeNMax + 1) * (computeRMax + 1) + k.n * (computeRMax + 1) + k.r)
  else
    none

def indexToKey? (i : Nat) : Option BoundKey :=
  if i < tableSize then
    let r := i % (computeRMax + 1)
    let nr := i / (computeRMax + 1)
    let n := nr % (computeNMax + 1)
    let q := nr / (computeNMax + 1)
    some { q, n, r }
  else
    none

-- Initial closure table

def initialTable : Array AnyBoundEntry := Id.run do
  let mut arr : Array AnyBoundEntry := Array.mkEmpty tableSize
  for q in [:computeQMax + 1] do
    for n in [:computeNMax + 1] do
      for r in [:computeRMax + 1] do
        arr := arr.push (initialEntry q n r)
  return arr

-- Lookup in a table state

def lookupEntry? (table : Array AnyBoundEntry) (q n r : Nat) :
    Option (CertifiedBoundEntry q n r) :=
  match keyToIndex? { q, n, r } with
  | none => none
  | some i =>
    match table[i]? with
    | none => none
    | some e => e.toCertified? q n r

-- Upper-bound update helper

def updateUpperIfBetter
    (table : Array AnyBoundEntry)
    (target : BoundKey)
    (candidate : UpperCert target.q target.n target.r) :
    Array AnyBoundEntry :=
  match keyToIndex? target with
  | none => table
  | some i =>
    match table[i]? with
    | none => table
    | some e =>
      match e.toCertified? target.q target.n target.r with
      | none => table
      | some certified =>
        if candidate.value < certified.upper then
          table.set! i
            { key        := target
              lowerValue := certified.lower
              upperValue := candidate.value
              lowerTrace := certified.lowerTrace
              upperTrace := candidate.trace }
        else table

-- Lower-bound update helper

def updateLowerIfBetter
    (table : Array AnyBoundEntry)
    (target : BoundKey)
    (candidate : LowerCert target.q target.n target.r) :
    Array AnyBoundEntry :=
  match keyToIndex? target with
  | none => table
  | some i =>
    match table[i]? with
    | none => table
    | some e =>
      match e.toCertified? target.q target.n target.r with
      | none => table
      | some certified =>
        if certified.lower < candidate.value then
          table.set! i
            { key        := target
              lowerValue := candidate.value
              upperValue := certified.upper
              lowerTrace := candidate.trace
              upperTrace := certified.upperTrace }
        else table

-- Upper-radius relaxation pass

def relaxUpperRadiusOnce (table : Array AnyBoundEntry) : Array AnyBoundEntry := Id.run do
  let mut t := table
  for q in [:computeQMax + 1] do
    for n in [:computeNMax + 1] do
      for r in [:computeRMax] do
        match lookupEntry? t q n r with
        | none => pure ()
        | some e =>
          let cert : UpperCert q n r := { value := e.upper, trace := e.upperTrace }
          let promoted := cert.radiusMono (Nat.le_add_right r 1)
          t := updateUpperIfBetter t { q, n, r := r + 1 } promoted
  return t

-- Lower-radius relaxation pass

def relaxLowerRadiusOnce (table : Array AnyBoundEntry) : Array AnyBoundEntry := Id.run do
  let mut t := table
  for q in [:computeQMax + 1] do
    for n in [:computeNMax + 1] do
      for rPlus in [:computeRMax] do
        let r := rPlus + 1
        match lookupEntry? t q n r with
        | none => pure ()
        | some e =>
          let cert : LowerCert q n r := { value := e.lower, trace := e.lowerTrace }
          let backed := cert.radiusBack (Nat.le_add_right rPlus 1)
          t := updateLowerIfBetter t { q, n, r := rPlus } backed
  return t

-- Upper-length relaxation pass (puncture: n+1 → n)

def relaxUpperLengthOnce (table : Array AnyBoundEntry) : Array AnyBoundEntry := Id.run do
  let mut t := table
  for q in [:computeQMax + 1] do
    if hq : 0 < q then
      for n in [:computeNMax] do
        for r in [:computeRMax + 1] do
          match lookupEntry? t q (n + 1) r with
          | none => pure ()
          | some e =>
            let cert : UpperCert q (n + 1) r := { value := e.upper, trace := e.upperTrace }
            let punctured := cert.puncture hq
            t := updateUpperIfBetter t { q, n, r } punctured
  return t

-- Lower-length relaxation pass (back: n → n+1)

def relaxLowerLengthOnce (table : Array AnyBoundEntry) : Array AnyBoundEntry := Id.run do
  let mut t := table
  for q in [:computeQMax + 1] do
    if hq : 0 < q then
      for n in [:computeNMax] do
        for r in [:computeRMax + 1] do
          match lookupEntry? t q n r with
          | none => pure ()
          | some e =>
            let cert : LowerCert q n r := { value := e.lower, trace := e.lowerTrace }
            let backed := cert.lengthBack hq
            t := updateLowerIfBetter t { q, n := n + 1, r } backed
  return t

-- Upper-alphabet relaxation pass (project: q+1 → q)

def relaxUpperAlphabetOnce (table : Array AnyBoundEntry) : Array AnyBoundEntry := Id.run do
  let mut t := table
  for q in [:computeQMax] do
    if hq : 0 < q then
      for n in [:computeNMax + 1] do
        for r in [:computeRMax + 1] do
          match lookupEntry? t (q + 1) n r with
          | none => pure ()
          | some e =>
            let cert : UpperCert (q + 1) n r := { value := e.upper, trace := e.upperTrace }
            let projected := cert.alphabetProject hq (Nat.le_add_right q 1)
            t := updateUpperIfBetter t { q, n, r } projected
  return t

-- Lower-alphabet relaxation pass (back: q → q+1)

def relaxLowerAlphabetOnce (table : Array AnyBoundEntry) : Array AnyBoundEntry := Id.run do
  let mut t := table
  for q in [:computeQMax] do
    if hq : 0 < q then
      for n in [:computeNMax + 1] do
        for r in [:computeRMax + 1] do
          match lookupEntry? t q n r with
          | none => pure ()
          | some e =>
            let cert : LowerCert q n r := { value := e.lower, trace := e.lowerTrace }
            let backed := cert.alphabetBack hq (Nat.le_add_right q 1)
            t := updateLowerIfBetter t { q := q + 1, n, r } backed
  return t

-- Upper bound length-extension: K_q(n+1, r) ≤ q * K_q(n, r)

def relaxUpperLengthenFreeOnce (table : Array AnyBoundEntry) : Array AnyBoundEntry := Id.run do
  let mut t := table
  for entry in table do
    let q := entry.key.q
    let n := entry.key.n
    let r := entry.key.r
    if n + 1 ≤ computeNMax then
      let cert : UpperCert q n r := { value := entry.upperValue, trace := entry.upperTrace }
      let extended := cert.lengthenFree
      t := updateUpperIfBetter t { q, n := n + 1, r } extended
  return t

-- Upper dummy-coordinate lengthening: K_q(n,r) → K_q(n+1,r+1) same value

def relaxUpperLengthenDummyOnce (table : Array AnyBoundEntry) : Array AnyBoundEntry := Id.run do
  let mut t := table
  for q in [:computeQMax + 1] do
    if hq : 0 < q then
      for n in [:computeNMax] do
        for r in [:computeRMax] do
          match lookupEntry? t q n r with
          | none => pure ()
          | some e =>
            let cert : UpperCert q n r := { value := e.upper, trace := e.upperTrace }
            let extended := cert.lengthenDummy hq
            t := updateUpperIfBetter t { q, n := n + 1, r := r + 1 } extended
  return t

-- Lower dummy-coordinate back-propagation: K_q(n+1,r+1) → K_q(n,r) same value

def relaxLowerDummyBackOnce (table : Array AnyBoundEntry) : Array AnyBoundEntry := Id.run do
  let mut t := table
  for q in [:computeQMax + 1] do
    if hq : 0 < q then
      for n in [:computeNMax] do
        for r in [:computeRMax] do
          match lookupEntry? t q (n + 1) (r + 1) with
          | none => pure ()
          | some e =>
            let cert : LowerCert q (n + 1) (r + 1) := { value := e.lower, trace := e.lowerTrace }
            let backed := cert.dummyBack hq
            t := updateLowerIfBetter t { q, n, r } backed
  return t

-- Lower free-lengthening back-propagation: K_q(n+1,r) → K_q(n,r) value ⌈L/q⌉

def relaxLowerLengthenFreeBackOnce (table : Array AnyBoundEntry) : Array AnyBoundEntry := Id.run do
  let mut t := table
  for q in [:computeQMax + 1] do
    if hq : 0 < q then
      for n in [:computeNMax] do
        for r in [:computeRMax + 1] do
          match lookupEntry? t q (n + 1) r with
          | none => pure ()
          | some e =>
            let cert : LowerCert q (n + 1) r := { value := e.lower, trace := e.lowerTrace }
            let backed := cert.lengthenFreeBack hq
            t := updateLowerIfBetter t { q, n, r } backed
  return t

-- Alphabet expansion: K_Q(n,r) ≤ s^n * K_q(n,r) when Q ≤ s*q

def relaxUpperAlphabetExpandOnce (table : Array AnyBoundEntry) : Array AnyBoundEntry := Id.run do
  let mut t := table
  for q in [:computeQMax + 1] do
    if hq : 0 < q then
      for n in [:computeNMax + 1] do
        for r in [:computeRMax + 1] do
          match lookupEntry? t q n r with
          | none => pure ()
          | some e =>
            for Q in [:computeQMax + 1] do
              if Q > q && 0 < Q then
                let s := natCeilDiv Q q
                if hs : 0 < s then
                  if hQ : Q ≤ s * q then
                    if hQpos : 0 < Q then
                      let cert : UpperCert q n r := { value := e.upper, trace := e.upperTrace }
                      let expanded := cert.alphabetExpand hq hs hQ hQpos
                      t := updateUpperIfBetter t { q := Q, n, r } expanded
  return t

-- Block transforms

def maxAutomaticBlockSize : Nat := 4

-- Upper block group: K_{q^m}(N,r) ≤ K_q(m*N,r)

def relaxUpperBlockGroupOnce (table : Array AnyBoundEntry) : Array AnyBoundEntry := Id.run do
  let mut t := table
  for m in [2:maxAutomaticBlockSize + 1] do
    for q in [:computeQMax + 1] do
      if q ^ m ≤ computeQMax then
        for N in [:computeNMax + 1] do
          if m * N ≤ computeNMax then
            for r in [:computeRMax + 1] do
              match lookupEntry? t q (m * N) r with
              | none => pure ()
              | some e =>
                let outerTrace : UpperTrace (q ^ m) N r e.upper :=
                  @UpperTrace.blockGroup q m N r e.upper e.upperTrace
                let cert : UpperCert (q ^ m) N r := { value := e.upper, trace := outerTrace }
                t := updateUpperIfBetter t { q := q ^ m, n := N, r } cert
  return t

-- Lower block group back: K_q(m*N,r) ≥ L from K_{q^m}(N,r) ≥ L

def relaxLowerBlockGroupOnce (table : Array AnyBoundEntry) : Array AnyBoundEntry := Id.run do
  let mut t := table
  for m in [2:maxAutomaticBlockSize + 1] do
    for q in [:computeQMax + 1] do
      if q ^ m ≤ computeQMax then
        for N in [:computeNMax + 1] do
          if m * N ≤ computeNMax then
            for r in [:computeRMax + 1] do
              match lookupEntry? t (q ^ m) N r with
              | none => pure ()
              | some e =>
                let outerTrace : LowerTrace q (m * N) r e.lower :=
                  @LowerTrace.lowerBlockGroup q m N r e.lower e.lowerTrace
                let cert : LowerCert q (m * N) r := { value := e.lower, trace := outerTrace }
                t := updateLowerIfBetter t { q, n := m * N, r } cert
  return t

-- Upper block ungroup: K_q(m*N, m*R) ≤ K_{q^m}(N,R)

def relaxUpperBlockUngroupOnce (table : Array AnyBoundEntry) : Array AnyBoundEntry := Id.run do
  let mut t := table
  for m in [2:maxAutomaticBlockSize + 1] do
    for q in [:computeQMax + 1] do
      if q ^ m ≤ computeQMax then
        for N in [:computeNMax + 1] do
          if m * N ≤ computeNMax then
            for R in [:computeRMax + 1] do
              if m * R ≤ computeRMax then
                match lookupEntry? t (q ^ m) N R with
                | none => pure ()
                | some e =>
                  let outerTrace : UpperTrace q (m * N) (m * R) e.upper :=
                    @UpperTrace.blockUngroup q m N R e.upper e.upperTrace
                  let cert : UpperCert q (m * N) (m * R) := { value := e.upper, trace := outerTrace }
                  t := updateUpperIfBetter t { q, n := m * N, r := m * R } cert
  return t

-- Lower block ungroup back: K_{q^m}(N,R) ≥ L from K_q(m*N, m*R) ≥ L

def relaxLowerBlockUngroupOnce (table : Array AnyBoundEntry) : Array AnyBoundEntry := Id.run do
  let mut t := table
  for m in [2:maxAutomaticBlockSize + 1] do
    for q in [:computeQMax + 1] do
      if q ^ m ≤ computeQMax then
        for N in [:computeNMax + 1] do
          if m * N ≤ computeNMax then
            for R in [:computeRMax + 1] do
              if m * R ≤ computeRMax then
                match lookupEntry? t q (m * N) (m * R) with
                | none => pure ()
                | some e =>
                  let outerTrace : LowerTrace (q ^ m) N R e.lower :=
                    @LowerTrace.lowerBlockUngroup q m N R e.lower e.lowerTrace
                  let cert : LowerCert (q ^ m) N R := { value := e.lower, trace := outerTrace }
                  t := updateLowerIfBetter t { q := q ^ m, n := N, r := R } cert
  return t

-- Direct product (disabled by default — O(N²·R²·Q) per pass)

def enableDirectProductClosure : Bool := false

def relaxUpperDirectProductOnce (table : Array AnyBoundEntry) : Array AnyBoundEntry :=
  if !enableDirectProductClosure then table
  else Id.run do
    let mut t := table
    for q in [:computeQMax + 1] do
      for n1 in [:computeNMax + 1] do
        for n2 in [:computeNMax + 1 - n1] do
          for r1 in [:computeRMax + 1] do
            for r2 in [:computeRMax + 1 - r1] do
              if n1 = 0 && n2 = 0 then pure ()
              else
                match lookupEntry? t q n1 r1, lookupEntry? t q n2 r2 with
                | some e1, some e2 =>
                  if 0 < e1.upper && 0 < e2.upper then
                    let cert : UpperCert q (n1 + n2) (r1 + r2) :=
                      { value := e1.upper * e2.upper
                        trace  := .directProduct e1.upperTrace e2.upperTrace }
                    t := updateUpperIfBetter t { q, n := n1 + n2, r := r1 + r2 } cert
                | _, _ => pure ()
    return t

-- Full relaxation pass

def relaxOnce (table : Array AnyBoundEntry) : Array AnyBoundEntry :=
  table
  |> relaxUpperRadiusOnce
  |> relaxLowerRadiusOnce
  |> relaxUpperLengthOnce
  |> relaxLowerLengthOnce
  |> relaxUpperAlphabetOnce
  |> relaxLowerAlphabetOnce
  |> relaxUpperLengthenFreeOnce
  |> relaxUpperLengthenDummyOnce
  |> relaxLowerDummyBackOnce
  |> relaxLowerLengthenFreeBackOnce
  |> relaxUpperAlphabetExpandOnce
  |> relaxUpperBlockGroupOnce
  |> relaxLowerBlockGroupOnce
  |> relaxUpperBlockUngroupOnce
  |> relaxLowerBlockUngroupOnce
  |> relaxUpperDirectProductOnce

-- Bounded closure table

-- (_ : Unit) argument prevents eager initialization at module-load time.
-- Only table_gen calls this; the covering_codes binary uses GeneratedTable instead.
def boundTable (_ : Unit) : Array AnyBoundEntry := Id.run do
  let mut table := initialTable
  for _ in [:maxPasses] do
    table := relaxOnce table
  return table

-- Certified lookup with fallback

def lookupCertified? (q n r : Nat) : Option (CertifiedBoundEntry q n r) :=
  lookupEntry? (boundTable ()) q n r

def lookupCertified (q n r : Nat) : CertifiedBoundEntry q n r :=
  match lookupCertified? q n r with
  | some e => e
  | none =>
    { lower      := primitiveLower q n r
      upper      := primitiveUpper q n r
      lowerTrace := .primitive (primitiveLowerName q n r) (primitiveLower_valid q n r)
      upperTrace := .primitive (primitiveUpperName q n r) (primitiveUpper_valid q n r) }

-- Conversion to the public BestBounds API

def CertifiedBoundEntry.toBestBounds (e : CertifiedBoundEntry q n r) :
    BestBounds q n r :=
  { lower       := e.lower
    upper       := e.upper
    lower_proof := e.lowerTrace.valid
    upper_proof := e.upperTrace.valid }

end CoveringCodes.Database
