import CoveringCodes.Database.Sources.HexadecimaryFourTwoProfileOriginalBridge
import CoveringCodes.Database.Sources.HexadecimaryFourTwoProfileSemantics

/-!
# LRAT consequences for the K16 profile classifier

This file connects the direct profile LRAT unsat certificates to the semantic
`HexadecimaryFourTwoProfileGraph.profileValuation`.
-/

namespace CoveringCodes
namespace Database

private theorem valuation_satisfies_fmla_append
    {v : Sat.Valuation} {left right : Sat.Fmla}
    (hleft : Sat.Valuation.satisfies_fmla v left)
    (hright : Sat.Valuation.satisfies_fmla v right) :
    Sat.Valuation.satisfies_fmla v (left ++ right) := by
  constructor
  intro clause hclause
  rw [List.mem_append] at hclause
  rcases hclause with hclause | hclause
  · exact hleft.prop clause hclause
  · exact hright.prop clause hclause

private theorem valuation_neg_of_not_satisfies_clause
    {v : Sat.Valuation} {clause : Sat.Clause}
    (hnot : ¬ Sat.Valuation.satisfies v clause)
    {lit : Sat.Literal}
    (hmem : List.Mem lit clause) :
    Sat.Valuation.neg v lit := by
  induction clause with
  | nil =>
      cases hmem
  | cons head tail ih =>
      rcases List.mem_cons.mp hmem with rfl | htail
      · by_contra hhead
        apply hnot
        intro hneg
        exact False.elim (hhead hneg)
      · apply ih
        · intro htailSat
          apply hnot
          intro _hhead
          exact htailSat
        · exact htail

@[simp] private theorem rawNegLiteral_eq (x : Nat) (hx : 0 < x) :
    Sat.Literal.ofInt (-(x : Int)) = Sat.Literal.neg (x - 1) := by
  unfold Sat.Literal.ofInt
  have hxInt : (0 : Int) < (x : Int) := by exact_mod_cast hx
  have hneg : -(x : Int) < 0 := by omega
  simp only [hneg, ↓reduceIte]
  congr
  have hEqInt : -(-(x : Int)) - 1 = ((x - 1 : Nat) : Int) := by omega
  rw [hEqInt]
  simp

@[simp] private theorem rawPosLiteral_eq (x : Nat) (hx : 0 < x) :
    Sat.Literal.ofInt (x : Int) = Sat.Literal.pos (x - 1) := by
  unfold Sat.Literal.ofInt
  have hnot : ¬ (x : Int) < 0 := by omega
  simp only [hnot, ↓reduceIte]
  congr
  have hEqInt : (x : Int) - 1 = ((x - 1 : Nat) : Int) := by omega
  rw [hEqInt]
  simp

@[simp] private theorem rawPosEdgeLiteral_eq (pairIndex row col : Nat) :
    Sat.Literal.ofInt
        (HexadecimaryFourTwoProfileDirect.posEdgeLit pairIndex row col) =
      Sat.Literal.pos
        (HexadecimaryFourTwoProfileDirect.edgeVar pairIndex row col - 1) := by
  simpa [HexadecimaryFourTwoProfileDirect.posEdgeLit] using
    rawPosLiteral_eq
      (HexadecimaryFourTwoProfileDirect.edgeVar pairIndex row col)
      (by simp [HexadecimaryFourTwoProfileDirect.edgeVar,
        HexadecimaryFourTwoProfileDirect.q])

@[simp] private theorem rawNegEdgeLiteral_eq (pairIndex row col : Nat) :
    Sat.Literal.ofInt
        (HexadecimaryFourTwoProfileDirect.negEdgeLit pairIndex row col) =
      Sat.Literal.neg
        (HexadecimaryFourTwoProfileDirect.edgeVar pairIndex row col - 1) := by
  simp [HexadecimaryFourTwoProfileDirect.negEdgeLit,
    HexadecimaryFourTwoProfileDirect.posEdgeLit]

private theorem rawLiteral_mem_rawClauseToSat
    {lit : Int} {clause : LRATNative.RawClause}
    (hmem : List.Mem lit clause.toList) :
    List.Mem (Sat.Literal.ofInt lit) (LRATNative.rawClauseToSat clause) :=
  List.mem_map.mpr ⟨lit, hmem, rfl⟩

private theorem profileDirect_posEdgeLit_mem_blockDifferenceClause_of_same
    (pairIndex : Nat)
    (left right : List Nat × List Nat)
    (row col : Fin 16)
    (hsame :
      HexadecimaryFourTwoProfileDirect.blockIndex left row.val =
        HexadecimaryFourTwoProfileDirect.blockIndex right col.val) :
    HexadecimaryFourTwoProfileDirect.posEdgeLit pairIndex row.val col.val ∈
      (HexadecimaryFourTwoProfileDirect.blockDifferenceClause
        pairIndex left right).toList := by
  unfold HexadecimaryFourTwoProfileDirect.blockDifferenceClause
  apply List.mem_flatMap.mpr
  refine ⟨row.val, ?_, ?_⟩
  · simp [HexadecimaryFourTwoProfileDirect.q, row.isLt]
  · apply List.mem_map.mpr
    refine ⟨col.val, ?_, ?_⟩
    · simp [HexadecimaryFourTwoProfileDirect.q, col.isLt]
    · simp [hsame]

