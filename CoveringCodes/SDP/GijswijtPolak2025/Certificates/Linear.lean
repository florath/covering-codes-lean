import CoveringCodes.SDP.GijswijtPolak2025.MatrixUtil
import Mathlib.Tactic

/-!
# Rational linear expressions for exact certificates
-/

namespace CoveringCodes
namespace SDP
namespace GijswijtPolak2025

structure LinExpr (ι : Type) where
  coeff : ι -> Rat
  const : Rat

def LinExpr.eval {ι : Type} [Fintype ι] (e : LinExpr ι) (x : ι -> Rat) : Rat :=
  e.const + Finset.univ.sum (fun i => e.coeff i * x i)

def LinExpr.add {ι : Type} (e f : LinExpr ι) : LinExpr ι where
  coeff i := e.coeff i + f.coeff i
  const := e.const + f.const

def LinExpr.smul {ι : Type} (a : Rat) (e : LinExpr ι) : LinExpr ι where
  coeff i := a * e.coeff i
  const := a * e.const

def LinExpr.sub {ι : Type} (e f : LinExpr ι) : LinExpr ι :=
  LinExpr.add e (LinExpr.smul (-1) f)

def LinExpr.sum {α ι : Type} (s : Finset α) (f : α -> LinExpr ι) : LinExpr ι where
  coeff i := s.sum (fun a => (f a).coeff i)
  const := s.sum (fun a => (f a).const)

def LinExpr.constExpr (ι : Type) (a : Rat) : LinExpr ι where
  coeff _ := 0
  const := a

def LinExpr.var {ι : Type} [DecidableEq ι] (target : ι) : LinExpr ι where
  coeff i := if i = target then 1 else 0
  const := 0

def LinExpr.subConst {ι : Type} (e : LinExpr ι) (a : Rat) : LinExpr ι where
  coeff := e.coeff
  const := e.const - a

@[simp]
theorem LinExpr.eval_add {ι : Type} [Fintype ι]
    (e f : LinExpr ι) (x : ι -> Rat) :
    (LinExpr.add e f).eval x = e.eval x + f.eval x := by
  unfold LinExpr.eval LinExpr.add
  dsimp
  simp_rw [add_mul]
  rw [Finset.sum_add_distrib]
  ring

@[simp]
theorem LinExpr.eval_smul {ι : Type} [Fintype ι]
    (a : Rat) (e : LinExpr ι) (x : ι -> Rat) :
    (LinExpr.smul a e).eval x = a * e.eval x := by
  unfold LinExpr.eval LinExpr.smul
  dsimp
  simp_rw [mul_assoc]
  rw [← Finset.mul_sum]
  ring

@[simp]
theorem LinExpr.eval_sub {ι : Type} [Fintype ι]
    (e f : LinExpr ι) (x : ι -> Rat) :
    (LinExpr.sub e f).eval x = e.eval x - f.eval x := by
  unfold LinExpr.sub
  simp
  ring

@[simp]
theorem LinExpr.eval_sum {α ι : Type} [Fintype ι]
    (s : Finset α) (f : α -> LinExpr ι) (x : ι -> Rat) :
    (LinExpr.sum s f).eval x = s.sum (fun a => (f a).eval x) := by
  unfold LinExpr.eval LinExpr.sum
  dsimp
  rw [Finset.sum_add_distrib]
  congr 1
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.sum_mul]

@[simp]
theorem LinExpr.eval_constExpr {ι : Type} [Fintype ι]
    (a : Rat) (x : ι -> Rat) :
    (LinExpr.constExpr ι a).eval x = a := by
  unfold LinExpr.eval LinExpr.constExpr
  simp

@[simp]
theorem LinExpr.eval_var {ι : Type} [Fintype ι] [DecidableEq ι]
    (target : ι) (x : ι -> Rat) :
    (LinExpr.var target).eval x = x target := by
  unfold LinExpr.eval LinExpr.var
  simp

