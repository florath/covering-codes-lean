import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import Mathlib.Tactic

/-!
# Binary Golay covering-code helper

This module provides the binary `[23,12]` Golay covering code used by several
known-bound certificates.  The proof uses a systematic parity-check matrix for
that code and a compact syndrome table with one weight-at-most-three repair for
each of the `2^11` syndromes.
-/

namespace CoveringCodes
namespace Database

private abbrev f2_0 : Fin 2 := ⟨0, by decide⟩
private abbrev f2_1 : Fin 2 := ⟨1, by decide⟩
private abbrev f12_0 : Fin 12 := ⟨0, by decide⟩
private abbrev f12_1 : Fin 12 := ⟨1, by decide⟩
private abbrev f12_2 : Fin 12 := ⟨2, by decide⟩
private abbrev f12_3 : Fin 12 := ⟨3, by decide⟩
private abbrev f12_4 : Fin 12 := ⟨4, by decide⟩
private abbrev f12_5 : Fin 12 := ⟨5, by decide⟩
private abbrev f12_6 : Fin 12 := ⟨6, by decide⟩
private abbrev f12_7 : Fin 12 := ⟨7, by decide⟩
private abbrev f12_8 : Fin 12 := ⟨8, by decide⟩
private abbrev f12_9 : Fin 12 := ⟨9, by decide⟩
private abbrev f12_10 : Fin 12 := ⟨10, by decide⟩
private abbrev f12_11 : Fin 12 := ⟨11, by decide⟩
private abbrev p23_0 : Fin 23 := ⟨0, by decide⟩
private abbrev p23_1 : Fin 23 := ⟨1, by decide⟩
private abbrev p23_2 : Fin 23 := ⟨2, by decide⟩
private abbrev p23_3 : Fin 23 := ⟨3, by decide⟩
private abbrev p23_4 : Fin 23 := ⟨4, by decide⟩
private abbrev p23_5 : Fin 23 := ⟨5, by decide⟩
private abbrev p23_6 : Fin 23 := ⟨6, by decide⟩
private abbrev p23_7 : Fin 23 := ⟨7, by decide⟩
private abbrev p23_8 : Fin 23 := ⟨8, by decide⟩
private abbrev p23_9 : Fin 23 := ⟨9, by decide⟩
private abbrev p23_10 : Fin 23 := ⟨10, by decide⟩
private abbrev p23_11 : Fin 23 := ⟨11, by decide⟩
private abbrev p23_12 : Fin 23 := ⟨12, by decide⟩
private abbrev p23_13 : Fin 23 := ⟨13, by decide⟩
private abbrev p23_14 : Fin 23 := ⟨14, by decide⟩
private abbrev p23_15 : Fin 23 := ⟨15, by decide⟩
private abbrev p23_16 : Fin 23 := ⟨16, by decide⟩
private abbrev p23_17 : Fin 23 := ⟨17, by decide⟩
private abbrev p23_18 : Fin 23 := ⟨18, by decide⟩
private abbrev p23_19 : Fin 23 := ⟨19, by decide⟩
private abbrev p23_20 : Fin 23 := ⟨20, by decide⟩
private abbrev p23_21 : Fin 23 := ⟨21, by decide⟩
private abbrev p23_22 : Fin 23 := ⟨22, by decide⟩

private def xor2 (a b : Fin 2) : Fin 2 := ⟨(a.val + b.val) % 2, by omega⟩

private def xor2List : List (Fin 2) → Fin 2
  | [] => f2_0
  | a :: rest => xor2 a (xor2List rest)

private def asZ2 (a : Fin 2) : ZMod 2 := a.val

private def z2Component (z : ZMod 2) : Fin 2 :=
  ⟨z.val, ZMod.val_lt z⟩

private theorem z2Component_asZ2 (a : Fin 2) : z2Component (asZ2 a) = a := by
  fin_cases a <;> native_decide

private theorem z2Component_inj {a b : ZMod 2}
    (h : z2Component a = z2Component b) : a = b := by
  apply ZMod.val_injective 2
  exact congrArg Fin.val h

private theorem asZ2_xor2 (a b : Fin 2) : asZ2 (xor2 a b) = asZ2 a + asZ2 b := by
  fin_cases a <;> fin_cases b <;> native_decide

private theorem zmod2_add_self (z : ZMod 2) : z + z = 0 := by
  rw [← two_mul z, show (2 : ZMod 2) = 0 by native_decide, zero_mul]

private theorem xor2_zero (a : Fin 2) : xor2 a f2_0 = a := by
  fin_cases a <;> native_decide

private def rowParity0 (free : QaryWord 2 12) : Fin 2 :=
  xor2List [free f12_0, free f12_2, free f12_5, free f12_8, free f12_9, free f12_10, free f12_11]

private def rowParity1 (free : QaryWord 2 12) : Fin 2 :=
  xor2List [free f12_0, free f12_1, free f12_2, free f12_3, free f12_5, free f12_6, free f12_8]

private def rowParity2 (free : QaryWord 2 12) : Fin 2 :=
  xor2List [free f12_1, free f12_2, free f12_3, free f12_4, free f12_6, free f12_7, free f12_9]

private def rowParity3 (free : QaryWord 2 12) : Fin 2 :=
  xor2List [free f12_2, free f12_3, free f12_4, free f12_5, free f12_7, free f12_8, free f12_10]

private def rowParity4 (free : QaryWord 2 12) : Fin 2 :=
  xor2List [free f12_3, free f12_4, free f12_5, free f12_6, free f12_8, free f12_9, free f12_11]

private def rowParity5 (free : QaryWord 2 12) : Fin 2 :=
  xor2List [free f12_0, free f12_2, free f12_4, free f12_6, free f12_7, free f12_8, free f12_11]

private def rowParity6 (free : QaryWord 2 12) : Fin 2 :=
  xor2List [free f12_0, free f12_1, free f12_2, free f12_3, free f12_7, free f12_10, free f12_11]

private def rowParity7 (free : QaryWord 2 12) : Fin 2 :=
  xor2List [free f12_0, free f12_1, free f12_3, free f12_4, free f12_5, free f12_9, free f12_10]

private def rowParity8 (free : QaryWord 2 12) : Fin 2 :=
  xor2List [free f12_1, free f12_2, free f12_4, free f12_5, free f12_6, free f12_10, free f12_11]

private def rowParity9 (free : QaryWord 2 12) : Fin 2 :=
  xor2List [free f12_0, free f12_3, free f12_6, free f12_7, free f12_8, free f12_9, free f12_10]

private def rowParity10 (free : QaryWord 2 12) : Fin 2 :=
  xor2List [free f12_1, free f12_4, free f12_7, free f12_8, free f12_9, free f12_10, free f12_11]

