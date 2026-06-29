import CoveringCodes.Database.ExplicitCode
import CoveringCodes.Database.ProofMode
import Mathlib.Tactic

/-!
# Binary BCH31 covering-code helper

This module provides the binary length-31 BCH covering code used by the
known-bound certificates for `K_2(32,7)` and `K_2(33,7)`.  The proof uses a
row-reduced parity-check matrix for the BCH construction with roots
`1, 3, 5, 7` over `GF(32)`.  Coverage is certified by computing, during
native checking, one support-at-most-seven syndrome repair for each of the
`2^20` row-reduced syndromes.
-/

namespace CoveringCodes
namespace Database

set_option maxHeartbeats 2000000

private abbrev f2_0 : Fin 2 := ⟨0, by decide⟩
private abbrev f2_1 : Fin 2 := ⟨1, by decide⟩
private abbrev f11_0 : Fin 11 := ⟨0, by decide⟩
private abbrev f11_1 : Fin 11 := ⟨1, by decide⟩
private abbrev f11_2 : Fin 11 := ⟨2, by decide⟩
private abbrev f11_3 : Fin 11 := ⟨3, by decide⟩
private abbrev f11_4 : Fin 11 := ⟨4, by decide⟩
private abbrev f11_5 : Fin 11 := ⟨5, by decide⟩
private abbrev f11_6 : Fin 11 := ⟨6, by decide⟩
private abbrev f11_7 : Fin 11 := ⟨7, by decide⟩
private abbrev f11_8 : Fin 11 := ⟨8, by decide⟩
private abbrev f11_9 : Fin 11 := ⟨9, by decide⟩
private abbrev f11_10 : Fin 11 := ⟨10, by decide⟩
private abbrev p31_0 : Fin 31 := ⟨0, by decide⟩
private abbrev p31_1 : Fin 31 := ⟨1, by decide⟩
private abbrev p31_2 : Fin 31 := ⟨2, by decide⟩
private abbrev p31_3 : Fin 31 := ⟨3, by decide⟩
private abbrev p31_4 : Fin 31 := ⟨4, by decide⟩
private abbrev p31_5 : Fin 31 := ⟨5, by decide⟩
private abbrev p31_6 : Fin 31 := ⟨6, by decide⟩
private abbrev p31_7 : Fin 31 := ⟨7, by decide⟩
private abbrev p31_8 : Fin 31 := ⟨8, by decide⟩
private abbrev p31_9 : Fin 31 := ⟨9, by decide⟩
private abbrev p31_10 : Fin 31 := ⟨10, by decide⟩
private abbrev p31_11 : Fin 31 := ⟨11, by decide⟩
private abbrev p31_12 : Fin 31 := ⟨12, by decide⟩
private abbrev p31_13 : Fin 31 := ⟨13, by decide⟩
private abbrev p31_14 : Fin 31 := ⟨14, by decide⟩
private abbrev p31_15 : Fin 31 := ⟨15, by decide⟩
private abbrev p31_16 : Fin 31 := ⟨16, by decide⟩
private abbrev p31_17 : Fin 31 := ⟨17, by decide⟩
private abbrev p31_18 : Fin 31 := ⟨18, by decide⟩
private abbrev p31_19 : Fin 31 := ⟨19, by decide⟩
private abbrev p31_20 : Fin 31 := ⟨20, by decide⟩
private abbrev p31_21 : Fin 31 := ⟨21, by decide⟩
private abbrev p31_22 : Fin 31 := ⟨22, by decide⟩
private abbrev p31_23 : Fin 31 := ⟨23, by decide⟩
private abbrev p31_24 : Fin 31 := ⟨24, by decide⟩
private abbrev p31_25 : Fin 31 := ⟨25, by decide⟩
private abbrev p31_26 : Fin 31 := ⟨26, by decide⟩
private abbrev p31_27 : Fin 31 := ⟨27, by decide⟩
private abbrev p31_28 : Fin 31 := ⟨28, by decide⟩
private abbrev p31_29 : Fin 31 := ⟨29, by decide⟩
private abbrev p31_30 : Fin 31 := ⟨30, by decide⟩

private def xor2 (a b : Fin 2) : Fin 2 := ⟨(a.val + b.val) % 2, by omega⟩

private def xor2List : List (Fin 2) → Fin 2
  | [] => f2_0
  | a :: rest => xor2 a (xor2List rest)

private theorem xor2_zero (a : Fin 2) : xor2 a f2_0 = a := by
  fin_cases a <;> native_decide

private theorem xor2_self (a : Fin 2) : xor2 a a = f2_0 := by
  fin_cases a <;> native_decide

private def rowFreeParity0 (free : QaryWord 2 11) : Fin 2 :=
  xor2List [free f11_0, free f11_2, free f11_3, free f11_4, free f11_9]

private def rowFreeParity1 (free : QaryWord 2 11) : Fin 2 :=
  xor2List [free f11_1, free f11_3, free f11_4, free f11_5, free f11_10]

private def rowFreeParity2 (free : QaryWord 2 11) : Fin 2 :=
  xor2List [free f11_0, free f11_3, free f11_5, free f11_6, free f11_9]

private def rowFreeParity3 (free : QaryWord 2 11) : Fin 2 :=
  xor2List [free f11_1, free f11_4, free f11_6, free f11_7, free f11_10]

private def rowFreeParity4 (free : QaryWord 2 11) : Fin 2 :=
  xor2List [free f11_0, free f11_3, free f11_4, free f11_5, free f11_7, free f11_8, free f11_9]

private def rowFreeParity5 (free : QaryWord 2 11) : Fin 2 :=
  xor2List [free f11_1, free f11_4, free f11_5, free f11_6, free f11_8, free f11_9, free f11_10]

private def rowFreeParity6 (free : QaryWord 2 11) : Fin 2 :=
  xor2List [free f11_0, free f11_3, free f11_4, free f11_5, free f11_6, free f11_7, free f11_10]

private def rowFreeParity7 (free : QaryWord 2 11) : Fin 2 :=
  xor2List [free f11_0, free f11_1, free f11_2, free f11_3, free f11_5, free f11_6, free f11_7, free f11_8, free f11_9]

private def rowFreeParity8 (free : QaryWord 2 11) : Fin 2 :=
  xor2List [free f11_1, free f11_2, free f11_3, free f11_4, free f11_6, free f11_7, free f11_8, free f11_9, free f11_10]

private def rowFreeParity9 (free : QaryWord 2 11) : Fin 2 :=
  xor2List [free f11_0, free f11_5, free f11_7, free f11_8, free f11_10]

private def rowFreeParity10 (free : QaryWord 2 11) : Fin 2 :=
  xor2List [free f11_0, free f11_1, free f11_2, free f11_3, free f11_4, free f11_6, free f11_8]

private def rowFreeParity11 (free : QaryWord 2 11) : Fin 2 :=
  xor2List [free f11_1, free f11_2, free f11_3, free f11_4, free f11_5, free f11_7, free f11_9]

private def rowFreeParity12 (free : QaryWord 2 11) : Fin 2 :=
  xor2List [free f11_2, free f11_3, free f11_4, free f11_5, free f11_6, free f11_8, free f11_10]

private def rowFreeParity13 (free : QaryWord 2 11) : Fin 2 :=
  xor2List [free f11_0, free f11_2, free f11_5, free f11_6, free f11_7]

private def rowFreeParity14 (free : QaryWord 2 11) : Fin 2 :=
  xor2List [free f11_1, free f11_3, free f11_6, free f11_7, free f11_8]

private def rowFreeParity15 (free : QaryWord 2 11) : Fin 2 :=
  xor2List [free f11_2, free f11_4, free f11_7, free f11_8, free f11_9]

private def rowFreeParity16 (free : QaryWord 2 11) : Fin 2 :=
  xor2List [free f11_3, free f11_5, free f11_8, free f11_9, free f11_10]

private def rowFreeParity17 (free : QaryWord 2 11) : Fin 2 :=
  xor2List [free f11_0, free f11_2, free f11_3, free f11_6, free f11_10]

private def rowFreeParity18 (free : QaryWord 2 11) : Fin 2 :=
  xor2List [free f11_0, free f11_1, free f11_2, free f11_7, free f11_9]

private def rowFreeParity19 (free : QaryWord 2 11) : Fin 2 :=
  xor2List [free f11_1, free f11_2, free f11_3, free f11_8, free f11_10]

private def linearWord (free : QaryWord 2 11) : QaryWord 2 31 :=
  fun i =>
    if i.val = 0 then rowFreeParity0 free
    else if i.val = 1 then rowFreeParity1 free
    else if i.val = 2 then rowFreeParity2 free
    else if i.val = 3 then rowFreeParity3 free
    else if i.val = 4 then rowFreeParity4 free
    else if i.val = 5 then rowFreeParity5 free
    else if i.val = 6 then rowFreeParity6 free
    else if i.val = 7 then rowFreeParity7 free
    else if i.val = 8 then rowFreeParity8 free
    else if i.val = 9 then rowFreeParity9 free
    else if i.val = 10 then rowFreeParity10 free
    else if i.val = 11 then rowFreeParity11 free
    else if i.val = 12 then rowFreeParity12 free
    else if i.val = 13 then rowFreeParity13 free
    else if i.val = 14 then rowFreeParity14 free
    else if i.val = 15 then rowFreeParity15 free
    else if i.val = 16 then rowFreeParity16 free
    else if i.val = 17 then rowFreeParity17 free
    else if i.val = 18 then rowFreeParity18 free
    else if i.val = 19 then rowFreeParity19 free
    else if i.val = 20 then free f11_0
    else if i.val = 21 then free f11_1
    else if i.val = 22 then free f11_2
    else if i.val = 23 then free f11_3
    else if i.val = 24 then free f11_4
    else if i.val = 25 then free f11_5
    else if i.val = 26 then free f11_6
    else if i.val = 27 then free f11_7
    else if i.val = 28 then free f11_8
    else if i.val = 29 then free f11_9
    else free f11_10

private def linearFree (w : QaryWord 2 31) : QaryWord 2 11 := fun i =>
  if i.val = 0 then w p31_20
  else if i.val = 1 then w p31_21
  else if i.val = 2 then w p31_22
  else if i.val = 3 then w p31_23
  else if i.val = 4 then w p31_24
  else if i.val = 5 then w p31_25
  else if i.val = 6 then w p31_26
  else if i.val = 7 then w p31_27
  else if i.val = 8 then w p31_28
  else if i.val = 9 then w p31_29
  else w p31_30

