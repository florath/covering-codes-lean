import CoveringCodes.CoveringNumber
import Mathlib.Combinatorics.Pigeonhole

/-!
# The case radius n - 1

For all `q` and `n ≥ 1`:

`K_q(n, n - 1) = q`

That is, exactly `q` codewords are needed and sufficient to cover all words of
length `n` at radius `n - 1`. For `q = 0` the ambient space is empty, so the
empty code is the exact cover; the discussion below is the nonempty-alphabet
intuition behind the same formal statement.

## Why radius n - 1 is special

Two words of length `n` have Hamming distance ≤ `n - 1` if and only if they
**agree in at least one position**.  (Distance = `n` means they differ everywhere.)

So the ball of radius `n - 1` around the constant word `aaa…a` is exactly the
set of words that contain the symbol `a` at least once.

**Upper bound** (`q` codewords suffice): take the `q` constant words
`{000…0, 111…1, …, (q-1)(q-1)…(q-1)}`.  Any word `x` has a first symbol
`x_0 = a`, so `a` appears in `x`, so `x` is covered by `constantWord(a)`.

**Lower bound** (no code with fewer than `q` codewords suffices): if the code
has fewer than `q` codewords, then at each coordinate `i` some alphabet symbol
is omitted by all codewords at that coordinate. Choose such an omitted symbol as
`x i`. The resulting word `x` differs from every codeword in every coordinate,
so its distance from every codeword is `n`, and no codeword covers it at radius
`n - 1`.

This is a missing-symbol argument, not a sphere-covering argument. The
sphere-covering bound is weaker here; for example, when `q = 3` and `n = 2`, it
gives only `ceil(9 / 5) = 2`, not the required lower bound `3`.

## Examples

**`q = 2`, `n = 3`, `r = 2`**: space = `{000,001,010,011,100,101,110,111}`.
- Ball around `000` covers everything except `111`.
- Ball around `111` covers everything except `000`.
- Together: all 8 words covered with 2 = `q` codewords.
- One codeword always misses the word differing in all positions, so 2 is optimal.

**`q = 3`, `n = 2`, `r = 1`**: space = `{00,…,22}` (9 words).
- Ball around `00`: all words containing a `0` → covers 5, misses `{11,12,21,22}`.
- Ball around `11`: all words containing a `1` → covers `{11,12,21,01,10}`.
- Ball around `22`: all words containing a `2` → covers `{22,21,12,02,20}`.
- Together: all 9 words covered with 3 = `q` codewords.
- Any 2 codewords leave uncovered a word whose symbols are the two missing ones.
-/

namespace CoveringCodes

section RadiusNMinusOne

/-- The constant word of length `n` where every position holds the symbol `a`.

    For example with `q = 3`, `n = 4`, `a = 2`: the word `(2, 2, 2, 2)`. -/
def constantQaryWord {q n : ℕ} (a : Fin q) : QaryWord q n :=
  fun _ => a

/-- The code consisting of all `q` constant words:
    `{(0,0,…,0), (1,1,…,1), …, (q-1,q-1,…,q-1)}`.

    This is the candidate that achieves the upper bound `K_q(n, n-1) ≤ q`:
    every word `x` contains some symbol `a` (at its first position), so it
    agrees with `constantWord(a)` there and is within distance `n-1`. -/
def constantQaryCode (q n : ℕ) : Finset (QaryWord q n) :=
  Finset.univ.image fun a : Fin q => constantQaryWord (q := q) (n := n) a

/-- The constant code has exactly `q` elements (one per alphabet symbol),
    provided `n ≥ 1` (for `n = 0` all constant words collapse to the same element). -/
lemma constantQaryCode_card (q n : ℕ) (hn : 1 ≤ n) :
    (constantQaryCode q n).card = q := by
  rw [constantQaryCode, Finset.card_image_of_injective _ (fun a₁ a₂ h => by
    have := congr_fun h ⟨0, hn⟩
    simpa [constantQaryWord] using this)]
  simp

