import CoveringCodes.SDP.GijswijtPolak2025.Certificates.Linear
import CoveringCodes.SDP.GijswijtPolak2025.Certificates.PSDGram

/-!
# Generic weak-duality certificate interface
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

/-- Constraints represented by named nonnegative affine atoms. -/
def LinearConstraints {Var Atom : Type} [Fintype Var]
    (atoms : Atom -> LinExpr Var) (x : Var -> Rat) : Prop :=
  forall a : Atom, 0 <= (atoms a).eval x

/--
Exact affine weak-duality certificate.

The certificate checks the identity
`objective - bound = slack + sum_a multiplier_a * atom_a` by comparing rational
constants and coefficients.  If all atom expressions are nonnegative on a
feasible point and the multipliers/slack are nonnegative, the objective is at
least `bound`.
-/
structure LinearObjectiveLowerCertificate
    (Var Atom : Type) [Fintype Var] [Fintype Atom]
    (atoms : Atom -> LinExpr Var) (objective : LinExpr Var) (bound : Rat) where
  multiplier : Atom -> Rat
  multiplier_nonneg : forall a, 0 <= multiplier a
  slack : Rat
  slack_nonneg : 0 <= slack
  const_identity :
    objective.const - bound =
      slack + Finset.univ.sum (fun a : Atom => multiplier a * (atoms a).const)
  coeff_identity :
    forall i : Var,
      objective.coeff i =
        Finset.univ.sum (fun a : Atom => multiplier a * (atoms a).coeff i)

theorem LinearObjectiveLowerCertificate.eval_identity
    {Var Atom : Type} [Fintype Var] [Fintype Atom]
    {atoms : Atom -> LinExpr Var} {objective : LinExpr Var} {bound : Rat}
    (cert : LinearObjectiveLowerCertificate Var Atom atoms objective bound)
    (x : Var -> Rat) :
    objective.eval x - bound =
      cert.slack + Finset.univ.sum (fun a : Atom =>
        cert.multiplier a * (atoms a).eval x) := by
  have hvar :
      (∑ i : Var, objective.coeff i * x i) =
        ∑ a : Atom, cert.multiplier a *
          (∑ i : Var, (atoms a).coeff i * x i) := by
    simp_rw [cert.coeff_identity]
    calc
      (∑ i : Var,
          (∑ a : Atom, cert.multiplier a * (atoms a).coeff i) * x i) =
          ∑ i : Var, ∑ a : Atom,
            (cert.multiplier a * (atoms a).coeff i) * x i := by
            simp [Finset.sum_mul]
      _ = ∑ a : Atom, ∑ i : Var,
            (cert.multiplier a * (atoms a).coeff i) * x i := by
            rw [Finset.sum_comm]
      _ = ∑ a : Atom, cert.multiplier a *
            (∑ i : Var, (atoms a).coeff i * x i) := by
            simp [Finset.mul_sum, mul_assoc]
  unfold LinExpr.eval
  rw [show objective.const + (∑ i : Var, objective.coeff i * x i) - bound =
      (objective.const - bound) + (∑ i : Var, objective.coeff i * x i) by ring]
  rw [cert.const_identity, hvar]
  simp [mul_add, Finset.sum_add_distrib]
  ring

theorem LinearObjectiveLowerCertificate.sound
    {Var Atom : Type} [Fintype Var] [Fintype Atom]
    {atoms : Atom -> LinExpr Var} {objective : LinExpr Var} {bound : Rat}
    (cert : LinearObjectiveLowerCertificate Var Atom atoms objective bound) :
    forall x, LinearConstraints atoms x -> bound <= objective.eval x := by
  intro x hx
  have hidentity := cert.eval_identity x
  have hsum :
      0 <= Finset.univ.sum (fun a : Atom =>
        cert.multiplier a * (atoms a).eval x) := by
    exact Finset.sum_nonneg (fun a _ =>
      mul_nonneg (cert.multiplier_nonneg a) (hx a))
  have hnonneg :
      0 <= cert.slack + Finset.univ.sum (fun a : Atom =>
        cert.multiplier a * (atoms a).eval x) :=
    add_nonneg cert.slack_nonneg hsum
  linarith

/-- Feasibility for scalar affine atoms and dependent PSD matrix atoms. -/
def SDPConstraints
    {Var LinAtom Block : Type} {Idx : Block -> Type}
    [Fintype Var] [forall b : Block, Fintype (Idx b)]
    (linearAtoms : LinAtom -> LinExpr Var)
    (matrixAtoms : forall b : Block, Matrix (Idx b) (Idx b) (LinExpr Var))
    (x : Var -> Rat) : Prop :=
  LinearConstraints linearAtoms x /\
    forall b : Block, RatPSD (MatrixLinExpr.eval (matrixAtoms b) x)