private def rowParity0 (w : QaryWord 2 31) : Fin 2 :=
  xor2List [w p31_0, w p31_20, w p31_22, w p31_23, w p31_24, w p31_29]

private def rowParity1 (w : QaryWord 2 31) : Fin 2 :=
  xor2List [w p31_1, w p31_21, w p31_23, w p31_24, w p31_25, w p31_30]

private def rowParity2 (w : QaryWord 2 31) : Fin 2 :=
  xor2List [w p31_2, w p31_20, w p31_23, w p31_25, w p31_26, w p31_29]

private def rowParity3 (w : QaryWord 2 31) : Fin 2 :=
  xor2List [w p31_3, w p31_21, w p31_24, w p31_26, w p31_27, w p31_30]

private def rowParity4 (w : QaryWord 2 31) : Fin 2 :=
  xor2List [w p31_4, w p31_20, w p31_23, w p31_24, w p31_25, w p31_27, w p31_28, w p31_29]

private def rowParity5 (w : QaryWord 2 31) : Fin 2 :=
  xor2List [w p31_5, w p31_21, w p31_24, w p31_25, w p31_26, w p31_28, w p31_29, w p31_30]

private def rowParity6 (w : QaryWord 2 31) : Fin 2 :=
  xor2List [w p31_6, w p31_20, w p31_23, w p31_24, w p31_25, w p31_26, w p31_27, w p31_30]

private def rowParity7 (w : QaryWord 2 31) : Fin 2 :=
  xor2List [w p31_7, w p31_20, w p31_21, w p31_22, w p31_23, w p31_25, w p31_26, w p31_27, w p31_28, w p31_29]

private def rowParity8 (w : QaryWord 2 31) : Fin 2 :=
  xor2List [w p31_8, w p31_21, w p31_22, w p31_23, w p31_24, w p31_26, w p31_27, w p31_28, w p31_29, w p31_30]

private def rowParity9 (w : QaryWord 2 31) : Fin 2 :=
  xor2List [w p31_9, w p31_20, w p31_25, w p31_27, w p31_28, w p31_30]

private def rowParity10 (w : QaryWord 2 31) : Fin 2 :=
  xor2List [w p31_10, w p31_20, w p31_21, w p31_22, w p31_23, w p31_24, w p31_26, w p31_28]

private def rowParity11 (w : QaryWord 2 31) : Fin 2 :=
  xor2List [w p31_11, w p31_21, w p31_22, w p31_23, w p31_24, w p31_25, w p31_27, w p31_29]

private def rowParity12 (w : QaryWord 2 31) : Fin 2 :=
  xor2List [w p31_12, w p31_22, w p31_23, w p31_24, w p31_25, w p31_26, w p31_28, w p31_30]

private def rowParity13 (w : QaryWord 2 31) : Fin 2 :=
  xor2List [w p31_13, w p31_20, w p31_22, w p31_25, w p31_26, w p31_27]

private def rowParity14 (w : QaryWord 2 31) : Fin 2 :=
  xor2List [w p31_14, w p31_21, w p31_23, w p31_26, w p31_27, w p31_28]

private def rowParity15 (w : QaryWord 2 31) : Fin 2 :=
  xor2List [w p31_15, w p31_22, w p31_24, w p31_27, w p31_28, w p31_29]

private def rowParity16 (w : QaryWord 2 31) : Fin 2 :=
  xor2List [w p31_16, w p31_23, w p31_25, w p31_28, w p31_29, w p31_30]

private def rowParity17 (w : QaryWord 2 31) : Fin 2 :=
  xor2List [w p31_17, w p31_20, w p31_22, w p31_23, w p31_26, w p31_30]

private def rowParity18 (w : QaryWord 2 31) : Fin 2 :=
  xor2List [w p31_18, w p31_20, w p31_21, w p31_22, w p31_27, w p31_29]

private def rowParity19 (w : QaryWord 2 31) : Fin 2 :=
  xor2List [w p31_19, w p31_21, w p31_22, w p31_23, w p31_28, w p31_30]

private def IsLinearWord (w : QaryWord 2 31) : Prop :=
  rowParity0 w = f2_0 ∧
    rowParity1 w = f2_0 ∧
    rowParity2 w = f2_0 ∧
    rowParity3 w = f2_0 ∧
    rowParity4 w = f2_0 ∧
    rowParity5 w = f2_0 ∧
    rowParity6 w = f2_0 ∧
    rowParity7 w = f2_0 ∧
    rowParity8 w = f2_0 ∧
    rowParity9 w = f2_0 ∧
    rowParity10 w = f2_0 ∧
    rowParity11 w = f2_0 ∧
    rowParity12 w = f2_0 ∧
    rowParity13 w = f2_0 ∧
    rowParity14 w = f2_0 ∧
    rowParity15 w = f2_0 ∧
    rowParity16 w = f2_0 ∧
    rowParity17 w = f2_0 ∧
    rowParity18 w = f2_0 ∧
    rowParity19 w = f2_0

set_option maxRecDepth 20000 in
private theorem row0_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2)
    (h : xor2List [p, f0, f2, f3, f4, f9] = f2_0) :
    xor2List [f0, f2, f3, f4, f9] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
  covering_decide

set_option maxRecDepth 20000 in
private theorem row1_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2)
    (h : xor2List [p, f1, f3, f4, f5, f10] = f2_0) :
    xor2List [f1, f3, f4, f5, f10] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
  covering_decide

set_option maxRecDepth 20000 in
private theorem row2_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2)
    (h : xor2List [p, f0, f3, f5, f6, f9] = f2_0) :
    xor2List [f0, f3, f5, f6, f9] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
  covering_decide

set_option maxRecDepth 20000 in
private theorem row3_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2)
    (h : xor2List [p, f1, f4, f6, f7, f10] = f2_0) :
    xor2List [f1, f4, f6, f7, f10] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
  covering_decide

set_option maxRecDepth 20000 in
private theorem row4_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2)
    (h : xor2List [p, f0, f3, f4, f5, f7, f8, f9] = f2_0) :
    xor2List [f0, f3, f4, f5, f7, f8, f9] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
  covering_decide

set_option maxRecDepth 20000 in
private theorem row5_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2)
    (h : xor2List [p, f1, f4, f5, f6, f8, f9, f10] = f2_0) :
    xor2List [f1, f4, f5, f6, f8, f9, f10] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
  covering_decide

set_option maxRecDepth 20000 in
private theorem row6_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2)
    (h : xor2List [p, f0, f3, f4, f5, f6, f7, f10] = f2_0) :
    xor2List [f0, f3, f4, f5, f6, f7, f10] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
  covering_decide

set_option maxRecDepth 20000 in
private theorem row7_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2)
    (h : xor2List [p, f0, f1, f2, f3, f5, f6, f7, f8, f9] = f2_0) :
    xor2List [f0, f1, f2, f3, f5, f6, f7, f8, f9] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
  covering_decide

set_option maxRecDepth 20000 in
private theorem row8_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2)
    (h : xor2List [p, f1, f2, f3, f4, f6, f7, f8, f9, f10] = f2_0) :
    xor2List [f1, f2, f3, f4, f6, f7, f8, f9, f10] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
  covering_decide

set_option maxRecDepth 20000 in
private theorem row9_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2)
    (h : xor2List [p, f0, f5, f7, f8, f10] = f2_0) :
    xor2List [f0, f5, f7, f8, f10] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
  covering_decide

set_option maxRecDepth 20000 in
private theorem row10_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2)
    (h : xor2List [p, f0, f1, f2, f3, f4, f6, f8] = f2_0) :
    xor2List [f0, f1, f2, f3, f4, f6, f8] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
  covering_decide

set_option maxRecDepth 20000 in
private theorem row11_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2)
    (h : xor2List [p, f1, f2, f3, f4, f5, f7, f9] = f2_0) :
    xor2List [f1, f2, f3, f4, f5, f7, f9] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
  covering_decide

set_option maxRecDepth 20000 in
private theorem row12_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2)
    (h : xor2List [p, f2, f3, f4, f5, f6, f8, f10] = f2_0) :
    xor2List [f2, f3, f4, f5, f6, f8, f10] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
  covering_decide

set_option maxRecDepth 20000 in
private theorem row13_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2)
    (h : xor2List [p, f0, f2, f5, f6, f7] = f2_0) :
    xor2List [f0, f2, f5, f6, f7] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
  covering_decide

set_option maxRecDepth 20000 in
private theorem row14_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2)
    (h : xor2List [p, f1, f3, f6, f7, f8] = f2_0) :
    xor2List [f1, f3, f6, f7, f8] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
  covering_decide

set_option maxRecDepth 20000 in
private theorem row15_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2)
    (h : xor2List [p, f2, f4, f7, f8, f9] = f2_0) :
    xor2List [f2, f4, f7, f8, f9] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
  covering_decide

set_option maxRecDepth 20000 in
private theorem row16_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2)
    (h : xor2List [p, f3, f5, f8, f9, f10] = f2_0) :
    xor2List [f3, f5, f8, f9, f10] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
  covering_decide

set_option maxRecDepth 20000 in
private theorem row17_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2)
    (h : xor2List [p, f0, f2, f3, f6, f10] = f2_0) :
    xor2List [f0, f2, f3, f6, f10] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
  covering_decide

set_option maxRecDepth 20000 in
private theorem row18_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2)
    (h : xor2List [p, f0, f1, f2, f7, f9] = f2_0) :
    xor2List [f0, f1, f2, f7, f9] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
  covering_decide

set_option maxRecDepth 20000 in
private theorem row19_zero_solve (p : Fin 2) (f0 : Fin 2) (f1 : Fin 2) (f2 : Fin 2) (f3 : Fin 2) (f4 : Fin 2) (f5 : Fin 2) (f6 : Fin 2) (f7 : Fin 2) (f8 : Fin 2) (f9 : Fin 2) (f10 : Fin 2)
    (h : xor2List [p, f1, f2, f3, f8, f10] = f2_0) :
    xor2List [f1, f2, f3, f8, f10] = p := by
  revert p f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10
  covering_decide

