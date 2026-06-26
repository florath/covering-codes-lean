import CoveringCodes.SDP.GijswijtPolak2025.Certificates.Linear

/-!
# Sparse data for rational linear expressions

This module provides a small reusable bridge between generated sparse
coefficient data and the generic `LinExpr (Fin n)` certificate interface.
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

/-- Sparse rational data for a linear expression over `Fin n`. -/
structure SparseLinExprData (n : Nat) where
  const : Rat
  terms : List (Nat × Rat)

/-- Coefficient lookup for sparse generated data. Duplicate entries add. -/
def sparseLinExprCoeff : List (Nat × Rat) -> Nat -> Rat
  | [], _ => 0
  | term :: terms, idx =>
      (if term.1 = idx then term.2 else 0) + sparseLinExprCoeff terms idx

namespace SparseLinExprData

/-- Zero sparse expression. -/
def zero {n : Nat} : SparseLinExprData n where
  const := 0
  terms := []

/-- Sparse addition preserves duplicate entries by concatenating term lists. -/
def add {n : Nat} (left right : SparseLinExprData n) : SparseLinExprData n where
  const := left.const + right.const
  terms := left.terms ++ right.terms

/-- Sparse scalar multiplication maps the scalar over every stored term. -/
def smul {n : Nat} (a : Rat) (data : SparseLinExprData n) :
    SparseLinExprData n where
  const := a * data.const
  terms := data.terms.map (fun term => (term.1, a * term.2))

/-- Sum selected sparse coefficients without first constructing a `LinExpr`. -/
def coeffSum {n : Nat} (data : SparseLinExprData n)
    (indices : Finset (Fin n)) : Rat :=
  indices.sum (fun i => sparseLinExprCoeff data.terms i.val)

/-- Sum a generated list of sparse expressions by repeated sparse addition. -/
def listSum {n : Nat} : List (SparseLinExprData n) -> SparseLinExprData n
  | [] => zero
  | data :: rest => add data (listSum rest)

/-- Dense sparse terms obtained by sampling a `LinExpr` along generated indices. -/
def ofLinExprByFinTerms {α : Type} :
    {n : Nat} -> (Fin n -> α) -> LinExpr α -> List (Nat × Rat)
  | 0, _, _ => []
  | n + 1, ofFin, e =>
      (0, e.coeff (ofFin 0)) ::
        (ofLinExprByFinTerms (fun i : Fin n => ofFin i.succ) e).map
          (fun term => (term.1 + 1, term.2))

/-- Dense sparse data obtained by sampling a `LinExpr` along generated indices. -/
def ofLinExprByFin {n : Nat} {α : Type} (ofFin : Fin n -> α)
    (e : LinExpr α) : SparseLinExprData n where
  const := e.const
  terms := ofLinExprByFinTerms ofFin e

/-- Dense normalization target for generated sparse expression certificates. -/
structure NormSpec (n : Nat) where
  const : Rat
  coeff : Fin n -> Rat

namespace NormSpec

/-- Normal form for the zero sparse expression. -/
def zero {n : Nat} : NormSpec n where
  const := 0
  coeff := fun _ => 0

/-- Pointwise addition of sparse normal forms. -/
def add {n : Nat} (left right : NormSpec n) : NormSpec n where
  const := left.const + right.const
  coeff := fun idx => left.coeff idx + right.coeff idx

/-- Sum a generated list of sparse normal forms. -/
def listSum {n : Nat} : List (NormSpec n) -> NormSpec n
  | [] => zero
  | spec :: rest => add spec (listSum rest)

/-- Normal form obtained by sampling a `LinExpr` along generated indices. -/
def ofLinExprByFin {n : Nat} {α : Type} (ofFin : Fin n -> α)
    (e : LinExpr α) : NormSpec n where
  const := e.const
  coeff := fun idx => e.coeff (ofFin idx)

/-- Quotient a dense normal form by summing the coefficients in each fiber. -/
def quotient {n q : Nat} (fiber : Fin q -> Finset (Fin n))
    (spec : NormSpec n) : NormSpec q where
  const := spec.const
  coeff := fun qidx => (fiber qidx).sum (fun idx => spec.coeff idx)

end NormSpec

/-- Proof that generated sparse data has a stated dense normal form. -/
structure NormalizesTo {n : Nat} (data : SparseLinExprData n)
    (spec : NormSpec n) : Prop where
  const_eq : data.const = spec.const
  coeff_eq : ∀ idx : Fin n,
    sparseLinExprCoeff data.terms idx.val = spec.coeff idx

@[simp]
theorem ofLinExprByFin_const {n : Nat} {α : Type}
    (ofFin : Fin n -> α) (e : LinExpr α) :
    (ofLinExprByFin ofFin e).const = e.const := rfl

end SparseLinExprData

theorem sparseLinExprCoeff_append (left right : List (Nat × Rat)) (idx : Nat) :
    sparseLinExprCoeff (left ++ right) idx =
      sparseLinExprCoeff left idx + sparseLinExprCoeff right idx := by
  induction left with
  | nil =>
      simp [sparseLinExprCoeff]
  | cons term rest ih =>
      by_cases h : term.1 = idx
      · simp [sparseLinExprCoeff, h, ih]
        ring
      · simp [sparseLinExprCoeff, h, ih]

theorem sparseLinExprCoeff_foldl_aux
    (terms : List (Nat × Rat)) (idx : Nat) (acc : Rat) :
    terms.foldl
        (fun acc term => if term.1 = idx then acc + term.2 else acc)
        acc =
      acc + sparseLinExprCoeff terms idx := by
  induction terms generalizing acc with
  | nil =>
      simp [sparseLinExprCoeff]
  | cons term rest ih =>
      by_cases h : term.1 = idx
      · simp [List.foldl, sparseLinExprCoeff, h, ih, add_assoc]
      · simp [List.foldl, sparseLinExprCoeff, h, ih]

theorem sparseLinExprCoeff_eq_foldl
    (terms : List (Nat × Rat)) (idx : Nat) :
    sparseLinExprCoeff terms idx =
      terms.foldl
        (fun acc term => if term.1 = idx then acc + term.2 else acc)
        0 := by
  simpa using (sparseLinExprCoeff_foldl_aux terms idx 0).symm