private theorem profileDirect_negEdgeLit_mem_blockDifferenceClause_of_diff
    (pairIndex : Nat)
    (left right : List Nat × List Nat)
    (row col : Fin 16)
    (hdiff :
      HexadecimaryFourTwoProfileDirect.blockIndex left row.val ≠
        HexadecimaryFourTwoProfileDirect.blockIndex right col.val) :
    HexadecimaryFourTwoProfileDirect.negEdgeLit pairIndex row.val col.val ∈
      (HexadecimaryFourTwoProfileDirect.blockDifferenceClause
        pairIndex left right).toList := by
  unfold HexadecimaryFourTwoProfileDirect.blockDifferenceClause
  apply List.mem_flatMap.mpr
  refine ⟨row.val, ?_, ?_⟩
  · simp [HexadecimaryFourTwoProfileDirect.q, row.isLt]
  · apply List.mem_map.mpr
    refine ⟨col.val, ?_, ?_⟩
    · simp [HexadecimaryFourTwoProfileDirect.q, col.isLt]
    · simp [hdiff]

private def profileDirectCommonLeftBlocks
    (blocks2 _blocks3 : List Nat × List Nat)
    (pairIndex : Fin 6) : List Nat × List Nat :=
  match pairIndex.val with
  | 5 => blocks2
  | _ => HexadecimaryFourTwoProfileDirect.canonicalLowSplit

private def profileDirectCommonRightBlocks
    (blocks2 blocks3 : List Nat × List Nat)
    (pairIndex : Fin 6) : List Nat × List Nat :=
  match pairIndex.val with
  | 0 => HexadecimaryFourTwoProfileDirect.canonicalLowSplit
  | 1 => blocks2
  | 2 => blocks3
  | 3 => blocks2
  | 4 => blocks3
  | _ => blocks3

private theorem profileDirect_posEdgeLit_mem_commonBlockDifferenceClause_of_same
    (blocks2 blocks3 : List Nat × List Nat)
    (pairIndex : Fin 6)
    (row col : Fin 16)
    (hsame :
      HexadecimaryFourTwoProfileDirect.blockIndex
          (profileDirectCommonLeftBlocks blocks2 blocks3 pairIndex) row.val =
        HexadecimaryFourTwoProfileDirect.blockIndex
          (profileDirectCommonRightBlocks blocks2 blocks3 pairIndex) col.val) :
    HexadecimaryFourTwoProfileDirect.posEdgeLit pairIndex.val row.val col.val ∈
      (HexadecimaryFourTwoProfileDirect.commonBlockDifferenceClause
        blocks2 blocks3).toList := by
  fin_cases pairIndex
  · unfold HexadecimaryFourTwoProfileDirect.commonBlockDifferenceClause
    apply List.mem_flatMap.mpr
    refine ⟨0, by simp [HexadecimaryFourTwoProfileDirect.pairCount], ?_⟩
    simpa [HexadecimaryFourTwoProfileDirect.pairIndices,
      profileDirectCommonLeftBlocks, profileDirectCommonRightBlocks] using
      profileDirect_posEdgeLit_mem_blockDifferenceClause_of_same
        0 HexadecimaryFourTwoProfileDirect.canonicalLowSplit
        HexadecimaryFourTwoProfileDirect.canonicalLowSplit row col
        (by simpa [profileDirectCommonLeftBlocks,
          profileDirectCommonRightBlocks] using hsame)
  · unfold HexadecimaryFourTwoProfileDirect.commonBlockDifferenceClause
    apply List.mem_flatMap.mpr
    refine ⟨1, by simp [HexadecimaryFourTwoProfileDirect.pairCount], ?_⟩
    simpa [HexadecimaryFourTwoProfileDirect.pairIndices,
      profileDirectCommonLeftBlocks, profileDirectCommonRightBlocks] using
      profileDirect_posEdgeLit_mem_blockDifferenceClause_of_same
        1 HexadecimaryFourTwoProfileDirect.canonicalLowSplit
        blocks2 row col
        (by simpa [profileDirectCommonLeftBlocks,
          profileDirectCommonRightBlocks] using hsame)
  · unfold HexadecimaryFourTwoProfileDirect.commonBlockDifferenceClause
    apply List.mem_flatMap.mpr
    refine ⟨2, by simp [HexadecimaryFourTwoProfileDirect.pairCount], ?_⟩
    simpa [HexadecimaryFourTwoProfileDirect.pairIndices,
      profileDirectCommonLeftBlocks, profileDirectCommonRightBlocks] using
      profileDirect_posEdgeLit_mem_blockDifferenceClause_of_same
        2 HexadecimaryFourTwoProfileDirect.canonicalLowSplit
        blocks3 row col
        (by simpa [profileDirectCommonLeftBlocks,
          profileDirectCommonRightBlocks] using hsame)
  · unfold HexadecimaryFourTwoProfileDirect.commonBlockDifferenceClause
    apply List.mem_flatMap.mpr
    refine ⟨3, by simp [HexadecimaryFourTwoProfileDirect.pairCount], ?_⟩
    simpa [HexadecimaryFourTwoProfileDirect.pairIndices,
      profileDirectCommonLeftBlocks, profileDirectCommonRightBlocks] using
      profileDirect_posEdgeLit_mem_blockDifferenceClause_of_same
        3 HexadecimaryFourTwoProfileDirect.canonicalLowSplit
        blocks2 row col
        (by simpa [profileDirectCommonLeftBlocks,
          profileDirectCommonRightBlocks] using hsame)
  · unfold HexadecimaryFourTwoProfileDirect.commonBlockDifferenceClause
    apply List.mem_flatMap.mpr
    refine ⟨4, by simp [HexadecimaryFourTwoProfileDirect.pairCount], ?_⟩
    simpa [HexadecimaryFourTwoProfileDirect.pairIndices,
      profileDirectCommonLeftBlocks, profileDirectCommonRightBlocks] using
      profileDirect_posEdgeLit_mem_blockDifferenceClause_of_same
        4 HexadecimaryFourTwoProfileDirect.canonicalLowSplit
        blocks3 row col
        (by simpa [profileDirectCommonLeftBlocks,
          profileDirectCommonRightBlocks] using hsame)
  · unfold HexadecimaryFourTwoProfileDirect.commonBlockDifferenceClause
    apply List.mem_flatMap.mpr
    refine ⟨5, by simp [HexadecimaryFourTwoProfileDirect.pairCount], ?_⟩
    simpa [HexadecimaryFourTwoProfileDirect.pairIndices,
      profileDirectCommonLeftBlocks, profileDirectCommonRightBlocks] using
      profileDirect_posEdgeLit_mem_blockDifferenceClause_of_same
        5 blocks2 blocks3 row col
        (by simpa [profileDirectCommonLeftBlocks,
          profileDirectCommonRightBlocks] using hsame)