private theorem linearWord_linearFree_eq_of_isLinear (w : QaryWord 2 31)
    (h : IsLinearWord w) : linearWord (linearFree w) = w := by
  rcases h with ⟨h0, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19⟩
  have hw0 := row0_zero_solve (w p31_0) (w p31_20) (w p31_21) (w p31_22) (w p31_23) (w p31_24) (w p31_25) (w p31_26) (w p31_27) (w p31_28) (w p31_29) (w p31_30) (by
    simpa [rowParity0] using h0)
  have hw1 := row1_zero_solve (w p31_1) (w p31_20) (w p31_21) (w p31_22) (w p31_23) (w p31_24) (w p31_25) (w p31_26) (w p31_27) (w p31_28) (w p31_29) (w p31_30) (by
    simpa [rowParity1] using h1)
  have hw2 := row2_zero_solve (w p31_2) (w p31_20) (w p31_21) (w p31_22) (w p31_23) (w p31_24) (w p31_25) (w p31_26) (w p31_27) (w p31_28) (w p31_29) (w p31_30) (by
    simpa [rowParity2] using h2)
  have hw3 := row3_zero_solve (w p31_3) (w p31_20) (w p31_21) (w p31_22) (w p31_23) (w p31_24) (w p31_25) (w p31_26) (w p31_27) (w p31_28) (w p31_29) (w p31_30) (by
    simpa [rowParity3] using h3)
  have hw4 := row4_zero_solve (w p31_4) (w p31_20) (w p31_21) (w p31_22) (w p31_23) (w p31_24) (w p31_25) (w p31_26) (w p31_27) (w p31_28) (w p31_29) (w p31_30) (by
    simpa [rowParity4] using h4)
  have hw5 := row5_zero_solve (w p31_5) (w p31_20) (w p31_21) (w p31_22) (w p31_23) (w p31_24) (w p31_25) (w p31_26) (w p31_27) (w p31_28) (w p31_29) (w p31_30) (by
    simpa [rowParity5] using h5)
  have hw6 := row6_zero_solve (w p31_6) (w p31_20) (w p31_21) (w p31_22) (w p31_23) (w p31_24) (w p31_25) (w p31_26) (w p31_27) (w p31_28) (w p31_29) (w p31_30) (by
    simpa [rowParity6] using h6)
  have hw7 := row7_zero_solve (w p31_7) (w p31_20) (w p31_21) (w p31_22) (w p31_23) (w p31_24) (w p31_25) (w p31_26) (w p31_27) (w p31_28) (w p31_29) (w p31_30) (by
    simpa [rowParity7] using h7)
  have hw8 := row8_zero_solve (w p31_8) (w p31_20) (w p31_21) (w p31_22) (w p31_23) (w p31_24) (w p31_25) (w p31_26) (w p31_27) (w p31_28) (w p31_29) (w p31_30) (by
    simpa [rowParity8] using h8)
  have hw9 := row9_zero_solve (w p31_9) (w p31_20) (w p31_21) (w p31_22) (w p31_23) (w p31_24) (w p31_25) (w p31_26) (w p31_27) (w p31_28) (w p31_29) (w p31_30) (by
    simpa [rowParity9] using h9)
  have hw10 := row10_zero_solve (w p31_10) (w p31_20) (w p31_21) (w p31_22) (w p31_23) (w p31_24) (w p31_25) (w p31_26) (w p31_27) (w p31_28) (w p31_29) (w p31_30) (by
    simpa [rowParity10] using h10)
  have hw11 := row11_zero_solve (w p31_11) (w p31_20) (w p31_21) (w p31_22) (w p31_23) (w p31_24) (w p31_25) (w p31_26) (w p31_27) (w p31_28) (w p31_29) (w p31_30) (by
    simpa [rowParity11] using h11)
  have hw12 := row12_zero_solve (w p31_12) (w p31_20) (w p31_21) (w p31_22) (w p31_23) (w p31_24) (w p31_25) (w p31_26) (w p31_27) (w p31_28) (w p31_29) (w p31_30) (by
    simpa [rowParity12] using h12)
  have hw13 := row13_zero_solve (w p31_13) (w p31_20) (w p31_21) (w p31_22) (w p31_23) (w p31_24) (w p31_25) (w p31_26) (w p31_27) (w p31_28) (w p31_29) (w p31_30) (by
    simpa [rowParity13] using h13)
  have hw14 := row14_zero_solve (w p31_14) (w p31_20) (w p31_21) (w p31_22) (w p31_23) (w p31_24) (w p31_25) (w p31_26) (w p31_27) (w p31_28) (w p31_29) (w p31_30) (by
    simpa [rowParity14] using h14)
  have hw15 := row15_zero_solve (w p31_15) (w p31_20) (w p31_21) (w p31_22) (w p31_23) (w p31_24) (w p31_25) (w p31_26) (w p31_27) (w p31_28) (w p31_29) (w p31_30) (by
    simpa [rowParity15] using h15)
  have hw16 := row16_zero_solve (w p31_16) (w p31_20) (w p31_21) (w p31_22) (w p31_23) (w p31_24) (w p31_25) (w p31_26) (w p31_27) (w p31_28) (w p31_29) (w p31_30) (by
    simpa [rowParity16] using h16)
  have hw17 := row17_zero_solve (w p31_17) (w p31_20) (w p31_21) (w p31_22) (w p31_23) (w p31_24) (w p31_25) (w p31_26) (w p31_27) (w p31_28) (w p31_29) (w p31_30) (by
    simpa [rowParity17] using h17)
  have hw18 := row18_zero_solve (w p31_18) (w p31_20) (w p31_21) (w p31_22) (w p31_23) (w p31_24) (w p31_25) (w p31_26) (w p31_27) (w p31_28) (w p31_29) (w p31_30) (by
    simpa [rowParity18] using h18)
  have hw19 := row19_zero_solve (w p31_19) (w p31_20) (w p31_21) (w p31_22) (w p31_23) (w p31_24) (w p31_25) (w p31_26) (w p31_27) (w p31_28) (w p31_29) (w p31_30) (by
    simpa [rowParity19] using h19)
  funext i
  fin_cases i <;>
    simp [linearWord, linearFree, rowFreeParity0, rowFreeParity1, rowFreeParity2, rowFreeParity3, rowFreeParity4, rowFreeParity5, rowFreeParity6, rowFreeParity7, rowFreeParity8, rowFreeParity9, rowFreeParity10, rowFreeParity11, rowFreeParity12, rowFreeParity13, rowFreeParity14, rowFreeParity15, rowFreeParity16, rowFreeParity17, rowFreeParity18, rowFreeParity19, hw0, hw1, hw2, hw3, hw4, hw5, hw6, hw7, hw8, hw9, hw10, hw11, hw12, hw13, hw14, hw15, hw16, hw17, hw18, hw19] <;>
    rfl

private def bch31Code (_ : Unit) : Finset (QaryWord 2 31) :=
  (Finset.univ : Finset (QaryWord 2 11)).image linearWord

private theorem bch31_card :
    (bch31Code ()).card ≤ 2048 := by
  calc
    (bch31Code ()).card ≤ (Finset.univ : Finset (QaryWord 2 11)).card := by
      simpa [bch31Code] using
        Finset.card_image_le (s := (Finset.univ : Finset (QaryWord 2 11)))
    _ = 2048 := by
      native_decide

private def bch31Columns : Array Nat :=
  #[1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 403157, 806314, 966017, 744919, 40315, 80630, 161260, 322520, 645040, 362933, 725866]

private def syndromeCount : Nat := 1048576
private def wordMaskLimit : Nat := 2147483648
private def invalidRepairMask : Nat := wordMaskLimit

private def bitFin (idx row : Nat) : Fin 2 :=
  if Nat.testBit idx row then f2_1 else f2_0

private def packSyndrome (p0 : Fin 2) (p1 : Fin 2) (p2 : Fin 2) (p3 : Fin 2) (p4 : Fin 2) (p5 : Fin 2) (p6 : Fin 2) (p7 : Fin 2) (p8 : Fin 2) (p9 : Fin 2) (p10 : Fin 2) (p11 : Fin 2) (p12 : Fin 2) (p13 : Fin 2) (p14 : Fin 2) (p15 : Fin 2) (p16 : Fin 2) (p17 : Fin 2) (p18 : Fin 2) (p19 : Fin 2) : Fin syndromeCount :=
  ⟨p0.val + 2 * p1.val + 4 * p2.val + 8 * p3.val + 16 * p4.val + 32 * p5.val + 64 * p6.val + 128 * p7.val + 256 * p8.val + 512 * p9.val + 1024 * p10.val + 2048 * p11.val + 4096 * p12.val + 8192 * p13.val + 16384 * p14.val + 32768 * p15.val + 65536 * p16.val + 131072 * p17.val + 262144 * p18.val + 524288 * p19.val, by
    norm_num [syndromeCount]
    omega⟩

set_option maxRecDepth 20000 in
private theorem bitFin_pack0 (p0 : Fin 2) (p1 : Fin 2) (p2 : Fin 2) (p3 : Fin 2) (p4 : Fin 2) (p5 : Fin 2) (p6 : Fin 2) (p7 : Fin 2) (p8 : Fin 2) (p9 : Fin 2) (p10 : Fin 2) (p11 : Fin 2) (p12 : Fin 2) (p13 : Fin 2) (p14 : Fin 2) (p15 : Fin 2) (p16 : Fin 2) (p17 : Fin 2) (p18 : Fin 2) (p19 : Fin 2) :
    bitFin (packSyndrome p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19).val 0 = p0 := by
  revert p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  native_decide

set_option maxRecDepth 20000 in
private theorem bitFin_pack1 (p0 : Fin 2) (p1 : Fin 2) (p2 : Fin 2) (p3 : Fin 2) (p4 : Fin 2) (p5 : Fin 2) (p6 : Fin 2) (p7 : Fin 2) (p8 : Fin 2) (p9 : Fin 2) (p10 : Fin 2) (p11 : Fin 2) (p12 : Fin 2) (p13 : Fin 2) (p14 : Fin 2) (p15 : Fin 2) (p16 : Fin 2) (p17 : Fin 2) (p18 : Fin 2) (p19 : Fin 2) :
    bitFin (packSyndrome p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19).val 1 = p1 := by
  revert p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  native_decide

set_option maxRecDepth 20000 in
private theorem bitFin_pack2 (p0 : Fin 2) (p1 : Fin 2) (p2 : Fin 2) (p3 : Fin 2) (p4 : Fin 2) (p5 : Fin 2) (p6 : Fin 2) (p7 : Fin 2) (p8 : Fin 2) (p9 : Fin 2) (p10 : Fin 2) (p11 : Fin 2) (p12 : Fin 2) (p13 : Fin 2) (p14 : Fin 2) (p15 : Fin 2) (p16 : Fin 2) (p17 : Fin 2) (p18 : Fin 2) (p19 : Fin 2) :
    bitFin (packSyndrome p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19).val 2 = p2 := by
  revert p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  native_decide