theorem sparseLinExprCoeff_listSum {n : Nat}
    (items : List (SparseLinExprData n)) (idx : Nat) :
    sparseLinExprCoeff (SparseLinExprData.listSum items).terms idx =
      items.foldr (fun data acc => sparseLinExprCoeff data.terms idx + acc) 0 := by
  induction items with
  | nil =>
      simp [SparseLinExprData.listSum, SparseLinExprData.zero, sparseLinExprCoeff]
  | cons data rest ih =>
      simp [SparseLinExprData.listSum, SparseLinExprData.add,
        sparseLinExprCoeff_append, ih]

theorem sparseLinExprCoeff_map_smul (a : Rat) (terms : List (Nat × Rat))
    (idx : Nat) :
    sparseLinExprCoeff (terms.map (fun term => (term.1, a * term.2))) idx =
      a * sparseLinExprCoeff terms idx := by
  induction terms with
  | nil =>
      simp [sparseLinExprCoeff]
  | cons term rest ih =>
      by_cases h : term.1 = idx
      · simp [sparseLinExprCoeff, h, ih]
        ring
      · simp [sparseLinExprCoeff, h, ih]

theorem sparseLinExprCoeff_map_shift (terms : List (Nat × Rat)) (idx : Nat) :
    sparseLinExprCoeff (terms.map (fun term => (term.1 + 1, term.2))) (idx + 1) =
      sparseLinExprCoeff terms idx := by
  induction terms with
  | nil =>
      simp [sparseLinExprCoeff]
  | cons term rest ih =>
      by_cases h : term.1 = idx
      · simp [sparseLinExprCoeff, h, ih]
      · simp [sparseLinExprCoeff, h, ih]

theorem sparseLinExprCoeff_map_shift_zero (terms : List (Nat × Rat)) :
    sparseLinExprCoeff (terms.map (fun term => (term.1 + 1, term.2))) 0 = 0 := by
  induction terms with
  | nil =>
      simp [sparseLinExprCoeff]
  | cons term rest ih =>
      simp [sparseLinExprCoeff, ih]

theorem SparseLinExprData.ofLinExprByFin_coeff
    {n : Nat} {α : Type} (ofFin : Fin n -> α) (e : LinExpr α)
    (idx : Nat) (hidx : idx < n) :
    sparseLinExprCoeff (SparseLinExprData.ofLinExprByFin ofFin e).terms idx =
      e.coeff (ofFin ⟨idx, hidx⟩) := by
  induction n generalizing idx with
  | zero =>
      exact False.elim (Nat.not_lt_zero idx hidx)
  | succ n ih =>
      cases idx with
      | zero =>
          simp [SparseLinExprData.ofLinExprByFin,
            SparseLinExprData.ofLinExprByFinTerms,
            sparseLinExprCoeff, sparseLinExprCoeff_map_shift_zero]
      | succ idx =>
          have hidx' : idx < n := Nat.succ_lt_succ_iff.mp hidx
          simpa [SparseLinExprData.ofLinExprByFin,
            SparseLinExprData.ofLinExprByFinTerms,
            sparseLinExprCoeff, sparseLinExprCoeff_map_shift]
          using ih (fun i : Fin n => ofFin i.succ) idx hidx'

theorem SparseLinExprData.coeffSum_ofLinExprByFin
    {n : Nat} {α : Type} (ofFin : Fin n -> α) (e : LinExpr α)
    (indices : Finset (Fin n)) :
    (SparseLinExprData.ofLinExprByFin ofFin e).coeffSum indices =
      indices.sum (fun idx => e.coeff (ofFin idx)) := by
  unfold SparseLinExprData.coeffSum
  apply Finset.sum_congr rfl
  intro idx _hidx
  exact SparseLinExprData.ofLinExprByFin_coeff ofFin e idx.val idx.isLt

/-- Interpret sparse generated data as a `LinExpr (Fin n)`. -/
def linExprOfSparseData {n : Nat} (data : SparseLinExprData n) :
    LinExpr (Fin n) where
  coeff i := sparseLinExprCoeff data.terms i.val
  const := data.const

@[simp]
theorem linExprOfSparseData_const {n : Nat} (data : SparseLinExprData n) :
    (linExprOfSparseData data).const = data.const := rfl

@[simp]
theorem linExprOfSparseData_coeff {n : Nat} (data : SparseLinExprData n)
    (i : Fin n) :
    (linExprOfSparseData data).coeff i =
      sparseLinExprCoeff data.terms i.val := rfl

theorem SparseLinExprData.coeffSum_eq_sum_coeff {n : Nat}
    (data : SparseLinExprData n) (indices : Finset (Fin n)) :
    data.coeffSum indices =
      indices.sum (fun i => (linExprOfSparseData data).coeff i) := rfl

theorem SparseLinExprData.coeffSum_listSum {n : Nat}
    (items : List (SparseLinExprData n)) (indices : Finset (Fin n)) :
    (SparseLinExprData.listSum items).coeffSum indices =
      items.foldr (fun data acc => data.coeffSum indices + acc) 0 := by
  unfold SparseLinExprData.coeffSum
  induction items with
  | nil =>
      simp [SparseLinExprData.listSum, SparseLinExprData.zero, sparseLinExprCoeff]
  | cons data rest ih =>
      simp [SparseLinExprData.listSum, SparseLinExprData.add,
        sparseLinExprCoeff_append, ih, Finset.sum_add_distrib]

theorem SparseLinExprData.const_listSum {n : Nat}
    (items : List (SparseLinExprData n)) :
    (SparseLinExprData.listSum items).const =
      items.foldr (fun data acc => data.const + acc) 0 := by
  induction items with
  | nil =>
      simp [SparseLinExprData.listSum, SparseLinExprData.zero]
  | cons data rest ih =>
      simp [SparseLinExprData.listSum, SparseLinExprData.add, ih]

namespace SparseLinExprData

namespace NormalizesTo

theorem zero {n : Nat} :
    NormalizesTo (SparseLinExprData.zero (n := n)) NormSpec.zero := by
  constructor
  · rfl
  · intro idx
    simp [SparseLinExprData.zero, NormSpec.zero, sparseLinExprCoeff]

