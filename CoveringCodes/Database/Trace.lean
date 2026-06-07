import CoveringCodes.CoveringNumber
import CoveringCodes.Relations.RadiusMono
import CoveringCodes.Relations.LengthTransforms
import CoveringCodes.Relations.AlphabetTransforms
import CoveringCodes.Relations.DirectProduct
import CoveringCodes.Relations.BlockTransforms

namespace CoveringCodes.Database

inductive UpperTrace : Nat → Nat → Nat → Nat → Type where
  | primitive {q n r U : Nat}
      (label : String)
      (h : QaryKUpper q n r U) :
      UpperTrace q n r U
  | radiusMono {q n r s U : Nat}
      (hrs : r ≤ s)
      (t : UpperTrace q n r U) :
      UpperTrace q n s U
  | puncture {q n r U : Nat}
      (hq : 0 < q)
      (t : UpperTrace q (n + 1) r U) :
      UpperTrace q n r U
  | alphabetProject {a q n r U : Nat}
      (ha : 0 < a)
      (haq : a ≤ q)
      (t : UpperTrace q n r U) :
      UpperTrace a n r U
  | lengthenFreeN {q n r U_in : Nat}
      (k : Nat)
      (t : UpperTrace q n r U_in) :
      UpperTrace q (n + k) r (q ^ k * U_in)
  | lengthenDummyN {q n r U : Nat}
      (k : Nat)
      (hq : 0 < q)
      (t : UpperTrace q n r U) :
      UpperTrace q (n + k) (r + k) U
  | alphabetExpand {q Q s n r U : Nat}
      (hq : 0 < q)
      (hs : 0 < s)
      (hQ : Q ≤ s * q)
      (hQpos : 0 < Q)
      (t : UpperTrace q n r U) :
      UpperTrace Q n r (s ^ n * U)
  | directProduct {q n1 n2 r1 r2 U1 U2 : Nat}
      (left : UpperTrace q n1 r1 U1)
      (right : UpperTrace q n2 r2 U2) :
      UpperTrace q (n1 + n2) (r1 + r2) (U1 * U2)
  | blockGroup {q m N r U : Nat}
      (t : UpperTrace q (m * N) r U) :
      UpperTrace (q ^ m) N r U
  | blockUngroup {q m N R U : Nat}
      (t : UpperTrace (q ^ m) N R U) :
      UpperTrace q (m * N) (m * R) U

inductive LowerTrace : Nat → Nat → Nat → Nat → Type where
  | primitive {q n r L : Nat}
      (label : String)
      (h : QaryKLower q n r L) :
      LowerTrace q n r L
  | radiusBack {q n r s L : Nat}
      (hrs : r ≤ s)
      (t : LowerTrace q n s L) :
      LowerTrace q n r L
  | lengthBack {q n r L : Nat}
      (hq : 0 < q)
      (t : LowerTrace q n r L) :
      LowerTrace q (n + 1) r L
  | alphabetBack {a q n r L : Nat}
      (ha : 0 < a)
      (haq : a ≤ q)
      (t : LowerTrace a n r L) :
      LowerTrace q n r L
  | dummyBack {q n r L : Nat}
      (hq : 0 < q)
      (t : LowerTrace q (n + 1) (r + 1) L) :
      LowerTrace q n r L
  | dummyBackN {q n r L : Nat}
      (k : Nat)
      (hq : 0 < q)
      (t : LowerTrace q (n + k) (r + k) L) :
      LowerTrace q n r L
  | lengthenFreeBack {q n r L : Nat}
      (hq : 0 < q)
      (t : LowerTrace q (n + 1) r L) :
      LowerTrace q n r (natCeilDiv L q)
  | lengthenFreeBackN {q n r L : Nat}
      (k : Nat)
      (hq : 0 < q)
      (t : LowerTrace q (n + k) r L) :
      LowerTrace q n r (natCeilDiv L (q ^ k))
  | lowerDirectProductLeft {q n1 n2 r1 r2 L U2 : Nat}
      (hU2pos : 0 < U2)
      (tLarge : LowerTrace q (n1 + n2) (r1 + r2) L)
      (tRight : UpperTrace q n2 r2 U2) :
      LowerTrace q n1 r1 (natCeilDiv L U2)
  | lowerDirectProductRight {q n1 n2 r1 r2 L U1 : Nat}
      (hU1pos : 0 < U1)
      (tLarge : LowerTrace q (n1 + n2) (r1 + r2) L)
      (tLeft : UpperTrace q n1 r1 U1) :
      LowerTrace q n2 r2 (natCeilDiv L U1)
  | lowerBlockGroup {q m N r L : Nat}
      (t : LowerTrace (q ^ m) N r L) :
      LowerTrace q (m * N) r L
  | lowerBlockUngroup {q m N R L : Nat}
      (t : LowerTrace q (m * N) (m * R) L) :
      LowerTrace (q ^ m) N R L

