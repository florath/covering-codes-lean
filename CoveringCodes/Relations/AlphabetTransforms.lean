import CoveringCodes.CoveringNumber
import Mathlib.Data.Fin.Tuple.Basic

/-!
# Alphabet-size transformations (Rules 5, 6)

- **Rule 5 (Alphabet projection)**: Shrinking the alphabet preserves or improves covering.
  `K_a(n, r) ≤ K_q(n, r)` for `a ≤ q`.

- **Rule 6 (Alphabet expansion)**: Enlarging the alphabet inflates the code size by `s^n`.
  `K_Q(n, r) ≤ s^n * K_q(n, r)` when `Q ≤ s * q`.
-/

namespace CoveringCodes

section AlphabetTransforms

/-! ## Rule 5: Alphabet projection -/

private theorem dist_project_le {a q n : ℕ} (ha : 0 < a) (haq : a ≤ q)
    (x : QaryWord a n) (c : QaryWord q n) :
    let proj : QaryWord q n → QaryWord a n :=
      fun c i => ⟨min (c i).val (a - 1), by omega⟩
    let emb : QaryWord a n → QaryWord q n :=
      fun x i => ⟨(x i).val, Nat.lt_of_lt_of_le (x i).isLt haq⟩
    dist x (proj c) ≤ dist (emb x) c := by
  simp only [dist, hammingDist]
  apply Finset.card_le_card
  intro i
  simp only [Finset.mem_filter, Finset.mem_univ, true_and]
  -- hne : x i ≠ proj c i; goal : emb x i ≠ c i
  intro hne hemb
  apply hne
  apply Fin.ext
  -- hemb : (x i).val = (c i).val (as Fin q values)
  have hval : (x i).val = (c i).val := by
    have := congr_arg Fin.val hemb; simpa using this
  simp only [Nat.min_def]
  split_ifs with h
  · omega
  · exact absurd (hval ▸ (x i).isLt) (by omega)

/-- **Rule 5 (upper)**: K_a(n, r) ≤ K_q(n, r) for `a ≤ q`.
    Project each q-ary codeword onto the a-ary alphabet. -/
theorem upper_alphabet_project {a q n r U : ℕ} (ha : 0 < a) (haq : a ≤ q)
    (h : QaryKUpper q n r U) :
    QaryKUpper a n r U := by
  obtain ⟨C, hcard, hcov⟩ := h
  let proj : QaryWord q n → QaryWord a n :=
    fun c i => ⟨min (c i).val (a - 1), by omega⟩
  let emb : QaryWord a n → QaryWord q n :=
    fun x i => ⟨(x i).val, Nat.lt_of_lt_of_le (x i).isLt haq⟩
  refine ⟨C.image proj, Finset.card_image_le.trans hcard, fun x => ?_⟩
  obtain ⟨c, hc, hd⟩ := hcov (emb x)
  exact ⟨proj c, Finset.mem_image.mpr ⟨c, hc, rfl⟩,
         (dist_project_le ha haq x c).trans hd⟩

/-- **Rule 5 (lower)**: K_q(n, r) ≥ L whenever K_a(n, r) ≥ L for `a ≤ q`. -/
theorem lower_alphabet_project_back {a q n r L : ℕ} (ha : 0 < a) (haq : a ≤ q)
    (h : QaryKLower a n r L) :
    QaryKLower q n r L := by
  intro C hcov
  let proj : QaryWord q n → QaryWord a n :=
    fun c i => ⟨min (c i).val (a - 1), by omega⟩
  let emb : QaryWord a n → QaryWord q n :=
    fun x i => ⟨(x i).val, Nat.lt_of_lt_of_le (x i).isLt haq⟩
  have hproj_cov : CoversFinset (C.image proj) r := by
    intro x
    obtain ⟨c, hc, hd⟩ := hcov (emb x)
    exact ⟨proj c, Finset.mem_image.mpr ⟨c, hc, rfl⟩,
           (dist_project_le ha haq x c).trans hd⟩
  exact le_trans (h _ hproj_cov) Finset.card_image_le

/-! ## Rule 6: Alphabet expansion -/

