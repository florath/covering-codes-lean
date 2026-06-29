import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import CoveringCodes.Database.Source
import CoveringCodes.Database.Sources.Trivial
import Mathlib.Tactic

/-!
# Known-bound upper certificate for K_10(6,1)

This module formalizes a compact two-coset syndrome construction over `Z/10Z`.
The six syndrome columns are

```text
(1,0), (0,1), (1,2), (1,4), (1,6), (1,8).
```

Their radius-one syndrome balls, translated by the two cosets `(0,0)` and
`(5,1)`, cover all `10 * 10` syndromes.  The code is represented as an image
of `Fin 2 × QaryWord 10 4`, giving cardinality at most `2 * 10^4 = 20000`.
-/

namespace CoveringCodes
namespace Database

namespace DenaryBlokhuisLam

private abbrev f10_0 : Fin 10 := ⟨0, by decide⟩
private abbrev f10_1 : Fin 10 := ⟨1, by decide⟩
private abbrev f10_5 : Fin 10 := ⟨5, by decide⟩

private abbrev f6_0 : Fin 6 := ⟨0, by decide⟩
private abbrev f6_1 : Fin 6 := ⟨1, by decide⟩
private abbrev f6_2 : Fin 6 := ⟨2, by decide⟩
private abbrev f6_3 : Fin 6 := ⟨3, by decide⟩
private abbrev f6_4 : Fin 6 := ⟨4, by decide⟩
private abbrev f6_5 : Fin 6 := ⟨5, by decide⟩

private abbrev f4_0 : Fin 4 := ⟨0, by decide⟩
private abbrev f4_1 : Fin 4 := ⟨1, by decide⟩
private abbrev f4_2 : Fin 4 := ⟨2, by decide⟩
private abbrev f4_3 : Fin 4 := ⟨3, by decide⟩

private def add10 (a b : Fin 10) : Fin 10 := ⟨(a.val + b.val) % 10, by omega⟩
private def sub10 (a b : Fin 10) : Fin 10 := ⟨(10 + a.val - b.val) % 10, by omega⟩
private def mul10 (k : Nat) (a : Fin 10) : Fin 10 := ⟨(k * a.val) % 10, by omega⟩
private def asZ10 (a : Fin 10) : ZMod 10 := a.val

private theorem asZ10_add10 (a b : Fin 10) :
    asZ10 (add10 a b) = asZ10 a + asZ10 b := by
  fin_cases a <;> fin_cases b <;> native_decide

private theorem asZ10_sub10 (a b : Fin 10) :
    asZ10 (sub10 a b) = asZ10 a - asZ10 b := by
  fin_cases a <;> fin_cases b <;> native_decide

private theorem asZ10_mul10_2 (a : Fin 10) :
    asZ10 (mul10 2 a) = 2 * asZ10 a := by
  fin_cases a <;> native_decide

private theorem asZ10_mul10_4 (a : Fin 10) :
    asZ10 (mul10 4 a) = 4 * asZ10 a := by
  fin_cases a <;> native_decide

private theorem asZ10_mul10_6 (a : Fin 10) :
    asZ10 (mul10 6 a) = 6 * asZ10 a := by
  fin_cases a <;> native_decide

private theorem asZ10_mul10_8 (a : Fin 10) :
    asZ10 (mul10 8 a) = 8 * asZ10 a := by
  fin_cases a <;> native_decide

private theorem asZ10_zero : asZ10 f10_0 = 0 := by
  native_decide

private theorem asZ10_fin_zero : asZ10 (0 : Fin 10) = 0 := by
  native_decide

private theorem fin10_ext_of_asZ10_eq {a b : Fin 10} (h : asZ10 a = asZ10 b) : a = b := by
  apply Fin.ext
  have hv := congrArg ZMod.val h
  simp [asZ10] at hv
  omega

private theorem sub10_zero (a : Fin 10) : sub10 a f10_0 = a := by
  fin_cases a <;> native_decide

private theorem sub10_self_sub (a b : Fin 10) : sub10 a (sub10 a b) = b := by
  fin_cases a <;> fin_cases b <;> native_decide