def UpperTrace.valid : UpperTrace q n r U → QaryKUpper q n r U
  | .primitive _ h => h
  | @UpperTrace.radiusMono _ _ r₀ _ _ hrs t =>
      Nat.add_sub_cancel' hrs ▸ upper_radius_mono (s := _ - r₀) t.valid
  | .puncture hq t => by
      have := upper_puncture (ht := Nat.le_add_left 1 _) hq t.valid
      simpa using this
  | .alphabetProject ha haq t => upper_alphabet_project ha haq t.valid
  | .lengthenFreeN k t => upper_lengthen_free (t := k) t.valid
  | .lengthenDummyN k hq t => upper_lengthen_dummy (t := k) hq t.valid
  | .alphabetExpand hq hs hQ hQpos t => upper_alphabet_expand hq hs hQ hQpos t.valid
  | .directProduct tLeft tRight => upper_direct_product tLeft.valid tRight.valid
  | .blockGroup t => upper_block_group t.valid
  | .blockUngroup t => upper_block_ungroup t.valid

def LowerTrace.valid : LowerTrace q n r L → QaryKLower q n r L
  | .primitive _ h => h
  | @LowerTrace.radiusBack _ _ r₀ s₀ _ hrs t => by
      apply lower_radius_back (s := s₀ - r₀)
      have heq : r₀ + (s₀ - r₀) = s₀ := Nat.add_sub_cancel' hrs
      rw [heq]; exact t.valid
  | .lengthBack hq t => by
      have := lower_puncture_back (ht := Nat.le_add_left 1 _) hq t.valid
      simpa using this
  | .alphabetBack ha haq t => lower_alphabet_project_back ha haq t.valid
  | .dummyBack hq t => lower_of_lengthen_dummy (t := 1) hq t.valid
  | .dummyBackN k hq t => lower_of_lengthen_dummy (t := k) hq t.valid
  | .lengthenFreeBack hq t => by
      have h : QaryKLower q _ _ (natCeilDiv _ (q ^ 1)) :=
        lower_of_lengthen_free (t := 1) (by rw [pow_one]; exact hq) t.valid
      rwa [pow_one] at h
  | .lengthenFreeBackN k hq t => lower_of_lengthen_free (t := k) (pow_pos hq k) t.valid
  | .lowerDirectProductLeft hU2pos tLarge tRight =>
      lower_of_direct_product_left hU2pos tLarge.valid tRight.valid
  | .lowerDirectProductRight hU1pos tLarge tLeft =>
      lower_of_direct_product_right hU1pos tLarge.valid tLeft.valid
  | .lowerBlockGroup t => lower_of_block_group t.valid
  | .lowerBlockUngroup t => lower_of_block_ungroup t.valid

def UpperTrace.render : UpperTrace q n r U → List String
  | .primitive label _ => [label]
  | .radiusMono _ t => t.render ++ ["radius monotonicity"]
  | .puncture _ t => t.render ++ ["puncturing"]
  | .alphabetProject _ _ t => t.render ++ ["alphabet projection"]
  | .lengthenFreeN k t => t.render ++ [s!"free lengthening ×q^{k}"]
  | .lengthenDummyN k _ t => t.render ++ [s!"dummy-coordinate lengthening ×{k}"]
  | .alphabetExpand _ _ _ _ t => t.render ++ ["alphabet expansion"]
  | .directProduct tLeft tRight => tLeft.render ++ tRight.render ++ ["direct product"]
  | .blockGroup t => t.render ++ ["block grouping"]
  | .blockUngroup t => t.render ++ ["block ungrouping"]