/-- `x` is covered by `constantQaryWord a` at radius `n - 1` iff `a` appears in `x`.
    Equivalently: two words are within distance `n - 1` iff they agree in at least one position. -/
lemma covered_by_constant_iff {q n : ℕ} (hn : 1 ≤ n) (x : QaryWord q n) (a : Fin q) :
    hammingDist x (constantQaryWord a) ≤ n - 1 ↔ ∃ i, x i = a := by
  -- Abbreviation: the filter of positions where x and constantQaryWord a differ
  let F := Finset.univ.filter (fun i : Fin n => x i ≠ a)
  have huniv : (Finset.univ : Finset (Fin n)).card = n := by simp
  -- hammingDist x (constantQaryWord a) = F.card by unfolding definitions
  have hd : hammingDist x (constantQaryWord a) = F.card := rfl
  rw [hd]
  constructor
  · -- F.card ≤ n-1 → some position agrees → ∃ i, x i = a
    intro h
    by_contra hall
    push Not at hall  -- hall : ∀ i, x i ≠ a
    -- when all positions differ, F = univ and F.card = n > n-1
    have hFeq : F = Finset.univ := Finset.filter_true_of_mem (fun i _ => hall i)
    rw [hFeq, huniv] at h; omega
  · -- ∃ i, x i = a → F.card < n → F.card ≤ n-1
    intro ⟨j, hj⟩
    -- position j agrees, so j ∉ F, so F ⊊ univ, so F.card < univ.card = n
    have hFsub : F ⊂ Finset.univ := by
      refine ⟨Finset.filter_subset _ _, ?_⟩
      intro hfull
      have := hfull (Finset.mem_univ j)
      simp [F, hj] at this
    have hlt : F.card < n :=
      calc F.card < Finset.univ.card := Finset.card_lt_card hFsub
           _      = n                := huniv
    omega

/-- The constant code covers all of `QaryWord q n` at radius `n - 1`.
    Every word `x` has a first symbol `a = x 0`; the constant word `aaa…a`
    agrees with `x` at position 0, so their distance is at most `n - 1`. -/
theorem constantQaryCode_covers (q n : ℕ) (hn : 1 ≤ n) :
    CoversFinset (constantQaryCode q n) (n - 1) := by
  intro x
  refine ⟨constantQaryWord (x ⟨0, hn⟩), ?_, ?_⟩
  · -- constantQaryWord (x 0) is in the image by construction
    rw [constantQaryCode]
    exact Finset.mem_image_of_mem _ (Finset.mem_univ _)
  · -- x agrees with constantQaryWord (x 0) at position 0
    exact (covered_by_constant_iff hn x _).mpr ⟨⟨0, hn⟩, rfl⟩

lemma hammingDist_constant_add_agreements {q n : ℕ} (x : QaryWord q n) (a : Fin q) :
    hammingDist x (constantQaryWord a) +
      (Finset.univ.filter (fun i : Fin n => x i = a)).card = n := by
  have h := Finset.card_filter_add_card_filter_not
    (s := (Finset.univ : Finset (Fin n))) (p := fun i : Fin n => x i = a)
  simpa [hammingDist, constantQaryWord, Nat.add_comm, Fintype.card_fin] using h

/-- The all-constant `q`-word code covers at radius `r` once pigeonhole forces
some symbol to appear in every received word at least `n-r` times.  A convenient
strict sufficient condition is `q * (n-r-1) < n`. -/
theorem constantQaryCode_covers_of_pigeonhole (q n r : ℕ)
    (havg : q * (n - r - 1) < n) :
    CoversFinset (constantQaryCode q n) r := by
  intro x
  obtain ⟨a, _, ha⟩ := Finset.exists_lt_card_fiber_of_mul_lt_card_of_maps_to
    (s := (Finset.univ : Finset (Fin n))) (t := (Finset.univ : Finset (Fin q)))
    (f := x) (n := n - r - 1)
    (fun i _ => Finset.mem_univ (x i)) (by simpa using havg)
  refine ⟨constantQaryWord a, ?_, ?_⟩
  · rw [constantQaryCode]
    exact Finset.mem_image_of_mem _ (Finset.mem_univ _)
  · have hagree : n - r ≤ (Finset.univ.filter (fun i : Fin n => x i = a)).card := by
      omega
    have hsum := hammingDist_constant_add_agreements x a
    show dist x (constantQaryWord a) ≤ r
    simpa [dist] using (by omega : hammingDist x (constantQaryWord a) ≤ r)

