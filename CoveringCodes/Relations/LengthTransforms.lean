import CoveringCodes.Relations.DirectProduct
import CoveringCodes.Database.Arithmetic
import Mathlib.Data.Fin.Tuple.Basic

/-!
# Length-change transformations (Rules 2, 3, 4)

Three ways to change the word length:

- **Rule 2 (Puncturing)**: deleting coordinates can only decrease covering radius.
  `K_q(n-t, r) ≤ K_q(n, r)`.

- **Rule 4 (Dummy-coordinate lengthening)**: appending `t` fixed-symbol coordinates increases
  both length and radius by `t`.
  `K_q(n+t, r+t) ≤ K_q(n, r)`.

- **Rule 3 (Free lengthening)**: appending `t` freely-varying coordinates multiplies the
  code size by `q^t` but keeps the radius.
  `K_q(n+t, r) ≤ q^t * K_q(n, r)`.
-/

namespace CoveringCodes

section LengthTransforms

variable {q : ℕ}

/-! ## Auxiliary: projection decreases Hamming distance -/

/-- Projecting onto fewer coordinates can only decrease Hamming distance. -/
private theorem hammingDist_castLE_le {n t : ℕ} (_ht : t ≤ n)
    (x c : Fin n → Fin q) :
    dist (x ∘ Fin.castLE (Nat.sub_le n t)) (c ∘ Fin.castLE (Nat.sub_le n t)) ≤
    dist x c := by
  simp only [dist, hammingDist]
  have castLE_inj : Function.Injective (Fin.castLE (Nat.sub_le n t) : Fin (n - t) → Fin n) :=
    fun a b h => by
      apply Fin.ext
      have := congr_arg Fin.val h
      simpa using this
  rw [← Finset.card_image_of_injective _ castLE_inj]
  apply Finset.card_le_card
  intro a
  simp only [Finset.mem_image, Finset.mem_filter, Finset.mem_univ, true_and]
  rintro ⟨i, hi, rfl⟩
  exact hi

/-! ## Rule 4: Dummy-coordinate lengthening -/

/-- **Rule 4 (upper)**: K_q(n+t, r+t) ≤ K_q(n, r).
    Append `t` fixed all-zero coordinates to every codeword. -/
theorem upper_lengthen_dummy {n r t U : ℕ} (hq : 0 < q)
    (h : QaryKUpper q n r U) :
    QaryKUpper q (n + t) (r + t) U := by
  obtain ⟨C, hcard, hcov⟩ := h
  let pad : QaryWord q t := fun _ => ⟨0, hq⟩
  refine ⟨C.image (fun c => Fin.append c pad), Finset.card_image_le.trans hcard, ?_⟩
  intro x
  obtain ⟨c, hc, hd⟩ := hcov (x ∘ Fin.castAdd t)
  refine ⟨Fin.append c pad, Finset.mem_image.mpr ⟨c, hc, rfl⟩, ?_⟩
  simp only [dist, hammingDist_append]
  exact Nat.add_le_add hd ((dist_le_card _ _).trans_eq (Fintype.card_fin t))