def LowerTrace.render : LowerTrace q n r L → List String
  | .primitive label _ => [label]
  | .radiusBack _ t => t.render ++ ["radius back-propagation"]
  | .lengthBack _ t => t.render ++ ["length back-propagation"]
  | .alphabetBack _ _ t => t.render ++ ["alphabet back-propagation"]
  | .dummyBack _ t => t.render ++ ["dummy-coordinate back-propagation"]
  | .dummyBackN k _ t => t.render ++ [s!"dummy-coordinate back-propagation ×{k}"]
  | .lengthenFreeBack _ t => t.render ++ ["free-lengthening lower back-propagation"]
  | .lengthenFreeBackN k _ t => t.render ++ [s!"free-lengthening lower back-propagation ×{k}"]
  | .lowerDirectProductLeft _ tLarge _ => tLarge.render ++ ["lower direct-product (left factor)"]
  | .lowerDirectProductRight _ tLarge _ => tLarge.render ++ ["lower direct-product (right factor)"]
  | .lowerBlockGroup t => t.render ++ ["lower block-group back-propagation"]
  | .lowerBlockUngroup t => t.render ++ ["lower block-ungroup back-propagation"]

/-- BibTeX provenance keys visited by an upper-bound trace, with duplicates preserved. -/
def UpperTrace.references : UpperTrace q n r U → List String
  | .primitive label _ => [label]
  | .radiusMono _ t => t.references ++ ["rule_radius_monotonicity"]
  | .puncture _ t => t.references ++ ["rule_puncturing"]
  | .alphabetProject _ _ t => t.references ++ ["rule_alphabet_projection"]
  | .lengthenFreeN _ t => t.references ++ ["rule_free_lengthening"]
  | .lengthenDummyN _ _ t => t.references ++ ["rule_dummy_coordinate_lengthening"]
  | .alphabetExpand _ _ _ _ t => t.references ++ ["rule_alphabet_expansion"]
  | .directProduct tLeft tRight =>
      tLeft.references ++ tRight.references ++ ["rule_direct_product"]
  | .blockGroup t => t.references ++ ["rule_block_grouping"]
  | .blockUngroup t => t.references ++ ["rule_block_ungrouping"]

/-- BibTeX provenance keys visited by a lower-bound trace, with duplicates preserved. -/
def LowerTrace.references : LowerTrace q n r L → List String
  | .primitive label _ => [label]
  | .radiusBack _ t => t.references ++ ["rule_radius_back_propagation"]
  | .lengthBack _ t => t.references ++ ["rule_length_back_propagation"]
  | .alphabetBack _ _ t => t.references ++ ["rule_alphabet_back_propagation"]
  | .dummyBack _ t => t.references ++ ["rule_dummy_coordinate_back_propagation"]
  | .dummyBackN _ _ t => t.references ++ ["rule_dummy_coordinate_back_propagation"]
  | .lengthenFreeBack _ t => t.references ++ ["rule_free_lengthening_lower_back_propagation"]
  | .lengthenFreeBackN _ _ t => t.references ++ ["rule_free_lengthening_lower_back_propagation"]
  | .lowerDirectProductLeft _ tLarge tRight =>
      tLarge.references ++ tRight.references ++ ["rule_lower_direct_product_left"]
  | .lowerDirectProductRight _ tLarge tLeft =>
      tLarge.references ++ tLeft.references ++ ["rule_lower_direct_product_right"]
  | .lowerBlockGroup t => t.references ++ ["rule_lower_block_group_back_propagation"]
  | .lowerBlockUngroup t => t.references ++ ["rule_lower_block_ungroup_back_propagation"]

end CoveringCodes.Database