/-- Dual expression made from scalar atom multipliers and PSD matrix dual slacks. -/
def sdpDualExpression
    {Var LinAtom Block : Type} {Idx : Block -> Type}
    [Fintype LinAtom] [Fintype Block] [forall b : Block, Fintype (Idx b)]
    (linearAtoms : LinAtom -> LinExpr Var)
    (matrixAtoms : forall b : Block, Matrix (Idx b) (Idx b) (LinExpr Var))
    (linearMultiplier : LinAtom -> Rat)
    (slack : Rat)
    (dualMatrix : forall b : Block, Matrix (Idx b) (Idx b) Rat) :
    LinExpr Var :=
  LinExpr.add (LinExpr.constExpr Var slack)
    (LinExpr.add
      (LinExpr.sum Finset.univ (fun a : LinAtom =>
        LinExpr.smul (linearMultiplier a) (linearAtoms a)))
      (LinExpr.sum Finset.univ (fun b : Block =>
        MatrixLinExpr.innerExpr (dualMatrix b) (matrixAtoms b))))

@[ext]
theorem LinExpr.ext_coeff_const {ι : Type} {e f : LinExpr ι}
    (hcoeff : forall i : ι, e.coeff i = f.coeff i)
    (hconst : e.const = f.const) :
    e = f := by
  cases e with
  | mk eCoeff eConst =>
    cases f with
    | mk fCoeff fConst =>
      dsimp at hcoeff hconst ⊢
      cases hconst
      congr
      funext i
      exact hcoeff i

namespace LinExpr

def finValIco (n start stop : Nat) : Finset (Fin n) :=
  Finset.univ.filter (fun i : Fin n => start <= i.val ∧ i.val < stop)

def sumFinRange {ι : Type} {n : Nat}
    (f : Fin n -> LinExpr ι) (start stop : Nat) : LinExpr ι :=
  LinExpr.sum (finValIco n start stop) f

def foldFinRanges {ι : Type} {n : Nat}
    (f : Fin n -> LinExpr ι) (ranges : List (Nat × Nat)) : LinExpr ι :=
  ranges.foldr
    (fun range acc => LinExpr.add (sumFinRange f range.1 range.2) acc)
    (LinExpr.constExpr ι 0)

theorem foldr_add_coeff_eq_list_sum {ι : Type}
    (l : List (LinExpr ι)) (i : ι) :
    (l.foldr LinExpr.add (LinExpr.constExpr ι 0)).coeff i =
      (l.map (fun e => e.coeff i)).sum := by
  induction l with
  | nil =>
      simp [LinExpr.constExpr]
  | cons e tail ih =>
      simp [LinExpr.add, ih]

theorem foldr_add_const_eq_list_sum {ι : Type}
    (l : List (LinExpr ι)) :
    (l.foldr LinExpr.add (LinExpr.constExpr ι 0)).const =
      (l.map (fun e => e.const)).sum := by
  induction l with
  | nil =>
      simp [LinExpr.constExpr]
  | cons e tail ih =>
      simp [LinExpr.add, ih]

theorem foldr_add_ofFn_eq_sum {ι : Type} {n : Nat}
    (f : Fin n -> LinExpr ι) :
    (List.ofFn f).foldr LinExpr.add (LinExpr.constExpr ι 0) =
      LinExpr.sum Finset.univ f := by
  apply LinExpr.ext_coeff_const
  · intro i
    rw [foldr_add_coeff_eq_list_sum]
    simpa [LinExpr.sum] using
      (List.sum_ofFn (f := fun a : Fin n => (f a).coeff i))
  · rw [foldr_add_const_eq_list_sum]
    simpa [LinExpr.sum] using
      (List.sum_ofFn (f := fun a : Fin n => (f a).const))

def finShiftEmbedding (n start len : Nat) (hstop : start + len <= n) :
    Fin len ↪ Fin n where
  toFun k := ⟨start + k.val, by omega⟩
  inj' := by
    intro a b h
    apply Fin.ext
    have hval := congrArg Fin.val h
    dsimp at hval
    omega

@[simp]
theorem finShiftEmbedding_apply_val
    {n start len : Nat} (hstop : start + len <= n) (k : Fin len) :
    ((finShiftEmbedding n start len hstop) k).val = start + k.val := rfl

inductive FinRangeChain : Nat -> List (Nat × Nat) -> Nat -> Prop where
  | nil (start : Nat) : FinRangeChain start [] start
  | cons {start mid stop : Nat} {ranges : List (Nat × Nat)}
      (hstart : start <= mid)
      (tail : FinRangeChain mid ranges stop) :
      FinRangeChain start ((start, mid) :: ranges) stop

theorem FinRangeChain.start_le_stop
    {start stop : Nat} {ranges : List (Nat × Nat)}
    (hchain : FinRangeChain start ranges stop) :
    start <= stop := by
  induction hchain with
  | nil start => exact le_rfl
  | cons hstart _ ih => exact le_trans hstart ih

@[simp]
theorem sum_empty {α ι : Type} (f : α -> LinExpr ι) :
    LinExpr.sum ∅ f = LinExpr.constExpr ι 0 := by
  apply LinExpr.ext_coeff_const
  · intro i
    simp [LinExpr.sum, LinExpr.constExpr]
  · simp [LinExpr.sum, LinExpr.constExpr]

theorem sum_union {α ι : Type} [DecidableEq α]
    (s t : Finset α) (f : α -> LinExpr ι) (hdisj : Disjoint s t) :
    LinExpr.sum (s ∪ t) f =
      LinExpr.add (LinExpr.sum s f) (LinExpr.sum t f) := by
  apply LinExpr.ext_coeff_const
  · intro i
    simp [LinExpr.sum, LinExpr.add, Finset.sum_union hdisj]
  · simp [LinExpr.sum, LinExpr.add, Finset.sum_union hdisj]