/-- **Rule 4 (lower)**: K_q(n, r) ≥ L whenever K_q(n+t, r+t) ≥ L. -/
theorem lower_of_lengthen_dummy {n r t L : ℕ} (hq : 0 < q)
    (h : QaryKLower q (n + t) (r + t) L) :
    QaryKLower q n r L := by
  intro C hcov
  let pad : QaryWord q t := fun _ => ⟨0, hq⟩
  have hcov' : CoversFinset (C.image (fun c => Fin.append c pad)) (r + t) := by
    intro x
    obtain ⟨c, hc, hd⟩ := hcov (x ∘ Fin.castAdd t)
    refine ⟨Fin.append c pad, Finset.mem_image.mpr ⟨c, hc, rfl⟩, ?_⟩
    simp only [dist, hammingDist_append]
    exact Nat.add_le_add hd ((dist_le_card _ _).trans_eq (Fintype.card_fin t))
  exact le_trans (h _ hcov') Finset.card_image_le

/-! ## Rule 2: Puncturing -/

/-- **Rule 2 (upper)**: K_q(n-t, r) ≤ K_q(n, r).
    Project the code onto the first `n-t` coordinates. -/
theorem upper_puncture {n r t U : ℕ} (ht : t ≤ n) (hq : 0 < q)
    (h : QaryKUpper q n r U) :
    QaryKUpper q (n - t) r U := by
  obtain ⟨C, hcard, hcov⟩ := h
  let proj : (Fin n → Fin q) → (Fin (n - t) → Fin q) :=
    fun w i => w (Fin.castLE (Nat.sub_le n t) i)
  refine ⟨C.image proj, Finset.card_image_le.trans hcard, fun x => ?_⟩
  let x' : Fin n → Fin q := fun i =>
    if h : i.val < n - t then x ⟨i.val, h⟩ else ⟨0, hq⟩
  obtain ⟨c, hc, hd⟩ := hcov x'
  refine ⟨proj c, Finset.mem_image.mpr ⟨c, hc, rfl⟩, ?_⟩
  have hx : x = x' ∘ Fin.castLE (Nat.sub_le n t) :=
    funext fun i => by simp [x', i.isLt]
  show dist x (c ∘ Fin.castLE (Nat.sub_le n t)) ≤ r
  rw [hx]
  exact (hammingDist_castLE_le ht x' c).trans hd

/-- **Rule 2 (lower)**: K_q(n, r) ≥ L whenever K_q(n-t, r) ≥ L. -/
theorem lower_puncture_back {n r t L : ℕ} (ht : t ≤ n) (hq : 0 < q)
    (h : QaryKLower q (n - t) r L) :
    QaryKLower q n r L := by
  intro C hcov
  let proj : (Fin n → Fin q) → (Fin (n - t) → Fin q) :=
    fun w i => w (Fin.castLE (Nat.sub_le n t) i)
  have hproj_cov : CoversFinset (C.image proj) r := by
    intro x
    let x' : Fin n → Fin q := fun i =>
      if h : i.val < n - t then x ⟨i.val, h⟩ else ⟨0, hq⟩
    obtain ⟨c, hc, hd⟩ := hcov x'
    refine ⟨proj c, Finset.mem_image.mpr ⟨c, hc, rfl⟩, ?_⟩
    have hx : x = x' ∘ Fin.castLE (Nat.sub_le n t) :=
      funext fun i => by simp [x', i.isLt]
    show dist x (c ∘ Fin.castLE (Nat.sub_le n t)) ≤ r
    rw [hx]
    exact (hammingDist_castLE_le ht x' c).trans hd
  exact le_trans (h _ hproj_cov) Finset.card_image_le

/-! ## Rule 3: Free lengthening -/

/-- **Rule 3 (upper)**: K_q(n+t, r) ≤ q^t * K_q(n, r).
    Extend each codeword to all q^t ways of filling the last t positions. -/
theorem upper_lengthen_free {n r t U : ℕ}
    (h : QaryKUpper q n r U) :
    QaryKUpper q (n + t) r (q ^ t * U) := by
  have hfull : QaryKUpper q t 0 (q ^ t) :=
    ⟨Finset.univ, by simp [Fintype.card_fin],
     fun x => ⟨x, Finset.mem_univ _, (dist_self x).le⟩⟩
  have hprod := upper_direct_product h hfull
  rw [add_zero] at hprod
  exact hprod.mono (le_of_eq (Nat.mul_comm U (q ^ t)))

/-- **Rule 3 (lower)**: K_q(n, r) ≥ ⌈L / q^t⌉ whenever K_q(n+t, r) ≥ L. -/
theorem lower_of_lengthen_free {n r t L : ℕ} (hqt : 0 < q ^ t)
    (h : QaryKLower q (n + t) r L) :
    QaryKLower q n r (Database.natCeilDiv L (q ^ t)) := by
  intro C hcov
  let Cext := (C ×ˢ (Finset.univ : Finset (QaryWord q t))).image
               (fun p => Fin.append p.1 p.2)
  have hcov_ext : CoversFinset Cext r := by
    intro x
    obtain ⟨c, hc, hd⟩ := hcov (x ∘ Fin.castAdd t)
    exact ⟨Fin.append c (x ∘ Fin.natAdd n),
           Finset.mem_image.mpr ⟨(c, x ∘ Fin.natAdd n),
             Finset.mem_product.mpr ⟨hc, Finset.mem_univ _⟩, rfl⟩,
           by simp only [dist, hammingDist_append, hammingDist_self, add_zero]; exact hd⟩
  have hcard_ext : Cext.card ≤ C.card * q ^ t :=
    calc Cext.card
        ≤ (C ×ˢ (Finset.univ : Finset (QaryWord q t))).card := Finset.card_image_le
      _ = C.card * (Finset.univ : Finset (QaryWord q t)).card := Finset.card_product _ _
      _ = C.card * q ^ t := by simp [Fintype.card_fin]
  exact Database.natCeilDiv_le_of_le_mul hqt (le_trans (h Cext hcov_ext) hcard_ext)

end LengthTransforms

end CoveringCodes