private theorem profileDirect_negEdgeLit_mem_commonBlockDifferenceClause_of_diff
    (blocks2 blocks3 : List Nat × List Nat)
    (pairIndex : Fin 6)
    (row col : Fin 16)
    (hdiff :
      HexadecimaryFourTwoProfileDirect.blockIndex
          (profileDirectCommonLeftBlocks blocks2 blocks3 pairIndex) row.val ≠
        HexadecimaryFourTwoProfileDirect.blockIndex
          (profileDirectCommonRightBlocks blocks2 blocks3 pairIndex) col.val) :
    HexadecimaryFourTwoProfileDirect.negEdgeLit pairIndex.val row.val col.val ∈
      (HexadecimaryFourTwoProfileDirect.commonBlockDifferenceClause
        blocks2 blocks3).toList := by
  fin_cases pairIndex
  · unfold HexadecimaryFourTwoProfileDirect.commonBlockDifferenceClause
    apply List.mem_flatMap.mpr
    refine ⟨0, by simp [HexadecimaryFourTwoProfileDirect.pairCount], ?_⟩
    simpa [HexadecimaryFourTwoProfileDirect.pairIndices,
      profileDirectCommonLeftBlocks, profileDirectCommonRightBlocks] using
      profileDirect_negEdgeLit_mem_blockDifferenceClause_of_diff
        0 HexadecimaryFourTwoProfileDirect.canonicalLowSplit
        HexadecimaryFourTwoProfileDirect.canonicalLowSplit row col
        (by simpa [profileDirectCommonLeftBlocks,
          profileDirectCommonRightBlocks] using hdiff)
  · unfold HexadecimaryFourTwoProfileDirect.commonBlockDifferenceClause
    apply List.mem_flatMap.mpr
    refine ⟨1, by simp [HexadecimaryFourTwoProfileDirect.pairCount], ?_⟩
    simpa [HexadecimaryFourTwoProfileDirect.pairIndices,
      profileDirectCommonLeftBlocks, profileDirectCommonRightBlocks] using
      profileDirect_negEdgeLit_mem_blockDifferenceClause_of_diff
        1 HexadecimaryFourTwoProfileDirect.canonicalLowSplit
        blocks2 row col
        (by simpa [profileDirectCommonLeftBlocks,
          profileDirectCommonRightBlocks] using hdiff)
  · unfold HexadecimaryFourTwoProfileDirect.commonBlockDifferenceClause
    apply List.mem_flatMap.mpr
    refine ⟨2, by simp [HexadecimaryFourTwoProfileDirect.pairCount], ?_⟩
    simpa [HexadecimaryFourTwoProfileDirect.pairIndices,
      profileDirectCommonLeftBlocks, profileDirectCommonRightBlocks] using
      profileDirect_negEdgeLit_mem_blockDifferenceClause_of_diff
        2 HexadecimaryFourTwoProfileDirect.canonicalLowSplit
        blocks3 row col
        (by simpa [profileDirectCommonLeftBlocks,
          profileDirectCommonRightBlocks] using hdiff)
  · unfold HexadecimaryFourTwoProfileDirect.commonBlockDifferenceClause
    apply List.mem_flatMap.mpr
    refine ⟨3, by simp [HexadecimaryFourTwoProfileDirect.pairCount], ?_⟩
    simpa [HexadecimaryFourTwoProfileDirect.pairIndices,
      profileDirectCommonLeftBlocks, profileDirectCommonRightBlocks] using
      profileDirect_negEdgeLit_mem_blockDifferenceClause_of_diff
        3 HexadecimaryFourTwoProfileDirect.canonicalLowSplit
        blocks2 row col
        (by simpa [profileDirectCommonLeftBlocks,
          profileDirectCommonRightBlocks] using hdiff)
  · unfold HexadecimaryFourTwoProfileDirect.commonBlockDifferenceClause
    apply List.mem_flatMap.mpr
    refine ⟨4, by simp [HexadecimaryFourTwoProfileDirect.pairCount], ?_⟩
    simpa [HexadecimaryFourTwoProfileDirect.pairIndices,
      profileDirectCommonLeftBlocks, profileDirectCommonRightBlocks] using
      profileDirect_negEdgeLit_mem_blockDifferenceClause_of_diff
        4 HexadecimaryFourTwoProfileDirect.canonicalLowSplit
        blocks3 row col
        (by simpa [profileDirectCommonLeftBlocks,
          profileDirectCommonRightBlocks] using hdiff)
  · unfold HexadecimaryFourTwoProfileDirect.commonBlockDifferenceClause
    apply List.mem_flatMap.mpr
    refine ⟨5, by simp [HexadecimaryFourTwoProfileDirect.pairCount], ?_⟩
    simpa [HexadecimaryFourTwoProfileDirect.pairIndices,
      profileDirectCommonLeftBlocks, profileDirectCommonRightBlocks] using
      profileDirect_negEdgeLit_mem_blockDifferenceClause_of_diff
        5 blocks2 blocks3 row col
        (by simpa [profileDirectCommonLeftBlocks,
          profileDirectCommonRightBlocks] using hdiff)