theorem add {n : Nat} {left right : SparseLinExprData n}
    {leftSpec rightSpec : NormSpec n}
    (hleft : NormalizesTo left leftSpec)
    (hright : NormalizesTo right rightSpec) :
    NormalizesTo (SparseLinExprData.add left right)
      (NormSpec.add leftSpec rightSpec) := by
  constructor
  · simp [SparseLinExprData.add, NormSpec.add, hleft.const_eq, hright.const_eq]
  · intro idx
    simp [SparseLinExprData.add, NormSpec.add, sparseLinExprCoeff_append,
      hleft.coeff_eq idx, hright.coeff_eq idx]

theorem listSum {n : Nat}
    {items : List (SparseLinExprData n)} {specs : List (NormSpec n)}
    (hitems :
      List.Forall₂ (fun data spec => NormalizesTo data spec) items specs) :
    NormalizesTo (SparseLinExprData.listSum items)
      (NormSpec.listSum specs) := by
  induction hitems with
  | nil =>
      exact zero
  | cons hhead _htail ih =>
      exact add hhead ih

theorem ofLinExprByFin {n : Nat} {α : Type}
    (ofFin : Fin n -> α) (e : LinExpr α) :
    NormalizesTo (SparseLinExprData.ofLinExprByFin ofFin e)
      (NormSpec.ofLinExprByFin ofFin e) := by
  constructor
  · rfl
  · intro idx
    exact SparseLinExprData.ofLinExprByFin_coeff ofFin e idx.val idx.isLt

end NormalizesTo

end SparseLinExprData

/--
Interpret full sparse data on quotient variables by summing the coefficients in
each quotient fiber.
-/
def quotientLinExprOfSparseData {n : Nat} {β : Type}
    (fiber : β -> Finset (Fin n)) (data : SparseLinExprData n) :
    LinExpr β where
  coeff b := data.coeffSum (fiber b)
  const := data.const

@[simp]
theorem quotientLinExprOfSparseData_const {n : Nat} {β : Type}
    (fiber : β -> Finset (Fin n)) (data : SparseLinExprData n) :
    (quotientLinExprOfSparseData fiber data).const = data.const := rfl

@[simp]
theorem quotientLinExprOfSparseData_coeff {n : Nat} {β : Type}
    (fiber : β -> Finset (Fin n)) (data : SparseLinExprData n) (b : β) :
    (quotientLinExprOfSparseData fiber data).coeff b =
      data.coeffSum (fiber b) := rfl

theorem quotientLinExprOfSparseData_coeff_eq_sum_coeff
    {n : Nat} {β : Type}
    (fiber : β -> Finset (Fin n)) (data : SparseLinExprData n) (b : β) :
    (quotientLinExprOfSparseData fiber data).coeff b =
      (fiber b).sum (fun i => (linExprOfSparseData data).coeff i) := by
  exact SparseLinExprData.coeffSum_eq_sum_coeff data (fiber b)

theorem quotientLinExprOfSparseData_congr_of_linExprOfSparseData_eq
    {n : Nat} {β : Type} (fiber : β -> Finset (Fin n))
    {left right : SparseLinExprData n}
    (h : linExprOfSparseData left = linExprOfSparseData right) :
    quotientLinExprOfSparseData fiber left =
      quotientLinExprOfSparseData fiber right := by
  rw [LinExpr.mk.injEq]
  constructor
  · funext b
    rw [quotientLinExprOfSparseData_coeff_eq_sum_coeff]
    rw [quotientLinExprOfSparseData_coeff_eq_sum_coeff]
    apply Finset.sum_congr rfl
    intro idx _hm
    exact congrArg (fun e => e.coeff idx) h
  · rw [quotientLinExprOfSparseData_const, quotientLinExprOfSparseData_const]
    exact congrArg (fun e => e.const) h

theorem quotientLinExprOfSparseData_zero {n : Nat} {β : Type}
    (fiber : β -> Finset (Fin n)) :
    quotientLinExprOfSparseData fiber (SparseLinExprData.zero (n := n)) =
      LinExpr.constExpr β 0 := by
  rw [LinExpr.mk.injEq]
  constructor
  · funext b
    simp [quotientLinExprOfSparseData, SparseLinExprData.zero,
      SparseLinExprData.coeffSum, sparseLinExprCoeff, LinExpr.constExpr]
  · simp [quotientLinExprOfSparseData, SparseLinExprData.zero, LinExpr.constExpr]

theorem quotientLinExprOfSparseData_add {n : Nat} {β : Type}
    (fiber : β -> Finset (Fin n)) (left right : SparseLinExprData n) :
    quotientLinExprOfSparseData fiber (SparseLinExprData.add left right) =
      LinExpr.add (quotientLinExprOfSparseData fiber left)
        (quotientLinExprOfSparseData fiber right) := by
  rw [LinExpr.mk.injEq]
  constructor
  · funext b
    simp [quotientLinExprOfSparseData, SparseLinExprData.add,
      SparseLinExprData.coeffSum, LinExpr.add, sparseLinExprCoeff_append,
      Finset.sum_add_distrib]
  · simp [quotientLinExprOfSparseData, SparseLinExprData.add, LinExpr.add]

theorem quotientLinExprOfSparseData_listSum_coeff
    {n : Nat} {β : Type}
    (fiber : β -> Finset (Fin n)) (items : List (SparseLinExprData n))
    (b : β) :
    (quotientLinExprOfSparseData fiber
      (SparseLinExprData.listSum items)).coeff b =
      items.foldr (fun data acc => data.coeffSum (fiber b) + acc) 0 := by
  rw [quotientLinExprOfSparseData_coeff, SparseLinExprData.coeffSum_listSum]