@[simp]
theorem LinExpr.eval_subConst {ι : Type} [Fintype ι]
    (e : LinExpr ι) (a : Rat) (x : ι -> Rat) :
    (LinExpr.subConst e a).eval x = e.eval x - a := by
  unfold LinExpr.eval LinExpr.subConst
  ring

theorem LinExpr.eval_eq_of_coeff_const_eq {ι : Type} [Fintype ι]
    {e f : LinExpr ι}
    (hconst : e.const = f.const)
    (hcoeff : forall i, e.coeff i = f.coeff i)
    (x : ι -> Rat) :
    e.eval x = f.eval x := by
  unfold LinExpr.eval
  rw [hconst]
  congr 1
  apply Finset.sum_congr rfl
  intro i _
  rw [hcoeff i]

@[simp]
theorem LinExpr.add_zero {ι : Type} (e : LinExpr ι) :
    LinExpr.add e (LinExpr.constExpr ι 0) = e := by
  cases e
  simp [LinExpr.add, LinExpr.constExpr]

@[simp]
theorem LinExpr.zero_add {ι : Type} (e : LinExpr ι) :
    LinExpr.add (LinExpr.constExpr ι 0) e = e := by
  cases e
  simp [LinExpr.add, LinExpr.constExpr]

theorem LinExpr.add_assoc {ι : Type} (e f g : LinExpr ι) :
    LinExpr.add (LinExpr.add e f) g =
      LinExpr.add e (LinExpr.add f g) := by
  cases e
  cases f
  cases g
  rw [LinExpr.mk.injEq]
  constructor
  · funext i
    simp [LinExpr.add]
    ring
  · simp [LinExpr.add]
    ring

theorem LinExpr.foldr_add_append {ι : Type}
    (left right : List (LinExpr ι)) :
    (left ++ right).foldr LinExpr.add (LinExpr.constExpr ι 0) =
      LinExpr.add
        (left.foldr LinExpr.add (LinExpr.constExpr ι 0))
        (right.foldr LinExpr.add (LinExpr.constExpr ι 0)) := by
  induction left with
  | nil =>
      simp
  | cons e rest ih =>
      dsimp
      rw [ih]
      exact (LinExpr.add_assoc e
        (rest.foldr LinExpr.add (LinExpr.constExpr ι 0))
        (right.foldr LinExpr.add (LinExpr.constExpr ι 0))).symm

theorem LinExpr.foldr_add_append_map {α ι : Type}
    (f : α -> LinExpr ι) (left right : List α) :
    (left ++ right).foldr
        (fun a acc => LinExpr.add (f a) acc)
        (LinExpr.constExpr ι 0) =
      LinExpr.add
        (left.foldr
          (fun a acc => LinExpr.add (f a) acc)
          (LinExpr.constExpr ι 0))
        (right.foldr
          (fun a acc => LinExpr.add (f a) acc)
          (LinExpr.constExpr ι 0)) := by
  induction left with
  | nil =>
      simp
  | cons a rest ih =>
      dsimp
      rw [ih]
      exact (LinExpr.add_assoc (f a)
        (rest.foldr
          (fun a acc => LinExpr.add (f a) acc)
          (LinExpr.constExpr ι 0))
        (right.foldr
          (fun a acc => LinExpr.add (f a) acc)
          (LinExpr.constExpr ι 0))).symm

theorem LinExpr.foldr_add_grouped_eq_flatten {ι : Type}
    (groups : List (List (LinExpr ι))) :
    groups.foldr
      (fun group acc =>
        LinExpr.add (group.foldr LinExpr.add (LinExpr.constExpr ι 0)) acc)
      (LinExpr.constExpr ι 0) =
    groups.flatten.foldr LinExpr.add (LinExpr.constExpr ι 0) := by
  induction groups with
  | nil =>
      rfl
  | cons group rest ih =>
      dsimp [List.flatten]
      rw [ih, LinExpr.foldr_add_append]