@[simp]
theorem finValIco_self (n start : Nat) :
    finValIco n start start = ∅ := by
  ext i
  simp [finValIco]

theorem finValIco_union_adjacent
    {n start mid stop : Nat} (hsm : start <= mid) (hms : mid <= stop) :
    finValIco n start stop =
      finValIco n start mid ∪ finValIco n mid stop := by
  ext i
  simp [finValIco]
  constructor
  · intro h
    by_cases him : i.val < mid
    · exact Or.inl ⟨h.1, him⟩
    · exact Or.inr ⟨le_of_not_gt him, h.2⟩
  · intro h
    rcases h with h | h
    · exact ⟨h.1, lt_of_lt_of_le h.2 hms⟩
    · exact ⟨le_trans hsm h.1, h.2⟩

theorem finValIco_eq_map_univ_shift
    {n start len : Nat} (hstop : start + len <= n) :
    finValIco n start (start + len) =
      Finset.univ.map (finShiftEmbedding n start len hstop) := by
  ext i
  simp [finValIco, finShiftEmbedding]
  constructor
  · intro h
    have hlen : i.val - start < len := by omega
    refine ⟨⟨i.val - start, hlen⟩, ?_⟩
    apply Fin.ext
    simp
    omega
  · intro h
    rcases h with ⟨k, hk⟩
    have hval := congrArg Fin.val hk
    dsimp at hval
    constructor <;> omega

theorem disjoint_finValIco_adjacent
    {n start mid stop : Nat} :
    Disjoint (finValIco n start mid) (finValIco n mid stop) := by
  rw [Finset.disjoint_left]
  intro i hiLeft hiRight
  simp [finValIco] at hiLeft hiRight
  exact not_lt_of_ge hiRight.1 hiLeft.2

@[simp]
theorem sumFinRange_self {ι : Type} {n : Nat}
    (f : Fin n -> LinExpr ι) (start : Nat) :
    sumFinRange f start start = LinExpr.constExpr ι 0 := by
  simp [sumFinRange]

theorem sumFinRange_zero_self {ι : Type} {n : Nat}
    (f : Fin n -> LinExpr ι) :
    sumFinRange f 0 n = LinExpr.sum Finset.univ f := by
  unfold sumFinRange
  congr 1
  ext i
  simp [finValIco]

theorem sumFinRange_split {ι : Type} {n start mid stop : Nat}
    (f : Fin n -> LinExpr ι) (hsm : start <= mid) (hms : mid <= stop) :
    sumFinRange f start stop =
      LinExpr.add (sumFinRange f start mid) (sumFinRange f mid stop) := by
  unfold sumFinRange
  rw [finValIco_union_adjacent hsm hms]
  exact sum_union (finValIco n start mid) (finValIco n mid stop) f
    disjoint_finValIco_adjacent

theorem sumFinRange_eq_fin_sum_shift {ι : Type} {n start len : Nat}
    (f : Fin n -> LinExpr ι) (hstop : start + len <= n) :
    sumFinRange f start (start + len) =
      LinExpr.sum Finset.univ
        (fun k : Fin len => f ((finShiftEmbedding n start len hstop) k)) := by
  unfold sumFinRange
  rw [finValIco_eq_map_univ_shift hstop]
  apply LinExpr.ext_coeff_const
  · intro i
    simp [LinExpr.sum, Finset.sum_map]
  · simp [LinExpr.sum, Finset.sum_map]

theorem sum_smul_eq_sumFinRange_of_shift {ι : Type} {n start len : Nat}
    (multiplier : Fin n -> Rat)
    (fullExpr : Fin n -> LinExpr ι)
    (weight : Fin len -> Rat)
    (atomExpr : Fin len -> LinExpr ι)
    (hstop : start + len <= n)
    (hmul : forall cut : Fin len,
      multiplier ((finShiftEmbedding n start len hstop) cut) = weight cut)
    (hexpr : forall cut : Fin len,
      fullExpr ((finShiftEmbedding n start len hstop) cut) = atomExpr cut) :
    LinExpr.sum Finset.univ
      (fun cut : Fin len => LinExpr.smul (weight cut) (atomExpr cut)) =
      sumFinRange
        (fun atom : Fin n => LinExpr.smul (multiplier atom) (fullExpr atom))
        start (start + len) := by
  rw [sumFinRange_eq_fin_sum_shift
    (fun atom : Fin n => LinExpr.smul (multiplier atom) (fullExpr atom))
    hstop]
  apply LinExpr.ext_coeff_const
  · intro i
    simp [LinExpr.sum, LinExpr.smul]
    apply Finset.sum_congr rfl
    intro cut _
    rw [hmul cut, hexpr cut]
  · simp [LinExpr.sum, LinExpr.smul]
    apply Finset.sum_congr rfl
    intro cut _
    rw [hmul cut, hexpr cut]