theorem quotientLinExprOfSparseData_listSum
    {n : Nat} {β : Type} (fiber : β -> Finset (Fin n))
    (items : List (SparseLinExprData n)) :
    quotientLinExprOfSparseData fiber (SparseLinExprData.listSum items) =
      items.foldr
        (fun data acc => LinExpr.add (quotientLinExprOfSparseData fiber data) acc)
        (LinExpr.constExpr β 0) := by
  rw [LinExpr.mk.injEq]
  constructor
  · funext b
    have hfold :
        (items.foldr
          (fun data acc => LinExpr.add (quotientLinExprOfSparseData fiber data) acc)
          (LinExpr.constExpr β 0)).coeff b =
          items.foldr (fun data acc => data.coeffSum (fiber b) + acc) 0 := by
      induction items with
      | nil =>
          simp [LinExpr.constExpr]
      | cons data rest ih =>
          change data.coeffSum (fiber b) +
              (rest.foldr
                (fun data acc => LinExpr.add (quotientLinExprOfSparseData fiber data) acc)
                (LinExpr.constExpr β 0)).coeff b =
              data.coeffSum (fiber b) +
                rest.foldr (fun data acc => data.coeffSum (fiber b) + acc) 0
          rw [ih]
    rw [quotientLinExprOfSparseData_listSum_coeff]
    exact hfold.symm
  · have hfold :
        (items.foldr
          (fun data acc => LinExpr.add (quotientLinExprOfSparseData fiber data) acc)
          (LinExpr.constExpr β 0)).const =
          items.foldr (fun data acc => data.const + acc) 0 := by
      induction items with
      | nil =>
          simp [LinExpr.constExpr]
      | cons data rest ih =>
          change data.const +
              (rest.foldr
                (fun data acc => LinExpr.add (quotientLinExprOfSparseData fiber data) acc)
                (LinExpr.constExpr β 0)).const =
              data.const + rest.foldr (fun data acc => data.const + acc) 0
          rw [ih]
    rw [quotientLinExprOfSparseData_const]
    rw [SparseLinExprData.const_listSum]
    exact hfold.symm

theorem eq_quotientLinExprOfSparseData_of_coeffs
    {n : Nat} {β : Type} {fiber : β -> Finset (Fin n)}
    {data : SparseLinExprData n} {e : LinExpr β}
    (hconst : e.const = data.const)
    (hcoeff : forall b : β, e.coeff b = data.coeffSum (fiber b)) :
    e = quotientLinExprOfSparseData fiber data := by
  rw [LinExpr.mk.injEq]
  constructor
  · funext b
    exact hcoeff b
  · exact hconst

theorem linExprOfSparseData_eq_quotientLinExprOfSparseData
    {m n : Nat} {fiber : Fin m -> Finset (Fin n)}
    {compactData : SparseLinExprData m} {fullData : SparseLinExprData n}
    (hconst : compactData.const = fullData.const)
    (hcoeff : forall q : Fin m,
      sparseLinExprCoeff compactData.terms q.val =
        fullData.coeffSum (fiber q)) :
    linExprOfSparseData compactData =
      quotientLinExprOfSparseData fiber fullData := by
  apply eq_quotientLinExprOfSparseData_of_coeffs
  · exact hconst
  · intro q
    exact hcoeff q

theorem linExprOfSparseData_eq_quotientLinExprOfSparseData_of_normalizesTo
    {m n : Nat} (fiber : Fin m -> Finset (Fin n))
    {compactData : SparseLinExprData m} {fullData : SparseLinExprData n}
    {compactSpec : SparseLinExprData.NormSpec m}
    {fullSpec : SparseLinExprData.NormSpec n}
    (hcompact : SparseLinExprData.NormalizesTo compactData compactSpec)
    (hfull : SparseLinExprData.NormalizesTo fullData fullSpec)
    (hconst : compactSpec.const = fullSpec.const)
    (hcoeff : forall q : Fin m,
      compactSpec.coeff q =
        (fiber q).sum (fun idx => fullSpec.coeff idx)) :
    linExprOfSparseData compactData =
      quotientLinExprOfSparseData fiber fullData := by
  apply linExprOfSparseData_eq_quotientLinExprOfSparseData
  · calc
      compactData.const = compactSpec.const := hcompact.const_eq
      _ = fullSpec.const := hconst
      _ = fullData.const := hfull.const_eq.symm
  · intro q
    calc
      sparseLinExprCoeff compactData.terms q.val = compactSpec.coeff q :=
        hcompact.coeff_eq q
      _ = (fiber q).sum (fun idx => fullSpec.coeff idx) := hcoeff q
      _ = fullData.coeffSum (fiber q) := by
        unfold SparseLinExprData.coeffSum
        apply Finset.sum_congr rfl
        intro idx _hidx
        exact (hfull.coeff_eq idx).symm

namespace SparseLinExprData.NormalizesTo

theorem quotientLinExprOfSparseData_coeff_eq_sum_normSpec
    {n : Nat} {β : Type} (fiber : β -> Finset (Fin n))
    {data : SparseLinExprData n} {spec : SparseLinExprData.NormSpec n}
    (hdata : SparseLinExprData.NormalizesTo data spec) (b : β) :
    (quotientLinExprOfSparseData fiber data).coeff b =
      (fiber b).sum (fun idx => spec.coeff idx) := by
  unfold quotientLinExprOfSparseData SparseLinExprData.coeffSum
  apply Finset.sum_congr rfl
  intro idx _hidx
  exact hdata.coeff_eq idx

theorem linExprOfSparseData_eq_quotientLinExprOfSparseData_of_quotient_normSpec
    {m n : Nat} (fiber : Fin m -> Finset (Fin n))
    {compactData : SparseLinExprData m} {fullData : SparseLinExprData n}
    {fullSpec : SparseLinExprData.NormSpec n}
    (hcompact : SparseLinExprData.NormalizesTo compactData
      (SparseLinExprData.NormSpec.quotient fiber fullSpec))
    (hfull : SparseLinExprData.NormalizesTo fullData fullSpec) :
    linExprOfSparseData compactData =
      quotientLinExprOfSparseData fiber fullData := by
  exact linExprOfSparseData_eq_quotientLinExprOfSparseData_of_normalizesTo
    fiber hcompact hfull rfl (fun _ => rfl)

end SparseLinExprData.NormalizesTo

