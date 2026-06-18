import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial

namespace CoveringCodes
namespace Database
namespace VanLaarhoven1989

set_option maxRecDepth 100000
set_option maxHeartbeats 0

/-!
## van Laarhoven et al. 1989 — Ternary covering codes, radius 1

Source: P.J.M. van Laarhoven, E.H.L. Aarts, J.H. van Lint, L.T. Wille,
"New Upper Bounds for the Football Pool Problem for 6, 7, and 8 Matches",
Journal of Combinatorial Theory, Series A 52(2) (1989), 304–312.

Proves K_3(6,1) ≤ 73, K_3(7,1) ≤ 186, and K_3(8,1) ≤ 486 by exhibiting explicit
covering codes.

Each code is stored as a flat Array ℕ of ternary-packed codewords
(enc(w) = Σ w[i]·3^i), then unpacked to a Finset.  Covering is checked by a
kernel-reduced certificate containing one radius-one move for every ambient word.
The certificate generator is not trusted: Lean verifies that every suggested move
lands in the packed code.
-/

def packedWordAux : (n : ℕ) → QaryWord 3 n → ℕ
  | 0, _ => 0
  | n + 1, w => (w 0).val + 3 * packedWordAux n (Fin.tail w)

def packedWord {n : ℕ} (w : QaryWord 3 n) : ℕ :=
  packedWordAux n w

def setCoord {n : ℕ} (x : QaryWord 3 n) (i : Fin n) (a : Fin 3) :
    QaryWord 3 n :=
  fun j => if j = i then a else x j

theorem hammingDist_setCoord_le_one {n : ℕ}
    (x : QaryWord 3 n) (i : Fin n) (a : Fin 3) :
    hammingDist x (setCoord x i a) ≤ 1 := by
  rw [hammingDist]
  exact (Finset.card_le_one).2 fun j hj k hk => by
    simp [setCoord] at hj hk
    by_cases hji : j = i
    · by_cases hki : k = i
      · exact hji.trans hki.symm
      · simp [hki] at hk
    · simp [hji] at hj

def ternaryPackedWords : (n : ℕ) → List ℕ
  | 0 => [0]
  | n + 1 =>
      List.flatMap (fun a : Fin 3 =>
        (ternaryPackedWords n).map fun w => a.val + 3 * w
      ) (List.finRange 3)

theorem mem_ternaryPackedWords {n : ℕ} (x : QaryWord 3 n) :
    packedWord x ∈ ternaryPackedWords n := by
  induction n with
  | zero =>
      simp [packedWord, packedWordAux, ternaryPackedWords]
  | succ n ih =>
      rw [ternaryPackedWords, List.mem_flatMap]
      refine ⟨x 0, by simp, ?_⟩
      rw [List.mem_map]
      refine ⟨packedWord (Fin.tail x), ih (Fin.tail x), ?_⟩
      simp [packedWord, packedWordAux]

def packedSetCoord : {n : ℕ} → ℕ → Fin n → Fin 3 → ℕ
  | 0, _, i, _ => Fin.elim0 i
  | n + 1, m, i, a =>
      Fin.cases (a.val + 3 * (m / 3))
        (fun j : Fin n => (m % 3) + 3 * packedSetCoord (n := n) (m / 3) j a)
        i

theorem packedWordAux_div3 {n : ℕ} (x : QaryWord 3 (n + 1)) :
    packedWordAux (n + 1) x / 3 = packedWordAux n (Fin.tail x) := by
  have hlt : (x 0).val < 3 := (x 0).isLt
  simp [packedWordAux, Nat.add_mul_div_left, Nat.div_eq_of_lt hlt]

theorem packedWordAux_mod3 {n : ℕ} (x : QaryWord 3 (n + 1)) :
    packedWordAux (n + 1) x % 3 = (x 0).val := by
  have hlt : (x 0).val < 3 := (x 0).isLt
  simp [packedWordAux, Nat.add_mul_mod_self_left, Nat.mod_eq_of_lt hlt]

theorem tail_setCoord_zero {n : ℕ} (x : QaryWord 3 (n + 1)) (a : Fin 3) :
    Fin.tail (setCoord x 0 a) = Fin.tail x := by
  funext j
  simp [Fin.tail, setCoord]

theorem tail_setCoord_succ {n : ℕ} (x : QaryWord 3 (n + 1)) (i : Fin n)
    (a : Fin 3) :
    Fin.tail (setCoord x i.succ a) = setCoord (Fin.tail x) i a := by
  funext j
  simp [Fin.tail, setCoord]

theorem packedSetCoord_word {n : ℕ} (x : QaryWord 3 n) (i : Fin n) (a : Fin 3) :
    packedSetCoord (n := n) (packedWord x) i a = packedWord (setCoord x i a) := by
  unfold packedWord
  revert x i a
  induction n with
  | zero =>
      intro x i a
      exact Fin.elim0 i
  | succ n ih =>
      intro x i a
      cases i using Fin.cases with
      | zero =>
          simp only [packedSetCoord, Fin.cases_zero]
          rw [packedWordAux_div3 x]
          simp [packedWordAux, setCoord, tail_setCoord_zero]
      | succ j =>
          simp only [packedSetCoord, Fin.cases_succ]
          rw [packedWordAux_div3 x, packedWordAux_mod3 x]
          rw [ih (Fin.tail x) j a]
          have h0 : (0 : Fin (n + 1)) ≠ j.succ := by
            intro h
            exact Fin.succ_ne_zero j h.symm
          simp [packedWordAux, setCoord, tail_setCoord_succ, h0]