/-- **Lower bound**: any code covering `QaryWord q n` at radius `n - 1` has at least `q` codewords.
    Proof: with fewer than `q` codewords, at each position `i` only `< q` symbols are used,
    so we can pick a symbol avoiding every codeword at every position — giving a word at
    distance `n` from all codewords, which is uncovered. -/
theorem constantQaryCode_card_le (q n : ℕ) (hn : 1 ≤ n)
    (C : Finset (QaryWord q n)) (hC : CoversFinset C (n - 1)) :
    q ≤ C.card := by
  by_contra hlt
  push Not at hlt  -- hlt : C.card < q
  -- At each position i, the codewords use fewer than q distinct symbols,
  -- so some symbol is available that differs from ALL codewords at position i.
  have hchoice : ∀ i : Fin n, ∃ a : Fin q, ∀ c ∈ C, c i ≠ a := by
    intro i
    -- The image at position i has fewer than q elements
    have hcard : (C.image (fun c => c i)).card < (Finset.univ : Finset (Fin q)).card := by
      simpa using Finset.card_image_le.trans_lt hlt
    -- The image is therefore not all of Fin q
    have hne_univ : C.image (fun c => c i) ≠ Finset.univ :=
      fun h => absurd (h ▸ hcard) (lt_irrefl _)
    -- So the complement is nonempty
    obtain ⟨a, hmem⟩ := Finset.sdiff_nonempty.mpr
      (fun h => hne_univ (le_antisymm (Finset.subset_univ _) h))
    rw [Finset.mem_sdiff] at hmem
    exact ⟨a, fun c hc heq => hmem.2 (Finset.mem_image.mpr ⟨c, hc, heq⟩)⟩
  -- Build a word x that avoids every codeword at every position
  classical
  let x : QaryWord q n := fun i => (hchoice i).choose
  -- x i ≠ c i for all i and c ∈ C (note: choose_spec gives c i ≠ x i, so use .symm)
  have hne : ∀ i : Fin n, ∀ c ∈ C, x i ≠ c i :=
    fun i c hc => ((hchoice i).choose_spec c hc).symm
  -- x is at Hamming distance n from every codeword (differs in all n positions)
  have hdist_n : ∀ c ∈ C, hammingDist x c = n := by
    intro c hc
    have hfilt : Finset.univ.filter (fun i : Fin n => x i ≠ c i) = Finset.univ :=
      Finset.filter_true_of_mem (fun i _ => hne i c hc)
    calc hammingDist x c
        = (Finset.univ.filter (fun i : Fin n => x i ≠ c i)).card := rfl
      _ = Finset.univ.card := by rw [hfilt]
      _ = n := by simp
  -- But C must cover x at radius n-1, giving some c with dist x c ≤ n-1 — contradiction
  obtain ⟨c, hc, hcover⟩ := hC x
  -- dist is an abbrev for hammingDist; make the connection explicit for omega
  have hcover' : hammingDist x c ≤ n - 1 := hcover
  have heq := hdist_n c hc
  omega

/-- **Exact covering number**: `K_q(n, n-1) = q`.
    The constant code of size `q` covers everything, and no smaller code can. -/
theorem qaryKSpec_radius_nMinusOne (q n : ℕ) (hn : 1 ≤ n) :
    QaryKSpec q n (n - 1) q := by
  refine ⟨constantQaryCode q n, constantQaryCode_card q n hn,
          constantQaryCode_covers q n hn, ?_⟩
  intro D hD
  exact constantQaryCode_card_le q n hn D hD

end RadiusNMinusOne

end CoveringCodes