def HexadecimaryFourTwoProfileGraph.E01HasCanonicalLowSixFiveFiveBlockForm
    (G : HexadecimaryFourTwoProfileGraph) : Prop :=
  ∃ left right,
    left ∈ HexadecimaryFourTwoProfileDirect.lowLabeledPartitions ∧
    right ∈ HexadecimaryFourTwoProfileDirect.lowLabeledPartitions ∧
    ∀ row col : Fin 16,
      G.E01 row col = true ↔
        HexadecimaryFourTwoProfileDirect.blockIndex left row.val ≠
          HexadecimaryFourTwoProfileDirect.blockIndex right col.val

def HexadecimaryFourTwoProfileGraph.E01IsCanonicalLowSixFiveFiveBlock
    (G : HexadecimaryFourTwoProfileGraph) : Prop :=
  ∀ row col : Fin 16,
    G.E01 row col = true ↔
      HexadecimaryFourTwoProfileDirect.blockIndex
          HexadecimaryFourTwoProfileDirect.canonicalLowSplit row.val ≠
        HexadecimaryFourTwoProfileDirect.blockIndex
          HexadecimaryFourTwoProfileDirect.canonicalLowSplit col.val

def HexadecimaryFourTwoProfileGraph.HasCommonCanonicalLowSixFiveFiveBlockSystem
    (G : HexadecimaryFourTwoProfileGraph) : Prop :=
  ∃ blocks2 blocks3,
    blocks2 ∈ HexadecimaryFourTwoProfileDirect.lowLabeledPartitions ∧
    blocks3 ∈ HexadecimaryFourTwoProfileDirect.lowLabeledPartitions ∧
    (∀ row col : Fin 16,
      G.E01 row col = true ↔
        HexadecimaryFourTwoProfileDirect.blockIndex
            HexadecimaryFourTwoProfileDirect.canonicalLowSplit row.val ≠
          HexadecimaryFourTwoProfileDirect.blockIndex
            HexadecimaryFourTwoProfileDirect.canonicalLowSplit col.val) ∧
    (∀ row col : Fin 16,
      G.E02 row col = true ↔
        HexadecimaryFourTwoProfileDirect.blockIndex
            HexadecimaryFourTwoProfileDirect.canonicalLowSplit row.val ≠
          HexadecimaryFourTwoProfileDirect.blockIndex blocks2 col.val) ∧
    (∀ row col : Fin 16,
      G.E03 row col = true ↔
        HexadecimaryFourTwoProfileDirect.blockIndex
            HexadecimaryFourTwoProfileDirect.canonicalLowSplit row.val ≠
          HexadecimaryFourTwoProfileDirect.blockIndex blocks3 col.val) ∧
    (∀ row col : Fin 16,
      G.E12 row col = true ↔
        HexadecimaryFourTwoProfileDirect.blockIndex
            HexadecimaryFourTwoProfileDirect.canonicalLowSplit row.val ≠
          HexadecimaryFourTwoProfileDirect.blockIndex blocks2 col.val) ∧
    (∀ row col : Fin 16,
      G.E13 row col = true ↔
        HexadecimaryFourTwoProfileDirect.blockIndex
            HexadecimaryFourTwoProfileDirect.canonicalLowSplit row.val ≠
          HexadecimaryFourTwoProfileDirect.blockIndex blocks3 col.val) ∧
    (∀ row col : Fin 16,
      G.E23 row col = true ↔
        HexadecimaryFourTwoProfileDirect.blockIndex blocks2 row.val ≠
          HexadecimaryFourTwoProfileDirect.blockIndex blocks3 col.val)

private theorem HexadecimaryFourTwoProfileGraph.profileValuation_satisfies_forceCanonicalE01Clause
    (G : HexadecimaryFourTwoProfileGraph)
    (hcanonical : G.E01IsCanonicalLowSixFiveFiveBlock)
    (row col : Fin 16) :
    Sat.Valuation.satisfies G.profileValuation
      (LRATNative.rawClauseToSat
        ((if
            HexadecimaryFourTwoProfileDirect.blockIndex
                HexadecimaryFourTwoProfileDirect.canonicalLowSplit row.val ≠
              HexadecimaryFourTwoProfileDirect.blockIndex
                HexadecimaryFourTwoProfileDirect.canonicalLowSplit col.val then
            [HexadecimaryFourTwoProfileDirect.posEdgeLit 0 row.val col.val]
          else
            [HexadecimaryFourTwoProfileDirect.negEdgeLit 0 row.val col.val]).toArray)) := by
  by_cases hdiff :
      HexadecimaryFourTwoProfileDirect.blockIndex
          HexadecimaryFourTwoProfileDirect.canonicalLowSplit row.val ≠
        HexadecimaryFourTwoProfileDirect.blockIndex
          HexadecimaryFourTwoProfileDirect.canonicalLowSplit col.val
  · simp [hdiff, LRATNative.rawClauseToSat]
    intro hneg
    have hedge : G.E01 row col = true := (hcanonical row col).mpr hdiff
    have hv :
        G.profileValuation
          (HexadecimaryFourTwoProfileDirect.edgeVar 0 row.val col.val - 1) :=
      (G.profileValuation_edgeVar (0 : Fin 6) row col).mpr
        (by simpa [HexadecimaryFourTwoProfileGraph.edgeByPairIndex,
          fin16OfNatMod_val] using hedge)
    exact hneg hv
  · simp [hdiff, LRATNative.rawClauseToSat]
    intro hv
    have hedge :
        G.edgeByPairIndex 0 row.val col.val :=
      (G.profileValuation_edgeVar (0 : Fin 6) row col).mp hv
    have htrue : G.E01 row col = true := by
      simpa [HexadecimaryFourTwoProfileGraph.edgeByPairIndex,
        fin16OfNatMod_val] using hedge
    exact hdiff ((hcanonical row col).mp htrue)

