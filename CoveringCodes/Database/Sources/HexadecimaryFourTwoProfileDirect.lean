import CoveringCodes.Database.Sources.LRATNative

/-!
# Direct K16 profile CNF mirrors

This file is the Lean-side mirror of `scripts/k16_profile_sat.py` for the two
balanced profile classifier instances.  It deliberately generates raw DIMACS
clauses, because the large K16 LRAT wrappers expose unsat facts for
`LRATNative.rawCnfToSat`.
-/

namespace CoveringCodes
namespace Database
namespace HexadecimaryFourTwoProfileDirect

open LRATNative

def q : Nat := 16
def pairCount : Nat := 6
def edgeVarCount : Nat := pairCount * q * q

def highSymbols : List Nat := List.range 6
def lowSymbols : List Nat := (List.range 10).map (fun x => x + 6)
def canonicalLowSplit : List Nat × List Nat :=
  ((List.range 5).map (fun x => x + 6), (List.range 5).map (fun x => x + 11))

def pairIndices : List (Nat × Nat) :=
  [(0, 1), (0, 2), (0, 3), (1, 2), (1, 3), (2, 3)]

def edgeVar (pairIndex row col : Nat) : Nat :=
  pairIndex * q * q + row * q + col + 1

def posEdgeLit (pairIndex row col : Nat) : Int :=
  Int.ofNat (edgeVar pairIndex row col)

def negEdgeLit (pairIndex row col : Nat) : Int :=
  -posEdgeLit pairIndex row col

def rowLits (pairIndex row : Nat) : List Int :=
  (List.range q).map (fun col => posEdgeLit pairIndex row col)

def colLits (pairIndex col : Nat) : List Int :=
  (List.range q).map (fun row => posEdgeLit pairIndex row col)

def rowBound (symbol : Nat) : Nat :=
  if symbol < 6 then 10 else 11

def choose {α : Type} : Nat → List α → List (List α)
  | 0, _ => [[]]
  | _ + 1, [] => []
  | k + 1, x :: xs => (choose k xs).map (fun ys => x :: ys) ++ choose (k + 1) xs

def lowLabeledPartitions : List (List Nat × List Nat) :=
  (choose 5 lowSymbols).map (fun first =>
    (first, lowSymbols.filter (fun x => !(first.contains x))))

def blockIndex (split : List Nat × List Nat) (symbol : Nat) : Nat :=
  if symbol < 6 then 0 else if symbol ∈ split.1 then 1 else 2

def blockDifferenceClause
    (pairIndex : Nat) (left right : List Nat × List Nat) : RawClause :=
  ((List.range q).flatMap (fun row =>
    (List.range q).map (fun col =>
      if blockIndex left row ≠ blockIndex right col then
        negEdgeLit pairIndex row col
      else
        posEdgeLit pairIndex row col))).toArray

def forceBlockPairClauses
    (pairIndex : Nat) (left right : List Nat × List Nat) : List RawClause :=
  (List.range q).flatMap (fun row =>
    (List.range q).map (fun col =>
      (if blockIndex left row ≠ blockIndex right col then
        [posEdgeLit pairIndex row col]
      else
        [negEdgeLit pairIndex row col]).toArray))

def e01NotBlockClauses : List RawClause :=
  lowLabeledPartitions.flatMap (fun left =>
    lowLabeledPartitions.map (fun right =>
      blockDifferenceClause 0 left right))

def commonBlockDifferenceClause
    (blocks2 blocks3 : List Nat × List Nat) : RawClause :=
  ((List.range pairCount).flatMap (fun pairIndex =>
    match pairIndices[pairIndex]? with
    | some pair =>
        let coordBlocks :=
          [canonicalLowSplit, canonicalLowSplit, blocks2, blocks3]
        match coordBlocks[pair.1]?, coordBlocks[pair.2]? with
        | some left, some right =>
            (blockDifferenceClause pairIndex left right).toList
        | _, _ => []
    | none => [])).toArray