private def add10List : List (Fin 10) → Fin 10
  | [] => f10_0
  | a :: rest => add10 a (add10List rest)

private def coset0 (c : Fin 2) : Fin 10 :=
  if c.val = 0 then f10_0 else f10_5

private def coset1 (c : Fin 2) : Fin 10 :=
  if c.val = 0 then f10_0 else f10_1

private def linearWord (coset : Fin 2) (free : QaryWord 10 4) : QaryWord 10 6 :=
  let x2 := free f4_0
  let x3 := free f4_1
  let x4 := free f4_2
  let x5 := free f4_3
  fun i =>
    if i = f6_0 then
      sub10 (coset0 coset) (add10List [x2, x3, x4, x5])
    else if i = f6_1 then
      sub10 (coset1 coset) (add10List [mul10 2 x2, mul10 4 x3, mul10 6 x4, mul10 8 x5])
    else if i = f6_2 then x2
    else if i = f6_3 then x3
    else if i = f6_4 then x4
    else x5

private def linearFree (w : QaryWord 10 6) : QaryWord 10 4 :=
  fun i =>
    if i = f4_0 then w f6_2
    else if i = f4_1 then w f6_3
    else if i = f4_2 then w f6_4
    else w f6_5

private def syndrome0 (w : QaryWord 10 6) : Fin 10 :=
  add10List [w f6_0, w f6_2, w f6_3, w f6_4, w f6_5]

private def syndrome1 (w : QaryWord 10 6) : Fin 10 :=
  add10List [w f6_1, mul10 2 (w f6_2), mul10 4 (w f6_3),
    mul10 6 (w f6_4), mul10 8 (w f6_5)]

private theorem linearWord_linearFree_eq_of_syndrome (coset : Fin 2) (w : QaryWord 10 6)
    (h0 : syndrome0 w = coset0 coset) (h1 : syndrome1 w = coset1 coset) :
    linearWord coset (linearFree w) = w := by
  have h0' :
      sub10 (coset0 coset) (add10List [w f6_2, w f6_3, w f6_4, w f6_5]) = w f6_0 := by
    apply fin10_ext_of_asZ10_eq
    have hz := congrArg asZ10 h0
    unfold syndrome0 at hz
    simp [add10List, asZ10_add10, asZ10_sub10] at hz ⊢
    rw [← hz]
    ring_nf
  have h1' :
      sub10 (coset1 coset)
        (add10List [mul10 2 (w f6_2), mul10 4 (w f6_3),
          mul10 6 (w f6_4), mul10 8 (w f6_5)]) = w f6_1 := by
    apply fin10_ext_of_asZ10_eq
    have hz := congrArg asZ10 h1
    unfold syndrome1 at hz
    simp [add10List, asZ10_add10, asZ10_sub10, asZ10_mul10_2, asZ10_mul10_4,
      asZ10_mul10_6, asZ10_mul10_8] at hz ⊢
    rw [← hz]
    ring_nf
  funext i
  fin_cases i
  · simpa [linearWord, linearFree, f6_0, f6_1, f6_2, f6_3, f6_4, f6_5, f4_0, f4_1,
      f4_2, f4_3] using h0'
  · simpa [linearWord, linearFree, f6_0, f6_1, f6_2, f6_3, f6_4, f6_5, f4_0, f4_1,
      f4_2, f4_3] using h1'
  · simp [linearWord, linearFree, f6_0, f6_1, f6_2, f6_3, f6_4, f6_5, f4_0, f4_1,
      f4_2, f4_3]
  · simp [linearWord, linearFree, f6_0, f6_1, f6_2, f6_3, f6_4, f6_5, f4_0, f4_1,
      f4_2, f4_3]
  · simp [linearWord, linearFree, f6_0, f6_1, f6_2, f6_3, f6_4, f6_5, f4_0, f4_1,
      f4_2, f4_3]
  · simp [linearWord, linearFree, f6_0, f6_1, f6_2, f6_3, f6_4, f6_5, f4_0, f4_1,
      f4_2, f4_3]