/-- Fold over a generated consecutive atom list equals the corresponding range sum. -/
theorem foldr_add_eq_sumFinRange_of_shift_list {ι : Type} {n start len : Nat}
    (f : Fin n -> LinExpr ι)
    (atoms : List (Fin n))
    (hstop : start + len <= n)
    (hatoms : atoms =
      List.ofFn (fun k : Fin len =>
        (finShiftEmbedding n start len hstop) k)) :
    atoms.foldr
      (fun atom acc => LinExpr.add (f atom) acc)
      (LinExpr.constExpr ι 0) =
    sumFinRange f start (start + len) := by
  rw [hatoms]
  rw [sumFinRange_eq_fin_sum_shift f hstop]
  apply LinExpr.ext_coeff_const
  · intro i
    have hcoeff (l : List (Fin n)) :
        (l.foldr
          (fun atom acc => LinExpr.add (f atom) acc)
          (LinExpr.constExpr ι 0)).coeff i =
        (l.map (fun atom : Fin n => (f atom).coeff i)).sum := by
      induction l with
      | nil => simp [LinExpr.constExpr]
      | cons _ _ ih => simpa [LinExpr.add] using ih
    rw [hcoeff]
    rw [List.map_ofFn]
    rw [List.sum_ofFn]
    rfl
  ·
    have hconst (l : List (Fin n)) :
        (l.foldr
          (fun atom acc => LinExpr.add (f atom) acc)
          (LinExpr.constExpr ι 0)).const =
        (l.map (fun atom : Fin n => (f atom).const)).sum := by
      induction l with
      | nil => simp [LinExpr.constExpr]
      | cons _ _ ih => simpa [LinExpr.add] using ih
    rw [hconst]
    rw [List.map_ofFn]
    rw [List.sum_ofFn]
    rfl

theorem foldFinRanges_eq_sumFinRange_of_chain
    {ι : Type} {n start stop : Nat} (f : Fin n -> LinExpr ι)
    {ranges : List (Nat × Nat)} (hchain : FinRangeChain start ranges stop) :
    foldFinRanges f ranges = sumFinRange f start stop := by
  induction hchain with
  | nil start =>
      simp [foldFinRanges]
  | cons hstart tail ih =>
      have hTail : _ := FinRangeChain.start_le_stop tail
      change
        LinExpr.add (sumFinRange f _ _) (foldFinRanges f _) =
          sumFinRange f _ _
      rw [ih]
      exact (sumFinRange_split f hstart hTail).symm

theorem sum_fin_univ_eq_foldFinRanges
    {ι : Type} {n : Nat} (f : Fin n -> LinExpr ι)
    (ranges : List (Nat × Nat)) (hchain : FinRangeChain 0 ranges n) :
    LinExpr.sum Finset.univ f = foldFinRanges f ranges := by
  rw [← sumFinRange_zero_self f]
  exact (foldFinRanges_eq_sumFinRange_of_chain f hchain).symm

end LinExpr

/--
Exact SDP weak-duality certificate.

It checks an affine identity for `objective - bound` as a sum of:
scalar nonnegative atoms with nonnegative multipliers, a nonnegative scalar slack,
and inner products of primal PSD matrix atoms with Gram-certified dual PSD
matrices.
-/
structure SDPObjectiveLowerCertificate
    (Var LinAtom Block : Type) (Idx GramIdx : Block -> Type)
    [Fintype Var] [Fintype LinAtom] [Fintype Block]
    [forall b : Block, Fintype (Idx b)]
    [forall b : Block, Fintype (GramIdx b)]
    (linearAtoms : LinAtom -> LinExpr Var)
    (matrixAtoms : forall b : Block, Matrix (Idx b) (Idx b) (LinExpr Var))
    (objective : LinExpr Var) (bound : Rat) where
  linearMultiplier : LinAtom -> Rat
  linearMultiplier_nonneg : forall a, 0 <= linearMultiplier a
  slack : Rat
  slack_nonneg : 0 <= slack
  dualMatrix : forall b : Block, Matrix (Idx b) (Idx b) Rat
  dualMatrixGram :
    forall b : Block, GramEntryCertificate (Idx b) (GramIdx b) (dualMatrix b)
  const_identity :
    (LinExpr.subConst objective bound).const =
      (sdpDualExpression linearAtoms matrixAtoms linearMultiplier slack dualMatrix).const
  coeff_identity :
    forall i : Var,
      (LinExpr.subConst objective bound).coeff i =
        (sdpDualExpression linearAtoms matrixAtoms linearMultiplier slack dualMatrix).coeff i

theorem SDPObjectiveLowerCertificate.eval_identity
    {Var LinAtom Block : Type} {Idx GramIdx : Block -> Type}
    [Fintype Var] [Fintype LinAtom] [Fintype Block]
    [forall b : Block, Fintype (Idx b)]
    [forall b : Block, Fintype (GramIdx b)]
    {linearAtoms : LinAtom -> LinExpr Var}
    {matrixAtoms : forall b : Block, Matrix (Idx b) (Idx b) (LinExpr Var)}
    {objective : LinExpr Var} {bound : Rat}
    (cert : SDPObjectiveLowerCertificate Var LinAtom Block Idx GramIdx
      linearAtoms matrixAtoms objective bound)
    (x : Var -> Rat) :
    objective.eval x - bound =
      cert.slack +
        Finset.univ.sum (fun a : LinAtom =>
          cert.linearMultiplier a * (linearAtoms a).eval x) +
        Finset.univ.sum (fun b : Block =>
          matrixInner (cert.dualMatrix b) (MatrixLinExpr.eval (matrixAtoms b) x)) := by
  have h :=
    LinExpr.eval_eq_of_coeff_const_eq cert.const_identity cert.coeff_identity x
  rw [LinExpr.eval_subConst] at h
  simpa [sdpDualExpression, add_assoc] using h