set_option maxRecDepth 20000 in
private theorem bitFin_pack3 (p0 : Fin 2) (p1 : Fin 2) (p2 : Fin 2) (p3 : Fin 2) (p4 : Fin 2) (p5 : Fin 2) (p6 : Fin 2) (p7 : Fin 2) (p8 : Fin 2) (p9 : Fin 2) (p10 : Fin 2) (p11 : Fin 2) (p12 : Fin 2) (p13 : Fin 2) (p14 : Fin 2) (p15 : Fin 2) (p16 : Fin 2) (p17 : Fin 2) (p18 : Fin 2) (p19 : Fin 2) :
    bitFin (packSyndrome p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19).val 3 = p3 := by
  revert p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  native_decide

set_option maxRecDepth 20000 in
private theorem bitFin_pack4 (p0 : Fin 2) (p1 : Fin 2) (p2 : Fin 2) (p3 : Fin 2) (p4 : Fin 2) (p5 : Fin 2) (p6 : Fin 2) (p7 : Fin 2) (p8 : Fin 2) (p9 : Fin 2) (p10 : Fin 2) (p11 : Fin 2) (p12 : Fin 2) (p13 : Fin 2) (p14 : Fin 2) (p15 : Fin 2) (p16 : Fin 2) (p17 : Fin 2) (p18 : Fin 2) (p19 : Fin 2) :
    bitFin (packSyndrome p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19).val 4 = p4 := by
  revert p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  native_decide

set_option maxRecDepth 20000 in
private theorem bitFin_pack5 (p0 : Fin 2) (p1 : Fin 2) (p2 : Fin 2) (p3 : Fin 2) (p4 : Fin 2) (p5 : Fin 2) (p6 : Fin 2) (p7 : Fin 2) (p8 : Fin 2) (p9 : Fin 2) (p10 : Fin 2) (p11 : Fin 2) (p12 : Fin 2) (p13 : Fin 2) (p14 : Fin 2) (p15 : Fin 2) (p16 : Fin 2) (p17 : Fin 2) (p18 : Fin 2) (p19 : Fin 2) :
    bitFin (packSyndrome p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19).val 5 = p5 := by
  revert p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  native_decide

set_option maxRecDepth 20000 in
private theorem bitFin_pack6 (p0 : Fin 2) (p1 : Fin 2) (p2 : Fin 2) (p3 : Fin 2) (p4 : Fin 2) (p5 : Fin 2) (p6 : Fin 2) (p7 : Fin 2) (p8 : Fin 2) (p9 : Fin 2) (p10 : Fin 2) (p11 : Fin 2) (p12 : Fin 2) (p13 : Fin 2) (p14 : Fin 2) (p15 : Fin 2) (p16 : Fin 2) (p17 : Fin 2) (p18 : Fin 2) (p19 : Fin 2) :
    bitFin (packSyndrome p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19).val 6 = p6 := by
  revert p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  native_decide

set_option maxRecDepth 20000 in
private theorem bitFin_pack7 (p0 : Fin 2) (p1 : Fin 2) (p2 : Fin 2) (p3 : Fin 2) (p4 : Fin 2) (p5 : Fin 2) (p6 : Fin 2) (p7 : Fin 2) (p8 : Fin 2) (p9 : Fin 2) (p10 : Fin 2) (p11 : Fin 2) (p12 : Fin 2) (p13 : Fin 2) (p14 : Fin 2) (p15 : Fin 2) (p16 : Fin 2) (p17 : Fin 2) (p18 : Fin 2) (p19 : Fin 2) :
    bitFin (packSyndrome p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19).val 7 = p7 := by
  revert p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  native_decide

set_option maxRecDepth 20000 in
private theorem bitFin_pack8 (p0 : Fin 2) (p1 : Fin 2) (p2 : Fin 2) (p3 : Fin 2) (p4 : Fin 2) (p5 : Fin 2) (p6 : Fin 2) (p7 : Fin 2) (p8 : Fin 2) (p9 : Fin 2) (p10 : Fin 2) (p11 : Fin 2) (p12 : Fin 2) (p13 : Fin 2) (p14 : Fin 2) (p15 : Fin 2) (p16 : Fin 2) (p17 : Fin 2) (p18 : Fin 2) (p19 : Fin 2) :
    bitFin (packSyndrome p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19).val 8 = p8 := by
  revert p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  native_decide

set_option maxRecDepth 20000 in
private theorem bitFin_pack9 (p0 : Fin 2) (p1 : Fin 2) (p2 : Fin 2) (p3 : Fin 2) (p4 : Fin 2) (p5 : Fin 2) (p6 : Fin 2) (p7 : Fin 2) (p8 : Fin 2) (p9 : Fin 2) (p10 : Fin 2) (p11 : Fin 2) (p12 : Fin 2) (p13 : Fin 2) (p14 : Fin 2) (p15 : Fin 2) (p16 : Fin 2) (p17 : Fin 2) (p18 : Fin 2) (p19 : Fin 2) :
    bitFin (packSyndrome p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19).val 9 = p9 := by
  revert p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  native_decide

set_option maxRecDepth 20000 in
private theorem bitFin_pack10 (p0 : Fin 2) (p1 : Fin 2) (p2 : Fin 2) (p3 : Fin 2) (p4 : Fin 2) (p5 : Fin 2) (p6 : Fin 2) (p7 : Fin 2) (p8 : Fin 2) (p9 : Fin 2) (p10 : Fin 2) (p11 : Fin 2) (p12 : Fin 2) (p13 : Fin 2) (p14 : Fin 2) (p15 : Fin 2) (p16 : Fin 2) (p17 : Fin 2) (p18 : Fin 2) (p19 : Fin 2) :
    bitFin (packSyndrome p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19).val 10 = p10 := by
  revert p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  native_decide

set_option maxRecDepth 20000 in
private theorem bitFin_pack11 (p0 : Fin 2) (p1 : Fin 2) (p2 : Fin 2) (p3 : Fin 2) (p4 : Fin 2) (p5 : Fin 2) (p6 : Fin 2) (p7 : Fin 2) (p8 : Fin 2) (p9 : Fin 2) (p10 : Fin 2) (p11 : Fin 2) (p12 : Fin 2) (p13 : Fin 2) (p14 : Fin 2) (p15 : Fin 2) (p16 : Fin 2) (p17 : Fin 2) (p18 : Fin 2) (p19 : Fin 2) :
    bitFin (packSyndrome p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19).val 11 = p11 := by
  revert p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  native_decide

set_option maxRecDepth 20000 in
private theorem bitFin_pack12 (p0 : Fin 2) (p1 : Fin 2) (p2 : Fin 2) (p3 : Fin 2) (p4 : Fin 2) (p5 : Fin 2) (p6 : Fin 2) (p7 : Fin 2) (p8 : Fin 2) (p9 : Fin 2) (p10 : Fin 2) (p11 : Fin 2) (p12 : Fin 2) (p13 : Fin 2) (p14 : Fin 2) (p15 : Fin 2) (p16 : Fin 2) (p17 : Fin 2) (p18 : Fin 2) (p19 : Fin 2) :
    bitFin (packSyndrome p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19).val 12 = p12 := by
  revert p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  native_decide

set_option maxRecDepth 20000 in
private theorem bitFin_pack13 (p0 : Fin 2) (p1 : Fin 2) (p2 : Fin 2) (p3 : Fin 2) (p4 : Fin 2) (p5 : Fin 2) (p6 : Fin 2) (p7 : Fin 2) (p8 : Fin 2) (p9 : Fin 2) (p10 : Fin 2) (p11 : Fin 2) (p12 : Fin 2) (p13 : Fin 2) (p14 : Fin 2) (p15 : Fin 2) (p16 : Fin 2) (p17 : Fin 2) (p18 : Fin 2) (p19 : Fin 2) :
    bitFin (packSyndrome p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19).val 13 = p13 := by
  revert p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  native_decide

set_option maxRecDepth 20000 in
private theorem bitFin_pack14 (p0 : Fin 2) (p1 : Fin 2) (p2 : Fin 2) (p3 : Fin 2) (p4 : Fin 2) (p5 : Fin 2) (p6 : Fin 2) (p7 : Fin 2) (p8 : Fin 2) (p9 : Fin 2) (p10 : Fin 2) (p11 : Fin 2) (p12 : Fin 2) (p13 : Fin 2) (p14 : Fin 2) (p15 : Fin 2) (p16 : Fin 2) (p17 : Fin 2) (p18 : Fin 2) (p19 : Fin 2) :
    bitFin (packSyndrome p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19).val 14 = p14 := by
  revert p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  native_decide

set_option maxRecDepth 20000 in
private theorem bitFin_pack15 (p0 : Fin 2) (p1 : Fin 2) (p2 : Fin 2) (p3 : Fin 2) (p4 : Fin 2) (p5 : Fin 2) (p6 : Fin 2) (p7 : Fin 2) (p8 : Fin 2) (p9 : Fin 2) (p10 : Fin 2) (p11 : Fin 2) (p12 : Fin 2) (p13 : Fin 2) (p14 : Fin 2) (p15 : Fin 2) (p16 : Fin 2) (p17 : Fin 2) (p18 : Fin 2) (p19 : Fin 2) :
    bitFin (packSyndrome p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19).val 15 = p15 := by
  revert p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  native_decide

set_option maxRecDepth 20000 in
private theorem bitFin_pack16 (p0 : Fin 2) (p1 : Fin 2) (p2 : Fin 2) (p3 : Fin 2) (p4 : Fin 2) (p5 : Fin 2) (p6 : Fin 2) (p7 : Fin 2) (p8 : Fin 2) (p9 : Fin 2) (p10 : Fin 2) (p11 : Fin 2) (p12 : Fin 2) (p13 : Fin 2) (p14 : Fin 2) (p15 : Fin 2) (p16 : Fin 2) (p17 : Fin 2) (p18 : Fin 2) (p19 : Fin 2) :
    bitFin (packSyndrome p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19).val 16 = p16 := by
  revert p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  native_decide

