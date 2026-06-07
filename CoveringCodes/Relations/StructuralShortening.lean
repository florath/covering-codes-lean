import CoveringCodes.Constructions.CoordinateDeletion
import Mathlib.Data.Fintype.Card
import Mathlib.Logic.Equiv.Fin.Basic

/-!
# Structural shortening rules (Rules 11--13)

Unlike the numeric neighbor relations, these rules require an explicit code and
structural information about one or more coordinates.
-/

namespace CoveringCodes

section StructuralShortening

/-- **Rule 11 (missing-symbol shortening).**

If a length-`n+1` code covers with radius `r` and no codeword uses symbol `a` in
coordinate `j`, then deleting `j` gives a length-`n` code with radius `r-1`.
-/
theorem upper_shortening_missing_symbol {q n r : ℕ}
    (hr : 0 < r)
    (C : Finset (QaryWord q (n + 1)))
    (hC : CoversFinset C r)
    (j : Fin (n + 1))
    (a : Fin q)
    (hmiss : ∀ c, c ∈ C → c j ≠ a) :
    QaryKUpper q n (r - 1) C.card := by
  classical
  refine ⟨C.image (deleteCoord j), Finset.card_image_le, ?_⟩
  intro x
  obtain ⟨c, hc, hd⟩ := hC (insertCoord j a x)
  refine ⟨deleteCoord j c, Finset.mem_image.mpr ⟨c, hc, rfl⟩, ?_⟩
  have hdrop := dist_deleteCoord_insertCoord_add_one_le j a x c (hmiss c hc)
  have hle : dist x (deleteCoord j c) + 1 ≤ r := hdrop.trans hd
  omega

private theorem exists_fin_ne_of_two_le {q : ℕ} (hq : 2 ≤ q) (a : Fin q) :
    ∃ b : Fin q, b ≠ a := by
  by_cases hval : a.val = 0
  · refine ⟨⟨1, by omega⟩, ?_⟩
    intro h
    have hv := congr_arg Fin.val h
    simp [hval] at hv
  · refine ⟨⟨0, by omega⟩, ?_⟩
    intro h
    have hv := congr_arg Fin.val h
    simp at hv
    exact hval hv.symm

/-- **Rule 12 (fixed-coordinate shortening).**

If all codewords have the same symbol in coordinate `j` and `2 ≤ q`, choose a
different symbol as a missing symbol and apply missing-symbol shortening.
-/
theorem upper_shortening_fixed_coordinate {q n r : ℕ}
    (hq : 2 ≤ q)
    (hr : 0 < r)
    (C : Finset (QaryWord q (n + 1)))
    (hC : CoversFinset C r)
    (j : Fin (n + 1))
    (a : Fin q)
    (hfixed : ∀ c, c ∈ C → c j = a) :
    QaryKUpper q n (r - 1) C.card := by
  obtain ⟨b, hb⟩ := exists_fin_ne_of_two_le hq a
  exact upper_shortening_missing_symbol hr C hC j b (by
    intro c hc hcb
    exact hb (hcb.symm.trans (hfixed c hc)))

/-! ## Rule 13: pattern-avoidance shortening -/

/-- Hamming distance restricted to an explicit finite coordinate set. -/
def distOn {q n : ℕ} (S : Finset (Fin n)) (x y : QaryWord q n) : ℕ :=
  (S.filter (fun i => x i ≠ y i)).card

/-- Distance from a full word to a pattern defined only on `S`. -/
def distOnPattern {q n : ℕ} (S : Finset (Fin n)) (x : QaryWord q n)
    (p : (j : Fin n) → j ∈ S → Fin q) : ℕ :=
  (S.attach.filter (fun j => x j.val ≠ p j.val j.property)).card

/-- `PatternAvoids C S p delta` means that every codeword in `C` differs from the
pattern `p` in at least `delta` coordinates of `S`. -/
def PatternAvoids {q n : ℕ}
    (C : Finset (QaryWord q n))
    (S : Finset (Fin n))
    (p : (j : Fin n) → j ∈ S → Fin q)
    (delta : ℕ) : Prop :=
  ∀ c, c ∈ C → delta ≤ distOnPattern S c p