theorem linExprOfSparseData_eq_quotient_listSum_of_coeffs
    {m n : Nat} {fiber : Fin m -> Finset (Fin n)}
    {quotientData : SparseLinExprData m}
    {items : List (SparseLinExprData n)}
    (hconst : quotientData.const = (SparseLinExprData.listSum items).const)
    (hcoeff : forall q : Fin m,
      sparseLinExprCoeff quotientData.terms q.val =
        items.foldr (fun data acc => data.coeffSum (fiber q) + acc) 0) :
    linExprOfSparseData quotientData =
      quotientLinExprOfSparseData fiber (SparseLinExprData.listSum items) := by
  apply linExprOfSparseData_eq_quotientLinExprOfSparseData
  · exact hconst
  · intro q
    rw [SparseLinExprData.coeffSum_listSum]
    exact hcoeff q

theorem linExprOfSparseData_zero {n : Nat} :
    linExprOfSparseData (SparseLinExprData.zero (n := n)) =
      LinExpr.constExpr (Fin n) 0 := by
  rfl

/--
Extensional equality from sparse constant/coefficient checks.

Generated files can prove the two hypotheses by small const/per-coefficient
checks, then use this theorem to obtain equality in the generic `LinExpr`
interface.
-/
theorem linExprOfSparseData_eq_of_coeffs
    {n : Nat} {e : LinExpr (Fin n)} {data : SparseLinExprData n}
    (hconst : e.const = data.const)
    (hcoeff : forall i : Fin n,
      e.coeff i = sparseLinExprCoeff data.terms i.val) :
    e = linExprOfSparseData data := by
  cases e with
  | mk coeff const =>
    cases data with
    | mk dataConst terms =>
      dsimp [linExprOfSparseData] at hconst hcoeff ⊢
      cases hconst
      congr
      funext i
      exact hcoeff i

/--
Data-first extensional equality from sparse constant/coefficient checks.

This orientation is convenient for generated proofs that normalize sparse data
against an already constructed `LinExpr`.
-/
theorem linExprOfSparseData_eq_of_data_coeffs
    {n : Nat} {data : SparseLinExprData n} {e : LinExpr (Fin n)}
    (hconst : data.const = e.const)
    (hcoeff : forall i : Fin n,
      sparseLinExprCoeff data.terms i.val = e.coeff i) :
    linExprOfSparseData data = e := by
  symm
  apply linExprOfSparseData_eq_of_coeffs
  · exact hconst.symm
  · intro i
    exact (hcoeff i).symm

theorem linExprOfSparseData_eq_of_nat_data_coeffs
    {n : Nat} {data : SparseLinExprData n} {e : LinExpr (Fin n)}
    (hconst : data.const = e.const)
    (hcoeff : forall (idx : Nat) (hidx : idx < n),
      sparseLinExprCoeff data.terms idx = e.coeff ⟨idx, hidx⟩) :
    linExprOfSparseData data = e := by
  apply linExprOfSparseData_eq_of_data_coeffs
  · exact hconst
  · intro i
    exact hcoeff i.val i.isLt

theorem eq_linExprOfSparseData_of_data_coeffs
    {n : Nat} {e : LinExpr (Fin n)} {data : SparseLinExprData n}
    (hconst : data.const = e.const)
    (hcoeff : forall i : Fin n,
      sparseLinExprCoeff data.terms i.val = e.coeff i) :
    e = linExprOfSparseData data := by
  exact (linExprOfSparseData_eq_of_data_coeffs hconst hcoeff).symm

theorem linExprOfSparseData_eq_of_sparse_coeffs
    {n : Nat} {left right : SparseLinExprData n}
    (hconst : left.const = right.const)
    (hcoeff : forall i : Fin n,
      sparseLinExprCoeff left.terms i.val =
        sparseLinExprCoeff right.terms i.val) :
    linExprOfSparseData left = linExprOfSparseData right := by
  apply linExprOfSparseData_eq_of_coeffs
  · exact hconst
  · intro i
    exact hcoeff i

theorem linExprOfSparseData_eq_of_nat_sparse_coeffs
    {n : Nat} {left right : SparseLinExprData n}
    (hconst : left.const = right.const)
    (hcoeff : forall idx : Nat, idx < n ->
      sparseLinExprCoeff left.terms idx =
        sparseLinExprCoeff right.terms idx) :
    linExprOfSparseData left = linExprOfSparseData right := by
  apply linExprOfSparseData_eq_of_sparse_coeffs
  · exact hconst
  · intro i
    exact hcoeff i.val i.isLt

/--
Interpret sparse generated data over an arbitrary variable type by first mapping
variables to their generated `Fin n` index.
-/
def linExprOfSparseDataByFin {n : Nat} {α : Type} (toFin : α -> Fin n)
    (data : SparseLinExprData n) : LinExpr α where
  coeff a := sparseLinExprCoeff data.terms (toFin a).val
  const := data.const

@[simp]
theorem linExprOfSparseDataByFin_const {n : Nat} {α : Type}
    (toFin : α -> Fin n) (data : SparseLinExprData n) :
    (linExprOfSparseDataByFin toFin data).const = data.const := rfl

@[simp]
theorem linExprOfSparseDataByFin_coeff {n : Nat} {α : Type}
    (toFin : α -> Fin n) (data : SparseLinExprData n) (a : α) :
    (linExprOfSparseDataByFin toFin data).coeff a =
      sparseLinExprCoeff data.terms (toFin a).val := rfl

theorem linExprOfSparseDataByFin_eq_of_normalizesTo_of_spec_eq
    {n : Nat} {α : Type} (toFin : α -> Fin n)
    {left right : SparseLinExprData n}
    {leftSpec rightSpec : SparseLinExprData.NormSpec n}
    (hleft : SparseLinExprData.NormalizesTo left leftSpec)
    (hright : SparseLinExprData.NormalizesTo right rightSpec)
    (hconst : leftSpec.const = rightSpec.const)
    (hcoeff : ∀ idx : Fin n, leftSpec.coeff idx = rightSpec.coeff idx) :
    linExprOfSparseDataByFin toFin left =
      linExprOfSparseDataByFin toFin right := by
  rw [LinExpr.mk.injEq]
  constructor
  · funext a
    calc
      sparseLinExprCoeff left.terms (toFin a).val =
          leftSpec.coeff (toFin a) := hleft.coeff_eq (toFin a)
      _ = rightSpec.coeff (toFin a) := hcoeff (toFin a)
      _ = sparseLinExprCoeff right.terms (toFin a).val :=
          (hright.coeff_eq (toFin a)).symm
  · calc
      left.const = leftSpec.const := hleft.const_eq
      _ = rightSpec.const := hconst
      _ = right.const := hright.const_eq.symm