def unpackWord : (n : ℕ) → ℕ → QaryWord 3 n
  | 0, _ => fun i => Fin.elim0 i
  | n + 1, m => Fin.cons ⟨m % 3, Nat.mod_lt _ (by decide)⟩ (unpackWord n (m / 3))

theorem unpack_packedWord {n : ℕ} (x : QaryWord 3 n) :
    unpackWord n (packedWord x) = x := by
  unfold packedWord
  induction n with
  | zero =>
      funext i
      exact Fin.elim0 i
  | succ n ih =>
      funext i
      cases i using Fin.cases with
      | zero =>
          simp [unpackWord, packedWordAux_mod3]
      | succ j =>
          simp [unpackWord, packedWordAux_div3, ih, Fin.tail]

def codeFromPacked (n : ℕ) (packed : Array ℕ) : Finset (QaryWord 3 n) :=
  (packed.toList.map (unpackWord n)).toFinset

theorem codeFromPacked_card_le (n : ℕ) (packed : Array ℕ) :
    (codeFromPacked n packed).card ≤ packed.size := by
  unfold codeFromPacked
  calc
    ((packed.toList.map (unpackWord n)).toFinset).card ≤
        (packed.toList.map (unpackWord n)).length := by
      exact List.toFinset_card_le _
    _ = packed.toList.length := by simp
    _ = packed.size := by simp

theorem mem_codeFromPacked_of_contains {n : ℕ} {packed : Array ℕ} {x : QaryWord 3 n}
    (h : packed.contains (packedWord x) = true) : x ∈ codeFromPacked n packed := by
  rw [← unpack_packedWord x]
  unfold codeFromPacked
  rw [List.mem_toFinset, List.mem_map]
  exact ⟨packedWord x, by simpa using (Array.contains_iff_mem.mp h), rfl⟩

inductive PackedMove (n : ℕ) where
  | self : PackedMove n
  | change : Fin n → Fin 3 → PackedMove n

def PackedMove.apply {n : ℕ} (x : QaryWord 3 n) : PackedMove n → QaryWord 3 n
  | .self => x
  | .change i a => setCoord x i a

def PackedMove.applyPacked {n : ℕ} (m : ℕ) : PackedMove n → ℕ
  | .self => m
  | .change i a => packedSetCoord (n := n) m i a

theorem PackedMove.packed_apply {n : ℕ} (x : QaryWord 3 n) (move : PackedMove n) :
    packedWord (move.apply x) = move.applyPacked (packedWord x) := by
  cases move with
  | self => rfl
  | change i a => exact (packedSetCoord_word x i a).symm

theorem PackedMove.dist_apply_le_one {n : ℕ} (x : QaryWord 3 n) (move : PackedMove n) :
    hammingDist x (move.apply x) ≤ 1 := by
  cases move with
  | self => simp [PackedMove.apply]
  | change i a => exact hammingDist_setCoord_le_one x i a

def PackedMove.ofCode (n : ℕ) (code : ℕ) : Option (PackedMove n) :=
  if code = 0 then
    some .self
  else
    let k := code - 1
    if hi : k / 3 < n then
      some (.change ⟨k / 3, hi⟩ ⟨k % 3, Nat.mod_lt _ (by decide)⟩)
    else
      none

def packedMoveCertEntry? {n : ℕ} (packed cert : Array ℕ) (m : ℕ) : Bool :=
  match cert[m]? with
  | none => false
  | some code =>
      match PackedMove.ofCode n code with
      | none => false
      | some move => packed.contains (move.applyPacked m)

theorem packedMoveCertEntry?_sound {n : ℕ} {packed cert : Array ℕ} {m : ℕ}
    (h : packedMoveCertEntry? (n := n) packed cert m = true) :
    ∃ move : PackedMove n, packed.contains (move.applyPacked m) = true := by
  unfold packedMoveCertEntry? at h
  cases hget : cert[m]? with
  | none => simp [hget] at h
  | some code =>
      cases hmove : PackedMove.ofCode n code with
      | none => simp [hget, hmove] at h
      | some move => exact ⟨move, by simpa [hget, hmove] using h⟩

def allPackedMoveCerts {n : ℕ} (packed cert : Array ℕ) : Bool :=
  (ternaryPackedWords n).all fun m => packedMoveCertEntry? (n := n) packed cert m

theorem packedMoveCert_covers {n : ℕ} {packed cert : Array ℕ}
    (h : allPackedMoveCerts (n := n) packed cert = true) :
    CoversFinset (codeFromPacked n packed) 1 := by
  intro x
  have hx := (List.all_eq_true.mp h) (packedWord x) (mem_ternaryPackedWords x)
  rcases packedMoveCertEntry?_sound hx with ⟨move, hmem⟩
  refine ⟨move.apply x, ?_, move.dist_apply_le_one x⟩
  apply mem_codeFromPacked_of_contains
  simpa [PackedMove.packed_apply] using hmem

end VanLaarhoven1989
end Database
end CoveringCodes