private def inSyndromeBall (s0 s1 : Fin 10) : Bool :=
  (s0 = f10_0 && s1 = f10_0) ||
  (s1 = f10_0) ||
  (s0 = f10_0) ||
  (s1 = mul10 2 s0) ||
  (s1 = mul10 4 s0) ||
  (s1 = mul10 6 s0) ||
  (s1 = mul10 8 s0)

private def syndromeCoset (w : QaryWord 10 6) : Fin 2 :=
  if inSyndromeBall (syndrome0 w) (syndrome1 w) then 0 else 1

private def oneHot (pos : Fin 6) (value : Fin 10) : QaryWord 10 6 :=
  fun i => if i = pos then value else f10_0

private def correction (s0 s1 : Fin 10) : QaryWord 10 6 :=
  if s0 = f10_0 && s1 = f10_0 then
    fun _ => f10_0
  else if s1 = f10_0 then
    oneHot f6_0 s0
  else if s0 = f10_0 then
    oneHot f6_1 s1
  else if s1 = mul10 2 s0 then
    oneHot f6_2 s0
  else if s1 = mul10 4 s0 then
    oneHot f6_3 s0
  else if s1 = mul10 6 s0 then
    oneHot f6_4 s0
  else if s1 = mul10 8 s0 then
    oneHot f6_5 s0
  else
    fun _ => f10_0

private def subtractWord (x e : QaryWord 10 6) : QaryWord 10 6 :=
  fun i => sub10 (x i) (e i)

private theorem syndrome0_subtractWord (x e : QaryWord 10 6) :
    syndrome0 (subtractWord x e) = sub10 (syndrome0 x) (syndrome0 e) := by
  apply fin10_ext_of_asZ10_eq
  unfold syndrome0 subtractWord
  simp [add10List, asZ10_add10, asZ10_sub10, asZ10_fin_zero]
  ring_nf

private theorem syndrome1_subtractWord (x e : QaryWord 10 6) :
    syndrome1 (subtractWord x e) = sub10 (syndrome1 x) (syndrome1 e) := by
  apply fin10_ext_of_asZ10_eq
  unfold syndrome1 subtractWord
  simp [add10List, asZ10_add10, asZ10_sub10, asZ10_mul10_2, asZ10_mul10_4,
    asZ10_mul10_6, asZ10_mul10_8, asZ10_fin_zero]
  ring_nf

private def support (w : QaryWord 10 6) : Finset (Fin 6) :=
  Finset.univ.filter (fun i => w i ≠ f10_0)