private theorem HexadecimaryFourTwoProfileGraph.profileValuation_satisfies_forceCanonicalE01Clauses
    (G : HexadecimaryFourTwoProfileGraph)
    (hcanonical : G.E01IsCanonicalLowSixFiveFiveBlock) :
    Sat.Valuation.satisfies_fmla G.profileValuation
      ((HexadecimaryFourTwoProfileDirect.forceBlockPairClauses 0
          HexadecimaryFourTwoProfileDirect.canonicalLowSplit
          HexadecimaryFourTwoProfileDirect.canonicalLowSplit).map
        LRATNative.rawClauseToSat) := by
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨rawClause, hraw, rfl⟩
  simp [HexadecimaryFourTwoProfileDirect.forceBlockPairClauses,
    HexadecimaryFourTwoProfileDirect.q] at hraw
  rcases hraw with ⟨row, hrow, col, hcol, rfl⟩
  let row16 : Fin 16 := ⟨row, hrow⟩
  let col16 : Fin 16 := ⟨col, hcol⟩
  simpa [row16, col16] using
    G.profileValuation_satisfies_forceCanonicalE01Clause
      hcanonical row16 col16

private theorem HexadecimaryFourTwoProfileGraph.profileValuation_satisfies_blockDifferenceClause_of_not_cross
    (G : HexadecimaryFourTwoProfileGraph)
    (pairIndex : Fin 6)
    (left right : List Nat × List Nat)
    (hnotCross : ¬ ∀ row col : Fin 16,
      G.edgeByPairIndex pairIndex.val row.val col.val ↔
        HexadecimaryFourTwoProfileDirect.blockIndex left row.val ≠
          HexadecimaryFourTwoProfileDirect.blockIndex right col.val) :
    Sat.Valuation.satisfies G.profileValuation
      (LRATNative.rawClauseToSat
        (HexadecimaryFourTwoProfileDirect.blockDifferenceClause
          pairIndex.val left right)) := by
  by_contra hnotSat
  apply hnotCross
  intro row col
  constructor
  · intro hedge
    by_contra hdiff
    have hrawmem :
        HexadecimaryFourTwoProfileDirect.posEdgeLit pairIndex.val row.val col.val ∈
          (HexadecimaryFourTwoProfileDirect.blockDifferenceClause
            pairIndex.val left right).toList :=
      profileDirect_posEdgeLit_mem_blockDifferenceClause_of_same
        pairIndex.val left right row col hdiff
    have hmem :=
      rawLiteral_mem_rawClauseToSat hrawmem
    have hneg :=
      valuation_neg_of_not_satisfies_clause hnotSat hmem
    have hnotVal :
        ¬ G.profileValuation
          (HexadecimaryFourTwoProfileDirect.edgeVar
            pairIndex.val row.val col.val - 1) := by
      simpa [Sat.Valuation.neg] using hneg
    exact hnotVal ((G.profileValuation_edgeVar pairIndex row col).mpr hedge)
  · intro hdiff
    have hrawmem :
        HexadecimaryFourTwoProfileDirect.negEdgeLit pairIndex.val row.val col.val ∈
          (HexadecimaryFourTwoProfileDirect.blockDifferenceClause
            pairIndex.val left right).toList :=
      profileDirect_negEdgeLit_mem_blockDifferenceClause_of_diff
        pairIndex.val left right row col hdiff
    have hmem :=
      rawLiteral_mem_rawClauseToSat hrawmem
    have hneg :=
      valuation_neg_of_not_satisfies_clause hnotSat hmem
    have hval :
        G.profileValuation
          (HexadecimaryFourTwoProfileDirect.edgeVar
            pairIndex.val row.val col.val - 1) := by
      simpa [Sat.Valuation.neg] using hneg
    exact (G.profileValuation_edgeVar pairIndex row col).mp hval