theorem SDPObjectiveLowerCertificate.sound
    {Var LinAtom Block : Type} {Idx GramIdx : Block -> Type}
    [Fintype Var] [Fintype LinAtom] [Fintype Block]
    [forall b : Block, Fintype (Idx b)]
    [forall b : Block, Fintype (GramIdx b)]
    {linearAtoms : LinAtom -> LinExpr Var}
    {matrixAtoms : forall b : Block, Matrix (Idx b) (Idx b) (LinExpr Var)}
    {objective : LinExpr Var} {bound : Rat}
    (cert : SDPObjectiveLowerCertificate Var LinAtom Block Idx GramIdx
      linearAtoms matrixAtoms objective bound) :
    forall x, SDPConstraints linearAtoms matrixAtoms x -> bound <= objective.eval x := by
  intro x hx
  have hidentity := cert.eval_identity x
  have hlinear :
      0 <= Finset.univ.sum (fun a : LinAtom =>
        cert.linearMultiplier a * (linearAtoms a).eval x) := by
    exact Finset.sum_nonneg (fun a _ =>
      mul_nonneg (cert.linearMultiplier_nonneg a) (hx.1 a))
  have hmatrix :
      0 <= Finset.univ.sum (fun b : Block =>
        matrixInner (cert.dualMatrix b) (MatrixLinExpr.eval (matrixAtoms b) x)) := by
    exact Finset.sum_nonneg (fun b _ =>
      (cert.dualMatrixGram b).matrixInner_nonneg_of_psd (hx.2 b))
  have hnonneg :
      0 <= cert.slack +
        Finset.univ.sum (fun a : LinAtom =>
          cert.linearMultiplier a * (linearAtoms a).eval x) +
        Finset.univ.sum (fun b : Block =>
          matrixInner (cert.dualMatrix b) (MatrixLinExpr.eval (matrixAtoms b) x)) := by
    exact add_nonneg (add_nonneg cert.slack_nonneg hlinear) hmatrix
  linarith

/--
Exact SDP weak-duality certificate with weighted-Gram dual PSD witnesses.

The weighted format is equivalent to an LDL certificate over the rationals:
`dualMatrix b = Lᵀ diag(d) L` with all diagonal weights nonnegative.
-/
structure SDPObjectiveLowerWeightedCertificate
    (Var LinAtom Block : Type) (Idx WeightIdx : Block -> Type)
    [Fintype Var] [Fintype LinAtom] [Fintype Block]
    [forall b : Block, Fintype (Idx b)]
    [forall b : Block, Fintype (WeightIdx b)]
    (linearAtoms : LinAtom -> LinExpr Var)
    (matrixAtoms : forall b : Block, Matrix (Idx b) (Idx b) (LinExpr Var))
    (objective : LinExpr Var) (bound : Rat) where
  linearMultiplier : LinAtom -> Rat
  linearMultiplier_nonneg : forall a, 0 <= linearMultiplier a
  slack : Rat
  slack_nonneg : 0 <= slack
  dualMatrix : forall b : Block, Matrix (Idx b) (Idx b) Rat
  dualMatrixWeighted :
    forall b : Block,
      WeightedGramEntryCertificate (Idx b) (WeightIdx b) (dualMatrix b)
  const_identity :
    (LinExpr.subConst objective bound).const =
      (sdpDualExpression linearAtoms matrixAtoms linearMultiplier slack dualMatrix).const
  coeff_identity :
    forall i : Var,
      (LinExpr.subConst objective bound).coeff i =
        (sdpDualExpression linearAtoms matrixAtoms linearMultiplier slack dualMatrix).coeff i

theorem SDPObjectiveLowerWeightedCertificate.eval_identity
    {Var LinAtom Block : Type} {Idx WeightIdx : Block -> Type}
    [Fintype Var] [Fintype LinAtom] [Fintype Block]
    [forall b : Block, Fintype (Idx b)]
    [forall b : Block, Fintype (WeightIdx b)]
    {linearAtoms : LinAtom -> LinExpr Var}
    {matrixAtoms : forall b : Block, Matrix (Idx b) (Idx b) (LinExpr Var)}
    {objective : LinExpr Var} {bound : Rat}
    (cert : SDPObjectiveLowerWeightedCertificate Var LinAtom Block Idx WeightIdx
      linearAtoms matrixAtoms objective bound)
    (x : Var -> Rat) :
    objective.eval x - bound =
      cert.slack +
        Finset.univ.sum (fun a : LinAtom =>
          cert.linearMultiplier a * (linearAtoms a).eval x) +
        Finset.univ.sum (fun b : Block =>
          matrixInner (cert.dualMatrix b) (MatrixLinExpr.eval (matrixAtoms b) x)) := by
  have h :=
    LinExpr.eval_eq_of_coeff_const_eq cert.const_identity cert.coeff_identity x
  rw [LinExpr.eval_subConst] at h
  simpa [sdpDualExpression, add_assoc] using h