theorem linExprOfSparseDataByFin_eq_of_same_normSpec
    {n : Nat} {α : Type} (toFin : α -> Fin n)
    {left right : SparseLinExprData n}
    {spec : SparseLinExprData.NormSpec n}
    (hleft : SparseLinExprData.NormalizesTo left spec)
    (hright : SparseLinExprData.NormalizesTo right spec) :
    linExprOfSparseDataByFin toFin left =
      linExprOfSparseDataByFin toFin right := by
  exact linExprOfSparseDataByFin_eq_of_normalizesTo_of_spec_eq toFin hleft hright
    rfl (fun _ => rfl)

theorem linExprOfSparseDataByFin_eq_of_normalizesTo
    {n : Nat} {α : Type} (toFin : α -> Fin n)
    {left right : SparseLinExprData n}
    {spec : SparseLinExprData.NormSpec n}
    (hleft : SparseLinExprData.NormalizesTo left spec)
    (hright : SparseLinExprData.NormalizesTo right spec) :
    linExprOfSparseDataByFin toFin left =
      linExprOfSparseDataByFin toFin right := by
  exact linExprOfSparseDataByFin_eq_of_same_normSpec toFin hleft hright

theorem linExprOfSparseData_eq_of_normalizesTo_of_spec_eq
    {n : Nat} {left right : SparseLinExprData n}
    {leftSpec rightSpec : SparseLinExprData.NormSpec n}
    (hleft : SparseLinExprData.NormalizesTo left leftSpec)
    (hright : SparseLinExprData.NormalizesTo right rightSpec)
    (hconst : leftSpec.const = rightSpec.const)
    (hcoeff : ∀ idx : Fin n, leftSpec.coeff idx = rightSpec.coeff idx) :
    linExprOfSparseData left = linExprOfSparseData right := by
  exact linExprOfSparseDataByFin_eq_of_normalizesTo_of_spec_eq
    (fun idx : Fin n => idx) hleft hright hconst hcoeff

theorem linExprOfSparseData_eq_of_same_normSpec
    {n : Nat} {left right : SparseLinExprData n}
    {spec : SparseLinExprData.NormSpec n}
    (hleft : SparseLinExprData.NormalizesTo left spec)
    (hright : SparseLinExprData.NormalizesTo right spec) :
    linExprOfSparseData left = linExprOfSparseData right := by
  exact linExprOfSparseData_eq_of_normalizesTo_of_spec_eq hleft hright
    rfl (fun _ => rfl)

theorem linExprOfSparseData_eq_of_normalizesTo
    {n : Nat} {left right : SparseLinExprData n}
    {spec : SparseLinExprData.NormSpec n}
    (hleft : SparseLinExprData.NormalizesTo left spec)
    (hright : SparseLinExprData.NormalizesTo right spec) :
    linExprOfSparseData left = linExprOfSparseData right := by
  exact linExprOfSparseData_eq_of_same_normSpec hleft hright

@[simp]
theorem linExprOfSparseDataByFin_id {n : Nat}
    (data : SparseLinExprData n) :
    linExprOfSparseDataByFin (fun i : Fin n => i) data =
      linExprOfSparseData data := rfl

theorem linExprOfSparseDataByFin_eq_of_nat_coeffs
    {n : Nat} {α : Type} {data : SparseLinExprData n} {e : LinExpr α}
    (toFin : α -> Fin n) (ofFin : Fin n -> α)
    (hconst : data.const = e.const)
    (hcoeff : forall (idx : Nat) (hidx : idx < n),
      sparseLinExprCoeff data.terms idx =
        e.coeff (ofFin ⟨idx, hidx⟩))
    (hinv : forall a : α, ofFin (toFin a) = a) :
    linExprOfSparseDataByFin toFin data = e := by
  rw [LinExpr.mk.injEq]
  constructor
  · funext a
    simpa [hinv a] using hcoeff (toFin a).val (toFin a).isLt
  · exact hconst

theorem linExprOfSparseDataByFin_eq_of_nat_sparse_coeffs
    {n : Nat} {α : Type} (toFin : α -> Fin n)
    {left right : SparseLinExprData n}
    (hconst : left.const = right.const)
    (hcoeff : forall idx : Nat, idx < n ->
      sparseLinExprCoeff left.terms idx =
        sparseLinExprCoeff right.terms idx) :
    linExprOfSparseDataByFin toFin left =
      linExprOfSparseDataByFin toFin right := by
  rw [LinExpr.mk.injEq]
  constructor
  · funext a
    exact hcoeff (toFin a).val (toFin a).isLt
  · exact hconst

theorem linExprOfSparseDataByFin_ofLinExprByFin
    {n : Nat} {α : Type} (toFin : α -> Fin n) (ofFin : Fin n -> α)
    (e : LinExpr α) (hinv : forall a : α, ofFin (toFin a) = a) :
    linExprOfSparseDataByFin toFin (SparseLinExprData.ofLinExprByFin ofFin e) =
      e := by
  apply linExprOfSparseDataByFin_eq_of_nat_coeffs
      (toFin := toFin) (ofFin := ofFin)
  · rfl
  · intro idx hidx
    exact SparseLinExprData.ofLinExprByFin_coeff ofFin e idx hidx
  · exact hinv

theorem SparseLinExprData.NormalizesTo.of_byFin_semantic
    {n : Nat} {α : Type}
    (ofFin : Fin n -> α) (toFin : α -> Fin n)
    (hleft : forall idx : Fin n, toFin (ofFin idx) = idx)
    {data : SparseLinExprData n} {e : LinExpr α}
    (h : linExprOfSparseDataByFin toFin data = e) :
    SparseLinExprData.NormalizesTo data
      (SparseLinExprData.NormSpec.ofLinExprByFin ofFin e) := by
  constructor
  · have hc := congrArg (fun expr => expr.const) h
    simpa [linExprOfSparseDataByFin,
      SparseLinExprData.NormSpec.ofLinExprByFin] using hc
  · intro idx
    have hc := congrArg (fun expr => expr.coeff (ofFin idx)) h
    simpa [linExprOfSparseDataByFin,
      SparseLinExprData.NormSpec.ofLinExprByFin, hleft idx] using hc