-- Exact expansion: Q = s * q. Every bucket has exactly s elements.
private theorem upper_alphabet_expand_exact {q s n r U : ℕ} (_hq : 0 < q) (hs : 0 < s)
    (h : QaryKUpper q n r U) :
    QaryKUpper (s * q) n r (s ^ n * U) := by
  obtain ⟨C, hcard, hcov⟩ := h
  let sq := s * q
  let bucket : Fin sq → Fin q := fun i => ⟨i.val / s, Nat.div_lt_of_lt_mul i.isLt⟩
  let expand : QaryWord q n → Finset (QaryWord sq n) :=
    fun c => Finset.univ.filter (fun w => ∀ i, bucket (w i) = c i)
  let C' := C.biUnion expand
  -- Each expansion has ≤ s^n elements; inject via w i ↦ w i % s
  have hsize_expand : ∀ c : QaryWord q n, (expand c).card ≤ s ^ n := fun c => by
    let f : QaryWord sq n → QaryWord s n := fun w i => ⟨(w i).val % s, Nat.mod_lt _ hs⟩
    have hf_inj : Set.InjOn f ↑(expand c) := by
      intro w₁ hw₁ w₂ hw₂ heq
      simp only [expand, Finset.mem_coe, Finset.mem_filter, Finset.mem_univ, true_and,
                 bucket] at hw₁ hw₂
      funext i; apply Fin.ext
      -- Extract numeric div equalities from Fin equalities
      have h1 : (w₁ i).val / s = (c i).val := by
        have := congr_arg Fin.val (hw₁ i); simpa using this
      have h2 : (w₂ i).val / s = (c i).val := by
        have := congr_arg Fin.val (hw₂ i); simpa using this
      have hmod : (w₁ i).val % s = (w₂ i).val % s := by
        have := congr_fun heq i; simp only [f, Fin.mk.injEq] at this; exact this
      have eq1 : s * ((w₁ i).val / s) + (w₁ i).val % s = (w₁ i).val := Nat.div_add_mod _ _
      have eq2 : s * ((w₂ i).val / s) + (w₂ i).val % s = (w₂ i).val := Nat.div_add_mod _ _
      linarith [show s * ((w₁ i).val / s) = s * ((w₂ i).val / s) from by rw [h1, h2]]
    calc (expand c).card
        = ((expand c).image f).card := (Finset.card_image_of_injOn hf_inj).symm
      _ ≤ (Finset.univ : Finset (QaryWord s n)).card := Finset.card_le_univ _
      _ = s ^ n := by simp [Fintype.card_fin]
  have hcard' : C'.card ≤ s ^ n * U :=
    calc C'.card
        ≤ ∑ c ∈ C, (expand c).card := Finset.card_biUnion_le
      _ ≤ ∑ _c ∈ C, s ^ n := Finset.sum_le_sum (fun c _ => hsize_expand c)
      _ = C.card * s ^ n := by simp [Finset.sum_const, smul_eq_mul]
      _ ≤ U * s ^ n := Nat.mul_le_mul_right _ hcard
      _ = s ^ n * U := Nat.mul_comm _ _
  refine ⟨C', hcard', fun x => ?_⟩
  -- Project x to q-ary via bucket, cover, then lift back
  let y : QaryWord q n := fun i => bucket (x i)
  obtain ⟨c, hc, hd⟩ := hcov y
  -- w' i = c i * s + x i % s always lands in bucket c i and is valid in Fin sq
  have hbound : ∀ i, (c i).val * s + (x i).val % s < sq := fun i => by
    have hci := (c i).isLt; have hmod := Nat.mod_lt (x i).val hs
    simp only [sq]; nlinarith
  let w' : QaryWord sq n := fun i => ⟨(c i).val * s + (x i).val % s, hbound i⟩
  have hw'_in : w' ∈ expand c := by
    simp only [expand, Finset.mem_filter, Finset.mem_univ, true_and]
    intro i; apply Fin.ext; simp only [bucket, w']
    -- goal: ((c i).val * s + (x i).val % s) / s = (c i).val
    -- rewrite as (r + c*s)/s = r/s + c = 0 + c = c  (since r = (x i) % s < s)
    rw [show (c i).val * s + (x i).val % s = (x i).val % s + s * (c i).val from by ring]
    rw [Nat.add_mul_div_left _ _ hs, Nat.div_eq_of_lt (Nat.mod_lt _ hs)]
    simp
  have hdist : dist x w' ≤ dist y c := by
    simp only [dist, hammingDist]
    apply Finset.card_le_card
    intro i
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    -- hne : x i ≠ w' i; goal : y i ≠ c i
    intro hne hyc
    apply hne; apply Fin.ext; simp only [w']
    -- hyc : y i = c i means (x i).val / s = (c i).val
    have hbc : (x i).val / s = (c i).val := by
      have h := congr_arg Fin.val hyc; simpa [y, bucket] using h
    have key : s * ((x i).val / s) + (x i).val % s = (x i).val := Nat.div_add_mod _ _
    linarith [show s * ((x i).val / s) = s * (c i).val from congrArg (s * ·) hbc,
              show s * (c i).val = (c i).val * s from Nat.mul_comm s (c i).val]
  exact ⟨w', Finset.mem_biUnion.mpr ⟨c, hc, hw'_in⟩, hdist.trans hd⟩

/-- **Rule 6 (upper)**: K_Q(n, r) ≤ s^n * K_q(n, r) when Q ≤ s * q. -/
theorem upper_alphabet_expand {q Q s n r U : ℕ} (hq : 0 < q) (hs : 0 < s)
    (hQ : Q ≤ s * q) (hQpos : 0 < Q) (h : QaryKUpper q n r U) :
    QaryKUpper Q n r (s ^ n * U) :=
  upper_alphabet_project hQpos hQ (upper_alphabet_expand_exact hq hs h)

end AlphabetTransforms

end CoveringCodes