theorem SDPObjectiveLowerWeightedCertificate.sound
    {Var LinAtom Block : Type} {Idx WeightIdx : Block -> Type}
    [Fintype Var] [Fintype LinAtom] [Fintype Block]
    [forall b : Block, Fintype (Idx b)]
    [forall b : Block, Fintype (WeightIdx b)]
    {linearAtoms : LinAtom -> LinExpr Var}
    {matrixAtoms : forall b : Block, Matrix (Idx b) (Idx b) (LinExpr Var)}
    {objective : LinExpr Var} {bound : Rat}
    (cert : SDPObjectiveLowerWeightedCertificate Var LinAtom Block Idx WeightIdx
      linearAtoms matrixAtoms objective bound) :
    forall x, SDPConstraints linearAtoms matrixAtoms x -> bound <= objective.eval x := by
  intro x hx
  have hidentity := cert.eval_identity x
  have hlinear :
      0 <= Finset.univ.sum (fun a : LinAtom =>
        cert.linearMultiplier a * (linearAtoms a).eval x) := by
    exact Finset.sum_nonneg (fun a _ =>
      mul_nonneg (cert.linearMultiplier_nonneg a) (hx.1 a))
  have hmatrix :
      0 <= Finset.univ.sum (fun b : Block =>
        matrixInner (cert.dualMatrix b) (MatrixLinExpr.eval (matrixAtoms b) x)) := by
    exact Finset.sum_nonneg (fun b _ =>
      (cert.dualMatrixWeighted b).matrixInner_nonneg_of_psd (hx.2 b))
  have hnonneg :
      0 <= cert.slack +
        Finset.univ.sum (fun a : LinAtom =>
          cert.linearMultiplier a * (linearAtoms a).eval x) +
        Finset.univ.sum (fun b : Block =>
          matrixInner (cert.dualMatrix b) (MatrixLinExpr.eval (matrixAtoms b) x)) := by
    exact add_nonneg (add_nonneg cert.slack_nonneg hlinear) hmatrix
  linarith

/--
Weighted-dual certificate with an explicit normalized aggregate dual expression.

This is useful when the semantic SDP atoms are compact but expensive to unfold:
the generator can prove the aggregate dual expression coefficient-by-coefficient
against `dualExpression`, then prove the objective identity against that
normalized expression.
-/
structure SDPObjectiveLowerWeightedExpressionCertificate
    (Var LinAtom Block : Type) (Idx WeightIdx : Block -> Type)
    [Fintype Var] [Fintype LinAtom] [Fintype Block]
    [forall b : Block, Fintype (Idx b)]
    [forall b : Block, Fintype (WeightIdx b)]
    (linearAtoms : LinAtom -> LinExpr Var)
    (matrixAtoms : forall b : Block, Matrix (Idx b) (Idx b) (LinExpr Var))
    (objective : LinExpr Var) (bound : Rat) where
  dualExpression : LinExpr Var
  linearMultiplier : LinAtom -> Rat
  linearMultiplier_nonneg : forall a, 0 <= linearMultiplier a
  slack : Rat
  slack_nonneg : 0 <= slack
  dualMatrix : forall b : Block, Matrix (Idx b) (Idx b) Rat
  dualMatrixWeighted :
    forall b : Block,
      WeightedGramEntryCertificate (Idx b) (WeightIdx b) (dualMatrix b)
  dualExpression_const :
    dualExpression.const =
      (sdpDualExpression linearAtoms matrixAtoms linearMultiplier slack dualMatrix).const
  dualExpression_coeff :
    forall i : Var,
      dualExpression.coeff i =
        (sdpDualExpression linearAtoms matrixAtoms linearMultiplier slack dualMatrix).coeff i
  objective_const_identity :
    (LinExpr.subConst objective bound).const = dualExpression.const
  objective_coeff_identity :
    forall i : Var,
      (LinExpr.subConst objective bound).coeff i = dualExpression.coeff i

def SDPObjectiveLowerWeightedExpressionCertificate.ofExpressionEqualities
    {Var LinAtom Block : Type} {Idx WeightIdx : Block -> Type}
    [Fintype Var] [Fintype LinAtom] [Fintype Block]
    [forall b : Block, Fintype (Idx b)]
    [forall b : Block, Fintype (WeightIdx b)]
    {linearAtoms : LinAtom -> LinExpr Var}
    {matrixAtoms : forall b : Block, Matrix (Idx b) (Idx b) (LinExpr Var)}
    {objective : LinExpr Var} {bound : Rat}
    (dualExpression : LinExpr Var)
    (linearMultiplier : LinAtom -> Rat)
    (linearMultiplier_nonneg : forall a, 0 <= linearMultiplier a)
    (slack : Rat)
    (slack_nonneg : 0 <= slack)
    (dualMatrix : forall b : Block, Matrix (Idx b) (Idx b) Rat)
    (dualMatrixWeighted :
      forall b : Block,
        WeightedGramEntryCertificate (Idx b) (WeightIdx b) (dualMatrix b))
    (dualExpression_eq :
      dualExpression =
        sdpDualExpression linearAtoms matrixAtoms linearMultiplier slack dualMatrix)
    (objective_eq : LinExpr.subConst objective bound = dualExpression) :
    SDPObjectiveLowerWeightedExpressionCertificate Var LinAtom Block Idx WeightIdx
      linearAtoms matrixAtoms objective bound where
  dualExpression := dualExpression
  linearMultiplier := linearMultiplier
  linearMultiplier_nonneg := linearMultiplier_nonneg
  slack := slack
  slack_nonneg := slack_nonneg
  dualMatrix := dualMatrix
  dualMatrixWeighted := dualMatrixWeighted
  dualExpression_const := by
    rw [dualExpression_eq]
  dualExpression_coeff := by
    intro i
    rw [dualExpression_eq]
  objective_const_identity := by
    rw [objective_eq]
  objective_coeff_identity := by
    intro i
    rw [objective_eq]