set_option maxRecDepth 20000 in
private theorem bitFin_pack17 (p0 : Fin 2) (p1 : Fin 2) (p2 : Fin 2) (p3 : Fin 2) (p4 : Fin 2) (p5 : Fin 2) (p6 : Fin 2) (p7 : Fin 2) (p8 : Fin 2) (p9 : Fin 2) (p10 : Fin 2) (p11 : Fin 2) (p12 : Fin 2) (p13 : Fin 2) (p14 : Fin 2) (p15 : Fin 2) (p16 : Fin 2) (p17 : Fin 2) (p18 : Fin 2) (p19 : Fin 2) :
    bitFin (packSyndrome p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19).val 17 = p17 := by
  revert p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  native_decide

set_option maxRecDepth 20000 in
private theorem bitFin_pack18 (p0 : Fin 2) (p1 : Fin 2) (p2 : Fin 2) (p3 : Fin 2) (p4 : Fin 2) (p5 : Fin 2) (p6 : Fin 2) (p7 : Fin 2) (p8 : Fin 2) (p9 : Fin 2) (p10 : Fin 2) (p11 : Fin 2) (p12 : Fin 2) (p13 : Fin 2) (p14 : Fin 2) (p15 : Fin 2) (p16 : Fin 2) (p17 : Fin 2) (p18 : Fin 2) (p19 : Fin 2) :
    bitFin (packSyndrome p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19).val 18 = p18 := by
  revert p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  native_decide

set_option maxRecDepth 20000 in
private theorem bitFin_pack19 (p0 : Fin 2) (p1 : Fin 2) (p2 : Fin 2) (p3 : Fin 2) (p4 : Fin 2) (p5 : Fin 2) (p6 : Fin 2) (p7 : Fin 2) (p8 : Fin 2) (p9 : Fin 2) (p10 : Fin 2) (p11 : Fin 2) (p12 : Fin 2) (p13 : Fin 2) (p14 : Fin 2) (p15 : Fin 2) (p16 : Fin 2) (p17 : Fin 2) (p18 : Fin 2) (p19 : Fin 2) :
    bitFin (packSyndrome p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19).val 19 = p19 := by
  revert p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  native_decide

private def maskSupport31 (mask : Nat) : Finset (Fin 31) :=
  Finset.univ.filter (fun i : Fin 31 => Nat.testBit mask i.val)

private def maskWeight31 (mask : Nat) : Nat :=
  (maskSupport31 mask).card

private def maskWord31 (mask : Nat) : QaryWord 2 31 := fun i =>
  if Nat.testBit mask i.val then f2_1 else f2_0

private def maskSyndrome (mask : Nat) : Nat :=
  (List.range 31).foldl
    (fun acc i => if Nat.testBit mask i then acc ^^^ (bch31Columns.getD i 0) else acc)
    0

partial def markSyndromeSums (start remaining syndrome mask : Nat) (table : Array Nat) : Array Nat :=
  let table := if table.getD syndrome invalidRepairMask = invalidRepairMask then table.set! syndrome mask else table
  if remaining = 0 then table else
    (List.range (31 - start)).foldl (fun table offset =>
      let i := start + offset
      markSyndromeSums (i + 1) (remaining - 1)
        (syndrome ^^^ (bch31Columns.getD i 0)) (mask ^^^ (1 <<< i)) table) table

private def bch31RepairTable (_ : Unit) : Array Nat :=
  markSyndromeSums 0 7 0 0 (Array.replicate syndromeCount invalidRepairMask)

private def repairEntryPropWith (table : Array Nat) (idx : Nat) : Prop :=
  let mask := table.getD idx invalidRepairMask
  mask < wordMaskLimit ∧
    maskWeight31 mask ≤ 7 ∧
    rowParity0 (maskWord31 mask) = bitFin idx 0 ∧
    rowParity1 (maskWord31 mask) = bitFin idx 1 ∧
    rowParity2 (maskWord31 mask) = bitFin idx 2 ∧
    rowParity3 (maskWord31 mask) = bitFin idx 3 ∧
    rowParity4 (maskWord31 mask) = bitFin idx 4 ∧
    rowParity5 (maskWord31 mask) = bitFin idx 5 ∧
    rowParity6 (maskWord31 mask) = bitFin idx 6 ∧
    rowParity7 (maskWord31 mask) = bitFin idx 7 ∧
    rowParity8 (maskWord31 mask) = bitFin idx 8 ∧
    rowParity9 (maskWord31 mask) = bitFin idx 9 ∧
    rowParity10 (maskWord31 mask) = bitFin idx 10 ∧
    rowParity11 (maskWord31 mask) = bitFin idx 11 ∧
    rowParity12 (maskWord31 mask) = bitFin idx 12 ∧
    rowParity13 (maskWord31 mask) = bitFin idx 13 ∧
    rowParity14 (maskWord31 mask) = bitFin idx 14 ∧
    rowParity15 (maskWord31 mask) = bitFin idx 15 ∧
    rowParity16 (maskWord31 mask) = bitFin idx 16 ∧
    rowParity17 (maskWord31 mask) = bitFin idx 17 ∧
    rowParity18 (maskWord31 mask) = bitFin idx 18 ∧
    rowParity19 (maskWord31 mask) = bitFin idx 19

private instance repairEntryPropWith_decidable (table : Array Nat) (idx : Nat) :
    Decidable (repairEntryPropWith table idx) := by
  unfold repairEntryPropWith
  infer_instance

private def repairEntryOkWith (table : Array Nat) (idx : Nat) : Bool :=
  decide (repairEntryPropWith table idx)

private def repairTableOk (_ : Unit) : Bool :=
  let table := bch31RepairTable ()
  (List.range syndromeCount).all (repairEntryOkWith table)

set_option maxRecDepth 20000 in
private theorem repairTableOk_true : repairTableOk () = true := by
  native_decide

private theorem repairEntryProp_of_idx (idx : Fin syndromeCount) :
    repairEntryPropWith (bch31RepairTable ()) idx.val := by
  have hAll := repairTableOk_true
  have hAll' : ∀ x < syndromeCount, repairEntryOkWith (bch31RepairTable ()) x = true := by
    simpa [repairTableOk] using hAll
  have hEntry := hAll' idx.val idx.isLt
  exact of_decide_eq_true hEntry

private def repairMask (p0 : Fin 2) (p1 : Fin 2) (p2 : Fin 2) (p3 : Fin 2) (p4 : Fin 2) (p5 : Fin 2) (p6 : Fin 2) (p7 : Fin 2) (p8 : Fin 2) (p9 : Fin 2) (p10 : Fin 2) (p11 : Fin 2) (p12 : Fin 2) (p13 : Fin 2) (p14 : Fin 2) (p15 : Fin 2) (p16 : Fin 2) (p17 : Fin 2) (p18 : Fin 2) (p19 : Fin 2) : Nat :=
  (bch31RepairTable ()).getD (packSyndrome p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19).val invalidRepairMask

private theorem repairMask_spec (p0 : Fin 2) (p1 : Fin 2) (p2 : Fin 2) (p3 : Fin 2) (p4 : Fin 2) (p5 : Fin 2) (p6 : Fin 2) (p7 : Fin 2) (p8 : Fin 2) (p9 : Fin 2) (p10 : Fin 2) (p11 : Fin 2) (p12 : Fin 2) (p13 : Fin 2) (p14 : Fin 2) (p15 : Fin 2) (p16 : Fin 2) (p17 : Fin 2) (p18 : Fin 2) (p19 : Fin 2) :
    maskWeight31 (repairMask p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19) ≤ 7 ∧
      rowParity0 (maskWord31 (repairMask p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19)) = p0 ∧
      rowParity1 (maskWord31 (repairMask p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19)) = p1 ∧
      rowParity2 (maskWord31 (repairMask p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19)) = p2 ∧
      rowParity3 (maskWord31 (repairMask p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19)) = p3 ∧
      rowParity4 (maskWord31 (repairMask p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19)) = p4 ∧
      rowParity5 (maskWord31 (repairMask p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19)) = p5 ∧
      rowParity6 (maskWord31 (repairMask p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19)) = p6 ∧
      rowParity7 (maskWord31 (repairMask p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19)) = p7 ∧
      rowParity8 (maskWord31 (repairMask p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19)) = p8 ∧
      rowParity9 (maskWord31 (repairMask p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19)) = p9 ∧
      rowParity10 (maskWord31 (repairMask p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19)) = p10 ∧
      rowParity11 (maskWord31 (repairMask p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19)) = p11 ∧
      rowParity12 (maskWord31 (repairMask p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19)) = p12 ∧
      rowParity13 (maskWord31 (repairMask p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19)) = p13 ∧
      rowParity14 (maskWord31 (repairMask p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19)) = p14 ∧
      rowParity15 (maskWord31 (repairMask p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19)) = p15 ∧
      rowParity16 (maskWord31 (repairMask p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19)) = p16 ∧
      rowParity17 (maskWord31 (repairMask p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19)) = p17 ∧
      rowParity18 (maskWord31 (repairMask p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19)) = p18 ∧
      rowParity19 (maskWord31 (repairMask p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19)) = p19 := by
  have hEntry := repairEntryProp_of_idx (packSyndrome p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19)
  rcases hEntry with ⟨_, hweight, h0, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19⟩
  refine ⟨hweight, ?_⟩
  constructor
  · simpa [repairMask, bitFin_pack0] using h0
  ·
    constructor
    · simpa [repairMask, bitFin_pack1] using h1
    ·
      constructor
      · simpa [repairMask, bitFin_pack2] using h2
      ·
        constructor
        · simpa [repairMask, bitFin_pack3] using h3
        ·
          constructor
          · simpa [repairMask, bitFin_pack4] using h4
          ·
            constructor
            · simpa [repairMask, bitFin_pack5] using h5
            ·
              constructor
              · simpa [repairMask, bitFin_pack6] using h6
              ·
                constructor
                · simpa [repairMask, bitFin_pack7] using h7
                ·
                  constructor
                  · simpa [repairMask, bitFin_pack8] using h8
                  ·
                    constructor
                    · simpa [repairMask, bitFin_pack9] using h9
                    ·
                      constructor
                      · simpa [repairMask, bitFin_pack10] using h10
                      ·
                        constructor
                        · simpa [repairMask, bitFin_pack11] using h11
                        ·
                          constructor
                          · simpa [repairMask, bitFin_pack12] using h12
                          ·
                            constructor
                            · simpa [repairMask, bitFin_pack13] using h13
                            ·
                              constructor
                              · simpa [repairMask, bitFin_pack14] using h14
                              ·
                                constructor
                                · simpa [repairMask, bitFin_pack15] using h15
                                ·
                                  constructor
                                  · simpa [repairMask, bitFin_pack16] using h16
                                  ·
                                    constructor
                                    · simpa [repairMask, bitFin_pack17] using h17
                                    ·
                                      constructor
                                      · simpa [repairMask, bitFin_pack18] using h18
                                      ·
                                        simpa [repairMask, bitFin_pack19] using h19