theorem linExprOfSparseData_ofLinExprByFin
    {n : Nat} (e : LinExpr (Fin n)) :
    linExprOfSparseData (SparseLinExprData.ofLinExprByFin (fun idx => idx) e) =
      e := by
  rw [← linExprOfSparseDataByFin_id]
  exact linExprOfSparseDataByFin_ofLinExprByFin
    (fun idx : Fin n => idx) (fun idx : Fin n => idx) e (fun _ => rfl)

theorem linExprOfSparseDataByFin_zero {n : Nat} {α : Type}
    (toFin : α -> Fin n) :
    linExprOfSparseDataByFin toFin (SparseLinExprData.zero (n := n)) =
      LinExpr.constExpr α 0 := by
  rfl

theorem linExprOfSparseDataByFin_add {n : Nat} {α : Type}
    (toFin : α -> Fin n) (left right : SparseLinExprData n) :
    linExprOfSparseDataByFin toFin (SparseLinExprData.add left right) =
      LinExpr.add (linExprOfSparseDataByFin toFin left)
        (linExprOfSparseDataByFin toFin right) := by
  rw [LinExpr.mk.injEq]
  constructor
  · funext a
    simp [linExprOfSparseDataByFin, SparseLinExprData.add, LinExpr.add,
      sparseLinExprCoeff_append]
  · rfl

theorem linExprOfSparseDataByFin_listSum {n : Nat} {α : Type}
    (toFin : α -> Fin n) (items : List (SparseLinExprData n)) :
    linExprOfSparseDataByFin toFin (SparseLinExprData.listSum items) =
      items.foldr
        (fun data acc => LinExpr.add (linExprOfSparseDataByFin toFin data) acc)
        (LinExpr.constExpr α 0) := by
  induction items with
  | nil =>
      exact linExprOfSparseDataByFin_zero toFin
  | cons data rest ih =>
      simp [SparseLinExprData.listSum]
      rw [linExprOfSparseDataByFin_add, ih]

theorem linExprOfSparseDataByFin_pairListSum
    {n : Nat} {α β : Type}
    (toFin : β -> Fin n) (items : List (α × SparseLinExprData n)) :
    linExprOfSparseDataByFin toFin
        (SparseLinExprData.listSum (items.map Prod.snd)) =
      items.foldr
        (fun item acc =>
          LinExpr.add (linExprOfSparseDataByFin toFin item.2) acc)
        (LinExpr.constExpr β 0) := by
  induction items with
  | nil =>
      exact linExprOfSparseDataByFin_zero toFin
  | cons item rest ih =>
      simp [SparseLinExprData.listSum]
      rw [linExprOfSparseDataByFin_add, ih]

theorem linExprOfSparseDataByFin_grouped_fold_eq_flatten
    {n : Nat} {α : Type}
    (toFin : α -> Fin n) (groups : List (List (SparseLinExprData n))) :
    groups.foldr
      (fun group acc =>
        LinExpr.add
          (group.foldr
            (fun data acc =>
              LinExpr.add (linExprOfSparseDataByFin toFin data) acc)
            (LinExpr.constExpr α 0)) acc)
      (LinExpr.constExpr α 0) =
    groups.flatten.foldr
      (fun data acc => LinExpr.add (linExprOfSparseDataByFin toFin data) acc)
      (LinExpr.constExpr α 0) := by
  exact LinExpr.foldr_add_grouped_map_eq_flatten
    (fun data => linExprOfSparseDataByFin toFin data) groups

theorem linExprOfSparseData_eq_of_sparse_coeffs_symm
    {n : Nat} {left right : SparseLinExprData n}
    (hconst : right.const = left.const)
    (hcoeff : forall i : Fin n,
      sparseLinExprCoeff right.terms i.val =
        sparseLinExprCoeff left.terms i.val) :
    linExprOfSparseData left = linExprOfSparseData right := by
  apply linExprOfSparseData_eq_of_sparse_coeffs
  · exact hconst.symm
  · intro i
    exact (hcoeff i).symm

theorem linExprOfSparseData_add {n : Nat}
    (left right : SparseLinExprData n) :
    linExprOfSparseData (SparseLinExprData.add left right) =
      LinExpr.add (linExprOfSparseData left) (linExprOfSparseData right) := by
  symm
  apply linExprOfSparseData_eq_of_coeffs
  · rfl
  · intro i
    simp [LinExpr.add, SparseLinExprData.add, sparseLinExprCoeff_append]

theorem linExprOfSparseData_smul {n : Nat} (a : Rat)
    (data : SparseLinExprData n) :
    linExprOfSparseData (SparseLinExprData.smul a data) =
      LinExpr.smul a (linExprOfSparseData data) := by
  symm
  apply linExprOfSparseData_eq_of_coeffs
  · rfl
  · intro i
    simp [LinExpr.smul, SparseLinExprData.smul, sparseLinExprCoeff_map_smul]

theorem linExprOfSparseData_listSum {n : Nat}
    (items : List (SparseLinExprData n)) :
    linExprOfSparseData (SparseLinExprData.listSum items) =
      items.foldr
        (fun data acc => LinExpr.add (linExprOfSparseData data) acc)
        (LinExpr.constExpr (Fin n) 0) := by
  induction items with
  | nil =>
      exact linExprOfSparseData_zero
  | cons data rest ih =>
      simp [SparseLinExprData.listSum]
      rw [linExprOfSparseData_add, ih]