def SDPObjectiveLowerWeightedExpressionCertificate.toWeightedCertificate
    {Var LinAtom Block : Type} {Idx WeightIdx : Block -> Type}
    [Fintype Var] [Fintype LinAtom] [Fintype Block]
    [forall b : Block, Fintype (Idx b)]
    [forall b : Block, Fintype (WeightIdx b)]
    {linearAtoms : LinAtom -> LinExpr Var}
    {matrixAtoms : forall b : Block, Matrix (Idx b) (Idx b) (LinExpr Var)}
    {objective : LinExpr Var} {bound : Rat}
    (cert : SDPObjectiveLowerWeightedExpressionCertificate Var LinAtom Block Idx WeightIdx
      linearAtoms matrixAtoms objective bound) :
    SDPObjectiveLowerWeightedCertificate Var LinAtom Block Idx WeightIdx
      linearAtoms matrixAtoms objective bound where
  linearMultiplier := cert.linearMultiplier
  linearMultiplier_nonneg := cert.linearMultiplier_nonneg
  slack := cert.slack
  slack_nonneg := cert.slack_nonneg
  dualMatrix := cert.dualMatrix
  dualMatrixWeighted := cert.dualMatrixWeighted
  const_identity := by
    calc
      (LinExpr.subConst objective bound).const = cert.dualExpression.const :=
        cert.objective_const_identity
      _ = (sdpDualExpression linearAtoms matrixAtoms cert.linearMultiplier
          cert.slack cert.dualMatrix).const := cert.dualExpression_const
  coeff_identity := by
    intro i
    calc
      (LinExpr.subConst objective bound).coeff i = cert.dualExpression.coeff i :=
        cert.objective_coeff_identity i
      _ = (sdpDualExpression linearAtoms matrixAtoms cert.linearMultiplier
          cert.slack cert.dualMatrix).coeff i := cert.dualExpression_coeff i

theorem SDPObjectiveLowerWeightedExpressionCertificate.sound
    {Var LinAtom Block : Type} {Idx WeightIdx : Block -> Type}
    [Fintype Var] [Fintype LinAtom] [Fintype Block]
    [forall b : Block, Fintype (Idx b)]
    [forall b : Block, Fintype (WeightIdx b)]
    {linearAtoms : LinAtom -> LinExpr Var}
    {matrixAtoms : forall b : Block, Matrix (Idx b) (Idx b) (LinExpr Var)}
    {objective : LinExpr Var} {bound : Rat}
    (cert : SDPObjectiveLowerWeightedExpressionCertificate Var LinAtom Block Idx WeightIdx
      linearAtoms matrixAtoms objective bound) :
    forall x, SDPConstraints linearAtoms matrixAtoms x -> bound <= objective.eval x :=
  cert.toWeightedCertificate.sound

private abbrev expressionSmokeVar := Fin 1
private abbrev expressionSmokeLinAtom := Fin 1
private abbrev expressionSmokeBlock := Fin 0
private abbrev expressionSmokeIdx : expressionSmokeBlock -> Type := fun _ => Fin 0
private abbrev expressionSmokeWeightIdx : expressionSmokeBlock -> Type := fun _ => Fin 0

private def expressionSmokeLinearAtoms :
    expressionSmokeLinAtom -> LinExpr expressionSmokeVar :=
  fun _ => LinExpr.var (0 : Fin 1)

private def expressionSmokeMatrixAtoms :
    forall b : expressionSmokeBlock,
      Matrix (expressionSmokeIdx b) (expressionSmokeIdx b)
        (LinExpr expressionSmokeVar) :=
  fun b => Fin.elim0 b

private def expressionSmokeObjective : LinExpr expressionSmokeVar where
  coeff _ := 1
  const := 2

private def expressionSmokeDualExpression : LinExpr expressionSmokeVar where
  coeff _ := 1
  const := 1

private def expressionSmokeLinearMultiplier :
    expressionSmokeLinAtom -> Rat :=
  fun _ => 1

private def expressionSmokeSlack : Rat := 1

private def expressionSmokeDualMatrix :
    forall b : expressionSmokeBlock,
      Matrix (expressionSmokeIdx b) (expressionSmokeIdx b) Rat :=
  fun b => Fin.elim0 b