private theorem HexadecimaryFourTwoProfileGraph.edgeByPairIndex_iff_of_not_satisfies_commonBlockDifferenceClause
    (G : HexadecimaryFourTwoProfileGraph)
    (blocks2 blocks3 : List Nat × List Nat)
    (hnotSat :
      ¬ Sat.Valuation.satisfies G.profileValuation
        (LRATNative.rawClauseToSat
          (HexadecimaryFourTwoProfileDirect.commonBlockDifferenceClause
            blocks2 blocks3)))
    (pairIndex : Fin 6)
    (row col : Fin 16) :
    G.edgeByPairIndex pairIndex.val row.val col.val ↔
      HexadecimaryFourTwoProfileDirect.blockIndex
          (profileDirectCommonLeftBlocks blocks2 blocks3 pairIndex) row.val ≠
        HexadecimaryFourTwoProfileDirect.blockIndex
          (profileDirectCommonRightBlocks blocks2 blocks3 pairIndex) col.val := by
  constructor
  · intro hedge
    by_contra hdiff
    have hrawmem :
        HexadecimaryFourTwoProfileDirect.posEdgeLit pairIndex.val row.val col.val ∈
          (HexadecimaryFourTwoProfileDirect.commonBlockDifferenceClause
            blocks2 blocks3).toList :=
      profileDirect_posEdgeLit_mem_commonBlockDifferenceClause_of_same
        blocks2 blocks3 pairIndex row col hdiff
    have hmem :=
      rawLiteral_mem_rawClauseToSat hrawmem
    have hneg :=
      valuation_neg_of_not_satisfies_clause hnotSat hmem
    have hnotVal :
        ¬ G.profileValuation
          (HexadecimaryFourTwoProfileDirect.edgeVar
            pairIndex.val row.val col.val - 1) := by
      simpa [Sat.Valuation.neg] using hneg
    exact hnotVal ((G.profileValuation_edgeVar pairIndex row col).mpr hedge)
  · intro hdiff
    have hrawmem :
        HexadecimaryFourTwoProfileDirect.negEdgeLit pairIndex.val row.val col.val ∈
          (HexadecimaryFourTwoProfileDirect.commonBlockDifferenceClause
            blocks2 blocks3).toList :=
      profileDirect_negEdgeLit_mem_commonBlockDifferenceClause_of_diff
        blocks2 blocks3 pairIndex row col hdiff
    have hmem :=
      rawLiteral_mem_rawClauseToSat hrawmem
    have hneg :=
      valuation_neg_of_not_satisfies_clause hnotSat hmem
    have hval :
        G.profileValuation
          (HexadecimaryFourTwoProfileDirect.edgeVar
            pairIndex.val row.val col.val - 1) := by
      simpa [Sat.Valuation.neg] using hneg
    exact (G.profileValuation_edgeVar pairIndex row col).mp hval

private theorem HexadecimaryFourTwoProfileGraph.HasCommonCanonicalLowSixFiveFiveBlockSystem_of_not_satisfies_commonBlockDifferenceClause
    (G : HexadecimaryFourTwoProfileGraph)
    (blocks2 blocks3 : List Nat × List Nat)
    (hblocks2 : blocks2 ∈ HexadecimaryFourTwoProfileDirect.lowLabeledPartitions)
    (hblocks3 : blocks3 ∈ HexadecimaryFourTwoProfileDirect.lowLabeledPartitions)
    (hnotSat :
      ¬ Sat.Valuation.satisfies G.profileValuation
        (LRATNative.rawClauseToSat
          (HexadecimaryFourTwoProfileDirect.commonBlockDifferenceClause
            blocks2 blocks3))) :
    G.HasCommonCanonicalLowSixFiveFiveBlockSystem := by
  have h01 : ∀ row col : Fin 16,
      G.E01 row col = true ↔
        HexadecimaryFourTwoProfileDirect.blockIndex
          HexadecimaryFourTwoProfileDirect.canonicalLowSplit row.val ≠
        HexadecimaryFourTwoProfileDirect.blockIndex
          HexadecimaryFourTwoProfileDirect.canonicalLowSplit col.val := by
    intro row col
    have h :=
      G.edgeByPairIndex_iff_of_not_satisfies_commonBlockDifferenceClause
        blocks2 blocks3 hnotSat (0 : Fin 6) row col
    simpa [HexadecimaryFourTwoProfileGraph.edgeByPairIndex, fin16OfNatMod_val,
      profileDirectCommonLeftBlocks, profileDirectCommonRightBlocks] using h
  have h02 : ∀ row col : Fin 16,
      G.E02 row col = true ↔
        HexadecimaryFourTwoProfileDirect.blockIndex
          HexadecimaryFourTwoProfileDirect.canonicalLowSplit row.val ≠
        HexadecimaryFourTwoProfileDirect.blockIndex blocks2 col.val := by
    intro row col
    have h :=
      G.edgeByPairIndex_iff_of_not_satisfies_commonBlockDifferenceClause
        blocks2 blocks3 hnotSat (1 : Fin 6) row col
    simpa [HexadecimaryFourTwoProfileGraph.edgeByPairIndex, fin16OfNatMod_val,
      profileDirectCommonLeftBlocks, profileDirectCommonRightBlocks] using h
  have h03 : ∀ row col : Fin 16,
      G.E03 row col = true ↔
        HexadecimaryFourTwoProfileDirect.blockIndex
          HexadecimaryFourTwoProfileDirect.canonicalLowSplit row.val ≠
        HexadecimaryFourTwoProfileDirect.blockIndex blocks3 col.val := by
    intro row col
    have h :=
      G.edgeByPairIndex_iff_of_not_satisfies_commonBlockDifferenceClause
        blocks2 blocks3 hnotSat (2 : Fin 6) row col
    simpa [HexadecimaryFourTwoProfileGraph.edgeByPairIndex, fin16OfNatMod_val,
      profileDirectCommonLeftBlocks, profileDirectCommonRightBlocks] using h
  have h12 : ∀ row col : Fin 16,
      G.E12 row col = true ↔
        HexadecimaryFourTwoProfileDirect.blockIndex
          HexadecimaryFourTwoProfileDirect.canonicalLowSplit row.val ≠
        HexadecimaryFourTwoProfileDirect.blockIndex blocks2 col.val := by
    intro row col
    have h :=
      G.edgeByPairIndex_iff_of_not_satisfies_commonBlockDifferenceClause
        blocks2 blocks3 hnotSat (3 : Fin 6) row col
    simpa [HexadecimaryFourTwoProfileGraph.edgeByPairIndex, fin16OfNatMod_val,
      profileDirectCommonLeftBlocks, profileDirectCommonRightBlocks] using h
  have h13 : ∀ row col : Fin 16,
      G.E13 row col = true ↔
        HexadecimaryFourTwoProfileDirect.blockIndex
          HexadecimaryFourTwoProfileDirect.canonicalLowSplit row.val ≠
        HexadecimaryFourTwoProfileDirect.blockIndex blocks3 col.val := by
    intro row col
    have h :=
      G.edgeByPairIndex_iff_of_not_satisfies_commonBlockDifferenceClause
        blocks2 blocks3 hnotSat (4 : Fin 6) row col
    simpa [HexadecimaryFourTwoProfileGraph.edgeByPairIndex, fin16OfNatMod_val,
      profileDirectCommonLeftBlocks, profileDirectCommonRightBlocks] using h
  have h23 : ∀ row col : Fin 16,
      G.E23 row col = true ↔
        HexadecimaryFourTwoProfileDirect.blockIndex blocks2 row.val ≠
        HexadecimaryFourTwoProfileDirect.blockIndex blocks3 col.val := by
    intro row col
    have h :=
      G.edgeByPairIndex_iff_of_not_satisfies_commonBlockDifferenceClause
        blocks2 blocks3 hnotSat (5 : Fin 6) row col
    simpa [HexadecimaryFourTwoProfileGraph.edgeByPairIndex, fin16OfNatMod_val,
      profileDirectCommonLeftBlocks, profileDirectCommonRightBlocks] using h
  exact ⟨blocks2, blocks3, hblocks2, hblocks3, h01, h02, h03, h12, h13, h23⟩