private def linearWord (free : QaryWord 2 12) : QaryWord 2 23 :=
  fun i =>
    if i.val = 0 then rowParity0 free
    else if i.val = 1 then rowParity1 free
    else if i.val = 2 then rowParity2 free
    else if i.val = 3 then rowParity3 free
    else if i.val = 4 then rowParity4 free
    else if i.val = 5 then rowParity5 free
    else if i.val = 6 then rowParity6 free
    else if i.val = 7 then rowParity7 free
    else if i.val = 8 then rowParity8 free
    else if i.val = 9 then rowParity9 free
    else if i.val = 10 then rowParity10 free
    else if i.val = 11 then free f12_0
    else if i.val = 12 then free f12_1
    else if i.val = 13 then free f12_2
    else if i.val = 14 then free f12_3
    else if i.val = 15 then free f12_4
    else if i.val = 16 then free f12_5
    else if i.val = 17 then free f12_6
    else if i.val = 18 then free f12_7
    else if i.val = 19 then free f12_8
    else if i.val = 20 then free f12_9
    else if i.val = 21 then free f12_10
    else free f12_11

private def linearFree (w : QaryWord 2 23) : QaryWord 2 12 := fun i =>
  if i.val = 0 then w p23_11
  else if i.val = 1 then w p23_12
  else if i.val = 2 then w p23_13
  else if i.val = 3 then w p23_14
  else if i.val = 4 then w p23_15
  else if i.val = 5 then w p23_16
  else if i.val = 6 then w p23_17
  else if i.val = 7 then w p23_18
  else if i.val = 8 then w p23_19
  else if i.val = 9 then w p23_20
  else if i.val = 10 then w p23_21
  else w p23_22

private def zSyn0 (w : QaryWord 2 23) : ZMod 2 :=
  asZ2 (w p23_0) + asZ2 (w p23_11) + asZ2 (w p23_13) + asZ2 (w p23_16) + asZ2 (w p23_19) + asZ2 (w p23_20) + asZ2 (w p23_21) + asZ2 (w p23_22)

private def zSyn1 (w : QaryWord 2 23) : ZMod 2 :=
  asZ2 (w p23_1) + asZ2 (w p23_11) + asZ2 (w p23_12) + asZ2 (w p23_13) + asZ2 (w p23_14) + asZ2 (w p23_16) + asZ2 (w p23_17) + asZ2 (w p23_19)

private def zSyn2 (w : QaryWord 2 23) : ZMod 2 :=
  asZ2 (w p23_2) + asZ2 (w p23_12) + asZ2 (w p23_13) + asZ2 (w p23_14) + asZ2 (w p23_15) + asZ2 (w p23_17) + asZ2 (w p23_18) + asZ2 (w p23_20)

private def zSyn3 (w : QaryWord 2 23) : ZMod 2 :=
  asZ2 (w p23_3) + asZ2 (w p23_13) + asZ2 (w p23_14) + asZ2 (w p23_15) + asZ2 (w p23_16) + asZ2 (w p23_18) + asZ2 (w p23_19) + asZ2 (w p23_21)

private def zSyn4 (w : QaryWord 2 23) : ZMod 2 :=
  asZ2 (w p23_4) + asZ2 (w p23_14) + asZ2 (w p23_15) + asZ2 (w p23_16) + asZ2 (w p23_17) + asZ2 (w p23_19) + asZ2 (w p23_20) + asZ2 (w p23_22)

private def zSyn5 (w : QaryWord 2 23) : ZMod 2 :=
  asZ2 (w p23_5) + asZ2 (w p23_11) + asZ2 (w p23_13) + asZ2 (w p23_15) + asZ2 (w p23_17) + asZ2 (w p23_18) + asZ2 (w p23_19) + asZ2 (w p23_22)

private def zSyn6 (w : QaryWord 2 23) : ZMod 2 :=
  asZ2 (w p23_6) + asZ2 (w p23_11) + asZ2 (w p23_12) + asZ2 (w p23_13) + asZ2 (w p23_14) + asZ2 (w p23_18) + asZ2 (w p23_21) + asZ2 (w p23_22)

private def zSyn7 (w : QaryWord 2 23) : ZMod 2 :=
  asZ2 (w p23_7) + asZ2 (w p23_11) + asZ2 (w p23_12) + asZ2 (w p23_14) + asZ2 (w p23_15) + asZ2 (w p23_16) + asZ2 (w p23_20) + asZ2 (w p23_21)

private def zSyn8 (w : QaryWord 2 23) : ZMod 2 :=
  asZ2 (w p23_8) + asZ2 (w p23_12) + asZ2 (w p23_13) + asZ2 (w p23_15) + asZ2 (w p23_16) + asZ2 (w p23_17) + asZ2 (w p23_21) + asZ2 (w p23_22)

private def zSyn9 (w : QaryWord 2 23) : ZMod 2 :=
  asZ2 (w p23_9) + asZ2 (w p23_11) + asZ2 (w p23_14) + asZ2 (w p23_17) + asZ2 (w p23_18) + asZ2 (w p23_19) + asZ2 (w p23_20) + asZ2 (w p23_21)

private def zSyn10 (w : QaryWord 2 23) : ZMod 2 :=
  asZ2 (w p23_10) + asZ2 (w p23_12) + asZ2 (w p23_15) + asZ2 (w p23_18) + asZ2 (w p23_19) + asZ2 (w p23_20) + asZ2 (w p23_21) + asZ2 (w p23_22)

private def IsLinearWord (w : QaryWord 2 23) : Prop :=
  zSyn0 w = 0 ∧
  zSyn1 w = 0 ∧
  zSyn2 w = 0 ∧
  zSyn3 w = 0 ∧
  zSyn4 w = 0 ∧
  zSyn5 w = 0 ∧
  zSyn6 w = 0 ∧
  zSyn7 w = 0 ∧
  zSyn8 w = 0 ∧
  zSyn9 w = 0 ∧
  zSyn10 w = 0

private instance (w : QaryWord 2 23) : Decidable (IsLinearWord w) := by
  unfold IsLinearWord
  infer_instance

set_option maxRecDepth 20000 in
private theorem row0_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2) (f11 : Fin 2)
    (h : asZ2 p + asZ2 f0 + asZ2 f2 + asZ2 f5 + asZ2 f8 + asZ2 f9 + asZ2 f10 + asZ2 f11 = 0) :
    xor2List [f0, f2, f5, f8, f9, f10, f11] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11
  covering_decide

set_option maxRecDepth 20000 in
private theorem row1_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2) (f11 : Fin 2)
    (h : asZ2 p + asZ2 f0 + asZ2 f1 + asZ2 f2 + asZ2 f3 + asZ2 f5 + asZ2 f6 + asZ2 f8 = 0) :
    xor2List [f0, f1, f2, f3, f5, f6, f8] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11
  covering_decide

set_option maxRecDepth 20000 in
private theorem row2_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2) (f11 : Fin 2)
    (h : asZ2 p + asZ2 f1 + asZ2 f2 + asZ2 f3 + asZ2 f4 + asZ2 f6 + asZ2 f7 + asZ2 f9 = 0) :
    xor2List [f1, f2, f3, f4, f6, f7, f9] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11
  covering_decide

set_option maxRecDepth 20000 in
private theorem row3_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2) (f11 : Fin 2)
    (h : asZ2 p + asZ2 f2 + asZ2 f3 + asZ2 f4 + asZ2 f5 + asZ2 f7 + asZ2 f8 + asZ2 f10 = 0) :
    xor2List [f2, f3, f4, f5, f7, f8, f10] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11
  covering_decide