set_option maxRecDepth 20000 in
private theorem row0_xor_zero_of_eq (x0 : Fin 2) (x20 : Fin 2) (x22 : Fin 2) (x23 : Fin 2) (x24 : Fin 2) (x29 : Fin 2) (e0 : Fin 2) (e20 : Fin 2) (e22 : Fin 2) (e23 : Fin 2) (e24 : Fin 2) (e29 : Fin 2)
    (h : xor2List [e0, e20, e22, e23, e24, e29] = xor2List [x0, x20, x22, x23, x24, x29]) :
    xor2List [xor2 x0 e0, xor2 x20 e20, xor2 x22 e22, xor2 x23 e23, xor2 x24 e24, xor2 x29 e29] = f2_0 := by
  revert x0 x20 x22 x23 x24 x29 e0 e20 e22 e23 e24 e29
  covering_decide

set_option maxRecDepth 20000 in
private theorem row1_xor_zero_of_eq (x1 : Fin 2) (x21 : Fin 2) (x23 : Fin 2) (x24 : Fin 2) (x25 : Fin 2) (x30 : Fin 2) (e1 : Fin 2) (e21 : Fin 2) (e23 : Fin 2) (e24 : Fin 2) (e25 : Fin 2) (e30 : Fin 2)
    (h : xor2List [e1, e21, e23, e24, e25, e30] = xor2List [x1, x21, x23, x24, x25, x30]) :
    xor2List [xor2 x1 e1, xor2 x21 e21, xor2 x23 e23, xor2 x24 e24, xor2 x25 e25, xor2 x30 e30] = f2_0 := by
  revert x1 x21 x23 x24 x25 x30 e1 e21 e23 e24 e25 e30
  covering_decide

set_option maxRecDepth 20000 in
private theorem row2_xor_zero_of_eq (x2 : Fin 2) (x20 : Fin 2) (x23 : Fin 2) (x25 : Fin 2) (x26 : Fin 2) (x29 : Fin 2) (e2 : Fin 2) (e20 : Fin 2) (e23 : Fin 2) (e25 : Fin 2) (e26 : Fin 2) (e29 : Fin 2)
    (h : xor2List [e2, e20, e23, e25, e26, e29] = xor2List [x2, x20, x23, x25, x26, x29]) :
    xor2List [xor2 x2 e2, xor2 x20 e20, xor2 x23 e23, xor2 x25 e25, xor2 x26 e26, xor2 x29 e29] = f2_0 := by
  revert x2 x20 x23 x25 x26 x29 e2 e20 e23 e25 e26 e29
  covering_decide

set_option maxRecDepth 20000 in
private theorem row3_xor_zero_of_eq (x3 : Fin 2) (x21 : Fin 2) (x24 : Fin 2) (x26 : Fin 2) (x27 : Fin 2) (x30 : Fin 2) (e3 : Fin 2) (e21 : Fin 2) (e24 : Fin 2) (e26 : Fin 2) (e27 : Fin 2) (e30 : Fin 2)
    (h : xor2List [e3, e21, e24, e26, e27, e30] = xor2List [x3, x21, x24, x26, x27, x30]) :
    xor2List [xor2 x3 e3, xor2 x21 e21, xor2 x24 e24, xor2 x26 e26, xor2 x27 e27, xor2 x30 e30] = f2_0 := by
  revert x3 x21 x24 x26 x27 x30 e3 e21 e24 e26 e27 e30
  covering_decide

set_option maxRecDepth 20000 in
private theorem row4_xor_zero_of_eq (x4 : Fin 2) (x20 : Fin 2) (x23 : Fin 2) (x24 : Fin 2) (x25 : Fin 2) (x27 : Fin 2) (x28 : Fin 2) (x29 : Fin 2) (e4 : Fin 2) (e20 : Fin 2) (e23 : Fin 2) (e24 : Fin 2) (e25 : Fin 2) (e27 : Fin 2) (e28 : Fin 2) (e29 : Fin 2)
    (h : xor2List [e4, e20, e23, e24, e25, e27, e28, e29] = xor2List [x4, x20, x23, x24, x25, x27, x28, x29]) :
    xor2List [xor2 x4 e4, xor2 x20 e20, xor2 x23 e23, xor2 x24 e24, xor2 x25 e25, xor2 x27 e27, xor2 x28 e28, xor2 x29 e29] = f2_0 := by
  revert x4 x20 x23 x24 x25 x27 x28 x29 e4 e20 e23 e24 e25 e27 e28 e29
  covering_decide

set_option maxRecDepth 20000 in
private theorem row5_xor_zero_of_eq (x5 : Fin 2) (x21 : Fin 2) (x24 : Fin 2) (x25 : Fin 2) (x26 : Fin 2) (x28 : Fin 2) (x29 : Fin 2) (x30 : Fin 2) (e5 : Fin 2) (e21 : Fin 2) (e24 : Fin 2) (e25 : Fin 2) (e26 : Fin 2) (e28 : Fin 2) (e29 : Fin 2) (e30 : Fin 2)
    (h : xor2List [e5, e21, e24, e25, e26, e28, e29, e30] = xor2List [x5, x21, x24, x25, x26, x28, x29, x30]) :
    xor2List [xor2 x5 e5, xor2 x21 e21, xor2 x24 e24, xor2 x25 e25, xor2 x26 e26, xor2 x28 e28, xor2 x29 e29, xor2 x30 e30] = f2_0 := by
  revert x5 x21 x24 x25 x26 x28 x29 x30 e5 e21 e24 e25 e26 e28 e29 e30
  covering_decide

set_option maxRecDepth 20000 in
private theorem row6_xor_zero_of_eq (x6 : Fin 2) (x20 : Fin 2) (x23 : Fin 2) (x24 : Fin 2) (x25 : Fin 2) (x26 : Fin 2) (x27 : Fin 2) (x30 : Fin 2) (e6 : Fin 2) (e20 : Fin 2) (e23 : Fin 2) (e24 : Fin 2) (e25 : Fin 2) (e26 : Fin 2) (e27 : Fin 2) (e30 : Fin 2)
    (h : xor2List [e6, e20, e23, e24, e25, e26, e27, e30] = xor2List [x6, x20, x23, x24, x25, x26, x27, x30]) :
    xor2List [xor2 x6 e6, xor2 x20 e20, xor2 x23 e23, xor2 x24 e24, xor2 x25 e25, xor2 x26 e26, xor2 x27 e27, xor2 x30 e30] = f2_0 := by
  revert x6 x20 x23 x24 x25 x26 x27 x30 e6 e20 e23 e24 e25 e26 e27 e30
  covering_decide

set_option maxRecDepth 20000 in
private theorem row7_xor_zero_of_eq (x7 : Fin 2) (x20 : Fin 2) (x21 : Fin 2) (x22 : Fin 2) (x23 : Fin 2) (x25 : Fin 2) (x26 : Fin 2) (x27 : Fin 2) (x28 : Fin 2) (x29 : Fin 2) (e7 : Fin 2) (e20 : Fin 2) (e21 : Fin 2) (e22 : Fin 2) (e23 : Fin 2) (e25 : Fin 2) (e26 : Fin 2) (e27 : Fin 2) (e28 : Fin 2) (e29 : Fin 2)
    (h : xor2List [e7, e20, e21, e22, e23, e25, e26, e27, e28, e29] = xor2List [x7, x20, x21, x22, x23, x25, x26, x27, x28, x29]) :
    xor2List [xor2 x7 e7, xor2 x20 e20, xor2 x21 e21, xor2 x22 e22, xor2 x23 e23, xor2 x25 e25, xor2 x26 e26, xor2 x27 e27, xor2 x28 e28, xor2 x29 e29] = f2_0 := by
  revert x7 x20 x21 x22 x23 x25 x26 x27 x28 x29 e7 e20 e21 e22 e23 e25 e26 e27 e28 e29
  native_decide

set_option maxRecDepth 20000 in
private theorem row8_xor_zero_of_eq (x8 : Fin 2) (x21 : Fin 2) (x22 : Fin 2) (x23 : Fin 2) (x24 : Fin 2) (x26 : Fin 2) (x27 : Fin 2) (x28 : Fin 2) (x29 : Fin 2) (x30 : Fin 2) (e8 : Fin 2) (e21 : Fin 2) (e22 : Fin 2) (e23 : Fin 2) (e24 : Fin 2) (e26 : Fin 2) (e27 : Fin 2) (e28 : Fin 2) (e29 : Fin 2) (e30 : Fin 2)
    (h : xor2List [e8, e21, e22, e23, e24, e26, e27, e28, e29, e30] = xor2List [x8, x21, x22, x23, x24, x26, x27, x28, x29, x30]) :
    xor2List [xor2 x8 e8, xor2 x21 e21, xor2 x22 e22, xor2 x23 e23, xor2 x24 e24, xor2 x26 e26, xor2 x27 e27, xor2 x28 e28, xor2 x29 e29, xor2 x30 e30] = f2_0 := by
  revert x8 x21 x22 x23 x24 x26 x27 x28 x29 x30 e8 e21 e22 e23 e24 e26 e27 e28 e29 e30
  native_decide

set_option maxRecDepth 20000 in
private theorem row9_xor_zero_of_eq (x9 : Fin 2) (x20 : Fin 2) (x25 : Fin 2) (x27 : Fin 2) (x28 : Fin 2) (x30 : Fin 2) (e9 : Fin 2) (e20 : Fin 2) (e25 : Fin 2) (e27 : Fin 2) (e28 : Fin 2) (e30 : Fin 2)
    (h : xor2List [e9, e20, e25, e27, e28, e30] = xor2List [x9, x20, x25, x27, x28, x30]) :
    xor2List [xor2 x9 e9, xor2 x20 e20, xor2 x25 e25, xor2 x27 e27, xor2 x28 e28, xor2 x30 e30] = f2_0 := by
  revert x9 x20 x25 x27 x28 x30 e9 e20 e25 e27 e28 e30
  covering_decide