theorem linExprOfSparseData_listSum_eq_quotientLinExprOfSparseData_listSum
    {m n : Nat} (fiber : Fin m -> Finset (Fin n))
    {qItems : List (SparseLinExprData m)}
    {fullItems : List (SparseLinExprData n)}
    (hitems : List.Forall₂
      (fun qData fullData =>
        linExprOfSparseData qData =
          quotientLinExprOfSparseData fiber fullData)
      qItems fullItems) :
    linExprOfSparseData (SparseLinExprData.listSum qItems) =
      quotientLinExprOfSparseData fiber (SparseLinExprData.listSum fullItems) := by
  induction hitems with
  | nil =>
      rw [linExprOfSparseData_listSum]
      exact (quotientLinExprOfSparseData_zero fiber).symm
  | cons hhead _ ih =>
      simp [SparseLinExprData.listSum]
      rw [linExprOfSparseData_add, quotientLinExprOfSparseData_add, hhead, ih]

theorem linExprOfSparseData_pairListSum {n : Nat} {α : Type}
    (items : List (α × SparseLinExprData n)) :
    linExprOfSparseData
        (SparseLinExprData.listSum (items.map Prod.snd)) =
      items.foldr
        (fun item acc => LinExpr.add (linExprOfSparseData item.2) acc)
        (LinExpr.constExpr (Fin n) 0) := by
  induction items with
  | nil =>
      exact linExprOfSparseData_zero
  | cons item rest ih =>
      simp [SparseLinExprData.listSum]
      rw [linExprOfSparseData_add, ih]

theorem linExprOfSparseData_grouped_fold_eq_flatten {n : Nat}
    (groups : List (List (SparseLinExprData n))) :
    groups.foldr
      (fun group acc =>
        LinExpr.add
          (group.foldr
            (fun data acc => LinExpr.add (linExprOfSparseData data) acc)
            (LinExpr.constExpr (Fin n) 0)) acc)
      (LinExpr.constExpr (Fin n) 0) =
    groups.flatten.foldr
      (fun data acc => LinExpr.add (linExprOfSparseData data) acc)
      (LinExpr.constExpr (Fin n) 0) := by
  exact LinExpr.foldr_add_grouped_map_eq_flatten
    (fun data => linExprOfSparseData data) groups

private def sparseExampleA : SparseLinExprData 3 where
  const := 1
  terms := [(0, 2), (2, 3)]

private def sparseExampleB : SparseLinExprData 3 where
  const := 3
  terms := [(1, 4), (2, -1)]

private def sparseExampleExpected : SparseLinExprData 3 where
  const := 7
  terms := [(0, 2), (2, 3), (1, 8), (2, -2)]

theorem sparseLinExprData_example_fin3 :
    LinExpr.add (linExprOfSparseData sparseExampleA)
        (LinExpr.smul (2 : Rat) (linExprOfSparseData sparseExampleB)) =
      linExprOfSparseData sparseExampleExpected := by
  rw [← linExprOfSparseData_smul, ← linExprOfSparseData_add]
  apply linExprOfSparseData_eq_of_sparse_coeffs
  · norm_num [sparseExampleA, sparseExampleB, sparseExampleExpected,
      SparseLinExprData.add, SparseLinExprData.smul]
  · intro i
    fin_cases i <;>
      norm_num [sparseExampleA, sparseExampleB, sparseExampleExpected,
        SparseLinExprData.add, SparseLinExprData.smul, sparseLinExprCoeff]

private def sparseExampleC : SparseLinExprData 4 where
  const := -2
  terms := [(0, 1), (3, -5), (0, 4)]

private def sparseExampleExpr : LinExpr (Fin 4) where
  coeff i :=
    match i.val with
    | 0 => 5
    | 1 => 0
    | 2 => 0
    | 3 => -5
    | _ => 0
  const := -2

theorem sparseLinExprData_example_fin4 :
    linExprOfSparseData sparseExampleC = sparseExampleExpr := by
  apply linExprOfSparseData_eq_of_data_coeffs
  · rfl
  · intro i
    fin_cases i <;>
      norm_num [sparseExampleC, sparseExampleExpr, sparseLinExprCoeff]

private def sparseExampleD : SparseLinExprData 5 where
  const := 0
  terms := [(0, 2), (2, 3), (2, -1), (4, 5)]

private def sparseExampleIndices : Finset (Fin 5) :=
  Finset.univ

theorem sparseLinExprData_coeffSum_example_fin5 :
    SparseLinExprData.coeffSum sparseExampleD sparseExampleIndices = 9 := by
  norm_num [SparseLinExprData.coeffSum, sparseExampleD, sparseExampleIndices,
    sparseLinExprCoeff, Finset.sum_fin_eq_sum_range, Finset.sum_range_succ]

theorem sparseLinExprData_listSum_example_fin3 :
    linExprOfSparseData
        (SparseLinExprData.listSum [sparseExampleA, sparseExampleB]) =
      LinExpr.add (linExprOfSparseData sparseExampleA)
        (LinExpr.add (linExprOfSparseData sparseExampleB)
          (LinExpr.constExpr (Fin 3) 0)) := by
  exact linExprOfSparseData_listSum [sparseExampleA, sparseExampleB]

theorem sparseLinExprData_nat_coeffs_example_fin3 :
    linExprOfSparseData sparseExampleExpected =
      linExprOfSparseData
        (SparseLinExprData.add sparseExampleA
          (SparseLinExprData.smul (2 : Rat) sparseExampleB)) := by
  apply linExprOfSparseData_eq_of_nat_sparse_coeffs
  · norm_num [sparseExampleA, sparseExampleB, sparseExampleExpected,
      SparseLinExprData.add, SparseLinExprData.smul]
  · intro idx hidx
    interval_cases idx <;>
      norm_num [sparseExampleA, sparseExampleB, sparseExampleExpected,
        SparseLinExprData.add, SparseLinExprData.smul, sparseLinExprCoeff]

theorem sparseLinExprData_byFin_example_fin3 :
    linExprOfSparseDataByFin (fun i : Fin 3 => i) sparseExampleExpected =
      linExprOfSparseData sparseExampleExpected := by
  apply linExprOfSparseDataByFin_eq_of_nat_coeffs
      (toFin := fun i : Fin 3 => i) (ofFin := fun i : Fin 3 => i)
  · rfl
  · intro idx hidx
    rfl
  · intro i
    rfl

end GijswijtPolak2025
end SDP
end CoveringCodes