private theorem HexadecimaryFourTwoProfileGraph.profileValuation_satisfies_e01NotBlockClause
    (G : HexadecimaryFourTwoProfileGraph)
    (hnotBlock : ¬ G.E01HasCanonicalLowSixFiveFiveBlockForm)
    (left right : List Nat × List Nat)
    (hleft : left ∈ HexadecimaryFourTwoProfileDirect.lowLabeledPartitions)
    (hright : right ∈ HexadecimaryFourTwoProfileDirect.lowLabeledPartitions) :
    Sat.Valuation.satisfies G.profileValuation
      (LRATNative.rawClauseToSat
        (HexadecimaryFourTwoProfileDirect.blockDifferenceClause 0 left right)) := by
  apply G.profileValuation_satisfies_blockDifferenceClause_of_not_cross
    (pairIndex := (0 : Fin 6))
  intro hcross
  exact hnotBlock ⟨left, right, hleft, hright, by
    intro row col
    have h := hcross row col
    simpa [HexadecimaryFourTwoProfileGraph.edgeByPairIndex, fin16OfNatMod_val]
      using h⟩

private theorem HexadecimaryFourTwoProfileGraph.profileValuation_satisfies_e01NotBlockClauses
    (G : HexadecimaryFourTwoProfileGraph)
    (hnotBlock : ¬ G.E01HasCanonicalLowSixFiveFiveBlockForm) :
    Sat.Valuation.satisfies_fmla G.profileValuation
      (HexadecimaryFourTwoProfileDirect.e01NotBlockClauses.map
        LRATNative.rawClauseToSat) := by
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨rawClause, hraw, rfl⟩
  unfold HexadecimaryFourTwoProfileDirect.e01NotBlockClauses at hraw
  rcases List.mem_flatMap.mp hraw with ⟨left, hleft, hraw⟩
  rcases List.mem_map.mp hraw with ⟨right, hright, hrawEq⟩
  rw [← hrawEq]
  exact G.profileValuation_satisfies_e01NotBlockClause
    hnotBlock left right hleft hright

theorem HexadecimaryFourTwoProfileGraph.profileValuation_satisfies_lowerProfileNoCliqueClauses
    (G : HexadecimaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced) :
    Sat.Valuation.satisfies_fmla G.profileValuation
      ((HexadecimaryFourTwoProfileDirect.lowerProfileClauses ++
          HexadecimaryFourTwoProfileDirect.noCliqueClauses).map
        LRATNative.rawClauseToSat) := by
  simpa [List.map_append] using
    valuation_satisfies_fmla_append
      (G.profileValuation_satisfies_lowerProfileClauses
        (G.lowerProfileFalseBound_of_canonicalBalanced hbal))
      (G.profileValuation_satisfies_noCliqueClauses)