set_option maxRecDepth 20000 in
private theorem row10_xor_zero_of_eq (x10 : Fin 2) (x20 : Fin 2) (x21 : Fin 2) (x22 : Fin 2) (x23 : Fin 2) (x24 : Fin 2) (x26 : Fin 2) (x28 : Fin 2) (e10 : Fin 2) (e20 : Fin 2) (e21 : Fin 2) (e22 : Fin 2) (e23 : Fin 2) (e24 : Fin 2) (e26 : Fin 2) (e28 : Fin 2)
    (h : xor2List [e10, e20, e21, e22, e23, e24, e26, e28] = xor2List [x10, x20, x21, x22, x23, x24, x26, x28]) :
    xor2List [xor2 x10 e10, xor2 x20 e20, xor2 x21 e21, xor2 x22 e22, xor2 x23 e23, xor2 x24 e24, xor2 x26 e26, xor2 x28 e28] = f2_0 := by
  revert x10 x20 x21 x22 x23 x24 x26 x28 e10 e20 e21 e22 e23 e24 e26 e28
  covering_decide

set_option maxRecDepth 20000 in
private theorem row11_xor_zero_of_eq (x11 : Fin 2) (x21 : Fin 2) (x22 : Fin 2) (x23 : Fin 2) (x24 : Fin 2) (x25 : Fin 2) (x27 : Fin 2) (x29 : Fin 2) (e11 : Fin 2) (e21 : Fin 2) (e22 : Fin 2) (e23 : Fin 2) (e24 : Fin 2) (e25 : Fin 2) (e27 : Fin 2) (e29 : Fin 2)
    (h : xor2List [e11, e21, e22, e23, e24, e25, e27, e29] = xor2List [x11, x21, x22, x23, x24, x25, x27, x29]) :
    xor2List [xor2 x11 e11, xor2 x21 e21, xor2 x22 e22, xor2 x23 e23, xor2 x24 e24, xor2 x25 e25, xor2 x27 e27, xor2 x29 e29] = f2_0 := by
  revert x11 x21 x22 x23 x24 x25 x27 x29 e11 e21 e22 e23 e24 e25 e27 e29
  covering_decide

set_option maxRecDepth 20000 in
private theorem row12_xor_zero_of_eq (x12 : Fin 2) (x22 : Fin 2) (x23 : Fin 2) (x24 : Fin 2) (x25 : Fin 2) (x26 : Fin 2) (x28 : Fin 2) (x30 : Fin 2) (e12 : Fin 2) (e22 : Fin 2) (e23 : Fin 2) (e24 : Fin 2) (e25 : Fin 2) (e26 : Fin 2) (e28 : Fin 2) (e30 : Fin 2)
    (h : xor2List [e12, e22, e23, e24, e25, e26, e28, e30] = xor2List [x12, x22, x23, x24, x25, x26, x28, x30]) :
    xor2List [xor2 x12 e12, xor2 x22 e22, xor2 x23 e23, xor2 x24 e24, xor2 x25 e25, xor2 x26 e26, xor2 x28 e28, xor2 x30 e30] = f2_0 := by
  revert x12 x22 x23 x24 x25 x26 x28 x30 e12 e22 e23 e24 e25 e26 e28 e30
  covering_decide

set_option maxRecDepth 20000 in
private theorem row13_xor_zero_of_eq (x13 : Fin 2) (x20 : Fin 2) (x22 : Fin 2) (x25 : Fin 2) (x26 : Fin 2) (x27 : Fin 2) (e13 : Fin 2) (e20 : Fin 2) (e22 : Fin 2) (e25 : Fin 2) (e26 : Fin 2) (e27 : Fin 2)
    (h : xor2List [e13, e20, e22, e25, e26, e27] = xor2List [x13, x20, x22, x25, x26, x27]) :
    xor2List [xor2 x13 e13, xor2 x20 e20, xor2 x22 e22, xor2 x25 e25, xor2 x26 e26, xor2 x27 e27] = f2_0 := by
  revert x13 x20 x22 x25 x26 x27 e13 e20 e22 e25 e26 e27
  covering_decide

set_option maxRecDepth 20000 in
private theorem row14_xor_zero_of_eq (x14 : Fin 2) (x21 : Fin 2) (x23 : Fin 2) (x26 : Fin 2) (x27 : Fin 2) (x28 : Fin 2) (e14 : Fin 2) (e21 : Fin 2) (e23 : Fin 2) (e26 : Fin 2) (e27 : Fin 2) (e28 : Fin 2)
    (h : xor2List [e14, e21, e23, e26, e27, e28] = xor2List [x14, x21, x23, x26, x27, x28]) :
    xor2List [xor2 x14 e14, xor2 x21 e21, xor2 x23 e23, xor2 x26 e26, xor2 x27 e27, xor2 x28 e28] = f2_0 := by
  revert x14 x21 x23 x26 x27 x28 e14 e21 e23 e26 e27 e28
  covering_decide

set_option maxRecDepth 20000 in
private theorem row15_xor_zero_of_eq (x15 : Fin 2) (x22 : Fin 2) (x24 : Fin 2) (x27 : Fin 2) (x28 : Fin 2) (x29 : Fin 2) (e15 : Fin 2) (e22 : Fin 2) (e24 : Fin 2) (e27 : Fin 2) (e28 : Fin 2) (e29 : Fin 2)
    (h : xor2List [e15, e22, e24, e27, e28, e29] = xor2List [x15, x22, x24, x27, x28, x29]) :
    xor2List [xor2 x15 e15, xor2 x22 e22, xor2 x24 e24, xor2 x27 e27, xor2 x28 e28, xor2 x29 e29] = f2_0 := by
  revert x15 x22 x24 x27 x28 x29 e15 e22 e24 e27 e28 e29
  covering_decide

set_option maxRecDepth 20000 in
private theorem row16_xor_zero_of_eq (x16 : Fin 2) (x23 : Fin 2) (x25 : Fin 2) (x28 : Fin 2) (x29 : Fin 2) (x30 : Fin 2) (e16 : Fin 2) (e23 : Fin 2) (e25 : Fin 2) (e28 : Fin 2) (e29 : Fin 2) (e30 : Fin 2)
    (h : xor2List [e16, e23, e25, e28, e29, e30] = xor2List [x16, x23, x25, x28, x29, x30]) :
    xor2List [xor2 x16 e16, xor2 x23 e23, xor2 x25 e25, xor2 x28 e28, xor2 x29 e29, xor2 x30 e30] = f2_0 := by
  revert x16 x23 x25 x28 x29 x30 e16 e23 e25 e28 e29 e30
  covering_decide

set_option maxRecDepth 20000 in
private theorem row17_xor_zero_of_eq (x17 : Fin 2) (x20 : Fin 2) (x22 : Fin 2) (x23 : Fin 2) (x26 : Fin 2) (x30 : Fin 2) (e17 : Fin 2) (e20 : Fin 2) (e22 : Fin 2) (e23 : Fin 2) (e26 : Fin 2) (e30 : Fin 2)
    (h : xor2List [e17, e20, e22, e23, e26, e30] = xor2List [x17, x20, x22, x23, x26, x30]) :
    xor2List [xor2 x17 e17, xor2 x20 e20, xor2 x22 e22, xor2 x23 e23, xor2 x26 e26, xor2 x30 e30] = f2_0 := by
  revert x17 x20 x22 x23 x26 x30 e17 e20 e22 e23 e26 e30
  covering_decide

set_option maxRecDepth 20000 in
private theorem row18_xor_zero_of_eq (x18 : Fin 2) (x20 : Fin 2) (x21 : Fin 2) (x22 : Fin 2) (x27 : Fin 2) (x29 : Fin 2) (e18 : Fin 2) (e20 : Fin 2) (e21 : Fin 2) (e22 : Fin 2) (e27 : Fin 2) (e29 : Fin 2)
    (h : xor2List [e18, e20, e21, e22, e27, e29] = xor2List [x18, x20, x21, x22, x27, x29]) :
    xor2List [xor2 x18 e18, xor2 x20 e20, xor2 x21 e21, xor2 x22 e22, xor2 x27 e27, xor2 x29 e29] = f2_0 := by
  revert x18 x20 x21 x22 x27 x29 e18 e20 e21 e22 e27 e29
  covering_decide

set_option maxRecDepth 20000 in
private theorem row19_xor_zero_of_eq (x19 : Fin 2) (x21 : Fin 2) (x22 : Fin 2) (x23 : Fin 2) (x28 : Fin 2) (x30 : Fin 2) (e19 : Fin 2) (e21 : Fin 2) (e22 : Fin 2) (e23 : Fin 2) (e28 : Fin 2) (e30 : Fin 2)
    (h : xor2List [e19, e21, e22, e23, e28, e30] = xor2List [x19, x21, x22, x23, x28, x30]) :
    xor2List [xor2 x19 e19, xor2 x21 e21, xor2 x22 e22, xor2 x23 e23, xor2 x28 e28, xor2 x30 e30] = f2_0 := by
  revert x19 x21 x22 x23 x28 x30 e19 e21 e22 e23 e28 e30
  covering_decide

private def xorWord (x e : QaryWord 2 31) : QaryWord 2 31 := fun i => xor2 (x i) (e i)