set_option maxRecDepth 20000 in
private theorem row4_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2) (f11 : Fin 2)
    (h : asZ2 p + asZ2 f3 + asZ2 f4 + asZ2 f5 + asZ2 f6 + asZ2 f8 + asZ2 f9 + asZ2 f11 = 0) :
    xor2List [f3, f4, f5, f6, f8, f9, f11] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11
  covering_decide

set_option maxRecDepth 20000 in
private theorem row5_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2) (f11 : Fin 2)
    (h : asZ2 p + asZ2 f0 + asZ2 f2 + asZ2 f4 + asZ2 f6 + asZ2 f7 + asZ2 f8 + asZ2 f11 = 0) :
    xor2List [f0, f2, f4, f6, f7, f8, f11] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11
  covering_decide

set_option maxRecDepth 20000 in
private theorem row6_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2) (f11 : Fin 2)
    (h : asZ2 p + asZ2 f0 + asZ2 f1 + asZ2 f2 + asZ2 f3 + asZ2 f7 + asZ2 f10 + asZ2 f11 = 0) :
    xor2List [f0, f1, f2, f3, f7, f10, f11] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11
  covering_decide

set_option maxRecDepth 20000 in
private theorem row7_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2) (f11 : Fin 2)
    (h : asZ2 p + asZ2 f0 + asZ2 f1 + asZ2 f3 + asZ2 f4 + asZ2 f5 + asZ2 f9 + asZ2 f10 = 0) :
    xor2List [f0, f1, f3, f4, f5, f9, f10] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11
  covering_decide

set_option maxRecDepth 20000 in
private theorem row8_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2) (f11 : Fin 2)
    (h : asZ2 p + asZ2 f1 + asZ2 f2 + asZ2 f4 + asZ2 f5 + asZ2 f6 + asZ2 f10 + asZ2 f11 = 0) :
    xor2List [f1, f2, f4, f5, f6, f10, f11] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11
  covering_decide

set_option maxRecDepth 20000 in
private theorem row9_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2) (f11 : Fin 2)
    (h : asZ2 p + asZ2 f0 + asZ2 f3 + asZ2 f6 + asZ2 f7 + asZ2 f8 + asZ2 f9 + asZ2 f10 = 0) :
    xor2List [f0, f3, f6, f7, f8, f9, f10] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11
  covering_decide

set_option maxRecDepth 20000 in
private theorem row10_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2) (f11 : Fin 2)
    (h : asZ2 p + asZ2 f1 + asZ2 f4 + asZ2 f7 + asZ2 f8 + asZ2 f9 + asZ2 f10 + asZ2 f11 = 0) :
    xor2List [f1, f4, f7, f8, f9, f10, f11] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11
  covering_decide

private theorem linearWord_linearFree_eq_of_isLinear (w : QaryWord 2 23)
    (h : IsLinearWord w) : linearWord (linearFree w) = w := by
  rcases h with ⟨h0, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10⟩
  have hw0 := row0_zero_solve (w p23_0) (w p23_11) (w p23_12) (w p23_13) (w p23_14) (w p23_15) (w p23_16) (w p23_17) (w p23_18) (w p23_19) (w p23_20) (w p23_21) (w p23_22) (by
    simpa [zSyn0] using h0)
  have hw1 := row1_zero_solve (w p23_1) (w p23_11) (w p23_12) (w p23_13) (w p23_14) (w p23_15) (w p23_16) (w p23_17) (w p23_18) (w p23_19) (w p23_20) (w p23_21) (w p23_22) (by
    simpa [zSyn1] using h1)
  have hw2 := row2_zero_solve (w p23_2) (w p23_11) (w p23_12) (w p23_13) (w p23_14) (w p23_15) (w p23_16) (w p23_17) (w p23_18) (w p23_19) (w p23_20) (w p23_21) (w p23_22) (by
    simpa [zSyn2] using h2)
  have hw3 := row3_zero_solve (w p23_3) (w p23_11) (w p23_12) (w p23_13) (w p23_14) (w p23_15) (w p23_16) (w p23_17) (w p23_18) (w p23_19) (w p23_20) (w p23_21) (w p23_22) (by
    simpa [zSyn3] using h3)
  have hw4 := row4_zero_solve (w p23_4) (w p23_11) (w p23_12) (w p23_13) (w p23_14) (w p23_15) (w p23_16) (w p23_17) (w p23_18) (w p23_19) (w p23_20) (w p23_21) (w p23_22) (by
    simpa [zSyn4] using h4)
  have hw5 := row5_zero_solve (w p23_5) (w p23_11) (w p23_12) (w p23_13) (w p23_14) (w p23_15) (w p23_16) (w p23_17) (w p23_18) (w p23_19) (w p23_20) (w p23_21) (w p23_22) (by
    simpa [zSyn5] using h5)
  have hw6 := row6_zero_solve (w p23_6) (w p23_11) (w p23_12) (w p23_13) (w p23_14) (w p23_15) (w p23_16) (w p23_17) (w p23_18) (w p23_19) (w p23_20) (w p23_21) (w p23_22) (by
    simpa [zSyn6] using h6)
  have hw7 := row7_zero_solve (w p23_7) (w p23_11) (w p23_12) (w p23_13) (w p23_14) (w p23_15) (w p23_16) (w p23_17) (w p23_18) (w p23_19) (w p23_20) (w p23_21) (w p23_22) (by
    simpa [zSyn7] using h7)
  have hw8 := row8_zero_solve (w p23_8) (w p23_11) (w p23_12) (w p23_13) (w p23_14) (w p23_15) (w p23_16) (w p23_17) (w p23_18) (w p23_19) (w p23_20) (w p23_21) (w p23_22) (by
    simpa [zSyn8] using h8)
  have hw9 := row9_zero_solve (w p23_9) (w p23_11) (w p23_12) (w p23_13) (w p23_14) (w p23_15) (w p23_16) (w p23_17) (w p23_18) (w p23_19) (w p23_20) (w p23_21) (w p23_22) (by
    simpa [zSyn9] using h9)
  have hw10 := row10_zero_solve (w p23_10) (w p23_11) (w p23_12) (w p23_13) (w p23_14) (w p23_15) (w p23_16) (w p23_17) (w p23_18) (w p23_19) (w p23_20) (w p23_21) (w p23_22) (by
    simpa [zSyn10] using h10)
  funext i
  fin_cases i <;>
    simp [linearWord, linearFree, rowParity0, rowParity1, rowParity2, rowParity3,
      rowParity4, rowParity5, rowParity6, rowParity7, rowParity8, rowParity9,
      rowParity10, hw0, hw1, hw2, hw3, hw4, hw5, hw6, hw7, hw8, hw9, hw10] <;>
    rfl

private def binaryGolay23Code : Finset (QaryWord 2 23) :=
  (Finset.univ : Finset (QaryWord 2 12)).image linearWord

private theorem binaryGolay23_card :
    binaryGolay23Code.card ≤ 4096 := by
  calc
    binaryGolay23Code.card ≤ (Finset.univ : Finset (QaryWord 2 12)).card := by
      simpa [binaryGolay23Code] using
        Finset.card_image_le (s := (Finset.univ : Finset (QaryWord 2 12)))
    _ = 4096 := by
      native_decide