def notGlobalBlockClauses : List RawClause :=
  forceBlockPairClauses 0 canonicalLowSplit canonicalLowSplit ++
    lowLabeledPartitions.flatMap (fun blocks2 =>
      lowLabeledPartitions.map (fun blocks3 =>
        commonBlockDifferenceClause blocks2 blocks3))

structure CnfBuilder where
  varCount : Nat
  clauses : RawCnf

abbrev CnfM := StateM CnfBuilder

def addClause (lits : List Int) : CnfM Unit := do
  modify fun st => { st with clauses := st.clauses.push lits.toArray }

def addClauses (clauses : List RawClause) : CnfM Unit := do
  for clause in clauses do
    modify fun st => { st with clauses := st.clauses.push clause }

def reserveVars (count : Nat) : CnfM Nat := do
  let st ← get
  let first := st.varCount + 1
  set { st with varCount := st.varCount + count }
  pure first

def litAt (lits : List Int) (idx : Nat) : Int :=
  lits.getD idx 0

def seqAux (first bound i j : Nat) : Int :=
  Int.ofNat (first + (i - 1) * bound + (j - 1))

def atMostSeqClausesWithAux (first : Nat) (lits : List Int) (bound : Nat) :
    List RawClause :=
  let n := lits.length
  (List.range (n - 1)).map (fun i0 =>
    let i := i0 + 1
    [-(litAt lits (i - 1)), seqAux first bound i 1].toArray) ++
  (List.range (n - 2)).flatMap (fun i0 =>
    let i := i0 + 2
    (List.range bound).map (fun j0 =>
      let j := j0 + 1
      [-(seqAux first bound (i - 1) j), seqAux first bound i j].toArray)) ++
  (List.range (n - 1)).map (fun i0 =>
    let i := i0 + 2
    [-(litAt lits (i - 1)), -(seqAux first bound (i - 1) bound)].toArray) ++
  (List.range (n - 2)).flatMap (fun i0 =>
    let i := i0 + 2
    (List.range (bound - 1)).map (fun j0 =>
      let j := j0 + 2
      [-(litAt lits (i - 1)), -(seqAux first bound (i - 1) (j - 1)),
        seqAux first bound i j].toArray))

def atMostSeqClauses (first : Nat) (lits : List Int) (bound : Nat) :
    List RawClause :=
  let n := lits.length
  if n ≤ bound then
    []
  else if bound = 0 then
    lits.map (fun lit => [-lit].toArray)
  else
    atMostSeqClausesWithAux first lits bound

def atMostSeqAuxCount (lits : List Int) (bound : Nat) : Nat :=
  let n := lits.length
  if n ≤ bound then 0 else if bound = 0 then 0 else (n - 1) * bound

def addAtMost (lits : List Int) (bound : Nat) : CnfM Unit := do
  let n := lits.length
  if n ≤ bound then
    pure ()
  else if bound = 0 then
    addClauses (atMostSeqClauses 0 lits bound)
  else
    let first ← reserveVars (atMostSeqAuxCount lits bound)
    addClauses (atMostSeqClauses first lits bound)

def addAtLeastSequential (lits : List Int) (bound : Nat) : CnfM Unit :=
  addAtMost (lits.map (fun lit => -lit)) (lits.length - bound)

def addLowerProfileClauses : CnfM Unit := do
  for pairIndex in List.range pairCount do
    for row in List.range q do
      addAtLeastSequential (rowLits pairIndex row) (rowBound row)
    for col in List.range q do
      addAtLeastSequential (colLits pairIndex col) (rowBound col)

def counterFalseBound (symbol : Nat) : Nat :=
  q - rowBound symbol

def counterAuxCount (symbol : Nat) : Nat :=
  atMostSeqAuxCount ((rowLits 0 symbol).map (fun lit => -lit))
    (counterFalseBound symbol)