theorem LinExpr.foldr_add_grouped_map_eq_flatten {α ι : Type}
    (f : α -> LinExpr ι) (groups : List (List α)) :
    groups.foldr
      (fun group acc =>
        LinExpr.add
          (group.foldr
            (fun a acc => LinExpr.add (f a) acc)
            (LinExpr.constExpr ι 0)) acc)
      (LinExpr.constExpr ι 0) =
    groups.flatten.foldr
      (fun a acc => LinExpr.add (f a) acc)
      (LinExpr.constExpr ι 0) := by
  induction groups with
  | nil =>
      rfl
  | cons group rest ih =>
      dsimp [List.flatten]
      rw [ih, LinExpr.foldr_add_append_map]

theorem LinExpr.sum_smul_var_coeff_of_injective {α ι : Type}
    [DecidableEq α] [DecidableEq ι]
    (s : Finset α) (ofIdx : α -> ι) (w : α -> Rat)
    (hinj : Function.Injective ofIdx) (idx : α) :
    (LinExpr.sum s
      (fun j => LinExpr.smul (w j) (LinExpr.var (ofIdx j)))).coeff
        (ofIdx idx) = if idx ∈ s then w idx else 0 := by
  by_cases hidx : idx ∈ s
  · rw [if_pos hidx]
    simp only [LinExpr.sum, LinExpr.smul, LinExpr.var]
    rw [Finset.sum_eq_single idx]
    · simp
    · intro j _ hne
      have hneq : ofIdx idx ≠ ofIdx j := by
        intro h
        exact hne (hinj h.symm)
      simp [hneq]
    · intro hnot
      exact False.elim (hnot hidx)
  · rw [if_neg hidx]
    simp only [LinExpr.sum, LinExpr.smul, LinExpr.var]
    rw [Finset.sum_eq_zero]
    intro j hj
    have hneq : ofIdx idx ≠ ofIdx j := by
      intro h
      have heq : j = idx := hinj h.symm
      exact hidx (by simpa [heq] using hj)
    simp [hneq]

theorem LinExpr.sum_smul_var_coeff_of_injOn_mem {α ι : Type}
    [DecidableEq α] [DecidableEq ι]
    (s : Finset α) (ofIdx : α -> ι) (w : α -> Rat)
    (hinj : Set.InjOn ofIdx {idx | idx ∈ s}) (idx : α) (hidx : idx ∈ s) :
    (LinExpr.sum s
      (fun j => LinExpr.smul (w j) (LinExpr.var (ofIdx j)))).coeff
        (ofIdx idx) = w idx := by
  simp only [LinExpr.sum, LinExpr.smul, LinExpr.var]
  rw [Finset.sum_eq_single idx]
  · simp
  · intro j hj hne
    have hneq : ofIdx idx ≠ ofIdx j := by
      intro h
      have heq : idx = j := hinj hidx hj h
      exact hne heq.symm
    simp [hneq]
  · intro hnot
    exact False.elim (hnot hidx)

namespace MatrixLinExpr

/-- Evaluation of a matrix whose entries are rational linear expressions. -/
def eval {Var ι : Type} [Fintype Var]
    (M : Matrix ι ι (LinExpr Var)) (x : Var -> Rat) : Matrix ι ι Rat :=
  fun i j => (M i j).eval x

/-- Linear expression for the inner product with a fixed rational matrix. -/
def innerExpr {Var ι : Type} [Fintype ι]
    (S : Matrix ι ι Rat) (M : Matrix ι ι (LinExpr Var)) : LinExpr Var :=
  LinExpr.sum Finset.univ (fun i =>
    LinExpr.sum Finset.univ (fun j =>
      LinExpr.smul (S i j) (M i j)))

@[simp]
theorem innerExpr_eval {Var ι : Type} [Fintype Var] [Fintype ι]
    (S : Matrix ι ι Rat) (M : Matrix ι ι (LinExpr Var)) (x : Var -> Rat) :
    (innerExpr S M).eval x = matrixInner S (eval M x) := by
  unfold innerExpr eval matrixInner
  simp [LinExpr.eval_smul]

end MatrixLinExpr

end GijswijtPolak2025
end SDP
end CoveringCodes