/-- The coordinate type left after deleting all coordinates in `S`. -/
abbrev ComplementCoords {n : ℕ} (S : Finset (Fin n)) : Type :=
  {j : Fin n // j ∉ S}

/-- Delete all coordinates in `S`, leaving a word indexed by the complement subtype. -/
def deleteCoords {q n : ℕ} (S : Finset (Fin n)) (w : QaryWord q n) :
    ComplementCoords S → Fin q :=
  fun j => w j.val

/-- Fill the deleted coordinates with the pattern `p`. -/
def fillPattern {q n : ℕ} (S : Finset (Fin n))
    (p : (j : Fin n) → j ∈ S → Fin q)
    (x : ComplementCoords S → Fin q) : QaryWord q n :=
  fun j => if h : j ∈ S then p j h else x ⟨j, h⟩

@[simp]
theorem deleteCoords_apply {q n : ℕ} (S : Finset (Fin n))
    (w : QaryWord q n) (j : ComplementCoords S) :
    deleteCoords S w j = w j.val :=
  rfl

@[simp]
theorem fillPattern_of_mem {q n : ℕ} (S : Finset (Fin n))
    (p : (j : Fin n) → j ∈ S → Fin q)
    (x : ComplementCoords S → Fin q) {j : Fin n} (hj : j ∈ S) :
    fillPattern S p x j = p j hj := by
  simp [fillPattern, hj]

@[simp]
theorem fillPattern_of_not_mem {q n : ℕ} (S : Finset (Fin n))
    (p : (j : Fin n) → j ∈ S → Fin q)
    (x : ComplementCoords S → Fin q) {j : Fin n} (hj : j ∉ S) :
    fillPattern S p x j = x ⟨j, hj⟩ := by
  simp [fillPattern, hj]

private theorem dist_deleteCoords_add_distOnPattern_le_dist_fillPattern {q n : ℕ}
    (S : Finset (Fin n))
    (p : (j : Fin n) → j ∈ S → Fin q)
    (x : ComplementCoords S → Fin q)
    (c : QaryWord q n) :
    dist x (deleteCoords S c) + distOnPattern S c p ≤ dist (fillPattern S p x) c := by
  classical
  let A : Finset (Fin n) :=
    ((Finset.univ : Finset (ComplementCoords S)).filter
      (fun j => x j ≠ deleteCoords S c j)).image (fun j => j.val)
  let B : Finset (Fin n) :=
    (S.attach.filter (fun j => c j.val ≠ p j.val j.property)).image (fun j => j.val)
  let F : Finset (Fin n) :=
    Finset.univ.filter (fun j : Fin n => fillPattern S p x j ≠ c j)
  have hAcard : A.card = dist x (deleteCoords S c) := by
    simp only [A]
    rw [Finset.card_image_of_injective _ (fun a b h => Subtype.ext h)]
    rfl
  have hBcard : B.card = distOnPattern S c p := by
    simp only [B, distOnPattern]
    rw [Finset.card_image_of_injective _ (fun a b h => Subtype.ext h)]
  have hdisj : Disjoint A B := by
    rw [Finset.disjoint_left]
    intro k hkA hkB
    rcases Finset.mem_image.mp hkA with ⟨i, _hi, hik⟩
    rcases Finset.mem_image.mp hkB with ⟨j, _hj, hjk⟩
    have hji : j.val = i.val := hjk.trans hik.symm
    exact i.property (hji ▸ j.property)
  have hsub : A ∪ B ⊆ F := by
    intro k hk
    rw [Finset.mem_union] at hk
    cases hk with
    | inl hkA =>
        rcases Finset.mem_image.mp hkA with ⟨i, hi, rfl⟩
        have hneq : x i ≠ deleteCoords S c i := (Finset.mem_filter.mp hi).2
        have hneq' : x i ≠ c i.val := by simpa [deleteCoords] using hneq
        simp [F, fillPattern, i.property, hneq']
    | inr hkB =>
        rcases Finset.mem_image.mp hkB with ⟨j, hj, rfl⟩
        have hneq : c j.val ≠ p j.val j.property := (Finset.mem_filter.mp hj).2
        have hneq' : p j.val j.property ≠ c j.val := by
          intro h
          exact hneq h.symm
        simp [F, fillPattern, j.property, hneq']
  have hcard_union : (A ∪ B).card = A.card + B.card := by
    rw [Finset.card_union_of_disjoint hdisj]
  have hle : A.card + B.card ≤ F.card := by
    rw [← hcard_union]
    exact Finset.card_le_card hsub
  calc
    dist x (deleteCoords S c) + distOnPattern S c p
        = A.card + B.card := by rw [hAcard, hBcard]
    _ ≤ F.card := hle
    _ = dist (fillPattern S p x) c := by rfl

/-- Pattern-avoidance shortening over the natural complement-coordinate subtype.

This is the clean core of Rule 13: after restricting target words to the pattern
`p` on `S`, the remaining coordinates are indexed by `{j // j ∉ S}`.
-/
theorem upper_shortening_pattern_avoidance_complement {q n r delta : ℕ}
    (C : Finset (QaryWord q n))
    (hC : CoversFinset C r)
    (S : Finset (Fin n))
    (p : (j : Fin n) → j ∈ S → Fin q)
    (hAvoid : PatternAvoids C S p delta)
    (_hdelta : delta ≤ r) :
    KUpper (ι := ComplementCoords S) (β := fun _ : ComplementCoords S => Fin q)
      (r - delta) C.card := by
  classical
  refine ⟨C.image (deleteCoords S), Finset.card_image_le, ?_⟩
  intro x
  obtain ⟨c, hc, hd⟩ := hC (fillPattern S p x)
  refine ⟨deleteCoords S c, Finset.mem_image.mpr ⟨c, hc, rfl⟩, ?_⟩
  have hdrop := dist_deleteCoords_add_distOnPattern_le_dist_fillPattern S p x c
  have hspend : dist x (deleteCoords S c) + delta ≤ dist (fillPattern S p x) c :=
    (Nat.add_le_add_left (hAvoid c hc) _).trans hdrop
  have hle : dist x (deleteCoords S c) + delta ≤ r := hspend.trans hd
  omega

private theorem dist_reindex_equiv {q : ℕ} {ι κ : Type}
    [Fintype ι] [Fintype κ] [DecidableEq ι] [DecidableEq κ]
    (e : κ ≃ ι) (x y : ι → Fin q) :
    dist (fun k : κ => x (e k)) (fun k : κ => y (e k)) = dist x y := by
  classical
  simp only [dist, hammingDist]
  let A : Finset κ := Finset.univ.filter (fun k : κ => x (e k) ≠ y (e k))
  let B : Finset ι := Finset.univ.filter (fun i : ι => x i ≠ y i)
  have hA : A = B.image e.symm := by
    ext k
    simp only [A, B, Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_image]
    constructor
    · intro hk
      exact ⟨e k, hk, by simp⟩
    · rintro ⟨i, hi, hik⟩
      subst k
      simpa using hi
  show A.card = B.card
  rw [hA]
  rw [Finset.card_image_of_injective _ e.symm.injective]

private theorem KUpper_reindex_equiv {q r k : ℕ} {ι κ : Type}
    [Fintype ι] [Fintype κ] [DecidableEq ι] [DecidableEq κ]
    (e : κ ≃ ι)
    (h : KUpper (ι := ι) (β := fun _ : ι => Fin q) r k) :
    KUpper (ι := κ) (β := fun _ : κ => Fin q) r k := by
  classical
  obtain ⟨C, hcard, hcov⟩ := h
  let reindex : (ι → Fin q) → (κ → Fin q) := fun c k => c (e k)
  refine ⟨C.image reindex, Finset.card_image_le.trans hcard, ?_⟩
  intro x
  let x' : ι → Fin q := fun i => x (e.symm i)
  obtain ⟨c, hc, hd⟩ := hcov x'
  refine ⟨reindex c, Finset.mem_image.mpr ⟨c, hc, rfl⟩, ?_⟩
  have hdist : dist x (reindex c) = dist x' c := by
    have hxx : x = fun k => x' (e k) := by
      funext k
      simp only [x']
      rw [Equiv.symm_apply_apply]
    rw [hxx]
    exact dist_reindex_equiv e x' c
  rw [hdist]
  exact hd

private theorem card_complementCoords {n : ℕ} (S : Finset (Fin n)) :
    Fintype.card (ComplementCoords S) = n - S.card := by
  classical
  have hsub : S ⊆ (Finset.univ : Finset (Fin n)) := by
    intro j _
    simp
  calc
    Fintype.card (ComplementCoords S)
        = (Finset.univ.filter fun j : Fin n => j ∉ S).card := by
          rw [Fintype.card_subtype]
    _ = ((Finset.univ : Finset (Fin n)) \ S).card := by
          congr 1
          ext j
          simp
    _ = (Finset.univ : Finset (Fin n)).card - S.card := by simp [Finset.card_sdiff]
    _ = n - S.card := by simp

/-- **Rule 13 (pattern-avoidance shortening).**

Let `S` be a set of coordinates and `p` a pattern on `S`. If every codeword in
`C` differs from `p` in at least `delta` coordinates of `S`, then restricting
target words to have pattern `p` on `S` forces every covering codeword to spend
at least `delta` units of distance inside `S`. Deleting `S` therefore lowers the
covering radius by `delta`.
-/
theorem upper_shortening_pattern_avoidance {q n r delta : ℕ}
    (C : Finset (QaryWord q n))
    (hC : CoversFinset C r)
    (S : Finset (Fin n))
    (p : (j : Fin n) → j ∈ S → Fin q)
    (hAvoid : PatternAvoids C S p delta)
    (hdelta : delta ≤ r) :
    QaryKUpper q (n - S.card) (r - delta) C.card := by
  classical
  have hcomp := upper_shortening_pattern_avoidance_complement C hC S p hAvoid hdelta
  have hcard : Fintype.card (ComplementCoords S) = n - S.card :=
    card_complementCoords S
  let e : Fin (n - S.card) ≃ ComplementCoords S :=
    (Fin.castOrderIso hcard.symm).toEquiv.trans
      (Fintype.equivFin (ComplementCoords S)).symm
  exact KUpper_reindex_equiv (q := q) (e := e) hcomp

end StructuralShortening

end CoveringCodes