def symbolAuxPrefix (symbol : Nat) : Nat :=
  ((List.range symbol).map counterAuxCount).sum

def rowCounterAuxTotal : Nat :=
  ((List.range q).map counterAuxCount).sum

def pairLowerProfileAuxCount : Nat :=
  2 * rowCounterAuxTotal

def lowerProfileAuxCount : Nat :=
  pairCount * pairLowerProfileAuxCount

def lowerProfileCounterFirst (pairIndex : Nat) (isCol : Bool) (symbol : Nat) : Nat :=
  edgeVarCount + 1 + pairIndex * pairLowerProfileAuxCount +
    (if isCol then rowCounterAuxTotal else 0) + symbolAuxPrefix symbol

def lowerProfileRowClauses (pairIndex row : Nat) : List RawClause :=
  atMostSeqClauses (lowerProfileCounterFirst pairIndex false row)
    ((rowLits pairIndex row).map (fun lit => -lit))
    (counterFalseBound row)

def lowerProfileColClauses (pairIndex col : Nat) : List RawClause :=
  atMostSeqClauses (lowerProfileCounterFirst pairIndex true col)
    ((colLits pairIndex col).map (fun lit => -lit))
    (counterFalseBound col)

def lowerProfileClauses : List RawClause :=
  (List.range pairCount).flatMap (fun pairIndex =>
    (List.range q).flatMap (fun row =>
      lowerProfileRowClauses pairIndex row) ++
    (List.range q).flatMap (fun col =>
      lowerProfileColClauses pairIndex col))

def noCliqueClauses : List RawClause :=
  (List.range q).flatMap (fun a =>
    (List.range q).flatMap (fun b =>
      (List.range q).flatMap (fun c =>
        (List.range q).map (fun d =>
          [negEdgeLit 0 a b,
           negEdgeLit 1 a c,
           negEdgeLit 2 a d,
           negEdgeLit 3 b c,
           negEdgeLit 4 b d,
           negEdgeLit 5 c d].toArray))))

def addNoCliqueClauses : CnfM Unit :=
  addClauses noCliqueClauses

def build (body : CnfM Unit) : CnfBuilder :=
  (body.run { varCount := edgeVarCount, clauses := #[] }).2

def lowerE01NotBlockBuilder : CnfBuilder :=
  build do
    addLowerProfileClauses
    addNoCliqueClauses
    addClauses e01NotBlockClauses

def lowerE01NotBlockCnf : RawCnf :=
  (lowerProfileClauses ++ noCliqueClauses ++ e01NotBlockClauses).toArray

def lowerE01NotBlockNVars : Nat :=
  edgeVarCount + lowerProfileAuxCount

def lowerNotGlobalBlockBuilder : CnfBuilder :=
  build do
    addLowerProfileClauses
    addNoCliqueClauses
    addClauses notGlobalBlockClauses

def lowerNotGlobalBlockCnf : RawCnf :=
  (lowerProfileClauses ++ noCliqueClauses ++ notGlobalBlockClauses).toArray

def lowerNotGlobalBlockNVars : Nat :=
  edgeVarCount + lowerProfileAuxCount

set_option maxHeartbeats 2000000 in
theorem lowerE01NotBlockCnf_toList_eq_sections :
    lowerE01NotBlockCnf.toList =
      lowerProfileClauses ++ noCliqueClauses ++ e01NotBlockClauses := by
  simp [lowerE01NotBlockCnf]

set_option maxHeartbeats 2000000 in
theorem lowerNotGlobalBlockCnf_toList_eq_sections :
    lowerNotGlobalBlockCnf.toList =
      lowerProfileClauses ++ noCliqueClauses ++ notGlobalBlockClauses := by
  simp [lowerNotGlobalBlockCnf]

end HexadecimaryFourTwoProfileDirect
end Database
end CoveringCodes