private theorem subtractWord_dist_le_of_support (x e : QaryWord 10 6)
    (hw : (support e).card ≤ 1) :
    hammingDist x (subtractWord x e) ≤ 1 := by
  have hsubset : (Finset.univ.filter fun i : Fin 6 => x i ≠ subtractWord x e i) ⊆ support e := by
    intro i hi
    simp only [support, Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
    by_contra hzero
    have heq : e i = f10_0 := by simpa using hzero
    apply hi
    unfold subtractWord
    rw [heq]
    exact (sub10_zero (x i)).symm
  calc
    hammingDist x (subtractWord x e)
        = (Finset.univ.filter fun i : Fin 6 => x i ≠ subtractWord x e i).card := rfl
    _ ≤ (support e).card := Finset.card_le_card hsubset
    _ ≤ 1 := hw

set_option maxRecDepth 20000 in
private theorem selected_diff_in_syndrome_ball :
    ∀ s0 s1 : Fin 10,
      let coset : Fin 2 := if inSyndromeBall s0 s1 then 0 else 1
      inSyndromeBall (sub10 s0 (coset0 coset)) (sub10 s1 (coset1 coset)) = true := by
  native_decide

set_option maxRecDepth 20000 in
private theorem correction_syndrome :
    ∀ s0 s1 : Fin 10,
      inSyndromeBall s0 s1 = true →
        syndrome0 (correction s0 s1) = s0 ∧ syndrome1 (correction s0 s1) = s1 := by
  native_decide

set_option maxRecDepth 20000 in
private theorem correction_weight :
    ∀ s0 s1 : Fin 10, (support (correction s0 s1)).card ≤ 1 := by
  native_decide

private def repairError (x : QaryWord 10 6) : QaryWord 10 6 :=
  let coset := syndromeCoset x
  let ds0 := sub10 (syndrome0 x) (coset0 coset)
  let ds1 := sub10 (syndrome1 x) (coset1 coset)
  correction ds0 ds1

private def repair (x : QaryWord 10 6) : QaryWord 10 6 :=
  subtractWord x (repairError x)

private def code (_ : Unit) : Finset (QaryWord 10 6) :=
  (Finset.univ : Finset (Fin 2 × QaryWord 10 4)).image
    (fun p => linearWord p.1 p.2)

private theorem repair_mem (x : QaryWord 10 6) :
    repair x ∈ code () := by
  let coset := syndromeCoset x
  let ds0 := sub10 (syndrome0 x) (coset0 coset)
  let ds1 := sub10 (syndrome1 x) (coset1 coset)
  have hball : inSyndromeBall ds0 ds1 = true := by
    simpa [coset, ds0, ds1, syndromeCoset] using
      selected_diff_in_syndrome_ball (syndrome0 x) (syndrome1 x)
  have hcorr := correction_syndrome ds0 ds1 hball
  have h0 : syndrome0 (repair x) = coset0 coset := by
    rw [repair, repairError, syndrome0_subtractWord]
    simp [coset, ds0, ds1, hcorr.1, sub10_self_sub]
  have h1 : syndrome1 (repair x) = coset1 coset := by
    rw [repair, repairError, syndrome1_subtractWord]
    simp [coset, ds0, ds1, hcorr.2, sub10_self_sub]
  refine Finset.mem_image.mpr ⟨(coset, linearFree (repair x)), Finset.mem_univ _, ?_⟩
  exact linearWord_linearFree_eq_of_syndrome coset (repair x) h0 h1

private theorem repair_dist (x : QaryWord 10 6) : hammingDist x (repair x) ≤ 1 := by
  unfold repair repairError
  exact subtractWord_dist_le_of_support x
    (correction
      (sub10 (syndrome0 x) (coset0 (syndromeCoset x)))
      (sub10 (syndrome1 x) (coset1 (syndromeCoset x))))
    (correction_weight
      (sub10 (syndrome0 x) (coset0 (syndromeCoset x)))
      (sub10 (syndrome1 x) (coset1 (syndromeCoset x))))

private theorem code_covers : CoversFinset (code ()) 1 := by
  intro x
  exact ⟨repair x, repair_mem x, repair_dist x⟩

private theorem code_card : (code ()).card ≤ 20000 := by
  calc
    (code ()).card ≤ (Finset.univ : Finset (Fin 2 × QaryWord 10 4)).card := by
      simpa [code] using
        Finset.card_image_le (s := (Finset.univ : Finset (Fin 2 × QaryWord 10 4)))
    _ = 20000 := by
      rw [Finset.card_univ]
      simp

theorem upper : QaryKUpper 10 6 1 20000 :=
  ⟨code (), code_card, code_covers⟩

end DenaryBlokhuisLam

def knownBoundQ10N6R1UpperName : String :=
  "lean_known_bounds_q10_n6_r1_blokhuis_lam_syndrome"

def knownBoundQ10N6R1Upper (q n r : Nat) : Nat :=
  if q = 10 ∧ n = 6 ∧ r = 1 then 20000 else trivialUpper q n r

theorem knownBoundQ10N6R1Upper_valid (q n r : Nat) :
    QaryKUpper q n r (knownBoundQ10N6R1Upper q n r) := by
  by_cases h : q = 10 ∧ n = 6 ∧ r = 1
  · rcases h with ⟨rfl, rfl, rfl⟩
    simpa [knownBoundQ10N6R1Upper] using DenaryBlokhuisLam.upper
  · simpa [knownBoundQ10N6R1Upper, h] using trivialUpper_valid q n r

def knownBoundQ10N6R1UpperSource : UpperBoundSource where
  value := knownBoundQ10N6R1Upper
  trace := fun q n r =>
    .primitive knownBoundQ10N6R1UpperName (knownBoundQ10N6R1Upper_valid q n r)

end Database
end CoveringCodes