private def packSyndrome (s0 : Fin 2) (s1 : Fin 2) (s2 : Fin 2) (s3 : Fin 2) (s4 : Fin 2) (s5 : Fin 2) (s6 : Fin 2) (s7 : Fin 2) (s8 : Fin 2) (s9 : Fin 2) (s10 : Fin 2) : Fin 2048 :=
  ⟨s0.val + 2 * s1.val + 4 * s2.val + 8 * s3.val + 16 * s4.val + 32 * s5.val + 64 * s6.val + 128 * s7.val + 256 * s8.val + 512 * s9.val + 1024 * s10.val, by omega⟩

private def syndromeIndex (w : QaryWord 2 23) : Fin 2048 :=
  packSyndrome (z2Component (zSyn0 w)) (z2Component (zSyn1 w)) (z2Component (zSyn2 w)) (z2Component (zSyn3 w)) (z2Component (zSyn4 w)) (z2Component (zSyn5 w)) (z2Component (zSyn6 w)) (z2Component (zSyn7 w)) (z2Component (zSyn8 w)) (z2Component (zSyn9 w)) (z2Component (zSyn10 w))

private theorem packSyndrome_inj (a0 : Fin 2) (a1 : Fin 2) (a2 : Fin 2) (a3 : Fin 2) (a4 : Fin 2) (a5 : Fin 2) (a6 : Fin 2) (a7 : Fin 2) (a8 : Fin 2) (a9 : Fin 2) (a10 : Fin 2) (b0 : Fin 2) (b1 : Fin 2) (b2 : Fin 2) (b3 : Fin 2) (b4 : Fin 2) (b5 : Fin 2) (b6 : Fin 2) (b7 : Fin 2) (b8 : Fin 2) (b9 : Fin 2) (b10 : Fin 2)
    (h : packSyndrome a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = packSyndrome b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10) :
    a0 = b0 ∧ a1 = b1 ∧ a2 = b2 ∧ a3 = b3 ∧ a4 = b4 ∧ a5 = b5 ∧ a6 = b6 ∧ a7 = b7 ∧ a8 = b8 ∧ a9 = b9 ∧ a10 = b10 := by
  have hv := congrArg Fin.val h
  simp [packSyndrome] at hv
  have h0 : a0.val = b0.val := by omega
  have h1 : a1.val = b1.val := by omega
  have h2 : a2.val = b2.val := by omega
  have h3 : a3.val = b3.val := by omega
  have h4 : a4.val = b4.val := by omega
  have h5 : a5.val = b5.val := by omega
  have h6 : a6.val = b6.val := by omega
  have h7 : a7.val = b7.val := by omega
  have h8 : a8.val = b8.val := by omega
  have h9 : a9.val = b9.val := by omega
  have h10 : a10.val = b10.val := by omega
  exact ⟨Fin.ext h0, Fin.ext h1, Fin.ext h2, Fin.ext h3, Fin.ext h4, Fin.ext h5, Fin.ext h6, Fin.ext h7, Fin.ext h8, Fin.ext h9, Fin.ext h10⟩

private theorem syndromeIndex_eq_components (e x : QaryWord 2 23)
    (h : syndromeIndex e = syndromeIndex x) :
    zSyn0 e = zSyn0 x ∧ zSyn1 e = zSyn1 x ∧ zSyn2 e = zSyn2 x ∧ zSyn3 e = zSyn3 x ∧ zSyn4 e = zSyn4 x ∧ zSyn5 e = zSyn5 x ∧ zSyn6 e = zSyn6 x ∧ zSyn7 e = zSyn7 x ∧ zSyn8 e = zSyn8 x ∧ zSyn9 e = zSyn9 x ∧ zSyn10 e = zSyn10 x := by
  unfold syndromeIndex at h
  have hs := packSyndrome_inj (z2Component (zSyn0 e)) (z2Component (zSyn1 e)) (z2Component (zSyn2 e)) (z2Component (zSyn3 e)) (z2Component (zSyn4 e)) (z2Component (zSyn5 e)) (z2Component (zSyn6 e)) (z2Component (zSyn7 e)) (z2Component (zSyn8 e)) (z2Component (zSyn9 e)) (z2Component (zSyn10 e)) (z2Component (zSyn0 x)) (z2Component (zSyn1 x)) (z2Component (zSyn2 x)) (z2Component (zSyn3 x)) (z2Component (zSyn4 x)) (z2Component (zSyn5 x)) (z2Component (zSyn6 x)) (z2Component (zSyn7 x)) (z2Component (zSyn8 x)) (z2Component (zSyn9 x)) (z2Component (zSyn10 x)) h
  rcases hs with ⟨h0, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10⟩
  exact ⟨z2Component_inj h0, z2Component_inj h1, z2Component_inj h2, z2Component_inj h3, z2Component_inj h4, z2Component_inj h5, z2Component_inj h6, z2Component_inj h7, z2Component_inj h8, z2Component_inj h9, z2Component_inj h10⟩

private def maskWord (mask : Nat) : QaryWord 2 23 :=
  fun i => if Nat.testBit mask i.val then f2_1 else f2_0