private theorem xorWord_isLinear_of_matching (x e : QaryWord 2 31)
    (h0 : rowParity0 e = rowParity0 x) (h1 : rowParity1 e = rowParity1 x) (h2 : rowParity2 e = rowParity2 x) (h3 : rowParity3 e = rowParity3 x) (h4 : rowParity4 e = rowParity4 x) (h5 : rowParity5 e = rowParity5 x) (h6 : rowParity6 e = rowParity6 x) (h7 : rowParity7 e = rowParity7 x) (h8 : rowParity8 e = rowParity8 x) (h9 : rowParity9 e = rowParity9 x) (h10 : rowParity10 e = rowParity10 x) (h11 : rowParity11 e = rowParity11 x) (h12 : rowParity12 e = rowParity12 x) (h13 : rowParity13 e = rowParity13 x) (h14 : rowParity14 e = rowParity14 x) (h15 : rowParity15 e = rowParity15 x) (h16 : rowParity16 e = rowParity16 x) (h17 : rowParity17 e = rowParity17 x) (h18 : rowParity18 e = rowParity18 x) (h19 : rowParity19 e = rowParity19 x) :
    IsLinearWord (xorWord x e) := by
  constructor
  · simpa [rowParity0, xorWord] using
      row0_xor_zero_of_eq (x p31_0) (x p31_20) (x p31_22) (x p31_23) (x p31_24) (x p31_29) (e p31_0) (e p31_20) (e p31_22) (e p31_23) (e p31_24) (e p31_29) (by simpa [rowParity0] using h0)
  ·
    constructor
    · simpa [rowParity1, xorWord] using
        row1_xor_zero_of_eq (x p31_1) (x p31_21) (x p31_23) (x p31_24) (x p31_25) (x p31_30) (e p31_1) (e p31_21) (e p31_23) (e p31_24) (e p31_25) (e p31_30) (by simpa [rowParity1] using h1)
    ·
      constructor
      · simpa [rowParity2, xorWord] using
          row2_xor_zero_of_eq (x p31_2) (x p31_20) (x p31_23) (x p31_25) (x p31_26) (x p31_29) (e p31_2) (e p31_20) (e p31_23) (e p31_25) (e p31_26) (e p31_29) (by simpa [rowParity2] using h2)
      ·
        constructor
        · simpa [rowParity3, xorWord] using
            row3_xor_zero_of_eq (x p31_3) (x p31_21) (x p31_24) (x p31_26) (x p31_27) (x p31_30) (e p31_3) (e p31_21) (e p31_24) (e p31_26) (e p31_27) (e p31_30) (by simpa [rowParity3] using h3)
        ·
          constructor
          · simpa [rowParity4, xorWord] using
              row4_xor_zero_of_eq (x p31_4) (x p31_20) (x p31_23) (x p31_24) (x p31_25) (x p31_27) (x p31_28) (x p31_29) (e p31_4) (e p31_20) (e p31_23) (e p31_24) (e p31_25) (e p31_27) (e p31_28) (e p31_29) (by simpa [rowParity4] using h4)
          ·
            constructor
            · simpa [rowParity5, xorWord] using
                row5_xor_zero_of_eq (x p31_5) (x p31_21) (x p31_24) (x p31_25) (x p31_26) (x p31_28) (x p31_29) (x p31_30) (e p31_5) (e p31_21) (e p31_24) (e p31_25) (e p31_26) (e p31_28) (e p31_29) (e p31_30) (by simpa [rowParity5] using h5)
            ·
              constructor
              · simpa [rowParity6, xorWord] using
                  row6_xor_zero_of_eq (x p31_6) (x p31_20) (x p31_23) (x p31_24) (x p31_25) (x p31_26) (x p31_27) (x p31_30) (e p31_6) (e p31_20) (e p31_23) (e p31_24) (e p31_25) (e p31_26) (e p31_27) (e p31_30) (by simpa [rowParity6] using h6)
              ·
                constructor
                · simpa [rowParity7, xorWord] using
                    row7_xor_zero_of_eq (x p31_7) (x p31_20) (x p31_21) (x p31_22) (x p31_23) (x p31_25) (x p31_26) (x p31_27) (x p31_28) (x p31_29) (e p31_7) (e p31_20) (e p31_21) (e p31_22) (e p31_23) (e p31_25) (e p31_26) (e p31_27) (e p31_28) (e p31_29) (by simpa [rowParity7] using h7)
                ·
                  constructor
                  · simpa [rowParity8, xorWord] using
                      row8_xor_zero_of_eq (x p31_8) (x p31_21) (x p31_22) (x p31_23) (x p31_24) (x p31_26) (x p31_27) (x p31_28) (x p31_29) (x p31_30) (e p31_8) (e p31_21) (e p31_22) (e p31_23) (e p31_24) (e p31_26) (e p31_27) (e p31_28) (e p31_29) (e p31_30) (by simpa [rowParity8] using h8)
                  ·
                    constructor
                    · simpa [rowParity9, xorWord] using
                        row9_xor_zero_of_eq (x p31_9) (x p31_20) (x p31_25) (x p31_27) (x p31_28) (x p31_30) (e p31_9) (e p31_20) (e p31_25) (e p31_27) (e p31_28) (e p31_30) (by simpa [rowParity9] using h9)
                    ·
                      constructor
                      · simpa [rowParity10, xorWord] using
                          row10_xor_zero_of_eq (x p31_10) (x p31_20) (x p31_21) (x p31_22) (x p31_23) (x p31_24) (x p31_26) (x p31_28) (e p31_10) (e p31_20) (e p31_21) (e p31_22) (e p31_23) (e p31_24) (e p31_26) (e p31_28) (by simpa [rowParity10] using h10)
                      ·
                        constructor
                        · simpa [rowParity11, xorWord] using
                            row11_xor_zero_of_eq (x p31_11) (x p31_21) (x p31_22) (x p31_23) (x p31_24) (x p31_25) (x p31_27) (x p31_29) (e p31_11) (e p31_21) (e p31_22) (e p31_23) (e p31_24) (e p31_25) (e p31_27) (e p31_29) (by simpa [rowParity11] using h11)
                        ·
                          constructor
                          · simpa [rowParity12, xorWord] using
                              row12_xor_zero_of_eq (x p31_12) (x p31_22) (x p31_23) (x p31_24) (x p31_25) (x p31_26) (x p31_28) (x p31_30) (e p31_12) (e p31_22) (e p31_23) (e p31_24) (e p31_25) (e p31_26) (e p31_28) (e p31_30) (by simpa [rowParity12] using h12)
                          ·
                            constructor
                            · simpa [rowParity13, xorWord] using
                                row13_xor_zero_of_eq (x p31_13) (x p31_20) (x p31_22) (x p31_25) (x p31_26) (x p31_27) (e p31_13) (e p31_20) (e p31_22) (e p31_25) (e p31_26) (e p31_27) (by simpa [rowParity13] using h13)
                            ·
                              constructor
                              · simpa [rowParity14, xorWord] using
                                  row14_xor_zero_of_eq (x p31_14) (x p31_21) (x p31_23) (x p31_26) (x p31_27) (x p31_28) (e p31_14) (e p31_21) (e p31_23) (e p31_26) (e p31_27) (e p31_28) (by simpa [rowParity14] using h14)
                              ·
                                constructor
                                · simpa [rowParity15, xorWord] using
                                    row15_xor_zero_of_eq (x p31_15) (x p31_22) (x p31_24) (x p31_27) (x p31_28) (x p31_29) (e p31_15) (e p31_22) (e p31_24) (e p31_27) (e p31_28) (e p31_29) (by simpa [rowParity15] using h15)
                                ·
                                  constructor
                                  · simpa [rowParity16, xorWord] using
                                      row16_xor_zero_of_eq (x p31_16) (x p31_23) (x p31_25) (x p31_28) (x p31_29) (x p31_30) (e p31_16) (e p31_23) (e p31_25) (e p31_28) (e p31_29) (e p31_30) (by simpa [rowParity16] using h16)
                                  ·
                                    constructor
                                    · simpa [rowParity17, xorWord] using
                                        row17_xor_zero_of_eq (x p31_17) (x p31_20) (x p31_22) (x p31_23) (x p31_26) (x p31_30) (e p31_17) (e p31_20) (e p31_22) (e p31_23) (e p31_26) (e p31_30) (by simpa [rowParity17] using h17)
                                    ·
                                      constructor
                                      · simpa [rowParity18, xorWord] using
                                          row18_xor_zero_of_eq (x p31_18) (x p31_20) (x p31_21) (x p31_22) (x p31_27) (x p31_29) (e p31_18) (e p31_20) (e p31_21) (e p31_22) (e p31_27) (e p31_29) (by simpa [rowParity18] using h18)
                                      ·
                                        simpa [rowParity19, xorWord] using
                                          row19_xor_zero_of_eq (x p31_19) (x p31_21) (x p31_22) (x p31_23) (x p31_28) (x p31_30) (e p31_19) (e p31_21) (e p31_22) (e p31_23) (e p31_28) (e p31_30) (by simpa [rowParity19] using h19)

private theorem xorWord_dist_le_of_maskWeight (x : QaryWord 2 31) (mask : Nat) :
    hammingDist x (xorWord x (maskWord31 mask)) ≤ maskWeight31 mask := by
  have hsubset : (Finset.univ.filter fun i : Fin 31 => x i ≠ xorWord x (maskWord31 mask) i) ⊆ maskSupport31 mask := by
    intro i hi
    simp only [maskSupport31, Finset.mem_filter, Finset.mem_univ, true_and] at hi ⊢
    by_contra hbit
    have heq : maskWord31 mask i = f2_0 := by
      simp [maskWord31, hbit]
    have hx : xorWord x (maskWord31 mask) i = x i := by
      unfold xorWord
      rw [heq]
      exact xor2_zero (x i)
    exact hi hx.symm
  simpa [hammingDist, maskWeight31] using Finset.card_le_card hsubset

private theorem bch31_covers :
    CoversFinset (bch31Code ()) 7 := by
  intro x
  let p0 := rowParity0 x
  let p1 := rowParity1 x
  let p2 := rowParity2 x
  let p3 := rowParity3 x
  let p4 := rowParity4 x
  let p5 := rowParity5 x
  let p6 := rowParity6 x
  let p7 := rowParity7 x
  let p8 := rowParity8 x
  let p9 := rowParity9 x
  let p10 := rowParity10 x
  let p11 := rowParity11 x
  let p12 := rowParity12 x
  let p13 := rowParity13 x
  let p14 := rowParity14 x
  let p15 := rowParity15 x
  let p16 := rowParity16 x
  let p17 := rowParity17 x
  let p18 := rowParity18 x
  let p19 := rowParity19 x
  let mask := repairMask p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  let e := maskWord31 mask
  have hspec := repairMask_spec p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19
  rcases hspec with ⟨hweight, he0, he1, he2, he3, he4, he5, he6, he7, he8, he9, he10, he11, he12, he13, he14, he15, he16, he17, he18, he19⟩
  have hlin : IsLinearWord (xorWord x e) := by
    exact xorWord_isLinear_of_matching x e he0 he1 he2 he3 he4 he5 he6 he7 he8 he9 he10 he11 he12 he13 he14 he15 he16 he17 he18 he19
  let c := linearWord (linearFree (xorWord x e))
  refine ⟨c, ?_, ?_⟩
  · simp [c, bch31Code]
  · have hc : c = xorWord x e := by
      exact linearWord_linearFree_eq_of_isLinear (xorWord x e) hlin
    rw [hc]
    exact (xorWord_dist_le_of_maskWeight x mask).trans hweight

theorem binaryBCH31Radius7Upper : QaryKUpper 2 31 7 2048 :=
  ⟨bch31Code (), bch31_card, bch31_covers⟩

end Database
end CoveringCodes