private def expressionSmokeDualMatrixWeighted :
    forall b : expressionSmokeBlock,
      WeightedGramEntryCertificate
        (expressionSmokeIdx b) (expressionSmokeWeightIdx b)
        (expressionSmokeDualMatrix b) :=
  fun b => Fin.elim0 b

private def expressionSmokeCertificate :
    SDPObjectiveLowerWeightedExpressionCertificate
      expressionSmokeVar expressionSmokeLinAtom expressionSmokeBlock
      expressionSmokeIdx expressionSmokeWeightIdx
      expressionSmokeLinearAtoms expressionSmokeMatrixAtoms
      expressionSmokeObjective 1 :=
  SDPObjectiveLowerWeightedExpressionCertificate.ofExpressionEqualities
    (linearAtoms := expressionSmokeLinearAtoms)
    (matrixAtoms := expressionSmokeMatrixAtoms)
    (objective := expressionSmokeObjective)
    (bound := (1 : Rat))
    expressionSmokeDualExpression
    expressionSmokeLinearMultiplier
    (by
      intro a
      fin_cases a
      norm_num [expressionSmokeLinearMultiplier])
    expressionSmokeSlack
    (by norm_num [expressionSmokeSlack])
    expressionSmokeDualMatrix
    expressionSmokeDualMatrixWeighted
    (by
      ext i
      · fin_cases i
        norm_num [expressionSmokeDualExpression, sdpDualExpression,
          expressionSmokeLinearAtoms, expressionSmokeLinearMultiplier,
          expressionSmokeSlack, expressionSmokeMatrixAtoms,
          expressionSmokeDualMatrix, LinExpr.var, LinExpr.constExpr,
          LinExpr.add, LinExpr.sum, LinExpr.smul, MatrixLinExpr.innerExpr]
      · norm_num [expressionSmokeDualExpression, sdpDualExpression,
          expressionSmokeLinearAtoms, expressionSmokeLinearMultiplier,
          expressionSmokeSlack, expressionSmokeMatrixAtoms,
          expressionSmokeDualMatrix, LinExpr.var, LinExpr.constExpr,
          LinExpr.add, LinExpr.sum, LinExpr.smul, MatrixLinExpr.innerExpr])
    (by
      ext i
      · fin_cases i
        norm_num [expressionSmokeObjective, expressionSmokeDualExpression,
          LinExpr.subConst]
      · norm_num [expressionSmokeObjective, expressionSmokeDualExpression,
          LinExpr.subConst])

structure ObjectiveLowerCertificate
    (Var : Type) [Fintype Var]
    (Constraints : (Var -> Rat) -> Prop)
    (objective : (Var -> Rat) -> Rat)
    (bound : Rat) where
  gap : (Var -> Rat) -> Rat
  gap_nonneg : forall x, Constraints x -> 0 <= gap x
  identity : forall x, objective x - bound = gap x

theorem ObjectiveLowerCertificate.sound
    {Var : Type} [Fintype Var]
    {Constraints : (Var -> Rat) -> Prop}
    {objective : (Var -> Rat) -> Rat}
    {bound : Rat}
    (cert : ObjectiveLowerCertificate Var Constraints objective bound) :
    forall x, Constraints x -> bound <= objective x := by
  intro x hx
  have hgap := cert.gap_nonneg x hx
  have hid := cert.identity x
  linarith

/-- Turn an exact SDP certificate into the generic objective-lower interface. -/
def SDPObjectiveLowerCertificate.toObjectiveLowerCertificate
    {Var LinAtom Block : Type} {Idx GramIdx : Block -> Type}
    [Fintype Var] [Fintype LinAtom] [Fintype Block]
    [forall b : Block, Fintype (Idx b)]
    [forall b : Block, Fintype (GramIdx b)]
    {linearAtoms : LinAtom -> LinExpr Var}
    {matrixAtoms : forall b : Block, Matrix (Idx b) (Idx b) (LinExpr Var)}
    {objective : LinExpr Var} {bound : Rat}
    (cert : SDPObjectiveLowerCertificate Var LinAtom Block Idx GramIdx
      linearAtoms matrixAtoms objective bound) :
    ObjectiveLowerCertificate Var (SDPConstraints linearAtoms matrixAtoms)
      (fun x => objective.eval x) bound where
  gap x := objective.eval x - bound
  gap_nonneg := by
    intro x hx
    exact sub_nonneg.mpr (SDPObjectiveLowerCertificate.sound cert x hx)
  identity := by
    intro x
    rfl

/-- Turn an exact affine certificate into the generic objective-lower interface. -/
def LinearObjectiveLowerCertificate.toObjectiveLowerCertificate
    {Var Atom : Type} [Fintype Var] [Fintype Atom]
    {atoms : Atom -> LinExpr Var} {objective : LinExpr Var} {bound : Rat}
    (cert : LinearObjectiveLowerCertificate Var Atom atoms objective bound) :
    ObjectiveLowerCertificate Var (LinearConstraints atoms)
      (fun x => objective.eval x) bound where
  gap x := objective.eval x - bound
  gap_nonneg := by
    intro x hx
    exact sub_nonneg.mpr (LinearObjectiveLowerCertificate.sound cert x hx)
  identity := by
    intro x
    rfl

end GijswijtPolak2025
end SDP
end CoveringCodes