set_option maxRecDepth 20000 in
private def repairData : Array Nat := #[
  0, 1, 2, 3, 4, 5, 6, 7,
  8, 9, 10, 11, 12, 13, 14, 2101760,
  16, 17, 18, 19, 20, 21, 22, 786496,
  24, 25, 26, 65920, 28, 18464, 4203520, 1212416,
  32, 33, 34, 35, 36, 37, 38, 99328,
  40, 41, 42, 4587520, 44, 18448, 1572992, 8512,
  48, 49, 50, 3153920, 52, 18440, 131840, 4198528,
  56, 18436, 36928, 525824, 18433, 18432, 2424832, 18434,
  64, 65, 66, 67, 68, 69, 70, 786448,
  72, 73, 74, 1065984, 76, 4227200, 198656, 8480,
  80, 81, 82, 786436, 84, 786434, 786433, 786432,
  88, 139776, 36896, 6293504, 3145984, 70656, 17024, 786440,
  96, 97, 98, 2688, 100, 1183744, 6307840, 8456,
  104, 2686976, 36880, 8452, 263680, 8450, 8449, 8448,
  112, 4195584, 36872, 212992, 73856, 2130432, 1051648, 786464,
  36866, 1310848, 36864, 36865, 4849664, 18496, 36868, 8464,
  128, 129, 130, 131, 132, 133, 134, 155648,
  136, 137, 138, 65808, 140, 4227136, 1572896, 265216,
  144, 145, 146, 65800, 148, 1050112, 2131968, 4198432,
  152, 65794, 65793, 65792, 397312, 2629632, 16960, 65796,
  160, 161, 162, 2624, 164, 2359552, 1572872, 4198416,
  168, 13312, 1572868, 2146304, 1572866, 197120, 1572864, 1572865,
  176, 688128, 279552, 4198404, 73792, 4198402, 4198401, 4198400,
  6291968, 1310784, 141312, 65824, 34048, 18560, 1572880, 4198408,
  192, 193, 194, 2592, 196, 4227080, 5376, 3211264,
  200, 4227076, 2367488, 659456, 4227073, 4227072, 16912, 4227074,
  208, 2117632, 5373952, 41984, 73760, 133376, 16904, 786560,
  527360, 1310752, 16900, 65856, 16898, 4227088, 16896, 16897,
  224, 2562, 2561, 2560, 73744, 541696, 425984, 2564,
  147712, 1310736, 4260864, 2568, 2103296, 4227104, 1572928, 8576,
  73732, 1310728, 2621696, 2576, 73728, 73729, 73730, 4198464,
  1310721, 1310720, 36992, 1310722, 73736, 1310724, 16928, 2229248,
  256, 257, 258, 259, 260, 261, 262, 5244928,
  264, 265, 266, 65680, 268, 656384, 311296, 8288,
  272, 273, 274, 65672, 276, 45056, 131616, 2114560,
  280, 65666, 65665, 65664, 3145792, 4456960, 530432, 65668,
  288, 289, 290, 544768, 292, 2359424, 131600, 8264,
  296, 1081856, 2100224, 8260, 4263936, 8258, 8257, 8256,
  304, 4195392, 131588, 296960, 131586, 1638400, 131584, 131585,
  794624, 2232320, 5259264, 65696, 33920, 18688, 131592, 8272,
  320, 321, 322, 2260992, 324, 82432, 5248, 8232,
  328, 268288, 4719104, 8228, 3145744, 8226, 8225, 8224,
  336, 4195360, 26624, 1053184, 3145736, 133248, 4292608, 786688,
  3145732, 573440, 394240, 65728, 3145728, 3145729, 3145730, 8240,
  352, 4195344, 1376256, 8204, 559104, 8202, 8201, 8200,
  147584, 8198, 8197, 8196, 8195, 8194, 8193, 8192,
  4195329, 4195328, 2621568, 4195330, 282624, 4195332, 131648, 8216,
  68096, 4195336, 37120, 8212, 3145760, 8210, 8209, 8208,
  384, 385, 386, 65560, 388, 2359328, 5184, 557568,
  392, 65554, 65553, 65552, 10752, 1069056, 6422528, 65556,
  400, 65546, 65545, 65544, 4734976, 133184, 1318912, 65548,
  65539, 65538, 65537, 65536, 33824, 65542, 65541, 65540,
  416, 2359300, 4235264, 1180672, 2359297, 2359296, 83968, 2359298,
  147520, 4720640, 266752, 65584, 33808, 2359304, 1573120, 8384,
  1054720, 25088, 2621504, 65576, 33800, 2359312, 131712, 4198656,
  33796, 65570, 65569, 65568, 33792, 33793, 33794, 65572,
  448, 1581056, 5124, 4472832, 5122, 133136, 5120, 5121,
  147488, 2098688, 1083392, 65616, 851968, 4227328, 5128, 8352,
  295424, 133124, 2621472, 65608, 133121, 133120, 5136, 133122,
  4206592, 65602, 65601, 65600, 3145856, 133128, 17152, 65604,
  147464, 102400, 2621456, 2816, 5243392, 2359360, 5152, 8328,
  147456, 147457, 147458, 8324, 147460, 8322, 8321, 8320,
  2621442, 4195456, 2621440, 2621441, 73984, 133152, 2621444, 1097728,
  147472, 1310976, 2621448, 65632, 33856, 528896, 4458496, 8336,
  512, 513, 514, 515, 516, 517, 518, 2101256,
  520, 521, 522, 2101252, 524, 2101250, 2101249, 2101248,
  528, 529, 530, 4243456, 532, 1049728, 131360, 75776,
  536, 139328, 1312768, 525344, 622592, 4456704, 16576, 2101264,
  544, 545, 546, 2240, 548, 4726784, 131344, 1327104,
  552, 1081600, 90112, 525328, 263232, 196736, 4229120, 2101280,
  560, 331776, 131332, 525320, 131330, 2129984, 131328, 131329,
  6291584, 525314, 525313, 525312, 1060864, 18944, 131336, 525316,
  576, 577, 578, 2208, 580, 82176, 1089536, 4326400,
  584, 139280, 4718848, 360448, 263200, 1574912, 16528, 2101312,
  592, 139272, 2163712, 1052928, 4200448, 2129952, 16520, 786944,
  139265, 139264, 16516, 139266, 16514, 139268, 16512, 16513,
  608, 2178, 2177, 2176, 263176, 2129936, 593920, 2180,
  263172, 4214784, 3276800, 2184, 263168, 263169, 263170, 8960,
  1589248, 2129924, 4464640, 2192, 2129921, 2129920, 131392, 2129922,
  67840, 139296, 37376, 525376, 263184, 2129928, 16544, 5308416,
  640, 641, 642, 2144, 644, 1049616, 4521984, 557312,
  648, 802816, 164864, 5251072, 10496, 196640, 16464, 2101376,
  656, 1049604, 536576, 2490368, 1049601, 1049600, 16456, 1049602,
  6291488, 38912, 16452, 66304, 16450, 1049608, 16448, 16449,
  672, 2114, 2113, 2112, 53248, 196616, 2106368, 2116,
  6291472, 196612, 266496, 2120, 196609, 196608, 1573376, 196610,
  6291464, 24832, 1146880, 2128, 788480, 1049632, 131456, 4198912,
  6291456, 6291457, 6291458, 525440, 6291460, 196624, 16480, 303104,
  704, 2082, 2081, 2080, 2752512, 274432, 16408, 2084,
  1118208, 2098432, 16404, 2088, 16402, 4227584, 16400, 16401,
  295168, 4784128, 16396, 2096, 16394, 1049664, 16392, 16393,
  16390, 139392, 16388, 16389, 16386, 16387, 16384, 16385,
  2051, 2050, 2049, 2048, 5243136, 2054, 2053, 2052,
  565248, 2058, 2057, 2056, 263296, 196672, 16432, 2060,
  136192, 2066, 2065, 2064, 74240, 2130048, 16424, 2068,
  6291520, 1311232, 16420, 2072, 16418, 528640, 16416, 16417,
  768, 769, 770, 271360, 772, 81984, 131120, 557184,
  776, 1081376, 4718656, 149504, 10368, 4456464, 1115136, 2101504,
  784, 2623488, 131108, 1052736, 131106, 4456456, 131104, 131105,
  21504, 4456452, 2138112, 66176, 4456449, 4456448, 131112, 4456450,
  800, 1081352, 131092, 6356992, 131090, 7168, 131088, 131089,
  1081345, 1081344, 266368, 1081346, 2637824, 1081348, 131096, 8768,
  131078, 24704, 131076, 131077, 131074, 131075, 131072, 131073,
  67648, 1081360, 131084, 525568, 131082, 4456480, 131080, 131081,
  832, 81924, 4718600, 1052688, 81921, 81920, 2361344, 81922,
  4718594, 2098304, 4718592, 4718593, 167936, 81928, 4718596, 8736,
  295040, 1052674, 1052673, 1052672, 533504, 81936, 131168, 1052676,
  67616, 139520, 4718608, 1052680, 3146240, 4456512, 16768, 35840,
  2109440, 917504, 50176, 2432, 5243008, 81952, 131152, 8712,
  67600, 1081408, 4718624, 8708, 263424, 8706, 8705, 8704,
  67592, 4195840, 131140, 1052704, 131138, 2130176, 131136, 131137,
  67584, 67585, 67586, 2375680, 67588, 528512, 131144, 8720,
  896, 4329472, 3162112, 557060, 10248, 557058, 557057, 557056,
  10244, 2098240, 266272, 66064, 10240, 10241, 10242, 557064,
  294976, 24608, 4197376, 66056, 2166784, 1049856, 131232, 557072,
  1703936, 66050, 66049, 66048, 10256, 4456576, 16704, 66052,
  590848, 24592, 266248, 2368, 5242944, 2359808, 131216, 557088,
  266242, 1081472, 266240, 266241, 10272, 196864, 266244, 4211712,
  24577, 24576, 131204, 24578, 131202, 24580, 131200, 131201,
  6291712, 24584, 266256, 66080, 34304, 528448, 131208, 3147776,
  294928, 2098184, 204800, 2336, 5242912, 82048, 5632, 557120,
  2098177, 2098176, 4718720, 2098178, 10304, 2098180, 16656, 1441792,
  294912, 294913, 294914, 1052800, 294916, 133632, 16648, 6299648,
  294920, 2098192, 16644, 66112, 16642, 528416, 16640, 16641,
  5242884, 2306, 2305, 2304, 5242880, 5242881, 5242882, 2308,
  147968, 2098208, 266304, 2312, 5242888, 528400, 2195456, 8832,
  294944, 24640, 2621952, 2320, 5242896, 528392, 131264, 328704,
  67712, 528388, 1057792, 4358144, 528385, 528384, 16672, 528386,
  1024, 1025, 1026, 1027, 1028, 1029, 1030, 98336,
  1032, 1033, 1034, 1065024, 1036, 655616, 4202512, 264320,
  1040, 1041, 1042, 137216, 1044, 1049216, 4202504, 2113792,
  1048, 2392064, 4202500, 524832, 4202498, 69696, 4202496, 4202497,
  1056, 1057, 1058, 98308, 1060, 98306, 98305, 98304,
  1064, 12416, 2099456, 524816, 262720, 7340032, 151552, 98312,
  1072, 4194624, 278656, 524808, 2625536, 401408, 1050688, 98320,
  1245184, 524802, 524801, 524800, 33152, 19456, 4202528, 524804,
  1088, 1089, 1090, 1064968, 1092, 2107392, 4480, 4325888,
  1096, 1064962, 1064961, 1064960, 262688, 69648, 2654208, 1064964,
  1104, 4194592, 2163200, 41088, 180224, 69640, 1050656, 787456,
  526464, 69636, 393472, 1064976, 69633, 69632, 4202560, 69634,
  1120, 4194576, 663552, 2363392, 262664, 540800, 1050640, 98368,
  262660, 165888, 4259968, 1064992, 262656, 262657, 262658, 9472,
  4194561, 4194560, 1050628, 4194562, 1050626, 4194564, 1050624, 1050625,
  2121728, 4194568, 37888, 524864, 262672, 69664, 1050632, 2228352,
  1152, 1153, 1154, 6815744, 1156, 1049104, 4416, 264200,
  1160, 12320, 164352, 264196, 2179072, 264194, 264193, 264192,
  1168, 1049092, 278560, 41024, 1049089, 1049088, 720896, 1049090,
  526400, 4341760, 3149824, 66816, 33056, 1049096, 4202624, 264208,
  1184, 12296, 278544, 1179904, 4327424, 540736, 2105856, 98432,
  12289, 12288, 4259904, 12290, 33040, 12292, 1573888, 264224,
  278530, 2164736, 278528, 278529, 33032, 1049120, 278532, 4199424,
  33028, 12304, 278536, 524928, 33024, 33025, 33026, 2228288,
  1216, 458752, 4356, 40976, 4354, 540704, 4352, 4353,
  526352, 2097920, 4259872, 1065088, 1187840, 4228096, 4360, 264256,
  526344, 40962, 40961, 40960, 6553600, 1049152, 4368, 40964,
  526336, 526337, 526338, 40968, 526340, 69760, 17920, 2228256,
  3178496, 540676, 4259848, 3584, 540673, 540672, 4384, 540674,
  4259842, 12352, 4259840, 4259841, 262784, 540680, 4259844, 2228240,
  135680, 4194688, 278592, 40992, 74752, 540688, 1050752, 2228232,
  526368, 1311744, 4259856, 2228228, 33088, 2228226, 2228225, 2228224,
  1280, 1281, 1282, 270848, 1284, 655368, 4288, 2113552,
  1288, 655364, 2099232, 4231168, 655361, 655360, 1114624, 655362,
  1296, 4194400, 1605632, 2113540, 329728, 2113538, 2113537, 2113536,
  20992, 1058816, 393280, 66688, 32928, 655376, 4202752, 2113544,
  1312, 4194384, 2099208, 1179776, 1073152, 6656, 4980736, 98560,
  2099202, 344064, 2099200, 2099201, 32912, 655392, 2099204, 9280,
  4194369, 4194368, 77824, 4194370, 32904, 4194372, 132608, 2113568,
  32900, 4194376, 2099216, 525056, 32896, 32897, 32898, 1314816,
  1344, 4194352, 4228, 591872, 4226, 1343488, 4224, 4225,
  106496, 2097792, 393232, 1065216, 4212736, 655424, 4232, 9248,
  4194337, 4194336, 393224, 4194338, 532992, 4194340, 4240, 2113600,
  393218, 4194344, 393216, 393217, 3146752, 69888, 393220, 35328,
  4194321, 4194320, 49664, 4194322, 2293760, 4194324, 4256, 9224,
  1576960, 4194328, 2099264, 9220, 262912, 9218, 9217, 9216,
  4194305, 4194304, 4194307, 4194306, 4194309, 4194308, 1050880, 4194310,
  4194313, 4194312, 393248, 4194314, 32960, 4194316, 606208, 9232,
  1408, 51200, 4164, 1179680, 4162, 4268032, 4160, 4161,
  5505024, 2097728, 548864, 66576, 32816, 655488, 4168, 264448,
  2236416, 790528, 4196864, 66568, 32808, 1049344, 4176, 2113664,
  32804, 66562, 66561, 66560, 32800, 32801, 32802, 66564,
  590336, 1179650, 1179649, 1179648, 32792, 2360320, 4192, 1179652,
  32788, 12544, 2099328, 1179656, 32784, 32785, 32786, 4211200,
  32780, 4194496, 278784, 1179664, 32776, 32777, 32778, 534528,
  32772, 32773, 32774, 66592, 32768, 32769, 32770, 32771,
  4102, 2097672, 4100, 4101, 4098, 4099, 4096, 4097,
  2097665, 2097664, 4108, 2097666, 4106, 2097668, 4104, 4105,
  1130496, 4194464, 4116, 41216, 4114, 134144, 4112, 4113,
  526592, 2097680, 393344, 66624, 32864, 286720, 4120, 5767168,
  272384, 4194448, 4132, 1179712, 4130, 540928, 4128, 4129,
  148480, 2097696, 4260096, 819200, 32848, 1116160, 4136, 9344,
  4194433, 4194432, 2622464, 4194434, 32840, 4194436, 4144, 328192,
  32836, 4194440, 1057280, 22528, 32832, 32833, 32834, 2228480,
  1536, 1537, 1538, 270592, 1540, 1048720, 542720, 4325440,
  1544, 4261888, 163968, 524336, 262240, 57344, 1114368, 2102272,
  1552, 1048708, 2162752, 524328, 1048705, 1048704, 299008, 1048706,
  20736, 524322, 524321, 524320, 2230272, 1048712, 4203008, 524324,
  1568, 2244608, 5246976, 524312, 262216, 6400, 2105472, 98816,
  262212, 524306, 524305, 524304, 262208, 262209, 262210, 524308,
  43008, 524298, 524297, 524296, 4276224, 1048736, 132352, 524300,
  524291, 524290, 524289, 524288, 262224, 524294, 524293, 524292,
  1600, 561152, 2162704, 4325380, 262184, 4325378, 4325377, 4325376,
  262180, 2097536, 14336, 1065472, 262176, 262177, 262178, 4325384,
  2162690, 280576, 2162688, 2162689, 532736, 1048768, 2162692, 4325392,
  5275648, 140288, 2162696, 524384, 262192, 70144, 17536, 35072,
  262156, 1122304, 49408, 3200, 262152, 262153, 262154, 4325408,
  262148, 262149, 262150, 524368, 262144, 262145, 262146, 262147,
  135296, 4195072, 2162720, 524360, 262168, 2130944, 1051136, 28672,
  262164, 524354, 524353, 524352, 262160, 262161, 262162, 524356,
  1664, 1048596, 163848, 86016, 1048593, 1048592, 2105376, 1048594,
  163842, 2097472, 163840, 163841, 4722688, 1048600, 163844, 264704,
  1048581, 1048580, 4196608, 1048582, 1048577, 1048576, 1048579, 1048578,
  335872, 1048588, 163856, 524448, 1048585, 1048584, 17472, 1048586,
  590080, 4489216, 2105348, 3136, 2105346, 1048624, 2105344, 2105345,
  1067008, 12800, 163872, 524432, 262336, 197632, 2105352, 4210944,
  135232, 1048612, 279040, 524424, 1048609, 1048608, 2105360, 1048610,
  6292480, 524418, 524417, 524416, 33536, 1048616, 71680, 524420,
  4218880, 2097416, 1835008, 3104, 100352, 1048656, 4864, 4325504,
  2097409, 2097408, 163904, 2097410, 262304, 2097412, 17424, 598016,
  135200, 1048644, 2162816, 41472, 1048641, 1048640, 17416, 1048642,
  526848, 2097424, 17412, 4460544, 17410, 1048648, 17408, 17409,
  135184, 3074, 3073, 3072, 262280, 541184, 2105408, 3076,
  262276, 2097440, 4260352, 3080, 262272, 262273, 262274, 1085440,
  135168, 135169, 135170, 3088, 135172, 1048672, 4751360, 327936,
  135176, 114688, 1057024, 524480, 262288, 4204544, 17440, 2228736,
  1792, 270338, 270337, 270336, 6324224, 6176, 1114120, 270340,
  20496, 2097344, 1114116, 270344, 1114114, 655872, 1114112, 1114113,
  20488, 229376, 4196480, 270352, 532544, 1048960, 132128, 2114048,
  20480, 20481, 20482, 524576, 20484, 4457472, 1114128, 34880,
  589952, 6148, 49216, 270368, 6145, 6144, 132112, 6146,
  4333568, 1082368, 2099712, 524560, 262464, 6152, 1114144, 4210816,
  3407872, 4194880, 132100, 524552, 132098, 6160, 132096, 132097,
  20512, 524546, 524545, 524544, 33408, 2170880, 132104, 524548,
  1181696, 2097288, 49184, 270400, 532496, 82944, 4736, 4325632,
  2097281, 2097280, 4719616, 2097282, 262432, 2097284, 1114176, 34832,
  532484, 4194848, 2162944, 1053696, 532480, 532481, 532482, 34824,
  20544, 2097296, 393728, 34820, 532488, 34818, 34817, 34816,
  49154, 4194832, 49152, 49153, 262408, 6208, 49156, 3670016,
  262404, 2097312, 49160, 200704, 262400, 262401, 262402, 9728,
  4194817, 4194816, 49168, 4194818, 532512, 4194820, 132160, 327808,
  68608, 4194824, 1056896, 524608, 262416, 1196032, 6295552, 34848,
  589856, 2097224, 4196368, 270464, 409600, 1048848, 4672, 558080,
  2097217, 2097216, 164096, 2097218, 11264, 2097220, 1114240, 4210720,
  4196354, 1048836, 4196352, 4196353, 1048833, 1048832, 4196356, 1048834,
  20608, 2097232, 4196360, 67072, 33312, 1048840, 2883584, 143360,
  589824, 589825, 589826, 1180160, 589828, 6272, 2105600, 4210696,
  589832, 2097248, 267264, 4210692, 33296, 4210690, 4210689, 4210688,
  589840, 25600, 4196384, 2134016, 33288, 1048864, 132224, 327744,
  33284, 395264, 1056832, 524672, 33280, 33281, 33282, 4210704,
  2097161, 2097160, 4612, 2097162, 4610, 2097164, 4608, 4609,
  2097153, 2097152, 2097155, 2097154, 2097157, 2097156, 4616, 2097158,
  295936, 2097176, 4196416, 671744, 532608, 1048896, 4624, 327712,
  2097169, 2097168, 1056800, 2097170, 4390912, 2097172, 17664, 34944,
  589888, 2097192, 49280, 3328, 5243904, 172032, 4640, 327696,
  2097185, 2097184, 1056784, 2097186, 262528, 2097188, 657408, 4210752,
  135424, 4194944, 1056776, 327684, 2115584, 327682, 327681, 327680,
  1056770, 2097200, 1056768, 1056769, 33344, 529408, 1056772, 327688
]