theorem HexadecimaryFourTwoProfileGraph.profileValuation_satisfies_lowerE01NotBlockCnf
    (G : HexadecimaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (he01 :
      Sat.Valuation.satisfies_fmla G.profileValuation
        (HexadecimaryFourTwoProfileDirect.e01NotBlockClauses.map
          LRATNative.rawClauseToSat)) :
    Sat.Valuation.satisfies_fmla G.profileValuation
      (LRATNative.rawCnfToSat
        HexadecimaryFourTwoProfileDirect.lowerE01NotBlockCnf) := by
  have hprefix :=
    G.profileValuation_satisfies_lowerProfileNoCliqueClauses hbal
  have hall :=
    valuation_satisfies_fmla_append hprefix he01
  simpa [LRATNative.rawCnfToSat,
    HexadecimaryFourTwoProfileDirect.lowerE01NotBlockCnf_toList_eq_sections,
    List.map_append, List.append_assoc] using hall

theorem HexadecimaryFourTwoProfileGraph.not_satisfies_e01NotBlockClauses_of_canonicalBalanced
    (G : HexadecimaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced) :
    ¬ Sat.Valuation.satisfies_fmla G.profileValuation
        (HexadecimaryFourTwoProfileDirect.e01NotBlockClauses.map
          LRATNative.rawClauseToSat) := by
  intro he01
  exact e01ProfileDirect_unsat G.profileValuation
    (G.profileValuation_satisfies_lowerE01NotBlockCnf hbal he01)

theorem HexadecimaryFourTwoProfileGraph.E01HasCanonicalLowSixFiveFiveBlockForm_of_lrat
    (G : HexadecimaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced) :
    G.E01HasCanonicalLowSixFiveFiveBlockForm := by
  by_contra hnotBlock
  exact
    G.not_satisfies_e01NotBlockClauses_of_canonicalBalanced hbal
      (G.profileValuation_satisfies_e01NotBlockClauses hnotBlock)

private theorem HexadecimaryFourTwoProfileGraph.profileValuation_satisfies_commonBlockDifferenceClause
    (G : HexadecimaryFourTwoProfileGraph)
    (hnotCommon : ¬ G.HasCommonCanonicalLowSixFiveFiveBlockSystem)
    (blocks2 blocks3 : List Nat × List Nat)
    (hblocks2 : blocks2 ∈ HexadecimaryFourTwoProfileDirect.lowLabeledPartitions)
    (hblocks3 : blocks3 ∈ HexadecimaryFourTwoProfileDirect.lowLabeledPartitions) :
    Sat.Valuation.satisfies G.profileValuation
      (LRATNative.rawClauseToSat
        (HexadecimaryFourTwoProfileDirect.commonBlockDifferenceClause
          blocks2 blocks3)) := by
  by_contra hnotSat
  exact hnotCommon
    (G.HasCommonCanonicalLowSixFiveFiveBlockSystem_of_not_satisfies_commonBlockDifferenceClause
      blocks2 blocks3 hblocks2 hblocks3 hnotSat)

private theorem HexadecimaryFourTwoProfileGraph.profileValuation_satisfies_commonBlockDifferenceClauses
    (G : HexadecimaryFourTwoProfileGraph)
    (hnotCommon : ¬ G.HasCommonCanonicalLowSixFiveFiveBlockSystem) :
    Sat.Valuation.satisfies_fmla G.profileValuation
      ((HexadecimaryFourTwoProfileDirect.lowLabeledPartitions.flatMap (fun blocks2 =>
        HexadecimaryFourTwoProfileDirect.lowLabeledPartitions.map (fun blocks3 =>
          HexadecimaryFourTwoProfileDirect.commonBlockDifferenceClause
            blocks2 blocks3))).map LRATNative.rawClauseToSat) := by
  constructor
  intro clause hclause
  rcases List.mem_map.mp hclause with ⟨rawClause, hraw, rfl⟩
  rcases List.mem_flatMap.mp hraw with ⟨blocks2, hblocks2, hraw⟩
  rcases List.mem_map.mp hraw with ⟨blocks3, hblocks3, hrawEq⟩
  rw [← hrawEq]
  exact G.profileValuation_satisfies_commonBlockDifferenceClause
    hnotCommon blocks2 blocks3 hblocks2 hblocks3

private theorem HexadecimaryFourTwoProfileGraph.profileValuation_satisfies_notGlobalBlockClauses
    (G : HexadecimaryFourTwoProfileGraph)
    (hcanonical : G.E01IsCanonicalLowSixFiveFiveBlock)
    (hnotCommon : ¬ G.HasCommonCanonicalLowSixFiveFiveBlockSystem) :
    Sat.Valuation.satisfies_fmla G.profileValuation
      (HexadecimaryFourTwoProfileDirect.notGlobalBlockClauses.map
        LRATNative.rawClauseToSat) := by
  simpa [HexadecimaryFourTwoProfileDirect.notGlobalBlockClauses, List.map_append] using
    valuation_satisfies_fmla_append
      (G.profileValuation_satisfies_forceCanonicalE01Clauses hcanonical)
      (G.profileValuation_satisfies_commonBlockDifferenceClauses hnotCommon)

theorem HexadecimaryFourTwoProfileGraph.profileValuation_satisfies_lowerNotGlobalBlockCnf
    (G : HexadecimaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hnotGlobal :
      Sat.Valuation.satisfies_fmla G.profileValuation
        (HexadecimaryFourTwoProfileDirect.notGlobalBlockClauses.map
          LRATNative.rawClauseToSat)) :
    Sat.Valuation.satisfies_fmla G.profileValuation
      (LRATNative.rawCnfToSat
        HexadecimaryFourTwoProfileDirect.lowerNotGlobalBlockCnf) := by
  have hprefix :=
    G.profileValuation_satisfies_lowerProfileNoCliqueClauses hbal
  have hall :=
    valuation_satisfies_fmla_append hprefix hnotGlobal
  simpa [LRATNative.rawCnfToSat,
    HexadecimaryFourTwoProfileDirect.lowerNotGlobalBlockCnf_toList_eq_sections,
    List.map_append, List.append_assoc] using hall

theorem HexadecimaryFourTwoProfileGraph.not_satisfies_notGlobalBlockClauses_of_canonicalBalanced
    (G : HexadecimaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced) :
    ¬ Sat.Valuation.satisfies_fmla G.profileValuation
        (HexadecimaryFourTwoProfileDirect.notGlobalBlockClauses.map
          LRATNative.rawClauseToSat) := by
  intro hnotGlobal
  exact notGlobalProfileDirect_unsat G.profileValuation
    (G.profileValuation_satisfies_lowerNotGlobalBlockCnf hbal hnotGlobal)

theorem HexadecimaryFourTwoProfileGraph.HasCommonCanonicalLowSixFiveFiveBlockSystem_of_lrat
    (G : HexadecimaryFourTwoProfileGraph)
    (hbal : G.canonicalBalanced)
    (hcanonical : G.E01IsCanonicalLowSixFiveFiveBlock) :
    G.HasCommonCanonicalLowSixFiveFiveBlockSystem := by
  by_contra hnotCommon
  exact
    G.not_satisfies_notGlobalBlockClauses_of_canonicalBalanced hbal
      (G.profileValuation_satisfies_notGlobalBlockClauses
        hcanonical hnotCommon)

end Database
end CoveringCodes