private def syndromeCorrection (s : Fin 2048) : QaryWord 2 23 :=
  maskWord (repairData.getD s.val 0)

private def support (w : QaryWord 2 23) : Finset (Fin 23) :=
  Finset.univ.filter (fun i => w i ≠ f2_0)

set_option maxRecDepth 20000 in
private theorem table_syndrome : ∀ s : Fin 2048, syndromeIndex (syndromeCorrection s) = s := by
  native_decide

set_option maxRecDepth 20000 in
private theorem table_weight : ∀ s : Fin 2048, (support (syndromeCorrection s)).card ≤ 3 := by
  native_decide

private def xorWord (x e : QaryWord 2 23) : QaryWord 2 23 :=
  fun i => xor2 (x i) (e i)

private theorem zSyn0_xorWord (x e : QaryWord 2 23) :
    zSyn0 (xorWord x e) = zSyn0 x + zSyn0 e := by
  simp [zSyn0, xorWord, asZ2_xor2]
  ring_nf

private theorem zSyn1_xorWord (x e : QaryWord 2 23) :
    zSyn1 (xorWord x e) = zSyn1 x + zSyn1 e := by
  simp [zSyn1, xorWord, asZ2_xor2]
  ring_nf

private theorem zSyn2_xorWord (x e : QaryWord 2 23) :
    zSyn2 (xorWord x e) = zSyn2 x + zSyn2 e := by
  simp [zSyn2, xorWord, asZ2_xor2]
  ring_nf

private theorem zSyn3_xorWord (x e : QaryWord 2 23) :
    zSyn3 (xorWord x e) = zSyn3 x + zSyn3 e := by
  simp [zSyn3, xorWord, asZ2_xor2]
  ring_nf

private theorem zSyn4_xorWord (x e : QaryWord 2 23) :
    zSyn4 (xorWord x e) = zSyn4 x + zSyn4 e := by
  simp [zSyn4, xorWord, asZ2_xor2]
  ring_nf

private theorem zSyn5_xorWord (x e : QaryWord 2 23) :
    zSyn5 (xorWord x e) = zSyn5 x + zSyn5 e := by
  simp [zSyn5, xorWord, asZ2_xor2]
  ring_nf

private theorem zSyn6_xorWord (x e : QaryWord 2 23) :
    zSyn6 (xorWord x e) = zSyn6 x + zSyn6 e := by
  simp [zSyn6, xorWord, asZ2_xor2]
  ring_nf

private theorem zSyn7_xorWord (x e : QaryWord 2 23) :
    zSyn7 (xorWord x e) = zSyn7 x + zSyn7 e := by
  simp [zSyn7, xorWord, asZ2_xor2]
  ring_nf

private theorem zSyn8_xorWord (x e : QaryWord 2 23) :
    zSyn8 (xorWord x e) = zSyn8 x + zSyn8 e := by
  simp [zSyn8, xorWord, asZ2_xor2]
  ring_nf

private theorem zSyn9_xorWord (x e : QaryWord 2 23) :
    zSyn9 (xorWord x e) = zSyn9 x + zSyn9 e := by
  simp [zSyn9, xorWord, asZ2_xor2]
  ring_nf

private theorem zSyn10_xorWord (x e : QaryWord 2 23) :
    zSyn10 (xorWord x e) = zSyn10 x + zSyn10 e := by
  simp [zSyn10, xorWord, asZ2_xor2]
  ring_nf

private theorem xorWord_isLinear_of_matching (x e : QaryWord 2 23)
    (h0 : zSyn0 e = zSyn0 x) (h1 : zSyn1 e = zSyn1 x) (h2 : zSyn2 e = zSyn2 x) (h3 : zSyn3 e = zSyn3 x) (h4 : zSyn4 e = zSyn4 x) (h5 : zSyn5 e = zSyn5 x) (h6 : zSyn6 e = zSyn6 x) (h7 : zSyn7 e = zSyn7 x) (h8 : zSyn8 e = zSyn8 x) (h9 : zSyn9 e = zSyn9 x) (h10 : zSyn10 e = zSyn10 x) :
    IsLinearWord (xorWord x e) := by
  constructor
  · rw [zSyn0_xorWord, h0]
    exact zmod2_add_self (zSyn0 x)
  · constructor
    · rw [zSyn1_xorWord, h1]
      exact zmod2_add_self (zSyn1 x)
    · constructor
      · rw [zSyn2_xorWord, h2]
        exact zmod2_add_self (zSyn2 x)
      · constructor
        · rw [zSyn3_xorWord, h3]
          exact zmod2_add_self (zSyn3 x)
        · constructor
          · rw [zSyn4_xorWord, h4]
            exact zmod2_add_self (zSyn4 x)
          · constructor
            · rw [zSyn5_xorWord, h5]
              exact zmod2_add_self (zSyn5 x)
            · constructor
              · rw [zSyn6_xorWord, h6]
                exact zmod2_add_self (zSyn6 x)
              · constructor
                · rw [zSyn7_xorWord, h7]
                  exact zmod2_add_self (zSyn7 x)
                · constructor
                  · rw [zSyn8_xorWord, h8]
                    exact zmod2_add_self (zSyn8 x)
                  · constructor
                    · rw [zSyn9_xorWord, h9]
                      exact zmod2_add_self (zSyn9 x)
                    · rw [zSyn10_xorWord, h10]
                      exact zmod2_add_self (zSyn10 x)

private theorem xorWord_dist_le_of_support (x e : QaryWord 2 23)
    (hw : (support e).card ≤ 3) :
    hammingDist x (xorWord x e) ≤ 3 := by
  have hsubset : (Finset.univ.filter fun i : Fin 23 => x i ≠ xorWord x e i) ⊆ support e := by
    intro i hi
    simp only [support, Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
    by_contra hne
    have heq : e i = f2_0 := by simpa using hne
    apply hi
    unfold xorWord
    rw [heq]
    exact (xor2_zero (x i)).symm
  calc
    hammingDist x (xorWord x e)
        = (Finset.univ.filter fun i : Fin 23 => x i ≠ xorWord x e i).card := rfl
    _ ≤ (support e).card := Finset.card_le_card hsubset
    _ ≤ 3 := hw

private def repairCenter (x : QaryWord 2 23) : QaryWord 2 23 :=
  let e := syndromeCorrection (syndromeIndex x)
  linearWord (linearFree (xorWord x e))

private theorem repairCenter_mem (x : QaryWord 2 23) :
    repairCenter x ∈ binaryGolay23Code := by
  exact Finset.mem_image.mpr ⟨linearFree (xorWord x (syndromeCorrection (syndromeIndex x))),
    Finset.mem_univ _, rfl⟩

private theorem repairCenter_dist (x : QaryWord 2 23) :
    hammingDist x (repairCenter x) ≤ 3 := by
  let e := syndromeCorrection (syndromeIndex x)
  have hmatch := syndromeIndex_eq_components e x (by simpa [e] using table_syndrome (syndromeIndex x))
  have hlin : IsLinearWord (xorWord x e) := by
    rcases hmatch with ⟨h0, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10⟩
    exact xorWord_isLinear_of_matching x e h0 h1 h2 h3 h4 h5 h6 h7 h8 h9 h10
  have hcenter : repairCenter x = xorWord x e := by
    simp [repairCenter, e, linearWord_linearFree_eq_of_isLinear (xorWord x e) hlin]
  rw [hcenter]
  exact xorWord_dist_le_of_support x e (by simpa [e] using table_weight (syndromeIndex x))

private theorem binaryGolay23_covers :
    CoversFinset binaryGolay23Code 3 := by
  intro x
  exact ⟨repairCenter x, repairCenter_mem x, repairCenter_dist x⟩

/-- The binary `[23,12]` Golay code gives `K_2(23,3) <= 4096`. -/
def binaryGolay23Explicit : ExplicitQaryUpper 2 23 3 4096 :=
  { code := binaryGolay23Code
    card_le := binaryGolay23_card
    covers := binaryGolay23_covers }

end Database
end CoveringCodes
